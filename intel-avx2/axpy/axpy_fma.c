/*
 * AXPY  Y[N] = Y[N] + a*X[N]
 */
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <sys/timeb.h>
#include <time.h>
#include <stdbool.h>
#include <string.h>

#include <immintrin.h>

#include "../constants.h"

// read timer in second
double read_timer() {
    struct timeb tm;
    ftime(&tm);
    return (double) tm.time + (double) tm.millitm / 1000.0;
}

// read timer in ms
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

void axpy(int N, float *Y, float *X, float a);

int main(int argc, char *argv[]) {
    int N = VECTOR_LENGTH;
    bool full = true;
    
    if (argc == 2) {
    	if (strcmp(argv[1], "-m") == 0) full = false;
    }
    
    float a = 123.456;
    float *Y_base = malloc(sizeof(float)*N);
    float *X = malloc(sizeof(float)* N);

    srand(time(NULL));
    init(X, N);
    init(Y_base, N);

    int i;
    int num_runs = RUNS;
    
    double elapsed_base = read_timer();
    for (i=0; i<num_runs; i++) axpy(N, Y_base, X, a);
    elapsed_base = (read_timer() - elapsed_base)/num_runs;
    elapsed_base = elapsed_base * 1.0e3;

	if (full) {
		// you should add the call to each function and time the execution
		printf("=================================================================\n");
		printf("\tAXPY: Y[N] = Y[N] + a*X[N], N=%d (Fused-multply-Add)\n", N);
		printf("-----------------------------------------------------------------\n");
		printf("Performance:\t\tRuntime (ms)\t MFLOPS\n");
		printf("-----------------------------------------------------------------\n");
		printf("axpy_base:\t\t%4f\t%4f \t\t\n", elapsed_base, (2.0 * N) / (1.0e6 * elapsed_base));
	} else {
		printf("%f\n", elapsed_base);
	}
     
    free(Y_base);
    free(X);

    return 0;
}

void axpy(int N, float *Y, float *X, float a) {
	__m256 scalars = _mm256_set1_ps(a);
	int i = 0;
	
	for (; i<N; i+=8) {
		__m256 x = _mm256_loadu_ps(&X[i]);
		__m256 y = _mm256_loadu_ps(&Y[i]);
		__m256 y_result = _mm256_fmadd_ps(scalars, x, y);
		_mm256_storeu_ps(&Y[i], y_result);
	}
	
	for (; i<N; i++) {
		Y[i] += a * X[i];
	}
}


