#include <stdio.h>
#include <malloc.h>
#include <stdlib.h>
#include <time.h>

#define N 5000000

extern float add(float *numbers, int size);

void init(float *numbers) {
	for (int i = 0; i<N; i++)
		numbers[i] = ((float)rand()/(float)(RAND_MAX)) * 100;
}

void print_array(float *numbers) {
	for (int i = 0; i<N; i++)
		printf("%f ", numbers[i]);
	puts("");
}

float add_check(float *numbers) {
	float sum = 0;
	
	for (int i = 0; i<N; i++)
		sum += numbers[i];
	
	return sum;
}

void main() {
	srand(time(NULL));

	float *numbers = malloc(sizeof(float)*N);
	init(numbers);
	
	//print_array(numbers);
	puts("");
	
	float s1 = add(numbers, N);
	float s2 = add_check(numbers);
	
	printf("Sum (Actual): %f\n", s1);
	printf("Sum (Expected): %f\n", s2);
}
