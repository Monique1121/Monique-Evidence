# Activity 5.2 Parallel and concurrent programming

# Arantza Monique Mercado Moreno
# 2026 - 06 - 03

# Numerical Integration of pi (parallel)

defmodule Integration do

  # Integrate all the rectangles within a range
  def integrate_range({start, stop}, width), do: do_integrate_range(start, stop, 0, width)

  # Base case
  defp do_integrate_range(i, stop, res, _width) when i >= stop, do: res
  # Recursive step
  defp do_integrate_range(i, stop, res, width) do
    mid = (i + 0.5) * width
    height = 4.0 / (1.0 + mid * mid)
    do_integrate_range(i + 1, stop, res + height, width)
  end

  # Compute the numerical integration using multiple threads
  # The second parameter has as default value the number of cores
  def parallel_integration(n, tasks \\ System.schedulers) do
    width = 1.0 / n
    step = ceil(n / tasks)
    starts = [0 | Enum.to_list(step..n//step)]
    finishes = Enum.to_list(step..n//step)

    # Using a custom made pmap function
    Enum.zip(starts, finishes)
    |> IO.inspect()
    |> Enum.map(&Task.async(fn -> integrate_range(&1, width) end))
    |> Enum.map(&Task.await(&1, :infinity))
    |> Enum.reduce(0, &(&1 + &2))
    |> Kernel.*(width)    # Multiply the sum of heights by the width to get the area
  end

  # Function to get the time taken by the function to run
  # Call it this way:
  # Integration.measure_time(&Integration.parallel_integration/2, [100000, 4])
  def measure_time(function, parameters) do
    {time, _result} = :timer.tc(function, parameters)
    # Divide by a million, to get the time in seconds
    time / 1_000_000
  end


end
