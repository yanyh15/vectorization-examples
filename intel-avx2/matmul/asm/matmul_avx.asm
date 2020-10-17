# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.1.0.166 Build 20191121";
# mark_description "-o asm/matmul_avx.asm -O2 -mavx2 -xCORE_AVX2 -S -masm=intel";
	.intel_syntax noprefix
	.file "matmul_avx.c"
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
                                                          #113.34
        push      rbp                                           #113.34
	.cfi_def_cfa_offset 16
        mov       rbp, rsp                                      #113.34
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -128                                     #113.34
        push      r12                                           #113.34
        push      r13                                           #113.34
        push      r14                                           #113.34
        push      r15                                           #113.34
        push      rbx                                           #113.34
        sub       rsp, 2136                                     #113.34
        mov       edi, 3                                        #113.34
        mov       esi, 10330111                                 #113.34
        call      __intel_new_feature_proc_init                 #113.34
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.83:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        vstmxcsr  DWORD PTR [rsp]                               #113.34
        mov       edi, 1048576                                  #114.16
        or        DWORD PTR [rsp], 32832                        #113.34
        vldmxcsr  DWORD PTR [rsp]                               #113.34
#       malloc(size_t)
        call      malloc                                        #114.16
                                # LOE rax
..B1.82:                        # Preds ..B1.83
                                # Execution count [1.00e+00]
        mov       r14, rax                                      #114.16
                                # LOE r14
..B1.2:                         # Preds ..B1.82
                                # Execution count [1.00e+00]
        mov       edi, 1048576                                  #115.16
#       malloc(size_t)
        call      malloc                                        #115.16
                                # LOE rax r14
..B1.84:                        # Preds ..B1.2
                                # Execution count [1.00e+00]
        mov       r12, rax                                      #115.16
                                # LOE r12 r14
..B1.3:                         # Preds ..B1.84
                                # Execution count [1.00e+00]
        mov       edi, 1048576                                  #116.20
#       malloc(size_t)
        call      malloc                                        #116.20
                                # LOE rax r12 r14
..B1.85:                        # Preds ..B1.3
                                # Execution count [1.00e+00]
        mov       r13, rax                                      #116.20
                                # LOE r12 r13 r14
..B1.4:                         # Preds ..B1.85
                                # Execution count [1.00e+00]
        mov       edi, 1048576                                  #117.23
#       malloc(size_t)
        call      malloc                                        #117.23
                                # LOE rax r12 r13 r14
..B1.86:                        # Preds ..B1.4
                                # Execution count [1.00e+00]
        mov       rbx, rax                                      #117.23
                                # LOE rbx r12 r13 r14
..B1.5:                         # Preds ..B1.86
                                # Execution count [1.00e+00]
        xor       edi, edi                                      #119.11
#       time(time_t *)
        call      time                                          #119.11
                                # LOE rax rbx r12 r13 r14
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.00e+00]
        mov       edi, eax                                      #119.5
#       srand(unsigned int)
        call      srand                                         #119.5
                                # LOE rbx r12 r13 r14
..B1.7:                         # Preds ..B1.6
                                # Execution count [1.00e+00]
        xor       eax, eax                                      #120.5
        xor       r15d, r15d                                    #120.5
        mov       QWORD PTR [rsp], rbx                          #120.5[spill]
        mov       ebx, eax                                      #120.5
        mov       QWORD PTR [8+rsp], r13                        #120.5[spill]
        mov       QWORD PTR [32+rsp], r12                       #120.5[spill]
                                # LOE r14 r15 ebx
..B1.8:                         # Preds ..B1.11 ..B1.7
                                # Execution count [5.12e+02]
        xor       r13d, r13d                                    #120.5
        lea       r12, QWORD PTR [r14+r15*4]                    #120.5
                                # LOE r12 r13 r14 r15 ebx
..B1.9:                         # Preds ..B1.10 ..B1.8
                                # Execution count [2.62e+05]
#       rand(void)
        call      rand                                          #120.5
                                # LOE r12 r13 r14 r15 eax ebx
..B1.10:                        # Preds ..B1.9
                                # Execution count [2.62e+05]
        vxorps    xmm0, xmm0, xmm0                              #120.5
        vcvtsi2ss xmm0, xmm0, eax                               #120.5
        vdivss    xmm1, xmm0, DWORD PTR .L_2il0floatpacket.0[rip] #120.5
        vmovss    DWORD PTR [r12+r13*4], xmm1                   #120.5
        inc       r13                                           #120.5
        cmp       r13, 512                                      #120.5
        jl        ..B1.9        # Prob 99%                      #120.5
                                # LOE r12 r13 r14 r15 ebx
..B1.11:                        # Preds ..B1.10
                                # Execution count [5.12e+02]
        inc       ebx                                           #120.5
        add       r15, 512                                      #120.5
        cmp       ebx, 512                                      #120.5
        jl        ..B1.8        # Prob 99%                      #120.5
                                # LOE r14 r15 ebx
..B1.12:                        # Preds ..B1.11
                                # Execution count [1.00e+00]
        xor       eax, eax                                      #121.5
        xor       r15d, r15d                                    #121.5
        mov       ebx, eax                                      #121.5
        mov       r12, QWORD PTR [32+rsp]                       #[spill]
        mov       QWORD PTR [16+rsp], r14                       #121.5[spill]
                                # LOE r12 r15 ebx
..B1.13:                        # Preds ..B1.16 ..B1.12
                                # Execution count [5.12e+02]
        xor       r14d, r14d                                    #121.5
        lea       r13, QWORD PTR [r12+r15*4]                    #121.5
                                # LOE r12 r13 r14 r15 ebx
..B1.14:                        # Preds ..B1.15 ..B1.13
                                # Execution count [2.62e+05]
#       rand(void)
        call      rand                                          #121.5
                                # LOE r12 r13 r14 r15 eax ebx
..B1.15:                        # Preds ..B1.14
                                # Execution count [2.62e+05]
        vxorps    xmm0, xmm0, xmm0                              #121.5
        vcvtsi2ss xmm0, xmm0, eax                               #121.5
        vdivss    xmm1, xmm0, DWORD PTR .L_2il0floatpacket.0[rip] #121.5
        vmovss    DWORD PTR [r13+r14*4], xmm1                   #121.5
        inc       r14                                           #121.5
        cmp       r14, 512                                      #121.5
        jl        ..B1.14       # Prob 99%                      #121.5
                                # LOE r12 r13 r14 r15 ebx
..B1.16:                        # Preds ..B1.15
                                # Execution count [5.12e+02]
        inc       ebx                                           #121.5
        add       r15, 512                                      #121.5
        cmp       ebx, 512                                      #121.5
        jl        ..B1.13       # Prob 99%                      #121.5
                                # LOE r12 r15 ebx
..B1.17:                        # Preds ..B1.16
                                # Execution count [1.00e+00]
        mov       edi, 1048576                                  #123.17
        mov       rbx, QWORD PTR [rsp]                          #[spill]
        mov       r13, QWORD PTR [8+rsp]                        #[spill]
        mov       r14, QWORD PTR [16+rsp]                       #[spill]
#       malloc(size_t)
        call      malloc                                        #123.17
                                # LOE rax rbx r12 r13 r14
..B1.90:                        # Preds ..B1.17
                                # Execution count [1.00e+00]
        mov       r15, rax                                      #123.17
                                # LOE rbx r12 r13 r14 r15
..B1.18:                        # Preds ..B1.90
                                # Execution count [1.00e+00]
        xor       esi, esi                                      #124.5
        mov       rdx, r15                                      #124.5
                                # LOE rdx rbx rsi r12 r13 r14 r15
..B1.19:                        # Preds ..B1.32 ..B1.18
                                # Execution count [5.12e+02]
        mov       r9, rdx                                       #125.9
        and       r9, 15                                        #125.9
        test      r9d, r9d                                      #125.9
        je        ..B1.24       # Prob 50%                      #125.9
                                # LOE rdx rbx rsi r12 r13 r14 r15 r9d
..B1.20:                        # Preds ..B1.19
                                # Execution count [5.12e+02]
        test      r9d, 3                                        #125.9
        jne       ..B1.77       # Prob 10%                      #125.9
                                # LOE rdx rbx rsi r12 r13 r14 r15 r9d
..B1.21:                        # Preds ..B1.20
                                # Execution count [5.12e+02]
        neg       r9d                                           #125.9
        xor       r8d, r8d                                      #125.9
        add       r9d, 16                                       #125.9
        lea       rax, QWORD PTR [r12+rsi*4]                    #126.30
        shr       r9d, 2                                        #125.9
        xor       edi, edi                                      #125.9
        mov       ecx, r9d                                      #125.9
                                # LOE rax rdx rcx rbx rsi rdi r8 r12 r13 r14 r15 r9d
..B1.22:                        # Preds ..B1.22 ..B1.21
                                # Execution count [2.62e+05]
        mov       r10d, DWORD PTR [rdi+rax]                     #126.30
        add       rdi, 2048                                     #125.9
        mov       DWORD PTR [rdx+r8*4], r10d                    #126.13
        inc       r8                                            #125.9
        cmp       r8, rcx                                       #125.9
        jb        ..B1.22       # Prob 99%                      #125.9
        jmp       ..B1.25       # Prob 100%                     #125.9
                                # LOE rax rdx rcx rbx rsi rdi r8 r12 r13 r14 r15 r9d
..B1.24:                        # Preds ..B1.19
                                # Execution count [2.56e+02]
        xor       ecx, ecx                                      #125.9
        lea       rax, QWORD PTR [r12+rsi*4]                    #126.30
                                # LOE rax rdx rcx rbx rsi r12 r13 r14 r15 r9d
..B1.25:                        # Preds ..B1.22 ..B1.24
                                # Execution count [5.12e+02]
        neg       r9d                                           #125.9
        mov       rdi, rcx                                      #125.9
        and       r9d, 3                                        #125.9
        shl       rdi, 11                                       #125.9
        neg       r9                                            #125.9
        add       r9, 512                                       #125.9
                                # LOE rax rdx rcx rbx rsi rdi r9 r12 r13 r14 r15
..B1.26:                        # Preds ..B1.26 ..B1.25
                                # Execution count [2.62e+05]
        vmovss    xmm0, DWORD PTR [2048+rdi+rax]                #126.30
        vmovss    xmm1, DWORD PTR [rdi+rax]                     #126.30
        vinsertps xmm3, xmm0, DWORD PTR [6144+rdi+rax], 16      #126.30
        vinsertps xmm2, xmm1, DWORD PTR [4096+rdi+rax], 16      #126.30
        add       rdi, 8192                                     #125.9
        vunpcklps xmm4, xmm2, xmm3                              #126.30
        vmovups   XMMWORD PTR [rdx+rcx*4], xmm4                 #126.13
        add       rcx, 4                                        #125.9
        cmp       rcx, r9                                       #125.9
        jb        ..B1.26       # Prob 99%                      #125.9
                                # LOE rax rdx rcx rbx rsi rdi r9 r12 r13 r14 r15
..B1.28:                        # Preds ..B1.26 ..B1.77
                                # Execution count [5.12e+02]
        mov       rcx, r9                                       #125.9
        shl       rcx, 11                                       #125.9
        cmp       r9, 512                                       #125.9
        jae       ..B1.32       # Prob 0%                       #125.9
                                # LOE rdx rcx rbx rsi r9 r12 r13 r14 r15
..B1.29:                        # Preds ..B1.28
                                # Execution count [5.12e+02]
        lea       rax, QWORD PTR [r12+rsi*4]                    #126.30
                                # LOE rax rdx rcx rbx rsi r9 r12 r13 r14 r15
..B1.30:                        # Preds ..B1.30 ..B1.29
                                # Execution count [2.62e+05]
        mov       edi, DWORD PTR [rcx+rax]                      #126.30
        add       rcx, 2048                                     #125.9
        mov       DWORD PTR [rdx+r9*4], edi                     #126.13
        inc       r9                                            #125.9
        cmp       r9, 512                                       #125.9
        jb        ..B1.30       # Prob 99%                      #125.9
                                # LOE rax rdx rcx rbx rsi r9 r12 r13 r14 r15
..B1.32:                        # Preds ..B1.30 ..B1.28
                                # Execution count [5.12e+02]
        inc       rsi                                           #124.5
        add       rdx, 2048                                     #124.5
        cmp       rsi, 512                                      #124.5
        jb        ..B1.19       # Prob 99%                      #124.5
                                # LOE rdx rbx rsi r12 r13 r14 r15
..B1.33:                        # Preds ..B1.32
                                # Execution count [1.00e+00]
        lea       rdi, QWORD PTR [rsp]                          #133.26
..___tag_value_main.19:
#       ftime(struct timeb *)
        call      ftime                                         #133.26
..___tag_value_main.20:
                                # LOE rbx r12 r13 r14 r15
..B1.34:                        # Preds ..B1.33
                                # Execution count [0.00e+00]
        vxorpd    xmm0, xmm0, xmm0                              #133.26
        vxorpd    xmm1, xmm1, xmm1                              #133.26
        movzx     eax, WORD PTR [8+rsp]                         #133.26
        xor       r11b, r11b                                    #134.5
        vcvtsi2sd xmm0, xmm0, eax                               #133.26
        vcvtsi2sd xmm1, xmm1, QWORD PTR [rsp]                   #133.26
        vdivsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.1[rip] #133.26
        mov       QWORD PTR [32+rsp], r12                       #134.5[spill]
        vaddsd    xmm3, xmm1, xmm2                              #133.26
        vmovsd    QWORD PTR [40+rsp], xmm3                      #133.26[spill]
                                # LOE rbx r13 r14 r15 r11b
..B1.35:                        # Preds ..B1.43 ..B1.34
                                # Execution count [0.00e+00]
        xor       r8d, r8d                                      #135.9
        xor       r10d, r10d                                    #135.9
                                # LOE rbx r13 r14 r15 r8d r10d r11b
..B1.36:                        # Preds ..B1.42 ..B1.35
                                # Execution count [2.62e+02]
        mov       edi, r8d                                      #135.9
        xor       r9d, r9d                                      #135.9
        shl       rdi, 11                                       #135.9
        xor       esi, esi                                      #135.9
        xor       ecx, ecx                                      #135.9
        vmovups   ymm0, YMMWORD PTR [2016+r14+rdi]              #135.9
        add       rdi, r13                                      #135.9
                                # LOE rcx rbx rdi r13 r14 r15 esi r8d r9d r10d r11b ymm0
..B1.37:                        # Preds ..B1.41 ..B1.36
                                # Execution count [1.36e+06]
        xor       edx, edx                                      #135.9
        xor       eax, eax                                      #135.9
                                # LOE rax rcx rbx rdi r13 r14 r15 edx esi r8d r9d r10d r11b ymm0
..B1.38:                        # Preds ..B1.38 ..B1.37
                                # Execution count [7.57e+06]
        lea       r12d, DWORD PTR [r10+rdx*8]                   #135.9
        movsxd    r12, r12d                                     #135.9
        vmovups   ymm1, YMMWORD PTR [r14+r12*4]                 #135.9
        lea       r12d, DWORD PTR [rsi+rdx*8]                   #135.9
        movsxd    r12, r12d                                     #135.9
        inc       edx                                           #135.9
        vmulps    ymm2, ymm1, YMMWORD PTR [r15+r12*4]           #135.9
        vmovups   YMMWORD PTR [48+rsp+rax], ymm2                #135.9
        add       rax, 32                                       #135.9
        cmp       edx, 64                                       #135.9
        jb        ..B1.38       # Prob 82%                      #135.9
                                # LOE rax rcx rbx rdi r13 r14 r15 edx esi r8d r9d r10d r11b ymm0
..B1.39:                        # Preds ..B1.38
                                # Execution count [1.23e+06]
        mov       rax, rcx                                      #135.9
        shl       rax, 11                                       #135.9
        vmulps    ymm1, ymm0, YMMWORD PTR [2016+r15+rax]        #135.9
        xor       eax, eax                                      #135.9
        vmovups   YMMWORD PTR [2064+rsp], ymm1                  #135.9
        vmovups   ymm1, YMMWORD PTR [48+rsp]                    #135.9
                                # LOE rax rcx rbx rdi r13 r14 r15 esi r8d r9d r10d r11b ymm0 ymm1
..B1.40:                        # Preds ..B1.40 ..B1.39
                                # Execution count [6.83e+06]
        mov       rdx, rax                                      #135.9
        inc       rax                                           #135.9
        shl       rdx, 5                                        #135.9
        vaddps    ymm1, ymm1, YMMWORD PTR [80+rsp+rdx]          #135.9
        cmp       rax, 63                                       #135.9
        jb        ..B1.40       # Prob 82%                      #135.9
                                # LOE rax rcx rbx rdi r13 r14 r15 esi r8d r9d r10d r11b ymm0 ymm1
..B1.41:                        # Preds ..B1.40
                                # Execution count [1.36e+06]
        vmovups   YMMWORD PTR [2096+rsp], ymm1                  #135.9
        inc       r9d                                           #135.9
        vmovss    xmm1, DWORD PTR [2096+rsp]                    #135.9
        add       esi, 512                                      #135.9
        vmovss    xmm2, DWORD PTR [2104+rsp]                    #135.9
        vmovss    xmm5, DWORD PTR [2112+rsp]                    #135.9
        vmovss    xmm6, DWORD PTR [2120+rsp]                    #135.9
        vaddss    xmm3, xmm1, DWORD PTR [2100+rsp]              #135.9
        vaddss    xmm4, xmm2, DWORD PTR [2108+rsp]              #135.9
        vaddss    xmm7, xmm5, DWORD PTR [2116+rsp]              #135.9
        vaddss    xmm8, xmm6, DWORD PTR [2124+rsp]              #135.9
        vaddss    xmm9, xmm3, xmm4                              #135.9
        vaddss    xmm10, xmm7, xmm8                             #135.9
        vaddss    xmm11, xmm9, xmm10                            #135.9
        vmovss    DWORD PTR [rdi+rcx*4], xmm11                  #135.9
        inc       rcx                                           #135.9
        cmp       r9d, 512                                      #135.9
        jb        ..B1.37       # Prob 99%                      #135.9
                                # LOE rcx rbx rdi r13 r14 r15 esi r8d r9d r10d r11b ymm0
..B1.42:                        # Preds ..B1.41
                                # Execution count [2.66e+03]
        inc       r8d                                           #135.9
        add       r10d, 512                                     #135.9
        cmp       r8d, 512                                      #135.9
        jb        ..B1.36       # Prob 99%                      #135.9
                                # LOE rbx r13 r14 r15 r8d r10d r11b
..B1.43:                        # Preds ..B1.42
                                # Execution count [4.10e+00]
        inc       r11b                                          #134.5
        cmp       r11b, 10                                      #134.5
        jb        ..B1.35       # Prob 99%                      #134.5
                                # LOE rbx r13 r14 r15 r11b
..B1.44:                        # Preds ..B1.43
                                # Execution count [1.00e+00]
        vzeroupper                                              #136.20
        lea       rdi, QWORD PTR [16+rsp]                       #136.20
        mov       r12, QWORD PTR [16+rdi]                       #[spill]
..___tag_value_main.23:
#       ftime(struct timeb *)
        call      ftime                                         #136.20
..___tag_value_main.24:
                                # LOE rbx r12 r13 r14
..B1.45:                        # Preds ..B1.44
                                # Execution count [1.00e+00]
        vxorpd    xmm0, xmm0, xmm0                              #136.20
        vxorpd    xmm1, xmm1, xmm1                              #136.20
        movzx     eax, WORD PTR [24+rsp]                        #136.20
        mov       edi, offset flat: il0_peep_printf_format_0    #141.5
        vcvtsi2sd xmm0, xmm0, eax                               #136.20
        vcvtsi2sd xmm1, xmm1, QWORD PTR [16+rsp]                #136.20
        vdivsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.1[rip] #136.20
        vaddsd    xmm3, xmm1, xmm2                              #136.20
        vsubsd    xmm4, xmm3, QWORD PTR [40+rsp]                #136.35[spill]
        vmovsd    QWORD PTR [32+rsp], xmm4                      #136.35[spill]
#       puts(const char *)
        call      puts                                          #141.5
                                # LOE rbx r12 r13 r14
..B1.46:                        # Preds ..B1.45
                                # Execution count [1.00e+00]
        mov       edi, offset flat: .L_2__STRING.3              #142.5
        mov       esi, 512                                      #142.5
        xor       eax, eax                                      #142.5
..___tag_value_main.28:
#       printf(const char *__restrict__, ...)
        call      printf                                        #142.5
..___tag_value_main.29:
                                # LOE rbx r12 r13 r14
..B1.47:                        # Preds ..B1.46
                                # Execution count [1.00e+00]
        mov       edi, offset flat: il0_peep_printf_format_1    #143.5
#       puts(const char *)
        call      puts                                          #143.5
                                # LOE rbx r12 r13 r14
..B1.48:                        # Preds ..B1.47
                                # Execution count [1.00e+00]
        mov       edi, offset flat: il0_peep_printf_format_2    #144.5
#       puts(const char *)
        call      puts                                          #144.5
                                # LOE rbx r12 r13 r14
..B1.49:                        # Preds ..B1.48
                                # Execution count [1.00e+00]
        mov       edi, offset flat: il0_peep_printf_format_3    #145.5
#       puts(const char *)
        call      puts                                          #145.5
                                # LOE rbx r12 r13 r14
..B1.50:                        # Preds ..B1.49
                                # Execution count [1.00e+00]
        vmovsd    xmm0, QWORD PTR [32+rsp]                      #146.5[spill]
        mov       edi, offset flat: .L_2__STRING.6              #146.5
        vmulsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.3[rip] #146.5
        mov       eax, 2                                        #146.5
        vmovsd    xmm1, QWORD PTR .L_2il0floatpacket.2[rip]     #146.5
        vdivsd    xmm1, xmm1, xmm2                              #146.5
..___tag_value_main.31:
#       printf(const char *__restrict__, ...)
        call      printf                                        #146.5
..___tag_value_main.32:
                                # LOE rbx r12 r13 r14
..B1.51:                        # Preds ..B1.50
                                # Execution count [1.00e+00]
        vmovups   ymm11, YMMWORD PTR .L_2il0floatpacket.4[rip]  #148.2
        xor       edi, edi                                      #148.2
        vxorps    ymm9, ymm9, ymm9                              #148.2
        xor       ecx, ecx                                      #148.2
        vmovdqa   ymm8, ymm9                                    #148.2
        vpcmpeqd  ymm0, ymm0, ymm0                              #148.2
                                # LOE rcx rbx r12 r13 r14 edi ymm0 ymm8 ymm9 ymm11
..B1.52:                        # Preds ..B1.56 ..B1.51
                                # Execution count [5.12e+02]
        xor       edx, edx                                      #148.2
        lea       r10, QWORD PTR [r14+rcx]                      #148.2
        lea       rsi, QWORD PTR [rbx+rcx]                      #148.2
                                # LOE rdx rcx rbx rsi r10 r12 r13 r14 edi ymm0 ymm8 ymm9 ymm11
..B1.53:                        # Preds ..B1.55 ..B1.52
                                # Execution count [2.62e+05]
        vmovdqa   ymm7, ymm8                                    #148.2
        xor       r9d, r9d                                      #148.2
        vmovdqa   ymm1, ymm7                                    #148.2
        lea       r8, QWORD PTR [r12+rdx*4]                     #148.2
        vmovdqa   ymm6, ymm1                                    #148.2
        xor       eax, eax                                      #148.2
        vmovdqa   ymm5, ymm6                                    #148.2
        vmovaps   ymm4, ymm5                                    #148.2
        vmovaps   ymm3, ymm4                                    #148.2
        vmovaps   ymm2, ymm3                                    #148.2
        vmovaps   ymm10, ymm2                                   #148.2
                                # LOE rax rdx rcx rbx rsi r8 r9 r10 r12 r13 r14 edi ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7 ymm8 ymm9 ymm10 ymm11
..B1.54:                        # Preds ..B1.54 ..B1.53
                                # Execution count [1.34e+08]
        vmovdqa   ymm12, ymm0                                   #148.2
        lea       r11, QWORD PTR [r8+rax]                       #148.2
        vxorps    ymm13, ymm13, ymm13                           #148.2
        lea       r15, QWORD PTR [16384+rax+r8]                 #148.2
        vgatherdps ymm13, DWORD PTR [r11+ymm11*8], ymm12        #148.2
        lea       r11, QWORD PTR [32768+rax+r8]                 #148.2
        vfmadd231ps ymm7, ymm13, YMMWORD PTR [r10+r9*4]         #148.2
        vxorps    ymm15, ymm15, ymm15                           #148.2
        vmovdqa   ymm14, ymm0                                   #148.2
        vxorps    ymm13, ymm13, ymm13                           #148.2
        vmovdqa   ymm12, ymm0                                   #148.2
        vgatherdps ymm15, DWORD PTR [r15+ymm11*8], ymm14        #148.2
        lea       r15, QWORD PTR [49152+rax+r8]                 #148.2
        vgatherdps ymm13, DWORD PTR [r11+ymm11*8], ymm12        #148.2
        vfmadd231ps ymm1, ymm15, YMMWORD PTR [32+r10+r9*4]      #148.2
        vfmadd231ps ymm6, ymm13, YMMWORD PTR [64+r10+r9*4]      #148.2
        vxorps    ymm12, ymm12, ymm12                           #148.2
        lea       r11, QWORD PTR [65536+rax+r8]                 #148.2
        vmovdqa   ymm14, ymm0                                   #148.2
        vgatherdps ymm12, DWORD PTR [r15+ymm11*8], ymm14        #148.2
        lea       r15, QWORD PTR [81920+rax+r8]                 #148.2
        vxorps    ymm15, ymm15, ymm15                           #148.2
        vmovdqa   ymm13, ymm0                                   #148.2
        vgatherdps ymm15, DWORD PTR [r11+ymm11*8], ymm13        #148.2
        lea       r11, QWORD PTR [98304+rax+r8]                 #148.2
        vfmadd231ps ymm5, ymm12, YMMWORD PTR [96+r10+r9*4]      #148.2
        vfmadd231ps ymm4, ymm15, YMMWORD PTR [128+r10+r9*4]     #148.2
        vxorps    ymm13, ymm13, ymm13                           #148.2
        vmovdqa   ymm12, ymm0                                   #148.2
        vgatherdps ymm13, DWORD PTR [r15+ymm11*8], ymm12        #148.2
        lea       r15, QWORD PTR [114688+rax+r8]                #148.2
        vfmadd231ps ymm3, ymm13, YMMWORD PTR [160+r10+r9*4]     #148.2
        add       rax, 131072                                   #148.2
        vxorps    ymm12, ymm12, ymm12                           #148.2
        vmovdqa   ymm14, ymm0                                   #148.2
        vxorps    ymm15, ymm15, ymm15                           #148.2
        vmovdqa   ymm13, ymm0                                   #148.2
        vgatherdps ymm12, DWORD PTR [r11+ymm11*8], ymm14        #148.2
        vgatherdps ymm15, DWORD PTR [r15+ymm11*8], ymm13        #148.2
        vfmadd231ps ymm2, ymm12, YMMWORD PTR [192+r10+r9*4]     #148.2
        vfmadd231ps ymm10, ymm15, YMMWORD PTR [224+r10+r9*4]    #148.2
        add       r9, 64                                        #148.2
        cmp       r9, 512                                       #148.2
        jb        ..B1.54       # Prob 99%                      #148.2
                                # LOE rax rdx rcx rbx rsi r8 r9 r10 r12 r13 r14 edi ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7 ymm8 ymm9 ymm10 ymm11
..B1.55:                        # Preds ..B1.54
                                # Execution count [2.62e+05]
        vaddps    ymm1, ymm7, ymm1                              #148.2
        vaddps    ymm5, ymm6, ymm5                              #148.2
        vaddps    ymm3, ymm4, ymm3                              #148.2
        vaddps    ymm2, ymm2, ymm10                             #148.2
        vaddps    ymm4, ymm1, ymm5                              #148.2
        vaddps    ymm6, ymm3, ymm2                              #148.2
        vaddps    ymm7, ymm4, ymm6                              #148.2
        vextractf128 xmm10, ymm7, 1                             #148.2
        vaddps    xmm12, xmm7, xmm10                            #148.2
        vmovhlps  xmm13, xmm12, xmm12                           #148.2
        vaddps    xmm14, xmm12, xmm13                           #148.2
        vshufps   xmm15, xmm14, xmm14, 245                      #148.2
        vaddss    xmm1, xmm14, xmm15                            #148.2
        vmovss    DWORD PTR [rsi+rdx*4], xmm1                   #148.2
        inc       rdx                                           #148.2
        cmp       rdx, 512                                      #148.2
        jb        ..B1.53       # Prob 99%                      #148.2
                                # LOE rdx rcx rbx rsi r10 r12 r13 r14 edi ymm0 ymm8 ymm9 ymm11
..B1.56:                        # Preds ..B1.55
                                # Execution count [5.12e+02]
        inc       edi                                           #148.2
        add       rcx, 2048                                     #148.2
        cmp       edi, 512                                      #148.2
        jb        ..B1.52       # Prob 99%                      #148.2
                                # LOE rcx rbx r12 r13 r14 edi ymm0 ymm8 ymm9 ymm11
..B1.57:                        # Preds ..B1.56
                                # Execution count [1.00e+00]
        mov       rdx, rbx                                      #149.39
        and       rdx, 31                                       #149.39
        vxorps    xmm0, xmm0, xmm0                              #149.39
        test      edx, edx                                      #149.39
        je        ..B1.62       # Prob 50%                      #149.39
                                # LOE rbx r13 edx xmm0 ymm9
..B1.58:                        # Preds ..B1.57
                                # Execution count [1.00e+00]
        test      dl, 3                                         #149.39
        jne       ..B1.78       # Prob 10%                      #149.39
                                # LOE rbx r13 edx xmm0 ymm9
..B1.59:                        # Preds ..B1.58
                                # Execution count [1.00e+00]
        neg       edx                                           #149.39
        xor       eax, eax                                      #149.39
        add       edx, 32                                       #149.39
        shr       edx, 2                                        #149.39
        mov       ecx, edx                                      #149.39
                                # LOE rax rcx rbx r13 edx xmm0 ymm9
..B1.60:                        # Preds ..B1.60 ..B1.59
                                # Execution count [2.62e+05]
        vmovss    xmm1, DWORD PTR [r13+rax*4]                   #149.39
        vsubss    xmm2, xmm1, DWORD PTR [rbx+rax*4]             #149.39
        inc       rax                                           #149.39
        vaddss    xmm0, xmm2, xmm0                              #149.39
        cmp       rax, rcx                                      #149.39
        jb        ..B1.60       # Prob 99%                      #149.39
        jmp       ..B1.63       # Prob 100%                     #149.39
                                # LOE rax rcx rbx r13 edx xmm0 ymm9
..B1.62:                        # Preds ..B1.57
                                # Execution count [5.00e-01]
        xor       ecx, ecx                                      #149.39
                                # LOE rcx rbx r13 edx xmm0 ymm9
..B1.63:                        # Preds ..B1.60 ..B1.62
                                # Execution count [1.00e+00]
        neg       edx                                           #149.39
        and       edx, 31                                       #149.39
        vxorps    xmm1, xmm1, xmm1                              #149.39
        neg       edx                                           #149.39
        vmovss    xmm0, xmm1, xmm0                              #149.39
        add       edx, 262144                                   #149.39
        mov       eax, edx                                      #149.39
        vmovaps   xmm0, xmm0                                    #149.39
        .align    16,0x90
                                # LOE rax rcx rbx r13 edx ymm0 ymm9
..B1.64:                        # Preds ..B1.64 ..B1.63
                                # Execution count [2.62e+05]
        vmovups   ymm1, YMMWORD PTR [r13+rcx*4]                 #149.39
        vmovups   ymm2, YMMWORD PTR [32+r13+rcx*4]              #149.39
        vsubps    ymm3, ymm1, YMMWORD PTR [rbx+rcx*4]           #149.39
        vsubps    ymm4, ymm2, YMMWORD PTR [32+rbx+rcx*4]        #149.39
        vaddps    ymm6, ymm0, ymm3                              #149.39
        vaddps    ymm8, ymm9, ymm4                              #149.39
        vmovups   ymm0, YMMWORD PTR [64+r13+rcx*4]              #149.39
        vmovups   ymm9, YMMWORD PTR [96+r13+rcx*4]              #149.39
        vsubps    ymm5, ymm0, YMMWORD PTR [64+rbx+rcx*4]        #149.39
        vsubps    ymm7, ymm9, YMMWORD PTR [96+rbx+rcx*4]        #149.39
        vaddps    ymm0, ymm5, ymm6                              #149.39
        vaddps    ymm9, ymm7, ymm8                              #149.39
        add       rcx, 32                                       #149.39
        cmp       rcx, rax                                      #149.39
        jb        ..B1.64       # Prob 99%                      #149.39
                                # LOE rax rcx rbx r13 edx ymm0 ymm9
..B1.65:                        # Preds ..B1.64
                                # Execution count [1.00e+00]
        vaddps    ymm0, ymm0, ymm9                              #149.39
        vextractf128 xmm1, ymm0, 1                              #149.39
        vaddps    xmm2, xmm0, xmm1                              #149.39
        vmovhlps  xmm3, xmm2, xmm2                              #149.39
        vaddps    xmm4, xmm2, xmm3                              #149.39
        vshufps   xmm5, xmm4, xmm4, 245                         #149.39
        vaddss    xmm0, xmm4, xmm5                              #149.39
                                # LOE rbx r13 edx xmm0
..B1.66:                        # Preds ..B1.65 ..B1.78
                                # Execution count [1.00e+00]
        lea       eax, DWORD PTR [1+rdx]                        #149.39
        cmp       eax, 262144                                   #149.39
        ja        ..B1.75       # Prob 50%                      #149.39
                                # LOE rbx r13 edx xmm0
..B1.67:                        # Preds ..B1.66
                                # Execution count [1.00e+00]
        mov       esi, edx                                      #149.39
        neg       esi                                           #149.39
        add       esi, 262144                                   #149.39
        cmp       esi, 8                                        #149.39
        jb        ..B1.79       # Prob 10%                      #149.39
                                # LOE rbx r13 edx esi xmm0
..B1.68:                        # Preds ..B1.67
                                # Execution count [1.00e+00]
        mov       ecx, esi                                      #149.39
        xor       eax, eax                                      #149.39
        vxorps    xmm1, xmm1, xmm1                              #149.39
        and       ecx, -8                                       #149.39
        vmovss    xmm0, xmm1, xmm0                              #149.39
        vmovaps   xmm0, xmm0                                    #149.39
                                # LOE rbx r13 eax edx ecx esi ymm0
..B1.69:                        # Preds ..B1.69 ..B1.68
                                # Execution count [2.62e+05]
        lea       edi, DWORD PTR [rdx+rax]                      #149.39
        add       eax, 8                                        #149.39
        movsxd    rdi, edi                                      #149.39
        vmovups   ymm1, YMMWORD PTR [r13+rdi*4]                 #149.39
        vsubps    ymm2, ymm1, YMMWORD PTR [rbx+rdi*4]           #149.39
        vaddps    ymm0, ymm2, ymm0                              #149.39
        cmp       eax, ecx                                      #149.39
        jb        ..B1.69       # Prob 99%                      #149.39
                                # LOE rbx r13 eax edx ecx esi ymm0
..B1.70:                        # Preds ..B1.69
                                # Execution count [1.00e+00]
        vextractf128 xmm1, ymm0, 1                              #149.39
        vaddps    xmm2, xmm0, xmm1                              #149.39
        vmovhlps  xmm3, xmm2, xmm2                              #149.39
        vaddps    xmm4, xmm2, xmm3                              #149.39
        vshufps   xmm5, xmm4, xmm4, 245                         #149.39
        vaddss    xmm0, xmm4, xmm5                              #149.39
                                # LOE rbx r13 edx ecx esi xmm0
..B1.71:                        # Preds ..B1.70 ..B1.79
                                # Execution count [1.00e+00]
        cmp       ecx, esi                                      #149.39
        jae       ..B1.75       # Prob 0%                       #149.39
                                # LOE rbx r13 edx ecx esi xmm0
..B1.73:                        # Preds ..B1.71 ..B1.73
                                # Execution count [2.62e+05]
        lea       eax, DWORD PTR [rdx+rcx]                      #149.39
        inc       ecx                                           #149.39
        movsxd    rax, eax                                      #149.39
        vmovss    xmm1, DWORD PTR [r13+rax*4]                   #149.39
        vsubss    xmm2, xmm1, DWORD PTR [rbx+rax*4]             #149.39
        vaddss    xmm0, xmm2, xmm0                              #149.39
        cmp       ecx, esi                                      #149.39
        jb        ..B1.73       # Prob 99%                      #149.39
                                # LOE rbx r13 edx ecx esi xmm0
..B1.75:                        # Preds ..B1.73 ..B1.71 ..B1.66
                                # Execution count [1.00e+00]
        mov       edi, offset flat: .L_2__STRING.7              #149.5
        mov       eax, 1                                        #149.5
        vcvtss2sd xmm0, xmm0, xmm0                              #149.5
        vzeroupper                                              #149.5
..___tag_value_main.33:
#       printf(const char *__restrict__, ...)
        call      printf                                        #149.5
..___tag_value_main.34:
                                # LOE
..B1.76:                        # Preds ..B1.75
                                # Execution count [1.00e+00]
        xor       eax, eax                                      #151.12
        add       rsp, 2136                                     #151.12
	.cfi_restore 3
        pop       rbx                                           #151.12
	.cfi_restore 15
        pop       r15                                           #151.12
	.cfi_restore 14
        pop       r14                                           #151.12
	.cfi_restore 13
        pop       r13                                           #151.12
	.cfi_restore 12
        pop       r12                                           #151.12
        mov       rsp, rbp                                      #151.12
        pop       rbp                                           #151.12
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #151.12
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.77:                        # Preds ..B1.20
                                # Execution count [5.12e+01]: Infreq
        xor       r9d, r9d                                      #125.9
        jmp       ..B1.28       # Prob 100%                     #125.9
                                # LOE rdx rbx rsi r9 r12 r13 r14 r15
..B1.78:                        # Preds ..B1.58
                                # Execution count [1.00e-01]: Infreq
        xor       edx, edx                                      #149.39
        jmp       ..B1.66       # Prob 100%                     #149.39
                                # LOE rbx r13 edx xmm0
..B1.79:                        # Preds ..B1.67
                                # Execution count [1.00e-01]: Infreq
        xor       ecx, ecx                                      #149.39
        jmp       ..B1.71       # Prob 100%                     #149.39
        .align    16,0x90
                                # LOE rbx r13 edx ecx esi xmm0
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.0:
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
..___tag_value_read_timer.50:
..L51:
                                                         #20.21
        sub       rsp, 24                                       #20.21
	.cfi_def_cfa_offset 32
        lea       rdi, QWORD PTR [rsp]                          #22.5
..___tag_value_read_timer.53:
#       ftime(struct timeb *)
        call      ftime                                         #22.5
..___tag_value_read_timer.54:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.2:                         # Preds ..B2.1
                                # Execution count [1.00e+00]
        vxorpd    xmm0, xmm0, xmm0                              #23.40
        vxorpd    xmm1, xmm1, xmm1                              #23.21
        movzx     eax, WORD PTR [8+rsp]                         #23.40
        vcvtsi2sd xmm0, xmm0, eax                               #23.40
        vcvtsi2sd xmm1, xmm1, QWORD PTR [rsp]                   #23.21
        vdivsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.1[rip] #23.53
        vaddsd    xmm0, xmm1, xmm2                              #23.53
        add       rsp, 24                                       #23.53
	.cfi_def_cfa_offset 8
        ret                                                     #23.53
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
.L_2__routine_start_matmul_serial_2:
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
..B3.1:                         # Preds ..B3.0
                                # Execution count [0.00e+00]
	.cfi_startproc
..___tag_value_matmul_serial.57:
..L58:
                                                         #35.50
        push      r14                                           #35.50
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
        push      r15                                           #35.50
	.cfi_def_cfa_offset 24
	.cfi_offset 15, -24
        push      rbx                                           #35.50
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
        mov       rcx, rdx                                      #35.50
        lea       rax, QWORD PTR [-4+rdi]                       #42.26
        lea       rdx, QWORD PTR [1048575+rcx]                  #39.9
        cmp       rdx, rax                                      #39.9
        jbe       ..B3.3        # Prob 50%                      #39.9
                                # LOE rdx rcx rbx rbp rsi rdi r12 r13 r14 r15
..B3.2:                         # Preds ..B3.1
                                # Execution count [0.00e+00]
        lea       rax, QWORD PTR [1046527+rdi]                  #39.9
        cmp       rcx, rax                                      #39.9
        jb        ..B3.12       # Prob 50%                      #39.9
                                # LOE rdx rcx rbx rbp rsi rdi r12 r13 r14 r15
..B3.3:                         # Preds ..B3.1 ..B3.2
                                # Execution count [0.00e+00]
        lea       rax, QWORD PTR [-2048+rsi]                    #42.41
        cmp       rdx, rax                                      #39.9
        jbe       ..B3.5        # Prob 50%                      #39.9
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15
..B3.4:                         # Preds ..B3.3
                                # Execution count [0.00e+00]
        lea       rax, QWORD PTR [-1+rsi]                       #39.9
        cmp       rcx, rax                                      #39.9
        jb        ..B3.12       # Prob 50%                      #39.9
                                # LOE rcx rbx rbp rsi rdi r12 r13 r14 r15
..B3.5:                         # Preds ..B3.3 ..B3.4
                                # Execution count [1.00e+00]
        vmovups   ymm9, YMMWORD PTR .L_2il0floatpacket.4[rip]   #38.5
        xor       edx, edx                                      #38.5
        vxorps    ymm8, ymm8, ymm8                              #38.5
        xor       eax, eax                                      #38.5
        vpcmpeqd  ymm0, ymm0, ymm0                              #38.5
                                # LOE rax rcx rbp rsi rdi r12 r13 edx ymm0 ymm8 ymm9
..B3.6:                         # Preds ..B3.10 ..B3.5
                                # Execution count [5.12e+02]
        xor       r8d, r8d                                      #39.9
        lea       r14, QWORD PTR [rdi+rax]                      #42.26
        lea       r9, QWORD PTR [rcx+rax]                       #45.13
                                # LOE rax rcx rbp rsi rdi r8 r9 r12 r13 r14 edx ymm0 ymm8 ymm9
..B3.7:                         # Preds ..B3.9 ..B3.6
                                # Execution count [2.62e+05]
        vmovdqa   ymm7, ymm8                                    #37.5
        xor       r11d, r11d                                    #41.13
        vmovdqa   ymm1, ymm7                                    #37.5
        lea       r10, QWORD PTR [rsi+r8*4]                     #42.41
        vmovdqa   ymm6, ymm1                                    #37.5
        xor       ebx, ebx                                      #41.13
        vmovdqa   ymm5, ymm6                                    #37.5
        vmovaps   ymm4, ymm5                                    #37.5
        vmovaps   ymm3, ymm4                                    #37.5
        vmovaps   ymm2, ymm3                                    #37.5
        vmovaps   ymm10, ymm2                                   #37.5
                                # LOE rax rcx rbx rbp rsi rdi r8 r9 r10 r11 r12 r13 r14 edx ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7 ymm8 ymm9 ymm10
..B3.8:                         # Preds ..B3.8 ..B3.7
                                # Execution count [1.34e+08]
        vmovdqa   ymm11, ymm0                                   #42.41
        lea       r15, QWORD PTR [r10+rbx]                      #42.41
        vxorps    ymm12, ymm12, ymm12                           #42.41
        vgatherdps ymm12, DWORD PTR [r15+ymm9*8], ymm11         #42.41
        lea       r15, QWORD PTR [16384+rbx+r10]                #42.41
        vxorps    ymm14, ymm14, ymm14                           #42.41
        vmovdqa   ymm13, ymm0                                   #42.41
        vgatherdps ymm14, DWORD PTR [r15+ymm9*8], ymm13         #42.41
        lea       r15, QWORD PTR [32768+rbx+r10]                #42.41
        vfmadd231ps ymm7, ymm12, YMMWORD PTR [r14+r11*4]        #42.17
        vfmadd231ps ymm1, ymm14, YMMWORD PTR [32+r14+r11*4]     #42.17
        vxorps    ymm11, ymm11, ymm11                           #42.41
        vmovdqa   ymm15, ymm0                                   #42.41
        vgatherdps ymm11, DWORD PTR [r15+ymm9*8], ymm15         #42.41
        lea       r15, QWORD PTR [49152+rbx+r10]                #42.41
        vxorps    ymm13, ymm13, ymm13                           #42.41
        vmovdqa   ymm12, ymm0                                   #42.41
        vgatherdps ymm13, DWORD PTR [r15+ymm9*8], ymm12         #42.41
        lea       r15, QWORD PTR [65536+rbx+r10]                #42.41
        vfmadd231ps ymm6, ymm11, YMMWORD PTR [64+r14+r11*4]     #42.17
        vfmadd231ps ymm5, ymm13, YMMWORD PTR [96+r14+r11*4]     #42.17
        vxorps    ymm11, ymm11, ymm11                           #42.41
        vmovdqa   ymm14, ymm0                                   #42.41
        vgatherdps ymm11, DWORD PTR [r15+ymm9*8], ymm14         #42.41
        lea       r15, QWORD PTR [81920+rbx+r10]                #42.41
        vxorps    ymm13, ymm13, ymm13                           #42.41
        vmovdqa   ymm12, ymm0                                   #42.41
        vgatherdps ymm13, DWORD PTR [r15+ymm9*8], ymm12         #42.41
        lea       r15, QWORD PTR [98304+rbx+r10]                #42.41
        vfmadd231ps ymm4, ymm11, YMMWORD PTR [128+r14+r11*4]    #42.17
        vfmadd231ps ymm3, ymm13, YMMWORD PTR [160+r14+r11*4]    #42.17
        vxorps    ymm11, ymm11, ymm11                           #42.41
        vmovdqa   ymm15, ymm0                                   #42.41
        vgatherdps ymm11, DWORD PTR [r15+ymm9*8], ymm15         #42.41
        lea       r15, QWORD PTR [114688+rbx+r10]               #42.41
        vxorps    ymm13, ymm13, ymm13                           #42.41
        add       rbx, 131072                                   #41.13
        vmovdqa   ymm12, ymm0                                   #42.41
        vgatherdps ymm13, DWORD PTR [r15+ymm9*8], ymm12         #42.41
        vfmadd231ps ymm2, ymm11, YMMWORD PTR [192+r14+r11*4]    #42.17
        vfmadd231ps ymm10, ymm13, YMMWORD PTR [224+r14+r11*4]   #42.17
        add       r11, 64                                       #41.13
        cmp       r11, 512                                      #41.13
        jb        ..B3.8        # Prob 99%                      #41.13
                                # LOE rax rcx rbx rbp rsi rdi r8 r9 r10 r11 r12 r13 r14 edx ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7 ymm8 ymm9 ymm10
..B3.9:                         # Preds ..B3.8
                                # Execution count [2.62e+05]
        vaddps    ymm1, ymm7, ymm1                              #37.5
        vaddps    ymm5, ymm6, ymm5                              #37.5
        vaddps    ymm3, ymm4, ymm3                              #37.5
        vaddps    ymm2, ymm2, ymm10                             #37.5
        vaddps    ymm4, ymm1, ymm5                              #37.5
        vaddps    ymm6, ymm3, ymm2                              #37.5
        vaddps    ymm7, ymm4, ymm6                              #37.5
        vextractf128 xmm10, ymm7, 1                             #37.5
        vaddps    xmm11, xmm7, xmm10                            #37.5
        vmovhlps  xmm12, xmm11, xmm11                           #37.5
        vaddps    xmm13, xmm11, xmm12                           #37.5
        vshufps   xmm14, xmm13, xmm13, 245                      #37.5
        vaddss    xmm15, xmm13, xmm14                           #37.5
        vmovss    DWORD PTR [r9+r8*4], xmm15                    #45.13
        inc       r8                                            #39.9
        cmp       r8, 512                                       #39.9
        jb        ..B3.7        # Prob 99%                      #39.9
                                # LOE rax rcx rbp rsi rdi r8 r9 r12 r13 r14 edx ymm0 ymm8 ymm9
..B3.10:                        # Preds ..B3.9
                                # Execution count [5.12e+02]
        inc       edx                                           #38.5
        add       rax, 2048                                     #38.5
        cmp       edx, 512                                      #38.5
        jb        ..B3.6        # Prob 99%                      #38.5
        jmp       ..B3.19       # Prob 100%                     #38.5
                                # LOE rax rcx rbp rsi rdi r12 r13 edx ymm0 ymm8 ymm9
..B3.12:                        # Preds ..B3.2 ..B3.4
                                # Execution count [1.00e+00]
        vmovups   ymm9, YMMWORD PTR .L_2il0floatpacket.4[rip]   #38.5
        xor       eax, eax                                      #38.5
        vxorps    ymm8, ymm8, ymm8                              #38.5
        xor       edx, edx                                      #38.5
        vpcmpeqd  ymm0, ymm0, ymm0                              #38.5
                                # LOE rdx rcx rbp rsi rdi r12 r13 eax ymm0 ymm8 ymm9
..B3.13:                        # Preds ..B3.17 ..B3.12
                                # Execution count [5.12e+02]
        xor       r8d, r8d                                      #39.9
        lea       r14, QWORD PTR [rdi+rdx]                      #42.26
        lea       r9, QWORD PTR [rcx+rdx]                       #45.13
                                # LOE rdx rcx rbp rsi rdi r8 r9 r12 r13 r14 eax ymm0 ymm8 ymm9
..B3.14:                        # Preds ..B3.16 ..B3.13
                                # Execution count [2.62e+05]
        vmovdqa   ymm7, ymm8                                    #37.5
        xor       r11d, r11d                                    #41.13
        vmovdqa   ymm1, ymm7                                    #37.5
        lea       r10, QWORD PTR [rsi+r8*4]                     #42.41
        vmovdqa   ymm6, ymm1                                    #37.5
        xor       ebx, ebx                                      #41.13
        vmovdqa   ymm5, ymm6                                    #37.5
        vmovaps   ymm4, ymm5                                    #37.5
        vmovaps   ymm3, ymm4                                    #37.5
        vmovaps   ymm2, ymm3                                    #37.5
        vmovaps   ymm10, ymm2                                   #37.5
                                # LOE rdx rcx rbx rbp rsi rdi r8 r9 r10 r11 r12 r13 r14 eax ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7 ymm8 ymm9 ymm10
..B3.15:                        # Preds ..B3.15 ..B3.14
                                # Execution count [1.34e+08]
        vmovdqa   ymm11, ymm0                                   #42.41
        lea       r15, QWORD PTR [r10+rbx]                      #42.41
        vxorps    ymm12, ymm12, ymm12                           #42.41
        vgatherdps ymm12, DWORD PTR [r15+ymm9*8], ymm11         #42.41
        lea       r15, QWORD PTR [16384+rbx+r10]                #42.41
        vxorps    ymm14, ymm14, ymm14                           #42.41
        vmovdqa   ymm13, ymm0                                   #42.41
        vgatherdps ymm14, DWORD PTR [r15+ymm9*8], ymm13         #42.41
        lea       r15, QWORD PTR [32768+rbx+r10]                #42.41
        vfmadd231ps ymm7, ymm12, YMMWORD PTR [r14+r11*4]        #42.17
        vfmadd231ps ymm1, ymm14, YMMWORD PTR [32+r14+r11*4]     #42.17
        vxorps    ymm11, ymm11, ymm11                           #42.41
        vmovdqa   ymm15, ymm0                                   #42.41
        vgatherdps ymm11, DWORD PTR [r15+ymm9*8], ymm15         #42.41
        lea       r15, QWORD PTR [49152+rbx+r10]                #42.41
        vxorps    ymm13, ymm13, ymm13                           #42.41
        vmovdqa   ymm12, ymm0                                   #42.41
        vgatherdps ymm13, DWORD PTR [r15+ymm9*8], ymm12         #42.41
        lea       r15, QWORD PTR [65536+rbx+r10]                #42.41
        vfmadd231ps ymm6, ymm11, YMMWORD PTR [64+r14+r11*4]     #42.17
        vfmadd231ps ymm5, ymm13, YMMWORD PTR [96+r14+r11*4]     #42.17
        vxorps    ymm11, ymm11, ymm11                           #42.41
        vmovdqa   ymm14, ymm0                                   #42.41
        vgatherdps ymm11, DWORD PTR [r15+ymm9*8], ymm14         #42.41
        lea       r15, QWORD PTR [81920+rbx+r10]                #42.41
        vxorps    ymm13, ymm13, ymm13                           #42.41
        vmovdqa   ymm12, ymm0                                   #42.41
        vgatherdps ymm13, DWORD PTR [r15+ymm9*8], ymm12         #42.41
        lea       r15, QWORD PTR [98304+rbx+r10]                #42.41
        vfmadd231ps ymm4, ymm11, YMMWORD PTR [128+r14+r11*4]    #42.17
        vfmadd231ps ymm3, ymm13, YMMWORD PTR [160+r14+r11*4]    #42.17
        vxorps    ymm11, ymm11, ymm11                           #42.41
        vmovdqa   ymm15, ymm0                                   #42.41
        vgatherdps ymm11, DWORD PTR [r15+ymm9*8], ymm15         #42.41
        lea       r15, QWORD PTR [114688+rbx+r10]               #42.41
        vxorps    ymm13, ymm13, ymm13                           #42.41
        add       rbx, 131072                                   #41.13
        vmovdqa   ymm12, ymm0                                   #42.41
        vgatherdps ymm13, DWORD PTR [r15+ymm9*8], ymm12         #42.41
        vfmadd231ps ymm2, ymm11, YMMWORD PTR [192+r14+r11*4]    #42.17
        vfmadd231ps ymm10, ymm13, YMMWORD PTR [224+r14+r11*4]   #42.17
        add       r11, 64                                       #41.13
        cmp       r11, 512                                      #41.13
        jb        ..B3.15       # Prob 99%                      #41.13
                                # LOE rdx rcx rbx rbp rsi rdi r8 r9 r10 r11 r12 r13 r14 eax ymm0 ymm1 ymm2 ymm3 ymm4 ymm5 ymm6 ymm7 ymm8 ymm9 ymm10
..B3.16:                        # Preds ..B3.15
                                # Execution count [2.62e+05]
        vaddps    ymm1, ymm7, ymm1                              #37.5
        vaddps    ymm5, ymm6, ymm5                              #37.5
        vaddps    ymm3, ymm4, ymm3                              #37.5
        vaddps    ymm2, ymm2, ymm10                             #37.5
        vaddps    ymm4, ymm1, ymm5                              #37.5
        vaddps    ymm6, ymm3, ymm2                              #37.5
        vaddps    ymm7, ymm4, ymm6                              #37.5
        vextractf128 xmm10, ymm7, 1                             #37.5
        vaddps    xmm11, xmm7, xmm10                            #37.5
        vmovhlps  xmm12, xmm11, xmm11                           #37.5
        vaddps    xmm13, xmm11, xmm12                           #37.5
        vshufps   xmm14, xmm13, xmm13, 245                      #37.5
        vaddss    xmm15, xmm13, xmm14                           #37.5
        vmovss    DWORD PTR [r9+r8*4], xmm15                    #45.13
        inc       r8                                            #39.9
        cmp       r8, 512                                       #39.9
        jb        ..B3.14       # Prob 99%                      #39.9
                                # LOE rdx rcx rbp rsi rdi r8 r9 r12 r13 r14 eax ymm0 ymm8 ymm9
..B3.17:                        # Preds ..B3.16
                                # Execution count [5.12e+02]
        inc       eax                                           #38.5
        add       rdx, 2048                                     #38.5
        cmp       eax, 512                                      #38.5
        jb        ..B3.13       # Prob 99%                      #38.5
                                # LOE rdx rcx rbp rsi rdi r12 r13 eax ymm0 ymm8 ymm9
..B3.19:                        # Preds ..B3.17 ..B3.10
                                # Execution count [1.00e+00]
        vzeroupper                                              #48.1
	.cfi_restore 3
        pop       rbx                                           #48.1
	.cfi_def_cfa_offset 24
	.cfi_restore 15
        pop       r15                                           #48.1
	.cfi_def_cfa_offset 16
	.cfi_restore 14
        pop       r14                                           #48.1
	.cfi_def_cfa_offset 8
        ret                                                     #48.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	matmul_serial,@function
	.size	matmul_serial,.-matmul_serial
..LNmatmul_serial.2:
	.data
# -- End  matmul_serial
	.text
.L_2__routine_start_sum_3:
# -- Begin  sum
	.text
# mark_begin;
       .align    16,0x90
	.globl sum
# --- sum(float *)
sum:
# parameter 1: rdi
..B4.1:                         # Preds ..B4.0
                                # Execution count [9.00e-01]
	.cfi_startproc
..___tag_value_sum.72:
..L73:
                                                         #50.27
        mov       eax, 8                                        #55.15
        vmovups   ymm0, YMMWORD PTR [rdi]                       #51.32
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 ymm0
..B4.2:                         # Preds ..B4.2 ..B4.1
                                # Execution count [5.00e+00]
        vaddps    ymm0, ymm0, YMMWORD PTR [rdi+rax*4]           #57.10
        add       rax, 8                                        #55.27
        cmp       rax, 512                                      #55.24
        jl        ..B4.2        # Prob 82%                      #55.24
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 ymm0
..B4.3:                         # Preds ..B4.2
                                # Execution count [1.00e+00]
        vmovups   YMMWORD PTR [-40+rsp], ymm0                   #61.19
        vmovss    xmm0, DWORD PTR [-40+rsp]                     #65.8
        vmovss    xmm1, DWORD PTR [-32+rsp]                     #65.8
        vmovss    xmm4, DWORD PTR [-24+rsp]                     #65.8
        vmovss    xmm5, DWORD PTR [-16+rsp]                     #65.8
        vaddss    xmm2, xmm0, DWORD PTR [-36+rsp]               #67.9
        vaddss    xmm3, xmm1, DWORD PTR [-28+rsp]               #67.9
        vaddss    xmm6, xmm4, DWORD PTR [-20+rsp]               #67.9
        vaddss    xmm7, xmm5, DWORD PTR [-12+rsp]               #67.9
        vaddss    xmm8, xmm2, xmm3                              #67.9
        vaddss    xmm9, xmm6, xmm7                              #67.9
        vaddss    xmm0, xmm8, xmm9                              #67.9
        vzeroupper                                              #67.9
        ret                                                     #67.9
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	sum,@function
	.size	sum,.-sum
..LNsum.3:
	.data
# -- End  sum
	.text
.L_2__routine_start_matmul_avx_4:
# -- Begin  matmul_avx
	.text
# mark_begin;
       .align    16,0x90
	.globl matmul_avx
# --- matmul_avx(float *, float *, float *)
matmul_avx:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
..B5.1:                         # Preds ..B5.0
                                # Execution count [0.00e+00]
	.cfi_startproc
..___tag_value_matmul_avx.75:
..L76:
                                                         #70.47
        push      r12                                           #70.47
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        push      r13                                           #70.47
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        push      r14                                           #70.47
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        push      r15                                           #70.47
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        push      rbx                                           #70.47
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
        sub       rsp, 2096                                     #70.47
	.cfi_def_cfa_offset 2144
        xor       ecx, ecx                                      #75.5
        mov       r8, rdx                                       #70.47
        mov       r9, rsi                                       #70.47
        xor       edx, edx                                      #75.5
        xor       esi, esi                                      #75.5
        xor       eax, eax                                      #75.5
                                # LOE rax rbp rdi r8 r9 edx ecx esi
..B5.2:                         # Preds ..B5.8 ..B5.1
                                # Execution count [5.26e+01]
        mov       r13d, ecx                                     #88.52
        mov       r12d, edx                                     #76.9
        shl       r13, 11                                       #88.52
        mov       r10d, r12d                                    #76.9
        mov       QWORD PTR [rsp], r8                           #76.9[spill]
        mov       r11, rax                                      #76.9
        lea       r14, QWORD PTR [r8+r13]                       #93.13
                                # LOE rax rbp rdi r9 r11 r13 r14 edx ecx esi r10d r12d
..B5.3:                         # Preds ..B5.7 ..B5.2
                                # Execution count [2.73e+05]
        mov       r8d, edx                                      #78.13
        mov       rbx, rax                                      #78.13
                                # LOE rax rbx rbp rdi r9 r11 r13 r14 edx ecx esi r8d r10d r12d
..B5.4:                         # Preds ..B5.4 ..B5.3
                                # Execution count [1.51e+06]
        lea       r15d, DWORD PTR [rsi+r8*8]                    #79.56
        movsxd    r15, r15d                                     #79.56
        vmovups   ymm0, YMMWORD PTR [rdi+r15*4]                 #79.46
        lea       r15d, DWORD PTR [r10+r8*8]                    #80.56
        movsxd    r15, r15d                                     #80.56
        inc       r8d                                           #78.13
        vmulps    ymm1, ymm0, YMMWORD PTR [r9+r15*4]            #81.28
        vmovups   YMMWORD PTR [8+rsp+rbx], ymm1                 #82.35
        add       rbx, 32                                       #78.13
        cmp       r8d, 64                                       #78.13
        jb        ..B5.4        # Prob 82%                      #78.13
                                # LOE rax rbx rbp rdi r9 r11 r13 r14 edx ecx esi r8d r10d r12d
..B5.5:                         # Preds ..B5.4
                                # Execution count [2.46e+05]
        mov       rbx, r11                                      #89.52
        vmovups   ymm0, YMMWORD PTR [2016+r13+rdi]              #88.42
        shl       rbx, 11                                       #89.52
        vmulps    ymm1, ymm0, YMMWORD PTR [2016+r9+rbx]         #90.26
        mov       rbx, rax                                      #93.28
        vmovups   ymm0, YMMWORD PTR [8+rsp]                     #93.28
        vmovups   YMMWORD PTR [2024+rsp], ymm1                  #91.31
                                # LOE rax rbx rbp rdi r9 r11 r13 r14 edx ecx esi r10d r12d ymm0
..B5.6:                         # Preds ..B5.6 ..B5.5
                                # Execution count [1.37e+06]
        mov       r8, rbx                                       #93.28
        inc       rbx                                           #93.28
        shl       r8, 5                                         #93.28
        vaddps    ymm0, ymm0, YMMWORD PTR [40+rsp+r8]           #93.28
        cmp       rbx, 63                                       #93.28
        jb        ..B5.6        # Prob 82%                      #93.28
                                # LOE rax rbx rbp rdi r9 r11 r13 r14 edx ecx esi r10d r12d ymm0
..B5.7:                         # Preds ..B5.6
                                # Execution count [2.73e+05]
        vmovups   YMMWORD PTR [2056+rsp], ymm0                  #93.28
        inc       r12d                                          #76.9
        vmovss    xmm0, DWORD PTR [2056+rsp]                    #93.28
        add       r10d, 512                                     #76.9
        vmovss    xmm1, DWORD PTR [2064+rsp]                    #93.28
        vmovss    xmm4, DWORD PTR [2072+rsp]                    #93.28
        vmovss    xmm5, DWORD PTR [2080+rsp]                    #93.28
        vaddss    xmm2, xmm0, DWORD PTR [2060+rsp]              #93.13
        vaddss    xmm3, xmm1, DWORD PTR [2068+rsp]              #93.13
        vaddss    xmm6, xmm4, DWORD PTR [2076+rsp]              #93.13
        vaddss    xmm7, xmm5, DWORD PTR [2084+rsp]              #93.13
        vaddss    xmm8, xmm2, xmm3                              #93.13
        vaddss    xmm9, xmm6, xmm7                              #93.13
        vaddss    xmm10, xmm8, xmm9                             #93.13
        vmovss    DWORD PTR [r14+r11*4], xmm10                  #93.13
        inc       r11                                           #76.9
        cmp       r12d, 512                                     #76.9
        jb        ..B5.3        # Prob 99%                      #76.9
                                # LOE rax rbp rdi r9 r11 r13 r14 edx ecx esi r10d r12d
..B5.8:                         # Preds ..B5.7
                                # Execution count [5.32e+02]
        inc       ecx                                           #75.5
        add       esi, 512                                      #75.5
        mov       r8, QWORD PTR [rsp]                           #[spill]
        cmp       ecx, 512                                      #75.5
        jb        ..B5.2        # Prob 99%                      #75.5
                                # LOE rax rbp rdi r8 r9 edx ecx esi
..B5.9:                         # Preds ..B5.8
                                # Execution count [1.04e+00]
        vzeroupper                                              #96.1
        add       rsp, 2096                                     #96.1
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        pop       rbx                                           #96.1
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        pop       r15                                           #96.1
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        pop       r14                                           #96.1
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        pop       r13                                           #96.1
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        pop       r12                                           #96.1
	.cfi_def_cfa_offset 8
        ret                                                     #96.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	matmul_avx,@function
	.size	matmul_avx,.-matmul_avx
..LNmatmul_avx.4:
	.data
# -- End  matmul_avx
	.text
.L_2__routine_start_check_5:
# -- Begin  check
	.text
# mark_begin;
       .align    16,0x90
	.globl check
# --- check(float *, float *)
check:
# parameter 1: rdi
# parameter 2: rsi
..B6.1:                         # Preds ..B6.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_check.102:
..L103:
                                                        #98.32
        mov       rcx, rsi                                      #100.5
        and       rcx, 31                                       #100.5
        vxorps    xmm0, xmm0, xmm0                              #99.22
        test      ecx, ecx                                      #100.5
        je        ..B6.6        # Prob 50%                      #100.5
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 ecx xmm0
..B6.2:                         # Preds ..B6.1
                                # Execution count [1.00e+00]
        test      cl, 3                                         #100.5
        jne       ..B6.20       # Prob 10%                      #100.5
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 ecx xmm0
..B6.3:                         # Preds ..B6.2
                                # Execution count [1.00e+00]
        neg       ecx                                           #100.5
        xor       eax, eax                                      #100.5
        add       ecx, 32                                       #100.5
        shr       ecx, 2                                        #100.5
        mov       edx, ecx                                      #100.5
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 ecx xmm0
..B6.4:                         # Preds ..B6.4 ..B6.3
                                # Execution count [2.62e+05]
        vmovss    xmm1, DWORD PTR [rdi+rax*4]                   #100.46
        vsubss    xmm2, xmm1, DWORD PTR [rsi+rax*4]             #100.32
        inc       rax                                           #100.5
        vaddss    xmm0, xmm2, xmm0                              #100.32
        cmp       rax, rdx                                      #100.5
        jb        ..B6.4        # Prob 99%                      #100.5
        jmp       ..B6.7        # Prob 100%                     #100.5
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 ecx xmm0
..B6.6:                         # Preds ..B6.1
                                # Execution count [5.00e-01]
        xor       edx, edx                                      #100.5
                                # LOE rdx rbx rbp rsi rdi r12 r13 r14 r15 ecx xmm0
..B6.7:                         # Preds ..B6.4 ..B6.6
                                # Execution count [1.00e+00]
        neg       ecx                                           #100.5
        and       ecx, 31                                       #100.5
        vxorps    xmm1, xmm1, xmm1                              #99.22
        neg       ecx                                           #100.5
        vmovss    xmm1, xmm1, xmm0                              #99.22
        add       ecx, 262144                                   #100.5
        vxorps    ymm0, ymm0, ymm0                              #99.22
        mov       eax, ecx                                      #100.5
        vmovaps   xmm1, xmm1                                    #99.22
        .align    16,0x90
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 ecx ymm0 ymm1
..B6.8:                         # Preds ..B6.8 ..B6.7
                                # Execution count [2.62e+05]
        vmovups   ymm2, YMMWORD PTR [rdi+rdx*4]                 #100.46
        vmovups   ymm3, YMMWORD PTR [32+rdi+rdx*4]              #100.46
        vsubps    ymm4, ymm2, YMMWORD PTR [rsi+rdx*4]           #100.52
        vsubps    ymm5, ymm3, YMMWORD PTR [32+rsi+rdx*4]        #100.52
        vaddps    ymm7, ymm1, ymm4                              #100.32
        vaddps    ymm9, ymm0, ymm5                              #100.32
        vmovups   ymm1, YMMWORD PTR [64+rdi+rdx*4]              #100.46
        vmovups   ymm0, YMMWORD PTR [96+rdi+rdx*4]              #100.46
        vsubps    ymm6, ymm1, YMMWORD PTR [64+rsi+rdx*4]        #100.52
        vsubps    ymm8, ymm0, YMMWORD PTR [96+rsi+rdx*4]        #100.52
        vaddps    ymm1, ymm6, ymm7                              #100.32
        vaddps    ymm0, ymm8, ymm9                              #100.32
        add       rdx, 32                                       #100.5
        cmp       rdx, rax                                      #100.5
        jb        ..B6.8        # Prob 99%                      #100.5
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 ecx ymm0 ymm1
..B6.9:                         # Preds ..B6.8
                                # Execution count [1.00e+00]
        vaddps    ymm0, ymm1, ymm0                              #99.22
        vextractf128 xmm1, ymm0, 1                              #99.22
        vaddps    xmm2, xmm0, xmm1                              #99.22
        vmovhlps  xmm3, xmm2, xmm2                              #99.22
        vaddps    xmm4, xmm2, xmm3                              #99.22
        vshufps   xmm5, xmm4, xmm4, 245                         #99.22
        vaddss    xmm0, xmm4, xmm5                              #99.22
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 ecx xmm0
..B6.10:                        # Preds ..B6.9 ..B6.20
                                # Execution count [1.00e+00]
        lea       eax, DWORD PTR [1+rcx]                        #100.5
        cmp       eax, 262144                                   #100.5
        ja        ..B6.19       # Prob 50%                      #100.5
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 ecx xmm0
..B6.11:                        # Preds ..B6.10
                                # Execution count [1.00e+00]
        mov       edx, ecx                                      #100.5
        neg       edx                                           #100.5
        add       edx, 262144                                   #100.5
        cmp       edx, 8                                        #100.5
        jb        ..B6.21       # Prob 10%                      #100.5
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 edx ecx xmm0
..B6.12:                        # Preds ..B6.11
                                # Execution count [1.00e+00]
        mov       eax, edx                                      #100.5
        xor       r8d, r8d                                      #100.5
        vxorps    xmm1, xmm1, xmm1                              #99.22
        and       eax, -8                                       #100.5
        vmovss    xmm0, xmm1, xmm0                              #99.22
        vmovaps   xmm0, xmm0                                    #99.22
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx r8d ymm0
..B6.13:                        # Preds ..B6.13 ..B6.12
                                # Execution count [2.62e+05]
        lea       r9d, DWORD PTR [rcx+r8]                       #100.32
        add       r8d, 8                                        #100.5
        movsxd    r9, r9d                                       #100.32
        vmovups   ymm1, YMMWORD PTR [rdi+r9*4]                  #100.46
        vsubps    ymm2, ymm1, YMMWORD PTR [rsi+r9*4]            #100.32
        vaddps    ymm0, ymm2, ymm0                              #100.32
        cmp       r8d, eax                                      #100.5
        jb        ..B6.13       # Prob 99%                      #100.5
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx r8d ymm0
..B6.14:                        # Preds ..B6.13
                                # Execution count [1.00e+00]
        vextractf128 xmm1, ymm0, 1                              #99.22
        vaddps    xmm2, xmm0, xmm1                              #99.22
        vmovhlps  xmm3, xmm2, xmm2                              #99.22
        vaddps    xmm4, xmm2, xmm3                              #99.22
        vshufps   xmm5, xmm4, xmm4, 245                         #99.22
        vaddss    xmm0, xmm4, xmm5                              #99.22
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx xmm0
..B6.15:                        # Preds ..B6.14 ..B6.21
                                # Execution count [1.00e+00]
        cmp       eax, edx                                      #100.5
        jae       ..B6.19       # Prob 0%                       #100.5
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx xmm0
..B6.17:                        # Preds ..B6.15 ..B6.17
                                # Execution count [2.62e+05]
        lea       r8d, DWORD PTR [rcx+rax]                      #100.32
        inc       eax                                           #100.5
        movsxd    r8, r8d                                       #100.32
        vmovss    xmm1, DWORD PTR [rdi+r8*4]                    #100.46
        vsubss    xmm2, xmm1, DWORD PTR [rsi+r8*4]              #100.32
        vaddss    xmm0, xmm2, xmm0                              #100.32
        cmp       eax, edx                                      #100.5
        jb        ..B6.17       # Prob 99%                      #100.5
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx xmm0
..B6.19:                        # Preds ..B6.17 ..B6.15 ..B6.10
                                # Execution count [1.00e+00]
        vzeroupper                                              #101.12
        ret                                                     #101.12
                                # LOE
..B6.20:                        # Preds ..B6.2
                                # Execution count [1.00e-01]: Infreq
        xor       ecx, ecx                                      #100.5
        jmp       ..B6.10       # Prob 100%                     #100.5
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 ecx xmm0
..B6.21:                        # Preds ..B6.11
                                # Execution count [1.00e-01]: Infreq
        xor       eax, eax                                      #100.5
        jmp       ..B6.15       # Prob 100%                     #100.5
        .align    16,0x90
                                # LOE rbx rbp rsi rdi r12 r13 r14 r15 eax edx ecx xmm0
	.cfi_endproc
# mark_end;
	.type	check,@function
	.size	check,.-check
..LNcheck.5:
	.data
# -- End  check
	.text
.L_2__routine_start_print_matrix_6:
# -- Begin  print_matrix
	.text
# mark_begin;
       .align    16,0x90
	.globl print_matrix
# --- print_matrix(float *)
print_matrix:
# parameter 1: rdi
..B7.1:                         # Preds ..B7.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_print_matrix.105:
..L106:
                                                        #104.29
        push      r13                                           #104.29
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
        push      r14                                           #104.29
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
        push      r15                                           #104.29
	.cfi_def_cfa_offset 32
	.cfi_offset 15, -32
        push      rbx                                           #104.29
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
        push      rbp                                           #104.29
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
        xor       edx, edx                                      #105.13
        xor       eax, eax                                      #105.13
        mov       ebp, edx                                      #105.13
        mov       rbx, rax                                      #105.13
        mov       r13, rdi                                      #105.13
                                # LOE rbx r12 r13 ebp
..B7.2:                         # Preds ..B7.6 ..B7.1
                                # Execution count [5.12e+02]
        xor       r15d, r15d                                    #106.14
        lea       r14, QWORD PTR [r13+rbx*4]                    #107.23
                                # LOE rbx r12 r13 r14 r15 ebp
..B7.3:                         # Preds ..B7.4 ..B7.2
                                # Execution count [2.62e+05]
        vxorpd    xmm0, xmm0, xmm0                              #107.7
        mov       edi, offset flat: .L_2__STRING.0              #107.7
        vcvtss2sd xmm0, xmm0, DWORD PTR [r14+r15*4]             #107.7
        mov       eax, 1                                        #107.7
..___tag_value_print_matrix.117:
#       printf(const char *__restrict__, ...)
        call      printf                                        #107.7
..___tag_value_print_matrix.118:
                                # LOE rbx r12 r13 r14 r15 ebp
..B7.4:                         # Preds ..B7.3
                                # Execution count [2.62e+05]
        inc       r15                                           #106.24
        cmp       r15, 512                                      #106.21
        jl        ..B7.3        # Prob 99%                      #106.21
                                # LOE rbx r12 r13 r14 r15 ebp
..B7.5:                         # Preds ..B7.4
                                # Execution count [5.12e+02]
        mov       edi, offset flat: .L_2__STRING.1              #109.6
#       puts(const char *)
        call      puts                                          #109.6
                                # LOE rbx r12 r13 ebp
..B7.6:                         # Preds ..B7.5
                                # Execution count [5.12e+02]
        inc       ebp                                           #105.23
        add       rbx, 512                                      #105.23
        cmp       ebp, 512                                      #105.20
        jl        ..B7.2        # Prob 99%                      #105.20
                                # LOE rbx r12 r13 ebp
..B7.7:                         # Preds ..B7.6
                                # Execution count [1.00e+00]
	.cfi_restore 6
        pop       rbp                                           #111.1
	.cfi_def_cfa_offset 40
	.cfi_restore 3
        pop       rbx                                           #111.1
	.cfi_def_cfa_offset 32
	.cfi_restore 15
        pop       r15                                           #111.1
	.cfi_def_cfa_offset 24
	.cfi_restore 14
        pop       r14                                           #111.1
	.cfi_def_cfa_offset 16
	.cfi_restore 13
        pop       r13                                           #111.1
	.cfi_def_cfa_offset 8
        ret                                                     #111.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	print_matrix,@function
	.size	print_matrix,.-print_matrix
..LNprint_matrix.6:
	.data
# -- End  print_matrix
	.text
.L_2__routine_start_init_7:
# -- Begin  init
	.text
# mark_begin;
       .align    16,0x90
	.globl init
# --- init(float *)
init:
# parameter 1: rdi
..B8.1:                         # Preds ..B8.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_init.130:
..L131:
                                                        #26.21
        push      r13                                           #26.21
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
        push      r14                                           #26.21
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
        push      r15                                           #26.21
	.cfi_def_cfa_offset 32
	.cfi_offset 15, -32
        push      rbx                                           #26.21
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
        push      rbp                                           #26.21
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
        xor       edx, edx                                      #28.10
        xor       eax, eax                                      #28.14
        mov       ebp, edx                                      #28.14
        mov       rbx, rax                                      #28.14
        mov       r14, rdi                                      #28.14
                                # LOE rbx r12 r14 ebp
..B8.2:                         # Preds ..B8.5 ..B8.1
                                # Execution count [5.12e+02]
        xor       r15d, r15d                                    #29.14
        lea       r13, QWORD PTR [r14+rbx*4]                    #30.13
                                # LOE rbx r12 r13 r14 r15 ebp
..B8.3:                         # Preds ..B8.4 ..B8.2
                                # Execution count [2.62e+05]
#       rand(void)
        call      rand                                          #30.31
                                # LOE rbx r12 r13 r14 r15 eax ebp
..B8.4:                         # Preds ..B8.3
                                # Execution count [2.62e+05]
        vxorps    xmm0, xmm0, xmm0                              #30.31
        vcvtsi2ss xmm0, xmm0, eax                               #30.31
        vdivss    xmm1, xmm0, DWORD PTR .L_2il0floatpacket.0[rip] #30.38
        vmovss    DWORD PTR [r13+r15*4], xmm1                   #30.13
        inc       r15                                           #29.28
        cmp       r15, 512                                      #29.25
        jl        ..B8.3        # Prob 99%                      #29.25
                                # LOE rbx r12 r13 r14 r15 ebp
..B8.5:                         # Preds ..B8.4
                                # Execution count [5.12e+02]
        inc       ebp                                           #28.24
        add       rbx, 512                                      #28.24
        cmp       ebp, 512                                      #28.21
        jl        ..B8.2        # Prob 99%                      #28.21
                                # LOE rbx r12 r14 ebp
..B8.6:                         # Preds ..B8.5
                                # Execution count [1.00e+00]
	.cfi_restore 6
        pop       rbp                                           #33.1
	.cfi_def_cfa_offset 40
	.cfi_restore 3
        pop       rbx                                           #33.1
	.cfi_def_cfa_offset 32
	.cfi_restore 15
        pop       r15                                           #33.1
	.cfi_def_cfa_offset 24
	.cfi_restore 14
        pop       r14                                           #33.1
	.cfi_def_cfa_offset 16
	.cfi_restore 13
        pop       r13                                           #33.1
	.cfi_def_cfa_offset 8
        ret                                                     #33.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	init,@function
	.size	init,.-init
..LNinit.7:
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
.L_2__STRING.3:
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
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,59
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.6:
	.long	1836343661
	.long	1633643637
	.long	154826870
	.long	1714693385
	.long	1714693385
	.word	10
	.type	.L_2__STRING.6,@object
	.size	.L_2__STRING.6,22
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.7:
	.long	1920102211
	.long	1853121381
	.long	544437093
	.long	1667590243
	.long	622869099
	.word	2662
	.byte	0
	.type	.L_2__STRING.7,@object
	.size	.L_2__STRING.7,23
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.0:
	.long	1714695717
	.word	32
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,6
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.1:
	.byte	0
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,1
	.data
	.section .note.GNU-stack, ""
# End
