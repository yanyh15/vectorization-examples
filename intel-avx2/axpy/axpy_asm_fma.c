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
    for (int i = 0; i < N; i++) {
        A[i] = (float)rand()/(float)(RAND_MAX/10.0);
    }
}

//The external Assembly function
void axpy(int N, float *Y, float *X, float a);

//The base function
void axpy_base(float *Y, float *X, float a, int N) {
    int i;
    for (i = 0; i < N; ++i)
        Y[i] += a * X[i];
}

//The error check function
void check(float *Y, float *Y_base, int N, bool show) {
	int errors = 0;

	for (int i = 0; i<N; i++) {
		float error = Y[i] - Y_base[i];
		if (error < 0) error *= -1;
		if (error > 0.0001) {
			++errors;
			
			if (show) {
				printf("Y: %f | Y_base: %f | Error-> %f\n", Y[i], Y_base[i], error);
			}
		}
	}
	
	printf("Number of errors: %d/%d\n", errors, N);
}

//The main function
int main(int argc, char *argv[]) {
    int N = VECTOR_LENGTH;
    bool full = true;
    
    if (argc == 2) {
    	if (strcmp(argv[1], "-m") == 0) full = false;
    }
    
    float a = 123.456;
    float *Y_base = malloc(sizeof(float)*N);
    float *Y = malloc(sizeof(float)*N);
    float *X = malloc(sizeof(float)*N);

    srand(time(NULL));
    init(X, N);
    init(Y, N);
    
    for (int i = 0; i<N; i++)
    	Y_base[i] = Y[i];

    int i;
    int num_runs = RUNS;
    
    //Comment or uncomment to perform an error check
    if (full) {
		axpy(N, Y, X, a);
		axpy_base(Y_base, X, a, N);
		check(Y, Y_base, N, false);
	}
    
    double elapsed_base = read_timer();
    for (i=0; i<num_runs; i++) axpy(N, Y, X, a);
    elapsed_base = (read_timer() - elapsed_base)/num_runs;
    elapsed_base = elapsed_base * 1.0e3;

	if (full) {
		// you should add the call to each function and time the execution
		printf("=================================================================\n");
		printf("\tAXPY: Y[N] = Y[N] + a*X[N], N=%d\n", N);
		printf("-----------------------------------------------------------------\n");
		printf("Performance:\t\tRuntime (s)\t MFLOPS\n");
		printf("-----------------------------------------------------------------\n");
		printf("axpy_base:\t\t%4f\t%4f \t\t\n", elapsed_base, (2.0 * N) / (1.0e6 * elapsed_base));
	} else {
		printf("%f\n", elapsed_base);
	}
     
    free(Y_base);
    free(Y);
    free(X);

    return 0;
}

