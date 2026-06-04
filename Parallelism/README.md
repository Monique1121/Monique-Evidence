# Monique-Evidence

Arantza Monique Mercado Moreno      |      A01786962

E1 Syntax Highlighter

How tu run:

iex "E1_syntax.exs" 

TecFiles.syntax("prueba.txt")

Tokens that the lexer identifies:

comment:  # text
string: "text"
charlist: 'text'
keyword: do:, end:, else:
reserved_word: def, defp, defmodule, if, do, end, etc.
boolean: true, false, nil
atom: :ok, :"hello world", :+, :==
special:  __MODULE__, __FILE__, __LINE__
ignored_variable:  _, _head, _res
attribute: @doc, @spec, @moduledoc
number: 42, 3.14, 0xFF, 0b1010, 0o777, 1e10, ?é
capture: &1, &upcase/1, &String.upcase/1
operator: ==, !=, |>, ->, +, -, etc.
function: sign(, factorial(, is_atom?(
module: Enum, File, String
variable: n, result, temperature
sigil: ~r, ~s, ~w
punctuation: (, ), {, }, [, ], ,, .

Report with the findings of the complexity analysis:

The program implements a lexer that traverses a text file and classifies each fragment into a token type, then wraps it in an HTML <span> tag.

Main algorithm: linear recursion with pattern matching

Identify function:

- Takes the remaining text to be processed.
- Attempts to match a regular expression at the beginning of the string (\A anchors to the start).
- If there is a match, it generates the <span>, consumes those characters, and calls itself with the rest.
- If there is no match, it advances one character and repeats.

Regex function:

Each call executes up to 18 regular expressions in sequence, stopping at the first match. In the worst case (unrecognized character), all 18 are evaluated without success.

Time complexity of the program:

Analysis per function:

regex: Evaluates up to r (number of regex rules) regular expressions, each O(1) at the start of the string thanks to \A.

T(regex) = O(r) = O(1)

identify: Called recursively once per token consumed. In the worst case (all single-character tokens), it is invoked n times.

T(identify) = O(n)

syntax: Reads the file line by line and applies the identify function to each one. If the file has n total characters distributed across any number of lines.

T(syntax) = O(n)

Total complexity = O(n)

Reflection on the ethical implications that the technology used can have on society:

In our society, technology in general is closely linked to ethics because it can be viewed from two perspectives. The first one is positive, where the use of technology can be seen as a tool in the daily lives of human beings and in various sectors of the world, given that all the technological advances have led to the creation of artificial intelligence.

Tools like these, and many others, can be beneficial for aspects such as code review, error detection, and the creation of higher-quality software. They are even useful for studies such as data analysis, medicine, statistics, and the automotive industry, among others. If used more as a support than as something that solves everything, it can help society progress in a positive way. On the negative side, it can lead to human dependence on this technology when solving problems, which could cause a setback.

Now, in the case of other technologies, such as the one used in the created lexer, it is the basis for several other more complex tools such as code editors, compilers, and others. In addition to its broad societal impact, where, for example, a lexer like this helps make code more readable and improves education by associating colors with words. But it can also lead to programmers becoming dependent on it, losing the ability to program in a colorless language.
