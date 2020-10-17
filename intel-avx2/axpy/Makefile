CC=icc

CFLAGS=-xCORE-AVX2

all: axpy axpy_avx axpy_fma axpy_asm axpy_asm_fma axpy_simd

axpy: axpy.c
	$(CC) axpy.c -o axpy -no-vec -O0

axpy_avx: axpy_avx.c
	$(CC) $(CFLAGS) axpy_avx.c -o axpy_avx
	
axpy_fma: axpy_fma.c
	$(CC) $(CFLAGS) axpy_fma.c -o axpy_fma -mfma
	
axpy_asm: axpy_asm.c axpy.asm
	$(CC) axpy_asm.c -c -g
	nasm -felf64 axpy.asm -o axpy_asm2.o -g
	$(CC) axpy_asm.o axpy_asm2.o -o axpy_asm -no-pie -g
	rm *.o
	
axpy_asm_fma: axpy_asm_fma.c axpy_fma.asm
	$(CC) axpy_asm_fma.c -c -g
	nasm -felf64 axpy_fma.asm -o axpy_asm_fma2.o -g
	$(CC) axpy_asm_fma.o axpy_asm_fma2.o -o axpy_asm_fma -no-pie -g
	rm *.o
	
axpy_simd: axpy_simd.c
	$(CC) $(CFLAGS) axpy_simd.c -o axpy_simd -fopenmp
	
clean:
	rm axpy axpy_avx axpy_fma axpy_asm axpy_asm_fma axpy_simd
