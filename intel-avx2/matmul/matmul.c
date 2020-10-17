/*
 * Square matrix multiplication
 * A[N][N] * B[N][N] = C[N][N]
 *
 */
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <sys/timeb.h>
#include <string.h>
#include <time.h>

#define N 512

// read timer in second
double read_timer() {
    struct timeb tm;
    ftime(&tm);
    return (double) tm.time + (double) tm.millitm / 1000.0;
}

void init(float *A) {
    int i, j;
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            A[i*N+j] = (float)rand()/(float)(RAND_MAX/10.0);
        }
    }
}

void matmul_serial(float *A, float *B, float *C) {
	float dummy = 0;

    int i,j,k;
    volatile float temp;
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            temp = 0;
            for (k = 0; k < N; k++) {
                temp += (A[i * N + k] * B[k * N + j]);
            }
            C[i * N + j] = temp;
        }
    }
}

int main(int argc, char *argv[]) {
    float *A = malloc(sizeof(float)*N*N);
    float *B = malloc(sizeof(float)*N*N);
    
    float *C_serial = malloc(sizeof(float)*N*N);

    srand(time(NULL));
    init(A);
    init(B);

    int i;
    int num_runs = 10;

    double elapsed = read_timer();
    for (i=0; i<num_runs; i++) {
    	matmul_serial(A, B, C_serial);
   	}
    elapsed = (read_timer() - elapsed);
    
    double gflops = ((((2.0 * N) * N) * N * num_runs) / (1.0e9 * elapsed));
    
    /* you should add the call to each function and time the execution */
    printf("======================================================================================================\n");
    printf("\tMatrix Multiplication: A[N][N] * B[N][N] = C[N][N], N=%d\n", N);
    printf("------------------------------------------------------------------------------------------------------\n");
    printf("Performance:\t\tRuntime (s)\t GFLOPS\n");
    printf("------------------------------------------------------------------------------------------------------\n");
    printf("matmul_serial:\t\t%4f\t%4f\n", elapsed, gflops);
    
    return 0;
}

