CC=icc

all: matmul matmul_auto matmul_clang matmul_clang_auto matmul_avx matmul_asm matmul_simd matmul_simd_clang

# ICC
matmul: matmul.c
	$(CC) matmul.c -o matmul -O2 -no-vec
	
matmul_auto: matmul.c
	$(CC) matmul.c -o matmul_auto -O2 -xCORE_AVX2
	
# Clang
matmul_clang: matmul.c
	clang matmul.c -o matmul_clang -O2
	
matmul_clang_auto: matmul.c
	clang matmul.c -o matmul_clang_auto -O2 -march=skylake

# Intrinsics
matmul_avx: matmul_avx.c
	$(CC) matmul_avx.c -o matmul_avx -O2 -mavx2 -xCORE_AVX2
	
# Assembly
matmul_asm: matmul_asm.c matmul.asm
	$(CC) matmul_asm.c -c -O2
	nasm -felf64 matmul.asm -o matmul_mul.o
	$(CC) matmul_asm.o matmul_mul.o -o matmul_asm -no-pie -O2
	rm *.o
	
# ICC- OpenMP SIMD
matmul_simd: matmul_simd.c
	$(CC) matmul_simd.c -o matmul_simd -fopenmp -mavx2 -O2 -xCORE_AVX2
	
# Clang- OpenMP SIMD
matmul_simd_clang: matmul_simd.c
	clang matmul_simd.c -o matmul_simd_clang -fopenmp -mavx2 -O2
	
clean:
	rm matmul matmul_auto matmul_clang matmul_clang_auto matmul_avx matmul_asm matmul_simd matmul_simd_clang
