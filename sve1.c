#include <arm_sve.h>
#include <stdio.h>
#include <stdlib.h>

#define N 512

void daxpy_1_1(int64_t n, double da, double *dx, double *dy)
{
    int64_t i = 0;
    svbool_t pg = svwhilelt_b64(i, n);                                           // [1]
    do
    {
        svfloat64_t dx_vec = svld1(pg, &dx[i]);                     // [2]
        svfloat64_t dy_vec = svld1(pg, &dy[i]);                     // [2]
        svst1(pg, &dy[i], svmla_x(pg, dy_vec, dx_vec, da));         // [3]
        i += svcntd();                                              // [4]
        pg = svwhilelt_b64(i, n);                                   // [1]
    }
    while (svptest_any(svptrue_b64(), pg));                                   // [5]
}

//Create a matrix and a vector and fill with random numbers
void init(double *dx, double *dy) {
	for (int i = 0; i<N; i++) {
		dx[i] = (double)rand()/(double)(RAND_MAX/10.0);
		dy[i] = (double)rand()/(double)(RAND_MAX/10.0);
	}
}

void output(double *dx, double *dy, double da) {
    printf("DA: %f\n", da);
    
    printf("Dx: ");
    for (int i = 0; i<5; i++) {
        printf("%f ", dx[i]);
    }
    puts("");
    
    printf("Dy: ");
    for (int i = 0; i<5; i++) {
        printf("%f ", dy[i]);
    }
    puts("");
}

int main() {
    double *dx = malloc(sizeof(double)*N);
    double *dy = malloc(sizeof(double)*N);
    double da = 12.34;
    
    init(dx, dy);
    output(dx, dy, da);
    
    daxpy_1_1(N, da, dx, dy);
    
    puts("");
    puts("After:");
    puts("");
    
    output(dx, dy, da);
    
    free(dx);
    free(dy);
    
    return 0;
}

