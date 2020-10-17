	.text
	.intel_syntax noprefix
	.file	"matvec_simd.c"
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
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI2_0:
	.long	1296878797              # float 214748368
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI2_1:
	.quad	4652007308841189376     # double 1000
.LCPI2_2:
	.quad	4741671816366391296     # double 1.0E+9
.LCPI2_3:
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
	mov	edi, 4
	call	omp_set_num_threads
	mov	edi, 5760000
	call	malloc
	mov	r14, rax
	mov	r15, r14
	mov	edi, 4800
	call	malloc
	mov	rbx, rax
	xor	r12d, r12d
	xor	edi, edi
	call	time
	mov	edi, eax
	call	srand
	mov	r13, r15
	.p2align	4, 0x90
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_2 Depth 2
	call	rand
	vcvtsi2ss	xmm0, xmm2, eax
	vmovss	xmm1, dword ptr [rip + .LCPI2_0] # xmm1 = mem[0],zero,zero,zero
	vdivss	xmm0, xmm0, xmm1
	mov	rbp, -1200
	.p2align	4, 0x90
.LBB2_2:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovss	dword ptr [r13 + 4*rbp + 4800], xmm0
	call	rand
	vcvtsi2ss	xmm0, xmm2, eax
	vdivss	xmm0, xmm0, dword ptr [rip + .LCPI2_0]
	add	rbp, 1
	jne	.LBB2_2
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	vmovss	dword ptr [rbx + 4*r12], xmm0
	add	r12, 1
	add	r13, 4800
	cmp	r12, 1200
	jne	.LBB2_1
# %bb.4:
	lea	rdi, [rsp + 16]
	call	ftime
	mov	r8, qword ptr [rsp + 16]
	movzx	eax, word ptr [rsp + 24]
	vcvtsi2sd	xmm0, xmm2, eax
	vdivsd	xmm0, xmm0, qword ptr [rip + .LCPI2_1]
	add	r14, 96
	xor	ecx, ecx
	.p2align	4, 0x90
.LBB2_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
                                        #       Child Loop BB2_7 Depth 3
	mov	rdx, r14
	xor	esi, esi
	.p2align	4, 0x90
.LBB2_6:                                #   Parent Loop BB2_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_7 Depth 3
	imul	rdi, rsi, 1200
	vxorps	xmm1, xmm1, xmm1
	mov	rax, -1184
	vxorps	xmm2, xmm2, xmm2
	vxorps	xmm3, xmm3, xmm3
	vxorps	xmm4, xmm4, xmm4
	.p2align	4, 0x90
.LBB2_7:                                #   Parent Loop BB2_5 Depth=1
                                        #     Parent Loop BB2_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovups	ymm5, ymmword ptr [rdx + 4*rax + 4640]
	vmovups	ymm6, ymmword ptr [rdx + 4*rax + 4672]
	vmovups	ymm7, ymmword ptr [rdx + 4*rax + 4704]
	vmulps	ymm5, ymm5, ymmword ptr [rbx + 4*rax + 4736]
	vmovups	ymm8, ymmword ptr [rdx + 4*rax + 4736]
	vaddps	ymm1, ymm1, ymm5
	vmulps	ymm5, ymm6, ymmword ptr [rbx + 4*rax + 4768]
	vaddps	ymm2, ymm2, ymm5
	vmulps	ymm5, ymm7, ymmword ptr [rbx + 4*rax + 4800]
	vaddps	ymm3, ymm3, ymm5
	vmulps	ymm5, ymm8, ymmword ptr [rbx + 4*rax + 4832]
	vaddps	ymm4, ymm4, ymm5
	add	rax, 32
	jne	.LBB2_7
# %bb.8:                                #   in Loop: Header=BB2_6 Depth=2
	vaddps	ymm1, ymm2, ymm1
	vaddps	ymm1, ymm3, ymm1
	vaddps	ymm1, ymm4, ymm1
	vextractf128	xmm2, ymm1, 1
	vaddps	ymm1, ymm1, ymm2
	vpermilpd	xmm2, xmm1, 1   # xmm2 = xmm1[1,0]
	vaddps	ymm1, ymm1, ymm2
	vhaddps	ymm1, ymm1, ymm1
	vmovss	xmm2, dword ptr [r15 + 4*rdi + 4736] # xmm2 = mem[0],zero,zero,zero
	vmovss	xmm3, dword ptr [r15 + 4*rdi + 4740] # xmm3 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rbx + 4736]
	vmulss	xmm3, xmm3, dword ptr [rbx + 4740]
	vaddss	xmm1, xmm1, xmm2
	vmovss	xmm2, dword ptr [r15 + 4*rdi + 4744] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rbx + 4744]
	vaddss	xmm1, xmm1, xmm3
	vmovss	xmm3, dword ptr [r15 + 4*rdi + 4748] # xmm3 = mem[0],zero,zero,zero
	vmulss	xmm3, xmm3, dword ptr [rbx + 4748]
	vaddss	xmm1, xmm1, xmm2
	vmovss	xmm2, dword ptr [r15 + 4*rdi + 4752] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rbx + 4752]
	vaddss	xmm1, xmm1, xmm3
	vmovss	xmm3, dword ptr [r15 + 4*rdi + 4756] # xmm3 = mem[0],zero,zero,zero
	vmulss	xmm3, xmm3, dword ptr [rbx + 4756]
	vaddss	xmm1, xmm1, xmm2
	vmovss	xmm2, dword ptr [r15 + 4*rdi + 4760] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rbx + 4760]
	vaddss	xmm1, xmm1, xmm3
	vmovss	xmm3, dword ptr [r15 + 4*rdi + 4764] # xmm3 = mem[0],zero,zero,zero
	vmulss	xmm3, xmm3, dword ptr [rbx + 4764]
	vaddss	xmm1, xmm1, xmm2
	vmovss	xmm2, dword ptr [r15 + 4*rdi + 4768] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rbx + 4768]
	vaddss	xmm1, xmm1, xmm3
	vmovss	xmm3, dword ptr [r15 + 4*rdi + 4772] # xmm3 = mem[0],zero,zero,zero
	vmulss	xmm3, xmm3, dword ptr [rbx + 4772]
	vaddss	xmm1, xmm1, xmm2
	vmovss	xmm2, dword ptr [r15 + 4*rdi + 4776] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rbx + 4776]
	vaddss	xmm1, xmm1, xmm3
	vmovss	xmm3, dword ptr [r15 + 4*rdi + 4780] # xmm3 = mem[0],zero,zero,zero
	vmulss	xmm3, xmm3, dword ptr [rbx + 4780]
	vaddss	xmm1, xmm1, xmm2
	vmovss	xmm2, dword ptr [r15 + 4*rdi + 4784] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rbx + 4784]
	vaddss	xmm1, xmm1, xmm3
	vmovss	xmm3, dword ptr [r15 + 4*rdi + 4788] # xmm3 = mem[0],zero,zero,zero
	vmulss	xmm3, xmm3, dword ptr [rbx + 4788]
	vaddss	xmm1, xmm1, xmm2
	vmovss	xmm2, dword ptr [r15 + 4*rdi + 4792] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rbx + 4792]
	vaddss	xmm1, xmm1, xmm3
	vmovss	xmm3, dword ptr [r15 + 4*rdi + 4796] # xmm3 = mem[0],zero,zero,zero
	vmulss	xmm3, xmm3, dword ptr [rbx + 4796]
	vaddss	xmm1, xmm1, xmm2
	vaddss	xmm1, xmm1, xmm3
	vmovss	dword ptr [rbx + 4*rsi], xmm1
	add	rsi, 1
	add	rdx, 4800
	cmp	rsi, 1200
	jne	.LBB2_6
# %bb.9:                                #   in Loop: Header=BB2_5 Depth=1
	add	ecx, 1
	cmp	ecx, 1000
	jne	.LBB2_5
# %bb.10:
	vcvtsi2sd	xmm1, xmm9, r8
	vaddsd	xmm0, xmm0, xmm1
	vmovsd	qword ptr [rsp + 8], xmm0 # 8-byte Spill
	lea	rdi, [rsp + 16]
	vzeroupper
	call	ftime
	vcvtsi2sd	xmm0, xmm9, qword ptr [rsp + 16]
	movzx	eax, word ptr [rsp + 24]
	vcvtsi2sd	xmm1, xmm9, eax
	vdivsd	xmm1, xmm1, qword ptr [rip + .LCPI2_1]
	vaddsd	xmm0, xmm1, xmm0
	vsubsd	xmm0, xmm0, qword ptr [rsp + 8] # 8-byte Folded Reload
	vmovsd	qword ptr [rsp + 8], xmm0 # 8-byte Spill
	vmulsd	xmm0, xmm0, qword ptr [rip + .LCPI2_2]
	vmovsd	xmm1, qword ptr [rip + .LCPI2_3] # xmm1 = mem[0],zero
	vdivsd	xmm0, xmm1, xmm0
	vmovsd	qword ptr [rsp + 32], xmm0 # 8-byte Spill
	mov	edi, offset .Lstr
	call	puts
	mov	edi, offset .Lstr.4
	call	puts
	mov	edi, offset .Lstr.5
	call	puts
	mov	edi, offset .L.str.3
	mov	al, 2
	vmovsd	xmm0, qword ptr [rsp + 8] # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmovsd	xmm1, qword ptr [rsp + 32] # 8-byte Reload
                                        # xmm1 = mem[0],zero
	call	printf
	xor	eax, eax
	add	rsp, 40
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.globl	sum                     # -- Begin function sum
	.p2align	4, 0x90
	.type	sum,@function
sum:                                    # @sum
	.cfi_startproc
# %bb.0:
	lea	rax, [rdi + 96]
	xor	r8d, r8d
	.p2align	4, 0x90
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_2 Depth 2
	imul	rdx, r8, 1200
	vxorps	xmm0, xmm0, xmm0
	mov	rcx, -1184
	vxorps	xmm1, xmm1, xmm1
	vxorps	xmm2, xmm2, xmm2
	vxorps	xmm3, xmm3, xmm3
	.p2align	4, 0x90
.LBB3_2:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	ymm4, ymmword ptr [rax + 4*rcx + 4640]
	vmovups	ymm5, ymmword ptr [rax + 4*rcx + 4672]
	vmovups	ymm6, ymmword ptr [rax + 4*rcx + 4704]
	vmulps	ymm4, ymm4, ymmword ptr [rsi + 4*rcx + 4736]
	vmovups	ymm7, ymmword ptr [rax + 4*rcx + 4736]
	vaddps	ymm0, ymm0, ymm4
	vmulps	ymm4, ymm5, ymmword ptr [rsi + 4*rcx + 4768]
	vaddps	ymm1, ymm1, ymm4
	vmulps	ymm4, ymm6, ymmword ptr [rsi + 4*rcx + 4800]
	vaddps	ymm2, ymm2, ymm4
	vmulps	ymm4, ymm7, ymmword ptr [rsi + 4*rcx + 4832]
	vaddps	ymm3, ymm3, ymm4
	add	rcx, 32
	jne	.LBB3_2
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	vaddps	ymm0, ymm1, ymm0
	vaddps	ymm0, ymm2, ymm0
	vaddps	ymm0, ymm3, ymm0
	vextractf128	xmm1, ymm0, 1
	vaddps	ymm0, ymm0, ymm1
	vpermilpd	xmm1, xmm0, 1   # xmm1 = xmm0[1,0]
	vaddps	ymm0, ymm0, ymm1
	vhaddps	ymm0, ymm0, ymm0
	vmovss	xmm1, dword ptr [rdi + 4*rdx + 4736] # xmm1 = mem[0],zero,zero,zero
	vmovss	xmm2, dword ptr [rdi + 4*rdx + 4740] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm1, xmm1, dword ptr [rsi + 4736]
	vmulss	xmm2, xmm2, dword ptr [rsi + 4740]
	vaddss	xmm0, xmm0, xmm1
	vmovss	xmm1, dword ptr [rdi + 4*rdx + 4744] # xmm1 = mem[0],zero,zero,zero
	vmulss	xmm1, xmm1, dword ptr [rsi + 4744]
	vaddss	xmm0, xmm0, xmm2
	vmovss	xmm2, dword ptr [rdi + 4*rdx + 4748] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rsi + 4748]
	vaddss	xmm0, xmm0, xmm1
	vmovss	xmm1, dword ptr [rdi + 4*rdx + 4752] # xmm1 = mem[0],zero,zero,zero
	vmulss	xmm1, xmm1, dword ptr [rsi + 4752]
	vaddss	xmm0, xmm0, xmm2
	vmovss	xmm2, dword ptr [rdi + 4*rdx + 4756] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rsi + 4756]
	vaddss	xmm0, xmm0, xmm1
	vmovss	xmm1, dword ptr [rdi + 4*rdx + 4760] # xmm1 = mem[0],zero,zero,zero
	vmulss	xmm1, xmm1, dword ptr [rsi + 4760]
	vaddss	xmm0, xmm0, xmm2
	vmovss	xmm2, dword ptr [rdi + 4*rdx + 4764] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rsi + 4764]
	vaddss	xmm0, xmm0, xmm1
	vmovss	xmm1, dword ptr [rdi + 4*rdx + 4768] # xmm1 = mem[0],zero,zero,zero
	vmulss	xmm1, xmm1, dword ptr [rsi + 4768]
	vaddss	xmm0, xmm0, xmm2
	vmovss	xmm2, dword ptr [rdi + 4*rdx + 4772] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rsi + 4772]
	vaddss	xmm0, xmm0, xmm1
	vmovss	xmm1, dword ptr [rdi + 4*rdx + 4776] # xmm1 = mem[0],zero,zero,zero
	vmulss	xmm1, xmm1, dword ptr [rsi + 4776]
	vaddss	xmm0, xmm0, xmm2
	vmovss	xmm2, dword ptr [rdi + 4*rdx + 4780] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rsi + 4780]
	vaddss	xmm0, xmm0, xmm1
	vmovss	xmm1, dword ptr [rdi + 4*rdx + 4784] # xmm1 = mem[0],zero,zero,zero
	vmulss	xmm1, xmm1, dword ptr [rsi + 4784]
	vaddss	xmm0, xmm0, xmm2
	vmovss	xmm2, dword ptr [rdi + 4*rdx + 4788] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rsi + 4788]
	vaddss	xmm0, xmm0, xmm1
	vmovss	xmm1, dword ptr [rdi + 4*rdx + 4792] # xmm1 = mem[0],zero,zero,zero
	vmulss	xmm1, xmm1, dword ptr [rsi + 4792]
	vaddss	xmm0, xmm0, xmm2
	vmovss	xmm2, dword ptr [rdi + 4*rdx + 4796] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rsi + 4796]
	vaddss	xmm0, xmm0, xmm1
	vaddss	xmm0, xmm0, xmm2
	vmovss	dword ptr [rsi + 4*r8], xmm0
	add	r8, 1
	add	rax, 4800
	cmp	r8, 1200
	jne	.LBB3_1
# %bb.4:
	vzeroupper
	ret
.Lfunc_end3:
	.size	sum, .Lfunc_end3-sum
	.cfi_endproc
                                        # -- End function
	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Matrix-vector (SIMD):\t\t%4f\t%4f\n"
	.size	.L.str.3, 32

	.type	.Lstr,@object           # @str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr:
	.asciz	"=================================================================="
	.size	.Lstr, 67

	.type	.Lstr.4,@object         # @str.4
	.p2align	4
.Lstr.4:
	.asciz	"Performance:\t\t\tRuntime (s)\t GFLOPS"
	.size	.Lstr.4, 35

	.type	.Lstr.5,@object         # @str.5
	.p2align	4
.Lstr.5:
	.asciz	"------------------------------------------------------------------"
	.size	.Lstr.5, 67


	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
