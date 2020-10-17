	.text
	.intel_syntax noprefix
	.file	"matvec.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function read_timer
.LCPI0_0:
	.quad	4652007308841189376     # double 1000
	.text
	.globl	read_timer
	.p2align	4, 0x90
	.type	read_timer,@function
read_timer:                             # @read_timer
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	lea	rdi, [rsp + 8]
	call	ftime
	vcvtsi2sd	xmm0, xmm0, qword ptr [rsp + 8]
	movzx	eax, word ptr [rsp + 16]
	vcvtsi2sd	xmm1, xmm1, eax
	vdivsd	xmm1, xmm1, qword ptr [rip + .LCPI0_0]
	vaddsd	xmm0, xmm1, xmm0
	add	rsp, 24
	ret
.Lfunc_end0:
	.size	read_timer, .Lfunc_end0-read_timer
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function init
.LCPI1_0:
	.long	1296878797              # float 214748368
	.text
	.globl	init
	.p2align	4, 0x90
	.type	init,@function
init:                                   # @init
	.cfi_startproc
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	r12
	.cfi_def_cfa_offset 32
	push	rbx
	.cfi_def_cfa_offset 40
	push	rax
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -40
	.cfi_offset r12, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	r14, rsi
	mov	r12, rdi
	xor	r15d, r15d
	.p2align	4, 0x90
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	call	rand
	vcvtsi2ss	xmm0, xmm2, eax
	vmovss	xmm1, dword ptr [rip + .LCPI1_0] # xmm1 = mem[0],zero,zero,zero
	vdivss	xmm0, xmm0, xmm1
	mov	rbx, -1200
	.p2align	4, 0x90
.LBB1_2:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovss	dword ptr [r12 + 4*rbx + 4800], xmm0
	call	rand
	vcvtsi2ss	xmm0, xmm2, eax
	vdivss	xmm0, xmm0, dword ptr [rip + .LCPI1_0]
	add	rbx, 1
	jne	.LBB1_2
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	vmovss	dword ptr [r14 + 4*r15], xmm0
	add	r15, 1
	add	r12, 4800
	cmp	r15, 1200
	jne	.LBB1_1
# %bb.4:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret
.Lfunc_end1:
	.size	init, .Lfunc_end1-init
	.cfi_endproc
                                        # -- End function
	.globl	sum                     # -- Begin function sum
	.p2align	4, 0x90
	.type	sum,@function
sum:                                    # @sum
	.cfi_startproc
# %bb.0:
	mov	dword ptr [rsp - 4], 0
	add	rdi, 28
	xor	eax, eax
	.p2align	4, 0x90
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_2 Depth 2
	vxorps	xmm0, xmm0, xmm0
	mov	rcx, -1200
	.p2align	4, 0x90
.LBB2_2:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovss	xmm1, dword ptr [rdi + 4*rcx + 4772] # xmm1 = mem[0],zero,zero,zero
	vmulss	xmm1, xmm1, dword ptr [rsi + 4*rcx + 4800]
	vmovss	xmm2, dword ptr [rdi + 4*rcx + 4776] # xmm2 = mem[0],zero,zero,zero
	vaddss	xmm0, xmm0, xmm1
	vmulss	xmm1, xmm2, dword ptr [rsi + 4*rcx + 4804]
	vaddss	xmm0, xmm0, xmm1
	vmovss	xmm1, dword ptr [rdi + 4*rcx + 4780] # xmm1 = mem[0],zero,zero,zero
	vmulss	xmm1, xmm1, dword ptr [rsi + 4*rcx + 4808]
	vaddss	xmm0, xmm0, xmm1
	vmovss	xmm1, dword ptr [rdi + 4*rcx + 4784] # xmm1 = mem[0],zero,zero,zero
	vmulss	xmm1, xmm1, dword ptr [rsi + 4*rcx + 4812]
	vaddss	xmm0, xmm0, xmm1
	vmovss	xmm1, dword ptr [rdi + 4*rcx + 4788] # xmm1 = mem[0],zero,zero,zero
	vmulss	xmm1, xmm1, dword ptr [rsi + 4*rcx + 4816]
	vaddss	xmm0, xmm0, xmm1
	vmovss	xmm1, dword ptr [rdi + 4*rcx + 4792] # xmm1 = mem[0],zero,zero,zero
	vmulss	xmm1, xmm1, dword ptr [rsi + 4*rcx + 4820]
	vaddss	xmm0, xmm0, xmm1
	vmovss	xmm1, dword ptr [rdi + 4*rcx + 4796] # xmm1 = mem[0],zero,zero,zero
	vmulss	xmm1, xmm1, dword ptr [rsi + 4*rcx + 4824]
	vaddss	xmm0, xmm0, xmm1
	vmovss	xmm1, dword ptr [rdi + 4*rcx + 4800] # xmm1 = mem[0],zero,zero,zero
	vmulss	xmm1, xmm1, dword ptr [rsi + 4*rcx + 4828]
	vaddss	xmm0, xmm0, xmm1
	add	rcx, 8
	jne	.LBB2_2
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	vmovss	dword ptr [rdx + 4*rax], xmm0
	add	rax, 1
	add	rdi, 4800
	cmp	rax, 1200
	jne	.LBB2_1
# %bb.4:
	ret
.Lfunc_end2:
	.size	sum, .Lfunc_end2-sum
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function dummy
.LCPI3_0:
	.long	1120403456              # float 100
	.text
	.globl	dummy
	.p2align	4, 0x90
	.type	dummy,@function
dummy:                                  # @dummy
	.cfi_startproc
# %bb.0:
	vpxor	xmm1, xmm1, xmm1
	mov	rax, -4608
	vbroadcastss	ymm0, dword ptr [rip + .LCPI3_0] # ymm0 = [100,100,100,100,100,100,100,100]
	vpxor	xmm2, xmm2, xmm2
	vpxor	xmm3, xmm3, xmm3
	vpxor	xmm4, xmm4, xmm4
	jmp	.LBB3_1
	.p2align	4, 0x90
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	vcmpltps	ymm5, ymm0, ymmword ptr [rdi + rax + 4736]
	vcmpltps	ymm6, ymm0, ymmword ptr [rdi + rax + 4768]
	vcmpltps	ymm7, ymm0, ymmword ptr [rdi + rax + 4800]
	vcmpltps	ymm8, ymm0, ymmword ptr [rdi + rax + 4832]
	vpsubd	ymm1, ymm1, ymm5
	vpsubd	ymm2, ymm2, ymm6
	vpsubd	ymm3, ymm3, ymm7
	vpsubd	ymm4, ymm4, ymm8
	add	rax, 256
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	vcmpltps	ymm5, ymm0, ymmword ptr [rdi + rax + 4608]
	vpsubd	ymm1, ymm1, ymm5
	vcmpltps	ymm5, ymm0, ymmword ptr [rdi + rax + 4640]
	vcmpltps	ymm6, ymm0, ymmword ptr [rdi + rax + 4672]
	vpsubd	ymm2, ymm2, ymm5
	vpsubd	ymm3, ymm3, ymm6
	vcmpltps	ymm5, ymm0, ymmword ptr [rdi + rax + 4704]
	vpsubd	ymm4, ymm4, ymm5
	test	rax, rax
	jne	.LBB3_3
# %bb.2:
	vpaddd	ymm0, ymm2, ymm1
	vpaddd	ymm0, ymm3, ymm0
	vpaddd	ymm0, ymm4, ymm0
	vextracti128	xmm1, ymm0, 1
	vpaddd	ymm0, ymm0, ymm1
	vpshufd	xmm1, xmm0, 78          # xmm1 = xmm0[2,3,0,1]
	vpaddd	ymm0, ymm0, ymm1
	vphaddd	ymm0, ymm0, ymm0
	vmovd	eax, xmm0
	vmovss	xmm1, dword ptr [rdi + 4736] # xmm1 = mem[0],zero,zero,zero
	vmovss	xmm2, dword ptr [rdi + 4740] # xmm2 = mem[0],zero,zero,zero
	vmovss	xmm0, dword ptr [rip + .LCPI3_0] # xmm0 = mem[0],zero,zero,zero
	xor	ecx, ecx
	vucomiss	xmm1, xmm0
	seta	cl
	add	ecx, eax
	xor	eax, eax
	vucomiss	xmm2, xmm0
	seta	al
	add	eax, ecx
	vmovss	xmm1, dword ptr [rdi + 4744] # xmm1 = mem[0],zero,zero,zero
	xor	ecx, ecx
	vucomiss	xmm1, xmm0
	seta	cl
	add	ecx, eax
	vmovss	xmm1, dword ptr [rdi + 4748] # xmm1 = mem[0],zero,zero,zero
	xor	eax, eax
	vucomiss	xmm1, xmm0
	seta	al
	add	eax, ecx
	vmovss	xmm1, dword ptr [rdi + 4752] # xmm1 = mem[0],zero,zero,zero
	xor	ecx, ecx
	vucomiss	xmm1, xmm0
	seta	cl
	add	ecx, eax
	vmovss	xmm1, dword ptr [rdi + 4756] # xmm1 = mem[0],zero,zero,zero
	xor	eax, eax
	vucomiss	xmm1, xmm0
	seta	al
	add	eax, ecx
	vmovss	xmm1, dword ptr [rdi + 4760] # xmm1 = mem[0],zero,zero,zero
	xor	ecx, ecx
	vucomiss	xmm1, xmm0
	seta	cl
	add	ecx, eax
	vmovss	xmm1, dword ptr [rdi + 4764] # xmm1 = mem[0],zero,zero,zero
	xor	eax, eax
	vucomiss	xmm1, xmm0
	seta	al
	add	eax, ecx
	vmovss	xmm1, dword ptr [rdi + 4768] # xmm1 = mem[0],zero,zero,zero
	xor	ecx, ecx
	vucomiss	xmm1, xmm0
	seta	cl
	add	ecx, eax
	vmovss	xmm1, dword ptr [rdi + 4772] # xmm1 = mem[0],zero,zero,zero
	xor	eax, eax
	vucomiss	xmm1, xmm0
	seta	al
	add	eax, ecx
	vmovss	xmm1, dword ptr [rdi + 4776] # xmm1 = mem[0],zero,zero,zero
	xor	ecx, ecx
	vucomiss	xmm1, xmm0
	seta	cl
	add	ecx, eax
	vmovss	xmm1, dword ptr [rdi + 4780] # xmm1 = mem[0],zero,zero,zero
	xor	eax, eax
	vucomiss	xmm1, xmm0
	seta	al
	add	eax, ecx
	vmovss	xmm1, dword ptr [rdi + 4784] # xmm1 = mem[0],zero,zero,zero
	xor	ecx, ecx
	vucomiss	xmm1, xmm0
	seta	cl
	add	ecx, eax
	vmovss	xmm1, dword ptr [rdi + 4788] # xmm1 = mem[0],zero,zero,zero
	xor	eax, eax
	vucomiss	xmm1, xmm0
	seta	al
	add	eax, ecx
	vmovss	xmm1, dword ptr [rdi + 4792] # xmm1 = mem[0],zero,zero,zero
	xor	ecx, ecx
	vucomiss	xmm1, xmm0
	seta	cl
	add	ecx, eax
	vmovss	xmm1, dword ptr [rdi + 4796] # xmm1 = mem[0],zero,zero,zero
	xor	eax, eax
	vucomiss	xmm1, xmm0
	seta	al
	add	eax, ecx
	vzeroupper
	ret
.Lfunc_end3:
	.size	dummy, .Lfunc_end3-dummy
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI4_0:
	.long	1296878797              # float 214748368
.LCPI4_4:
	.long	1120403456              # float 100
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI4_1:
	.quad	4652007308841189376     # double 1000
.LCPI4_2:
	.quad	4741671816366391296     # double 1.0E+9
.LCPI4_3:
	.quad	4748330205381132288     # double 2.88E+9
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r13
	.cfi_def_cfa_offset 40
	push	r12
	.cfi_def_cfa_offset 48
	push	rbx
	.cfi_def_cfa_offset 56
	sub	rsp, 40
	.cfi_def_cfa_offset 96
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	edi, 5760000
	call	malloc
	mov	r12, rax
	mov	rbp, r12
	mov	edi, 4800
	call	malloc
	mov	rbx, rax
	mov	edi, 4800
	call	malloc
	mov	r15, rax
	xor	r13d, r13d
	xor	edi, edi
	call	time
	mov	edi, eax
	call	srand
	mov	qword ptr [rsp + 32], rbp # 8-byte Spill
	.p2align	4, 0x90
.LBB4_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_2 Depth 2
	call	rand
	vcvtsi2ss	xmm0, xmm2, eax
	vmovss	xmm1, dword ptr [rip + .LCPI4_0] # xmm1 = mem[0],zero,zero,zero
	vdivss	xmm0, xmm0, xmm1
	mov	r14, -1200
	.p2align	4, 0x90
.LBB4_2:                                #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovss	dword ptr [rbp + 4*r14 + 4800], xmm0
	call	rand
	vcvtsi2ss	xmm0, xmm2, eax
	vdivss	xmm0, xmm0, dword ptr [rip + .LCPI4_0]
	add	r14, 1
	jne	.LBB4_2
# %bb.3:                                #   in Loop: Header=BB4_1 Depth=1
	vmovss	dword ptr [rbx + 4*r13], xmm0
	add	r13, 1
	add	rbp, 4800
	cmp	r13, 1200
	jne	.LBB4_1
# %bb.4:
	lea	rdi, [rsp + 8]
	call	ftime
	mov	rax, qword ptr [rsp + 8]
	movzx	ecx, word ptr [rsp + 16]
	vcvtsi2sd	xmm0, xmm2, ecx
	vdivsd	xmm0, xmm0, qword ptr [rip + .LCPI4_1]
	add	r12, 28
	xor	ecx, ecx
	.p2align	4, 0x90
.LBB4_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
                                        #       Child Loop BB4_7 Depth 3
	mov	dword ptr [rsp + 8], 0
	mov	rdx, r12
	xor	esi, esi
	.p2align	4, 0x90
.LBB4_6:                                #   Parent Loop BB4_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_7 Depth 3
	vxorps	xmm1, xmm1, xmm1
	mov	rdi, -1200
	.p2align	4, 0x90
.LBB4_7:                                #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovss	xmm2, dword ptr [rdx + 4*rdi + 4772] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rbx + 4*rdi + 4800]
	vmovss	xmm3, dword ptr [rdx + 4*rdi + 4776] # xmm3 = mem[0],zero,zero,zero
	vaddss	xmm1, xmm1, xmm2
	vmulss	xmm2, xmm3, dword ptr [rbx + 4*rdi + 4804]
	vaddss	xmm1, xmm1, xmm2
	vmovss	xmm2, dword ptr [rdx + 4*rdi + 4780] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rbx + 4*rdi + 4808]
	vaddss	xmm1, xmm1, xmm2
	vmovss	xmm2, dword ptr [rdx + 4*rdi + 4784] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rbx + 4*rdi + 4812]
	vaddss	xmm1, xmm1, xmm2
	vmovss	xmm2, dword ptr [rdx + 4*rdi + 4788] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rbx + 4*rdi + 4816]
	vaddss	xmm1, xmm1, xmm2
	vmovss	xmm2, dword ptr [rdx + 4*rdi + 4792] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rbx + 4*rdi + 4820]
	vaddss	xmm1, xmm1, xmm2
	vmovss	xmm2, dword ptr [rdx + 4*rdi + 4796] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rbx + 4*rdi + 4824]
	vaddss	xmm1, xmm1, xmm2
	vmovss	xmm2, dword ptr [rdx + 4*rdi + 4800] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rbx + 4*rdi + 4828]
	vaddss	xmm1, xmm1, xmm2
	add	rdi, 8
	jne	.LBB4_7
# %bb.8:                                #   in Loop: Header=BB4_6 Depth=2
	vmovss	dword ptr [r15 + 4*rsi], xmm1
	add	rsi, 1
	add	rdx, 4800
	cmp	rsi, 1200
	jne	.LBB4_6
# %bb.9:                                #   in Loop: Header=BB4_5 Depth=1
	add	ecx, 1
	cmp	ecx, 1000
	jne	.LBB4_5
# %bb.10:
	vcvtsi2sd	xmm1, xmm4, rax
	vaddsd	xmm0, xmm0, xmm1
	vmovsd	qword ptr [rsp], xmm0   # 8-byte Spill
	lea	rdi, [rsp + 8]
	call	ftime
	vcvtsi2sd	xmm0, xmm4, qword ptr [rsp + 8]
	movzx	eax, word ptr [rsp + 16]
	vcvtsi2sd	xmm1, xmm4, eax
	vdivsd	xmm1, xmm1, qword ptr [rip + .LCPI4_1]
	vaddsd	xmm0, xmm1, xmm0
	vsubsd	xmm0, xmm0, qword ptr [rsp] # 8-byte Folded Reload
	vmovsd	qword ptr [rsp], xmm0   # 8-byte Spill
	vmulsd	xmm0, xmm0, qword ptr [rip + .LCPI4_2]
	vmovsd	xmm1, qword ptr [rip + .LCPI4_3] # xmm1 = mem[0],zero
	vdivsd	xmm0, xmm1, xmm0
	vmovsd	qword ptr [rsp + 24], xmm0 # 8-byte Spill
	mov	edi, offset .Lstr
	call	puts
	mov	edi, offset .Lstr.5
	call	puts
	mov	edi, offset .Lstr.6
	call	puts
	mov	edi, offset .L.str.3
	mov	al, 2
	vmovsd	xmm0, qword ptr [rsp]   # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmovq	xmm1, qword ptr [rsp + 24] # 8-byte Folded Reload
                                        # xmm1 = mem[0],zero
	call	printf
	vpxor	xmm1, xmm1, xmm1
	mov	rax, -4608
	vbroadcastss	ymm0, dword ptr [rip + .LCPI4_4] # ymm0 = [100,100,100,100,100,100,100,100]
	vxorps	xmm2, xmm2, xmm2
	vxorps	xmm3, xmm3, xmm3
	vpxor	xmm4, xmm4, xmm4
	jmp	.LBB4_11
	.p2align	4, 0x90
.LBB4_13:                               #   in Loop: Header=BB4_11 Depth=1
	vcmpltps	ymm5, ymm0, ymmword ptr [r15 + rax + 4736]
	vcmpltps	ymm6, ymm0, ymmword ptr [r15 + rax + 4768]
	vcmpltps	ymm7, ymm0, ymmword ptr [r15 + rax + 4800]
	vcmpltps	ymm8, ymm0, ymmword ptr [r15 + rax + 4832]
	vpsubd	ymm1, ymm1, ymm5
	vpsubd	ymm2, ymm2, ymm6
	vpsubd	ymm3, ymm3, ymm7
	vpsubd	ymm4, ymm4, ymm8
	add	rax, 256
.LBB4_11:                               # =>This Inner Loop Header: Depth=1
	vcmpltps	ymm5, ymm0, ymmword ptr [r15 + rax + 4608]
	vpsubd	ymm1, ymm1, ymm5
	vcmpltps	ymm5, ymm0, ymmword ptr [r15 + rax + 4640]
	vcmpltps	ymm6, ymm0, ymmword ptr [r15 + rax + 4672]
	vpsubd	ymm2, ymm2, ymm5
	vpsubd	ymm3, ymm3, ymm6
	vcmpltps	ymm5, ymm0, ymmword ptr [r15 + rax + 4704]
	vpsubd	ymm4, ymm4, ymm5
	test	rax, rax
	jne	.LBB4_13
# %bb.12:
	vpaddd	ymm0, ymm2, ymm1
	vpaddd	ymm0, ymm3, ymm0
	vpaddd	ymm0, ymm4, ymm0
	vextracti128	xmm1, ymm0, 1
	vpaddd	ymm0, ymm0, ymm1
	vpshufd	xmm1, xmm0, 78          # xmm1 = xmm0[2,3,0,1]
	vpaddd	ymm0, ymm0, ymm1
	vphaddd	ymm0, ymm0, ymm0
	vmovd	eax, xmm0
	vmovss	xmm1, dword ptr [r15 + 4736] # xmm1 = mem[0],zero,zero,zero
	vmovss	xmm2, dword ptr [r15 + 4740] # xmm2 = mem[0],zero,zero,zero
	vmovss	xmm0, dword ptr [rip + .LCPI4_4] # xmm0 = mem[0],zero,zero,zero
	xor	ecx, ecx
	vucomiss	xmm1, xmm0
	seta	cl
	add	ecx, eax
	xor	eax, eax
	vucomiss	xmm2, xmm0
	seta	al
	add	eax, ecx
	vmovss	xmm1, dword ptr [r15 + 4744] # xmm1 = mem[0],zero,zero,zero
	xor	ecx, ecx
	vucomiss	xmm1, xmm0
	seta	cl
	add	ecx, eax
	vmovss	xmm1, dword ptr [r15 + 4748] # xmm1 = mem[0],zero,zero,zero
	xor	eax, eax
	vucomiss	xmm1, xmm0
	seta	al
	add	eax, ecx
	vmovss	xmm1, dword ptr [r15 + 4752] # xmm1 = mem[0],zero,zero,zero
	xor	ecx, ecx
	vucomiss	xmm1, xmm0
	seta	cl
	add	ecx, eax
	vmovss	xmm1, dword ptr [r15 + 4756] # xmm1 = mem[0],zero,zero,zero
	xor	eax, eax
	vucomiss	xmm1, xmm0
	seta	al
	add	eax, ecx
	vmovss	xmm1, dword ptr [r15 + 4760] # xmm1 = mem[0],zero,zero,zero
	xor	ecx, ecx
	vucomiss	xmm1, xmm0
	seta	cl
	add	ecx, eax
	vmovss	xmm1, dword ptr [r15 + 4764] # xmm1 = mem[0],zero,zero,zero
	xor	eax, eax
	vucomiss	xmm1, xmm0
	seta	al
	add	eax, ecx
	vmovss	xmm1, dword ptr [r15 + 4768] # xmm1 = mem[0],zero,zero,zero
	xor	ecx, ecx
	vucomiss	xmm1, xmm0
	seta	cl
	add	ecx, eax
	vmovss	xmm1, dword ptr [r15 + 4772] # xmm1 = mem[0],zero,zero,zero
	xor	eax, eax
	vucomiss	xmm1, xmm0
	seta	al
	add	eax, ecx
	vmovss	xmm1, dword ptr [r15 + 4776] # xmm1 = mem[0],zero,zero,zero
	xor	ecx, ecx
	vucomiss	xmm1, xmm0
	seta	cl
	add	ecx, eax
	vmovss	xmm1, dword ptr [r15 + 4780] # xmm1 = mem[0],zero,zero,zero
	xor	eax, eax
	vucomiss	xmm1, xmm0
	seta	al
	add	eax, ecx
	vmovss	xmm1, dword ptr [r15 + 4784] # xmm1 = mem[0],zero,zero,zero
	xor	ecx, ecx
	vucomiss	xmm1, xmm0
	seta	cl
	add	ecx, eax
	vmovss	xmm1, dword ptr [r15 + 4788] # xmm1 = mem[0],zero,zero,zero
	xor	eax, eax
	vucomiss	xmm1, xmm0
	seta	al
	add	eax, ecx
	vmovss	xmm1, dword ptr [r15 + 4792] # xmm1 = mem[0],zero,zero,zero
	xor	ecx, ecx
	vucomiss	xmm1, xmm0
	seta	cl
	add	ecx, eax
	vmovss	xmm1, dword ptr [r15 + 4796] # xmm1 = mem[0],zero,zero,zero
	xor	esi, esi
	vucomiss	xmm1, xmm0
	seta	sil
	add	esi, ecx
	mov	edi, offset .L.str.4
	xor	eax, eax
	vzeroupper
	call	printf
	mov	rdi, qword ptr [rsp + 32] # 8-byte Reload
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, r15
	call	free
	xor	eax, eax
	add	rsp, 40
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Matrix-vector (linear):\t\t%4f\t%4f\n"
	.size	.L.str.3, 34

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Dummy: %d\n"
	.size	.L.str.4, 11

	.type	.Lstr,@object           # @str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr:
	.asciz	"=================================================================="
	.size	.Lstr, 67

	.type	.Lstr.5,@object         # @str.5
	.p2align	4
.Lstr.5:
	.asciz	"Performance:\t\t\tRuntime (s)\t GFLOPS"
	.size	.Lstr.5, 35

	.type	.Lstr.6,@object         # @str.6
	.p2align	4
.Lstr.6:
	.asciz	"------------------------------------------------------------------"
	.size	.Lstr.6, 67


	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
