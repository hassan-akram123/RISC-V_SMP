.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x21, h0_start
jalr x0, x21, 0
h0_start:
                  li x30, 0x40000100
                  csrw 0x301, x30
kernel_sp:        
                  la x7, kernel_stack_end

trap_vec_init:    
                  la x30, mtvec_handler
                  ori x30, x30, 0
                  csrw 0x305, x30 # MTVEC

mepc_setup:       
                  la x30, init
                  csrw 0x341, x30

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x30, 0x1800
                  csrw 0x300, x30 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0x5fce5ca8
                  li x4, 0x0
                  li x5, 0x0
                  li x6, 0x0
                  li x8, 0x8
                  li x9, 0x0
                  li x10, 0x9
                  li x11, 0x0
                  li x12, 0xf32775e7
                  li x13, 0x80000000
                  li x14, 0x4
                  li x15, 0x0
                  li x16, 0xf092a446
                  li x17, 0xdeb9b1c8
                  li x18, 0x870c7e8d
                  li x19, 0x5
                  li x21, 0xeda49f87
                  li x22, 0xfce8cc72
                  li x23, 0x80000000
                  li x24, 0xf5102c42
                  li x25, 0xdc6a270d
                  li x26, 0xf3be49f1
                  li x27, 0xfa50ec82
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0x0
                  li x31, 0xf2ca625e
                  la x20, user_stack_end
main:             li           tp, 0xf9e79cb5 #start riscv_int_numeric_corner_stream_7
                  li           s11, 0x80000000
                  li           s9, 0xffffffff
                  li           t0, 0x0
                  li           t4, 0x7b8874c5
                  li           s6, 0x80000000
                  li           t6, 0xd346c3ce
                  li           ra, 0x80000000
                  li           sp, 0xffffffff
                  li           a5, 0xffffffff
                  auipc        s9, 257466
                  add          t0, t6, s11
                  add          tp, s9, s6
                  sub          s9, a5, a5
                  addi         s6, t4, 1935
                  sub          a5, s11, t0
                  sub          t6, s11, a5
                  nop
                  add          t0, sp, t0
                  nop
                  add          t6, tp, ra
                  lui          t6, 674220
                  lui          ra, 533922
                  addi         s6, s11, 1696
                  auipc        s6, 301746
                  auipc        t6, 571662
                  add          tp, s9, s11
                  add          s9, s9, a5
                  sub          tp, s6, t6 #end riscv_int_numeric_corner_stream_7
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           t0, 0xffffffff
                  li           a7, 0xffffffff
                  li           ra, 0x22da5bae
                  li           s10, 0x0
                  li           a6, 0x0
                  li           a3, 0x7ae34c62
                  li           s7, 0x80000000
                  li           a5, 0x24cd65c3
                  li           t1, 0x80000000
                  add          s10, t6, a6
                  lui          s10, 558580
                  nop
                  add          t6, ra, s10
                  sub          a6, a6, a7
                  lui          a6, 577448
                  nop
                  nop
                  lui          ra, 442034
                  add          t1, a7, a5
                  lui          a7, 707592
                  addi         a5, t0, 1372
                  add          s7, a5, t0
                  auipc        t0, 51159
                  add          a3, s7, a5
                  nop #end riscv_int_numeric_corner_stream_5
                  li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           a4, 0x0
                  li           t0, 0x0
                  li           s6, 0x0
                  li           a0, 0xffffffff
                  li           t1, 0xffffffff
                  li           a3, 0x80000000
                  li           s0, 0x0
                  li           t5, 0xffffffff
                  li           s8, 0x80000000
                  add          a3, t1, t1
                  addi         t1, a4, 144
                  lui          s0, 222807
                  sub          a0, a0, a0
                  addi         t4, s8, 1218
                  sub          t1, s8, t1
                  nop
                  addi         t4, t5, -322
                  lui          a3, 196475
                  nop
                  add          s6, s0, t5
                  auipc        t4, 846245
                  sub          a4, t0, s0
                  lui          a4, 297016
                  lui          s6, 582999
                  add          t0, t1, a3
                  auipc        a3, 1025520
                  addi         t4, s8, 1306
                  nop #end riscv_int_numeric_corner_stream_15
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           a5, 0x73ea0082
                  li           s0, 0xe0f2bd5a
                  li           t4, 0xffffffff
                  li           s10, 0xa3e88aa2
                  li           a2, 0xffffffff
                  li           a1, 0x80000000
                  li           t1, 0xffffffff
                  li           a4, 0x0
                  li           gp, 0x0
                  add          a1, t1, s10
                  lui          a4, 433460
                  sub          a4, a5, a1
                  add          t1, gp, gp
                  sub          a2, gp, a1
                  nop
                  lui          a5, 634724
                  lui          a2, 150137
                  nop
                  add          s0, gp, s10
                  addi         s10, t1, -1535
                  sub          a5, a4, s10
                  addi         a1, gp, -2039
                  lui          s0, 85660
                  nop
                  nop
                  lui          a5, 109276
                  sub          a1, s2, a4
                  addi         s2, t1, 1370
                  sub          gp, s10, s0
                  nop
                  auipc        a2, 182444
                  lui          a1, 598949
                  lui          a1, 656657
                  add          a2, t1, t1
                  add          a2, s10, gp
                  lui          s10, 370865
                  nop
                  nop #end riscv_int_numeric_corner_stream_2
                  li           s3, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           a4, 0x80000000
                  li           s1, 0x80000000
                  li           s2, 0x80000000
                  li           t0, 0x0
                  li           tp, 0xffffffff
                  li           t1, 0x3aa3e1c8
                  li           a6, 0x0
                  li           s8, 0x0
                  li           t4, 0x0
                  sub          a4, a4, a4
                  sub          t1, t0, s2
                  auipc        a4, 829398
                  nop
                  auipc        s8, 80112
                  lui          a6, 933819
                  add          a6, a4, t1
                  addi         s3, tp, -584
                  nop
                  auipc        t0, 743608
                  lui          s3, 339490
                  auipc        a6, 958224
                  add          s8, s1, s3
                  add          s1, t0, a6
                  nop
                  add          a4, a4, t1
                  addi         t1, a6, -60
                  addi         a4, s3, 1965
                  addi         s1, s3, -1232
                  addi         tp, a6, 527
                  addi         tp, s3, 1364
                  add          t1, a6, a6
                  addi         t1, tp, 285
                  add          s3, tp, a4
                  add          s3, t0, t1 #end riscv_int_numeric_corner_stream_16
                  li           s2, 0xbea504a8 #start riscv_int_numeric_corner_stream_10
                  li           s11, 0xffffffff
                  li           s1, 0xffffffff
                  li           a3, 0x80000000
                  li           s0, 0x4b76445e
                  li           a5, 0x80000000
                  li           t3, 0x80000000
                  li           s6, 0x0
                  li           t0, 0x80000000
                  li           ra, 0xffffffff
                  nop
                  auipc        a5, 107850
                  add          s11, ra, t0
                  add          s11, t3, a3
                  add          s2, t3, ra
                  add          a5, t0, s2
                  addi         a5, ra, -1761
                  lui          s2, 861023
                  nop
                  nop
                  lui          t3, 705186
                  nop
                  add          ra, s2, s0
                  auipc        s2, 876053
                  add          t0, s6, s0
                  add          s2, ra, s6
                  auipc        s1, 9194
                  addi         s2, t3, 1215
                  sub          a3, s2, s11
                  auipc        a5, 140339
                  lui          t0, 1035466
                  add          a5, t0, s2
                  addi         a3, s1, 70
                  lui          a5, 979663
                  sub          a3, s1, s2
                  sub          ra, t0, t3
                  sub          s0, s2, s0
                  lui          t0, 742299
                  lui          s1, 932556
                  auipc        s11, 480159 #end riscv_int_numeric_corner_stream_10
                  li           t1, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           s7, 0x0
                  li           t6, 0x13193f21
                  li           sp, 0x80000000
                  li           a1, 0xc2508364
                  li           ra, 0xffffffff
                  li           s0, 0xffffffff
                  li           t3, 0xffffffff
                  li           a6, 0xc43d1653
                  li           gp, 0xffffffff
                  addi         t6, ra, -2010
                  add          t6, t3, a6
                  add          s0, t3, sp
                  nop
                  sub          t6, a1, a6
                  auipc        s0, 722620
                  addi         s7, a1, -1378
                  nop
                  nop
                  lui          gp, 516311
                  add          a1, s0, a6
                  lui          t3, 288408
                  lui          gp, 103723
                  addi         t6, t3, -1226
                  lui          t1, 415745
                  nop
                  lui          t3, 339866
                  addi         a1, a1, 2003
                  sub          sp, s0, t6
                  lui          ra, 851311
                  auipc        t6, 175797
                  auipc        s0, 373982
                  auipc        ra, 399033 #end riscv_int_numeric_corner_stream_13
                  li           a7, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           s1, 0xffffffff
                  li           s6, 0x80000000
                  li           s0, 0x0
                  li           a0, 0x80000000
                  li           t3, 0x0
                  li           a3, 0xffffffff
                  li           ra, 0xffffffff
                  li           a1, 0x80000000
                  li           a2, 0x41df302
                  addi         a7, t3, 1238
                  nop
                  add          a2, ra, s0
                  nop
                  auipc        t3, 291922
                  nop
                  nop
                  addi         a2, ra, -779
                  nop
                  add          a0, s6, s0
                  add          s0, ra, s1
                  auipc        a1, 661077
                  auipc        s6, 761466
                  auipc        ra, 376820
                  add          a2, a0, a1
                  sub          s1, s6, s1
                  nop
                  sub          s1, s0, s1
                  addi         s0, a1, 1012
                  addi         s6, a7, -637
                  addi         s6, a0, 561 #end riscv_int_numeric_corner_stream_6
                  li           t5, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           s9, 0x80000000
                  li           a2, 0xffffffff
                  li           s0, 0xffffffff
                  li           s6, 0x0
                  li           s11, 0xffffffff
                  li           t1, 0xffffffff
                  li           s8, 0xffffffff
                  li           gp, 0x80000000
                  li           sp, 0x88116e66
                  sub          s6, t5, s9
                  lui          s6, 630799
                  add          s0, s6, sp
                  addi         s0, s6, -1974
                  addi         s6, s6, -1505
                  addi         sp, s0, -1624
                  lui          s6, 271465
                  add          gp, a2, gp
                  add          t1, t5, s8
                  sub          sp, s0, a2
                  add          s8, s0, sp
                  nop
                  add          s6, gp, s9
                  lui          gp, 627554
                  auipc        s9, 234746
                  sub          t1, s9, a2
                  lui          s9, 511699
                  lui          s11, 758172
                  sub          s11, s8, t1
                  addi         s0, t1, -325
                  sub          s6, gp, s0
                  lui          sp, 403527 #end riscv_int_numeric_corner_stream_4
                  xori         t6, s8, 837
                  nop
                  srl          a7, t5, s7
                  slti         t1, s4, -117
                  sra          zero, a4, s2
                  lui          t6, 567334
                  lui          zero, 129549
                  sub          s11, s5, sp
                  nop
                  lui          a4, 884493
                  auipc        gp, 145172
                  slt          a3, s10, t1
                  ori          tp, a3, -851
                  srai         ra, a0, 16
                  slli         a2, t6, 11
                  slti         s3, t2, -267
                  auipc        a0, 395212
                  lui          a3, 548364
                  sll          s3, s2, s10
                  sra          a5, a1, a2
                  srl          a5, s11, ra
                  auipc        a4, 81837
                  andi         s10, s11, 2010
                  slt          t4, s8, t2
                  sltiu        t4, zero, -2044
                  srli         s9, s10, 4
                  srai         a5, s7, 28
                  slli         s10, s10, 3
                  sub          t1, a6, s5
                  slti         s7, t4, 1674
                  xor          a6, s10, s3
                  sltiu        a7, ra, -952
                  or           t5, t3, sp
                  sub          s11, tp, s0
                  sltu         s0, t6, s8
                  andi         ra, s0, 1432
                  sub          t6, t6, sp
                  srai         tp, gp, 0
                  andi         t5, a0, 2013
                  srli         a2, sp, 13
                  slli         t4, t6, 31
                  slt          t6, zero, s6
                  xor          s8, s3, ra
                  srli         s6, a6, 13
                  xori         gp, a0, 686
                  sub          sp, t1, s9
                  slli         tp, a1, 10
                  sltiu        s0, gp, 1971
                  xori         s2, t2, -142
                  xor          a0, t1, sp
                  or           a5, gp, s6
                  nop
                  srai         s9, a4, 27
                  xor          t0, s1, s8
                  andi         s11, a6, -1037
                  auipc        sp, 519233
                  ori          a3, s7, 905
                  sra          t1, s3, t2
                  sra          s1, sp, a5
                  and          s0, s1, s10
                  ori          ra, t1, -195
                  and          sp, t6, t4
                  sub          a0, sp, a4
                  andi         s10, s5, 414
                  sra          ra, ra, gp
                  auipc        a1, 192367
                  srli         a5, s1, 14
                  add          t1, sp, s11
                  srli         gp, s5, 18
                  srli         sp, s10, 24
                  sll          s3, s7, s11
                  sll          t4, t6, s2
                  slt          a1, gp, s11
                  auipc        s1, 466480
                  srai         a0, sp, 21
                  andi         a1, a4, 116
                  and          s11, t6, s5
                  sra          a5, a7, t5
                  xori         sp, sp, 432
                  and          s8, a6, tp
                  add          s0, s7, tp
                  xori         zero, a1, 1977
                  sltu         a0, s8, t0
                  xor          a2, t4, sp
                  xor          t3, s11, s8
                  and          s11, s7, s0
                  or           t0, s3, a6
                  sltu         t1, s9, s3
                  auipc        a7, 1023150
                  sll          a5, a2, a7
                  lui          s2, 1000973
                  auipc        ra, 222770
                  nop
                  addi         s2, s4, 804
                  andi         t3, t4, 556
                  xori         s0, a1, 534
                  or           a5, a5, s4
                  and          a6, s7, t4
                  auipc        a3, 126453
                  xor          sp, a4, sp
                  sub          zero, t3, a4
                  and          t0, s5, a5
                  lui          a0, 236008
                  xor          a2, sp, s7
                  ori          s3, s11, -1207
                  lui          a5, 66955
                  or           t5, t2, s7
                  srli         s0, t4, 18
                  auipc        a1, 458020
                  add          a4, gp, zero
                  and          s3, a6, a0
                  srli         a4, t6, 9
                  sll          a7, t2, t5
                  and          t3, a6, s5
                  slt          s2, s11, t5
                  slti         s6, s5, 846
                  andi         s2, a6, 1799
                  andi         t0, s2, 816
                  andi         a3, a0, 1264
                  and          a6, t2, s4
                  sra          t0, a1, s2
                  slt          t5, zero, s4
                  nop
                  sll          s9, tp, t4
                  lui          a5, 427015
                  xori         s3, a6, -958
                  lui          t0, 468253
                  srli         a2, s7, 22
                  slli         s3, t2, 14
                  addi         a7, t6, -1644
                  xor          s9, s8, t3
                  add          s11, tp, s0
                  or           s6, a4, a4
                  nop
                  slli         s11, s6, 11
                  sltiu        s3, a4, -100
                  slt          s3, s3, s10
                  nop
                  ori          s7, a2, 159
                  and          ra, s6, s5
                  xori         a4, a2, -1403
                  and          a7, t5, s6
                  sra          s2, a5, ra
                  sub          a4, a7, s7
                  nop
                  sltu         a7, a2, s5
                  srli         s6, s3, 9
                  sub          zero, t0, a4
                  srai         s6, s7, 18
                  auipc        s9, 425940
                  auipc        a7, 874120
                  auipc        a4, 31960
                  xor          t1, s5, s4
                  srai         t0, s9, 4
                  sub          sp, t1, a4
                  slli         s8, s2, 28
                  or           t5, s11, s0
                  slli         a5, s7, 18
                  slli         zero, s7, 5
                  sltiu        s3, t2, 851
                  or           a0, gp, s7
                  sra          a7, sp, s9
                  xor          s6, s11, t1
                  slt          a7, t3, a4
                  srai         s0, a5, 19
                  sltu         s8, sp, t5
                  slt          gp, t4, t6
                  sltu         a1, t1, a3
                  srl          a3, s2, a6
                  andi         a0, t5, 224
                  ori          s10, t2, -552
                  add          sp, a4, s11
                  nop
                  slt          s8, s1, a3
                  xori         zero, s10, 1818
                  add          tp, t5, t3
                  andi         s1, s9, -354
                  slt          s6, gp, a5
                  srli         s6, s9, 24
                  andi         zero, zero, 560
                  lui          s10, 726357
                  xor          s6, t5, s9
                  srli         a6, a3, 0
                  srai         ra, t5, 4
                  xor          a1, t1, s5
                  sltiu        a0, a5, -1785
                  sltiu        s9, s2, 1122
                  slti         t6, s8, 164
                  sub          a5, s11, t2
                  add          a1, s9, s6
                  sub          t1, sp, a3
                  ori          a4, s7, 1583
                  sll          ra, t0, a2
                  sub          s10, ra, sp
                  sra          t0, gp, a2
                  sltiu        sp, a5, -1288
                  sltu         a1, a4, a4
                  sra          s10, s1, s7
                  xori         t5, a0, 1195
                  addi         s11, tp, -316
                  ori          s2, s11, 267
                  lui          a5, 902836
                  sra          s6, s3, t2
                  slli         tp, s11, 23
                  sra          t1, s1, t6
                  add          s10, s4, s9
                  xor          s8, s7, s11
                  srl          a6, s9, t3
                  ori          gp, ra, -1548
                  addi         s2, t6, -712
                  sltu         s7, s1, s6
                  auipc        t0, 916090
                  slt          s9, t0, a4
                  sltu         s9, sp, s11
                  sll          a7, s3, t0
                  xor          t0, a2, a3
                  ori          a7, s4, -824
                  srli         s7, t1, 10
                  xori         t4, s10, 1967
                  sltiu        s1, zero, 1404
                  addi         zero, s5, -1935
                  sltiu        s8, a2, -1530
                  ori          s3, t6, -107
                  andi         gp, s2, -1568
                  nop
                  slt          t3, s3, a5
                  sub          s0, s5, t4
                  ori          a3, a7, 622
                  srli         a1, a2, 19
                  sub          s10, t5, a1
                  slli         a4, s7, 19
                  lui          a6, 275205
                  srai         s8, gp, 26
                  slli         a1, a4, 11
                  addi         a2, gp, 275
                  sll          tp, s3, s2
                  srl          a6, gp, t0
                  xor          gp, ra, s11
                  andi         s11, s1, 914
                  andi         s11, t0, 453
                  sra          sp, t2, s6
                  sltu         s11, s1, s2
                  srl          zero, sp, a0
                  slt          a4, s5, t3
                  sra          sp, s0, gp
                  sltu         s1, t0, t6
                  add          s10, s11, t3
                  srl          t5, t6, s4
                  srl          sp, s11, a2
                  xori         a1, s9, -96
                  slt          t3, gp, sp
                  slti         a1, s7, -768
                  sub          s10, s11, a4
                  slt          s1, s0, t0
                  slt          s8, s2, tp
                  slt          t4, t4, t5
                  or           zero, s9, t1
                  srai         t1, t2, 18
                  or           gp, s8, t4
                  slli         s7, s9, 7
                  sltu         a1, a7, t1
                  xori         s0, a7, -1221
                  srli         gp, t2, 18
                  srli         a5, s10, 0
                  ori          a1, t6, 852
                  add          a7, gp, a3
                  ori          s3, t3, -1550
                  sltu         a4, ra, t6
                  xori         s3, a7, -1926
                  auipc        a1, 208991
                  sltu         ra, a7, a3
                  and          s6, s8, ra
                  and          s10, s5, t5
                  sra          gp, s9, a7
                  auipc        s6, 77703
                  lui          t1, 451992
                  srli         a0, t6, 28
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           s6, 0x80000000
                  li           a2, 0x50a9ef8a
                  li           a7, 0xffffffff
                  li           a0, 0xffffffff
                  li           s8, 0x0
                  li           s11, 0x0
                  li           tp, 0x0
                  li           s10, 0xffffffff
                  li           s1, 0x80000000
                  nop
                  add          a7, tp, s11
                  sub          s6, tp, s10
                  lui          a0, 202299
                  auipc        a2, 58431
                  lui          s1, 950104
                  addi         s1, a0, -1136
                  add          s1, a0, a0
                  sub          a0, s1, a2
                  lui          s6, 953774
                  add          a0, s11, a2
                  add          s8, a4, s11
                  addi         a7, a2, 465
                  lui          s1, 420309
                  nop
                  nop
                  addi         s8, s8, 350
                  add          a2, s11, a2
                  auipc        s8, 333837
                  sub          s6, s8, tp
                  add          s6, a2, s11
                  auipc        a7, 895341
                  sub          s8, a2, s11
                  lui          a0, 936648
                  lui          a2, 392971
                  add          tp, s6, a2
                  addi         s6, s6, 1823 #end riscv_int_numeric_corner_stream_0
                  ori          t0, s2, 1137
                  andi         s7, a4, 1581
                  slti         tp, s6, -124
                  slt          ra, a0, tp
                  srli         zero, a7, 5
                  sltu         t5, sp, s7
                  sub          a4, s3, t2
                  add          t3, ra, s0
                  srai         s7, s3, 4
                  xor          a2, a0, s6
                  andi         a4, s11, 731
                  srl          a7, s8, zero
                  slli         t1, t0, 30
                  slt          a7, s10, a1
                  sub          t6, s11, s0
                  xor          gp, s11, s3
                  sub          t6, a6, a6
                  sll          s0, gp, s6
                  sra          tp, s5, a7
                  ori          s2, s4, 75
                  slli         a4, a1, 11
                  nop
                  xor          a2, sp, a6
                  xor          t6, a4, zero
                  slti         a4, s4, -1783
                  ori          s8, a7, -658
                  and          s11, s7, s1
                  andi         s2, a3, -1526
                  xor          a5, s11, sp
                  or           s10, a7, t4
                  and          t0, s7, t0
                  sltiu        a1, s8, -1066
                  sll          s3, a2, s11
                  srli         gp, a7, 9
                  auipc        a6, 1016737
                  sll          s9, s2, s3
                  lui          t0, 733087
                  lui          s3, 520087
                  sra          a4, tp, a6
                  slli         a1, a3, 4
                  srl          s11, s1, t3
                  slti         s10, s2, 29
                  or           t6, t1, a6
                  slt          sp, gp, a1
                  addi         a2, s8, 704
                  xor          ra, t1, a5
                  sll          s7, a7, zero
                  or           gp, s8, a0
                  sll          t4, s0, t0
                  add          a0, s0, t5
                  xor          a0, t5, s7
                  nop
                  slti         gp, a7, -88
                  sra          s2, a6, s5
                  xor          a3, t4, a6
                  srl          gp, a5, a0
                  add          a7, a3, s3
                  andi         ra, s8, -790
                  srli         t6, zero, 8
                  add          zero, s5, s8
                  nop
                  andi         t5, a4, 120
                  andi         ra, a7, 782
                  sltu         a6, a7, s8
                  or           s7, ra, t2
                  sltiu        t1, gp, -1162
                  sra          sp, s3, t5
                  srli         a0, t5, 17
                  auipc        s2, 236177
                  lui          t0, 218723
                  and          a4, a1, t1
                  slli         tp, s1, 9
                  auipc        s10, 468832
                  auipc        s2, 342772
                  srli         a2, a0, 6
                  and          ra, t2, sp
                  srl          s1, a1, s7
                  add          t6, s9, t3
                  lui          s3, 858015
                  slli         a6, t0, 14
                  xori         a3, a4, -1374
                  nop
                  slt          a2, a0, s6
                  addi         s2, a0, 708
                  lui          s1, 372092
                  auipc        t5, 122859
                  add          t4, t5, a7
                  andi         s2, a1, 1591
                  srl          s11, t2, t1
                  nop
                  and          gp, t5, s8
                  sltiu        zero, s5, 1868
                  sll          t4, ra, s2
                  lui          tp, 545379
                  slli         a4, t6, 15
                  lui          a1, 306472
                  xor          s7, t6, t6
                  sub          a7, t5, t1
                  xor          t6, zero, a5
                  sltiu        zero, t5, -2022
                  lui          t0, 737902
                  nop
                  sll          s6, zero, gp
                  and          s6, a0, a5
                  xor          t1, sp, s9
                  auipc        s6, 596987
                  xor          s11, a4, tp
                  sub          zero, s2, a7
                  srai         s11, s9, 18
                  sub          t3, a2, sp
                  slt          s0, sp, t2
                  srl          a2, s8, s8
                  auipc        sp, 58535
                  or           s3, zero, a0
                  add          s8, t3, t2
                  slt          s8, s7, t6
                  andi         s8, s5, -1885
                  sltiu        t1, s11, -1648
                  lui          t1, 176495
                  add          sp, s1, s8
                  lui          s6, 679228
                  lui          zero, 492575
                  xori         s10, t1, 369
                  srai         t5, t6, 3
                  and          t4, s4, s3
                  andi         gp, a0, 402
                  slt          s3, s8, s7
                  sltiu        a0, s10, -86
                  sltiu        s9, a5, -1027
                  srai         t4, s10, 17
                  ori          tp, tp, 71
                  sra          a5, a3, s7
                  and          s1, s1, t6
                  lui          a0, 169559
                  sltu         t6, s8, s9
                  srl          gp, s10, s1
                  sub          a0, s7, a3
                  srl          t1, zero, gp
                  nop
                  slt          s3, s8, t0
                  and          t0, a2, a0
                  slt          a6, s10, a1
                  lui          a7, 957807
                  auipc        s6, 269084
                  add          s7, t5, ra
                  andi         a1, a1, 1018
                  sll          tp, s10, s2
                  xor          a1, a3, t5
                  sltu         s3, s7, gp
                  sltu         s2, s2, s3
                  and          sp, t6, s10
                  sltu         s8, t6, s0
                  add          s11, s8, s9
                  xori         a2, ra, 184
                  or           s6, t1, s1
                  sub          s1, a0, s4
                  xor          s2, t1, a4
                  srli         s2, s3, 23
                  or           a7, a7, s2
                  srli         a2, a2, 30
                  sra          a5, s3, sp
                  slti         s0, s7, -674
                  srai         tp, s3, 9
                  xori         a0, s3, 1771
                  add          s9, tp, s1
                  or           s3, s10, a6
                  addi         gp, s1, 1355
                  or           a7, s0, s3
                  srl          ra, s2, a2
                  sra          a0, t6, t4
                  nop
                  addi         a6, gp, 1208
                  sub          s8, zero, a0
                  xori         s8, t5, 1074
                  or           gp, t3, t3
                  andi         a4, a4, 871
                  slt          a1, zero, a4
                  slt          s10, s5, a7
                  slti         a2, s9, -959
                  addi         a1, t6, 2012
                  lui          a6, 329354
                  ori          t6, gp, -688
                  sltiu        gp, sp, -1847
                  srl          t3, t0, s3
                  sll          s6, a7, t4
                  sltiu        s3, gp, 1189
                  slt          s6, zero, s7
                  lui          a6, 792190
                  andi         a2, s6, 1114
                  lui          s6, 702726
                  add          sp, s7, a1
                  sltiu        a1, t3, 421
                  nop
                  xor          a6, a7, s5
                  srai         t0, gp, 11
                  andi         s9, s2, 580
                  andi         s10, a0, -590
                  sltiu        s1, a1, -433
                  add          gp, a3, s11
                  or           tp, a5, a7
                  or           t3, sp, a7
                  slt          t5, a5, a6
                  addi         a3, t1, 130
                  sra          gp, a3, s9
                  slli         a6, a4, 13
                  lui          a0, 769520
                  add          a7, t6, s9
                  xori         a1, gp, 1311
                  nop
                  slti         t3, s3, 274
                  auipc        a1, 795415
                  or           t0, a6, a5
                  srl          s11, s7, s5
                  sub          a4, s9, t5
                  addi         s1, a7, 1102
                  and          t4, tp, a7
                  auipc        a2, 183038
                  nop
                  xori         t0, a0, 354
                  ori          s0, a3, 187
                  sll          gp, s3, gp
                  add          t0, t5, t4
                  sra          zero, s2, t6
                  sra          s3, t4, s5
                  srli         sp, a4, 17
                  srai         s3, t2, 24
                  or           a2, a4, s6
                  xori         s1, ra, 1723
                  andi         s2, s4, 165
                  sra          t0, s10, t5
                  add          a3, a0, t6
                  andi         zero, a3, -613
                  ori          gp, a3, 553
                  sll          s2, gp, a2
                  slli         s0, gp, 25
                  slti         sp, zero, -363
                  srai         zero, a0, 4
                  srai         tp, t6, 12
                  sub          gp, ra, s3
                  sll          gp, s3, s10
                  auipc        tp, 152942
                  srai         a0, s7, 21
                  sltu         s8, tp, s1
                  xori         s1, a1, 637
                  sra          s10, s9, a6
                  sub          t0, t6, s7
                  xori         s1, gp, -1335
                  sltiu        s2, ra, -1404
                  xori         s7, sp, -59
                  ori          a1, s11, -782
                  sltu         s8, a2, a4
                  srl          sp, s2, a2
                  srli         t3, s7, 6
                  sra          s7, s7, t2
                  xor          s0, a2, a1
                  sltu         a7, s5, s4
                  xor          a5, t1, t0
                  and          t0, t1, a5
                  slti         s6, s2, 1963
                  auipc        s0, 518255
                  sltu         s10, zero, a5
                  srli         t6, a2, 8
                  auipc        a3, 567978
                  ori          s1, tp, 1255
                  lui          gp, 1008630
                  srai         zero, s8, 28
                  srl          s9, a5, s8
                  xori         gp, a1, -1497
                  sub          a5, s3, s7
                  and          gp, a2, s6
                  slti         s1, s2, -850
                  sub          s9, s6, a3
                  addi         s7, t4, -555
                  xori         s7, a6, -952
                  sub          s2, t1, s6
                  slt          gp, s3, gp
                  addi         t1, zero, 1101
                  and          s8, s3, s10
                  xor          s3, a5, s5
                  slli         gp, t3, 11
                  slli         a4, s4, 23
                  sll          t6, a3, s7
                  sltiu        t1, gp, -1744
                  lui          a6, 928314
                  addi         a6, t3, -274
                  xor          a3, a1, s5
                  xori         s7, t5, -1623
                  slti         a2, ra, 1775
                  slti         t5, t1, 966
                  and          a0, t0, t2
                  slli         gp, sp, 29
                  slt          a3, a3, t0
                  sra          s7, a1, s8
                  sll          s8, s4, sp
                  srli         sp, sp, 27
                  sll          s0, zero, s10
                  addi         a3, sp, -1603
                  add          a5, s6, s10
                  sltu         t4, a3, a5
                  sll          s10, s10, s11
                  slli         t1, a5, 19
                  slli         a3, tp, 27
                  sra          t0, a2, s11
                  or           s0, a5, s9
                  xor          s6, s2, t2
                  ori          s3, t4, 307
                  srli         a1, sp, 7
                  sltu         gp, ra, s4
                  auipc        s11, 270588
                  sltu         a3, a6, s6
                  add          ra, s1, t5
                  add          sp, t0, s7
                  srl          a2, s4, s10
                  nop
                  ori          a7, tp, 2038
                  sll          s0, a3, s7
                  andi         t4, a2, -1157
                  sub          t6, t0, s7
                  ori          t6, s4, 1864
                  lui          a6, 983652
                  sll          zero, s10, s5
                  sltu         s1, s0, t3
                  and          t1, s9, a2
                  ori          s9, s3, 1754
                  sra          a0, t5, a5
                  nop
                  xor          t1, t1, s10
                  sub          s11, s2, t6
                  add          s11, s7, a5
                  srl          s6, s6, a3
                  andi         a0, t6, -1613
                  nop
                  sub          a5, s5, t4
                  nop
                  srai         s8, a3, 8
                  xor          a4, tp, ra
                  auipc        ra, 879707
                  slti         a6, t6, -1342
                  xor          s11, a1, ra
                  and          s8, t1, s10
                  srli         gp, ra, 23
                  sra          s8, zero, zero
                  or           a1, s0, a2
                  slt          a2, zero, s3
                  nop
                  slt          ra, t1, a7
                  sltiu        tp, s7, 1560
                  nop
                  sll          ra, s2, s7
                  and          s1, s1, s0
                  lui          s2, 110074
                  srl          s8, s2, tp
                  sra          a3, t2, s7
                  slli         t6, tp, 0
                  andi         s11, a6, -57
                  sltiu        t6, s5, -1726
                  xor          gp, t1, t3
                  xori         s8, tp, -1146
                  ori          s0, s0, 1398
                  addi         zero, t3, -1189
                  xori         s7, s3, -1887
                  addi         t5, a6, -339
                  slt          zero, ra, t0
                  sltu         tp, a3, t1
                  andi         gp, t2, 329
                  srli         a3, t6, 5
                  ori          zero, s2, 861
                  slli         a4, t1, 18
                  andi         t0, t0, -227
                  addi         t1, a4, 1684
                  sub          t1, a7, ra
                  andi         a5, gp, 1804
                  sub          t0, a3, a7
                  and          t0, s4, t2
                  andi         t4, t0, 569
                  srai         a4, s5, 8
                  add          gp, s1, s6
                  xor          s1, s1, s9
                  or           s3, a0, a1
                  sltu         ra, a1, tp
                  sltu         s7, s2, s2
                  addi         s7, ra, 1343
                  nop
                  add          s7, s3, s9
                  srl          a1, ra, sp
                  srai         sp, a2, 28
                  srl          a1, gp, s6
                  xori         a0, sp, -541
                  srli         s9, s4, 29
                  xori         a4, a0, 53
                  sra          t3, t3, s10
                  xor          a5, t5, sp
                  sll          a1, s7, s0
                  sub          a2, t6, a4
                  sll          s2, t4, s11
                  sub          t0, s9, s9
                  or           t4, s6, a7
                  slli         s3, a0, 11
                  srl          gp, a1, a2
                  srli         s9, s8, 15
                  sltiu        zero, s5, -137
                  sltiu        s6, s6, -1180
                  srai         t3, s2, 27
                  slt          a3, s5, s0
                  sltu         a4, t2, s8
                  nop
                  slti         s1, tp, 406
                  slt          t1, s0, s3
                  sltiu        s10, a3, -1510
                  add          gp, a5, gp
                  andi         t1, s4, 1104
                  nop
                  slti         a0, s9, -939
                  slt          a1, a4, t6
                  xori         a0, s0, -1575
                  xor          t0, t3, sp
                  sll          a4, t2, s7
                  sltu         s1, s5, tp
                  andi         a7, s7, 987
                  addi         s1, s3, -963
                  srli         s0, t6, 19
                  srli         a1, s2, 27
                  srli         t6, s5, 29
                  andi         s11, s9, 1089
                  add          t5, a4, t1
                  xor          a3, a7, s0
                  slli         t5, t3, 18
                  auipc        s3, 835519
                  sll          t0, a1, s0
                  add          a5, s9, s6
                  sltu         s8, a4, s2
                  srai         s8, a4, 13
                  lui          t5, 153055
                  sll          t0, s4, s11
                  srli         t4, s4, 24
                  andi         t1, s8, -1709
                  slt          t3, s0, s2
                  lui          a0, 675638
                  sra          a3, s0, a4
                  auipc        t4, 978365
                  and          s6, tp, s10
                  srl          a0, s7, a6
                  sra          t4, zero, s3
                  sltu         a5, a3, a3
                  xori         a0, s10, 262
                  add          s7, s7, s11
                  add          t5, s9, t0
                  addi         t5, s7, -193
                  sra          t5, t0, s7
                  xor          s7, zero, t2
                  slt          a5, s9, tp
                  sltu         s3, a7, gp
                  srli         t6, a1, 22
                  auipc        s11, 350408
                  addi         s2, s11, -1091
                  sltiu        a2, s4, -863
                  and          t4, t1, s9
                  srli         s2, a0, 26
                  slli         t0, t2, 30
                  sra          s7, s1, ra
                  slti         sp, a5, 85
                  or           s1, s5, t1
                  xor          a1, t6, s4
                  slti         s2, t1, 635
                  xor          s10, s5, s8
                  lui          t6, 252246
                  addi         s10, t4, -1824
                  lui          tp, 251651
                  xori         a5, s5, 1207
                  ori          s1, a4, 1922
                  add          a5, t4, s2
                  slli         s1, sp, 4
                  slt          s7, a6, gp
                  ori          s10, sp, -597
                  sra          s1, s5, s2
                  or           s8, t6, a0
                  lui          a6, 285071
                  srai         a7, a7, 24
                  srli         t3, t2, 22
                  sltiu        s1, a0, -1280
                  srl          a5, a3, s10
                  ori          s10, s6, -133
                  lui          s11, 220545
                  srli         t4, t0, 11
                  nop
                  slti         s2, t6, 1585
                  addi         gp, s6, -162
                  and          t3, a1, t0
                  srl          s11, zero, t2
                  slt          s10, s5, a3
                  andi         a2, t2, -1367
                  xori         s9, t0, -1710
                  nop
                  slt          a1, a4, ra
                  srli         a5, a3, 7
                  ori          a1, t3, 201
                  slti         s0, s3, -1056
                  sll          t3, s10, s6
                  sltu         s1, t3, a7
                  xor          t0, ra, sp
                  ori          a2, a0, -95
                  sra          a5, t0, a6
                  ori          t3, tp, 1255
                  srai         s0, s9, 27
                  sltu         a3, t4, sp
                  nop
                  srai         a0, s7, 13
                  sra          a6, a7, s1
                  srl          s3, t2, sp
                  lui          s11, 143644
                  nop
                  slli         zero, s3, 12
                  nop
                  add          tp, a6, s1
                  addi         t6, s9, -763
                  srli         a7, t5, 20
                  srli         s7, t2, 26
                  sltiu        zero, t4, 480
                  or           a2, s5, t6
                  xori         s8, t4, -1804
                  ori          s9, a5, 285
                  addi         a2, s4, 1960
                  sltu         a2, gp, tp
                  slt          a0, ra, t5
                  or           s3, s3, a7
                  add          s11, s1, a1
                  auipc        s9, 379825
                  sltu         t1, tp, a0
                  addi         s3, s2, 866
                  slli         s7, s3, 28
                  or           s7, t4, s1
                  addi         s7, s3, 268
                  xor          a5, a6, s1
                  srl          zero, ra, a3
                  auipc        gp, 615890
                  lui          s7, 749711
                  sub          s8, s7, s0
                  xor          t1, ra, a6
                  slti         a2, ra, 1813
                  nop
                  lui          t3, 17198
                  xor          zero, a1, s8
                  sub          t0, s3, a5
                  sub          ra, a2, zero
                  and          a3, s10, a3
                  srl          s10, s6, s5
                  srl          s7, s1, s5
                  lui          gp, 457494
                  xor          a0, sp, s7
                  add          a0, s8, a6
                  and          a0, s7, t3
                  or           a7, t5, t2
                  sub          s6, tp, a6
                  and          t4, a5, a5
                  lui          t0, 864864
                  srai         s8, s4, 13
                  ori          t1, s6, 1980
                  and          s3, t4, t1
                  and          s10, s8, s5
                  sra          a7, zero, a2
                  srai         s9, a4, 30
                  xor          zero, t3, t4
                  slti         s10, t3, -2023
                  andi         a3, s7, 971
                  slti         s10, s4, -358
                  slli         s1, ra, 19
                  xori         a6, s5, 496
                  sll          t4, t6, t1
                  sltu         t1, a3, a0
                  slti         s1, s7, -22
                  slli         a4, s10, 17
                  ori          a4, a2, -730
                  add          t1, s10, a1
                  srai         s6, gp, 18
                  sll          t1, s11, s3
                  andi         s2, t5, 1294
                  lui          s7, 566284
                  srl          t6, a6, t5
                  sub          s10, a0, tp
                  sub          s9, s2, t6
                  slli         a0, t3, 13
                  or           s0, a7, gp
                  sra          t3, s11, s0
                  and          s1, s10, t6
                  auipc        a6, 547533
                  srl          a6, s7, s7
                  sll          t5, t3, sp
                  addi         s7, sp, 1861
                  slt          s6, a7, s4
                  nop
                  xori         s8, a1, 679
                  sll          a7, a1, s5
                  addi         t6, a6, 1180
                  slti         s6, zero, -884
                  srai         a7, a7, 25
                  srai         t6, tp, 21
                  sra          s6, t2, gp
                  sltiu        t3, t1, 652
                  sub          s0, tp, zero
                  slt          s9, t2, t4
                  or           a2, t4, s11
                  lui          t3, 225542
                  nop
                  sltiu        a7, a1, -52
                  sltu         s3, tp, t4
                  sll          s7, s5, s1
                  sltiu        t6, a6, 619
                  sll          a2, a5, a7
                  sltu         a4, tp, s11
                  srai         a4, a7, 2
                  slt          gp, s0, a2
                  xori         t6, s0, -850
                  auipc        s9, 437202
                  andi         a5, t4, 133
                  auipc        a1, 673154
                  sra          s6, zero, s2
                  addi         a4, s11, -154
                  ori          zero, a7, 1795
                  sll          a2, a5, s0
                  xor          s0, s8, s9
                  ori          a1, s3, -1058
                  lui          a4, 155386
                  auipc        gp, 742126
                  ori          s0, a2, -1459
                  or           s1, a6, zero
                  xor          s10, s2, s5
                  sll          s8, s9, a1
                  nop
                  sub          s11, a6, a5
                  sra          a1, t0, sp
                  slt          t3, a4, a4
                  srl          s7, t5, a2
                  xori         a7, s5, 1641
                  xor          s9, a2, s11
                  slti         a4, a2, 791
                  sub          s3, a0, t2
                  ori          s2, t2, 1539
                  srl          s8, t1, s2
                  xor          a0, t4, a3
                  xori         a3, s9, -1591
                  slti         s11, s9, 660
                  slli         t4, s3, 25
                  sub          t3, a3, a0
                  srli         t6, s3, 21
                  lui          s6, 298770
                  srl          t3, a6, s5
                  xori         a4, t1, -974
                  sltu         s3, s11, a3
                  xor          a0, t2, t4
                  sltu         ra, s0, gp
                  srl          t6, ra, s3
                  or           a3, s4, s8
                  srai         s3, s3, 31
                  sltiu        a4, s10, 1975
                  xor          s9, t3, s8
                  lui          a3, 954785
                  sltiu        s0, zero, -964
                  or           ra, s0, a1
                  or           s1, t1, t0
                  slli         zero, s2, 2
                  srai         a2, zero, 26
                  ori          t4, a6, -1153
                  srai         a1, sp, 0
                  nop
                  sltu         s9, sp, t4
                  srai         a4, sp, 28
                  lui          ra, 224138
                  nop
                  sll          gp, s1, a3
                  nop
                  slt          t0, s2, s10
                  sll          s0, s5, a2
                  addi         a5, t6, 900
                  slt          s2, s7, s8
                  andi         a2, sp, -998
                  sltiu        a2, tp, -1293
                  slti         s7, s7, 849
                  srai         a7, a7, 23
                  srl          t4, s0, gp
                  nop
                  ori          gp, t5, 1249
                  sra          s6, zero, s10
                  sltu         t6, sp, s11
                  add          s1, a7, s6
                  andi         s2, t6, 1109
                  lui          s9, 867023
                  lui          s10, 620771
                  slt          t6, s11, gp
                  sll          s9, t0, a3
                  sltu         zero, a3, a2
                  ori          t1, s8, -1266
                  srai         a0, t5, 14
                  srl          s0, a3, a2
                  or           s11, a1, s2
                  slt          s9, t4, a5
                  or           sp, t5, t6
                  addi         s10, t0, 205
                  srai         s11, s3, 12
                  nop
                  nop
                  add          ra, a5, s11
                  slt          gp, s0, s7
                  srai         s7, t3, 26
                  sltu         s8, t1, a2
                  slt          t6, s3, sp
                  slli         a5, a6, 12
                  srl          t0, s3, a7
                  nop
                  sltu         a4, a5, a0
                  ori          s6, a0, 1615
                  add          s0, s3, t2
                  or           sp, s3, a7
                  lui          s6, 159358
                  xori         s6, s8, 429
                  and          a4, s5, s3
                  slli         s6, t5, 12
                  andi         s8, s4, 31
                  auipc        s8, 46765
                  srli         t4, gp, 28
                  srli         t6, s11, 19
                  slti         s7, t1, 1980
                  ori          a0, s11, -698
                  sltu         s6, t6, s0
                  auipc        a0, 16179
                  xor          s7, gp, tp
                  slti         s0, s3, -423
                  nop
                  lui          s9, 563841
                  ori          s0, t5, -1938
                  nop
                  or           a7, a7, s3
                  slti         a5, s4, 1357
                  nop
                  slt          a3, t3, a2
                  addi         a1, t6, 880
                  addi         a7, s6, -856
                  sll          t1, t2, t5
                  addi         s7, a2, -1450
                  slti         a6, s3, -1725
                  slti         s7, a0, 1769
                  and          zero, a6, sp
                  sll          s8, t6, s4
                  lui          tp, 434465
                  addi         s10, ra, 885
                  add          t1, s2, s8
                  xor          s2, s11, t4
                  sll          s8, a5, s10
                  sra          s2, a4, ra
                  andi         a3, t3, 1847
                  ori          s7, a0, -354
                  sltu         s11, s3, t6
                  or           a5, a5, a6
                  srai         zero, a6, 22
                  srli         s2, s0, 2
                  nop
                  sltiu        a5, s5, 302
                  srli         a1, s11, 9
                  add          t6, t3, tp
                  xori         t5, a5, 1126
                  or           s2, gp, a5
                  srli         s8, s1, 26
                  or           t1, a5, s11
                  andi         a1, s3, 2011
                  xor          t3, s5, t2
                  add          sp, t4, a0
                  sltiu        t3, a6, -1178
                  sub          a0, s0, t6
                  sltu         s1, sp, t3
                  sra          a7, t5, a4
                  auipc        s1, 366233
                  and          s9, a3, t3
                  or           tp, s10, s10
                  nop
                  lui          t3, 799837
                  slli         a0, a6, 16
                  slt          s9, sp, tp
                  add          t6, s5, a1
                  srl          sp, s3, a0
                  slt          gp, s0, t5
                  slt          s1, s5, s10
                  nop
                  add          s8, a6, t0
                  or           zero, a6, a0
                  ori          a5, s8, 1869
                  andi         sp, tp, 956
                  ori          t4, s1, -2025
                  slti         a6, gp, 1833
                  xor          s10, s11, a6
                  srai         a3, tp, 19
                  sltu         s6, s11, s10
                  slli         sp, tp, 7
                  lui          s2, 735393
                  add          a0, gp, s7
                  slli         s3, s1, 5
                  add          s2, tp, a3
                  slli         a4, s9, 0
                  sltiu        s2, s4, 1798
                  auipc        t3, 53367
                  ori          s11, a1, -1965
                  srl          t6, s3, s0
                  sltiu        t1, s10, 1814
                  andi         s3, a6, -1659
                  andi         ra, s0, -1181
                  xori         a6, s2, 1226
                  xori         a5, t0, 1831
                  sltu         t0, a6, t5
                  add          t5, a6, ra
                  sltu         a0, t0, a0
                  xor          s11, s8, a2
                  slt          s3, t6, t1
                  nop
                  srl          gp, a3, t1
                  srai         t5, a4, 29
                  srai         t0, s1, 16
                  lui          ra, 993224
                  nop
                  sll          a1, a4, t0
                  ori          t0, s3, 388
                  nop
                  ori          s3, a3, 1321
                  nop
                  or           t1, t2, gp
                  add          a0, s6, a7
                  auipc        a4, 800934
                  srli         t0, a1, 17
                  srai         t3, a5, 21
                  sltiu        gp, t6, 1255
                  addi         s8, t4, 640
                  slti         s6, s10, -155
                  or           t5, a6, a4
                  xor          t6, s5, ra
                  and          s9, t6, s11
                  sltu         t1, t4, t4
                  add          a1, a3, t2
                  sub          s0, s2, ra
                  slli         s2, t0, 3
                  slt          s3, s9, s6
                  srl          ra, gp, gp
                  xor          s10, s11, a6
                  nop
                  auipc        s1, 149516
                  addi         s7, s10, -1893
                  sub          t0, t4, s7
                  xor          s6, t1, a6
                  lui          t1, 900088
                  auipc        s6, 193690
                  sltiu        s2, sp, -420
                  slti         s3, s11, -1974
                  ori          a2, a3, -235
                  srai         s3, a3, 7
                  sub          ra, t2, t3
                  srl          t0, t6, s11
                  xori         a2, a5, 517
                  sra          t0, a1, a2
                  srli         a1, s7, 18
                  andi         s3, gp, 957
                  sub          s2, a7, t4
                  sub          s6, s5, a3
                  ori          gp, a1, -66
                  nop
                  xor          s1, ra, a4
                  srli         s1, s8, 11
                  sltu         a0, s3, zero
                  slli         s7, t0, 31
                  and          s3, a7, s11
                  slli         t6, s1, 0
                  xor          a3, a1, s10
                  and          s8, a5, t2
                  srli         s8, gp, 12
                  xor          s3, t3, a0
                  ori          ra, a3, 1712
                  sltu         s7, sp, s6
                  slt          s6, a2, t0
                  sltiu        s3, tp, -1912
                  ori          t6, s5, -530
                  auipc        a6, 198301
                  xor          s1, s9, gp
                  xori         s9, a1, 273
                  sub          s8, a0, a0
                  srai         tp, t4, 20
                  sub          a5, t6, a6
                  sltiu        s7, a6, 1406
                  slli         t0, t1, 25
                  slti         s9, t6, -313
                  addi         a1, a4, 215
                  sltu         a0, s2, s6
                  lui          s7, 861563
                  xori         s10, s1, 1461
                  sra          a2, a1, tp
                  sltu         s1, t4, t4
                  auipc        s6, 788307
                  addi         sp, t3, 761
                  sub          zero, a7, s6
                  xori         a3, a4, 1961
                  sll          s1, t0, s6
                  andi         t3, ra, 2005
                  slti         s8, t0, -1059
                  srai         s3, sp, 12
                  and          a6, a2, t1
                  slt          t5, s7, s9
                  andi         zero, a5, -346
                  slt          tp, gp, a5
                  sll          s9, t4, s0
                  lui          a4, 885286
                  slt          a2, gp, s6
                  sltu         a7, s4, zero
                  slt          ra, s7, s10
                  auipc        a2, 454279
                  sll          a3, a1, gp
                  sra          tp, t2, a1
                  sltu         s2, s9, s8
                  auipc        a7, 630759
                  or           t5, s10, a6
                  slli         s8, t3, 31
                  srli         t6, gp, 12
                  or           s1, s4, zero
                  ori          s7, sp, -1764
                  slli         t6, a6, 2
                  srli         a5, a2, 18
                  or           s11, a7, s7
                  sltiu        s9, s5, -844
                  ori          s8, s9, -460
                  auipc        a0, 475829
                  sll          s3, t4, a0
                  sltu         t1, zero, t5
                  sltiu        sp, s9, -1500
                  sltiu        s0, s1, 667
                  slli         s9, s0, 11
                  sub          sp, s2, t5
                  addi         gp, tp, 676
                  xor          t5, t4, a4
                  auipc        s3, 1005922
                  andi         a3, t2, 1720
                  or           s1, s3, t0
                  lui          s2, 282029
                  slti         zero, s7, -1953
                  sub          ra, zero, s11
                  and          s3, sp, s10
                  sra          a7, s1, tp
                  sub          s11, s8, tp
                  slli         a3, a0, 5
                  xori         s10, s11, 1678
                  xori         s9, ra, 1806
                  sra          s9, a2, s2
                  sll          s0, a0, s0
                  add          ra, s10, s7
                  sltu         t3, s0, a3
                  andi         a7, zero, 1098
                  and          tp, s0, s0
                  sltu         t1, s9, s2
                  srl          s7, a5, s2
                  xor          s1, a0, a4
                  srai         t4, s8, 5
                  sll          s7, sp, t2
                  srai         s2, a6, 31
                  xori         s6, s3, -1855
                  sll          t5, a1, s7
                  addi         gp, s9, 668
                  auipc        a6, 402118
                  sra          a3, gp, a3
                  and          t4, t3, gp
                  andi         s2, a5, 496
                  nop
                  sll          gp, ra, tp
                  addi         s10, a0, 376
                  sra          a7, s2, t6
                  and          s7, a2, s0
                  slt          s2, a6, tp
                  add          s10, a1, a2
                  and          t0, ra, s4
                  nop
                  sltiu        s2, a4, 2011
                  slli         t5, s1, 15
                  add          t1, a6, t5
                  sra          s2, zero, t2
                  sub          tp, s5, t2
                  sll          t1, s2, s9
                  srl          gp, s1, t2
                  lui          gp, 612088
                  srai         t6, s5, 30
                  xor          a0, a6, t0
                  nop
                  or           t3, s2, t6
                  slti         s6, zero, -1020
                  nop
                  addi         t4, ra, 342
                  slti         s8, a2, 809
                  srai         tp, s9, 26
                  nop
                  slt          s9, s2, a6
                  ori          s8, t0, 802
                  sll          t3, t2, s9
                  slli         a3, s9, 20
                  srl          a2, sp, t5
                  slli         a2, ra, 8
                  sll          a6, s8, s9
                  slli         s2, sp, 28
                  auipc        a3, 224818
                  slti         sp, s11, -1522
                  ori          s11, a4, -387
                  andi         t1, s2, -1616
                  sltiu        t0, t6, 705
                  and          a4, t0, s4
                  auipc        t1, 765255
                  sltu         a3, a4, a5
                  sub          a1, t5, t1
                  sub          tp, t6, a7
                  sra          s2, a6, a3
                  sltiu        tp, gp, -699
                  lui          t0, 811851
                  sub          a1, s6, s6
                  slti         t5, s4, 664
                  addi         zero, a6, -1195
                  slli         s8, s7, 18
                  xori         gp, ra, -921
                  and          a3, a1, a0
                  sra          a1, s1, a2
                  sra          a7, zero, t4
                  slli         s7, s3, 4
                  sra          t1, s2, s6
                  ori          tp, a2, -1778
                  addi         s1, s1, 2027
                  slti         t3, s10, -1313
                  srli         s9, t0, 16
                  or           s6, t6, a5
                  auipc        tp, 938644
                  xor          s9, t0, s6
                  slli         a4, a1, 13
                  sll          a0, s5, t6
                  andi         ra, zero, -491
                  sltiu        s1, t4, 1570
                  lui          t1, 829943
                  lui          a1, 965718
                  or           a0, tp, a3
                  sltu         a1, gp, s10
                  slt          a2, a7, s4
                  slti         s3, a0, 1185
                  srli         s11, a6, 25
                  ori          s1, ra, -1881
                  add          gp, sp, t2
                  slt          t4, a4, t1
                  slli         s0, a7, 8
                  slli         a3, tp, 3
                  srai         s7, t6, 1
                  auipc        ra, 822732
                  slli         a0, s10, 14
                  slli         s2, s1, 0
                  sra          a2, t0, t0
                  auipc        a2, 994083
                  srli         s1, gp, 24
                  sltu         gp, a1, s8
                  srli         s10, a1, 5
                  andi         a6, s8, 1373
                  sub          s2, s0, s9
                  srl          t4, a7, t6
                  ori          s3, s7, -860
                  sll          t5, s9, t4
                  ori          t6, a0, 96
                  sub          s2, t5, a1
                  nop
                  sub          sp, a0, t4
                  nop
                  srl          a0, s1, a2
                  srai         tp, t5, 17
                  nop
                  add          t6, a5, s9
                  ori          sp, a6, -258
                  or           s10, tp, t0
                  sub          s10, t5, s1
                  sltu         a5, s11, sp
                  sltu         t5, a2, a2
                  slt          ra, t6, s1
                  slli         s2, s9, 20
                  addi         s0, a6, -560
                  srl          a1, t3, s3
                  and          a6, s3, sp
                  or           s8, a5, a6
                  nop
                  xor          s3, t4, a1
                  ori          a7, t1, 998
                  sltu         s3, a1, s7
                  slt          a6, s9, a5
                  add          t6, s1, a1
                  srl          s3, t4, a6
                  slli         s2, t3, 10
                  slli         s10, s5, 24
                  sub          ra, t6, a6
                  auipc        a4, 860402
                  auipc        s7, 782330
                  ori          t3, s0, -157
                  xori         t0, t6, -735
                  xor          s2, t5, ra
                  slt          s9, t1, t5
                  srai         s9, tp, 8
                  xori         t3, t4, -666
                  sub          s11, a5, t6
                  sltu         a4, s9, a2
                  auipc        a2, 722421
                  andi         a6, s9, -469
                  sltiu        a6, s3, -1902
                  sub          t4, a7, s0
                  slti         a6, s10, 1014
                  sll          tp, t3, s7
                  srai         s3, t5, 15
                  auipc        s7, 55711
                  srl          s2, a4, s9
                  sll          a2, t0, gp
                  srl          s10, gp, sp
                  sll          s11, a3, t2
                  slti         a0, t0, -1354
                  sltiu        s6, a2, 1971
                  add          ra, s7, s1
                  add          ra, zero, t3
                  xori         a4, s8, -34
                  slli         a7, a2, 16
                  slti         a2, s10, 194
                  nop
                  sra          s10, gp, ra
                  add          s0, s9, s11
                  srl          t0, a7, t3
                  sra          sp, s3, s1
                  sll          sp, a7, t0
                  slti         s10, s6, 596
                  slti         s0, s9, -1873
                  nop
                  slt          t4, s5, s7
                  sra          s9, s3, a4
                  add          s6, a0, t0
                  sltiu        t4, s1, 496
                  xori         a0, s1, -1299
                  xor          s6, s0, s3
                  and          s10, a7, tp
                  sub          t1, s3, s9
                  slti         a1, a5, 1302
                  xor          t6, a1, a4
                  sra          zero, s11, zero
                  addi         a1, t0, 1949
                  srai         a6, s3, 15
                  sll          s3, s3, tp
                  sub          a7, t4, s0
                  xor          s11, a4, s7
                  xor          s11, a7, sp
                  srl          a4, a7, t2
                  slli         s11, t6, 16
                  nop
                  nop
                  ori          s6, t3, 763
                  sltu         s1, a5, sp
                  auipc        zero, 19737
                  add          t5, a2, a7
                  addi         ra, s4, 1174
                  sltu         a5, s3, t3
                  slt          s7, s9, sp
                  slti         a4, s9, -1625
                  slti         sp, t4, 181
                  andi         s2, a7, -931
                  andi         t0, s3, 762
                  sll          t6, s11, a7
                  addi         s3, sp, -908
                  srai         s11, s9, 24
                  nop
                  add          s0, s8, t1
                  srai         s3, t1, 26
                  xor          t4, s7, a5
                  srli         gp, a3, 29
                  auipc        s8, 384599
                  andi         t6, s10, -439
                  srai         t5, t5, 5
                  auipc        a2, 968259
                  add          tp, s6, zero
                  nop
                  sub          s0, s4, gp
                  srai         s1, a7, 27
                  sltu         sp, t1, s11
                  sltiu        a6, a5, 187
                  and          t5, ra, a2
                  srl          s0, s0, a2
                  slt          s11, t2, sp
                  slli         gp, s6, 26
                  ori          a4, t6, -1585
                  auipc        a0, 3608
                  andi         s9, t5, 511
                  sll          gp, a6, s8
                  or           t4, a7, s11
                  slti         s3, s9, 1665
                  slt          t6, a3, s4
                  srl          t5, s9, s0
                  xor          s8, sp, t2
                  nop
                  xor          t6, t3, a6
                  ori          a3, s11, 578
                  xor          sp, t4, t3
                  lui          sp, 976107
                  srl          s11, t2, a4
                  sra          s8, a1, s11
                  auipc        t3, 1026051
                  srai         s11, a2, 1
                  addi         tp, t2, -871
                  slti         s9, s8, 793
                  slli         gp, s3, 17
                  srl          tp, s5, t3
                  sub          a3, s8, s7
                  srli         t1, t0, 19
                  auipc        t1, 432422
                  sltu         t5, ra, s3
                  slli         t1, s3, 11
                  slt          t4, zero, t4
                  add          s11, t3, s4
                  slti         t0, s6, -414
                  auipc        a1, 474511
                  addi         a7, s6, 1592
                  add          s2, a2, t1
                  ori          s9, s0, -260
                  lui          a0, 438312
                  nop
                  add          s6, s9, s0
                  nop
                  sll          gp, s3, t3
                  lui          a2, 346100
                  srl          s9, s11, s2
                  andi         t6, a6, 476
                  xor          s3, a0, ra
                  add          t4, s4, s10
                  slt          ra, t3, t6
                  sltu         s1, a0, s0
                  lui          s6, 451648
                  sub          t3, t2, a0
                  slti         t5, a5, 1294
                  and          t5, sp, t3
                  sub          t4, s7, a6
                  nop
                  add          s8, s4, zero
                  xor          a0, s7, s10
                  sub          s6, sp, t2
                  slti         s8, s11, 64
                  sub          a7, a1, a7
                  addi         t0, t4, -1973
                  lui          a5, 662362
                  slli         zero, tp, 28
                  auipc        s7, 1043414
                  and          s6, zero, a5
                  lui          tp, 870287
                  andi         s1, s2, -241
                  addi         t6, a4, 633
                  or           tp, zero, ra
                  add          s0, zero, a1
                  xori         a6, tp, 992
                  srl          s10, t4, ra
                  srli         t5, s6, 15
                  srl          a7, a1, a5
                  andi         s3, a1, 148
                  slli         s11, s8, 2
                  andi         t6, s7, -1391
                  srl          t4, a4, s0
                  li           s6, 0xac3262a4 #start riscv_int_numeric_corner_stream_12
                  li           s7, 0xffffffff
                  li           s0, 0x7c040747
                  li           t1, 0x0
                  li           a5, 0x80000000
                  li           gp, 0x9c323f17
                  li           a6, 0x80000000
                  li           sp, 0xffffffff
                  li           t3, 0x0
                  li           s3, 0xff3fb286
                  nop
                  auipc        s6, 619311
                  addi         s3, a5, 282
                  addi         a6, s3, 2030
                  lui          t3, 209337
                  nop
                  sub          t3, t1, a5
                  addi         sp, s6, 1837
                  auipc        s3, 886423
                  auipc        s0, 274502
                  addi         gp, s0, -460
                  add          s6, s0, a6
                  auipc        s6, 947409
                  auipc        a6, 598748
                  sub          gp, a5, a6
                  add          sp, s6, s6
                  sub          a6, s6, sp #end riscv_int_numeric_corner_stream_12
                  xor          t0, s6, t0
                  sltu         s2, t1, a0
                  sll          s2, gp, tp
                  xor          t1, sp, t2
                  srai         t5, a6, 11
                  addi         t6, t1, 1028
                  srl          s9, a3, s11
                  auipc        s11, 38837
                  nop
                  lui          s8, 28367
                  sub          s9, a0, s1
                  sltiu        gp, t4, 1133
                  srl          a1, s11, t0
                  xor          t5, a0, ra
                  srli         a2, s9, 10
                  slt          a5, t5, t4
                  nop
                  sltiu        s1, sp, 72
                  lui          s6, 855310
                  addi         s6, ra, -1110
                  xor          a3, s9, a0
                  sltu         s11, a1, t0
                  xori         s9, s10, -391
                  srai         s8, t2, 16
                  sub          t4, sp, gp
                  slt          s0, t5, s4
                  lui          s1, 257864
                  sra          s2, a6, a1
                  add          s3, s6, s0
                  ori          a0, s10, 1133
                  lui          s0, 821338
                  nop
                  ori          s0, s3, 1976
                  sltu         s11, t5, s10
                  sll          a5, s11, t6
                  and          a1, s7, gp
                  sltiu        s1, sp, 761
                  lui          a4, 480920
                  lui          s9, 703952
                  sub          zero, t5, t1
                  srli         s7, a1, 13
                  sll          s9, a6, a3
                  ori          zero, t6, 49
                  slti         tp, s7, -251
                  add          t6, s1, tp
                  srli         s7, s1, 27
                  sub          t3, a4, a7
                  srl          a4, t2, a5
                  xor          a3, a0, s6
                  slt          s8, tp, s2
                  slli         t4, s0, 14
                  and          s6, s9, s11
                  sub          s3, s0, t3
                  or           gp, s11, t5
                  xor          s10, s6, s0
                  slt          a6, a7, s10
                  andi         s1, t4, -971
                  lui          s11, 33761
                  nop
                  srl          a7, s6, gp
                  nop
                  sltu         a0, gp, ra
                  slti         a4, t0, 532
                  nop
                  sub          a5, s4, tp
                  sub          gp, t4, sp
                  xor          s2, t1, sp
                  sltu         t1, a2, a6
                  sll          gp, s6, t4
                  ori          s6, t3, -1303
                  srl          a4, a1, a6
                  add          s3, a5, a5
                  srli         t5, s1, 25
                  slli         s7, t5, 17
                  xor          sp, t3, t6
                  srai         s11, s2, 15
                  sra          t4, zero, t3
                  add          t3, t5, t4
                  srai         a5, a7, 0
                  slti         t4, s1, -1228
                  or           s9, s3, sp
                  and          t4, a4, sp
                  add          t4, s11, t5
                  slti         sp, a4, -1897
                  sra          a3, t0, t6
                  slti         a3, a3, -1304
                  and          gp, tp, s6
                  addi         s2, sp, 1219
                  slt          s2, s4, a7
                  sll          s1, a4, t3
                  ori          s7, s3, -1832
                  srai         s11, s3, 14
                  sra          zero, s4, s0
                  slti         a5, s6, 77
                  and          tp, t3, s10
                  and          t1, s10, a1
                  or           sp, s3, a1
                  sra          a5, zero, s10
                  sltu         a0, a1, a0
                  nop
                  sltu         s0, t2, a5
                  nop
                  lui          a4, 671535
                  srai         a3, gp, 13
                  addi         sp, t0, -1951
                  slti         a1, s9, 112
                  slli         t3, a6, 6
                  andi         a4, s1, -1889
                  srli         t3, s9, 17
                  auipc        t1, 562731
                  srl          ra, s11, a3
                  sltiu        t6, a0, 1507
                  xor          s11, t2, a6
                  slt          a3, a6, a0
                  slti         a0, s10, 1346
                  sltu         a4, a0, t3
                  lui          a0, 894922
                  nop
                  and          s0, a1, a6
                  lui          a7, 95005
                  andi         s3, t5, -1335
                  sub          a1, a6, sp
                  sltiu        s3, a5, 366
                  srli         s8, a5, 19
                  sll          a1, s2, t5
                  and          zero, s7, s11
                  add          a7, s6, s6
                  xor          t6, t0, gp
                  auipc        s9, 486949
                  andi         a5, a3, 437
                  xor          s2, s6, s2
                  ori          s9, s6, -416
                  sll          t6, sp, t1
                  sltiu        s0, a1, -1518
                  and          s7, s5, s9
                  auipc        sp, 903653
                  nop
                  lui          t0, 517948
                  sltiu        a4, zero, -888
                  sub          a4, s7, tp
                  and          s0, sp, a6
                  addi         s0, s5, 1264
                  slti         s2, t4, 897
                  slt          a6, s2, a1
                  addi         a5, a0, 1013
                  or           s2, s9, s1
                  slli         a3, a7, 7
                  sltu         sp, a4, s7
                  srl          s7, zero, a5
                  add          t5, s8, s3
                  and          t3, a5, a2
                  srai         s10, t1, 10
                  srli         a6, s9, 27
                  or           a3, zero, ra
                  addi         a4, t2, 49
                  lui          gp, 185623
                  slt          t4, a2, t0
                  addi         a1, t4, -1168
                  xori         t1, t1, -755
                  xori         tp, s6, 58
                  sub          zero, s3, t1
                  or           a1, a4, t6
                  nop
                  auipc        t6, 261037
                  sltiu        a3, a5, -1040
                  srli         gp, s1, 19
                  srai         gp, ra, 24
                  xori         t1, s0, 321
                  sltu         t4, s3, a4
                  slt          t5, s8, s3
                  sub          tp, t3, t3
                  srli         s0, ra, 11
                  sub          gp, s4, s7
                  auipc        s10, 157073
                  slti         a6, a4, 588
                  sub          ra, s4, s1
                  xori         s7, t0, -1206
                  xori         t5, t0, 984
                  srai         t4, s11, 21
                  slti         a5, a1, 1572
                  and          a5, t0, a1
                  sra          t5, t0, s2
                  nop
                  add          a4, a4, ra
                  lui          a4, 130564
                  xori         a6, a2, -1937
                  srli         s0, s1, 22
                  sll          sp, s1, s1
                  auipc        a3, 992324
                  sra          t5, s5, ra
                  nop
                  nop
                  srl          s10, s0, zero
                  sltu         t1, a6, ra
                  srl          a0, a7, t3
                  sltu         a2, s9, s6
                  sltu         s0, s10, s11
                  slli         s11, s3, 27
                  sltiu        t5, tp, 938
                  sra          s0, a4, gp
                  lui          t0, 378327
                  sra          s9, s9, t0
                  lui          s6, 79276
                  addi         ra, t5, 813
                  li           s6, 0x6a1a8741 #start riscv_int_numeric_corner_stream_19
                  li           s11, 0x0
                  li           a0, 0x80000000
                  li           t5, 0xffffffff
                  li           t4, 0xffffffff
                  li           a7, 0xffffffff
                  li           t1, 0xffffffff
                  li           a3, 0x80000000
                  li           t3, 0x4bdba8d5
                  li           a4, 0x0
                  sub          a0, s6, t1
                  addi         a7, t5, 1820
                  auipc        t4, 679613
                  lui          a4, 197007
                  nop
                  sub          t4, t4, a3
                  add          t1, t4, s6
                  lui          a0, 1001039
                  sub          s11, t3, a7
                  auipc        s11, 685634
                  add          t3, s11, a0
                  add          a4, t5, a4
                  lui          t3, 8453
                  auipc        t4, 479287
                  nop
                  add          a4, a7, s6
                  lui          t4, 957324
                  auipc        t3, 500050
                  sub          s6, a4, t3
                  add          a4, t5, a7
                  sub          a3, t5, t3
                  nop
                  sub          s11, a4, s6
                  lui          a0, 903347
                  auipc        t1, 991437
                  sub          t1, t3, t1
                  auipc        a3, 61054
                  auipc        a3, 1040853
                  lui          s11, 448613
                  lui          s11, 545171 #end riscv_int_numeric_corner_stream_19
                  sll          a4, gp, s0
                  addi         s3, a6, 1665
                  addi         s2, a4, 346
                  slti         s7, t4, -1534
                  andi         s9, a6, 104
                  sltiu        t3, s8, -2011
                  addi         a0, s11, -1071
                  or           s1, s10, a2
                  slt          t1, a0, s6
                  srl          t4, a2, s3
                  sub          s7, a2, s8
                  slli         s7, s7, 15
                  srli         s9, tp, 17
                  slt          s1, gp, t3
                  or           a6, a0, t0
                  xori         a6, a1, -1651
                  or           sp, s2, s10
                  srai         t6, s3, 28
                  slt          gp, a3, a0
                  sltiu        a5, s4, 199
                  slli         a2, tp, 22
                  slti         a2, s6, 687
                  sll          s2, s0, t6
                  srli         s2, s8, 8
                  slt          t0, s1, zero
                  or           s0, a6, t6
                  andi         s2, s6, -1862
                  sub          a2, gp, t2
                  srai         ra, t2, 0
                  xori         a3, t0, 1334
                  ori          s7, s8, 1676
                  or           s8, s8, zero
                  ori          s9, tp, -1486
                  srai         t4, sp, 3
                  and          a6, gp, gp
                  slt          a2, s5, s4
                  xori         t4, gp, -1224
                  slli         s7, s5, 3
                  slli         tp, t1, 23
                  sll          s10, a0, s9
                  ori          s7, a2, -516
                  sra          s8, s11, a1
                  andi         sp, tp, 603
                  srl          tp, t5, t4
                  add          s3, zero, gp
                  auipc        t0, 268870
                  or           a4, t4, t3
                  ori          s8, s3, 164
                  srl          a1, t6, t0
                  xori         t1, a4, -645
                  ori          s1, s2, 1632
                  srai         t3, s10, 28
                  xori         a4, t6, 348
                  xor          s8, s2, a4
                  lui          t4, 460073
                  slti         t6, tp, -746
                  sltu         s10, t3, ra
                  slt          s2, sp, a6
                  sltiu        tp, t4, 1385
                  or           t1, t6, a3
                  auipc        s10, 184448
                  add          s11, t3, t4
                  and          ra, t3, s10
                  lui          t4, 393151
                  slt          s6, t6, t1
                  add          t4, s4, t4
                  sltu         s6, s9, s0
                  sltu         s8, t2, s1
                  sltiu        t1, a4, 481
                  andi         gp, s8, 200
                  sub          s7, a5, a7
                  slli         a3, s9, 26
                  xori         s9, t5, 440
                  xor          tp, tp, s3
                  xori         a3, s1, -1739
                  or           s9, a5, t1
                  xor          a0, s9, s4
                  srl          s3, a0, s6
                  add          gp, s8, s2
                  slli         s10, s11, 19
                  xor          a1, a0, a1
                  xor          a2, zero, t3
                  nop
                  ori          a5, s11, -90
                  slli         s1, a2, 23
                  addi         s10, t6, -1080
                  sltu         s9, s2, s10
                  xori         a5, a5, -468
                  xor          s0, t0, a0
                  add          t5, a2, s3
                  sltiu        a3, tp, 1739
                  srai         a1, tp, 15
                  or           a1, s9, t3
                  sra          tp, s10, t3
                  nop
                  nop
                  srai         s7, t2, 21
                  add          s6, t1, s4
                  or           t5, s8, s1
                  sltiu        a4, a2, 1350
                  lui          zero, 954259
                  and          s7, s6, s1
                  srl          s8, sp, s4
                  or           t3, a5, t2
                  lui          t3, 335744
                  lui          s1, 388363
                  srai         zero, a4, 23
                  and          a4, s3, t4
                  ori          t3, s8, -702
                  xor          s3, a5, t4
                  slt          tp, s9, a7
                  srli         a1, a5, 4
                  srl          s1, t1, s4
                  sub          sp, t5, s5
                  andi         s9, a7, 1272
                  addi         s7, gp, -1929
                  srai         s11, a3, 8
                  sll          s9, s2, s10
                  and          t1, t4, sp
                  or           s3, tp, t1
                  sll          a1, s5, s5
                  slt          t6, gp, s8
                  sltiu        t4, a5, 650
                  sltiu        t6, a6, 235
                  sll          t4, a3, s3
                  srl          gp, gp, gp
                  srl          s0, s1, s8
                  sra          a0, t2, s1
                  slli         t4, s7, 1
                  slli         t4, t5, 29
                  sltu         t0, s8, s5
                  slt          t5, zero, t5
                  andi         a7, a2, 1124
                  sltu         tp, s1, t5
                  sltu         a2, s3, a1
                  ori          a3, s4, -1425
                  add          a4, s4, zero
                  lui          t0, 259953
                  ori          t5, t5, 1996
                  srl          a3, s9, s1
                  slti         zero, gp, 1720
                  sra          t5, s7, s5
                  srl          s0, a5, t1
                  sra          gp, t4, s11
                  sub          s0, s3, a0
                  srl          gp, s8, s4
                  lui          t0, 41331
                  lui          t3, 910021
                  add          a4, tp, ra
                  sra          s10, a5, a5
                  slt          t6, zero, sp
                  sltiu        t0, t3, -126
                  addi         zero, s5, -1220
                  sra          a7, s6, a4
                  ori          a3, s0, 733
                  sltiu        s6, s3, 1748
                  auipc        tp, 260393
                  addi         a7, s4, -642
                  srli         a4, t1, 25
                  or           t4, s11, a0
                  add          s0, a3, t1
                  or           t1, s4, a7
                  srli         s9, a3, 24
                  or           a5, s3, a2
                  slli         s8, s9, 2
                  ori          sp, zero, 2038
                  sll          a0, t0, a1
                  sll          t3, s3, a4
                  lui          s10, 486061
                  sub          a3, t4, gp
                  and          sp, s0, ra
                  add          s9, s7, s5
                  auipc        s11, 450394
                  nop
                  add          s11, s2, ra
                  xor          t6, a1, s11
                  ori          t3, t5, 369
                  add          s9, s5, s1
                  slli         t6, s6, 19
                  nop
                  xori         t3, a4, 723
                  nop
                  ori          s6, t5, -152
                  sub          t6, a0, s9
                  srai         s1, t3, 18
                  sll          t6, sp, a1
                  auipc        s0, 689780
                  sltu         a7, a2, s0
                  andi         s9, a7, -1227
                  xor          t4, s10, ra
                  ori          s6, zero, 1443
                  or           t0, tp, s3
                  srli         s8, ra, 8
                  ori          s9, s9, -627
                  sra          ra, s4, s2
                  srli         a4, s2, 26
                  sub          s10, t6, a5
                  add          a5, zero, t4
                  lui          t5, 605370
                  andi         s9, ra, -1441
                  sltiu        s1, t4, -970
                  srli         s6, s4, 4
                  ori          s10, s1, 1609
                  sra          s7, t6, s6
                  slli         t0, t1, 19
                  xori         s8, s3, 71
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           s11, 0xb35b441
                  li           s6, 0xffffffff
                  li           tp, 0x0
                  li           s3, 0xd7c2b44e
                  li           s2, 0x0
                  li           t5, 0xffffffff
                  li           a3, 0x0
                  li           a5, 0x80000000
                  li           t1, 0x0
                  addi         s11, a5, 404
                  add          a3, t5, t1
                  sub          s11, a5, s2
                  auipc        t5, 398836
                  add          tp, t1, s2
                  nop
                  lui          s3, 257362
                  lui          a5, 70707
                  nop
                  lui          s11, 991811
                  addi         t1, s2, 345
                  auipc        t5, 786729
                  add          s3, t1, s2
                  auipc        s3, 938319
                  auipc        tp, 335570
                  auipc        s11, 5748
                  auipc        s2, 798012
                  auipc        t1, 908817
                  sub          a0, s2, s6
                  add          t1, t1, t1
                  add          a3, s3, s11
                  nop
                  lui          s3, 12756
                  auipc        a5, 839017
                  lui          s11, 197338
                  lui          t5, 109637
                  add          tp, s11, s3
                  auipc        s2, 536704
                  auipc        t1, 1008695
                  auipc        t5, 148162 #end riscv_int_numeric_corner_stream_18
                  sra          t6, a4, t3
                  ori          a5, s6, 1274
                  sltiu        t3, s8, 554
                  ori          a6, s6, -496
                  add          zero, s10, t4
                  and          a6, a3, a1
                  sub          s3, s8, t4
                  slli         t1, a7, 13
                  sra          a6, sp, a5
                  nop
                  ori          t5, a2, -1070
                  sll          gp, s11, t2
                  addi         s2, a7, 890
                  and          s7, t3, gp
                  srli         s8, a1, 8
                  srli         t5, a6, 8
                  add          gp, s11, s3
                  slti         t5, s7, -397
                  slti         s9, t2, 122
                  addi         sp, a4, 1413
                  slt          t6, a1, s6
                  slti         t0, t5, -1971
                  sll          a7, s8, s4
                  ori          s10, a5, -1997
                  or           s8, a0, t2
                  sra          a6, s11, ra
                  sub          t1, s1, a7
                  xor          t1, s0, t2
                  sltu         a3, a5, a7
                  xori         s7, gp, -1068
                  nop
                  sll          a0, s3, a6
                  srl          t1, t5, a0
                  sra          t3, t5, zero
                  and          s10, t1, gp
                  slti         s10, s5, 111
                  xor          s2, s2, t2
                  sltu         gp, s3, s9
                  xor          sp, t4, s9
                  xori         a7, a2, 1120
                  sltu         a1, s9, t5
                  addi         t6, a2, -648
                  srli         a6, t6, 21
                  srai         a4, s2, 16
                  sltu         s11, s1, t5
                  lui          a0, 108210
                  sltiu        a5, sp, -1387
                  ori          s1, s1, 417
                  auipc        t6, 663255
                  sra          a3, s10, a7
                  auipc        s3, 133782
                  lui          gp, 921679
                  addi         a1, a4, 1895
                  srai         s0, tp, 1
                  sltiu        s0, a5, 548
                  srai         t1, a0, 31
                  add          a1, a2, s3
                  slti         s10, s3, -313
                  xori         s1, s11, -764
                  srli         s8, tp, 13
                  addi         t1, a0, -1978
                  andi         a1, s8, -261
                  or           a0, a1, a4
                  or           a0, zero, s8
                  xor          t0, a3, a4
                  sltu         t1, t2, s2
                  ori          s3, s4, -1225
                  nop
                  slli         s3, s3, 31
                  auipc        tp, 421852
                  and          a6, s1, t1
                  sra          s10, t3, ra
                  srai         t5, tp, 16
                  sltu         s11, sp, t3
                  or           s1, s3, t4
                  andi         t3, gp, -1075
                  addi         t6, s9, -1209
                  nop
                  xor          ra, s2, t2
                  ori          tp, a0, -40
                  sltu         s2, a1, a0
                  sltiu        s6, s11, 1399
                  sra          ra, t3, t6
                  srl          a2, gp, s10
                  srl          s1, a2, a0
                  nop
                  and          s1, t2, s0
                  sltu         a5, tp, t0
                  sll          s9, t5, sp
                  nop
                  xor          s8, sp, a4
                  srai         a6, t6, 18
                  xor          s11, a2, s0
                  ori          s7, t5, -907
                  sll          s7, zero, zero
                  add          a1, t5, gp
                  srli         ra, a5, 19
                  slt          s0, tp, a3
                  add          t3, s1, a5
                  srl          a4, gp, s5
                  or           a0, s2, s2
                  slt          a5, t0, a3
                  sltiu        s6, s1, -1415
                  slti         a2, t2, -657
                  lui          t3, 618600
                  nop
                  sltiu        sp, tp, -1881
                  addi         s7, a6, 514
                  sll          sp, s0, s4
                  sltiu        ra, s7, -828
                  ori          t4, sp, 3
                  nop
                  andi         sp, a1, 39
                  srai         s3, s8, 25
                  sll          s10, a5, a7
                  sub          s2, ra, a6
                  and          s9, t5, s11
                  andi         t3, s7, -1141
                  sltiu        a2, ra, -1132
                  or           s11, s1, a2
                  slt          a7, ra, s0
                  andi         s0, s8, 621
                  sub          tp, s4, s4
                  add          s9, tp, a5
                  and          s6, t4, s10
                  addi         t0, t5, 226
                  add          s1, a5, a7
                  srli         tp, a2, 31
                  sub          s6, a5, t3
                  andi         sp, a3, -1396
                  auipc        a4, 718270
                  ori          s7, a6, -239
                  and          t6, ra, s4
                  add          a7, s11, t3
                  srl          s9, ra, a1
                  addi         a4, a4, -674
                  slti         a7, sp, 1150
                  lui          s8, 967350
                  sra          t0, t5, a5
                  andi         gp, t1, -2030
                  xor          a7, t3, a7
                  slti         a1, s5, -654
                  sub          a1, tp, a6
                  sltiu        zero, a4, -1444
                  ori          s6, tp, 385
                  slli         s11, a1, 9
                  srli         t1, t3, 8
                  slti         a6, tp, 1905
                  xor          a6, gp, s8
                  ori          tp, s3, 1221
                  xori         gp, s5, 1620
                  srl          gp, a1, tp
                  sub          t4, a3, s0
                  slti         t4, gp, -75
                  xor          a5, gp, t5
                  xori         s1, s9, 66
                  nop
                  and          a6, a6, zero
                  sltu         s0, s2, s4
                  ori          tp, a3, 1337
                  srl          a5, s2, a0
                  sll          s8, a7, a5
                  and          s9, s6, t1
                  lui          a3, 693192
                  nop
                  or           s3, s10, a7
                  slti         zero, t5, 1000
                  lui          a4, 244989
                  sltu         a3, s1, t3
                  lui          s11, 56086
                  slt          s9, s9, t2
                  xor          t0, a3, s10
                  addi         gp, t1, 2010
                  add          s1, a7, a5
                  lui          t3, 639594
                  xori         s6, t0, 117
                  xor          s1, s0, s4
                  or           s0, s9, a5
                  srl          zero, s7, s4
                  slt          a1, sp, t4
                  auipc        s10, 790690
                  and          s7, s1, a6
                  srl          s1, t4, t2
                  sra          s7, zero, t5
                  sub          tp, a6, s7
                  add          a2, a2, a5
                  srl          t1, s7, gp
                  srli         a2, t4, 1
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           t0, 0x0
                  li           s0, 0xffffffff
                  li           a1, 0x80000000
                  li           a3, 0x80000000
                  li           s6, 0x0
                  li           s10, 0x80000000
                  li           a2, 0xffffffff
                  li           ra, 0x0
                  li           t3, 0xffffffff
                  nop
                  nop
                  addi         a2, t0, 87
                  addi         s6, a3, 1967
                  auipc        s8, 267779
                  lui          s6, 515302
                  nop
                  auipc        s6, 279148
                  lui          a3, 1032128
                  nop
                  auipc        a1, 490290
                  nop
                  nop
                  addi         a2, s10, 172
                  add          a2, a3, s8
                  addi         s0, s8, -56
                  lui          a3, 779305
                  nop
                  auipc        s8, 844130
                  lui          t0, 638297
                  addi         t0, ra, -130
                  lui          a1, 1018559
                  sub          s8, a1, s8
                  nop
                  lui          t3, 891055
                  lui          a3, 40573
                  sub          ra, ra, t3 #end riscv_int_numeric_corner_stream_3
                  and          s1, t6, s2
                  xori         t1, a5, -670
                  slli         sp, s11, 16
                  or           s9, t5, a0
                  slti         gp, s7, 550
                  sltu         s1, zero, s8
                  srli         s2, gp, 9
                  lui          s8, 643633
                  addi         zero, sp, 1086
                  sltiu        s2, a6, -1162
                  nop
                  sll          ra, a0, s4
                  sltiu        t0, s9, -427
                  addi         a5, s6, -381
                  srai         s6, s6, 2
                  slli         t1, s2, 23
                  nop
                  nop
                  xori         a0, t6, 227
                  slt          t1, s3, s7
                  srai         s6, a0, 29
                  srl          s11, zero, tp
                  nop
                  addi         t1, t4, -571
                  and          t4, tp, t2
                  sra          a0, t2, a6
                  slli         s7, s10, 16
                  xori         t4, s2, -1213
                  srli         a4, t6, 31
                  or           a5, s3, s3
                  sll          tp, s4, t0
                  sll          a4, sp, t5
                  lui          sp, 787317
                  slt          sp, s5, gp
                  slli         s10, s10, 16
                  slt          ra, t4, t2
                  sra          s6, ra, s0
                  xor          ra, s4, a7
                  nop
                  xor          t5, a7, s8
                  andi         s0, s8, 633
                  srli         a7, s8, 9
                  add          gp, t5, t5
                  nop
                  and          zero, s10, zero
                  xori         s10, t2, -908
                  auipc        zero, 161816
                  xor          s8, sp, s1
                  addi         s1, a1, 391
                  nop
                  srl          a3, a0, s9
                  addi         sp, a2, 904
                  ori          s0, s10, -393
                  and          ra, a0, s2
                  addi         s10, t5, 1506
                  sra          s0, t1, a5
                  xor          sp, t3, s8
                  sltiu        s6, t2, 1701
                  srl          a3, s10, tp
                  slli         s10, s7, 1
                  lui          a3, 877770
                  xor          s0, t6, a7
                  or           s0, t4, zero
                  ori          t6, a2, -1758
                  slti         s1, t2, -965
                  and          a4, a4, t6
                  srli         t5, s5, 27
                  andi         a0, s5, -436
                  sra          s6, s9, a5
                  xori         s3, a3, -432
                  lui          s7, 386692
                  sra          a2, s9, s7
                  and          a4, a2, s10
                  xori         s3, s6, 340
                  slti         sp, s5, 622
                  sub          s3, s5, s10
                  sub          a2, t6, s3
                  nop
                  srli         zero, ra, 6
                  slt          a0, t5, tp
                  sltiu        t6, t6, -1657
                  sltu         a7, tp, t6
                  slt          s1, s11, t4
                  xori         t0, tp, -222
                  xor          s3, a2, a2
                  add          sp, s10, t1
                  srli         t0, s0, 16
                  nop
                  srl          s8, s6, t2
                  lui          a0, 1014704
                  sll          s8, ra, a0
                  add          s7, s0, s3
                  or           zero, gp, s6
                  sltiu        s9, a0, 1466
                  lui          s2, 137073
                  srli         a1, tp, 11
                  auipc        a3, 527200
                  slli         a2, gp, 7
                  nop
                  lui          t6, 801120
                  slli         a6, s2, 9
                  sub          t5, ra, a1
                  auipc        t6, 633190
                  slti         a0, s6, 1962
                  andi         s0, ra, 147
                  sltiu        ra, s0, -695
                  andi         s0, a3, 946
                  slt          a2, t0, t2
                  addi         s3, a7, -1647
                  sltiu        a3, s5, -183
                  srli         s8, s7, 4
                  nop
                  sra          t0, a2, t3
                  slli         gp, a4, 16
                  or           t6, a2, t4
                  auipc        s7, 794983
                  lui          s10, 178931
                  and          t1, a6, s5
                  srai         s10, s6, 13
                  xor          a2, s10, a3
                  sll          s8, s4, s7
                  andi         a0, t5, 716
                  add          tp, s7, sp
                  ori          t0, s11, -1624
                  slt          s1, a4, s3
                  ori          t5, s7, 1513
                  lui          t0, 976743
                  andi         a4, s5, -1107
                  lui          t4, 36637
                  sltiu        a6, t1, 283
                  srai         a0, a5, 6
                  xori         s9, s5, 1994
                  srl          sp, a7, a0
                  sltu         a3, t4, a1
                  and          t5, t1, ra
                  andi         a5, a6, -437
                  srli         a1, sp, 19
                  and          t5, a7, ra
                  andi         a4, s2, -1270
                  add          s6, t3, gp
                  slt          s8, s0, a0
                  sub          ra, a5, t4
                  srli         a2, s3, 29
                  xori         s3, a4, -739
                  ori          s8, t1, 2
                  srl          a2, a6, sp
                  srai         a1, a6, 16
                  andi         t6, a6, -682
                  srai         zero, s8, 25
                  sltiu        gp, s10, -1609
                  slli         t6, a0, 23
                  auipc        s0, 600124
                  sll          t4, s0, gp
                  sll          t6, t3, t3
                  sltu         s2, a2, zero
                  nop
                  ori          a4, tp, -583
                  xori         t6, s4, 886
                  srl          t6, a5, a3
                  addi         a1, a2, 847
                  srai         t3, s11, 3
                  srli         a2, a5, 5
                  xor          a6, s10, zero
                  xor          s9, t4, s1
                  slli         s9, a7, 28
                  ori          a3, s4, 1638
                  slli         a4, t0, 18
                  lui          s9, 940012
                  slt          sp, s2, gp
                  sub          s11, a1, a5
                  auipc        s0, 11631
                  andi         a4, s8, -1745
                  and          s6, t6, a0
                  srl          a7, s5, s6
                  ori          s8, s10, -1560
                  xori         s3, a2, 2025
                  andi         a7, t0, 1388
                  lui          s6, 709997
                  auipc        s8, 871562
                  add          a7, s7, t5
                  srl          s2, t1, s10
                  slti         tp, t0, 320
                  sub          a7, a4, a5
                  nop
                  slt          t5, t6, sp
                  sll          s11, a2, t6
                  slli         a4, t4, 4
                  sra          s8, s0, sp
                  srai         a4, t1, 30
                  slli         t1, s10, 9
                  slt          a6, a6, t0
                  sra          ra, a2, tp
                  xor          s0, a6, t2
                  srl          s2, a3, t5
                  sll          sp, tp, t1
                  srl          s2, zero, s11
                  addi         t4, gp, 411
                  xor          t1, s8, t6
                  andi         t5, a2, 1492
                  lui          sp, 742782
                  addi         s11, s11, 2
                  andi         ra, t2, -247
                  slli         a6, t2, 7
                  sra          s3, s3, a1
                  lui          t1, 185131
                  sll          s10, s6, t6
                  and          zero, s4, t6
                  srli         t6, a2, 20
                  addi         s9, a0, 1145
                  sra          a1, ra, s0
                  slt          s2, s7, a7
                  andi         gp, s1, 1648
                  srli         t4, s0, 10
                  slti         ra, s7, 868
                  and          s6, s1, ra
                  add          t6, t5, a6
                  add          t5, a0, sp
                  andi         s1, t6, 889
                  sll          t1, a5, a0
                  sra          s6, t3, t3
                  lui          ra, 866621
                  sll          a3, t4, a6
                  slt          s10, t5, gp
                  and          zero, s7, s11
                  addi         t0, a5, 1277
                  slli         a6, s2, 25
                  andi         a5, s4, -1305
                  and          t5, ra, s7
                  sub          s2, t4, a7
                  xor          ra, zero, s7
                  srl          s3, s4, a6
                  auipc        t6, 901672
                  lui          ra, 242855
                  ori          a0, a0, -53
                  addi         a4, s5, -1554
                  sltiu        zero, t2, -632
                  and          s1, s2, t3
                  ori          s6, t2, 108
                  srai         s10, a5, 18
                  slli         t0, s10, 29
                  srli         s6, s0, 13
                  ori          s11, s9, 1138
                  srli         s0, t0, 23
                  sra          a2, s8, a3
                  auipc        s6, 218878
                  sll          s3, a5, tp
                  srli         s11, s8, 19
                  sll          s6, s10, t1
                  slli         s1, s5, 3
                  andi         t1, s9, 1894
                  sra          t0, s4, s0
                  slt          t1, s1, s10
                  and          t0, s7, s10
                  xor          t4, tp, a4
                  srli         s1, a1, 7
                  and          sp, s7, s11
                  or           a5, gp, a2
                  add          s8, t4, s4
                  nop
                  srli         a7, t0, 12
                  nop
                  srai         a5, a0, 22
                  and          s11, a5, a6
                  ori          s7, s4, 1300
                  srli         s2, s9, 31
                  sub          zero, t5, a2
                  slli         a1, gp, 29
                  slti         sp, s8, -946
                  lui          s10, 470919
                  sltiu        t4, s5, 933
                  slti         s1, s11, -265
                  sltu         a4, a7, tp
                  slli         s0, zero, 26
                  srl          t1, s9, a5
                  srai         a0, sp, 2
                  sra          a1, gp, s5
                  sltiu        gp, s0, 1963
                  sltiu        s9, zero, 1207
                  xor          s2, t5, zero
                  sltiu        s0, a7, 149
                  auipc        s3, 604445
                  ori          s0, s6, 1976
                  addi         a0, s9, 1194
                  nop
                  xor          a2, a0, a4
                  or           a4, s2, tp
                  sltu         s9, s3, tp
                  xori         s10, s10, 545
                  sll          t1, a1, a7
                  srli         a5, sp, 7
                  add          a1, a7, s0
                  ori          a4, a1, 2029
                  slt          s6, a3, a0
                  sll          a3, a7, s7
                  sra          zero, s3, gp
                  or           ra, s5, s6
                  srli         t4, s1, 30
                  srli         a4, a5, 11
                  addi         t6, sp, 1901
                  add          a5, t0, s10
                  or           a7, a5, t4
                  slti         a5, gp, 1329
                  auipc        s9, 324035
                  or           s10, a1, a3
                  or           s6, s1, a6
                  sub          s10, gp, s2
                  sub          t6, s2, a4
                  xori         s2, a4, 1324
                  ori          ra, a7, 1162
                  nop
                  xori         sp, t6, -1206
                  add          a7, gp, s6
                  ori          s7, a6, 1173
                  sll          sp, s11, a4
                  and          t6, gp, s10
                  lui          s10, 225173
                  xori         t0, t6, -1247
                  auipc        t3, 464552
                  srl          a7, t6, sp
                  slli         t3, gp, 30
                  auipc        t0, 744729
                  andi         t5, zero, -1558
                  ori          a0, tp, 424
                  sltu         t5, a6, t2
                  and          tp, t6, t4
                  sra          a3, t6, s5
                  lui          s11, 194598
                  auipc        t0, 795923
                  slt          a7, s0, s2
                  sltiu        a5, gp, 1096
                  sltiu        ra, gp, 778
                  sll          s2, s4, t2
                  or           a2, s2, s4
                  xor          s3, s1, a5
                  srli         t0, t0, 18
                  sltiu        gp, t3, 1831
                  add          a0, a4, t2
                  xor          a1, t0, s7
                  lui          t3, 190094
                  addi         s7, sp, -1117
                  or           t6, a5, a0
                  sll          s1, tp, t5
                  ori          s11, s0, -1862
                  srli         t0, s1, 9
                  andi         s6, a6, 1877
                  sra          a4, s1, s6
                  add          s6, s1, a5
                  xori         gp, tp, 1194
                  slt          a0, s2, s6
                  slt          s2, a1, s10
                  add          a6, t5, a1
                  srai         t3, t5, 11
                  slli         s3, a2, 8
                  sltu         a0, s9, s1
                  srli         zero, t2, 21
                  add          t6, t5, s7
                  sub          a6, gp, s7
                  nop
                  nop
                  sll          t5, t0, s6
                  lui          s11, 894215
                  xori         s3, s3, 1665
                  srli         t6, a2, 2
                  xori         tp, t1, 1309
                  xor          ra, t4, s6
                  and          s7, a6, ra
                  lui          s9, 375324
                  or           s7, ra, a5
                  nop
                  addi         gp, s9, 762
                  xor          a7, t5, a6
                  sltu         a5, t3, s4
                  sltiu        ra, ra, -1151
                  srai         sp, s10, 30
                  and          a3, t4, t6
                  sltu         a3, t1, t1
                  nop
                  nop
                  lui          gp, 745805
                  ori          a4, s2, 1147
                  srl          t1, sp, a3
                  sltu         t0, t5, zero
                  slt          t3, a3, t3
                  srl          a0, a5, a5
                  xor          a4, a7, s8
                  lui          a4, 34970
                  sltiu        s9, zero, 1718
                  slt          s3, a5, a3
                  xor          tp, a4, a3
                  sub          s3, t0, a5
                  sra          s11, s2, t2
                  srli         s11, a5, 28
                  slt          s1, t1, t0
                  addi         s9, t1, 823
                  lui          t3, 135714
                  xor          a3, s10, gp
                  nop
                  slt          a7, sp, t2
                  srai         gp, s4, 1
                  xor          s0, zero, a3
                  andi         zero, tp, 526
                  ori          t6, t6, 653
                  slli         t1, a6, 31
                  nop
                  sltiu        s2, s1, -1833
                  slti         t5, t4, -114
                  srl          a1, s11, gp
                  sub          a5, t1, s1
                  addi         t3, s0, -1557
                  andi         t5, sp, 1257
                  sra          a3, t2, a1
                  add          a5, s11, a5
                  addi         s8, s1, -1399
                  slti         s11, a5, 1223
                  lui          a6, 435972
                  sltiu        a2, s4, 478
                  srl          t1, t3, ra
                  sltu         a6, s8, tp
                  srai         s3, s8, 31
                  nop
                  sltu         t3, t1, s2
                  and          sp, s4, s7
                  srai         s7, a4, 11
                  slli         a0, s0, 16
                  sll          s1, t1, t1
                  or           s6, t4, t6
                  lui          s1, 919203
                  and          s8, s2, t6
                  add          t5, s0, a3
                  srli         zero, s7, 5
                  xor          a6, s5, t2
                  slli         a3, t5, 3
                  addi         s1, s2, -260
                  nop
                  ori          t1, s1, -429
                  xor          s10, ra, t5
                  sra          a4, s9, s7
                  sub          s8, s5, s0
                  srl          s7, s10, a3
                  sra          a2, t1, a0
                  nop
                  ori          s0, t5, 1547
                  andi         a3, a6, 1437
                  sltu         t1, t3, a5
                  addi         s11, t4, 610
                  nop
                  slti         t6, a6, 812
                  sltiu        s10, t5, -1498
                  sltu         a2, a5, t4
                  xori         tp, t0, -1554
                  slti         s0, s10, 1468
                  slti         a2, a4, -1593
                  addi         a3, s3, -915
                  and          a7, s10, s9
                  srli         s8, t1, 20
                  sra          t3, t5, s4
                  add          s3, s8, a3
                  srli         s1, s4, 17
                  and          s10, t1, s3
                  lui          a5, 376631
                  slli         t1, a5, 7
                  auipc        s1, 762974
                  or           t0, ra, a4
                  or           tp, t5, s8
                  addi         s8, t1, 157
                  xori         a2, a7, 1272
                  sub          zero, s2, s9
                  slt          s8, s8, tp
                  srli         s0, s0, 27
                  sra          s10, tp, s0
                  lui          t3, 925172
                  and          s7, a7, sp
                  nop
                  sltiu        t4, zero, -1791
                  xori         zero, a3, 689
                  xori         a3, a7, 381
                  or           a0, a4, s6
                  or           ra, s10, t3
                  srl          s6, a0, a0
                  xori         a3, tp, 1748
                  sll          a1, tp, zero
                  sll          a7, s7, s4
                  nop
                  ori          a3, s7, -208
                  nop
                  xori         sp, a3, -1093
                  srl          s9, t5, a0
                  and          s0, t0, zero
                  ori          a4, s4, -1
                  auipc        t6, 262797
                  sub          a4, a1, t3
                  andi         s7, ra, -271
                  xori         tp, ra, 226
                  srli         s3, s10, 17
                  addi         s2, t4, 307
                  or           t5, a7, t1
                  slti         tp, s6, -243
                  sltu         t3, t0, s8
                  sltu         s6, a7, s1
                  auipc        t0, 258926
                  auipc        a3, 534587
                  xor          a1, s11, t0
                  slli         t3, tp, 7
                  nop
                  ori          s1, s2, -1833
                  sra          tp, t2, s8
                  sra          zero, s0, a6
                  or           a5, t6, t1
                  sltu         tp, a4, s2
                  auipc        a4, 415126
                  sltu         s3, a3, zero
                  srl          s8, a4, a5
                  sll          a2, tp, ra
                  xor          a6, s1, s3
                  sll          s3, a0, t5
                  sltiu        tp, s10, 587
                  auipc        t5, 790737
                  srl          ra, s9, t1
                  or           a4, s8, s1
                  sltiu        a7, s1, 1591
                  xor          gp, ra, s7
                  ori          a6, s0, 359
                  lui          t1, 659947
                  or           s3, t2, a7
                  and          a4, s4, s0
                  auipc        s10, 599134
                  slli         a3, ra, 10
                  add          sp, t3, s5
                  xori         a3, a7, 108
                  ori          gp, ra, -1804
                  and          s6, a2, s6
                  xori         t4, s4, -1920
                  xor          a1, a4, zero
                  and          a5, t5, t2
                  auipc        t4, 999766
                  xor          a7, t6, s11
                  xor          s11, t6, a0
                  sll          s2, ra, tp
                  sltiu        a7, s7, 1818
                  slti         t4, t4, 1050
                  auipc        s10, 357398
                  andi         a0, t6, 286
                  sra          t5, s2, s8
                  sll          s6, ra, t4
                  srl          a2, tp, s1
                  nop
                  srli         t3, a6, 3
                  and          t1, zero, a7
                  addi         s9, s4, 1622
                  xori         s6, s2, 997
                  addi         a3, s10, 1655
                  nop
                  sll          a4, zero, s9
                  addi         s10, s8, -266
                  slt          s1, s11, s10
                  sra          a3, t4, s10
                  andi         a0, s1, -557
                  xori         sp, s8, 1686
                  ori          t0, a7, -843
                  sub          s0, a7, s9
                  nop
                  lui          s7, 324146
                  slti         a0, s10, -847
                  sltiu        s3, s0, -1018
                  nop
                  sra          sp, s6, t0
                  xor          t0, s7, a3
                  lui          a0, 760595
                  sltu         s3, a5, s9
                  or           gp, a3, a3
                  xori         a4, zero, 1219
                  sra          a7, t1, a1
                  add          a6, s4, sp
                  sra          t1, a2, s7
                  or           a7, s7, t0
                  ori          s2, s9, 1711
                  andi         t3, zero, -1637
                  nop
                  li           t5, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           s2, 0x102c6653
                  li           t1, 0xffffffff
                  li           a3, 0x80000000
                  li           t6, 0x0
                  li           s8, 0x0
                  li           a1, 0x80000000
                  li           t0, 0x0
                  li           a0, 0xd09e2c3c
                  li           sp, 0x80000000
                  lui          t6, 768512
                  add          a1, t6, t5
                  sub          t1, s8, a3
                  lui          t0, 791910
                  nop
                  add          t1, t6, t5
                  sub          a0, t0, t5
                  lui          s2, 480247
                  nop
                  add          a1, a0, s2
                  lui          s2, 590042
                  sub          t0, a1, sp
                  auipc        sp, 150223
                  auipc        a0, 641603
                  auipc        s8, 141443
                  lui          a3, 1033481
                  auipc        a3, 793742
                  lui          s8, 399594
                  nop
                  nop
                  sub          t1, t5, s2
                  add          t6, sp, t6
                  addi         t0, a1, 1377
                  lui          s8, 53354
                  lui          t6, 957601
                  lui          t1, 132830
                  sub          t0, t6, t5
                  lui          a1, 661229
                  add          t6, t0, t5
                  sub          t0, t0, s8 #end riscv_int_numeric_corner_stream_8
                  nop
                  sra          a4, a5, s4
                  xor          a6, a1, s9
                  slt          s6, s10, a2
                  nop
                  srli         s8, s7, 17
                  lui          s8, 425381
                  xor          a4, a7, t5
                  andi         sp, s1, 139
                  srli         ra, a1, 22
                  xori         s8, s1, -1015
                  srl          a5, s3, t4
                  sltu         a0, s4, t0
                  ori          s6, sp, -1515
                  add          a0, s8, t2
                  srai         a0, t4, 14
                  sltiu        gp, t3, -18
                  slt          s2, t4, s8
                  sra          a5, a2, s3
                  srli         a2, zero, 26
                  xor          t5, a4, s2
                  slt          tp, sp, t5
                  ori          s8, a7, 1306
                  srli         a4, s4, 26
                  add          a5, t1, t0
                  sra          a7, s3, s6
                  xori         s0, a2, -1858
                  slti         s11, t2, 1685
                  nop
                  auipc        a6, 717267
                  sub          s8, a2, t6
                  add          a5, t5, s10
                  and          t6, s1, s2
                  sub          t3, s11, a4
                  and          t3, t0, t5
                  nop
                  xori         t4, sp, 1164
                  or           s7, t1, ra
                  nop
                  add          sp, s0, t0
                  andi         s8, a7, 811
                  addi         sp, t0, 510
                  nop
                  andi         t5, s2, -1998
                  slli         a2, t0, 17
                  and          s2, s9, a2
                  add          t5, s5, s9
                  xori         t0, zero, -601
                  xori         s1, s7, 1424
                  slli         ra, t1, 23
                  lui          a3, 17689
                  srl          s7, t3, gp
                  xor          s8, ra, t6
                  andi         s1, s2, 1750
                  ori          a3, t6, 1213
                  srai         a5, t0, 24
                  sltiu        s0, a5, -1041
                  addi         t6, s4, -1877
                  xori         t5, s3, -1394
                  sltiu        s3, a3, 1082
                  nop
                  sll          a4, t2, a6
                  addi         zero, a7, 1045
                  srai         t4, s3, 30
                  srli         gp, t0, 27
                  nop
                  sll          s2, s6, t3
                  sltiu        s10, a4, 597
                  sltiu        t3, t1, 23
                  slli         s2, tp, 14
                  and          a6, s7, s3
                  sltu         zero, t4, t4
                  sub          a7, tp, s11
                  addi         a7, a0, 1989
                  and          s8, s1, sp
                  auipc        a2, 323324
                  slti         t5, s4, -1603
                  lui          zero, 250612
                  slt          a1, ra, t5
                  sltu         s6, t0, t6
                  srli         a1, t2, 3
                  or           s8, s10, t6
                  or           s6, tp, t5
                  sll          t6, tp, s3
                  lui          zero, 242006
                  sltiu        s8, t2, -753
                  xor          a2, tp, t5
                  add          a6, s11, a7
                  srai         t0, s8, 26
                  sltiu        a4, s2, 304
                  lui          gp, 605946
                  ori          t0, t4, 1230
                  lui          s3, 675585
                  nop
                  xor          sp, t1, a7
                  or           a0, a4, a2
                  addi         a6, s3, 1082
                  slt          s3, s6, a7
                  andi         zero, t3, -1260
                  sltiu        s9, s5, -224
                  ori          a0, s2, -889
                  add          t6, s5, t5
                  slt          a4, t2, t6
                  sll          t1, s9, a4
                  sra          s0, s7, s3
                  slti         s2, t1, 2033
                  xor          t3, gp, s1
                  add          t6, s6, gp
                  xor          t1, t1, s11
                  and          a6, s3, t4
                  auipc        zero, 269151
                  sub          s3, a6, t0
                  srl          a3, s1, t0
                  sltu         s1, t4, a5
                  auipc        s3, 701228
                  slli         s8, a4, 25
                  auipc        a3, 677269
                  andi         s11, a5, 412
                  andi         a4, a2, 435
                  srli         s10, a3, 30
                  srl          s7, s11, gp
                  slti         s11, s7, -1110
                  add          a7, t0, a6
                  lui          s9, 642775
                  andi         s0, s1, -578
                  auipc        t5, 858445
                  xori         ra, t6, -122
                  sltiu        s0, ra, -305
                  or           t0, ra, a1
                  sll          a4, t2, s1
                  ori          zero, t6, -1590
                  add          a5, gp, s9
                  nop
                  slti         a1, s5, 202
                  and          sp, s9, s1
                  sltiu        t0, s11, -280
                  slti         s6, s0, 1508
                  xor          t0, s4, a5
                  sltiu        s10, sp, -1425
                  add          s9, s0, s9
                  sra          s8, a6, a6
                  ori          a0, a2, 1408
                  andi         t6, s9, -1685
                  and          s7, a3, s3
                  srl          s2, s1, s8
                  slt          t5, a6, s5
                  nop
                  sltiu        a5, a2, 1223
                  add          s7, a3, s3
                  slti         a0, t2, 1168
                  add          tp, gp, t2
                  ori          zero, s5, -453
                  slti         sp, s7, -1447
                  andi         t5, s2, 1860
                  sra          a2, t5, a7
                  sltu         s8, zero, a6
                  xori         a1, s7, -64
                  slli         tp, sp, 24
                  sub          s8, s0, a4
                  xor          s3, s6, ra
                  slt          s10, s9, s7
                  srl          a2, a0, s0
                  or           tp, gp, a2
                  andi         a7, s8, -957
                  slti         a6, s7, -1186
                  sub          s10, s1, s11
                  slti         tp, ra, 175
                  xori         s3, t1, -340
                  slli         zero, a6, 27
                  auipc        t0, 148408
                  srli         a1, s4, 18
                  sltu         sp, a1, s10
                  addi         a4, s5, -1917
                  srli         t5, a7, 24
                  auipc        t1, 376187
                  auipc        a1, 549529
                  addi         t6, t5, -672
                  addi         a0, a5, 1871
                  slli         a4, s11, 14
                  srl          a2, t4, s1
                  sub          t4, s8, s11
                  and          a7, a7, s3
                  slti         t3, a7, -1424
                  andi         s3, s6, -1957
                  sll          ra, a2, a7
                  srli         t6, s0, 24
                  sll          t5, a2, t0
                  auipc        t3, 353552
                  auipc        a7, 1004514
                  sltu         s10, tp, s9
                  slti         a6, sp, -1542
                  andi         a3, a7, -1902
                  sltu         a6, s6, s11
                  srli         ra, s11, 14
                  sltiu        a2, zero, -849
                  andi         tp, sp, -1788
                  srl          a0, s9, a0
                  sll          a7, s6, s10
                  sltu         a4, s11, a0
                  sltu         a0, ra, t6
                  nop
                  srl          a7, a6, s6
                  nop
                  addi         tp, s7, 1370
                  auipc        a0, 203351
                  srl          t4, s0, s7
                  sra          t4, a5, s3
                  slt          s3, t0, sp
                  slt          s3, s10, t4
                  sra          s10, zero, s11
                  slli         t3, a5, 23
                  slt          a1, s7, s9
                  srai         s2, t0, 25
                  sub          s0, s10, t4
                  and          s8, ra, s11
                  ori          a4, t5, -992
                  slli         a4, a2, 26
                  auipc        a1, 168919
                  srl          s8, s3, a7
                  srl          a3, a7, s5
                  xori         zero, s1, -1854
                  slt          t3, s11, s1
                  slti         sp, t2, -94
                  sltiu        zero, s10, 1469
                  slli         a6, t1, 4
                  sub          zero, t0, s5
                  slli         a0, tp, 4
                  andi         s11, a4, 22
                  xori         a0, sp, -1208
                  or           a7, t2, s5
                  sll          s7, s2, s11
                  sll          a4, a3, tp
                  xori         tp, a0, -1712
                  sub          a7, s8, s10
                  sub          s3, a6, s5
                  or           a2, s6, t2
                  addi         s1, a6, 1791
                  sub          s6, t1, sp
                  or           a3, a3, t1
                  sltu         a1, a3, s8
                  and          s3, s8, t6
                  xor          s8, s5, s5
                  sub          a5, a2, s1
                  auipc        s2, 835294
                  sltiu        s9, s4, 64
                  auipc        tp, 740941
                  slt          tp, tp, a6
                  srl          t5, t5, s10
                  sub          ra, s8, zero
                  sra          sp, s8, t3
                  srl          a3, a7, a7
                  slt          t1, s8, a4
                  slt          t4, sp, a7
                  and          s9, a1, s4
                  xor          t0, s9, t6
                  slli         t6, s11, 12
                  add          t5, s1, a6
                  lui          s2, 478527
                  slt          t1, a1, s0
                  sra          a5, s8, a7
                  lui          t1, 395076
                  sub          t4, sp, s8
                  addi         a3, a5, 383
                  sub          s7, a7, s11
                  slli         a1, s4, 15
                  or           s6, gp, a2
                  sll          s11, a1, s4
                  srl          s7, s2, a6
                  sll          zero, ra, t5
                  addi         a7, s6, -67
                  sub          a1, a4, a1
                  srai         a3, gp, 11
                  xori         s7, a7, 195
                  nop
                  andi         s1, t4, 1004
                  add          s8, s10, a3
                  srai         s8, t2, 11
                  addi         s7, a4, -586
                  sltu         t1, t3, a2
                  slli         t4, t2, 15
                  sll          a6, t5, a2
                  slti         a6, ra, -210
                  sltu         s8, s6, t6
                  srl          a2, t2, s5
                  slli         sp, a0, 26
                  slt          t3, s8, a6
                  lui          zero, 37543
                  sltiu        a4, t1, -1612
                  sra          s11, tp, zero
                  slt          zero, s5, s8
                  addi         t1, zero, 5
                  slti         a6, t2, 1140
                  xori         s3, s4, -1335
                  add          a1, s0, a6
                  xori         gp, gp, 804
                  srl          tp, t6, s7
                  sra          s6, a6, ra
                  nop
                  sltu         ra, a7, a0
                  srl          a2, a4, s3
                  andi         gp, s5, -1578
                  andi         a4, a2, 248
                  xor          tp, s6, a6
                  or           s8, s1, t5
                  add          s3, a7, s9
                  xori         s3, ra, -911
                  srli         t0, a0, 24
                  sltiu        t4, s8, -814
                  nop
                  sub          s10, a2, t3
                  sub          t0, s5, zero
                  sll          a0, t3, gp
                  and          t3, gp, s6
                  sub          s11, t3, a7
                  lui          s7, 999276
                  or           t1, t1, s1
                  sltu         s10, t1, s3
                  or           s9, s7, s6
                  srli         t4, s6, 23
                  sll          s1, s3, a0
                  slli         t5, t5, 26
                  auipc        t6, 415102
                  slli         t3, s0, 15
                  nop
                  slli         a7, a2, 28
                  sll          s6, t1, t3
                  auipc        zero, 311153
                  andi         t3, a6, -1627
                  sltu         a3, s0, a1
                  slli         a4, t0, 26
                  sll          t4, t6, t4
                  sltu         a4, a3, a1
                  slt          s10, zero, a3
                  auipc        zero, 460815
                  xori         s3, t6, 1726
                  and          t0, a7, ra
                  or           a0, s10, a4
                  addi         s8, t6, -293
                  srli         t1, t2, 29
                  sll          a1, zero, t4
                  xori         s8, s1, -1110
                  srli         a7, s10, 1
                  slt          t5, a2, s8
                  sub          t5, s8, t6
                  sltu         s8, tp, t5
                  or           t5, t1, t6
                  sltu         s10, tp, s3
                  andi         t3, a4, 900
                  srli         a0, t4, 13
                  sra          t6, s11, a5
                  ori          zero, s11, 738
                  sltu         a4, gp, s2
                  or           s7, s3, sp
                  lui          s0, 739474
                  slt          a6, s0, s4
                  sltu         sp, s4, s6
                  and          s6, s5, a1
                  or           sp, a2, t6
                  srai         a5, a6, 13
                  xori         s3, s4, -1792
                  sll          s6, zero, s3
                  lui          s10, 777362
                  slt          t5, s10, s5
                  ori          gp, a5, -738
                  add          a1, t0, t5
                  addi         s11, a0, -562
                  slli         s8, a3, 29
                  xor          gp, s9, sp
                  xori         t1, s2, 153
                  xor          t5, a2, a2
                  sltu         a1, t6, s3
                  and          t0, a0, s5
                  sltu         t0, s8, gp
                  and          a7, s9, s8
                  sll          t0, gp, s11
                  addi         s11, s5, 1800
                  slt          a4, t4, s2
                  sub          t3, sp, a0
                  ori          s10, a1, -1866
                  sra          s7, a2, t5
                  sltiu        a5, s10, 266
                  andi         s1, t5, 1520
                  or           zero, s9, a4
                  slli         t0, zero, 1
                  srl          a5, ra, s8
                  addi         t4, t6, -590
                  srli         tp, s0, 26
                  sll          a0, t6, s2
                  sltu         s7, s3, s1
                  sltiu        s2, t3, 126
                  slli         s9, s4, 12
                  add          t6, s5, t4
                  srai         s11, t1, 9
                  add          tp, a3, s2
                  slt          s8, s6, t3
                  sra          a1, a7, s10
                  sll          s8, s0, s9
                  sub          s10, s1, t2
                  andi         s2, sp, 1387
                  xor          s1, s2, s1
                  nop
                  srai         a0, sp, 0
                  xor          s10, t4, s8
                  nop
                  and          s3, t4, s10
                  lui          s9, 582167
                  auipc        s7, 991724
                  sltu         zero, s2, t2
                  srl          gp, zero, a4
                  addi         a5, a2, 1872
                  sltu         s9, a6, s0
                  slt          s11, t4, gp
                  lui          s7, 959013
                  add          s7, a7, s9
                  srl          t3, t5, t1
                  xor          a2, s8, t3
                  lui          a4, 812952
                  and          a4, a5, a2
                  srai         gp, tp, 4
                  slti         a7, a1, -339
                  sra          a3, s5, gp
                  or           s7, s5, tp
                  sub          a4, s8, a6
                  addi         a1, sp, -48
                  slt          gp, s6, a6
                  auipc        a1, 553533
                  xor          t1, s2, a7
                  addi         t4, a1, 1755
                  add          s6, t3, s1
                  or           t4, zero, s10
                  addi         gp, t5, 858
                  or           t4, t4, s6
                  xori         a1, a6, 185
                  ori          a0, a1, -323
                  auipc        s3, 438913
                  sltu         a4, a0, s5
                  slt          a4, s9, s8
                  and          tp, t4, gp
                  slli         s6, t6, 27
                  slti         a2, t4, -1388
                  sltu         a4, s11, s6
                  and          a3, t6, zero
                  slt          a5, s4, a3
                  auipc        t0, 395782
                  auipc        a6, 104373
                  lui          sp, 789381
                  sltiu        a4, a0, -1094
                  nop
                  srli         zero, a6, 24
                  srl          a0, s7, s9
                  xor          s9, t1, s6
                  add          a5, t5, s4
                  sltu         s10, ra, s10
                  xor          a5, a3, zero
                  sub          tp, tp, a0
                  srl          gp, zero, s10
                  add          a0, gp, s1
                  addi         s6, t4, -895
                  slli         t6, s0, 20
                  srli         tp, a4, 9
                  srli         s8, s5, 7
                  slli         s7, t4, 29
                  sltiu        s3, t6, -423
                  sltu         a6, s4, t2
                  srai         s8, a5, 10
                  nop
                  sub          tp, s7, t1
                  srl          t6, s11, s4
                  auipc        a7, 933507
                  addi         ra, a6, -1993
                  slt          a5, t6, t1
                  sll          s11, a1, sp
                  srai         s0, t0, 14
                  srl          s2, s10, s10
                  sub          t1, s7, a3
                  auipc        s1, 329766
                  and          t6, s11, a6
                  srl          s10, s9, t4
                  ori          s2, a4, -696
                  sub          t3, tp, t0
                  slli         s8, t1, 6
                  lui          sp, 714152
                  sub          a1, a6, t2
                  andi         a3, s8, -1648
                  sltiu        s3, t1, 1755
                  xor          t0, tp, sp
                  add          t4, tp, ra
                  srai         s0, s5, 10
                  srli         a6, t5, 2
                  lui          s0, 434980
                  add          t5, t0, ra
                  sra          s9, a3, t0
                  xori         a0, s7, -1972
                  srli         a4, s11, 30
                  xor          s1, a5, s9
                  sub          a7, a5, a0
                  sltiu        sp, ra, 65
                  addi         a1, ra, 1090
                  srl          t5, s5, a2
                  sltu         t1, s0, a3
                  sll          a3, a3, s1
                  lui          t6, 733615
                  srli         sp, s5, 25
                  ori          s9, t5, -1645
                  sra          s10, s5, a6
                  sll          s9, t3, a7
                  sub          s3, t0, t2
                  addi         ra, t2, 26
                  lui          a4, 953349
                  sub          s3, s0, a6
                  srl          ra, s6, gp
                  and          s11, s11, s1
                  sra          s0, s10, t1
                  ori          a4, t3, -490
                  sll          s7, t0, s11
                  slt          gp, s10, t6
                  xori         a2, s9, 1525
                  srai         a7, t1, 13
                  add          s6, a3, t1
                  xori         s8, sp, 1217
                  srli         t6, t3, 21
                  andi         s10, s8, 5
                  srai         t1, sp, 31
                  srl          gp, a5, a1
                  srai         s9, gp, 5
                  slti         s3, s0, 2016
                  auipc        t5, 660375
                  add          t1, s0, s6
                  srai         t0, s0, 14
                  srai         s7, s3, 14
                  slli         zero, a2, 5
                  nop
                  xor          a3, t2, s2
                  srl          t0, s5, t6
                  addi         t0, s3, 1827
                  andi         t0, s1, -564
                  add          t1, s11, ra
                  xor          zero, t3, t5
                  nop
                  or           tp, s1, t1
                  sra          s7, a3, s9
                  srl          a4, ra, s11
                  sltiu        t1, s11, -1945
                  sra          a4, gp, t2
                  andi         a2, a1, 1051
                  slt          s8, a0, s5
                  srai         s8, a6, 22
                  sltu         gp, sp, s7
                  srai         s11, gp, 13
                  andi         a5, s7, 553
                  sub          t0, t6, a7
                  nop
                  sltu         a7, a1, a0
                  srai         a3, s0, 8
                  sll          t0, tp, a0
                  sltiu        t5, s1, 1021
                  slt          s7, a5, t4
                  slli         a2, a0, 24
                  add          sp, s0, s11
                  srl          gp, a1, a5
                  andi         t3, s9, 1074
                  srl          s2, a3, s2
                  auipc        s6, 77126
                  and          t0, a1, s2
                  nop
                  or           a0, gp, ra
                  auipc        zero, 533592
                  xor          a2, s9, a3
                  lui          t5, 953808
                  sltu         t6, t4, s7
                  andi         t3, ra, -560
                  ori          s10, t2, -266
                  sltiu        s6, t3, -929
                  add          s2, ra, s8
                  and          s7, a2, s0
                  sra          s6, s0, s9
                  slt          s10, a4, s6
                  add          gp, t0, t2
                  srli         s1, s3, 25
                  or           t5, a6, a1
                  or           a6, s3, s4
                  xor          t1, s8, a3
                  ori          t3, a7, -423
                  sltu         a1, sp, a0
                  srl          sp, s9, s1
                  auipc        t3, 277920
                  add          s3, t0, t4
                  or           s1, t5, s3
                  sltiu        t3, s7, -1720
                  and          t1, s5, a3
                  and          t0, a4, t5
                  xori         s2, t3, -1094
                  auipc        sp, 143981
                  srl          s6, t5, a0
                  nop
                  add          a0, t3, a1
                  andi         sp, a5, 469
                  srl          s10, s0, t5
                  xor          s7, sp, ra
                  sltiu        s8, s4, 172
                  sll          s7, a3, s0
                  sll          tp, a0, s0
                  sra          t6, s3, t0
                  lui          s2, 383390
                  add          t4, t0, s11
                  slli         s8, s0, 20
                  sltu         a6, s4, s10
                  lui          tp, 440763
                  add          s3, a4, a6
                  sll          a2, s5, a1
                  or           tp, s4, s5
                  or           t4, t1, t1
                  addi         s3, t5, -1574
                  sltu         t6, s3, a0
                  nop
                  or           a2, a4, s7
                  srli         t0, s5, 4
                  andi         s0, s10, -1012
                  srai         s7, s0, 14
                  sra          ra, t2, a6
                  or           a7, s2, tp
                  sll          tp, t2, s2
                  xor          t5, s5, s10
                  and          a0, s6, a4
                  sra          a2, t5, a3
                  slti         t5, ra, -1479
                  xor          a1, s6, a3
                  xori         a7, a3, -204
                  sltiu        zero, s6, -1066
                  sra          s10, s8, a4
                  sll          a2, ra, t0
                  sltiu        a6, s4, -1175
                  sll          s1, s2, a5
                  sltiu        a2, s0, -1826
                  sra          a1, a5, s4
                  sub          a3, tp, s9
                  and          s7, s4, t3
                  xori         t0, tp, 373
                  srl          tp, t3, s4
                  add          a6, t5, a6
                  li           a1, 0xb39d346c #start riscv_int_numeric_corner_stream_9
                  li           gp, 0xffffffff
                  li           a4, 0x80000000
                  li           s8, 0x0
                  li           s3, 0xa8e74ee
                  li           a6, 0x80000000
                  li           s11, 0xc2f0de04
                  li           t0, 0x0
                  li           a5, 0x80000000
                  li           a3, 0x80000000
                  lui          s3, 305419
                  sub          a6, s3, a3
                  auipc        a3, 795817
                  auipc        gp, 737370
                  auipc        t0, 774325
                  nop
                  nop
                  nop
                  addi         s11, a1, 369
                  lui          s8, 640250
                  add          a4, a5, a3
                  sub          a5, a4, gp
                  sub          a4, s11, a6
                  add          gp, a1, a5
                  auipc        s8, 1006160
                  add          a5, a4, a4 #end riscv_int_numeric_corner_stream_9
                  srai         s10, a7, 28
                  sub          a5, s8, t3
                  srl          a7, s1, s9
                  slt          a2, a4, s10
                  add          a0, a3, a3
                  sra          a6, t6, s8
                  ori          s3, t2, 55
                  ori          t0, ra, -1800
                  xor          t0, s8, t5
                  addi         t4, s1, -1249
                  sltu         t5, t1, a0
                  xor          a1, t2, t6
                  srl          s8, a5, t6
                  add          gp, t2, a2
                  add          sp, a3, s4
                  andi         ra, s0, 1649
                  nop
                  slti         s1, s1, 371
                  slti         s6, a3, -1187
                  srl          s0, s9, s6
                  slt          t5, s2, t1
                  sltiu        t1, t3, 1695
                  ori          t1, s10, -1211
                  and          a1, t0, s5
                  sltiu        s10, a3, -1355
                  sltu         s3, s5, s11
                  sltiu        s3, s10, -1625
                  slti         zero, sp, 1759
                  xor          s8, ra, t0
                  srli         a0, t1, 10
                  slli         s10, s3, 30
                  sll          t1, a6, ra
                  ori          a3, tp, 1516
                  slt          s6, gp, tp
                  add          tp, a0, a6
                  sub          a2, sp, tp
                  auipc        t5, 89963
                  slt          s11, a5, a7
                  sra          s1, a1, s1
                  auipc        gp, 744604
                  slt          t5, ra, s9
                  ori          s3, s10, 1680
                  xor          t3, s3, t1
                  lui          s3, 1022195
                  sra          s7, s0, a5
                  ori          s0, s4, 137
                  sltiu        s1, t1, 1345
                  lui          t6, 432376
                  add          t6, t3, s9
                  srli         a7, s1, 17
                  nop
                  sra          s3, s7, a3
                  or           t0, s10, t2
                  sub          s2, s11, a6
                  slt          s10, s0, sp
                  andi         a7, s3, 1426
                  sltu         s1, s8, s11
                  sltiu        s11, s3, -833
                  auipc        s10, 309901
                  sltu         a6, s0, t3
                  srl          s8, s5, a2
                  sub          a4, gp, t2
                  sltiu        s9, zero, -197
                  srai         s2, t6, 24
                  slt          gp, t4, a1
                  addi         gp, t0, -1770
                  xor          a5, s2, tp
                  ori          s2, ra, -1205
                  sll          s6, s11, t1
                  sltiu        s1, a2, 1284
                  sra          s11, a7, a4
                  addi         s2, a0, -648
                  ori          a5, s8, 1916
                  or           gp, a4, s9
                  xori         a1, a5, 422
                  xori         t1, t2, 155
                  xor          s7, a7, t2
                  add          a5, t6, zero
                  sltu         a0, t2, t0
                  sltu         t1, s0, t4
                  or           t3, a2, s7
                  xor          s3, s5, gp
                  xori         a3, a1, 572
                  ori          t3, zero, -164
                  lui          s9, 89575
                  lui          t5, 500845
                  slti         t3, s8, -1693
                  sltiu        s7, s0, 752
                  slt          a6, t1, a7
                  auipc        t4, 698335
                  and          t3, s4, s1
                  andi         a6, tp, 677
                  sltiu        t0, s0, -1357
                  sltiu        t4, t5, -411
                  sltu         s7, zero, s4
                  nop
                  xor          s1, a0, t3
                  add          zero, t0, t0
                  sltu         a0, s10, gp
                  sub          s10, s9, a7
                  auipc        s8, 218910
                  xori         t6, s6, 191
                  srli         a4, a5, 20
                  slli         a3, s2, 3
                  auipc        a3, 441201
                  ori          zero, ra, -1936
                  nop
                  slli         t5, zero, 21
                  andi         a3, s0, 312
                  slti         sp, t1, -347
                  ori          gp, tp, -229
                  add          s3, a7, s7
                  xor          s10, t6, t1
                  xor          s6, a0, a2
                  auipc        s10, 1018581
                  ori          a5, t4, 1484
                  lui          t6, 628846
                  srl          s2, a3, s6
                  andi         t3, s8, -1530
                  slli         a3, zero, 3
                  slt          s6, s7, gp
                  srli         t1, a1, 2
                  xor          a4, s7, s7
                  sll          s3, t1, s11
                  lui          ra, 833898
                  addi         s1, s9, -179
                  nop
                  sltiu        a0, t0, -1564
                  or           a4, s9, a1
                  sra          a2, a0, s8
                  addi         s1, t2, -1235
                  lui          ra, 498901
                  sra          s10, s6, s0
                  and          a6, s0, t6
                  sltiu        a1, gp, 897
                  sll          s6, t6, a4
                  sra          ra, s4, ra
                  add          tp, s3, s1
                  sltiu        s10, s6, 758
                  auipc        s1, 713449
                  slti         a6, a6, 671
                  sltiu        s6, a3, 1343
                  srli         a0, s1, 31
                  slt          s1, gp, s5
                  add          a2, s2, s7
                  addi         a4, s6, 1969
                  srai         a3, t3, 16
                  slt          t6, s5, a2
                  sll          s2, s7, ra
                  addi         s2, s11, -525
                  and          a4, a4, s5
                  andi         t5, s11, -1051
                  slt          s7, s10, s9
                  lui          ra, 29381
                  sub          s11, zero, ra
                  xor          a1, s8, gp
                  and          gp, s3, s9
                  slli         a7, a0, 3
                  sll          a5, s3, s2
                  or           tp, s11, s11
                  srli         s2, a1, 17
                  sub          s1, a6, a6
                  slt          s8, a5, t1
                  sll          zero, t4, s3
                  xori         a3, s9, -697
                  srli         s11, a6, 21
                  srli         a7, s2, 14
                  andi         s8, s4, 627
                  sub          zero, t2, s9
                  lui          a7, 124565
                  slli         t0, t4, 18
                  sll          a5, t4, a5
                  srli         sp, s2, 21
                  srai         t4, t5, 29
                  slli         t6, gp, 20
                  or           a6, s3, a0
                  srli         s11, t5, 13
                  and          t1, t1, s2
                  andi         a4, s8, 824
                  sltiu        t4, a6, 145
                  sltiu        s11, t3, -1759
                  auipc        t6, 38614
                  ori          s0, ra, -1843
                  sltiu        s2, s3, 819
                  ori          a2, s7, 655
                  srai         t3, a1, 24
                  xori         s1, a5, -41
                  and          s2, a4, a5
                  add          a4, s2, t2
                  sub          s7, a7, a7
                  sltu         s2, gp, s4
                  and          t3, tp, a6
                  srai         zero, t6, 11
                  srli         a2, t5, 13
                  add          gp, s2, t4
                  slli         zero, a3, 14
                  srai         a7, t1, 29
                  and          ra, gp, tp
                  xori         a0, a1, -1263
                  and          zero, s11, tp
                  sltiu        s9, s1, -1128
                  srl          t3, a3, tp
                  addi         gp, t1, 1171
                  xor          a2, t1, zero
                  xor          a3, t6, a6
                  sub          s6, gp, tp
                  andi         zero, s11, 1335
                  sub          s9, s8, s6
                  and          t0, s9, s4
                  sltiu        tp, s1, 997
                  srli         t4, tp, 19
                  srai         s6, s5, 25
                  sltiu        a7, s8, 623
                  srli         t1, t0, 26
                  slli         s8, s11, 14
                  or           a1, s3, t0
                  slt          s1, s3, a5
                  xori         t5, gp, 321
                  add          a4, t1, t6
                  sra          a7, zero, t3
                  sub          t4, s7, s2
                  lui          s1, 718432
                  add          t6, s10, s8
                  slti         t1, s3, -1438
                  or           tp, a0, a2
                  or           a6, a6, t4
                  sra          a4, a1, a5
                  srl          ra, a2, s10
                  sra          a4, s10, a3
                  slli         s1, s1, 7
                  sltiu        t0, sp, 1058
                  auipc        a0, 157143
                  xor          a0, t6, t1
                  xor          t3, sp, s2
                  xori         t4, s9, 802
                  sltu         s8, a7, s11
                  sll          gp, a2, s9
                  slti         a4, t2, -717
                  sltu         s1, s6, s2
                  lui          gp, 553958
                  auipc        sp, 533366
                  sltiu        s2, t0, -215
                  andi         a7, t0, -110
                  addi         a5, sp, 1900
                  srl          zero, sp, s7
                  addi         a1, gp, 35
                  sub          a3, t4, s6
                  xor          sp, tp, tp
                  andi         a4, t3, 1659
                  xori         t6, zero, 72
                  ori          a5, gp, -1396
                  srai         s8, t1, 20
                  auipc        t4, 480198
                  sltiu        t5, zero, 190
                  srl          a4, t0, s4
                  xori         s11, a6, 828
                  and          zero, s10, sp
                  sll          s0, t5, ra
                  xori         a4, t1, -1318
                  or           s10, a4, s4
                  srai         a6, a0, 23
                  lui          a0, 654925
                  lui          a1, 634179
                  ori          s2, a3, 989
                  and          a6, gp, tp
                  slti         zero, s4, 192
                  andi         ra, s11, -1096
                  sltiu        t3, a5, 718
                  ori          s6, ra, -1517
                  slt          s0, t1, s2
                  or           a7, ra, s4
                  xor          t3, t5, gp
                  or           t3, s7, t0
                  slli         ra, a5, 30
                  ori          a7, a4, -1926
                  srai         a1, t4, 30
                  or           t3, a6, t0
                  ori          ra, a1, 352
                  sra          a0, t4, s4
                  slti         ra, gp, 1682
                  sltiu        t4, s3, 885
                  auipc        s0, 975922
                  slt          s10, s8, t3
                  auipc        a2, 16427
                  xor          a0, s3, s10
                  andi         s6, ra, 1540
                  or           s3, tp, a5
                  sll          s6, t0, s7
                  ori          t3, a4, 467
                  andi         s10, gp, -366
                  sub          s8, a6, sp
                  lui          ra, 386255
                  and          s9, s0, s3
                  slti         s0, t2, 512
                  slt          sp, ra, a1
                  sra          a2, s10, s1
                  srl          ra, s6, a5
                  srli         t5, t1, 27
                  auipc        t4, 713793
                  ori          a0, s3, -517
                  sub          zero, a2, gp
                  xor          t1, t3, gp
                  or           a2, t0, a5
                  or           t3, s6, a5
                  sra          s0, a5, t1
                  slti         s3, a6, -810
                  slli         a0, t1, 1
                  and          a7, s4, s2
                  or           ra, s7, t3
                  addi         t6, t2, -1879
                  slti         s9, s0, -1510
                  ori          ra, t0, 1607
                  slti         tp, t5, -819
                  andi         t3, s11, 1394
                  lui          s10, 1038143
                  srl          s2, a1, a1
                  slti         a0, t6, -235
                  sltu         t6, a5, tp
                  slt          s0, s3, sp
                  sub          a0, a4, a0
                  sub          a2, t6, t5
                  ori          t4, t2, 1455
                  slti         s6, a7, -416
                  ori          s6, s2, 526
                  auipc        sp, 394546
                  auipc        s11, 760485
                  ori          ra, s6, 1281
                  slt          t3, t2, a4
                  add          t3, s10, a4
                  srli         t3, a2, 17
                  lui          s7, 490956
                  sltu         t3, s7, s11
                  slt          a2, t6, sp
                  nop
                  andi         t4, s2, 1036
                  xori         t5, s8, -74
                  sltiu        t1, sp, 2041
                  lui          a6, 915214
                  slt          gp, s11, s8
                  srl          s0, a2, s7
                  sra          s3, s6, t3
                  sra          a3, s9, a1
                  sltu         a7, t3, a7
                  lui          s3, 570746
                  add          t4, s11, tp
                  srli         s11, s2, 14
                  and          t5, s7, s8
                  auipc        t6, 503100
                  sll          s0, zero, s11
                  sll          a1, t4, s3
                  and          a0, a1, a3
                  auipc        s0, 573064
                  nop
                  auipc        t5, 184079
                  sra          a3, a5, a1
                  auipc        s9, 156678
                  srli         t0, s0, 12
                  or           a2, a6, s8
                  nop
                  ori          t1, gp, 1198
                  ori          s0, t5, 817
                  srl          a6, a1, t2
                  add          t3, zero, t4
                  add          s1, a5, a6
                  lui          t0, 967211
                  slli         a3, t2, 0
                  slli         s7, s3, 11
                  addi         sp, sp, -1672
                  sra          a1, t2, ra
                  srl          a2, a1, s3
                  ori          t1, a1, 1980
                  sub          a5, s10, s4
                  slti         t4, s9, 1294
                  lui          s1, 733510
                  lui          a5, 789431
                  slti         s10, s9, -1765
                  sll          a0, a5, a2
                  andi         zero, a0, 69
                  sll          s0, s3, t4
                  or           a7, a2, a4
                  xori         t0, a2, -521
                  auipc        ra, 757993
                  add          a6, t2, s3
                  slti         s11, s8, -68
                  and          s6, s3, t5
                  ori          s6, a6, -628
                  sub          s0, t3, s3
                  lui          a7, 868993
                  and          sp, s0, gp
                  slti         s8, s0, -282
                  sltiu        t4, t0, -522
                  nop
                  and          zero, s11, a2
                  addi         s2, s5, 996
                  or           a7, t4, a4
                  srl          t3, s6, ra
                  sltiu        s10, s8, -672
                  srli         gp, a6, 5
                  or           a7, s5, t3
                  lui          gp, 812713
                  nop
                  addi         s3, a4, -349
                  slli         s6, a3, 3
                  sltiu        s7, s7, -614
                  sltu         t1, s11, s3
                  andi         t4, t5, -1193
                  addi         t0, s6, 1588
                  andi         s11, a3, -1403
                  srli         s3, tp, 26
                  xori         s2, t6, -312
                  srai         t3, a4, 1
                  srl          tp, tp, t1
                  andi         a6, a6, 735
                  slt          s11, a6, a7
                  sra          t1, a4, s2
                  and          s1, ra, s9
                  srai         s9, tp, 30
                  sll          s7, a3, a1
                  srl          s1, t6, t0
                  srl          s7, s5, a7
                  ori          s0, t2, 952
                  or           s8, s10, t2
                  ori          gp, s6, -1836
                  ori          t6, a3, -1527
                  nop
                  addi         a0, t5, 2038
                  sltu         tp, s7, s9
                  add          a1, t6, s3
                  srli         a2, a6, 7
                  or           a4, a6, s6
                  nop
                  slti         sp, s3, -1354
                  nop
                  add          tp, s6, a0
                  nop
                  and          s8, s10, s7
                  slli         t1, s6, 12
                  nop
                  add          s2, s5, s11
                  or           t5, a6, t2
                  sltiu        s2, a7, 886
                  lui          a1, 391104
                  sll          t3, a6, t3
                  nop
                  addi         a1, sp, 2003
                  sltiu        ra, t1, 772
                  and          gp, s8, s5
                  sltu         sp, t4, a1
                  and          s0, s2, t5
                  slli         a5, s7, 27
                  srai         s3, a6, 7
                  slli         s8, s2, 20
                  sll          s11, a2, tp
                  xori         a6, s8, 594
                  xor          a6, zero, gp
                  slt          ra, s8, t6
                  lui          s7, 124190
                  srai         s3, a7, 11
                  sub          zero, a2, t0
                  slti         a7, t4, -477
                  lui          s9, 148726
                  slt          s7, t1, s4
                  sra          a7, s6, t0
                  sltiu        s9, a7, 95
                  slti         t4, a2, -1552
                  auipc        t1, 6645
                  sub          a2, s1, a6
                  add          s7, zero, t4
                  sltu         a0, s3, s1
                  srl          s7, s9, t6
                  slt          t6, t4, t3
                  sra          s3, s9, s8
                  sub          t4, a6, tp
                  add          t0, s2, s0
                  xor          a0, t6, s0
                  srl          s6, a0, t1
                  and          a3, s4, gp
                  srl          a3, s4, tp
                  sll          a4, s11, s10
                  or           a5, zero, a2
                  add          a0, s0, gp
                  lui          s10, 174399
                  sll          tp, t0, s8
                  and          s7, s11, s10
                  lui          t1, 604753
                  add          ra, s1, zero
                  nop
                  srai         tp, s3, 20
                  andi         sp, sp, -1121
                  slti         s7, s2, -1461
                  and          a2, ra, t4
                  lui          s9, 565642
                  sltiu        gp, t1, -286
                  srai         t1, t4, 30
                  sltu         a7, s1, s6
                  or           sp, ra, t3
                  xori         s1, a2, 499
                  sltiu        s8, t1, 772
                  xori         gp, a0, -1943
                  or           a2, s6, a2
                  srli         ra, s5, 7
                  slti         t4, t1, -1139
                  slli         s0, t0, 31
                  sltu         s11, zero, tp
                  sltiu        s11, zero, 1854
                  sltiu        a6, tp, -685
                  srl          s11, a4, t3
                  sra          s10, a6, a5
                  xor          ra, t6, a0
                  lui          s10, 855236
                  sltiu        t0, s5, 934
                  slti         a2, s0, -646
                  slti         zero, a0, -1875
                  xor          s7, t2, a7
                  sltu         s9, s10, s4
                  sltu         t6, tp, a4
                  slt          s1, t5, zero
                  srl          s6, a6, t4
                  srli         ra, s1, 1
                  sltu         s7, s1, s8
                  sltu         t4, s5, s10
                  sra          s10, zero, s7
                  add          t4, t4, s6
                  or           tp, a7, a0
                  lui          a4, 463373
                  addi         t1, t4, -1104
                  auipc        a2, 427821
                  srli         a1, tp, 23
                  sltu         a6, tp, a2
                  slti         s1, a6, -1246
                  xori         t3, s0, -1294
                  slli         a7, t6, 19
                  auipc        gp, 61472
                  sub          s0, tp, a3
                  sltu         sp, a2, s4
                  sub          s2, ra, ra
                  sra          s6, t1, s11
                  nop
                  sub          t5, gp, t2
                  addi         t0, s1, 546
                  sltiu        a5, t3, -1471
                  srai         a7, s8, 11
                  xori         a4, s7, 1558
                  ori          a3, s4, -1057
                  sltiu        a4, a6, -1381
                  sub          t0, t0, s7
                  xori         s6, sp, -1240
                  srl          sp, t3, s4
                  sub          t3, s9, s6
                  nop
                  add          s3, s9, a5
                  srli         t1, s3, 27
                  ori          tp, ra, -1365
                  or           t3, t4, t4
                  sub          s1, t0, a3
                  slti         s1, t1, 1662
                  lui          a6, 838007
                  sltiu        ra, s11, 1364
                  slli         s8, s3, 9
                  srai         tp, s8, 20
                  xor          s2, ra, gp
                  andi         s6, a5, -953
                  auipc        s1, 654613
                  or           s10, t5, t1
                  sub          a7, zero, a1
                  or           tp, zero, a1
                  slli         a2, t0, 16
                  auipc        a0, 708783
                  add          a3, t0, a3
                  and          a3, t3, a7
                  sra          a4, s1, a7
                  srai         s1, t6, 27
                  andi         t5, ra, 1345
                  addi         a2, s1, -325
                  sll          t1, s8, t3
                  srai         tp, a3, 14
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           gp, 0x69a1a788
                  li           s10, 0x5f3683f5
                  li           s2, 0xffffffff
                  li           a5, 0xc8b26a99
                  li           s9, 0x80000000
                  li           a2, 0x80000000
                  li           a7, 0x0
                  li           a0, 0xffffffff
                  li           t6, 0xffffffff
                  auipc        s9, 959714
                  lui          a5, 707104
                  nop
                  auipc        s7, 16798
                  addi         s10, s7, 805
                  sub          t6, a0, a0
                  sub          s10, a5, a0
                  lui          t6, 411178
                  auipc        a5, 744450
                  lui          a7, 559326
                  sub          t6, t6, a2
                  sub          s2, s7, s2
                  lui          a2, 819177
                  lui          a7, 968825
                  auipc        a7, 567806
                  nop
                  nop
                  add          a7, a7, a7
                  add          t6, s7, s2
                  add          a5, t6, s2
                  auipc        s9, 432888
                  nop
                  nop
                  lui          gp, 127908
                  sub          a0, s9, s9
                  sub          gp, a5, a0 #end riscv_int_numeric_corner_stream_11
                  xori         a1, sp, -366
                  sub          a4, t6, tp
                  lui          s7, 446437
                  slt          a1, a1, s0
                  sub          a0, s9, a1
                  sltu         ra, a6, s6
                  sra          s10, t6, s3
                  auipc        a7, 46276
                  nop
                  xori         s0, t1, -503
                  xor          tp, s3, a7
                  xor          t3, a3, t0
                  ori          s7, a5, 1360
                  srli         t0, sp, 5
                  srl          a3, a2, a2
                  xor          zero, a5, s3
                  or           sp, s2, a6
                  sltiu        s11, a1, 1923
                  and          a2, t0, t2
                  slli         a3, a7, 4
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           a5, 0x0
                  li           a6, 0x80000000
                  li           a2, 0x0
                  li           a1, 0x119d8510
                  li           sp, 0x80000000
                  li           s3, 0xca4bb429
                  li           t5, 0x80971ab9
                  li           t1, 0x80000000
                  li           s0, 0x80000000
                  addi         s9, a2, -150
                  lui          a1, 843216
                  auipc        sp, 588637
                  add          a1, a2, sp
                  sub          t5, sp, s9
                  auipc        s9, 203175
                  add          a1, a6, a5
                  sub          s3, s0, a1
                  nop
                  sub          s0, a2, sp
                  nop
                  lui          a1, 679300
                  auipc        sp, 437445
                  addi         t1, t1, 1454
                  lui          s0, 994329
                  add          a1, sp, s0
                  auipc        s9, 32967
                  nop
                  lui          t5, 1005233
                  sub          sp, s3, t5
                  addi         a6, t1, -428
                  addi         t5, t5, -2018
                  nop #end riscv_int_numeric_corner_stream_17
                  auipc        t3, 859450
                  or           t1, ra, t1
                  slli         s9, t0, 17
                  add          s1, s8, a0
                  or           a1, s10, t2
                  sra          t5, gp, s10
                  slti         t3, s4, -1676
                  add          s8, a6, a3
                  slt          a6, s6, a6
                  andi         gp, a1, 948
                  ori          sp, t2, 1558
                  or           s7, a2, s2
                  sltu         s1, a7, s2
                  or           t4, a4, a3
                  slli         ra, t5, 13
                  srai         s10, tp, 26
                  sub          zero, ra, s4
                  sltu         s8, s5, s1
                  nop
                  and          a6, t2, s6
                  ori          ra, ra, -120
                  lui          t3, 371416
                  slti         s8, a1, 150
                  or           s3, gp, sp
                  sltu         a1, tp, s7
                  addi         t1, s4, 1767
                  or           a1, gp, gp
                  sra          sp, s1, s0
                  srl          ra, s1, s9
                  add          t5, ra, a1
                  or           tp, zero, s0
                  xori         s6, s2, -1864
                  sra          a7, a2, t3
                  srl          ra, s6, a3
                  xor          s2, sp, t6
                  slti         a6, a5, -457
                  slli         t4, a2, 5
                  ori          a7, a0, 1985
                  addi         t3, s7, -202
                  and          a6, s10, a6
                  auipc        a7, 91923
                  or           s0, s3, s9
                  xor          t3, ra, s3
                  slt          a3, sp, t1
                  slti         a3, zero, -416
                  srai         s10, a0, 26
                  srl          s2, t1, a0
                  sltiu        s0, t3, 948
                  sub          t3, t3, zero
                  addi         tp, t1, -769
                  sll          t4, t4, s6
                  lui          s9, 940293
                  lui          t3, 971845
                  lui          t6, 795379
                  or           gp, t2, s8
                  sltu         t4, s11, s1
                  sra          a3, s1, s11
                  auipc        s3, 578540
                  or           a2, s10, a4
                  lui          s3, 860685
                  sub          ra, a6, a5
                  lui          t3, 423766
                  slli         s9, s2, 24
                  srli         a0, s7, 30
                  nop
                  slti         zero, t5, -311
                  auipc        s9, 220477
                  lui          a7, 119515
                  slti         a2, tp, -563
                  or           a0, s8, a2
                  nop
                  ori          a2, a7, 825
                  auipc        a5, 728866
                  or           s9, ra, a6
                  auipc        s3, 316535
                  and          s2, a1, ra
                  andi         s1, a1, 238
                  sub          zero, a0, s11
                  addi         a5, s10, 1607
                  and          a7, s10, a6
                  sltu         s3, tp, s5
                  xori         tp, t2, 524
                  add          t4, t3, a0
                  sll          a3, s8, t5
                  add          s0, s11, t3
                  sltiu        a3, a7, 1347
                  sll          a4, s4, a3
                  sltiu        s3, s7, 1894
                  lui          s10, 386207
                  sra          zero, gp, s5
                  ori          a4, a3, -884
                  addi         a0, s9, 1512
                  srai         a4, s4, 16
                  sltiu        t0, t0, 309
                  sub          s8, a0, s5
                  xor          t6, a4, s3
                  add          a0, a3, tp
                  srli         zero, t6, 16
                  sra          t0, a0, a2
                  srai         t4, t1, 10
                  add          s1, s11, a3
                  ori          s8, a5, -1517
                  and          a4, s2, s2
                  add          s11, s4, a2
                  ori          s8, t2, -483
                  srai         t0, a3, 4
                  slli         t5, t0, 26
                  srl          sp, s7, s5
                  sltu         a7, sp, s0
                  sltiu        t0, t4, -1051
                  sub          a4, ra, s3
                  srli         s11, tp, 12
                  sll          t5, t6, s7
                  xori         t4, s7, -1500
                  and          a3, s0, a6
                  or           sp, gp, a5
                  srai         zero, a5, 27
                  or           t0, zero, t3
                  slli         t5, a0, 11
                  sra          gp, a2, t3
                  slt          ra, a5, s10
                  andi         a5, t5, -873
                  and          sp, s7, t4
                  sub          ra, a6, t3
                  slli         a5, s5, 11
                  sll          sp, t5, t2
                  add          a4, s5, s10
                  slt          s6, a4, a1
                  slli         s10, ra, 7
                  srai         s3, s8, 1
                  sltu         ra, t5, gp
                  srli         a2, s5, 4
                  auipc        a6, 670862
                  andi         t3, a3, 1832
                  auipc        s3, 378843
                  slli         s1, s1, 26
                  xor          tp, ra, s5
                  sltiu        sp, a6, 1869
                  lui          a0, 1026486
                  sra          a1, a0, tp
                  sra          t1, s5, t2
                  or           a7, a5, s7
                  nop
                  addi         ra, s3, -1270
                  xor          s6, a0, s5
                  slt          a6, s10, t4
                  slti         t1, a7, -601
                  addi         a0, s6, 1555
                  sub          s0, s8, s4
                  ori          a3, ra, -1594
                  ori          t1, t1, -601
                  sltiu        a1, s5, 431
                  xori         s0, t6, -1975
                  xori         s2, a0, -1117
                  lui          a2, 320517
                  lui          a1, 864165
                  sra          s11, a0, sp
                  sub          s1, a1, s3
                  add          s0, sp, s2
                  srli         s1, s6, 13
                  srl          a6, s5, s5
                  slti         a7, s8, -834
                  sltu         t1, s0, s2
                  and          s1, s4, t3
                  sltiu        s3, s9, -1993
                  srl          s8, s4, s5
                  or           t1, t1, a7
                  xori         a3, t2, -446
                  srli         a2, a4, 25
                  auipc        s3, 149237
                  nop
                  lui          a2, 456850
                  or           s11, s2, s1
                  sltu         gp, s5, s5
                  slti         ra, t2, 410
                  srl          a1, s11, a7
                  andi         s8, s5, 312
                  ori          t3, tp, 1311
                  srai         s8, t2, 22
                  nop
                  slt          s7, gp, a0
                  slli         t6, a2, 30
                  sltu         a2, s2, a0
                  sub          s6, t0, a7
                  srli         s9, s0, 14
                  and          s9, a7, s7
                  slli         a1, s2, 1
                  xor          a7, s1, s11
                  and          s10, s7, t2
                  slli         s9, s3, 14
                  lui          t6, 134733
                  xori         s1, a4, -555
                  sltu         a4, s11, a4
                  sll          t1, t0, zero
                  or           t6, t1, gp
                  slt          a6, a5, t1
                  slti         t3, s8, -452
                  xori         s6, a6, -1262
                  lui          zero, 204639
                  slli         sp, a1, 25
                  andi         t4, a5, -1460
                  ori          a5, s10, 834
                  ori          a0, s10, 1132
                  xor          s1, a1, t6
                  slt          s3, s5, sp
                  srai         s2, s9, 25
                  slt          s11, a7, zero
                  srl          ra, s1, sp
                  slt          t1, t5, a2
                  sra          t1, t2, s11
                  sra          s1, t5, s2
                  srl          a2, tp, t5
                  ori          s8, ra, -306
                  xor          s2, s3, a3
                  lui          ra, 407845
                  ori          t5, tp, -62
                  slti         t3, s7, 2037
                  or           t5, s3, a2
                  lui          s1, 867332
                  and          a2, t6, a7
                  nop
                  auipc        t1, 92881
                  andi         a4, a5, 324
                  addi         zero, s3, -1041
                  srai         s1, s2, 19
                  addi         sp, gp, 34
                  andi         a6, t3, -644
                  ori          t6, s1, 685
                  xori         s0, t1, 871
                  ori          t1, t3, 1538
                  lui          s10, 436597
                  xor          t5, s3, a7
                  sub          s11, a2, zero
                  ori          s0, s2, 903
                  srl          sp, s10, s9
                  xori         zero, sp, -850
                  xori         s3, a3, 1748
                  slt          a2, t4, sp
                  sub          sp, s1, a0
                  sltu         a7, zero, a3
                  ori          s11, a7, -2045
                  xor          sp, t4, gp
                  nop
                  sub          a7, t0, t5
                  sltiu        t4, sp, 858
                  srli         s1, a7, 11
                  addi         s0, a2, 490
                  lui          s2, 396748
                  slti         tp, s3, 232
                  auipc        t3, 540272
                  sltiu        s1, a2, -105
                  slli         ra, a3, 13
                  addi         t6, s9, 2043
                  sra          sp, t4, s3
                  slli         s10, s6, 23
                  xor          s2, a5, s7
                  or           a5, gp, ra
                  sub          s3, t0, tp
                  sra          s8, zero, t6
                  and          s6, zero, s9
                  andi         t4, sp, -1339
                  sltiu        a1, t0, 1846
                  or           s2, s9, a6
                  sub          tp, s9, gp
                  addi         t4, s8, 1963
                  sub          t3, s5, s4
                  sll          zero, s6, t4
                  auipc        t5, 206675
                  srli         sp, s10, 31
                  lui          s2, 127804
                  ori          a2, t6, 1370
                  srli         s10, zero, 16
                  sltu         sp, s8, a7
                  slti         sp, tp, 771
                  lui          s6, 470976
                  sra          s0, t1, s3
                  nop
                  andi         s7, s1, 2006
                  slt          s3, s3, s10
                  andi         a3, s5, 1271
                  srli         ra, a7, 20
                  sltu         t6, s11, t6
                  add          t4, s9, s3
                  sub          t0, s8, a1
                  and          a4, t0, zero
                  ori          tp, t0, -66
                  sub          a0, t5, t4
                  sll          t4, a5, a1
                  and          t5, s4, s11
                  sll          a3, s0, a2
                  sll          a4, s9, a7
                  xor          ra, tp, t5
                  xori         s7, a2, 917
                  sltiu        sp, s2, -1093
                  slli         a3, s11, 21
                  and          t3, t5, t4
                  lui          t6, 260598
                  srli         a1, s2, 15
                  add          s0, t0, t5
                  xori         a7, s9, -880
                  sll          sp, gp, a1
                  lui          s3, 797969
                  auipc        a5, 699196
                  auipc        s10, 12697
                  addi         a0, a0, -458
                  li           ra, 0xf61ad95f #start riscv_int_numeric_corner_stream_14
                  li           gp, 0xffffffff
                  li           s0, 0x69aa557e
                  li           t5, 0x80000000
                  li           a1, 0x80000000
                  li           a3, 0xffffffff
                  li           a6, 0x80000000
                  li           s11, 0x80000000
                  li           a4, 0x0
                  li           a5, 0xffffffff
                  nop
                  add          a5, a1, ra
                  lui          a3, 973402
                  add          s0, a1, a6
                  auipc        s11, 256249
                  nop
                  auipc        a4, 537606
                  lui          a6, 27326
                  addi         a4, s0, -211
                  addi         t5, a5, -812
                  lui          gp, 734364
                  add          gp, a5, a1
                  sub          a5, a3, a6
                  add          s0, a5, t5
                  sub          s0, ra, a5
                  nop
                  add          gp, a3, a5
                  addi         a3, ra, -1160
                  lui          s0, 1035634
                  sub          a3, a5, a1
                  sub          s0, s0, t5
                  addi         a4, a5, -1929
                  nop
                  lui          s0, 483747
                  add          a4, gp, s0
                  addi         t5, a3, -1522
                  nop
                  addi         s11, ra, -1502 #end riscv_int_numeric_corner_stream_14
                  addi         s11, t2, -941
                  add          a1, t1, gp
                  nop
                  and          t4, gp, t2
                  slli         s3, t4, 7
                  lui          tp, 345420
                  sltu         t1, s10, sp
                  lui          s9, 175244
                  sra          a6, t0, s8
                  ori          a4, zero, -1573
                  sra          t5, s2, t3
                  slti         tp, a5, 932
                  ori          a6, a1, 958
                  auipc        tp, 272925
                  auipc        t3, 244927
                  xori         ra, s6, -1162
                  srli         t6, a2, 7
                  sltu         s1, a6, s6
                  srl          a2, a7, s3
                  xori         s8, a0, -365
                  sra          t4, a5, a4
                  ori          ra, t0, 569
                  xor          t3, t0, a0
                  sub          gp, a7, t5
                  srai         s7, s10, 13
                  nop
                  andi         s2, gp, 762
                  or           a1, s2, t5
                  srl          t6, ra, ra
                  lui          t6, 128706
                  sra          t6, a5, s0
                  srl          t4, gp, a6
                  sltu         gp, sp, t4
                  andi         s8, tp, 1467
                  sub          gp, s6, s7
                  sub          t0, s9, s5
                  or           a3, t5, a4
                  auipc        s8, 49975
                  or           t0, s7, t2
                  addi         gp, t0, -782
                  xori         a1, s10, -1723
                  sltiu        a5, a3, -1198
                  lui          t0, 176995
                  slli         s1, t3, 15
                  srl          t5, s5, s8
                  sra          s3, gp, s10
                  sll          a7, s9, s6
                  srli         a2, t6, 20
                  sltiu        s6, s2, -974
                  add          a1, t6, s10
                  srai         a3, a0, 8
                  srl          t3, ra, s9
                  add          s9, a0, s4
                  or           s7, a1, t1
                  sltiu        s11, s11, 314
                  srai         t6, ra, 14
                  andi         a5, gp, 1920
                  srai         zero, a6, 10
                  slt          ra, t0, s8
                  slti         zero, s6, -1129
                  and          t5, a7, t1
                  sra          a6, s3, t4
                  auipc        t0, 824145
                  slti         s9, s4, 312
                  xor          t4, a2, a3
                  sra          s1, t6, tp
                  slt          a3, s2, a1
                  ori          t6, t1, 727
                  lui          sp, 356061
                  xor          a0, gp, a5
                  lui          s2, 751998
                  ori          t4, s7, 1267
                  andi         a0, s1, 1621
                  sub          a3, s2, t2
                  srai         a1, s5, 2
                  srai         s3, s4, 8
                  slli         gp, s6, 22
                  slli         a3, sp, 22
                  sub          sp, a0, s11
                  sltiu        a2, a0, 1253
                  xori         s3, sp, 1998
                  slt          s2, s8, s2
                  or           s1, t6, a4
                  sll          a5, t4, s10
                  sll          t6, s10, s0
                  srl          a5, zero, a0
                  addi         sp, s3, 1536
                  slli         s10, t4, 1
                  sltu         t6, t3, gp
                  sra          a6, s6, ra
                  ori          t5, zero, -1861
                  xor          a5, s2, t3
                  nop
                  lui          s1, 469635
                  or           s1, t1, t4
                  sll          t6, t0, tp
                  addi         sp, s1, -1187
                  auipc        a2, 727792
                  srl          t4, s6, t0
                  andi         a2, s0, 1689
                  ori          s3, s11, -1142
                  xori         s3, t2, 208
                  sub          a7, zero, gp
                  sub          sp, s5, a2
                  xori         s6, t3, 1695
                  xori         s11, a2, 263
                  nop
                  sra          s0, s8, ra
                  and          t5, t4, s3
                  or           a7, s10, s1
                  slt          s3, s11, s2
                  xori         t1, gp, 587
                  or           s0, t6, a1
                  nop
                  sltu         s0, sp, t6
                  or           a7, t4, a3
                  nop
                  auipc        ra, 353948
                  andi         t1, s3, -80
                  xor          t3, a6, a6
                  sltiu        ra, s2, 836
                  or           t6, a5, t1
                  or           t3, ra, a6
                  sltiu        s11, s4, 1107
                  slli         s11, a1, 7
                  slti         tp, s7, -1034
                  sltiu        s9, t2, -931
                  slti         s6, a5, 374
                  srli         s11, s7, 11
                  and          t4, a1, a1
                  srl          s10, t1, a0
                  srl          t4, a2, gp
                  lui          a6, 488621
                  sub          s7, zero, s10
                  addi         s0, t2, 2039
                  srai         a5, s0, 30
                  slli         t1, s3, 31
                  xor          a6, s1, zero
                  lui          a0, 292916
                  add          s7, a6, t6
                  auipc        t5, 444678
                  slt          a6, ra, s6
                  and          t0, a5, a2
                  add          t0, a4, a0
                  or           t3, sp, t2
                  srl          a2, s8, s9
                  srai         zero, a1, 27
                  xor          s9, zero, t4
                  sra          zero, a2, t3
                  sub          t5, t1, s10
                  auipc        s6, 29521
                  auipc        s6, 413031
                  and          ra, s10, a3
                  auipc        s6, 519151
                  xor          s9, s0, zero
                  slti         zero, s9, -1954
                  lui          t6, 331770
                  sltiu        tp, a5, 1081
                  xori         s10, ra, -271
                  sltu         a0, s4, t1
                  nop
                  add          a1, a3, tp
                  sra          s11, s1, a7
                  ori          t4, s4, 1582
                  addi         s2, ra, -1844
                  addi         s3, s8, -739
                  auipc        s7, 1022175
                  sll          t1, a6, t4
                  add          s7, t0, zero
                  nop
                  srli         ra, ra, 17
                  and          gp, a3, t3
                  srai         s2, a4, 24
                  and          a0, t0, t5
                  add          a2, t0, a7
                  auipc        sp, 163191
                  sll          s0, a7, sp
                  addi         t0, s3, 1024
                  srl          t6, s1, s8
                  ori          t1, tp, 991
                  ori          s9, gp, -1898
                  andi         t1, ra, 162
                  andi         tp, a1, -250
                  addi         s3, s11, 427
                  sltu         s1, s0, t3
                  srl          a7, t1, s2
                  and          a3, s6, s8
                  ori          sp, s5, -1313
                  slli         a3, s11, 28
                  auipc        t1, 98668
                  lui          t6, 364691
                  nop
                  add          a0, s2, t4
                  srl          a4, s0, a4
                  srli         s8, s6, 29
                  srli         a7, s0, 5
                  addi         t1, t0, 866
                  xor          s8, s0, t6
                  addi         t0, t6, -1082
                  sltiu        t3, zero, -360
                  slt          zero, zero, tp
                  sra          gp, ra, a2
                  sltiu        tp, a4, 762
                  sll          t0, s5, t5
                  xor          s0, t4, tp
                  xori         a1, a0, -1346
                  sltu         s10, a1, s6
                  slli         a1, t5, 17
                  srl          a0, s1, a2
                  srai         s0, ra, 12
                  sltiu        a5, a0, -1536
                  slt          s0, s0, a6
                  sra          t6, t5, t4
                  srli         s9, a0, 6
                  xori         gp, t4, -710
                  srai         s10, s8, 30
                  slli         s1, tp, 27
                  sltu         a4, s0, s8
                  nop
                  slt          s8, s9, sp
                  slt          a7, t0, a4
                  sltu         ra, s4, t0
                  sub          ra, s0, t0
                  sll          t0, a3, t1
                  slti         a2, ra, 1134
                  sltiu        s8, a7, -1967
                  sltu         a7, t5, a5
                  and          s7, zero, a0
                  andi         a6, t3, 303
                  srl          t3, s5, t3
                  and          s2, s8, a1
                  sra          t0, s5, s7
                  sltiu        s7, s10, -176
                  nop
                  sll          ra, s7, a0
                  andi         a7, a2, -354
                  andi         a0, a7, 2003
                  auipc        a0, 228516
                  ori          a0, s2, 1328
                  auipc        s2, 1047686
                  srl          t0, a5, t4
                  lui          s6, 459327
                  andi         t3, a0, -573
                  sub          a1, s11, zero
                  ori          t4, t3, 1704
                  auipc        s11, 4522
                  addi         t0, a0, 1048
                  or           s8, a1, s5
                  ori          s3, a5, 1540
                  sra          s3, s7, a1
                  and          a6, s6, t6
                  xori         a5, a5, -1517
                  srl          a6, zero, s4
                  sll          a6, a2, a7
                  auipc        t1, 509233
                  or           s2, s4, a7
                  xori         s6, s6, 1572
                  nop
                  nop
                  auipc        sp, 216730
                  sra          a7, s3, a0
                  srl          zero, s1, ra
                  srai         a2, s0, 23
                  srl          t0, s2, s5
                  sltu         a7, a3, t3
                  auipc        s8, 586119
                  auipc        t3, 544128
                  sltiu        s0, a5, 124
                  srai         t0, s4, 9
                  slt          s6, s3, sp
                  lui          t6, 14913
                  lui          a5, 995410
                  addi         t1, s11, 636
                  srli         zero, s3, 22
                  auipc        s9, 456532
                  sub          t6, s6, t2
                  add          s10, s2, t0
                  lui          a0, 735660
                  xor          s3, zero, s11
                  srl          t1, s2, a3
                  addi         s11, a0, -1477
                  xori         a4, a6, -862
                  srl          zero, t4, s3
                  xori         a1, zero, 1986
                  slt          s1, s8, gp
                  sra          s10, a7, t0
                  slt          s6, a3, t0
                  sltu         a1, a4, a6
                  or           s3, s11, t2
                  slli         a4, a2, 12
                  sra          s6, ra, ra
                  slli         s3, s4, 10
                  sltu         a7, s0, sp
                  or           s9, s10, a3
                  slt          tp, s4, a7
                  srai         a6, s6, 6
                  andi         s0, a4, -477
                  andi         t1, s9, 724
                  slti         s10, s9, -1868
                  sltiu        t5, sp, 1394
                  slti         s8, a3, -14
                  lui          a3, 809223
                  slt          t1, a2, s2
                  sra          s1, gp, a1
                  srli         s3, s1, 31
                  srli         s10, s11, 27
                  slli         t1, s0, 0
                  sub          a4, ra, t1
                  srli         s9, a0, 6
                  sltu         s10, s8, s11
                  slt          s6, gp, a2
                  xori         sp, s8, 1957
                  ori          s2, s7, 349
                  sra          a1, s11, s4
                  xori         zero, s6, -1832
                  xori         a2, s4, -459
                  nop
                  sltu         t1, t6, t4
                  srli         s1, a1, 8
                  sub          t0, s1, sp
                  srl          ra, a3, tp
                  sltiu        s1, t5, -793
                  sub          t6, a5, ra
                  xor          s6, a3, ra
                  slli         s8, a0, 23
                  srai         t3, s6, 21
                  slli         zero, s5, 27
                  sltiu        gp, s4, 99
                  addi         t5, t1, -1360
                  sltiu        t5, t1, 964
                  sltu         s0, t2, t4
                  slti         zero, s8, -596
                  srli         s8, gp, 9
                  slt          s1, s4, t6
                  auipc        a4, 827783
                  andi         tp, s10, 33
                  addi         a4, s1, -1903
                  lui          a3, 793441
                  slli         s0, s8, 22
                  and          s2, s3, s0
                  xor          t5, s0, a3
                  sltiu        ra, t6, -1932
                  auipc        s0, 358715
                  xor          s0, s2, t1
                  slli         s11, t0, 28
                  andi         ra, a3, -1608
                  srai         zero, s1, 11
                  ori          tp, s10, 1395
                  sltiu        zero, zero, 766
                  slt          s1, s4, s5
                  lui          a2, 859867
                  slt          s1, t0, s9
                  sll          a1, a6, a3
                  xori         s2, t3, 764
                  andi         s3, s9, 1672
                  xor          zero, t3, s1
                  srai         s6, gp, 19
                  auipc        ra, 469430
                  ori          t4, gp, -2037
                  slli         s9, t5, 7
                  slti         s8, t3, 459
                  ori          sp, tp, 1310
                  sra          s6, t6, t3
                  sub          s0, zero, ra
                  auipc        s3, 674745
                  auipc        ra, 769893
                  srl          t1, zero, a5
                  nop
                  lui          a3, 571374
                  nop
                  xor          s0, ra, a4
                  sltiu        a7, s5, 1696
                  sll          sp, a1, a2
                  xori         s0, t0, 1900
                  sub          s1, a4, t0
                  sltiu        tp, a4, -1078
                  ori          gp, a2, -385
                  auipc        t5, 819994
                  auipc        gp, 368284
                  nop
                  slti         t6, s3, 832
                  xor          s8, t4, t2
                  srai         a5, s5, 3
                  sll          a6, s8, t0
                  auipc        gp, 964440
                  ori          s10, s11, 1478
                  auipc        a2, 386409
                  addi         a1, a5, -358
                  xor          a6, t2, a7
                  auipc        tp, 1021703
                  add          s7, s6, t6
                  srl          t5, a3, s4
                  sra          a1, a7, s9
                  ori          t4, a3, 949
                  add          a3, tp, a3
                  slli         s7, zero, 16
                  add          a5, a4, t1
                  nop
                  lui          a0, 683515
                  addi         s8, a7, 733
                  ori          s10, a4, -505
                  ori          s10, s7, -985
                  xor          tp, s2, s4
                  sub          t0, gp, gp
                  sub          s8, t3, a7
                  lui          t6, 170663
                  sltu         s1, a4, t4
                  sub          a0, sp, a2
                  lui          gp, 582270
                  srai         s7, s8, 6
                  add          a1, a2, s9
                  slt          s10, s6, t1
                  srai         a0, s7, 4
                  addi         s3, t4, 1482
                  nop
                  slti         sp, a3, 232
                  xor          t4, gp, a0
                  lui          s11, 860029
                  sltiu        t6, a5, -1339
                  nop
                  or           t6, tp, t0
                  nop
                  srai         gp, t1, 31
                  ori          s0, t1, -59
                  andi         a7, a7, -55
                  sub          t5, t2, gp
                  ori          gp, s5, -2021
                  sltu         s1, a5, a2
                  sra          s6, t2, sp
                  xor          s11, t6, s10
                  slti         t3, ra, -1715
                  srli         s0, s2, 4
                  ori          zero, gp, 205
                  srai         zero, zero, 6
                  srl          ra, s6, s4
                  ori          s2, s5, -47
                  sll          s2, a7, tp
                  sub          a7, a4, a1
                  add          a5, s11, a2
                  lui          a4, 110484
                  andi         a6, s5, 497
                  auipc        a0, 439692
                  slt          tp, t3, s0
                  sra          t6, a0, t6
                  addi         a5, a3, 362
                  srli         sp, a6, 5
                  andi         t6, s2, 1208
                  andi         t4, s6, -337
                  sll          a4, zero, tp
                  xori         a3, a5, 1134
                  xor          a4, t4, s10
                  nop
                  xor          t5, s6, t0
                  slti         s0, t1, -1598
                  addi         a6, t4, -953
                  xor          t5, a7, s6
                  ori          t5, s2, -1783
                  addi         s11, t4, 242
                  addi         a3, s4, 1336
                  addi         a4, s10, 965
                  sltu         zero, a5, a6
                  addi         s9, t3, 1985
                  sll          t6, zero, s6
                  add          t4, s0, gp
                  lui          t5, 476309
                  srai         tp, ra, 25
                  slti         a1, s9, 1428
                  lui          a6, 1016138
                  xori         s9, a3, -896
                  slti         a2, s4, -320
                  sra          s9, a0, s7
                  srl          s6, t1, a5
                  sltiu        t0, s7, -1270
                  addi         s10, a7, -659
                  srli         a2, s8, 28
                  srai         s7, t2, 30
                  nop
                  auipc        s7, 280755
                  srli         a4, t6, 0
                  lui          s10, 91879
                  andi         s8, s10, 303
                  slli         a0, s1, 1
                  xor          t5, s7, t3
                  sub          t5, s0, s0
                  slli         t4, t4, 7
                  addi         a7, a7, -514
                  or           t4, a7, s2
                  srai         t3, zero, 14
                  sll          s2, t2, s8
                  sra          sp, s7, gp
                  sll          s6, s7, s5
                  add          a7, s10, a2
                  andi         a0, s2, -1027
                  ori          a4, t0, 1321
                  sll          a3, s10, t4
                  sub          s2, s7, t4
                  addi         a7, s3, 453
                  slt          t4, ra, s2
                  sra          t3, s0, t2
                  slti         s6, s8, -2035
                  ori          s6, s7, 1235
                  ori          s2, a6, -483
                  slli         s11, s10, 0
                  xor          t4, gp, sp
                  slti         a5, s6, 505
                  ori          t6, a7, -1698
                  sltu         t4, a0, t5
                  srai         s3, a4, 7
                  xor          a4, a7, s7
                  or           t6, a7, a1
                  addi         a5, s2, 443
                  sltiu        s7, tp, 963
                  sltiu        s2, a4, 940
                  and          s7, a0, a4
                  nop
                  add          a6, a5, s10
                  or           t1, t2, sp
                  sra          s6, gp, a0
                  auipc        t6, 321706
                  sub          s0, gp, t6
                  slt          t3, sp, t4
                  sll          s10, s5, s8
                  slli         a6, s2, 27
                  nop
                  sra          s8, s11, zero
                  nop
                  add          s3, s4, s11
                  sra          a6, s0, s10
                  slt          t4, t6, a1
                  slti         s2, a5, -1892
                  sra          gp, t6, tp
                  srai         a1, s10, 9
                  slli         gp, s3, 27
                  slti         s7, a0, 136
                  sll          a4, s6, t1
                  slti         s11, s5, 224
                  addi         a4, t1, -1780
                  li           gp, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           a0, 0x559303bc
                  li           tp, 0xffffffff
                  li           s2, 0x45967ef8
                  li           a1, 0xffffffff
                  li           a4, 0xffffffff
                  li           t6, 0x0
                  li           a3, 0x2526a068
                  li           s8, 0x80000000
                  li           s0, 0x80000000
                  addi         s8, a0, -113
                  auipc        s2, 9711
                  addi         a3, s0, 488
                  addi         s8, tp, 1306
                  addi         gp, tp, -655
                  sub          gp, a3, s0
                  add          a0, s8, gp
                  lui          t6, 104477
                  lui          gp, 636827
                  addi         s8, a4, 1467
                  addi         a0, tp, 1740
                  nop
                  lui          gp, 841456
                  addi         a4, a4, -192
                  addi         s0, s8, 920
                  addi         a0, s8, -171
                  addi         gp, s2, 1095
                  sub          s0, a3, a3
                  lui          s2, 841414
                  sub          a1, t6, a4
                  nop
                  lui          t6, 88735 #end riscv_int_numeric_corner_stream_1
                  andi         s6, s10, -175
                  auipc        t1, 241725
                  srai         s10, zero, 25
                  sltu         a1, zero, t5
                  auipc        s11, 227579
                  slli         s1, t4, 2
                  addi         s8, a6, -443
                  add          a7, s9, s1
                  ori          s11, gp, 33
                  xor          s6, s5, ra
                  sltu         zero, s10, s8
                  andi         s3, s6, 999
                  and          a1, s5, t3
                  slt          s8, s1, a2
                  xori         s7, t3, -581
                  auipc        s11, 876704
                  ori          a7, s4, 1609
                  sltiu        a4, t4, -464
                  and          tp, s4, s11
                  ori          a2, sp, -316
                  slt          a0, a1, s10
                  srli         t6, s3, 26
                  addi         ra, a0, 309
                  srli         a6, s4, 18
                  xor          t5, a3, s7
                  slt          s9, s5, a0
                  sub          t3, ra, a4
                  nop
                  lui          s3, 397568
                  lui          s6, 571473
                  srl          t3, a4, a4
                  xor          s1, s2, t3
                  sra          a4, t2, s11
                  slli         s8, s11, 8
                  srl          s1, t2, a1
                  andi         s2, tp, -1327
                  slt          a1, t6, t5
                  slli         s9, s1, 24
                  or           s7, t6, t6
                  slt          s0, t4, t2
                  srai         t1, s7, 18
                  or           t4, s3, s10
                  lui          s10, 763884
                  slti         a5, a3, 266
                  xor          s2, a5, t2
                  sub          t4, s0, s1
                  auipc        sp, 493323
                  lui          gp, 411381
                  xori         gp, s9, -1961
                  xori         t0, t3, 999
                  sltu         s1, a0, gp
                  addi         s6, zero, 2013
                  andi         a2, t4, -1633
                  slti         a7, a7, -1497
                  sll          ra, s11, a6
                  sub          a7, s1, a2
                  sll          t3, a4, s1
                  xor          a7, tp, ra
                  slt          t4, s1, t5
                  ori          t3, a3, 539
                  lui          tp, 1018241
                  sra          t5, s11, s2
                  ori          a0, s7, 1270
                  slli         a7, a5, 14
                  slti         a7, a1, 1931
                  sltu         a5, a5, ra
                  sub          s10, s5, a6
                  ori          a7, a6, -1547
                  xori         s11, gp, -311
                  sltu         t0, s3, a2
                  sub          s3, s0, t6
                  srli         t1, s10, 16
                  ori          s1, a7, -681
                  or           s1, s9, sp
                  sll          t1, a4, t6
                  nop
                  lui          sp, 67227
                  srl          s11, t5, t3
                  nop
                  slt          t3, tp, a0
                  srli         a1, s11, 10
                  xor          t0, s8, s6
                  srli         s7, sp, 23
                  sub          s3, s3, s5
                  sltu         t6, a2, a2
                  andi         zero, s8, 1262
                  and          a0, tp, ra
                  sra          a6, t4, s10
                  sltiu        s9, s7, 119
                  sra          s6, t6, s4
                  lui          a0, 26195
                  nop
                  sltu         s7, s1, a7
                  lui          t1, 955646
                  srai         s7, t1, 8
                  sltiu        tp, a2, 1662
                  srl          s3, s10, t6
                  sra          s0, s9, s10
                  and          a5, a6, t2
                  sltu         a2, a1, a3
                  or           t1, tp, s4
                  auipc        t4, 358847
                  lui          zero, 320170
                  add          s9, s4, gp
                  slt          t5, tp, gp
                  slt          t0, s5, s11
                  srai         a1, t1, 23
                  or           a4, a7, s11
                  lui          t1, 257395
                  or           a5, gp, t4
                  addi         t4, t2, 746
                  sra          s8, t0, a3
                  srl          zero, s6, a6
                  nop
                  sra          t4, s5, t3
                  lui          t4, 286909
                  sltu         sp, s8, t5
                  lui          gp, 389406
                  lui          s3, 103511
                  addi         a0, s2, -756
                  nop
                  srl          s9, gp, ra
                  addi         tp, t3, 28
                  slt          tp, a7, t3
                  slti         a1, s2, 877
                  slli         s1, s11, 23
                  sub          t4, s11, a2
                  ori          a5, t6, 673
                  srl          t0, a1, zero
                  sltiu        s1, a2, 563
                  sltu         s11, a7, a3
                  addi         s8, s8, -1835
                  sub          ra, t3, s3
                  add          a0, t6, a2
                  or           tp, a2, s5
                  sltu         a6, s10, s4
                  slti         a2, a2, -1794
                  and          t1, s2, t5
                  srai         t1, a1, 13
                  and          s1, t3, s9
                  andi         ra, t1, -1918
                  slt          t6, a2, s6
                  and          a5, t4, t3
                  xor          a7, s11, s3
                  sll          zero, sp, sp
                  nop
                  sub          zero, s5, a2
                  slt          s8, s2, s7
                  xor          a2, s9, s5
                  addi         s9, t2, 1563
                  andi         a3, a4, -500
                  or           a4, a5, s1
                  slti         s10, t5, -1974
                  sltu         t3, a0, s6
                  sltiu        ra, s4, 751
                  xor          a5, a5, t3
                  andi         s7, tp, 172
                  xor          s3, a0, t6
                  slti         tp, a7, -1470
                  sltiu        t3, gp, -1665
                  nop
                  sub          s0, s9, tp
                  xor          a5, tp, s5
                  lui          s7, 884791
                  sra          a5, s8, s2
                  add          s11, s7, s3
                  sub          s1, s7, s6
                  sub          a5, a7, s3
                  sll          tp, zero, s11
                  srl          tp, a7, s0
                  andi         a7, t3, -271
                  addi         sp, s1, -141
                  sra          t5, sp, s4
                  and          a2, ra, s6
                  sltiu        a7, a6, 456
                  or           s1, a6, a0
                  slti         a1, s6, -1666
                  lui          zero, 107202
                  andi         s3, a4, 2022
                  or           t1, zero, tp
                  slt          s2, s4, s4
                  auipc        t1, 44480
                  srli         s3, s9, 11
                  sub          a0, t2, t3
                  xor          s1, tp, t5
                  lui          a4, 338632
                  or           s9, a4, s10
                  sub          a6, t1, s9
                  addi         t3, sp, -874
                  sra          s8, a6, a7
                  auipc        t6, 1038319
                  nop
                  ori          gp, s6, -110
                  sltiu        t1, s8, -1277
                  sll          s9, sp, zero
                  sub          t0, a3, s4
                  add          sp, s8, s9
                  lui          t4, 990334
                  sltiu        t3, a3, -1278
                  sll          t0, ra, s5
                  srai         a3, s9, 26
                  srai         gp, t5, 22
                  sltiu        t3, t0, 1959
                  ori          a4, s10, 1779
                  add          t1, zero, t3
                  slti         a1, a7, 1360
                  or           s9, t6, a5
                  lui          t3, 558167
                  slli         s6, t3, 27
                  ori          a4, zero, 1641
                  addi         a3, s7, 1055
                  slt          a1, s3, t0
                  srai         gp, ra, 15
                  sub          s8, sp, a5
                  and          gp, s8, s10
                  la x21, test_done
                  jalr x0, x21, 0
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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x7, x20, zero
                  csrr x30, 0x300 # MSTATUS
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 31
                  bne x30, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x30, 0x341 # MEPC
                  csrr x30, 0x342 # MCAUSE
                  li x17, 0x3 # BREAKPOINT
                  beq x30, x17, ebreak_handler
                  li x17, 0x8 # ECALL_UMODE
                  beq x30, x17, ecall_handler
                  li x17, 0x9 # ECALL_SMODE
                  beq x30, x17, ecall_handler
                  li x17, 0xb # ECALL_MMODE
                  beq x30, x17, ecall_handler
                  li x17, 0x1
                  beq x30, x17, instr_fault_handler
                  li x17, 0x5
                  beq x30, x17, load_fault_handler
                  li x17, 0x7
                  beq x30, x17, store_fault_handler
                  li x17, 0xc
                  beq x30, x17, pt_fault_handler
                  li x17, 0xd
                  beq x30, x17, pt_fault_handler
                  li x17, 0xf
                  beq x30, x17, pt_fault_handler
                  li x17, 0x2 # ILLEGAL_INSTRUCTION
                  beq x30, x17, illegal_instr_handler
                  csrr x17, 0x343 # MTVAL
                  1: la x21, test_done
                  jalr x1, x21, 0

ecall_handler:    
                  la x30, _start
                  sw x0, 0(x30)
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  la x21, write_tohost
                  jalr x0, x21, 0

instr_fault_handler:
                  add x20, x7, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

load_fault_handler:
                  add x20, x7, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

store_fault_handler:
                  add x20, x7, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

ebreak_handler:   
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x20, x7, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

illegal_instr_handler:
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x20, x7, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x30, 0x300 # MSTATUS;
                  csrr  x30, 0x304 # MIE;
                  csrr  x30, 0x344 # MIP;
                  csrrc x30, 0x344, x30 # MIP;
                  add x20, x7, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
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
