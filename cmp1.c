
// Compile: gcc-10 sum.c -o sum -march=armv8-a+sve
// Run: armie -msve-vector-bits=256 ./sum

#include <arm_sve.h>
#include <stdio.h>
#include <stdlib.h>

#define N 512

void init(float *numbers) {
	for (int i = 0; i<N; i++) {
		numbers[i] = (float)rand()/(float)(RAND_MAX/10.0);
	}
}

// Print the first 10 numbers
void output(float *numbers) {
    printf("[");
    for (int i = 0; i<10; i++) {
        printf("%.2f, ", numbers[i]);
    }
    printf("]\n");
}

// Main function
int main() {
    float *numbers1 = malloc(sizeof(float)*N);
    float *numbers2 = malloc(sizeof(float)*N);
    
    init(numbers1);
    //init(numbers2);
    //for (int i = 0; i<N; i++) numbers2[i] = numbers1[i];
    for (int i = 0; i<N; i++) numbers2[i] = i % 2 == 0 ? numbers1[i] : 22.4;
    
    puts("Numbers:");
    output(numbers1);
    output(numbers2);
    puts("");
    
    svbool_t pg = svptrue_b32();
    
    svfloat32_t num1 = svld1(pg, numbers1);
    svfloat32_t num2 = svld1(pg, numbers2);
    svbool_t result = svcmpeq(pg, num1, num2);
    
    if (svptest_any(pg, result)) {
        puts("Some true");
    } else {
        puts("All false");
    }
    
    free(numbers1);
    free(numbers2);
    return 0;
}

