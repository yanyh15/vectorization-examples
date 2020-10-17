section .data
	i: dd 0
	j: dd 0
	size: dd 4
	
section .bss
	matrix: resq 1
	vector: resq 1
	answer: resq 1

section .text
	global mulvec
	
mulvec:
	push rbp
	mov rbp, rsp
	
	mov qword [matrix], rdi
	mov qword [vector], rsi
	mov qword [answer], rdx
	mov dword [size], ecx

	mov dword [i], 0
	mov dword [j], 0
	
	; Outer loop
L0:
	xorps xmm4, xmm4
	
	mov dword [j], 0
	jmp L2
	
	; Inner loop
L1:
	; Indexing: matrix[i*size+j]
	; Load the current address
	mov eax, [i]
	imul eax, [size]
	mov edx, eax
	mov eax, [j]
	add eax, edx
	cdqe
	
	; Load the matrix position
	lea rdx, [0+rax*4]
	mov rax, [matrix]
	add rax, rdx
	
	vmovups ymm0, [rax]
	
	; And multiply it with the vector position
	mov eax, [j]
	lea rdx, [0+rax*4]
	mov rax, [vector]
	add rax, rdx
	
	vmulps ymm0, [rax]
	
	; Add the items in the register
	vhaddps ymm3, ymm0, ymm0
	vhaddps ymm3, ymm3, ymm3
	vextractf128 xmm0, ymm3, 0
	vextractf128 xmm1, ymm3, 1
	addss xmm0, xmm1
	addss xmm4, xmm0

	add dword [j], 8
	; Inner loop comparison
L2:
	mov eax, [j]
	cmp eax, [size]
	jl L1
	
	; Insert the answer
	mov eax, [i]
	cdqe
	lea rdx, [0+rax*4]
	mov rax, [answer]
	add rax, rdx
	
	movss [rax], xmm4

	add dword [i], 1
	; Outer loop comparison
L3:
	mov eax, [i]
	cmp eax, [size]
	jl L0
	
	leave
	ret
