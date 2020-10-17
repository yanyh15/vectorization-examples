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
#include <omp.h>

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


void matmul_simd(float *A, float *B, float *C) {
    int i,j,k;
    float temp;

    for (i = 0; i < N; i++) {
    #pragma omp simd
        for (j = 0; j < N; j++) {
            temp = 0;

            for (k = 0; k < N; k++) {
                temp += (A[i * N + k] * B[j * N + k]);
            }
            C[i * N + j] = temp;
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

float check(float *A, float *B){
    float difference = 0;
    for(int i = 0;i<N; i++){ difference += A[i]- B[i];}
    return difference;
}

int main(int argc, char *argv[]) {
    int num_threads = 4; /* 4 is default number of threads */
    omp_set_num_threads(num_threads);

    float *A = malloc(sizeof(float)*N*N);
    float *B = malloc(sizeof(float)*N*N);
    float *C_simd = malloc(sizeof(float)*N*N);
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

    double elapsed = read_timer();
    for (i=0; i<num_runs; i++)
        matmul_simd(A, BT, C_simd);
    elapsed = (read_timer() - elapsed);

    double elapsed_serial = read_timer();
    for (i=0; i<num_runs; i++)
        matmul_serial(A, B, C_serial);
    elapsed_serial = (read_timer() - elapsed_serial);
    
    double gflops_omp = ((((2.0 * N) * N) * N * num_runs) / (1.0e9 * elapsed));
    double gflops_serial = ((((2.0 * N) * N) * N * num_runs) / (1.0e9 * elapsed_serial));
    
    printf("======================================================================================================\n");
    printf("\tMatrix Multiplication: A[N][N] * B[N][N] = C[N][N], N=%d\n", N);
    printf("------------------------------------------------------------------------------------------------------\n");
    printf("Performance:\t\tRuntime (s)\t GFLOPS\n");
    printf("------------------------------------------------------------------------------------------------------\n");
    printf("matmul_omp:\t\t%4f\t%4f\n", elapsed, gflops_omp);
    printf("matmul_serial:\t\t%4f\t%4f\n", elapsed_serial, gflops_serial);
    printf("Correctness check: %f\n", check(C_simd,C_serial));
    return 0;
}

