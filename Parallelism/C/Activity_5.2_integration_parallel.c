/*
* Activity 5.2 Parallel and concurrent programming
*
* Arantza Monique Mercado Moreno
* 2026 - 06 - 03
*
* Numerical integration of pi (parallel)
*
*/

#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <time.h>

typedef struct {
    int id;
    int start;
    int end;
    double width;    // Width of each rectangle passed to the thread.
    // Pointer to the variable where the result will be computed 
    double * result;
    pthread_mutex_t * mutex_ptr;
} data_t;

// Definition of a pointer to a function
typedef double (*integration_function_t)(int, int);

// Function declaration
double parallelIntegration(int n, int threads);
void * integrateRange(void * data);
void timeFunction(integration_function_t fun, int n, int threads);
double timespecToSeconds(struct timespec ts_begin, struct timespec ts_end);

int main(int argc, char * argv[])
{
    // Default values
    int n = 100000;
    int threads = 1;

    // Read new values from the command line
    if (argc == 3) {
        threads = atoi(argv[2]);
    }
    if (argc > 1) {
        n = atoi(argv[1]);
    }

    printf("=== PARALLEL VERSION ===\n");
    timeFunction(parallelIntegration, n, threads);

    return 0;
}

// Function to compute the numerical integration of pi.
// This version splits the calculation into multiple parts.
double parallelIntegration(int n, int threads)
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

    // Variable to store the integration computed in parallel
    double resultParallel = 0;

    double width = 1.0 / n;
    
    // Loop to call the functions as many times as threads
    for (int i=0; i < threads; i++) {
        thread_data[i].id = i;
        thread_data[i].start = i * rangeSize;
        thread_data[i].end = (i + 1) * rangeSize;
        thread_data[i].result = &resultParallel;
        thread_data[i].mutex_ptr = &mutex;
        thread_data[i].width = width;    // Pass width to the thread through the struct

        if (i == threads - 1){
            thread_data[i].end +=  remainder;
        }

        printf("ID: %d [%d, %d]\n", thread_data[i].id, thread_data[i].start, thread_data[i].end - 1);

        status = pthread_create(&tids[i], NULL, integrateRange, &thread_data[i]);
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

    return width * resultParallel;
}

// Compute the numerical integration of pi for a range of rectangles
void * integrateRange(void * data)
{
    data_t * info = data;
    
    // Cast the pointer into the desired type
    data_t * localData = (data_t *) data;
    double sum = 0.0;

    for (int i = localData -> start; i < localData->end; i++) {
        // Calculate the midpoint of the rectangle using the width from the struct
        double mid = (i + 0.5) * localData->width;
        double height = 4.0 / (1.0 + mid * mid);
        sum += height;
    }

    // Lock access to the shared memory, before modifying it
    pthread_mutex_lock(info->mutex_ptr);

    // Update the shared variable
    (*localData->result) += sum;
    pthread_mutex_unlock(localData -> mutex_ptr);

    // Return the address in heap
    pthread_exit(NULL);

    return 0;
}

/*
 * Wrapper function that measures the time taken by another function to execute
 * Receives a pointer to the function, and two arguments
 */
void timeFunction(integration_function_t fun, int n, int threads)
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
    double result = fun(n, threads);

    clock_gettime(CLOCK_REALTIME, &ts_wall_end);
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &ts_cpu_end);

    // Compute the times elapsed
    elapsed_wall = timespecToSeconds(ts_wall_begin, ts_wall_end);
    elapsed_cpu = timespecToSeconds(ts_cpu_begin, ts_cpu_end);

    printf("N: %d | Result: %.20f | Time: %lf | CPU: %lf\n", n, result, elapsed_wall, elapsed_cpu);
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


