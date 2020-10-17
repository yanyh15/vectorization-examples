	.text
	.intel_syntax noprefix
	.file	"matmul.c"
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
	cvtsi2sd	xmm1, qword ptr [rsp + 8]
	movzx	eax, word ptr [rsp + 16]
	cvtsi2sd	xmm0, eax
	divsd	xmm0, qword ptr [rip + .LCPI0_0]
	addsd	xmm0, xmm1
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
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	r15, rdi
	xor	r14d, r14d
	.p2align	4, 0x90
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	mov	rbx, -512
	.p2align	4, 0x90
.LBB1_2:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	call	rand
	movss	xmm0, dword ptr [rip + .LCPI1_0] # xmm0 = mem[0],zero,zero,zero
	movaps	xmm1, xmm0
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, eax
	divss	xmm0, xmm1
	movss	dword ptr [r15 + 4*rbx + 2048], xmm0
	add	rbx, 1
	jne	.LBB1_2
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	add	r14, 1
	add	r15, 2048
	cmp	r14, 512
	jne	.LBB1_1
# %bb.4:
	pop	rbx
	pop	r14
	pop	r15
	ret
.Lfunc_end1:
	.size	init, .Lfunc_end1-init
	.cfi_endproc
                                        # -- End function
	.globl	matmul_serial           # -- Begin function matmul_serial
	.p2align	4, 0x90
	.type	matmul_serial,@function
matmul_serial:                          # @matmul_serial
	.cfi_startproc
# %bb.0:
	add	rdi, 4
	add	rsi, 2048
	xor	r8d, r8d
	.p2align	4, 0x90
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_2 Depth 2
                                        #       Child Loop BB2_3 Depth 3
	mov	r9, r8
	shl	r9, 9
	mov	r10, rsi
	xor	r11d, r11d
	.p2align	4, 0x90
.LBB2_2:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_3 Depth 3
	mov	dword ptr [rsp - 4], 0
	mov	rax, -512
	mov	rcx, r10
	.p2align	4, 0x90
.LBB2_3:                                #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	xmm0, dword ptr [rdi + 4*rax + 2044] # xmm0 = mem[0],zero,zero,zero
	mulss	xmm0, dword ptr [rcx - 2048]
	addss	xmm0, dword ptr [rsp - 4]
	movss	dword ptr [rsp - 4], xmm0
	movss	xmm0, dword ptr [rdi + 4*rax + 2048] # xmm0 = mem[0],zero,zero,zero
	mulss	xmm0, dword ptr [rcx]
	addss	xmm0, dword ptr [rsp - 4]
	movss	dword ptr [rsp - 4], xmm0
	add	rcx, 4096
	add	rax, 2
	jne	.LBB2_3
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=2
	movss	xmm0, dword ptr [rsp - 4] # xmm0 = mem[0],zero,zero,zero
	lea	rax, [r11 + r9]
	movss	dword ptr [rdx + 4*rax], xmm0
	add	r11, 1
	add	r10, 4
	cmp	r11, 512
	jne	.LBB2_2
# %bb.5:                                #   in Loop: Header=BB2_1 Depth=1
	add	r8, 1
	add	rdi, 2048
	cmp	r8, 512
	jne	.LBB2_1
# %bb.6:
	ret
.Lfunc_end2:
	.size	matmul_serial, .Lfunc_end2-matmul_serial
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI3_0:
	.long	1296878797              # float 214748368
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI3_1:
	.quad	4652007308841189376     # double 1000
.LCPI3_2:
	.quad	4741671816366391296     # double 1.0E+9
.LCPI3_3:
	.quad	4747919907155345408     # double 2684354560
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
	mov	edi, 1048576
	call	malloc
	mov	r14, rax
	mov	edi, 1048576
	call	malloc
	mov	r15, rax
	mov	r13, r15
	xor	r12d, r12d
	xor	edi, edi
	call	time
	mov	edi, eax
	call	srand
	mov	rbx, r14
	.p2align	4, 0x90
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_2 Depth 2
	mov	rbp, -512
	.p2align	4, 0x90
.LBB3_2:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	call	rand
	movss	xmm0, dword ptr [rip + .LCPI3_0] # xmm0 = mem[0],zero,zero,zero
	movaps	xmm1, xmm0
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, eax
	divss	xmm0, xmm1
	movss	dword ptr [rbx + 4*rbp + 2048], xmm0
	add	rbp, 1
	jne	.LBB3_2
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	add	r12, 1
	add	rbx, 2048
	cmp	r12, 512
	jne	.LBB3_1
# %bb.4:
	xor	r12d, r12d
	.p2align	4, 0x90
.LBB3_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_6 Depth 2
	mov	rbx, -512
	.p2align	4, 0x90
.LBB3_6:                                #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	call	rand
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, eax
	divss	xmm0, dword ptr [rip + .LCPI3_0]
	movss	dword ptr [r13 + 4*rbx + 2048], xmm0
	add	rbx, 1
	jne	.LBB3_6
# %bb.7:                                #   in Loop: Header=BB3_5 Depth=1
	add	r12, 1
	add	r13, 2048
	cmp	r12, 512
	jne	.LBB3_5
# %bb.8:
	lea	rdi, [rsp + 8]
	call	ftime
	movzx	eax, word ptr [rsp + 16]
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm1, qword ptr [rip + .LCPI3_1]
	mov	r8, qword ptr [rsp + 8]
	add	r14, 4
	add	r15, 2048
	xor	r9d, r9d
	.p2align	4, 0x90
.LBB3_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
                                        #       Child Loop BB3_11 Depth 3
                                        #         Child Loop BB3_12 Depth 4
	mov	rdx, r14
	xor	esi, esi
	.p2align	4, 0x90
.LBB3_10:                               #   Parent Loop BB3_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_11 Depth 3
                                        #         Child Loop BB3_12 Depth 4
	mov	rcx, r15
	xor	ebx, ebx
	.p2align	4, 0x90
.LBB3_11:                               #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_12 Depth 4
	mov	dword ptr [rsp + 8], 0
	mov	rax, -512
	mov	rdi, rcx
	.p2align	4, 0x90
.LBB3_12:                               #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        #       Parent Loop BB3_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movss	xmm0, dword ptr [rdx + 4*rax + 2044] # xmm0 = mem[0],zero,zero,zero
	mulss	xmm0, dword ptr [rdi - 2048]
	addss	xmm0, dword ptr [rsp + 8]
	movss	dword ptr [rsp + 8], xmm0
	movss	xmm0, dword ptr [rdx + 4*rax + 2048] # xmm0 = mem[0],zero,zero,zero
	mulss	xmm0, dword ptr [rdi]
	addss	xmm0, dword ptr [rsp + 8]
	movss	dword ptr [rsp + 8], xmm0
	add	rdi, 4096
	add	rax, 2
	jne	.LBB3_12
# %bb.13:                               #   in Loop: Header=BB3_11 Depth=3
	movss	xmm0, dword ptr [rsp + 8] # xmm0 = mem[0],zero,zero,zero
	add	rbx, 1
	add	rcx, 4
	cmp	rbx, 512
	jne	.LBB3_11
# %bb.14:                               #   in Loop: Header=BB3_10 Depth=2
	add	rsi, 1
	add	rdx, 2048
	cmp	rsi, 512
	jne	.LBB3_10
# %bb.15:                               #   in Loop: Header=BB3_9 Depth=1
	add	r9d, 1
	cmp	r9d, 10
	jne	.LBB3_9
# %bb.16:
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, r8
	addsd	xmm1, xmm0
	movsd	qword ptr [rsp + 24], xmm1 # 8-byte Spill
	lea	rdi, [rsp + 8]
	call	ftime
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, qword ptr [rsp + 8]
	movzx	eax, word ptr [rsp + 16]
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, eax
	divsd	xmm1, qword ptr [rip + .LCPI3_1]
	addsd	xmm1, xmm0
	subsd	xmm1, qword ptr [rsp + 24] # 8-byte Folded Reload
	movsd	qword ptr [rsp + 24], xmm1 # 8-byte Spill
	movsd	xmm0, qword ptr [rip + .LCPI3_2] # xmm0 = mem[0],zero
	mulsd	xmm0, xmm1
	movsd	xmm1, qword ptr [rip + .LCPI3_3] # xmm1 = mem[0],zero
	divsd	xmm1, xmm0
	movsd	qword ptr [rsp + 32], xmm1 # 8-byte Spill
	mov	edi, offset .Lstr
	call	puts
	mov	edi, offset .L.str.1
	mov	esi, 512
	xor	eax, eax
	call	printf
	mov	edi, offset .Lstr.7
	call	puts
	mov	edi, offset .Lstr.6
	call	puts
	mov	edi, offset .Lstr.7
	call	puts
	mov	edi, offset .L.str.4
	mov	al, 2
	movsd	xmm0, qword ptr [rsp + 24] # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rsp + 32] # 8-byte Reload
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
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"\tMatrix Multiplication: A[N][N] * B[N][N] = C[N][N], N=%d\n"
	.size	.L.str.1, 59

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"matmul_serial:\t\t%4f\t%4f\n"
	.size	.L.str.4, 25

	.type	.Lstr,@object           # @str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr:
	.asciz	"======================================================================================================"
	.size	.Lstr, 103

	.type	.Lstr.6,@object         # @str.6
	.p2align	4
.Lstr.6:
	.asciz	"Performance:\t\tRuntime (s)\t GFLOPS"
	.size	.Lstr.6, 34

	.type	.Lstr.7,@object         # @str.7
	.p2align	4
.Lstr.7:
	.asciz	"------------------------------------------------------------------------------------------------------"
	.size	.Lstr.7, 103


	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
