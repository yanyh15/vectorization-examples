# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.1.0.166 Build 20191121";
# mark_description "-o asm/matvec_auto.asm -O2 -xCORE_AVX2 -S -masm=intel";
	.intel_syntax noprefix
	.file "matvec.c"
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
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_main.1:
..L2:
                                                          #57.33
        push      rbp                                           #57.33
	.cfi_def_cfa_offset 16
        mov       rbp, rsp                                      #57.33
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -128                                     #57.33
        push      r12                                           #57.33
        push      r13                                           #57.33
        push      r14                                           #57.33
        push      r15                                           #57.33
        push      rbx                                           #57.33
        sub       rsp, 88                                       #57.33
        mov       edi, 3                                        #57.33
        mov       esi, 10330110                                 #57.33
        call      __intel_new_feature_proc_init                 #57.33
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE r14 r15
..B1.64:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        vstmxcsr  DWORD PTR [rsp]                               #57.33
        mov       edi, 5760000                                  #59.18
        or        DWORD PTR [rsp], 32832                        #57.33
        vldmxcsr  DWORD PTR [rsp]                               #57.33
#       malloc(size_t)
        call      malloc                                        #59.18
                                # LOE rax r14 r15
..B1.63:                        # Preds ..B1.64
                                # Execution count [1.00e+00]
        mov       rbx, rax                                      #59.18
                                # LOE rbx r14 r15
..B1.2:                         # Preds ..B1.63
                                # Execution count [1.00e+00]
        mov       edi, 4800                                     #60.18
#       malloc(size_t)
        call      malloc                                        #60.18
                                # LOE rax rbx r14 r15
..B1.65:                        # Preds ..B1.2
                                # Execution count [1.00e+00]
        mov       r12, rax                                      #60.18
                                # LOE rbx r12 r14 r15
..B1.3:                         # Preds ..B1.65
                                # Execution count [1.00e+00]
        mov       edi, 4800                                     #61.18
#       malloc(size_t)
        call      malloc                                        #61.18
                                # LOE rax rbx r12 r14 r15
..B1.66:                        # Preds ..B1.3
                                # Execution count [1.00e+00]
        mov       r13, rax                                      #61.18
                                # LOE rbx r12 r13 r14 r15
..B1.4:                         # Preds ..B1.66
                                # Execution count [1.00e+00]
        xor       edi, edi                                      #63.8
#       time(time_t *)
        call      time                                          #63.8
                                # LOE rax rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.4
                                # Execution count [1.00e+00]
        mov       edi, eax                                      #63.2
#       srand(unsigned int)
        call      srand                                         #63.2
                                # LOE rbx r12 r13 r14 r15
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.00e+00]
        xor       edx, edx                                      #64.2
        xor       ecx, ecx                                      #64.2
        mov       r14, rdx                                      #64.2
        mov       r15d, ecx                                     #64.2
        mov       QWORD PTR [rsp], r13                          #64.2[spill]
        mov       r13, rdx                                      #64.2
                                # LOE rbx r12 r13 r14 r15d
..B1.7:                         # Preds ..B1.11 ..B1.6
                                # Execution count [1.20e+03]
        xor       edx, edx                                      #64.2
        lea       rax, QWORD PTR [rbx+r13*4]                    #64.2
        mov       DWORD PTR [16+rsp], r15d                      #64.2[spill]
        mov       r15, rdx                                      #64.2
        mov       QWORD PTR [8+rsp], r12                        #64.2[spill]
        mov       r12, rax                                      #64.2
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.9 ..B1.7
                                # Execution count [1.44e+06]
#       rand(void)
        call      rand                                          #64.2
                                # LOE rbx r12 r13 r14 r15 eax
..B1.9:                         # Preds ..B1.8
                                # Execution count [1.44e+06]
        vxorps    xmm0, xmm0, xmm0                              #64.2
        vcvtsi2ss xmm0, xmm0, eax                               #64.2
        vdivss    xmm1, xmm0, DWORD PTR .L_2il0floatpacket.0[rip] #64.2
        vmovss    DWORD PTR [r12+r15*4], xmm1                   #64.2
        inc       r15                                           #64.2
        cmp       r15, 1200                                     #64.2
        jl        ..B1.8        # Prob 99%                      #64.2
                                # LOE rbx r12 r13 r14 r15
..B1.10:                        # Preds ..B1.9
                                # Execution count [1.20e+03]
        mov       r15d, DWORD PTR [16+rsp]                      #[spill]
        mov       r12, QWORD PTR [8+rsp]                        #[spill]
#       rand(void)
        call      rand                                          #64.2
                                # LOE rbx r12 r13 r14 eax r15d
..B1.11:                        # Preds ..B1.10
                                # Execution count [1.20e+03]
        vxorps    xmm0, xmm0, xmm0                              #64.2
        inc       r15d                                          #64.2
        vcvtsi2ss xmm0, xmm0, eax                               #64.2
        vdivss    xmm1, xmm0, DWORD PTR .L_2il0floatpacket.0[rip] #64.2
        vmovss    DWORD PTR [r12+r14*4], xmm1                   #64.2
        add       r13, 1200                                     #64.2
        inc       r14                                           #64.2
        cmp       r15d, 1200                                    #64.2
        jl        ..B1.7        # Prob 99%                      #64.2
                                # LOE rbx r12 r13 r14 r15d
..B1.12:                        # Preds ..B1.11
                                # Execution count [1.00e+00]
        lea       rdi, QWORD PTR [24+rsp]                       #66.17
        mov       r13, QWORD PTR [rsp]                          #[spill]
..___tag_value_main.16:
#       ftime(struct timeb *)
        call      ftime                                         #66.17
..___tag_value_main.17:
                                # LOE rbx r12 r13 r14 r15
..B1.13:                        # Preds ..B1.12
                                # Execution count [1.92e+01]
        vxorpd    xmm0, xmm0, xmm0                              #66.17
        vxorpd    xmm1, xmm1, xmm1                              #66.17
        movzx     eax, WORD PTR [32+rsp]                        #66.17
        mov       r10, r12                                      #68.3
        vcvtsi2sd xmm0, xmm0, eax                               #66.17
        vcvtsi2sd xmm1, xmm1, QWORD PTR [24+rsp]                #66.17
        vdivsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.1[rip] #66.17
        and       r10, 31                                       #68.3
        xor       r8d, r8d                                      #67.13
        mov       edi, r10d                                     #68.3
        xor       r9d, r9d                                      #68.3
        mov       r11d, edi                                     #68.3
        mov       esi, edi                                      #68.3
        neg       r11d                                          #68.3
        and       esi, 3                                        #68.3
        add       r11d, 32                                      #68.3
        vaddsd    xmm3, xmm1, xmm2                              #66.17
        vmovsd    QWORD PTR [40+rsp], xmm3                      #66.17[spill]
        shr       r11d, 2                                       #68.3
                                # LOE rbx r10 r12 r13 esi edi r8d r9d r11d
..B1.14:                        # Preds ..B1.29 ..B1.13
                                # Execution count [1.02e+03]
        mov       DWORD PTR [48+rsp], r9d                       #68.3
        xor       ecx, ecx                                      #68.3
        mov       rdx, rbx                                      #68.3
                                # LOE rdx rcx rbx r10 r12 r13 esi edi r8d r9d r11d
..B1.15:                        # Preds ..B1.28 ..B1.14
                                # Execution count [1.20e+06]
        mov       r15d, edi                                     #68.3
        test      edi, edi                                      #68.3
        vxorps    xmm0, xmm0, xmm0                              #68.3
        je        ..B1.20       # Prob 50%                      #68.3
                                # LOE rdx rcx rbx r10 r12 r13 esi edi r8d r9d r11d r15d xmm0
..B1.16:                        # Preds ..B1.15
                                # Execution count [1.20e+06]
        test      esi, esi                                      #68.3
        jne       ..B1.58       # Prob 10%                      #68.3
                                # LOE rdx rcx rbx r10 r12 r13 esi edi r8d r9d r11d xmm0
..B1.17:                        # Preds ..B1.16
                                # Execution count [1.20e+06]
        mov       eax, r11d                                     #68.3
        mov       r15d, r11d                                    #68.3
        xor       r14d, r14d                                    #68.3
                                # LOE rax rdx rcx rbx r10 r12 r13 r14 esi edi r8d r9d r11d r15d xmm0
..B1.18:                        # Preds ..B1.18 ..B1.17
                                # Execution count [1.44e+09]
        vmovss    xmm1, DWORD PTR [r12+r14*4]                   #68.3
        vmulss    xmm2, xmm1, DWORD PTR [rdx+r14*4]             #68.3
        inc       r14                                           #68.3
        vaddss    xmm0, xmm2, xmm0                              #68.3
        cmp       r14, rax                                      #68.3
        jb        ..B1.18       # Prob 99%                      #68.3
        jmp       ..B1.21       # Prob 100%                     #68.3
                                # LOE rax rdx rcx rbx r10 r12 r13 r14 esi edi r8d r9d r11d r15d xmm0
..B1.20:                        # Preds ..B1.15
                                # Execution count [6.00e+05]
        mov       rax, r10                                      #68.3
                                # LOE rax rdx rcx rbx r10 r12 r13 esi edi r8d r9d r11d r15d xmm0
..B1.21:                        # Preds ..B1.18 ..B1.20
                                # Execution count [1.20e+06]
        neg       r15d                                          #68.3
        and       r15d, 15                                      #68.3
        vxorps    xmm1, xmm1, xmm1                              #68.3
        vmovss    xmm1, xmm1, xmm0                              #68.3
        neg       r15                                           #68.3
        vxorps    ymm0, ymm0, ymm0                              #68.3
        add       r15, 1200                                     #68.3
        vmovaps   xmm1, xmm1                                    #68.3
                                # LOE rax rdx rcx rbx r10 r12 r13 r15 esi edi r8d r9d r11d ymm0 ymm1
..B1.22:                        # Preds ..B1.22 ..B1.21
                                # Execution count [1.44e+09]
        vmovups   ymm2, YMMWORD PTR [r12+rax*4]                 #68.3
        vmovups   ymm3, YMMWORD PTR [32+r12+rax*4]              #68.3
        vfmadd231ps ymm1, ymm2, YMMWORD PTR [rdx+rax*4]         #68.3
        vfmadd231ps ymm0, ymm3, YMMWORD PTR [32+rdx+rax*4]      #68.3
        add       rax, 16                                       #68.3
        cmp       rax, r15                                      #68.3
        jb        ..B1.22       # Prob 99%                      #68.3
                                # LOE rax rdx rcx rbx r10 r12 r13 r15 esi edi r8d r9d r11d ymm0 ymm1
..B1.23:                        # Preds ..B1.22
                                # Execution count [1.20e+06]
        vaddps    ymm0, ymm1, ymm0                              #68.3
        vextractf128 xmm1, ymm0, 1                              #68.3
        vaddps    xmm2, xmm0, xmm1                              #68.3
        vmovhlps  xmm3, xmm2, xmm2                              #68.3
        vaddps    xmm4, xmm2, xmm3                              #68.3
        vshufps   xmm5, xmm4, xmm4, 245                         #68.3
        vaddss    xmm0, xmm4, xmm5                              #68.3
                                # LOE rdx rcx rbx r10 r12 r13 r15 esi edi r8d r9d r11d xmm0
..B1.24:                        # Preds ..B1.23 ..B1.58
                                # Execution count [1.20e+06]
        cmp       r15, 1200                                     #68.3
        jae       ..B1.28       # Prob 0%                       #68.3
                                # LOE rdx rcx rbx r10 r12 r13 r15 esi edi r8d r9d r11d xmm0
..B1.26:                        # Preds ..B1.24 ..B1.26
                                # Execution count [1.44e+09]
        vmovss    xmm1, DWORD PTR [r12+r15*4]                   #68.3
        vmulss    xmm2, xmm1, DWORD PTR [rdx+r15*4]             #68.3
        inc       r15                                           #68.3
        vaddss    xmm0, xmm2, xmm0                              #68.3
        cmp       r15, 1200                                     #68.3
        jb        ..B1.26       # Prob 99%                      #68.3
                                # LOE rdx rcx rbx r10 r12 r13 r15 esi edi r8d r9d r11d xmm0
..B1.28:                        # Preds ..B1.26 ..B1.24
                                # Execution count [1.20e+06]
        vmovss    DWORD PTR [r13+rcx*4], xmm0                   #68.3
        inc       rcx                                           #68.3
        add       rdx, 4800                                     #68.3
        cmp       rcx, 1200                                     #68.3
        jb        ..B1.15       # Prob 99%                      #68.3
                                # LOE rdx rcx rbx r10 r12 r13 esi edi r8d r9d r11d
..B1.29:                        # Preds ..B1.28
                                # Execution count [1.00e+03]
        .byte     15                                            #67.28
        .byte     31                                            #67.28
        .byte     64                                            #67.28
        .byte     0                                             #67.28
        inc       r8d                                           #67.28
        cmp       r8d, 1000                                     #67.20
        jl        ..B1.14       # Prob 99%                      #67.20
                                # LOE rbx r10 r12 r13 esi edi r8d r9d r11d
..B1.30:                        # Preds ..B1.29
                                # Execution count [1.00e+00]
        vzeroupper                                              #69.14
        lea       rdi, QWORD PTR [rsp]                          #69.14
..___tag_value_main.20:
#       ftime(struct timeb *)
        call      ftime                                         #69.14
..___tag_value_main.21:
                                # LOE rbx r12 r13 r14 r15
..B1.31:                        # Preds ..B1.30
                                # Execution count [1.00e+00]
        vxorpd    xmm0, xmm0, xmm0                              #69.14
        vxorpd    xmm1, xmm1, xmm1                              #69.14
        movzx     eax, WORD PTR [8+rsp]                         #69.14
        mov       edi, offset flat: il0_peep_printf_format_0    #73.2
        vcvtsi2sd xmm0, xmm0, eax                               #69.14
        vcvtsi2sd xmm1, xmm1, QWORD PTR [rsp]                   #69.14
        vdivsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.1[rip] #69.14
        vaddsd    xmm3, xmm1, xmm2                              #69.14
        vsubsd    xmm4, xmm3, QWORD PTR [40+rsp]                #69.29[spill]
        vmovsd    QWORD PTR [16+rsp], xmm4                      #69.29[spill]
        call      puts                                          #73.2
                                # LOE rbx r12 r13 r14 r15
..B1.32:                        # Preds ..B1.31
                                # Execution count [1.00e+00]
        mov       edi, offset flat: il0_peep_printf_format_1    #74.5
        call      puts                                          #74.5
                                # LOE rbx r12 r13 r14 r15
..B1.33:                        # Preds ..B1.32
                                # Execution count [1.00e+00]
        mov       edi, offset flat: il0_peep_printf_format_2    #75.5
        call      puts                                          #75.5
                                # LOE rbx r12 r13 r14 r15
..B1.34:                        # Preds ..B1.33
                                # Execution count [1.00e+00]
        vmovsd    xmm0, QWORD PTR [16+rsp]                      #76.5[spill]
        mov       edi, offset flat: .L_2__STRING.3              #76.5
        vmulsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.3[rip] #76.5
        mov       eax, 2                                        #76.5
        vmovsd    xmm1, QWORD PTR .L_2il0floatpacket.2[rip]     #76.5
        vdivsd    xmm1, xmm1, xmm2                              #76.5
..___tag_value_main.25:
#       printf(const char *__restrict__, ...)
        call      printf                                        #76.5
..___tag_value_main.26:
                                # LOE rbx r12 r13 r14 r15
..B1.35:                        # Preds ..B1.34
                                # Execution count [1.00e+00]
        mov       rax, r13                                      #78.13
        xor       edx, edx                                      #78.13
        and       rax, 31                                       #78.13
        vpxor     ymm8, ymm8, ymm8                              #78.13
        test      eax, eax                                      #78.13
        je        ..B1.40       # Prob 50%                      #78.13
                                # LOE rbx r12 r13 r14 r15 eax edx ymm8
..B1.36:                        # Preds ..B1.35
                                # Execution count [1.00e+00]
        test      al, 3                                         #78.13
        jne       ..B1.59       # Prob 10%                      #78.13
                                # LOE rbx r12 r13 r14 r15 eax edx ymm8
..B1.37:                        # Preds ..B1.36
                                # Execution count [1.00e+00]
        neg       eax                                           #78.13
        xor       ecx, ecx                                      #78.13
        add       eax, 32                                       #78.13
        shr       eax, 2                                        #78.13
        mov       esi, eax                                      #78.13
        vmovss    xmm0, DWORD PTR .L_2il0floatpacket.4[rip]     #78.13
                                # LOE rcx rbx rsi r12 r13 r14 r15 eax edx xmm0 ymm8
..B1.38:                        # Preds ..B1.38 ..B1.37
                                # Execution count [1.20e+03]
        vmovss    xmm1, DWORD PTR [r13+rcx*4]                   #78.13
        inc       rcx                                           #78.13
        vcomiss   xmm1, xmm0                                    #78.13
        lea       r8d, DWORD PTR [1+rdx]                        #78.13
        jbe       ..L27         # Prob 50%                      #78.13
        mov       edx, r8d                                      #78.13
..L27:                                                          #
        cmp       rcx, rsi                                      #78.13
        jb        ..B1.38       # Prob 99%                      #78.13
        jmp       ..B1.41       # Prob 100%                     #78.13
                                # LOE rcx rbx rsi r12 r13 r14 r15 eax edx xmm0 ymm8
..B1.40:                        # Preds ..B1.35
                                # Execution count [5.00e-01]
        xor       esi, esi                                      #78.13
                                # LOE rbx rsi r12 r13 r14 r15 eax edx ymm8
..B1.41:                        # Preds ..B1.38 ..B1.40
                                # Execution count [1.00e+00]
        neg       eax                                           #78.13
        vpxor     ymm5, ymm5, ymm5                              #78.13
        add       eax, 48                                       #78.13
        vmovups   ymm6, YMMWORD PTR .L_2il0floatpacket.5[rip]   #78.13
        vmovdqa   ymm4, ymm5                                    #78.13
        neg       eax                                           #78.13
        vmovdqa   ymm3, ymm4                                    #78.13
        add       eax, 1200                                     #78.13
        vmovdqa   ymm2, ymm3                                    #78.13
        mov       ecx, eax                                      #78.13
        vmovdqa   ymm1, ymm2                                    #78.13
        vmovdqa   ymm7, ymm1                                    #78.13
        vmovdqa   ymm0, ymm7                                    #78.13
        .align    16,0x90
                                # LOE rcx rbx rsi r12 r13 r14 r15 eax edx ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7 ymm8
..B1.42:                        # Preds ..B1.42 ..B1.41
                                # Execution count [1.20e+03]
        vcmpltps  ymm9, ymm6, YMMWORD PTR [r13+rsi*4]           #78.13
        vcmpltps  ymm10, ymm6, YMMWORD PTR [32+r13+rsi*4]       #78.13
        vcmpltps  ymm11, ymm6, YMMWORD PTR [64+r13+rsi*4]       #78.13
        vcmpltps  ymm12, ymm6, YMMWORD PTR [96+r13+rsi*4]       #78.13
        vcmpltps  ymm13, ymm6, YMMWORD PTR [128+r13+rsi*4]      #78.13
        vcmpltps  ymm14, ymm6, YMMWORD PTR [160+r13+rsi*4]      #78.13
        vcmpltps  ymm15, ymm6, YMMWORD PTR [192+r13+rsi*4]      #78.13
        vpsubd    ymm8, ymm8, ymm9                              #78.13
        vpsubd    ymm5, ymm5, ymm10                             #78.13
        vpsubd    ymm4, ymm4, ymm11                             #78.13
        vpsubd    ymm3, ymm3, ymm12                             #78.13
        vpsubd    ymm2, ymm2, ymm13                             #78.13
        vpsubd    ymm1, ymm1, ymm14                             #78.13
        vpsubd    ymm7, ymm7, ymm15                             #78.13
        vcmpltps  ymm9, ymm6, YMMWORD PTR [224+r13+rsi*4]       #78.13
        add       rsi, 64                                       #78.13
        vpsubd    ymm0, ymm0, ymm9                              #78.13
        cmp       rsi, rcx                                      #78.13
        jb        ..B1.42       # Prob 99%                      #78.13
                                # LOE rcx rbx rsi r12 r13 r14 r15 eax edx ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7 ymm8
..B1.43:                        # Preds ..B1.42
                                # Execution count [1.00e+00]
        vpaddd    ymm5, ymm8, ymm5                              #78.13
        vpaddd    ymm3, ymm4, ymm3                              #78.13
        vpaddd    ymm1, ymm2, ymm1                              #78.13
        vpaddd    ymm0, ymm7, ymm0                              #78.13
        vpaddd    ymm4, ymm5, ymm3                              #78.13
        vpaddd    ymm2, ymm1, ymm0                              #78.13
        vpaddd    ymm8, ymm4, ymm2                              #78.13
                                # LOE rbx r12 r13 r14 r15 eax edx ymm8
..B1.44:                        # Preds ..B1.43 ..B1.59
                                # Execution count [1.00e+00]
        lea       ecx, DWORD PTR [1+rax]                        #78.13
        cmp       ecx, 1200                                     #78.13
        ja        ..B1.53       # Prob 50%                      #78.13
                                # LOE rbx r12 r13 r14 r15 eax edx ymm8
..B1.45:                        # Preds ..B1.44
                                # Execution count [1.00e+00]
        mov       r9d, eax                                      #78.13
        neg       r9d                                           #78.13
        add       r9d, 1200                                     #78.13
        cmp       r9d, 8                                        #78.13
        jb        ..B1.60       # Prob 10%                      #78.13
                                # LOE rbx r12 r13 r14 r15 eax edx r9d ymm8
..B1.46:                        # Preds ..B1.45
                                # Execution count [1.00e+00]
        mov       r8d, r9d                                      #78.13
        xor       esi, esi                                      #78.13
        vmovups   ymm0, YMMWORD PTR .L_2il0floatpacket.5[rip]   #78.13
        and       r8d, -8                                       #78.13
        mov       ecx, eax                                      #78.13
                                # LOE rcx rbx r12 r13 r14 r15 eax edx esi r8d r9d ymm0 ymm8
..B1.47:                        # Preds ..B1.47 ..B1.46
                                # Execution count [1.20e+03]
        vcmpltps  ymm1, ymm0, YMMWORD PTR [r13+rcx*4]           #78.13
        add       esi, 8                                        #78.13
        add       rcx, 8                                        #78.13
        vpsubd    ymm8, ymm8, ymm1                              #78.13
        cmp       esi, r8d                                      #78.13
        jb        ..B1.47       # Prob 99%                      #78.13
                                # LOE rcx rbx r12 r13 r14 r15 eax edx esi r8d r9d ymm0 ymm8
..B1.49:                        # Preds ..B1.47 ..B1.60
                                # Execution count [1.00e+00]
        add       eax, r8d                                      #78.13
        cmp       r8d, r9d                                      #78.13
        jae       ..B1.53       # Prob 0%                       #78.13
                                # LOE rax rbx r12 r13 r14 r15 edx r8d r9d ymm8
..B1.50:                        # Preds ..B1.49
                                # Execution count [1.00e+00]
        vmovss    xmm0, DWORD PTR .L_2il0floatpacket.4[rip]     #78.13
                                # LOE rax rbx r12 r13 r14 r15 edx r8d r9d xmm0 ymm8
..B1.51:                        # Preds ..B1.51 ..B1.50
                                # Execution count [1.20e+03]
        vmovss    xmm1, DWORD PTR [r13+rax*4]                   #78.13
        inc       r8d                                           #78.13
        vcomiss   xmm1, xmm0                                    #78.13
        lea       ecx, DWORD PTR [1+rdx]                        #78.13
        jbe       ..L28         # Prob 50%                      #78.13
        mov       edx, ecx                                      #78.13
..L28:                                                          #
        inc       rax                                           #78.13
        cmp       r8d, r9d                                      #78.13
        jb        ..B1.51       # Prob 99%                      #78.13
                                # LOE rax rbx r12 r13 r14 r15 edx r8d r9d xmm0 ymm8
..B1.53:                        # Preds ..B1.51 ..B1.49 ..B1.44
                                # Execution count [1.00e+00]
        mov       edi, offset flat: .L_2__STRING.4              #79.5
        vextractf128 xmm0, ymm8, 1                              #78.13
        xor       eax, eax                                      #79.5
        vpaddd    xmm1, xmm8, xmm0                              #78.13
        vpsrldq   xmm2, xmm1, 8                                 #78.13
        vpaddd    xmm3, xmm1, xmm2                              #78.13
        vpsrlq    xmm4, xmm3, 32                                #78.13
        vpaddd    xmm5, xmm3, xmm4                              #78.13
        vmovd     esi, xmm5                                     #78.13
        add       esi, edx                                      #79.5
        vzeroupper                                              #79.5
..___tag_value_main.29:
#       printf(const char *__restrict__, ...)
        call      printf                                        #79.5
..___tag_value_main.30:
                                # LOE rbx r12 r13 r14 r15
..B1.54:                        # Preds ..B1.53
                                # Execution count [1.00e+00]
        mov       rdi, rbx                                      #81.5
#       free(void *)
        call      free                                          #81.5
                                # LOE r12 r13 r14 r15
..B1.55:                        # Preds ..B1.54
                                # Execution count [1.00e+00]
        mov       rdi, r12                                      #82.5
#       free(void *)
        call      free                                          #82.5
                                # LOE r13 r14 r15
..B1.56:                        # Preds ..B1.55
                                # Execution count [1.00e+00]
        mov       rdi, r13                                      #83.5
#       free(void *)
        call      free                                          #83.5
                                # LOE r14 r15
..B1.57:                        # Preds ..B1.56
                                # Execution count [1.00e+00]
        xor       eax, eax                                      #85.9
        add       rsp, 88                                       #85.9
	.cfi_restore 3
        pop       rbx                                           #85.9
	.cfi_restore 15
        pop       r15                                           #85.9
	.cfi_restore 14
        pop       r14                                           #85.9
	.cfi_restore 13
        pop       r13                                           #85.9
	.cfi_restore 12
        pop       r12                                           #85.9
        mov       rsp, rbp                                      #85.9
        pop       rbp                                           #85.9
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #85.9
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.58:                        # Preds ..B1.16
                                # Execution count [1.20e+05]: Infreq
        xor       r15d, r15d                                    #68.3
        jmp       ..B1.24       # Prob 100%                     #68.3
                                # LOE rdx rcx rbx r10 r12 r13 r15 esi edi r8d r9d r11d xmm0
..B1.59:                        # Preds ..B1.36
                                # Execution count [1.00e-01]: Infreq
        xor       eax, eax                                      #78.13
        jmp       ..B1.44       # Prob 100%                     #78.13
                                # LOE rbx r12 r13 r14 r15 eax edx ymm8
..B1.60:                        # Preds ..B1.45
                                # Execution count [1.00e-01]: Infreq
        xor       r8d, r8d                                      #78.13
        jmp       ..B1.49       # Prob 100%                     #78.13
        .align    16,0x90
                                # LOE rbx r12 r13 r14 r15 eax edx r8d r9d ymm8
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.0:
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
..___tag_value_read_timer.46:
..L47:
                                                         #14.21
        sub       rsp, 24                                       #14.21
	.cfi_def_cfa_offset 32
        lea       rdi, QWORD PTR [rsp]                          #16.5
..___tag_value_read_timer.49:
#       ftime(struct timeb *)
        call      ftime                                         #16.5
..___tag_value_read_timer.50:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.2:                         # Preds ..B2.1
                                # Execution count [1.00e+00]
        vxorpd    xmm0, xmm0, xmm0                              #17.40
        vxorpd    xmm1, xmm1, xmm1                              #17.21
        movzx     eax, WORD PTR [8+rsp]                         #17.40
        vcvtsi2sd xmm0, xmm0, eax                               #17.40
        vcvtsi2sd xmm1, xmm1, QWORD PTR [rsp]                   #17.21
        vdivsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.1[rip] #17.53
        vaddsd    xmm0, xmm1, xmm2                              #17.53
        add       rsp, 24                                       #17.53
	.cfi_def_cfa_offset 8
        ret                                                     #17.53
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
# --- sum(float *, float *, float *)
sum:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.04e+00]
	.cfi_startproc
..___tag_value_sum.53:
..L54:
                                                         #32.55
        push      r12                                           #32.55
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        push      r13                                           #32.55
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        mov       r10, rsi                                      #38.3
        and       r10, 31                                       #38.3
        xor       r9d, r9d                                      #35.2
        mov       ecx, r10d                                     #38.3
        mov       r11d, ecx                                     #38.3
        mov       r8d, ecx                                      #38.3
        neg       r11d                                          #38.3
        and       r8d, 3                                        #38.3
        add       r11d, 32                                      #38.3
        mov       DWORD PTR [-8+rsp], 0                         #33.19
        shr       r11d, 2                                       #38.3
                                # LOE rdx rbx rbp rsi rdi r9 r10 r14 r15 ecx r8d r11d
..B3.2:                         # Preds ..B3.15 ..B3.1
                                # Execution count [1.20e+03]
        mov       r13d, ecx                                     #38.3
        test      ecx, ecx                                      #38.3
        vxorps    xmm0, xmm0, xmm0                              #36.11
        je        ..B3.7        # Prob 50%                      #38.3
                                # LOE rdx rbx rbp rsi rdi r9 r10 r14 r15 ecx r8d r11d r13d xmm0
..B3.3:                         # Preds ..B3.2
                                # Execution count [1.20e+03]
        test      r8d, r8d                                      #38.3
        jne       ..B3.17       # Prob 10%                      #38.3
                                # LOE rdx rbx rbp rsi rdi r9 r10 r14 r15 ecx r8d r11d xmm0
..B3.4:                         # Preds ..B3.3
                                # Execution count [1.20e+03]
        mov       eax, r11d                                     #38.3
        mov       r13d, r11d                                    #38.3
        xor       r12d, r12d                                    #38.3
                                # LOE rax rdx rbx rbp rsi rdi r9 r10 r12 r14 r15 ecx r8d r11d r13d xmm0
..B3.5:                         # Preds ..B3.5 ..B3.4
                                # Execution count [1.44e+06]
        vmovss    xmm1, DWORD PTR [rsi+r12*4]                   #39.26
        vmulss    xmm2, xmm1, DWORD PTR [rdi+r12*4]             #39.4
        inc       r12                                           #38.3
        vaddss    xmm0, xmm2, xmm0                              #39.4
        cmp       r12, rax                                      #38.3
        jb        ..B3.5        # Prob 99%                      #38.3
        jmp       ..B3.8        # Prob 100%                     #38.3
                                # LOE rax rdx rbx rbp rsi rdi r9 r10 r12 r14 r15 ecx r8d r11d r13d xmm0
..B3.7:                         # Preds ..B3.2
                                # Execution count [6.00e+02]
        mov       rax, r10                                      #38.3
                                # LOE rax rdx rbx rbp rsi rdi r9 r10 r14 r15 ecx r8d r11d r13d xmm0
..B3.8:                         # Preds ..B3.5 ..B3.7
                                # Execution count [1.20e+03]
        neg       r13d                                          #38.3
        and       r13d, 15                                      #38.3
        vxorps    xmm1, xmm1, xmm1                              #36.11
        vmovss    xmm1, xmm1, xmm0                              #36.11
        neg       r13                                           #38.3
        vxorps    ymm0, ymm0, ymm0                              #36.11
        add       r13, 1200                                     #38.3
        vmovaps   xmm1, xmm1                                    #36.11
                                # LOE rax rdx rbx rbp rsi rdi r9 r10 r13 r14 r15 ecx r8d r11d ymm0 ymm1
..B3.9:                         # Preds ..B3.9 ..B3.8
                                # Execution count [1.44e+06]
        vmovups   ymm2, YMMWORD PTR [rsi+rax*4]                 #39.26
        vmovups   ymm3, YMMWORD PTR [32+rsi+rax*4]              #39.26
        vfmadd231ps ymm1, ymm2, YMMWORD PTR [rdi+rax*4]         #39.4
        vfmadd231ps ymm0, ymm3, YMMWORD PTR [32+rdi+rax*4]      #39.4
        add       rax, 16                                       #38.3
        cmp       rax, r13                                      #38.3
        jb        ..B3.9        # Prob 99%                      #38.3
                                # LOE rax rdx rbx rbp rsi rdi r9 r10 r13 r14 r15 ecx r8d r11d ymm0 ymm1
..B3.10:                        # Preds ..B3.9
                                # Execution count [1.20e+03]
        vaddps    ymm0, ymm1, ymm0                              #36.11
        vextractf128 xmm1, ymm0, 1                              #36.11
        vaddps    xmm2, xmm0, xmm1                              #36.11
        vmovhlps  xmm3, xmm2, xmm2                              #36.11
        vaddps    xmm4, xmm2, xmm3                              #36.11
        vshufps   xmm5, xmm4, xmm4, 245                         #36.11
        vaddss    xmm0, xmm4, xmm5                              #36.11
                                # LOE rdx rbx rbp rsi rdi r9 r10 r13 r14 r15 ecx r8d r11d xmm0
..B3.11:                        # Preds ..B3.10 ..B3.17
                                # Execution count [1.20e+03]
        cmp       r13, 1200                                     #38.3
        jae       ..B3.15       # Prob 0%                       #38.3
                                # LOE rdx rbx rbp rsi rdi r9 r10 r13 r14 r15 ecx r8d r11d xmm0
..B3.13:                        # Preds ..B3.11 ..B3.13
                                # Execution count [1.44e+06]
        vmovss    xmm1, DWORD PTR [rsi+r13*4]                   #39.26
        vmulss    xmm2, xmm1, DWORD PTR [rdi+r13*4]             #39.4
        inc       r13                                           #38.3
        vaddss    xmm0, xmm2, xmm0                              #39.4
        cmp       r13, 1200                                     #38.3
        jb        ..B3.13       # Prob 99%                      #38.3
                                # LOE rdx rbx rbp rsi rdi r9 r10 r13 r14 r15 ecx r8d r11d xmm0
..B3.15:                        # Preds ..B3.13 ..B3.11
                                # Execution count [1.20e+03]
        vmovss    DWORD PTR [rdx+r9*4], xmm0                    #42.3
        inc       r9                                            #35.2
        add       rdi, 4800                                     #35.2
        cmp       r9, 1200                                      #35.2
        jb        ..B3.2        # Prob 99%                      #35.2
                                # LOE rdx rbx rbp rsi rdi r9 r10 r14 r15 ecx r8d r11d
..B3.16:                        # Preds ..B3.15
                                # Execution count [1.00e+00]
        vzeroupper                                              #44.1
	.cfi_restore 13
        pop       r13                                           #44.1
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        pop       r12                                           #44.1
	.cfi_def_cfa_offset 8
        ret                                                     #44.1
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -16
	.cfi_offset 13, -24
                                # LOE
..B3.17:                        # Preds ..B3.3
                                # Execution count [1.20e+02]: Infreq
        xor       r13d, r13d                                    #38.3
        jmp       ..B3.11       # Prob 100%                     #38.3
        .align    16,0x90
                                # LOE rdx rbx rbp rsi rdi r9 r10 r13 r14 r15 ecx r8d r11d xmm0
	.cfi_endproc
# mark_end;
	.type	sum,@function
	.size	sum,.-sum
..LNsum.2:
	.data
# -- End  sum
	.text
.L_2__routine_start_dummy_3:
# -- Begin  dummy
	.text
# mark_begin;
       .align    16,0x90
	.globl dummy
# --- dummy(float *)
dummy:
# parameter 1: rdi
..B4.1:                         # Preds ..B4.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_dummy.67:
..L68:
                                                         #48.21
        mov       rax, rdi                                      #50.2
        and       rax, 31                                       #50.2
        xor       edx, edx                                      #49.13
        vpxor     ymm8, ymm8, ymm8                              #49.13
        test      eax, eax                                      #50.2
        je        ..B4.6        # Prob 50%                      #50.2
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax edx ymm8
..B4.2:                         # Preds ..B4.1
                                # Execution count [1.00e+00]
        test      al, 3                                         #50.2
        jne       ..B4.20       # Prob 10%                      #50.2
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax edx ymm8
..B4.3:                         # Preds ..B4.2
                                # Execution count [1.00e+00]
        neg       eax                                           #50.2
        xor       ecx, ecx                                      #50.2
        add       eax, 32                                       #50.2
        shr       eax, 2                                        #50.2
        mov       esi, eax                                      #50.2
        vmovss    xmm0, DWORD PTR .L_2il0floatpacket.4[rip]     #51.14
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 eax edx xmm0 ymm8
..B4.4:                         # Preds ..B4.4 ..B4.3
                                # Execution count [1.20e+03]
        vmovss    xmm1, DWORD PTR [rdi+rcx*4]                   #51.7
        inc       rcx                                           #50.2
        vcomiss   xmm1, xmm0                                    #52.6
        lea       r8d, DWORD PTR [1+rdx]                        #52.6
        jbe       ..L69         # Prob 50%                      #52.6
        mov       edx, r8d                                      #52.6
..L69:                                                          #
        cmp       rcx, rsi                                      #50.2
        jb        ..B4.4        # Prob 99%                      #50.2
        jmp       ..B4.7        # Prob 100%                     #50.2
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 eax edx xmm0 ymm8
..B4.6:                         # Preds ..B4.1
                                # Execution count [5.00e-01]
        xor       esi, esi                                      #50.2
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ymm8
..B4.7:                         # Preds ..B4.4 ..B4.6
                                # Execution count [1.00e+00]
        neg       eax                                           #50.2
        vpxor     ymm5, ymm5, ymm5                              #49.13
        add       eax, 48                                       #50.2
        vmovups   ymm6, YMMWORD PTR .L_2il0floatpacket.5[rip]   #51.14
        vmovdqa   ymm4, ymm5                                    #49.13
        neg       eax                                           #50.2
        vmovdqa   ymm3, ymm4                                    #49.13
        add       eax, 1200                                     #50.2
        vmovdqa   ymm2, ymm3                                    #49.13
        mov       ecx, eax                                      #50.2
        vmovdqa   ymm1, ymm2                                    #49.13
        vmovdqa   ymm7, ymm1                                    #49.13
        vmovdqa   ymm0, ymm7                                    #49.13
        .align    16,0x90
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 eax edx ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7 ymm8
..B4.8:                         # Preds ..B4.8 ..B4.7
                                # Execution count [1.20e+03]
        vcmpltps  ymm9, ymm6, YMMWORD PTR [rdi+rsi*4]           #51.14
        vcmpltps  ymm10, ymm6, YMMWORD PTR [32+rdi+rsi*4]       #51.14
        vcmpltps  ymm11, ymm6, YMMWORD PTR [64+rdi+rsi*4]       #51.14
        vcmpltps  ymm12, ymm6, YMMWORD PTR [96+rdi+rsi*4]       #51.14
        vcmpltps  ymm13, ymm6, YMMWORD PTR [128+rdi+rsi*4]      #51.14
        vcmpltps  ymm14, ymm6, YMMWORD PTR [160+rdi+rsi*4]      #51.14
        vcmpltps  ymm15, ymm6, YMMWORD PTR [192+rdi+rsi*4]      #51.14
        vpsubd    ymm8, ymm8, ymm9                              #52.6
        vpsubd    ymm5, ymm5, ymm10                             #52.6
        vpsubd    ymm4, ymm4, ymm11                             #52.6
        vpsubd    ymm3, ymm3, ymm12                             #52.6
        vpsubd    ymm2, ymm2, ymm13                             #52.6
        vpsubd    ymm1, ymm1, ymm14                             #52.6
        vpsubd    ymm7, ymm7, ymm15                             #52.6
        vcmpltps  ymm9, ymm6, YMMWORD PTR [224+rdi+rsi*4]       #51.14
        add       rsi, 64                                       #50.2
        vpsubd    ymm0, ymm0, ymm9                              #52.6
        cmp       rsi, rcx                                      #50.2
        jb        ..B4.8        # Prob 99%                      #50.2
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15 eax edx ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7 ymm8
..B4.9:                         # Preds ..B4.8
                                # Execution count [1.00e+00]
        vpaddd    ymm5, ymm8, ymm5                              #49.13
        vpaddd    ymm3, ymm4, ymm3                              #49.13
        vpaddd    ymm1, ymm2, ymm1                              #49.13
        vpaddd    ymm0, ymm7, ymm0                              #49.13
        vpaddd    ymm4, ymm5, ymm3                              #49.13
        vpaddd    ymm2, ymm1, ymm0                              #49.13
        vpaddd    ymm8, ymm4, ymm2                              #49.13
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax edx ymm8
..B4.10:                        # Preds ..B4.9 ..B4.20
                                # Execution count [1.00e+00]
        lea       ecx, DWORD PTR [1+rax]                        #50.2
        cmp       ecx, 1200                                     #50.2
        ja        ..B4.19       # Prob 50%                      #50.2
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax edx ymm8
..B4.11:                        # Preds ..B4.10
                                # Execution count [1.00e+00]
        mov       r9d, eax                                      #50.2
        neg       r9d                                           #50.2
        add       r9d, 1200                                     #50.2
        cmp       r9d, 8                                        #50.2
        jb        ..B4.21       # Prob 10%                      #50.2
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax edx r9d ymm8
..B4.12:                        # Preds ..B4.11
                                # Execution count [1.00e+00]
        mov       r8d, r9d                                      #50.2
        xor       esi, esi                                      #50.2
        vmovups   ymm0, YMMWORD PTR .L_2il0floatpacket.5[rip]   #51.14
        and       r8d, -8                                       #50.2
        mov       ecx, eax                                      #50.2
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 eax edx esi r8d r9d ymm0 ymm8
..B4.13:                        # Preds ..B4.13 ..B4.12
                                # Execution count [1.20e+03]
        vcmpltps  ymm1, ymm0, YMMWORD PTR [rdi+rcx*4]           #51.14
        add       esi, 8                                        #50.2
        add       rcx, 8                                        #50.2
        vpsubd    ymm8, ymm8, ymm1                              #52.6
        cmp       esi, r8d                                      #50.2
        jb        ..B4.13       # Prob 99%                      #50.2
                                # LOE rcx rbx rbp rdi r12 r13 r14 r15 eax edx esi r8d r9d ymm0 ymm8
..B4.15:                        # Preds ..B4.13 ..B4.21
                                # Execution count [1.00e+00]
        add       eax, r8d                                      #50.2
        cmp       r8d, r9d                                      #50.2
        jae       ..B4.19       # Prob 0%                       #50.2
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx r8d r9d ymm8
..B4.16:                        # Preds ..B4.15
                                # Execution count [1.00e+00]
        vmovss    xmm0, DWORD PTR .L_2il0floatpacket.4[rip]     #51.14
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx r8d r9d xmm0 ymm8
..B4.17:                        # Preds ..B4.17 ..B4.16
                                # Execution count [1.20e+03]
        vmovss    xmm1, DWORD PTR [rdi+rax*4]                   #51.7
        inc       r8d                                           #50.2
        vcomiss   xmm1, xmm0                                    #52.6
        lea       ecx, DWORD PTR [1+rdx]                        #52.6
        jbe       ..L70         # Prob 50%                      #52.6
        mov       edx, ecx                                      #52.6
..L70:                                                          #
        inc       rax                                           #50.2
        cmp       r8d, r9d                                      #50.2
        jb        ..B4.17       # Prob 99%                      #50.2
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 edx r8d r9d xmm0 ymm8
..B4.19:                        # Preds ..B4.17 ..B4.15 ..B4.10
                                # Execution count [1.00e+00]
        vextractf128 xmm0, ymm8, 1                              #49.13
        vpaddd    xmm1, xmm8, xmm0                              #49.13
        vpsrldq   xmm2, xmm1, 8                                 #49.13
        vpaddd    xmm3, xmm1, xmm2                              #49.13
        vpsrlq    xmm4, xmm3, 32                                #49.13
        vpaddd    xmm5, xmm3, xmm4                              #49.13
        vmovd     eax, xmm5                                     #49.13
        add       eax, edx                                      #49.13
        vzeroupper                                              #54.9
        ret                                                     #54.9
                                # LOE
..B4.20:                        # Preds ..B4.2
                                # Execution count [1.00e-01]: Infreq
        xor       eax, eax                                      #50.2
        jmp       ..B4.10       # Prob 100%                     #50.2
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax edx ymm8
..B4.21:                        # Preds ..B4.11
                                # Execution count [1.00e-01]: Infreq
        xor       r8d, r8d                                      #50.2
        jmp       ..B4.15       # Prob 100%                     #50.2
        .align    16,0x90
                                # LOE rbx rbp rdi r12 r13 r14 r15 eax edx r8d r9d ymm8
	.cfi_endproc
# mark_end;
	.type	dummy,@function
	.size	dummy,.-dummy
..LNdummy.3:
	.data
# -- End  dummy
	.text
.L_2__routine_start_init_4:
# -- Begin  init
	.text
# mark_begin;
       .align    16,0x90
	.globl init
# --- init(float *, float *)
init:
# parameter 1: rdi
# parameter 2: rsi
..B5.1:                         # Preds ..B5.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_init.72:
..L73:
                                                         #21.41
        push      r12                                           #21.41
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        push      r13                                           #21.41
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        push      r14                                           #21.41
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        push      r15                                           #21.41
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        push      rbx                                           #21.41
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
        push      rbp                                           #21.41
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
        push      rsi                                           #21.41
	.cfi_def_cfa_offset 64
        xor       edx, edx                                      #22.13
        xor       ecx, ecx                                      #22.13
        mov       rbx, rdx                                      #22.13
        mov       r13, rdx                                      #22.13
        mov       ebp, ecx                                      #22.13
        mov       r15, rsi                                      #22.13
        mov       r12, rdi                                      #22.13
                                # LOE rbx r12 r13 r15 ebp
..B5.2:                         # Preds ..B5.6 ..B5.1
                                # Execution count [1.20e+03]
        xor       eax, eax                                      #23.14
        lea       r14, QWORD PTR [r12+rbx*4]                    #24.4
        mov       QWORD PTR [rsp], r15                          #24.4[spill]
        mov       r15, rax                                      #24.4
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.3:                         # Preds ..B5.4 ..B5.2
                                # Execution count [1.44e+06]
#       rand(void)
        call      rand                                          #24.27
                                # LOE rbx r12 r13 r14 r15 eax ebp
..B5.4:                         # Preds ..B5.3
                                # Execution count [1.44e+06]
        vxorps    xmm0, xmm0, xmm0                              #24.27
        vcvtsi2ss xmm0, xmm0, eax                               #24.27
        vdivss    xmm1, xmm0, DWORD PTR .L_2il0floatpacket.0[rip] #24.34
        vmovss    DWORD PTR [r14+r15*4], xmm1                   #24.4
        inc       r15                                           #23.24
        cmp       r15, 1200                                     #23.21
        jl        ..B5.3        # Prob 99%                      #23.21
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.5:                         # Preds ..B5.4
                                # Execution count [1.20e+03]
        mov       r15, QWORD PTR [rsp]                          #[spill]
#       rand(void)
        call      rand                                          #27.22
                                # LOE rbx r12 r13 r15 eax ebp
..B5.6:                         # Preds ..B5.5
                                # Execution count [1.20e+03]
        vxorps    xmm0, xmm0, xmm0                              #27.22
        inc       ebp                                           #22.23
        vcvtsi2ss xmm0, xmm0, eax                               #27.22
        vdivss    xmm1, xmm0, DWORD PTR .L_2il0floatpacket.0[rip] #27.29
        vmovss    DWORD PTR [r15+r13*4], xmm1                   #27.3
        add       rbx, 1200                                     #22.23
        inc       r13                                           #22.23
        cmp       ebp, 1200                                     #22.20
        jl        ..B5.2        # Prob 99%                      #22.20
                                # LOE rbx r12 r13 r15 ebp
..B5.7:                         # Preds ..B5.6
                                # Execution count [1.00e+00]
        pop       rcx                                           #29.1
	.cfi_def_cfa_offset 56
	.cfi_restore 6
        pop       rbp                                           #29.1
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        pop       rbx                                           #29.1
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        pop       r15                                           #29.1
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        pop       r14                                           #29.1
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        pop       r13                                           #29.1
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        pop       r12                                           #29.1
	.cfi_def_cfa_offset 8
        ret                                                     #29.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	init,@function
	.size	init,.-init
..LNinit.4:
	.data
# -- End  init
	.section .rodata, "a"
	.align 32
	.align 32
.L_2il0floatpacket.5:
	.long	0x42c80000,0x42c80000,0x42c80000,0x42c80000,0x42c80000,0x42c80000,0x42c80000,0x42c80000
	.type	.L_2il0floatpacket.5,@object
	.size	.L_2il0floatpacket.5,32
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
	.align 4
.L_2il0floatpacket.4:
	.long	0x42c80000
	.type	.L_2il0floatpacket.4,@object
	.size	.L_2il0floatpacket.4,4
	.section .rodata.str1.4, "aMS",@progbits,1
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.3:
	.long	1920229709
	.long	1982691433
	.long	1869898597
	.long	1814569074
	.long	1634037353
	.long	154806642
	.long	1714693385
	.long	1714693385
	.word	10
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,34
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.4:
	.long	1835889988
	.long	622869113
	.word	2660
	.byte	0
	.type	.L_2__STRING.4,@object
	.size	.L_2__STRING.4,11
	.data
	.section .note.GNU-stack, ""
# End
