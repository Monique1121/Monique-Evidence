# Activity 5.2 Parallel and concurrent programming

# Arantza Monique Mercado Moreno
# 2026 - 06 - 03

# Numerical integration of pi (sequential)

defmodule Integration do

  # Funcion that computes the numerical integration of pi given a certain number of rectangles
  def num_integration(n) do
    width = 1.0 / n
    do_num_integration(0, n, 0.0, width)
  end
  # Base case
  defp do_num_integration(i, n, sum, width) when i >= n, do: width * sum
  # Recursive step
  defp do_num_integration(i, n, sum, width) do
    mid = (i + 0.5) * width
    height = 4.0 / (1.0 + mid * mid)
    do_num_integration(i + 1, n, sum + height, width)
  end


  # Function to get the time taken by the function to run
  # Call it this way:
  # Integration.measure_time(&Integration.num_integration/1, [100000])
  def measure_time(function, parameters) do
    {time, _result} = :timer.tc(function, parameters)
    # Divide by a million, to get the time in seconds
    time / 1_000_000
  end

end
