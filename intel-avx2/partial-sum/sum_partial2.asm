section .data

section .text
	global add
	
; add(float *numbers, int size)
;		rdi				esi
add:
	xor rax, rax
	vzeroall
	vmovups ymm0, [rdi]		; Load the first eight values, 8
	
add_chk:
	mov ebx, eax
	add ebx, 48
	cmp ebx, esi
	jle add48

	mov ebx, eax
	add ebx, 40
	cmp ebx, esi
	jle add40

	mov ebx, eax
	add ebx, 32
	cmp ebx, esi
	jle add32

	mov ebx, eax
	add ebx, 24
	cmp ebx, esi
	jle add24
	
	add eax, 8
	cmp eax, esi
	jle add8
	jmp done
	
add48:
	add eax, 8
	vaddps ymm5, ymm5, [rdi+rax*4]
	
add40:
	add eax, 8
	vaddps ymm4, ymm4, [rdi+rax*4]
	
add32:
	add eax, 8
	vaddps ymm3, ymm3, [rdi+rax*4]
	
add24:
	add eax, 8
	vaddps ymm1, ymm1, [rdi+rax*4]
	add eax, 8
	vaddps ymm2, ymm2, [rdi+rax*4]
	
	add eax, 8
	
add8:
	vaddps ymm0, ymm0, [rdi+rax*4]
	jmp add_chk
	
done:
	vaddps ymm0, ymm0, ymm1
	vaddps ymm0, ymm0, ymm2
	vaddps ymm0, ymm0, ymm3
	vaddps ymm0, ymm0, ymm4
	vaddps ymm0, ymm0, ymm5

	vhaddps ymm3, ymm0, ymm0
	vhaddps ymm3, ymm3, ymm3
	vextractf128 xmm0, ymm3, 0
	vextractf128 xmm1, ymm3, 1
	addss xmm0, xmm1

	ret
