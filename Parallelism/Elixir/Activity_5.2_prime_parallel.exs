# Activity 5.2 Parallel and concurrent programming

# Arantza Monique Mercado Moreno
# 2026 - 06 - 03

# Sum of all the prime numbers equal to or less than n (parallel)

defmodule Primes do

  # Function that identifies whether the number is prime or not
  # Base cases
  def is_prime?(x) when x < 2, do: false
  def is_prime?(2), do: true
  # Recursive step: check divisors from 2 to √x
  def is_prime?(x), do: do_is_prime?(x, 2)

  # Base cases
  defp do_is_prime?(x, i) when i * i > x, do: true
  defp do_is_prime?(x, i) when rem(x, i) == 0, do: false
  # Recursive step
  defp do_is_prime?(x, i), do: do_is_prime?(x, i + 1)

  # Sum all the prime numbers within a range
  # Receives a tuple
  def sum_range({start, stop}), do: do_sum_range(start, stop, 0)
  # Base case
  defp do_sum_range(i, stop, res) when i > stop, do: res
  # Recursive step
  defp do_sum_range(i, stop, res) do
      if is_prime?(i) do
          do_sum_range(i + 1, stop, res + i)
      else
          do_sum_range(i + 1, stop, res)
      end
  end

  # Compute the sum using multiple threads
  # The second parameter has as default value the number of cores
  def parallel_primes(n, tasks \\ System.schedulers) do
    step = ceil(n / tasks)
    starts = [1 | Enum.to_list(step+1..n//step)]
    finishes = Enum.map(starts, fn start -> min(start + step - 1, n) end)

    # Using a custom made pmap function
    Enum.zip(starts, finishes)
    |> IO.inspect()
    |> Enum.map(&Task.async(fn -> sum_range(&1) end))
    |> Enum.map(&Task.await(&1, :infinity))
    |> Enum.reduce(0, &(&1 + &2))
  end

  # Function to get the time taken by the function to run
  # Call it this way:
  # Primes.measure_time(&Primes.parallel_primes/2, [10, 4])
  def measure_time(function, parameters) do
    {time, _result} = :timer.tc(function, parameters)
    # Divide by a million, to get the time in seconds
    time / 1_000_000
  end

end
