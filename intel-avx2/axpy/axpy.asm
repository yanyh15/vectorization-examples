section .data
	
section .bss

section .text
	global axpy
	
; void axpy(int N, REAL *Y, REAL *X, REAL a);
;			edi		rsi		rdx		 xmm0
; AXPY  Y[N] = Y[N] + a*X[N]
axpy:
	xor rax, rax
	movss xmm7, xmm0
	
	vmovups ymm1, [rdx]
	vbroadcastss ymm2, xmm7
	vmulps ymm1, ymm1, ymm2
	vaddps ymm0, ymm1, [rsi]
	vmovups [rsi], ymm0
	
axpy_check:
	mov ebx, eax
	add eax, 8
	cmp eax, edi
	jl axpy8
	
	mov eax, ebx
	add eax, 1
	cmp eax, edi
	jl axpy1
	
	jmp done
	
axpy8:
	vmovups ymm1, [rdx+rax*4]
	vmulps ymm1, ymm1, ymm2
	vaddps ymm0, ymm1, [rsi+rax*4]
	vmovups [rsi+rax*4], ymm0
	jmp axpy_check
	
axpy1:
	movss xmm0, [rdx+rax*4]
	addss xmm0, [rsi+rax*4]
	movss [rsi+rax*4], xmm0
	jmp axpy_check

done:
	ret
