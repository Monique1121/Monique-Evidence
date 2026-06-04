/*
* Activity 5.2 Parallel and concurrent programming
*
* Arantza Monique Mercado Moreno
* 2026 - 06 - 03
*
* The sum of all prime numbers smaller than or equal to n (sequential)
*
*/

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>   // Library required to use true or false
#include <time.h>

// Definition of a pointer to a function
typedef unsigned long long (*primes_function_t)(int, int);

// Function declaration
void timeFunction(primes_function_t fun, int n, int threads);
double timespecToSeconds(struct timespec ts_begin, struct timespec ts_end);
bool isPrime(int x);
unsigned long long sumPrimes(int x, int threads);

int main(int argc, char * argv[])
{

    // Default value
    int n = 10;

    // Read new value from the command line
    if (argc > 1) {
        n = atoi(argv[1]);
    }

    printf("=== SEQUENTIAL VERSION ===\n");
    timeFunction(sumPrimes, n, 1);

    return 0;
}

// Function that sums all prime numbers equal to or less than n
unsigned long long sumPrimes(int n, int threads)
{

    unsigned long long result = 0;

    for (int i = 2; i <= n; i++){
        if (isPrime(i) == true){    // Calls another function to identify if it is a prime number
            result += i;
        }
    }

    return result;

}

// Function that identifies whether a number is prime or not
bool isPrime(int x)
{

    if (x < 2){
        return false;
    }
    if (x == 2) {
        return true;
    }
    for (int i = 2; i * i <= x; i++){
        if (x % i == 0){
            return false;
        }
    }
    return true;

}

/*
 * Wrapper function that measures the time taken by another function to execute
 * Receives a pointer to the function, and two arguments
 */
void timeFunction(primes_function_t fun, int n, int threads)
{
    // Variables to measure time (this one measures cpu time)
    // https://www.geeksforgeeks.org/cpp/how-to-measure-time-taken-by-a-program-in-c/
    /*
    clock_t start;
    clock_t end;
    double cpu_time_used;

    start = clock();
    end = clock();
    cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;
    */


    // https://levelup.gitconnected.com/8-ways-to-measure-execution-time-in-c-c-48634458d0f9
    struct timespec ts_wall_begin, ts_wall_end;
    struct timespec ts_cpu_begin, ts_cpu_end;
    double elapsed_wall;
    double elapsed_cpu;

    clock_gettime(CLOCK_REALTIME, &ts_wall_begin);
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &ts_cpu_begin);

    // Call the function
    unsigned long long result = fun(n, threads);

    clock_gettime(CLOCK_REALTIME, &ts_wall_end);
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &ts_cpu_end);

    // Compute the times elapsed
    elapsed_wall = timespecToSeconds(ts_wall_begin, ts_wall_end);
    elapsed_cpu = timespecToSeconds(ts_cpu_begin, ts_cpu_end);

    printf("N: %d | Result: %llu | Time: %lf | CPU: %lf\n", n, result, elapsed_wall, elapsed_cpu);
}

// Compute the total amount of seconds from a timespec
double timespecToSeconds(struct timespec ts_begin, struct timespec ts_end)
{
    long seconds;
    long nanoseconds;

    seconds = ts_end.tv_sec - ts_begin.tv_sec;
    nanoseconds = ts_end.tv_nsec - ts_begin.tv_nsec;
    return seconds + nanoseconds * 1e-9;
}


