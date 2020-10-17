section .data
	
section .bss

section .text
	global axpy
	
; void axpy(int N, REAL *Y, REAL *X, REAL a);
;			edi		rsi		rdx		 xmm0
; AXPY  Y[N] = Y[N] + a*X[N]
axpy:
	xor rax, rax
	
	vmovups ymm1, [rdx]
	vbroadcastss ymm2, xmm0
	vfmadd213ps ymm1, ymm2, [rsi]
	vmovups [rsi], ymm1
	
	cmp edi, 8
	jle done
	
axpy8:
	vmovups ymm1, [rdx+rax*4]
	vfmadd213ps ymm1, ymm2, [rsi+rax*4]
	vmovups [rsi+rax*4], ymm1
	add eax, 8
	cmp eax, edi
	jl axpy8
	
;axpy1:
;	movss xmm0, [rdx+rax*4]
;	addss xmm0, [rsi+rax*4]
;	movss [rsi+rax*4], xmm0
;	add eax, 1
;	cmp eax, edi
;	jl axpy1

done:
	ret
