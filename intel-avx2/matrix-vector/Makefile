CC=icc

all: matvec matvec_auto matvec_clang matvec_clang_auto matvec_avx matvec_asm matvec_simd matvec_simd_clang

# ICC
matvec: matvec.c
	$(CC) matvec.c -o matvec -O2 -no-vec
	
matvec_auto: matvec.c
	$(CC) matvec.c -o matvec_auto -O2 -xCORE_AVX2
	
# Clang
matvec_clang: matvec.c
	clang matvec.c -o matvec_clang -O2
	
matvec_clang_auto: matvec.c
	clang matvec.c -o matvec_clang_auto -O2 -march=skylake

# Intrinsics
matvec_avx: matvec_intrinsics.c
	$(CC) matvec_intrinsics.c -o matvec_avx -O2 -mavx2 -xCORE_AVX2
	
# Assembly
matvec_asm: matvec_asm.c matvec_mul.asm
	$(CC) matvec_asm.c -c
	nasm -felf64 matvec_mul.asm
	$(CC) matvec_asm.o matvec_mul.o -o matvec_asm -no-pie
	rm *.o
	
# ICC- OpenMP SIMD
matvec_simd: matvec_simd.c
	$(CC) matvec_simd.c -o matvec_simd -fopenmp -mavx2 -O2 -xCORE_AVX2
	
# Clang- OpenMP SIMD
matvec_simd_clang: matvec_simd.c
	clang matvec_simd.c -o matvec_simd_clang -fopenmp -mavx2 -O2
	
clean:
	rm matvec matvec_auto matvec_clang matvec_clang_auto matvec_avx matvec_asm matvec_simd matvec_simd_clang
