section .data
	i: dd 0
	j: dd 0
	k: dd 0
	size: dd 4
	
section .bss
	A: resq 1
	B: resq 1
	C: resq 1
	buf: resq 1

section .text
	global matmul

; The addition function	
add:
	xor rax, rax
	vmovups ymm0, [buf]		; Load the first eight values
	
add_chk:
	add eax, 8
	cmp eax, [size]
	jg add_done
	
add8:
	vaddps ymm0, ymm0, [buf+rax*4]
	jmp add_chk
	
add_done:
	vhaddps ymm3, ymm0, ymm0
	vhaddps ymm3, ymm3, ymm3
	vextractf128 xmm0, ymm3, 0
	vextractf128 xmm1, ymm3, 1
	addss xmm0, xmm1

	ret
	
; void matmul(float *A, float *B, float *C, float *buf, int N)
;			  rdi		rsi		rdx			rcx			r8d
matmul:
	xor rax, rax
	
	mov qword [A], rdi
	mov qword [B], rsi
	mov qword [C], rdx
	mov qword [buf], rcx
	mov dword [size], r8d
	
	mov dword [i], 0
	mov dword [j], 0
	mov dword [k], 0
	
	jmp i_cmp
	
i_loop:
	mov dword [j], 0
	jmp j_cmp

j_loop:
	mov dword [k], 0
	xorps xmm4, xmm4
	vzeroall
	jmp k_cmp

; ------ The k-level loop-> Where the math happens
; A[i * N + k]
; B[j * N + k]
k_loop:
	; Load the current address of matrix A
	mov eax, [i]
	imul eax, [size]
	mov edx, eax
	mov eax, [k]
	add eax, edx
	cdqe
	
	lea rdx, [0+rax*4]
	mov rax, [A]
	add rax, rdx
	
	vmovups ymm1, [rax]
	
	; Load the current address of matrix B
	mov eax, [j]
	imul eax, [size]
	mov edx, eax
	mov eax, [k]
	add eax, edx
	cdqe
	
	lea rdx, [0+rax*4]
	mov rax, [B]
	add rax, rdx
	
	; Now multiply
	vmulps ymm0, ymm1, [rax]
	
	; Save the result
	mov eax, [k]
	vmovups [buf+rax*4], ymm0

	add dword [k], 8
; ------ The k-loop comparison
k_cmp:
	mov eax, [k]
	add eax, 8
	cmp eax, [size]
	jle k_loop
	
	; Handle any remaining numbers
	mov eax, [size]
	sub eax, 8
	mov [k], eax
	
	; Load the current address of matrix A
	mov eax, [i]
	imul eax, [size]
	mov edx, eax
	mov eax, [k]
	add eax, edx
	cdqe
	
	lea rdx, [0+rax*4]
	mov rax, [A]
	add rax, rdx
	
	vmovups ymm1, [rax]
	
	; Load the current address of matrix B
	mov eax, [j]
	imul eax, [size]
	mov edx, eax
	mov eax, [k]
	add eax, edx
	cdqe
	
	lea rdx, [0+rax*4]
	mov rax, [B]
	add rax, rdx
	
	; Now multiply
	vmulps ymm0, ymm1, [rax]
	
	; Save the result
	mov eax, [k]
	vmovups [buf+rax*4], ymm0
	
	; Add
	call add
	
; C[i * N + j] = temp
	; Load the current address of matrix C
	mov eax, [i]
	imul eax, [size]
	mov edx, eax
	mov eax, [j]
	add eax, edx
	cdqe
	
	lea rdx, [0+rax*4]
	mov rax, [C]
	add rax, rdx
	
	movss [rax], xmm0

	add dword [j], 1
; ------ The j-loop comparison
j_cmp:
	mov eax, [j]
	cmp eax, [size]
	jl j_loop

	add dword [i], 1
; ------ The i-loop comparison
i_cmp:
	mov eax, [i]
	cmp eax, [size]
	jl i_loop
	
done:
	ret
