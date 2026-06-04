# Activity 5.2 Parallel and concurrent programming

# Arantza Monique Mercado Moreno
# 2026 - 06 - 03

# Sum of all the prime numbers equal to or less than n (sequential)

defmodule Primes do

  # Function that sums all the prime numbers smaller than or equal to n
  def sum_primes(n), do: do_sum_primes(2, n, 0)
  # Base case
  defp do_sum_primes(i, n, res) when i > n, do: res
  # Recursive step
  defp do_sum_primes(i, n, res) do
    if is_prime?(i) == true do
      do_sum_primes(i + 1, n, res + i)
    else
      do_sum_primes(i + 1, n, res)
    end
  end

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

  # Function to get the time taken by the function to run
  # Call it this way:
  # Primes.measure_time(&Primes.sum_primes/1, [10])
  def measure_time(function, parameters) do
    {time, _result} = :timer.tc(function, parameters)
    # Divide by a million, to get the time in seconds
    time / 1_000_000
  end

end
