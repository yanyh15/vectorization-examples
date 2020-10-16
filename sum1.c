
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

// Do math
void sum(float *numbers1, float *numbers2, float *sum) {
    int i = 0;
    int n = N;
    svbool_t count = svwhilelt_b32(i, n);
    
    int loop_count = 0;
    
    do {
        ++loop_count;
        
        // Load part of the array
        svfloat32_t num1 = svld1(count, &numbers1[i]);
        svfloat32_t num2 = svld1(count, &numbers2[i]);
        
        // Add
        svfloat32_t result = svadd_f32_m(count, num1, num2);
        
        // Store
        svst1(count, &sum[i], result);
        
        // Increment and check the loop
        // the 'w' in the first statement is for 32-bit
        i += svcntw();
        count = svwhilelt_b32(i, n);
        
    } while (svptest_any(svptrue_b32(), count));
    
    printf("Addition done in %d iterations.\n", loop_count);
}

// Main function
int main() {
    float *numbers1 = malloc(sizeof(float)*N);
    float *numbers2 = malloc(sizeof(float)*N);
    float *result = malloc(sizeof(float)*N);
    
    init(numbers1);
    init(numbers2);
    
    puts("Before:");
    output(numbers1);
    output(numbers2);
    puts("");
    
    sum(numbers1, numbers2, result);
    
    puts("After:");
    output(result);
    
    free(numbers1);
    free(numbers2);
    free(result);
    return 0;
}

