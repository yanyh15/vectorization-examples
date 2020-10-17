//matvec.c
//Multiplies a matrix by a vector
// This is the linear, no AVX/OpenMP version
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <sys/timeb.h>
#include <malloc.h>

#define N_RUNS 1000
#define N 1200

// read timer in second
double read_timer() {
    struct timeb tm;
    ftime(&tm);
    return (double) tm.time + (double) tm.millitm / 1000.0;
}

//Create a matrix and a vector and fill with random numbers
void init(float *matrix, float *vector) {
	for (int i = 0; i<N; i++) {
		for (int j = 0; j<N; j++) {
			matrix[i*N+j] = (float)rand()/(float)(RAND_MAX/10.0);
		}
		
		vector[i] = (float)rand()/(float)(RAND_MAX/10.0);
	}
}

//Our sum function- what it does is pretty straight-forward.
void sum(float *matrix, float *vector, float *answer) {
	float s = 0;
	volatile int i = 0;
	
	for (i = 0; i<N; i++) {
		float s = 0;
	
		for (int j = 0; j<N; j++) {
			s += (matrix[i*N+j] * vector[j]);
		}
		
		answer[i] = s;
	}
}

int main(int argc, char **argv) {
    //Set everything up
	float *matrix = malloc(sizeof(float)*N*N);
	float *vector = malloc(sizeof(float)*N);
	float *answer = malloc(sizeof(float)*N);
	
	srand(time(NULL));
	init(matrix, vector);
	
	double start = read_timer();
	for (int i = 0; i<N_RUNS; i++)
		sum(matrix, vector, answer);
	double t = (read_timer() - start);
	
	double gflops = ((2.0 * N) * N * N_RUNS) / (1.0e9 * t);
	
	printf("==================================================================\n");
    printf("Performance:\t\t\tRuntime (s)\t GFLOPS\n");
    printf("------------------------------------------------------------------\n");
    printf("Matrix-vector (linear):\t\t%4f\t%4f\n", t, gflops);
    
    free(matrix);
    free(vector);
    free(answer);
	
	return 0;	
}


