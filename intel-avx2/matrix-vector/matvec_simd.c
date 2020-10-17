//matvec.c
//Multiplies a matrix by a vector
// This is the linear, no AVX/OpenMP version
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <sys/timeb.h>
#include <malloc.h>

#include <omp.h>

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

void sum(float *matrix, float *vector);

int main(int argc, char **argv) {
	//Get default number of threads and size
	int num_threads = 4; /* 4 is default number of threads */
    omp_set_num_threads(num_threads);
    
    //Set everything up
	float *matrix = malloc(sizeof(float)*N*N);
	float *vector = malloc(sizeof(float)*N);
	
	srand(time(NULL));
	init(matrix, vector);
	
	double start = read_timer();
	for (int i = 0; i<N_RUNS; i++)
		sum(matrix, vector);
	double t = (read_timer() - start);
	
	double gflops = ((2.0 * N) * N * N_RUNS) / (1.0e9 * t);
	
	printf("==================================================================\n");
    printf("Performance:\t\t\tRuntime (s)\t GFLOPS\n");
    printf("------------------------------------------------------------------\n");
    printf("Matrix-vector (SIMD):\t\t%4f\t%4f\n", t, gflops);
	
	return 0;	
}

//Our sum function- what it does is pretty straight-forward.
void sum(float *matrix, float *vector) {
	float s = 0;
	
	for (int i = 0; i<N; i++) {
		s = 0;
		
		#pragma omp simd	
		for (int j = 0; j<N; j++) {
			s += (matrix[i*N+j] * vector[j]);
		}
		
		vector[i] = s;
	}
}
