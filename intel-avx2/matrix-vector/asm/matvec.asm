# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.1.0.166 Build 20191121";
# mark_description "-o asm/matvec.asm -O2 -no-vec -S -masm=intel";
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
        xor       esi, esi                                      #57.33
        call      __intel_new_feature_proc_init                 #57.33
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE r12 r13
..B1.34:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        stmxcsr   DWORD PTR [rsp]                               #57.33
        mov       edi, 5760000                                  #59.18
        or        DWORD PTR [rsp], 32832                        #57.33
        ldmxcsr   DWORD PTR [rsp]                               #57.33
#       malloc(size_t)
        call      malloc                                        #59.18
                                # LOE rax r12 r13
..B1.33:                        # Preds ..B1.34
                                # Execution count [1.00e+00]
        mov       r14, rax                                      #59.18
                                # LOE r12 r13 r14
..B1.2:                         # Preds ..B1.33
                                # Execution count [1.00e+00]
        mov       edi, 4800                                     #60.18
#       malloc(size_t)
        call      malloc                                        #60.18
                                # LOE rax r12 r13 r14
..B1.35:                        # Preds ..B1.2
                                # Execution count [1.00e+00]
        mov       rbx, rax                                      #60.18
                                # LOE rbx r12 r13 r14
..B1.3:                         # Preds ..B1.35
                                # Execution count [1.00e+00]
        mov       edi, 4800                                     #61.18
#       malloc(size_t)
        call      malloc                                        #61.18
                                # LOE rax rbx r12 r13 r14
..B1.36:                        # Preds ..B1.3
                                # Execution count [1.00e+00]
        mov       r15, rax                                      #61.18
                                # LOE rbx r12 r13 r14 r15
..B1.4:                         # Preds ..B1.36
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
        mov       r12, rdx                                      #64.2
        mov       r13d, ecx                                     #64.2
        mov       QWORD PTR [16+rsp], r15                       #64.2[spill]
        mov       r15, rdx                                      #64.2
                                # LOE rbx r12 r14 r15 r13d
..B1.7:                         # Preds ..B1.11 ..B1.6
                                # Execution count [1.20e+03]
        xor       edx, edx                                      #64.2
        lea       rax, QWORD PTR [r14+r15*4]                    #64.2
        mov       QWORD PTR [8+rsp], rbx                        #64.2[spill]
        mov       rbx, rax                                      #64.2
        mov       QWORD PTR [rsp], r14                          #64.2[spill]
        mov       r14, rdx                                      #64.2
                                # LOE rbx r12 r14 r15 r13d
..B1.8:                         # Preds ..B1.9 ..B1.7
                                # Execution count [1.44e+06]
#       rand(void)
        call      rand                                          #64.2
                                # LOE rbx r12 r14 r15 eax r13d
..B1.9:                         # Preds ..B1.8
                                # Execution count [1.44e+06]
        pxor      xmm0, xmm0                                    #64.2
        cvtsi2ss  xmm0, eax                                     #64.2
        divss     xmm0, DWORD PTR .L_2il0floatpacket.0[rip]     #64.2
        movss     DWORD PTR [rbx+r14*4], xmm0                   #64.2
        inc       r14                                           #64.2
        cmp       r14, 1200                                     #64.2
        jl        ..B1.8        # Prob 99%                      #64.2
                                # LOE rbx r12 r14 r15 r13d
..B1.10:                        # Preds ..B1.9
                                # Execution count [1.20e+03]
        mov       rbx, QWORD PTR [8+rsp]                        #[spill]
        mov       r14, QWORD PTR [rsp]                          #[spill]
#       rand(void)
        call      rand                                          #64.2
                                # LOE rbx r12 r14 r15 eax r13d
..B1.11:                        # Preds ..B1.10
                                # Execution count [1.20e+03]
        pxor      xmm0, xmm0                                    #64.2
        inc       r13d                                          #64.2
        cvtsi2ss  xmm0, eax                                     #64.2
        divss     xmm0, DWORD PTR .L_2il0floatpacket.0[rip]     #64.2
        movss     DWORD PTR [rbx+r12*4], xmm0                   #64.2
        add       r15, 1200                                     #64.2
        inc       r12                                           #64.2
        cmp       r13d, 1200                                    #64.2
        jl        ..B1.7        # Prob 99%                      #64.2
                                # LOE rbx r12 r14 r15 r13d
..B1.12:                        # Preds ..B1.11
                                # Execution count [1.00e+00]
        mov       r15, QWORD PTR [16+rsp]                       #[spill]
        lea       rdi, QWORD PTR [rsp]                          #66.17
..___tag_value_main.17:
#       ftime(struct timeb *)
        call      ftime                                         #66.17
..___tag_value_main.18:
                                # LOE rbx r12 r13 r14 r15
..B1.13:                        # Preds ..B1.12
                                # Execution count [8.59e-01]
        pxor      xmm0, xmm0                                    #66.17
        pxor      xmm1, xmm1                                    #66.17
        movzx     eax, WORD PTR [8+rsp]                         #66.17
        xor       edx, edx                                      #67.13
        cvtsi2sd  xmm0, eax                                     #66.17
        cvtsi2sd  xmm1, QWORD PTR [rsp]                         #66.17
        divsd     xmm0, QWORD PTR .L_2il0floatpacket.1[rip]     #66.17
        xor       eax, eax                                      #68.3
        addsd     xmm1, xmm0                                    #66.17
        movsd     QWORD PTR [32+rsp], xmm1                      #66.17[spill]
                                # LOE rbx r12 r13 r14 r15 eax edx
..B1.14:                        # Preds ..B1.18 ..B1.13
                                # Execution count [1.00e+03]
        xor       r8d, r8d                                      #68.3
        xor       ecx, ecx                                      #68.3
        mov       DWORD PTR [48+rsp], eax                       #68.3
        xor       esi, esi                                      #68.3
                                # LOE rcx rbx r12 r13 r14 r15 eax edx esi r8d
..B1.15:                        # Preds ..B1.17 ..B1.14
                                # Execution count [1.20e+06]
        xor       r9d, r9d                                      #68.3
        pxor      xmm1, xmm1                                    #68.3
        movaps    xmm0, xmm1                                    #68.3
                                # LOE rcx rbx r9 r12 r13 r14 r15 eax edx esi r8d xmm0 xmm1
..B1.16:                        # Preds ..B1.16 ..B1.15
                                # Execution count [7.20e+08]
        lea       r10d, DWORD PTR [rsi+r9*2]                    #68.3
        movsxd    r10, r10d                                     #68.3
        movss     xmm2, DWORD PTR [r14+r10*4]                   #68.3
        movss     xmm3, DWORD PTR [4+r14+r10*4]                 #68.3
        mulss     xmm2, DWORD PTR [rbx+r9*8]                    #68.3
        mulss     xmm3, DWORD PTR [4+rbx+r9*8]                  #68.3
        addss     xmm1, xmm2                                    #68.3
        addss     xmm0, xmm3                                    #68.3
        inc       r9                                            #68.3
        cmp       r9, 600                                       #68.3
        jb        ..B1.16       # Prob 99%                      #68.3
                                # LOE rcx rbx r9 r12 r13 r14 r15 eax edx esi r8d xmm0 xmm1
..B1.17:                        # Preds ..B1.16
                                # Execution count [1.20e+06]
        inc       r8d                                           #68.3
        add       esi, 1200                                     #68.3
        addss     xmm1, xmm0                                    #68.3
        movss     DWORD PTR [r15+rcx*4], xmm1                   #68.3
        inc       rcx                                           #68.3
        cmp       r8d, 1200                                     #68.3
        jb        ..B1.15       # Prob 99%                      #68.3
                                # LOE rcx rbx r12 r13 r14 r15 eax edx esi r8d
..B1.18:                        # Preds ..B1.17
                                # Execution count [1.00e+03]
        inc       edx                                           #67.28
        cmp       edx, 1000                                     #67.20
        jl        ..B1.14       # Prob 99%                      #67.20
                                # LOE rbx r12 r13 r14 r15 eax edx
..B1.19:                        # Preds ..B1.18
                                # Execution count [1.00e+00]
        lea       rdi, QWORD PTR [16+rsp]                       #69.14
..___tag_value_main.20:
#       ftime(struct timeb *)
        call      ftime                                         #69.14
..___tag_value_main.21:
                                # LOE rbx r12 r13 r14 r15
..B1.20:                        # Preds ..B1.19
                                # Execution count [1.00e+00]
        pxor      xmm0, xmm0                                    #69.14
        pxor      xmm1, xmm1                                    #69.14
        movzx     eax, WORD PTR [24+rsp]                        #69.14
        mov       edi, offset flat: il0_peep_printf_format_0    #73.2
        cvtsi2sd  xmm0, eax                                     #69.14
        cvtsi2sd  xmm1, QWORD PTR [16+rsp]                      #69.14
        divsd     xmm0, QWORD PTR .L_2il0floatpacket.1[rip]     #69.14
        addsd     xmm1, xmm0                                    #69.14
        subsd     xmm1, QWORD PTR [32+rsp]                      #69.29[spill]
        movsd     QWORD PTR [40+rsp], xmm1                      #69.29[spill]
        call      puts                                          #73.2
                                # LOE rbx r12 r13 r14 r15
..B1.21:                        # Preds ..B1.20
                                # Execution count [1.00e+00]
        mov       edi, offset flat: il0_peep_printf_format_1    #74.5
        call      puts                                          #74.5
                                # LOE rbx r12 r13 r14 r15
..B1.22:                        # Preds ..B1.21
                                # Execution count [1.00e+00]
        mov       edi, offset flat: il0_peep_printf_format_2    #75.5
        call      puts                                          #75.5
                                # LOE rbx r12 r13 r14 r15
..B1.23:                        # Preds ..B1.22
                                # Execution count [1.00e+00]
        movsd     xmm2, QWORD PTR .L_2il0floatpacket.3[rip]     #76.5
        mov       edi, offset flat: .L_2__STRING.3              #76.5
        movsd     xmm0, QWORD PTR [40+rsp]                      #76.5[spill]
        mov       eax, 2                                        #76.5
        mulsd     xmm2, xmm0                                    #76.5
        movsd     xmm1, QWORD PTR .L_2il0floatpacket.2[rip]     #76.5
        divsd     xmm1, xmm2                                    #76.5
..___tag_value_main.25:
#       printf(const char *__restrict__, ...)
        call      printf                                        #76.5
..___tag_value_main.26:
                                # LOE rbx r12 r13 r14 r15
..B1.24:                        # Preds ..B1.23
                                # Execution count [1.00e+00]
        movss     xmm0, DWORD PTR .L_2il0floatpacket.4[rip]     #78.13
        xor       esi, esi                                      #78.13
        xor       eax, eax                                      #78.13
                                # LOE rax rbx r12 r13 r14 r15 esi xmm0
..B1.25:                        # Preds ..B1.25 ..B1.24
                                # Execution count [6.00e+02]
        movss     xmm1, DWORD PTR [r15+rax*8]                   #78.13
        movaps    xmm2, xmm0                                    #78.13
        comiss    xmm1, xmm0                                    #78.13
        cmpltss   xmm2, DWORD PTR [4+r15+rax*8]                 #78.13
        movd      ecx, xmm2                                     #78.13
        lea       edx, DWORD PTR [1+rsi]                        #78.13
        cmova     esi, edx                                      #78.13
        neg       ecx                                           #78.13
        inc       rax                                           #78.13
        add       esi, ecx                                      #78.13
        cmp       rax, 600                                      #78.13
        jb        ..B1.25       # Prob 99%                      #78.13
                                # LOE rax rbx r12 r13 r14 r15 esi xmm0
..B1.26:                        # Preds ..B1.25
                                # Execution count [1.00e+00]
        mov       edi, offset flat: .L_2__STRING.4              #79.5
        xor       eax, eax                                      #79.5
..___tag_value_main.27:
#       printf(const char *__restrict__, ...)
        call      printf                                        #79.5
..___tag_value_main.28:
                                # LOE rbx r12 r13 r14 r15
..B1.27:                        # Preds ..B1.26
                                # Execution count [1.00e+00]
        mov       rdi, r14                                      #81.5
#       free(void *)
        call      free                                          #81.5
                                # LOE rbx r12 r13 r15
..B1.28:                        # Preds ..B1.27
                                # Execution count [1.00e+00]
        mov       rdi, rbx                                      #82.5
#       free(void *)
        call      free                                          #82.5
                                # LOE r12 r13 r15
..B1.29:                        # Preds ..B1.28
                                # Execution count [1.00e+00]
        mov       rdi, r15                                      #83.5
#       free(void *)
        call      free                                          #83.5
                                # LOE r12 r13
..B1.30:                        # Preds ..B1.29
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
        .align    16,0x90
                                # LOE
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
..___tag_value_read_timer.37:
..L38:
                                                         #14.21
        sub       rsp, 24                                       #14.21
	.cfi_def_cfa_offset 32
        lea       rdi, QWORD PTR [rsp]                          #16.5
..___tag_value_read_timer.40:
#       ftime(struct timeb *)
        call      ftime                                         #16.5
..___tag_value_read_timer.41:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.2:                         # Preds ..B2.1
                                # Execution count [1.00e+00]
        pxor      xmm1, xmm1                                    #17.40
        pxor      xmm0, xmm0                                    #17.21
        movzx     eax, WORD PTR [8+rsp]                         #17.40
        cvtsi2sd  xmm1, eax                                     #17.40
        cvtsi2sd  xmm0, QWORD PTR [rsp]                         #17.21
        divsd     xmm1, QWORD PTR .L_2il0floatpacket.1[rip]     #17.53
        addsd     xmm0, xmm1                                    #17.53
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
                                # Execution count [1.05e+00]
	.cfi_startproc
..___tag_value_sum.44:
..L45:
                                                         #32.55
        mov       r8, rdx                                       #32.55
        xor       edx, edx                                      #35.2
        xor       eax, eax                                      #35.2
        mov       DWORD PTR [-8+rsp], 0                         #33.19
        xor       ecx, ecx                                      #35.2
                                # LOE rax rbx rbp rsi rdi r8 r12 r13 r14 r15 edx ecx
..B3.2:                         # Preds ..B3.4 ..B3.1
                                # Execution count [1.20e+03]
        xor       r9d, r9d                                      #38.3
        pxor      xmm1, xmm1                                    #36.11
        movaps    xmm0, xmm1                                    #39.4
                                # LOE rax rbx rbp rsi rdi r8 r9 r12 r13 r14 r15 edx ecx xmm0 xmm1
..B3.3:                         # Preds ..B3.3 ..B3.2
                                # Execution count [7.20e+05]
        lea       r10d, DWORD PTR [rcx+r9*2]                    #39.21
        movsxd    r10, r10d                                     #39.21
        movss     xmm2, DWORD PTR [rdi+r10*4]                   #39.10
        movss     xmm3, DWORD PTR [4+rdi+r10*4]                 #39.10
        mulss     xmm2, DWORD PTR [rsi+r9*8]                    #39.26
        mulss     xmm3, DWORD PTR [4+rsi+r9*8]                  #39.26
        addss     xmm1, xmm2                                    #39.4
        addss     xmm0, xmm3                                    #39.4
        inc       r9                                            #38.3
        cmp       r9, 600                                       #38.3
        jb        ..B3.3        # Prob 99%                      #38.3
                                # LOE rax rbx rbp rsi rdi r8 r9 r12 r13 r14 r15 edx ecx xmm0 xmm1
..B3.4:                         # Preds ..B3.3
                                # Execution count [1.20e+03]
        inc       edx                                           #35.2
        add       ecx, 1200                                     #35.2
        addss     xmm1, xmm0                                    #39.4
        movss     DWORD PTR [r8+rax*4], xmm1                    #42.3
        inc       rax                                           #35.2
        cmp       edx, 1200                                     #35.2
        jb        ..B3.2        # Prob 99%                      #35.2
                                # LOE rax rbx rbp rsi rdi r8 r12 r13 r14 r15 edx ecx
..B3.5:                         # Preds ..B3.4
                                # Execution count [1.00e+00]
        ret                                                     #44.1
        .align    16,0x90
                                # LOE
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
..___tag_value_dummy.47:
..L48:
                                                         #48.21
        xor       eax, eax                                      #49.13
        movss     xmm0, DWORD PTR .L_2il0floatpacket.4[rip]     #51.14
        xor       edx, edx                                      #50.2
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax xmm0
..B4.2:                         # Preds ..B4.2 ..B4.1
                                # Execution count [6.00e+02]
        movss     xmm1, DWORD PTR [rdi+rdx*8]                   #51.7
        movaps    xmm2, xmm0                                    #52.6
        comiss    xmm1, xmm0                                    #52.6
        cmpltss   xmm2, DWORD PTR [4+rdi+rdx*8]                 #52.6
        movd      esi, xmm2                                     #52.6
        lea       ecx, DWORD PTR [1+rax]                        #52.6
        cmova     eax, ecx                                      #52.6
        neg       esi                                           #52.6
        inc       rdx                                           #50.2
        add       eax, esi                                      #52.6
        cmp       rdx, 600                                      #50.2
        jb        ..B4.2        # Prob 99%                      #50.2
                                # LOE rdx rbx rbp rdi r12 r13 r14 r15 eax xmm0
..B4.3:                         # Preds ..B4.2
                                # Execution count [1.00e+00]
        ret                                                     #54.9
        .align    16,0x90
                                # LOE
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
..___tag_value_init.50:
..L51:
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
        pxor      xmm0, xmm0                                    #24.27
        cvtsi2ss  xmm0, eax                                     #24.27
        divss     xmm0, DWORD PTR .L_2il0floatpacket.0[rip]     #24.34
        movss     DWORD PTR [r14+r15*4], xmm0                   #24.4
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
        pxor      xmm0, xmm0                                    #27.22
        inc       ebp                                           #22.23
        cvtsi2ss  xmm0, eax                                     #27.22
        divss     xmm0, DWORD PTR .L_2il0floatpacket.0[rip]     #27.29
        movss     DWORD PTR [r15+r13*4], xmm0                   #27.3
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
