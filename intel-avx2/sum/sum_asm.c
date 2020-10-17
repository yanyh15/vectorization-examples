#include <stdio.h>
#include <stdlib.h>
#include <sys/timeb.h>
#include <stdbool.h>
#include <string.h>
#include <time.h>

#include <smmintrin.h>
#include <immintrin.h>

#include "../constants.h"

/* read timer in second */
double read_timer() {
    struct timeb tm;
    ftime(&tm);
    return (double) tm.time + (double) tm.millitm / 1000.0;
}

/* read timer in ms */
double read_timer_ms() {
    struct timeb tm;
    ftime(&tm);
    return (double) tm.time * 1000.0 + (double) tm.millitm;
}

/* initialize a vector with random floating point numbers */
void init(float *A, int N) {
    int i;
    for (i = 0; i < N; i++) {
        A[i] = (float)rand()/(float)(RAND_MAX/10.0);
    }
}

float add(float *numbers, int N);

float add_base(float *numbers, int N) {
	float result = 0;
	for (int i = 0; i<N; i++)
		result += numbers[i];
	return result;
}

//Our main function
int main(int argc, char *argv[]) {
    int N = VECTOR_LENGTH;
    bool full = true;
    
    if (argc == 2) {
    	if (strcmp(argv[1], "-m") == 0) full = false;
    }
    
    float *numbers = malloc(sizeof(float)* N);

    srand(time(NULL));
    init(numbers, N);
    
    //Error check
    if (full) {
		float r1 = add(numbers, N);
		float r2 = add_base(numbers, N);
		printf("Asm: %f | Base: %f\n\n", r1, r2);
	}

    int i;
    int num_runs = RUNS;
    volatile float result;
    
    double elapsed = read_timer();
    for (i=0; i<num_runs; i++) result = add(numbers, N);
    elapsed = (read_timer() - elapsed)/num_runs;
    elapsed = elapsed * 1.0e3;
    
    if (full) {
		/* you should add the call to each function and time the execution */
		printf("AVX Summation using iteration (Assembly)\n");
		printf("======================================================================================================\n");
		printf("Performance:\t\t\tRuntime (s)\t MFLOPS \t\tCalculated Result\n");
		printf("------------------------------------------------------------------------------------------------------\n");
		printf("sum (using AVX):\t\t%4f\t%4f \t\t%g\n", elapsed, (2.0 * N) / (1.0e6 * elapsed), add(numbers, N));
    } else {
    	printf("%f\n", elapsed);
    }
    
    free(numbers);

    return 0;
}
