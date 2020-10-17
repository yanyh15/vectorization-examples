/*
 * AXPY  Y[N] = Y[N] + a*X[N]
 */
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <sys/timeb.h>
#include <stdbool.h>
#include <string.h>

#include <omp.h>

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
#pragma omp parallel for shared(A, N) private(i)
    for (i = 0; i < N; i++) {
        A[i] = (float) drand48();
    }
}

void axpy_base(int N, float *Y, float *X, float a);

void axpy_omp_simd(int N, float *Y, float *X, float a);


int main(int argc, char *argv[]) {
    int N = VECTOR_LENGTH;
    bool full = true;
    
    if (argc == 2) {
    	if (strcmp(argv[1], "-m") == 0) full = false;
    }
    
    int num_threads = 4;
    omp_set_num_threads(num_threads);
    
    float a = 123.456;
    float *Y_base = malloc(sizeof(float)*N);
    float *Y_parallel = malloc(sizeof(float)*N);
    float *X = malloc(sizeof(float)* N);

    srand48((1 << 12));
    init(X, N);
    init(Y_base, N);
    memcpy(Y_parallel, Y_base, N * sizeof(float));

    int i;
    int num_runs = RUNS;
    
    double elapsed_base = read_timer();
    for (i=0; i<num_runs; i++) axpy_omp_simd(N, Y_parallel, X, a);
    elapsed_base = (read_timer() - elapsed_base)/num_runs;
    elapsed_base = elapsed_base * 1.0e3;

	if (full) {
		/* you should add the call to each function and time the execution */
		printf("======================================================================================================\n");
		printf("\tAXPY: Y[N] = Y[N] + a*X[N], N=%d, %d threads for dist\n", N, num_threads);
		printf("------------------------------------------------------------------------------------------------------\n");
		printf("Performance:\t\t\tRuntime (ms)\t MFLOPS \t\t\n");
		printf("------------------------------------------------------------------------------------------------------\n");
		printf("axpy_omp_simd:\t\t%4f\t%4f \t\t\n", elapsed_base, (2.0 * N) / (1.0e6 * elapsed_base));
    } else {
    	printf("%f\n", elapsed_base);
    }
    
    free(Y_base);
    free(Y_parallel);
    free(X);

    return 0;
}
 
void axpy_omp_simd(int N, float *Y, float *X, float a) {
    int i;
    #pragma omp simd
    for (i = 0; i < N; ++i)
        Y[i] += a * X[i];
}
