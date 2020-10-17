#include <stdio.h>
#include <stdlib.h>
#include <sys/timeb.h>
#include <stdbool.h>
#include <string.h>

#include "../constants.h"

/* read timer in second */
double read_timer() {
    struct timeb tm;
    ftime(&tm);
    return (double) tm.time + (double) tm.millitm / 1000.0;
}

/* read timer in ms */
double read_timer_ms() {
    struct timeb tm;
    ftime(&tm);
    return (double) tm.time * 1000.0 + (double) tm.millitm;
}

/* initialize a vector with random floating point numbers */
void init(float *A, int N) {
    int i;
    for (i = 0; i < N; i++) {
        A[i] = (double) drand48();
    }
}

float sum(int N, float *numbers);

int main(int argc, char *argv[]) {
    int N = VECTOR_LENGTH;
    bool full = true;
    
    if (argc == 2) {
    	if (strcmp(argv[1], "-m") == 0) full = false;
    }
    
    float *numbers = malloc(sizeof(float)* N);

    srand48((1 << 12));
    init(numbers, N);


    int i;
    int num_runs = RUNS;
    volatile float result;
    
    double elapsed = read_timer();
    for (i=0; i<num_runs; i++) result = sum(N, numbers);
    elapsed = (read_timer() - elapsed)/num_runs;
    elapsed = elapsed * 1.0e3;
    
    if (full) {
		/* you should add the call to each function and time the execution */
		printf("======================================================================================================\n");
		printf("Performance:\t\t\tRuntime (s)\t MFLOPS \t\tCalculated Result\n");
		printf("------------------------------------------------------------------------------------------------------\n");
		printf("sum (linear, no-AVX):\t\t%4f\t%4f \t\t%g\n", elapsed, (2.0 * N) / (1.0e6 * elapsed), sum(N, numbers));
	} else {
		printf("%f\n", elapsed);
	}
		
    free(numbers);
    return 0;
}

float sum(int N, float *numbers) {
	float sum = 0;
	
	for (int i = 0; i<N; i++)
		sum += numbers[i];
	
	return sum;
}
