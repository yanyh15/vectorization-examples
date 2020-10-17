# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.1.0.166 Build 20191121";
# mark_description "-o asm/matvec_avx.asm -O2 -fma -xCORE_AVX2 -march=skylake -S -masm=intel";
	.intel_syntax noprefix
	.file "matvec_intrinsics.c"
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
                                                          #97.33
        push      rbp                                           #97.33
	.cfi_def_cfa_offset 16
        mov       rbp, rsp                                      #97.33
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        and       rsp, -128                                     #97.33
        push      r12                                           #97.33
        push      r13                                           #97.33
        push      r14                                           #97.33
        push      r15                                           #97.33
        push      rbx                                           #97.33
        sub       rsp, 88                                       #97.33
        mov       edi, 3                                        #97.33
        mov       esi, 278765566                                #97.33
        call      __intel_new_feature_proc_init                 #97.33
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B1.35:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        vstmxcsr  DWORD PTR [rsp]                               #97.33
        mov       edi, 5760000                                  #99.18
        or        DWORD PTR [rsp], 32832                        #97.33
        vldmxcsr  DWORD PTR [rsp]                               #97.33
#       malloc(size_t)
        call      malloc                                        #99.18
                                # LOE rax
..B1.34:                        # Preds ..B1.35
                                # Execution count [1.00e+00]
        mov       r12, rax                                      #99.18
                                # LOE r12
..B1.2:                         # Preds ..B1.34
                                # Execution count [1.00e+00]
        mov       edi, 4800                                     #100.18
#       malloc(size_t)
        call      malloc                                        #100.18
                                # LOE rax r12
..B1.36:                        # Preds ..B1.2
                                # Execution count [1.00e+00]
        mov       rbx, rax                                      #100.18
                                # LOE rbx r12
..B1.3:                         # Preds ..B1.36
                                # Execution count [1.00e+00]
        mov       edi, 4800                                     #101.15
#       malloc(size_t)
        call      malloc                                        #101.15
                                # LOE rax rbx r12
..B1.37:                        # Preds ..B1.3
                                # Execution count [1.00e+00]
        mov       r14, rax                                      #101.15
                                # LOE rbx r12 r14
..B1.4:                         # Preds ..B1.37
                                # Execution count [1.00e+00]
        mov       edi, 4800                                     #102.18
#       malloc(size_t)
        call      malloc                                        #102.18
                                # LOE rax rbx r12 r14
..B1.38:                        # Preds ..B1.4
                                # Execution count [1.00e+00]
        mov       r13, rax                                      #102.18
                                # LOE rbx r12 r13 r14
..B1.5:                         # Preds ..B1.38
                                # Execution count [1.00e+00]
        mov       edi, 4800                                     #103.19
#       malloc(size_t)
        call      malloc                                        #103.19
                                # LOE rax rbx r12 r13 r14
..B1.39:                        # Preds ..B1.5
                                # Execution count [1.00e+00]
        mov       r15, rax                                      #103.19
                                # LOE rbx r12 r13 r14 r15
..B1.6:                         # Preds ..B1.39
                                # Execution count [1.00e+00]
        xor       edi, edi                                      #105.8
#       time(time_t *)
        call      time                                          #105.8
                                # LOE rax rbx r12 r13 r14 r15
..B1.7:                         # Preds ..B1.6
                                # Execution count [1.00e+00]
        mov       edi, eax                                      #105.2
#       srand(unsigned int)
        call      srand                                         #105.2
                                # LOE rbx r12 r13 r14 r15
..B1.8:                         # Preds ..B1.7
                                # Execution count [1.00e+00]
        xor       edx, edx                                      #106.2
        xor       ecx, ecx                                      #106.2
        mov       QWORD PTR [32+rsp], r15                       #106.2[spill]
        mov       r15d, ecx                                     #106.2
        mov       QWORD PTR [8+rsp], r13                        #106.2[spill]
        mov       r13, rdx                                      #106.2
        mov       QWORD PTR [rsp], r14                          #106.2[spill]
        mov       r14, rdx                                      #106.2
                                # LOE rbx r12 r13 r14 r15d
..B1.9:                         # Preds ..B1.13 ..B1.8
                                # Execution count [1.20e+03]
        xor       edx, edx                                      #106.2
        lea       rax, QWORD PTR [r12+r13*4]                    #106.2
        mov       QWORD PTR [24+rsp], rbx                       #106.2[spill]
        mov       rbx, rax                                      #106.2
        mov       QWORD PTR [16+rsp], r12                       #106.2[spill]
        mov       r12, rdx                                      #106.2
                                # LOE rbx r12 r13 r14 r15d
..B1.10:                        # Preds ..B1.11 ..B1.9
                                # Execution count [1.44e+06]
#       rand(void)
        call      rand                                          #106.2
                                # LOE rbx r12 r13 r14 eax r15d
..B1.11:                        # Preds ..B1.10
                                # Execution count [1.44e+06]
        vxorps    xmm0, xmm0, xmm0                              #106.2
        vcvtsi2ss xmm0, xmm0, eax                               #106.2
        vdivss    xmm1, xmm0, DWORD PTR .L_2il0floatpacket.0[rip] #106.2
        vmovss    DWORD PTR [rbx+r12*4], xmm1                   #106.2
        inc       r12                                           #106.2
        cmp       r12, 1200                                     #106.2
        jl        ..B1.10       # Prob 99%                      #106.2
                                # LOE rbx r12 r13 r14 r15d
..B1.12:                        # Preds ..B1.11
                                # Execution count [1.20e+03]
        mov       rbx, QWORD PTR [24+rsp]                       #[spill]
        mov       r12, QWORD PTR [16+rsp]                       #[spill]
#       rand(void)
        call      rand                                          #106.2
                                # LOE rbx r12 r13 r14 eax r15d
..B1.13:                        # Preds ..B1.12
                                # Execution count [1.20e+03]
        vxorps    xmm0, xmm0, xmm0                              #106.2
        inc       r15d                                          #106.2
        vcvtsi2ss xmm0, xmm0, eax                               #106.2
        vdivss    xmm1, xmm0, DWORD PTR .L_2il0floatpacket.0[rip] #106.2
        vmovss    DWORD PTR [rbx+r14*4], xmm1                   #106.2
        add       r13, 1200                                     #106.2
        inc       r14                                           #106.2
        cmp       r15d, 1200                                    #106.2
        jl        ..B1.9        # Prob 99%                      #106.2
                                # LOE rbx r12 r13 r14 r15d
..B1.14:                        # Preds ..B1.13
                                # Execution count [1.00e+00]
        lea       rdi, QWORD PTR [16+rsp]                       #108.17
        mov       r15, QWORD PTR [16+rdi]                       #[spill]
        mov       r13, QWORD PTR [-8+rdi]                       #[spill]
        mov       r14, QWORD PTR [rsp]                          #[spill]
..___tag_value_main.20:
#       ftime(struct timeb *)
        call      ftime                                         #108.17
..___tag_value_main.21:
                                # LOE rbx r12 r13 r14 r15
..B1.15:                        # Preds ..B1.14
                                # Execution count [1.18e+00]
        vxorpd    xmm0, xmm0, xmm0                              #108.17
        vxorpd    xmm1, xmm1, xmm1                              #108.17
        movzx     eax, WORD PTR [24+rsp]                        #108.17
        vcvtsi2sd xmm0, xmm0, eax                               #108.17
        vcvtsi2sd xmm1, xmm1, QWORD PTR [16+rsp]                #108.17
        vdivsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.1[rip] #108.17
        vxorps    ymm0, ymm0, ymm0                              #109.13
        xor       eax, eax                                      #109.13
        vaddsd    xmm3, xmm1, xmm2                              #108.17
        vmovsd    QWORD PTR [40+rsp], xmm3                      #108.17[spill]
                                # LOE rbx r12 r13 r14 r15 eax ymm0
..B1.16:                        # Preds ..B1.20 ..B1.15
                                # Execution count [1.00e+03]
        vmovaps   ymm2, ymm0                                    #110.3
        xor       edx, edx                                      #110.3
        vmovaps   ymm1, ymm2                                    #110.3
                                # LOE rdx rbx r12 r13 r14 r15 eax ymm0 ymm1 ymm2
..B1.17:                        # Preds ..B1.19 ..B1.16
                                # Execution count [1.20e+06]
        imul      rcx, rdx, 1200                                #110.3
        xor       esi, esi                                      #110.3
        lea       rcx, QWORD PTR [r12+rcx*4]                    #110.3
                                # LOE rdx rcx rbx rsi r12 r13 r14 r15 eax ymm0 ymm1 ymm2
..B1.18:                        # Preds ..B1.18 ..B1.17
                                # Execution count [9.01e+07]
        vmovups   ymm3, YMMWORD PTR [rbx+rsi*4]                 #110.3
        vmovups   ymm4, YMMWORD PTR [32+rbx+rsi*4]              #110.3
        vfmadd231ps ymm2, ymm3, YMMWORD PTR [rcx+rsi*4]         #110.3
        vfmadd231ps ymm1, ymm4, YMMWORD PTR [32+rcx+rsi*4]      #110.3
        add       rsi, 16                                       #110.3
        cmp       rsi, 1200                                     #110.3
        jle       ..B1.18       # Prob 98%                      #110.3
                                # LOE rdx rcx rbx rsi r12 r13 r14 r15 eax ymm0 ymm1 ymm2
..B1.19:                        # Preds ..B1.18
                                # Execution count [1.20e+06]
        vaddps    ymm1, ymm2, ymm1                              #110.3
        vhaddps   ymm2, ymm1, ymm1                              #110.3
        vhaddps   ymm3, ymm2, ymm2                              #110.3
        vmovups   YMMWORD PTR [48+rsp], ymm3                    #110.3
        vmovss    xmm4, DWORD PTR [52+rsp]                      #110.3
        vmovaps   ymm2, ymm0                                    #110.3
        vmovaps   ymm1, ymm2                                    #110.3
        vaddss    xmm5, xmm4, DWORD PTR [68+rsp]                #110.3
        vmovss    DWORD PTR [r13+rdx*4], xmm5                   #110.3
        inc       rdx                                           #110.3
        cmp       rdx, 1200                                     #110.3
        jl        ..B1.17       # Prob 99%                      #110.3
                                # LOE rdx rbx r12 r13 r14 r15 eax ymm0 ymm1 ymm2
..B1.20:                        # Preds ..B1.19
                                # Execution count [1.00e+03]
        inc       eax                                           #109.28
        cmp       eax, 1000                                     #109.20
        jl        ..B1.16       # Prob 99%                      #109.20
                                # LOE rbx r12 r13 r14 r15 eax ymm0
..B1.21:                        # Preds ..B1.20
                                # Execution count [1.00e+00]
        vzeroupper                                              #111.14
        lea       rdi, QWORD PTR [rsp]                          #111.14
..___tag_value_main.24:
#       ftime(struct timeb *)
        call      ftime                                         #111.14
..___tag_value_main.25:
                                # LOE rbx r12 r13 r14 r15
..B1.22:                        # Preds ..B1.21
                                # Execution count [1.00e+00]
        vxorpd    xmm0, xmm0, xmm0                              #111.14
        vxorpd    xmm1, xmm1, xmm1                              #111.14
        movzx     eax, WORD PTR [8+rsp]                         #111.14
        mov       edi, offset flat: il0_peep_printf_format_0    #115.2
        vcvtsi2sd xmm0, xmm0, eax                               #111.14
        vcvtsi2sd xmm1, xmm1, QWORD PTR [rsp]                   #111.14
        vdivsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.1[rip] #111.14
        vaddsd    xmm3, xmm1, xmm2                              #111.14
        vsubsd    xmm4, xmm3, QWORD PTR [40+rsp]                #111.29[spill]
        vmovsd    QWORD PTR [32+rsp], xmm4                      #111.29[spill]
        call      puts                                          #115.2
                                # LOE rbx r12 r13 r14 r15
..B1.23:                        # Preds ..B1.22
                                # Execution count [1.00e+00]
        mov       edi, offset flat: il0_peep_printf_format_1    #116.5
        call      puts                                          #116.5
                                # LOE rbx r12 r13 r14 r15
..B1.24:                        # Preds ..B1.23
                                # Execution count [1.00e+00]
        mov       edi, offset flat: il0_peep_printf_format_2    #117.5
        call      puts                                          #117.5
                                # LOE rbx r12 r13 r14 r15
..B1.25:                        # Preds ..B1.24
                                # Execution count [1.00e+00]
        vmovsd    xmm0, QWORD PTR [32+rsp]                      #118.5[spill]
        mov       edi, offset flat: .L_2__STRING.3              #118.5
        vmulsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.3[rip] #118.5
        mov       eax, 2                                        #118.5
        vmovsd    xmm1, QWORD PTR .L_2il0floatpacket.2[rip]     #118.5
        vdivsd    xmm1, xmm1, xmm2                              #118.5
..___tag_value_main.29:
#       printf(const char *__restrict__, ...)
        call      printf                                        #118.5
..___tag_value_main.30:
                                # LOE rbx r12 r13 r14 r15
..B1.26:                        # Preds ..B1.25
                                # Execution count [1.00e+00]
        mov       rdi, r12                                      #121.5
#       free(void *)
        call      free                                          #121.5
                                # LOE rbx r13 r14 r15
..B1.27:                        # Preds ..B1.26
                                # Execution count [1.00e+00]
        mov       rdi, rbx                                      #122.5
#       free(void *)
        call      free                                          #122.5
                                # LOE r13 r14 r15
..B1.28:                        # Preds ..B1.27
                                # Execution count [1.00e+00]
        mov       rdi, r14                                      #123.5
#       free(void *)
        call      free                                          #123.5
                                # LOE r13 r15
..B1.29:                        # Preds ..B1.28
                                # Execution count [1.00e+00]
        mov       rdi, r13                                      #124.5
#       free(void *)
        call      free                                          #124.5
                                # LOE r15
..B1.30:                        # Preds ..B1.29
                                # Execution count [1.00e+00]
        mov       rdi, r15                                      #125.5
#       free(void *)
        call      free                                          #125.5
                                # LOE
..B1.31:                        # Preds ..B1.30
                                # Execution count [1.00e+00]
        xor       eax, eax                                      #127.9
        add       rsp, 88                                       #127.9
	.cfi_restore 3
        pop       rbx                                           #127.9
	.cfi_restore 15
        pop       r15                                           #127.9
	.cfi_restore 14
        pop       r14                                           #127.9
	.cfi_restore 13
        pop       r13                                           #127.9
	.cfi_restore 12
        pop       r12                                           #127.9
        mov       rsp, rbp                                      #127.9
        pop       rbp                                           #127.9
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #127.9
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
..___tag_value_read_timer.39:
..L40:
                                                         #18.21
        sub       rsp, 24                                       #18.21
	.cfi_def_cfa_offset 32
        lea       rdi, QWORD PTR [rsp]                          #20.5
..___tag_value_read_timer.42:
#       ftime(struct timeb *)
        call      ftime                                         #20.5
..___tag_value_read_timer.43:
                                # LOE rbx rbp r12 r13 r14 r15
..B2.2:                         # Preds ..B2.1
                                # Execution count [1.00e+00]
        vxorpd    xmm0, xmm0, xmm0                              #21.40
        vxorpd    xmm1, xmm1, xmm1                              #21.21
        movzx     eax, WORD PTR [8+rsp]                         #21.40
        vcvtsi2sd xmm0, xmm0, eax                               #21.40
        vcvtsi2sd xmm1, xmm1, QWORD PTR [rsp]                   #21.21
        vdivsd    xmm2, xmm0, QWORD PTR .L_2il0floatpacket.1[rip] #21.53
        vaddsd    xmm0, xmm1, xmm2                              #21.53
        add       rsp, 24                                       #21.53
	.cfi_def_cfa_offset 8
        ret                                                     #21.53
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
.L_2__routine_start_matvec_serial_2:
# -- Begin  matvec_serial
	.text
# mark_begin;
       .align    16,0x90
	.globl matvec_serial
# --- matvec_serial(float *, float *, float *)
matvec_serial:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
..B3.1:                         # Preds ..B3.0
                                # Execution count [5.00e+00]
	.cfi_startproc
..___tag_value_matvec_serial.46:
..L47:
                                                         #36.65
        xor       eax, eax                                      #38.17
        mov       DWORD PTR [-8+rsp], eax                       #38.17
        mov       DWORD PTR [-8+rsp], eax                       #40.7
        mov       ecx, DWORD PTR [-8+rsp]                       #40.14
        cmp       ecx, 1200                                     #40.16
        jge       ..B3.7        # Prob 10%                      #40.16
                                # LOE rdx rbx rbp rsi rdi r12 r13 r14 r15
..B3.3:                         # Preds ..B3.1 ..B3.5
                                # Execution count [5.00e+00]
        xor       eax, eax                                      #43.14
        vxorps    xmm0, xmm0, xmm0                              #41.11
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B3.4:                         # Preds ..B3.4 ..B3.3
                                # Execution count [6.00e+03]
        mov       ecx, DWORD PTR [-8+rsp]                       #44.17
        imul      r8d, ecx, 1200                                #44.19
        vmovss    xmm1, DWORD PTR [rsi+rax*4]                   #44.26
        movsxd    r8, r8d                                       #44.10
        add       r8, rax                                       #44.17
        inc       rax                                           #43.24
        vfmadd231ss xmm0, xmm1, DWORD PTR [rdi+r8*4]            #44.4
        cmp       rax, 1200                                     #43.21
        jl        ..B3.4        # Prob 99%                      #43.21
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B3.5:                         # Preds ..B3.4
                                # Execution count [5.00e+00]
        movsxd    rax, DWORD PTR [-8+rsp]                       #47.10
        vmovss    DWORD PTR [rdx+rax*4], xmm0                   #47.3
        inc       DWORD PTR [-8+rsp]                            #40.19
        mov       ecx, DWORD PTR [-8+rsp]                       #40.14
        cmp       ecx, 1200                                     #40.16
        jl        ..B3.3        # Prob 82%                      #40.16
                                # LOE rdx rbx rbp rsi rdi r12 r13 r14 r15
..B3.7:                         # Preds ..B3.5 ..B3.1
                                # Execution count [1.00e+00]
        ret                                                     #49.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	matvec_serial,@function
	.size	matvec_serial,.-matvec_serial
..LNmatvec_serial.2:
	.data
# -- End  matvec_serial
	.text
.L_2__routine_start_matvec_3:
# -- Begin  matvec
	.text
# mark_begin;
       .align    16,0x90
	.globl matvec
# --- matvec(float *, float *, float *)
matvec:
# parameter 1: rdi
# parameter 2: rsi
# parameter 3: rdx
..B4.1:                         # Preds ..B4.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_matvec.49:
..L50:
                                                         #52.58
        xor       eax, eax                                      #61.13
        vxorps    ymm2, ymm2, ymm2                              #58.12
        vmovaps   ymm1, ymm2                                    #58.12
        vmovaps   ymm0, ymm2                                    #59.13
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 ymm0 ymm1 ymm2
..B4.2:                         # Preds ..B4.4 ..B4.1
                                # Execution count [1.20e+03]
        imul      rcx, rax, 1200                                #62.23
        xor       r8d, r8d                                      #63.9
        lea       rcx, QWORD PTR [rdi+rcx*4]                    #66.28
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r12 r13 r14 r15 ymm0 ymm1 ymm2
..B4.3:                         # Preds ..B4.3 ..B4.2
                                # Execution count [9.01e+04]
        vmovups   ymm3, YMMWORD PTR [rsi+r8*4]                  #67.28
        vmovups   ymm4, YMMWORD PTR [32+rsi+r8*4]               #70.29
        vfmadd231ps ymm2, ymm3, YMMWORD PTR [rcx+r8*4]          #72.14
        vfmadd231ps ymm0, ymm4, YMMWORD PTR [32+rcx+r8*4]       #73.15
        add       r8, 16                                        #65.16
        cmp       r8, 1200                                      #65.13
        jle       ..B4.3        # Prob 98%                      #65.13
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r12 r13 r14 r15 ymm0 ymm1 ymm2
..B4.4:                         # Preds ..B4.3
                                # Execution count [1.20e+03]
        vaddps    ymm0, ymm2, ymm0                              #83.13
        vhaddps   ymm2, ymm0, ymm0                              #84.13
        vhaddps   ymm3, ymm2, ymm2                              #85.13
        vmovups   YMMWORD PTR [-40+rsp], ymm3                   #87.20
        vmovss    xmm4, DWORD PTR [-36+rsp]                     #89.15
        vmovaps   ymm2, ymm1                                    #91.13
        vmovaps   ymm0, ymm2                                    #92.14
        vaddss    xmm5, xmm4, DWORD PTR [-20+rsp]               #89.24
        vmovss    DWORD PTR [rdx+rax*4], xmm5                   #89.3
        inc       rax                                           #61.23
        cmp       rax, 1200                                     #61.20
        jl        ..B4.2        # Prob 99%                      #61.20
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 ymm0 ymm1 ymm2
..B4.5:                         # Preds ..B4.4
                                # Execution count [1.00e+00]
        vzeroupper                                              #95.1
        ret                                                     #95.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	matvec,@function
	.size	matvec,.-matvec
..LNmatvec.3:
	.data
# -- End  matvec
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
..___tag_value_init.52:
..L53:
                                                         #25.41
        push      r12                                           #25.41
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
        push      r13                                           #25.41
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
        push      r14                                           #25.41
	.cfi_def_cfa_offset 32
	.cfi_offset 14, -32
        push      r15                                           #25.41
	.cfi_def_cfa_offset 40
	.cfi_offset 15, -40
        push      rbx                                           #25.41
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
        push      rbp                                           #25.41
	.cfi_def_cfa_offset 56
	.cfi_offset 6, -56
        push      rsi                                           #25.41
	.cfi_def_cfa_offset 64
        xor       edx, edx                                      #26.13
        xor       ecx, ecx                                      #26.13
        mov       rbx, rdx                                      #26.13
        mov       r13, rdx                                      #26.13
        mov       ebp, ecx                                      #26.13
        mov       r15, rsi                                      #26.13
        mov       r12, rdi                                      #26.13
                                # LOE rbx r12 r13 r15 ebp
..B5.2:                         # Preds ..B5.6 ..B5.1
                                # Execution count [1.20e+03]
        xor       eax, eax                                      #27.14
        lea       r14, QWORD PTR [r12+rbx*4]                    #28.4
        mov       QWORD PTR [rsp], r15                          #28.4[spill]
        mov       r15, rax                                      #28.4
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.3:                         # Preds ..B5.4 ..B5.2
                                # Execution count [1.44e+06]
#       rand(void)
        call      rand                                          #28.27
                                # LOE rbx r12 r13 r14 r15 eax ebp
..B5.4:                         # Preds ..B5.3
                                # Execution count [1.44e+06]
        vxorps    xmm0, xmm0, xmm0                              #28.27
        vcvtsi2ss xmm0, xmm0, eax                               #28.27
        vdivss    xmm1, xmm0, DWORD PTR .L_2il0floatpacket.0[rip] #28.34
        vmovss    DWORD PTR [r14+r15*4], xmm1                   #28.4
        inc       r15                                           #27.24
        cmp       r15, 1200                                     #27.21
        jl        ..B5.3        # Prob 99%                      #27.21
                                # LOE rbx r12 r13 r14 r15 ebp
..B5.5:                         # Preds ..B5.4
                                # Execution count [1.20e+03]
        mov       r15, QWORD PTR [rsp]                          #[spill]
#       rand(void)
        call      rand                                          #31.22
                                # LOE rbx r12 r13 r15 eax ebp
..B5.6:                         # Preds ..B5.5
                                # Execution count [1.20e+03]
        vxorps    xmm0, xmm0, xmm0                              #31.22
        inc       ebp                                           #26.23
        vcvtsi2ss xmm0, xmm0, eax                               #31.22
        vdivss    xmm1, xmm0, DWORD PTR .L_2il0floatpacket.0[rip] #31.29
        vmovss    DWORD PTR [r15+r13*4], xmm1                   #31.3
        add       rbx, 1200                                     #26.23
        inc       r13                                           #26.23
        cmp       ebp, 1200                                     #26.20
        jl        ..B5.2        # Prob 99%                      #26.20
                                # LOE rbx r12 r13 r15 ebp
..B5.7:                         # Preds ..B5.6
                                # Execution count [1.00e+00]
        pop       rcx                                           #33.1
	.cfi_def_cfa_offset 56
	.cfi_restore 6
        pop       rbp                                           #33.1
	.cfi_def_cfa_offset 48
	.cfi_restore 3
        pop       rbx                                           #33.1
	.cfi_def_cfa_offset 40
	.cfi_restore 15
        pop       r15                                           #33.1
	.cfi_def_cfa_offset 32
	.cfi_restore 14
        pop       r14                                           #33.1
	.cfi_def_cfa_offset 24
	.cfi_restore 13
        pop       r13                                           #33.1
	.cfi_def_cfa_offset 16
	.cfi_restore 12
        pop       r12                                           #33.1
	.cfi_def_cfa_offset 8
        ret                                                     #33.1
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
	.section .rodata.str1.4, "aMS",@progbits,1
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.3:
	.long	1920229709
	.long	1982691433
	.long	1869898597
	.long	1093148786
	.long	975788118
	.long	874842377
	.long	874842470
	.word	2662
	.byte	0
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,31
	.data
	.section .note.GNU-stack, ""
# End
