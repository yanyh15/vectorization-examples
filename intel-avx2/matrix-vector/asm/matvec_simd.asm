# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.1.0.166 Build 20191121";
# mark_description "-o asm/matvec_simd.asm -fopenmp -mavx2 -O2 -xCORE_AVX2 -S -masm=intel";
	.intel_syntax noprefix
	.file "matvec_simd.c"
	.text
..TXTST0:
.L_2__routine_start_main_0:
# -- Begin  main
	.text
# mark_begin;
       .align    16,0x90
	.globl main
# --- main(int, char **)
main:
# parameter 1: edi
# parameter 2: rsi
..B1.1:                         # Preds ..B1.0
                                # Execution count [0.00e+00]
	.cfi_startproc
..___tag_value_main.1:
..L2:
                                                          #35.33
        push      rbp                                           #35.33
	.cfi_def_cfa_offset 16
        mov       rbp, rsp                                      #35.33
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -128                                     #35.33
        push      r12                                           #35.33
        push      r13                                           #35.33
        push      r14                                           #35.33
        push      r15                                           #35.33
        push      rbx                                           #35.33
        sub       rsp, 88                                       #35.33
        mov       edi, 3                                        #35.33
        mov       esi, 10330111                                 #35.33
        call      __intel_new_feature_proc_init                 #35.33
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE r12 r13 r15
..B1.41:                        # Preds ..B1.1
                                # Execution count [0.00e+00]
        vstmxcsr  DWORD PTR [rsp]                               #35.33
        mov       edi, offset flat: .2.9_2_kmpc_loc_struct_pack.19 #35.33
        xor       esi, esi                                      #35.33
        or        DWORD PTR [rsp], 32832                        #35.33
        xor       eax, eax                                      #35.33
        vldmxcsr  DWORD PTR [rsp]                               #35.33
..___tag_value_main.11:
        call      __kmpc_begin                                  #35.33
..___tag_value_main.12:
                                # LOE r12 r13 r15
..B1.2:                         # Preds ..B1.41
                                # Execution count [1.00e+00]
        mov       edi, 4                                        #38.5
#       omp_set_num_threads(int)
        call      ompc_set_num_threads                          #38.5
                                # LOE r12 r13 r15
..B1.3:                         # Preds ..B1.2
                                # Execution count [1.00e+00]
        mov       edi, 5760000                                  #41.18
#       malloc(size_t)
        call      malloc                                        #41.18
                                # LOE rax r12 r13 r15
..B1.42:                        # Preds ..B1.3
                                # Execution count [1.00e+00]
        mov       rbx, rax                                      #41.18
                                # LOE rbx r12 r13 r15
..B1.4:                         # Preds ..B1.42
                                # Execution count [1.00e+00]
        mov       edi, 4800                                     #42.18
#       malloc(size_t)
        call      malloc                                        #42.18
                                # LOE rax rbx r12 r13 r15
..B1.43:                        # Preds ..B1.4
                                # Execution count [1.00e+00]
        mov       r14, rax                                      #42.18
                                # LOE rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.43
                                # Execution count [1.00e+00]
        xor       edi, edi                                      #44.8
#       time(time_t *)
        call      time                                          #44.8
                                # LOE rax rbx r12 r13 r14 r15
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.00e+00]
        mov       edi, eax                                      #44.2
#       srand(unsigned int)
        call      srand                                         #44.2
                                # LOE rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.6
                                # Execution count [1.00e+00]
        xor       edx, edx                                      #45.2
        xor       ecx, ecx                                      #45.2
        mov       r12, rdx                                      #45.2
        mov       r13, rdx                                      #45.2
        mov       r15d, ecx                                     #45.2
                                # LOE rbx r12 r13 r14 r15d
..B1.8:                         # Preds ..B1.12 ..B1.7
                                # Execution count [1.20e+03]
        xor       edx, edx                                      #45.2
        lea       rax, QWORD PTR [rbx+r13*4]                    #45.2
        mov       DWORD PTR [8+rsp], r15d                       #45.2[spill]
        mov       r15, rdx                                      #45.2
        mov       QWORD PTR [rsp], r14                          #45.2[spill]
        mov       r14, rax                                      #45.2
                                # LOE rbx r12 r13 r14 r15
..B1.9:                         # Preds ..B1.10 ..B1.8
                                # Execution count [1.44e+06]
#       rand(void)
        call      rand                                          #45.2
                                # LOE rbx r12 r13 r14 r15 eax
..B1.10:                        # Preds ..B1.9
                                # Execution count [1.44e+06]
        vxorps    xmm0, xmm0, xmm0                              #45.2
        vcvtsi2ss xmm0, xmm0, eax                               #45.2
        vdivss    xmm1, xmm0, DWORD PTR .L_2il0floatpacket.0[rip] #45.2
        vmovss    DWORD PTR [r14+r15*4], xmm1                   #45.2
        inc       r15                                           #45.2
        cmp       r15, 1200                                     #45.2
        jl        ..B1.9        # Prob 99%                      #45.2
                                # LOE rbx r12 r13 r14 r15
..B1.11:                        # Preds ..B1.10
                                # Execution count [1.20e+03]
        mov       r15d, DWORD PTR [8+rsp]                       #[spill]
        mov       r14, QWORD PTR [rsp]                          #[spill]
#       rand(void)
        call      rand                                          #45.2
                                # LOE rbx r12 r13 r14 eax r15d
..B1.12:                        # Preds ..B1.11
                                # Execution count [1.20e+03]
        vxorps    xmm0, xmm0, xmm0                              #45.2
        inc       r15d                                          #45.2
        vcvtsi2ss xmm0, xmm0, eax                               #45.2
        vdivss    xmm1, xmm0, DWORD PTR .L_2il0floatpacket.0[rip] #45.2
        vmovss    DWORD PTR [r14+r12*4], xmm1                   #45.2
        add       r13, 1200                                     #45.2
        inc       r12                                           #45.2
        cmp       r15d, 1200                                    #45.2
        jl        ..B1.8        # Prob 99%                      #45.2
                                # LOE rbx r12 r13 r14 r15d
..B1.13:                        # Preds ..B1.12
                                # Execution count [1.00e+00]
        lea       rdi, QWORD PTR [rsp]                          #47.17
..___tag_value_main.17:
#       ftime(struct timeb *)
        call      ftime                                         #47.17
..___tag_value_main.18:
                                # LOE rbx r12 r13 r14 r15
..B1.14:                        # Preds ..B1.13
                                # Execution count [0.00e+00]
        vxorpd    xmm0, xmm0, xmm0                              #47.17
        vxorpd    xmm1, xmm1, xmm1                              #47.17
        movzx     eax, WORD PTR [8+rsp]                         #47.17
        mov       r9, r14                                       #49.3
        vcvtsi2sd xmm0, xmm0, eax                               #47.17
        vcvtsi2sd xmm1, xmm1, QWORD PTR [rsp]                   #47.17
        vdivsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.1[rip] #47.17
        and       r9, 31                                        #49.3
        xor       r10d, r10d                                    #48.2
        mov       r8d, r9d                                      #49.3
        vaddsd    xmm3, xmm1, xmm2                              #47.17
        vmovsd    QWORD PTR [40+rsp], xmm3                      #47.17[spill]
                                # LOE rbx r9 r12 r13 r14 r8d r10d
..B1.15:                        # Preds ..B1.30 ..B1.14
                                # Execution count [0.00e+00]
        mov       edi, r8d                                      #49.3
        mov       esi, r8d                                      #49.3
        neg       edi                                           #49.3
        xor       edx, edx                                      #49.3
        add       edi, 32                                       #49.3
        and       esi, 3                                        #49.3
        shr       edi, 2                                        #49.3
        mov       rcx, rbx                                      #49.3
                                # LOE rdx rcx rbx r9 r12 r13 r14 esi edi r8d r10d
..B1.16:                        # Preds ..B1.29 ..B1.15
                                # Execution count [1.08e+06]
        mov       r15d, r8d                                     #49.3
        test      r8d, r8d                                      #49.3
        vxorps    xmm0, xmm0, xmm0                              #49.3
        je        ..B1.21       # Prob 50%                      #49.3
                                # LOE rdx rcx rbx r9 r12 r13 r14 esi edi r8d r10d r15d xmm0
..B1.17:                        # Preds ..B1.16
                                # Execution count [1.08e+06]
        test      esi, esi                                      #49.3
        jne       ..B1.38       # Prob 10%                      #49.3
                                # LOE rdx rcx rbx r9 r12 r13 r14 esi edi r8d r10d xmm0
..B1.18:                        # Preds ..B1.17
                                # Execution count [1.08e+06]
        mov       eax, edi                                      #49.3
        mov       r15d, edi                                     #49.3
        xor       r11d, r11d                                    #49.3
                                # LOE rax rdx rcx rbx r9 r11 r12 r13 r14 esi edi r8d r10d r15d xmm0
..B1.19:                        # Preds ..B1.19 ..B1.18
                                # Execution count [6.00e+06]
        vmovss    xmm1, DWORD PTR [r14+r11*4]                   #49.3
        vmulss    xmm2, xmm1, DWORD PTR [rcx+r11*4]             #49.3
        inc       r11                                           #49.3
        vaddss    xmm0, xmm2, xmm0                              #49.3
        cmp       r11, rax                                      #49.3
        jb        ..B1.19       # Prob 82%                      #49.3
        jmp       ..B1.22       # Prob 100%                     #49.3
                                # LOE rax rdx rcx rbx r9 r11 r12 r13 r14 esi edi r8d r10d r15d xmm0
..B1.21:                        # Preds ..B1.16
                                # Execution count [5.40e+05]
        mov       rax, r9                                       #49.3
                                # LOE rax rdx rcx rbx r9 r12 r13 r14 esi edi r8d r10d r15d xmm0
..B1.22:                        # Preds ..B1.19 ..B1.21
                                # Execution count [1.08e+06]
        neg       r15d                                          #49.3
        and       r15d, 15                                      #49.3
        vxorps    xmm1, xmm1, xmm1                              #49.3
        vmovss    xmm1, xmm1, xmm0                              #49.3
        neg       r15                                           #49.3
        vxorps    ymm0, ymm0, ymm0                              #49.3
        add       r15, 1200                                     #49.3
        vmovaps   xmm1, xmm1                                    #49.3
                                # LOE rax rdx rcx rbx r9 r12 r13 r14 r15 esi edi r8d r10d ymm0 ymm1
..B1.23:                        # Preds ..B1.23 ..B1.22
                                # Execution count [6.00e+06]
        vmovups   ymm2, YMMWORD PTR [r14+rax*4]                 #49.3
        vmovups   ymm3, YMMWORD PTR [32+r14+rax*4]              #49.3
        vfmadd231ps ymm1, ymm2, YMMWORD PTR [rcx+rax*4]         #49.3
        vfmadd231ps ymm0, ymm3, YMMWORD PTR [32+rcx+rax*4]      #49.3
        add       rax, 16                                       #49.3
        cmp       rax, r15                                      #49.3
        jb        ..B1.23       # Prob 82%                      #49.3
                                # LOE rax rdx rcx rbx r9 r12 r13 r14 r15 esi edi r8d r10d ymm0 ymm1
..B1.24:                        # Preds ..B1.23
                                # Execution count [1.08e+06]
        vaddps    ymm0, ymm1, ymm0                              #49.3
        vextractf128 xmm1, ymm0, 1                              #49.3
        vaddps    xmm2, xmm0, xmm1                              #49.3
        vmovhlps  xmm3, xmm2, xmm2                              #49.3
        vaddps    xmm4, xmm2, xmm3                              #49.3
        vshufps   xmm5, xmm4, xmm4, 245                         #49.3
        vaddss    xmm0, xmm4, xmm5                              #49.3
                                # LOE rdx rcx rbx r9 r12 r13 r14 r15 esi edi r8d r10d xmm0
..B1.25:                        # Preds ..B1.24 ..B1.38
                                # Execution count [1.08e+06]
        cmp       r15, 1200                                     #49.3
        jae       ..B1.29       # Prob 0%                       #49.3
                                # LOE rdx rcx rbx r9 r12 r13 r14 r15 esi edi r8d r10d xmm0
..B1.27:                        # Preds ..B1.25 ..B1.27
                                # Execution count [6.00e+06]
        vmovss    xmm1, DWORD PTR [r14+r15*4]                   #49.3
        vmulss    xmm2, xmm1, DWORD PTR [rcx+r15*4]             #49.3
        inc       r15                                           #49.3
        vaddss    xmm0, xmm2, xmm0                              #49.3
        cmp       r15, 1200                                     #49.3
        jb        ..B1.27       # Prob 82%                      #49.3
                                # LOE rdx rcx rbx r9 r12 r13 r14 r15 esi edi r8d r10d xmm0
..B1.29:                        # Preds ..B1.27 ..B1.25
                                # Execution count [1.20e+06]
        vmovss    DWORD PTR [r14+rdx*4], xmm0                   #49.3
        inc       rdx                                           #49.3
        add       rcx, 4800                                     #49.3
        cmp       rdx, 1200                                     #49.3
        jb        ..B1.16       # Prob 99%                      #49.3
                                # LOE rdx rcx rbx r9 r12 r13 r14 esi edi r8d r10d
..B1.30:                        # Preds ..B1.29
                                # Execution count [9.99e+02]
        .byte     15                                            #48.2
        .byte     31                                            #48.2
        .byte     64                                            #48.2
        .byte     0                                             #48.2
        inc       r10d                                          #48.2
        cmp       r10d, 1000                                    #48.2
        jb        ..B1.15       # Prob 99%                      #48.2
                                # LOE rbx r9 r12 r13 r14 r8d r10d
..B1.31:                        # Preds ..B1.30
                                # Execution count [1.00e+00]
        vzeroupper                                              #50.14
        lea       rdi, QWORD PTR [16+rsp]                       #50.14
..___tag_value_main.20:
#       ftime(struct timeb *)
        call      ftime                                         #50.14
..___tag_value_main.21:
                                # LOE r12 r13 r15
..B1.32:                        # Preds ..B1.31
                                # Execution count [1.00e+00]
        vxorpd    xmm0, xmm0, xmm0                              #50.14
        vxorpd    xmm1, xmm1, xmm1                              #50.14
        movzx     eax, WORD PTR [24+rsp]                        #50.14
        mov       edi, offset flat: il0_peep_printf_format_0    #54.2
        vcvtsi2sd xmm0, xmm0, eax                               #50.14
        vcvtsi2sd xmm1, xmm1, QWORD PTR [16+rsp]                #50.14
        vdivsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.1[rip] #50.14
        vaddsd    xmm3, xmm1, xmm2                              #50.14
        vsubsd    xmm4, xmm3, QWORD PTR [40+rsp]                #50.29[spill]
        vmovsd    QWORD PTR [32+rsp], xmm4                      #50.29[spill]
        call      puts                                          #54.2
                                # LOE r12 r13 r15
..B1.33:                        # Preds ..B1.32
                                # Execution count [1.00e+00]
        mov       edi, offset flat: il0_peep_printf_format_1    #55.5
        call      puts                                          #55.5
                                # LOE r12 r13 r15
..B1.34:                        # Preds ..B1.33
                                # Execution count [1.00e+00]
        mov       edi, offset flat: il0_peep_printf_format_2    #56.5
        call      puts                                          #56.5
                                # LOE r12 r13 r15
..B1.35:                        # Preds ..B1.34
                                # Execution count [1.00e+00]
        vmovsd    xmm0, QWORD PTR [32+rsp]                      #57.5[spill]
        mov       edi, offset flat: .L_2__STRING.3              #57.5
        vmulsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.3[rip] #57.5
        mov       eax, 2                                        #57.5
        vmovsd    xmm1, QWORD PTR .L_2il0floatpacket.2[rip]     #57.5
        vdivsd    xmm1, xmm1, xmm2                              #57.5
..___tag_value_main.25:
#       printf(const char *__restrict__, ...)
        call      printf                                        #57.5
..___tag_value_main.26:
                                # LOE r12 r13 r15
..B1.36:                        # Preds ..B1.35
                                # Execution count [1.00e+00]
        mov       edi, offset flat: .2.9_2_kmpc_loc_struct_pack.30 #59.9
        xor       eax, eax                                      #59.9
..___tag_value_main.27:
        call      __kmpc_end                                    #59.9
..___tag_value_main.28:
                                # LOE r12 r13 r15
..B1.37:                        # Preds ..B1.36
                                # Execution count [1.00e+00]
        xor       eax, eax                                      #59.9
        add       rsp, 88                                       #59.9
	.cfi_restore 3
        pop       rbx                                           #59.9
	.cfi_restore 15
        pop       r15                                           #59.9
	.cfi_restore 14
        pop       r14                                           #59.9
	.cfi_restore 13
        pop       r13                                           #59.9
	.cfi_restore 12
        pop       r12                                           #59.9
        mov       rsp, rbp                                      #59.9
        pop       rbp                                           #59.9
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #59.9
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.38:                        # Preds ..B1.17
                                # Execution count [1.08e+05]: Infreq
        xor       r15d, r15d                                    #49.3
        jmp       ..B1.25       # Prob 100%                     #49.3
        .align    16,0x90
                                # LOE rdx rcx rbx r9 r12 r13 r14 r15 esi edi r8d r10d xmm0
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.0:
	.data
	.align 4
	.align 4
.2.9_2_kmpc_loc_struct_pack.19:
	.long	0
	.long	838860802
	.long	0
	.long	0
	.quad	.2.9_2__kmpc_loc_pack.18
	.align 4
.2.9_2__kmpc_loc_pack.18:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	51
	.byte	53
	.byte	59
	.byte	51
	.byte	53
	.byte	59
	.byte	59
	.space 3, 0x00 	# pad
	.align 4
.2.9_2_kmpc_loc_struct_pack.30:
	.long	0
	.long	838860802
	.long	0
	.long	0
	.quad	.2.9_2__kmpc_loc_pack.29
	.align 4
.2.9_2__kmpc_loc_pack.29:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	53
	.byte	57
	.byte	59
	.byte	53
	.byte	57
	.byte	59
	.byte	59
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
il0_peep_printf_format_1:
	.long	1718773072
	.long	1634562671
	.long	979723118
	.long	1376323849
	.long	1769238133
	.long	673211757
	.long	537471347
	.long	1330398791
	.word	21328
	.byte	0
	.section .rodata.str1.32, "aMS",@progbits,1
	.align 32
	.align 32
il0_peep_printf_format_0:
	.long	1027423549
	.long	1027423549
	.long	1027423549
	.long	1027423549
	.long	1027423549
	.long	1027423549
	.long	1027423549
	.long	1027423549
	.long	1027423549
	.long	1027423549
	.long	1027423549
	.long	1027423549
	.long	1027423549
	.long	1027423549
	.long	1027423549
	.long	1027423549
	.word	15677
	.byte	0
	.space 29, 0x00 	# pad
	.align 32
il0_peep_printf_format_2:
	.long	757935405
	.long	757935405
	.long	757935405
	.long	757935405
	.long	757935405
	.long	757935405
	.long	757935405
	.long	757935405
	.long	757935405
	.long	757935405
	.long	757935405
	.long	757935405
	.long	757935405
	.long	757935405
	.long	757935405
	.long	757935405
	.word	11565
	.byte	0
	.data
# -- End  main
	.text
.L_2__routine_start_read_timer_1:
# -- Begin  read_timer
	.text
# mark_begin;
       .align    16,0x90
	.globl read_timer
# --- read_timer()
read_timer:
..B2.1:                         # Preds ..B2.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_read_timer.44:
..L45:
                                                         #16.21
        sub       rsp, 24                                       #16.21
	.cfi_def_cfa_offset 32
        lea       rdi, QWORD PTR [rsp]                          #18.5
..___tag_value_read_timer.47:
#       ftime(struct timeb *)
        call      ftime                                         #18.5
..___tag_value_read_timer.48:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.2:                         # Preds ..B2.1
                                # Execution count [1.00e+00]
        vxorpd    xmm0, xmm0, xmm0                              #19.40
        vxorpd    xmm1, xmm1, xmm1                              #19.21
        movzx     eax, WORD PTR [8+rsp]                         #19.40
        vcvtsi2sd xmm0, xmm0, eax                               #19.40
        vcvtsi2sd xmm1, xmm1, QWORD PTR [rsp]                   #19.21
        vdivsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.1[rip] #19.53
        vaddsd    xmm0, xmm1, xmm2                              #19.53
        add       rsp, 24                                       #19.53
	.cfi_def_cfa_offset 8
        ret                                                     #19.53
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	read_timer,@function
	.size	read_timer,.-read_timer
..LNread_timer.1:
	.data
# -- End  read_timer
	.text
.L_2__routine_start_sum_2:
# -- Begin  sum
	.text
# mark_begin;
       .align    16,0x90
	.globl sum
# --- sum(float *, float *)
sum:
# parameter 1: rdi
# parameter 2: rsi
..B3.1:                         # Preds ..B3.0
                                # Execution count [0.00e+00]
	.cfi_startproc
..___tag_value_sum.51:
..L52:
                                                         #63.40
        push      r12                                           #63.40
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        push      r13                                           #63.40
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        mov       r8, rsi                                       #70.3
        and       r8, 31                                        #70.3
        xor       r9d, r9d                                      #66.2
        mov       edx, r8d                                      #70.3
        xor       r11d, r11d                                    #66.2
        mov       r10d, edx                                     #70.3
        mov       ecx, edx                                      #70.3
        neg       r10d                                          #70.3
        and       ecx, 3                                        #70.3
        add       r10d, 32                                      #70.3
        shr       r10d, 2                                       #70.3
                                # LOE rbx rbp rsi rdi r8 r9 r11 r14 r15 edx ecx r10d
..B3.2:                         # Preds ..B3.15 ..B3.1
                                # Execution count [1.08e+03]
        mov       r13d, edx                                     #70.3
        test      edx, edx                                      #70.3
        vxorps    xmm0, xmm0, xmm0                              #67.3
        je        ..B3.7        # Prob 50%                      #70.3
                                # LOE rbx rbp rsi rdi r8 r9 r11 r14 r15 edx ecx r10d r13d xmm0
..B3.3:                         # Preds ..B3.2
                                # Execution count [1.08e+03]
        test      ecx, ecx                                      #70.3
        jne       ..B3.17       # Prob 10%                      #70.3
                                # LOE rbx rbp rsi rdi r8 r9 r11 r14 r15 edx ecx r10d xmm0
..B3.4:                         # Preds ..B3.3
                                # Execution count [1.08e+03]
        mov       eax, r10d                                     #70.3
        mov       r13d, r10d                                    #70.3
        mov       r12, r11                                      #70.3
                                # LOE rax rbx rbp rsi rdi r8 r9 r11 r12 r14 r15 edx ecx r10d r13d xmm0
..B3.5:                         # Preds ..B3.5 ..B3.4
                                # Execution count [6.00e+03]
        vmovss    xmm1, DWORD PTR [rsi+r12*4]                   #71.26
        vmulss    xmm2, xmm1, DWORD PTR [rdi+r12*4]             #71.4
        inc       r12                                           #70.3
        vaddss    xmm0, xmm2, xmm0                              #71.4
        cmp       r12, rax                                      #70.3
        jb        ..B3.5        # Prob 81%                      #70.3
        jmp       ..B3.8        # Prob 100%                     #70.3
                                # LOE rax rbx rbp rsi rdi r8 r9 r11 r12 r14 r15 edx ecx r10d r13d xmm0
..B3.7:                         # Preds ..B3.2
                                # Execution count [5.40e+02]
        mov       rax, r8                                       #70.3
                                # LOE rax rbx rbp rsi rdi r8 r9 r11 r14 r15 edx ecx r10d r13d xmm0
..B3.8:                         # Preds ..B3.5 ..B3.7
                                # Execution count [1.08e+03]
        neg       r13d                                          #70.3
        and       r13d, 15                                      #70.3
        vxorps    xmm1, xmm1, xmm1                              #64.10
        vmovss    xmm1, xmm1, xmm0                              #64.10
        neg       r13                                           #70.3
        vxorps    ymm0, ymm0, ymm0                              #64.10
        add       r13, 1200                                     #70.3
        vmovaps   xmm1, xmm1                                    #64.10
                                # LOE rax rbx rbp rsi rdi r8 r9 r11 r13 r14 r15 edx ecx r10d ymm0 ymm1
..B3.9:                         # Preds ..B3.9 ..B3.8
                                # Execution count [6.00e+03]
        vmovups   ymm2, YMMWORD PTR [rsi+rax*4]                 #71.26
        vmovups   ymm3, YMMWORD PTR [32+rsi+rax*4]              #71.26
        vfmadd231ps ymm1, ymm2, YMMWORD PTR [rdi+rax*4]         #71.4
        vfmadd231ps ymm0, ymm3, YMMWORD PTR [32+rdi+rax*4]      #71.4
        add       rax, 16                                       #70.3
        cmp       rax, r13                                      #70.3
        jb        ..B3.9        # Prob 81%                      #70.3
                                # LOE rax rbx rbp rsi rdi r8 r9 r11 r13 r14 r15 edx ecx r10d ymm0 ymm1
..B3.10:                        # Preds ..B3.9
                                # Execution count [1.08e+03]
        vaddps    ymm0, ymm1, ymm0                              #64.10
        vextractf128 xmm1, ymm0, 1                              #64.10
        vaddps    xmm2, xmm0, xmm1                              #64.10
        vmovhlps  xmm3, xmm2, xmm2                              #64.10
        vaddps    xmm4, xmm2, xmm3                              #64.10
        vshufps   xmm5, xmm4, xmm4, 245                         #64.10
        vaddss    xmm0, xmm4, xmm5                              #64.10
                                # LOE rbx rbp rsi rdi r8 r9 r11 r13 r14 r15 edx ecx r10d xmm0
..B3.11:                        # Preds ..B3.10 ..B3.17
                                # Execution count [1.08e+03]
        cmp       r13, 1200                                     #70.3
        jae       ..B3.15       # Prob 0%                       #70.3
                                # LOE rbx rbp rsi rdi r8 r9 r11 r13 r14 r15 edx ecx r10d xmm0
..B3.13:                        # Preds ..B3.11 ..B3.13
                                # Execution count [6.00e+03]
        vmovss    xmm1, DWORD PTR [rsi+r13*4]                   #71.26
        vmulss    xmm2, xmm1, DWORD PTR [rdi+r13*4]             #71.4
        inc       r13                                           #70.3
        vaddss    xmm0, xmm2, xmm0                              #71.4
        cmp       r13, 1200                                     #70.3
        jb        ..B3.13       # Prob 81%                      #70.3
                                # LOE rbx rbp rsi rdi r8 r9 r11 r13 r14 r15 edx ecx r10d xmm0
..B3.15:                        # Preds ..B3.13 ..B3.11
                                # Execution count [1.20e+03]
        vmovss    DWORD PTR [rsi+r9*4], xmm0                    #74.3
        inc       r9                                            #66.2
        add       rdi, 4800                                     #66.2
        cmp       r9, 1200                                      #66.2
        jb        ..B3.2        # Prob 99%                      #66.2
                                # LOE rbx rbp rsi rdi r8 r9 r11 r14 r15 edx ecx r10d
..B3.16:                        # Preds ..B3.15
                                # Execution count [1.00e+00]
        vzeroupper                                              #76.1
	.cfi_restore 13
        pop       r13                                           #76.1
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        pop       r12                                           #76.1
	.cfi_def_cfa_offset 8
        ret                                                     #76.1
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -16
	.cfi_offset 13, -24
                                # LOE
..B3.17:                        # Preds ..B3.3
                                # Execution count [1.08e+02]: Infreq
        mov       r13, r11                                      #70.3
        jmp       ..B3.11       # Prob 100%                     #70.3
        .align    16,0x90
                                # LOE rbx rbp rsi rdi r8 r9 r11 r13 r14 r15 edx ecx r10d xmm0
	.cfi_endproc
# mark_end;
	.type	sum,@function
	.size	sum,.-sum
..LNsum.2:
	.data
# -- End  sum
	.text
.L_2__routine_start_init_3:
# -- Begin  init
	.text
# mark_begin;
       .align    16,0x90
	.globl init
# --- init(float *, float *)
init:
# parameter 1: rdi
# parameter 2: rsi
..B4.1:                         # Preds ..B4.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_init.65:
..L66:
                                                         #23.41
        push      r12                                           #23.41
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        push      r13                                           #23.41
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        push      r14                                           #23.41
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        push      r15                                           #23.41
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        push      rbx                                           #23.41
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
        push      rbp                                           #23.41
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
        push      rsi                                           #23.41
	.cfi_def_cfa_offset 64
        xor       edx, edx                                      #24.13
        xor       ecx, ecx                                      #24.13
        mov       rbx, rdx                                      #24.13
        mov       r13, rdx                                      #24.13
        mov       ebp, ecx                                      #24.13
        mov       r15, rsi                                      #24.13
        mov       r12, rdi                                      #24.13
                                # LOE rbx r12 r13 r15 ebp
..B4.2:                         # Preds ..B4.6 ..B4.1
                                # Execution count [1.20e+03]
        xor       eax, eax                                      #25.14
        lea       r14, QWORD PTR [r12+rbx*4]                    #26.4
        mov       QWORD PTR [rsp], r15                          #26.4[spill]
        mov       r15, rax                                      #26.4
                                # LOE rbx r12 r13 r14 r15 ebp
..B4.3:                         # Preds ..B4.4 ..B4.2
                                # Execution count [1.44e+06]
#       rand(void)
        call      rand                                          #26.27
                                # LOE rbx r12 r13 r14 r15 eax ebp
..B4.4:                         # Preds ..B4.3
                                # Execution count [1.44e+06]
        vxorps    xmm0, xmm0, xmm0                              #26.27
        vcvtsi2ss xmm0, xmm0, eax                               #26.27
        vdivss    xmm1, xmm0, DWORD PTR .L_2il0floatpacket.0[rip] #26.34
        vmovss    DWORD PTR [r14+r15*4], xmm1                   #26.4
        inc       r15                                           #25.24
        cmp       r15, 1200                                     #25.21
        jl        ..B4.3        # Prob 99%                      #25.21
                                # LOE rbx r12 r13 r14 r15 ebp
..B4.5:                         # Preds ..B4.4
                                # Execution count [1.20e+03]
        mov       r15, QWORD PTR [rsp]                          #[spill]
#       rand(void)
        call      rand                                          #29.22
                                # LOE rbx r12 r13 r15 eax ebp
..B4.6:                         # Preds ..B4.5
                                # Execution count [1.20e+03]
        vxorps    xmm0, xmm0, xmm0                              #29.22
        inc       ebp                                           #24.23
        vcvtsi2ss xmm0, xmm0, eax                               #29.22
        vdivss    xmm1, xmm0, DWORD PTR .L_2il0floatpacket.0[rip] #29.29
        vmovss    DWORD PTR [r15+r13*4], xmm1                   #29.3
        add       rbx, 1200                                     #24.23
        inc       r13                                           #24.23
        cmp       ebp, 1200                                     #24.20
        jl        ..B4.2        # Prob 99%                      #24.20
                                # LOE rbx r12 r13 r15 ebp
..B4.7:                         # Preds ..B4.6
                                # Execution count [1.00e+00]
        pop       rcx                                           #31.1
	.cfi_def_cfa_offset 56
	.cfi_restore 6
        pop       rbp                                           #31.1
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        pop       rbx                                           #31.1
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        pop       r15                                           #31.1
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        pop       r14                                           #31.1
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        pop       r13                                           #31.1
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        pop       r12                                           #31.1
	.cfi_def_cfa_offset 8
        ret                                                     #31.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	init,@function
	.size	init,.-init
..LNinit.3:
	.data
# -- End  init
	.section .rodata, "a"
	.align 8
	.align 8
.L_2il0floatpacket.1:
	.long	0x00000000,0x408f4000
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,8
	.align 8
.L_2il0floatpacket.2:
	.long	0x00000000,0x41e5752a
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,8
	.align 8
.L_2il0floatpacket.3:
	.long	0x00000000,0x41cdcd65
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,8
	.align 4
.L_2il0floatpacket.0:
	.long	0x4d4ccccd
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,4
	.section .rodata.str1.4, "aMS",@progbits,1
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.3:
	.long	1920229709
	.long	1982691433
	.long	1869898597
	.long	1395138674
	.long	692342089
	.long	621349178
	.long	621372980
	.long	681524
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,32
	.data
	.section .note.GNU-stack, ""
# End
