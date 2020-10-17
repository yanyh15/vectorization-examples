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

#include <smmintrin.h>
#include <immintrin.h>

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

void matmul_avx(float *A, float *B, float *C) {
    int i,j,k;
    float temp;
    float result[N];
    float result1[N];
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            temp = 0;
            for (k = 0; k + 8 <= N; k=k+8) {
                __m256 y1 = _mm256_loadu_ps(&A[i * N + k]);
                __m256 y2 = _mm256_loadu_ps(&B[j * N + k]);
     	        __m256 yr1 = _mm256_mul_ps(y1, y2);
                _mm256_storeu_ps(&result[k], yr1);
            }
        //vector_length maybe can not devided by 8
        //compute the last 8 numbers
            int t = N%8;
            k = N-8;
            __m256 y1 = _mm256_loadu_ps(&A[i * N + k]);
            __m256 y2 = _mm256_loadu_ps(&B[j * N + k]);
            __m256 yr1 = _mm256_mul_ps(y1, y2);
            _mm256_storeu_ps(&result[k], yr1);

            C[i * N + j] = sum(result);
        }
    }
}

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
        matmul_avx(A, BT, C_avx);
    elapsed_avx = (read_timer() - elapsed_avx);
    
    double gflops = ((((2.0 * N) * N) * N * num_runs) / (1.0e9 * elapsed_avx));

    // you should add the call to each function and time the execution
    printf("======================================================================================================\n");
    printf("\tMatrix Multiplication: A[N][N] * B[N][N] = C[N][N], N=%d\n", N);
    printf("------------------------------------------------------------------------------------------------------\n");
    printf("Performance:\t\tRuntime (s)\t GFLOPS\n");
    printf("------------------------------------------------------------------------------------------------------\n");
    printf("matmul_avx:\t\t%4f\t%4f\n", elapsed_avx, gflops);

	matmul_serial(A, B, C_serial);
    printf("Correctness check: %f\n", check(C_avx,C_serial));
    
    return 0;
}

