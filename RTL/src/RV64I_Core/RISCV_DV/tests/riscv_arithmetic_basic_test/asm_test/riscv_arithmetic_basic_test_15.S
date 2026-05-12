.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x11, h0_start
jalr x0, x11, 0
h0_start:
                  li x6, 0x40000100
                  csrw 0x301, x6
kernel_sp:        
                  la x15, kernel_stack_end

trap_vec_init:    
                  la x6, mtvec_handler
                  ori x6, x6, 0
                  csrw 0x305, x6 # MTVEC

mepc_setup:       
                  la x6, init
                  csrw 0x341, x6

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x6, 0x1800
                  csrw 0x300, x6 # MSTATUS
                  mret
init:             
                  li x0, 0x1b005457
                  li x1, 0x80000000
                  li x2, 0xfe8d7a22
                  li x3, 0x0
                  li x4, 0xf4cddc9c
                  li x5, 0xf
                  li x6, 0xfec0f479
                  li x7, 0x0
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0x55ea4450
                  li x12, 0x8
                  li x13, 0x0
                  li x14, 0x4713ff42
                  li x16, 0xe
                  li x17, 0x80000000
                  li x18, 0xb
                  li x19, 0x80000000
                  li x20, 0x0
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0x0
                  li x25, 0x1f30ff59
                  li x26, 0xf80909b8
                  li x27, 0xad00ccfb
                  li x28, 0xf1c2ffcd
                  li x29, 0x9f27c5f9
                  li x30, 0x80000000
                  li x31, 0x0
                  la x21, user_stack_end
main:             li           t4, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           s0, 0xe82d7ecb
                  li           s7, 0x1071afdf
                  li           a3, 0x0
                  li           a6, 0xffffffff
                  li           s10, 0xebdae4d
                  li           s11, 0x80000000
                  li           t5, 0x0
                  li           a0, 0xffffffff
                  li           t2, 0x80000000
                  auipc        t5, 371618
                  auipc        a3, 790696
                  add          a3, s7, s0
                  nop
                  nop
                  lui          s10, 995805
                  add          s10, s7, a0
                  nop
                  nop
                  addi         a3, s7, 244
                  lui          s10, 650496
                  auipc        a6, 17569
                  lui          a0, 109709
                  sub          s7, s0, a6
                  addi         t4, s10, -123
                  add          s0, a6, a0
                  lui          s10, 236447 #end riscv_int_numeric_corner_stream_16
                  li           tp, 0x9adf75f6 #start riscv_int_numeric_corner_stream_3
                  li           s10, 0x80000000
                  li           t3, 0x80000000
                  li           ra, 0x80000000
                  li           a4, 0x0
                  li           s3, 0x0
                  li           s2, 0xffffffff
                  li           s6, 0x0
                  li           a3, 0x80000000
                  li           t2, 0x6fa67d36
                  lui          a3, 371026
                  sub          s10, t3, s2
                  lui          a3, 978463
                  nop
                  addi         t3, t3, 31
                  nop
                  auipc        s3, 544661
                  add          a3, t2, a4
                  lui          s2, 997308
                  addi         s10, a3, -54
                  lui          s2, 265645
                  nop
                  nop
                  auipc        s10, 1025263
                  addi         ra, a3, -1747
                  nop
                  addi         s10, s3, 1225
                  add          a3, a4, tp
                  auipc        t3, 16312
                  lui          s6, 255318
                  nop
                  add          s3, ra, t2
                  nop
                  lui          s2, 1041691
                  sub          s3, s2, a3 #end riscv_int_numeric_corner_stream_3
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           s1, 0x80000000
                  li           gp, 0x0
                  li           s2, 0xffffffff
                  li           t2, 0x8acc6b84
                  li           a3, 0x0
                  li           s8, 0x80000000
                  li           t0, 0x7420f28d
                  li           s3, 0x0
                  li           s10, 0xffffffff
                  auipc        tp, 20557
                  lui          a3, 844773
                  addi         s8, s10, 938
                  auipc        s1, 732509
                  addi         t2, tp, -853
                  sub          s8, s1, tp
                  add          s8, s3, s3
                  addi         s8, s8, 1812
                  lui          gp, 4672
                  sub          s1, gp, t2
                  addi         a3, s2, 99
                  nop
                  sub          s3, tp, gp
                  addi         tp, gp, 1389
                  lui          t2, 249689
                  sub          tp, s3, s8 #end riscv_int_numeric_corner_stream_11
                  li           tp, 0x1aac1b8c #start riscv_int_numeric_corner_stream_18
                  li           t5, 0xffffffff
                  li           s3, 0x80000000
                  li           t4, 0xffffffff
                  li           s10, 0xffffffff
                  li           a2, 0x0
                  li           s2, 0xffffffff
                  li           s6, 0xa994f64d
                  li           t0, 0x39fba71a
                  li           t2, 0x80000000
                  addi         s2, t5, -1102
                  nop
                  auipc        t0, 9219
                  lui          tp, 283681
                  add          s3, t5, a2
                  addi         s6, t0, 909
                  auipc        tp, 857988
                  sub          t0, tp, s2
                  lui          s2, 315068
                  lui          t5, 907686
                  nop
                  lui          a2, 640064
                  lui          s10, 871909
                  auipc        s3, 562442
                  addi         t4, t4, -1751
                  lui          s6, 142841
                  add          s3, tp, t2 #end riscv_int_numeric_corner_stream_18
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           a3, 0x0
                  li           s8, 0x0
                  li           t3, 0x80000000
                  li           s4, 0x0
                  li           t4, 0x75c6722f
                  li           s1, 0xcbb74a38
                  li           a4, 0x80000000
                  li           s3, 0x80000000
                  li           s10, 0xffffffff
                  sub          a3, s1, s10
                  sub          s6, s1, t4
                  lui          s8, 47281
                  sub          t4, s1, a4
                  lui          a4, 632523
                  nop
                  lui          t3, 246423
                  add          s4, s8, s6
                  lui          s8, 502741
                  nop
                  auipc        t3, 38516
                  lui          a3, 554038
                  sub          a3, t3, t3
                  addi         a3, t4, 1249
                  lui          s6, 204828
                  add          a3, s6, a3
                  nop
                  auipc        s3, 370469
                  auipc        s6, 575856
                  lui          s8, 342272
                  lui          s1, 769399
                  addi         s1, a4, 1934
                  lui          a4, 641321
                  nop
                  nop
                  auipc        s8, 603600
                  add          a4, s3, t4
                  sub          t4, a3, a3 #end riscv_int_numeric_corner_stream_7
                  li           a2, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           s8, 0xffffffff
                  li           t3, 0xffffffff
                  li           t2, 0x5004d8c5
                  li           s4, 0x80000000
                  li           t4, 0xc0f12ed6
                  li           a6, 0x80000000
                  li           s11, 0xffffffff
                  li           a7, 0x0
                  li           s9, 0x80000000
                  nop
                  nop
                  nop
                  add          t3, t2, t2
                  sub          t4, t4, a2
                  sub          s9, t3, s9
                  auipc        s8, 431169
                  auipc        t4, 1714
                  nop
                  auipc        s9, 471196
                  nop
                  nop
                  lui          a2, 935983
                  auipc        a7, 145226
                  nop
                  auipc        s8, 201584
                  nop
                  auipc        t4, 344324
                  addi         t4, t4, 854 #end riscv_int_numeric_corner_stream_1
                  li           s9, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           a6, 0x0
                  li           s10, 0x0
                  li           a2, 0xffffffff
                  li           a4, 0x43e06749
                  li           a3, 0xffffffff
                  li           ra, 0x80000000
                  li           s4, 0x80000000
                  li           s1, 0x78b789c3
                  li           gp, 0xffffffff
                  sub          s10, ra, s1
                  nop
                  auipc        a4, 896947
                  lui          a3, 433668
                  sub          gp, a3, ra
                  add          a3, a3, a3
                  sub          a6, s9, s10
                  sub          s10, a4, s9
                  addi         a4, s1, -1740
                  addi         a6, s10, -1632
                  sub          a2, s4, s4
                  sub          a3, s9, ra
                  add          a6, a4, gp
                  lui          a4, 26871
                  auipc        s9, 673948
                  auipc        s9, 37514
                  sub          ra, s9, a6 #end riscv_int_numeric_corner_stream_6
                  li           s7, 0x14c0df12 #start riscv_int_numeric_corner_stream_0
                  li           t2, 0xb9e33600
                  li           s4, 0x0
                  li           gp, 0x80000000
                  li           t3, 0xb1438463
                  li           s8, 0x80000000
                  li           s10, 0xffffffff
                  li           a0, 0x80000000
                  li           s3, 0x80000000
                  li           a7, 0xffffffff
                  add          s10, s4, s8
                  nop
                  nop
                  sub          s8, a0, t3
                  add          s8, s3, a7
                  lui          s4, 99559
                  nop
                  add          s4, t3, s7
                  lui          a0, 551101
                  nop
                  lui          a7, 819234
                  nop
                  lui          s7, 231333
                  addi         a0, t3, 1078
                  nop
                  auipc        a7, 980664
                  nop
                  sub          t3, t3, s4 #end riscv_int_numeric_corner_stream_0
                  ori          t6, t4, -1036
                  sll          t1, t4, a0
                  sll          t4, s0, gp
                  sra          a3, ra, s9
                  addi         sp, tp, -1025
                  and          t0, a3, sp
                  xor          sp, s8, sp
                  addi         s0, s3, 155
                  auipc        a3, 298513
                  addi         gp, sp, -804
                  srli         s8, s5, 11
                  or           t6, ra, s4
                  srl          s7, a3, s5
                  lui          a7, 663118
                  sra          t3, s11, s10
                  srl          a2, s10, gp
                  sltiu        t3, tp, 795
                  andi         a6, s9, 1545
                  add          a4, a3, s9
                  slt          s10, a7, t2
                  add          t0, tp, a2
                  sub          a2, gp, a2
                  auipc        t0, 577883
                  nop
                  or           tp, s0, a0
                  sra          tp, s7, tp
                  slti         t3, s8, -1217
                  sltiu        a2, s4, 1099
                  slti         a7, s9, -226
                  xori         t4, a0, -1262
                  ori          s3, a1, 1627
                  sltiu        t0, a7, -976
                  srai         sp, ra, 0
                  slti         t6, t5, -1231
                  sltiu        a0, t2, -1479
                  srai         s1, a4, 8
                  sra          s10, t6, a1
                  addi         t5, a6, 1235
                  ori          s8, s7, -1839
                  xor          s9, a5, t5
                  slt          s7, t6, s5
                  sub          t0, a6, s6
                  sra          s2, s2, s1
                  xori         sp, s10, -531
                  slli         ra, t1, 22
                  xori         sp, s4, 1723
                  auipc        s10, 805419
                  addi         a2, t5, 869
                  sub          t6, a0, s11
                  xor          a2, t3, a7
                  slt          s8, t0, a7
                  lui          a0, 680259
                  xor          t6, a2, s2
                  sub          gp, t5, a1
                  sltiu        a4, ra, -1293
                  slli         t6, s11, 9
                  slt          s4, s6, t0
                  srli         s11, s7, 10
                  srl          s0, t2, t0
                  slti         s2, a4, 833
                  xori         s4, a3, 1561
                  auipc        ra, 639900
                  srai         t6, a4, 20
                  sll          tp, s0, s0
                  add          s1, a3, t6
                  ori          a7, zero, -648
                  sltu         s0, s4, a4
                  ori          a2, gp, 1445
                  xori         s11, a7, 22
                  sra          s3, a7, s3
                  slti         a3, a4, 1575
                  slli         s11, t3, 3
                  slti         s6, t3, -1193
                  xori         s9, tp, -906
                  ori          sp, a7, 928
                  nop
                  ori          s3, t0, 1430
                  slt          zero, zero, s1
                  or           t2, s5, a5
                  auipc        t0, 367136
                  sltiu        a4, a7, -53
                  slt          s1, s3, s2
                  auipc        t0, 863306
                  slli         a7, a7, 14
                  sra          s4, t6, s4
                  nop
                  srai         ra, t5, 16
                  slti         a4, s9, -1426
                  addi         t0, s7, 439
                  ori          s11, a2, -53
                  lui          t6, 14096
                  sub          s9, gp, a3
                  nop
                  sltu         ra, a7, a0
                  srli         t0, t0, 6
                  andi         s9, t5, 138
                  or           gp, t5, t4
                  addi         s8, t1, -665
                  or           a0, t2, a2
                  sub          sp, s0, s9
                  sub          s0, s6, ra
                  slt          s0, a0, s2
                  sll          t5, s0, zero
                  andi         s10, s5, 200
                  xori         s3, s11, -1250
                  sltiu        s2, t5, 1632
                  sltu         a6, a4, t3
                  sltu         s2, t6, s2
                  slt          t4, t0, t5
                  add          s11, s10, s2
                  slt          s10, s5, s4
                  xori         s10, sp, -491
                  sub          s3, a0, s9
                  sltu         s1, t2, a6
                  sra          t6, s4, s5
                  add          ra, a3, s7
                  xor          a0, s1, s4
                  nop
                  srai         t3, a2, 5
                  srai         a0, sp, 17
                  addi         t2, gp, 1405
                  sltu         s0, t2, s3
                  li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           s9, 0x0
                  li           a7, 0x0
                  li           ra, 0x0
                  li           a2, 0x67dc3780
                  li           t5, 0xffffffff
                  li           s11, 0x0
                  li           a3, 0xffffffff
                  li           t4, 0xffffffff
                  li           t6, 0x0
                  sub          t4, t5, t5
                  sub          ra, a7, t4
                  addi         a3, a7, 1876
                  add          s0, s9, t5
                  addi         a3, a3, -1953
                  nop
                  auipc        s11, 685985
                  nop
                  addi         t4, t6, 1524
                  sub          a3, s0, t5
                  auipc        a7, 104870
                  add          s0, s11, s0
                  addi         a3, ra, 865
                  add          t6, a3, t6
                  auipc        s11, 455948
                  lui          t4, 360402
                  addi         a7, a7, -679
                  sub          t5, a2, t6
                  nop
                  sub          s0, s9, a7
                  addi         ra, s11, -131
                  addi         t5, a2, -1404
                  lui          t6, 725308
                  addi         a3, t6, 1897
                  auipc        s9, 948394
                  nop
                  auipc        a7, 59806 #end riscv_int_numeric_corner_stream_9
                  xor          s10, a6, tp
                  lui          t6, 575970
                  sll          t1, s9, t4
                  sll          s4, a5, s4
                  srli         t6, sp, 1
                  lui          s6, 576878
                  lui          s8, 750170
                  andi         a6, s6, 1699
                  andi         s7, t1, -846
                  slt          a0, sp, a3
                  or           s7, zero, s3
                  sub          s7, s8, s0
                  xori         s11, a1, -474
                  sll          s7, a2, t2
                  xor          s1, t0, s0
                  nop
                  slli         s11, gp, 23
                  slli         s6, a7, 10
                  lui          s1, 835428
                  sub          s3, a5, zero
                  lui          s9, 4049
                  and          a6, a5, a4
                  sltiu        a7, s3, 1689
                  and          a2, s11, a0
                  addi         t0, ra, 875
                  xori         s6, t2, 1928
                  srli         t1, s7, 30
                  or           a3, a7, t0
                  slli         t0, a6, 26
                  srli         a3, a6, 30
                  xor          a7, a5, a4
                  andi         s11, a4, -1031
                  sltu         a0, s4, s3
                  sra          s8, t6, a7
                  andi         t4, ra, -494
                  add          sp, t6, s6
                  ori          s0, s8, -1165
                  xori         ra, a4, 928
                  sltiu        t0, t5, -626
                  lui          t1, 940505
                  addi         a0, t2, 969
                  slli         s8, a7, 18
                  slti         s3, s2, 408
                  or           a6, s10, t0
                  sltiu        t5, zero, -1163
                  ori          s8, s2, -1730
                  slli         t2, s5, 18
                  or           a6, s6, ra
                  or           a6, a6, gp
                  nop
                  and          s8, a5, gp
                  sra          t4, gp, s11
                  srli         s1, zero, 1
                  slti         a4, a4, 185
                  add          t3, s5, s1
                  srai         t3, s7, 28
                  addi         zero, a4, 254
                  srli         sp, a6, 15
                  andi         sp, t5, -1776
                  sra          s6, t6, s10
                  srli         gp, t2, 0
                  auipc        a3, 798416
                  addi         s2, s8, -1133
                  auipc        s9, 565840
                  sll          s1, s9, t3
                  srai         ra, a1, 6
                  slt          s6, t3, a5
                  slti         a3, a7, 697
                  or           t5, tp, t6
                  xor          a3, s7, t6
                  srli         s9, t1, 16
                  sll          gp, t6, t4
                  addi         gp, s9, -1246
                  or           s6, t2, t0
                  andi         a7, s10, -744
                  sltiu        t5, t4, -192
                  lui          s6, 167780
                  andi         t5, tp, 701
                  xor          a6, zero, t4
                  sra          s7, s1, s4
                  sll          t1, t4, a5
                  xor          s6, s2, s3
                  nop
                  sltu         s9, t2, zero
                  sltu         ra, t6, a7
                  addi         sp, t2, 1413
                  xori         a0, s11, 231
                  addi         sp, a1, -925
                  slti         s6, tp, 538
                  slli         sp, a6, 6
                  add          t5, tp, a0
                  addi         s4, a0, 1417
                  add          s2, s9, t6
                  xor          t0, s9, sp
                  and          a2, a1, t0
                  slti         a4, s0, -1509
                  ori          s7, s11, 1034
                  auipc        t1, 667573
                  addi         a3, gp, 1348
                  auipc        t6, 1038466
                  andi         t0, a6, 774
                  addi         s4, a3, 498
                  srai         a3, s11, 21
                  slli         t0, a5, 12
                  sltu         s0, a6, s0
                  slli         a0, zero, 0
                  sub          a4, t3, s10
                  srl          a7, t4, a7
                  addi         s3, tp, -1079
                  nop
                  add          s0, t3, gp
                  srli         ra, s0, 7
                  srl          s4, s10, s11
                  lui          s7, 77638
                  ori          s6, s6, -1969
                  sll          t4, a7, a4
                  slli         t0, a4, 29
                  srl          t2, s0, a5
                  srl          a6, tp, s7
                  xor          t3, s9, t3
                  slli         zero, a3, 25
                  srl          t0, s8, t1
                  or           a6, t2, t0
                  andi         t4, gp, -911
                  addi         s0, a7, 156
                  andi         s6, a1, -578
                  or           ra, a3, t1
                  sra          s8, a7, a2
                  xori         a3, s5, -401
                  andi         sp, s7, -19
                  andi         tp, a6, 139
                  srai         t2, s4, 14
                  auipc        s0, 370676
                  andi         s2, t2, -1486
                  slt          s1, s10, t3
                  sll          s7, a1, sp
                  addi         s8, a1, 1707
                  srli         s10, t6, 29
                  nop
                  srai         s6, a3, 12
                  slti         s2, s1, -281
                  nop
                  lui          s7, 157145
                  auipc        s8, 786575
                  and          sp, t6, t3
                  add          s2, t1, a6
                  sltu         a7, gp, t0
                  sra          a7, t3, s7
                  sltiu        t5, a3, 1250
                  slli         s9, s1, 16
                  sub          a7, gp, s9
                  xori         s9, s4, 1833
                  sltu         a4, t3, s10
                  ori          a7, t1, -63
                  xori         s6, a4, 450
                  sub          s0, t4, a6
                  srl          sp, a3, sp
                  slt          s8, ra, t6
                  and          ra, s6, gp
                  srl          s8, a6, a3
                  nop
                  slt          a7, t1, t2
                  or           s6, t5, s2
                  srai         sp, t3, 29
                  or           ra, a5, a0
                  xori         s3, s11, -1578
                  srai         a3, a1, 5
                  srl          gp, t6, s8
                  ori          t3, s10, -1925
                  and          s2, sp, s3
                  nop
                  xor          t6, s8, s1
                  srl          ra, a2, t2
                  srli         gp, ra, 11
                  xor          gp, t5, t3
                  ori          s2, zero, -1707
                  andi         a4, zero, 1480
                  xori         a2, a0, 1511
                  srli         s1, s4, 12
                  lui          s9, 110144
                  srli         t3, a4, 28
                  srl          gp, s10, s1
                  auipc        t1, 189192
                  sll          a6, s6, s2
                  nop
                  sll          s4, sp, a7
                  xor          s1, t4, t3
                  srli         t5, zero, 4
                  xor          tp, s1, t6
                  sll          s10, t2, ra
                  slli         t3, a7, 27
                  sll          s9, s3, s0
                  nop
                  auipc        a3, 770854
                  slt          s8, s1, s11
                  and          s10, sp, s8
                  sub          t6, s2, sp
                  sll          sp, zero, sp
                  slt          zero, s7, s0
                  auipc        t1, 210598
                  slt          s7, a4, gp
                  sltiu        s9, a6, -1619
                  andi         s7, gp, -1091
                  xori         t2, a5, -1577
                  ori          t2, a1, 753
                  or           zero, a5, t0
                  and          sp, t4, a5
                  addi         zero, a4, -1767
                  slli         a2, t5, 31
                  sltiu        s1, s6, -162
                  xor          s4, s4, t3
                  and          t2, s4, a1
                  sub          s1, s8, a5
                  srli         zero, t2, 0
                  sra          t2, s4, s8
                  srai         t1, tp, 24
                  sltiu        s3, s3, -1500
                  slt          tp, t2, a1
                  srai         a2, zero, 19
                  sra          s1, a3, zero
                  and          s2, s6, t4
                  slt          s10, s3, zero
                  addi         s1, a1, 293
                  andi         a6, s10, -1144
                  add          ra, s11, t4
                  srl          s7, a7, zero
                  sra          tp, a7, s7
                  xor          t6, gp, a4
                  slli         t5, s9, 26
                  add          t2, a4, s6
                  or           sp, zero, t4
                  lui          t1, 958668
                  andi         s10, s7, -670
                  and          zero, s1, a3
                  srli         ra, a4, 24
                  or           sp, tp, t6
                  xor          s9, s7, a7
                  xor          s7, ra, s8
                  slt          s1, a7, a1
                  nop
                  slt          t2, sp, s6
                  or           s3, s0, s5
                  xor          ra, s9, s2
                  sra          s8, a1, t6
                  or           s1, t1, s11
                  auipc        s9, 893364
                  srai         s4, ra, 4
                  srai         s3, s1, 17
                  xori         s2, a7, 1461
                  slti         zero, ra, -695
                  srli         a7, s11, 7
                  srl          t0, s5, s10
                  addi         t4, sp, 1821
                  srai         a3, tp, 17
                  sub          s2, a1, ra
                  sra          s2, ra, t2
                  addi         tp, s10, 483
                  srli         s0, a6, 31
                  sltiu        t2, t2, 1481
                  sltiu        a0, sp, -368
                  auipc        s0, 736692
                  sll          t2, a4, s0
                  slli         a6, s2, 6
                  srli         a0, s4, 13
                  ori          s3, tp, -1346
                  srl          ra, s5, s9
                  or           t0, t5, sp
                  srli         a0, s9, 7
                  lui          tp, 733461
                  add          a3, a1, gp
                  slt          a2, s6, t6
                  slt          s9, s6, t2
                  xor          s1, a7, t3
                  slt          t2, s0, s7
                  xori         s8, t6, -1062
                  nop
                  sltiu        t0, sp, -1171
                  lui          s7, 288959
                  slli         s7, t2, 5
                  srai         t3, a4, 31
                  sltu         t6, s10, gp
                  sll          t1, t2, s8
                  xori         t0, t1, 340
                  srl          a4, t1, s4
                  sub          a3, t6, s10
                  auipc        a2, 856779
                  sra          a3, a0, gp
                  andi         s11, tp, -436
                  slli         a7, s7, 21
                  auipc        t2, 175165
                  sltiu        s10, zero, 126
                  ori          s9, t6, 491
                  xori         a3, a3, 754
                  sra          s11, s5, s8
                  slt          s0, a7, s1
                  sub          s3, s9, a3
                  add          t2, s10, a3
                  srli         gp, a5, 0
                  srai         t1, s3, 19
                  sltu         s6, s3, s6
                  sltu         tp, s4, s0
                  and          s10, a2, s0
                  and          s10, a0, tp
                  srli         t5, s9, 31
                  xori         s11, a7, -1497
                  ori          a4, s5, -88
                  and          s8, s11, s7
                  slt          s6, t2, t5
                  xori         t6, t0, -22
                  slli         s2, t3, 31
                  sub          t5, a3, s1
                  sra          s3, s1, t6
                  srl          s8, s9, gp
                  slli         a7, zero, 12
                  slt          a3, tp, s9
                  slli         t2, s9, 16
                  addi         zero, t6, 2006
                  ori          a0, gp, 1699
                  srl          a3, s3, s10
                  add          ra, s8, zero
                  ori          t2, s5, -38
                  sub          sp, s6, t3
                  sltiu        a7, s0, 354
                  lui          tp, 349968
                  andi         tp, a4, 1614
                  xor          s10, a7, s6
                  andi         a2, gp, 1696
                  auipc        s7, 330048
                  and          a0, a2, gp
                  addi         s10, t4, 188
                  or           s0, s1, t5
                  slti         sp, t5, -439
                  srai         t2, a3, 22
                  add          a7, a6, a7
                  xor          t0, a7, s3
                  slt          s11, s7, t6
                  sll          s1, a3, t6
                  addi         s7, a5, -1788
                  addi         s1, t1, -100
                  srli         ra, t6, 3
                  sll          t4, t3, s2
                  srai         gp, a3, 31
                  and          s8, a5, t5
                  addi         t5, zero, -1259
                  sltiu        tp, t2, -69
                  add          s9, s1, t4
                  slti         t6, t0, 1053
                  slli         t4, s11, 2
                  sub          t5, t1, t6
                  add          s1, t6, s11
                  srli         s7, t3, 27
                  slt          a2, s2, a2
                  srli         a6, tp, 27
                  or           sp, t3, ra
                  or           a0, s5, t5
                  srl          t6, s4, ra
                  add          t6, a2, t2
                  slt          a4, s2, a6
                  sltiu        a4, s0, 179
                  addi         a4, sp, 242
                  or           t0, s5, a4
                  slt          s11, s6, zero
                  add          s11, a3, t5
                  and          a0, s5, s10
                  sll          a0, a0, sp
                  sra          s11, s9, s11
                  addi         a7, s9, -405
                  sub          t5, s5, zero
                  and          s4, t1, s1
                  xori         a3, zero, 1549
                  slt          a6, s9, s0
                  srli         gp, zero, 5
                  xor          s1, s6, t6
                  slti         s2, s2, -890
                  srl          tp, s3, a4
                  sll          s11, s1, s4
                  slti         s7, a7, 1722
                  slti         t1, t3, 1768
                  xor          t5, t2, sp
                  ori          tp, a5, -1262
                  li           t2, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           s10, 0x80000000
                  li           a6, 0x80000000
                  li           s8, 0x80000000
                  li           ra, 0xffffffff
                  li           tp, 0x80000000
                  li           s0, 0xffffffff
                  li           s2, 0x25c9297c
                  li           t1, 0x0
                  li           s7, 0xffffffff
                  nop
                  nop
                  nop
                  addi         tp, s10, 96
                  auipc        s0, 143736
                  add          s2, s8, s2
                  addi         s7, a6, -2
                  sub          tp, t2, s7
                  lui          s10, 337907
                  lui          s7, 655466
                  auipc        s10, 522486
                  add          t2, s7, tp
                  sub          s10, t2, tp
                  add          t2, t2, s0
                  auipc        s8, 40028
                  nop
                  lui          s8, 151193
                  add          ra, a6, tp
                  auipc        s7, 394481
                  sub          a6, tp, a6
                  addi         tp, s8, 1368
                  auipc        s8, 299446
                  lui          s7, 78844 #end riscv_int_numeric_corner_stream_14
                  addi         a6, t2, -1696
                  nop
                  or           t2, t6, gp
                  auipc        a6, 965955
                  sll          sp, a6, s1
                  addi         a4, a5, -1188
                  xori         s8, gp, 706
                  lui          a7, 265102
                  andi         a6, zero, -1766
                  lui          a4, 285646
                  slli         s10, s11, 22
                  ori          zero, t0, -947
                  sltiu        s11, s8, -264
                  sll          a4, t0, t5
                  lui          s10, 266686
                  andi         s7, s0, -2042
                  andi         s7, a2, 374
                  sll          t3, a2, s11
                  lui          ra, 50902
                  slt          s2, a2, s0
                  andi         s7, s0, 1228
                  sltiu        a0, s0, -609
                  srli         s1, s8, 5
                  sra          s2, t5, a0
                  sll          tp, s4, tp
                  add          s7, a1, s10
                  ori          zero, t1, -1024
                  xori         tp, a0, -1101
                  srl          zero, a5, s1
                  slli         t6, gp, 26
                  sll          ra, a5, ra
                  srli         s0, a5, 21
                  xori         a6, s7, 1002
                  srl          a0, s0, a6
                  slti         a4, s10, 1738
                  xori         s9, s4, 1714
                  sra          s7, s2, s7
                  xori         s9, a3, -1016
                  lui          s1, 957716
                  xori         sp, s9, -1877
                  slti         t2, s11, -1199
                  andi         a7, s11, 1168
                  nop
                  sltiu        s9, s1, -1535
                  addi         ra, t3, 660
                  sra          a7, s8, a5
                  srai         t4, t6, 3
                  srai         a4, s11, 27
                  and          t5, tp, a4
                  xor          a0, a4, s3
                  srli         tp, s8, 9
                  nop
                  srli         ra, s0, 5
                  or           t6, t2, t1
                  sub          t4, ra, a3
                  srai         a3, s0, 21
                  sub          a3, t4, a2
                  sub          s8, sp, zero
                  slti         s7, s11, -687
                  xor          s10, s5, s6
                  sub          s1, gp, t0
                  sll          a2, s11, s6
                  andi         s3, s4, -1661
                  xori         gp, t0, 178
                  sra          t1, zero, a6
                  auipc        t1, 984002
                  srl          t5, a1, a4
                  sltiu        t3, t1, 1692
                  auipc        a0, 81468
                  lui          s7, 789705
                  sra          t6, s4, s6
                  ori          t6, t1, 1709
                  add          t1, t2, s7
                  ori          t1, t0, -127
                  auipc        t4, 107018
                  sltu         t2, a3, a6
                  addi         a2, s7, -1096
                  slti         s3, s9, -1298
                  slti         ra, a5, -1212
                  xori         s10, t5, -1152
                  slli         t3, s0, 17
                  or           zero, a1, s5
                  srli         s0, a6, 2
                  srli         s9, t0, 30
                  sra          t4, s3, a7
                  auipc        s1, 483771
                  sub          a3, a1, a5
                  slli         t2, s11, 19
                  slti         s10, ra, 1296
                  or           s6, a4, ra
                  srl          s10, s1, a6
                  slli         t2, s3, 1
                  slti         tp, a2, -808
                  andi         s4, s7, 838
                  xori         s11, s2, -601
                  add          t4, s8, a6
                  auipc        t2, 617124
                  add          s3, a0, s1
                  sltiu        a3, t5, -1861
                  lui          sp, 52647
                  lui          tp, 265520
                  slt          a6, s10, s11
                  and          s3, a5, ra
                  lui          s0, 832800
                  ori          t6, s8, 1705
                  srl          zero, gp, a4
                  lui          ra, 869575
                  ori          s6, s7, 561
                  sra          t4, a1, tp
                  slli         sp, s9, 6
                  srai         a3, s7, 30
                  ori          t0, s11, -1349
                  andi         s3, a6, 1026
                  slli         a7, t6, 25
                  slli         s2, t0, 30
                  srai         a0, sp, 24
                  auipc        s11, 865235
                  sll          a6, s6, s9
                  andi         t0, a0, 422
                  slt          s7, gp, t2
                  or           t1, a1, t4
                  sra          tp, t4, s8
                  sll          t4, s9, a1
                  sub          a7, a1, gp
                  sra          a2, s11, s9
                  add          t5, t6, s6
                  srai         a7, zero, 10
                  andi         s7, a1, -1145
                  andi         s10, s9, 1421
                  srai         s2, a5, 8
                  sll          t4, t5, t0
                  nop
                  sll          a0, s3, a4
                  sltu         sp, ra, a0
                  ori          a0, tp, 113
                  andi         s8, a7, 1444
                  and          s3, s8, s9
                  sra          s4, gp, ra
                  slt          a7, a1, a3
                  lui          ra, 884555
                  slti         s6, a1, 760
                  lui          a3, 624644
                  andi         s4, s1, 629
                  addi         t6, s10, -1947
                  sub          t4, a2, a7
                  ori          s4, a0, 1026
                  sltu         t6, t4, a0
                  and          s6, s11, s3
                  auipc        s7, 214119
                  sltiu        s3, gp, -270
                  ori          s2, tp, -1104
                  slti         t3, s6, 313
                  and          s1, zero, s11
                  xor          a4, s10, s9
                  srai         t4, t0, 6
                  add          s9, gp, a5
                  slti         a0, t4, -1617
                  xor          s7, a2, a6
                  sltiu        s8, a2, -593
                  sra          s4, tp, a1
                  slli         a6, s5, 26
                  sltu         s8, ra, t5
                  andi         tp, a6, 679
                  slt          s8, s7, s1
                  and          a6, a3, t0
                  lui          s0, 683827
                  sub          t6, s1, t3
                  ori          t4, t5, -1053
                  xor          t2, s6, sp
                  or           a0, s6, s6
                  auipc        tp, 413209
                  slli         s3, t0, 25
                  and          a3, a5, s3
                  srai         s9, a2, 22
                  auipc        zero, 91057
                  sll          s4, s9, t5
                  xor          a7, s2, sp
                  srl          s9, a4, sp
                  slti         s8, s11, -794
                  or           gp, s1, t0
                  nop
                  slli         t0, t0, 4
                  slli         a7, sp, 31
                  add          zero, zero, a1
                  addi         a2, t5, 477
                  ori          s4, a4, -1956
                  sra          s1, a7, gp
                  sltiu        s7, t3, -1957
                  xor          s9, tp, s10
                  slli         ra, zero, 13
                  sub          ra, s6, a1
                  addi         gp, t5, 1213
                  nop
                  srl          a3, s2, zero
                  andi         s1, t5, 1173
                  auipc        a2, 272422
                  lui          s8, 30910
                  slli         s7, a0, 19
                  add          a2, t1, t6
                  lui          gp, 289267
                  sub          s0, a3, a0
                  add          t2, a3, s2
                  xor          ra, a6, ra
                  sltiu        s7, a4, 1995
                  sub          zero, a3, t2
                  andi         zero, s4, 1393
                  ori          t5, sp, -1879
                  srli         a4, t6, 11
                  addi         s3, sp, 552
                  slli         t2, s5, 23
                  or           zero, t4, t0
                  xori         s10, a3, 1737
                  sll          s1, a7, s9
                  srl          ra, a0, tp
                  sub          a3, s4, s2
                  add          t2, a7, a7
                  slti         s0, a2, 1073
                  sll          s10, s9, a3
                  srl          s11, a4, t6
                  andi         ra, a4, 438
                  srl          s4, a2, zero
                  add          t4, s0, a6
                  auipc        a7, 802695
                  sra          s8, s9, tp
                  xori         zero, a2, 752
                  sltiu        s9, t6, -252
                  sltiu        t6, s0, 1697
                  sll          s1, a4, tp
                  sub          t4, s4, s11
                  nop
                  slli         a7, s3, 19
                  sub          s2, a5, sp
                  and          s8, s3, s2
                  lui          sp, 577975
                  xori         tp, s2, -436
                  xori         t1, ra, 836
                  slt          a2, t4, s3
                  slt          t0, a6, s11
                  nop
                  slt          a2, a7, a2
                  srai         s10, t5, 18
                  srli         tp, zero, 20
                  slti         s1, a5, -87
                  slli         s4, a7, 0
                  sub          s3, tp, a2
                  sltiu        s4, s6, -1191
                  sltiu        t2, a4, -1244
                  addi         s0, a7, -572
                  sll          t1, a0, s9
                  sltu         a6, t4, a0
                  addi         a3, t2, 357
                  sra          a3, t2, s2
                  andi         t0, a5, -1954
                  sub          a0, t3, tp
                  slli         s6, s10, 23
                  srli         s7, a6, 31
                  srl          t2, t6, a3
                  sra          t2, s3, t3
                  and          ra, s8, a4
                  sltu         s7, zero, a6
                  sll          zero, sp, s0
                  or           s11, gp, a5
                  sltu         s10, s8, s10
                  andi         tp, t1, -1080
                  sub          sp, s11, gp
                  srai         s2, s3, 18
                  xori         s9, a0, 1667
                  ori          s11, t1, -247
                  lui          a2, 53776
                  srai         s1, a1, 13
                  srli         t1, s3, 30
                  nop
                  or           s6, s5, a1
                  ori          tp, a0, 604
                  add          t2, t4, s10
                  xor          sp, s5, s4
                  nop
                  xori         t4, a5, 1565
                  srli         a7, a4, 0
                  add          t1, a2, s2
                  sltu         s3, ra, s6
                  slli         t4, a1, 30
                  sra          ra, t0, s9
                  sltiu        s2, s8, 1341
                  sll          t6, gp, a7
                  auipc        s2, 591712
                  andi         t0, t5, 719
                  nop
                  sub          s0, s4, a2
                  slt          ra, t5, s10
                  sltu         s2, a1, a3
                  sltiu        a0, s9, 2013
                  srai         a7, s1, 26
                  srli         s0, t3, 17
                  xor          s0, s8, tp
                  sra          t4, t0, t4
                  auipc        s0, 414768
                  srai         t6, s2, 20
                  and          s0, t4, a4
                  slli         s1, sp, 13
                  srli         s1, s8, 25
                  sltiu        s0, t2, 573
                  sub          t3, s0, s6
                  lui          t6, 290393
                  sltu         s10, t0, sp
                  andi         t1, s4, 1150
                  add          t1, a1, s5
                  sltiu        t2, sp, -1649
                  sltu         a6, a7, ra
                  add          t2, s0, t0
                  addi         t1, s5, 1429
                  xori         s7, s6, 627
                  srli         t1, s1, 16
                  andi         s4, a3, -1884
                  sltiu        a2, t1, 643
                  srl          tp, a7, s5
                  xori         a6, t4, 1618
                  sub          s1, a0, s1
                  auipc        s7, 82829
                  srl          s3, s6, s3
                  slli         s6, s8, 14
                  slti         a2, ra, -1749
                  xor          t2, tp, a7
                  sltiu        a7, t0, 225
                  nop
                  srli         s7, a4, 13
                  andi         s8, a1, 1461
                  slti         t1, t0, 14
                  slti         s10, zero, -867
                  ori          a4, s10, 1470
                  lui          s9, 214405
                  xori         tp, t1, -1450
                  sra          t1, s9, s3
                  add          a2, s0, s2
                  sltiu        a3, a4, -752
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           tp, 0x0
                  li           s7, 0x0
                  li           s3, 0xec12b940
                  li           t3, 0xffffffff
                  li           t4, 0x54a5f037
                  li           a7, 0x0
                  li           gp, 0x0
                  li           ra, 0xfa71725
                  li           t2, 0x583a35cf
                  add          tp, s7, s7
                  lui          s3, 332502
                  add          t4, s7, a0
                  nop
                  addi         a0, tp, 1422
                  nop
                  sub          t3, a7, s7
                  sub          a0, t4, tp
                  addi         a7, t3, 1437
                  auipc        t4, 613191
                  addi         t4, t3, 1039
                  sub          s7, t2, s7
                  add          a7, t2, t3
                  sub          a0, ra, a7
                  lui          t3, 345792
                  add          t4, t4, t2
                  add          a7, t3, tp
                  nop
                  addi         t2, t3, -25
                  sub          a0, s7, a7
                  sub          tp, t2, s3
                  nop
                  nop
                  nop
                  add          t4, t3, tp
                  nop #end riscv_int_numeric_corner_stream_15
                  xor          t3, s7, s7
                  slti         t0, s7, -873
                  srli         a3, t3, 18
                  sltu         a4, s3, t5
                  xor          t6, a4, s6
                  auipc        t4, 288479
                  xor          s10, a5, t0
                  ori          a2, s3, 278
                  add          t5, t1, s3
                  sub          a2, s4, s0
                  addi         s10, a6, -1758
                  srl          sp, s0, a2
                  addi         gp, t4, -1668
                  srl          zero, s4, s7
                  sra          t3, t2, sp
                  lui          t2, 53768
                  slt          s3, a4, a4
                  auipc        s1, 467659
                  srl          a6, s11, t1
                  add          gp, s11, t3
                  slli         s6, a5, 15
                  nop
                  srl          tp, a7, a4
                  sll          sp, sp, zero
                  sub          t5, t2, s9
                  auipc        s4, 1043741
                  xor          t4, s2, t4
                  xor          a0, a6, a2
                  slti         a0, t4, 367
                  srl          s6, s4, s10
                  sll          a7, s0, a7
                  slti         a4, zero, -409
                  add          zero, t3, s7
                  srai         t5, zero, 29
                  and          a0, s0, s0
                  or           s8, a3, t2
                  srai         gp, t1, 27
                  nop
                  ori          s9, sp, -1613
                  xori         zero, ra, -2014
                  sub          t0, tp, s1
                  slli         t0, tp, 25
                  addi         sp, s8, -1717
                  sll          s9, s9, t5
                  slti         a4, t5, -856
                  sltiu        s4, zero, -72
                  slli         s10, s6, 10
                  and          a3, sp, s11
                  auipc        a2, 899229
                  andi         s3, s3, -1783
                  sll          t4, tp, tp
                  slti         t2, zero, -183
                  srl          s0, t6, s5
                  slti         s10, a4, 1816
                  sub          tp, tp, s10
                  slti         gp, a1, 1656
                  andi         a6, t4, 593
                  slt          s10, a4, s10
                  sra          s1, a4, s7
                  srai         s3, sp, 24
                  lui          s0, 1005931
                  srl          s3, t1, s6
                  add          t2, gp, a6
                  sltu         a3, t5, t2
                  xori         s3, s11, 756
                  sub          s7, gp, s5
                  nop
                  and          s4, t5, s2
                  slli         gp, t3, 19
                  add          ra, s11, a4
                  nop
                  sra          s0, t5, t5
                  lui          t3, 774135
                  lui          sp, 745194
                  andi         gp, s10, -1375
                  slli         t1, a3, 14
                  add          sp, s7, a7
                  sra          a3, t4, t4
                  ori          s8, ra, 1529
                  xori         zero, a2, -1239
                  addi         s1, a4, 1755
                  sra          s2, s8, s2
                  srai         t3, a4, 13
                  or           t3, a2, s7
                  sltu         zero, s11, a7
                  add          s9, t0, t0
                  xori         sp, a2, -105
                  srai         a3, a4, 5
                  sltu         s0, t3, zero
                  sll          t4, a1, s0
                  srai         a4, t1, 1
                  lui          a6, 68073
                  sltiu        s3, s5, 9
                  xori         s3, zero, 107
                  sra          s3, ra, s6
                  srli         t6, s8, 16
                  xor          sp, s4, s1
                  slli         s8, t3, 15
                  add          a4, tp, a5
                  auipc        a0, 699151
                  sra          t1, s10, a1
                  slli         t6, a2, 16
                  srai         t0, s4, 19
                  sra          a0, tp, a0
                  slti         a2, t3, 1906
                  slt          t3, sp, s7
                  sra          a3, sp, s10
                  sltu         sp, a4, t2
                  sltiu        zero, tp, 349
                  or           s10, s7, sp
                  nop
                  xori         ra, s11, -850
                  slt          tp, gp, zero
                  nop
                  auipc        s2, 701312
                  slli         s1, s3, 20
                  slti         a4, zero, -1544
                  ori          tp, a5, -1364
                  sltu         s8, s2, gp
                  sltu         gp, a0, gp
                  sra          s8, a2, a4
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           a4, 0x80000000
                  li           tp, 0x0
                  li           s7, 0x0
                  li           a3, 0xffffffff
                  li           s10, 0x80000000
                  li           t2, 0x80000000
                  li           t5, 0x80000000
                  li           sp, 0x80000000
                  li           s9, 0x5a65a7c1
                  addi         s9, a3, 464
                  sub          t5, tp, tp
                  sub          s7, s7, s7
                  auipc        s4, 473475
                  auipc        s4, 579680
                  sub          s4, s9, sp
                  auipc        t5, 296499
                  lui          t5, 221678
                  lui          t2, 322532
                  auipc        sp, 1029848
                  lui          tp, 989113
                  nop
                  addi         tp, a3, 266
                  addi         s9, a4, 503
                  sub          t5, a4, s7
                  addi         a3, s7, -703 #end riscv_int_numeric_corner_stream_12
                  auipc        t4, 22525
                  xori         s11, a2, 1777
                  ori          s3, s11, -1271
                  ori          tp, s0, 1377
                  srl          t5, s5, s0
                  slli         a2, s0, 16
                  ori          s10, t5, 1985
                  srl          t0, s9, a2
                  or           t4, t2, t4
                  slt          t0, t1, a3
                  slli         s3, a2, 14
                  ori          s0, gp, -1021
                  xor          s9, s8, a4
                  or           s0, s8, s10
                  or           s2, s7, a7
                  sra          a4, s2, a6
                  xor          s3, s8, t6
                  nop
                  or           a4, gp, s10
                  xori         s0, t1, -1335
                  slt          t4, t0, s11
                  lui          s8, 495581
                  srai         sp, s8, 11
                  ori          s10, s11, 1348
                  nop
                  add          gp, s2, a5
                  sltiu        s3, t1, -1635
                  addi         s7, t1, 1270
                  slti         t3, a5, -71
                  srai         t5, s5, 22
                  andi         a3, a4, 1674
                  addi         t1, s3, -1190
                  sub          t5, gp, a2
                  slt          a4, s0, s10
                  sltu         zero, a4, a1
                  slt          s2, tp, a3
                  slt          a0, s10, t1
                  auipc        s1, 68754
                  addi         t0, a3, -1841
                  sltiu        t4, t2, -1853
                  lui          s4, 815613
                  slt          s2, a3, t5
                  sltu         s1, s4, s5
                  xori         s2, a7, 207
                  sltu         s0, a2, s5
                  sltu         s2, a1, s7
                  xori         t2, t0, 154
                  ori          ra, a7, 165
                  auipc        a3, 135571
                  ori          s11, a6, 1058
                  slti         a3, a2, 686
                  sltu         s8, s11, a3
                  srl          t6, s11, s10
                  or           s11, sp, t6
                  slt          s1, gp, t4
                  andi         s7, a2, 752
                  sll          gp, a7, a5
                  lui          gp, 48680
                  andi         s9, s3, 1563
                  srl          a7, s8, t0
                  xor          ra, t2, a6
                  xori         gp, a0, -938
                  ori          t5, s11, 266
                  slt          s10, s10, gp
                  sltu         ra, t5, s8
                  srai         s11, a4, 29
                  nop
                  andi         sp, s5, -999
                  slli         s2, a0, 24
                  lui          t4, 458947
                  and          t1, a6, a6
                  ori          s3, s7, 344
                  add          s6, gp, ra
                  xor          t0, s5, s5
                  addi         s1, tp, -510
                  sra          t1, t6, a7
                  slt          s0, a3, s10
                  xor          t0, ra, a0
                  or           t5, s10, s0
                  xor          t5, s7, t6
                  srli         s11, s11, 6
                  sltu         a4, s8, t3
                  sra          s4, t1, t0
                  add          s2, s8, a2
                  slli         gp, a7, 22
                  addi         t4, s9, -1383
                  slt          t4, a2, t5
                  slt          s4, s2, s7
                  sub          s4, ra, a1
                  xori         a0, a4, -1267
                  and          a6, zero, t5
                  add          gp, ra, zero
                  xori         a3, a7, -661
                  slt          t4, a6, a2
                  lui          s8, 103273
                  nop
                  slli         s7, s0, 9
                  sltu         a0, s0, tp
                  slt          s8, s0, zero
                  lui          zero, 582268
                  srli         gp, s3, 16
                  slli         t5, s11, 10
                  sltu         a6, a5, s7
                  add          a0, a7, sp
                  and          s0, s2, s3
                  slti         ra, s11, -1052
                  ori          s7, sp, 971
                  auipc        s7, 4073
                  addi         t4, t4, 825
                  srli         s7, s2, 25
                  add          a7, s11, a7
                  xori         s10, t5, 804
                  slli         s7, s10, 28
                  add          t0, t2, s11
                  lui          t3, 802803
                  sub          s4, s1, s3
                  sra          t0, t2, t3
                  sltu         a6, a5, a0
                  sra          a4, t3, sp
                  srl          s8, s7, s4
                  srl          sp, s10, t1
                  add          s6, s2, s7
                  srai         s1, s10, 27
                  lui          s0, 599728
                  or           t1, a7, s10
                  lui          t5, 1047973
                  or           t3, tp, s1
                  sll          a7, s5, t3
                  xori         sp, s10, 1273
                  andi         t4, t5, -715
                  or           t2, s2, a0
                  or           s8, t6, a0
                  or           a6, a0, a2
                  srai         s3, a6, 30
                  sltu         a3, s2, zero
                  sltu         s0, a1, a3
                  srl          s7, s4, s9
                  and          ra, t0, a6
                  srl          s7, a6, a7
                  sltiu        a3, t4, -1773
                  addi         t3, t5, -1784
                  xori         s3, s9, -1981
                  add          zero, sp, a5
                  xori         ra, t2, -571
                  andi         t4, a5, -228
                  srli         a3, a5, 3
                  addi         s9, s9, -1920
                  lui          s6, 336228
                  srl          gp, t5, t5
                  nop
                  sltu         a0, s5, t2
                  slt          a3, a2, s3
                  addi         s4, s0, -1923
                  srli         s2, s8, 21
                  andi         a0, s0, 1981
                  xor          zero, s7, s1
                  add          t4, t1, a3
                  slt          s8, s9, a4
                  nop
                  sll          a3, s8, s8
                  xori         s2, s9, -569
                  xor          t2, s2, s11
                  auipc        sp, 706600
                  sll          a4, s4, a3
                  lui          s2, 1018623
                  or           gp, a7, a3
                  sra          s10, sp, a0
                  xori         a6, s8, 1383
                  xori         s8, ra, -2019
                  sltu         s11, a0, a4
                  srli         s10, s11, 29
                  lui          a0, 523873
                  sra          s9, a6, t4
                  sub          s2, a0, s8
                  xor          tp, s2, s11
                  slti         sp, s11, 368
                  srai         ra, a4, 19
                  sll          zero, s10, s0
                  ori          a7, ra, 596
                  xor          t6, a7, t4
                  xori         t4, tp, -1524
                  slt          s2, a5, s1
                  andi         a7, t0, 1207
                  and          s7, sp, t3
                  and          a6, t0, t4
                  lui          t2, 901843
                  add          t2, s6, a7
                  srli         s1, a7, 7
                  sltu         gp, s9, s6
                  addi         s3, a2, -1708
                  slli         gp, t4, 17
                  srai         s6, t3, 25
                  add          s4, t4, a7
                  sltu         s8, t5, a7
                  ori          t2, a1, 1936
                  slli         s9, s11, 15
                  slli         t5, s8, 31
                  slli         s7, s7, 11
                  sub          t4, a7, tp
                  slli         s7, t4, 1
                  add          s4, gp, s7
                  srl          zero, ra, s10
                  slt          s3, s11, a6
                  and          s3, a2, t4
                  nop
                  slt          s6, zero, s7
                  xori         a6, a6, -695
                  sll          s8, t2, s8
                  addi         tp, s8, 2013
                  slti         a6, zero, -76
                  or           a4, s8, a3
                  srl          sp, s7, t6
                  addi         a2, s6, -231
                  slli         t0, zero, 19
                  andi         t1, s8, 31
                  srai         t4, s9, 16
                  sll          zero, s6, t0
                  srli         s9, a1, 2
                  sub          t0, a4, ra
                  xor          s10, a3, s7
                  slt          sp, a3, s10
                  srli         t2, t6, 8
                  xori         t2, a3, 1167
                  slti         ra, s0, -1676
                  sltiu        a0, s3, 1581
                  ori          t6, a6, 832
                  nop
                  srli         zero, s10, 30
                  sltu         s4, s4, s6
                  sub          gp, t3, s3
                  slli         a7, a4, 20
                  xor          a0, s3, t3
                  srli         a2, t1, 6
                  add          s2, a6, t0
                  auipc        s8, 646803
                  srai         s11, s10, 12
                  and          zero, s9, t1
                  srai         a7, s11, 29
                  srl          s10, s6, t2
                  xori         t1, s2, 1832
                  slti         s6, a2, -507
                  sltiu        s6, gp, 1776
                  sll          s3, s2, s2
                  sltiu        s3, s3, 1850
                  srl          t5, t5, s0
                  slli         t4, s8, 2
                  slt          t5, ra, a5
                  or           a2, s4, a7
                  sll          t6, s1, s7
                  sra          s10, a1, s5
                  xor          s0, ra, s0
                  lui          s7, 845848
                  addi         t4, t5, -38
                  andi         t2, gp, -1397
                  xori         s7, t4, 50
                  or           ra, s3, a7
                  slt          s0, s4, s4
                  srli         s0, t6, 25
                  srli         sp, s4, 6
                  xori         s11, s7, 602
                  addi         t3, s2, 1018
                  slt          s10, zero, s11
                  srli         t1, s0, 18
                  ori          t5, a7, 924
                  sub          sp, s6, s5
                  sltu         s0, s8, a0
                  nop
                  sltu         s10, a0, s5
                  sub          t3, s1, s2
                  ori          t0, tp, -1998
                  slli         a3, t3, 14
                  andi         a3, s6, 1967
                  sub          s6, t3, t1
                  or           s10, s5, s1
                  addi         a3, s3, 1280
                  sra          s7, s4, s2
                  sltu         s0, t6, s6
                  srl          s9, t2, a1
                  nop
                  add          s6, s4, t6
                  srl          a0, t6, ra
                  lui          s11, 748765
                  xori         s10, s1, -816
                  srli         t6, s8, 28
                  slli         t4, a7, 22
                  srai         t5, s2, 16
                  sltu         s8, s2, s4
                  sltiu        s10, sp, 916
                  ori          s11, a5, -1198
                  andi         sp, s8, 299
                  or           a2, ra, t0
                  ori          s1, t0, -761
                  or           a2, s9, s9
                  lui          s10, 516002
                  slti         tp, a4, -1024
                  sll          s2, t2, s10
                  add          s8, s4, s3
                  addi         tp, t0, -533
                  sll          s3, a4, s9
                  sltu         s0, t6, ra
                  slti         s4, sp, 1039
                  sltiu        a7, s2, 1032
                  lui          gp, 761684
                  or           s2, a3, s2
                  sub          t6, s4, sp
                  nop
                  srl          sp, s4, s5
                  addi         s4, sp, 1607
                  addi         tp, t3, -1299
                  sra          s7, a2, a0
                  add          gp, s9, a2
                  addi         s9, tp, -1745
                  slli         t1, s3, 23
                  auipc        ra, 454515
                  sub          s0, t2, a0
                  srl          t1, tp, a7
                  add          t1, t4, a6
                  and          zero, t5, t0
                  or           t5, s8, s7
                  nop
                  ori          t4, t6, 799
                  slt          s2, s5, t1
                  srai         s8, gp, 28
                  and          zero, s7, a7
                  sll          s11, a0, s0
                  and          gp, a0, a3
                  addi         ra, s2, -400
                  sll          s1, s5, t2
                  andi         t1, sp, 248
                  srai         s4, t2, 12
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           t4, 0xffffffff
                  li           s11, 0xffffffff
                  li           a0, 0xffffffff
                  li           t0, 0x0
                  li           s9, 0xe72ec210
                  li           a7, 0x1548876
                  li           t2, 0x0
                  li           a3, 0x0
                  li           s3, 0xffffffff
                  lui          s3, 164054
                  sub          t4, t0, a3
                  add          s8, a3, a7
                  nop
                  lui          a0, 692754
                  auipc        s3, 7144
                  nop
                  add          t2, s3, s8
                  sub          a3, a7, a0
                  nop
                  add          a3, s11, a7
                  addi         a7, a7, 1512
                  nop
                  lui          a0, 23548
                  auipc        s9, 183289
                  lui          t4, 385121
                  addi         s9, t4, -1911
                  lui          t2, 734838
                  nop
                  addi         a0, a7, -1486 #end riscv_int_numeric_corner_stream_4
                  xori         s3, s9, -1675
                  and          ra, t3, s11
                  xori         t5, ra, -1581
                  nop
                  sub          t2, s7, s9
                  srai         t6, s5, 6
                  xori         a4, gp, 987
                  sltiu        s2, s6, -604
                  slli         t6, zero, 22
                  andi         t2, s1, 291
                  andi         t2, a0, 644
                  srli         s3, s9, 10
                  sltiu        t2, t0, -1699
                  sll          gp, t5, s9
                  srai         a3, s6, 27
                  andi         zero, s10, 1032
                  slli         a3, a0, 8
                  nop
                  nop
                  srai         t5, s2, 0
                  add          s10, a1, t5
                  auipc        zero, 107158
                  and          zero, s10, s2
                  xor          s10, t6, s2
                  and          t1, s8, a0
                  sll          ra, a3, s9
                  add          s7, zero, s6
                  xori         t3, s4, -1076
                  ori          s2, a4, 1286
                  slti         t5, t0, 13
                  slti         a2, s9, -645
                  srli         s7, t3, 22
                  srai         tp, s6, 10
                  srli         a2, s10, 3
                  sltu         s4, a1, s11
                  sub          t0, s8, t4
                  srl          s7, t5, t4
                  slt          s11, s1, tp
                  sll          s2, s0, a7
                  ori          t6, a1, 739
                  and          s8, s3, s2
                  andi         zero, s5, -70
                  sll          s2, s5, gp
                  or           s9, a6, s11
                  add          s1, a5, s7
                  sltiu        zero, a7, 1239
                  lui          t3, 736102
                  slt          a2, gp, gp
                  addi         s2, s11, 159
                  nop
                  srai         s1, s11, 3
                  nop
                  add          s7, a0, s0
                  sra          a3, a2, t0
                  slti         s4, a6, 1313
                  ori          s2, s11, -344
                  slti         a7, s1, -1151
                  sltu         tp, t0, a4
                  sltiu        t5, s4, 1817
                  or           s2, s0, t0
                  nop
                  srai         ra, t4, 21
                  srli         tp, t5, 17
                  sltiu        t4, t0, 1873
                  slti         a7, t1, 1374
                  sltu         s2, ra, s8
                  srai         a7, t2, 4
                  slli         s11, a0, 7
                  andi         zero, gp, -615
                  addi         ra, ra, 209
                  sub          s7, a3, a4
                  auipc        a4, 902405
                  slti         gp, sp, 2044
                  xori         s0, gp, 1294
                  sltu         zero, ra, a1
                  xor          ra, a5, t0
                  addi         a3, a4, -80
                  sub          s4, a5, s0
                  auipc        s3, 79366
                  sub          gp, a7, t0
                  sltiu        s8, s0, -82
                  lui          t6, 1016483
                  slti         t2, gp, 1066
                  or           s8, a1, t0
                  or           s2, t5, a4
                  sltiu        s7, s1, -1559
                  sltiu        s7, s7, -1294
                  andi         t2, a3, -1425
                  srli         zero, ra, 23
                  slt          t2, s8, sp
                  sub          t0, t2, t1
                  slti         zero, t6, -810
                  sra          tp, t4, t3
                  add          t5, a4, s4
                  srai         s10, a4, 24
                  andi         t4, t2, 1952
                  auipc        s9, 129352
                  lui          a2, 381902
                  slti         s8, s4, 386
                  sub          s3, a7, s0
                  sltiu        t5, a4, -1889
                  slli         a4, s8, 4
                  nop
                  or           s6, s3, s4
                  ori          a7, s0, -1608
                  addi         s0, s6, 239
                  srl          t6, a6, t1
                  add          s6, s5, s2
                  sra          s11, s1, s4
                  slti         gp, zero, 557
                  andi         a2, s3, -1704
                  sltiu        a2, s9, 1755
                  sra          s11, gp, s7
                  lui          tp, 27176
                  sll          s8, ra, t4
                  sltu         t5, s1, s2
                  xori         s1, t1, 915
                  auipc        t6, 745025
                  sll          s7, t2, t3
                  slli         s10, a1, 5
                  sll          sp, a1, zero
                  sra          a4, s2, s11
                  and          s4, t5, a5
                  xori         t1, a2, 1918
                  ori          s0, gp, 1967
                  srai         t0, s9, 11
                  ori          t4, s10, -850
                  nop
                  slli         s2, t5, 19
                  srl          s6, s8, zero
                  andi         ra, s0, -1331
                  ori          a7, s6, 1833
                  srli         zero, s2, 28
                  andi         s4, s3, -172
                  sub          a7, s1, a0
                  sra          s7, s8, t6
                  srli         a0, a7, 11
                  auipc        t6, 408848
                  ori          s8, a1, 204
                  andi         t3, a1, 872
                  andi         a7, a6, -163
                  slti         s11, t0, -51
                  srli         a2, a0, 7
                  nop
                  addi         s2, s1, -1967
                  andi         t6, gp, -893
                  ori          s4, sp, -1001
                  slt          s7, s4, s8
                  srl          t3, s7, s6
                  srli         a4, s2, 6
                  slt          t1, a4, ra
                  nop
                  srai         a7, a6, 29
                  xor          sp, a2, zero
                  addi         gp, a3, -471
                  slli         sp, s3, 0
                  sltiu        s4, a4, 1183
                  ori          s6, gp, 112
                  sltu         s11, a2, zero
                  auipc        s4, 856905
                  add          t2, s10, a5
                  slt          t5, s5, sp
                  sra          t6, a1, a4
                  slti         ra, gp, 1678
                  srli         s0, a5, 28
                  srl          a6, t2, a0
                  nop
                  sub          a0, tp, s1
                  sltu         s2, s5, s11
                  sltiu        a2, t2, 359
                  and          s8, s2, ra
                  lui          t1, 574306
                  and          tp, s7, s5
                  and          s0, a2, s8
                  slli         s9, sp, 19
                  ori          a3, a7, -2033
                  addi         s10, s4, -334
                  sub          s4, s8, a6
                  ori          zero, s8, 1093
                  sra          t5, zero, sp
                  sltiu        s9, s9, 303
                  ori          a3, gp, 1280
                  nop
                  lui          s2, 45977
                  nop
                  auipc        s11, 250017
                  sltiu        a3, t2, -1233
                  ori          s11, s9, -1191
                  sll          a2, a4, t4
                  or           a7, a5, s1
                  slti         a2, a3, 929
                  xori         a4, s5, -247
                  xor          s7, a1, t1
                  sll          t0, sp, t4
                  srai         ra, s5, 18
                  slti         s8, ra, -1618
                  sra          t1, a3, t5
                  add          gp, s0, s1
                  ori          s8, s4, -2014
                  srl          t6, s9, s10
                  srli         a3, t2, 10
                  ori          s11, s9, 1349
                  sub          t3, zero, s11
                  sub          tp, t3, t1
                  xor          a2, a7, t2
                  addi         s9, s5, 253
                  or           tp, a0, s0
                  addi         ra, s11, 1654
                  lui          s2, 120971
                  lui          t0, 826461
                  slt          a0, s9, s10
                  add          t0, s7, s11
                  add          s0, s4, t2
                  nop
                  slti         s10, s8, -1454
                  xori         s9, t3, -185
                  xori         ra, s4, -1170
                  sltu         t4, zero, a1
                  sltiu        s6, a6, -57
                  sll          t0, s0, a3
                  add          s7, s4, s11
                  srl          t3, a2, a4
                  andi         sp, t1, 261
                  sll          ra, t5, a1
                  add          s7, a0, s8
                  sll          s6, s0, a5
                  sll          zero, t0, s1
                  srli         t4, t6, 20
                  xor          t0, a7, a0
                  srl          a0, a3, t6
                  xor          a0, sp, t1
                  srai         tp, t5, 27
                  sltiu        s8, a5, -308
                  addi         s7, s3, -31
                  srl          s1, a2, a2
                  and          s10, s10, t0
                  slt          zero, t4, a5
                  sub          tp, s0, t6
                  srli         a0, t5, 6
                  add          t0, t2, t5
                  xori         s2, a2, 1226
                  auipc        s9, 461803
                  srai         t0, t4, 6
                  srl          t4, tp, t4
                  srli         zero, s9, 7
                  srli         s6, a0, 23
                  and          ra, s0, s1
                  srli         s0, s9, 4
                  sltiu        s7, gp, 712
                  ori          s1, s6, 464
                  andi         s6, s9, -921
                  slli         a3, s3, 21
                  slt          s6, s7, t2
                  sltu         t6, t0, a7
                  add          zero, s7, s7
                  andi         t4, s1, 833
                  srai         s10, gp, 16
                  slli         a7, s5, 18
                  slli         s4, t5, 4
                  xori         t3, s1, 1370
                  nop
                  slti         s4, zero, -1647
                  lui          a0, 819173
                  xor          zero, s6, s7
                  xori         s4, t4, -1707
                  srli         gp, t2, 19
                  sltiu        ra, t4, 745
                  sltu         t5, s1, a4
                  sub          s2, ra, a4
                  sub          ra, s7, sp
                  nop
                  sltu         s0, a0, s5
                  slti         t5, s8, 1874
                  srl          s1, t5, t1
                  sltu         s0, a3, s8
                  slli         t2, zero, 19
                  slt          ra, s11, s3
                  srli         s3, a3, 10
                  srl          sp, zero, t6
                  addi         s0, s9, -1075
                  ori          a6, a0, -240
                  srl          s7, s0, t0
                  and          t5, s0, a3
                  slti         t5, t2, 557
                  sltiu        s7, t6, -171
                  nop
                  srai         t2, a2, 15
                  slti         t0, a2, -1465
                  sub          a7, t6, zero
                  srl          t3, sp, s9
                  slli         s6, s8, 8
                  andi         a0, t3, -458
                  srai         t3, a1, 9
                  sub          s7, gp, a4
                  nop
                  or           gp, t3, tp
                  addi         t1, gp, 1051
                  sltiu        s10, s5, -1955
                  sra          s6, zero, a0
                  sltu         s6, ra, a6
                  srai         t3, s4, 1
                  andi         t2, tp, -1764
                  andi         t1, a5, 1759
                  slt          t1, tp, s11
                  or           tp, a4, s4
                  ori          t2, a5, -1966
                  sra          s9, tp, a1
                  sub          s10, t6, t2
                  or           s8, a5, a7
                  sltu         s7, t4, t1
                  xor          ra, a0, s4
                  ori          sp, s4, -671
                  xori         a2, s0, 1681
                  sll          t2, s5, a7
                  xor          s3, a6, s1
                  sra          a6, t4, zero
                  srai         t3, a5, 3
                  addi         t6, a5, -1716
                  lui          s2, 645351
                  xor          sp, s3, t2
                  addi         gp, s5, 1876
                  sltu         a4, s8, t6
                  nop
                  slli         a3, t5, 8
                  sra          s3, s3, t5
                  slti         t6, s5, -1245
                  nop
                  sll          s2, s1, s7
                  slli         s0, s0, 12
                  sub          s7, s5, t0
                  addi         t1, ra, -552
                  add          s4, tp, ra
                  addi         t2, s6, -1691
                  sltiu        tp, s4, -1911
                  sra          s6, gp, sp
                  sub          s9, s9, t4
                  slli         a2, s5, 9
                  addi         a2, gp, -1345
                  ori          sp, zero, -1950
                  sltu         s3, s10, s6
                  andi         ra, s0, -573
                  sll          tp, sp, t2
                  ori          tp, s2, 1458
                  sra          a0, s9, gp
                  slli         gp, a0, 27
                  andi         t2, t0, -199
                  slli         s9, s1, 12
                  lui          s4, 958760
                  sll          s11, zero, s1
                  srl          s8, s7, a4
                  sra          s6, tp, a3
                  sub          t3, ra, gp
                  sra          a2, a4, a3
                  sltu         t6, a5, a1
                  xori         s2, a4, -33
                  lui          s8, 392045
                  addi         t5, t1, 1821
                  add          a6, t5, sp
                  sltiu        s8, a5, -549
                  add          s3, a5, zero
                  sll          t5, s4, s6
                  addi         zero, a5, 468
                  addi         s3, s8, -1929
                  or           s4, t0, a3
                  slti         s6, s11, 491
                  lui          tp, 112260
                  slti         s0, s6, -149
                  and          t3, s3, t3
                  slli         s0, t5, 28
                  srai         gp, sp, 27
                  sltu         t5, s11, gp
                  sltu         a3, s1, s0
                  lui          s10, 473895
                  slli         s4, t6, 16
                  sub          a2, s2, s0
                  sll          ra, t6, t3
                  ori          s0, s0, 512
                  slli         s10, t0, 2
                  auipc        t2, 580314
                  ori          zero, a0, 1540
                  lui          gp, 402451
                  slt          t0, tp, sp
                  addi         t4, a3, 309
                  ori          t6, s7, -703
                  and          s0, a6, zero
                  srli         t6, t5, 17
                  andi         t3, a4, -1384
                  slt          sp, s5, s0
                  sll          s8, s7, s9
                  or           a0, s10, a2
                  lui          t4, 439740
                  slt          t1, s8, t1
                  andi         s9, s6, 157
                  sra          s6, zero, s8
                  srai         a0, a6, 11
                  and          s10, s2, s7
                  srli         s8, a5, 19
                  sltu         t0, a2, t6
                  and          s3, s9, t2
                  slli         s3, t5, 31
                  or           t4, t2, t4
                  addi         tp, gp, -741
                  or           zero, s5, a4
                  xor          t6, s11, s7
                  auipc        s0, 157389
                  sltu         a6, s11, s3
                  sra          tp, s9, s11
                  andi         zero, s9, -270
                  srl          s10, a5, t6
                  sra          ra, sp, a5
                  srl          t5, a5, s9
                  srli         t5, tp, 31
                  srli         zero, s5, 12
                  add          t5, t0, s2
                  slli         s9, s6, 5
                  sub          a7, tp, s8
                  sltu         zero, s4, t3
                  ori          s0, sp, 1206
                  ori          tp, s11, 1476
                  xori         t3, t4, -1813
                  addi         a0, s0, -1379
                  sub          t2, a2, s6
                  sra          s11, s0, gp
                  sltiu        s1, t2, -1403
                  sra          s7, t2, s6
                  xori         s4, a2, -1915
                  sra          a4, s3, t5
                  nop
                  xori         t0, s1, -827
                  sll          t3, tp, zero
                  or           t2, s5, s1
                  addi         t4, s4, -703
                  andi         s10, s3, -1198
                  sltiu        sp, sp, -1812
                  lui          s8, 635122
                  slt          s4, s3, a7
                  ori          a4, a5, 690
                  sll          t0, t5, zero
                  srli         t3, a3, 6
                  xori         s1, s5, -177
                  srai         s1, s10, 13
                  sll          s11, a0, a1
                  srai         s6, a7, 15
                  nop
                  srai         t4, a5, 4
                  srli         a2, s6, 15
                  and          s8, s8, a7
                  ori          zero, s6, -724
                  add          a7, s5, s7
                  sra          s8, tp, t0
                  add          s0, a6, t4
                  srai         t3, a3, 18
                  ori          a2, zero, -482
                  nop
                  sltiu        sp, a5, 865
                  nop
                  slti         a2, s1, 208
                  auipc        a0, 995072
                  lui          sp, 740842
                  srli         a6, a4, 26
                  nop
                  slti         s4, ra, 1615
                  auipc        gp, 22324
                  lui          t0, 508241
                  and          s7, s5, s11
                  or           t5, s6, a5
                  srli         s10, t4, 3
                  slli         s11, s7, 24
                  slli         t4, a3, 20
                  andi         t6, s4, -268
                  auipc        s4, 19094
                  srli         s0, a7, 15
                  sra          s3, a0, a0
                  srl          s11, a7, s11
                  add          zero, s2, sp
                  sltiu        t1, a3, 1198
                  or           t0, zero, zero
                  sub          t5, a3, t1
                  andi         t1, s0, 1977
                  add          s10, s9, ra
                  srai         a0, t1, 18
                  slli         s6, a0, 27
                  lui          s3, 460200
                  sub          t2, ra, s6
                  or           s6, s7, zero
                  xor          a4, t6, a5
                  nop
                  slli         t6, s10, 23
                  xori         t4, s0, -92
                  sra          s2, t3, s1
                  xor          s8, s2, s1
                  sra          s8, s7, a6
                  and          s3, a7, t2
                  or           s3, tp, s4
                  ori          s6, s11, 939
                  sltu         a4, a5, s11
                  srl          s0, zero, s6
                  auipc        s6, 466468
                  slli         t0, t6, 28
                  nop
                  and          ra, t2, s8
                  slti         a3, s6, -293
                  addi         t4, t1, 1224
                  xor          s2, a2, s8
                  auipc        s0, 952798
                  sra          t3, a5, t3
                  sub          t4, a1, s9
                  slti         gp, a2, 1857
                  nop
                  or           s9, a1, t5
                  sltu         a4, s11, s2
                  srli         s1, ra, 20
                  xori         s0, a3, -1755
                  sll          s11, a7, t4
                  slt          s1, s3, s9
                  sll          t1, tp, s2
                  xor          s10, t1, s10
                  slti         s11, a7, -659
                  srai         t3, t2, 0
                  xori         t4, a0, -903
                  lui          s0, 684328
                  slti         t2, a7, 1761
                  ori          s2, s2, 1458
                  sub          t0, s1, s3
                  xor          t1, s9, a4
                  srai         gp, s0, 27
                  nop
                  sra          gp, t5, s1
                  srl          a7, t1, t1
                  slli         s11, s10, 8
                  srli         s3, a6, 2
                  auipc        zero, 269430
                  xori         s10, s10, -1812
                  srl          s10, s9, a4
                  sra          tp, s3, s5
                  slti         s6, a0, -1177
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           t6, 0x80000000
                  li           t2, 0x80000000
                  li           t5, 0x80000000
                  li           s1, 0x0
                  li           s11, 0xffffffff
                  li           t3, 0x80000000
                  li           s4, 0x0
                  li           s2, 0x80000000
                  li           tp, 0xffffffff
                  add          a0, tp, a0
                  nop
                  lui          t5, 923614
                  nop
                  auipc        t5, 630442
                  nop
                  auipc        t2, 141797
                  nop
                  lui          t3, 363139
                  nop
                  lui          t5, 807911
                  addi         t5, t3, -1819
                  nop
                  sub          t3, t5, t5
                  sub          s4, s4, t2 #end riscv_int_numeric_corner_stream_2
                  addi         s4, t1, 1815
                  ori          s3, t6, 282
                  ori          tp, s9, -1797
                  sra          s7, s0, a2
                  auipc        s4, 131461
                  sll          t5, a5, s0
                  add          s4, s4, s6
                  slti         s3, tp, -856
                  srl          s9, ra, gp
                  addi         s4, tp, 1841
                  add          t5, t1, s1
                  slti         t2, a4, 1430
                  xori         tp, ra, 172
                  lui          t3, 618205
                  xori         tp, a2, -1613
                  addi         a4, a0, 1958
                  xor          a6, s9, gp
                  xori         a4, a6, 490
                  ori          t0, sp, -329
                  and          t3, a7, t0
                  auipc        a0, 813768
                  auipc        ra, 851335
                  auipc        s8, 846879
                  auipc        s3, 947074
                  sltiu        zero, zero, 562
                  ori          ra, a0, 1334
                  slt          s10, s1, t2
                  srl          s0, s3, t5
                  srai         a7, sp, 30
                  andi         t1, s2, -178
                  sub          s3, s1, a7
                  addi         s11, t2, -1462
                  and          a0, s9, t5
                  ori          t3, a1, -837
                  li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           s2, 0x0
                  li           t1, 0x80000000
                  li           ra, 0x0
                  li           tp, 0x0
                  li           a0, 0xfc07d3b2
                  li           t4, 0x0
                  li           t2, 0x0
                  li           sp, 0x0
                  li           a3, 0xffffffff
                  nop
                  add          t4, sp, s2
                  auipc        t2, 496046
                  sub          s0, s2, t2
                  lui          t4, 763416
                  auipc        t4, 846136
                  sub          ra, s2, tp
                  add          t1, tp, sp
                  sub          ra, a0, a3
                  add          a3, t1, tp
                  add          t4, a0, t1
                  addi         a3, sp, 1823
                  add          a0, a3, sp
                  add          ra, a0, s0
                  lui          tp, 11462
                  add          t1, a3, tp
                  nop
                  auipc        tp, 176022
                  auipc        sp, 19659
                  addi         t1, tp, -1940
                  auipc        sp, 924858
                  auipc        t1, 340586
                  sub          a0, a0, a0
                  addi         s0, ra, 1866
                  lui          tp, 929677
                  addi         t2, ra, 1960
                  sub          tp, s0, s2 #end riscv_int_numeric_corner_stream_5
                  or           t6, s7, ra
                  nop
                  or           a6, s3, t2
                  andi         zero, zero, -989
                  sra          s0, a6, t3
                  and          a0, t6, s11
                  slli         s2, a2, 22
                  lui          s2, 876392
                  srli         s3, a6, 29
                  nop
                  and          t1, a5, s0
                  add          s4, s0, s9
                  sub          a4, a4, s5
                  sltu         t3, sp, t4
                  slt          ra, t5, a3
                  sltu         s0, t1, zero
                  sltiu        s0, t0, 930
                  auipc        a4, 166655
                  sltiu        s1, s3, 1715
                  ori          s8, s11, 589
                  sll          t6, a4, s9
                  or           a4, t3, s2
                  srl          a2, s4, t0
                  xor          a3, a7, a5
                  slli         t1, t1, 0
                  sltiu        ra, s7, -150
                  lui          a2, 755271
                  nop
                  srli         a4, s3, 14
                  srl          sp, a5, s7
                  auipc        t6, 28311
                  srl          s11, a6, a0
                  sll          a0, tp, s9
                  slti         sp, ra, 1266
                  auipc        t3, 577612
                  addi         s1, s0, -1518
                  srl          t0, a6, s5
                  sub          s6, t3, zero
                  ori          a7, t1, 311
                  srl          s0, s5, a4
                  and          a3, ra, t2
                  auipc        t5, 898819
                  sltiu        a7, s9, -1136
                  srl          t2, s4, s11
                  srai         t3, a0, 11
                  sll          s7, gp, s7
                  srai         t5, a2, 28
                  slti         s7, s9, -1414
                  nop
                  srl          t1, t4, s3
                  or           a2, a0, s10
                  or           a6, s4, a0
                  or           s9, t1, s10
                  and          a4, a1, s11
                  srl          t0, s1, s2
                  auipc        a4, 658663
                  or           a7, s10, t5
                  ori          a3, t5, 1199
                  auipc        s4, 650306
                  slt          a3, t3, s8
                  addi         s11, a0, -210
                  andi         t1, t0, -1305
                  sub          t2, a6, s3
                  auipc        a2, 572375
                  sltiu        t0, sp, 847
                  srli         s2, s9, 28
                  addi         t0, sp, 1203
                  add          t0, t6, t2
                  sltu         s11, a2, t4
                  lui          a0, 860031
                  slt          a7, t3, a5
                  sltiu        t1, a5, -445
                  sra          t3, t0, tp
                  add          a0, s6, s2
                  or           a6, s6, s11
                  srli         a6, a6, 7
                  and          a3, s2, t6
                  lui          s2, 945277
                  addi         t6, a2, 1566
                  addi         t3, s4, 1063
                  sltu         a0, t2, a1
                  nop
                  xori         ra, s11, 1419
                  andi         s9, zero, 1033
                  sra          s0, s8, s9
                  sll          a0, t5, t2
                  sltiu        gp, a3, -1722
                  slt          a7, s3, t3
                  srl          tp, s8, a2
                  sll          t0, s0, t6
                  srli         s7, s6, 26
                  andi         zero, tp, -1770
                  andi         gp, t2, -1315
                  sltiu        s1, s7, -294
                  sra          t0, s4, s9
                  auipc        sp, 146585
                  xor          s8, s7, s9
                  srai         s6, a4, 14
                  sra          a2, a2, sp
                  auipc        s9, 87466
                  ori          t5, a3, -1565
                  or           t3, a4, s5
                  sltiu        s11, a6, -343
                  nop
                  addi         t0, t1, -1509
                  srai         a0, a7, 2
                  slli         s8, a7, 28
                  xori         t1, s8, 48
                  xori         t3, a6, 339
                  sltu         tp, a1, s11
                  srl          s1, s3, tp
                  slt          ra, s0, zero
                  addi         a6, s11, -1358
                  srli         s7, t6, 19
                  srl          s2, s10, s5
                  srl          tp, a2, s10
                  add          s7, a1, t4
                  sll          t6, t6, s3
                  slli         s2, zero, 24
                  xori         s1, s4, 153
                  slti         s7, gp, -1834
                  sra          t3, sp, sp
                  srli         t3, s2, 7
                  xor          s10, t6, t6
                  nop
                  sll          tp, t1, s7
                  sltiu        s10, s2, 1823
                  slli         a2, s10, 30
                  sltu         a4, a7, s7
                  slt          s3, t2, t1
                  slti         a3, s7, 1782
                  or           a6, ra, s8
                  auipc        s6, 268134
                  xori         s8, a4, 1955
                  sltu         a4, s6, a7
                  slli         s3, t0, 26
                  xor          a4, gp, s0
                  or           s9, s2, t3
                  sra          s4, s2, t1
                  ori          s0, t2, -1610
                  and          a3, a6, t1
                  slt          t1, t5, tp
                  or           a2, a6, s7
                  sra          s6, s0, a2
                  xori         s10, s2, 855
                  andi         a0, t5, 707
                  auipc        a3, 736755
                  sltu         a0, s6, s5
                  srl          t3, sp, a0
                  or           s8, a2, s8
                  slt          t5, s10, ra
                  ori          gp, s6, 159
                  srli         ra, a5, 18
                  auipc        zero, 1022561
                  slt          a2, s9, a7
                  sltu         a7, a3, t0
                  lui          s9, 88764
                  add          ra, s7, s3
                  sltu         s7, a5, s9
                  slt          a2, a2, t0
                  sll          a3, s9, s1
                  andi         t6, zero, 529
                  or           s4, t2, a7
                  xori         tp, t2, 1774
                  add          a2, a7, s6
                  sltiu        s4, t6, -1444
                  xor          s9, a2, s3
                  sltiu        t1, a0, -1625
                  srli         ra, s4, 3
                  lui          s2, 290640
                  srli         s2, a5, 3
                  sltiu        s1, t2, -1425
                  addi         zero, s1, -130
                  srai         s4, a7, 9
                  auipc        zero, 541336
                  sll          t3, s6, a3
                  add          a7, s3, a3
                  sra          a2, t3, s7
                  sll          t4, a7, t1
                  srai         a2, t2, 1
                  or           s7, a4, s8
                  add          s1, gp, zero
                  li           s2, 0x16272d44 #start riscv_int_numeric_corner_stream_8
                  li           a0, 0xffffffff
                  li           t2, 0xffffffff
                  li           s7, 0x3cde7d77
                  li           s10, 0x0
                  li           sp, 0xffffffff
                  li           t1, 0x0
                  li           t4, 0xffffffff
                  li           a7, 0x80000000
                  li           a2, 0x1610e95b
                  add          a0, s10, s2
                  nop
                  addi         s7, a7, 2004
                  add          t2, s7, t1
                  addi         s7, s7, 1313
                  nop
                  sub          sp, s10, s2
                  add          a0, a7, t1
                  add          sp, a7, s10
                  sub          sp, s7, sp
                  lui          t2, 284741
                  nop
                  sub          s7, sp, s7
                  lui          s2, 934737
                  nop
                  lui          a0, 946773
                  nop
                  sub          a7, t1, s7
                  sub          s10, s7, t2
                  add          t1, a2, s7
                  sub          t4, t1, t2
                  lui          t2, 968107
                  nop #end riscv_int_numeric_corner_stream_8
                  andi         a0, a0, -519
                  slli         s10, a2, 25
                  andi         a2, s3, 712
                  srl          a0, s0, a6
                  addi         t6, t4, -515
                  slti         s6, s11, -1461
                  sra          s10, a4, a5
                  addi         t0, a7, 85
                  lui          s3, 448477
                  ori          sp, t3, 1372
                  addi         s11, s3, 185
                  srli         a3, tp, 12
                  slt          tp, t0, s0
                  slli         s4, a0, 14
                  ori          s8, s5, 1098
                  slli         a0, s5, 21
                  ori          a4, s6, 76
                  slli         ra, t3, 16
                  sub          s4, t2, s9
                  xori         t4, s3, -1413
                  nop
                  sub          s7, a3, t3
                  sltu         tp, s2, a2
                  addi         t3, s3, -1454
                  add          zero, t3, s9
                  or           s11, a3, a2
                  lui          a6, 477688
                  sltu         ra, tp, a0
                  slti         a3, s8, -256
                  srli         sp, t6, 9
                  srli         t3, t3, 2
                  xori         s9, s4, -354
                  nop
                  nop
                  auipc        t2, 25685
                  add          s10, a7, t4
                  slti         sp, s11, 818
                  auipc        t1, 195916
                  xori         s8, s7, 569
                  slt          a3, a2, gp
                  auipc        zero, 495691
                  xor          gp, s11, a2
                  srl          s11, s4, a3
                  slli         sp, sp, 10
                  andi         sp, a3, -524
                  srli         t6, s11, 19
                  sub          s6, s8, s9
                  lui          s4, 986001
                  sub          s0, t2, tp
                  slli         t0, t3, 1
                  xori         s10, t3, 604
                  slti         t1, a0, 1909
                  ori          a2, s9, 1166
                  slt          a2, a5, a5
                  ori          s9, s5, -1461
                  nop
                  srli         s3, a6, 10
                  addi         t1, a1, -1417
                  auipc        s3, 34551
                  auipc        a4, 461946
                  ori          t4, a1, -381
                  sltu         s9, s2, t3
                  xori         a6, s2, 1570
                  and          t0, gp, s2
                  slti         ra, t2, 1066
                  sltu         a3, sp, a4
                  srli         a2, t2, 21
                  or           gp, t3, t5
                  sltiu        a6, s2, 1601
                  add          s3, t2, s11
                  andi         s1, a0, 4
                  sra          s6, s3, a4
                  li           t3, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           a6, 0x80000000
                  li           t1, 0xc0d8f744
                  li           s9, 0xffffffff
                  li           t5, 0xffffffff
                  li           a0, 0xffffffff
                  li           t2, 0xf2b48635
                  li           tp, 0x80000000
                  li           t4, 0xffffffff
                  li           t6, 0x428f8aa5
                  add          t3, a0, a0
                  sub          a6, s9, tp
                  add          t6, a0, a6
                  add          a0, tp, tp
                  lui          tp, 371211
                  nop
                  sub          s9, s9, t2
                  nop
                  auipc        t1, 887635
                  addi         t4, t2, 1013
                  sub          a0, t6, t2
                  lui          t1, 706435
                  auipc        t3, 34600
                  auipc        t4, 876908
                  addi         s9, t4, -664
                  addi         t1, t1, 1801
                  addi         t2, t2, -1290
                  addi         t3, s9, -207
                  lui          t4, 1002166
                  sub          t1, t5, a0
                  auipc        a0, 129750
                  add          t3, a0, t6
                  sub          t3, t6, t3
                  sub          a6, a0, t5
                  addi         t6, t1, -800
                  lui          a6, 707690
                  sub          t2, tp, t3
                  lui          s9, 955331 #end riscv_int_numeric_corner_stream_17
                  xor          s4, a1, tp
                  srl          sp, t6, s11
                  nop
                  slt          s7, t5, tp
                  srl          a3, s10, zero
                  srai         s2, s1, 11
                  ori          t0, s5, 1188
                  addi         sp, s1, 1992
                  nop
                  xor          s10, s3, gp
                  nop
                  slli         s9, t6, 12
                  srl          t4, tp, gp
                  sltu         s2, t1, s4
                  and          s3, a2, a0
                  slli         t4, s8, 11
                  add          t0, t3, s3
                  or           s9, t2, s7
                  sltu         a0, s8, t2
                  nop
                  and          ra, a4, t2
                  auipc        t5, 347656
                  sra          zero, a2, t1
                  slli         s11, s2, 20
                  slli         t0, s4, 28
                  and          t2, t5, s9
                  add          s3, s2, s3
                  xor          tp, t4, s4
                  andi         t0, ra, -192
                  ori          t5, a0, 174
                  srli         a4, t1, 15
                  add          a7, s10, s8
                  slli         t6, ra, 8
                  srai         a0, s4, 12
                  srli         a7, gp, 17
                  addi         t6, a0, -987
                  xori         t6, a7, -13
                  srli         s4, s11, 30
                  or           sp, a5, s0
                  auipc        tp, 273560
                  andi         a6, a4, 106
                  xor          sp, a5, s11
                  sltiu        a4, t5, 1864
                  xori         s3, gp, -169
                  sltu         a0, sp, s11
                  slti         t1, t4, 1527
                  sra          a7, s4, s5
                  srai         t3, s8, 18
                  lui          sp, 881598
                  srai         a6, s10, 20
                  auipc        s4, 1027628
                  or           t4, tp, s4
                  lui          zero, 690284
                  slti         t2, tp, 1782
                  slli         tp, zero, 19
                  srl          a3, s8, s8
                  add          sp, t0, t0
                  slli         t6, a7, 15
                  add          a2, s0, t0
                  lui          ra, 928991
                  sltiu        a0, s1, 1711
                  add          s4, a5, s11
                  sub          a7, zero, a5
                  sra          s9, tp, s7
                  sll          gp, t5, sp
                  sltiu        s8, a7, 622
                  nop
                  srai         t0, a2, 28
                  andi         ra, a0, -192
                  ori          t0, a1, -21
                  srli         t4, s0, 13
                  auipc        t5, 104427
                  sltu         s1, s9, s7
                  nop
                  sra          t6, t4, s9
                  srl          t5, s6, a2
                  xori         zero, sp, -2043
                  slt          s10, tp, s2
                  lui          tp, 582235
                  add          s9, s0, s3
                  and          tp, sp, s0
                  sltu         t1, zero, s11
                  addi         s11, t2, 1742
                  andi         s11, s7, -681
                  sltiu        a2, s1, -2032
                  nop
                  nop
                  andi         t6, a1, -280
                  addi         t0, t5, -1238
                  or           s8, ra, a5
                  auipc        a3, 993682
                  slti         t1, a1, 787
                  srli         sp, s11, 16
                  auipc        a6, 665336
                  sub          t6, s1, a6
                  lui          ra, 1044398
                  xor          tp, s2, t0
                  addi         t2, s5, 1977
                  sub          t3, gp, s1
                  xor          s8, a1, a2
                  srli         a0, t6, 25
                  sltiu        t1, a1, 1516
                  srl          s0, tp, t4
                  or           ra, a0, zero
                  slti         a7, a3, 366
                  ori          s0, t0, 1528
                  lui          s11, 669605
                  sra          s3, s3, s3
                  slli         t0, s9, 31
                  srai         s4, a3, 16
                  andi         s2, s5, 1022
                  slli         t1, s7, 25
                  slti         t5, s0, 810
                  lui          a4, 240327
                  srai         a7, s4, 9
                  xori         tp, a6, 1844
                  addi         ra, a5, 349
                  sll          t2, t0, a5
                  srli         s10, t5, 2
                  srai         s7, t1, 13
                  sltiu        a4, gp, -1778
                  xor          t6, s10, a1
                  ori          s0, s9, -1017
                  auipc        a6, 301481
                  lui          tp, 39514
                  srai         gp, ra, 21
                  or           a2, t4, a0
                  xor          s9, a0, t5
                  addi         s3, t5, 300
                  and          a6, s5, ra
                  add          s1, a2, a1
                  sra          s4, s9, a4
                  sll          t2, t3, sp
                  auipc        s0, 446380
                  sll          s7, s3, a3
                  slli         a2, a1, 30
                  sltiu        s7, t5, 1810
                  sra          s1, tp, t0
                  sub          t0, sp, tp
                  add          s9, s11, t1
                  xor          s10, gp, tp
                  nop
                  slti         a3, t2, 1838
                  add          a3, sp, t2
                  ori          zero, s6, 27
                  xor          s0, ra, sp
                  or           s4, a0, t5
                  srli         s0, a5, 29
                  srli         a3, t3, 20
                  srl          s11, ra, a2
                  srli         s1, s3, 22
                  slli         tp, tp, 12
                  sll          s4, s5, s1
                  lui          t4, 943926
                  srai         tp, t6, 10
                  sltu         t3, s0, s5
                  ori          s8, t3, 313
                  srai         s9, gp, 19
                  xor          s4, a2, t2
                  nop
                  sra          a2, gp, gp
                  lui          t3, 528896
                  ori          t3, t2, -54
                  add          s1, a6, a3
                  addi         a3, s6, 2
                  sltiu        a7, s5, 1601
                  or           s6, t2, sp
                  sll          t2, s1, t0
                  srli         s8, s3, 16
                  auipc        t6, 894024
                  slli         s8, s11, 10
                  sra          sp, a2, a2
                  addi         s4, s4, -1364
                  xori         sp, t1, -1403
                  auipc        s11, 280281
                  and          a2, gp, s6
                  slti         a6, a4, 480
                  slli         t5, gp, 24
                  lui          t1, 650122
                  slli         t4, s1, 1
                  nop
                  auipc        t6, 363959
                  sll          s10, t1, a6
                  sub          t6, a5, t5
                  sltiu        s3, a2, -1623
                  sll          s6, t2, s5
                  andi         s0, s5, -1058
                  slti         t5, t0, 579
                  xor          s7, s7, gp
                  slli         gp, a3, 12
                  slti         ra, s0, -506
                  ori          sp, t5, -433
                  sltiu        tp, a1, 152
                  srl          a3, t4, s11
                  xor          a4, s11, a3
                  srai         t0, s10, 11
                  add          s8, a0, ra
                  addi         a6, a7, 1245
                  and          s10, s4, t6
                  slli         gp, zero, 31
                  sub          s6, s11, s4
                  xori         sp, t6, -1631
                  addi         s4, a0, 944
                  sltu         a3, gp, t5
                  ori          a2, t6, -225
                  slt          s2, s3, s7
                  andi         tp, s2, 1072
                  lui          s10, 871527
                  lui          s3, 772156
                  srai         s2, s1, 22
                  sltiu        s4, tp, 1891
                  add          t2, s2, s3
                  slt          t3, a1, ra
                  add          t5, s4, a3
                  or           s6, a2, s10
                  slli         t0, t3, 11
                  sltu         t6, a6, a5
                  addi         t5, tp, 392
                  auipc        sp, 346134
                  lui          s9, 260647
                  slt          a0, a2, zero
                  sll          a3, t3, a1
                  addi         s3, t0, 579
                  slt          s8, t0, s4
                  slti         a2, s2, -28
                  sltiu        s4, a1, 1574
                  add          s2, s8, ra
                  ori          sp, s4, -316
                  sra          t2, a6, s5
                  xor          s8, a2, sp
                  slli         s1, s11, 28
                  sub          a3, s8, a6
                  sltu         ra, s2, s11
                  srli         gp, s1, 2
                  sltu         s10, a5, s3
                  xori         s7, a1, -1846
                  lui          s2, 817398
                  srl          a3, a3, t4
                  slt          a6, a0, a6
                  and          tp, sp, zero
                  xori         t3, s5, 1762
                  sub          s11, t3, t1
                  slti         s6, a1, -1686
                  xori         s10, a3, 1247
                  nop
                  nop
                  and          t0, s0, s7
                  slti         a7, zero, 1515
                  auipc        s7, 464183
                  sub          s0, s3, a1
                  xori         a2, a4, 597
                  xori         a3, s3, 2029
                  xori         t0, s0, -261
                  or           t1, t3, s0
                  slli         t4, zero, 11
                  or           zero, t3, t3
                  slt          zero, gp, s7
                  ori          s10, t5, 1309
                  sll          s8, s8, s9
                  srl          s0, s10, s0
                  sltiu        s7, s0, 923
                  srai         a4, t2, 21
                  xori         sp, t6, -1410
                  andi         s11, ra, 1615
                  slli         s4, s10, 25
                  sra          s11, t1, gp
                  slli         s8, t1, 25
                  andi         s11, t3, 1162
                  or           s7, s0, s9
                  andi         s6, s7, -709
                  slt          a3, s1, a0
                  srl          s8, t1, t3
                  and          a7, t5, zero
                  sltiu        s7, a2, 761
                  sltiu        a2, s8, -1279
                  xor          a7, s5, zero
                  lui          t0, 273095
                  nop
                  ori          a0, t3, -1551
                  andi         s10, t5, -2037
                  auipc        a3, 1014044
                  add          sp, t1, s4
                  xor          s10, a3, a3
                  nop
                  andi         s11, gp, -264
                  nop
                  srl          s9, ra, a3
                  slt          s0, s4, sp
                  ori          s7, s5, 1536
                  andi         s4, s6, -786
                  or           a3, t0, a5
                  lui          s8, 10847
                  xor          s10, s0, s11
                  and          sp, t4, ra
                  srai         s6, s0, 27
                  and          a2, s11, zero
                  sltiu        s2, t2, -902
                  and          s9, s8, s11
                  srai         a4, t5, 21
                  xor          a4, a5, s5
                  xor          s9, a4, a5
                  auipc        a4, 231477
                  andi         tp, s8, 238
                  slt          s11, gp, s7
                  sltu         t3, t0, s1
                  andi         s1, s11, 1177
                  ori          a2, t6, -639
                  sltu         t5, s6, a7
                  addi         s4, sp, -1631
                  sltu         a7, t0, t0
                  lui          sp, 799817
                  sll          a4, t3, a2
                  xor          a2, a1, s0
                  andi         s2, s0, 1424
                  addi         t2, a6, 611
                  slti         s2, s5, 1947
                  add          s11, s2, t6
                  sltiu        a7, t4, -438
                  nop
                  nop
                  sltu         a7, sp, s0
                  slli         s6, s7, 30
                  auipc        t3, 563765
                  xor          s2, t0, s11
                  or           a0, a2, gp
                  xori         s8, s4, 1174
                  slti         a6, tp, -1542
                  nop
                  srli         a4, s5, 24
                  sub          s7, a2, t4
                  sll          s6, a1, ra
                  nop
                  auipc        zero, 939189
                  and          a4, s7, ra
                  srli         s11, s6, 21
                  ori          t4, s9, 459
                  srl          s4, a0, s7
                  srli         a7, a0, 30
                  sra          s4, t0, t2
                  slt          s11, a0, s6
                  sra          t4, a2, s1
                  slt          t2, t6, ra
                  xor          a4, a2, ra
                  xor          a7, t5, s10
                  lui          s11, 758431
                  srli         s0, s9, 26
                  add          ra, a4, s3
                  lui          a7, 445566
                  slli         sp, t4, 19
                  nop
                  or           s2, s10, s1
                  srai         s10, s2, 6
                  sub          t4, sp, s1
                  and          ra, zero, t4
                  srli         s1, s9, 1
                  xori         a3, t6, -4
                  xor          s4, s3, t5
                  slti         s4, zero, -1784
                  slt          t0, s2, a4
                  addi         tp, gp, -745
                  xori         t0, t5, 791
                  sra          tp, t0, s3
                  andi         a4, zero, 1863
                  slli         s10, s7, 9
                  xor          zero, tp, s0
                  andi         zero, a0, 390
                  slli         t6, t2, 3
                  or           zero, s7, ra
                  auipc        t6, 79438
                  addi         t2, ra, -1499
                  xor          tp, s6, ra
                  sll          s8, a6, t5
                  sll          a2, s7, t3
                  srl          t3, a7, zero
                  slli         s2, t3, 15
                  srl          ra, s4, s4
                  or           ra, a1, a5
                  slt          zero, a4, s3
                  sub          a7, gp, a4
                  nop
                  sra          a4, a5, t6
                  sra          t1, a3, gp
                  xori         s0, s5, -24
                  xor          a0, s8, a3
                  and          s1, t4, s2
                  slli         s8, t2, 20
                  sra          s7, a0, a3
                  sltiu        s0, s7, -1522
                  add          s9, a0, a7
                  sra          t0, s10, s7
                  xori         s6, s1, 283
                  sltu         s9, ra, gp
                  sltu         ra, t2, a0
                  slti         s6, s3, 569
                  sltiu        s0, a6, 597
                  ori          t3, a1, 1514
                  slti         s6, a0, -1172
                  sltu         s9, tp, zero
                  nop
                  xori         tp, a1, -995
                  srl          t5, s4, a6
                  ori          t4, t5, -638
                  sltiu        s9, s7, 379
                  sltu         t1, a7, s8
                  add          t2, t5, s10
                  auipc        s2, 822067
                  andi         t4, gp, -1891
                  or           t5, t5, t3
                  slt          gp, s10, s4
                  sll          t1, a0, t3
                  srl          a6, t6, t6
                  srli         s7, tp, 13
                  slt          s6, ra, t0
                  and          s1, s10, a7
                  xori         ra, s5, -1262
                  xori         a7, s5, -1560
                  slt          s4, t5, s4
                  nop
                  xori         t5, s3, 473
                  addi         t3, s9, 756
                  srai         t0, s11, 23
                  addi         s0, t1, 1695
                  xor          t2, s0, s10
                  slli         a0, s7, 23
                  xor          s6, ra, s10
                  nop
                  srai         sp, s6, 20
                  and          t2, t1, t5
                  sltiu        a2, t5, 1460
                  ori          t3, t0, 1828
                  srl          s0, s0, a3
                  andi         t2, s10, -425
                  srai         s3, s1, 30
                  sltiu        s3, ra, 445
                  srai         a7, s0, 17
                  slli         a4, tp, 30
                  lui          s0, 251080
                  sra          a7, t3, s10
                  slti         a3, t5, -893
                  srl          s7, s10, s5
                  sub          t0, a0, s4
                  and          t6, t0, tp
                  nop
                  slti         s1, a0, 1416
                  xori         s3, a4, 857
                  sltu         sp, a5, t1
                  sra          a6, a7, t1
                  lui          s11, 313429
                  sltu         t4, t2, gp
                  auipc        zero, 786836
                  slt          a6, tp, s8
                  slli         t1, t1, 0
                  sra          t4, s9, t1
                  srai         s4, s9, 10
                  lui          s11, 539690
                  lui          s6, 586807
                  nop
                  slti         t1, a6, 1381
                  sra          a3, t4, a3
                  xori         s9, a1, 104
                  or           s8, t3, s9
                  slti         s6, t0, 847
                  slli         a2, gp, 8
                  addi         ra, t2, -1917
                  srli         zero, s4, 10
                  sra          zero, s4, a0
                  sub          a2, a2, sp
                  slli         zero, s11, 18
                  srai         s2, t0, 28
                  lui          s3, 883417
                  and          s0, s1, a1
                  xori         a3, s3, 654
                  and          s6, s10, t3
                  xor          sp, s0, s7
                  xor          gp, zero, s8
                  or           ra, s5, a3
                  slli         gp, s5, 7
                  add          s9, a6, t6
                  auipc        sp, 227312
                  sub          s3, s4, s6
                  sll          t3, s11, s9
                  andi         sp, t6, 1135
                  sll          t1, a4, sp
                  sltu         zero, a3, a3
                  sra          gp, t3, s9
                  xori         s8, a4, 564
                  srl          t0, s5, ra
                  slti         s4, t1, -992
                  slti         t0, s1, -1059
                  xori         a0, a4, 1320
                  srai         gp, s8, 8
                  sltu         t1, s0, a2
                  xori         a6, a1, 14
                  sltu         s6, t3, a6
                  sub          a3, t3, s9
                  auipc        t1, 109589
                  auipc        t6, 830930
                  and          s1, s3, a1
                  sltiu        t5, s11, -33
                  sltiu        a7, a0, 1283
                  slt          s6, s10, t2
                  sltiu        gp, s1, 893
                  and          t1, a7, ra
                  auipc        t0, 522854
                  xori         t5, gp, 263
                  srl          t6, tp, s8
                  srai         a3, s9, 24
                  srl          s10, s10, sp
                  auipc        t0, 681848
                  xor          t1, t5, sp
                  addi         zero, sp, -1138
                  sll          a2, t1, s10
                  sra          a0, a0, t3
                  nop
                  xor          t4, tp, s8
                  sub          s11, a7, t5
                  srli         s3, s10, 28
                  sra          t5, s3, s0
                  andi         s6, a6, 358
                  srli         s11, a0, 11
                  srl          t5, s9, a1
                  srli         t6, a2, 19
                  andi         t5, t6, -488
                  slti         t0, t3, 695
                  ori          s7, s9, -898
                  lui          s9, 970178
                  slti         s11, s5, 1237
                  slt          t2, s5, t2
                  nop
                  xor          s3, a4, s11
                  srai         t0, t4, 14
                  andi         gp, s11, 855
                  ori          ra, gp, 1029
                  addi         s8, a2, -127
                  xor          s9, gp, t6
                  sltiu        t4, a3, 1761
                  sll          a2, s8, s11
                  srai         a4, a0, 6
                  addi         gp, s6, -122
                  sltiu        t6, s11, -1294
                  sub          a2, zero, t3
                  xori         tp, s8, -1102
                  slt          t5, s6, gp
                  srai         t3, s0, 2
                  xor          t4, s8, t2
                  slti         s11, a2, 1567
                  auipc        s10, 890305
                  addi         s7, s10, 1500
                  or           a7, zero, s8
                  andi         ra, t1, 300
                  slti         t0, sp, -693
                  slli         t0, s0, 29
                  slli         s6, t3, 23
                  srl          s2, a2, a1
                  lui          ra, 728851
                  sub          t0, s0, s7
                  lui          t4, 920801
                  sll          s11, s4, t4
                  sltu         t0, s6, s6
                  sub          zero, t3, a4
                  or           zero, t3, s3
                  sltiu        s4, tp, -1388
                  ori          tp, s4, -828
                  xor          a6, a7, a2
                  srl          t0, s0, s9
                  slti         s10, s9, -1100
                  sub          t6, s10, t0
                  xori         s1, s6, 1147
                  sltiu        s3, t6, -1248
                  srl          tp, t2, s0
                  sra          t0, s7, ra
                  sub          t5, s6, a1
                  and          s1, ra, gp
                  slti         s9, t6, -1087
                  srli         a0, s2, 5
                  sltu         t2, s10, gp
                  lui          t4, 599338
                  addi         a2, s3, 105
                  sltu         a3, zero, t3
                  andi         a7, a4, -865
                  srai         a3, s8, 31
                  and          s2, s10, zero
                  nop
                  auipc        s11, 844092
                  srl          s7, s5, a5
                  add          t0, a6, a2
                  and          a4, s11, t2
                  sll          zero, s11, s1
                  sra          t3, t4, s2
                  sltiu        s0, t4, -799
                  srl          t5, gp, a4
                  lui          sp, 463833
                  sra          a0, s10, a4
                  add          s10, s7, ra
                  and          zero, s6, t2
                  sll          t4, gp, a7
                  andi         tp, a2, -388
                  and          gp, a0, s9
                  sltu         a7, s10, s6
                  sub          a7, ra, s8
                  add          s1, t1, gp
                  auipc        t0, 107565
                  srli         s11, t3, 20
                  srl          t6, s3, ra
                  srai         s11, zero, 29
                  or           tp, a2, ra
                  add          tp, a3, s3
                  sra          s8, s8, a7
                  andi         s0, gp, 531
                  slti         s10, s4, -185
                  sra          gp, a6, tp
                  slli         s4, t2, 15
                  srli         s10, s1, 19
                  xor          t3, a4, s10
                  and          a6, s10, s1
                  addi         t6, a7, -1992
                  slti         a0, sp, 222
                  or           t1, a2, a4
                  sll          gp, s5, s1
                  ori          ra, sp, 2003
                  slt          t2, tp, s6
                  srl          t3, a2, s4
                  sra          s2, ra, t6
                  nop
                  add          s10, t5, s9
                  srl          s4, gp, s10
                  sltiu        s7, s2, 1762
                  and          s2, zero, s9
                  srli         t5, s7, 26
                  sltu         a0, t3, s9
                  addi         s2, zero, -1420
                  lui          a7, 260358
                  and          s1, tp, t1
                  ori          tp, a6, 1075
                  and          s7, s0, s11
                  add          t0, t1, t4
                  sub          s11, s10, s0
                  slli         s6, s1, 16
                  lui          s6, 153053
                  srai         s2, s5, 20
                  sll          a3, t4, sp
                  sra          s10, ra, t3
                  sra          s9, s2, s10
                  slti         t4, s1, 378
                  srai         a7, s1, 29
                  and          s8, ra, t5
                  srai         s8, s0, 29
                  or           t4, s6, t2
                  srli         a6, s3, 29
                  sub          s1, s2, a6
                  sub          s3, s7, sp
                  andi         s7, s5, 604
                  srai         t1, t3, 30
                  sll          s4, t0, s0
                  srl          a7, t5, ra
                  srai         s4, s6, 1
                  sra          a4, tp, s10
                  addi         s10, s8, 240
                  auipc        s3, 26018
                  auipc        t4, 245045
                  xori         ra, t4, -201
                  xor          s1, s5, s6
                  sltu         ra, s5, s8
                  and          sp, s10, s6
                  sll          t4, t1, t2
                  ori          a3, s5, 274
                  slti         a3, a3, -654
                  and          s7, a4, a3
                  sltu         a7, t0, s6
                  nop
                  addi         s4, t2, -202
                  sra          s9, t6, t5
                  slt          t3, a0, t3
                  srli         s11, a5, 21
                  slt          s11, t4, s3
                  sltu         s4, t0, s5
                  addi         a3, a2, 1136
                  nop
                  nop
                  srl          s2, gp, s9
                  srl          sp, t0, a2
                  slli         gp, s11, 23
                  and          t4, a2, s9
                  xori         t6, a3, 641
                  slti         s8, s10, 429
                  sll          s9, a3, a3
                  auipc        t5, 649423
                  srl          a0, t6, s7
                  auipc        s0, 410522
                  or           t0, a6, t3
                  srli         tp, t4, 10
                  and          s0, s5, a5
                  sll          a7, t3, s10
                  sra          a2, a5, a7
                  slti         s1, t0, 1575
                  slli         s6, a3, 17
                  slti         s11, s0, 433
                  and          s0, s1, s6
                  srli         a6, zero, 13
                  add          a7, a7, gp
                  or           s2, a1, gp
                  srl          s3, a4, sp
                  sltiu        s10, gp, -266
                  or           s10, a6, zero
                  slli         t5, a0, 17
                  srl          t1, t4, s7
                  ori          t5, a6, 1017
                  slt          s7, a7, a5
                  addi         a7, s8, 516
                  sub          s10, t5, s7
                  lui          a7, 407444
                  nop
                  addi         a2, tp, 408
                  xori         a3, a4, -2035
                  slli         a0, t4, 16
                  sra          a3, t5, t5
                  slti         s4, s10, 237
                  sll          s2, tp, s11
                  sltiu        t4, s4, 1959
                  and          a4, a3, s11
                  auipc        s3, 1046759
                  slli         s9, t2, 15
                  or           a0, s9, s1
                  ori          s7, ra, -674
                  auipc        t6, 821463
                  srai         a6, s5, 2
                  auipc        t3, 404272
                  slt          t5, s5, s3
                  sll          s10, gp, t0
                  lui          t4, 152132
                  and          t3, s0, ra
                  andi         a4, s3, 855
                  xor          a4, a0, zero
                  andi         a7, t1, 453
                  lui          s0, 940525
                  auipc        tp, 951098
                  addi         s11, s10, -226
                  slli         s7, s2, 11
                  and          s1, s6, a6
                  and          t2, s4, s3
                  xor          zero, s3, a0
                  sra          ra, s3, a6
                  xori         s8, s0, 1693
                  or           t4, gp, tp
                  xor          ra, t5, t6
                  auipc        s9, 544698
                  slt          tp, a5, s1
                  sltiu        a3, s9, -1725
                  xor          ra, a1, s9
                  add          t1, a0, t0
                  lui          s1, 856121
                  nop
                  xor          gp, s8, gp
                  auipc        sp, 7328
                  sltiu        s0, t3, -1647
                  slli         s9, zero, 15
                  andi         sp, s4, -2039
                  sra          s0, t1, s7
                  sll          sp, a4, t5
                  add          a4, t2, t4
                  xori         t2, gp, 481
                  add          s2, a6, a4
                  addi         t5, s3, 777
                  sltiu        gp, t6, -21
                  add          t1, a3, s11
                  or           sp, zero, t4
                  add          t4, s9, t5
                  slli         s2, a7, 5
                  srli         s4, s8, 5
                  nop
                  srli         zero, sp, 8
                  addi         s6, s1, 1013
                  andi         s9, tp, 1613
                  slli         s6, t0, 26
                  sll          s9, gp, s2
                  or           s0, a7, s3
                  sra          a7, s11, t5
                  ori          s9, s1, 2033
                  xor          t0, s5, a7
                  addi         s7, s1, -827
                  sra          s6, gp, s1
                  and          a7, s5, s4
                  sub          a6, s9, a5
                  sltu         s8, t4, a0
                  sub          a6, t3, a0
                  sra          t2, s0, zero
                  add          a3, s8, a0
                  srl          t2, a2, a7
                  nop
                  srli         s4, sp, 7
                  sltiu        t3, s1, 1572
                  lui          a0, 979690
                  sub          s4, s2, tp
                  xor          a6, s1, s1
                  sub          a7, a6, a1
                  slt          gp, a4, tp
                  xori         t6, s8, -925
                  sltu         t4, s9, s2
                  srai         s8, sp, 24
                  slli         a0, s11, 30
                  or           sp, tp, t2
                  sltu         tp, t1, a3
                  sltu         tp, a3, s5
                  ori          a7, ra, -1981
                  srli         s10, ra, 14
                  sll          a4, s6, gp
                  nop
                  sltu         s10, s4, s0
                  xori         s4, t0, -2001
                  slli         a3, a5, 16
                  sra          s11, s0, a1
                  sub          s10, s1, zero
                  xor          s2, zero, s0
                  slli         s1, s1, 30
                  addi         s11, a7, 1089
                  srai         a2, t4, 5
                  sltu         s2, zero, t5
                  srli         t0, t5, 0
                  nop
                  addi         t3, t1, -1769
                  xor          s3, t1, t5
                  srli         a0, gp, 17
                  sltiu        a3, s2, -764
                  auipc        zero, 557040
                  sltiu        t1, tp, 2011
                  srl          t3, s8, a3
                  srli         a7, t1, 0
                  or           a3, s11, s3
                  srai         s3, s3, 17
                  andi         s4, a1, 1793
                  sub          tp, t0, a7
                  and          t6, s6, a5
                  lui          a3, 697086
                  slti         a2, a5, -1078
                  lui          sp, 388890
                  sltiu        s6, t3, 188
                  sub          tp, t3, s2
                  sltiu        s9, s5, -543
                  addi         zero, a2, -1256
                  slli         ra, s6, 25
                  xori         a3, t5, -393
                  ori          s4, t3, 255
                  srl          a3, ra, s7
                  srli         a3, t6, 0
                  sub          tp, t1, a5
                  and          sp, s0, t2
                  srai         s2, sp, 11
                  add          t5, ra, a0
                  or           s0, t6, a4
                  or           a7, t2, s6
                  lui          t4, 456239
                  addi         s4, t6, 1241
                  xor          ra, s3, a2
                  sra          gp, a0, s1
                  xori         s7, a0, -275
                  nop
                  andi         a2, s4, 719
                  sra          tp, a3, s1
                  or           t3, s1, s8
                  slti         zero, t4, 355
                  and          t6, s10, t4
                  or           ra, t3, s11
                  sll          gp, t6, t2
                  xori         t6, s10, -1694
                  srli         a6, a6, 26
                  slti         s8, s2, 1702
                  auipc        s3, 527616
                  slli         gp, a3, 26
                  ori          tp, t0, 1860
                  lui          s6, 443437
                  add          t2, s11, s9
                  slli         a7, s6, 11
                  addi         s9, sp, -277
                  nop
                  auipc        s4, 615500
                  sltiu        s4, zero, 1401
                  xor          s4, a0, t0
                  slti         t4, tp, -151
                  slli         s3, t2, 17
                  sra          s6, gp, s0
                  slti         a4, t6, -835
                  sltu         s0, a7, t3
                  srl          a6, t3, a6
                  lui          s10, 146774
                  sltiu        s10, a6, -633
                  sub          t4, s3, s11
                  sra          t0, s4, t0
                  slli         gp, zero, 22
                  srl          t4, t2, t6
                  sltu         a6, s3, a3
                  slli         s11, t6, 9
                  xor          s9, t2, s6
                  srl          a4, t4, t3
                  nop
                  slt          t2, s3, t5
                  sltiu        s4, s5, -121
                  srai         a0, s7, 29
                  srai         s2, a5, 18
                  lui          t0, 234206
                  ori          s4, tp, -16
                  xori         gp, t2, -649
                  sltu         a4, a5, a3
                  or           s6, tp, t1
                  nop
                  sra          t1, t0, s7
                  andi         s1, gp, -97
                  xori         s0, s11, -1523
                  sub          s10, t0, t5
                  sra          s3, gp, s7
                  sub          t1, a2, s7
                  lui          s3, 379399
                  srli         zero, s3, 28
                  srl          tp, t2, t5
                  sub          t4, a2, a6
                  nop
                  srli         s11, t5, 25
                  addi         s6, sp, -200
                  ori          s8, s5, 1130
                  xor          s10, gp, s0
                  srl          s0, a0, a7
                  xor          t4, a4, ra
                  slt          t0, gp, s6
                  xor          s8, s1, s2
                  auipc        t1, 707565
                  lui          tp, 254305
                  slti         s0, tp, -385
                  nop
                  slt          t6, a5, zero
                  sltiu        t1, sp, 723
                  sra          s11, zero, t0
                  addi         sp, a0, -1307
                  slt          a6, t6, s3
                  xori         sp, t1, 274
                  xor          s9, t6, t6
                  sub          s6, t1, t1
                  addi         s6, a3, 1015
                  sra          s6, t6, tp
                  slti         s11, a0, -2020
                  addi         a6, s10, 2007
                  slt          s9, s6, s9
                  andi         t5, s8, 1498
                  andi         a2, t5, 1975
                  addi         s2, s2, 1148
                  ori          t5, s6, -1426
                  slt          s10, ra, t6
                  lui          s11, 677812
                  sra          s2, a2, s7
                  sra          t2, s6, a7
                  slli         t1, t1, 23
                  xor          a6, s5, t5
                  auipc        s8, 555473
                  slt          s11, t5, ra
                  slli         t1, a7, 15
                  xor          t1, a2, s5
                  andi         t6, a3, -1714
                  addi         a6, t3, -1391
                  or           s2, t5, s6
                  sra          t2, s8, s6
                  srl          s3, t4, s10
                  xori         t1, t0, 1611
                  slt          a2, a5, s0
                  sltiu        gp, a2, 627
                  lui          s3, 1015315
                  andi         s9, t1, 916
                  sll          gp, t3, s0
                  sra          t1, s9, a0
                  auipc        s1, 42727
                  andi         t5, s3, 1552
                  ori          s3, t5, 1397
                  slli         s3, a7, 13
                  ori          s11, t5, 192
                  slti         s4, a1, 959
                  srli         t2, s8, 16
                  or           t0, a0, s9
                  addi         zero, a6, 435
                  lui          s3, 593072
                  sra          s0, a5, s11
                  xori         gp, t5, -289
                  lui          s4, 529697
                  ori          s4, t2, 524
                  slli         t3, a0, 27
                  slti         s4, t3, 1584
                  slti         gp, s8, 1218
                  sltiu        s7, a2, 1333
                  sra          a3, a0, t2
                  and          a0, a0, t4
                  xor          s3, a1, t4
                  addi         s6, tp, 2000
                  slli         a2, s6, 5
                  sra          t2, t0, s4
                  add          s3, s11, s8
                  auipc        a2, 302258
                  add          sp, s2, t6
                  or           s0, zero, s10
                  auipc        s4, 679403
                  xori         a4, a6, -903
                  srl          s0, gp, ra
                  xor          s9, s10, s2
                  sltu         t3, a2, a6
                  nop
                  addi         a6, a7, -1487
                  xori         s6, t4, -1529
                  nop
                  lui          a7, 84837
                  or           t3, s9, a4
                  sub          t4, t0, a4
                  srl          s0, gp, s2
                  srai         s4, s5, 6
                  srl          tp, t0, s4
                  srai         t5, a7, 6
                  xori         t6, t5, 1353
                  sra          t2, t3, gp
                  xor          sp, s7, a3
                  xor          a6, s9, a4
                  sra          s11, a7, zero
                  sra          sp, ra, t3
                  lui          s8, 590266
                  ori          a7, s2, 211
                  slt          t1, tp, a4
                  or           a7, a0, s7
                  and          s6, t2, s0
                  slt          t6, s8, t0
                  srli         s7, t6, 16
                  or           t1, a1, s1
                  andi         a6, s6, 902
                  srl          s0, a5, ra
                  sub          s0, s1, s0
                  srai         a0, t1, 13
                  xor          a2, a7, s0
                  slli         t5, s2, 25
                  slli         s11, t0, 19
                  xori         s3, gp, -1599
                  xori         s9, a3, 2036
                  sltu         a6, t6, s9
                  sra          s10, tp, a4
                  slli         s4, a5, 19
                  sub          s0, a0, t2
                  slli         t1, a7, 6
                  auipc        s10, 696620
                  srl          s11, s9, s9
                  ori          s7, s0, 849
                  xor          s1, zero, s1
                  add          a6, a3, s5
                  ori          s3, s10, -595
                  slt          a7, zero, s9
                  auipc        a7, 325630
                  lui          s8, 1031450
                  sub          a4, s4, t1
                  xori         s10, a7, -2028
                  srl          gp, s4, s4
                  slti         s11, t0, -108
                  sub          t4, s6, t5
                  or           s6, zero, s3
                  sra          gp, t0, a4
                  lui          a6, 261569
                  nop
                  slli         ra, s0, 27
                  srai         t5, a7, 5
                  andi         t4, a5, -635
                  lui          a3, 473093
                  add          t1, s5, a2
                  sltiu        zero, gp, -437
                  andi         zero, ra, -882
                  slti         zero, t4, 613
                  andi         s3, s5, 1648
                  sra          s2, a0, s8
                  srl          sp, a5, ra
                  sltu         t3, s8, a7
                  xor          s1, t2, t2
                  add          s11, zero, s9
                  srli         s8, a1, 29
                  srli         s4, tp, 16
                  srai         s2, s1, 9
                  or           t3, a7, a6
                  sub          s10, t1, a1
                  slli         s7, s8, 4
                  lui          s9, 614497
                  slti         t2, t4, -768
                  ori          s1, s6, -549
                  sub          s4, s4, s3
                  sra          a0, t3, ra
                  li           a7, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           s8, 0x80000000
                  li           ra, 0x80000000
                  li           s10, 0x0
                  li           tp, 0x0
                  li           a3, 0x80000000
                  li           s9, 0x80000000
                  li           t1, 0x80000000
                  li           s0, 0x37092fd8
                  li           t4, 0x0
                  addi         s9, ra, 1480
                  auipc        s9, 301202
                  nop
                  auipc        s0, 242731
                  add          t4, s9, s10
                  add          s9, tp, s9
                  add          tp, ra, t1
                  addi         a3, s10, -1973
                  nop
                  nop
                  addi         s10, a3, 1862
                  auipc        s9, 122597
                  addi         ra, t1, -1622
                  lui          s0, 641095
                  add          a3, t4, ra
                  add          s10, s9, s9
                  addi         a7, a3, -55
                  sub          s8, s10, t1
                  sub          s10, t4, s8
                  lui          a7, 654706
                  lui          tp, 770861
                  addi         t4, s8, 717 #end riscv_int_numeric_corner_stream_19
                  srli         t3, s1, 3
                  srli         t4, s10, 13
                  andi         t0, ra, -1284
                  sltu         t0, s11, s3
                  slli         ra, t1, 6
                  srli         t0, t5, 18
                  and          a6, s1, a7
                  sra          t4, s6, s0
                  lui          s4, 110490
                  slli         t5, a5, 9
                  slti         a0, t6, 1413
                  slt          a0, zero, t4
                  nop
                  slti         a3, s1, -860
                  sll          t1, a1, a0
                  sub          t1, a2, s4
                  xori         s8, s2, 368
                  slti         s9, gp, -377
                  slt          s11, a4, s10
                  sra          t2, t3, a7
                  addi         t3, s11, -127
                  andi         t1, a6, 1031
                  sll          s10, a2, a7
                  or           a3, t6, a6
                  auipc        s11, 64092
                  xori         t2, t3, -1315
                  sltu         t4, a3, a5
                  add          t5, t3, s3
                  srl          s6, t0, sp
                  ori          t0, t3, -449
                  sltu         s0, a7, s9
                  nop
                  slli         a3, s4, 23
                  slli         t6, ra, 3
                  slti         s10, s2, 1278
                  sltiu        s0, sp, -1186
                  srli         a4, t0, 2
                  srl          a0, s6, t4
                  addi         t4, s5, 1955
                  lui          a0, 356389
                  sub          a7, a0, a7
                  add          s2, s8, s2
                  add          t5, s8, s3
                  slt          t0, t0, ra
                  sub          a2, t6, t4
                  slli         s10, s7, 22
                  sub          t1, tp, t1
                  xor          zero, s4, s3
                  sra          s3, t5, zero
                  sltu         t2, s9, t1
                  ori          s2, t4, -1087
                  or           s2, s9, a5
                  slli         s6, gp, 20
                  srai         a4, t4, 18
                  slt          t6, zero, s7
                  slt          a7, a1, s0
                  nop
                  auipc        a2, 228978
                  auipc        t0, 815243
                  srli         s2, gp, 20
                  ori          s0, a1, -1830
                  sltu         s2, zero, t6
                  or           s2, s4, s8
                  srai         s1, t1, 25
                  lui          s10, 34299
                  lui          t3, 27224
                  sltiu        a2, s6, -542
                  or           a2, a7, t4
                  slli         s3, a0, 25
                  srli         s11, a5, 14
                  nop
                  xori         s10, a7, 470
                  and          s10, ra, s7
                  sltu         s1, ra, s4
                  sra          a7, s1, s8
                  ori          t5, s9, 243
                  slt          s6, s4, sp
                  ori          s8, t3, -1875
                  andi         a7, a2, -1666
                  srli         s8, a4, 27
                  lui          s10, 439154
                  auipc        t3, 947391
                  slti         s0, s6, -1718
                  ori          t4, t3, -612
                  auipc        s8, 28026
                  sltiu        s9, t2, -1328
                  srli         a4, s7, 10
                  ori          ra, t2, 679
                  sltu         s10, t3, s4
                  sll          t1, a0, t2
                  slt          a6, a0, a7
                  nop
                  add          t6, a0, s4
                  sra          s9, s4, t4
                  lui          tp, 176522
                  srai         s3, gp, 8
                  lui          sp, 592189
                  xor          s1, s3, sp
                  srli         s10, t4, 26
                  sra          a6, a1, s10
                  ori          t5, s9, -727
                  slti         gp, s0, 1973
                  ori          sp, s3, -1693
                  sra          t6, t0, t4
                  andi         a7, a0, 795
                  xor          a7, s1, a5
                  and          a6, s2, a4
                  sra          s1, s9, s7
                  xori         s10, t4, 339
                  slti         t5, s3, 1584
                  or           s9, a4, tp
                  and          t3, a2, tp
                  addi         s1, s0, 627
                  xor          t1, s7, t0
                  sltiu        s7, s7, -106
                  or           t6, t3, a3
                  srai         s9, gp, 8
                  and          t0, t3, t5
                  sll          s2, t3, a2
                  sltiu        ra, s6, -761
                  addi         s10, a0, -1738
                  slli         s4, t3, 15
                  srai         zero, s0, 25
                  addi         t2, a7, 891
                  srai         s6, t1, 22
                  srl          s9, s2, t4
                  and          s7, zero, t6
                  srli         a3, t0, 5
                  sltu         s4, t1, t2
                  sll          s3, tp, ra
                  xori         t2, a4, 1250
                  sltiu        tp, t0, 12
                  srl          s7, a5, t2
                  or           gp, t5, tp
                  sltiu        s11, s8, -296
                  sltiu        s10, s2, -143
                  or           a4, t6, s1
                  srai         s0, s0, 15
                  srli         t1, a6, 5
                  or           sp, s8, s10
                  slt          gp, t2, s3
                  sub          s3, t4, t6
                  add          s8, t2, tp
                  auipc        t3, 20001
                  andi         a0, a0, 584
                  addi         s9, t0, -933
                  nop
                  and          a3, t0, t5
                  slt          a7, a5, s5
                  slli         t6, t4, 6
                  sltu         a2, zero, t5
                  slli         a4, s2, 3
                  andi         s9, t2, 1722
                  srli         t4, s2, 25
                  sub          s7, s6, t4
                  add          s8, s7, sp
                  sll          a4, sp, a4
                  slli         s9, a0, 28
                  or           t3, s4, s0
                  or           t3, s8, sp
                  sltu         s8, t5, t2
                  srli         s11, a1, 0
                  auipc        s11, 637862
                  srl          t6, gp, ra
                  lui          t6, 58880
                  srai         zero, s11, 13
                  srli         sp, a2, 10
                  nop
                  addi         s3, a7, 1977
                  slli         s4, s5, 9
                  slt          s4, s9, s5
                  addi         s11, s5, -1776
                  lui          s6, 813035
                  slti         t1, ra, -1070
                  slti         t1, a2, -1481
                  or           s0, s6, t5
                  add          a7, a1, t4
                  nop
                  srli         s4, s4, 20
                  lui          s7, 821081
                  srai         s10, s1, 29
                  addi         a6, a1, -459
                  and          s0, s3, t1
                  or           s1, zero, t3
                  andi         a0, a4, -1699
                  sltu         s8, t6, gp
                  xor          a6, s7, zero
                  sltu         s8, a7, a4
                  sltu         s10, t4, t2
                  lui          s7, 664389
                  sub          t6, s8, a6
                  slt          t0, s3, a3
                  ori          s2, a2, -551
                  andi         s0, t1, -1184
                  andi         a3, ra, -1231
                  srai         a7, s11, 26
                  sra          s10, t2, a3
                  and          a4, s3, zero
                  slti         t1, t3, -1678
                  add          t0, s0, a0
                  andi         a3, t5, 1849
                  andi         a4, t1, 927
                  andi         tp, s6, -301
                  and          s1, a0, a7
                  srl          t4, a4, a1
                  addi         a6, t5, 603
                  srl          s8, a3, t6
                  auipc        s0, 873322
                  srai         s0, ra, 14
                  ori          s8, t6, 768
                  sra          t5, a4, s0
                  sltiu        s11, t2, -1755
                  sll          s7, t6, t0
                  sub          zero, a7, t1
                  sll          a6, s1, t1
                  sltu         a0, tp, a4
                  andi         s4, tp, 1121
                  sltiu        s7, t0, 329
                  add          s2, sp, s0
                  and          t6, s7, s6
                  xori         t6, ra, -1310
                  sub          gp, a0, a5
                  and          s3, t0, s7
                  addi         t5, s0, -568
                  sub          gp, a4, s3
                  nop
                  slti         t4, t1, -508
                  sltu         s1, s5, a4
                  sltiu        a0, zero, -488
                  nop
                  add          s2, s4, t6
                  sub          s6, t3, s2
                  slti         a6, s4, -526
                  slt          s10, s10, a6
                  or           a4, a6, s7
                  auipc        s9, 761610
                  and          a7, tp, s5
                  lui          ra, 86087
                  and          ra, t2, a0
                  srai         a3, s7, 17
                  and          t5, a6, a4
                  auipc        s0, 716720
                  sltiu        s3, a7, -990
                  sub          s4, gp, s4
                  xori         t5, s9, -1125
                  addi         t3, t5, 615
                  auipc        t3, 427026
                  andi         t5, a5, -2035
                  sll          s6, s0, s11
                  or           a7, a5, t1
                  srl          tp, s0, ra
                  ori          s2, t2, -1532
                  srl          a2, s5, s2
                  sll          s10, a7, a0
                  auipc        s11, 863155
                  sub          t4, a6, s11
                  xori         gp, s5, 238
                  add          a2, t4, a3
                  sltu         a3, s8, a3
                  slti         gp, s9, 647
                  auipc        s2, 187152
                  andi         ra, a7, 1471
                  slti         s3, s9, -1837
                  sltu         a2, a0, s4
                  sub          t4, t5, t2
                  add          t0, t0, s3
                  xori         a6, a7, -1833
                  lui          s2, 749336
                  ori          a0, t5, 12
                  srli         s10, t4, 31
                  add          s10, s4, s6
                  lui          a4, 206465
                  sltu         t6, s5, zero
                  xori         t4, t3, -714
                  slti         s10, t0, -627
                  sltu         t1, zero, s2
                  ori          s9, t2, 746
                  sltu         t2, s2, a5
                  or           zero, s1, s9
                  slti         t0, t6, -1613
                  slli         gp, zero, 25
                  sltiu        a7, s10, 160
                  slli         zero, t4, 4
                  slli         t5, sp, 28
                  add          a4, t3, s1
                  sra          s8, a6, a2
                  and          a6, s8, t6
                  sra          t4, t1, s6
                  xor          t1, tp, s8
                  slli         a2, a6, 29
                  xori         s1, t2, 762
                  sltu         s4, a7, t5
                  slti         sp, s5, -1630
                  srai         t5, t2, 18
                  add          s3, a6, a1
                  and          t6, s9, t1
                  srli         t6, zero, 16
                  or           s6, a7, a6
                  srl          s11, s3, t5
                  srl          s3, a1, s5
                  xori         s7, s1, -788
                  addi         s10, tp, 840
                  xori         zero, zero, 470
                  sltiu        a3, t5, 590
                  auipc        t0, 109891
                  srl          s7, s1, a7
                  sltu         a2, t2, s4
                  sll          s10, t3, t1
                  addi         t4, s9, 908
                  slli         a2, s9, 17
                  sub          s4, t5, s10
                  sub          a2, a6, s8
                  sltu         tp, ra, s0
                  and          s0, t2, s5
                  and          ra, s6, sp
                  slli         s7, a4, 26
                  sll          a2, a3, s9
                  auipc        s2, 212527
                  sra          t5, a7, s11
                  add          zero, zero, s1
                  and          a0, tp, a3
                  srai         a3, s6, 25
                  and          t3, t2, s8
                  add          t3, a3, zero
                  sltiu        a0, zero, 294
                  andi         a4, t4, 409
                  ori          t0, s3, -461
                  srl          t3, ra, t2
                  sltiu        ra, a0, -290
                  sll          s11, s7, t2
                  sra          t3, a2, a5
                  sub          t0, s7, s8
                  xori         s1, s6, 469
                  srai         t0, s8, 29
                  ori          t6, a7, 765
                  auipc        a3, 196768
                  sltiu        s4, s3, 1248
                  xor          s8, s10, s7
                  srai         t6, a5, 25
                  xori         a2, a0, -69
                  auipc        s10, 202938
                  or           gp, a4, t3
                  xor          ra, a7, s8
                  sll          a6, a5, ra
                  slti         tp, tp, -909
                  ori          s0, a5, -285
                  sra          s10, s5, a5
                  xori         s0, a6, -543
                  slt          s6, a2, zero
                  lui          s10, 1008557
                  ori          gp, t0, -564
                  sltu         a3, a2, tp
                  slti         t4, s6, -391
                  srl          a3, a7, t1
                  sub          gp, t0, s3
                  lui          s0, 167349
                  nop
                  xor          s8, s9, s6
                  or           s3, s9, t4
                  srl          t4, s5, a6
                  ori          a6, s2, 939
                  addi         t4, s3, -1640
                  slli         gp, s1, 15
                  slti         s2, sp, 1822
                  andi         t5, a7, -1340
                  andi         t5, sp, -1351
                  addi         t3, t3, 254
                  slti         s10, s11, 1824
                  lui          s6, 130675
                  xor          a4, s5, gp
                  sltiu        zero, tp, 778
                  or           s3, t1, a4
                  slti         a7, a6, -1684
                  addi         ra, gp, -1776
                  srai         s2, a3, 22
                  xor          t3, a4, sp
                  andi         a6, s11, -1535
                  slli         ra, s7, 8
                  sltiu        zero, s5, -453
                  auipc        s7, 1034308
                  or           t6, s1, t4
                  srai         t2, a2, 27
                  and          t4, t6, a4
                  sltiu        t0, s8, -985
                  slti         sp, a0, -702
                  lui          s8, 724443
                  nop
                  add          tp, a7, t3
                  slli         s2, a4, 14
                  add          a0, t2, s8
                  srai         t6, s3, 10
                  and          t2, zero, a0
                  or           s7, s8, gp
                  xori         s2, s11, 1226
                  sltiu        s11, tp, 1264
                  sltiu        t6, zero, -242
                  slli         s8, s7, 23
                  sll          s2, t6, s4
                  auipc        tp, 476415
                  slt          s9, sp, t3
                  xor          t1, a5, s11
                  andi         s0, s1, 1669
                  auipc        sp, 176308
                  add          a6, s1, gp
                  and          s3, a5, gp
                  slt          s9, s2, a7
                  sll          t0, a3, a2
                  sub          s7, a7, s10
                  xori         gp, a4, -1174
                  xori         s0, s3, -1521
                  srl          gp, s0, s2
                  slli         s7, s0, 8
                  sltiu        t2, s2, -1158
                  srl          t6, t1, s5
                  xor          sp, t1, t6
                  slti         t3, a4, 1950
                  slli         ra, a6, 18
                  slli         t5, a2, 25
                  xori         s3, t5, -1473
                  xor          s10, s11, a1
                  sltu         t1, s6, t3
                  lui          a4, 813579
                  auipc        s3, 1015211
                  and          s7, a0, zero
                  sll          a2, ra, t6
                  srai         s1, a5, 24
                  auipc        s11, 134700
                  addi         a7, gp, 1117
                  slti         ra, ra, 1555
                  sub          s8, s8, s0
                  xor          a6, t2, t6
                  add          s0, t0, tp
                  andi         s1, tp, 76
                  addi         s0, gp, 1324
                  slti         t2, a3, 1097
                  add          s1, ra, a1
                  slti         t3, t4, 364
                  and          t5, s6, a4
                  slli         a0, sp, 15
                  sltiu        t3, t1, 552
                  slli         s0, a5, 9
                  slli         a4, s7, 6
                  nop
                  ori          zero, t4, 435
                  and          t4, a4, s9
                  auipc        t5, 818589
                  slli         s11, t3, 11
                  and          s6, a4, t5
                  nop
                  nop
                  sltiu        t6, a3, -1774
                  sltu         gp, a0, t5
                  auipc        tp, 324394
                  slt          s10, t6, a3
                  nop
                  and          t5, a0, s8
                  and          t3, tp, t4
                  srai         a6, gp, 11
                  srai         a4, a4, 0
                  addi         t5, t3, 1653
                  sltiu        t0, t6, 1747
                  slli         tp, s6, 1
                  or           s9, ra, a5
                  xor          s10, t0, gp
                  addi         a7, a1, -860
                  srai         a7, t6, 30
                  sra          s11, s3, s6
                  srai         a6, t2, 17
                  srli         t6, sp, 26
                  srl          a2, s4, gp
                  sll          s6, a1, tp
                  lui          t3, 422844
                  xor          a4, s7, a6
                  auipc        a6, 729339
                  xori         sp, a3, 1527
                  srl          t2, s0, a7
                  sra          s9, a2, s8
                  sub          s6, s2, t1
                  addi         s11, a4, 596
                  sub          s3, a6, s2
                  or           s7, s5, sp
                  slti         t2, t0, 828
                  and          s9, zero, s5
                  andi         a3, t5, 50
                  xori         s7, s6, 665
                  addi         a0, a5, -1285
                  add          gp, s1, s7
                  andi         zero, a4, 46
                  srli         t6, a0, 21
                  sub          a4, t3, a1
                  slt          s8, s10, t1
                  sltiu        a0, a7, 1030
                  andi         a6, sp, -72
                  nop
                  sll          t0, t6, ra
                  ori          a3, s1, 1101
                  sltu         s6, s0, s2
                  slli         t2, a6, 14
                  andi         t6, a3, 494
                  sll          s6, s3, a2
                  xori         t2, s1, 166
                  andi         t5, s5, 795
                  or           t2, s5, ra
                  srli         s11, a7, 26
                  slt          s6, sp, a4
                  addi         t0, s5, 1093
                  slt          a2, t6, t6
                  ori          s7, s4, -570
                  sltu         a7, s9, a0
                  addi         t2, s4, -269
                  xori         a4, s0, -227
                  lui          s8, 164758
                  auipc        s2, 842233
                  auipc        s9, 626963
                  ori          t5, t3, 1724
                  addi         t6, ra, 1113
                  xori         s9, t1, 600
                  srai         t4, gp, 18
                  sltiu        s10, sp, 878
                  sltiu        a0, s9, 580
                  sll          s2, s8, a4
                  lui          a3, 259537
                  srai         a0, t3, 7
                  andi         sp, s1, 1619
                  sltu         t1, t1, s3
                  sltiu        zero, a0, 1744
                  add          s2, t5, sp
                  nop
                  slli         gp, tp, 1
                  slti         t5, s6, 676
                  add          zero, a5, a7
                  srai         s3, s3, 19
                  sra          t0, s11, t1
                  srl          t6, t6, s6
                  or           a2, sp, t5
                  sub          s11, t2, s4
                  sll          s3, s10, a7
                  ori          zero, a0, 1756
                  srai         sp, ra, 15
                  slt          t6, s7, a3
                  sra          t3, t4, t1
                  srli         s8, s5, 7
                  srli         s0, t2, 14
                  sra          s8, s5, s11
                  srl          zero, zero, t1
                  andi         s7, s11, -1209
                  sub          zero, gp, s4
                  addi         s0, s6, -130
                  sltu         tp, s9, a5
                  sll          gp, gp, t5
                  sll          s0, s0, a5
                  or           t2, s7, a4
                  srl          t6, sp, s10
                  sub          tp, s1, a7
                  andi         s8, a1, -1890
                  add          t1, s9, s2
                  slt          t0, gp, s6
                  sll          s6, s10, a4
                  ori          s4, t5, 1513
                  slt          t4, s3, t3
                  slli         s9, ra, 4
                  sltu         t5, s4, t1
                  ori          s3, t4, -155
                  lui          s2, 515769
                  sll          s2, a6, tp
                  sll          s11, t5, s4
                  sltiu        s3, a0, -1876
                  andi         t2, a7, -1427
                  sll          a6, sp, gp
                  ori          a3, s10, -1603
                  slt          s8, t4, ra
                  or           s0, s5, t2
                  xori         s0, t5, -1738
                  andi         t3, t6, -4
                  srl          s11, a7, s8
                  auipc        t5, 61493
                  add          a0, t6, tp
                  xor          t2, sp, s6
                  sltu         t4, s5, t2
                  slli         t0, sp, 11
                  nop
                  xori         t5, t2, 813
                  sra          sp, s3, a3
                  sub          s10, tp, s3
                  auipc        t2, 216109
                  slt          s9, s0, s3
                  sub          zero, t6, a4
                  xor          t0, t2, s5
                  srai         a0, ra, 2
                  sra          sp, s10, s8
                  sltu         t3, s11, a2
                  ori          s11, a5, -546
                  sra          t3, t5, a0
                  slt          s2, s0, s9
                  sra          s2, a4, s1
                  xor          a0, s1, t5
                  or           zero, t2, a2
                  auipc        t0, 856993
                  srl          t3, a4, t5
                  sltu         t2, s3, a7
                  srl          s2, t5, a1
                  srai         sp, s0, 10
                  or           s1, sp, t3
                  or           tp, s0, t2
                  xori         tp, s8, -1675
                  srli         a3, a1, 26
                  ori          a7, s7, 2000
                  sltiu        a0, ra, 736
                  nop
                  ori          t3, s8, -1440
                  slt          t4, t1, s1
                  add          t2, zero, t1
                  lui          sp, 899933
                  slli         sp, s9, 31
                  xor          s8, gp, s0
                  and          gp, s0, s2
                  or           t3, s11, s3
                  add          s11, a6, s7
                  lui          t4, 772314
                  slli         s11, a2, 14
                  andi         t4, s10, -911
                  sltiu        s8, s3, -1357
                  nop
                  andi         s7, t4, -1467
                  sll          a0, a0, ra
                  srli         s2, s8, 23
                  nop
                  srl          s4, zero, s10
                  auipc        s0, 445141
                  sltiu        t0, s9, 948
                  sltiu        s3, a3, 158
                  xor          ra, s8, t0
                  sra          s8, s6, t1
                  xor          ra, ra, s6
                  auipc        s3, 756732
                  slli         a4, t5, 2
                  slli         sp, a3, 14
                  slli         ra, t2, 14
                  xori         a6, a5, 1815
                  nop
                  srl          a6, t5, s10
                  ori          s11, a6, 775
                  auipc        s2, 154767
                  sub          t2, a5, a6
                  xori         s1, a1, 1353
                  nop
                  xori         ra, s10, -2043
                  lui          ra, 994904
                  addi         s0, s10, -767
                  srai         sp, s4, 28
                  sub          s1, s6, zero
                  and          gp, tp, s3
                  andi         a4, s4, -1784
                  xori         t0, s0, -1300
                  srai         s6, s2, 21
                  slti         a6, a7, -66
                  nop
                  or           t3, s10, s10
                  xori         a2, s8, 1701
                  sub          s11, s4, gp
                  slli         t5, s6, 21
                  sub          s3, s8, s9
                  li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           s8, 0x80000000
                  li           t3, 0xe17cc9f9
                  li           sp, 0x0
                  li           t6, 0xffffffff
                  li           a2, 0xfa03c779
                  li           t0, 0xb62460c3
                  li           a4, 0xffffffff
                  li           a6, 0xffffffff
                  li           t2, 0x536200c5
                  nop
                  lui          t6, 727014
                  sub          t6, t6, s8
                  add          t0, a6, a4
                  lui          t2, 544494
                  nop
                  auipc        t3, 187396
                  sub          a6, t0, a4
                  nop
                  nop
                  sub          t6, s8, a2
                  sub          a2, a2, a2
                  lui          s8, 52867
                  auipc        t2, 776565
                  auipc        t6, 266910
                  nop
                  sub          gp, gp, sp
                  addi         a2, t6, 517
                  nop
                  lui          t6, 233937
                  auipc        a6, 644428
                  nop #end riscv_int_numeric_corner_stream_10
                  slli         s11, s2, 15
                  slt          ra, a5, t2
                  addi         t4, a7, -1532
                  sltiu        t0, s4, -322
                  sra          zero, s7, s9
                  xor          s3, a1, a3
                  srl          a3, t5, t3
                  addi         s0, s6, 1405
                  sub          s8, a4, a5
                  srl          s2, t6, a4
                  and          ra, gp, s5
                  srl          t0, a2, a5
                  xori         ra, a1, 757
                  sra          s10, gp, gp
                  slt          s7, t1, zero
                  sll          sp, t3, a1
                  sltu         t5, a0, t3
                  sub          s11, a0, s10
                  sub          a7, a0, a7
                  or           s6, a0, sp
                  ori          tp, s3, 109
                  slli         zero, gp, 27
                  and          a2, s10, s5
                  nop
                  sub          s3, t6, t6
                  xori         s10, a7, 700
                  srli         s0, s1, 0
                  sub          gp, zero, ra
                  sub          s3, a0, a4
                  or           sp, ra, a1
                  lui          t4, 420570
                  andi         s9, s2, -504
                  ori          gp, sp, 350
                  srl          a7, zero, a5
                  slti         gp, a5, 323
                  slti         s6, s8, 1528
                  srli         gp, s10, 19
                  sll          t5, s10, t6
                  auipc        tp, 292562
                  srai         s11, s2, 15
                  slli         s4, s3, 4
                  ori          s0, s4, -447
                  ori          a2, s8, -1280
                  srai         a7, s11, 28
                  xor          gp, s0, s5
                  andi         a7, t5, -1345
                  slti         a4, t1, 366
                  or           s10, s11, a6
                  sub          t1, s9, tp
                  ori          s1, s8, -707
                  nop
                  add          s1, t4, gp
                  slt          sp, a5, a2
                  or           a2, a6, t5
                  xor          t0, s7, a0
                  sll          a6, gp, a2
                  slli         s10, t0, 30
                  or           s11, t4, a2
                  sltiu        t6, a5, -1111
                  nop
                  ori          t1, t6, 885
                  auipc        tp, 696182
                  xor          t4, t3, zero
                  slti         s10, s11, 1939
                  srli         s2, s1, 7
                  sltiu        t5, a0, 518
                  sltu         s6, ra, a1
                  sll          s4, tp, s10
                  sll          t0, t0, zero
                  slt          t3, tp, t0
                  srai         s10, s5, 10
                  slli         a6, s10, 24
                  slti         gp, s0, 681
                  lui          a6, 1026148
                  sra          t4, a2, s0
                  slti         s1, gp, 1083
                  andi         t0, s3, 547
                  ori          t2, a4, -2000
                  sll          s2, s9, a5
                  slli         s11, s6, 9
                  or           s1, tp, s4
                  andi         sp, t5, -1331
                  xori         a0, a1, -2031
                  or           s8, a6, a0
                  xor          s7, a4, t2
                  andi         s4, s6, -198
                  srli         s6, a0, 21
                  nop
                  slti         a6, s10, -236
                  add          a7, t1, a7
                  add          t2, a0, zero
                  xori         a6, s8, -800
                  sltiu        t6, a3, 187
                  slti         s8, s9, 1788
                  slt          s4, t0, s4
                  auipc        s7, 820668
                  auipc        gp, 76540
                  xor          s2, t3, t3
                  slli         gp, s11, 29
                  sub          s8, a1, a4
                  lui          s3, 189476
                  slli         zero, s6, 24
                  srai         t3, a2, 14
                  sltiu        s9, a3, -1580
                  or           s2, s7, t0
                  auipc        a4, 814367
                  slli         s3, a6, 5
                  sub          gp, a3, a7
                  sub          t5, s8, a7
                  and          a6, a3, a7
                  srli         a3, s8, 8
                  xori         t1, a2, -1360
                  and          ra, ra, s3
                  ori          sp, s4, 502
                  slt          gp, ra, t5
                  sltu         ra, s1, tp
                  nop
                  srli         a0, a3, 22
                  and          a3, sp, s5
                  lui          s9, 412379
                  or           s9, s7, t1
                  sltu         a7, s1, sp
                  lui          t3, 74834
                  sll          zero, a1, t1
                  sub          t5, s7, t2
                  slt          s3, t2, t5
                  srai         a7, t4, 27
                  sll          s1, t3, s4
                  and          zero, zero, s1
                  and          s0, t3, s2
                  slli         zero, s1, 9
                  xori         t0, a2, -36
                  add          sp, s6, s10
                  and          ra, t6, s10
                  auipc        s4, 125096
                  and          s3, t0, s11
                  andi         s8, s3, -1481
                  sra          sp, s2, t6
                  xori         a2, s7, -883
                  slt          s0, t3, a7
                  sra          ra, s3, a4
                  xori         a7, a2, 1665
                  addi         s10, t0, 643
                  and          tp, a6, s2
                  sub          sp, s10, s4
                  srli         s2, ra, 16
                  sltu         a4, s0, ra
                  auipc        tp, 460822
                  lui          ra, 1041112
                  xor          t1, a6, s10
                  srli         s10, s3, 6
                  and          tp, a6, s2
                  sll          a4, a0, t4
                  xor          a6, a0, tp
                  slt          s9, s8, s2
                  or           ra, tp, t4
                  or           s1, s6, a4
                  add          t0, s4, s6
                  srl          a4, a0, t3
                  slti         t1, ra, -1682
                  auipc        t3, 282970
                  sub          s2, s1, t6
                  xor          zero, tp, a0
                  nop
                  sll          t6, gp, a2
                  auipc        a0, 649565
                  ori          a6, gp, -402
                  slli         a2, t5, 28
                  srli         t2, a2, 2
                  slti         a2, s6, 54
                  sll          a4, s2, a3
                  xori         a6, s8, 1805
                  add          t4, a1, a2
                  nop
                  nop
                  sltu         gp, a4, a5
                  sltu         a2, s9, t0
                  xori         t1, t3, -1561
                  or           t0, a7, t4
                  xori         ra, s6, 44
                  sll          a3, s8, a0
                  xor          a2, s2, s10
                  sltu         t1, s11, a2
                  ori          t5, s8, 2021
                  nop
                  sll          s9, a3, s8
                  sll          t1, a4, s6
                  add          zero, s9, gp
                  slli         a2, t3, 13
                  sltiu        t0, a7, 1299
                  srl          zero, ra, gp
                  srai         t4, gp, 25
                  sub          a6, t6, t0
                  ori          s0, a3, -1608
                  slli         a3, s4, 7
                  ori          a2, s6, -1581
                  srli         t5, tp, 25
                  lui          t5, 321924
                  srl          a4, t4, t3
                  and          s0, sp, ra
                  slt          t4, a5, s1
                  ori          ra, sp, -94
                  lui          ra, 840187
                  sltu         t5, s9, a2
                  add          s1, s3, a6
                  nop
                  sltiu        a0, a0, -1331
                  lui          sp, 125562
                  add          a4, s5, s7
                  xori         t0, a3, -512
                  nop
                  slti         sp, s7, 1500
                  sll          s10, a0, t5
                  sll          t6, s4, s6
                  andi         a0, a3, -2006
                  slt          gp, t0, zero
                  srai         s2, t3, 1
                  slli         a4, t5, 25
                  srl          a2, a6, sp
                  slt          s4, a7, gp
                  xori         s8, s5, -1528
                  sll          ra, s3, s2
                  lui          s8, 677067
                  add          sp, s1, s6
                  auipc        t5, 327885
                  sll          a6, s8, a7
                  or           ra, t2, a5
                  sub          gp, t0, sp
                  sltiu        t5, t4, -327
                  sll          s7, s4, gp
                  auipc        t4, 558733
                  srl          a3, s0, ra
                  li           t0, 0xd927a20e #start riscv_int_numeric_corner_stream_13
                  li           s0, 0x80000000
                  li           s8, 0x8f4b2901
                  li           a3, 0x80000000
                  li           s3, 0x0
                  li           t5, 0x80000000
                  li           t6, 0x12b26065
                  li           s11, 0x0
                  li           a0, 0xffffffff
                  li           gp, 0xffffffff
                  auipc        t0, 193323
                  sub          t5, s3, s11
                  nop
                  auipc        s11, 233402
                  sub          s3, s3, s8
                  lui          s8, 321068
                  addi         s8, s3, -579
                  addi         gp, t0, -1348
                  auipc        s0, 483385
                  nop
                  add          s0, s3, t6
                  auipc        s11, 963524
                  addi         gp, s0, -1732
                  auipc        s8, 416134
                  sub          s0, s11, s8
                  lui          s0, 840462
                  sub          gp, s3, a0
                  nop #end riscv_int_numeric_corner_stream_13
                  add          a0, s5, t3
                  and          s7, t0, tp
                  sra          sp, s5, sp
                  and          a3, s0, gp
                  nop
                  slti         s4, a4, 206
                  srl          s6, s3, a3
                  sltu         a6, a3, a7
                  addi         t5, s5, 564
                  sll          t1, zero, t5
                  sltu         t2, s11, sp
                  srai         s3, sp, 20
                  or           s2, s7, t2
                  sub          ra, a6, s2
                  srai         s1, s4, 1
                  xor          t3, s11, s5
                  lui          t3, 825786
                  nop
                  auipc        s10, 482866
                  xori         s0, t4, 1834
                  addi         t4, a6, -1123
                  ori          gp, s7, 1296
                  sll          a2, a0, s0
                  ori          s2, t0, -522
                  lui          s11, 424604
                  sll          t1, t1, a2
                  sub          s11, sp, t6
                  sra          t3, s1, s6
                  sll          s3, s5, s9
                  slli         s1, zero, 12
                  slli         s7, t0, 11
                  lui          a7, 593789
                  sll          a4, s5, zero
                  auipc        t5, 22640
                  sltu         a4, t0, s6
                  xor          a4, a1, s4
                  auipc        a2, 310532
                  sub          s11, t6, a0
                  slli         s7, s6, 2
                  sub          t5, a7, s2
                  add          t5, s9, t6
                  srli         a2, t3, 20
                  add          s4, s7, ra
                  sll          t6, s10, t4
                  ori          a4, t1, 1531
                  sltiu        s10, ra, 1628
                  sll          t5, a1, zero
                  or           t5, t6, a7
                  andi         a3, tp, 1272
                  or           t4, t5, s8
                  sra          ra, s5, s1
                  sltu         s10, a2, zero
                  auipc        s7, 914039
                  slli         tp, a4, 3
                  lui          s10, 580867
                  auipc        a7, 24740
                  nop
                  srai         s0, s6, 12
                  sub          zero, s10, a1
                  slt          t5, s1, s11
                  ori          s9, t0, -1881
                  sra          a4, zero, a2
                  andi         gp, s1, -524
                  addi         a4, t1, -324
                  xor          t1, a1, a6
                  nop
                  srl          a4, s9, t2
                  srai         t1, t4, 16
                  sra          s7, a0, s1
                  sltu         s1, t1, a6
                  sltu         s8, s7, s7
                  xori         a4, t0, -430
                  sll          s8, s0, a3
                  slti         s6, a4, -1734
                  and          t4, ra, s3
                  ori          t5, s8, -416
                  nop
                  nop
                  or           t3, a6, tp
                  andi         t4, a3, -60
                  addi         s0, t4, 1165
                  auipc        t0, 517834
                  ori          s6, sp, 1691
                  ori          a0, tp, 1316
                  lui          t4, 194218
                  sra          a7, s0, s0
                  sll          t5, s8, a6
                  sra          t0, a3, a6
                  slt          a3, s11, s11
                  sra          t2, s9, s9
                  andi         s4, a2, 179
                  sub          s1, t2, t1
                  srli         s0, s6, 6
                  sltu         a0, t3, s11
                  lui          a6, 972731
                  sll          t6, ra, s11
                  lui          a2, 808540
                  sltu         a6, s3, s0
                  and          a7, s9, a3
                  sltu         a7, sp, s11
                  addi         s8, sp, 198
                  sub          s2, a2, a0
                  sub          tp, tp, t2
                  slt          s8, s7, a2
                  andi         a4, s11, -1921
                  lui          t1, 225264
                  xor          s1, s6, a6
                  srli         s7, ra, 17
                  sll          t2, a7, t3
                  xori         s11, s8, -1924
                  sltiu        ra, gp, 1143
                  addi         sp, s2, 142
                  xori         s11, t6, -1995
                  ori          s9, t3, -1388
                  xor          a7, a1, ra
                  sll          s7, tp, s9
                  addi         zero, t4, -1908
                  auipc        t6, 310018
                  srai         t2, sp, 16
                  srai         zero, s9, 10
                  slti         t5, a6, 1674
                  or           a3, a4, s9
                  or           gp, t3, ra
                  or           s3, t2, t5
                  xor          sp, s0, s8
                  andi         t1, s10, -2010
                  srai         t6, a0, 25
                  sltu         s11, a4, zero
                  add          a6, s11, s1
                  slti         s3, t6, 1929
                  sra          tp, t3, s1
                  or           t5, t2, s5
                  srl          s11, s11, a4
                  xori         tp, s8, 268
                  lui          a2, 478700
                  slt          a0, t4, ra
                  ori          s7, ra, 1335
                  srli         a0, a0, 3
                  lui          ra, 497668
                  nop
                  slli         t5, s11, 25
                  auipc        a4, 537543
                  slli         s0, s2, 15
                  xori         t5, t2, -383
                  sra          t2, t6, ra
                  srai         s10, t2, 15
                  ori          tp, a6, 1132
                  auipc        tp, 259042
                  srai         a4, s8, 14
                  ori          sp, t0, 973
                  slti         s6, t2, -636
                  add          a7, a1, t0
                  sra          a0, a0, s8
                  sltu         s2, s6, s3
                  auipc        s1, 574468
                  sub          s3, a3, s2
                  addi         s1, tp, -1493
                  srl          zero, t5, t0
                  srli         gp, t0, 2
                  slti         s3, s6, 1735
                  slli         a4, s9, 25
                  xor          s1, s11, a0
                  and          s0, a3, s1
                  slti         a6, t6, 1960
                  srli         a3, a0, 18
                  xor          a6, t2, s4
                  sll          t3, s6, t1
                  nop
                  xor          s6, a1, ra
                  sra          a0, s11, zero
                  xori         a0, s6, 159
                  add          a2, a5, t3
                  sltu         zero, ra, s2
                  auipc        s2, 604267
                  add          t3, s11, s2
                  ori          s2, s5, 1956
                  and          t1, s0, a7
                  lui          s6, 362038
                  sub          a4, s1, t0
                  slt          t0, tp, a0
                  lui          a2, 268283
                  srli         a2, a1, 0
                  ori          t6, s3, 1248
                  sltiu        sp, s7, -12
                  nop
                  lui          s9, 834092
                  nop
                  xor          a6, s6, s3
                  sltiu        gp, s8, 1334
                  addi         s10, tp, -1161
                  sra          t2, a6, s10
                  sub          a6, t0, t0
                  srai         s1, t2, 30
                  srl          s3, a7, s6
                  slti         s10, t2, 1672
                  sra          gp, t3, t4
                  nop
                  xor          s3, a1, t2
                  auipc        t5, 734469
                  sltiu        s2, t1, -128
                  srli         s2, s10, 28
                  andi         tp, t6, -1123
                  ori          s0, t4, -745
                  slt          s0, s6, s0
                  auipc        s10, 368556
                  srai         s7, ra, 24
                  slt          s11, t3, a1
                  xori         s8, a4, -1913
                  srl          s9, s6, s3
                  slti         s0, a5, -1871
                  sll          s11, a3, t1
                  srl          sp, s10, t3
                  xori         a0, s7, 417
                  slt          s10, s8, a0
                  sub          sp, t6, t1
                  and          zero, s7, a1
                  srl          t1, s4, t2
                  srai         t2, gp, 18
                  and          a0, ra, a7
                  slt          sp, t2, s3
                  sra          tp, a5, a5
                  lui          t3, 980010
                  srli         s6, s1, 23
                  xor          s2, tp, a6
                  sltiu        ra, t2, 1153
                  slli         t5, s9, 6
                  slt          zero, t3, s0
                  andi         a2, s10, -342
                  sltu         zero, s0, a0
                  andi         t0, a3, 1441
                  slti         tp, s0, -1812
                  andi         t1, s11, -86
                  xor          s11, a1, s1
                  slt          s8, s5, t3
                  sub          s10, s9, a3
                  slli         s9, s9, 28
                  or           s11, s7, s0
                  andi         s9, t0, -1178
                  srai         s4, t0, 28
                  srl          s11, s7, s11
                  slti         s8, s9, 37
                  xori         s0, ra, -1978
                  slt          sp, t5, s9
                  slti         s1, t1, -755
                  and          s2, t4, s7
                  slli         a7, s10, 29
                  sra          a4, t3, s7
                  lui          t5, 833347
                  or           s0, s9, t0
                  slli         s11, a0, 12
                  slti         t2, gp, -1644
                  slt          s10, s9, s5
                  slt          ra, s10, t6
                  sra          t6, s0, t2
                  sltu         a6, s6, t6
                  slti         t4, gp, 236
                  srai         s8, t1, 19
                  sub          a4, a7, a0
                  srai         a6, a7, 21
                  addi         ra, t1, -1205
                  xor          tp, s5, t0
                  ori          t6, a3, -919
                  sll          a4, s9, s0
                  xor          s6, s7, a5
                  or           a4, tp, t1
                  nop
                  slti         a6, ra, 624
                  xori         s4, s2, -2000
                  lui          a4, 72835
                  add          t3, gp, s0
                  ori          ra, s0, 1744
                  or           a3, s2, s5
                  sll          s11, s2, s10
                  srli         t5, t2, 10
                  or           s7, t6, ra
                  srai         a7, a4, 13
                  sll          tp, s8, s1
                  lui          a7, 798036
                  sltiu        a4, t3, -151
                  xor          ra, s10, tp
                  xori         s0, s3, 1252
                  srli         t0, t4, 5
                  addi         t4, t3, -326
                  slti         s4, t0, 859
                  slti         a3, zero, 1475
                  srai         s7, a2, 25
                  sltiu        zero, t1, -2019
                  sra          s2, a5, s3
                  and          s6, t4, gp
                  slti         s8, a6, -1760
                  srai         tp, a7, 26
                  slt          s6, sp, t5
                  addi         a7, sp, 1857
                  slt          t3, s0, a7
                  sltu         s2, sp, t3
                  sll          tp, ra, s2
                  ori          s8, gp, 1036
                  sll          a3, a4, s8
                  xori         s11, t6, -1755
                  ori          a6, s3, -610
                  auipc        a7, 736699
                  sra          s0, s3, a1
                  slt          s7, s6, a5
                  auipc        t6, 1015929
                  auipc        s9, 1009248
                  andi         a4, s7, -1431
                  xor          t4, a3, s3
                  sltiu        s4, s7, 139
                  nop
                  nop
                  slti         s8, s6, -508
                  srli         t6, s6, 21
                  sll          a2, s9, t2
                  slt          tp, a1, a4
                  sltiu        gp, a4, -1665
                  xor          s4, s8, s11
                  andi         sp, a5, 858
                  slti         s3, s0, 559
                  or           s8, a6, s9
                  addi         a2, s2, -1082
                  slti         gp, a7, 1408
                  sll          t5, t3, s11
                  xor          t0, a0, s6
                  sra          t1, s8, a0
                  slt          s4, a6, s5
                  sltu         s1, tp, t1
                  auipc        t6, 1041261
                  and          s4, a0, s7
                  slti         a7, a0, -1526
                  andi         tp, t0, 88
                  add          a6, t3, s9
                  sltu         s4, a7, t2
                  or           s2, zero, s6
                  sra          s1, t1, t3
                  sltiu        a0, s11, 779
                  slti         ra, a7, 1466
                  xori         gp, ra, -1540
                  ori          t0, s10, -131
                  lui          a6, 698034
                  slt          a4, s5, t6
                  sra          a6, s5, s8
                  add          s11, a3, a0
                  andi         t0, a2, 1337
                  addi         s7, s10, 1840
                  sll          s0, zero, a4
                  slti         a4, s0, -508
                  slti         s11, a3, 636
                  lui          s11, 871806
                  addi         zero, t4, 1911
                  auipc        t6, 241777
                  slt          s11, s4, s10
                  addi         ra, tp, 1706
                  and          t4, t1, t0
                  sltu         a3, gp, s11
                  addi         s10, t4, -1119
                  or           a0, s4, a5
                  auipc        t5, 339947
                  sra          s11, a1, a7
                  or           zero, s1, t5
                  sra          t1, ra, s8
                  slt          s9, t6, s7
                  auipc        a6, 721547
                  slti         t4, s11, 1050
                  or           a4, s1, a4
                  addi         t5, a4, -577
                  srli         s2, s7, 30
                  andi         t0, a1, -1656
                  srl          s7, a6, t4
                  addi         sp, s6, 67
                  sltu         a4, s8, s1
                  nop
                  sll          t2, s8, zero
                  slli         ra, s8, 1
                  srl          t5, gp, t4
                  srli         t5, s1, 11
                  sltu         a3, s10, s11
                  slt          s9, zero, t1
                  sll          ra, zero, t2
                  sll          t5, s10, s0
                  add          s9, t0, a5
                  slti         zero, s0, 1405
                  xori         a6, s3, 1123
                  srai         t1, t4, 5
                  xor          s9, s6, zero
                  ori          zero, s10, 712
                  or           s0, a6, t1
                  or           s3, s7, sp
                  xori         s9, ra, 138
                  srai         a3, a4, 25
                  add          tp, a0, s6
                  add          a3, zero, t2
                  ori          s10, ra, -1005
                  andi         tp, a6, 42
                  lui          t2, 698521
                  srai         s3, s4, 17
                  slti         s9, t0, -233
                  srl          s4, a2, s2
                  auipc        tp, 923928
                  andi         t2, t1, 834
                  srli         a7, t3, 9
                  sub          t2, a7, a1
                  addi         t1, s5, 1895
                  and          t3, s8, t4
                  sltiu        gp, s2, 1410
                  lui          s1, 929583
                  srli         t0, a4, 25
                  sltu         s9, ra, t2
                  and          s3, t1, s7
                  slli         tp, t2, 31
                  sra          t1, sp, tp
                  or           s4, s10, t2
                  add          t6, gp, ra
                  slti         a2, a3, -1076
                  lui          a7, 269206
                  sltiu        s7, s5, 237
                  auipc        gp, 1033558
                  add          s4, a2, a0
                  slli         a2, s0, 4
                  sub          s4, s8, t6
                  sltu         tp, gp, s1
                  slt          s0, s10, a2
                  sub          t5, s6, a3
                  sub          ra, t5, t2
                  slti         s10, a4, -224
                  sra          tp, a6, s11
                  auipc        t2, 439371
                  or           s10, s11, s11
                  srli         s6, t5, 12
                  sltiu        s10, t2, -1126
                  sltiu        t0, s1, 1244
                  auipc        sp, 42121
                  sltu         s0, s9, s5
                  xor          sp, sp, a1
                  auipc        zero, 929959
                  and          sp, a4, a5
                  srai         a6, s2, 17
                  xor          a7, t5, s7
                  addi         t3, a1, -278
                  slti         t5, s5, -1472
                  sll          s2, s9, t3
                  or           t6, a4, t6
                  srl          s2, a1, t2
                  andi         s0, a0, -1636
                  add          t2, t3, s9
                  addi         a2, a2, -1205
                  sltu         gp, t0, s10
                  slti         a4, s6, 309
                  slt          t3, s1, s10
                  srli         t5, gp, 11
                  lui          s3, 199636
                  slli         t3, s9, 20
                  nop
                  srl          a2, s4, s10
                  xori         s4, t3, 1636
                  sra          s6, t2, a4
                  sll          a0, t6, t0
                  slt          a4, s7, t4
                  srai         s10, a2, 0
                  srli         a0, s2, 4
                  srl          s6, a2, tp
                  xori         t3, t3, 1096
                  sltiu        s6, s2, 607
                  slti         sp, s0, -1074
                  slt          t3, s3, s7
                  sll          a4, t4, ra
                  nop
                  srl          s0, s2, zero
                  slti         a0, s10, 759
                  sub          zero, ra, s8
                  lui          a2, 413445
                  and          s0, s2, t3
                  sll          s7, s3, s0
                  sub          s8, a2, ra
                  sltu         s9, s6, tp
                  auipc        s1, 76850
                  andi         s10, a0, -517
                  slti         t3, s7, 200
                  srai         s2, t4, 19
                  xor          a4, a1, t3
                  addi         gp, s4, -845
                  sll          a4, s9, s10
                  srl          s0, a5, a7
                  srai         s6, s4, 22
                  and          s11, zero, s0
                  ori          s8, a2, -8
                  sll          ra, tp, t5
                  or           zero, t1, s6
                  sra          s4, a5, a4
                  auipc        ra, 303130
                  addi         s11, s1, 214
                  sll          tp, a7, s6
                  slt          t3, a5, s2
                  ori          t1, tp, 1137
                  sltu         t6, t5, a7
                  sltu         s3, t4, a3
                  sltiu        a4, s6, -1940
                  or           t1, t1, sp
                  srli         s8, ra, 0
                  srl          a3, t6, s4
                  add          ra, a1, s9
                  srli         t1, s9, 3
                  addi         a7, s6, -1552
                  slti         sp, ra, 2025
                  slti         t6, s2, 368
                  sub          t0, zero, s9
                  and          t4, zero, s10
                  sub          s3, s1, s0
                  ori          sp, t5, -1316
                  xor          t1, s2, gp
                  and          t2, s11, s8
                  addi         t6, t3, 1612
                  slli         s3, s10, 8
                  slti         s10, t0, 800
                  sll          t6, s4, sp
                  andi         a0, a3, 870
                  or           a3, ra, t4
                  nop
                  sltu         a2, a4, s4
                  lui          t5, 465496
                  sra          a3, sp, a0
                  sra          ra, s9, t5
                  ori          t2, gp, -1758
                  slli         ra, s9, 2
                  sra          t1, s10, t3
                  srai         s7, s1, 0
                  sll          a3, t6, a0
                  lui          zero, 277879
                  andi         gp, t4, 463
                  add          t1, s11, t4
                  sra          s1, a7, t3
                  xor          a6, s11, t4
                  slt          s4, s10, t6
                  auipc        s4, 230874
                  nop
                  andi         s0, s0, -335
                  sll          a0, s4, t3
                  slt          s4, a4, a2
                  andi         s11, t1, -1856
                  sra          gp, s0, a0
                  srl          a4, sp, s4
                  auipc        gp, 810633
                  sra          s6, s6, t3
                  andi         tp, sp, -1719
                  sll          t1, s6, t3
                  or           gp, s8, s8
                  srl          t3, a3, s7
                  and          a0, a4, t5
                  xor          tp, t5, sp
                  srai         t6, tp, 1
                  nop
                  or           s10, tp, t5
                  auipc        t0, 546038
                  nop
                  slt          t6, t5, s2
                  ori          s9, a4, -1449
                  ori          t0, a4, 1546
                  sub          t1, s10, s8
                  addi         s3, a5, 1355
                  xor          s8, a2, a2
                  slt          s11, s5, t4
                  slt          s2, s3, ra
                  srli         s8, s3, 19
                  sltu         s6, a1, s0
                  slli         s11, a0, 10
                  or           t4, s10, s10
                  slti         a2, s10, -1792
                  addi         a2, s4, 113
                  slt          a3, s8, gp
                  srli         s7, a0, 13
                  auipc        s4, 85819
                  add          ra, zero, s8
                  xori         s0, a6, 522
                  srl          a3, s6, s7
                  andi         s2, gp, -1843
                  add          s7, t1, s6
                  and          t4, s10, s2
                  srl          s3, a3, t0
                  nop
                  nop
                  sll          s7, a6, t4
                  sra          t6, ra, gp
                  auipc        zero, 304539
                  lui          gp, 730316
                  lui          zero, 907115
                  srl          a0, zero, t2
                  nop
                  add          s10, t3, a1
                  lui          s9, 1005195
                  srli         zero, t1, 29
                  xori         s2, a2, 86
                  sra          a7, tp, a5
                  slt          gp, t0, a4
                  ori          s8, t4, 1708
                  sra          s7, s7, ra
                  xori         t1, gp, -70
                  xori         t2, s10, 1140
                  andi         sp, t3, -910
                  srl          s7, t2, ra
                  xori         t4, s10, 1669
                  sra          gp, s3, a2
                  sltu         s6, s5, s6
                  and          s1, a0, s11
                  sltu         t6, zero, s2
                  addi         a7, t3, 91
                  or           a7, s4, sp
                  xori         t1, a1, 613
                  xor          zero, a3, t6
                  sub          s1, t1, gp
                  andi         a4, a1, -1026
                  xor          s9, s11, sp
                  auipc        a6, 1019191
                  srl          s10, s3, sp
                  auipc        t4, 314592
                  auipc        t6, 224166
                  sltu         t2, t1, t0
                  slti         zero, s5, 532
                  auipc        a4, 203844
                  or           s2, sp, t0
                  slt          t1, t3, s7
                  xor          s6, zero, a0
                  andi         t1, t4, 1475
                  addi         gp, s8, 73
                  srai         t4, a2, 27
                  add          s9, s5, sp
                  andi         gp, a1, -871
                  srli         s8, s1, 4
                  xori         a0, s9, -1791
                  sltu         t1, a6, s9
                  srl          s1, gp, s4
                  srai         a3, s7, 18
                  srai         sp, t4, 24
                  xor          gp, s7, t0
                  xori         s7, s11, -921
                  xori         s9, s6, -725
                  slli         a4, s0, 22
                  ori          ra, ra, -1101
                  and          s8, ra, a2
                  lui          tp, 320168
                  or           s6, a0, sp
                  lui          a6, 106895
                  or           t4, s3, s1
                  slli         a7, a6, 17
                  ori          t2, a3, -1369
                  sltiu        a7, s5, 1978
                  srl          a0, a1, s11
                  sltiu        a6, a4, 1868
                  andi         a0, a0, 373
                  xor          a7, a6, tp
                  sra          s1, t6, t6
                  srli         s6, s9, 19
                  xor          t4, t3, a5
                  slti         a3, zero, -1961
                  slli         a2, t0, 27
                  xor          s2, s3, s0
                  sltiu        s7, t4, -1627
                  and          a7, t3, t0
                  sra          s2, a5, s7
                  srai         s3, a7, 7
                  xori         a3, gp, -1485
                  slt          a6, t4, s7
                  add          a3, a2, s9
                  srl          t4, a2, t0
                  sub          s10, t4, s9
                  lui          s11, 175898
                  sra          a0, t6, gp
                  ori          a0, tp, 39
                  or           s7, s0, t5
                  and          a4, tp, s9
                  sltu         s7, a1, t4
                  sll          a2, sp, a0
                  auipc        zero, 461112
                  slli         s3, tp, 21
                  srl          a4, a0, t2
                  ori          t6, ra, 649
                  sltu         t6, a4, s5
                  xori         sp, a5, 400
                  srli         a4, a4, 24
                  auipc        s9, 913934
                  slli         s4, t5, 9
                  srai         s8, a1, 14
                  srai         s2, a3, 27
                  srai         s2, sp, 5
                  lui          t5, 301364
                  sub          s4, s5, s1
                  sub          t5, s9, a2
                  xori         tp, s4, 604
                  xori         a2, s4, 1228
                  addi         s9, ra, 1380
                  slli         s9, t4, 6
                  sltiu        a0, s1, -589
                  ori          zero, t1, 513
                  ori          s6, s6, 1062
                  nop
                  sll          a0, s3, a4
                  and          ra, a5, s8
                  srl          s2, t3, s2
                  slti         gp, t2, -1808
                  and          s0, a4, t1
                  slt          tp, s0, a1
                  srl          t1, s3, t4
                  sra          zero, a1, t4
                  xori         ra, ra, 965
                  sra          a2, s10, s9
                  and          t5, tp, s0
                  or           s4, s7, s10
                  slli         s0, a4, 29
                  andi         s10, t4, 1735
                  nop
                  addi         s7, a2, 2032
                  sub          a2, s11, ra
                  sub          s8, ra, a1
                  slli         s11, t3, 18
                  srl          a0, t4, sp
                  addi         s3, t5, 600
                  andi         s1, a2, -350
                  sub          s0, tp, s6
                  slti         s2, a7, 1001
                  sll          ra, s6, a5
                  addi         s4, s0, -1418
                  sltu         s10, s1, s9
                  add          a3, t2, s7
                  andi         s0, s11, 1666
                  nop
                  andi         a3, a3, 840
                  srli         a3, t6, 8
                  ori          t0, t6, 1508
                  or           s1, a4, t0
                  sra          a7, t5, s1
                  sll          t2, a7, a0
                  sub          s2, zero, t6
                  srl          s2, a3, a0
                  xori         t5, s6, 1588
                  slti         s11, a5, -720
                  srai         t1, s7, 30
                  ori          s0, sp, -2012
                  add          sp, s6, sp
                  xor          sp, t1, zero
                  slli         t4, a6, 24
                  srai         s0, t1, 3
                  or           s8, s8, s0
                  srai         tp, a6, 4
                  lui          t3, 577270
                  or           s10, a4, a6
                  andi         t6, t2, 17
                  sltiu        a2, s5, -305
                  srli         s4, tp, 20
                  sra          s3, tp, t2
                  xor          s4, t0, gp
                  and          s4, a2, sp
                  srai         t1, t4, 3
                  andi         s2, t5, -46
                  and          a2, gp, a5
                  auipc        gp, 735337
                  sltu         t4, s3, a6
                  lui          t5, 612208
                  andi         a0, t5, 1521
                  andi         zero, a3, 1909
                  srli         t0, s9, 6
                  slti         sp, t4, -1138
                  slt          t5, a1, a1
                  add          s0, t2, s10
                  slt          s10, s7, t5
                  addi         t0, a1, -175
                  and          ra, t0, tp
                  srai         s0, sp, 27
                  addi         a6, s9, 40
                  xor          a2, zero, t6
                  sra          a6, s4, a0
                  sra          s7, t5, s7
                  sltu         a3, t5, a6
                  srl          s1, zero, t6
                  sub          s10, sp, a2
                  srl          gp, s8, t2
                  srli         s9, tp, 0
                  xori         zero, s11, 1611
                  and          s4, gp, ra
                  sra          ra, s2, a3
                  sltiu        t3, a6, 1916
                  slli         s6, gp, 8
                  lui          t4, 423811
                  sra          s11, t6, s3
                  srai         t6, s1, 17
                  auipc        t5, 800687
                  or           t0, t4, a7
                  sll          t5, a1, a7
                  auipc        a2, 354539
                  srl          t6, a2, s1
                  sra          zero, sp, t3
                  srai         sp, ra, 2
                  sltu         tp, s3, a4
                  addi         a3, s11, 1670
                  slti         s11, s11, -1033
                  srl          gp, s5, a7
                  slti         t5, s1, 788
                  slti         s7, t1, -436
                  lui          gp, 690714
                  srl          t2, tp, t2
                  andi         s11, s11, -1348
                  sltu         a6, t1, sp
                  slli         a6, t4, 4
                  nop
                  slli         s3, t0, 30
                  sltiu        gp, t3, 1309
                  auipc        a7, 769466
                  srl          t0, t0, ra
                  ori          s6, a5, -315
                  andi         gp, zero, 361
                  sll          s9, s6, t4
                  or           a2, t0, t4
                  slli         a6, a7, 0
                  slli         s1, zero, 11
                  sub          s3, s1, s4
                  slli         ra, s4, 18
                  slt          t2, a2, s0
                  nop
                  xori         a7, s8, -662
                  lui          zero, 588730
                  slti         s8, s0, 1313
                  lui          s8, 435844
                  xori         a3, s4, 894
                  andi         t5, s10, 257
                  xor          t3, s4, a0
                  nop
                  sll          zero, t5, a5
                  andi         s11, sp, 1075
                  slti         s6, gp, 1192
                  sltu         a7, a7, a2
                  xori         gp, t4, -2005
                  slli         a6, a0, 12
                  xor          t0, t1, s5
                  or           ra, a5, a5
                  and          t6, a1, a0
                  xor          t3, a7, s7
                  sltu         s1, t4, a1
                  addi         t1, ra, 187
                  xor          s4, s10, s2
                  slti         a2, a2, -27
                  lui          s10, 914854
                  addi         a6, s1, 1466
                  auipc        s9, 75832
                  sll          s11, s6, a1
                  srl          a0, s6, s1
                  and          s6, a2, a1
                  xori         s7, s11, -1548
                  auipc        ra, 843217
                  ori          s0, t5, -118
                  slt          a6, s11, s11
                  xori         a7, sp, -30
                  slt          a2, t3, sp
                  xor          s6, sp, a7
                  xori         s0, s10, -1152
                  sra          ra, a5, t1
                  slli         s8, s7, 21
                  lui          s2, 184572
                  sltu         s9, t2, s0
                  xor          t5, s9, ra
                  ori          s6, s2, -1665
                  add          s7, a4, t4
                  srli         a7, s5, 8
                  andi         s6, a4, 944
                  sub          a6, s0, s7
                  nop
                  slti         a0, s0, -738
                  lui          t3, 799654
                  slli         s3, a0, 20
                  sra          gp, a3, s5
                  add          zero, s0, a3
                  slt          t3, t2, s10
                  andi         t1, a0, -295
                  sltu         s10, tp, t1
                  ori          t3, a7, 829
                  slt          s8, s5, t3
                  or           t6, ra, a1
                  nop
                  sra          s10, t5, a6
                  or           gp, zero, a5
                  xori         t3, s5, 1350
                  lui          zero, 16992
                  sltiu        s4, a2, -1578
                  sltiu        t4, a6, -1406
                  auipc        s4, 440090
                  xori         zero, a1, 1357
                  nop
                  srli         a2, t0, 30
                  srl          s0, s5, t3
                  sltiu        t3, a6, 387
                  sra          gp, ra, tp
                  auipc        a3, 504209
                  slti         s1, s4, -986
                  and          tp, ra, s9
                  auipc        s6, 155091
                  xor          ra, t4, s0
                  sltiu        t1, s5, 1618
                  srl          s3, a6, gp
                  slti         s11, ra, 1474
                  sub          a6, a2, t4
                  srai         s11, t5, 13
                  and          s6, t5, a3
                  sll          s3, s7, t2
                  or           a3, tp, s11
                  add          s8, sp, sp
                  slti         t5, sp, -1815
                  sra          sp, ra, s6
                  ori          t6, gp, 87
                  sra          s8, a7, s8
                  andi         s9, s11, -1598
                  srai         t6, t6, 5
                  slt          s9, t3, zero
                  srai         a3, s9, 8
                  lui          t5, 157914
                  auipc        a6, 684295
                  srai         a7, s5, 16
                  add          t3, a0, s8
                  la x11, test_done
                  jalr x0, x11, 0
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
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x15, x21, zero
                  csrr x6, 0x300 # MSTATUS
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 31
                  bne x6, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x6, 0x341 # MEPC
                  csrr x6, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x6, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x6, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x6, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x6, x19, ecall_handler
                  li x19, 0x1
                  beq x6, x19, instr_fault_handler
                  li x19, 0x5
                  beq x6, x19, load_fault_handler
                  li x19, 0x7
                  beq x6, x19, store_fault_handler
                  li x19, 0xc
                  beq x6, x19, pt_fault_handler
                  li x19, 0xd
                  beq x6, x19, pt_fault_handler
                  li x19, 0xf
                  beq x6, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x6, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
                  1: la x11, test_done
                  jalr x1, x11, 0

ecall_handler:    
                  la x6, _start
                  sw x0, 0(x6)
                  sw x1, 4(x6)
                  sw x2, 8(x6)
                  sw x3, 12(x6)
                  sw x4, 16(x6)
                  sw x5, 20(x6)
                  sw x6, 24(x6)
                  sw x7, 28(x6)
                  sw x8, 32(x6)
                  sw x9, 36(x6)
                  sw x10, 40(x6)
                  sw x11, 44(x6)
                  sw x12, 48(x6)
                  sw x13, 52(x6)
                  sw x14, 56(x6)
                  sw x15, 60(x6)
                  sw x16, 64(x6)
                  sw x17, 68(x6)
                  sw x18, 72(x6)
                  sw x19, 76(x6)
                  sw x20, 80(x6)
                  sw x21, 84(x6)
                  sw x22, 88(x6)
                  sw x23, 92(x6)
                  sw x24, 96(x6)
                  sw x25, 100(x6)
                  sw x26, 104(x6)
                  sw x27, 108(x6)
                  sw x28, 112(x6)
                  sw x29, 116(x6)
                  sw x30, 120(x6)
                  sw x31, 124(x6)
                  la x11, write_tohost
                  jalr x0, x11, 0

instr_fault_handler:
                  add x21, x15, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

load_fault_handler:
                  add x21, x15, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

store_fault_handler:
                  add x21, x15, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

ebreak_handler:   
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x21, x15, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

illegal_instr_handler:
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x21, x15, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x6, 0x300 # MSTATUS;
                  csrr  x6, 0x304 # MIE;
                  csrr  x6, 0x344 # MIP;
                  csrrc x6, 0x344, x6 # MIP;
                  add x21, x15, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
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
