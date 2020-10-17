section .data

section .text
	global add
	
; add(float *numbers, int size)
;		rdi				esi
add:
	xor rax, rax
	vmovups ymm0, [rdi]		; Load the first eight values
	
add_chk:
	add eax, 8
	cmp eax, esi
	jg done
	
add8:
	vmovups ymm1, [rdi+rax*4]
	vaddps ymm0, ymm0, ymm1
	jmp add_chk
	
done:
	vhaddps ymm3, ymm0, ymm0
	vhaddps ymm3, ymm3, ymm3
	vextractf128 xmm0, ymm3, 0
	vextractf128 xmm1, ymm3, 1
	addss xmm0, xmm1

	ret
