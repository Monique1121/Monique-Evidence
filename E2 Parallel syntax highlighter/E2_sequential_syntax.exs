# E2 Syntax highlighter - Sequential version
#
# Arantza Monique Mercado Moreno
# 2026 - 06 - 11

defmodule TecFiles do

  # Function that identifies de type of token
  def regex(value) do
    cond do

      # Functions that check if the expression matches

      # Comment: # text
      regex_comment = Regex.run(~r/\A#.*/, value) ->
        [comment] = regex_comment
        {:comment, comment}

      # String: "text"
      regex_string = Regex.run(~r/\A".*?"/, value) ->
        [string] = regex_string
        {:string, string}

      # Charlist: 'text'
      regex_charlist = Regex.run(~r/\A'.*?'/, value) ->
        [charlist] = regex_charlist
        {:charlist, charlist}

      # Keyword: do:, end:, else:
      regex_keyword = Regex.run(~r/\A(do|end|else|catch|rescue|after):/, value) ->
        [keyword | _] = regex_keyword
        {:keyword, keyword}

      # Reserved word: def, defp, defmodule, if, do, end, etc.
      regex_reserved_word = Regex.run(~r/\A(when|and|or|not|in|fn|do|end|catch|rescue|after|if|else|def|defp|defmodule|defmacro|defstruct|unless|case|cond|with|for|receive|try|raise)(?!\w)/, value) ->
        [reserved | _] = regex_reserved_word
        {:reserved_word, reserved}

      # Boolean: true, false, nil
      regex_boolean = Regex.run(~r/\A(true|false|nil)(?!\w)/, value) ->
        [boolean | _] = regex_boolean
        {:boolean, boolean}

      # Atom: :ok, :"hola mundo", :+, :==
      regex_atom = Regex.run(~r/\A:[a-zA-Z_]\w*|\A:"[^"]*"|\A:(\+\+|--|===|!==|==|!=|<=|>=|[+\-*\/&|^<>!])/, value) ->
        [atom | _] = regex_atom
        {:atom, atom}

      # Special: __MODULE__, __FILE__, __LINE__
      regex_special = Regex.run(~r/\A__[A-Z]+__/, value) ->
        [special | _] = regex_special
        {:special, special}

      # Ignored variable: _, _head, _res
      regex_ignored_variable = Regex.run(~r/\A_\w*/, value) ->
        [ignored_variable | _] = regex_ignored_variable
        {:ignored_variable, ignored_variable}

      # Attribute: @doc, @spec, @moduledoc
      regex_attribute = Regex.run(~r/\A@[a-zA-Z_]\w*/, value) ->
        [attribute | _] = regex_attribute
        {:attribute, attribute}

      # Number: 42, 3.14, 0xFF, 0b1010, 0o777, 1e10, ?é
      regex_number = Regex.run(~r/\A-?0x[0-9a-fA-F]+|\A-?0o[0-7]+|\A-?0b[01]+|\A-?\?.|\A-?\d+\.\d[\d_]*[eE]\d+|\A-?\d+\.\d[\d_]*|\A-?\d+[eE]\d+|\A-?\d[\d_]*/, value) ->
        [number | _] = regex_number
        {:number, number}

      # Capture: &1, &upcase/1, &String.upcase/1
      regex_capture = Regex.run(~r/\A&\d+|\A&[a-zA-Z_]\w*\/\d+|\A&[A-Z]\w*\.[a-z_]\w*\/\d+/, value) ->
        [capture | _] = regex_capture
        {:capture, capture}

      # Operator: ==, !=, |>, ->, +, -, etc.
      regex_operator = Regex.run(~r/\A(===|!==|==|!=|<=|>=|->|<-|=>|\|>|<>|\+\+|--|=~|::|\*\*|\|\||&&)|\A[|!+*\-&=@^<>\/]/, value) ->
        [operator | _] = regex_operator
        {:operator, operator}

      # Function: sign(, factorial(, is_atom?(
      regex_function = Regex.run(~r/\A[a-z_]\w*[!?]?\(/, value) ->
        [function | _] = regex_function
        {:function, function}

      # Module: Enum, File, String
      regex_module = Regex.run(~r/\A[A-Z]\w*/, value) ->
        [module | _] = regex_module
        {:module, module}

      # Variable: n, result, temperature
      regex_variable = Regex.run(~r/\A[a-z_]\w*/, value) ->
        [variable | _] = regex_variable
        {:variable, variable}

      # Sigil: ~r, ~s, ~w
      regex_sigil = Regex.run(~r/\A~[a-zA-Z]/, value) ->
        [sigil | _] = regex_sigil
        {:sigil, sigil}

      # Punctuation: (, ), {, }, [, ], ,, .
      regex_puntuaction = Regex.run(~r/\A[$%{}(),\.;:\[\]]/, value) ->
        [puntuaction | _] = regex_puntuaction
        {:puntuaction, puntuaction}

      # Default value
      true -> nil
    end
  end

  # Base case
  defp identify("", result), do: result

  # Function that checks token by token
  # Recursive step: wraps the current token in a <span> and advances through the text
  defp identify(text, result) do
    # Verifies spaces and line breaks
    spaces = Regex.run(~r/\A\s+/, text)
    token = regex(text)

    cond do
      # If whitespace is found, preserve it as-is and advance
      spaces ->
        [space] = spaces
        identify(String.slice(text, String.length(space), String.length(text)), result <> space)

      # If a token is found, wrap it in the corresponding <span> and advance
      token ->
        {type, value} = token
        # Escape special HTML characters to prevent injection in the output file
        escaped = value
          |> String.replace("&", "&amp;")
          |> String.replace("<", "&lt;")
          |> String.replace(">", "&gt;")
        # Functions are split into name + parenthesis as separate spans
        escaped_name = if type == :function, do: String.slice(escaped, 0, String.length(escaped) - 1), else: escaped
        # Creates the span label for a function
        span = if type == :function,
          do: "<span class='function'>#{escaped_name}</span><span class='puntuaction'>(</span>",
          else: "<span class='#{type}'>#{escaped}</span>"
        identify(String.slice(text, String.length(value), String.length(text)), result <> span)

      # If no token matches, skip the character and advance
      true ->
        identify(String.slice(text, 1, String.length(text)), result <> String.slice(text, 0, 1))
    end
  end

  # Function that applies syntax highlighting to a single file and saves the result as HTML
  def syntax(filename) do

    # HTML header
    # Path.basename removes the directory path
    # Path.rootname removes the extension
    header = """
    <!DOCTYPE html>
    <html>
      <head>
        <title>#{Path.rootname(Path.basename(filename))}_sequential</title>
        <link rel="stylesheet" href="colors.css">
      </head>
      <body>
        <pre>
    """

    # HTML footer
    footer = """
        </pre>
      </body>
    </html>
    """
    document = filename
      # Reads document line by line
      |> File.stream!()
      # Applies syntax highlighting to each line
      |> Enum.map(fn line -> identify(line, "") end)
      # Joins the lines
      |> Enum.join("")


    # Store the results in a new file
    # Extracts the filename without extension to use as the HTML title
    # Path.basename removes the directory path
    # Path.rootname removes the extension
    File.write("Test_Files_Result_Sequential/#{Path.rootname(Path.basename(filename))}_sequential.html", [header, document, "\n", footer])
  end

  # Function that sequentially processes all files in the given directory, applying syntax highlighting to each one
  def read_files(directory) do
    {:ok, files} = File.ls(directory)
    Enum.map(files, fn file -> syntax("#{directory}/#{file}") end)
  end

  # Function to get the time taken by the function to run
  # Call it this way:
  # TecFiles.measure_time(&TecFiles.read_files/1, ["Test_Files"])
  def measure_time(function, parameters) do
    {time, _result} = :timer.tc(function, parameters)
    # Divide by a million, to get the time in seconds
    time / 1_000_000
  end

end
