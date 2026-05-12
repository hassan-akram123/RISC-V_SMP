.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x29, h0_start
jalr x0, x29, 0
h0_start:
                  li x9, 0x40000100
                  csrw 0x301, x9
kernel_sp:        
                  la x14, kernel_stack_end

trap_vec_init:    
                  la x9, mtvec_handler
                  ori x9, x9, 0
                  csrw 0x305, x9 # MTVEC

mepc_setup:       
                  la x9, init
                  csrw 0x341, x9

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x9, 0x1800
                  csrw 0x300, x9 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xf06adb38
                  li x2, 0x2f32549a
                  li x3, 0xf3469a99
                  li x4, 0x6
                  li x5, 0x80000000
                  li x6, 0x0
                  li x8, 0xba6c32f4
                  li x9, 0xfd8dcf6b
                  li x10, 0xf2bca97b
                  li x11, 0x80000000
                  li x12, 0xf57ea899
                  li x13, 0x6
                  li x15, 0xb8cea7bc
                  li x16, 0x42d42af1
                  li x17, 0xf062cdae
                  li x18, 0x80000000
                  li x19, 0xe
                  li x20, 0x2fa32bb8
                  li x21, 0xf86131cb
                  li x22, 0x80000000
                  li x23, 0x0
                  li x24, 0xa
                  li x25, 0x80000000
                  li x26, 0x460c79ce
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0xab07e784
                  li x30, 0xe4b0c5f1
                  li x31, 0x0
                  la x7, user_stack_end
main:             li           s3, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           s6, 0xffffffff
                  li           a5, 0xc0f4a86b
                  li           a0, 0x80000000
                  li           tp, 0xb7e1300d
                  li           a3, 0xda46747e
                  li           a6, 0x0
                  li           ra, 0xe1c001ae
                  li           t0, 0xffffffff
                  li           a2, 0xffffffff
                  nop
                  nop
                  addi         a0, a3, 391
                  sub          a2, a2, a6
                  auipc        ra, 877109
                  nop
                  auipc        a3, 137060
                  addi         t0, s6, -990
                  lui          a5, 626908
                  sub          a0, a0, s3
                  add          ra, a2, t0
                  add          a2, tp, s3
                  auipc        s6, 317337
                  nop
                  sub          a6, t0, tp
                  lui          a6, 15900
                  auipc        a2, 310258
                  lui          t0, 84361
                  addi         t0, a3, -1870
                  lui          a3, 644142
                  addi         s3, a0, -1205
                  lui          a0, 244621
                  lui          a6, 885821
                  sub          a5, ra, t0
                  add          a2, tp, a6
                  auipc        a0, 764415 #end riscv_int_numeric_corner_stream_3
                  li           t5, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           a7, 0x80000000
                  li           s1, 0x0
                  li           a1, 0x0
                  li           a6, 0x0
                  li           s5, 0x80000000
                  li           a5, 0x0
                  li           a0, 0x0
                  li           t1, 0x80000000
                  li           s2, 0x91f85c51
                  auipc        a6, 221030
                  nop
                  auipc        a7, 721931
                  add          a7, a5, a6
                  auipc        s2, 554398
                  addi         a5, a6, 1706
                  lui          a5, 959827
                  addi         a0, a0, 1828
                  addi         a1, a1, 174
                  addi         s1, a7, 205
                  add          s2, a5, s1
                  lui          t1, 302231
                  auipc        a5, 319237
                  add          a6, t1, a1
                  add          a5, s2, t1
                  auipc        a7, 403993
                  addi         a7, t1, -162
                  sub          s1, s2, s1
                  nop
                  lui          a7, 780432
                  addi         a0, a5, 329 #end riscv_int_numeric_corner_stream_8
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           a1, 0x0
                  li           s5, 0xffffffff
                  li           s4, 0xb8febca8
                  li           s3, 0x0
                  li           a2, 0x0
                  li           sp, 0xffffffff
                  li           gp, 0x80000000
                  li           t6, 0x80000000
                  li           a7, 0x80000000
                  sub          a2, gp, s4
                  auipc        t6, 159463
                  add          a6, s4, s3
                  addi         s4, t6, -1955
                  add          s5, s5, s3
                  addi         a6, a7, 653
                  auipc        gp, 827375
                  lui          s5, 141209
                  nop
                  auipc        s4, 109695
                  nop
                  addi         s3, s4, -281
                  nop
                  add          a1, a2, a1
                  addi         t6, sp, -471
                  addi         s3, gp, -887
                  sub          t6, a6, gp #end riscv_int_numeric_corner_stream_0
                  li           s11, 0x82fda9ae #start riscv_int_numeric_corner_stream_18
                  li           t0, 0xffffffff
                  li           a1, 0x80000000
                  li           s2, 0x782f0f7f
                  li           sp, 0x0
                  li           a7, 0x80000000
                  li           s8, 0xb29baa1d
                  li           s10, 0x80000000
                  li           t5, 0x80000000
                  li           gp, 0xffffffff
                  sub          t5, a7, gp
                  sub          sp, s2, t0
                  sub          gp, t5, s2
                  lui          s11, 746281
                  addi         s11, sp, -840
                  lui          a7, 498316
                  add          t5, t5, gp
                  lui          s10, 644032
                  sub          sp, s10, sp
                  auipc        sp, 445884
                  add          gp, s11, t0
                  sub          s2, t5, s11
                  addi         a1, t0, 955
                  auipc        s10, 982915
                  nop
                  addi         t0, s8, 1296
                  add          s8, sp, s8
                  addi         s11, gp, -85
                  sub          s11, t5, s8
                  lui          gp, 348787
                  addi         s2, s8, 232 #end riscv_int_numeric_corner_stream_18
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           tp, 0x752409c5
                  li           ra, 0xffffffff
                  li           s10, 0x5741c74a
                  li           s8, 0xad38565c
                  li           s7, 0x0
                  li           a2, 0x80000000
                  li           s3, 0x80000000
                  li           t6, 0x80000000
                  li           a7, 0xffffffff
                  auipc        s8, 904778
                  auipc        s7, 704763
                  add          s4, s8, a2
                  lui          a7, 443829
                  auipc        s7, 9540
                  nop
                  lui          ra, 143600
                  add          tp, s3, a2
                  lui          s4, 145999
                  auipc        s7, 913543
                  auipc        ra, 4561
                  add          a7, s7, a7
                  nop
                  nop
                  nop
                  auipc        s3, 449107
                  nop
                  add          a2, s4, tp
                  add          ra, s7, s4
                  sub          a2, s8, a7
                  lui          s4, 746045
                  addi         s8, a2, -1783
                  auipc        s7, 489102
                  nop
                  auipc        tp, 850711
                  addi         s10, t6, -95
                  addi         a7, tp, -232
                  sub          a2, a7, s8 #end riscv_int_numeric_corner_stream_11
                  li           s5, 0xaaff972b #start riscv_int_numeric_corner_stream_13
                  li           a5, 0x5d0fca9a
                  li           sp, 0x80000000
                  li           a2, 0x598227ac
                  li           a0, 0x0
                  li           ra, 0xffffffff
                  li           t6, 0xffffffff
                  li           a1, 0x0
                  li           s9, 0x80000000
                  li           s6, 0x2aee8c85
                  sub          sp, a2, ra
                  add          s5, a0, a1
                  nop
                  nop
                  auipc        sp, 845442
                  add          s9, t6, s9
                  lui          s5, 721132
                  addi         t6, a1, 199
                  nop
                  add          t6, t6, a5
                  auipc        s6, 420113
                  lui          a2, 895987
                  sub          a1, t6, ra
                  add          ra, s6, a5
                  auipc        t6, 646883
                  auipc        ra, 446483
                  sub          sp, a2, a0
                  lui          s9, 482579
                  auipc        a1, 868254
                  lui          a2, 488230
                  auipc        ra, 929204
                  addi         a2, s9, 557
                  nop
                  add          a5, a1, t6 #end riscv_int_numeric_corner_stream_13
                  li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           s6, 0xffffffff
                  li           t6, 0x19a39138
                  li           s11, 0xffffffff
                  li           a0, 0x0
                  li           t1, 0x0
                  li           t0, 0xfa52709b
                  li           s2, 0x876b263
                  li           s1, 0x80000000
                  li           s4, 0x80000000
                  addi         t0, t1, 852
                  lui          s4, 709522
                  add          s6, t1, t0
                  lui          t1, 452873
                  auipc        s6, 698425
                  nop
                  add          s6, s6, t6
                  nop
                  nop
                  add          s11, t6, s2
                  sub          s6, s4, s11
                  add          t0, a0, a2
                  nop
                  addi         s4, t1, 254
                  auipc        s1, 554779
                  auipc        s4, 375495
                  addi         s6, a0, -1353
                  addi         t1, t1, 336
                  addi         t0, a0, -1287
                  lui          a0, 455150
                  nop
                  addi         s1, t6, -1769 #end riscv_int_numeric_corner_stream_10
                  li           t0, 0xd9d50a0e #start riscv_int_numeric_corner_stream_19
                  li           s2, 0xcc8f1e8
                  li           s0, 0x94bb4069
                  li           a2, 0xffffffff
                  li           t3, 0x2ce33177
                  li           s4, 0xffffffff
                  li           s7, 0xffffffff
                  li           t5, 0xb48eb7c7
                  li           a7, 0xffffffff
                  li           t6, 0x80000000
                  sub          t5, s2, s0
                  nop
                  addi         t0, s4, -1742
                  lui          t5, 210374
                  add          a2, a7, s2
                  sub          s0, t3, a2
                  auipc        t5, 946249
                  lui          t3, 285686
                  lui          t3, 160348
                  sub          s7, t3, t5
                  lui          a2, 424110
                  sub          s4, s2, a2
                  auipc        s4, 985888
                  sub          t6, t3, s0
                  add          t5, s0, t6
                  addi         t6, t0, -2005
                  add          t0, a7, s4
                  addi         s2, s0, -1519
                  nop
                  add          s2, s4, t0
                  addi         t6, t5, 1320
                  nop
                  lui          t0, 741977
                  nop
                  lui          a2, 217347 #end riscv_int_numeric_corner_stream_19
                  li           s8, 0x37adc9bc #start riscv_int_numeric_corner_stream_4
                  li           a3, 0xffffffff
                  li           a6, 0xc4755593
                  li           s2, 0x80000000
                  li           a1, 0x98e51535
                  li           t5, 0x0
                  li           t6, 0xffffffff
                  li           s1, 0x49097811
                  li           s10, 0xf2df5cd6
                  li           s6, 0xde1a09da
                  lui          t5, 796839
                  auipc        t6, 1046145
                  sub          s8, s1, s6
                  sub          s6, a1, s1
                  sub          a1, s6, t5
                  nop
                  add          s2, a3, a6
                  sub          t6, s10, s1
                  sub          s10, s6, s2
                  lui          t5, 31495
                  addi         t6, s10, -703
                  auipc        t6, 331515
                  auipc        a3, 988530
                  auipc        a1, 105430
                  nop
                  auipc        s2, 33973
                  addi         s10, s10, 109
                  sub          s2, s8, t6
                  sub          s1, a3, a6 #end riscv_int_numeric_corner_stream_4
                  li           a7, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           sp, 0xffffffff
                  li           s2, 0xd0840aa
                  li           t3, 0xffffffff
                  li           a1, 0xffffffff
                  li           s10, 0x0
                  li           tp, 0x0
                  li           a5, 0x0
                  li           s0, 0x0
                  li           s11, 0x74e1099
                  addi         a1, a1, -1394
                  auipc        a1, 55364
                  auipc        a5, 531500
                  nop
                  auipc        a5, 374428
                  add          s10, s0, s0
                  nop
                  auipc        tp, 249985
                  addi         sp, s10, 750
                  addi         a7, sp, -1264
                  nop
                  nop
                  add          s11, a5, s2
                  auipc        a1, 558819
                  lui          a7, 390323
                  nop
                  add          s11, s10, s10
                  add          s10, s2, a1
                  addi         a5, sp, -2034
                  sub          s10, a1, s10
                  add          s11, t3, s10
                  sub          a7, s10, a5
                  nop
                  add          tp, s2, s2
                  auipc        sp, 845542 #end riscv_int_numeric_corner_stream_9
                  li           a7, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           a3, 0x5abe7c21
                  li           s5, 0xdde710d6
                  li           tp, 0x80000000
                  li           t1, 0x5b3de414
                  li           ra, 0x80000000
                  li           s1, 0xfcf33b10
                  li           s0, 0x0
                  li           a5, 0x0
                  li           s9, 0xffffffff
                  addi         s5, a5, 1275
                  addi         s9, s0, -1784
                  add          s0, t1, s0
                  addi         s1, s5, -1049
                  sub          s5, s5, tp
                  addi         s9, s1, 684
                  add          s5, ra, ra
                  add          ra, a5, a5
                  auipc        ra, 859342
                  sub          t1, a7, t1
                  add          s1, a3, ra
                  auipc        a5, 435180
                  add          a3, ra, s0
                  sub          a3, s9, ra
                  add          s9, tp, s1
                  lui          s1, 367051
                  auipc        s0, 173800
                  sub          t1, s1, s9
                  sub          a7, a3, a3
                  lui          a3, 337310 #end riscv_int_numeric_corner_stream_7
                  li           s2, 0x59732731 #start riscv_int_numeric_corner_stream_1
                  li           a1, 0x7ffcbe60
                  li           s10, 0xffffffff
                  li           a5, 0x0
                  li           gp, 0x80000000
                  li           s6, 0xffffffff
                  li           s8, 0x80000000
                  li           s4, 0x0
                  li           t1, 0x0
                  li           a2, 0x80000000
                  add          s8, s8, a5
                  sub          a1, s6, s6
                  nop
                  addi         t1, a5, -336
                  auipc        s10, 51073
                  add          s6, gp, gp
                  lui          s4, 521458
                  lui          gp, 1000893
                  auipc        t1, 252484
                  addi         a2, s2, -1162
                  sub          gp, s10, gp
                  addi         s8, t1, 396
                  lui          gp, 693281
                  add          gp, t1, t1
                  nop
                  sub          a2, s6, a1
                  add          a1, s6, a2
                  lui          gp, 59185
                  lui          gp, 990568
                  add          a2, s2, a1
                  nop
                  auipc        a1, 895748
                  lui          t1, 680216
                  auipc        s8, 18648
                  lui          s4, 246088
                  sub          s10, s6, gp
                  lui          s4, 976729
                  nop #end riscv_int_numeric_corner_stream_1
                  sra          s7, s0, a5
                  sub          s4, a5, t5
                  slli         s0, t0, 5
                  xor          t5, s2, s11
                  sra          s7, t4, sp
                  xor          s9, s2, a3
                  and          gp, t1, sp
                  sll          a6, a6, gp
                  nop
                  xor          a3, s10, s11
                  slt          t1, s9, s5
                  sll          a3, a1, a7
                  nop
                  lui          s0, 564179
                  addi         a1, t5, 1593
                  or           a1, s3, t1
                  slt          s9, a0, a3
                  xor          t6, a6, a1
                  srai         a0, s0, 11
                  srai         a6, s6, 5
                  sra          s0, zero, s1
                  and          a0, s7, s8
                  andi         s10, ra, 1489
                  auipc        s8, 907261
                  srai         s1, a4, 4
                  sltu         s7, t3, s11
                  sltiu        t1, t5, 1944
                  slt          t1, gp, a5
                  li           t5, 0x9da62d68 #start riscv_int_numeric_corner_stream_14
                  li           s4, 0x0
                  li           a0, 0x1a46b416
                  li           s8, 0x0
                  li           s9, 0x873b140a
                  li           t3, 0xe71ef726
                  li           a6, 0xad5ed50e
                  li           a1, 0xffffffff
                  li           t0, 0x0
                  li           s10, 0x80000000
                  add          s10, t5, s4
                  lui          t5, 855800
                  sub          t0, s4, a6
                  lui          s4, 258782
                  nop
                  lui          s4, 563824
                  nop
                  nop
                  auipc        a0, 852338
                  nop
                  auipc        a6, 374359
                  lui          a6, 454223
                  add          s4, s10, t0
                  nop
                  sub          s8, t3, t5 #end riscv_int_numeric_corner_stream_14
                  sltu         a1, a7, t4
                  sra          t5, a2, ra
                  ori          t6, zero, 655
                  xor          s0, s1, a2
                  lui          s4, 384529
                  sll          a3, s3, s9
                  ori          s4, ra, -1808
                  slt          t1, t2, a5
                  add          a2, a2, t4
                  and          s10, t5, a3
                  sltu         t3, s9, a3
                  and          s4, t3, t2
                  sra          a0, a7, s6
                  auipc        a7, 160832
                  slti         s10, s5, 278
                  sub          s1, t4, tp
                  slli         sp, s10, 12
                  ori          tp, s8, 1130
                  xori         s4, s1, -537
                  addi         t6, s11, 1182
                  and          zero, gp, s3
                  sub          s8, s9, a1
                  add          a2, a1, t4
                  and          zero, t4, t3
                  sra          tp, s7, s8
                  srli         a2, s7, 29
                  ori          t6, s6, -830
                  slli         t5, t3, 24
                  sra          tp, s1, s5
                  sra          a2, a2, t2
                  xori         s11, s9, 1171
                  sltu         a6, t3, s8
                  slt          ra, s8, s10
                  xori         s3, s5, 382
                  srli         s1, s6, 1
                  lui          t5, 157253
                  sltu         s5, t6, t6
                  sll          a6, s1, t1
                  sra          t1, s2, gp
                  xori         s0, a2, 1555
                  srl          s7, t3, s4
                  auipc        s8, 773577
                  slt          sp, s1, s10
                  sll          a2, a1, s6
                  add          s6, sp, s3
                  or           tp, a1, a7
                  and          a3, t4, a7
                  srli         tp, a5, 18
                  lui          s6, 47987
                  lui          zero, 199716
                  srl          s2, gp, a4
                  sra          s9, t3, a7
                  sra          s0, s4, a7
                  nop
                  auipc        gp, 31015
                  ori          t5, s10, 429
                  add          a2, tp, a2
                  lui          s4, 760015
                  slli         s10, a4, 11
                  slt          a7, a5, a0
                  sub          s7, t1, a4
                  add          t3, tp, ra
                  slt          a3, a6, s0
                  andi         t0, s1, -1053
                  or           a6, s5, s1
                  andi         zero, tp, 767
                  lui          a1, 551829
                  ori          s0, a6, -790
                  andi         t0, tp, -243
                  sltiu        gp, s4, 1489
                  srli         zero, t2, 31
                  nop
                  or           sp, s7, sp
                  srl          t1, t5, s2
                  and          ra, s5, tp
                  xor          ra, a2, s9
                  nop
                  sub          gp, s7, a7
                  slli         s1, sp, 28
                  xor          t1, s2, t4
                  sltiu        a0, t6, -2016
                  xori         s0, t3, 386
                  sub          a5, a0, a0
                  auipc        t3, 980349
                  ori          s4, t5, 219
                  sll          a1, a7, a1
                  auipc        a1, 286333
                  slli         s4, ra, 16
                  lui          s4, 196448
                  addi         a1, s7, 709
                  slt          a1, t6, tp
                  nop
                  and          sp, t0, t3
                  xor          s5, ra, s6
                  srai         a7, gp, 11
                  auipc        s6, 663456
                  or           t6, s9, gp
                  sub          a0, t6, gp
                  sltiu        a3, s4, -1792
                  sub          gp, gp, t2
                  lui          s8, 452920
                  add          a2, ra, t1
                  xori         a0, tp, -268
                  and          sp, t4, s8
                  ori          zero, a3, 1744
                  and          t1, ra, s1
                  slli         tp, a3, 22
                  slt          s8, a3, zero
                  slli         a0, s11, 13
                  or           s2, t5, a5
                  sltu         s0, a6, a6
                  addi         t5, a7, -937
                  sltiu        a0, s6, -54
                  sub          a6, t5, gp
                  addi         a1, t3, 12
                  srai         s3, s7, 17
                  sll          s4, t6, a7
                  ori          s0, a2, 505
                  xori         gp, s4, -1801
                  and          s6, t0, a4
                  slt          s11, a5, a4
                  xor          s8, s11, a0
                  sltiu        a0, a7, 1035
                  andi         t6, a1, -1404
                  srai         a5, a2, 16
                  sll          gp, a5, a2
                  or           t0, s3, s4
                  slti         s7, a5, 1853
                  srl          a5, a4, t4
                  sub          s0, s5, t0
                  srai         s11, t3, 3
                  sra          a2, t0, a2
                  and          a6, s4, a2
                  srai         s3, a3, 4
                  xori         ra, ra, -1144
                  xor          s3, s11, tp
                  srli         s2, t4, 11
                  sltiu        s9, a3, -306
                  and          a7, tp, s0
                  sub          a6, s5, s2
                  lui          t1, 967046
                  srli         t3, t6, 20
                  sra          t3, s1, tp
                  nop
                  srai         a6, t1, 15
                  auipc        t5, 1011910
                  slti         s1, t3, 879
                  add          s7, ra, zero
                  sll          t1, s7, a2
                  srai         s0, s5, 19
                  nop
                  lui          s9, 45646
                  nop
                  addi         zero, sp, -1115
                  xori         s11, s7, -770
                  ori          s3, a5, -1004
                  slti         a7, a0, -1944
                  slli         t6, a4, 16
                  sltiu        tp, s8, 1930
                  nop
                  auipc        s9, 170497
                  or           a5, t3, s4
                  xor          s11, gp, s7
                  ori          s3, t6, 1255
                  nop
                  add          s3, tp, t6
                  andi         a5, s10, -1281
                  ori          s5, t4, -408
                  srl          s1, t0, t0
                  nop
                  li           tp, 0xe0a45aad #start riscv_int_numeric_corner_stream_16
                  li           a0, 0x74d07464
                  li           s10, 0xaed72ee9
                  li           s9, 0x80000000
                  li           s6, 0xffffffff
                  li           t6, 0x2dc9fa42
                  li           a1, 0xffffffff
                  li           a7, 0xffffffff
                  li           gp, 0xffffffff
                  li           s0, 0x0
                  auipc        s0, 315053
                  sub          t6, s0, tp
                  sub          s6, a0, s6
                  add          a1, t6, s10
                  auipc        s0, 391729
                  add          s9, tp, gp
                  addi         s0, s9, -1822
                  addi         a0, a7, -728
                  nop
                  lui          s0, 342835
                  addi         t6, gp, 1681
                  nop
                  auipc        s9, 846904
                  add          gp, a7, t6
                  lui          gp, 524170
                  add          t6, t6, tp
                  nop
                  add          tp, a1, s6 #end riscv_int_numeric_corner_stream_16
                  or           a3, s10, s11
                  sll          t1, t2, t4
                  xor          tp, a4, s2
                  srl          s2, s1, s6
                  add          a2, ra, t3
                  and          a1, a3, sp
                  sltiu        sp, a5, 1144
                  slti         s10, t1, 389
                  lui          gp, 468780
                  sltu         t3, tp, a4
                  xori         a5, s4, 188
                  or           a7, a0, t6
                  sra          s4, s7, t3
                  srai         s10, t3, 11
                  slti         t5, t4, -1576
                  and          sp, t5, tp
                  srli         s8, tp, 16
                  lui          a5, 629982
                  sll          s9, s2, s3
                  auipc        sp, 918341
                  srl          a5, gp, s0
                  sra          s1, t1, a7
                  slti         t3, gp, 1038
                  lui          a1, 254109
                  ori          s4, s11, 780
                  ori          a0, s8, 1141
                  xor          s3, t5, t4
                  and          a7, a7, s8
                  nop
                  addi         a1, s11, 1154
                  sll          sp, s9, a7
                  srl          s8, t6, gp
                  sra          s10, t0, s4
                  ori          ra, t4, -1558
                  auipc        a6, 93832
                  andi         t1, s7, -832
                  auipc        a7, 134414
                  xor          tp, a0, zero
                  andi         a6, s9, -1980
                  addi         t0, ra, -388
                  auipc        zero, 842781
                  xori         t6, gp, -388
                  addi         a7, s11, 1644
                  lui          t0, 187938
                  add          s11, a7, t2
                  or           tp, s7, t4
                  sltiu        t5, ra, 564
                  sll          a5, s6, a3
                  addi         s5, zero, 68
                  slti         s9, a0, 1961
                  slli         a5, t1, 13
                  addi         s8, a3, 1661
                  sra          tp, sp, s4
                  or           tp, s4, s6
                  srai         s1, ra, 27
                  sub          tp, t3, a2
                  slt          t0, t5, s3
                  auipc        t1, 831558
                  nop
                  lui          gp, 545599
                  srai         a3, s2, 25
                  sltu         s8, t3, s9
                  sltu         s10, a3, sp
                  xor          a0, a0, s3
                  and          a3, s4, s11
                  xor          sp, a2, a4
                  sll          s11, a0, s2
                  srai         s2, t1, 7
                  andi         gp, zero, 760
                  ori          s10, s10, 1646
                  slli         s10, t4, 20
                  add          ra, s11, ra
                  auipc        a6, 946626
                  add          s5, zero, gp
                  ori          gp, s6, 417
                  add          t6, s7, ra
                  xori         s0, s10, -275
                  addi         zero, s0, -1758
                  slli         t0, t6, 6
                  auipc        s1, 897470
                  and          s6, s3, s11
                  sll          s8, t5, s11
                  slli         s6, t0, 26
                  xor          t6, t3, s1
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           a5, 0x0
                  li           t3, 0x0
                  li           s7, 0x363ee455
                  li           s2, 0x80000000
                  li           s10, 0xffffffff
                  li           s4, 0xcc7f5026
                  li           a3, 0x4146370d
                  li           s8, 0xffffffff
                  li           t0, 0x80000000
                  sub          t0, s2, t3
                  auipc        s7, 883788
                  sub          ra, a5, s8
                  nop
                  nop
                  auipc        t0, 410006
                  nop
                  sub          a3, s2, a3
                  nop
                  sub          s10, s10, s8
                  sub          t3, s7, s7
                  auipc        ra, 296090
                  sub          s10, s7, t0
                  auipc        ra, 375098
                  auipc        s8, 950506
                  addi         s2, a5, 776
                  nop #end riscv_int_numeric_corner_stream_6
                  addi         a5, s6, 1204
                  or           s9, t5, gp
                  add          s6, s8, s4
                  or           a2, s0, s3
                  xori         s0, s10, 239
                  or           tp, t1, a3
                  sltu         tp, a2, s10
                  nop
                  slti         s1, t1, -2031
                  slt          a6, zero, s0
                  slti         s9, a3, -1225
                  slli         t0, a6, 10
                  auipc        a6, 652710
                  sra          s0, gp, ra
                  slli         s3, s0, 3
                  xori         s1, s7, -921
                  sub          s0, gp, s4
                  ori          a2, a0, -125
                  srli         s8, a3, 8
                  add          t5, sp, a4
                  srai         t5, s1, 24
                  srli         t6, t2, 3
                  slli         s3, ra, 3
                  slli         s0, t5, 14
                  slt          s6, a6, s9
                  srl          s4, s4, t1
                  slt          t0, s7, t1
                  sll          a5, s4, s4
                  auipc        a2, 15619
                  slti         s4, t0, 1067
                  srl          zero, s9, t2
                  slti         s9, a5, -1403
                  lui          s6, 758940
                  sra          a6, s7, tp
                  andi         s3, zero, -256
                  sltu         s8, s4, gp
                  sll          s3, s2, s3
                  andi         a1, ra, 746
                  addi         t6, s2, -666
                  sll          zero, s6, t6
                  sra          s5, tp, s0
                  slt          ra, t1, s6
                  srli         gp, s8, 29
                  sub          s3, s5, s11
                  or           t0, zero, s6
                  srl          a0, s11, a7
                  slti         sp, t4, 1508
                  xor          a6, s5, s8
                  auipc        a6, 170312
                  or           t6, s2, a0
                  sltiu        a2, s2, 1107
                  auipc        s7, 391647
                  srai         a5, ra, 18
                  addi         s3, t4, -424
                  addi         t0, t3, -922
                  xori         a0, a6, 1495
                  sub          a1, s2, tp
                  srli         tp, t0, 8
                  srai         s10, a5, 22
                  sltu         t1, s1, s8
                  sll          a3, a2, s5
                  sltiu        s5, gp, -1101
                  or           t3, s9, s5
                  srai         s6, a3, 29
                  slli         t3, s0, 27
                  slti         s2, s2, -144
                  slti         ra, t4, -1746
                  sll          a3, s9, gp
                  sra          s5, a1, s4
                  srl          zero, t2, tp
                  srl          t1, s1, a5
                  andi         a3, t0, -971
                  srl          s2, t6, sp
                  sltiu        a1, s9, 238
                  sra          s1, s11, a5
                  sltu         a5, ra, a4
                  ori          a1, a1, 243
                  andi         ra, sp, 75
                  xori         s0, t3, -1903
                  sltu         s3, s3, s7
                  slt          t5, s8, s5
                  sltiu        s7, t4, 1820
                  sub          t6, a1, s3
                  andi         s1, a2, -232
                  nop
                  srl          t1, a3, s3
                  slt          s3, t0, s1
                  or           a7, s7, a0
                  srli         s9, a7, 4
                  or           t6, s5, zero
                  srl          t3, t5, s6
                  addi         a0, gp, 1565
                  sll          s4, t2, s2
                  srl          t6, s5, a3
                  slt          t1, s6, s10
                  or           t0, ra, sp
                  add          t1, gp, a6
                  or           a0, t4, a5
                  ori          t6, s11, -51
                  srai         t0, s5, 28
                  xor          t1, s11, a0
                  slti         s9, ra, -1887
                  srl          a7, t4, t2
                  sltiu        tp, a1, -660
                  nop
                  sll          zero, s0, s0
                  sub          a2, a2, s2
                  nop
                  slt          t6, zero, s11
                  sra          gp, a0, a1
                  sub          sp, s9, a7
                  sltiu        zero, t4, -1885
                  add          sp, t0, a7
                  ori          s4, tp, -335
                  sltiu        a2, a6, -730
                  srai         tp, s1, 6
                  sub          s5, a5, s0
                  xor          t0, s0, a3
                  xor          a7, tp, a3
                  sub          zero, s11, a0
                  nop
                  sltu         ra, a4, a4
                  xori         t0, s1, 1150
                  slt          sp, s11, s1
                  lui          a5, 1006271
                  srl          a0, ra, a3
                  or           s10, a3, ra
                  and          s9, t1, t2
                  lui          t0, 541305
                  sltiu        zero, t6, 1640
                  andi         s8, s9, -1811
                  srli         s7, gp, 26
                  sltiu        s1, a7, -1058
                  sll          t3, ra, zero
                  slti         s5, a7, -913
                  andi         a1, t2, -946
                  lui          s5, 388536
                  nop
                  srai         sp, a1, 5
                  sltiu        t3, t2, -607
                  xor          t6, ra, s4
                  srai         a3, s1, 8
                  or           gp, a7, zero
                  or           s9, s9, tp
                  slt          tp, t0, a1
                  lui          t5, 541695
                  and          a5, zero, tp
                  sub          t5, gp, a5
                  or           sp, s10, t4
                  slli         s4, s2, 10
                  xor          s10, a7, s3
                  nop
                  lui          sp, 756850
                  xori         a7, s7, 131
                  srli         s3, t2, 2
                  sub          s9, s8, a6
                  srli         ra, t2, 10
                  addi         sp, t1, -517
                  srl          sp, s4, s11
                  slli         s9, t4, 1
                  or           a1, s5, sp
                  addi         t3, s10, -1760
                  addi         s9, a7, 264
                  andi         s7, s11, 503
                  add          s0, sp, a7
                  sub          s8, ra, gp
                  slli         tp, a5, 3
                  or           a7, s7, t3
                  srl          s11, t5, a7
                  sub          s2, t6, t6
                  or           s3, s11, t6
                  ori          t6, a4, -1008
                  or           s8, s4, tp
                  sltiu        a2, gp, 1070
                  xori         a6, a2, 376
                  addi         t5, s11, 203
                  addi         tp, s8, -249
                  andi         s0, s0, 1427
                  and          gp, s8, sp
                  sltiu        s11, t2, -941
                  andi         a7, a3, 274
                  xori         zero, tp, -1056
                  addi         tp, a3, 447
                  sub          a7, zero, s11
                  andi         s6, t4, -1029
                  addi         t5, t3, -42
                  sll          t6, a0, t2
                  xori         a2, a3, 246
                  slli         a1, s6, 31
                  addi         tp, zero, 355
                  xori         a1, s9, 230
                  srli         t6, s10, 15
                  sltiu        t5, t4, 610
                  ori          s6, s9, -1867
                  sltiu        s5, s3, -1732
                  slt          t3, a3, a5
                  srli         s7, a3, 19
                  xor          t0, s9, a1
                  sltiu        a3, ra, -1996
                  xori         t3, zero, 1748
                  auipc        s10, 637871
                  sra          a3, s4, tp
                  sltiu        a6, ra, 1831
                  sltiu        a3, s11, -1659
                  add          zero, t4, s11
                  sll          a5, s1, s2
                  xor          sp, t2, ra
                  sll          s5, a3, a2
                  auipc        a2, 647546
                  lui          s9, 938939
                  sub          a6, a4, t6
                  sub          s8, zero, t5
                  addi         s9, a7, 520
                  sub          a1, t2, s3
                  and          s0, a3, gp
                  sll          gp, gp, a6
                  nop
                  ori          t0, a6, -446
                  sra          a1, t2, a4
                  slt          s3, a0, t5
                  add          t6, s6, s1
                  or           a6, a4, t1
                  addi         s8, s4, 233
                  sltu         a7, ra, s5
                  slti         t3, t4, 693
                  xori         zero, zero, -768
                  slt          gp, t0, a5
                  lui          s2, 335583
                  slli         s8, t4, 18
                  sll          a2, a2, s11
                  nop
                  sll          s11, s0, t0
                  slti         a5, a1, -1244
                  srl          ra, s5, t3
                  or           a3, zero, sp
                  slti         a5, s1, 1631
                  andi         zero, a3, 1281
                  srai         t5, t4, 17
                  sra          a2, s3, tp
                  sll          s10, t5, s0
                  auipc        t0, 151678
                  andi         s1, a0, -596
                  add          sp, a1, s9
                  auipc        s11, 90935
                  sub          a1, sp, a3
                  andi         s8, s9, -1266
                  srli         s4, t6, 17
                  lui          a1, 450751
                  slti         a7, t4, -1659
                  add          s7, gp, a0
                  add          t0, t6, s9
                  and          s3, a4, a7
                  srl          a6, gp, a7
                  add          s0, t3, ra
                  srli         t3, a6, 21
                  lui          t3, 143357
                  add          s11, s0, s7
                  srl          gp, ra, s1
                  lui          a6, 437748
                  nop
                  addi         a3, s5, 1266
                  slli         t5, s9, 23
                  addi         a3, s2, -23
                  xori         t6, s2, 1201
                  slt          s11, t6, sp
                  sltu         s4, a2, s0
                  or           tp, s11, s7
                  xor          a1, sp, s5
                  srli         tp, a6, 17
                  srl          s8, t4, s6
                  add          sp, t6, sp
                  addi         a6, s3, 1009
                  srli         s5, ra, 11
                  sltiu        s4, s0, 362
                  nop
                  xori         s11, t0, 842
                  and          t1, t6, gp
                  srli         s3, t3, 18
                  srli         a3, a0, 1
                  sltiu        s11, t3, 1916
                  srai         t5, tp, 18
                  sltiu        gp, t5, 1570
                  nop
                  xori         s9, gp, -1850
                  sra          t1, t5, a1
                  nop
                  sltu         zero, s4, a3
                  srl          gp, s0, s10
                  xor          s0, a5, t2
                  ori          zero, a2, -111
                  sra          zero, a5, s0
                  slli         s7, tp, 25
                  andi         a1, s10, -1145
                  xori         a5, a7, 341
                  srl          t6, s1, t1
                  and          gp, s7, s8
                  slti         s0, a5, -1463
                  addi         ra, s1, -707
                  sll          t6, a4, s0
                  sltu         a6, zero, a2
                  auipc        s8, 412654
                  sltiu        zero, t2, -183
                  sltu         s0, a6, s4
                  andi         zero, a6, 1692
                  srl          t0, sp, s6
                  slli         s4, t6, 3
                  lui          tp, 19884
                  sll          s1, s3, s1
                  ori          ra, a4, -1860
                  xori         a5, s4, 847
                  srl          t3, a1, s8
                  srai         ra, s4, 7
                  sll          s9, sp, s7
                  sub          s6, t4, a1
                  sltiu        a1, t1, 1175
                  andi         s6, a4, -1349
                  srl          sp, s8, zero
                  srli         gp, t3, 7
                  sltu         a6, s0, s5
                  sra          s2, s10, s3
                  sltu         a2, s0, tp
                  xori         s9, zero, -214
                  slti         s8, a0, -1538
                  sll          t1, t5, ra
                  slli         s6, t0, 17
                  nop
                  srli         s9, t1, 18
                  srli         s10, t3, 23
                  auipc        t6, 748372
                  andi         s6, gp, 1180
                  or           a0, ra, t3
                  srl          t1, s7, a5
                  slt          a2, s8, t6
                  auipc        zero, 1006590
                  sltiu        a1, s2, 1832
                  slt          a3, s4, a0
                  ori          a7, t1, 832
                  xor          t0, zero, t6
                  ori          t3, t0, -1483
                  sltu         s0, a6, zero
                  slt          a5, s10, s11
                  nop
                  andi         s3, s2, -1077
                  slti         a0, s2, -42
                  slti         s10, a6, -711
                  slt          s9, s9, a0
                  srai         s5, s3, 14
                  sub          sp, t0, s7
                  lui          s4, 294638
                  slli         s0, a3, 14
                  xori         s3, s10, -1891
                  or           a2, a7, s5
                  xor          s11, zero, a3
                  sltiu        a2, s6, -1606
                  slti         s11, t3, 945
                  andi         a0, ra, 569
                  srli         a2, a6, 16
                  add          t1, a2, a2
                  sltu         s5, s3, s3
                  slti         s4, s5, 1886
                  slt          a0, s9, s3
                  addi         s2, s8, -1670
                  addi         gp, a0, -298
                  sltu         a0, s7, t3
                  sra          t1, a1, a1
                  srai         gp, t5, 19
                  slti         zero, t5, 506
                  srai         s8, tp, 2
                  auipc        t5, 900946
                  sub          t1, s3, s3
                  add          a5, t6, t5
                  srli         sp, t3, 17
                  sltiu        tp, a3, -544
                  xori         t6, t0, -320
                  sub          t6, s4, s0
                  sra          t3, s0, a5
                  auipc        s2, 377117
                  slti         t5, a5, -887
                  and          t0, t6, a3
                  sltu         t0, t3, a6
                  and          s7, s3, s2
                  auipc        s3, 983935
                  or           a1, s7, zero
                  sub          s10, t3, t6
                  srai         sp, a5, 1
                  srl          a1, s8, a6
                  srli         t1, s4, 26
                  sltiu        a2, a7, -690
                  slti         a2, a1, 926
                  srli         ra, s0, 11
                  slt          s8, a1, s0
                  srli         sp, a2, 24
                  xor          s10, t0, sp
                  ori          s10, s4, -1868
                  lui          t5, 654475
                  srli         t0, a2, 19
                  slt          a5, t3, t3
                  lui          s9, 885960
                  and          t6, t1, a6
                  srai         s9, t2, 27
                  slt          a3, a5, a0
                  lui          s3, 816522
                  or           zero, t2, s9
                  nop
                  sub          t6, sp, s5
                  lui          s0, 144025
                  nop
                  sra          sp, s0, t1
                  andi         s3, t2, -1049
                  nop
                  sll          tp, t6, sp
                  andi         a5, t2, 608
                  srl          s11, s11, gp
                  addi         a7, t5, 815
                  slli         t0, a6, 8
                  srl          t5, s6, a6
                  sll          s0, s10, s11
                  or           t5, a5, s5
                  slli         a6, t1, 5
                  slti         tp, t0, -662
                  add          s11, t2, a1
                  slli         a6, a5, 16
                  xori         t6, a5, -1271
                  auipc        s10, 728553
                  addi         t5, t2, -958
                  xori         s4, t2, -49
                  sll          s5, t3, s1
                  addi         s9, a2, -1529
                  sra          sp, s2, s9
                  sltu         s8, t6, a6
                  auipc        s2, 932886
                  srli         s10, s10, 8
                  slt          s5, a3, a6
                  slti         sp, t4, -850
                  nop
                  or           ra, sp, s10
                  srai         s3, t1, 23
                  srl          a3, s10, s5
                  xori         a1, s9, 201
                  lui          t1, 148835
                  srai         sp, s1, 2
                  slli         a1, s5, 23
                  and          s9, a3, t1
                  xori         s4, a4, -1184
                  or           t3, s7, s8
                  sltu         t0, t2, s8
                  srl          t5, a1, t0
                  auipc        s0, 197225
                  slt          sp, t5, s1
                  addi         a7, s5, 1042
                  sltu         a1, a3, s3
                  lui          s4, 871156
                  ori          s3, s9, 207
                  sltiu        t5, a4, 1553
                  andi         a3, a5, 1937
                  auipc        ra, 874538
                  sra          s1, s4, tp
                  and          ra, gp, t2
                  srli         s7, s4, 14
                  nop
                  sltu         s6, a3, s6
                  nop
                  sll          a6, s0, zero
                  add          s0, s0, s5
                  sll          a3, zero, t3
                  sltu         s11, ra, t6
                  lui          a5, 7674
                  srli         s9, t5, 28
                  xor          a5, s1, sp
                  addi         s3, a6, -2010
                  or           s11, t4, a7
                  sra          t3, a5, s8
                  sltu         ra, a4, s6
                  andi         a6, t5, 2040
                  sltu         gp, s10, t1
                  slti         a5, a6, -24
                  lui          s11, 107229
                  sra          t6, gp, a0
                  slt          s10, a1, s10
                  slti         sp, a2, -147
                  sub          s6, t0, s4
                  nop
                  nop
                  sra          s2, s10, s9
                  andi         s7, gp, 1543
                  auipc        s4, 700495
                  xor          s9, t6, s1
                  sub          a1, t6, a2
                  auipc        a1, 145793
                  auipc        t6, 576547
                  or           t0, t5, s6
                  srli         s6, s1, 2
                  xori         a5, a4, 85
                  addi         a0, t2, 1689
                  sltiu        a5, s4, -805
                  or           s10, s4, s7
                  auipc        s5, 792396
                  sll          s8, t3, s6
                  srli         s6, s10, 4
                  slli         s5, s9, 2
                  sltu         s5, s7, s1
                  sltiu        zero, a3, 264
                  sra          t1, s2, a4
                  srai         s5, s0, 22
                  sll          s7, a5, t3
                  slli         s10, a4, 14
                  slti         s0, s8, 270
                  add          a2, a4, t2
                  slli         s9, a7, 2
                  slti         a3, a2, 1074
                  srl          s11, a3, t5
                  xori         t0, s8, -1806
                  ori          a7, zero, 323
                  ori          t5, s5, -1243
                  ori          s11, s6, -427
                  srai         sp, tp, 15
                  addi         s9, s9, -420
                  xor          ra, a4, s6
                  sltu         a0, s2, s4
                  sll          t6, s9, s10
                  lui          s6, 415533
                  or           s8, ra, sp
                  and          s10, a5, t0
                  lui          s9, 315329
                  sub          a7, a2, t4
                  sltu         s5, s2, s4
                  srl          ra, sp, t6
                  lui          s1, 990995
                  sra          s4, gp, s2
                  slt          a2, a7, t4
                  sltu         zero, a3, a2
                  slli         t0, a0, 17
                  addi         s10, t6, 624
                  xor          a1, a2, t2
                  sra          a3, a6, s1
                  and          t0, s1, s11
                  sll          s9, gp, a0
                  srai         s10, a4, 18
                  xor          s2, t1, a1
                  add          t6, sp, s2
                  and          s3, t4, t0
                  sltu         s8, s9, a2
                  sub          a3, tp, sp
                  andi         t1, a3, -5
                  addi         s0, s7, 1549
                  auipc        t0, 972301
                  xor          t3, gp, a4
                  slt          s1, tp, s2
                  srl          s5, t1, t4
                  addi         s8, a4, -1582
                  add          a3, tp, a4
                  sll          s6, t1, s9
                  or           a0, a0, a1
                  nop
                  srl          a2, t0, a1
                  sltiu        ra, s8, 451
                  andi         s1, s9, 1576
                  sub          s1, sp, tp
                  or           ra, a6, s10
                  nop
                  addi         a7, a3, 398
                  andi         s11, t3, -305
                  slt          zero, a1, zero
                  xori         s3, tp, -79
                  addi         s0, t4, -1483
                  slti         t0, t5, -10
                  sra          t6, a0, ra
                  srli         a7, a2, 24
                  sra          tp, s4, a0
                  add          a2, a2, s3
                  sltiu        sp, s10, 1462
                  add          s6, s9, s8
                  and          s7, t5, a2
                  nop
                  ori          s1, a0, 188
                  srai         a3, a3, 23
                  srai         t6, s1, 3
                  xor          a3, s3, t4
                  ori          s3, a6, 89
                  xor          tp, t5, a0
                  add          a0, s4, a1
                  andi         a3, s6, 846
                  slli         s5, a5, 1
                  slti         a5, a6, 1344
                  slli         zero, s7, 5
                  sra          zero, s7, s7
                  slt          s11, s9, a6
                  sltu         s4, s6, a0
                  srl          s8, a6, sp
                  andi         s4, a5, -917
                  slli         t1, s9, 24
                  slti         a1, a4, 684
                  andi         a2, s1, -1026
                  addi         s5, a1, -1137
                  lui          s6, 324458
                  srai         s3, s0, 12
                  slli         a7, sp, 13
                  andi         t1, sp, 1571
                  sll          t1, t5, sp
                  ori          s1, s3, 1545
                  srli         s3, a6, 29
                  lui          sp, 864144
                  sltu         s4, a1, s1
                  nop
                  sll          s6, a7, a5
                  srai         s8, s4, 7
                  sll          t3, t0, gp
                  and          s5, s9, s11
                  ori          a6, a5, 95
                  sra          s6, ra, zero
                  or           s11, a0, s0
                  sra          s9, t4, s0
                  sltu         s10, ra, s0
                  sll          s11, a7, zero
                  xori         a0, gp, -728
                  or           s2, s3, s0
                  sra          s9, s2, s8
                  or           ra, a6, a6
                  srli         a6, s9, 24
                  ori          a0, s1, 2029
                  addi         a7, t6, -96
                  xori         s4, s4, -301
                  or           s11, s3, s11
                  andi         a7, s0, 1007
                  auipc        a5, 890730
                  lui          s10, 30448
                  xor          a0, t3, t3
                  or           zero, a5, tp
                  slti         s10, a7, 975
                  ori          a5, s4, 1853
                  add          s5, a2, s8
                  andi         sp, sp, 1490
                  xori         a6, s7, 1035
                  ori          s2, s1, -1130
                  and          s11, tp, t2
                  srli         tp, a7, 29
                  or           s6, sp, a3
                  or           s1, t3, a3
                  srl          sp, a3, zero
                  nop
                  slt          s2, tp, s7
                  srli         s8, s5, 21
                  add          s11, tp, s4
                  slli         a3, s9, 10
                  nop
                  sub          a7, a6, s10
                  xori         zero, sp, 940
                  xor          s2, s6, a0
                  ori          a2, zero, -269
                  ori          t3, s0, -380
                  sra          t1, s4, t4
                  addi         zero, ra, -928
                  sltiu        zero, sp, -472
                  ori          sp, s1, 1131
                  addi         a0, s7, -233
                  ori          t5, a3, 2001
                  and          s5, s1, a6
                  lui          a2, 298672
                  ori          s6, a7, 433
                  xor          s6, s11, s3
                  srai         t5, tp, 31
                  xor          a2, s6, a2
                  slt          s8, s1, t1
                  xor          t1, t5, t3
                  slli         a5, a6, 22
                  and          ra, gp, t2
                  nop
                  slti         s10, a6, 1751
                  xori         t6, a4, 671
                  addi         a5, s0, -707
                  nop
                  slti         s6, s3, -90
                  and          a7, s10, a7
                  andi         s11, t5, 1451
                  srai         s0, s1, 7
                  slli         sp, t5, 29
                  and          s11, t2, a7
                  xori         gp, t3, 539
                  andi         gp, t1, -409
                  sltu         t1, s1, zero
                  and          a3, t1, t5
                  andi         t3, ra, 1580
                  lui          s7, 601673
                  sltiu        a7, t4, 428
                  slt          a0, tp, s11
                  slti         t5, gp, -701
                  auipc        s1, 296872
                  srl          tp, a5, s11
                  sra          tp, a2, s2
                  nop
                  and          a7, s2, s4
                  srai         s8, a6, 22
                  srl          s2, ra, s10
                  srl          zero, a5, t6
                  addi         ra, s5, 1096
                  lui          s8, 261512
                  sltu         tp, s4, a2
                  ori          a2, s6, 912
                  andi         s8, t2, -230
                  xori         s8, s4, -304
                  add          gp, s9, t4
                  lui          s0, 724821
                  add          a3, sp, s7
                  and          a5, t2, a1
                  or           a1, a6, s3
                  nop
                  sltu         a5, t6, s2
                  and          s7, t5, s6
                  sltiu        a1, a0, -1200
                  slti         t0, t0, 1499
                  addi         tp, s3, -1063
                  add          a3, s6, a7
                  nop
                  auipc        t1, 738073
                  slti         s1, t2, 1946
                  xor          gp, gp, s11
                  sra          a0, t4, zero
                  xori         tp, gp, -203
                  addi         tp, s3, 1421
                  slli         s0, gp, 17
                  srli         a7, ra, 8
                  ori          a6, s8, 1085
                  sltiu        t5, s0, -487
                  srli         s6, s6, 13
                  lui          tp, 77854
                  slli         t3, zero, 19
                  lui          a0, 950954
                  lui          a5, 236524
                  slt          zero, s4, t3
                  and          gp, s8, s9
                  sra          a1, tp, ra
                  sub          a7, a4, a1
                  srai         s6, t5, 27
                  or           tp, a3, zero
                  xori         s9, s4, 1354
                  andi         t3, a3, -1254
                  or           tp, sp, s6
                  xor          s3, s8, t5
                  xori         a6, s7, -1242
                  or           s2, s1, a4
                  or           a3, a5, t0
                  slt          t3, t0, tp
                  slt          s2, s8, a7
                  xor          a0, a7, sp
                  srli         a0, gp, 22
                  or           ra, s2, t6
                  ori          s10, a5, -1414
                  srl          t3, a5, a3
                  add          s10, a4, sp
                  sra          t3, a2, t5
                  xor          tp, a7, s7
                  sll          s3, a6, t5
                  or           s0, zero, s11
                  nop
                  xor          s1, s6, sp
                  slt          s0, sp, a2
                  nop
                  sltiu        sp, ra, -1872
                  and          a3, tp, s2
                  sub          t3, a2, t1
                  srli         s11, a5, 15
                  sltu         sp, a7, s5
                  slt          ra, s9, t3
                  ori          t5, a5, 1077
                  nop
                  auipc        t6, 181611
                  and          ra, tp, s8
                  srai         tp, s6, 9
                  slti         a1, s4, -1110
                  auipc        a2, 553163
                  nop
                  sltiu        s8, t4, -258
                  or           t0, s10, t5
                  srli         s0, t6, 25
                  srl          a5, s3, a3
                  sll          s7, s0, gp
                  srl          s2, a2, s9
                  xor          t1, s9, s2
                  sra          s2, s3, s9
                  add          s10, s8, tp
                  srl          s10, a6, t6
                  xor          t5, t2, s7
                  srl          s8, a0, a5
                  sltu         s0, a6, t5
                  xori         s1, t1, 1769
                  srli         a6, a3, 28
                  slt          t5, a7, s7
                  ori          t0, a0, -1693
                  sltu         a1, a6, s2
                  sltiu        s6, s7, 405
                  lui          t6, 516243
                  addi         s7, s8, 106
                  addi         t5, s2, 1844
                  xor          t0, tp, a7
                  sltiu        s10, a6, 1202
                  srl          s5, t5, s0
                  srai         s5, a0, 4
                  sll          s10, a5, a6
                  addi         s3, t1, -656
                  sltu         t5, ra, s0
                  xori         a3, a7, -1781
                  sltiu        s1, t0, 60
                  andi         s0, a4, -1935
                  slt          t3, a5, tp
                  sra          t5, tp, ra
                  sub          s7, a7, ra
                  addi         a7, a2, 759
                  sll          s2, tp, t3
                  and          t1, a1, s4
                  srai         a5, t2, 29
                  sll          a7, zero, t5
                  andi         s5, t1, -786
                  sltiu        s3, s11, -503
                  and          a3, t5, a5
                  sra          s4, s3, t2
                  srl          a1, t6, s7
                  or           a0, s3, t4
                  add          s5, s0, s8
                  slt          a3, s2, a1
                  add          s3, t1, t1
                  auipc        s6, 446800
                  xor          t1, s6, a6
                  slt          t1, zero, a0
                  add          a2, s5, t6
                  andi         s8, sp, 827
                  andi         a7, s1, -666
                  nop
                  sub          s11, t3, ra
                  ori          s7, s8, 1236
                  xori         s2, t2, -671
                  sub          a5, s10, a2
                  nop
                  and          a7, s11, t0
                  sltiu        t0, gp, -1726
                  sltiu        s6, s7, -2012
                  sll          t5, s3, tp
                  slli         ra, ra, 3
                  srl          sp, s1, a4
                  or           t5, t0, s2
                  ori          t5, a6, 1177
                  sltu         a5, t0, a4
                  xor          a1, t2, sp
                  srl          t1, s2, a7
                  sub          s5, t6, s9
                  sra          s0, tp, s8
                  nop
                  slli         s0, s4, 17
                  and          a3, a2, s0
                  lui          t0, 110144
                  srl          s4, sp, s7
                  slli         t6, s7, 23
                  sub          s4, tp, a0
                  sltu         zero, s2, s8
                  srai         s7, s5, 6
                  and          a6, a7, s0
                  sub          s1, t0, s9
                  sltiu        a2, t0, 20
                  auipc        s5, 648200
                  lui          s1, 292518
                  auipc        t5, 625164
                  add          t5, s11, s4
                  sra          sp, t2, a1
                  lui          gp, 59488
                  add          t5, t4, s2
                  sll          s8, s1, a7
                  auipc        a5, 545271
                  lui          a0, 301674
                  ori          s7, a7, -1066
                  slli         s5, a4, 13
                  slli         s7, t1, 26
                  srai         ra, s9, 10
                  xor          a6, s8, s10
                  and          a0, a4, a1
                  sub          s4, a2, t6
                  ori          a1, t3, 113
                  srai         t1, s2, 30
                  lui          t5, 174078
                  auipc        s11, 717330
                  and          s3, s4, s10
                  add          a3, ra, a1
                  addi         s3, t5, -1637
                  sltu         s10, sp, t2
                  sra          t1, t3, t5
                  ori          t0, sp, 241
                  srli         s0, s3, 13
                  srl          a3, s1, t3
                  sll          t5, s6, a6
                  nop
                  srai         tp, a1, 7
                  ori          s5, t6, -1362
                  xori         sp, s11, -1291
                  sltiu        s5, s10, 1065
                  xor          s6, s11, ra
                  xor          s8, sp, s3
                  sll          s10, t2, s11
                  addi         s3, a5, 816
                  srl          sp, s2, a5
                  srai         ra, gp, 15
                  lui          t5, 138819
                  or           t6, s0, s8
                  auipc        a5, 656020
                  sltiu        s5, t1, 1662
                  slti         s4, t1, 1614
                  ori          a5, a4, -336
                  srli         sp, a4, 22
                  sltiu        a6, a0, -497
                  and          s5, s4, t5
                  sltu         a3, sp, zero
                  xor          a6, t5, zero
                  sltu         s7, s5, t5
                  ori          t1, s10, -1991
                  srai         a0, s11, 27
                  addi         tp, s0, 1450
                  slt          a6, a4, a3
                  and          a6, tp, s11
                  xori         zero, t4, 1937
                  ori          s2, t6, -648
                  sll          gp, s10, s8
                  sltu         sp, a4, s9
                  sub          s10, s5, ra
                  srai         t5, s8, 27
                  or           s3, t2, a7
                  slli         s3, gp, 1
                  srli         gp, a2, 22
                  srai         zero, a7, 25
                  and          s5, t6, s10
                  sltiu        gp, t5, -1207
                  andi         gp, a0, 225
                  addi         a0, a0, -1790
                  xori         a7, t1, 1598
                  srli         s10, s11, 12
                  slli         s1, s8, 10
                  ori          sp, s8, 1038
                  andi         t0, t5, 1784
                  xor          ra, t2, ra
                  add          sp, t4, a0
                  sll          a1, s6, s3
                  sub          t5, sp, s9
                  slli         s6, a3, 6
                  ori          t3, s2, -1077
                  srl          s9, a3, tp
                  srl          s10, gp, a1
                  addi         tp, s10, -356
                  nop
                  srl          t3, s11, s6
                  addi         s1, t4, -2034
                  sra          s6, a1, tp
                  add          s0, s11, t6
                  slt          zero, s11, t3
                  sub          s9, s4, s2
                  and          t0, s9, t5
                  or           a1, t4, a1
                  sltiu        gp, t2, 1964
                  sll          tp, s0, a3
                  andi         s1, a5, -264
                  add          tp, s8, s7
                  slli         a6, t2, 20
                  srai         a7, a6, 16
                  xor          ra, a0, t0
                  auipc        s9, 373663
                  lui          tp, 521760
                  ori          s0, t4, 264
                  srli         s9, t3, 0
                  sll          a2, s9, ra
                  slti         s11, a7, 1066
                  srli         sp, s3, 25
                  slli         a1, t6, 26
                  srai         s1, t4, 2
                  xor          ra, sp, s2
                  auipc        a3, 759857
                  slt          ra, a4, t5
                  slti         gp, a5, -1114
                  xori         tp, s9, 679
                  srl          t5, sp, gp
                  slti         s7, t5, 528
                  nop
                  sltiu        s3, s5, -578
                  ori          a6, s7, -1326
                  sub          s1, zero, t2
                  ori          a3, s5, 23
                  srli         s4, a6, 10
                  andi         s3, s10, 1095
                  add          t6, a7, a7
                  srai         s9, s11, 23
                  or           gp, tp, a4
                  srli         ra, s7, 26
                  sub          sp, t3, gp
                  sub          s5, tp, gp
                  sltiu        s8, gp, -597
                  slli         a5, s6, 29
                  and          a0, s7, s2
                  xor          ra, s10, t4
                  slti         s2, s11, 1721
                  slt          a1, a7, t5
                  ori          a1, zero, 1158
                  addi         a5, t1, -15
                  nop
                  or           s2, a5, t1
                  xori         a0, s3, -1368
                  and          s10, s10, s9
                  sra          sp, gp, t1
                  ori          s6, s1, 1450
                  sltiu        s0, gp, 1180
                  lui          s0, 422685
                  srli         t0, s4, 19
                  xor          a2, s3, s4
                  xor          a5, a3, t5
                  xor          gp, t5, a4
                  addi         tp, a3, -458
                  slli         a7, a4, 16
                  xor          a1, zero, s6
                  addi         s2, ra, 117
                  sra          zero, t1, t4
                  or           s3, s10, s2
                  auipc        s5, 1000745
                  ori          t6, t5, 1795
                  nop
                  and          a5, s10, t3
                  xor          tp, a5, tp
                  xori         s4, ra, 190
                  and          tp, a2, zero
                  and          s0, t2, s5
                  lui          gp, 848401
                  sltiu        s0, a3, -1668
                  sltiu        t3, t0, 505
                  or           s8, s1, a5
                  sltu         a5, a6, s9
                  nop
                  auipc        s1, 680047
                  sra          s9, a1, s8
                  or           s6, a2, s6
                  add          sp, s2, a0
                  sltu         s2, s0, s3
                  slt          gp, ra, gp
                  srl          s10, a6, t3
                  xori         s1, s1, 59
                  lui          zero, 699691
                  addi         a1, s7, 694
                  xor          a5, s8, s10
                  slt          t0, tp, ra
                  sra          s10, t0, a7
                  slti         t0, t2, 1331
                  sll          s3, ra, a3
                  addi         s5, t1, 1558
                  ori          gp, t6, -672
                  sra          s8, s6, s10
                  sub          s7, a1, sp
                  and          s10, t5, s10
                  srl          a5, t6, s9
                  slli         sp, zero, 20
                  sll          s2, t1, t1
                  sltu         a0, tp, t2
                  sltu         a5, tp, s8
                  add          t0, s11, t4
                  sra          a3, s9, sp
                  sra          s4, ra, s3
                  sltu         t3, t2, s4
                  sltu         t3, t4, t4
                  and          a5, sp, t0
                  sltiu        t1, s2, 888
                  auipc        t0, 157757
                  srl          t1, a0, a7
                  srl          sp, s1, s4
                  sub          s11, t3, s11
                  srl          ra, a6, t4
                  slt          s6, ra, t5
                  auipc        zero, 694695
                  xori         s5, s5, 305
                  sltu         s5, t5, s0
                  auipc        a2, 202800
                  sub          sp, a1, s11
                  xor          t3, t4, s8
                  addi         s10, a6, 1410
                  and          s8, s3, t5
                  ori          s8, t5, -1906
                  srl          t1, tp, gp
                  addi         sp, t4, 445
                  sub          s9, gp, a7
                  sltiu        t1, s3, 1561
                  srai         a5, a2, 16
                  sll          sp, t4, a6
                  sll          t3, zero, s9
                  addi         t3, ra, -1810
                  xori         a5, a0, 404
                  nop
                  sll          a5, s11, t1
                  ori          a0, s9, 1247
                  srai         tp, t4, 6
                  add          s6, a3, s9
                  xor          s3, t2, t0
                  andi         s4, s11, 1875
                  srai         s7, t0, 22
                  srli         a0, s9, 11
                  sub          a2, a5, t1
                  slti         a1, s3, 1417
                  xori         a3, zero, 937
                  sltu         t3, t0, gp
                  auipc        s8, 879708
                  srl          ra, s0, s8
                  sll          gp, s3, a6
                  sll          t6, a5, a1
                  sltu         s3, a4, t6
                  xor          tp, s9, a3
                  lui          t3, 220900
                  sub          gp, a4, t1
                  srl          s9, tp, s4
                  sll          s8, s9, s0
                  sra          s8, a4, s3
                  srl          zero, t0, t0
                  add          a2, s5, zero
                  srl          s5, a4, a1
                  xori         t6, t0, -1852
                  srai         t3, s2, 2
                  xori         ra, a3, 666
                  sltiu        ra, zero, 168
                  or           t1, s2, a0
                  srl          s5, s3, s2
                  xor          t5, a7, a5
                  addi         t6, a1, 1053
                  slt          a1, s2, a6
                  add          a2, t3, a5
                  addi         s1, t3, -1459
                  slli         s1, s7, 6
                  sltiu        t3, t0, 390
                  slt          a3, t0, a2
                  andi         t1, s8, -93
                  or           s2, s9, a7
                  srli         ra, a6, 12
                  sll          sp, s2, s4
                  sub          a0, a1, a4
                  srli         s3, a3, 15
                  sra          s8, a5, s5
                  srli         s3, s6, 25
                  addi         a6, zero, -844
                  slti         s4, s1, 1511
                  or           ra, s3, s6
                  slti         t6, t5, 1567
                  sll          a3, a7, a4
                  auipc        s0, 86941
                  auipc        t0, 613282
                  addi         tp, a6, -1846
                  sra          s2, a0, s11
                  and          s0, s11, s4
                  sra          s10, a2, gp
                  sltu         s7, t1, sp
                  sra          s3, sp, s6
                  andi         s2, s8, -1131
                  sra          s9, a4, a5
                  nop
                  sltiu        t3, t4, 473
                  andi         tp, a3, -1513
                  sll          a7, t2, a0
                  nop
                  andi         s5, s4, 1753
                  slli         t3, s8, 23
                  slti         s7, zero, 1059
                  slt          zero, t3, t0
                  addi         a0, s1, 1588
                  addi         a3, a7, -291
                  addi         s10, t6, -491
                  slt          a1, a7, s11
                  nop
                  srai         s2, t3, 31
                  ori          s8, ra, -698
                  sltu         s1, s5, s4
                  slli         s6, s2, 8
                  xor          s7, a2, a7
                  addi         a2, s1, -1137
                  srl          gp, t5, s5
                  sltu         s9, s4, s3
                  sltiu        s1, a0, -714
                  xor          s3, t3, tp
                  sra          a2, s0, s7
                  sub          t0, a7, s10
                  sltu         a2, s7, a2
                  ori          s6, s11, -918
                  xori         s9, sp, 189
                  srli         s10, a4, 30
                  nop
                  slt          s10, sp, t2
                  auipc        a6, 102912
                  auipc        a0, 742005
                  addi         t6, s4, -1228
                  andi         s3, tp, 1430
                  and          s4, tp, s10
                  sll          s4, s6, a2
                  xor          s7, a3, a2
                  sub          s10, t4, a6
                  lui          a3, 973972
                  slt          a5, a4, s8
                  xori         s7, zero, 190
                  sra          gp, a5, t2
                  slti         s2, a3, 1354
                  auipc        s3, 44394
                  srai         s11, tp, 23
                  srai         t5, a7, 6
                  slt          a3, a5, a4
                  xori         tp, sp, 862
                  srl          a2, t6, t5
                  srl          a2, a6, t2
                  srl          a7, s2, a7
                  or           s1, t2, s10
                  srai         s11, t4, 2
                  sltu         s11, s7, a6
                  ori          tp, tp, 950
                  nop
                  xori         s2, t0, 554
                  and          a1, t6, a4
                  addi         sp, a0, 752
                  auipc        t1, 382326
                  ori          t6, s6, 2010
                  or           a2, a6, a5
                  andi         s2, a7, -1222
                  ori          s11, zero, -1739
                  add          t1, a3, tp
                  sltu         zero, gp, gp
                  sltu         s9, a3, ra
                  sltu         a7, tp, s0
                  add          s11, a3, a3
                  add          s9, s10, t1
                  sltiu        sp, s6, -1928
                  nop
                  lui          s9, 936195
                  slti         a0, t6, -150
                  ori          sp, s7, -712
                  sub          s9, s0, s2
                  sll          t6, a4, s3
                  srai         s9, s6, 1
                  sll          s4, a2, a7
                  srl          s1, s8, t2
                  sra          gp, a1, s9
                  slti         a6, t6, 1909
                  sltu         t6, a3, gp
                  lui          s1, 784170
                  slti         s6, a5, -1036
                  slt          zero, ra, a5
                  nop
                  add          s9, a7, tp
                  sltiu        a5, s8, 1734
                  srl          a3, a7, s3
                  sltu         a3, s10, s8
                  srli         s1, s8, 27
                  srai         s9, a2, 20
                  lui          t6, 650201
                  and          s3, a3, a3
                  auipc        s11, 222223
                  addi         a3, a4, 1401
                  sltu         s1, zero, t0
                  addi         s2, a1, 526
                  sub          a0, s9, t0
                  xori         a5, a1, -1483
                  nop
                  slti         a6, t6, 1416
                  slti         gp, s6, -178
                  add          s2, s1, s6
                  srai         s2, sp, 10
                  xori         gp, a4, 121
                  sll          s7, s10, t1
                  xor          a5, s10, t6
                  slti         s1, s4, -1544
                  xori         gp, s11, 1727
                  sub          s2, s2, a0
                  sltiu        t0, a0, -31
                  sltu         a6, a7, a0
                  sltiu        sp, s6, 1718
                  auipc        t3, 175683
                  andi         s2, t0, 730
                  xori         sp, a5, -879
                  and          s1, s4, s11
                  srai         s1, a3, 29
                  slti         a3, s0, -718
                  srai         s10, s1, 21
                  ori          a5, a2, 2021
                  slt          s9, s9, s0
                  srl          s9, a7, s0
                  nop
                  sll          s11, t4, t1
                  ori          s1, t3, 1648
                  srai         s5, a5, 24
                  xor          s4, s9, s7
                  andi         s6, t1, -1544
                  slti         s9, s7, -1495
                  or           s0, s7, s9
                  ori          t1, t2, 447
                  or           t1, t0, a7
                  sltiu        gp, a3, -1655
                  sll          s0, a4, s2
                  srli         tp, a6, 20
                  xor          t3, t1, t2
                  auipc        gp, 78581
                  ori          s8, s2, 833
                  addi         s2, a1, -127
                  sltiu        a2, a4, -2011
                  sub          s4, s0, a1
                  and          a3, sp, t6
                  lui          ra, 12583
                  sltiu        a3, t4, 1665
                  sltiu        s2, s7, 1161
                  srai         s11, s9, 29
                  sra          t1, s3, s7
                  sll          a5, gp, s4
                  xori         zero, s8, 122
                  andi         t0, s5, 605
                  addi         s10, s8, -1371
                  add          a3, ra, t3
                  sll          a0, a3, s9
                  ori          a6, s6, 662
                  sltiu        s4, s9, -1626
                  srl          s8, t3, a7
                  addi         s7, s10, 1135
                  lui          tp, 6110
                  xor          s3, a6, t3
                  ori          a7, t6, -1616
                  and          s8, t6, s5
                  sub          s9, s10, a3
                  and          a3, t2, s5
                  xor          s9, s8, a1
                  andi         tp, t1, -1834
                  or           gp, a5, s9
                  sltiu        s7, ra, 517
                  slti         t3, zero, -357
                  ori          tp, s0, 1074
                  or           s9, ra, a6
                  and          sp, a6, a7
                  xori         t1, a2, -660
                  slt          t3, s11, a3
                  andi         s7, s1, 1263
                  andi         s8, tp, -908
                  nop
                  and          s1, s11, t0
                  add          a3, t0, s8
                  sub          s8, sp, t4
                  srli         ra, t1, 12
                  srai         s3, tp, 8
                  srl          s1, s2, a6
                  slli         a7, t0, 11
                  sub          a5, a1, t0
                  nop
                  srli         s1, s5, 23
                  sltu         t0, ra, s4
                  sltu         a3, s1, s0
                  sll          a1, s2, zero
                  slt          a0, gp, s9
                  srl          s4, tp, tp
                  srai         s5, s8, 12
                  sltiu        a2, a2, 920
                  sra          s1, s5, s3
                  addi         s10, s9, -158
                  srli         s10, t0, 13
                  ori          a2, s4, 326
                  xor          a5, a5, s9
                  srl          t6, s7, t2
                  nop
                  add          zero, t1, s9
                  sltiu        s6, t3, 352
                  sra          s2, t2, s10
                  add          s9, s8, s7
                  sll          s6, sp, t2
                  auipc        a3, 481192
                  xor          t3, t2, a2
                  andi         s7, s11, -713
                  sll          s8, s9, a3
                  auipc        a3, 152514
                  srli         gp, tp, 29
                  srli         s1, zero, 0
                  srl          s9, zero, s2
                  sra          s5, sp, t4
                  sra          tp, t5, a1
                  sltu         s1, ra, gp
                  srli         s9, zero, 6
                  srl          s0, s5, s2
                  auipc        zero, 675084
                  srai         s10, s10, 13
                  srl          s2, gp, t4
                  and          a2, t0, a1
                  sub          t6, t4, s10
                  srai         t3, a2, 4
                  addi         s3, t6, 1160
                  auipc        s10, 902649
                  sub          tp, tp, s0
                  lui          t6, 794290
                  auipc        s4, 448185
                  nop
                  xori         t1, a6, -1776
                  slti         t3, zero, -1791
                  add          s11, s7, a6
                  auipc        s6, 894494
                  srli         t1, tp, 3
                  srl          t0, a3, s10
                  nop
                  srli         s10, ra, 7
                  slt          s5, a4, s11
                  sub          a3, t5, a1
                  xori         t0, a1, 243
                  addi         gp, tp, -933
                  sub          a3, s5, s8
                  srl          gp, s4, a1
                  sltiu        s10, s1, 1711
                  slt          t3, a4, s0
                  srai         t5, t4, 8
                  nop
                  andi         sp, s9, 586
                  lui          s6, 1030047
                  srai         s7, t2, 30
                  sub          t6, s10, zero
                  and          s11, zero, sp
                  sltiu        t5, t5, 231
                  auipc        s6, 965620
                  sltiu        a1, a5, 212
                  srli         a5, s8, 12
                  nop
                  addi         s0, s1, -688
                  xor          a5, a3, gp
                  nop
                  addi         s2, a1, 1125
                  srl          a7, s8, ra
                  sll          t5, t5, s7
                  srli         a3, a0, 8
                  xor          s6, gp, s10
                  slli         a5, a1, 30
                  sub          a3, s11, a4
                  sltu         t3, s3, s5
                  auipc        a1, 732193
                  andi         s8, t5, -1776
                  slti         a2, s10, -548
                  srl          a6, s7, s3
                  nop
                  sll          s5, s2, s3
                  lui          a5, 1015120
                  xor          s1, a5, t4
                  sub          t3, tp, sp
                  srai         s11, s8, 24
                  slt          s6, t1, s7
                  slti         s6, t0, -1936
                  lui          s4, 904430
                  sub          a1, a5, a2
                  xori         s2, t3, 1262
                  srai         s6, t4, 12
                  sll          s4, t0, s4
                  xor          s2, s1, s8
                  andi         s5, zero, -419
                  srai         t0, s5, 17
                  addi         a7, s6, 166
                  xori         a7, a3, 1608
                  auipc        a7, 661089
                  slli         t6, s11, 21
                  sltiu        ra, t1, -586
                  add          s11, t1, s2
                  or           s11, t4, s7
                  sltu         s8, a6, a5
                  sra          a3, s3, t2
                  and          t1, a0, gp
                  nop
                  andi         s7, s9, -1951
                  sra          gp, s6, s11
                  andi         t6, t0, -81
                  nop
                  sltu         s4, a6, s10
                  auipc        s2, 456094
                  or           s1, t2, s0
                  slli         gp, t1, 27
                  sltu         s5, a2, s2
                  andi         t0, zero, -1247
                  nop
                  slt          s1, s8, t6
                  srai         sp, s1, 28
                  sll          s10, sp, s10
                  slt          a2, s1, s0
                  sll          t3, t0, s8
                  slli         t6, a1, 19
                  andi         a5, s3, -115
                  slti         a6, s8, 1298
                  sub          t1, a6, s10
                  or           t6, t2, t6
                  addi         s6, a1, 1946
                  and          gp, a4, a6
                  srl          t1, a5, a2
                  srai         s6, a1, 4
                  slti         s5, s10, 903
                  sra          s4, a3, s11
                  andi         s5, s8, 1887
                  sltiu        gp, sp, 51
                  nop
                  srl          s8, s6, s5
                  xor          ra, a1, s6
                  xori         s1, t4, -786
                  add          s2, t0, s1
                  srl          gp, s0, sp
                  sll          s7, s7, t0
                  add          s6, s10, a6
                  andi         t3, s7, 906
                  xori         gp, s0, -381
                  add          a6, a7, ra
                  sll          a2, s3, s0
                  srli         sp, s6, 4
                  ori          t5, s6, 356
                  slti         s10, t1, 605
                  nop
                  xor          s9, s8, t5
                  nop
                  lui          a0, 723155
                  sltiu        s7, ra, 675
                  sltu         t0, s3, t5
                  xor          s9, s0, s11
                  addi         a2, ra, -1628
                  slli         s3, s3, 1
                  nop
                  slti         t1, a3, 339
                  sub          s1, t3, t4
                  sltiu        s10, t2, -748
                  slli         a1, a6, 8
                  srai         a0, s4, 29
                  srli         t3, a6, 11
                  sltiu        tp, t4, 766
                  srli         s9, a3, 9
                  lui          s4, 936656
                  andi         a2, s2, -1876
                  sra          gp, tp, s10
                  srl          s5, zero, a2
                  sll          s5, tp, s6
                  lui          s3, 800414
                  ori          s5, s6, -1242
                  sltiu        tp, a4, -1447
                  lui          a0, 856389
                  andi         t3, a5, -1427
                  xor          s4, s0, s4
                  srai         a3, a2, 13
                  srli         t6, s2, 0
                  or           a5, s1, s1
                  addi         s5, s3, 1823
                  slli         gp, gp, 30
                  srl          s11, ra, s4
                  andi         t1, s9, -1048
                  sltu         t3, a5, s1
                  lui          a3, 230918
                  slt          t1, s9, t6
                  sll          t6, a0, s0
                  srai         s9, a6, 1
                  nop
                  sra          s1, a4, s1
                  slli         t0, zero, 8
                  or           s3, s6, s4
                  andi         s9, zero, -1440
                  slli         s10, ra, 21
                  sub          tp, a5, a6
                  sltu         s9, s2, sp
                  slli         a6, sp, 16
                  slti         s2, s1, -322
                  srli         t0, t0, 15
                  nop
                  addi         ra, a1, -1537
                  addi         s1, sp, -1485
                  and          a5, s6, s0
                  addi         a3, s0, -915
                  or           a7, gp, s7
                  sltu         t3, a2, t2
                  slt          a0, s3, s8
                  slt          t6, t6, s3
                  addi         s11, t6, -599
                  srli         s11, s6, 5
                  sra          a0, s1, gp
                  auipc        s7, 394359
                  and          s7, tp, a2
                  auipc        s3, 532117
                  sltiu        s8, a0, -43
                  and          s8, s10, a0
                  slli         t1, s7, 7
                  add          a7, a4, s11
                  slt          a6, a0, a6
                  slti         s3, s4, -946
                  and          s2, s0, zero
                  lui          s2, 620654
                  lui          s3, 783322
                  sll          t0, t5, s7
                  nop
                  srli         s7, t1, 17
                  nop
                  sra          s7, a0, t0
                  sra          s1, t1, t1
                  sra          a7, s8, s9
                  sll          tp, t2, t0
                  slti         s8, t2, 1078
                  or           s11, a3, s7
                  addi         s3, s7, -1689
                  and          s10, ra, ra
                  srl          t6, s10, s1
                  slli         a5, s1, 11
                  slli         ra, s2, 4
                  sll          s9, gp, t1
                  auipc        a0, 1015367
                  sll          s9, s0, a7
                  slli         a2, zero, 18
                  andi         s11, t6, -198
                  sub          s5, a6, a5
                  or           s2, s3, a1
                  sltu         s11, t4, a0
                  sll          s6, t1, a0
                  nop
                  slt          zero, a6, s0
                  sll          t3, s1, s11
                  or           a0, a7, a4
                  and          sp, s4, t2
                  srai         a2, s8, 5
                  auipc        s8, 71995
                  sltu         gp, s7, s4
                  slt          s8, a5, a2
                  xori         s5, a2, 660
                  sltiu        s5, a2, 419
                  addi         s10, ra, -346
                  srai         zero, s9, 7
                  addi         s8, s2, 536
                  xor          s5, t6, a1
                  sra          s11, a0, a1
                  srai         t1, a0, 8
                  ori          gp, t3, -859
                  or           t1, a0, s2
                  or           s0, t0, s9
                  xori         s1, t5, -1139
                  sra          s11, a1, tp
                  sll          ra, s1, s1
                  and          t6, t0, gp
                  sub          ra, s7, s0
                  xori         zero, a2, 623
                  sub          s0, a5, a4
                  xori         a3, a5, -1066
                  nop
                  auipc        t3, 802334
                  ori          t1, t6, 831
                  or           a2, a0, a7
                  and          t0, a4, s7
                  srai         tp, a4, 23
                  and          ra, s1, t1
                  add          a1, a1, ra
                  or           s4, ra, t2
                  slli         a6, a6, 3
                  slli         t5, s6, 0
                  nop
                  lui          tp, 244278
                  srli         s2, sp, 2
                  ori          s11, gp, -265
                  nop
                  auipc        s8, 887613
                  or           s8, ra, a0
                  add          a7, s11, t4
                  slt          tp, tp, s4
                  srli         s1, s1, 22
                  addi         t6, s5, -1073
                  slti         a2, t0, -1647
                  sra          s3, s7, t0
                  sltiu        s8, s7, 1704
                  slt          t3, s4, a1
                  sra          s5, s1, t6
                  sll          t0, s10, s9
                  srl          ra, t6, t2
                  addi         t5, a7, -1227
                  auipc        s5, 573601
                  sltiu        sp, s9, 1569
                  lui          s10, 219279
                  slt          s2, s1, s1
                  slli         t1, s6, 6
                  sltiu        s7, t1, -997
                  sra          t5, a3, t3
                  or           a0, s5, ra
                  sltu         t6, s0, s4
                  sltu         a1, s10, t0
                  nop
                  and          a7, sp, s8
                  sra          tp, a7, s7
                  sra          t0, s2, t0
                  sub          a2, tp, t2
                  add          t0, a6, s4
                  auipc        a0, 930513
                  sub          s10, a4, a2
                  sltu         a6, s11, t6
                  andi         gp, gp, -1137
                  andi         a5, s5, 374
                  sra          s7, s5, a7
                  srai         t5, t4, 7
                  xori         a0, s8, -264
                  lui          s1, 30433
                  xori         t5, a4, -1957
                  slli         s6, s2, 13
                  srl          a7, t4, gp
                  slt          s7, ra, s5
                  add          s5, sp, a7
                  or           a7, s7, t0
                  sub          a0, t2, s4
                  slti         s4, t1, 1555
                  lui          sp, 116031
                  andi         a6, a0, 176
                  nop
                  sub          t0, a5, t4
                  sltu         s9, s10, s10
                  andi         sp, s7, 1789
                  xori         s4, s4, 1737
                  andi         a6, t3, 59
                  ori          zero, a3, 1189
                  lui          a2, 429112
                  add          a5, t3, s2
                  nop
                  srl          a3, s6, a6
                  andi         s10, s7, -1316
                  slli         a1, a4, 3
                  xori         s4, t5, -106
                  and          gp, s4, ra
                  lui          a1, 699987
                  srl          a2, s0, t3
                  andi         t1, t3, -136
                  sltiu        t1, s0, 50
                  ori          s0, a2, 542
                  xor          s8, a4, s0
                  slt          t1, tp, s5
                  and          a1, s5, s8
                  add          t3, t1, a7
                  srli         a6, s10, 28
                  sltiu        s9, s4, -642
                  lui          t6, 636913
                  sub          s3, a3, a4
                  xori         s2, t6, 1846
                  xori         s9, s7, -1763
                  slt          s4, tp, t4
                  slt          a1, s8, s6
                  sra          a1, a2, a0
                  srli         gp, t6, 25
                  xor          s0, t6, a5
                  srl          ra, a7, t5
                  sub          a6, gp, tp
                  lui          a6, 603027
                  sra          gp, a1, s7
                  lui          s11, 13893
                  andi         zero, s2, -1292
                  auipc        sp, 746056
                  addi         gp, t6, -1289
                  sltu         s4, s0, s1
                  nop
                  addi         s9, t0, -632
                  sub          t5, tp, a7
                  srli         t6, t0, 29
                  lui          s4, 387911
                  andi         s10, s1, 534
                  nop
                  srai         a5, a4, 13
                  ori          ra, t4, 277
                  xor          s2, t2, a1
                  auipc        s8, 708285
                  slli         t3, s11, 9
                  sra          t3, s10, tp
                  xor          t0, zero, zero
                  add          s0, s3, s2
                  add          a5, s8, t3
                  sub          a3, s0, zero
                  xori         zero, t5, 715
                  auipc        a6, 643919
                  sub          ra, t0, a4
                  auipc        t3, 250756
                  ori          t6, tp, -1808
                  ori          s7, t3, 1693
                  sll          zero, s10, a5
                  xori         s9, sp, -161
                  srli         s8, s8, 10
                  andi         s2, t3, -37
                  auipc        s1, 562278
                  slli         a3, s8, 17
                  andi         s3, s9, 1984
                  srl          gp, t4, a0
                  sltu         s2, tp, t5
                  srl          s3, a6, t1
                  addi         gp, s1, -1953
                  slti         s8, gp, -602
                  sltiu        s7, a0, 596
                  addi         a3, t6, -183
                  srai         a2, s3, 21
                  lui          a0, 574591
                  nop
                  xor          t6, zero, t2
                  slti         a0, s10, -950
                  srai         a2, ra, 7
                  addi         s4, a7, -2044
                  auipc        a2, 19578
                  lui          zero, 284794
                  xori         gp, s0, -927
                  slti         t1, t0, -1145
                  xori         s7, s6, 580
                  and          a7, a7, s5
                  and          a1, s5, t0
                  nop
                  lui          a3, 549495
                  slt          s9, s6, t1
                  slt          s1, t3, a2
                  add          t6, a6, a5
                  sltiu        a7, sp, -1944
                  sll          a3, s9, gp
                  sll          a3, t5, s7
                  xor          s4, t4, t4
                  slli         zero, s11, 19
                  sub          s9, s8, a6
                  add          s7, t0, a3
                  slt          s0, s1, a6
                  and          s7, a4, a3
                  auipc        s5, 90626
                  srl          a3, s1, s7
                  srai         a5, a2, 17
                  add          s6, sp, s7
                  add          s3, s3, a2
                  sltu         a1, a6, s9
                  xori         zero, t0, 90
                  addi         zero, t2, 1805
                  ori          ra, s7, 212
                  xori         s9, a4, 1530
                  sltiu        gp, s10, -923
                  and          t0, s7, s0
                  sltu         t1, a0, s1
                  andi         s0, a4, 511
                  srli         s3, a1, 3
                  sltu         sp, zero, a3
                  nop
                  srli         s4, s6, 24
                  ori          a2, s1, 162
                  auipc        s3, 139091
                  add          s2, t4, s7
                  sra          a0, a1, s7
                  xori         s2, s8, 941
                  slli         t6, s6, 6
                  srai         s5, ra, 6
                  srai         sp, a7, 4
                  and          s4, a0, gp
                  sltiu        a3, s5, -1061
                  addi         a3, s9, -1332
                  slli         t5, s0, 26
                  slt          s3, s3, t2
                  auipc        s7, 66930
                  sll          s9, t0, ra
                  ori          s0, t4, 765
                  srli         s5, a4, 7
                  xor          t6, a2, gp
                  sll          s9, a3, s6
                  sub          t1, a3, s9
                  nop
                  ori          s1, a3, -1525
                  sll          a3, t6, s4
                  sub          s1, sp, t4
                  slli         s6, s9, 27
                  and          t3, a5, s5
                  add          ra, a7, zero
                  add          s9, s2, t5
                  srli         t3, a2, 25
                  and          s11, a3, zero
                  slli         s3, tp, 15
                  srli         a3, t3, 17
                  addi         a1, s1, 250
                  lui          s4, 1043766
                  sltu         a1, s4, t2
                  xor          a7, s11, s9
                  add          t1, a1, zero
                  sltu         s7, a0, a2
                  nop
                  add          zero, a5, s4
                  nop
                  slt          a3, tp, s11
                  and          s4, t0, a0
                  sra          t0, a5, t1
                  sub          a1, s3, sp
                  srli         s4, s0, 29
                  sra          s5, s4, sp
                  slli         s7, s3, 17
                  xori         a7, s6, 2018
                  ori          s1, tp, 834
                  srl          s3, a4, tp
                  sltu         zero, s2, a5
                  slti         sp, s2, -260
                  and          gp, gp, a6
                  add          ra, t6, s5
                  srli         a2, gp, 5
                  slli         s5, t3, 30
                  addi         a6, t3, -1897
                  lui          zero, 420421
                  or           tp, t0, a6
                  or           s1, t0, t6
                  slli         s8, sp, 9
                  srl          tp, s6, sp
                  slti         t3, a7, -597
                  andi         s4, s1, -439
                  or           a1, a7, tp
                  sra          t1, a5, a1
                  sltu         s4, t1, a0
                  nop
                  xori         s11, s11, -355
                  sltu         gp, a6, a3
                  sra          t0, t0, t5
                  or           a2, s9, t2
                  sltiu        s2, a3, -1674
                  add          tp, t5, s8
                  sra          t6, a5, t0
                  ori          s9, t4, 1213
                  auipc        a6, 742881
                  srli         ra, t6, 13
                  xor          sp, t6, a0
                  ori          sp, a1, 226
                  srl          ra, s10, a0
                  xori         a7, t3, 110
                  addi         a6, t2, -461
                  xori         s11, a6, 1672
                  srai         tp, sp, 22
                  slti         a5, gp, -720
                  and          ra, s4, s6
                  sra          ra, a1, a2
                  add          sp, s8, a5
                  sltu         zero, s7, s8
                  sltu         a0, gp, a2
                  addi         t5, s7, 1327
                  slti         s1, a5, -487
                  xori         a2, a5, 1244
                  srl          a2, t2, a6
                  sltiu        a0, s11, 700
                  slli         t5, s5, 8
                  sll          sp, s10, sp
                  srl          t6, a2, s2
                  slt          s7, t3, a4
                  sra          a7, t4, a0
                  slti         t6, s2, 56
                  slt          zero, s11, tp
                  slti         t5, s8, 1349
                  nop
                  sll          a3, s4, a0
                  slt          t0, a6, zero
                  xori         a1, s5, 1141
                  xor          a3, a3, t5
                  slti         a0, s11, -1284
                  xor          tp, s3, a6
                  srai         ra, s6, 10
                  sra          t3, s5, s1
                  srai         s9, s8, 0
                  slti         s7, gp, -1705
                  srai         s2, s3, 22
                  andi         s5, t2, -464
                  srli         t6, s8, 18
                  slt          a0, s10, s2
                  auipc        s6, 96450
                  srl          s2, a3, a4
                  and          a3, gp, a7
                  xori         a5, s3, -1846
                  and          a2, sp, gp
                  srai         s4, s2, 6
                  sltu         t1, t2, t6
                  slt          t3, s5, ra
                  sltiu        s4, a1, 318
                  sltu         s7, t1, s3
                  srai         t0, a2, 3
                  sll          s3, s8, s2
                  srli         a1, s4, 7
                  sll          t6, gp, s0
                  add          t0, s2, sp
                  slt          ra, sp, a2
                  or           t0, s11, a2
                  andi         s0, t6, -35
                  xor          zero, t1, s7
                  or           a2, s10, a1
                  andi         a7, a1, -2006
                  ori          s11, a3, -1821
                  or           s1, a6, s5
                  and          s3, s1, s3
                  lui          t3, 117379
                  sll          s1, a5, sp
                  or           s2, a7, t2
                  sub          a2, s10, s4
                  sub          zero, s3, s3
                  sltu         s6, t5, a6
                  nop
                  slli         sp, a1, 23
                  slti         t3, t4, -1395
                  lui          t6, 245119
                  auipc        a1, 354773
                  lui          s8, 482720
                  sll          s7, t5, s5
                  lui          a1, 950844
                  slti         gp, tp, -1998
                  or           a5, t0, a7
                  sltu         a6, t4, s10
                  sltiu        s0, a6, 750
                  sra          s9, t0, a7
                  sra          t6, s5, t4
                  sltu         a5, a4, s8
                  ori          s5, s7, -1190
                  or           ra, ra, t5
                  slli         ra, tp, 23
                  ori          s5, zero, -299
                  xor          s1, a7, s0
                  addi         t3, t1, 216
                  xori         s2, s6, 1229
                  xori         ra, tp, 1044
                  sltu         s2, a5, s6
                  slt          t3, s7, s8
                  xor          s9, t0, a3
                  sltiu        a2, s11, -1591
                  srai         s6, s3, 14
                  srl          t5, zero, a0
                  slli         t0, s11, 21
                  slti         s5, s1, -1041
                  slti         s4, s2, 186
                  or           s9, s10, a5
                  slli         s1, s6, 5
                  and          a3, t6, zero
                  andi         t5, a4, -1327
                  sra          s2, s3, s10
                  sll          s5, t3, t2
                  srl          s10, t1, s1
                  auipc        a0, 481009
                  srli         s10, s9, 18
                  auipc        s6, 452110
                  sll          s10, s1, a4
                  xori         a6, sp, 544
                  and          s7, a4, s5
                  sltiu        a6, s5, 1591
                  or           t1, t3, t5
                  srl          tp, s0, s0
                  ori          s6, a0, 1275
                  xor          s9, t2, s4
                  slli         tp, sp, 26
                  andi         a2, t4, -288
                  srl          s4, a4, s10
                  xor          s4, s9, t4
                  ori          s5, tp, 638
                  srli         a0, s6, 0
                  sltiu        a2, a1, -1945
                  sltu         a0, a1, t1
                  sll          t6, s1, s3
                  slt          t3, a6, a0
                  addi         s9, a3, -1103
                  sll          s4, s6, sp
                  srai         a2, a3, 3
                  slli         a0, a5, 16
                  sub          s9, a4, s6
                  add          t3, a2, s2
                  or           s5, s9, s11
                  auipc        ra, 930340
                  srai         a3, s6, 24
                  slt          s8, s6, s5
                  nop
                  sub          gp, a1, t3
                  sll          s7, a3, gp
                  xori         s11, s2, 371
                  and          tp, t5, a5
                  andi         ra, zero, -706
                  srl          a6, s8, sp
                  srli         t6, gp, 4
                  sll          s10, a5, s4
                  srai         tp, tp, 4
                  add          t5, s1, a2
                  sra          s9, t1, s6
                  auipc        t6, 205834
                  nop
                  slti         s2, a7, -101
                  sra          a7, a6, a6
                  xor          a3, t5, a6
                  add          a1, s5, s4
                  slti         s3, s8, -31
                  sub          t6, t5, s6
                  sub          s9, tp, ra
                  sra          s1, s8, s5
                  or           s7, s2, s11
                  sub          s8, s10, t3
                  xor          a1, s2, s4
                  sltiu        a1, a5, -526
                  sub          a7, ra, s5
                  xori         s8, s5, -1625
                  sra          s0, s7, a6
                  sltu         a6, tp, s8
                  srli         s1, a3, 29
                  xor          sp, s0, a0
                  xor          s2, a1, s11
                  addi         s3, t4, 1200
                  nop
                  add          t3, s4, s3
                  slt          s4, t2, t4
                  xor          a0, s9, tp
                  auipc        t5, 1000009
                  ori          s2, a3, 131
                  xor          a1, t0, a3
                  sltiu        a6, s1, -462
                  or           s10, a3, s3
                  auipc        a3, 611805
                  andi         s1, s2, 1699
                  slli         sp, a6, 9
                  add          s2, s2, a4
                  lui          s1, 761020
                  auipc        gp, 416844
                  andi         s8, s8, -1826
                  or           s4, tp, tp
                  xor          a3, tp, t4
                  li           s3, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           t3, 0x0
                  li           t0, 0x80000000
                  li           s0, 0xffffffff
                  li           t6, 0x0
                  li           t5, 0xffffffff
                  li           ra, 0x6037a0bd
                  li           t1, 0x0
                  li           a1, 0x81f2cfdc
                  li           s10, 0x0
                  sub          t1, t1, s10
                  nop
                  addi         a1, ra, 1221
                  add          t0, s3, t0
                  addi         t0, ra, -19
                  addi         s0, s10, 1127
                  lui          ra, 909611
                  add          a1, t0, t5
                  nop
                  nop
                  add          t1, a1, a1
                  sub          s3, s0, t3
                  auipc        a1, 242000
                  addi         t0, t0, -1488
                  auipc        s3, 870529
                  nop
                  add          a1, t3, t5
                  nop
                  nop
                  addi         t6, t0, -1275
                  addi         a1, t1, -1058
                  addi         t1, a1, 1858
                  sub          t3, a1, t0
                  lui          ra, 598274 #end riscv_int_numeric_corner_stream_2
                  addi         s0, t2, -357
                  add          a7, s0, s6
                  srl          s6, t3, a3
                  srai         s11, ra, 25
                  sra          t5, a7, t6
                  sltiu        s5, s8, 63
                  slt          gp, t1, tp
                  auipc        tp, 321561
                  or           t0, gp, t4
                  auipc        s11, 337370
                  auipc        s7, 525692
                  srai         tp, t6, 23
                  or           s11, s9, ra
                  add          a3, s0, a4
                  addi         t6, t0, 1817
                  sltu         a7, a5, sp
                  lui          t5, 719511
                  addi         t6, ra, 199
                  lui          s0, 1022004
                  srli         s1, s10, 18
                  sltiu        tp, tp, -1041
                  xor          s11, t2, t1
                  ori          a6, s8, 1191
                  srai         tp, s9, 11
                  add          t3, s0, t3
                  sub          t0, t1, t5
                  and          s0, t4, s11
                  slli         s7, t2, 6
                  srl          s2, s10, sp
                  sll          s11, s11, a1
                  srl          t3, ra, a7
                  srli         t5, t3, 31
                  nop
                  nop
                  or           a6, s9, t3
                  ori          sp, a2, -434
                  slli         s8, s10, 13
                  and          s0, t2, t3
                  andi         a0, ra, 1800
                  sll          a2, t5, t2
                  nop
                  xori         tp, tp, 1675
                  xor          t3, t4, sp
                  addi         s10, t2, -191
                  sltu         a3, s10, s9
                  srl          s2, s11, a1
                  sltiu        s10, s10, 1636
                  addi         a0, s0, -1215
                  slli         s5, a6, 8
                  sub          s0, zero, s10
                  and          tp, s4, s1
                  xor          sp, s6, s8
                  and          gp, a1, a2
                  sub          s0, a0, a5
                  xor          s6, s4, a4
                  or           s4, a1, s10
                  sltu         a0, s11, s1
                  sra          t6, a5, t5
                  ori          s3, sp, -1976
                  sltu         a7, a6, t4
                  sub          t3, s0, s7
                  nop
                  slli         s11, t1, 30
                  xori         s2, a6, -605
                  srli         zero, a5, 26
                  sll          t0, s1, s7
                  xor          s6, s3, zero
                  ori          s1, gp, -375
                  andi         t0, s10, -1562
                  srl          zero, zero, t2
                  and          a1, a3, a4
                  ori          s4, s6, -343
                  srai         a6, a4, 23
                  sltiu        s4, s7, 1215
                  slti         t6, s7, 1971
                  slli         s11, t0, 12
                  sub          s0, gp, a0
                  nop
                  sub          s0, t4, s7
                  nop
                  sra          s8, t6, s8
                  srl          s8, tp, s3
                  sra          s11, s3, s5
                  srai         s3, t0, 5
                  xori         a6, t0, 781
                  lui          tp, 773942
                  srl          t1, s8, a3
                  sra          t3, gp, a0
                  sltu         s0, t3, a7
                  xor          a6, s10, a3
                  slli         s8, tp, 26
                  slli         s5, a6, 4
                  ori          t3, t2, -1891
                  and          a0, t6, t3
                  auipc        s3, 955432
                  xor          t0, s2, t3
                  srli         s8, sp, 6
                  or           t5, s9, gp
                  sra          s4, sp, ra
                  sltu         t0, a5, t2
                  slt          s3, t3, a7
                  slti         sp, t1, 218
                  andi         s0, s5, -1310
                  sra          tp, s7, a0
                  sltu         s4, a6, s2
                  auipc        t5, 223129
                  and          s0, ra, a0
                  slt          s10, tp, t0
                  or           a3, t5, t5
                  or           t3, t1, t1
                  auipc        s10, 936752
                  sltu         a6, s5, a7
                  sra          zero, t6, a5
                  sltiu        zero, a3, 1482
                  xor          s0, a1, s2
                  slt          t6, s5, a6
                  and          s8, t4, s7
                  xori         a7, ra, -1766
                  ori          sp, a6, -1707
                  sltiu        s6, t1, -738
                  srli         a2, s4, 0
                  srai         s3, s1, 20
                  xor          a0, s1, s1
                  sltu         s0, t6, gp
                  srli         a2, t0, 5
                  xori         a3, a0, 1090
                  or           a0, a5, ra
                  xori         a5, s2, -1601
                  sub          tp, s5, ra
                  nop
                  sra          s8, t4, s10
                  sll          s4, ra, s11
                  xor          sp, s5, a5
                  xori         s5, s3, 1601
                  addi         s11, s5, -1004
                  addi         s11, s0, -942
                  sub          sp, t5, s11
                  andi         t6, a1, -221
                  sra          s11, a1, s1
                  srai         s7, t2, 5
                  addi         a0, t6, 1557
                  sra          s11, t3, t0
                  addi         t3, a6, 1081
                  andi         s7, a5, 1236
                  andi         t1, s3, 529
                  sub          a2, t4, s10
                  sll          s11, tp, a1
                  srli         a1, t1, 4
                  slti         s6, s2, 189
                  andi         a3, s0, 92
                  sub          a6, s1, a4
                  srli         s0, s2, 14
                  slli         t3, s0, 13
                  add          a7, t5, s0
                  xori         s2, sp, -1653
                  and          s4, a0, tp
                  sra          s8, s0, t0
                  slli         sp, s4, 2
                  sra          s10, a2, t4
                  and          s0, s0, a2
                  srai         s0, a0, 23
                  ori          a7, t4, 759
                  sra          s0, t6, a0
                  sll          a1, s4, s10
                  sra          s8, t6, s8
                  srai         a3, gp, 20
                  auipc        s3, 40979
                  auipc        s2, 294489
                  slti         zero, s4, -1433
                  auipc        s1, 1027946
                  sub          a3, s3, s3
                  slt          a2, a6, s9
                  xori         s9, s10, 1756
                  srl          a0, a6, s6
                  addi         t1, a6, 1771
                  or           a7, t5, t6
                  srli         a7, t1, 29
                  sll          a3, s4, t6
                  addi         s1, s10, -1575
                  xori         t5, gp, 686
                  addi         s6, t6, 1353
                  srl          s6, tp, a0
                  addi         a7, s8, -238
                  add          s4, a0, t1
                  lui          ra, 288764
                  xori         a7, s5, 1104
                  sltiu        s5, s4, -848
                  slli         gp, a2, 20
                  ori          a6, t2, -1419
                  xori         s3, a4, -1858
                  sub          ra, t0, s3
                  sll          t0, t5, s4
                  or           s2, a2, tp
                  nop
                  sra          a6, s1, s4
                  sub          s7, s8, a5
                  srli         s6, a0, 4
                  srai         s7, t3, 6
                  and          t5, s11, s11
                  srli         s1, gp, 21
                  xori         t6, a6, -550
                  srl          sp, t6, s5
                  sll          t3, s2, s7
                  srli         a0, t0, 20
                  and          t0, s10, s11
                  nop
                  srl          a7, a7, t6
                  srai         s7, s7, 24
                  xori         gp, s7, 99
                  srli         s6, s1, 13
                  srli         t3, ra, 30
                  slli         t3, a2, 23
                  slt          a3, a3, tp
                  auipc        t3, 44255
                  and          t0, ra, ra
                  sll          s8, a2, t4
                  and          s3, s3, s11
                  andi         s9, a2, 896
                  lui          t3, 77155
                  lui          s10, 168584
                  sub          s10, gp, zero
                  srai         a6, ra, 25
                  sll          t3, s9, a0
                  slti         s10, t3, -1638
                  srli         a3, a3, 9
                  add          s3, t2, t6
                  andi         a7, a6, -1568
                  or           s10, ra, gp
                  srai         s10, gp, 9
                  slli         s9, gp, 19
                  sll          t6, a1, a1
                  andi         t3, t5, 1026
                  sra          s7, s2, ra
                  add          a2, a5, a5
                  add          t3, s10, s7
                  xor          a6, ra, a3
                  addi         s5, a6, 1941
                  addi         s10, zero, -560
                  add          t5, a7, t4
                  and          t5, s8, a5
                  xor          t6, t0, a4
                  sub          s8, s2, gp
                  auipc        ra, 949442
                  sra          a0, s1, t1
                  sub          sp, a3, t4
                  srai         zero, s5, 19
                  auipc        s1, 245702
                  srai         a0, t4, 18
                  xor          t5, t2, a4
                  ori          gp, a1, 1169
                  ori          sp, s2, -5
                  lui          a1, 783895
                  nop
                  ori          a2, a2, -956
                  sltiu        s10, s0, 297
                  xori         t0, tp, 210
                  and          s7, s4, s0
                  lui          s10, 133092
                  srl          a1, s6, s3
                  nop
                  sltu         a3, t4, a3
                  slti         s0, s6, 590
                  andi         sp, s5, -245
                  addi         s1, s10, 1244
                  xor          s0, s9, s2
                  slti         t6, sp, 855
                  ori          s1, s7, -596
                  andi         a1, s3, -259
                  xori         s8, a5, 1076
                  lui          s3, 608987
                  auipc        t6, 488901
                  addi         s4, s2, -1622
                  lui          s8, 507935
                  xori         s1, a6, -622
                  sub          a6, t4, s0
                  slti         s4, s2, -1703
                  sub          gp, t3, ra
                  xor          s7, ra, a2
                  sltiu        a3, zero, 1852
                  slli         ra, a5, 4
                  nop
                  lui          a3, 96572
                  auipc        s8, 575182
                  auipc        s11, 1038845
                  xor          a0, a2, a6
                  sltiu        a1, a0, 810
                  nop
                  srli         a3, t3, 20
                  sltu         t6, gp, a4
                  slli         s1, a3, 18
                  srai         t1, a0, 5
                  sltu         gp, a3, tp
                  and          gp, t0, t1
                  auipc        s10, 782407
                  xor          a6, s11, s6
                  slti         a5, t4, 186
                  srli         s9, t2, 9
                  lui          a7, 77797
                  sub          s3, t0, a5
                  slt          a5, a6, t4
                  ori          ra, s11, -1257
                  slli         a6, ra, 19
                  srai         t1, s11, 8
                  nop
                  srai         s7, t3, 2
                  ori          tp, a2, -1525
                  sltu         gp, a2, tp
                  lui          s7, 560025
                  xori         s9, a5, 1740
                  andi         ra, s0, 1487
                  add          s6, a4, a0
                  sltiu        s1, s8, -1655
                  sll          sp, a2, a3
                  or           a7, t5, a1
                  sltiu        s10, gp, 111
                  and          sp, s5, s4
                  srai         zero, t3, 25
                  xor          t6, sp, zero
                  slti         t5, s6, -1428
                  slti         gp, s11, 1547
                  addi         t5, a6, 1905
                  add          tp, t3, s1
                  sra          tp, s0, s5
                  and          s8, s1, a4
                  nop
                  nop
                  addi         a5, t3, 1291
                  nop
                  and          s5, a3, s10
                  sra          s6, ra, zero
                  slti         tp, a0, -1815
                  sltu         s4, tp, a0
                  and          s10, t4, a2
                  nop
                  nop
                  sra          t3, t3, t4
                  xori         a1, a2, 1662
                  ori          zero, a4, -365
                  and          a2, s11, t0
                  sll          a3, s10, a7
                  ori          s8, t0, -376
                  andi         gp, a7, 591
                  andi         s2, s8, 1630
                  add          t6, a7, s11
                  srai         a5, ra, 19
                  ori          s3, s10, 297
                  or           s8, t2, t5
                  lui          t3, 746902
                  and          t5, s11, s1
                  or           a1, t1, a3
                  slt          s2, t2, a4
                  sra          a5, a6, s8
                  xori         a5, s5, -1471
                  sub          a5, a7, a7
                  sub          s0, s10, t6
                  sll          s8, s0, zero
                  sll          t3, a1, sp
                  nop
                  xor          s5, t4, t4
                  sltu         a3, a4, s0
                  srai         a6, t2, 21
                  nop
                  sra          t1, s4, ra
                  and          gp, zero, s9
                  add          s1, t6, s1
                  sll          ra, t1, ra
                  slti         t3, t5, 1314
                  slt          s5, gp, gp
                  or           s6, s0, s7
                  andi         gp, t4, 396
                  slti         s3, gp, -1132
                  auipc        s2, 315051
                  xor          t3, tp, a2
                  slt          s2, a4, s9
                  sub          s9, s5, zero
                  slli         s8, a2, 13
                  and          s7, ra, s7
                  sltiu        t3, a5, 149
                  slli         a7, t1, 14
                  slli         s10, a2, 30
                  sub          s11, gp, a7
                  sll          s4, s10, ra
                  sltu         s5, a5, a6
                  slt          s2, sp, a4
                  srli         tp, a7, 19
                  nop
                  sll          s5, s6, t5
                  srli         s0, a7, 28
                  slti         sp, t0, 1828
                  xor          a1, s10, a2
                  or           s0, s8, a0
                  sub          a5, t5, s3
                  sra          s6, t2, zero
                  nop
                  srli         zero, s11, 24
                  or           ra, s5, s4
                  xori         s9, a1, -272
                  srli         a0, tp, 12
                  auipc        s3, 183795
                  sll          gp, a2, t2
                  and          s4, zero, a7
                  add          a6, s11, a7
                  sltu         a0, s11, s6
                  sltu         a7, s8, s1
                  sra          s3, a5, a2
                  xori         s3, s2, -1014
                  sltiu        s4, sp, -603
                  ori          s9, s9, -2002
                  or           tp, a1, s5
                  nop
                  or           s5, a2, s4
                  addi         s7, a3, 1327
                  sra          s2, a1, a7
                  nop
                  andi         s6, s5, -1504
                  srai         t1, t2, 11
                  and          ra, t0, a3
                  lui          s8, 605551
                  sltu         s9, a3, a7
                  ori          s0, t1, -1411
                  nop
                  srl          a1, a0, s10
                  xor          t3, s8, t6
                  srl          t3, s6, t0
                  nop
                  srai         s6, s10, 7
                  or           tp, s0, a4
                  slli         a5, t5, 9
                  sub          s0, s11, t0
                  and          s0, s10, s2
                  sll          s0, s4, a5
                  or           a3, t0, a4
                  add          a5, t0, tp
                  add          a0, s11, a7
                  srl          a5, s1, t3
                  andi         t5, s1, -1278
                  addi         t1, ra, -1491
                  sra          s2, s6, a5
                  sub          t6, a5, s10
                  addi         s2, t1, 1393
                  sub          s7, s4, ra
                  slti         t0, s9, 262
                  nop
                  sltiu        t5, s5, 660
                  slli         a3, s4, 19
                  or           s2, ra, t3
                  or           s8, s3, s3
                  slti         s2, s4, 839
                  and          s3, s5, t5
                  xori         s2, t5, 1241
                  and          t3, a0, s4
                  sra          a2, t5, s5
                  lui          sp, 321741
                  sub          a2, s2, zero
                  slti         s3, s1, -1148
                  xor          s9, a1, s0
                  slti         t6, s8, 874
                  andi         a0, gp, -1064
                  or           tp, s6, s0
                  and          sp, t4, s4
                  srai         s4, t5, 14
                  andi         t6, a7, 1593
                  srl          t1, a3, s2
                  srai         a1, t4, 9
                  slli         s2, a7, 6
                  lui          a3, 781415
                  sltu         t3, a4, t1
                  srai         s10, s6, 11
                  ori          a6, t4, 1473
                  auipc        s6, 85203
                  srai         s6, s3, 11
                  or           s7, s8, t0
                  addi         s3, a2, -1254
                  srli         tp, a6, 2
                  or           t1, t2, s9
                  lui          s7, 269838
                  addi         t5, gp, -245
                  slti         s5, s10, -1783
                  add          s3, s6, s8
                  ori          s3, s1, -1867
                  xori         s5, t6, 1181
                  andi         tp, a2, 1260
                  slti         s10, zero, 1660
                  xor          sp, a0, a2
                  sra          s3, s8, t6
                  addi         a2, tp, -1422
                  auipc        gp, 956418
                  sltu         gp, t1, s2
                  slt          s6, s0, s6
                  sub          a1, tp, t0
                  and          s6, t2, t0
                  lui          zero, 719980
                  sltu         s5, sp, tp
                  sltu         s7, s3, a1
                  xor          s11, s5, tp
                  or           s8, a2, ra
                  slli         a7, s5, 22
                  slli         t0, a7, 30
                  srl          t5, gp, a1
                  auipc        a1, 1021293
                  srl          s5, s1, s5
                  slti         zero, a4, -820
                  xori         zero, t0, 1185
                  sltiu        t0, s5, -584
                  srl          s8, s4, s6
                  slli         s11, gp, 14
                  andi         s1, s2, -1991
                  auipc        s2, 301371
                  srli         ra, s1, 25
                  xori         tp, sp, 1157
                  xor          s11, s2, gp
                  sltiu        s9, zero, -400
                  lui          s4, 923297
                  lui          sp, 808213
                  auipc        zero, 887427
                  srl          s10, t5, a5
                  sll          s2, a7, t5
                  and          a2, a1, t6
                  xori         a6, a5, 978
                  lui          s0, 236019
                  addi         a6, s3, 429
                  xor          t6, a2, a5
                  sub          a2, s5, s8
                  sltiu        a2, s9, -353
                  slli         a6, a5, 11
                  andi         a7, ra, 81
                  sltu         a5, s11, s8
                  xor          a1, a5, s10
                  and          a2, s8, gp
                  sra          s10, t5, t6
                  add          a5, a6, s3
                  srl          s11, t4, a5
                  lui          t5, 306207
                  sltu         gp, t0, gp
                  sll          a3, t2, s4
                  srli         zero, t5, 19
                  sub          t0, a4, t4
                  auipc        a5, 159171
                  addi         s3, s10, 1935
                  slti         t3, s1, -1402
                  slti         a0, ra, 1750
                  sub          s5, a6, s9
                  sltiu        s8, t3, 1801
                  sub          gp, a4, s11
                  xori         a6, t0, 1226
                  sltiu        ra, s2, -1835
                  ori          s1, a4, -30
                  srl          s0, t0, tp
                  sub          t1, sp, s9
                  ori          s5, t6, 1570
                  nop
                  add          s0, ra, a2
                  lui          s2, 161582
                  sll          s5, s9, s3
                  slti         t0, t6, -405
                  slti         t5, t2, -1795
                  lui          ra, 620401
                  andi         s8, ra, 566
                  slli         s6, a0, 9
                  sra          a7, a0, s1
                  auipc        t5, 655698
                  slt          s7, sp, t0
                  nop
                  sll          a0, gp, gp
                  lui          a7, 546481
                  slli         s2, s10, 23
                  andi         s4, s4, 1028
                  ori          s11, s9, 599
                  slt          s2, t1, s0
                  ori          t6, s1, -1633
                  srl          s6, a4, t6
                  xori         a0, s9, -1805
                  sub          a0, gp, s7
                  slti         a3, t5, -1711
                  and          s9, a0, s4
                  ori          a1, t0, 729
                  auipc        a3, 411769
                  xor          s8, s9, t0
                  srl          s2, sp, t4
                  srl          s2, a0, s6
                  or           s0, a1, a6
                  sltu         s1, s10, s4
                  slt          a1, s8, s1
                  lui          t0, 925264
                  sltiu        s4, t1, 23
                  nop
                  sra          t5, zero, t4
                  or           t5, s8, s8
                  slli         s1, a7, 28
                  sub          t5, s2, ra
                  sub          s10, t5, t2
                  nop
                  and          t0, s10, a1
                  srl          s8, t1, t1
                  sll          zero, t4, s7
                  add          s0, t1, ra
                  slti         s6, gp, 978
                  andi         a0, a3, 391
                  sltiu        s7, s1, 1423
                  xor          t6, a3, s6
                  sra          tp, a4, ra
                  and          a1, s5, s4
                  srl          a6, a1, s7
                  sltu         s1, a0, t5
                  slt          s7, s6, tp
                  addi         s5, s0, 1239
                  and          a1, s8, s1
                  addi         a3, s5, 428
                  auipc        a7, 218771
                  add          s3, t0, s6
                  or           s1, zero, s5
                  sll          a7, t4, s5
                  srl          t3, t3, s9
                  nop
                  srai         s10, t0, 22
                  srai         a1, s2, 21
                  xori         t0, s8, 643
                  sltiu        t6, s6, 522
                  slti         a3, t6, 1012
                  sltiu        s1, t6, -994
                  ori          t0, s10, -1718
                  xor          s7, s7, sp
                  or           sp, s11, ra
                  auipc        gp, 938415
                  srl          s6, a1, t1
                  xori         a0, s8, 574
                  auipc        gp, 275433
                  srl          a6, t1, t0
                  sra          s4, a3, gp
                  slli         a1, s1, 11
                  sltiu        s8, s9, -1337
                  andi         a2, s2, 256
                  auipc        s11, 134551
                  sltu         a1, t0, t1
                  ori          t6, s4, 1392
                  lui          t0, 803801
                  addi         t3, t0, -1254
                  add          s9, gp, a2
                  sltu         a5, a5, s6
                  xori         sp, a4, -278
                  sltiu        a6, t1, -329
                  xori         gp, a7, -139
                  srl          zero, t5, t6
                  xori         s6, a1, 513
                  nop
                  sltiu        a6, s2, 565
                  sltiu        t3, a2, -1940
                  nop
                  sltu         s5, s5, a1
                  ori          s11, s4, -705
                  sub          a7, a3, t4
                  xori         t1, t1, 1683
                  srli         a7, s9, 12
                  xori         t3, s7, 1645
                  slt          sp, a4, a5
                  slli         tp, s6, 15
                  nop
                  slli         s1, t1, 13
                  sltiu        s9, s2, -1535
                  xori         zero, zero, 421
                  and          a7, a4, s5
                  andi         a7, a2, 1745
                  xor          s11, a1, a4
                  or           sp, s2, a2
                  sll          gp, t0, a7
                  sltiu        s2, ra, -1181
                  srli         t0, zero, 31
                  sub          t1, s10, t4
                  addi         s1, tp, 701
                  addi         zero, t0, 1111
                  slt          s5, sp, a4
                  sub          sp, s1, s6
                  sub          t0, s4, s3
                  ori          t1, a2, -1050
                  xori         s5, t4, 1086
                  slt          s9, sp, a1
                  lui          s5, 964830
                  lui          sp, 239139
                  xor          tp, t2, s10
                  or           s11, s3, a2
                  srli         a2, a6, 6
                  slti         s5, s9, 1106
                  slti         s5, tp, 676
                  or           s2, ra, gp
                  sltiu        t3, s11, 857
                  sltu         t6, s6, s5
                  slti         a5, gp, 1800
                  srai         s8, t0, 11
                  slt          s7, sp, s0
                  sltu         s9, a6, t1
                  srai         s11, gp, 22
                  sll          t0, sp, s6
                  and          s11, s0, ra
                  lui          a3, 747729
                  sltu         s0, s2, a4
                  sub          s1, gp, s3
                  ori          a1, s6, 1322
                  nop
                  add          t6, s2, a5
                  sub          tp, a4, t4
                  auipc        s8, 566630
                  lui          s9, 795774
                  or           t0, t3, t5
                  addi         a7, a1, 765
                  addi         s5, t1, 468
                  xori         s3, s8, 813
                  xor          s0, t1, t4
                  add          a1, t3, a4
                  xor          ra, a6, s1
                  srai         s3, t3, 15
                  sltu         s5, a1, a1
                  xor          sp, s0, a2
                  sll          s1, t2, t0
                  slt          s1, t1, zero
                  slt          s10, t0, a1
                  sra          s1, a3, ra
                  srli         t0, sp, 30
                  nop
                  srli         s4, gp, 1
                  lui          s3, 744214
                  xor          ra, t4, s4
                  nop
                  lui          tp, 951092
                  or           s10, a7, s11
                  addi         zero, a7, 635
                  andi         a5, tp, 1667
                  add          t6, s7, tp
                  xori         a3, s0, -111
                  addi         t0, tp, 496
                  andi         gp, s4, -191
                  ori          sp, tp, 337
                  sub          s0, s11, s6
                  sll          t3, a7, a3
                  srli         s11, t5, 13
                  addi         a0, a2, -1636
                  srl          a5, tp, a6
                  xori         s5, a4, 1504
                  slt          s10, s1, a3
                  xori         s6, s8, 586
                  sltu         t0, s0, s7
                  sltiu        sp, s0, 2018
                  auipc        s3, 555567
                  sltiu        a1, gp, -607
                  sll          t5, s7, a6
                  and          gp, s4, gp
                  sll          t5, a3, s0
                  lui          s0, 764523
                  sub          t5, zero, gp
                  and          s0, a3, t1
                  srai         s0, s8, 19
                  slt          a1, s0, t2
                  slt          a7, a5, zero
                  slti         t3, s10, 1590
                  nop
                  srli         a2, s3, 27
                  addi         s2, zero, 711
                  lui          s4, 602458
                  srli         s8, gp, 16
                  srl          tp, s3, s8
                  nop
                  sll          s11, sp, a1
                  slli         s7, s11, 25
                  nop
                  slti         s6, s5, 1476
                  auipc        s1, 230449
                  lui          t6, 243905
                  and          s8, sp, a0
                  andi         s3, tp, -1328
                  lui          s8, 763096
                  andi         a1, gp, 1766
                  xor          s9, a6, t4
                  slt          a6, s10, s8
                  sra          s9, s0, s11
                  slti         a2, s3, 705
                  sltiu        sp, s9, -545
                  xor          t1, s8, a3
                  and          s2, gp, s9
                  srai         a0, s9, 22
                  srl          s4, s3, sp
                  xori         t6, s6, 1430
                  or           t5, a1, a2
                  sltu         a2, a2, a6
                  add          s0, a5, a4
                  and          t6, s0, gp
                  slt          zero, a6, s3
                  sra          s6, s1, s5
                  addi         s11, s0, -160
                  andi         s6, a2, 868
                  slt          zero, s11, s9
                  slli         s2, s3, 24
                  sltu         s0, gp, gp
                  or           s9, a2, s0
                  srai         t0, a6, 25
                  addi         a7, s10, -641
                  ori          s3, t4, 326
                  andi         t6, s9, -1970
                  srai         sp, gp, 9
                  ori          a0, s8, 797
                  add          s2, s0, t1
                  sltu         s6, t5, t4
                  sra          zero, gp, s1
                  srai         s4, tp, 12
                  xori         s11, a2, -336
                  sra          s8, s2, a5
                  addi         a5, s6, 993
                  slli         s1, a7, 13
                  add          s7, a5, gp
                  andi         t3, t6, -33
                  sub          t0, a0, s9
                  xor          s2, s3, s0
                  sra          s4, t2, s1
                  slt          gp, sp, tp
                  xori         a2, t5, 21
                  sltu         s5, s4, a2
                  xor          s10, a3, gp
                  andi         a5, s6, 992
                  sra          a7, a2, tp
                  ori          gp, s8, -118
                  nop
                  ori          tp, t2, 687
                  nop
                  andi         a5, s4, 1476
                  sub          s11, a7, tp
                  sll          t5, s7, s6
                  nop
                  slt          a5, a3, s11
                  sltiu        s8, s8, 1475
                  xor          s4, zero, t6
                  srai         t1, t2, 4
                  add          t1, t3, sp
                  and          s5, s0, s10
                  sub          ra, s0, s7
                  slt          a5, t1, a4
                  add          s4, t6, a0
                  slli         t5, a6, 10
                  slt          s1, a1, s3
                  sltu         s0, zero, s2
                  lui          a5, 866519
                  ori          a1, tp, -811
                  sra          ra, s10, s5
                  srli         s9, a2, 10
                  srai         a0, sp, 13
                  sltiu        a0, s10, 340
                  sll          s4, sp, a3
                  addi         ra, s10, 516
                  ori          t6, a2, -1836
                  or           s4, a2, a5
                  andi         s0, t5, 1164
                  sll          t5, s7, s2
                  srai         tp, a5, 3
                  slli         a1, s11, 1
                  slti         s5, s9, 1723
                  srl          gp, s6, s2
                  add          s7, s0, t3
                  srli         s9, s7, 24
                  srl          gp, ra, s8
                  nop
                  addi         s11, t5, -1020
                  xor          zero, tp, zero
                  nop
                  xor          ra, a0, s2
                  sra          s10, a5, s1
                  sra          s3, s8, s0
                  add          t5, a4, a3
                  sll          t1, gp, s1
                  or           t6, s2, a1
                  slti         s4, ra, 1737
                  xori         t0, a5, 128
                  andi         s1, s1, -1868
                  srai         s9, t3, 20
                  srli         s10, t4, 29
                  or           a7, s6, a5
                  slli         tp, s7, 12
                  sltu         t1, s8, s10
                  slti         a6, ra, 467
                  xor          a3, t4, s5
                  srai         a0, a7, 15
                  slti         s2, a5, -589
                  sll          s8, gp, t0
                  slli         a6, s8, 13
                  xori         t6, a0, 99
                  andi         t6, s9, -1708
                  slt          t1, s11, a4
                  addi         a7, a4, 37
                  sub          t3, s3, gp
                  sll          s9, t4, a7
                  andi         s0, s0, -1272
                  xor          s7, s6, t0
                  add          a2, tp, gp
                  and          t3, t5, a4
                  and          s1, t3, s8
                  sll          gp, s2, tp
                  and          t3, t0, s3
                  and          s11, sp, tp
                  and          t5, a2, s10
                  lui          a1, 311999
                  or           s7, s9, a6
                  srli         s1, tp, 18
                  xor          a5, s8, s8
                  sltiu        t3, a5, -269
                  sub          s3, t2, a5
                  srai         s8, s7, 27
                  sltiu        gp, t1, -1219
                  xor          a0, s1, t5
                  slli         a7, gp, 13
                  slli         s7, s7, 27
                  nop
                  xori         t1, a4, 1000
                  sll          s11, s8, t5
                  srl          tp, t5, s5
                  sub          s3, a0, s6
                  ori          s11, t5, -214
                  or           s2, a3, a4
                  nop
                  addi         s11, t2, -114
                  xori         s4, t0, 1645
                  sltiu        ra, a1, -638
                  and          a7, a0, s3
                  srl          a0, sp, t6
                  sra          t3, s0, t4
                  srli         ra, t6, 25
                  and          s6, s1, a0
                  sltu         sp, t2, zero
                  andi         s5, t2, -580
                  xori         t6, a6, -1725
                  xor          t0, s10, sp
                  srli         ra, s1, 27
                  addi         ra, t3, 1507
                  slli         t1, t0, 4
                  slli         s3, a2, 25
                  srl          a2, a4, s10
                  add          sp, s0, a5
                  sltiu        s7, s10, -690
                  srli         s5, s2, 0
                  sra          t3, a6, s11
                  sltiu        a2, s9, -837
                  and          s0, s6, t0
                  xori         sp, tp, 1467
                  or           t6, s10, a3
                  add          s5, s0, t0
                  sll          sp, t6, t1
                  xor          sp, t5, ra
                  lui          a2, 306621
                  andi         a5, gp, -442
                  srl          tp, sp, t3
                  sub          t5, s7, a0
                  nop
                  sltiu        ra, t6, -1517
                  xor          s4, s8, t2
                  srai         s0, t2, 23
                  auipc        s3, 287282
                  or           t6, t3, ra
                  andi         s3, a0, -688
                  slt          a2, t3, sp
                  srli         a0, s2, 12
                  slti         a3, s0, -141
                  slt          s1, s7, sp
                  sltu         s3, t1, t3
                  xori         a6, a1, -928
                  auipc        sp, 198339
                  sltu         s11, t0, a1
                  or           sp, t0, a0
                  lui          a0, 694074
                  slti         s10, s7, -1473
                  sll          s2, s10, gp
                  sra          s5, sp, a5
                  sub          t3, a2, s6
                  xori         a7, s8, 827
                  slli         gp, sp, 9
                  srai         t1, a0, 19
                  sltu         t1, a7, s11
                  slti         zero, sp, -651
                  lui          a3, 842460
                  slt          s5, t3, a4
                  ori          t3, t0, 112
                  xori         s10, t5, 891
                  sub          s6, a1, a4
                  sll          s9, t4, s0
                  srl          s8, a7, a4
                  nop
                  slli         t6, t2, 23
                  xori         a7, tp, -161
                  srai         a5, a2, 6
                  add          s5, s3, s4
                  auipc        t3, 139874
                  srli         ra, t2, 17
                  srl          s5, s10, s10
                  sub          s0, s2, t5
                  slt          a1, t1, a2
                  andi         s6, t0, 1899
                  srli         s2, a1, 14
                  sra          a1, gp, s3
                  lui          a3, 624763
                  slli         gp, t2, 5
                  srli         s7, zero, 10
                  and          sp, a1, t5
                  lui          s4, 1020705
                  srl          t0, a2, a0
                  slti         s0, s2, 1886
                  srl          zero, s5, gp
                  slti         a5, t5, -1595
                  ori          a0, a2, 1256
                  slli         ra, s5, 12
                  sll          s5, a5, t1
                  sltiu        ra, a1, -393
                  add          s0, s4, t4
                  sltu         a1, s5, gp
                  srli         t6, s8, 11
                  sltiu        s8, t1, 217
                  addi         s6, t0, -1377
                  srl          zero, s5, sp
                  sll          s8, s9, zero
                  sra          a1, s6, sp
                  sll          s0, sp, s0
                  sub          s6, s10, s5
                  xor          s2, a7, s3
                  sra          s7, a2, zero
                  sra          a5, t1, s3
                  sltiu        t6, t6, 956
                  xori         t3, t1, -1590
                  srl          a5, s8, t2
                  sltiu        s5, s1, -893
                  nop
                  xor          s1, t0, s8
                  ori          tp, s10, 846
                  slli         ra, s4, 1
                  sll          s11, s1, a4
                  lui          s3, 591344
                  addi         sp, t5, 1870
                  or           gp, t0, s2
                  nop
                  srli         a0, tp, 22
                  auipc        gp, 825022
                  or           t5, s7, s9
                  sra          ra, a1, ra
                  lui          s10, 1013071
                  sll          s1, s2, s9
                  srl          a3, s9, a0
                  and          t5, s2, t0
                  srl          s8, s11, a0
                  sll          gp, t2, tp
                  srli         s2, s8, 3
                  auipc        a0, 51514
                  addi         s3, t3, 26
                  sltiu        gp, s2, -649
                  srai         a3, s5, 18
                  srai         a2, a7, 10
                  addi         gp, s11, 258
                  ori          s10, a2, -289
                  sltu         a1, s1, s10
                  nop
                  slti         s8, s2, 1342
                  nop
                  nop
                  add          a5, s1, a3
                  sra          s5, s6, zero
                  srl          gp, s2, tp
                  nop
                  slti         a5, t0, -36
                  and          t1, a3, s1
                  slt          s1, ra, zero
                  slti         tp, s6, 1529
                  addi         s0, s1, 480
                  srai         s9, a3, 4
                  xori         t5, t2, -1230
                  srli         t3, sp, 27
                  srli         t5, t2, 13
                  nop
                  slli         s1, a0, 16
                  auipc        s2, 436984
                  ori          t6, sp, 994
                  xori         s10, zero, 1972
                  slli         s9, t4, 27
                  slli         s4, s9, 5
                  andi         sp, s6, 1676
                  slli         a6, a1, 19
                  slti         a5, t5, -1249
                  xori         a2, s2, 1614
                  auipc        sp, 680897
                  andi         s2, s7, 126
                  sub          a1, s9, a6
                  srai         a0, a4, 12
                  slti         s9, t6, -912
                  nop
                  slli         s9, gp, 30
                  and          s6, zero, s6
                  addi         s2, t1, -1554
                  auipc        s0, 599753
                  sll          a7, a7, s9
                  xori         s6, s10, -1539
                  addi         zero, s8, -1697
                  slt          a5, a4, t5
                  lui          a7, 363368
                  slt          t3, a0, t0
                  ori          s6, ra, -1577
                  andi         t6, s3, 1926
                  sra          s3, t5, t1
                  and          gp, s0, a0
                  addi         sp, s2, 164
                  xor          tp, s7, s9
                  and          s11, s4, t2
                  sub          zero, a4, a6
                  srli         s2, a6, 11
                  lui          a6, 691081
                  lui          t5, 730472
                  srl          s10, a7, s4
                  slt          gp, sp, t0
                  srai         s10, s7, 5
                  sra          gp, a0, s9
                  add          s11, s9, s1
                  sltu         a6, t6, s8
                  add          s2, sp, t0
                  and          s11, s10, s10
                  srl          ra, a6, s10
                  andi         t5, sp, -1713
                  andi         tp, t1, 1429
                  sll          t5, s5, zero
                  or           s6, s9, t6
                  ori          s0, t6, -1918
                  slt          s10, s0, tp
                  nop
                  sltiu        ra, t1, -1065
                  and          s11, a5, t3
                  nop
                  slt          ra, a5, s0
                  srli         t1, a0, 7
                  xori         a6, s7, -375
                  sltiu        a0, t3, 1969
                  auipc        a3, 64638
                  auipc        a6, 523731
                  add          s11, a1, s9
                  sub          t6, s2, s7
                  nop
                  add          s11, s3, s2
                  xori         s6, ra, 352
                  sra          t5, t5, t4
                  add          a6, s5, a7
                  slti         s9, s6, 1913
                  srli         s5, s11, 31
                  lui          s4, 1032917
                  srai         s2, a6, 16
                  sub          s10, t2, s7
                  andi         a0, s1, -239
                  sltiu        s11, s11, 1564
                  sll          t5, t5, a2
                  add          s0, a7, t2
                  and          s3, s11, sp
                  lui          sp, 437220
                  ori          a2, s10, 93
                  sltu         a7, s1, zero
                  sll          s4, s9, t0
                  or           s10, a6, t1
                  slti         s8, t4, 212
                  srl          s4, t1, t0
                  sltu         s11, a0, s7
                  andi         s1, s7, -1457
                  nop
                  slt          t3, t4, t5
                  lui          gp, 807379
                  srai         s2, s4, 9
                  add          s8, gp, s6
                  sub          s5, s7, s5
                  and          gp, a7, gp
                  sltu         s6, gp, s3
                  auipc        s6, 809859
                  slli         a5, t6, 7
                  xor          t0, s3, s2
                  slli         s4, a1, 26
                  srai         s4, s6, 10
                  srli         s1, a5, 0
                  auipc        gp, 939402
                  slli         a6, s3, 13
                  add          t0, s10, s4
                  andi         sp, s6, -140
                  slli         s10, t2, 23
                  add          sp, t2, t3
                  nop
                  ori          a1, t5, -11
                  addi         ra, t0, 448
                  add          s2, t0, a2
                  add          s11, t6, a2
                  nop
                  addi         t6, s7, -442
                  slti         a0, t5, 1697
                  slli         a1, gp, 26
                  srai         s3, s3, 4
                  sll          t6, t6, s11
                  nop
                  sll          sp, zero, t4
                  addi         s8, a1, -1807
                  andi         a1, t6, 1631
                  addi         s7, s3, 1112
                  sltu         s10, s0, a2
                  addi         s8, a0, 808
                  ori          s5, a1, -1931
                  slti         s1, gp, 1878
                  nop
                  sll          s4, a3, s4
                  ori          s11, t4, 1787
                  slli         a7, tp, 6
                  slli         t3, a7, 9
                  lui          a5, 110422
                  slli         s1, s11, 21
                  sltu         s6, a6, a0
                  srl          s9, sp, a4
                  xori         a7, s9, -189
                  sltiu        a2, a3, 1013
                  slti         t5, s3, 1214
                  sll          t6, s7, t3
                  addi         a1, t4, 854
                  and          t0, s9, a7
                  ori          s5, t0, 18
                  sra          s6, a4, a7
                  ori          s6, s0, 366
                  ori          sp, sp, -2037
                  srai         s11, s5, 9
                  sll          a5, sp, ra
                  sltu         t1, ra, s2
                  srli         s7, s6, 21
                  srli         gp, s9, 17
                  lui          s4, 257847
                  add          t0, a6, t4
                  slti         s5, t4, 59
                  srl          ra, a2, s6
                  ori          s5, tp, -913
                  slli         a6, s3, 10
                  sll          a6, t2, a7
                  srl          a2, gp, s4
                  ori          t1, s8, 1030
                  srl          t5, s4, s6
                  sra          t6, a5, s7
                  sub          s0, a6, a5
                  srai         s5, t3, 1
                  srl          zero, s3, s9
                  andi         s2, t5, 600
                  srai         s11, zero, 15
                  ori          gp, s9, -68
                  sltu         a2, s0, t6
                  slti         s4, s6, -713
                  ori          zero, s7, 1758
                  sltiu        s3, s3, -1965
                  add          a0, s9, s10
                  sltiu        s0, ra, -290
                  and          t6, sp, s0
                  andi         a1, t3, -1779
                  andi         s2, t0, 317
                  slli         a6, a4, 25
                  lui          s4, 685204
                  andi         a3, a0, -2030
                  srli         a5, s2, 20
                  or           s2, a3, s11
                  slti         s7, s4, 877
                  addi         s9, a5, -911
                  sub          s6, t4, t2
                  nop
                  or           gp, s5, t2
                  addi         s10, s2, -740
                  slti         s5, a3, -929
                  auipc        a1, 942263
                  sra          s5, sp, sp
                  sub          s3, t3, a4
                  andi         s11, a0, -1176
                  sltiu        s11, s6, -1218
                  addi         s6, t6, 1018
                  addi         zero, t6, 1185
                  addi         s0, tp, 1430
                  sltiu        t0, s0, -1667
                  sub          t6, a6, gp
                  auipc        tp, 750887
                  andi         s9, s11, -1701
                  sll          t5, a2, gp
                  slti         s7, s4, 293
                  sll          s4, sp, zero
                  or           sp, t6, t5
                  lui          t5, 87138
                  srl          tp, t6, a2
                  sll          zero, a0, s8
                  or           s9, s9, a3
                  sll          ra, s7, t0
                  lui          s10, 310058
                  sll          a7, s2, a7
                  xori         t6, a6, 947
                  sra          a7, t1, a4
                  xor          s5, t6, s8
                  sltu         s9, t6, t5
                  addi         a6, a3, 394
                  nop
                  add          s2, t1, a7
                  add          a1, s4, t1
                  or           s9, s1, s0
                  sub          a7, s1, t6
                  ori          a6, ra, 1935
                  lui          a7, 836423
                  srli         s9, t1, 3
                  srli         a2, a7, 7
                  ori          t3, t6, -933
                  addi         t0, a1, -376
                  slti         s0, s10, 915
                  addi         s2, a6, 1664
                  auipc        t3, 569437
                  srli         s9, a3, 21
                  sltiu        s9, s11, -1426
                  xori         tp, gp, -619
                  and          a1, gp, s10
                  lui          s6, 761915
                  sltiu        tp, s8, 270
                  xori         t6, s11, 979
                  ori          s7, a1, 1175
                  add          a2, a2, t6
                  srl          t5, s2, t3
                  sra          s11, s3, t5
                  xori         a5, t1, 973
                  srai         a7, a6, 13
                  andi         a3, s4, 1971
                  slli         a1, s9, 12
                  srl          a5, gp, sp
                  sll          s3, a6, s11
                  srli         tp, a7, 5
                  ori          t0, a3, -143
                  xor          s8, s7, sp
                  or           s3, s9, s8
                  srli         s5, s10, 27
                  addi         sp, t0, 2000
                  li           t6, 0xcc206371 #start riscv_int_numeric_corner_stream_5
                  li           a1, 0x80000000
                  li           a7, 0xffffffff
                  li           s6, 0x0
                  li           s0, 0xef2f2f5b
                  li           tp, 0x0
                  li           a0, 0x80000000
                  li           a5, 0x80000000
                  li           s3, 0xffffffff
                  li           s8, 0x0
                  sub          s8, tp, s8
                  addi         s0, s6, 853
                  add          a1, s8, s6
                  nop
                  sub          s8, a5, s8
                  nop
                  auipc        t6, 785659
                  addi         s6, a0, 878
                  add          tp, s0, a5
                  nop
                  lui          s8, 978954
                  auipc        a7, 397929
                  sub          a7, a5, a1
                  auipc        t6, 308129
                  auipc        a0, 462354
                  add          s3, s3, s8
                  sub          s3, a5, t6
                  addi         s0, a0, -738
                  lui          a1, 167802
                  addi         t6, a7, 1333
                  auipc        a0, 343226
                  nop
                  sub          s6, s8, s8
                  add          s8, s3, s3
                  auipc        a0, 602785 #end riscv_int_numeric_corner_stream_5
                  slti         s9, a0, -1166
                  andi         a3, s5, -1599
                  or           s2, a1, s4
                  srli         sp, t4, 0
                  andi         s1, s6, 1924
                  sra          a2, s9, t2
                  andi         gp, gp, 562
                  slli         s6, s2, 14
                  sltiu        s6, s6, -1095
                  srl          t1, a7, zero
                  or           s10, a6, a3
                  slt          s4, s9, t3
                  srai         a5, s0, 30
                  sll          a3, a2, a2
                  srl          a0, s5, ra
                  sub          a5, a4, a0
                  slt          s4, s2, a7
                  slt          t6, s7, t3
                  srli         gp, s3, 14
                  add          a1, t0, a0
                  slt          t0, a6, s6
                  slt          t3, s0, tp
                  nop
                  srli         a1, t6, 6
                  sll          t1, t0, s1
                  srai         s1, a4, 29
                  lui          s6, 882017
                  and          t1, s10, s11
                  and          a7, a7, sp
                  sltiu        a2, a0, -1922
                  or           a7, a0, t3
                  srai         zero, t5, 17
                  slt          t3, s10, s3
                  slli         tp, t0, 27
                  slt          a7, s10, a0
                  sll          s3, t2, t4
                  nop
                  add          t5, t3, s4
                  slli         s3, a7, 3
                  ori          a6, a0, -1272
                  slti         sp, t0, 317
                  andi         s3, s10, 1823
                  slt          s9, s0, a0
                  addi         s0, sp, 1001
                  ori          gp, s5, -198
                  addi         s3, s11, 1646
                  srl          zero, t6, a3
                  slli         s6, s7, 3
                  lui          tp, 1033812
                  and          a0, t1, s9
                  sltiu        s5, sp, -1225
                  auipc        s5, 936769
                  sra          s3, tp, a6
                  sub          a3, s10, a7
                  sra          a5, s10, s8
                  sltiu        zero, zero, -1547
                  lui          s9, 765443
                  sltiu        s3, s7, -504
                  sll          t1, s4, s1
                  slti         tp, a6, 1622
                  xori         zero, t2, -1685
                  ori          s7, s2, -670
                  auipc        s5, 888268
                  auipc        t3, 907407
                  xor          t1, a0, s9
                  slt          a2, tp, s8
                  and          s5, a5, s4
                  lui          t3, 409813
                  sltiu        zero, s9, 1388
                  slli         a5, gp, 14
                  slti         s3, a2, -1093
                  sra          a0, a0, t0
                  xori         zero, s1, -342
                  srl          s11, s2, s5
                  addi         t1, t2, -1343
                  sub          t1, tp, t0
                  nop
                  auipc        t0, 346408
                  slti         tp, a2, 1507
                  auipc        s8, 489321
                  xori         a5, a1, -509
                  slt          a7, a4, s2
                  nop
                  xori         s1, sp, 1461
                  sub          t1, t0, s8
                  sltiu        a3, s9, -1433
                  sra          t0, tp, t5
                  andi         a7, s6, -1838
                  sub          s7, s2, t3
                  addi         t3, a5, 988
                  srai         a2, ra, 16
                  auipc        a7, 35823
                  ori          s0, s4, -272
                  lui          a7, 777060
                  sll          t6, a1, s9
                  slti         ra, s0, 1399
                  xor          s11, tp, s7
                  or           s11, t1, t0
                  or           zero, s6, t1
                  xor          s10, sp, t5
                  sra          t1, s8, t5
                  sltiu        t5, gp, 831
                  lui          s9, 690418
                  sub          sp, sp, s9
                  add          a5, t3, s6
                  sltiu        s11, t2, -155
                  slli         zero, a5, 26
                  addi         a0, s0, 1697
                  sltiu        t1, sp, 632
                  addi         ra, s7, -851
                  srl          gp, s6, a4
                  addi         t6, s5, -1295
                  sub          ra, t3, s11
                  add          s11, s5, s8
                  sltu         a6, a5, sp
                  auipc        a2, 177748
                  xori         s1, sp, -1902
                  sra          gp, a4, s8
                  srai         a7, ra, 2
                  and          t3, t3, sp
                  srli         t1, a0, 10
                  lui          ra, 806732
                  sltiu        ra, t6, -1944
                  srl          s1, a2, s8
                  slt          zero, a7, a2
                  slt          sp, t6, s0
                  sub          s3, t5, a2
                  add          zero, zero, a3
                  or           s11, t6, t6
                  lui          s10, 994149
                  sra          t0, gp, s2
                  xori         a3, t1, 1456
                  and          s5, s6, a0
                  add          s2, s1, s0
                  and          a2, s8, s10
                  srl          t3, t3, t3
                  srl          a0, gp, t0
                  slti         s10, tp, 1787
                  slt          t3, s11, zero
                  add          s9, t1, s8
                  sltiu        t3, s9, -627
                  auipc        a2, 793708
                  srl          s8, t5, a1
                  sltu         s4, s3, a6
                  nop
                  or           s0, a5, s8
                  srl          a3, a7, t6
                  xor          s2, a1, s11
                  srl          a2, zero, gp
                  sll          tp, s11, s0
                  ori          s5, s10, 1220
                  ori          t6, tp, -306
                  and          s11, s4, a7
                  slli         s5, s10, 4
                  add          t6, tp, s11
                  nop
                  sll          s2, a0, a2
                  sltu         s5, a2, gp
                  srai         s0, t0, 19
                  nop
                  xor          s8, a5, a1
                  srl          s9, t3, a3
                  xor          s8, s2, s4
                  ori          s1, a7, -1493
                  sll          s2, t5, s9
                  srai         t5, s5, 28
                  and          a2, s8, t5
                  xor          t6, s5, t2
                  sra          s5, a7, s11
                  lui          s2, 368448
                  ori          a6, a6, 999
                  nop
                  sra          s1, s2, a7
                  addi         gp, s6, -1311
                  sra          s9, t4, a7
                  xor          s3, s1, tp
                  slti         a6, t3, -776
                  nop
                  andi         t5, a1, 1897
                  srli         s1, s0, 3
                  or           s6, tp, a1
                  xor          a0, s6, t4
                  sra          ra, a0, s2
                  add          s9, s1, t0
                  slt          s11, t1, t5
                  nop
                  ori          sp, s4, -384
                  xor          s4, s2, s5
                  addi         s11, s4, 314
                  xor          t1, a5, t6
                  sra          s8, t1, s8
                  sltu         tp, s9, a0
                  xor          t6, s7, s4
                  sra          a1, ra, s6
                  slli         t5, s3, 15
                  sll          a3, zero, s1
                  auipc        gp, 878367
                  slti         t5, s11, -1007
                  sltiu        s6, s4, -952
                  sll          a2, s11, s11
                  slt          s10, tp, t5
                  sra          t0, sp, s4
                  addi         t0, t5, -373
                  sra          tp, t0, a4
                  ori          s2, ra, -1865
                  srl          a6, s11, a4
                  lui          zero, 128600
                  addi         a1, a5, -1564
                  sra          a3, s1, t5
                  andi         ra, s4, -1992
                  ori          ra, s8, -793
                  lui          s3, 226400
                  and          t3, s9, a0
                  sltiu        s4, t3, 1943
                  srli         t5, gp, 2
                  auipc        a6, 772673
                  slti         s8, t4, 912
                  srai         t0, gp, 14
                  sltiu        ra, sp, 1588
                  slt          gp, a2, t3
                  addi         s10, a5, 989
                  sltiu        t0, a1, -861
                  slt          t3, s11, t6
                  add          t3, a0, ra
                  or           s1, s3, sp
                  nop
                  auipc        s3, 998354
                  xor          a6, t4, t1
                  sltiu        s0, t2, 215
                  nop
                  xor          a5, a7, s7
                  slli         a7, a6, 11
                  and          gp, a4, s6
                  add          s10, a4, t6
                  srl          zero, a3, s4
                  or           s0, gp, sp
                  srl          s1, gp, a0
                  andi         zero, t0, -1414
                  auipc        a3, 319463
                  slli         a1, t2, 15
                  sll          a0, t3, ra
                  nop
                  addi         t1, a3, -757
                  sltu         s1, a3, tp
                  ori          s0, a6, -767
                  xor          tp, a6, s2
                  andi         s10, t6, 785
                  sub          t6, tp, t0
                  srli         s3, sp, 8
                  xor          s3, t4, t6
                  xor          a6, t2, ra
                  sra          tp, zero, s10
                  xori         s11, ra, 1960
                  slti         a7, s11, -1509
                  and          s2, a5, t4
                  sll          a0, a7, s7
                  sra          s4, s7, a5
                  srl          s7, t4, s4
                  slli         s9, a1, 6
                  or           s9, a0, ra
                  sub          s2, s5, a0
                  andi         s5, t6, -983
                  sra          s1, s2, gp
                  xori         a1, s2, -806
                  slti         zero, a4, 819
                  slli         s7, t2, 16
                  sltiu        s4, t0, -1646
                  sltu         s2, s10, t2
                  srai         zero, s5, 5
                  xori         t3, t4, -1195
                  sll          t5, s8, s4
                  sub          s8, t2, t6
                  srai         s7, a7, 15
                  or           tp, a6, t6
                  srli         a5, s3, 19
                  srl          t6, s1, a1
                  srl          s9, s7, t2
                  ori          gp, s2, 2021
                  srai         s0, s10, 3
                  or           a7, s11, sp
                  srli         a0, s6, 24
                  sll          a0, t5, a1
                  slt          s5, s4, gp
                  sll          t6, ra, s4
                  andi         t0, tp, 1456
                  nop
                  auipc        a3, 536061
                  sub          t0, s7, t5
                  sra          sp, s10, tp
                  slt          gp, s1, t3
                  auipc        a6, 202708
                  or           t0, a3, s10
                  srai         tp, s5, 13
                  addi         zero, s1, -510
                  xori         s5, a3, -1883
                  srai         s9, sp, 2
                  lui          ra, 395120
                  srai         s11, t6, 11
                  nop
                  nop
                  sll          t0, t2, t4
                  slli         a6, zero, 20
                  slti         s2, s5, 295
                  andi         a0, t1, -1432
                  srli         s2, zero, 1
                  sltiu        s3, tp, -930
                  xori         s10, s0, 1089
                  slt          a7, t0, t3
                  sll          s0, t3, t5
                  xor          s8, t5, a0
                  srl          s2, s8, s2
                  or           s1, a1, s1
                  andi         t1, a2, -1030
                  xori         t0, ra, -6
                  sll          a5, a1, ra
                  and          tp, a7, s8
                  or           tp, t5, s11
                  or           t6, zero, t2
                  sra          a7, a0, s7
                  slti         s7, s4, -1896
                  slt          a5, s7, sp
                  slt          s5, a3, t4
                  add          s10, a1, zero
                  addi         zero, t0, 622
                  slli         s10, t6, 0
                  slti         a3, ra, 248
                  lui          s0, 491012
                  slli         s6, a5, 30
                  srli         s10, a0, 5
                  xor          t5, s6, t6
                  slli         t1, s5, 13
                  sll          a7, s2, s0
                  sra          a7, t6, s9
                  srl          s7, s5, ra
                  xor          s9, s1, a2
                  xor          a7, t0, sp
                  xor          t0, s6, a0
                  slti         s11, t1, 911
                  xor          a5, s6, t2
                  lui          a5, 329261
                  slli         ra, s3, 22
                  slli         t3, zero, 31
                  sltu         ra, t6, t5
                  sll          t6, t0, s5
                  xori         t6, a0, -822
                  add          zero, a7, sp
                  srli         a5, s2, 27
                  srl          t6, tp, gp
                  slti         s0, a5, -2042
                  nop
                  slt          sp, sp, zero
                  sub          s8, s1, a2
                  xor          t5, t3, s7
                  slt          s2, a6, t5
                  ori          s1, zero, 1222
                  nop
                  and          a3, t0, a0
                  slt          s1, t6, tp
                  nop
                  addi         s1, ra, 2007
                  slt          s1, t5, s3
                  sltiu        s7, t6, -1908
                  add          a5, ra, s10
                  ori          a7, t1, -722
                  slli         a5, t5, 2
                  auipc        a3, 953690
                  xori         zero, t3, 1347
                  ori          zero, s3, -190
                  sltu         t6, s11, s1
                  sra          s4, a2, s9
                  add          t1, t1, s2
                  nop
                  slti         a1, t1, 1728
                  slti         s8, gp, -786
                  sll          s8, s9, sp
                  slli         s2, t0, 31
                  andi         a0, s3, -1070
                  xori         sp, a5, -841
                  nop
                  addi         t5, s9, -1131
                  sltu         tp, zero, s5
                  addi         gp, s1, -1054
                  srl          s10, s5, a2
                  or           s2, a2, a4
                  sub          s8, s1, t1
                  slt          sp, s6, s7
                  lui          s3, 174151
                  ori          s1, a0, -281
                  sll          a2, s0, a0
                  nop
                  andi         s3, s8, 821
                  sll          s8, t6, a0
                  and          a1, t6, s6
                  addi         a2, gp, 254
                  sltu         a0, sp, s6
                  sll          a0, t5, s7
                  srl          s7, a4, a0
                  slti         zero, t3, 1549
                  andi         s5, t0, 1415
                  add          a1, s10, a0
                  slt          t6, a3, t1
                  sltu         s6, tp, zero
                  addi         s11, s0, -1839
                  xori         s1, t2, -327
                  and          t3, t3, t4
                  sltiu        a5, s9, 1067
                  srai         a2, s2, 20
                  slt          s10, t0, s8
                  sltiu        a5, ra, -733
                  slt          s6, sp, s2
                  and          s11, s2, s4
                  srai         t3, a2, 6
                  or           t0, ra, ra
                  add          s7, zero, s4
                  or           a5, s3, s9
                  srli         t0, t2, 22
                  srl          a3, zero, s1
                  xor          zero, a0, zero
                  add          sp, s0, tp
                  auipc        s6, 563077
                  slti         s6, s7, 580
                  sltu         a1, s8, s10
                  ori          a6, t3, 958
                  slti         sp, tp, 35
                  sll          ra, t4, t2
                  sra          a3, zero, s8
                  srai         s2, t4, 6
                  xori         s2, s6, -1209
                  xor          s2, s4, a0
                  slli         s9, s0, 19
                  add          t1, s11, s6
                  ori          s11, t0, 952
                  and          a1, s5, a6
                  sub          t3, s11, a7
                  nop
                  nop
                  or           t6, ra, a1
                  ori          t6, a2, 987
                  sltu         s11, t3, t0
                  add          a5, s9, t0
                  addi         t1, s5, 15
                  srai         sp, a1, 30
                  or           gp, s7, a0
                  srli         t5, t1, 5
                  sra          s7, a4, ra
                  add          s5, s1, t4
                  and          a2, ra, s3
                  ori          zero, zero, 141
                  ori          t3, sp, 1940
                  slti         s0, a1, 149
                  srli         a5, gp, 15
                  srl          t0, a5, s1
                  addi         t3, t6, -1337
                  lui          a1, 975874
                  ori          t3, a1, -116
                  sltiu        a0, tp, 1919
                  auipc        s6, 568810
                  xor          a6, s5, a0
                  andi         t0, t2, -1915
                  srli         a5, a5, 29
                  lui          s6, 1020298
                  xori         t3, ra, 537
                  srl          s0, ra, s11
                  and          s2, s11, s3
                  xori         s4, t4, -1564
                  addi         t6, ra, -2015
                  xor          t1, t3, s1
                  xor          s7, s4, t5
                  add          s4, s10, a6
                  nop
                  srli         a1, s6, 3
                  sltiu        a5, a5, 1173
                  srli         s1, ra, 12
                  add          a0, s1, gp
                  sltiu        t3, t6, -2032
                  slli         s2, s4, 29
                  slt          a2, s9, t0
                  sll          gp, t0, s10
                  and          s11, s8, s3
                  slli         gp, a0, 20
                  srli         zero, sp, 16
                  lui          a0, 661202
                  addi         t1, s1, -1903
                  srai         t3, s10, 29
                  sltiu        s2, s6, -394
                  auipc        sp, 1046631
                  sltu         gp, a2, a5
                  sll          t3, t6, sp
                  sra          t0, t6, s10
                  andi         s0, t6, 342
                  srai         s9, s0, 28
                  andi         s2, s7, -460
                  andi         a2, a0, 1535
                  sra          t5, s9, a3
                  or           zero, t2, s1
                  or           a1, a0, a4
                  slt          a7, a1, t0
                  sra          a0, gp, a0
                  auipc        t5, 1036522
                  srai         s10, tp, 15
                  addi         t5, gp, -312
                  or           s4, s11, s8
                  srl          tp, s3, t4
                  slti         a0, a5, -1643
                  sub          s2, s10, t2
                  lui          sp, 210688
                  sll          gp, ra, a3
                  add          t1, a1, s2
                  addi         a1, tp, 1249
                  srai         a2, t6, 23
                  auipc        t3, 144539
                  xori         a2, zero, 1891
                  or           s2, s3, s1
                  srl          s4, t1, s10
                  ori          s11, tp, -1418
                  or           ra, t2, t3
                  sub          t0, s9, a3
                  auipc        a0, 332778
                  slli         tp, t0, 28
                  sub          t5, s9, s2
                  srli         t1, s11, 17
                  sra          ra, t0, a5
                  add          tp, t5, sp
                  sub          s11, s10, a6
                  sra          s10, tp, a6
                  sltu         gp, s11, s2
                  andi         s6, s2, 1633
                  add          s11, a0, a0
                  slli         gp, s3, 5
                  sll          s10, s0, t0
                  slli         t1, s9, 2
                  slt          s5, ra, s7
                  sll          gp, s10, s9
                  andi         a5, s8, 1492
                  sltu         s4, t1, a0
                  sll          s0, gp, s1
                  or           s3, tp, s8
                  andi         s4, s0, 1492
                  slt          t5, s6, tp
                  and          a6, a7, s3
                  or           s11, ra, s2
                  lui          s4, 892361
                  slli         t6, a0, 0
                  lui          s1, 990556
                  andi         a6, s5, -1237
                  slt          t1, s0, gp
                  xor          a1, ra, s10
                  srai         gp, tp, 2
                  addi         a3, sp, 262
                  srl          a2, t3, s5
                  add          a2, a3, s6
                  srl          a6, a6, s2
                  srai         a2, sp, 0
                  srai         t1, s10, 15
                  sltu         t1, s9, a2
                  xor          t3, sp, t3
                  and          t1, t0, t2
                  sub          t3, zero, a0
                  addi         a6, gp, -1271
                  sll          t0, s7, t6
                  srai         t6, s3, 23
                  slti         s11, s5, -487
                  addi         s10, a2, 215
                  sub          s9, a1, s5
                  or           ra, a3, s7
                  sub          sp, sp, a1
                  srl          s3, a6, gp
                  srl          a1, a6, s6
                  srli         a7, t6, 3
                  addi         s3, s10, 1772
                  andi         t3, s6, -1229
                  xor          a0, t6, s10
                  slti         a2, zero, 492
                  sub          s6, s7, a2
                  sll          s11, sp, s0
                  auipc        a6, 70578
                  slti         s2, a3, -1384
                  add          zero, a4, sp
                  sra          s10, t4, a2
                  or           zero, s10, s4
                  slt          t3, t3, gp
                  lui          t5, 268658
                  srl          t0, s8, s10
                  lui          a1, 598566
                  srli         a0, t1, 25
                  addi         t6, a6, 1433
                  slli         s11, t2, 17
                  srl          a1, t4, s3
                  or           a0, t1, a5
                  and          a0, s6, tp
                  li           s10, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           gp, 0xffffffff
                  li           sp, 0xffffffff
                  li           t6, 0x80000000
                  li           a5, 0x97297256
                  li           a6, 0x80000000
                  li           s8, 0x83e516ce
                  li           s5, 0xffffffff
                  li           a7, 0xffffffff
                  li           s6, 0x93a04600
                  nop
                  lui          a5, 218885
                  lui          a6, 1039835
                  nop
                  lui          s10, 242970
                  lui          a5, 217595
                  nop
                  sub          s10, s6, a6
                  lui          s5, 130313
                  nop
                  sub          a5, sp, a7
                  addi         s6, t6, 862
                  lui          a6, 323523
                  addi         a6, s10, -15
                  addi         a6, a6, 1101
                  nop
                  lui          s6, 285943
                  add          a6, gp, sp
                  sub          s6, s6, s6 #end riscv_int_numeric_corner_stream_17
                  srl          sp, ra, t4
                  lui          zero, 646200
                  and          t1, a0, ra
                  andi         s2, t1, -1608
                  srli         s4, s10, 13
                  slt          a3, t0, ra
                  xori         s6, s8, -1035
                  sltiu        t0, a2, 2037
                  or           t1, s7, s1
                  xori         gp, s7, -1863
                  srai         a2, sp, 30
                  xori         s4, t3, -676
                  lui          a7, 279701
                  slti         s11, a6, 1425
                  auipc        s5, 160793
                  srl          a0, s9, s10
                  slt          t0, a1, a6
                  addi         gp, s11, 1907
                  slli         t3, s9, 4
                  addi         t5, s10, 1741
                  nop
                  sltu         s0, t2, ra
                  ori          s1, a2, -1095
                  addi         s7, a4, 1226
                  or           a6, s4, gp
                  xor          t6, s5, s0
                  xori         s7, t2, 1514
                  auipc        s1, 105119
                  sltiu        s1, a4, 476
                  slt          t3, t6, s3
                  or           a7, ra, zero
                  slti         a1, a3, 1702
                  sub          ra, t6, a2
                  auipc        t0, 589042
                  andi         s10, t2, 626
                  ori          ra, tp, 1328
                  srl          t0, s7, ra
                  srai         t6, t5, 31
                  xor          ra, s7, s0
                  sltiu        a2, a3, -1600
                  sra          t3, a1, a3
                  lui          s2, 1014397
                  sra          a1, a0, a1
                  add          a0, tp, a1
                  andi         a3, s8, -206
                  srl          zero, s2, s1
                  nop
                  slti         s5, a7, -134
                  add          t6, tp, t4
                  slt          a5, t2, t3
                  sltu         s11, s4, a3
                  sub          a3, a3, a3
                  xori         s3, a7, 1610
                  slt          ra, s8, s7
                  sll          a0, zero, a1
                  nop
                  or           s11, s3, s7
                  lui          a3, 36922
                  auipc        t0, 75312
                  xori         s7, s11, -1083
                  add          a5, a2, ra
                  auipc        s0, 226960
                  lui          t3, 284569
                  sub          zero, a4, a2
                  andi         a2, a3, -1239
                  sub          t6, s2, s1
                  srai         t1, s0, 10
                  addi         zero, a1, 1548
                  sltiu        sp, s3, -701
                  andi         s6, s2, -111
                  srai         t6, s2, 8
                  ori          a5, s0, 914
                  andi         s7, s2, -910
                  auipc        a6, 771747
                  add          ra, s5, s0
                  ori          t6, t1, -1778
                  sub          ra, t0, s1
                  and          t1, s11, a5
                  sub          s2, s5, s7
                  xor          sp, s6, a7
                  addi         a1, t6, 1214
                  xor          s7, s11, a6
                  sltiu        s1, a4, 310
                  andi         s3, a6, 351
                  nop
                  xori         t1, s9, 913
                  lui          t5, 122819
                  xori         s5, t3, -20
                  srli         s8, tp, 10
                  srai         s7, sp, 21
                  or           s0, a3, t1
                  sltiu        a0, s11, 1605
                  srl          a2, zero, s11
                  sll          a2, s8, a2
                  xor          a1, s6, s1
                  srl          tp, s2, s4
                  nop
                  xor          t5, t3, a5
                  lui          a7, 1000766
                  addi         s10, a5, 654
                  srli         s9, s10, 29
                  and          ra, s3, sp
                  auipc        s6, 59261
                  lui          t0, 122138
                  sra          a3, t3, s8
                  sltiu        s8, t1, 1832
                  or           a1, tp, s5
                  or           a3, t2, s1
                  slt          a1, t4, s5
                  xori         t3, a3, -232
                  xori         a3, a0, -1111
                  nop
                  add          s10, t3, s4
                  slti         s0, tp, -988
                  or           a5, a6, t6
                  srai         a7, t0, 15
                  nop
                  srl          s4, s2, t2
                  andi         zero, s3, -1315
                  sra          t6, s0, s5
                  xori         t6, s6, 1967
                  sub          t0, t1, zero
                  addi         s6, sp, 1184
                  lui          s2, 501032
                  add          t6, a2, a3
                  srli         s5, s8, 5
                  and          t0, t3, s9
                  xori         t1, gp, 1402
                  ori          s6, s5, -1987
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           a7, 0x80000000
                  li           s10, 0x0
                  li           s0, 0x0
                  li           t6, 0x80000000
                  li           a2, 0x80000000
                  li           a6, 0x0
                  li           s4, 0x2e0eda67
                  li           tp, 0x0
                  li           t1, 0xef2d57df
                  nop
                  nop
                  add          t1, a0, a6
                  lui          s0, 103086
                  sub          s10, tp, tp
                  auipc        tp, 911320
                  addi         s10, s4, -133
                  nop
                  auipc        tp, 633132
                  auipc        tp, 517883
                  lui          a0, 645570
                  nop
                  lui          t1, 330561
                  nop
                  auipc        a6, 471415
                  nop
                  add          s0, s4, s0
                  addi         s10, s0, -1637
                  addi         a7, t6, -790
                  sub          s4, a2, s10
                  add          tp, t6, a2
                  auipc        s0, 790378
                  lui          a6, 662616
                  add          t6, a2, tp
                  lui          a6, 137186
                  nop
                  lui          t6, 286385
                  sub          t1, t6, tp
                  lui          a2, 936636 #end riscv_int_numeric_corner_stream_12
                  lui          s6, 892180
                  sub          t5, a1, t5
                  xori         zero, a2, 1091
                  xori         t0, s10, 898
                  or           t5, ra, gp
                  nop
                  andi         ra, a3, -1081
                  addi         s1, a4, -1522
                  srai         s2, s6, 14
                  addi         s2, zero, 477
                  add          gp, s6, s11
                  nop
                  slti         s8, a1, -9
                  nop
                  lui          s2, 405108
                  xor          s8, s1, a2
                  xor          s9, t3, t4
                  addi         zero, s4, -1679
                  or           tp, sp, s4
                  addi         t1, a4, -425
                  andi         a7, sp, -955
                  srli         t6, t1, 25
                  lui          s7, 1023806
                  nop
                  srli         s6, t2, 28
                  srl          t6, a3, a3
                  sra          a5, ra, s6
                  sll          s11, s10, s7
                  srai         s0, s0, 28
                  or           a3, sp, s1
                  xor          sp, tp, t1
                  slli         s3, a0, 12
                  lui          s5, 532980
                  srli         s0, s9, 10
                  auipc        a1, 625556
                  sub          s7, a0, s2
                  sltiu        s7, t6, 1189
                  slti         s5, s3, 100
                  sub          s5, s11, s1
                  nop
                  addi         s8, t4, 1864
                  slt          t3, s2, a4
                  srli         sp, s0, 0
                  slt          t5, a6, t0
                  slti         s6, ra, -263
                  addi         ra, t6, 685
                  add          s11, a6, t5
                  ori          t0, ra, -44
                  sub          s5, s2, a6
                  slti         s5, s11, 1378
                  srai         t3, tp, 1
                  slli         a5, s7, 8
                  xor          t1, tp, s1
                  andi         ra, s1, -350
                  auipc        ra, 56691
                  xori         ra, s11, -275
                  sltiu        s1, s2, -46
                  sll          s9, t3, a5
                  xori         zero, a4, -1326
                  slti         s11, t6, -930
                  sll          tp, s6, s11
                  sltiu        s11, t1, 404
                  xori         t5, s1, 482
                  slti         a7, s4, -1688
                  auipc        gp, 813697
                  sltu         s10, gp, t0
                  srli         s1, a2, 2
                  and          a0, sp, t1
                  xor          s6, s11, a4
                  sltiu        s0, sp, 55
                  slli         s9, t5, 13
                  nop
                  sltu         zero, ra, a1
                  srl          a3, s8, gp
                  slt          a2, a7, t1
                  lui          gp, 219528
                  srai         zero, s8, 26
                  or           s9, s9, a7
                  srl          gp, t6, zero
                  slli         ra, s8, 28
                  sll          s5, s8, s0
                  srl          tp, a6, s8
                  or           s4, t4, s8
                  ori          t1, s0, 1736
                  lui          s3, 534282
                  ori          a7, t3, -1187
                  lui          a6, 467997
                  xori         s8, a4, 1166
                  sll          t0, zero, t5
                  sra          s8, t0, s4
                  xor          gp, s6, t1
                  sltiu        s9, t6, 8
                  xor          gp, a2, s3
                  and          a5, t4, t6
                  nop
                  nop
                  srai         s9, ra, 17
                  nop
                  sltiu        s6, a0, 831
                  slli         zero, t3, 4
                  or           s3, zero, s1
                  srl          s4, sp, s0
                  auipc        a6, 142337
                  nop
                  sub          s11, s3, s8
                  andi         s9, zero, -438
                  addi         s10, t3, -1045
                  and          s6, ra, a2
                  lui          t5, 598123
                  xor          s7, a7, s3
                  slli         a1, s2, 30
                  xori         s7, t4, -1310
                  sltu         s8, t4, a3
                  slli         t6, sp, 4
                  slli         s3, s1, 4
                  andi         t0, a2, 1249
                  or           s11, sp, sp
                  sltiu        s0, s7, 14
                  slti         t6, s10, 1605
                  andi         a5, s9, 1082
                  nop
                  slt          t1, a3, s5
                  sra          t3, t2, s6
                  slt          t0, a5, t4
                  sltiu        s1, a7, -1348
                  lui          s4, 917757
                  and          s11, s9, s7
                  xori         a2, a4, 1808
                  slli         s3, t3, 19
                  srli         s2, ra, 22
                  add          s10, a4, s7
                  andi         a2, s11, -913
                  addi         s7, ra, 1162
                  lui          s4, 416060
                  sll          s11, sp, s5
                  srli         a2, a6, 29
                  srai         a0, s2, 12
                  slti         tp, s3, -762
                  lui          t0, 616042
                  andi         a2, s6, 150
                  andi         a3, a5, -443
                  sltiu        t0, t4, -774
                  srli         t1, a0, 13
                  addi         t3, s3, -1752
                  and          s9, a6, t2
                  addi         s8, zero, -1092
                  sub          tp, t2, s9
                  sltu         s7, s2, sp
                  srli         t0, s10, 12
                  addi         s6, t6, 222
                  slt          s4, s7, s7
                  sra          ra, s2, s7
                  sltiu        t5, t1, 1236
                  slti         a2, s2, -1545
                  srl          a6, ra, t4
                  xor          s8, t6, t1
                  slt          gp, s5, t6
                  and          t3, ra, t4
                  addi         a1, t5, 1245
                  slt          t0, t1, sp
                  srli         a7, s0, 31
                  srl          sp, tp, s7
                  srai         a1, t3, 14
                  slti         a5, zero, -1257
                  xori         a6, tp, -1967
                  auipc        ra, 844009
                  xori         t0, s8, 100
                  slt          sp, s8, a7
                  xor          t6, s5, a3
                  sra          a0, a5, a2
                  sra          s5, a7, s1
                  auipc        s2, 800502
                  sll          s9, t6, s9
                  xor          ra, t2, t3
                  srl          a6, gp, s2
                  sltu         a7, a0, a0
                  srai         a1, s11, 6
                  slti         ra, t3, -1664
                  srli         s6, a3, 12
                  sltu         a6, gp, t6
                  and          a2, a2, a5
                  srai         ra, s3, 21
                  sra          t6, t3, a2
                  srli         s0, s10, 6
                  nop
                  lui          a0, 334692
                  srl          zero, t4, t6
                  sltiu        sp, a6, 2046
                  and          gp, tp, gp
                  srl          t1, s0, sp
                  srli         a5, t4, 7
                  nop
                  addi         tp, a0, -2046
                  slt          t1, s8, sp
                  sub          s9, s6, tp
                  sltu         sp, s6, s0
                  auipc        t3, 769234
                  addi         t1, s9, 136
                  slt          s7, a0, a6
                  slti         s8, a7, -249
                  srai         a3, tp, 1
                  srai         s11, s1, 24
                  nop
                  andi         s0, s2, -581
                  and          a7, a5, s7
                  xor          a5, t2, s1
                  andi         s3, t2, -1269
                  addi         s11, gp, 1890
                  slti         a5, ra, 1382
                  sra          s5, a6, t6
                  srai         a7, s6, 22
                  addi         s7, gp, -1814
                  lui          sp, 434484
                  srl          s3, gp, sp
                  srl          tp, s6, t6
                  slti         t6, t3, -1887
                  addi         s9, a5, -1965
                  slt          a7, t6, s5
                  slt          tp, t4, s3
                  xor          a5, t4, t1
                  xori         a2, tp, 1416
                  sra          a6, t0, tp
                  slt          s3, t2, t6
                  and          tp, a5, a4
                  slt          a5, a0, t1
                  srl          ra, gp, t4
                  srai         s3, t3, 30
                  srli         a0, t4, 5
                  auipc        a3, 301788
                  sltiu        a3, t4, 946
                  srl          s1, gp, a7
                  srai         s3, s3, 21
                  andi         t6, sp, -909
                  sltiu        t1, a1, 905
                  ori          s2, t6, 764
                  srli         s10, a5, 19
                  slt          s9, a0, s4
                  xor          s4, s0, t6
                  xor          s11, t5, s11
                  srl          a5, t2, a2
                  sll          s5, ra, t4
                  slt          s4, a6, a6
                  sub          t0, t6, s8
                  and          s5, t3, s6
                  slti         ra, tp, 163
                  or           t5, s3, t0
                  or           s5, t3, sp
                  lui          a6, 369416
                  sub          s1, s0, s0
                  srli         a1, t6, 11
                  addi         t3, a7, 953
                  or           a0, a2, s11
                  or           t1, a3, s8
                  slt          t6, gp, t3
                  srl          s11, t3, t2
                  add          a6, s3, t1
                  sltiu        s0, sp, -2001
                  srai         s2, a2, 11
                  auipc        t5, 273858
                  sltiu        s5, tp, 1931
                  ori          ra, a7, 390
                  sub          t1, ra, ra
                  add          t5, s7, zero
                  andi         t5, a6, -1596
                  srli         s3, s8, 0
                  slt          s9, a4, gp
                  srli         ra, a3, 22
                  xori         a2, a4, 494
                  auipc        s5, 1010616
                  srli         tp, a4, 4
                  slt          a2, a5, s10
                  or           s7, a4, t5
                  auipc        s11, 321436
                  sll          s10, t1, a6
                  nop
                  auipc        s0, 904964
                  andi         a3, t1, 364
                  nop
                  lui          tp, 642019
                  slli         s7, t0, 5
                  xori         a5, s7, 1383
                  ori          s9, a7, -701
                  or           s7, s9, a4
                  xor          s10, a5, s8
                  slli         t5, s5, 5
                  ori          s1, a2, 1751
                  sltiu        zero, zero, 1645
                  and          s10, a1, t3
                  sltiu        gp, gp, 1400
                  srl          a2, s10, s6
                  sub          a5, s3, t6
                  slli         t0, s2, 3
                  andi         a1, s4, -740
                  sltu         s9, s0, a3
                  andi         zero, t5, 1182
                  slt          tp, s3, s8
                  sub          t5, s5, s4
                  and          a6, t0, gp
                  or           s1, zero, t3
                  nop
                  ori          s5, s2, 1059
                  auipc        a3, 752673
                  sub          a6, s9, s1
                  xori         a0, s7, 1513
                  sltu         s6, a0, tp
                  sll          s3, t0, t0
                  addi         sp, s2, -120
                  sltiu        s8, s3, 899
                  or           s1, s10, t3
                  or           t0, s4, sp
                  xori         a2, s11, -1954
                  slti         t5, a3, -1682
                  lui          gp, 959537
                  ori          s4, gp, -580
                  and          a3, s11, s0
                  sll          s10, a2, t6
                  slti         ra, tp, -1226
                  add          s6, t5, s0
                  andi         a7, a5, -1819
                  andi         s10, s9, -252
                  srai         a1, t4, 11
                  addi         a5, sp, -1946
                  slt          s2, t5, s7
                  sub          zero, a1, sp
                  slt          s8, gp, gp
                  sll          s10, s9, a3
                  srl          zero, t2, s6
                  sub          a0, s0, s4
                  sltiu        s7, t1, 1828
                  sll          t3, tp, s5
                  sltiu        t3, a6, -502
                  add          t5, a3, s8
                  lui          zero, 1016851
                  sltiu        t3, t6, -30
                  slti         ra, a7, 793
                  srli         zero, a5, 22
                  sra          tp, t2, s10
                  slli         s4, a5, 19
                  srli         tp, t4, 13
                  slt          s11, a4, s4
                  sltu         s8, t2, a2
                  sltiu        gp, tp, -1740
                  and          s11, t5, s10
                  and          s4, t6, t3
                  and          t6, s9, a3
                  or           a1, a5, s9
                  slti         t1, a2, -1756
                  srl          t6, s1, a5
                  lui          t1, 846100
                  or           s11, a1, tp
                  auipc        s6, 490361
                  slti         t3, a1, -322
                  slli         a6, s6, 24
                  xori         tp, t5, -1671
                  srli         zero, s10, 16
                  and          t1, s6, s9
                  xor          s7, t3, t1
                  ori          s9, tp, 860
                  sub          t5, gp, sp
                  slt          tp, sp, sp
                  xori         s6, s9, -1848
                  slli         s0, s4, 27
                  slli         s10, t3, 6
                  sra          t5, a1, s8
                  srl          tp, s0, a1
                  sltu         s10, ra, a1
                  andi         a0, sp, -1987
                  and          t1, a1, s1
                  sub          s9, s5, a0
                  xori         a0, t3, -633
                  nop
                  xori         a6, s8, 1461
                  srl          a1, a3, s9
                  xori         s3, s4, 507
                  and          zero, s5, t5
                  and          a6, s7, t6
                  nop
                  srai         a3, s7, 12
                  auipc        a3, 764281
                  srai         sp, zero, 1
                  andi         a6, a2, 1243
                  or           zero, s5, a0
                  xor          s2, t2, s4
                  lui          s3, 613327
                  srl          a5, s5, s6
                  sll          s6, a6, t3
                  andi         a6, a3, 84
                  and          zero, t0, s6
                  lui          a7, 989192
                  addi         a7, s6, 1928
                  or           s11, a1, zero
                  sltu         a2, s9, s1
                  add          s4, t6, sp
                  slt          t0, sp, gp
                  ori          a3, gp, -485
                  sra          a1, zero, ra
                  sub          s3, t6, s5
                  slt          s5, s9, tp
                  or           a0, t4, a4
                  andi         s5, t1, -1438
                  add          s6, t6, s4
                  srai         t3, s0, 13
                  sll          zero, t4, t3
                  srli         gp, s4, 8
                  sra          sp, a7, s8
                  add          s3, s0, tp
                  slli         t0, t3, 22
                  andi         s2, a7, -1467
                  sub          t1, s0, s6
                  slti         t0, gp, -1207
                  srai         s11, s5, 0
                  li           a3, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           a2, 0x0
                  li           a6, 0x6f9fa680
                  li           s9, 0x55486d3b
                  li           a5, 0x98432b7a
                  li           s2, 0x8e08272a
                  li           t6, 0x0
                  li           a1, 0x80000000
                  li           s1, 0x80000000
                  li           s5, 0x915a0e75
                  auipc        a1, 361203
                  sub          s5, t6, a6
                  add          s2, a1, a5
                  addi         s1, t6, 1294
                  sub          s1, s9, s5
                  nop
                  add          s9, s9, a3
                  auipc        a1, 211008
                  addi         a2, a1, 959
                  add          a2, s5, s9
                  nop
                  add          a5, s2, t6
                  nop
                  addi         s5, s1, 991
                  nop
                  addi         s9, s2, -1926
                  sub          s5, a2, t6
                  lui          a6, 558438
                  nop #end riscv_int_numeric_corner_stream_15
                  and          ra, gp, s2
                  sltu         gp, a6, a7
                  ori          a7, s0, 894
                  lui          t6, 1035811
                  sra          s2, s6, t0
                  xori         a0, s4, -1748
                  andi         s5, t5, -1520
                  srai         a1, a1, 13
                  slli         s11, a0, 12
                  ori          s8, s11, 300
                  sub          t1, a1, s1
                  lui          s1, 406844
                  auipc        t6, 972936
                  addi         s8, s11, -1421
                  or           a0, t5, a3
                  slli         s3, s7, 29
                  nop
                  nop
                  addi         a7, a5, -804
                  xori         s11, t0, -1667
                  sra          ra, tp, a3
                  srai         s7, a1, 26
                  slli         t1, a3, 1
                  andi         a5, t0, 191
                  srai         tp, a5, 27
                  srai         t6, s10, 5
                  sltiu        s9, a1, 1396
                  xor          s10, sp, t6
                  sltiu        t6, ra, 1572
                  sra          s7, s10, s6
                  sra          t3, s7, a2
                  srli         s10, s0, 7
                  or           ra, t3, t6
                  or           s6, sp, s5
                  xor          a2, s4, t2
                  addi         ra, a4, -1099
                  srli         a3, s1, 5
                  srl          s9, t3, t2
                  ori          s3, a2, 1720
                  xor          s5, a4, t3
                  slti         s10, sp, -1717
                  and          t6, s8, ra
                  addi         a3, t3, -1425
                  srai         a5, a0, 23
                  srai         s10, a4, 14
                  auipc        s2, 340719
                  srai         s2, s4, 28
                  slt          s11, t0, t6
                  auipc        a5, 75124
                  sltu         tp, a4, s2
                  sltiu        s11, s2, 1750
                  and          s5, t2, ra
                  xori         t5, s6, 202
                  lui          s5, 506208
                  sub          t0, s9, t6
                  sra          a3, s4, s9
                  sub          a2, a5, s2
                  sltiu        tp, tp, 791
                  sltu         t0, a0, s2
                  sltiu        t5, t6, 841
                  and          a1, a4, a5
                  sra          s0, ra, zero
                  sltiu        a7, t0, -1872
                  slti         s10, s2, 1556
                  or           a1, s11, s10
                  xori         s5, gp, 15
                  srli         t3, s8, 9
                  add          s1, s7, s2
                  and          t3, t2, s0
                  auipc        t5, 675490
                  or           s7, s5, s5
                  slli         t1, t1, 30
                  srli         t6, s7, 18
                  ori          tp, ra, 732
                  auipc        s1, 791666
                  sub          t6, t6, a1
                  slli         s2, s5, 0
                  slli         s7, a3, 23
                  sll          s1, a4, s1
                  srl          zero, a0, s0
                  sll          tp, t2, a4
                  addi         a5, a7, -1452
                  sub          gp, a0, s9
                  addi         t5, tp, -2036
                  nop
                  or           t0, s1, t6
                  slli         t0, a2, 11
                  slli         s5, a1, 5
                  add          s6, ra, s1
                  add          s2, tp, t0
                  lui          s0, 136353
                  addi         s2, s4, 1342
                  sll          a2, s10, zero
                  lui          s7, 320570
                  sltu         a0, s11, s6
                  sra          s11, a3, a0
                  slt          t1, t5, s0
                  srl          s4, s2, a5
                  slli         t0, s3, 22
                  sltiu        s2, s4, -1887
                  slti         t0, a4, 1992
                  sub          s3, a3, zero
                  srai         ra, s8, 9
                  sra          s1, tp, a5
                  addi         t6, s4, 1988
                  auipc        s6, 284248
                  and          a5, s2, t6
                  ori          s1, a3, 634
                  sltiu        tp, s7, -1085
                  add          s4, a1, s10
                  and          s7, a7, s4
                  andi         s7, a7, -185
                  sra          a5, a3, tp
                  auipc        s11, 128725
                  slti         t0, s10, 1098
                  add          a6, s1, s5
                  nop
                  sltu         sp, a1, sp
                  andi         sp, sp, -602
                  add          t3, t0, sp
                  sll          s2, s8, t5
                  andi         a7, a4, -901
                  slli         t1, a1, 29
                  sub          zero, s2, a2
                  srai         s4, t3, 2
                  andi         tp, s3, 283
                  srli         gp, s2, 8
                  ori          s4, t6, 1918
                  srli         s5, a7, 11
                  add          t1, t3, t0
                  auipc        s8, 370178
                  addi         s1, t5, 1511
                  slli         gp, gp, 3
                  nop
                  srl          s1, s11, t2
                  srai         t5, a5, 21
                  or           ra, s6, s7
                  sub          s7, sp, s3
                  sub          a7, s8, t3
                  addi         s10, s2, 1315
                  srl          s5, s11, a3
                  or           s5, t0, s0
                  sub          a7, s9, s8
                  slli         s11, a0, 14
                  srli         s1, a0, 7
                  ori          s10, a7, 1979
                  and          t0, t1, t5
                  srai         sp, tp, 4
                  srl          a5, zero, a3
                  add          a5, s4, s2
                  sub          s8, t0, s6
                  ori          gp, s2, 340
                  sltiu        zero, a2, 429
                  xori         tp, tp, 2030
                  and          s4, s5, s11
                  xor          a7, a0, a5
                  ori          s6, s0, -935
                  or           s9, t1, a6
                  sll          s8, s4, s9
                  slti         a7, s9, -1483
                  sltiu        s0, s9, -776
                  srai         a1, s8, 11
                  sltu         sp, a6, a7
                  sltiu        s4, s6, 901
                  lui          s6, 390548
                  nop
                  sll          sp, ra, ra
                  sltiu        t6, tp, -1260
                  and          gp, s7, a1
                  ori          ra, a4, -442
                  sltiu        a7, a6, 349
                  slt          s0, s9, a3
                  srai         zero, a5, 5
                  xori         s8, a4, 1404
                  srli         zero, t2, 6
                  slt          t3, t4, gp
                  la x29, test_done
                  jalr x0, x29, 0
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .user_stack,"aw",@progbits;
.align 2
user_stack_start:
.rept 999
.4byte 0x0
.endr
user_stack_end:
.4byte 0x0
.align 2
kernel_instr_start:
.text
.align           2
mtvec_handler:    
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x14, x7, zero
                  csrr x9, 0x300 # MSTATUS
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 31
                  bne x9, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x9, 0x341 # MEPC
                  csrr x9, 0x342 # MCAUSE
                  li x4, 0x3 # BREAKPOINT
                  beq x9, x4, ebreak_handler
                  li x4, 0x8 # ECALL_UMODE
                  beq x9, x4, ecall_handler
                  li x4, 0x9 # ECALL_SMODE
                  beq x9, x4, ecall_handler
                  li x4, 0xb # ECALL_MMODE
                  beq x9, x4, ecall_handler
                  li x4, 0x1
                  beq x9, x4, instr_fault_handler
                  li x4, 0x5
                  beq x9, x4, load_fault_handler
                  li x4, 0x7
                  beq x9, x4, store_fault_handler
                  li x4, 0xc
                  beq x9, x4, pt_fault_handler
                  li x4, 0xd
                  beq x9, x4, pt_fault_handler
                  li x4, 0xf
                  beq x9, x4, pt_fault_handler
                  li x4, 0x2 # ILLEGAL_INSTRUCTION
                  beq x9, x4, illegal_instr_handler
                  csrr x4, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

ecall_handler:    
                  la x9, _start
                  sw x0, 0(x9)
                  sw x1, 4(x9)
                  sw x2, 8(x9)
                  sw x3, 12(x9)
                  sw x4, 16(x9)
                  sw x5, 20(x9)
                  sw x6, 24(x9)
                  sw x7, 28(x9)
                  sw x8, 32(x9)
                  sw x9, 36(x9)
                  sw x10, 40(x9)
                  sw x11, 44(x9)
                  sw x12, 48(x9)
                  sw x13, 52(x9)
                  sw x14, 56(x9)
                  sw x15, 60(x9)
                  sw x16, 64(x9)
                  sw x17, 68(x9)
                  sw x18, 72(x9)
                  sw x19, 76(x9)
                  sw x20, 80(x9)
                  sw x21, 84(x9)
                  sw x22, 88(x9)
                  sw x23, 92(x9)
                  sw x24, 96(x9)
                  sw x25, 100(x9)
                  sw x26, 104(x9)
                  sw x27, 108(x9)
                  sw x28, 112(x9)
                  sw x29, 116(x9)
                  sw x30, 120(x9)
                  sw x31, 124(x9)
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  add x7, x14, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

load_fault_handler:
                  add x7, x14, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

store_fault_handler:
                  add x7, x14, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

ebreak_handler:   
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x7, x14, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

illegal_instr_handler:
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x7, x14, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x9, 0x300 # MSTATUS;
                  csrr  x9, 0x304 # MIE;
                  csrr  x9, 0x344 # MIP;
                  csrrc x9, 0x344, x9 # MIP;
                  add x7, x14, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret;

kernel_instr_end: nop
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 15
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
