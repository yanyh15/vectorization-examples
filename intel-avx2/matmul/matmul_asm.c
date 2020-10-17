/*
 * Square matrix multiplication
 * A[N][N] * B[N][N] = C[N][N]
 * N should bigger than 8
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
    int i,j,k;
    float temp;
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

void matmul(float *A, float *B, float *C, float *buf, int n);

float check(float *A, float *B){
    float difference = 0;
    for(int i = 0;i<N*N; i++){ difference += A[i]- B[i];}
    return difference;
}

void print_matrix(float *A) {
	for (int i = 0; i<N; i++) {
		for (int j = 0; j<N; j++) {
    		printf("%.4f ", A[i*N+j]);
    	}
    	puts("");
    }
}

int main(int argc, char *argv[]) {
    float *A = malloc(sizeof(float)*N*N);
    float *B = malloc(sizeof(float)*N*N);
    float *buf = malloc(sizeof(float)*N);
    float *C_avx = malloc(sizeof(float)*N*N);
    float *C_serial = malloc(sizeof(float)*N*N);

    srand(time(NULL));
    init(A);
    init(B);
    
    float *BT = malloc(sizeof(float)*N*N);
    for(int line = 0; line<N; line++){
        for(int col = 0; col<N; col++){
            BT[line*N+col] = B[col*N+line];
        }
    }
    
    int i;
    int num_runs = 10;

    double elapsed_avx = read_timer();
    for (i=0; i<num_runs; i++)
        matmul(A, BT, C_avx, buf, N);
    elapsed_avx = (read_timer() - elapsed_avx);
    
    double gflops = ((((2.0 * N) * N) * N * num_runs) / (1.0e9 * elapsed_avx));

    // you should add the call to each function and time the execution
    printf("======================================================================================================\n");
    printf("\tMatrix Multiplication: A[N][N] * B[N][N] = C[N][N], N=%d\n", N);
    printf("------------------------------------------------------------------------------------------------------\n");
    printf("Performance:\t\tRuntime (s)\t GFLOPS\n");
    printf("------------------------------------------------------------------------------------------------------\n");
    printf("matmul_asm:\t\t%4f\t%4f\n", elapsed_avx, gflops);

	matmul_serial(A, B, C_serial);
    printf("Correctness check: %f\n", check(C_avx,C_serial));
    
    return 0;
}

