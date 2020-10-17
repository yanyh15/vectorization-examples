	.text
	.intel_syntax noprefix
	.file	"matmul_simd.c"
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
	vmovss	xmm0, dword ptr [rip + .LCPI1_0] # xmm0 = mem[0],zero,zero,zero
	vmovaps	xmm1, xmm0
	vcvtsi2ss	xmm0, xmm2, eax
	vdivss	xmm0, xmm0, xmm1
	vmovss	dword ptr [r15 + 4*rbx + 2048], xmm0
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
	.globl	matmul_simd             # -- Begin function matmul_simd
	.p2align	4, 0x90
	.type	matmul_simd,@function
matmul_simd:                            # @matmul_simd
	.cfi_startproc
# %bb.0:
	add	rdi, 4
	add	rsi, 4
	xor	r8d, r8d
	.p2align	4, 0x90
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_2 Depth 2
                                        #       Child Loop BB2_3 Depth 3
	mov	r9, r8
	shl	r9, 9
	mov	rax, rsi
	xor	r10d, r10d
	.p2align	4, 0x90
.LBB2_2:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_3 Depth 3
	vxorps	xmm0, xmm0, xmm0
	mov	rcx, -512
	.p2align	4, 0x90
.LBB2_3:                                #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovss	xmm1, dword ptr [rdi + 4*rcx + 2044] # xmm1 = mem[0],zero,zero,zero
	vmovss	xmm2, dword ptr [rdi + 4*rcx + 2048] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm1, xmm1, dword ptr [rax + 4*rcx + 2044]
	vaddss	xmm0, xmm0, xmm1
	vmulss	xmm1, xmm2, dword ptr [rax + 4*rcx + 2048]
	vaddss	xmm0, xmm0, xmm1
	add	rcx, 2
	jne	.LBB2_3
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=2
	lea	rcx, [r10 + r9]
	vmovss	dword ptr [rdx + 4*rcx], xmm0
	add	r10, 1
	add	rax, 2048
	cmp	r10, 512
	jne	.LBB2_2
# %bb.5:                                #   in Loop: Header=BB2_1 Depth=1
	add	r8, 1
	add	rdi, 2048
	cmp	r8, 512
	jne	.LBB2_1
# %bb.6:
	ret
.Lfunc_end2:
	.size	matmul_simd, .Lfunc_end2-matmul_simd
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
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_2 Depth 2
                                        #       Child Loop BB3_3 Depth 3
	mov	r9, r8
	shl	r9, 9
	mov	r10, rsi
	xor	r11d, r11d
	.p2align	4, 0x90
.LBB3_2:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_3 Depth 3
	vxorps	xmm0, xmm0, xmm0
	mov	rax, -512
	mov	rcx, r10
	.p2align	4, 0x90
.LBB3_3:                                #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovss	xmm1, dword ptr [rdi + 4*rax + 2044] # xmm1 = mem[0],zero,zero,zero
	vmovss	xmm2, dword ptr [rdi + 4*rax + 2048] # xmm2 = mem[0],zero,zero,zero
	vmulss	xmm1, xmm1, dword ptr [rcx - 2048]
	vmulss	xmm2, xmm2, dword ptr [rcx]
	vaddss	xmm0, xmm0, xmm1
	vaddss	xmm0, xmm0, xmm2
	add	rcx, 4096
	add	rax, 2
	jne	.LBB3_3
# %bb.4:                                #   in Loop: Header=BB3_2 Depth=2
	lea	rax, [r11 + r9]
	vmovss	dword ptr [rdx + 4*rax], xmm0
	add	r11, 1
	add	r10, 4
	cmp	r11, 512
	jne	.LBB3_2
# %bb.5:                                #   in Loop: Header=BB3_1 Depth=1
	add	r8, 1
	add	rdi, 2048
	cmp	r8, 512
	jne	.LBB3_1
# %bb.6:
	ret
.Lfunc_end3:
	.size	matmul_serial, .Lfunc_end3-matmul_serial
	.cfi_endproc
                                        # -- End function
	.globl	check                   # -- Begin function check
	.p2align	4, 0x90
	.type	check,@function
check:                                  # @check
	.cfi_startproc
# %bb.0:
	vxorps	xmm0, xmm0, xmm0
	mov	rax, -512
	.p2align	4, 0x90
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	vmovss	xmm1, dword ptr [rdi + 4*rax + 2048] # xmm1 = mem[0],zero,zero,zero
	vmovss	xmm2, dword ptr [rdi + 4*rax + 2052] # xmm2 = mem[0],zero,zero,zero
	vsubss	xmm1, xmm1, dword ptr [rsi + 4*rax + 2048]
	vaddss	xmm0, xmm0, xmm1
	vsubss	xmm1, xmm2, dword ptr [rsi + 4*rax + 2052]
	vaddss	xmm0, xmm0, xmm1
	vmovss	xmm1, dword ptr [rdi + 4*rax + 2056] # xmm1 = mem[0],zero,zero,zero
	vsubss	xmm1, xmm1, dword ptr [rsi + 4*rax + 2056]
	vaddss	xmm0, xmm0, xmm1
	vmovss	xmm1, dword ptr [rdi + 4*rax + 2060] # xmm1 = mem[0],zero,zero,zero
	vsubss	xmm1, xmm1, dword ptr [rsi + 4*rax + 2060]
	vaddss	xmm0, xmm0, xmm1
	add	rax, 4
	jne	.LBB4_1
# %bb.2:
	ret
.Lfunc_end4:
	.size	check, .Lfunc_end4-check
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI5_0:
	.long	1296878797              # float 214748368
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI5_1:
	.quad	4652007308841189376     # double 1000
.LCPI5_2:
	.quad	4741671816366391296     # double 1.0E+9
.LCPI5_3:
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
	sub	rsp, 56
	.cfi_def_cfa_offset 112
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	edi, 4
	call	omp_set_num_threads
	mov	edi, 1048576
	call	malloc
	mov	r15, rax
	mov	edi, 1048576
	call	malloc
	mov	qword ptr [rsp + 16], rax # 8-byte Spill
	mov	r13, rax
	mov	edi, 1048576
	call	malloc
	mov	r14, rax
	mov	edi, 1048576
	call	malloc
	mov	r12, rax
	xor	ebp, ebp
	xor	edi, edi
	call	time
	mov	edi, eax
	call	srand
	mov	qword ptr [rsp + 8], r15 # 8-byte Spill
	.p2align	4, 0x90
.LBB5_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_2 Depth 2
	mov	rbx, -512
	.p2align	4, 0x90
.LBB5_2:                                #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	call	rand
	vmovss	xmm0, dword ptr [rip + .LCPI5_0] # xmm0 = mem[0],zero,zero,zero
	vmovaps	xmm1, xmm0
	vcvtsi2ss	xmm0, xmm2, eax
	vdivss	xmm0, xmm0, xmm1
	vmovss	dword ptr [r15 + 4*rbx + 2048], xmm0
	add	rbx, 1
	jne	.LBB5_2
# %bb.3:                                #   in Loop: Header=BB5_1 Depth=1
	add	rbp, 1
	add	r15, 2048
	cmp	rbp, 512
	jne	.LBB5_1
# %bb.4:
	xor	ebp, ebp
	mov	r15, qword ptr [rsp + 8] # 8-byte Reload
	.p2align	4, 0x90
.LBB5_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
	mov	rbx, -512
	.p2align	4, 0x90
.LBB5_6:                                #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	call	rand
	vcvtsi2ss	xmm0, xmm2, eax
	vdivss	xmm0, xmm0, dword ptr [rip + .LCPI5_0]
	vmovss	dword ptr [r13 + 4*rbx + 2048], xmm0
	add	rbx, 1
	jne	.LBB5_6
# %bb.7:                                #   in Loop: Header=BB5_5 Depth=1
	add	rbp, 1
	add	r13, 2048
	cmp	rbp, 512
	jne	.LBB5_5
# %bb.8:
	mov	edi, 1048576
	call	malloc
	mov	r13, rax
	mov	rax, qword ptr [rsp + 16] # 8-byte Reload
	lea	rax, [rax + 6144]
	lea	rcx, [r13 + 12]
	xor	edx, edx
	.p2align	4, 0x90
.LBB5_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_10 Depth 2
	mov	rsi, -512
	mov	rdi, rax
	.p2align	4, 0x90
.LBB5_10:                               #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	ebp, dword ptr [rdi - 6144]
	mov	dword ptr [rcx + 4*rsi + 2036], ebp
	mov	ebp, dword ptr [rdi - 4096]
	mov	dword ptr [rcx + 4*rsi + 2040], ebp
	mov	ebp, dword ptr [rdi - 2048]
	mov	dword ptr [rcx + 4*rsi + 2044], ebp
	mov	ebp, dword ptr [rdi]
	mov	dword ptr [rcx + 4*rsi + 2048], ebp
	add	rdi, 8192
	add	rsi, 4
	jne	.LBB5_10
# %bb.11:                               #   in Loop: Header=BB5_9 Depth=1
	add	rdx, 1
	add	rax, 4
	add	rcx, 2048
	cmp	rdx, 512
	jne	.LBB5_9
# %bb.12:
	lea	rdi, [rsp + 24]
	call	ftime
	movzx	eax, word ptr [rsp + 32]
	vcvtsi2sd	xmm0, xmm2, eax
	vdivsd	xmm0, xmm0, qword ptr [rip + .LCPI5_1]
	mov	r8, qword ptr [rsp + 24]
	lea	r9, [r15 + 4]
	add	r13, 4
	xor	edx, edx
	.p2align	4, 0x90
.LBB5_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_14 Depth 2
                                        #       Child Loop BB5_15 Depth 3
                                        #         Child Loop BB5_16 Depth 4
	mov	rsi, r9
	xor	ebp, ebp
	.p2align	4, 0x90
.LBB5_14:                               #   Parent Loop BB5_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_15 Depth 3
                                        #         Child Loop BB5_16 Depth 4
	mov	rdi, rbp
	shl	rdi, 9
	mov	rax, r13
	xor	ecx, ecx
	.p2align	4, 0x90
.LBB5_15:                               #   Parent Loop BB5_13 Depth=1
                                        #     Parent Loop BB5_14 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_16 Depth 4
	vxorps	xmm1, xmm1, xmm1
	mov	rbx, -512
	.p2align	4, 0x90
.LBB5_16:                               #   Parent Loop BB5_13 Depth=1
                                        #     Parent Loop BB5_14 Depth=2
                                        #       Parent Loop BB5_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vmovss	xmm2, dword ptr [rsi + 4*rbx + 2044] # xmm2 = mem[0],zero,zero,zero
	vmovss	xmm3, dword ptr [rsi + 4*rbx + 2048] # xmm3 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rax + 4*rbx + 2044]
	vaddss	xmm1, xmm1, xmm2
	vmulss	xmm2, xmm3, dword ptr [rax + 4*rbx + 2048]
	vaddss	xmm1, xmm1, xmm2
	add	rbx, 2
	jne	.LBB5_16
# %bb.17:                               #   in Loop: Header=BB5_15 Depth=3
	lea	rbx, [rcx + rdi]
	vmovss	dword ptr [r14 + 4*rbx], xmm1
	add	rcx, 1
	add	rax, 2048
	cmp	rcx, 512
	jne	.LBB5_15
# %bb.18:                               #   in Loop: Header=BB5_14 Depth=2
	add	rbp, 1
	add	rsi, 2048
	cmp	rbp, 512
	jne	.LBB5_14
# %bb.19:                               #   in Loop: Header=BB5_13 Depth=1
	add	edx, 1
	cmp	edx, 10
	jne	.LBB5_13
# %bb.20:
	vcvtsi2sd	xmm1, xmm4, r8
	vaddsd	xmm0, xmm0, xmm1
	vmovsd	qword ptr [rsp + 48], xmm0 # 8-byte Spill
	lea	rdi, [rsp + 24]
	call	ftime
	mov	r13, qword ptr [rsp + 24]
	movzx	eax, word ptr [rsp + 32]
	vcvtsi2sd	xmm0, xmm4, eax
	vdivsd	xmm0, xmm0, qword ptr [rip + .LCPI5_1]
	vmovsd	qword ptr [rsp + 40], xmm0 # 8-byte Spill
	lea	rdi, [rsp + 24]
	call	ftime
	mov	r8, qword ptr [rsp + 24]
	movzx	eax, word ptr [rsp + 32]
	vcvtsi2sd	xmm0, xmm4, eax
	vdivsd	xmm0, xmm0, qword ptr [rip + .LCPI5_1]
	add	r15, 4
	mov	r10, qword ptr [rsp + 16] # 8-byte Reload
	add	r10, 2048
	xor	r9d, r9d
	.p2align	4, 0x90
.LBB5_21:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_22 Depth 2
                                        #       Child Loop BB5_23 Depth 3
                                        #         Child Loop BB5_24 Depth 4
	mov	rdx, r15
	xor	esi, esi
	.p2align	4, 0x90
.LBB5_22:                               #   Parent Loop BB5_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_23 Depth 3
                                        #         Child Loop BB5_24 Depth 4
	mov	rdi, rsi
	shl	rdi, 9
	mov	rbx, r10
	xor	eax, eax
	.p2align	4, 0x90
.LBB5_23:                               #   Parent Loop BB5_21 Depth=1
                                        #     Parent Loop BB5_22 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_24 Depth 4
	vxorpd	xmm1, xmm1, xmm1
	mov	rcx, -512
	mov	rbp, rbx
	.p2align	4, 0x90
.LBB5_24:                               #   Parent Loop BB5_21 Depth=1
                                        #     Parent Loop BB5_22 Depth=2
                                        #       Parent Loop BB5_23 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vmovss	xmm2, dword ptr [rdx + 4*rcx + 2044] # xmm2 = mem[0],zero,zero,zero
	vmovss	xmm3, dword ptr [rdx + 4*rcx + 2048] # xmm3 = mem[0],zero,zero,zero
	vmulss	xmm2, xmm2, dword ptr [rbp - 2048]
	vmulss	xmm3, xmm3, dword ptr [rbp]
	vaddss	xmm1, xmm1, xmm2
	vaddss	xmm1, xmm1, xmm3
	add	rbp, 4096
	add	rcx, 2
	jne	.LBB5_24
# %bb.25:                               #   in Loop: Header=BB5_23 Depth=3
	lea	rcx, [rax + rdi]
	vmovss	dword ptr [r12 + 4*rcx], xmm1
	add	rax, 1
	add	rbx, 4
	cmp	rax, 512
	jne	.LBB5_23
# %bb.26:                               #   in Loop: Header=BB5_22 Depth=2
	add	rsi, 1
	add	rdx, 2048
	cmp	rsi, 512
	jne	.LBB5_22
# %bb.27:                               #   in Loop: Header=BB5_21 Depth=1
	add	r9d, 1
	cmp	r9d, 10
	jne	.LBB5_21
# %bb.28:
	vcvtsi2sd	xmm1, xmm4, r13
	vaddsd	xmm1, xmm1, qword ptr [rsp + 40] # 8-byte Folded Reload
	vsubsd	xmm1, xmm1, qword ptr [rsp + 48] # 8-byte Folded Reload
	vmovsd	qword ptr [rsp + 16], xmm1 # 8-byte Spill
	vcvtsi2sd	xmm1, xmm4, r8
	vaddsd	xmm0, xmm0, xmm1
	vmovsd	qword ptr [rsp + 8], xmm0 # 8-byte Spill
	lea	rdi, [rsp + 24]
	call	ftime
	vcvtsi2sd	xmm0, xmm4, qword ptr [rsp + 24]
	movzx	eax, word ptr [rsp + 32]
	vcvtsi2sd	xmm1, xmm4, eax
	vdivsd	xmm1, xmm1, qword ptr [rip + .LCPI5_1]
	vaddsd	xmm0, xmm1, xmm0
	vsubsd	xmm3, xmm0, qword ptr [rsp + 8] # 8-byte Folded Reload
	vmovsd	qword ptr [rsp + 8], xmm3 # 8-byte Spill
	vmovsd	xmm0, qword ptr [rip + .LCPI5_2] # xmm0 = mem[0],zero
	vmulsd	xmm1, xmm0, qword ptr [rsp + 16] # 8-byte Folded Reload
	vmovsd	xmm2, qword ptr [rip + .LCPI5_3] # xmm2 = mem[0],zero
	vdivsd	xmm1, xmm2, xmm1
	vmovsd	qword ptr [rsp + 40], xmm1 # 8-byte Spill
	vmulsd	xmm0, xmm3, xmm0
	vdivsd	xmm0, xmm2, xmm0
	vmovsd	qword ptr [rsp + 48], xmm0 # 8-byte Spill
	mov	edi, offset .Lstr
	call	puts
	mov	edi, offset .L.str.1
	mov	esi, 512
	xor	eax, eax
	call	printf
	mov	edi, offset .Lstr.9
	call	puts
	mov	edi, offset .Lstr.8
	call	puts
	mov	edi, offset .Lstr.9
	call	puts
	mov	edi, offset .L.str.4
	mov	al, 2
	vmovsd	xmm0, qword ptr [rsp + 16] # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmovsd	xmm1, qword ptr [rsp + 40] # 8-byte Reload
                                        # xmm1 = mem[0],zero
	call	printf
	mov	edi, offset .L.str.5
	mov	al, 2
	vmovsd	xmm0, qword ptr [rsp + 8] # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmovsd	xmm1, qword ptr [rsp + 48] # 8-byte Reload
                                        # xmm1 = mem[0],zero
	call	printf
	vxorps	xmm0, xmm0, xmm0
	mov	rax, -512
	.p2align	4, 0x90
.LBB5_29:                               # =>This Inner Loop Header: Depth=1
	vmovss	xmm1, dword ptr [r14 + 4*rax + 2048] # xmm1 = mem[0],zero,zero,zero
	vmovss	xmm2, dword ptr [r14 + 4*rax + 2052] # xmm2 = mem[0],zero,zero,zero
	vsubss	xmm1, xmm1, dword ptr [r12 + 4*rax + 2048]
	vaddss	xmm0, xmm0, xmm1
	vsubss	xmm1, xmm2, dword ptr [r12 + 4*rax + 2052]
	vaddss	xmm0, xmm0, xmm1
	vmovss	xmm1, dword ptr [r14 + 4*rax + 2056] # xmm1 = mem[0],zero,zero,zero
	vsubss	xmm1, xmm1, dword ptr [r12 + 4*rax + 2056]
	vaddss	xmm0, xmm0, xmm1
	vmovss	xmm1, dword ptr [r14 + 4*rax + 2060] # xmm1 = mem[0],zero,zero,zero
	vsubss	xmm1, xmm1, dword ptr [r12 + 4*rax + 2060]
	vaddss	xmm0, xmm0, xmm1
	add	rax, 4
	jne	.LBB5_29
# %bb.30:
	vcvtss2sd	xmm0, xmm0, xmm0
	mov	edi, offset .L.str.6
	mov	al, 1
	call	printf
	xor	eax, eax
	add	rsp, 56
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"\tMatrix Multiplication: A[N][N] * B[N][N] = C[N][N], N=%d\n"
	.size	.L.str.1, 59

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"matmul_omp:\t\t%4f\t%4f\n"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"matmul_serial:\t\t%4f\t%4f\n"
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Correctness check: %f\n"
	.size	.L.str.6, 23

	.type	.Lstr,@object           # @str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr:
	.asciz	"======================================================================================================"
	.size	.Lstr, 103

	.type	.Lstr.8,@object         # @str.8
	.p2align	4
.Lstr.8:
	.asciz	"Performance:\t\tRuntime (s)\t GFLOPS"
	.size	.Lstr.8, 34

	.type	.Lstr.9,@object         # @str.9
	.p2align	4
.Lstr.9:
	.asciz	"------------------------------------------------------------------------------------------------------"
	.size	.Lstr.9, 103


	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
