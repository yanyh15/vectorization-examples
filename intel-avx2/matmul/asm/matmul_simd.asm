# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.1.0.166 Build 20191121";
# mark_description "-o asm/matmul_simd.asm -fopenmp -mavx2 -O2 -xCORE_AVX2 -S -masm=intel";
	.intel_syntax noprefix
	.file "matmul_simd.c"
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
                                                          #71.34
        push      rbp                                           #71.34
	.cfi_def_cfa_offset 16
        mov       rbp, rsp                                      #71.34
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -128                                     #71.34
        push      r12                                           #71.34
        push      r13                                           #71.34
        push      r14                                           #71.34
        push      r15                                           #71.34
        push      rbx                                           #71.34
        sub       rsp, 216                                      #71.34
        mov       edi, 3                                        #71.34
        mov       esi, 10330111                                 #71.34
        call      __intel_new_feature_proc_init                 #71.34
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.70:                        # Preds ..B1.1
                                # Execution count [0.00e+00]
        vstmxcsr  DWORD PTR [rsp]                               #71.34
        mov       edi, offset flat: .2.13_2_kmpc_loc_struct_pack.51 #71.34
        xor       esi, esi                                      #71.34
        or        DWORD PTR [rsp], 32832                        #71.34
        xor       eax, eax                                      #71.34
        vldmxcsr  DWORD PTR [rsp]                               #71.34
..___tag_value_main.11:
        call      __kmpc_begin                                  #71.34
..___tag_value_main.12:
                                # LOE
..B1.2:                         # Preds ..B1.70
                                # Execution count [1.00e+00]
        mov       edi, 4                                        #73.5
#       omp_set_num_threads(int)
        call      ompc_set_num_threads                          #73.5
                                # LOE
..B1.3:                         # Preds ..B1.2
                                # Execution count [1.00e+00]
        mov       edi, 1048576                                  #75.16
#       malloc(size_t)
        call      malloc                                        #75.16
                                # LOE rax
..B1.71:                        # Preds ..B1.3
                                # Execution count [1.00e+00]
        mov       rbx, rax                                      #75.16
                                # LOE rbx
..B1.4:                         # Preds ..B1.71
                                # Execution count [1.00e+00]
        mov       edi, 1048576                                  #76.16
#       malloc(size_t)
        call      malloc                                        #76.16
                                # LOE rax rbx
..B1.72:                        # Preds ..B1.4
                                # Execution count [1.00e+00]
        mov       r14, rax                                      #76.16
                                # LOE rbx r14
..B1.5:                         # Preds ..B1.72
                                # Execution count [1.00e+00]
        mov       edi, 1048576                                  #77.21
#       malloc(size_t)
        call      malloc                                        #77.21
                                # LOE rax rbx r14
..B1.73:                        # Preds ..B1.5
                                # Execution count [1.00e+00]
        mov       r13, rax                                      #77.21
                                # LOE rbx r13 r14
..B1.6:                         # Preds ..B1.73
                                # Execution count [1.00e+00]
        mov       edi, 1048576                                  #78.23
#       malloc(size_t)
        call      malloc                                        #78.23
                                # LOE rax rbx r13 r14
..B1.74:                        # Preds ..B1.6
                                # Execution count [1.00e+00]
        mov       r12, rax                                      #78.23
                                # LOE rbx r12 r13 r14
..B1.7:                         # Preds ..B1.74
                                # Execution count [1.00e+00]
        xor       edi, edi                                      #81.11
#       time(time_t *)
        call      time                                          #81.11
                                # LOE rax rbx r12 r13 r14
..B1.8:                         # Preds ..B1.7
                                # Execution count [1.00e+00]
        mov       edi, eax                                      #81.5
#       srand(unsigned int)
        call      srand                                         #81.5
                                # LOE rbx r12 r13 r14
..B1.9:                         # Preds ..B1.8
                                # Execution count [1.00e+00]
        xor       eax, eax                                      #82.5
        xor       r15d, r15d                                    #82.5
        mov       QWORD PTR [16+rsp], r12                       #82.5[spill]
        mov       r12d, eax                                     #82.5
        mov       QWORD PTR [8+rsp], r13                        #82.5[spill]
        mov       QWORD PTR [rsp], r14                          #82.5[spill]
                                # LOE rbx r15 r12d
..B1.10:                        # Preds ..B1.13 ..B1.9
                                # Execution count [5.12e+02]
        xor       r14d, r14d                                    #82.5
        lea       r13, QWORD PTR [rbx+r15*4]                    #82.5
                                # LOE rbx r13 r14 r15 r12d
..B1.11:                        # Preds ..B1.12 ..B1.10
                                # Execution count [2.62e+05]
#       rand(void)
        call      rand                                          #82.5
                                # LOE rbx r13 r14 r15 eax r12d
..B1.12:                        # Preds ..B1.11
                                # Execution count [2.62e+05]
        vxorps    xmm0, xmm0, xmm0                              #82.5
        vcvtsi2ss xmm0, xmm0, eax                               #82.5
        vdivss    xmm1, xmm0, DWORD PTR .L_2il0floatpacket.0[rip] #82.5
        vmovss    DWORD PTR [r13+r14*4], xmm1                   #82.5
        inc       r14                                           #82.5
        cmp       r14, 512                                      #82.5
        jl        ..B1.11       # Prob 99%                      #82.5
                                # LOE rbx r13 r14 r15 r12d
..B1.13:                        # Preds ..B1.12
                                # Execution count [5.12e+02]
        inc       r12d                                          #82.5
        add       r15, 512                                      #82.5
        cmp       r12d, 512                                     #82.5
        jl        ..B1.10       # Prob 99%                      #82.5
                                # LOE rbx r15 r12d
..B1.14:                        # Preds ..B1.13
                                # Execution count [1.00e+00]
        xor       eax, eax                                      #83.5
        xor       r15d, r15d                                    #83.5
        mov       r14, QWORD PTR [rsp]                          #[spill]
        mov       QWORD PTR [24+rsp], rbx                       #83.5[spill]
        mov       ebx, eax                                      #83.5
                                # LOE r14 r15 ebx
..B1.15:                        # Preds ..B1.18 ..B1.14
                                # Execution count [5.12e+02]
        xor       r13d, r13d                                    #83.5
        lea       r12, QWORD PTR [r14+r15*4]                    #83.5
                                # LOE r12 r13 r14 r15 ebx
..B1.16:                        # Preds ..B1.17 ..B1.15
                                # Execution count [2.62e+05]
#       rand(void)
        call      rand                                          #83.5
                                # LOE r12 r13 r14 r15 eax ebx
..B1.17:                        # Preds ..B1.16
                                # Execution count [2.62e+05]
        vxorps    xmm0, xmm0, xmm0                              #83.5
        vcvtsi2ss xmm0, xmm0, eax                               #83.5
        vdivss    xmm1, xmm0, DWORD PTR .L_2il0floatpacket.0[rip] #83.5
        vmovss    DWORD PTR [r12+r13*4], xmm1                   #83.5
        inc       r13                                           #83.5
        cmp       r13, 512                                      #83.5
        jl        ..B1.16       # Prob 99%                      #83.5
                                # LOE r12 r13 r14 r15 ebx
..B1.18:                        # Preds ..B1.17
                                # Execution count [5.12e+02]
        inc       ebx                                           #83.5
        add       r15, 512                                      #83.5
        cmp       ebx, 512                                      #83.5
        jl        ..B1.15       # Prob 99%                      #83.5
                                # LOE r14 r15 ebx
..B1.19:                        # Preds ..B1.18
                                # Execution count [1.00e+00]
        mov       edi, 1048576                                  #84.17
        mov       rbx, QWORD PTR [24+rsp]                       #[spill]
        mov       r12, QWORD PTR [16+rsp]                       #[spill]
        mov       r13, QWORD PTR [8+rsp]                        #[spill]
#       malloc(size_t)
        call      malloc                                        #84.17
                                # LOE rax rbx r12 r13 r14
..B1.78:                        # Preds ..B1.19
                                # Execution count [1.00e+00]
        mov       r15, rax                                      #84.17
                                # LOE rbx r12 r13 r14 r15
..B1.20:                        # Preds ..B1.78
                                # Execution count [1.00e+00]
        xor       esi, esi                                      #85.5
        mov       rcx, r15                                      #85.5
                                # LOE rcx rbx rsi r12 r13 r14 r15
..B1.21:                        # Preds ..B1.34 ..B1.20
                                # Execution count [5.12e+02]
        mov       r9, rcx                                       #86.9
        and       r9, 15                                        #86.9
        test      r9d, r9d                                      #86.9
        je        ..B1.26       # Prob 50%                      #86.9
                                # LOE rcx rbx rsi r12 r13 r14 r15 r9d
..B1.22:                        # Preds ..B1.21
                                # Execution count [5.12e+02]
        test      r9d, 3                                        #86.9
        jne       ..B1.67       # Prob 10%                      #86.9
                                # LOE rcx rbx rsi r12 r13 r14 r15 r9d
..B1.23:                        # Preds ..B1.22
                                # Execution count [5.12e+02]
        neg       r9d                                           #86.9
        xor       r8d, r8d                                      #86.9
        add       r9d, 16                                       #86.9
        lea       rax, QWORD PTR [r14+rsi*4]                    #87.30
        shr       r9d, 2                                        #86.9
        xor       edi, edi                                      #86.9
        mov       edx, r9d                                      #86.9
                                # LOE rax rdx rcx rbx rsi rdi r8 r12 r13 r14 r15 r9d
..B1.24:                        # Preds ..B1.24 ..B1.23
                                # Execution count [2.62e+05]
        mov       r10d, DWORD PTR [rdi+rax]                     #87.30
        add       rdi, 2048                                     #86.9
        mov       DWORD PTR [rcx+r8*4], r10d                    #87.13
        inc       r8                                            #86.9
        cmp       r8, rdx                                       #86.9
        jb        ..B1.24       # Prob 99%                      #86.9
        jmp       ..B1.27       # Prob 100%                     #86.9
                                # LOE rax rdx rcx rbx rsi rdi r8 r12 r13 r14 r15 r9d
..B1.26:                        # Preds ..B1.21
                                # Execution count [2.56e+02]
        xor       edx, edx                                      #86.9
        lea       rax, QWORD PTR [r14+rsi*4]                    #87.30
                                # LOE rax rdx rcx rbx rsi r12 r13 r14 r15 r9d
..B1.27:                        # Preds ..B1.24 ..B1.26
                                # Execution count [5.12e+02]
        neg       r9d                                           #86.9
        mov       rdi, rdx                                      #86.9
        and       r9d, 3                                        #86.9
        shl       rdi, 11                                       #86.9
        neg       r9                                            #86.9
        add       r9, 512                                       #86.9
                                # LOE rax rdx rcx rbx rsi rdi r9 r12 r13 r14 r15
..B1.28:                        # Preds ..B1.28 ..B1.27
                                # Execution count [2.62e+05]
        vmovss    xmm0, DWORD PTR [2048+rdi+rax]                #87.30
        vmovss    xmm1, DWORD PTR [rdi+rax]                     #87.30
        vinsertps xmm3, xmm0, DWORD PTR [6144+rdi+rax], 16      #87.30
        vinsertps xmm2, xmm1, DWORD PTR [4096+rdi+rax], 16      #87.30
        add       rdi, 8192                                     #86.9
        vunpcklps xmm4, xmm2, xmm3                              #87.30
        vmovups   XMMWORD PTR [rcx+rdx*4], xmm4                 #87.13
        add       rdx, 4                                        #86.9
        cmp       rdx, r9                                       #86.9
        jb        ..B1.28       # Prob 99%                      #86.9
                                # LOE rax rdx rcx rbx rsi rdi r9 r12 r13 r14 r15
..B1.30:                        # Preds ..B1.28 ..B1.67
                                # Execution count [5.12e+02]
        mov       rdx, r9                                       #86.9
        shl       rdx, 11                                       #86.9
        cmp       r9, 512                                       #86.9
        jae       ..B1.34       # Prob 0%                       #86.9
                                # LOE rdx rcx rbx rsi r9 r12 r13 r14 r15
..B1.31:                        # Preds ..B1.30
                                # Execution count [5.12e+02]
        lea       rax, QWORD PTR [r14+rsi*4]                    #87.30
                                # LOE rax rdx rcx rbx rsi r9 r12 r13 r14 r15
..B1.32:                        # Preds ..B1.32 ..B1.31
                                # Execution count [2.62e+05]
        mov       edi, DWORD PTR [rdx+rax]                      #87.30
        add       rdx, 2048                                     #86.9
        mov       DWORD PTR [rcx+r9*4], edi                     #87.13
        inc       r9                                            #86.9
        cmp       r9, 512                                       #86.9
        jb        ..B1.32       # Prob 99%                      #86.9
                                # LOE rax rdx rcx rbx rsi r9 r12 r13 r14 r15
..B1.34:                        # Preds ..B1.32 ..B1.30
                                # Execution count [5.12e+02]
        inc       rsi                                           #85.5
        add       rcx, 2048                                     #85.5
        cmp       rsi, 512                                      #85.5
        jb        ..B1.21       # Prob 99%                      #85.5
                                # LOE rcx rbx rsi r12 r13 r14 r15
..B1.35:                        # Preds ..B1.34
                                # Execution count [1.00e+00]
        lea       rdi, QWORD PTR [72+rsp]                       #93.22
..___tag_value_main.21:
#       ftime(struct timeb *)
        call      ftime                                         #93.22
..___tag_value_main.22:
                                # LOE rbx r12 r13 r14 r15
..B1.36:                        # Preds ..B1.35
                                # Execution count [7.44e+00]
        vxorpd    xmm0, xmm0, xmm0                              #93.22
        vxorpd    xmm1, xmm1, xmm1                              #93.22
        movzx     eax, WORD PTR [80+rsp]                        #93.22
        xor       cl, cl                                        #94.5
        vcvtsi2sd xmm0, xmm0, eax                               #93.22
        vcvtsi2sd xmm1, xmm1, QWORD PTR [72+rsp]                #93.22
        vdivsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.1[rip] #93.22
        vxorps    ymm4, ymm4, ymm4                              #95.9
        vaddsd    xmm3, xmm1, xmm2                              #93.22
        vmovups   YMMWORD PTR [96+rsp], ymm4                    #95.9[spill]
        vmovups   ymm1, YMMWORD PTR .L_2il0floatpacket.4[rip]   #95.9
        vmovsd    QWORD PTR [32+rsp], xmm3                      #93.22[spill]
        vpcmpeqd  ymm0, ymm0, ymm0                              #95.9
        vxorps    ymm2, ymm2, ymm2                              #95.9
                                # LOE rbx r12 r13 r14 r15 cl ymm0 ymm1 ymm2
..B1.37:                        # Preds ..B1.43 ..B1.36
                                # Execution count [1.15e+01]
        xor       esi, esi                                      #95.9
        mov       rdi, rbx                                      #95.9
                                # LOE rbx rdi r12 r13 r14 r15 esi cl ymm0 ymm1 ymm2
..B1.38:                        # Preds ..B1.42 ..B1.37
                                # Execution count [2.30e+03]
        xor       r8d, r8d                                      #95.9
        mov       r9d, esi                                      #95.9
        shl       r9d, 9                                        #95.9
        xor       eax, eax                                      #95.9
                                # LOE rbx rdi r12 r13 r14 r15 eax esi r8d r9d cl ymm0 ymm1 ymm2
..B1.39:                        # Preds ..B1.41 ..B1.38
                                # Execution count [1.28e+04]
        vmovdqa   ymm4, ymm2                                    #95.9
        xor       edx, edx                                      #95.9
        vmovaps   ymm3, ymm4                                    #95.9
        .align    16,0x90
                                # LOE rdx rbx rdi r12 r13 r14 r15 eax esi r8d r9d cl ymm0 ymm1 ymm2 ymm3 ymm4
..B1.40:                        # Preds ..B1.40 ..B1.39
                                # Execution count [6.55e+06]
        mov       r10d, edx                                     #95.9
        add       r10d, eax                                     #95.9
        movsxd    r10, r10d                                     #95.9
        vxorps    ymm7, ymm7, ymm7                              #95.9
        vmovdqa   ymm5, ymm0                                    #95.9
        vxorps    ymm8, ymm8, ymm8                              #95.9
        vmovdqa   ymm6, ymm0                                    #95.9
        lea       r11, QWORD PTR [r15+r10*4]                    #95.9
        vgatherdps ymm7, DWORD PTR [r11+ymm1*8], ymm5           #95.9
        vgatherdps ymm8, DWORD PTR [16384+r11+ymm1*8], ymm6     #95.9
        vbroadcastss ymm9, DWORD PTR [rdi+rdx*4]                #95.9
        inc       rdx                                           #95.9
        vfmadd231ps ymm4, ymm7, ymm9                            #95.9
        vfmadd231ps ymm3, ymm8, ymm9                            #95.9
        cmp       rdx, 512                                      #95.9
        jb        ..B1.40       # Prob 99%                      #95.9
                                # LOE rdx rbx rdi r12 r13 r14 r15 eax esi r8d r9d cl ymm0 ymm1 ymm2 ymm3 ymm4
..B1.41:                        # Preds ..B1.40
                                # Execution count [1.28e+04]
        add       eax, 8192                                     #95.9
        lea       edx, DWORD PTR [r9+r8]                        #95.9
        add       r8d, 16                                       #95.9
        vmovups   YMMWORD PTR [r13+rdx*4], ymm4                 #95.9
        vmovups   YMMWORD PTR [32+r13+rdx*4], ymm3              #95.9
        cmp       r8d, 512                                      #95.9
        jb        ..B1.39       # Prob 82%                      #95.9
                                # LOE rbx rdi r12 r13 r14 r15 eax esi r8d r9d cl ymm0 ymm1 ymm2
..B1.42:                        # Preds ..B1.41
                                # Execution count [2.30e+03]
        inc       esi                                           #95.9
        add       rdi, 2048                                     #95.9
        cmp       esi, 512                                      #95.9
        jb        ..B1.38       # Prob 99%                      #95.9
                                # LOE rbx rdi r12 r13 r14 r15 esi cl ymm0 ymm1 ymm2
..B1.43:                        # Preds ..B1.42
                                # Execution count [4.10e+00]
        inc       cl                                            #94.5
        cmp       cl, 10                                        #94.5
        jb        ..B1.37       # Prob 99%                      #94.5
                                # LOE rbx r12 r13 r14 r15 cl ymm0 ymm1 ymm2
..B1.44:                        # Preds ..B1.43
                                # Execution count [1.00e+00]
        vzeroupper                                              #96.16
        lea       rdi, QWORD PTR [rsp]                          #96.16
..___tag_value_main.25:
#       ftime(struct timeb *)
        call      ftime                                         #96.16
..___tag_value_main.26:
                                # LOE rbx r12 r13 r14
..B1.45:                        # Preds ..B1.44
                                # Execution count [1.00e+00]
        vxorpd    xmm0, xmm0, xmm0                              #96.16
        vxorpd    xmm1, xmm1, xmm1                              #96.16
        movzx     eax, WORD PTR [8+rsp]                         #96.16
        lea       rdi, QWORD PTR [16+rsp]                       #98.29
        vcvtsi2sd xmm0, xmm0, eax                               #96.16
        vcvtsi2sd xmm1, xmm1, QWORD PTR [rsp]                   #96.16
        vdivsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.1[rip] #96.16
        vaddsd    xmm3, xmm1, xmm2                              #96.16
        vsubsd    xmm4, xmm3, QWORD PTR [16+rdi]                #96.31[spill]
        vmovsd    QWORD PTR [32+rdi], xmm4                      #96.31[spill]
..___tag_value_main.28:
#       ftime(struct timeb *)
        call      ftime                                         #98.29
..___tag_value_main.29:
                                # LOE rbx r12 r13 r14
..B1.46:                        # Preds ..B1.45
                                # Execution count [9.00e-01]
        vxorpd    xmm0, xmm0, xmm0                              #98.29
        vxorpd    xmm1, xmm1, xmm1                              #98.29
        movzx     eax, WORD PTR [24+rsp]                        #98.29
        vcvtsi2sd xmm0, xmm0, eax                               #98.29
        vcvtsi2sd xmm1, xmm1, QWORD PTR [16+rsp]                #98.29
        vmovups   ymm8, YMMWORD PTR .L_2il0floatpacket.4[rip]   #99.5
        vdivsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.1[rip] #98.29
        vpcmpeqd  ymm10, ymm10, ymm10                           #99.5
        xor       al, al                                        #99.5
        vxorps    ymm7, ymm7, ymm7                              #99.5
        vaddsd    xmm3, xmm1, xmm2                              #98.29
        vmovsd    QWORD PTR [56+rsp], xmm3                      #98.29[spill]
                                # LOE rbx r12 r13 r14 al ymm7 ymm8 ymm10
..B1.47:                        # Preds ..B1.53 ..B1.46
                                # Execution count [5.00e+00]
        xor       r8d, r8d                                      #100.9
        xor       esi, esi                                      #100.9
                                # LOE rbx rsi r12 r13 r14 r8d al ymm7 ymm8 ymm10
..B1.48:                        # Preds ..B1.52 ..B1.47
                                # Execution count [2.56e+03]
        xor       edi, edi                                      #100.9
        lea       r11, QWORD PTR [rbx+rsi]                      #100.9
        lea       rdx, QWORD PTR [r12+rsi]                      #100.9
                                # LOE rdx rbx rsi rdi r11 r12 r13 r14 r8d al ymm7 ymm8 ymm10
..B1.49:                        # Preds ..B1.51 ..B1.48
                                # Execution count [1.31e+06]
        vmovdqa   ymm0, ymm7                                    #100.9
        xor       r10d, r10d                                    #100.9
        vmovdqa   ymm6, ymm0                                    #100.9
        lea       r9, QWORD PTR [r14+rdi*4]                     #100.9
        vmovdqa   ymm5, ymm6                                    #100.9
        xor       ecx, ecx                                      #100.9
        vmovdqa   ymm4, ymm5                                    #100.9
        vmovaps   ymm3, ymm4                                    #100.9
        vmovaps   ymm2, ymm3                                    #100.9
        vmovaps   ymm1, ymm2                                    #100.9
        vmovaps   ymm9, ymm1                                    #100.9
                                # LOE rdx rcx rbx rsi rdi r9 r10 r11 r12 r13 r14 r8d al ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7 ymm8 ymm9 ymm10
..B1.50:                        # Preds ..B1.50 ..B1.49
                                # Execution count [6.71e+08]
        vmovdqa   ymm11, ymm10                                  #100.9
        lea       r15, QWORD PTR [r9+rcx]                       #100.9
        vxorps    ymm12, ymm12, ymm12                           #100.9
        vgatherdps ymm12, DWORD PTR [r15+ymm8*8], ymm11         #100.9
        lea       r15, QWORD PTR [16384+rcx+r9]                 #100.9
        vxorps    ymm15, ymm15, ymm15                           #100.9
        vmovdqa   ymm14, ymm10                                  #100.9
        vgatherdps ymm15, DWORD PTR [r15+ymm8*8], ymm14         #100.9
        lea       r15, QWORD PTR [32768+rcx+r9]                 #100.9
        vmulps    ymm13, ymm12, YMMWORD PTR [r11+r10*4]         #100.9
        vmulps    ymm11, ymm15, YMMWORD PTR [32+r11+r10*4]      #100.9
        vaddps    ymm0, ymm13, ymm0                             #100.9
        vaddps    ymm6, ymm11, ymm6                             #100.9
        vxorps    ymm13, ymm13, ymm13                           #100.9
        vmovdqa   ymm12, ymm10                                  #100.9
        vgatherdps ymm13, DWORD PTR [r15+ymm8*8], ymm12         #100.9
        lea       r15, QWORD PTR [49152+rcx+r9]                 #100.9
        vxorps    ymm12, ymm12, ymm12                           #100.9
        vmovdqa   ymm11, ymm10                                  #100.9
        vgatherdps ymm12, DWORD PTR [r15+ymm8*8], ymm11         #100.9
        lea       r15, QWORD PTR [65536+rcx+r9]                 #100.9
        vmulps    ymm14, ymm13, YMMWORD PTR [64+r11+r10*4]      #100.9
        vmulps    ymm15, ymm12, YMMWORD PTR [96+r11+r10*4]      #100.9
        vaddps    ymm5, ymm14, ymm5                             #100.9
        vaddps    ymm4, ymm15, ymm4                             #100.9
        vxorps    ymm11, ymm11, ymm11                           #100.9
        vmovdqa   ymm13, ymm10                                  #100.9
        vgatherdps ymm11, DWORD PTR [r15+ymm8*8], ymm13         #100.9
        lea       r15, QWORD PTR [81920+rcx+r9]                 #100.9
        vxorps    ymm15, ymm15, ymm15                           #100.9
        vmovdqa   ymm14, ymm10                                  #100.9
        vgatherdps ymm15, DWORD PTR [r15+ymm8*8], ymm14         #100.9
        lea       r15, QWORD PTR [98304+rcx+r9]                 #100.9
        vmulps    ymm12, ymm11, YMMWORD PTR [128+r11+r10*4]     #100.9
        vmulps    ymm11, ymm15, YMMWORD PTR [160+r11+r10*4]     #100.9
        vaddps    ymm3, ymm12, ymm3                             #100.9
        vaddps    ymm2, ymm11, ymm2                             #100.9
        vxorps    ymm13, ymm13, ymm13                           #100.9
        vmovdqa   ymm12, ymm10                                  #100.9
        vgatherdps ymm13, DWORD PTR [r15+ymm8*8], ymm12         #100.9
        lea       r15, QWORD PTR [114688+rcx+r9]                #100.9
        vxorps    ymm12, ymm12, ymm12                           #100.9
        add       rcx, 131072                                   #100.9
        vmovdqa   ymm11, ymm10                                  #100.9
        vgatherdps ymm12, DWORD PTR [r15+ymm8*8], ymm11         #100.9
        vmulps    ymm14, ymm13, YMMWORD PTR [192+r11+r10*4]     #100.9
        vmulps    ymm15, ymm12, YMMWORD PTR [224+r11+r10*4]     #100.9
        vaddps    ymm1, ymm14, ymm1                             #100.9
        vaddps    ymm9, ymm15, ymm9                             #100.9
        add       r10, 64                                       #100.9
        cmp       r10, 512                                      #100.9
        jb        ..B1.50       # Prob 99%                      #100.9
                                # LOE rdx rcx rbx rsi rdi r9 r10 r11 r12 r13 r14 r8d al ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7 ymm8 ymm9 ymm10
..B1.51:                        # Preds ..B1.50
                                # Execution count [1.31e+06]
        vaddps    ymm0, ymm0, ymm6                              #100.9
        vaddps    ymm4, ymm5, ymm4                              #100.9
        vaddps    ymm2, ymm3, ymm2                              #100.9
        vaddps    ymm1, ymm1, ymm9                              #100.9
        vaddps    ymm3, ymm0, ymm4                              #100.9
        vaddps    ymm5, ymm2, ymm1                              #100.9
        vaddps    ymm6, ymm3, ymm5                              #100.9
        vextractf128 xmm9, ymm6, 1                              #100.9
        vaddps    xmm11, xmm6, xmm9                             #100.9
        vmovhlps  xmm12, xmm11, xmm11                           #100.9
        vaddps    xmm13, xmm11, xmm12                           #100.9
        vshufps   xmm14, xmm13, xmm13, 245                      #100.9
        vaddss    xmm15, xmm13, xmm14                           #100.9
        vmovss    DWORD PTR [rdx+rdi*4], xmm15                  #100.9
        inc       rdi                                           #100.9
        cmp       rdi, 512                                      #100.9
        jb        ..B1.49       # Prob 99%                      #100.9
                                # LOE rdx rbx rsi rdi r11 r12 r13 r14 r8d al ymm7 ymm8 ymm10
..B1.52:                        # Preds ..B1.51
                                # Execution count [2.56e+03]
        inc       r8d                                           #100.9
        add       rsi, 2048                                     #100.9
        cmp       r8d, 512                                      #100.9
        jb        ..B1.48       # Prob 99%                      #100.9
                                # LOE rbx rsi r12 r13 r14 r8d al ymm7 ymm8 ymm10
..B1.53:                        # Preds ..B1.52
                                # Execution count [5.00e+00]
        inc       al                                            #99.5
        cmp       al, 10                                        #99.5
        jb        ..B1.47       # Prob 82%                      #99.5
                                # LOE rbx r12 r13 r14 al ymm7 ymm8 ymm10
..B1.54:                        # Preds ..B1.53
                                # Execution count [1.00e+00]
        vzeroupper                                              #101.23
        lea       rdi, QWORD PTR [32+rsp]                       #101.23
..___tag_value_main.32:
#       ftime(struct timeb *)
        call      ftime                                         #101.23
..___tag_value_main.33:
                                # LOE r12 r13
..B1.55:                        # Preds ..B1.54
                                # Execution count [1.00e+00]
        vxorpd    xmm0, xmm0, xmm0                              #101.23
        vxorpd    xmm1, xmm1, xmm1                              #101.23
        movzx     eax, WORD PTR [40+rsp]                        #101.23
        mov       edi, offset flat: il0_peep_printf_format_0    #106.5
        vcvtsi2sd xmm0, xmm0, eax                               #101.23
        vcvtsi2sd xmm1, xmm1, QWORD PTR [32+rsp]                #101.23
        vdivsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.1[rip] #101.23
        vaddsd    xmm3, xmm1, xmm2                              #101.23
        vsubsd    xmm4, xmm3, QWORD PTR [56+rsp]                #101.38[spill]
        vmovsd    QWORD PTR [64+rsp], xmm4                      #101.38[spill]
        call      puts                                          #106.5
                                # LOE r12 r13
..B1.56:                        # Preds ..B1.55
                                # Execution count [1.00e+00]
        mov       edi, offset flat: .L_2__STRING.1              #107.5
        mov       esi, 512                                      #107.5
        xor       eax, eax                                      #107.5
..___tag_value_main.36:
#       printf(const char *__restrict__, ...)
        call      printf                                        #107.5
..___tag_value_main.37:
                                # LOE r12 r13
..B1.57:                        # Preds ..B1.56
                                # Execution count [1.00e+00]
        mov       edi, offset flat: il0_peep_printf_format_1    #108.5
        call      puts                                          #108.5
                                # LOE r12 r13
..B1.58:                        # Preds ..B1.57
                                # Execution count [1.00e+00]
        mov       edi, offset flat: il0_peep_printf_format_2    #109.5
        call      puts                                          #109.5
                                # LOE r12 r13
..B1.59:                        # Preds ..B1.58
                                # Execution count [1.00e+00]
        mov       edi, offset flat: il0_peep_printf_format_3    #110.5
        call      puts                                          #110.5
                                # LOE r12 r13
..B1.60:                        # Preds ..B1.59
                                # Execution count [1.00e+00]
        vmovsd    xmm0, QWORD PTR [48+rsp]                      #111.5[spill]
        mov       edi, offset flat: .L_2__STRING.4              #111.5
        vmulsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.3[rip] #111.5
        mov       eax, 2                                        #111.5
        vmovsd    xmm1, QWORD PTR .L_2il0floatpacket.2[rip]     #103.49
        vdivsd    xmm1, xmm1, xmm2                              #111.5
..___tag_value_main.39:
#       printf(const char *__restrict__, ...)
        call      printf                                        #111.5
..___tag_value_main.40:
                                # LOE r12 r13
..B1.61:                        # Preds ..B1.60
                                # Execution count [1.00e+00]
        vmovsd    xmm0, QWORD PTR [64+rsp]                      #112.5[spill]
        mov       edi, offset flat: .L_2__STRING.5              #112.5
        vmulsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.3[rip] #112.5
        mov       eax, 2                                        #112.5
        vmovsd    xmm1, QWORD PTR .L_2il0floatpacket.2[rip]     #112.5
        vdivsd    xmm1, xmm1, xmm2                              #112.5
..___tag_value_main.42:
#       printf(const char *__restrict__, ...)
        call      printf                                        #112.5
..___tag_value_main.43:
                                # LOE r12 r13
..B1.62:                        # Preds ..B1.61
                                # Execution count [1.00e+00]
        vmovups   ymm7, YMMWORD PTR [96+rsp]                    #113.39[spill]
        xor       eax, eax                                      #113.39
        vxorps    ymm5, ymm5, ymm5                              #113.39
        vmovdqa   ymm4, ymm5                                    #113.39
        vmovdqa   ymm6, ymm4                                    #113.39
        vmovdqa   ymm3, ymm6                                    #113.39
        vmovdqa   ymm2, ymm3                                    #113.39
        vmovdqa   ymm1, ymm2                                    #113.39
        vmovaps   ymm0, ymm1                                    #113.39
                                # LOE rax r12 r13 ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7
..B1.63:                        # Preds ..B1.63 ..B1.62
                                # Execution count [5.12e+02]
        vmovups   ymm8, YMMWORD PTR [r13+rax*4]                 #113.39
        vmovups   ymm10, YMMWORD PTR [32+r13+rax*4]             #113.39
        vmovups   ymm12, YMMWORD PTR [64+r13+rax*4]             #113.39
        vmovups   ymm14, YMMWORD PTR [96+r13+rax*4]             #113.39
        vsubps    ymm9, ymm8, YMMWORD PTR [r12+rax*4]           #113.39
        vsubps    ymm11, ymm10, YMMWORD PTR [32+r12+rax*4]      #113.39
        vsubps    ymm13, ymm12, YMMWORD PTR [64+r12+rax*4]      #113.39
        vsubps    ymm15, ymm14, YMMWORD PTR [96+r12+rax*4]      #113.39
        vaddps    ymm7, ymm9, ymm7                              #113.39
        vaddps    ymm5, ymm11, ymm5                             #113.39
        vaddps    ymm4, ymm13, ymm4                             #113.39
        vaddps    ymm6, ymm15, ymm6                             #113.39
        vmovups   ymm8, YMMWORD PTR [128+r13+rax*4]             #113.39
        vmovups   ymm10, YMMWORD PTR [160+r13+rax*4]            #113.39
        vmovups   ymm12, YMMWORD PTR [192+r13+rax*4]            #113.39
        vmovups   ymm14, YMMWORD PTR [224+r13+rax*4]            #113.39
        vsubps    ymm9, ymm8, YMMWORD PTR [128+r12+rax*4]       #113.39
        vsubps    ymm11, ymm10, YMMWORD PTR [160+r12+rax*4]     #113.39
        vsubps    ymm13, ymm12, YMMWORD PTR [192+r12+rax*4]     #113.39
        vsubps    ymm15, ymm14, YMMWORD PTR [224+r12+rax*4]     #113.39
        vaddps    ymm3, ymm9, ymm3                              #113.39
        vaddps    ymm2, ymm11, ymm2                             #113.39
        vaddps    ymm1, ymm13, ymm1                             #113.39
        vaddps    ymm0, ymm15, ymm0                             #113.39
        add       rax, 64                                       #113.39
        cmp       rax, 512                                      #113.39
        jb        ..B1.63       # Prob 99%                      #113.39
                                # LOE rax r12 r13 ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7
..B1.64:                        # Preds ..B1.63
                                # Execution count [1.00e+00]
        vmovups   YMMWORD PTR [96+rsp], ymm7                    #[spill]
        mov       edi, offset flat: .L_2__STRING.6              #113.5
        vaddps    ymm4, ymm4, ymm6                              #113.39
        vaddps    ymm2, ymm3, ymm2                              #113.39
        vaddps    ymm5, ymm5, YMMWORD PTR [96+rsp]              #113.39[spill]
        vaddps    ymm0, ymm1, ymm0                              #113.39
        vaddps    ymm1, ymm5, ymm4                              #113.39
        vaddps    ymm3, ymm2, ymm0                              #113.39
        vaddps    ymm6, ymm1, ymm3                              #113.39
        mov       eax, 1                                        #113.5
        vextractf128 xmm7, ymm6, 1                              #113.39
        vaddps    xmm8, xmm6, xmm7                              #113.39
        vmovhlps  xmm9, xmm8, xmm8                              #113.39
        vaddps    xmm10, xmm8, xmm9                             #113.39
        vshufps   xmm11, xmm10, xmm10, 245                      #113.39
        vaddss    xmm0, xmm10, xmm11                            #113.39
        vcvtss2sd xmm0, xmm0, xmm0                              #113.5
        vzeroupper                                              #113.5
..___tag_value_main.47:
#       printf(const char *__restrict__, ...)
        call      printf                                        #113.5
..___tag_value_main.48:
                                # LOE
..B1.65:                        # Preds ..B1.64
                                # Execution count [1.00e+00]
        mov       edi, offset flat: .2.13_2_kmpc_loc_struct_pack.62 #114.12
        xor       eax, eax                                      #114.12
..___tag_value_main.49:
        call      __kmpc_end                                    #114.12
..___tag_value_main.50:
                                # LOE
..B1.66:                        # Preds ..B1.65
                                # Execution count [1.00e+00]
        xor       eax, eax                                      #114.12
        add       rsp, 216                                      #114.12
	.cfi_restore 3
        pop       rbx                                           #114.12
	.cfi_restore 15
        pop       r15                                           #114.12
	.cfi_restore 14
        pop       r14                                           #114.12
	.cfi_restore 13
        pop       r13                                           #114.12
	.cfi_restore 12
        pop       r12                                           #114.12
        mov       rsp, rbp                                      #114.12
        pop       rbp                                           #114.12
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #114.12
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.67:                        # Preds ..B1.22
                                # Execution count [5.12e+01]: Infreq
        xor       r9d, r9d                                      #86.9
        jmp       ..B1.30       # Prob 100%                     #86.9
        .align    16,0x90
                                # LOE rcx rbx rsi r9 r12 r13 r14 r15
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.0:
	.data
	.align 4
	.align 4
.2.13_2_kmpc_loc_struct_pack.51:
	.long	0
	.long	838860802
	.long	0
	.long	0
	.quad	.2.13_2__kmpc_loc_pack.50
	.align 4
.2.13_2__kmpc_loc_pack.50:
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
	.byte	55
	.byte	49
	.byte	59
	.byte	55
	.byte	49
	.byte	59
	.byte	59
	.space 3, 0x00 	# pad
	.align 4
.2.13_2_kmpc_loc_struct_pack.62:
	.long	0
	.long	838860802
	.long	0
	.long	0
	.quad	.2.13_2__kmpc_loc_pack.61
	.align 4
.2.13_2__kmpc_loc_pack.61:
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
	.byte	49
	.byte	49
	.byte	52
	.byte	59
	.byte	49
	.byte	49
	.byte	52
	.byte	59
	.byte	59
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
il0_peep_printf_format_2:
	.long	1718773072
	.long	1634562671
	.long	979723118
	.long	1968310537
	.long	1835627630
	.long	1932009573
	.long	1193281833
	.long	1347374150
	.word	83
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
	.space 25, 0x00 	# pad
	.align 32
il0_peep_printf_format_1:
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
	.space 25, 0x00 	# pad
	.align 32
il0_peep_printf_format_3:
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
..___tag_value_read_timer.66:
..L67:
                                                         #17.21
        sub       rsp, 24                                       #17.21
	.cfi_def_cfa_offset 32
        lea       rdi, QWORD PTR [rsp]                          #19.5
..___tag_value_read_timer.69:
#       ftime(struct timeb *)
        call      ftime                                         #19.5
..___tag_value_read_timer.70:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.2:                         # Preds ..B2.1
                                # Execution count [1.00e+00]
        vxorpd    xmm0, xmm0, xmm0                              #20.40
        vxorpd    xmm1, xmm1, xmm1                              #20.21
        movzx     eax, WORD PTR [8+rsp]                         #20.40
        vcvtsi2sd xmm0, xmm0, eax                               #20.40
        vcvtsi2sd xmm1, xmm1, QWORD PTR [rsp]                   #20.21
        vdivsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.1[rip] #20.53
        vaddsd    xmm0, xmm1, xmm2                              #20.53
        add       rsp, 24                                       #20.53
	.cfi_def_cfa_offset 8
        ret                                                     #20.53
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
.L_2__routine_start_matmul_simd_2:
# -- Begin  matmul_simd
	.text
# mark_begin;
       .align    16,0x90
	.globl matmul_simd
# --- matmul_simd(float *, float *, float *)
matmul_simd:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
..B3.1:                         # Preds ..B3.0
                                # Execution count [2.30e+00]
	.cfi_startproc
..___tag_value_matmul_simd.73:
..L74:
                                                         #33.48
        mov       r10, rsi                                      #33.48
        vxorps    ymm2, ymm2, ymm2                              #40.20
        xor       eax, eax                                      #37.5
        vmovups   ymm1, YMMWORD PTR .L_2il0floatpacket.4[rip]   #43.41
        vpcmpeqd  ymm0, ymm0, ymm0                              #43.41
                                # LOE rdx rbx rbp rdi r10 r12 r13 r14 r15 eax ymm0 ymm1 ymm2
..B3.2:                         # Preds ..B3.6 ..B3.1
                                # Execution count [4.61e+02]
        xor       esi, esi                                      #39.9
        mov       ecx, eax                                      #45.23
        shl       ecx, 9                                        #45.23
        xor       r9d, r9d                                      #38.5
                                # LOE rdx rbx rbp rdi r10 r12 r13 r14 r15 eax ecx esi r9d ymm0 ymm1 ymm2
..B3.3:                         # Preds ..B3.5 ..B3.2
                                # Execution count [2.56e+03]
        vmovdqa   ymm4, ymm2                                    #40.20
        xor       r8d, r8d                                      #42.13
        vmovaps   ymm3, ymm4                                    #40.20
        .align    16,0x90
                                # LOE rdx rbx rbp rdi r8 r10 r12 r13 r14 r15 eax ecx esi r9d ymm0 ymm1 ymm2 ymm3 ymm4
..B3.4:                         # Preds ..B3.4 ..B3.3
                                # Execution count [1.31e+06]
        mov       r11d, r8d                                     #43.41
        add       r11d, r9d                                     #43.51
        movsxd    r11, r11d                                     #43.51
        vxorps    ymm7, ymm7, ymm7                              #43.41
        vmovdqa   ymm5, ymm0                                    #43.41
        vxorps    ymm8, ymm8, ymm8                              #43.41
        vmovdqa   ymm6, ymm0                                    #43.41
        lea       r11, QWORD PTR [r10+r11*4]                    #43.41
        vgatherdps ymm7, DWORD PTR [r11+ymm1*8], ymm5           #43.41
        vgatherdps ymm8, DWORD PTR [16384+r11+ymm1*8], ymm6     #43.41
        vbroadcastss ymm9, DWORD PTR [rdi+r8*4]                 #43.26
        inc       r8                                            #42.13
        vfmadd231ps ymm4, ymm7, ymm9                            #43.17
        vfmadd231ps ymm3, ymm8, ymm9                            #43.17
        cmp       r8, 512                                       #42.13
        jb        ..B3.4        # Prob 99%                      #42.13
                                # LOE rdx rbx rbp rdi r8 r10 r12 r13 r14 r15 eax ecx esi r9d ymm0 ymm1 ymm2 ymm3 ymm4
..B3.5:                         # Preds ..B3.4
                                # Execution count [2.56e+03]
        add       r9d, 8192                                     #39.9
        lea       r8d, DWORD PTR [rcx+rsi]                      #45.23
        add       esi, 16                                       #39.9
        vmovups   YMMWORD PTR [rdx+r8*4], ymm4                  #45.13
        vmovups   YMMWORD PTR [32+rdx+r8*4], ymm3               #45.13
        cmp       esi, 512                                      #39.9
        jb        ..B3.3        # Prob 82%                      #39.9
                                # LOE rdx rbx rbp rdi r10 r12 r13 r14 r15 eax ecx esi r9d ymm0 ymm1 ymm2
..B3.6:                         # Preds ..B3.5
                                # Execution count [4.61e+02]
        inc       eax                                           #37.5
        add       rdi, 2048                                     #37.5
        cmp       eax, 512                                      #37.5
        jb        ..B3.2        # Prob 99%                      #37.5
                                # LOE rdx rbx rbp rdi r10 r12 r13 r14 r15 eax ymm0 ymm1 ymm2
..B3.7:                         # Preds ..B3.6
                                # Execution count [1.00e+00]
        vzeroupper                                              #48.1
        ret                                                     #48.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	matmul_simd,@function
	.size	matmul_simd,.-matmul_simd
..LNmatmul_simd.2:
	.data
# -- End  matmul_simd
	.text
.L_2__routine_start_matmul_serial_3:
# -- Begin  matmul_serial
	.text
# mark_begin;
       .align    16,0x90
	.globl matmul_serial
# --- matmul_serial(float *, float *, float *)
matmul_serial:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
..B4.1:                         # Preds ..B4.0
                                # Execution count [0.00e+00]
	.cfi_startproc
..___tag_value_matmul_serial.76:
..L77:
                                                         #51.50
        push      r14                                           #51.50
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
        push      r15                                           #51.50
	.cfi_def_cfa_offset 24
	.cfi_offset 15, -24
        push      rbx                                           #51.50
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
        mov       rcx, rdx                                      #51.50
        lea       rax, QWORD PTR [-4+rdi]                       #58.26
        lea       rdx, QWORD PTR [1048575+rcx]                  #55.9
        cmp       rdx, rax                                      #55.9
        jbe       ..B4.3        # Prob 50%                      #55.9
                                # LOE rdx rcx rbx rbp rsi rdi r12 r13 r14 r15
..B4.2:                         # Preds ..B4.1
                                # Execution count [0.00e+00]
        lea       rax, QWORD PTR [1046527+rdi]                  #55.9
        cmp       rcx, rax                                      #55.9
        jb        ..B4.12       # Prob 50%                      #55.9
                                # LOE rdx rcx rbx rbp rsi rdi r12 r13 r14 r15
..B4.3:                         # Preds ..B4.1 ..B4.2
                                # Execution count [0.00e+00]
        lea       rax, QWORD PTR [-2048+rsi]                    #58.41
        cmp       rdx, rax                                      #55.9
        jbe       ..B4.5        # Prob 50%                      #55.9
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15
..B4.4:                         # Preds ..B4.3
                                # Execution count [0.00e+00]
        lea       rax, QWORD PTR [-1+rsi]                       #55.9
        cmp       rcx, rax                                      #55.9
        jb        ..B4.12       # Prob 50%                      #55.9
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15
..B4.5:                         # Preds ..B4.3 ..B4.4
                                # Execution count [1.00e+00]
        vmovups   ymm9, YMMWORD PTR .L_2il0floatpacket.4[rip]   #54.5
        xor       edx, edx                                      #54.5
        vxorps    ymm8, ymm8, ymm8                              #54.5
        xor       eax, eax                                      #54.5
        vpcmpeqd  ymm0, ymm0, ymm0                              #54.5
                                # LOE rax rcx rbp rsi rdi r12 r13 edx ymm0 ymm8 ymm9
..B4.6:                         # Preds ..B4.10 ..B4.5
                                # Execution count [5.12e+02]
        xor       r8d, r8d                                      #55.9
        lea       r14, QWORD PTR [rdi+rax]                      #58.26
        lea       r9, QWORD PTR [rcx+rax]                       #60.13
                                # LOE rax rcx rbp rsi rdi r8 r9 r12 r13 r14 edx ymm0 ymm8 ymm9
..B4.7:                         # Preds ..B4.9 ..B4.6
                                # Execution count [2.62e+05]
        vmovdqa   ymm7, ymm8                                    #53.5
        xor       r11d, r11d                                    #57.13
        vmovdqa   ymm1, ymm7                                    #53.5
        lea       r10, QWORD PTR [rsi+r8*4]                     #58.41
        vmovdqa   ymm6, ymm1                                    #53.5
        xor       ebx, ebx                                      #57.13
        vmovdqa   ymm5, ymm6                                    #53.5
        vmovaps   ymm4, ymm5                                    #53.5
        vmovaps   ymm3, ymm4                                    #53.5
        vmovaps   ymm2, ymm3                                    #53.5
        vmovaps   ymm10, ymm2                                   #53.5
                                # LOE rax rcx rbx rbp rsi rdi r8 r9 r10 r11 r12 r13 r14 edx ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7 ymm8 ymm9 ymm10
..B4.8:                         # Preds ..B4.8 ..B4.7
                                # Execution count [1.34e+08]
        vmovdqa   ymm11, ymm0                                   #58.41
        lea       r15, QWORD PTR [r10+rbx]                      #58.41
        vxorps    ymm12, ymm12, ymm12                           #58.41
        vgatherdps ymm12, DWORD PTR [r15+ymm9*8], ymm11         #58.41
        lea       r15, QWORD PTR [16384+rbx+r10]                #58.41
        vxorps    ymm14, ymm14, ymm14                           #58.41
        vmovdqa   ymm13, ymm0                                   #58.41
        vgatherdps ymm14, DWORD PTR [r15+ymm9*8], ymm13         #58.41
        lea       r15, QWORD PTR [32768+rbx+r10]                #58.41
        vfmadd231ps ymm7, ymm12, YMMWORD PTR [r14+r11*4]        #58.17
        vfmadd231ps ymm1, ymm14, YMMWORD PTR [32+r14+r11*4]     #58.17
        vxorps    ymm11, ymm11, ymm11                           #58.41
        vmovdqa   ymm15, ymm0                                   #58.41
        vgatherdps ymm11, DWORD PTR [r15+ymm9*8], ymm15         #58.41
        lea       r15, QWORD PTR [49152+rbx+r10]                #58.41
        vxorps    ymm13, ymm13, ymm13                           #58.41
        vmovdqa   ymm12, ymm0                                   #58.41
        vgatherdps ymm13, DWORD PTR [r15+ymm9*8], ymm12         #58.41
        lea       r15, QWORD PTR [65536+rbx+r10]                #58.41
        vfmadd231ps ymm6, ymm11, YMMWORD PTR [64+r14+r11*4]     #58.17
        vfmadd231ps ymm5, ymm13, YMMWORD PTR [96+r14+r11*4]     #58.17
        vxorps    ymm11, ymm11, ymm11                           #58.41
        vmovdqa   ymm14, ymm0                                   #58.41
        vgatherdps ymm11, DWORD PTR [r15+ymm9*8], ymm14         #58.41
        lea       r15, QWORD PTR [81920+rbx+r10]                #58.41
        vxorps    ymm13, ymm13, ymm13                           #58.41
        vmovdqa   ymm12, ymm0                                   #58.41
        vgatherdps ymm13, DWORD PTR [r15+ymm9*8], ymm12         #58.41
        lea       r15, QWORD PTR [98304+rbx+r10]                #58.41
        vfmadd231ps ymm4, ymm11, YMMWORD PTR [128+r14+r11*4]    #58.17
        vfmadd231ps ymm3, ymm13, YMMWORD PTR [160+r14+r11*4]    #58.17
        vxorps    ymm11, ymm11, ymm11                           #58.41
        vmovdqa   ymm15, ymm0                                   #58.41
        vgatherdps ymm11, DWORD PTR [r15+ymm9*8], ymm15         #58.41
        lea       r15, QWORD PTR [114688+rbx+r10]               #58.41
        vxorps    ymm13, ymm13, ymm13                           #58.41
        add       rbx, 131072                                   #57.13
        vmovdqa   ymm12, ymm0                                   #58.41
        vgatherdps ymm13, DWORD PTR [r15+ymm9*8], ymm12         #58.41
        vfmadd231ps ymm2, ymm11, YMMWORD PTR [192+r14+r11*4]    #58.17
        vfmadd231ps ymm10, ymm13, YMMWORD PTR [224+r14+r11*4]   #58.17
        add       r11, 64                                       #57.13
        cmp       r11, 512                                      #57.13
        jb        ..B4.8        # Prob 99%                      #57.13
                                # LOE rax rcx rbx rbp rsi rdi r8 r9 r10 r11 r12 r13 r14 edx ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7 ymm8 ymm9 ymm10
..B4.9:                         # Preds ..B4.8
                                # Execution count [2.62e+05]
        vaddps    ymm1, ymm7, ymm1                              #53.5
        vaddps    ymm5, ymm6, ymm5                              #53.5
        vaddps    ymm3, ymm4, ymm3                              #53.5
        vaddps    ymm2, ymm2, ymm10                             #53.5
        vaddps    ymm4, ymm1, ymm5                              #53.5
        vaddps    ymm6, ymm3, ymm2                              #53.5
        vaddps    ymm7, ymm4, ymm6                              #53.5
        vextractf128 xmm10, ymm7, 1                             #53.5
        vaddps    xmm11, xmm7, xmm10                            #53.5
        vmovhlps  xmm12, xmm11, xmm11                           #53.5
        vaddps    xmm13, xmm11, xmm12                           #53.5
        vshufps   xmm14, xmm13, xmm13, 245                      #53.5
        vaddss    xmm15, xmm13, xmm14                           #53.5
        vmovss    DWORD PTR [r9+r8*4], xmm15                    #60.13
        inc       r8                                            #55.9
        cmp       r8, 512                                       #55.9
        jb        ..B4.7        # Prob 99%                      #55.9
                                # LOE rax rcx rbp rsi rdi r8 r9 r12 r13 r14 edx ymm0 ymm8 ymm9
..B4.10:                        # Preds ..B4.9
                                # Execution count [5.12e+02]
        inc       edx                                           #54.5
        add       rax, 2048                                     #54.5
        cmp       edx, 512                                      #54.5
        jb        ..B4.6        # Prob 99%                      #54.5
        jmp       ..B4.19       # Prob 100%                     #54.5
                                # LOE rax rcx rbp rsi rdi r12 r13 edx ymm0 ymm8 ymm9
..B4.12:                        # Preds ..B4.2 ..B4.4
                                # Execution count [1.00e+00]
        vmovups   ymm9, YMMWORD PTR .L_2il0floatpacket.4[rip]   #54.5
        xor       eax, eax                                      #54.5
        vxorps    ymm8, ymm8, ymm8                              #54.5
        xor       edx, edx                                      #54.5
        vpcmpeqd  ymm0, ymm0, ymm0                              #54.5
                                # LOE rdx rcx rbp rsi rdi r12 r13 eax ymm0 ymm8 ymm9
..B4.13:                        # Preds ..B4.17 ..B4.12
                                # Execution count [5.12e+02]
        xor       r8d, r8d                                      #55.9
        lea       r14, QWORD PTR [rdi+rdx]                      #58.26
        lea       r9, QWORD PTR [rcx+rdx]                       #60.13
                                # LOE rdx rcx rbp rsi rdi r8 r9 r12 r13 r14 eax ymm0 ymm8 ymm9
..B4.14:                        # Preds ..B4.16 ..B4.13
                                # Execution count [2.62e+05]
        vmovdqa   ymm7, ymm8                                    #53.5
        xor       r11d, r11d                                    #57.13
        vmovdqa   ymm1, ymm7                                    #53.5
        lea       r10, QWORD PTR [rsi+r8*4]                     #58.41
        vmovdqa   ymm6, ymm1                                    #53.5
        xor       ebx, ebx                                      #57.13
        vmovdqa   ymm5, ymm6                                    #53.5
        vmovaps   ymm4, ymm5                                    #53.5
        vmovaps   ymm3, ymm4                                    #53.5
        vmovaps   ymm2, ymm3                                    #53.5
        vmovaps   ymm10, ymm2                                   #53.5
                                # LOE rdx rcx rbx rbp rsi rdi r8 r9 r10 r11 r12 r13 r14 eax ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7 ymm8 ymm9 ymm10
..B4.15:                        # Preds ..B4.15 ..B4.14
                                # Execution count [1.34e+08]
        vmovdqa   ymm11, ymm0                                   #58.41
        lea       r15, QWORD PTR [r10+rbx]                      #58.41
        vxorps    ymm12, ymm12, ymm12                           #58.41
        vgatherdps ymm12, DWORD PTR [r15+ymm9*8], ymm11         #58.41
        lea       r15, QWORD PTR [16384+rbx+r10]                #58.41
        vxorps    ymm14, ymm14, ymm14                           #58.41
        vmovdqa   ymm13, ymm0                                   #58.41
        vgatherdps ymm14, DWORD PTR [r15+ymm9*8], ymm13         #58.41
        lea       r15, QWORD PTR [32768+rbx+r10]                #58.41
        vfmadd231ps ymm7, ymm12, YMMWORD PTR [r14+r11*4]        #58.17
        vfmadd231ps ymm1, ymm14, YMMWORD PTR [32+r14+r11*4]     #58.17
        vxorps    ymm11, ymm11, ymm11                           #58.41
        vmovdqa   ymm15, ymm0                                   #58.41
        vgatherdps ymm11, DWORD PTR [r15+ymm9*8], ymm15         #58.41
        lea       r15, QWORD PTR [49152+rbx+r10]                #58.41
        vxorps    ymm13, ymm13, ymm13                           #58.41
        vmovdqa   ymm12, ymm0                                   #58.41
        vgatherdps ymm13, DWORD PTR [r15+ymm9*8], ymm12         #58.41
        lea       r15, QWORD PTR [65536+rbx+r10]                #58.41
        vfmadd231ps ymm6, ymm11, YMMWORD PTR [64+r14+r11*4]     #58.17
        vfmadd231ps ymm5, ymm13, YMMWORD PTR [96+r14+r11*4]     #58.17
        vxorps    ymm11, ymm11, ymm11                           #58.41
        vmovdqa   ymm14, ymm0                                   #58.41
        vgatherdps ymm11, DWORD PTR [r15+ymm9*8], ymm14         #58.41
        lea       r15, QWORD PTR [81920+rbx+r10]                #58.41
        vxorps    ymm13, ymm13, ymm13                           #58.41
        vmovdqa   ymm12, ymm0                                   #58.41
        vgatherdps ymm13, DWORD PTR [r15+ymm9*8], ymm12         #58.41
        lea       r15, QWORD PTR [98304+rbx+r10]                #58.41
        vfmadd231ps ymm4, ymm11, YMMWORD PTR [128+r14+r11*4]    #58.17
        vfmadd231ps ymm3, ymm13, YMMWORD PTR [160+r14+r11*4]    #58.17
        vxorps    ymm11, ymm11, ymm11                           #58.41
        vmovdqa   ymm15, ymm0                                   #58.41
        vgatherdps ymm11, DWORD PTR [r15+ymm9*8], ymm15         #58.41
        lea       r15, QWORD PTR [114688+rbx+r10]               #58.41
        vxorps    ymm13, ymm13, ymm13                           #58.41
        add       rbx, 131072                                   #57.13
        vmovdqa   ymm12, ymm0                                   #58.41
        vgatherdps ymm13, DWORD PTR [r15+ymm9*8], ymm12         #58.41
        vfmadd231ps ymm2, ymm11, YMMWORD PTR [192+r14+r11*4]    #58.17
        vfmadd231ps ymm10, ymm13, YMMWORD PTR [224+r14+r11*4]   #58.17
        add       r11, 64                                       #57.13
        cmp       r11, 512                                      #57.13
        jb        ..B4.15       # Prob 99%                      #57.13
                                # LOE rdx rcx rbx rbp rsi rdi r8 r9 r10 r11 r12 r13 r14 eax ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7 ymm8 ymm9 ymm10
..B4.16:                        # Preds ..B4.15
                                # Execution count [2.62e+05]
        vaddps    ymm1, ymm7, ymm1                              #53.5
        vaddps    ymm5, ymm6, ymm5                              #53.5
        vaddps    ymm3, ymm4, ymm3                              #53.5
        vaddps    ymm2, ymm2, ymm10                             #53.5
        vaddps    ymm4, ymm1, ymm5                              #53.5
        vaddps    ymm6, ymm3, ymm2                              #53.5
        vaddps    ymm7, ymm4, ymm6                              #53.5
        vextractf128 xmm10, ymm7, 1                             #53.5
        vaddps    xmm11, xmm7, xmm10                            #53.5
        vmovhlps  xmm12, xmm11, xmm11                           #53.5
        vaddps    xmm13, xmm11, xmm12                           #53.5
        vshufps   xmm14, xmm13, xmm13, 245                      #53.5
        vaddss    xmm15, xmm13, xmm14                           #53.5
        vmovss    DWORD PTR [r9+r8*4], xmm15                    #60.13
        inc       r8                                            #55.9
        cmp       r8, 512                                       #55.9
        jb        ..B4.14       # Prob 99%                      #55.9
                                # LOE rdx rcx rbp rsi rdi r8 r9 r12 r13 r14 eax ymm0 ymm8 ymm9
..B4.17:                        # Preds ..B4.16
                                # Execution count [5.12e+02]
        inc       eax                                           #54.5
        add       rdx, 2048                                     #54.5
        cmp       eax, 512                                      #54.5
        jb        ..B4.13       # Prob 99%                      #54.5
                                # LOE rdx rcx rbp rsi rdi r12 r13 eax ymm0 ymm8 ymm9
..B4.19:                        # Preds ..B4.17 ..B4.10
                                # Execution count [1.00e+00]
        vzeroupper                                              #63.1
	.cfi_restore 3
        pop       rbx                                           #63.1
	.cfi_def_cfa_offset 24
	.cfi_restore 15
        pop       r15                                           #63.1
	.cfi_def_cfa_offset 16
	.cfi_restore 14
        pop       r14                                           #63.1
	.cfi_def_cfa_offset 8
        ret                                                     #63.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	matmul_serial,@function
	.size	matmul_serial,.-matmul_serial
..LNmatmul_serial.3:
	.data
# -- End  matmul_serial
	.text
.L_2__routine_start_check_4:
# -- Begin  check
	.text
# mark_begin;
       .align    16,0x90
	.globl check
# --- check(float *, float *)
check:
# parameter 1: rdi
# parameter 2: rsi
..B5.1:                         # Preds ..B5.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_check.91:
..L92:
                                                         #65.32
        xor       eax, eax                                      #67.5
        vxorps    ymm6, ymm6, ymm6                              #66.22
        vmovdqa   ymm5, ymm6                                    #66.22
        vmovdqa   ymm4, ymm5                                    #66.22
        vmovdqa   ymm7, ymm4                                    #66.22
        vmovdqa   ymm3, ymm7                                    #66.22
        vmovdqa   ymm2, ymm3                                    #66.22
        vmovaps   ymm1, ymm2                                    #66.22
        vmovaps   ymm0, ymm1                                    #66.22
                                # LOE rax rbx rbp rsi rdi r12 r13 r14 r15 ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7
..B5.2:                         # Preds ..B5.2 ..B5.1
                                # Execution count [5.12e+02]
        vmovups   ymm8, YMMWORD PTR [rdi+rax*4]                 #67.44
        vmovups   ymm10, YMMWORD PTR [32+rdi+rax*4]             #67.44
        vmovups   ymm12, YMMWORD PTR [64+rdi+rax*4]             #67.44
        vmovups   ymm14, YMMWORD PTR [96+rdi+rax*4]             #67.44
        vsubps    ymm9, ymm8, YMMWORD PTR [rsi+rax*4]           #67.30
        vsubps    ymm11, ymm10, YMMWORD PTR [32+rsi+rax*4]      #67.30
        vsubps    ymm13, ymm12, YMMWORD PTR [64+rsi+rax*4]      #67.30
        vsubps    ymm15, ymm14, YMMWORD PTR [96+rsi+rax*4]      #67.30
        vaddps    ymm6, ymm9, ymm6                              #67.30
        vaddps    ymm5, ymm11, ymm5                             #67.30
        vaddps    ymm4, ymm13, ymm4                             #67.30
        vaddps    ymm7, ymm15, ymm7                             #67.30
        vmovups   ymm8, YMMWORD PTR [128+rdi+rax*4]             #67.44
        vmovups   ymm10, YMMWORD PTR [160+rdi+rax*4]            #67.44
        vmovups   ymm12, YMMWORD PTR [192+rdi+rax*4]            #67.44
        vmovups   ymm14, YMMWORD PTR [224+rdi+rax*4]            #67.44
        vsubps    ymm9, ymm8, YMMWORD PTR [128+rsi+rax*4]       #67.30
        vsubps    ymm11, ymm10, YMMWORD PTR [160+rsi+rax*4]     #67.30
        vsubps    ymm13, ymm12, YMMWORD PTR [192+rsi+rax*4]     #67.30
        vsubps    ymm15, ymm14, YMMWORD PTR [224+rsi+rax*4]     #67.30
        vaddps    ymm3, ymm9, ymm3                              #67.30
        vaddps    ymm2, ymm11, ymm2                             #67.30
        vaddps    ymm1, ymm13, ymm1                             #67.30
        vaddps    ymm0, ymm15, ymm0                             #67.30
        add       rax, 64                                       #67.5
        cmp       rax, 512                                      #67.5
        jb        ..B5.2        # Prob 99%                      #67.5
                                # LOE rax rbx rbp rsi rdi r12 r13 r14 r15 ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7
..B5.3:                         # Preds ..B5.2
                                # Execution count [1.00e+00]
        vaddps    ymm5, ymm6, ymm5                              #66.22
        vaddps    ymm4, ymm4, ymm7                              #66.22
        vaddps    ymm2, ymm3, ymm2                              #66.22
        vaddps    ymm0, ymm1, ymm0                              #66.22
        vaddps    ymm1, ymm5, ymm4                              #66.22
        vaddps    ymm3, ymm2, ymm0                              #66.22
        vaddps    ymm6, ymm1, ymm3                              #66.22
        vextractf128 xmm7, ymm6, 1                              #66.22
        vaddps    xmm8, xmm6, xmm7                              #66.22
        vmovhlps  xmm9, xmm8, xmm8                              #66.22
        vaddps    xmm10, xmm8, xmm9                             #66.22
        vshufps   xmm11, xmm10, xmm10, 245                      #66.22
        vaddss    xmm0, xmm10, xmm11                            #66.22
        vzeroupper                                              #68.12
        ret                                                     #68.12
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	check,@function
	.size	check,.-check
..LNcheck.4:
	.data
# -- End  check
	.text
.L_2__routine_start_init_5:
# -- Begin  init
	.text
# mark_begin;
       .align    16,0x90
	.globl init
# --- init(float *)
init:
# parameter 1: rdi
..B6.1:                         # Preds ..B6.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_init.94:
..L95:
                                                         #23.21
        push      r13                                           #23.21
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
        push      r14                                           #23.21
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
        push      r15                                           #23.21
	.cfi_def_cfa_offset 32
	.cfi_offset 15, -32
        push      rbx                                           #23.21
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
        push      rbp                                           #23.21
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
        xor       edx, edx                                      #25.10
        xor       eax, eax                                      #25.14
        mov       ebp, edx                                      #25.14
        mov       rbx, rax                                      #25.14
        mov       r14, rdi                                      #25.14
                                # LOE rbx r12 r14 ebp
..B6.2:                         # Preds ..B6.5 ..B6.1
                                # Execution count [5.12e+02]
        xor       r15d, r15d                                    #26.14
        lea       r13, QWORD PTR [r14+rbx*4]                    #27.13
                                # LOE rbx r12 r13 r14 r15 ebp
..B6.3:                         # Preds ..B6.4 ..B6.2
                                # Execution count [2.62e+05]
#       rand(void)
        call      rand                                          #27.31
                                # LOE rbx r12 r13 r14 r15 eax ebp
..B6.4:                         # Preds ..B6.3
                                # Execution count [2.62e+05]
        vxorps    xmm0, xmm0, xmm0                              #27.31
        vcvtsi2ss xmm0, xmm0, eax                               #27.31
        vdivss    xmm1, xmm0, DWORD PTR .L_2il0floatpacket.0[rip] #27.38
        vmovss    DWORD PTR [r13+r15*4], xmm1                   #27.13
        inc       r15                                           #26.28
        cmp       r15, 512                                      #26.25
        jl        ..B6.3        # Prob 99%                      #26.25
                                # LOE rbx r12 r13 r14 r15 ebp
..B6.5:                         # Preds ..B6.4
                                # Execution count [5.12e+02]
        inc       ebp                                           #25.24
        add       rbx, 512                                      #25.24
        cmp       ebp, 512                                      #25.21
        jl        ..B6.2        # Prob 99%                      #25.21
                                # LOE rbx r12 r14 ebp
..B6.6:                         # Preds ..B6.5
                                # Execution count [1.00e+00]
	.cfi_restore 6
        pop       rbp                                           #30.1
	.cfi_def_cfa_offset 40
	.cfi_restore 3
        pop       rbx                                           #30.1
	.cfi_def_cfa_offset 32
	.cfi_restore 15
        pop       r15                                           #30.1
	.cfi_def_cfa_offset 24
	.cfi_restore 14
        pop       r14                                           #30.1
	.cfi_def_cfa_offset 16
	.cfi_restore 13
        pop       r13                                           #30.1
	.cfi_def_cfa_offset 8
        ret                                                     #30.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	init,@function
	.size	init,.-init
..LNinit.5:
	.data
# -- End  init
	.section .rodata, "a"
	.align 32
	.align 32
.L_2il0floatpacket.4:
	.long	0x00000000,0x00000100,0x00000200,0x00000300,0x00000400,0x00000500,0x00000600,0x00000700
	.type	.L_2il0floatpacket.4,@object
	.size	.L_2il0floatpacket.4,32
	.align 8
.L_2il0floatpacket.1:
	.long	0x00000000,0x408f4000
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,8
	.align 8
.L_2il0floatpacket.2:
	.long	0x00000000,0x41e40000
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
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.1:
	.long	1952533769
	.long	544762226
	.long	1953264973
	.long	1768714345
	.long	1769234787
	.long	540700271
	.long	1565416257
	.long	542985819
	.long	1531060266
	.long	1314610510
	.long	540876893
	.long	1565416259
	.long	744312411
	.long	624774688
	.word	2660
	.byte	0
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,59
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.4:
	.long	1836343661
	.long	1868524661
	.long	154824813
	.long	1714693385
	.long	1714693385
	.word	10
	.type	.L_2__STRING.4,@object
	.size	.L_2__STRING.4,22
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.5:
	.long	1836343661
	.long	1935633525
	.long	1634300517
	.long	151599724
	.long	157692965
	.long	174470181
	.byte	0
	.type	.L_2__STRING.5,@object
	.size	.L_2__STRING.5,25
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.6:
	.long	1920102211
	.long	1853121381
	.long	544437093
	.long	1667590243
	.long	622869099
	.word	2662
	.byte	0
	.type	.L_2__STRING.6,@object
	.size	.L_2__STRING.6,23
	.data
	.section .note.GNU-stack, ""
# End
