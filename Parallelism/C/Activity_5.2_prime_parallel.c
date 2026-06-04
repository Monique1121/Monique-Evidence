/*
* Activity 5.2 Parallel and concurrent programming
*
* Arantza Monique Mercado Moreno
* 2026 - 06 - 03
*
* The sum of all prime numbers smaller than or equal to n (parallel)
*
*/

#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <stdbool.h>    // Library required to use true or false
#include <time.h>

typedef struct {
    int id;
    int start;
    int end;
    // Pointer to the variable where the result will be computed
    unsigned long long * result;
    pthread_mutex_t * mutex_ptr;
} data_t;

// Definition of a pointer to a function
typedef unsigned long long (*primes_function_t)(int, int);

// Function declaration
unsigned long long parallelPrime(int n, int threads);
void * sumRange(void * data);
bool isPrime(int x);
void timeFunction(primes_function_t fun, int n, int threads);
double timespecToSeconds(struct timespec ts_begin, struct timespec ts_end);

int main(int argc, char * argv[])
{
    // Default values
    int n = 10;
    int threads = 1;

    // Read new values from the command line
    if (argc == 3) {
        threads = atoi(argv[2]);
    }
    if (argc > 1) {
        n = atoi(argv[1]);
    }

    printf("=== PARALLEL VERSION ===\n");
    timeFunction(parallelPrime, n, threads);

    return 0;
}

// Function to compute the sum of all the prime numbers less than o equal to n.
// This version splits the calculation into multiple parts.
unsigned long long parallelPrime(int n, int threads)
{
    int rangeSize = n / threads;
    int remainder = n % threads;

    // Create the array of thread id's
    pthread_t tids[threads];
    
    // Create an array of structures
    data_t thread_data[threads];

    // Create the common mutex lock
    pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;

    int status = 0;

    // Variable to store the sum of primes computed in parallel
    unsigned long long resultParallel = 0;

    // Loop to call the functions as many times as threads
    for (int i=0; i < threads; i++) {
        thread_data[i].id = i;
        thread_data[i].start = i * rangeSize + 1;
        thread_data[i].end = (i + 1) * rangeSize;
        thread_data[i].result = &resultParallel;
        thread_data[i].mutex_ptr = &mutex;

        if (i == threads - 1){
            thread_data[i].end +=  remainder;
        }

        printf("ID: %d [%d, %d]\n", thread_data[i].id, thread_data[i].start, thread_data[i].end);

        status = pthread_create(&tids[i], NULL, sumRange, &thread_data[i]);
        if (status == -1)
        {
            perror("ERROR: pthread_create");
        }
    }

    for (int i = 0; i<threads; i++) {
        status = pthread_join(tids[i], NULL);
        if (status == -1)
        {
            perror("ERROR: pthread_join");
        }
    }

    return resultParallel;
}

// Compute the sum of prime numbers in a range
void * sumRange(void * data)
{
    data_t * info = data;
    
    // Cast the pointer into the desired type
    data_t * localData = (data_t *) data;
    unsigned long long result = 0;

    for (int i = localData -> start; i <= localData->end; i++) {
        if (isPrime(i) == true){        // Calls another function to identify if it is a prime number
            result += i;
        }
    }

    // Lock access to the shared memory, before modifying it
    pthread_mutex_lock(info->mutex_ptr);

    // Update the shared variable
    (*localData->result) += result;
    pthread_mutex_unlock(localData -> mutex_ptr);

    // Return the address in heap
    pthread_exit(NULL);

    return 0;
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

