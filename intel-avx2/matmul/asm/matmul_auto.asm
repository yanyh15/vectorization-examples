# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.1.0.166 Build 20191121";
# mark_description "-o asm/matmul_auto.asm -O2 -xCORE_AVX2 -S -masm=intel";
	.intel_syntax noprefix
	.file "matmul.c"
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
                                                          #47.34
        push      rbp                                           #47.34
	.cfi_def_cfa_offset 16
        mov       rbp, rsp                                      #47.34
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -128                                     #47.34
        push      r12                                           #47.34
        push      r13                                           #47.34
        push      r14                                           #47.34
        push      r15                                           #47.34
        push      rbx                                           #47.34
        sub       rsp, 88                                       #47.34
        mov       edi, 3                                        #47.34
        mov       esi, 10330110                                 #47.34
        call      __intel_new_feature_proc_init                 #47.34
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE r12 r13
..B1.36:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        vstmxcsr  DWORD PTR [rsp]                               #47.34
        mov       edi, 1048576                                  #48.16
        or        DWORD PTR [rsp], 32832                        #47.34
        vldmxcsr  DWORD PTR [rsp]                               #47.34
#       malloc(size_t)
        call      malloc                                        #48.16
                                # LOE rax r12 r13
..B1.35:                        # Preds ..B1.36
                                # Execution count [1.00e+00]
        mov       r14, rax                                      #48.16
                                # LOE r12 r13 r14
..B1.2:                         # Preds ..B1.35
                                # Execution count [1.00e+00]
        mov       edi, 1048576                                  #49.16
#       malloc(size_t)
        call      malloc                                        #49.16
                                # LOE rax r12 r13 r14
..B1.37:                        # Preds ..B1.2
                                # Execution count [1.00e+00]
        mov       r15, rax                                      #49.16
                                # LOE r12 r13 r14 r15
..B1.3:                         # Preds ..B1.37
                                # Execution count [1.00e+00]
        mov       edi, 1048576                                  #51.23
#       malloc(size_t)
        call      malloc                                        #51.23
                                # LOE rax r12 r13 r14 r15
..B1.38:                        # Preds ..B1.3
                                # Execution count [1.00e+00]
        mov       rbx, rax                                      #51.23
                                # LOE rbx r12 r13 r14 r15
..B1.4:                         # Preds ..B1.38
                                # Execution count [1.00e+00]
        xor       edi, edi                                      #53.11
#       time(time_t *)
        call      time                                          #53.11
                                # LOE rax rbx r12 r13 r14 r15
..B1.5:                         # Preds ..B1.4
                                # Execution count [1.00e+00]
        mov       edi, eax                                      #53.5
#       srand(unsigned int)
        call      srand                                         #53.5
                                # LOE rbx r12 r13 r14 r15
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.00e+00]
        xor       edx, edx                                      #54.5
        xor       eax, eax                                      #54.5
        mov       r13d, edx                                     #54.5
        mov       QWORD PTR [16+rsp], rbx                       #54.5[spill]
        mov       rbx, rax                                      #54.5
        mov       QWORD PTR [rsp], r15                          #54.5[spill]
                                # LOE rbx r14 r13d
..B1.7:                         # Preds ..B1.10 ..B1.6
                                # Execution count [5.12e+02]
        xor       r15d, r15d                                    #54.5
        lea       r12, QWORD PTR [r14+rbx*4]                    #54.5
                                # LOE rbx r12 r14 r15 r13d
..B1.8:                         # Preds ..B1.9 ..B1.7
                                # Execution count [2.62e+05]
#       rand(void)
        call      rand                                          #54.5
                                # LOE rbx r12 r14 r15 eax r13d
..B1.9:                         # Preds ..B1.8
                                # Execution count [2.62e+05]
        vxorps    xmm0, xmm0, xmm0                              #54.5
        vcvtsi2ss xmm0, xmm0, eax                               #54.5
        vdivss    xmm1, xmm0, DWORD PTR .L_2il0floatpacket.0[rip] #54.5
        vmovss    DWORD PTR [r12+r15*4], xmm1                   #54.5
        inc       r15                                           #54.5
        cmp       r15, 512                                      #54.5
        jl        ..B1.8        # Prob 99%                      #54.5
                                # LOE rbx r12 r14 r15 r13d
..B1.10:                        # Preds ..B1.9
                                # Execution count [5.12e+02]
        inc       r13d                                          #54.5
        add       rbx, 512                                      #54.5
        cmp       r13d, 512                                     #54.5
        jl        ..B1.7        # Prob 99%                      #54.5
                                # LOE rbx r14 r13d
..B1.11:                        # Preds ..B1.10
                                # Execution count [1.00e+00]
        xor       edx, edx                                      #55.5
        xor       eax, eax                                      #55.5
        mov       r13d, edx                                     #55.5
        mov       r15, QWORD PTR [rsp]                          #[spill]
        mov       rbx, rax                                      #55.5
        mov       QWORD PTR [24+rsp], r14                       #55.5[spill]
                                # LOE rbx r15 r13d
..B1.12:                        # Preds ..B1.15 ..B1.11
                                # Execution count [5.12e+02]
        xor       r14d, r14d                                    #55.5
        lea       r12, QWORD PTR [r15+rbx*4]                    #55.5
                                # LOE rbx r12 r14 r15 r13d
..B1.13:                        # Preds ..B1.14 ..B1.12
                                # Execution count [2.62e+05]
#       rand(void)
        call      rand                                          #55.5
                                # LOE rbx r12 r14 r15 eax r13d
..B1.14:                        # Preds ..B1.13
                                # Execution count [2.62e+05]
        vxorps    xmm0, xmm0, xmm0                              #55.5
        vcvtsi2ss xmm0, xmm0, eax                               #55.5
        vdivss    xmm1, xmm0, DWORD PTR .L_2il0floatpacket.0[rip] #55.5
        vmovss    DWORD PTR [r12+r14*4], xmm1                   #55.5
        inc       r14                                           #55.5
        cmp       r14, 512                                      #55.5
        jl        ..B1.13       # Prob 99%                      #55.5
                                # LOE rbx r12 r14 r15 r13d
..B1.15:                        # Preds ..B1.14
                                # Execution count [5.12e+02]
        inc       r13d                                          #55.5
        add       rbx, 512                                      #55.5
        cmp       r13d, 512                                     #55.5
        jl        ..B1.12       # Prob 99%                      #55.5
                                # LOE rbx r15 r13d
..B1.16:                        # Preds ..B1.15
                                # Execution count [1.00e+00]
        mov       rbx, QWORD PTR [16+rsp]                       #[spill]
        lea       rdi, QWORD PTR [rsp]                          #60.22
        mov       r14, QWORD PTR [24+rdi]                       #[spill]
..___tag_value_main.16:
#       ftime(struct timeb *)
        call      ftime                                         #60.22
..___tag_value_main.17:
                                # LOE rbx r12 r13 r14 r15
..B1.17:                        # Preds ..B1.16
                                # Execution count [9.00e-01]
        vxorpd    xmm0, xmm0, xmm0                              #60.22
        vxorpd    xmm1, xmm1, xmm1                              #60.22
        movzx     eax, WORD PTR [8+rsp]                         #60.22
        xor       r11b, r11b                                    #61.10
        vcvtsi2sd xmm0, xmm0, eax                               #60.22
        vcvtsi2sd xmm1, xmm1, QWORD PTR [rsp]                   #60.22
        vdivsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.1[rip] #60.22
        xor       eax, eax                                      #61.10
        vaddsd    xmm3, xmm1, xmm2                              #60.22
        vmovsd    QWORD PTR [40+rsp], xmm3                      #60.22[spill]
                                # LOE rbx r12 r14 r15 eax r11b
..B1.18:                        # Preds ..B1.24 ..B1.17
                                # Execution count [5.00e+00]
        mov       r8d, eax                                      #62.6
        xor       esi, esi                                      #62.6
                                # LOE rbx rsi r12 r14 r15 eax r8d r11b
..B1.19:                        # Preds ..B1.23 ..B1.18
                                # Execution count [2.56e+03]
        xor       ecx, ecx                                      #62.6
        lea       r10, QWORD PTR [r14+rsi*4]                    #62.6
        lea       rdi, QWORD PTR [rbx+rsi*4]                    #62.6
                                # LOE rcx rbx rsi rdi r10 r12 r14 r15 eax r8d r11b
..B1.20:                        # Preds ..B1.22 ..B1.19
                                # Execution count [1.31e+06]
        mov       DWORD PTR [48+rsp], eax                       #62.6
        xor       r9d, r9d                                      #62.6
        lea       rdx, QWORD PTR [r15+rcx*4]                    #62.6
                                # LOE rdx rcx rbx rsi rdi r9 r10 r12 r14 r15 eax r8d r11b
..B1.21:                        # Preds ..B1.21 ..B1.20
                                # Execution count [6.71e+08]
        mov       r13d, r9d                                     #62.6
        shl       r13d, 9                                       #62.6
        vmovss    xmm0, DWORD PTR [48+rsp]                      #62.6
        vmovss    xmm1, DWORD PTR [r10+r9*4]                    #62.6
        inc       r9                                            #62.6
        vfmadd132ss xmm1, xmm0, DWORD PTR [rdx+r13*4]           #62.6
        vmovss    DWORD PTR [48+rsp], xmm1                      #62.6
        cmp       r9, 512                                       #62.6
        jl        ..B1.21       # Prob 99%                      #62.6
                                # LOE rdx rcx rbx rsi rdi r9 r10 r12 r14 r15 eax r8d r11b
..B1.22:                        # Preds ..B1.21
                                # Execution count [1.31e+06]
        mov       edx, DWORD PTR [48+rsp]                       #62.6
        mov       DWORD PTR [rdi+rcx*4], edx                    #62.6
        inc       rcx                                           #62.6
        cmp       rcx, 512                                      #62.6
        jl        ..B1.20       # Prob 99%                      #62.6
                                # LOE rcx rbx rsi rdi r10 r12 r14 r15 eax r8d r11b
..B1.23:                        # Preds ..B1.22
                                # Execution count [2.56e+03]
        inc       r8d                                           #62.6
        add       rsi, 512                                      #62.6
        cmp       r8d, 512                                      #62.6
        jl        ..B1.19       # Prob 99%                      #62.6
                                # LOE rbx rsi r12 r14 r15 eax r8d r11b
..B1.24:                        # Preds ..B1.23
                                # Execution count [5.00e+00]
        inc       r11b                                          #61.27
        cmp       r11b, 10                                      #61.17
        jl        ..B1.18       # Prob 82%                      #61.17
                                # LOE rbx r12 r14 r15 eax r11b
..B1.25:                        # Preds ..B1.24
                                # Execution count [1.00e+00]
        lea       rdi, QWORD PTR [16+rsp]                       #64.16
..___tag_value_main.20:
#       ftime(struct timeb *)
        call      ftime                                         #64.16
..___tag_value_main.21:
                                # LOE r12 r13
..B1.26:                        # Preds ..B1.25
                                # Execution count [1.00e+00]
        vxorpd    xmm0, xmm0, xmm0                              #64.16
        vxorpd    xmm1, xmm1, xmm1                              #64.16
        movzx     eax, WORD PTR [24+rsp]                        #64.16
        mov       edi, offset flat: il0_peep_printf_format_0    #69.5
        vcvtsi2sd xmm0, xmm0, eax                               #64.16
        vcvtsi2sd xmm1, xmm1, QWORD PTR [16+rsp]                #64.16
        vdivsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.1[rip] #64.16
        vaddsd    xmm3, xmm1, xmm2                              #64.16
        vsubsd    xmm4, xmm3, QWORD PTR [40+rsp]                #64.31[spill]
        vmovsd    QWORD PTR [32+rsp], xmm4                      #64.31[spill]
        call      puts                                          #69.5
                                # LOE r12 r13
..B1.27:                        # Preds ..B1.26
                                # Execution count [1.00e+00]
        mov       edi, offset flat: .L_2__STRING.1              #70.5
        mov       esi, 512                                      #70.5
        xor       eax, eax                                      #70.5
..___tag_value_main.24:
#       printf(const char *__restrict__, ...)
        call      printf                                        #70.5
..___tag_value_main.25:
                                # LOE r12 r13
..B1.28:                        # Preds ..B1.27
                                # Execution count [1.00e+00]
        mov       edi, offset flat: il0_peep_printf_format_1    #71.5
        call      puts                                          #71.5
                                # LOE r12 r13
..B1.29:                        # Preds ..B1.28
                                # Execution count [1.00e+00]
        mov       edi, offset flat: il0_peep_printf_format_2    #72.5
        call      puts                                          #72.5
                                # LOE r12 r13
..B1.30:                        # Preds ..B1.29
                                # Execution count [1.00e+00]
        mov       edi, offset flat: il0_peep_printf_format_3    #73.5
        call      puts                                          #73.5
                                # LOE r12 r13
..B1.31:                        # Preds ..B1.30
                                # Execution count [1.00e+00]
        vmovsd    xmm0, QWORD PTR [32+rsp]                      #74.5[spill]
        mov       edi, offset flat: .L_2__STRING.4              #74.5
        vmulsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.3[rip] #74.5
        mov       eax, 2                                        #74.5
        vmovsd    xmm1, QWORD PTR .L_2il0floatpacket.2[rip]     #74.5
        vdivsd    xmm1, xmm1, xmm2                              #74.5
..___tag_value_main.27:
#       printf(const char *__restrict__, ...)
        call      printf                                        #74.5
..___tag_value_main.28:
                                # LOE r12 r13
..B1.32:                        # Preds ..B1.31
                                # Execution count [1.00e+00]
        xor       eax, eax                                      #76.12
        add       rsp, 88                                       #76.12
	.cfi_restore 3
        pop       rbx                                           #76.12
	.cfi_restore 15
        pop       r15                                           #76.12
	.cfi_restore 14
        pop       r14                                           #76.12
	.cfi_restore 13
        pop       r13                                           #76.12
	.cfi_restore 12
        pop       r12                                           #76.12
        mov       rsp, rbp                                      #76.12
        pop       rbp                                           #76.12
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #76.12
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
..___tag_value_read_timer.37:
..L38:
                                                         #16.21
        sub       rsp, 24                                       #16.21
	.cfi_def_cfa_offset 32
        lea       rdi, QWORD PTR [rsp]                          #18.5
..___tag_value_read_timer.40:
#       ftime(struct timeb *)
        call      ftime                                         #18.5
..___tag_value_read_timer.41:
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
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_matmul_serial.44:
..L45:
                                                         #31.50
        push      r15                                           #31.50
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
        push      rbx                                           #31.50
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
        push      rbp                                           #31.50
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
        mov       r8, rdx                                       #31.50
        xor       edx, edx                                      #36.10
        xor       eax, eax                                      #36.14
        xor       ecx, ecx                                      #36.10
                                # LOE rax rsi rdi r8 r12 r13 r14 edx ecx
..B3.2:                         # Preds ..B3.6 ..B3.1
                                # Execution count [5.12e+02]
        xor       ebp, ebp                                      #37.14
        lea       r11, QWORD PTR [rdi+rax*4]                    #40.26
        lea       r9, QWORD PTR [r8+rax*4]                      #42.13
                                # LOE rax rbp rsi rdi r8 r9 r11 r12 r13 r14 edx ecx
..B3.3:                         # Preds ..B3.5 ..B3.2
                                # Execution count [2.62e+05]
        mov       DWORD PTR [-16+rsp], edx                      #38.13
        xor       r10d, r10d                                    #39.18
        lea       rbx, QWORD PTR [rsi+rbp*4]                    #40.41
                                # LOE rax rbx rbp rsi rdi r8 r9 r10 r11 r12 r13 r14 edx ecx
..B3.4:                         # Preds ..B3.4 ..B3.3
                                # Execution count [1.34e+08]
        mov       r15d, r10d                                    #40.17
        shl       r15d, 9                                       #40.47
        vmovss    xmm0, DWORD PTR [-16+rsp]                     #40.17
        vmovss    xmm1, DWORD PTR [r11+r10*4]                   #40.26
        inc       r10                                           #39.32
        vfmadd132ss xmm1, xmm0, DWORD PTR [rbx+r15*4]           #40.17
        vmovss    DWORD PTR [-16+rsp], xmm1                     #40.17
        cmp       r10, 512                                      #39.29
        jl        ..B3.4        # Prob 99%                      #39.29
                                # LOE rax rbx rbp rsi rdi r8 r9 r10 r11 r12 r13 r14 edx ecx
..B3.5:                         # Preds ..B3.4
                                # Execution count [2.62e+05]
        mov       ebx, DWORD PTR [-16+rsp]                      #42.28
        mov       DWORD PTR [r9+rbp*4], ebx                     #42.13
        inc       rbp                                           #37.28
        cmp       rbp, 512                                      #37.25
        jl        ..B3.3        # Prob 99%                      #37.25
                                # LOE rax rbp rsi rdi r8 r9 r11 r12 r13 r14 edx ecx
..B3.6:                         # Preds ..B3.5
                                # Execution count [5.12e+02]
        inc       ecx                                           #36.24
        add       rax, 512                                      #36.24
        cmp       ecx, 512                                      #36.21
        jl        ..B3.2        # Prob 99%                      #36.21
                                # LOE rax rsi rdi r8 r12 r13 r14 edx ecx
..B3.7:                         # Preds ..B3.6
                                # Execution count [1.00e+00]
	.cfi_restore 6
        pop       rbp                                           #45.1
	.cfi_def_cfa_offset 24
	.cfi_restore 3
        pop       rbx                                           #45.1
	.cfi_def_cfa_offset 16
	.cfi_restore 15
        pop       r15                                           #45.1
	.cfi_def_cfa_offset 8
        ret                                                     #45.1
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
.L_2__routine_start_init_3:
# -- Begin  init
	.text
# mark_begin;
       .align    16,0x90
	.globl init
# --- init(float *)
init:
# parameter 1: rdi
..B4.1:                         # Preds ..B4.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_init.59:
..L60:
                                                         #22.21
        push      r13                                           #22.21
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
        push      r14                                           #22.21
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
        push      r15                                           #22.21
	.cfi_def_cfa_offset 32
	.cfi_offset 15, -32
        push      rbx                                           #22.21
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
        push      rbp                                           #22.21
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
        xor       edx, edx                                      #24.10
        xor       eax, eax                                      #24.14
        mov       ebp, edx                                      #24.14
        mov       rbx, rax                                      #24.14
        mov       r14, rdi                                      #24.14
                                # LOE rbx r12 r14 ebp
..B4.2:                         # Preds ..B4.5 ..B4.1
                                # Execution count [5.12e+02]
        xor       r15d, r15d                                    #25.14
        lea       r13, QWORD PTR [r14+rbx*4]                    #26.13
                                # LOE rbx r12 r13 r14 r15 ebp
..B4.3:                         # Preds ..B4.4 ..B4.2
                                # Execution count [2.62e+05]
#       rand(void)
        call      rand                                          #26.31
                                # LOE rbx r12 r13 r14 r15 eax ebp
..B4.4:                         # Preds ..B4.3
                                # Execution count [2.62e+05]
        vxorps    xmm0, xmm0, xmm0                              #26.31
        vcvtsi2ss xmm0, xmm0, eax                               #26.31
        vdivss    xmm1, xmm0, DWORD PTR .L_2il0floatpacket.0[rip] #26.38
        vmovss    DWORD PTR [r13+r15*4], xmm1                   #26.13
        inc       r15                                           #25.28
        cmp       r15, 512                                      #25.25
        jl        ..B4.3        # Prob 99%                      #25.25
                                # LOE rbx r12 r13 r14 r15 ebp
..B4.5:                         # Preds ..B4.4
                                # Execution count [5.12e+02]
        inc       ebp                                           #24.24
        add       rbx, 512                                      #24.24
        cmp       ebp, 512                                      #24.21
        jl        ..B4.2        # Prob 99%                      #24.21
                                # LOE rbx r12 r14 ebp
..B4.6:                         # Preds ..B4.5
                                # Execution count [1.00e+00]
	.cfi_restore 6
        pop       rbp                                           #29.1
	.cfi_def_cfa_offset 40
	.cfi_restore 3
        pop       rbx                                           #29.1
	.cfi_def_cfa_offset 32
	.cfi_restore 15
        pop       r15                                           #29.1
	.cfi_def_cfa_offset 24
	.cfi_restore 14
        pop       r14                                           #29.1
	.cfi_def_cfa_offset 16
	.cfi_restore 13
        pop       r13                                           #29.1
	.cfi_def_cfa_offset 8
        ret                                                     #29.1
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
	.long	1935633525
	.long	1634300517
	.long	151599724
	.long	157692965
	.long	174470181
	.byte	0
	.type	.L_2__STRING.4,@object
	.size	.L_2__STRING.4,25
	.data
	.section .note.GNU-stack, ""
# End
