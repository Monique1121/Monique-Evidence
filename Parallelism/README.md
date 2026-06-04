# Activity 5.2 - Parallel and Concurrent Programming

## Arantza Monique Mercado Moreno

---

## How to compile and run the programs

### C:

In Monique-Evidence\Parallelism\C write the next command:

```bash
make
```

Then run:

# Sequential prime sum
```bash
./Activity_5.2_prime
```
# Parallel prime sum
```bash
./Activity_5.2_prime_parallel
``` 

Note: You can write values next to it if you don't want the default value. Write first the value of n (any number) and 
then the number of threads you want. For example: ./Activity_5.2_prime_parallel 10 4

# Sequential numerical integration
```bash
./Activity_5.2_integration
```

# Parallel numerical integration
```bash
./Activity_5.2_integration_parallel
```

Note: You can write values next to it if you don't want the default value. Write first the value of n (number of rectangles) and 
then the number of threads you want. For example: ./Activity_5.2_integration_parallel 10 4

### Elixir:

In Monique-Evidence\Parallelism\Elixir write the next command:

# Sequential prime sum and to measure time
```bash
iex Activity_5.2_prime.exs

iex> Primes.sum_primes(10)
iex> Primes.measure_time(&Primes.sum_primes/1, [10])
```

# Parallel prime sum and to measure time
```bash
iex Activity_5.2_prime_parallel.exs

iex> Primes.parallel_primes(10, 4)
iex> Primes.measure_time(&Primes.parallel_primes/2, [1000000, 4])
```

# Sequential numerical integration and to measure time
```bash
iex Activity_5.2_integration.exs

iex> Integration.num_integration(1000000)
iex> Integration.measure_time(&Integration.num_integration/1, [1000000])
```

# Parallel numerical integration and to measure time
```bash
iex Activity_5.2_integration_parallel.exs

iex> Integration.parallel_integration(1000000, 4)
iex> Integration.measure_time(&Integration.parallel_integration/2, [1000000, 4])
```

## Parallelization process

To parallelize each program, each exercise was first implemented sequentially. Once this was done, a function was created to handle tasks based on ranges, allowing for subsequent task division. Next, threads were implemented, defining a struct to create the threads and assign them tasks according to the required thread division. Additionally, a bug was fixed that occurred when there was a remainder in the division of a value among the required threads; the remainder was added to the last thread.

### Sum of prime numbers

The sequential version iterates through all numbers from 2 to n, checks if each one is prime using `isPrime` (this is to stress the CPU), and accumulates the sum. To parallelize it, the range `[1, n]` is divided among the threads. Each thread checks and sums the primes in its partial range, then adds its partial result to the shared variable using a mutex to avoid race conditions.

### Numerical integration

The sequential version calculates the area under the curve by dividing the interval `[0, 1]` into n rectangles and summing their heights multiplied by the width. To parallelize it, the range of rectangles is divided among the threads. Each thread calculates the sum of heights for its range, and at the end the total sum is multiplied by the width only once.

## Speedup evaluation

### C - Sum of Primes (n = 10,000,000)

| Version | Threads | Time (s) | Speedup |
|---------|---------|----------|---------|
| Sequential | 1 | 2.291955 | 1x |
| Parallel | 2 | 2.230808 | 1.03x |
| Parallel | 4 | 0.853450 | 2.69x |
| Parallel | 8 | 0.527318 | 4.35x |


### C - Numerical Integration (n = 1,000,000)

| Version | Threads | Time (s) | Speedup |
|---------|---------|----------|---------|
| Sequential | 1 | 0.001673 | 1x |
| Parallel | 2 | 0.002128 | 0.79x |
| Parallel | 4 | 0.001024 | 1.63x |
| Parallel | 8 | 0.001086 | 1.54x |

### Elixir - Sum of Primes (n = 1,000,000)

| Version | Threads | Time (s) | Speedup |
|---------|---------|----------|---------|
| Sequential | 1 | 0.180219 | 1x |
| Parallel | 2 | 0.122498 | 1.47 |
| Parallel | 4 | 0.077027 | 2.34x |
| Parallel | 8 | 0.041733 | 4.32x |

### Elixir - Numerical Integration (n = 1,000,000)

| Version | Threads | Time (s) | Speedup |
|---------|---------|----------|---------|
| Sequential | 1 | 0.017581 | 1x |
| Parallel | 2 | 0.022218 | 0.79x |
| Parallel | 4 | 0.006438 | 2.73x |
| Parallel | 8 | 0.005125 | 3.43x |

## Analysis

The speedup results show that parallelization is more effective for computationally heavy tasks like the sum of primes, where each number requires checking divisors up to √x. For numerical integration, the calculation per rectangle is simpler, so the overhead of creating and synchronizing threads can outweigh the benefit with small numbers of threads (2 threads actually performed worse than sequential). With more threads (4 and 8), the speedup improves significantly for both problems.

