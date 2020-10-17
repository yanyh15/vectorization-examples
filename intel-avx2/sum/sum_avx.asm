section .data

section .text
	global add
	
; add(float *numbers, int size)
;		rdi				esi
add:
	vzeroall
	mov eax, 8
	vmovups ymm0, [rdi]		; Load the first eight values
	
	cmp esi, 16
	jle done

	cmp esi, 24
	jle add8
	
	cmp esi, 32
	jle add16
	
	cmp esi, 40
	jle add24
	
add32:
	vaddps ymm3, ymm3, [rdi+4*rax]
	vaddps ymm2, ymm2, [rdi+4*rax+32]
	vaddps ymm1, ymm1, [rdi+4*rax+64]
	vaddps ymm0, ymm0, [rdi+4*rax+96]
	add eax, 32
	cmp eax, esi
	jl add32
	
add24:
	vaddps ymm2, ymm2, [rdi+4*rax]
	vaddps ymm1, ymm1, [rdi+4*rax+32]
	vaddps ymm0, ymm0, [rdi+4*rax+64]
	add eax, 24
	cmp eax, esi
	jl add24
	
add16:
	vaddps ymm1, ymm1, [rdi+4*rax]
	vaddps ymm0, ymm0, [rdi+4*rax+32]
	add eax, 16
	cmp eax, esi
	jl add16
	
add8:
	vaddps ymm0, ymm0, [rdi+rax*4]
	add eax, 8
	cmp eax, esi
	jl add8
	
done:
	vaddps ymm0, ymm0, ymm1
	vaddps ymm0, ymm0, ymm2
	vaddps ymm0, ymm0, ymm3
	
	vhaddps ymm3, ymm0, ymm0
	vhaddps ymm3, ymm3, ymm3
	vextractf128 xmm0, ymm3, 0
	vextractf128 xmm1, ymm3, 1
	addss xmm0, xmm1
	addss xmm0, xmm4

	ret
