//matvec.c
//Multiplies a matrix by a vector
// This is C AVX version
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <sys/timeb.h>
#include <malloc.h>

#include <smmintrin.h>
#include <immintrin.h>

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

void matvec(float *matrix, float *vector, float *answer);

int main(int argc, char **argv) {
    //Set everything up
	float *matrix = malloc(sizeof(float)*N*N);
	float *vector = malloc(sizeof(float)*N);
	float *buf = malloc(sizeof(float)*N);
	float *answer = malloc(sizeof(float)*N);
	float *answer2 = malloc(sizeof(float)*N);
	
	srand(time(NULL));
	init(matrix, vector);
	
	double start = read_timer();
	for (int i = 0; i<N_RUNS; i++)
		matvec(matrix, vector, answer);
	double t = (read_timer() - start);
	
	double gflops = ((2.0 * N) * N * N_RUNS) / (1.0e9 * t);
	
	printf("==================================================================\n");
    printf("Performance:\t\t\tRuntime (s)\t GFLOPS\n");
    printf("------------------------------------------------------------------\n");
    printf("Matrix-vector (AVX):\t\t%4f\t%4f\n", t, gflops);
    
    //Clean up
    free(matrix);
    free(vector);
    free(buf);
    free(answer);
    free(answer2);
	
	return 0;	
}

//Sum
float sum(float *numbers) {
	__m256 sums = _mm256_loadu_ps(numbers);		//Load the first eight
	__m256 current;
	int index = 8;
	
	for (int i = index; i<N; i+=8) {
		current = _mm256_loadu_ps(&numbers[i]);
		sums = _mm256_add_ps(sums, current);
	}
	
	float result[8];
	_mm256_storeu_ps(result, sums);
	
	float r = 0;
	for (int i = 0; i<8; i++)
		r += result[i];
		
	return r;
}

//Matrix-vector multiplication
void matvec(float *matrix, float *vector, float *answer) {
	float *buf = malloc(sizeof(float)*N);
	volatile int i = 0;

	for (i = 0; i<N; i++) {
		int j = 0;
		
		while (j<N) {
			if (j+8 < N) {
				__m256 part1 = _mm256_loadu_ps(&matrix[i*N+j]);
				__m256 part2 = _mm256_loadu_ps(&vector[j]);
				part1 = _mm256_mul_ps(part1, part2);
				
				_mm256_storeu_ps(&buf[j], part1);
				j += 8;
			} else {
				buf[j] = (matrix[i*N+j] * vector[j]);
				++j;
			}
		}
		
		answer[i] = sum(buf);
	}
	
	free(buf);
}


