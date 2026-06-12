# E2 Parallel Syntax Highlighter

**Arantza Monique Mercado Moreno**  
TC2037 – Implementation of Computational Methods  
2026 - 06 - 11

---

## Description

This program extends the Evidence 1 syntax highlighter to process multiple Elixir source files from a directory, in both **sequential** and **parallel** versions. Each file is highlighted and saved as an HTML file with color - coded tokens.

---

## How to Run

In **E2 Parallel syntax highlighter/** run:

### Sequential Version

```bash
iex E2_sequential_syntax.exs
```

### Parallel Version

```bash
iex E2_parallel_syntax.exs
```

Now run:

```elixir
# Sequential version
TecFiles.read_files("Test_Files")

# Parallel version
TecFiles.read_files_parallel("Test_Files")

# Measure execution time
TecFiles.measure_time(&TecFiles.read_files/1, ["Test_Files"])
TecFiles.measure_time(&TecFiles.read_files_parallel/1, ["Test_Files"])
```

---

## Token Types Recognized

- `comment` — `# text`
- `string` — `"text"`
- `charlist` — `'text'`
- `keyword` — `do:`, `end:`, `else:`
- `reserved_word` — `def`, `defp`, `defmodule`, `if`, `case`, `cond`, etc.
- `boolean` — `true`, `false`, `nil`
- `atom` — `:ok`, `:"hello world"`, `:+`
- `special` — `__MODULE__`, `__FILE__`, `__LINE__`
- `ignored_variable` — `_`, `_head`, `_result`
- `attribute` — `@doc`, `@spec`, `@moduledoc`
- `number` — `42`, `3.14`, `0xFF`, `0b1010`, `0o777`
- `capture` — `&1`, `&String.upcase/1`
- `operator` — `==`, `!=`, `|>`, `->`, `+`, `-`, etc.
- `function` — `factorial(`, `is_atom?(`, `save!(`
- `module` — `Enum`, `File`, `String`
- `variable` — `n`, `result`, `temperature`
- `sigil` — `~r`, `~s`, `~w`
- `punctuation` — `(`, `)`, `{`, `}`, `[`, `]`, `,`, `.`, `%`

---

## Execution Time Measurements

Both versions were tested processing **23 Elixir source files**. Each version was run **10 times** and the average was computed.

### Sequential Version

| Run | Time (s)  |
|-----|-----------|
| 1   | 3.277807  |
| 2   | 3.262849  |
| 3   | 3.259551  |
| 4   | 3.336460  |
| 5   | 3.224363  |
| 6   | 3.325667  |
| 7   | 3.273879  |
| 8   | 3.408453  |
| 9   | 3.232952  |
| 10  | 3.502471  |
| **Average** | **3.3105 s** |

### Parallel Version

| Run | Time (s)  |
|-----|-----------|
| 1   | 0.538405  |
| 2   | 0.541286  |
| 3   | 0.493651  |
| 4   | 0.509673  |
| 5   | 0.546075  |
| 6   | 0.520218  |
| 7   | 0.522276  |
| 8   | 0.501730  |
| 9   | 0.533346  |
| 10  | 0.527222  |
| **Average** | **0.5234 s** |

### Speedup

$$\text{Speedup} = \frac{T_{sequential}}{T_{parallel}} = \frac{3.3105}{0.5234} \approx 6.3\times$$

The parallel version is approximately **6.3x faster** than the sequential version, running on a machine with 20 available CPU cores (`smp:20:20`).

This demonstrates how parallelization is only beneficial when dealing with a heavy workload that needs to be divided into several tasks simultaneously. The main reason is that with only a few files, it would be performing almost the same task as the sequential version, negating the supposed benefits. Only by using many files, each of which is large, will a real improvement in processing time be noticeable.

---

## Comparison: 2 Files vs 23 Files

To demonstrate how parallelism scales with workload, both versions were also tested with only **2 files**.

| Version | 2 Large Files (avg) | 23 Large Files (avg) |
|---------|---------------------|----------------------|
| Sequential | 0.3189 s | 3.3105 s |
| Parallel   | 0.1675 s | 0.5234 s |
| **Speedup** | **1.9x** | **6.3x** |

---

## Solution and algorithms

The program created in the sequential version has two parts:

**Part 1: Tokenizer (regex + identify)**

This section processes the text character by character recursively. In each iteration, it tests regex expressions until it finds a match and colors it accordingly.

**Part 2: File Processor**

This second section reads all the files within a directory, reading each one line by line with `File.stream!`, applying the tokenizer to each line, and writing the resulting HTML. All of this is applied to a directory to process multiple files simultaneously.

The sequential version does this one file at a time. The parallel version launches each file as an independent process with `Task.async` and waits for all of them with `Task.await`.

## Complexity Analysis

### Sequential Version

The sequential version processes each file one at a time. Let:

- **F** = number of files
- **L** = number of lines per file
- **C** = number of characters per line
- **R** = number of regular expressions (18)

For each file, every line is processed character by character. At each position, up to **R** regex expressions are tested until one matches. This gives a time complexity of:

$$O(F \times L \times C \times R)$$

Since **R** is constant (fixed number of token types), this simplifies to:

$$O(F \times L \times C)$$

### Parallel Version

The parallel version distributes the **F** files across the available CPU cores. If there are **P** cores, the work per core is approximately **F/P** files. The complexity becomes:

$$O\left(\frac{F}{P} \times L \times C\right)$$

---

## Ethical Implications that the Technology Used can Have on Society

Parallel computing in our society opens doors to many possibilities by enabling the processing of large volumes of data much faster. However, it is clear that this can have both positive and negative ethical implications, and developers have a responsibility to consider how their tools can be used in different types of situations.

Parallel computing technologies, such as those used in this program, have broad applications and ethical implications:

- **Energy Consumption**: Running tasks in parallel on multiple cores increases CPU usage and energy consumption. On a large scale, this contributes to the carbon footprint of data centers, raising questions about sustainable computing.

- **Access and Inequality**: Multi-core CPUs and high-performance hardware are not universally accessible. Programs that rely heavily on parallelism may only offer their full benefits to users with modern and expensive hardware, leaving many people behind.

- **Automation and Employment**: Technologies that process large volumes of data faster (such as code analyzers, compilers, and linters) accelerate software automation. While this can be seen as a major productivity boost, it also raises concerns about job displacement in various technology sectors.

- **Responsible Use**: Fast parallel processing enables applications such as mass surveillance, large-scale data mining, and AI training. Developers have a responsibility to promote ethical regulations in their implementation.