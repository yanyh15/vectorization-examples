CC=icc

CFLAGS=-xCORE-AVX2

all: sum sum_avx sum_asm sum_simd cc_sum cc_sum_avx

#ICC builds
sum: sum.c
	$(CC) sum.c -o sum -no-vec -O0

sum_avx: sum_intrinsics.c
	$(CC) $(CFLAGS) sum_intrinsics.c -o sum_avx
	
sum_asm: sum_asm.c sum_avx.asm
	$(CC) sum_asm.c -c
	nasm -felf64 sum_avx.asm
	$(CC) sum_asm.o sum_avx.o -o sum_asm -no-pie
	rm *.o
	
sum_simd: sum_simd.c
	$(CC) $(CFLAGS) sum_simd.c -o sum_simd -fopenmp
	
#Clang builds
cc_sum: sum.c
	clang sum.c -o cc_sum -O0
	
cc_sum_avx: sum_intrinsics.c
	clang sum_intrinsics.c -o cc_sum_avx -mavx2
	
clean:
	rm sum sum_avx sum_asm sum_simd cc_sum cc_sum_avx
