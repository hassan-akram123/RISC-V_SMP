.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x9, h0_start
jalr x0, x9, 0
h0_start:
                  li x14, 0x40000100
                  csrw 0x301, x14
kernel_sp:        
                  la x7, kernel_stack_end

trap_vec_init:    
                  la x14, mtvec_handler
                  ori x14, x14, 0
                  csrw 0x305, x14 # MTVEC

mepc_setup:       
                  la x14, init
                  csrw 0x341, x14

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x14, 0x1800
                  csrw 0x300, x14 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0x7
                  li x3, 0x3
                  li x4, 0xd
                  li x5, 0x4be49ab1
                  li x6, 0x0
                  li x8, 0x80000000
                  li x9, 0x4
                  li x10, 0xe
                  li x11, 0xf90b8360
                  li x12, 0xf2dfd5fd
                  li x13, 0x9
                  li x14, 0x80000000
                  li x15, 0x7
                  li x16, 0x104da8af
                  li x17, 0x0
                  li x18, 0xbbf008e
                  li x20, 0x59f7422e
                  li x21, 0xb7e55167
                  li x22, 0xfda2617d
                  li x23, 0x80000000
                  li x24, 0x7
                  li x25, 0xe
                  li x26, 0x1
                  li x27, 0x0
                  li x28, 0x0
                  li x29, 0xf992a2c8
                  li x30, 0xf
                  li x31, 0x6
                  la x19, user_stack_end
main:             li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           a6, 0xffffffff
                  li           a7, 0xe820bc78
                  li           s7, 0x80000000
                  li           t1, 0x80000000
                  li           tp, 0x80000000
                  li           a0, 0xffffffff
                  li           s4, 0x0
                  li           gp, 0x0
                  li           sp, 0xa3892ff
                  nop
                  nop
                  auipc        s7, 332856
                  auipc        t1, 649947
                  sub          sp, s5, t1
                  addi         a0, s7, 21
                  add          tp, a6, a7
                  auipc        s4, 393808
                  sub          a0, s7, s7
                  addi         s7, s5, 272
                  sub          s4, s7, gp
                  lui          s4, 938924
                  sub          s4, sp, s5
                  sub          s4, a6, s4
                  addi         a7, s7, -966
                  addi         tp, a7, -730
                  lui          a7, 925130 #end riscv_int_numeric_corner_stream_0
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           t6, 0x0
                  li           a0, 0x8aec5aca
                  li           a5, 0xffffffff
                  li           gp, 0xffffffff
                  li           t1, 0x9c33d8c
                  li           ra, 0x80000000
                  li           t3, 0x80000000
                  li           s9, 0x80000000
                  li           s11, 0x80000000
                  auipc        s11, 548925
                  addi         s11, gp, -546
                  sub          a5, t3, s10
                  lui          gp, 688467
                  auipc        a5, 980232
                  nop
                  sub          t6, s10, ra
                  addi         s9, t3, -830
                  lui          ra, 436040
                  add          s9, t3, s10
                  sub          t3, a0, s9
                  addi         s10, t1, -1810
                  lui          a5, 881727
                  nop
                  nop
                  add          t3, ra, ra
                  nop
                  auipc        s10, 683052
                  addi         gp, gp, 349
                  sub          t6, t1, s10
                  sub          s11, t3, a5
                  lui          t1, 1014541
                  lui          a0, 1042852
                  lui          t6, 458556
                  nop #end riscv_int_numeric_corner_stream_13
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           s11, 0x84ed1ffc
                  li           s7, 0x0
                  li           s9, 0x4c17860b
                  li           a5, 0x0
                  li           sp, 0x6d7275fd
                  li           a2, 0xffffffff
                  li           s2, 0x0
                  li           tp, 0x0
                  li           t1, 0x0
                  add          s11, a0, a0
                  sub          s2, tp, s11
                  add          a0, tp, s11
                  sub          tp, s7, a5
                  sub          sp, s2, s11
                  add          tp, s7, s2
                  add          s7, s7, tp
                  sub          s9, sp, tp
                  nop
                  auipc        t1, 894170
                  lui          s7, 660038
                  nop
                  nop
                  lui          tp, 860387
                  lui          s11, 200746 #end riscv_int_numeric_corner_stream_9
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           a5, 0x0
                  li           s6, 0x80000000
                  li           s8, 0x0
                  li           t4, 0x80000000
                  li           s11, 0x80000000
                  li           a4, 0xffffffff
                  li           t0, 0xffffffff
                  li           t5, 0x80000000
                  li           ra, 0xe1f782ad
                  sub          t5, s2, ra
                  auipc        t4, 590526
                  sub          t0, t4, s2
                  sub          a4, t0, s2
                  sub          ra, s11, a4
                  addi         s6, s6, 1035
                  auipc        s11, 346902
                  sub          t0, s11, t0
                  lui          s8, 39780
                  auipc        t0, 439219
                  addi         t5, t4, 1729
                  add          s6, a4, s8
                  add          s8, s11, a4
                  add          s8, s2, s8
                  sub          s6, a5, s6
                  auipc        s11, 336700
                  lui          t5, 534353
                  addi         t0, a4, 837
                  auipc        s6, 782016
                  sub          s11, s8, t5
                  sub          s6, a5, t4
                  addi         t0, a4, -1150
                  addi         t5, t5, 2012
                  add          t0, s2, t5
                  sub          ra, s2, s2
                  auipc        s2, 466175
                  add          s8, a4, t0
                  auipc        t0, 921668
                  lui          a4, 962825 #end riscv_int_numeric_corner_stream_18
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           s7, 0x0
                  li           s0, 0x0
                  li           s6, 0x0
                  li           t1, 0x80000000
                  li           a6, 0xd15b66d2
                  li           s9, 0xffffffff
                  li           t5, 0xffffffff
                  li           t4, 0xffffffff
                  li           s2, 0xc12b757f
                  sub          s7, s6, tp
                  add          s0, s6, t1
                  addi         s7, s0, -278
                  sub          a6, tp, t5
                  add          s9, s6, a6
                  add          s6, t5, a6
                  auipc        t4, 828948
                  addi         s7, s7, -1911
                  sub          s7, s9, s0
                  addi         s2, s9, -502
                  addi         t4, s7, 1303
                  add          t5, s7, s9
                  nop
                  auipc        s0, 977902
                  nop
                  addi         s6, a6, 757
                  addi         tp, a6, 1752
                  add          a6, t1, t1
                  sub          a6, s7, s9
                  addi         s0, s7, -1067
                  addi         s0, s7, -1243
                  lui          t4, 248055
                  add          s0, s6, s9
                  sub          t1, s7, t4
                  lui          s7, 481809
                  nop #end riscv_int_numeric_corner_stream_19
                  li           a7, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           t1, 0xffffffff
                  li           a4, 0x0
                  li           s5, 0x0
                  li           t3, 0xffffffff
                  li           t6, 0xffffffff
                  li           tp, 0x80000000
                  li           s8, 0xca8680dd
                  li           t0, 0xffffffff
                  li           s4, 0x80000000
                  auipc        t0, 448959
                  addi         s5, s5, -647
                  sub          s5, a4, t0
                  lui          a7, 951659
                  sub          a7, a4, t6
                  addi         t1, tp, -1833
                  nop
                  lui          s4, 492389
                  lui          t1, 254326
                  add          t6, t6, s8
                  add          t6, a4, t3
                  lui          t6, 174437
                  nop
                  lui          t1, 358174
                  addi         tp, t0, -586
                  sub          t1, t1, t3
                  add          t3, t0, s8
                  auipc        s4, 559640
                  auipc        a4, 384403
                  add          a4, s5, t1
                  sub          t0, t1, s5
                  lui          t1, 819193
                  auipc        t3, 409007
                  add          s5, s5, s5 #end riscv_int_numeric_corner_stream_11
                  slti         a1, t5, -384
                  add          a4, s4, t0
                  andi         s7, t0, -1784
                  srl          s6, a6, a3
                  lui          ra, 996080
                  srli         gp, a0, 20
                  nop
                  nop
                  slli         a0, t5, 22
                  ori          a3, a3, 993
                  srli         s0, a1, 25
                  xor          t3, zero, s4
                  sltiu        s7, ra, -110
                  andi         gp, s9, 147
                  sub          s8, t3, a2
                  sll          t5, s2, zero
                  or           a0, t4, s7
                  slt          a0, a0, ra
                  lui          a2, 740172
                  or           t3, gp, t2
                  slti         a3, a3, -1273
                  srai         zero, t6, 27
                  sltiu        a0, t0, 1867
                  slli         s4, t3, 9
                  andi         gp, t3, 1201
                  srli         a2, s0, 5
                  or           a1, a1, tp
                  xori         t6, s8, 755
                  slli         t1, s9, 6
                  nop
                  andi         a4, s11, 109
                  srai         t3, t4, 30
                  ori          s2, s9, -2010
                  sltiu        t0, t3, 1035
                  srli         t1, s8, 18
                  add          ra, sp, s11
                  or           a0, a4, s1
                  andi         s11, s10, -1560
                  slti         a1, a5, 506
                  auipc        s11, 560230
                  sll          s2, s5, t3
                  sll          s8, s1, s0
                  and          t5, s1, tp
                  sra          t3, t4, s8
                  slli         s2, ra, 21
                  slli         tp, a5, 30
                  slti         a2, s3, 35
                  and          a4, t0, s8
                  or           a5, gp, a7
                  srai         a7, t0, 3
                  sll          s7, s0, t1
                  slti         a2, a2, 1798
                  auipc        s7, 776052
                  ori          tp, ra, 276
                  lui          s10, 806411
                  srl          s6, t4, zero
                  sltiu        s2, t3, 1476
                  sub          s9, s7, s3
                  andi         ra, a5, -388
                  sltu         s7, s11, a0
                  srli         t6, s1, 5
                  sltiu        a4, zero, 1068
                  sub          t5, s5, t4
                  ori          t1, t4, -538
                  sltiu        s9, gp, -1825
                  srli         t3, s4, 27
                  and          s6, a2, t5
                  lui          t5, 907924
                  sltiu        t6, s2, -994
                  nop
                  sra          a3, a1, sp
                  xor          s4, t1, t3
                  sra          a4, s10, t5
                  xor          a2, s6, s8
                  srli         s5, a5, 11
                  srl          s8, s11, a4
                  xor          tp, t6, s7
                  slt          s7, t6, s1
                  slt          s10, s6, s6
                  add          a4, a2, s9
                  andi         t1, s9, -610
                  addi         s5, a0, 903
                  ori          a1, t5, -1679
                  ori          a2, a5, -1536
                  srli         ra, a4, 31
                  sltiu        s10, t4, -2025
                  slti         a4, s11, 626
                  lui          a6, 500672
                  slli         a0, t5, 28
                  slli         gp, s8, 26
                  sll          a6, a3, a0
                  slti         a7, a2, 1540
                  or           t5, s2, s0
                  sra          a3, s4, t1
                  and          s9, s0, t6
                  sub          t3, t6, a1
                  srl          tp, a0, a6
                  nop
                  sll          t5, a3, t5
                  slt          ra, s7, s5
                  srl          t0, a1, t2
                  auipc        s7, 1016918
                  slti         s2, s11, -350
                  and          t3, t3, a2
                  srli         a0, t6, 17
                  sub          t4, a1, a7
                  sltu         t4, s7, s8
                  slti         s4, s7, -1332
                  slli         s11, t3, 13
                  lui          a6, 12357
                  or           a2, s5, t2
                  nop
                  sltu         t1, s3, a7
                  lui          t0, 324428
                  xor          ra, a7, s7
                  or           t4, s2, s6
                  sltiu        a7, s6, 356
                  addi         s10, a0, -877
                  andi         a3, s9, 541
                  xori         a3, a2, -141
                  srli         s10, s3, 0
                  srli         s6, t5, 30
                  sltu         zero, t2, a3
                  slti         s0, t4, -688
                  nop
                  sltu         t5, ra, s8
                  sltu         a4, a4, t3
                  srai         sp, s10, 2
                  nop
                  sll          a6, s9, t4
                  sltu         a5, s7, tp
                  slt          s8, s9, s8
                  auipc        s8, 828371
                  and          ra, t4, a6
                  slti         s7, a1, 184
                  slli         t1, a7, 21
                  sra          tp, a1, t6
                  sltu         zero, a4, s6
                  slt          t5, t3, s8
                  slt          t3, a6, ra
                  xori         t1, t4, -463
                  srli         s5, ra, 21
                  addi         zero, a2, -330
                  nop
                  add          s8, t3, ra
                  xor          ra, s2, a7
                  sll          tp, s3, a5
                  srl          tp, a1, ra
                  or           t5, s10, s0
                  srl          s8, t4, s4
                  srl          a5, a1, a0
                  ori          a2, t1, -341
                  srl          gp, s8, s0
                  and          s8, s5, tp
                  sltu         s2, a7, a5
                  slt          s10, a6, a2
                  sltiu        s9, a2, -1042
                  nop
                  sltu         s0, a1, a3
                  srli         t4, s9, 23
                  srai         a2, a4, 20
                  sra          a2, a6, tp
                  sra          s2, t5, t6
                  lui          sp, 359670
                  sub          a1, gp, t5
                  auipc        a1, 1030134
                  srai         s6, s10, 9
                  xor          s2, t4, s0
                  ori          a3, a7, 1825
                  slt          zero, gp, ra
                  xori         t3, t3, 1090
                  xori         a2, sp, 6
                  sra          a2, t2, s0
                  srl          s4, a7, a7
                  srli         a1, gp, 28
                  or           s6, s8, tp
                  sra          ra, a5, t6
                  slli         t1, s8, 21
                  sltiu        s11, a4, -2013
                  srai         a1, ra, 5
                  srli         zero, t3, 10
                  sltiu        a2, s11, 345
                  add          t3, zero, s0
                  addi         a2, a2, 714
                  add          s9, s9, s10
                  auipc        s9, 812462
                  slti         s2, a6, -932
                  sll          t1, s4, t5
                  auipc        s6, 964646
                  xori         t0, s6, 768
                  nop
                  or           s6, t5, s2
                  nop
                  ori          ra, sp, -684
                  sub          s4, t4, s5
                  sltu         a2, t4, s4
                  xori         s8, s8, 72
                  auipc        gp, 782387
                  addi         s5, a0, -1262
                  srl          t6, a0, a7
                  xor          t1, tp, ra
                  addi         zero, a1, -910
                  srli         s5, a2, 29
                  xor          t5, sp, a2
                  xor          s7, tp, s0
                  lui          a7, 1009469
                  sub          t6, t2, s10
                  slli         t3, t0, 15
                  and          t4, s4, a0
                  sll          s8, t0, s10
                  addi         t1, s9, -480
                  xor          zero, t3, s7
                  sll          t3, t6, t0
                  slli         s8, a2, 24
                  auipc        a5, 325539
                  or           sp, t4, a1
                  nop
                  srai         t5, gp, 31
                  addi         s2, s3, 1661
                  srli         ra, s3, 22
                  sub          a1, a4, s0
                  slli         a4, a0, 20
                  srli         t6, s6, 20
                  srli         gp, tp, 11
                  sub          t5, a2, s4
                  sub          t1, a3, t5
                  and          a7, tp, t5
                  and          s11, s4, gp
                  slt          a4, s9, a4
                  srai         t0, t0, 27
                  sub          a3, tp, s6
                  sll          s8, t6, a6
                  sra          s11, a5, a3
                  andi         s9, t5, -1992
                  slt          a0, t2, sp
                  slli         s11, s9, 17
                  sub          s10, tp, s2
                  sub          s5, ra, t3
                  andi         t3, t5, -1375
                  sll          a4, s1, s11
                  nop
                  ori          a0, t6, -1331
                  srai         s9, a6, 17
                  srl          s0, s7, s8
                  auipc        gp, 67996
                  srai         a3, s6, 1
                  srl          t4, s8, s11
                  srai         s9, s3, 23
                  srli         t5, a7, 5
                  sltiu        t1, s11, -494
                  auipc        s11, 242201
                  srl          a2, sp, s7
                  slli         s2, a4, 18
                  andi         s4, sp, -350
                  slti         a0, a2, -875
                  or           s2, a7, t6
                  srl          t1, a1, t0
                  xor          a3, gp, s6
                  lui          s5, 689685
                  slt          a6, a0, gp
                  nop
                  auipc        t5, 393953
                  srai         s8, t0, 23
                  ori          sp, a1, -1642
                  sub          s9, s5, a2
                  nop
                  sltu         a2, s6, s3
                  sll          a5, a5, s0
                  ori          tp, t4, 1163
                  srai         t1, s5, 0
                  srl          s6, s7, a0
                  xori         s4, a3, -1380
                  andi         a6, ra, 949
                  sltu         tp, s0, gp
                  slt          s7, t0, s9
                  ori          s9, a6, -771
                  sltu         s4, a6, a0
                  xor          s4, t2, a3
                  lui          s8, 892495
                  srli         t0, a2, 2
                  sll          a6, s3, t1
                  ori          a2, a2, -1278
                  slti         zero, t2, 1651
                  slli         s2, sp, 11
                  add          zero, t3, s3
                  sltu         a3, t6, t0
                  srli         s4, t3, 10
                  auipc        s4, 845076
                  sra          s8, s5, s11
                  slli         s4, s6, 23
                  sra          s2, a6, zero
                  or           s8, s4, a4
                  nop
                  slti         s5, a4, 1658
                  sub          a7, s9, s7
                  slli         a0, s2, 1
                  srai         t0, a1, 30
                  xor          t4, t1, s0
                  addi         s7, s11, 886
                  andi         t6, s9, 226
                  sll          a4, t0, t0
                  add          s0, tp, a2
                  sub          zero, a0, t5
                  srli         s6, a1, 26
                  srli         s0, a7, 7
                  xor          s9, a4, a1
                  sltu         zero, s10, s4
                  xor          a1, s4, a6
                  sltu         a2, tp, zero
                  srai         s11, t1, 7
                  slti         ra, gp, 1478
                  addi         tp, s7, 67
                  srai         t1, a6, 8
                  add          tp, s9, t6
                  or           s10, a2, a6
                  slli         a2, t1, 14
                  srli         s4, s6, 28
                  lui          t0, 260508
                  nop
                  or           s7, ra, gp
                  nop
                  srli         t6, a4, 5
                  addi         a4, a7, 286
                  sltiu        t4, tp, 1596
                  slli         t4, sp, 12
                  sltiu        s8, s4, -2007
                  add          a3, s11, s5
                  sltu         s8, s5, t3
                  ori          s10, t0, -1516
                  and          s6, s3, s0
                  sra          s9, a5, ra
                  addi         a6, s6, 2026
                  sll          s7, s1, t1
                  ori          tp, a3, -1725
                  addi         t6, a4, 274
                  and          t4, a7, s11
                  addi         a2, s3, 1778
                  nop
                  slti         ra, s2, -1532
                  sltiu        t4, t6, 555
                  or           t0, t0, a2
                  srl          sp, t4, tp
                  sltiu        s7, t3, 910
                  srai         t6, a4, 13
                  ori          gp, t6, -1953
                  slti         s4, ra, -1197
                  andi         ra, s10, 508
                  and          a4, ra, s8
                  lui          a4, 214419
                  sltu         t1, s0, a0
                  srl          a1, s11, sp
                  srli         a4, zero, 20
                  slti         t6, t0, 1737
                  nop
                  sub          a3, s4, t1
                  lui          t0, 392471
                  slti         ra, a7, 1460
                  sltu         a5, t4, s10
                  sltiu        s2, s2, 1130
                  sltu         s4, s3, a7
                  li           sp, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           s6, 0x80000000
                  li           t5, 0x60abc291
                  li           t6, 0x640e333d
                  li           tp, 0x0
                  li           t3, 0x0
                  li           s2, 0xe0e9dd0f
                  li           gp, 0x0
                  li           s10, 0x80000000
                  li           a1, 0x9c8bfd3c
                  sub          gp, s6, s2
                  lui          t5, 355375
                  nop
                  add          gp, a1, t3
                  auipc        s10, 815254
                  sub          t3, sp, t3
                  addi         t6, sp, -710
                  add          s10, s6, sp
                  auipc        t3, 575817
                  add          t3, t5, gp
                  auipc        gp, 296282
                  nop
                  auipc        t3, 908255
                  addi         gp, t3, 115
                  nop
                  auipc        gp, 18945
                  lui          t5, 288770
                  auipc        a1, 835526 #end riscv_int_numeric_corner_stream_17
                  srli         a1, a2, 12
                  xori         s2, t6, 1214
                  sll          sp, t0, gp
                  sub          a1, s2, t4
                  nop
                  lui          s9, 1008039
                  srai         a1, t1, 25
                  sra          s2, a3, t1
                  srai         t5, s0, 3
                  srli         gp, tp, 5
                  add          t5, a2, sp
                  ori          s11, tp, 608
                  sltu         s11, a7, s1
                  slli         s5, s11, 0
                  or           t6, s0, a0
                  xor          s7, t3, s6
                  sltiu        s9, s7, -1029
                  slt          s9, ra, t5
                  and          a5, a7, t0
                  addi         a1, ra, -274
                  nop
                  srai         s0, s0, 6
                  srai         s4, a5, 3
                  slti         t3, t1, 80
                  slti         s9, s0, -608
                  ori          a5, t6, -673
                  sub          s10, s10, t4
                  srli         ra, a1, 25
                  sub          a2, a5, a3
                  sll          a5, a3, s4
                  auipc        a0, 827670
                  sll          s4, s6, s8
                  add          s10, a4, s3
                  sltiu        t5, t2, -1807
                  andi         a4, t2, -767
                  or           t6, s5, s4
                  sll          s10, a0, s8
                  or           s10, a7, t5
                  ori          a1, zero, -1782
                  slli         a1, a6, 29
                  addi         t3, s3, -1865
                  add          t3, tp, s5
                  slli         s11, a2, 17
                  addi         t3, s1, -316
                  auipc        s5, 207929
                  sltiu        a7, a4, 21
                  sltu         sp, s9, sp
                  andi         a4, s6, 341
                  and          s9, a6, sp
                  xori         t4, t1, -2035
                  add          a6, t0, t2
                  srl          a6, t5, s4
                  srli         gp, s5, 8
                  slli         zero, a6, 27
                  or           a7, s3, s9
                  xor          a2, t6, s8
                  sll          s7, s9, gp
                  slli         a1, t0, 5
                  xor          a3, a2, s8
                  slli         a3, s11, 30
                  sll          t4, s11, t0
                  slt          s2, t2, zero
                  xor          t4, a6, t1
                  slt          s11, t5, gp
                  srl          s10, ra, sp
                  srl          t0, s2, t6
                  auipc        tp, 533068
                  slli         s6, a2, 23
                  xor          s8, t3, s0
                  xor          ra, a5, s2
                  xori         sp, a6, 1565
                  xor          t3, a5, a0
                  auipc        s0, 68647
                  sra          a1, a2, s8
                  auipc        t3, 357675
                  srai         s8, t3, 10
                  sra          t4, s1, a0
                  sltu         s4, t3, s5
                  slti         tp, tp, 1918
                  srli         tp, s7, 9
                  auipc        tp, 982072
                  ori          a4, s6, 120
                  sltiu        gp, a4, 205
                  sra          t5, s11, a7
                  sltu         s10, a7, t0
                  sltiu        s4, a3, 1558
                  or           sp, s6, s9
                  srl          sp, s6, gp
                  srli         t6, s10, 19
                  srli         ra, t3, 20
                  sll          sp, zero, t4
                  srai         s4, s7, 18
                  auipc        gp, 664335
                  srli         a4, tp, 22
                  sltiu        a3, s4, -1063
                  nop
                  sltu         tp, a0, s1
                  sra          t5, s5, a3
                  auipc        a5, 120004
                  nop
                  slli         t5, s8, 14
                  xor          a6, s1, t6
                  sltiu        s5, a3, -1243
                  xori         s0, t1, -1926
                  sltiu        t3, s2, 111
                  add          s10, gp, s5
                  and          t1, t2, s7
                  sll          a1, t1, s0
                  auipc        a1, 562312
                  srli         ra, a4, 20
                  ori          t1, s4, 275
                  sra          s2, a6, s5
                  srai         t6, ra, 25
                  srai         s7, s11, 3
                  xor          s4, s10, a1
                  xor          s2, s0, zero
                  andi         a3, t3, -1883
                  slli         a2, a2, 26
                  or           a7, sp, t3
                  sub          s0, a7, t1
                  addi         s7, t4, 1146
                  and          gp, s7, a7
                  and          t0, s2, s8
                  xori         gp, a0, -1191
                  sra          a1, tp, s4
                  srai         ra, t0, 11
                  sltu         s4, ra, s6
                  sll          a4, s3, s9
                  sltu         t6, s2, tp
                  sra          t4, a0, a5
                  ori          a1, s2, -789
                  addi         sp, s7, -416
                  srli         t0, s8, 15
                  xor          zero, s7, a0
                  andi         s7, a5, -1387
                  xor          a4, s6, a6
                  slt          a0, t4, a5
                  slti         t5, tp, -1126
                  srl          s11, s6, t1
                  lui          t0, 247061
                  srli         zero, a5, 1
                  ori          s5, a7, 280
                  sub          s6, a6, ra
                  srai         t6, s3, 2
                  andi         s8, ra, -1112
                  and          s11, s2, s2
                  srai         a6, s11, 5
                  ori          s2, s10, 162
                  sra          s8, a3, t3
                  sll          gp, a0, a0
                  auipc        t1, 8162
                  slt          s4, a2, t5
                  slt          s8, sp, a5
                  slli         s9, s2, 28
                  xor          ra, sp, t0
                  sub          a7, s6, a0
                  andi         s8, tp, 904
                  srli         t1, s0, 16
                  add          a0, t3, a3
                  sub          s4, s5, t1
                  and          a6, a5, t1
                  ori          gp, t1, -779
                  slt          t3, a7, s1
                  srai         s8, t4, 9
                  sra          s0, a4, ra
                  lui          a4, 134412
                  sra          s4, ra, a5
                  auipc        t3, 511911
                  srl          t5, t6, s3
                  xor          ra, gp, s2
                  xori         a6, s0, -1176
                  andi         t4, ra, -1113
                  srai         ra, s9, 30
                  sll          s10, t3, s3
                  slt          s11, ra, ra
                  lui          a4, 1021988
                  srai         t6, s2, 25
                  nop
                  and          s9, gp, s10
                  slt          t3, zero, s2
                  sll          t1, tp, t6
                  sll          t5, sp, s10
                  or           a6, t5, t4
                  or           a3, s7, s1
                  addi         zero, ra, -90
                  andi         t3, a7, -704
                  sra          t0, a7, tp
                  slti         t5, a1, 514
                  sltiu        t0, t6, -729
                  xori         a3, t2, -1633
                  nop
                  slti         sp, a5, -1482
                  nop
                  sub          sp, s9, a6
                  add          t3, a2, s10
                  sub          s5, s7, s10
                  add          a1, s11, t6
                  sll          a7, sp, t5
                  or           s0, s3, t5
                  sltiu        sp, ra, 1741
                  or           a6, t2, s5
                  auipc        a3, 878122
                  auipc        a2, 263809
                  nop
                  srli         a5, t6, 10
                  slti         s10, t4, -1012
                  slli         t1, a4, 19
                  sub          a6, s1, t2
                  sltu         s9, s3, s3
                  sra          gp, a1, s3
                  auipc        zero, 566222
                  slli         a4, s4, 21
                  srai         a1, s3, 4
                  add          s10, s6, t1
                  add          s8, t5, zero
                  sll          t1, s11, s2
                  xor          s10, s11, t5
                  add          s2, s3, s4
                  xori         ra, a7, 1775
                  addi         ra, a7, -1026
                  slti         t0, s3, 289
                  sra          t1, t4, s10
                  sltiu        t0, t1, -1895
                  srai         a2, ra, 3
                  sltu         t4, s2, s8
                  add          s6, s7, ra
                  sltiu        t0, sp, 1713
                  auipc        a5, 749895
                  sra          s7, s6, t0
                  auipc        s8, 733640
                  ori          ra, a7, 604
                  xor          a5, s1, a5
                  lui          a5, 860032
                  slti         gp, s2, 1681
                  and          s11, s11, s1
                  ori          t0, a7, 1303
                  nop
                  srli         a0, s11, 1
                  nop
                  sltiu        s10, a3, 81
                  addi         s10, t5, -1963
                  xori         a4, s9, 879
                  sltiu        sp, t5, 1926
                  sltu         zero, s11, t1
                  add          ra, s9, tp
                  or           s7, zero, s3
                  sll          t4, s1, s1
                  or           t0, a5, s7
                  slti         s7, s3, -1224
                  ori          a6, t1, 227
                  slli         zero, a4, 26
                  srl          t3, a7, t5
                  sub          t0, a5, s8
                  srai         s11, s1, 17
                  sra          a3, s8, s5
                  lui          t6, 400418
                  slli         s2, s4, 25
                  and          t0, a3, s2
                  lui          zero, 400572
                  sltiu        t5, s3, -1177
                  nop
                  and          zero, s1, s11
                  slti         s8, zero, 1342
                  xori         tp, a7, -605
                  add          a7, s6, s7
                  sltiu        ra, gp, 1189
                  auipc        zero, 295127
                  xori         tp, gp, -346
                  nop
                  nop
                  nop
                  addi         s8, a1, 1168
                  andi         a6, tp, -284
                  slt          zero, zero, s2
                  slt          a2, gp, tp
                  slli         t4, t4, 30
                  andi         a5, tp, -902
                  sltu         gp, s5, a0
                  and          s10, t6, a0
                  xori         s4, t1, 2044
                  sll          t4, gp, s11
                  sra          s9, sp, t1
                  auipc        s8, 757663
                  slti         s11, s0, 1230
                  slti         a1, s4, 1612
                  and          s0, t6, t0
                  sub          a1, t5, t2
                  andi         a4, t5, -1024
                  li           s9, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           sp, 0x80000000
                  li           t0, 0x0
                  li           s2, 0x80000000
                  li           a0, 0xfb6ca00
                  li           tp, 0x80000000
                  li           s10, 0x0
                  li           t6, 0xffffffff
                  li           s6, 0x0
                  li           a1, 0x80000000
                  add          t6, t6, sp
                  sub          sp, s2, sp
                  add          a0, s10, s2
                  sub          s2, s10, a0
                  auipc        s6, 571666
                  add          tp, t0, s9
                  auipc        a1, 320382
                  sub          s10, t0, a0
                  auipc        t0, 561330
                  addi         a0, s10, 537
                  addi         a0, s2, 568
                  sub          t0, t0, s2
                  add          tp, t0, sp
                  lui          s10, 410177
                  add          t0, t0, s2
                  auipc        s9, 673471
                  auipc        sp, 985299
                  lui          a1, 604498 #end riscv_int_numeric_corner_stream_15
                  sll          s0, t0, s6
                  auipc        a6, 906749
                  sltu         t1, t5, s4
                  or           t0, s0, s3
                  auipc        s0, 859229
                  sub          a3, ra, t6
                  sra          s0, a7, a4
                  srai         tp, s8, 12
                  auipc        zero, 779154
                  auipc        tp, 530014
                  sltiu        gp, t0, -883
                  sltiu        s8, t3, 117
                  or           a0, t0, gp
                  slli         gp, t6, 3
                  srai         s11, t1, 9
                  andi         s10, a5, 1572
                  xori         a0, a1, -229
                  xori         t3, a7, -1190
                  addi         s7, s4, -1980
                  or           s0, t2, ra
                  slli         a4, s11, 11
                  and          tp, s8, gp
                  andi         a4, t3, -1362
                  sll          s6, a2, s4
                  auipc        s6, 813039
                  sltiu        s10, t6, 480
                  xori         t3, s9, -1217
                  xori         s8, sp, -29
                  slti         t3, s5, 1263
                  srai         a7, tp, 14
                  sltu         ra, a3, s3
                  srl          t0, s5, s11
                  xori         s11, s4, -810
                  slti         gp, s9, -83
                  sltu         a1, tp, a2
                  sra          a0, a2, a2
                  sra          a1, ra, a4
                  sra          s5, t3, s8
                  nop
                  slti         a5, s4, 1143
                  slli         a3, a1, 12
                  or           s4, t2, s9
                  xori         a4, t1, -599
                  srli         a4, a5, 27
                  srai         t4, gp, 23
                  ori          s4, s0, -1043
                  slti         t1, s4, 1877
                  slli         a7, s5, 11
                  srai         s11, s9, 23
                  addi         sp, s3, -430
                  addi         s8, s10, -626
                  or           a1, s9, t6
                  auipc        zero, 873029
                  andi         t3, a2, 216
                  srai         t1, gp, 6
                  or           s8, ra, a2
                  srai         a5, s1, 16
                  slti         s5, s4, 1778
                  xor          a0, a7, s1
                  ori          s8, s4, 534
                  ori          s8, t5, -652
                  addi         a5, s8, 141
                  andi         t6, s7, 205
                  xor          s2, a4, t3
                  xor          s7, t4, t0
                  srli         t4, t5, 29
                  andi         t3, s10, -1728
                  addi         a2, sp, 1598
                  auipc        t3, 1039557
                  sltu         s11, t3, s8
                  xor          s9, t5, s10
                  slti         s8, s5, 1803
                  xor          t6, s9, gp
                  srai         tp, sp, 21
                  nop
                  sub          s8, s3, t5
                  sra          a4, a0, t5
                  srli         s2, t0, 24
                  andi         t1, t3, 1012
                  lui          s2, 924304
                  sltiu        gp, t2, 1354
                  ori          s5, a2, 176
                  addi         t3, t2, 968
                  sub          t1, ra, t0
                  xor          a2, t0, t6
                  sra          s2, s9, a6
                  xor          a1, zero, t1
                  addi         t1, a4, 1664
                  ori          zero, s6, -285
                  add          a6, t2, s7
                  and          t0, t1, s9
                  auipc        s9, 740298
                  andi         a3, t6, -1450
                  srai         s6, t5, 3
                  slli         t3, t6, 14
                  sll          a6, s0, t1
                  xori         a3, s6, 1437
                  ori          s10, ra, 709
                  or           gp, a3, t3
                  srai         s5, s7, 9
                  sltiu        s7, sp, 1359
                  sub          a3, s5, t0
                  slli         sp, t3, 12
                  sub          t3, a3, t2
                  slti         s11, t6, -1408
                  nop
                  andi         s5, a2, -1758
                  auipc        s2, 412175
                  ori          a3, t6, 1278
                  srli         a1, t3, 22
                  sra          a5, t6, a7
                  sll          tp, s2, t1
                  srai         a3, a7, 29
                  and          sp, s4, t4
                  sub          a4, a1, s7
                  ori          s10, t6, -71
                  sltiu        a7, s10, -56
                  nop
                  srai         sp, t1, 29
                  or           t1, a7, tp
                  srl          zero, a0, sp
                  srli         a4, s5, 16
                  slti         sp, zero, 1624
                  add          a0, a0, t3
                  lui          a0, 407843
                  slli         sp, s2, 25
                  or           s8, a6, a3
                  add          ra, a4, gp
                  and          s0, s4, t6
                  srai         t5, s7, 15
                  and          s7, t4, s5
                  slti         s8, gp, -1441
                  xor          s11, s2, t4
                  or           t3, s7, s9
                  sll          s5, s5, zero
                  or           ra, s5, s5
                  nop
                  xor          t5, a6, s6
                  sub          s4, t1, s3
                  slti         s9, t6, 515
                  and          s4, sp, t0
                  add          a1, s7, s5
                  and          t4, t0, t4
                  srli         s5, t5, 0
                  slli         t6, s0, 5
                  add          a3, s0, s0
                  srl          t1, s9, ra
                  sltu         s6, s10, s3
                  or           s5, t3, gp
                  addi         zero, sp, -702
                  slt          t4, s6, gp
                  sltiu        tp, tp, -944
                  sltiu        t4, gp, -819
                  srai         a6, a1, 26
                  slli         a0, t2, 25
                  andi         a2, a4, -821
                  lui          a6, 503062
                  srai         t3, s1, 21
                  slti         t5, s8, 689
                  sltu         t4, ra, t0
                  slt          ra, s11, s0
                  and          gp, a5, s1
                  srli         a5, a4, 7
                  ori          a1, t1, -1796
                  sll          tp, s4, a1
                  xor          s4, a7, s2
                  slti         ra, tp, 1987
                  slli         a4, s9, 17
                  slt          a0, s2, zero
                  or           s2, s4, s2
                  xor          s7, tp, a0
                  auipc        t1, 967261
                  srli         t4, s5, 22
                  and          a1, a5, a7
                  sltiu        gp, s6, -97
                  sltiu        a3, s9, 1400
                  xor          t4, s3, tp
                  auipc        a3, 937138
                  and          t3, a4, s4
                  add          tp, a7, gp
                  ori          s6, tp, 1158
                  xori         a4, s8, 1745
                  ori          a2, s10, 1748
                  lui          s4, 391248
                  lui          s4, 616347
                  srli         a7, t6, 17
                  srl          s0, a1, s11
                  sltiu        t4, ra, -736
                  sll          a2, t5, ra
                  sra          s7, t3, s5
                  or           a3, t0, s2
                  nop
                  slli         s7, s0, 23
                  srl          a4, s9, s10
                  srli         s0, s7, 17
                  andi         a2, s2, 802
                  xori         a4, a5, 1404
                  sltu         a4, a5, s0
                  add          s2, s5, t4
                  srl          t6, s5, t1
                  slli         t1, ra, 2
                  lui          s0, 373530
                  srl          t3, t5, s3
                  lui          s0, 114161
                  slt          s8, s10, a0
                  andi         t0, s2, -393
                  xor          ra, a7, a7
                  srai         t1, gp, 3
                  srli         t5, t4, 2
                  or           a5, sp, t0
                  srli         a1, t2, 6
                  sltu         a6, s0, gp
                  xori         s6, s8, 320
                  slt          t5, s2, gp
                  srai         gp, a1, 1
                  and          s11, s4, a5
                  ori          zero, t4, -376
                  sub          a4, s8, a3
                  nop
                  sltu         a0, a7, a6
                  slli         a4, s9, 7
                  add          zero, zero, ra
                  slli         sp, a2, 8
                  addi         tp, a5, -1958
                  addi         tp, sp, 235
                  slt          zero, t3, t0
                  auipc        s9, 15678
                  add          t5, t2, a4
                  srli         s7, s6, 4
                  sltu         t3, s10, a2
                  lui          s6, 951615
                  sra          s8, t5, s9
                  sltiu        a2, s10, -1167
                  and          zero, a7, s6
                  nop
                  auipc        sp, 709558
                  xor          a5, s3, tp
                  slti         t0, s11, -647
                  nop
                  slt          s4, s6, s9
                  sltiu        a2, a5, 1220
                  or           t6, s5, t3
                  slti         a3, tp, -238
                  addi         s11, s5, -2025
                  slt          a0, t1, gp
                  slli         t0, zero, 17
                  andi         gp, t0, -1696
                  lui          sp, 795150
                  slli         a3, t3, 7
                  addi         a7, s8, -1201
                  slt          s11, a0, a4
                  sll          a1, s2, a6
                  sra          tp, t6, a3
                  or           t5, t6, sp
                  ori          gp, a5, -1058
                  addi         s5, sp, 1477
                  slt          s6, s1, s6
                  lui          a1, 1000405
                  slti         tp, s3, -890
                  addi         s7, s6, -1507
                  srl          s11, s10, t1
                  add          t1, zero, s10
                  sub          a3, t4, s2
                  srl          s6, zero, a3
                  srli         a2, t2, 8
                  slti         s4, ra, 1859
                  srai         a6, s5, 17
                  srai         s11, ra, 27
                  slli         ra, tp, 22
                  sll          s2, s6, a0
                  sra          t0, a1, gp
                  sll          a2, a2, s0
                  sltu         s5, sp, s0
                  slti         t6, t0, 1423
                  nop
                  sll          t3, zero, t5
                  add          t1, a7, s1
                  addi         a5, t1, 502
                  addi         a6, s6, 972
                  and          t4, s1, sp
                  slti         a5, s6, -1698
                  sub          a1, s8, t5
                  sra          s6, a7, t1
                  slli         tp, s3, 13
                  sub          s6, t6, s6
                  add          t1, t0, t5
                  sltiu        a4, zero, -663
                  sll          t0, a3, a5
                  lui          t5, 717410
                  xor          s7, t6, t0
                  and          s9, t0, a5
                  auipc        a2, 809289
                  slt          t0, t4, a5
                  nop
                  sub          ra, ra, a5
                  slti         a5, a1, -939
                  andi         t3, t4, -1761
                  and          ra, s4, s9
                  slti         a3, a5, 1763
                  slli         a5, s1, 23
                  andi         s10, s4, -138
                  slli         s6, s6, 20
                  sltiu        a3, s8, -754
                  xori         a3, a6, -961
                  lui          t6, 393146
                  ori          tp, s5, -2013
                  lui          s6, 792304
                  srai         s10, t0, 11
                  sra          s4, a2, s3
                  andi         a7, s3, 1742
                  sll          s6, s1, t0
                  xor          sp, s7, s1
                  sra          s10, a6, s11
                  srl          a1, sp, gp
                  slli         a5, s3, 18
                  and          t6, s8, ra
                  sltu         s0, ra, s8
                  or           a7, a2, s11
                  sltiu        gp, t2, 568
                  addi         zero, s5, -1579
                  sra          s6, a1, a7
                  auipc        s4, 267089
                  sub          s5, s5, ra
                  auipc        t0, 557566
                  srl          a2, s9, t4
                  srli         s7, s4, 0
                  slli         ra, s2, 4
                  auipc        s8, 557991
                  slt          a6, s0, a1
                  sll          a7, s7, t1
                  srai         s2, s10, 9
                  sll          ra, s11, s10
                  andi         t1, t3, -1441
                  andi         s2, a5, 96
                  sltiu        a5, s3, 294
                  sltu         t0, t4, gp
                  sltiu        t4, s11, 304
                  xori         a3, s11, 1200
                  auipc        t6, 363812
                  srl          zero, s8, s6
                  slti         t3, t3, -141
                  and          s0, a6, sp
                  slt          gp, tp, a4
                  srli         ra, t6, 15
                  srai         s0, s0, 16
                  sub          ra, a1, s0
                  xor          s5, s9, s7
                  nop
                  slt          a5, tp, a1
                  srl          s6, a2, sp
                  slli         t0, s9, 3
                  sltiu        zero, a4, -2032
                  sll          s9, t4, a3
                  nop
                  sra          sp, a1, s1
                  slli         a0, t0, 19
                  sub          s11, a6, zero
                  or           t1, s0, s6
                  slti         t3, a5, 1852
                  srl          s9, s5, t1
                  addi         s0, s1, 761
                  slli         ra, s7, 2
                  srl          zero, a6, a1
                  lui          a5, 865829
                  ori          s4, a7, 1011
                  slt          a0, t0, a5
                  lui          a6, 558453
                  srli         sp, s8, 15
                  andi         a6, t4, -1468
                  addi         t4, zero, -425
                  nop
                  sra          a4, s0, a4
                  ori          a1, a6, -1946
                  xori         t4, a7, 1215
                  sll          tp, s3, s4
                  and          s4, t4, a6
                  nop
                  sltiu        t6, a4, -1243
                  sltiu        a5, sp, -1016
                  add          s0, s7, a0
                  nop
                  auipc        t4, 56128
                  sltiu        s9, ra, -1571
                  slt          s7, a7, a1
                  and          s5, tp, a4
                  slt          a0, sp, a3
                  auipc        zero, 443217
                  nop
                  xor          sp, t2, a0
                  slli         s0, a1, 27
                  addi         tp, a1, -1486
                  slt          s2, a1, a4
                  sltu         s9, a4, t1
                  add          sp, sp, s7
                  sub          a2, ra, ra
                  xor          s9, a5, s7
                  sltu         t0, a1, sp
                  and          gp, gp, a5
                  and          a4, s10, t1
                  sltiu        s6, a7, -804
                  slt          s2, t0, s5
                  slli         t4, s7, 29
                  slli         a7, s7, 13
                  and          zero, s11, a7
                  and          s7, a7, s5
                  add          tp, a5, s3
                  sltu         s8, s0, a5
                  xori         a5, s1, -1149
                  slli         a0, a2, 29
                  sltiu        a0, s0, 464
                  and          a6, ra, a4
                  xor          s0, a5, s5
                  ori          tp, s6, -1945
                  nop
                  sub          s11, s9, t1
                  andi         s7, a3, -24
                  sll          s10, a7, s7
                  xori         a7, a7, 1471
                  srli         s11, a5, 11
                  sra          s2, tp, s1
                  or           t1, t5, t6
                  ori          t3, s2, 858
                  sub          sp, a5, s5
                  xori         t1, ra, 574
                  sltu         a7, s8, sp
                  or           sp, s0, a5
                  addi         a0, zero, 1661
                  ori          t4, t2, -1650
                  auipc        s7, 597208
                  slt          s11, a0, t2
                  xor          a5, t5, tp
                  auipc        s6, 781611
                  sll          t1, t5, t6
                  sll          s8, a2, a6
                  slt          s2, a1, gp
                  xori         a6, s4, -932
                  xori         s11, s5, 311
                  srai         a6, t2, 0
                  add          zero, ra, s1
                  slt          s8, gp, s1
                  srl          a6, t6, s6
                  and          a2, sp, s2
                  sltiu        t4, s11, -1153
                  xor          a2, t1, s10
                  srl          s8, t6, t2
                  add          a4, t5, a3
                  or           t6, s1, s10
                  lui          tp, 399151
                  xori         sp, gp, -933
                  sll          a5, t6, t5
                  sltiu        s4, a0, 1411
                  xor          ra, a0, a2
                  sltu         s9, gp, t3
                  or           a4, s4, t0
                  sltiu        a3, s10, 1846
                  addi         s5, ra, -1146
                  addi         a6, s7, -1151
                  add          a5, s4, s2
                  addi         a0, s2, 1206
                  slt          gp, t2, s9
                  add          a0, zero, s2
                  sra          t5, sp, s7
                  slti         s6, a5, -1133
                  srl          s10, t3, t2
                  add          tp, a0, t6
                  addi         s11, s3, -899
                  sra          a0, tp, a6
                  srli         a6, zero, 18
                  auipc        s2, 101164
                  sltiu        s6, s8, -889
                  sra          s0, s8, sp
                  xori         s11, a2, -1889
                  slt          tp, s8, t1
                  sll          a4, s4, s3
                  slt          t3, gp, a6
                  xor          a5, zero, s7
                  sltu         a5, a0, t5
                  srl          t3, t5, s7
                  sra          s9, s5, a1
                  sltu         a7, s5, a5
                  slli         tp, s1, 19
                  andi         t5, s4, -1566
                  sltu         s2, t6, a3
                  srli         a1, s8, 14
                  sltiu        a0, a7, 203
                  xori         a5, s2, -1042
                  andi         a5, t4, -1950
                  slt          t0, s8, t2
                  sltiu        s8, gp, -1114
                  lui          s2, 595584
                  xor          a1, t3, s5
                  add          a6, s9, gp
                  lui          s11, 375080
                  or           s5, a5, a1
                  auipc        a2, 706470
                  slti         zero, s0, 1851
                  xori         tp, a5, 877
                  sltiu        s4, a2, 227
                  slti         t0, a5, -918
                  srli         a4, tp, 1
                  xori         t0, a7, 957
                  sll          a4, zero, s10
                  sra          a4, t2, s6
                  srai         a2, s11, 3
                  sub          s0, a3, a2
                  and          gp, a5, tp
                  sltu         gp, s7, t3
                  nop
                  lui          a0, 886088
                  nop
                  and          s0, t4, zero
                  or           sp, s4, tp
                  andi         a3, a6, -946
                  add          s0, s10, a1
                  xori         t1, a4, -408
                  ori          a3, a1, 768
                  lui          zero, 776541
                  sll          s4, t6, s0
                  auipc        t0, 53948
                  xor          t3, s0, a4
                  ori          sp, s8, 1404
                  sltu         tp, s1, a2
                  slti         t0, s6, 37
                  sltiu        t1, t1, 539
                  slti         a1, tp, 277
                  srai         a5, t6, 18
                  ori          t0, sp, -1460
                  sra          s6, s1, s1
                  slt          s7, t5, a7
                  slli         t1, s10, 10
                  srai         tp, a7, 11
                  sra          t4, sp, a4
                  slti         t3, s2, 1122
                  add          t0, t1, a3
                  addi         a6, tp, -711
                  srl          sp, ra, t1
                  ori          t4, a3, 270
                  slti         a6, s3, 1739
                  auipc        gp, 658200
                  sltu         zero, s9, ra
                  slti         a7, tp, 1504
                  xori         s4, s1, 2032
                  auipc        a4, 997554
                  sub          s10, gp, gp
                  slli         t3, t4, 10
                  slli         tp, a3, 10
                  srai         t6, ra, 29
                  auipc        t6, 552829
                  slti         t1, s3, 516
                  slti         ra, t3, -477
                  nop
                  sll          s9, s10, s5
                  ori          gp, s6, 1691
                  auipc        s8, 496977
                  addi         s0, t5, 1233
                  sltiu        s9, s6, -1633
                  sll          tp, s4, t2
                  and          a5, t2, t4
                  and          a4, sp, a7
                  add          gp, a2, s6
                  or           s9, ra, s3
                  ori          a6, t0, -1850
                  sltu         t6, t2, a5
                  sub          s2, s3, s5
                  andi         s2, zero, 1664
                  srl          a3, t5, a3
                  auipc        a1, 109543
                  srl          a4, tp, t3
                  andi         tp, t5, -331
                  sra          ra, s0, s2
                  slt          a2, s6, t2
                  or           s9, s10, s3
                  lui          gp, 297565
                  srli         s5, a5, 0
                  xor          s6, a7, sp
                  addi         t1, s6, 149
                  srai         s5, s3, 21
                  or           s2, s6, a1
                  andi         t3, s6, -1564
                  andi         a4, a4, -473
                  addi         a3, s2, -1196
                  xori         a0, s8, -820
                  sra          t0, t1, s7
                  auipc        a0, 644524
                  srl          t1, a7, s11
                  sltu         a6, t6, t6
                  sll          a7, s8, gp
                  slli         a3, s4, 30
                  andi         s5, t2, 1588
                  srl          a5, sp, s1
                  and          a1, s11, a6
                  xori         t6, s3, -1066
                  sltiu        s9, tp, 666
                  srli         zero, sp, 1
                  sra          gp, s11, a5
                  add          t0, a1, s8
                  sltu         t3, s5, gp
                  lui          s9, 691729
                  addi         sp, s4, 1379
                  sub          s4, a7, a0
                  lui          a2, 107066
                  sltiu        a3, s2, -1660
                  and          s5, t6, a7
                  srai         a2, s0, 9
                  sra          t6, s8, s5
                  nop
                  ori          t1, a4, 1005
                  sltiu        a7, s5, 5
                  add          t1, a6, a1
                  sltiu        a4, s10, 1052
                  addi         s7, t1, -845
                  ori          s8, gp, -1600
                  lui          s2, 538447
                  srl          s10, zero, s3
                  addi         t0, t4, 71
                  andi         a1, ra, -1170
                  slli         t6, a2, 5
                  sll          s11, t6, ra
                  srai         s6, t4, 18
                  ori          t5, a4, -294
                  and          a5, zero, ra
                  xor          s9, a5, s4
                  add          a3, s8, s10
                  ori          gp, s3, -1977
                  addi         a1, t0, 1372
                  and          t1, t0, t2
                  lui          s9, 658753
                  sltu         s10, s7, t4
                  slt          s8, s5, s6
                  andi         s4, tp, -955
                  slli         a4, s2, 3
                  nop
                  srl          a4, a1, s6
                  slt          s7, t4, s6
                  sll          s9, sp, a6
                  srl          t1, a2, a7
                  ori          s8, s4, 1775
                  sub          s0, s3, s11
                  addi         ra, s9, 1512
                  nop
                  srli         s8, a2, 6
                  nop
                  slli         s5, t6, 24
                  srai         t3, a4, 28
                  sltiu        s9, s3, -996
                  add          t6, s2, s10
                  sltu         s11, s7, s6
                  slt          a3, a1, a3
                  sltiu        zero, t3, 1077
                  slli         tp, s9, 30
                  ori          s7, s1, -911
                  addi         a1, a6, 1549
                  or           tp, a5, a2
                  slli         t1, a7, 27
                  sltu         a4, a6, t3
                  slt          s9, s5, t1
                  slli         a1, t0, 20
                  slli         t6, gp, 22
                  srl          t4, a5, t0
                  andi         s11, s2, 873
                  srl          a6, a3, s0
                  xor          a4, t0, t3
                  sub          s2, a7, a0
                  addi         sp, a5, 2024
                  sltu         s10, s10, s3
                  sub          a1, t5, a4
                  sub          s6, s11, a0
                  slli         s5, s11, 14
                  lui          t6, 424786
                  sltiu        s2, a7, 533
                  addi         a7, t3, 1774
                  auipc        a0, 812349
                  slt          a7, s10, a5
                  addi         s8, a2, -1293
                  srli         a6, t5, 7
                  xori         a3, a0, 542
                  or           a4, t5, s11
                  auipc        a1, 538639
                  sltu         gp, ra, t0
                  lui          s9, 828853
                  add          a1, s8, t4
                  sltiu        a1, a2, -194
                  srai         s7, s8, 14
                  add          s11, s2, t1
                  slt          s7, s1, t5
                  slti         a2, t4, 186
                  ori          a2, t5, -607
                  lui          a0, 526376
                  slli         sp, a0, 29
                  lui          a7, 283484
                  xor          a0, sp, s9
                  srl          s6, t0, ra
                  addi         s0, a7, -908
                  ori          t0, s7, 43
                  srai         a3, a7, 25
                  xor          a4, s9, s1
                  auipc        t0, 22165
                  andi         s2, s0, -739
                  or           a0, a4, a5
                  nop
                  slti         a6, gp, -1827
                  xor          s8, s10, tp
                  ori          s7, a1, 1116
                  sub          a4, s2, s2
                  add          a5, s9, a3
                  xor          a0, s2, t0
                  sra          sp, a7, s4
                  xor          zero, s3, gp
                  lui          ra, 834551
                  sra          s10, t3, t4
                  or           s5, a7, ra
                  sra          tp, s8, t4
                  sra          a1, s6, t2
                  sra          a3, t4, s4
                  slli         a4, a7, 15
                  sub          s4, s3, s7
                  and          zero, a3, s3
                  auipc        a7, 27605
                  add          a4, ra, s3
                  slt          t3, s6, t5
                  sltiu        s11, a5, -725
                  srai         zero, sp, 18
                  sll          gp, s11, a2
                  slli         zero, t3, 31
                  slti         t5, a3, -786
                  lui          s5, 537365
                  auipc        s10, 380533
                  slti         a0, s4, -1600
                  sra          s9, t1, a5
                  nop
                  sll          a2, t3, s4
                  ori          a5, s2, -673
                  slt          s7, sp, t0
                  slli         a6, s9, 2
                  nop
                  srl          t4, s3, a5
                  xor          t3, a0, t6
                  andi         a1, s2, 314
                  sltu         s8, t0, s4
                  addi         s2, s0, 1600
                  andi         s4, a0, -1084
                  xori         tp, s1, -931
                  xori         t5, t3, 752
                  srl          sp, s9, s2
                  srl          t0, t1, t4
                  sltu         s11, s6, t3
                  addi         a2, a4, -1264
                  sll          t6, a0, s7
                  nop
                  ori          s8, t2, -274
                  slt          s4, t6, a3
                  srai         s7, s1, 3
                  ori          s11, sp, 97
                  slli         t4, a4, 8
                  sll          s5, t0, gp
                  sltu         zero, t5, zero
                  sltu         a3, s4, t0
                  addi         ra, s4, -228
                  xori         zero, zero, 884
                  auipc        a7, 598242
                  andi         s9, t4, 1259
                  slt          zero, s11, sp
                  auipc        a7, 265763
                  slli         s4, a2, 22
                  xori         ra, t1, -657
                  xor          zero, s2, a1
                  xor          a2, s0, s8
                  slt          a2, a6, s4
                  or           s7, a2, a0
                  auipc        a6, 735368
                  srl          a7, s5, s9
                  auipc        s11, 8031
                  srl          a1, s3, a7
                  auipc        t6, 896601
                  or           gp, t5, t0
                  and          s10, a0, s7
                  lui          s2, 887248
                  slli         a4, a6, 10
                  slli         t4, tp, 22
                  add          s8, t5, s3
                  slt          s0, tp, t4
                  or           s2, t6, t3
                  srl          a0, t5, a2
                  or           a1, tp, s2
                  addi         s11, s11, -1446
                  and          a4, s5, gp
                  srai         t1, s5, 1
                  srli         gp, a5, 28
                  sll          s4, s11, tp
                  slli         s8, a4, 21
                  ori          a2, s8, 811
                  lui          gp, 984804
                  sub          ra, a4, s11
                  ori          a0, s9, -411
                  nop
                  xor          sp, s0, s6
                  auipc        sp, 541206
                  nop
                  andi         gp, s5, 1796
                  nop
                  slti         a3, s5, -1197
                  add          t1, s1, a7
                  sll          a1, s2, s9
                  srl          sp, a2, s0
                  and          s8, gp, s9
                  lui          a5, 560256
                  or           s4, a1, t5
                  sll          t5, a1, t0
                  sra          gp, gp, a7
                  srli         s5, s4, 6
                  andi         s10, s2, -1442
                  slti         a4, t5, -1963
                  and          t5, a1, t3
                  sra          t4, a1, s7
                  sra          t3, s2, s8
                  andi         a7, s2, 930
                  sltiu        a4, s0, 134
                  srl          a5, a5, s0
                  srl          s5, a6, tp
                  slti         a2, a0, -1144
                  ori          s8, a3, -819
                  sub          s7, t1, a5
                  and          t1, s6, a3
                  srli         s6, t1, 16
                  or           t3, s9, t4
                  slti         a4, a4, -1754
                  or           s11, a5, zero
                  ori          s4, s5, 641
                  sltu         tp, tp, s9
                  srli         s5, s8, 0
                  xor          a0, t2, a1
                  lui          t4, 425322
                  srl          t1, t1, s10
                  slti         s6, t4, -803
                  sub          a1, a6, s3
                  or           s2, s8, a4
                  sltu         ra, s6, s2
                  xor          s6, a5, t3
                  xori         s5, s1, 720
                  lui          t3, 730338
                  srl          a1, s11, s3
                  andi         s6, sp, 445
                  sll          a2, a4, t2
                  sltiu        sp, s2, 1956
                  sra          t0, a1, a2
                  slli         t4, t3, 15
                  and          s11, s3, s9
                  sltiu        s0, s8, -1607
                  ori          s5, ra, 1646
                  nop
                  ori          a1, t5, 1921
                  ori          a2, s0, -1514
                  auipc        a4, 38689
                  and          a5, tp, s9
                  sll          ra, t2, s3
                  addi         a6, s2, 466
                  auipc        gp, 424666
                  or           tp, sp, a7
                  slli         ra, a2, 7
                  ori          gp, s0, -841
                  sltiu        a5, s8, 1113
                  or           s4, s9, t1
                  sll          s7, zero, tp
                  addi         s11, s1, 1290
                  slli         gp, a1, 10
                  srli         gp, gp, 21
                  slt          a4, s1, s5
                  xori         s4, s3, -174
                  nop
                  li           a2, 0xcc3dc4ab #start riscv_int_numeric_corner_stream_1
                  li           a0, 0xb3034f4
                  li           t4, 0x0
                  li           s5, 0x0
                  li           s0, 0xc834ad98
                  li           a4, 0xffffffff
                  li           s7, 0x0
                  li           ra, 0x0
                  li           a1, 0x80000000
                  li           s10, 0xffffffff
                  auipc        a0, 491166
                  lui          a4, 185883
                  lui          s10, 612147
                  lui          s0, 868174
                  addi         s10, s7, 1492
                  auipc        ra, 132310
                  auipc        a0, 193516
                  lui          a2, 142113
                  auipc        a0, 824390
                  auipc        a4, 335496
                  nop
                  lui          s7, 16814
                  addi         a1, t4, 1933
                  lui          ra, 198205
                  addi         a2, s10, 1854
                  addi         a4, t4, 1106
                  addi         s7, a1, -877
                  sub          a0, t4, a4
                  nop
                  nop #end riscv_int_numeric_corner_stream_1
                  srl          t3, a2, s1
                  andi         a4, t2, -1565
                  srl          a0, t3, sp
                  sll          s7, s7, tp
                  xori         s9, s10, 511
                  xor          t1, tp, s10
                  sra          t4, t1, a3
                  sub          a3, a7, tp
                  srai         s10, a1, 24
                  or           a7, ra, s1
                  slt          s7, sp, s1
                  slt          t6, s6, s8
                  sub          a4, ra, s11
                  srai         ra, sp, 28
                  xori         s6, sp, -549
                  xori         s0, s4, -499
                  xori         t1, t4, 1102
                  sltu         s8, s9, s1
                  sll          zero, s1, a0
                  srai         s8, s2, 13
                  slt          s8, s2, s2
                  auipc        a7, 1044330
                  srli         s11, s6, 2
                  slti         s2, gp, 1160
                  slti         s8, s5, 1569
                  slli         zero, a4, 21
                  sltiu        t0, a3, 895
                  addi         t3, s11, 424
                  addi         a2, t1, 1609
                  srl          t5, a6, a7
                  add          t5, a6, a1
                  auipc        t5, 568702
                  srai         s0, t1, 5
                  srli         s5, a7, 5
                  slt          a7, s2, s6
                  srli         t0, a2, 8
                  xori         a7, s4, -1782
                  srli         a7, s11, 20
                  sltiu        zero, a2, 879
                  xor          a4, t1, t0
                  srli         t6, s0, 3
                  or           a4, t1, gp
                  sll          ra, a3, s1
                  srai         t5, t0, 5
                  srl          t3, a0, a3
                  addi         s4, tp, -1298
                  srli         gp, s5, 1
                  srli         sp, ra, 18
                  addi         s10, s2, 1316
                  sll          a6, s3, s6
                  andi         s5, t5, 743
                  addi         a4, s8, 731
                  and          a2, a5, a2
                  slli         a3, a4, 15
                  srli         a1, t5, 8
                  slti         t1, s4, -551
                  xor          s8, s9, s3
                  lui          tp, 559152
                  slt          t4, t3, s8
                  nop
                  xori         t4, tp, -496
                  srai         a7, sp, 21
                  addi         ra, s4, 1670
                  srli         s10, s4, 4
                  xor          zero, t6, a1
                  sub          sp, t0, s10
                  auipc        a7, 390547
                  srli         s6, tp, 10
                  srl          s9, s10, s1
                  andi         a1, t1, -141
                  xor          sp, sp, s10
                  auipc        a5, 987546
                  slti         t3, t0, 323
                  addi         a4, s0, 375
                  sltiu        zero, s5, 1141
                  or           s11, a5, s0
                  sltu         t3, t3, s4
                  srl          t6, s0, s9
                  slti         a5, s6, 357
                  auipc        a4, 627882
                  and          ra, s2, s11
                  srl          s0, s1, a4
                  lui          s4, 108564
                  or           a2, a4, tp
                  auipc        s5, 697478
                  slt          t1, s6, t0
                  sra          s9, a7, zero
                  srli         t0, t0, 30
                  and          s7, t2, a5
                  sra          t4, s3, a3
                  li           sp, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           s4, 0x0
                  li           s8, 0x80000000
                  li           a7, 0x80000000
                  li           t6, 0x0
                  li           s5, 0x0
                  li           t4, 0x0
                  li           t0, 0xffffffff
                  li           s9, 0x0
                  li           gp, 0x80000000
                  sub          s4, sp, s8
                  addi         t0, s5, -322
                  add          t6, s9, t6
                  lui          sp, 788636
                  add          s8, s9, s9
                  add          t6, sp, s4
                  add          t6, s8, sp
                  addi         a7, s8, -124
                  auipc        s5, 564852
                  add          s5, t0, gp
                  sub          s5, s9, s8
                  addi         s4, t4, -1020
                  nop
                  sub          s8, gp, s4
                  sub          t0, gp, t6
                  sub          s9, s5, gp
                  auipc        s5, 404183
                  lui          s4, 824149 #end riscv_int_numeric_corner_stream_6
                  andi         t6, s0, -1491
                  srli         s7, s9, 5
                  xor          s11, s7, t1
                  addi         t5, a4, -59
                  xori         sp, s5, -1199
                  srai         t4, s4, 16
                  srl          s11, t2, t2
                  add          t6, s3, t6
                  lui          s6, 725455
                  sltiu        t0, zero, -787
                  xor          t3, s4, tp
                  and          s2, a3, s1
                  srli         s5, sp, 15
                  srl          s9, s3, t2
                  or           a1, a7, tp
                  slt          t6, s11, s5
                  slli         t1, t1, 4
                  sltiu        s10, s4, -1498
                  and          s8, t1, s2
                  auipc        s10, 874993
                  sub          t1, gp, gp
                  or           s9, a2, t4
                  slli         sp, s5, 23
                  ori          t5, s3, -1164
                  sltu         a4, tp, s5
                  xori         s2, t6, -1562
                  srai         s0, ra, 3
                  sll          t1, a5, s7
                  xori         tp, ra, 1263
                  and          s11, s4, s10
                  srai         s7, t1, 11
                  sll          s0, gp, s10
                  and          t6, a0, a0
                  slli         t4, a5, 20
                  auipc        s8, 952650
                  srli         t6, t6, 11
                  add          t5, t1, s11
                  addi         s0, s11, -167
                  sra          s0, zero, ra
                  xor          s4, t3, s1
                  addi         t0, s8, -1644
                  slt          a2, s11, a1
                  nop
                  ori          s6, s5, 980
                  andi         s4, gp, -2013
                  srai         t0, t0, 18
                  lui          a3, 835720
                  srai         s7, t0, 1
                  srl          s5, s2, s3
                  slt          a0, t1, s10
                  slt          a7, a6, a3
                  sltu         s6, s5, s2
                  xori         gp, s8, -175
                  or           s0, a1, zero
                  slli         t1, a2, 11
                  srai         s7, a0, 10
                  sltiu        t0, a1, -750
                  sub          t0, s4, s10
                  srl          s0, a0, a4
                  srli         a3, t3, 26
                  xori         t1, zero, 1892
                  add          a1, s7, a0
                  slli         zero, t6, 20
                  slt          a0, t2, t0
                  nop
                  nop
                  slli         ra, t4, 16
                  sll          s10, s2, a3
                  sltiu        s7, a4, 410
                  sra          a2, s7, s7
                  slti         a7, t6, 575
                  sra          s7, s5, t6
                  srli         s5, ra, 12
                  xor          t1, t5, a7
                  andi         a7, s7, 1513
                  sra          s8, t5, s4
                  addi         a6, a5, 594
                  auipc        a4, 440379
                  sltiu        s5, s10, 1332
                  auipc        t3, 289848
                  addi         s6, s4, 821
                  slli         t1, a3, 8
                  slti         a4, t5, 189
                  lui          t3, 725574
                  lui          s10, 790517
                  slti         s6, t6, -1822
                  auipc        gp, 533408
                  srai         gp, s6, 31
                  and          a2, t6, t2
                  or           a5, s4, a4
                  xor          tp, s11, a5
                  add          s9, t6, s10
                  auipc        t5, 182998
                  slti         t6, s10, -57
                  and          a4, gp, gp
                  srl          ra, a2, t1
                  add          a2, a6, s4
                  ori          t0, t1, -538
                  sll          ra, t0, s9
                  lui          s2, 812703
                  srli         s5, a4, 3
                  auipc        s0, 575034
                  ori          s8, s7, -666
                  sub          t6, ra, gp
                  auipc        s6, 230805
                  sltu         t6, s2, gp
                  andi         s10, t1, 517
                  sltiu        a6, s8, -619
                  sub          s11, a6, sp
                  add          s7, s5, a6
                  srl          t6, s6, s5
                  slli         zero, t1, 13
                  srli         a4, a4, 18
                  ori          t1, s1, 527
                  add          t1, s9, gp
                  or           s4, s6, t0
                  sltu         a1, t0, s10
                  nop
                  sltu         s10, a7, a2
                  nop
                  slt          a0, s11, s8
                  sub          gp, s3, t0
                  slt          s11, a0, t3
                  sltu         s2, a5, t4
                  or           ra, a5, s8
                  slti         s9, a5, 601
                  slli         t6, zero, 5
                  sltiu        s6, s10, -368
                  srl          s0, s3, s8
                  slti         a6, a3, -1827
                  nop
                  sll          s4, t5, t4
                  ori          ra, tp, 143
                  sra          s5, a7, t2
                  sltiu        t6, a5, 492
                  add          s4, a7, a2
                  srli         s7, s10, 26
                  andi         s2, a5, -234
                  andi         s10, ra, -1553
                  and          s6, s3, s2
                  addi         t6, ra, 1867
                  slt          s5, s1, gp
                  and          a4, s1, s1
                  and          a6, a3, t2
                  sra          sp, s0, tp
                  sll          s6, a5, t3
                  nop
                  xor          s0, a5, a4
                  nop
                  sra          t6, s4, a1
                  srli         a1, s11, 16
                  sll          sp, a0, s8
                  slti         s11, s4, -576
                  and          s0, t0, ra
                  slti         a2, sp, 1628
                  lui          t6, 68219
                  andi         s7, s6, -673
                  ori          s5, a1, 883
                  sll          s10, s2, s8
                  xori         t1, tp, -577
                  or           s0, s7, s5
                  auipc        t4, 873244
                  add          s8, tp, t4
                  and          tp, s5, t4
                  addi         a5, s2, 1414
                  nop
                  addi         a0, a7, -130
                  xori         t4, sp, 1795
                  or           t4, zero, s4
                  sltu         tp, a3, zero
                  slti         s9, t3, 1842
                  sltu         s9, s9, t0
                  xor          gp, ra, a3
                  and          s0, s8, a6
                  sll          s6, s2, gp
                  xori         s5, t3, -1694
                  sra          s8, t3, a7
                  srai         s0, a3, 4
                  sra          t3, a1, t3
                  slti         gp, sp, 406
                  xori         a2, gp, -1949
                  slti         s6, a5, -1458
                  sltiu        s4, s9, 236
                  andi         a3, t3, -1484
                  nop
                  slt          a2, t0, t5
                  xori         a3, s9, 1745
                  srli         s6, s4, 25
                  xori         a3, zero, 1307
                  slt          s9, s5, s6
                  slti         gp, s2, 1140
                  or           a2, a7, a3
                  slt          s2, a0, a7
                  nop
                  xor          a1, s6, s5
                  slli         s9, a5, 15
                  or           a7, ra, s4
                  ori          a5, t2, -1646
                  slt          t3, zero, t5
                  or           t4, tp, a1
                  srai         t1, ra, 19
                  andi         s4, t6, 723
                  srai         t1, t0, 30
                  and          s4, a0, t5
                  ori          s6, s2, -1795
                  ori          gp, s11, 313
                  auipc        s5, 207758
                  nop
                  sll          t1, zero, s0
                  and          t6, a1, s8
                  slt          zero, s7, s6
                  nop
                  lui          s10, 810315
                  andi         s6, a3, 798
                  slti         a0, s8, 1391
                  srl          s9, ra, ra
                  sltiu        t6, t3, 820
                  addi         s7, s5, -343
                  ori          t0, t3, 1629
                  xor          s5, t1, a7
                  and          ra, s6, a5
                  addi         a5, s2, 846
                  slti         s8, s11, -694
                  slli         a3, a5, 6
                  lui          t0, 718477
                  and          a0, zero, s9
                  srl          s4, t1, s0
                  slti         a4, s11, -267
                  slli         s6, s5, 13
                  addi         ra, s11, 1511
                  sll          zero, s3, t6
                  auipc        s5, 579978
                  nop
                  andi         s4, gp, 936
                  slli         sp, a3, 6
                  srli         a1, a1, 10
                  slti         s6, s10, -1342
                  ori          t1, s3, 1485
                  add          a0, a3, s1
                  add          sp, zero, s7
                  auipc        a0, 615907
                  and          s7, a7, a3
                  add          s2, t2, gp
                  sra          t6, s5, a3
                  auipc        s6, 571881
                  addi         zero, s3, 761
                  and          a2, a0, tp
                  sll          s5, s2, tp
                  sltiu        s6, t0, 18
                  and          t3, s9, a4
                  slti         t6, t6, 1548
                  sll          s2, a1, s1
                  auipc        t6, 493043
                  slti         s11, s4, 1747
                  addi         zero, s2, -1990
                  nop
                  slti         sp, a6, 920
                  xori         s4, s9, 1894
                  auipc        a7, 498663
                  lui          s8, 667111
                  sltu         a7, t0, s5
                  xori         t6, t1, 606
                  srli         t3, t6, 25
                  auipc        a0, 611519
                  or           a0, t1, s4
                  slti         a4, s1, -347
                  sltu         a1, zero, a0
                  xori         s9, a5, 1014
                  sra          s2, a2, a7
                  ori          s2, a6, 929
                  ori          s8, s2, -148
                  slli         s8, s11, 29
                  nop
                  srai         a5, tp, 14
                  slt          a5, s8, s6
                  andi         a4, t3, -1588
                  sll          t5, t5, a7
                  or           a4, a7, s5
                  auipc        s9, 881966
                  auipc        s9, 854470
                  slti         a5, a0, -375
                  addi         t4, s8, -645
                  sltiu        a6, s11, 1352
                  nop
                  srai         sp, s2, 0
                  sltiu        sp, s5, -1954
                  srl          a6, s9, t3
                  add          ra, a5, s1
                  srl          t3, t4, s8
                  xor          tp, a3, a3
                  slti         a2, t3, 1887
                  and          tp, s4, s0
                  srl          zero, a7, tp
                  slti         t5, t4, -1730
                  auipc        s11, 939412
                  sltu         t4, t1, a3
                  add          ra, t4, a4
                  sll          sp, t5, sp
                  ori          ra, t0, -1327
                  xor          s5, zero, tp
                  sltu         sp, t0, a0
                  slti         s6, a6, -1026
                  lui          t4, 172518
                  xor          s7, s5, s7
                  nop
                  sra          ra, t0, tp
                  and          t0, s3, ra
                  nop
                  srl          t3, s3, s7
                  or           s0, a5, tp
                  sra          s11, s6, t2
                  xori         t1, zero, -607
                  addi         a2, s3, -222
                  sub          t1, a6, zero
                  sltiu        t3, a5, -1612
                  ori          a5, a7, -1469
                  srai         s9, t6, 6
                  lui          s0, 249769
                  sll          a7, a3, a5
                  nop
                  srli         s11, t4, 29
                  xor          s8, s1, s0
                  slli         s11, s7, 4
                  add          t0, a7, s4
                  andi         a3, s8, -1767
                  xori         s4, s7, -1129
                  and          s9, sp, a4
                  sra          t1, s4, s7
                  andi         a0, s10, 226
                  sll          s9, a0, a2
                  srai         a2, ra, 19
                  xori         sp, sp, 1447
                  xor          s8, s3, a1
                  srl          t3, t2, a4
                  sll          s10, t0, s0
                  sltiu        t4, s0, -1370
                  xor          t4, s11, t5
                  auipc        t1, 551491
                  slt          a0, t1, zero
                  ori          s8, a1, -713
                  sll          s9, s3, s1
                  sra          a3, s0, s11
                  sub          a0, sp, ra
                  sltu         t3, s0, s0
                  xori         t3, t2, 974
                  slti         t6, zero, 159
                  sll          gp, a6, a7
                  srli         a0, s3, 29
                  andi         gp, t2, -473
                  slti         t6, a1, -2045
                  nop
                  xor          s7, s0, a0
                  srl          a5, a2, s9
                  sltu         a6, a5, a4
                  or           gp, a7, ra
                  or           t4, a1, t4
                  sll          tp, a2, sp
                  and          zero, t3, s3
                  xori         ra, s4, -1800
                  addi         a4, tp, -486
                  or           a6, s7, sp
                  srl          t4, gp, t2
                  xori         s11, a1, 601
                  srai         a4, s6, 29
                  sub          t6, a4, s3
                  slti         s7, a1, 2016
                  or           zero, t4, s7
                  auipc        a7, 1041612
                  ori          s9, s7, -819
                  or           a4, t1, s0
                  andi         s11, sp, 368
                  xor          s11, s7, s7
                  srli         t6, t1, 12
                  addi         s6, s3, -1007
                  lui          s6, 641174
                  addi         s4, a1, 1140
                  srl          s6, a1, s9
                  slti         a7, s11, 1221
                  sra          s0, s5, t4
                  sltu         t6, s2, gp
                  slti         s0, s10, 1574
                  slli         s11, a7, 19
                  add          t4, gp, a1
                  sll          t6, t5, s4
                  srai         gp, s4, 27
                  andi         a6, tp, -805
                  lui          ra, 907911
                  nop
                  and          s6, t2, a2
                  srai         ra, sp, 15
                  addi         a3, t6, -1553
                  sub          a2, t5, t4
                  srli         a3, a5, 30
                  srl          a7, s10, a7
                  add          s5, t4, s10
                  srli         a0, a0, 28
                  xor          t4, s11, s6
                  auipc        s2, 192735
                  slti         s10, sp, 1318
                  addi         t5, t5, -1256
                  slti         s5, tp, -70
                  xori         ra, t6, 679
                  addi         a5, s9, 1103
                  sll          s11, t6, t0
                  xor          a7, a4, s5
                  lui          gp, 107808
                  auipc        sp, 205022
                  srl          s6, t2, t6
                  add          gp, s5, s5
                  lui          s5, 634948
                  xor          t5, tp, t0
                  srl          s6, a6, t3
                  xor          t4, s7, a3
                  sltu         t6, a2, a7
                  sll          t1, s6, s9
                  nop
                  sltiu        sp, a1, -1640
                  addi         a7, t2, 1372
                  slli         s9, s8, 18
                  srli         t0, gp, 9
                  li           t0, 0x13fe06 #start riscv_int_numeric_corner_stream_4
                  li           t5, 0x0
                  li           t1, 0x0
                  li           s2, 0x0
                  li           s7, 0xffffffff
                  li           a0, 0xffffffff
                  li           a2, 0xa6dd3643
                  li           s4, 0x80000000
                  li           a1, 0x80000000
                  li           tp, 0x80000000
                  nop
                  nop
                  add          t0, s4, s7
                  nop
                  auipc        a1, 685400
                  sub          t1, s4, tp
                  lui          t5, 1010491
                  auipc        a0, 543846
                  lui          t0, 685189
                  lui          s7, 271004
                  sub          t5, tp, s2
                  sub          t1, t1, t0
                  sub          tp, t1, s2
                  add          a0, t1, t5
                  auipc        a2, 815941
                  sub          t5, s7, s7
                  add          s4, a2, a2
                  sub          t5, t0, s4
                  addi         t0, a1, 208
                  auipc        t0, 109348
                  lui          s7, 499838
                  nop #end riscv_int_numeric_corner_stream_4
                  sra          ra, a4, s0
                  slt          s6, s3, t6
                  auipc        zero, 1019648
                  srai         s7, a0, 24
                  slt          a3, a1, s9
                  srli         s2, s6, 12
                  lui          t6, 505368
                  andi         gp, s11, 728
                  sra          t6, t5, a0
                  sra          a7, s10, t4
                  xori         tp, a4, -547
                  xor          tp, gp, a7
                  slli         s10, s10, 15
                  andi         sp, zero, 231
                  andi         zero, t1, -49
                  slt          a6, t3, s7
                  srai         tp, t6, 0
                  xori         t6, s6, 1094
                  srl          a0, a0, t3
                  srl          s6, s1, t0
                  and          s0, s9, t0
                  xor          gp, s9, t2
                  nop
                  xori         a0, a5, 1249
                  and          tp, s7, t3
                  addi         tp, a0, 933
                  auipc        sp, 432586
                  slt          a3, s7, sp
                  add          s5, t3, zero
                  nop
                  sll          sp, a6, t6
                  slli         sp, t6, 25
                  addi         s2, s7, -530
                  ori          s4, sp, 326
                  or           tp, s4, a4
                  slti         sp, a2, 1611
                  auipc        s7, 814047
                  slt          a1, a2, t1
                  slt          t1, a4, s10
                  or           a5, s2, a4
                  sltiu        a1, t0, -1392
                  andi         t4, s8, 611
                  auipc        s7, 720551
                  nop
                  sra          s0, s1, ra
                  nop
                  andi         a2, ra, -779
                  slt          s8, s2, a4
                  and          s10, t1, gp
                  sltiu        a5, s9, 202
                  nop
                  addi         a0, s2, 1561
                  nop
                  andi         s8, s5, 722
                  nop
                  and          tp, a7, gp
                  xor          s10, s8, s4
                  nop
                  srli         t0, ra, 9
                  sub          s8, tp, s5
                  nop
                  sub          s8, s2, t4
                  or           gp, s6, a6
                  andi         a6, gp, -152
                  sub          sp, a1, a5
                  or           t1, zero, a0
                  slt          s7, s10, s10
                  sltu         t4, a1, gp
                  srli         t5, a2, 14
                  lui          ra, 501397
                  xori         s11, s5, -364
                  slli         t5, sp, 30
                  sll          t5, sp, t4
                  auipc        s4, 37680
                  slli         t0, t4, 6
                  xor          t4, a1, a5
                  auipc        a0, 210426
                  slt          s6, a1, a4
                  srai         gp, a0, 9
                  slti         zero, a1, -1273
                  slt          s4, t0, s1
                  auipc        s9, 409339
                  srli         t1, s10, 18
                  slti         s4, s10, 1753
                  sub          gp, s7, t5
                  or           s7, t6, zero
                  add          a6, s4, a6
                  and          s10, sp, t0
                  srli         t6, s3, 2
                  slti         t5, sp, 985
                  sll          tp, sp, s11
                  slt          s9, s0, gp
                  nop
                  slli         s9, s10, 31
                  auipc        a3, 763745
                  addi         s8, sp, -726
                  auipc        a7, 1013925
                  srai         ra, t4, 9
                  nop
                  slli         s6, zero, 11
                  srai         ra, a3, 11
                  andi         s11, s10, -766
                  sra          t1, gp, tp
                  srai         t4, s4, 8
                  auipc        a4, 965684
                  ori          t3, tp, 986
                  srl          a4, t1, a0
                  ori          s10, a3, -1914
                  slt          s4, a2, a7
                  xor          t5, t2, s8
                  sra          s10, a7, a0
                  addi         s9, s4, -248
                  srl          a1, s8, s4
                  addi         a7, t0, -329
                  xor          t6, tp, s2
                  add          sp, sp, a0
                  ori          zero, a6, 1904
                  lui          tp, 264068
                  sub          s4, s6, a3
                  nop
                  slti         t1, a6, -623
                  and          t5, a2, t1
                  sltiu        t1, zero, 966
                  srai         s11, s4, 0
                  andi         a5, s8, -1557
                  srl          s11, gp, t1
                  sub          a5, sp, s1
                  slt          t4, a6, s9
                  ori          t0, t6, 1917
                  slt          a1, ra, a4
                  or           s9, zero, s6
                  slt          a1, a1, t5
                  add          ra, a7, t4
                  slli         s8, s10, 10
                  and          t4, t6, t2
                  sltiu        a7, t2, -26
                  sra          a4, t4, t3
                  slli         s9, s9, 14
                  sra          a4, s2, a3
                  add          s5, s4, s11
                  slt          t1, a7, s10
                  auipc        s11, 143832
                  lui          a3, 498894
                  auipc        a6, 523985
                  sra          s6, t3, s5
                  sub          s2, s10, a7
                  srli         t3, s2, 24
                  sub          a0, s2, t1
                  ori          t3, zero, -739
                  slti         t0, a2, 1901
                  lui          gp, 903770
                  add          s0, t3, a1
                  addi         s4, a4, 1466
                  sltiu        a3, t1, -1127
                  srai         a7, a5, 12
                  and          a5, t1, a1
                  slti         a7, s0, 1589
                  andi         s7, gp, -456
                  slti         sp, zero, 1177
                  ori          a3, s4, 691
                  add          tp, s2, t6
                  nop
                  and          s7, sp, a7
                  sltu         s7, t6, ra
                  slli         a7, s4, 21
                  srli         s11, a7, 26
                  slt          a3, s10, t1
                  srl          s0, ra, t1
                  slti         zero, a4, -1145
                  sra          s11, gp, s0
                  addi         a3, t5, 1285
                  sra          a2, zero, t6
                  lui          tp, 23009
                  sra          a5, s11, t0
                  or           gp, s1, a3
                  slli         t4, a0, 4
                  sll          ra, s9, gp
                  sub          zero, a5, t0
                  slt          t0, t3, a3
                  sub          a7, s6, t2
                  slti         tp, s4, 87
                  xor          s6, s7, a3
                  sra          zero, t6, tp
                  sltu         t0, t5, a0
                  ori          zero, tp, 1175
                  srl          t3, t2, zero
                  xori         a5, s10, -931
                  nop
                  srli         a6, t1, 22
                  sub          tp, t6, s8
                  xor          s7, a0, zero
                  slt          a1, a1, zero
                  add          t4, s7, a0
                  xor          a3, s4, t5
                  xor          t0, t4, t2
                  srli         zero, t1, 24
                  nop
                  addi         a7, s1, 55
                  nop
                  xor          a3, a6, t5
                  sub          t5, s3, s7
                  ori          s2, t2, -1757
                  srl          t0, t3, s2
                  sub          ra, a1, a2
                  slli         zero, a0, 18
                  sll          s8, s6, a2
                  srai         s0, s1, 1
                  nop
                  slt          s4, sp, t4
                  srai         a2, s9, 26
                  slti         t1, t4, -2011
                  sltiu        s7, s9, 1078
                  sltiu        zero, s0, 1742
                  srli         s4, t4, 22
                  sra          s11, a3, s2
                  sra          tp, t0, ra
                  sltiu        s6, a0, -1994
                  sll          s10, s3, t4
                  lui          t0, 676358
                  slti         t3, s0, 820
                  xor          s9, zero, tp
                  xor          gp, tp, ra
                  or           t4, t5, t6
                  addi         s5, a6, 457
                  andi         t5, a6, 317
                  sll          gp, s6, t3
                  add          a1, a6, s0
                  and          a6, s6, s9
                  lui          t1, 324389
                  nop
                  sra          s10, t2, a4
                  slt          a1, s2, a1
                  slli         s9, t0, 15
                  sub          s11, t4, t0
                  xor          sp, s1, t6
                  srli         t4, a2, 29
                  sltu         a4, tp, t5
                  srl          sp, s6, a5
                  sra          s5, a7, sp
                  xor          a3, a7, s10
                  slt          a1, t6, s7
                  srli         t3, a4, 27
                  auipc        s11, 985542
                  sltiu        s5, s11, -647
                  srai         a1, s3, 11
                  lui          a6, 207849
                  xori         a5, a5, -931
                  sltiu        s6, zero, -1196
                  and          s10, a7, a0
                  ori          s4, sp, -1114
                  add          t0, t6, s4
                  sll          s6, t1, a5
                  and          s7, t4, tp
                  sltiu        zero, ra, -1063
                  slti         t6, s10, 234
                  xori         tp, a3, 879
                  or           zero, s4, s7
                  srl          sp, a5, s2
                  srl          a2, s10, t3
                  slti         sp, t4, -1778
                  xori         gp, a1, -1143
                  sll          s4, gp, a1
                  auipc        s10, 60865
                  sra          a2, s4, sp
                  srl          a7, a3, ra
                  nop
                  lui          a5, 526596
                  sub          a0, gp, a2
                  srl          s7, tp, a2
                  addi         a1, t0, -500
                  srli         ra, a5, 2
                  sll          s2, a1, s8
                  lui          t4, 737886
                  sra          ra, s6, s8
                  nop
                  auipc        s2, 702412
                  lui          a6, 1042254
                  sltiu        t4, a0, -1758
                  slti         a6, a6, 1233
                  and          s6, s5, s8
                  and          a5, a0, s2
                  andi         t4, t3, -1673
                  srai         t4, a0, 6
                  addi         a4, s2, -434
                  slti         a2, s11, 841
                  sltu         s6, s0, s7
                  sub          t3, t1, s2
                  andi         t5, a7, -1565
                  slti         s6, t4, -934
                  xori         a5, t0, -510
                  sltu         a5, t2, s4
                  add          t6, a5, a4
                  slli         t5, t3, 20
                  slli         s4, s7, 18
                  slt          s11, s9, t4
                  slli         ra, a7, 11
                  or           t4, a6, t0
                  sra          s0, a3, t5
                  xor          t5, a5, s10
                  add          s4, zero, a2
                  sll          zero, a3, tp
                  add          a3, s4, t1
                  slt          t5, t4, s1
                  srli         a3, a0, 10
                  and          tp, s0, t6
                  auipc        t6, 958875
                  slt          s11, s6, a4
                  auipc        t5, 41053
                  addi         s7, s8, -811
                  slt          a0, a2, t1
                  sra          gp, a7, t4
                  slli         a1, s6, 27
                  sub          a5, a7, a5
                  sll          a2, t6, a4
                  sll          ra, ra, a7
                  sltiu        a0, a0, 791
                  sltiu        t4, s1, 272
                  and          a3, a7, ra
                  addi         a0, ra, 32
                  sra          s9, ra, a2
                  slti         s11, tp, 1243
                  andi         t1, s10, -528
                  lui          s8, 196564
                  andi         s8, a0, -608
                  slti         s7, tp, -645
                  slt          t3, s9, s10
                  srli         ra, a7, 25
                  srl          a7, t6, tp
                  add          s0, s9, t5
                  andi         a6, s1, 925
                  slti         tp, gp, -2009
                  slli         s10, t3, 30
                  slt          a5, a7, t5
                  andi         a0, zero, 885
                  slli         zero, a7, 8
                  nop
                  slli         s11, s1, 31
                  auipc        a6, 249467
                  slti         s5, tp, -1655
                  srli         s4, t4, 12
                  add          t6, s11, s9
                  add          gp, a5, s4
                  ori          ra, sp, 787
                  sub          a3, t3, zero
                  xori         ra, t2, 1002
                  sltiu        s8, s3, -1782
                  slt          s11, s6, gp
                  sll          t3, s9, s4
                  add          a6, s0, a3
                  sra          a2, sp, s3
                  add          s7, s4, t2
                  sra          a3, t4, zero
                  xor          s2, a5, a2
                  auipc        s4, 402017
                  andi         s8, ra, 1180
                  sltiu        s0, a1, 1978
                  addi         tp, s9, 1037
                  and          t3, tp, s1
                  slt          a6, s0, s4
                  slli         t3, ra, 13
                  sub          a3, a4, s9
                  lui          a4, 536353
                  and          a1, s4, s1
                  sub          a7, a4, s8
                  ori          s8, a2, -1714
                  xor          t3, s2, s9
                  and          s7, a0, t6
                  auipc        a1, 342672
                  sra          gp, s5, ra
                  add          t6, t1, s7
                  slti         sp, zero, -529
                  xori         gp, t4, -901
                  or           s8, s2, s5
                  srl          s0, ra, a4
                  slti         t4, zero, 586
                  add          s10, zero, s1
                  sll          zero, t5, s0
                  sra          sp, a1, a7
                  lui          s0, 693295
                  addi         sp, a1, 117
                  xori         ra, s8, -428
                  or           a3, ra, s2
                  sltiu        s8, ra, 1448
                  addi         t4, a0, -676
                  slli         t3, a7, 3
                  addi         t0, t6, 684
                  sra          s10, t1, a6
                  nop
                  sra          t3, a4, gp
                  sub          s5, a7, s4
                  sub          a5, sp, s5
                  sll          a4, a5, s0
                  xori         s11, a0, 2006
                  sll          t5, t0, t2
                  sra          s5, a4, a4
                  sll          gp, a7, s11
                  sra          gp, a4, t4
                  or           t0, a3, a1
                  sub          a7, a7, s7
                  sub          t5, t6, tp
                  nop
                  sra          a6, t6, a0
                  srli         s8, s2, 0
                  srl          s7, a1, tp
                  sltu         s7, t0, a4
                  slli         s0, a0, 12
                  slti         s6, t6, -239
                  sra          ra, a1, s5
                  ori          s9, a5, 923
                  or           t5, t2, s0
                  lui          a7, 685391
                  sub          s10, s10, tp
                  srl          gp, a2, s5
                  nop
                  srl          t3, t4, s8
                  ori          s2, s2, 1886
                  and          t0, a2, s3
                  lui          a5, 915055
                  or           s5, s2, s0
                  andi         sp, s10, 900
                  xori         a5, s9, 1827
                  sll          a5, t3, zero
                  slt          a2, s0, a6
                  sub          a7, t2, a4
                  and          t0, s10, t0
                  ori          a1, t0, -1236
                  sltu         s2, a7, a0
                  slti         a2, t6, 1592
                  addi         a4, s0, 1151
                  and          sp, s11, t2
                  andi         s6, s6, 1893
                  sra          a6, a3, a7
                  and          zero, tp, ra
                  ori          a1, a4, -843
                  add          a5, s8, s6
                  xori         a3, tp, 47
                  srai         t1, s0, 7
                  andi         t4, a2, -458
                  sltu         tp, a4, a5
                  lui          t1, 187545
                  or           t4, t1, a3
                  sltiu        s8, s2, 1196
                  sll          a2, a1, a1
                  nop
                  sltiu        s7, ra, 262
                  addi         a2, a1, -1408
                  add          s11, a0, s8
                  xor          s6, a3, s9
                  sltiu        a2, a6, -984
                  slli         a7, s1, 16
                  slli         t4, s11, 24
                  ori          s6, t5, -699
                  sltiu        s6, s1, 21
                  and          a1, gp, s5
                  ori          s0, tp, -1512
                  sub          a7, s4, t1
                  slli         sp, gp, 10
                  sltu         a0, s7, s5
                  slli         a2, s7, 4
                  xori         s0, t2, 1547
                  or           zero, a7, ra
                  sra          tp, t4, a1
                  auipc        a1, 1009767
                  or           zero, s5, a1
                  srl          a6, gp, s5
                  sltiu        s11, t1, 140
                  ori          s11, t6, -820
                  and          s0, ra, sp
                  lui          s0, 604679
                  auipc        s4, 1013691
                  and          a5, zero, t2
                  auipc        a5, 165521
                  xor          t5, a6, sp
                  ori          s4, s7, 1174
                  auipc        a3, 211124
                  sltu         t6, a4, tp
                  slti         zero, a5, -112
                  slli         a4, a1, 16
                  slli         s10, s7, 22
                  srli         s4, a1, 15
                  and          s5, sp, zero
                  slti         t3, t5, -374
                  sltiu        s5, s9, -699
                  addi         a6, s5, 1444
                  and          t4, a0, t0
                  ori          tp, s1, 1583
                  lui          sp, 17060
                  nop
                  sltu         ra, a3, a5
                  sll          gp, s2, a1
                  sra          a0, s0, a0
                  sub          s8, a6, s1
                  sltiu        s6, t3, -533
                  add          a2, s3, t3
                  slti         a0, a6, -993
                  nop
                  srli         a4, s5, 20
                  xori         t6, a4, 1656
                  slti         s7, sp, 885
                  slt          a0, t1, s4
                  nop
                  ori          s2, t4, 1512
                  addi         s6, ra, -285
                  xori         zero, s1, 457
                  slli         a6, a3, 16
                  or           s0, a7, zero
                  xor          a3, a4, s5
                  ori          s6, a0, -1828
                  andi         t5, gp, -494
                  or           ra, t1, s5
                  srli         gp, s4, 24
                  slt          sp, s8, s9
                  sltu         a2, a1, zero
                  sll          s6, t6, a3
                  xori         s2, s0, 2009
                  slli         ra, a6, 29
                  lui          a2, 91350
                  slli         t5, s4, 14
                  xori         gp, t3, -950
                  addi         sp, t5, 595
                  addi         a3, a0, -183
                  add          sp, s8, zero
                  auipc        t1, 226600
                  sra          a6, s3, a4
                  xor          t5, s1, a5
                  sltiu        ra, s4, 320
                  sll          sp, a3, a4
                  slli         s0, s0, 3
                  xori         a5, s11, -863
                  srai         sp, a6, 26
                  sub          a5, t2, s1
                  srl          tp, t0, t0
                  lui          t6, 424585
                  sub          a2, s3, a7
                  xor          s8, t4, s9
                  sll          s4, a3, a5
                  andi         s6, t0, -772
                  auipc        s10, 899799
                  sltu         s8, a6, t4
                  or           s7, gp, s10
                  slli         sp, s3, 8
                  lui          a1, 205899
                  srl          t4, zero, a2
                  add          s10, s3, a0
                  slt          t0, a6, a2
                  srl          a5, s3, s1
                  slt          t1, s1, t1
                  srli         s5, a4, 5
                  addi         s0, t3, -1268
                  sll          s4, a7, s3
                  xor          a4, t1, s9
                  xori         sp, s2, -839
                  srai         s8, a3, 12
                  li           s11, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           t5, 0xffffffff
                  li           s0, 0xffffffff
                  li           a6, 0x0
                  li           a1, 0xffffffff
                  li           s6, 0x80000000
                  li           gp, 0x36bda66b
                  li           s10, 0x6971ffb5
                  li           a3, 0x80000000
                  li           s7, 0xffffffff
                  add          s0, s0, s6
                  add          gp, t5, s7
                  add          a6, s11, s0
                  addi         a1, a6, 1081
                  sub          a3, s6, s6
                  add          s6, s6, t5
                  lui          a3, 246529
                  addi         t5, s0, 1190
                  lui          gp, 209625
                  add          s11, a1, s6
                  add          a6, t5, a6
                  lui          t5, 305247
                  auipc        t5, 133371
                  auipc        a3, 494723
                  lui          s6, 104768
                  sub          t5, s0, s10
                  nop
                  auipc        gp, 587808
                  nop
                  addi         s10, gp, -705
                  nop
                  nop
                  lui          s7, 56193
                  lui          a1, 252390
                  add          s11, s7, s11
                  nop
                  nop #end riscv_int_numeric_corner_stream_3
                  sltiu        t4, s5, -1705
                  slli         s10, s8, 1
                  nop
                  nop
                  srl          t1, t2, zero
                  sll          sp, t0, sp
                  add          s5, t5, s0
                  sra          s5, a2, gp
                  andi         t4, a1, 281
                  andi         a0, a3, -409
                  srai         s5, s0, 16
                  slt          a4, s2, s7
                  addi         s4, a1, -1460
                  auipc        s5, 425469
                  srai         s6, a5, 25
                  xori         s0, a7, -474
                  srl          s10, zero, t6
                  sltu         t1, s7, s2
                  sra          s11, t1, s8
                  nop
                  nop
                  nop
                  sra          s0, a3, t0
                  or           zero, a3, a6
                  sltiu        t1, a0, 399
                  xor          a2, t4, s11
                  slt          t1, s3, s11
                  andi         t0, gp, -468
                  slti         a7, s6, -26
                  lui          a1, 957082
                  andi         s9, t4, 1086
                  xori         gp, a4, 470
                  xori         t0, s5, 1969
                  sltu         t6, s6, t0
                  xor          s2, s1, a5
                  lui          s9, 736524
                  and          s10, t4, s0
                  sub          a2, a0, s3
                  sltiu        s9, s3, 1473
                  ori          a6, s1, -1078
                  and          t6, s10, s3
                  srai         a2, ra, 22
                  slt          s4, t2, a5
                  slli         tp, ra, 25
                  andi         s8, a4, -106
                  sltiu        s7, tp, 722
                  xor          s8, s7, a7
                  auipc        s11, 857381
                  auipc        a5, 763256
                  sra          a2, gp, s5
                  addi         zero, sp, 506
                  or           t3, a3, s5
                  or           t3, s6, t3
                  srai         s5, s0, 1
                  sra          a5, gp, a5
                  slti         s2, ra, 1543
                  sltiu        s9, a6, 1420
                  andi         s2, gp, 1590
                  ori          t0, s10, -1859
                  xori         a2, a0, -1370
                  srl          a6, t2, sp
                  srai         s9, t1, 27
                  addi         s0, a6, -1143
                  sub          s6, t2, sp
                  srai         t5, s10, 6
                  srai         a6, s2, 13
                  addi         s8, t6, -1317
                  sltu         t4, s8, a3
                  auipc        zero, 912298
                  or           t1, s2, t0
                  sub          tp, t1, s1
                  nop
                  sub          s0, t6, a6
                  xori         t3, tp, -1638
                  sltu         t1, a1, s10
                  addi         a6, t3, 929
                  nop
                  xori         a5, s3, 1751
                  slti         s2, zero, -1133
                  nop
                  sltu         a6, s3, a5
                  xor          a6, tp, t4
                  sltiu        t3, t6, -1804
                  sltu         a1, s10, s4
                  nop
                  sra          t6, a3, a7
                  nop
                  sub          a3, t4, sp
                  ori          tp, t5, 1397
                  or           t0, s8, a4
                  xori         s0, t3, 1437
                  slt          s6, s2, s4
                  sll          a3, a4, a6
                  srai         t6, s1, 2
                  lui          s7, 323383
                  slli         a2, a5, 13
                  slti         s6, t4, 975
                  sltiu        t3, sp, 668
                  slli         t5, gp, 28
                  slt          s6, s10, a7
                  nop
                  sra          a6, a2, tp
                  or           t5, a0, ra
                  or           gp, gp, s5
                  lui          t4, 929558
                  or           a5, a2, s0
                  lui          t4, 165397
                  slti         gp, t4, 1709
                  sll          s9, s8, s8
                  and          s8, ra, t2
                  srl          zero, tp, a2
                  nop
                  xor          sp, s9, t6
                  sltu         s7, a0, t1
                  sll          a6, tp, sp
                  ori          s4, s8, -496
                  sltiu        gp, t6, 711
                  ori          a3, s6, 49
                  lui          zero, 361627
                  slt          s11, s3, s3
                  and          ra, s6, t1
                  xor          t6, zero, t1
                  lui          s8, 158078
                  andi         s4, s10, -1619
                  slti         t6, t6, 932
                  srl          gp, a6, s1
                  andi         t5, a1, -1728
                  sub          sp, tp, a4
                  add          s5, s7, s9
                  and          a3, s1, a7
                  andi         a0, t1, -1743
                  addi         s4, zero, -1341
                  sltu         tp, a1, a3
                  add          t6, s2, t4
                  slt          a1, s8, t2
                  slli         t1, t5, 11
                  sub          s6, t1, a1
                  lui          ra, 331762
                  sltiu        s11, a6, 1617
                  sra          s0, t1, t5
                  srl          a7, s7, a1
                  xor          t4, s11, t4
                  nop
                  slti         gp, zero, 993
                  sltu         tp, s11, t5
                  srli         a4, t6, 14
                  slli         t4, t4, 27
                  srli         t4, a0, 4
                  andi         s4, t5, 485
                  slli         a2, a2, 18
                  sltiu        a4, s8, 129
                  sltu         a7, t1, s4
                  add          s4, a7, s2
                  xor          t4, a6, s0
                  sra          s0, t3, s9
                  add          t6, s5, a4
                  srl          t5, s9, gp
                  ori          s6, a0, 1285
                  sltiu        t5, s1, -1716
                  srl          a1, t3, ra
                  ori          s4, a2, -266
                  xori         zero, t1, -141
                  srli         s9, t5, 25
                  xor          t3, t3, a3
                  add          a4, zero, tp
                  srai         s6, s2, 21
                  srli         s6, t3, 1
                  addi         s11, s5, 1894
                  slli         t0, a3, 30
                  xori         sp, a2, -16
                  sra          a4, t6, t1
                  slli         t1, a3, 13
                  addi         s6, a1, 1743
                  srl          sp, zero, gp
                  add          a3, s0, t2
                  slt          t3, t0, a1
                  slt          s5, s10, s7
                  addi         s0, s1, -1720
                  andi         ra, a4, 332
                  srai         s8, s1, 9
                  srli         s4, s9, 5
                  lui          t3, 873602
                  srai         t5, t5, 4
                  nop
                  nop
                  slli         s8, zero, 12
                  sra          s5, tp, sp
                  auipc        zero, 406070
                  and          tp, a2, s4
                  nop
                  xor          s4, s7, t0
                  sra          zero, t4, zero
                  lui          gp, 962180
                  addi         t1, s2, 224
                  srl          t4, a4, a5
                  add          ra, s9, t5
                  srl          a2, sp, t5
                  andi         a2, a6, -1233
                  srl          s9, t1, s1
                  nop
                  sltiu        a3, sp, -1887
                  srl          a0, s2, sp
                  xori         tp, a0, 1805
                  sll          s8, ra, a4
                  srl          a4, t1, gp
                  and          tp, s4, s2
                  slt          t4, s9, s4
                  srai         s10, s0, 4
                  add          s2, a7, t5
                  xori         gp, t3, -1931
                  nop
                  srai         s6, s11, 7
                  srli         s9, t2, 19
                  sra          t0, ra, t3
                  addi         s8, s7, -778
                  ori          a6, zero, -424
                  sltiu        a3, s5, 163
                  sra          a7, s4, t4
                  sub          s0, t6, t2
                  slti         sp, s9, 1903
                  add          t0, tp, s7
                  slti         a5, t4, -405
                  sll          gp, a6, a0
                  or           t0, a2, t2
                  nop
                  and          a4, s10, t5
                  add          s10, sp, s7
                  slt          s10, a0, a4
                  xori         s8, a3, 97
                  nop
                  or           sp, sp, t4
                  nop
                  or           t3, t2, s1
                  srli         t0, s2, 12
                  slti         s10, t1, 984
                  and          s11, s4, t0
                  auipc        a2, 235276
                  xor          a4, s10, s2
                  xori         t0, t2, -817
                  slti         t4, s11, -1333
                  nop
                  xor          s9, gp, t4
                  sll          t4, s1, t6
                  auipc        gp, 544758
                  srli         t5, t2, 4
                  andi         sp, a5, -1245
                  srl          s2, tp, s6
                  xori         t4, s8, 1417
                  sub          a1, t0, t6
                  ori          a5, s5, 1046
                  slti         a2, s7, 1952
                  nop
                  andi         a3, t2, -473
                  sub          s7, a4, a3
                  slli         t5, t3, 8
                  srai         a0, a2, 16
                  sltiu        t3, a0, 1836
                  sltu         s11, a1, sp
                  srl          a0, t4, a3
                  srli         s8, t4, 11
                  xor          s11, s11, a5
                  and          gp, t6, t1
                  lui          tp, 588576
                  addi         t5, zero, -1257
                  add          s8, t3, s10
                  nop
                  andi         s0, t4, -105
                  srli         t1, s3, 17
                  nop
                  ori          s2, s1, 1796
                  sra          s7, a0, t0
                  srai         a4, t1, 31
                  sub          t6, t4, a6
                  and          zero, s11, s0
                  ori          a4, a5, -1243
                  addi         a5, t2, 1375
                  srl          a7, a4, zero
                  sll          a4, s10, a7
                  slti         tp, s5, 556
                  slt          s10, t5, t4
                  lui          gp, 155181
                  sltu         s4, s5, s11
                  add          s10, ra, s6
                  ori          t4, t2, -169
                  srl          ra, a3, t3
                  andi         s5, t4, -1903
                  sub          s0, t2, a7
                  srl          s9, a4, a7
                  sltiu        s9, s5, 404
                  slli         s7, t4, 22
                  and          s2, t2, ra
                  xori         zero, s0, 574
                  sltu         s0, t5, s2
                  xor          t5, gp, a5
                  ori          s2, t0, -377
                  or           t3, s2, s9
                  lui          s10, 323799
                  srai         s2, s5, 1
                  srai         s7, s2, 5
                  xor          t3, s9, s5
                  auipc        s9, 902421
                  sll          a2, t0, zero
                  sll          t1, a0, t1
                  srli         s8, t0, 6
                  slti         s4, s9, 520
                  xor          t1, a2, tp
                  slli         s7, s2, 23
                  addi         ra, tp, 1541
                  sltiu        s8, s5, 1047
                  sll          t6, a3, a0
                  lui          a3, 827963
                  ori          s8, s0, 1456
                  sltiu        s10, s10, -1971
                  slti         sp, a3, 925
                  srli         s11, s7, 29
                  srli         s11, a4, 17
                  andi         a4, a3, 952
                  srli         ra, s0, 18
                  slli         a5, a2, 10
                  sra          s11, s8, t2
                  slti         t0, s10, -1316
                  srai         t1, s0, 24
                  sltiu        t0, s3, 1338
                  or           s2, t6, s5
                  auipc        a0, 796341
                  sub          a2, a4, s6
                  auipc        zero, 13984
                  auipc        s11, 500282
                  slti         a2, s2, -225
                  slli         s10, zero, 13
                  nop
                  sltiu        t1, t2, 1104
                  andi         t3, t5, 1648
                  and          a0, s8, a0
                  auipc        s2, 239806
                  srli         s8, t2, 4
                  sll          ra, a6, sp
                  sltiu        a2, s9, -108
                  nop
                  addi         s7, a4, -72
                  srl          tp, s11, a7
                  andi         a2, s6, -1499
                  sra          s2, s6, a7
                  lui          t4, 380673
                  srl          a0, a4, s9
                  slli         t0, a7, 18
                  srai         t3, s4, 5
                  or           s7, s3, s2
                  sltiu        s6, sp, -1429
                  slli         a3, s9, 24
                  and          t1, a2, sp
                  sub          a2, t1, ra
                  lui          s8, 308903
                  srai         a0, ra, 5
                  lui          t0, 846338
                  lui          s8, 799329
                  andi         a0, s2, 1385
                  xor          s7, a4, zero
                  xori         s9, t4, -2034
                  srl          zero, a6, s0
                  srli         s4, s9, 26
                  xor          a4, s4, s10
                  andi         s4, t2, -1633
                  srli         sp, a1, 3
                  ori          s7, s7, -19
                  srli         a2, t1, 5
                  srli         gp, a4, 31
                  srl          a1, zero, s4
                  srl          sp, t0, a2
                  srai         a3, s1, 1
                  sub          s11, a0, t3
                  xor          t3, t0, s9
                  nop
                  sltiu        a7, tp, 922
                  xori         a7, s1, 835
                  slli         t1, s8, 13
                  addi         tp, t4, -1221
                  srl          a1, s10, s8
                  sra          a3, sp, t4
                  andi         t1, a3, -1433
                  add          t1, s10, a6
                  and          a2, s0, s10
                  add          s4, tp, t5
                  addi         s0, a0, -1425
                  srai         s7, s0, 11
                  ori          t3, t0, 1669
                  andi         t5, a1, 1622
                  andi         a7, s10, 1994
                  or           gp, s7, ra
                  ori          s7, t0, -419
                  or           gp, t5, ra
                  ori          a7, a0, 550
                  slti         sp, t4, 1780
                  xor          s0, s2, sp
                  add          t6, t3, t1
                  addi         t4, zero, 908
                  sltiu        a6, s7, -602
                  sltu         s7, sp, t3
                  slli         t0, ra, 28
                  srl          zero, s1, t5
                  slt          a4, t5, a1
                  srai         s7, a1, 15
                  and          tp, a6, s9
                  slti         s7, t5, -1685
                  slti         a2, sp, -444
                  andi         s5, a4, -1330
                  srl          s9, s11, a7
                  xor          tp, s0, s1
                  sltu         t5, a1, a0
                  sltiu        s6, ra, -1958
                  sub          a0, s5, t3
                  srl          s7, s11, a4
                  add          s5, s2, a3
                  slt          s2, s3, s5
                  sltiu        a1, s9, 1445
                  sll          s8, s4, tp
                  nop
                  sltu         t1, s5, t2
                  slti         a1, s1, 1010
                  sltu         sp, a5, s2
                  xori         s8, s0, 1506
                  sltu         s10, s9, a7
                  lui          t6, 266330
                  add          tp, s0, ra
                  srli         a0, s4, 14
                  slt          t6, s2, t3
                  addi         t5, sp, -671
                  nop
                  sltiu        sp, a5, -1502
                  auipc        t3, 944418
                  sra          gp, s6, t3
                  srl          s9, a7, t3
                  addi         s0, t1, -38
                  xori         a2, a0, -221
                  slt          t1, t1, s4
                  slli         a6, t5, 28
                  slli         s6, a5, 8
                  lui          tp, 596568
                  xor          a2, s11, t0
                  sltu         a7, t2, s10
                  slt          t1, s0, tp
                  slti         a5, a1, 235
                  lui          t3, 632335
                  auipc        a5, 399590
                  ori          s0, t3, 1970
                  addi         s9, zero, -1458
                  slti         s0, sp, -67
                  nop
                  sltiu        a7, gp, 1912
                  sltu         a3, s3, zero
                  xori         a2, s7, 123
                  or           t4, s10, t6
                  addi         a7, s8, -1552
                  slti         s2, a5, -1580
                  srli         a3, a7, 3
                  srai         s7, a6, 6
                  lui          a2, 38895
                  sll          ra, gp, s7
                  sltiu        t1, a0, 1848
                  andi         s6, t4, 1431
                  srli         t6, t6, 21
                  srl          s4, s8, a6
                  sra          a6, s9, t4
                  slli         t0, s11, 8
                  or           s7, s5, t6
                  ori          s0, t5, -797
                  sltu         s5, s1, t6
                  sra          s8, t4, gp
                  nop
                  addi         a5, s7, 1387
                  sltu         s9, s0, sp
                  andi         s4, s8, -261
                  nop
                  addi         a0, a4, -112
                  and          a0, zero, s0
                  slti         a6, t6, 202
                  xor          zero, a6, s5
                  ori          zero, t2, 1081
                  lui          s5, 228697
                  sltu         ra, a6, t0
                  ori          t1, t5, 1715
                  sltu         t6, a0, a2
                  and          a5, a6, s0
                  auipc        t3, 164653
                  srai         a0, zero, 23
                  srai         a3, s9, 29
                  xor          a2, a7, t3
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           sp, 0x80000000
                  li           s0, 0x7beb89e8
                  li           s6, 0x37e63f68
                  li           a0, 0xffffffff
                  li           t5, 0x44e0105a
                  li           a2, 0x80000000
                  li           s5, 0x80000000
                  li           t3, 0xffb76720
                  li           s10, 0xffffffff
                  add          a5, s6, s6
                  auipc        sp, 62906
                  auipc        s6, 424237
                  nop
                  lui          s0, 889940
                  add          s5, s0, t5
                  nop
                  addi         a0, s6, 808
                  add          s6, s5, s5
                  nop
                  addi         s10, s10, -66
                  auipc        t5, 178565
                  lui          s0, 51460
                  nop
                  add          s10, t5, s5
                  add          sp, a5, sp #end riscv_int_numeric_corner_stream_16
                  sltu         t6, s8, t4
                  srai         a7, s1, 7
                  or           s8, gp, s4
                  srai         s2, s10, 14
                  sll          s8, t6, s8
                  sra          s7, a6, gp
                  sltiu        s2, s10, -1011
                  sub          s11, t5, sp
                  sub          a7, a6, a0
                  auipc        s7, 496710
                  xori         a7, a2, 964
                  add          gp, s6, t3
                  slt          ra, a6, gp
                  lui          s5, 624217
                  srl          s6, s3, s10
                  or           s10, t1, s4
                  sltiu        a4, s2, 981
                  xor          t0, s6, a1
                  add          a7, s4, a5
                  ori          a6, t2, -825
                  nop
                  srl          zero, s7, a2
                  xor          s5, a1, s11
                  slti         s7, s5, 1443
                  srl          a7, sp, s5
                  sra          s10, s8, a0
                  nop
                  xor          s11, t6, a0
                  sltu         s5, t2, s6
                  xor          sp, zero, gp
                  lui          a4, 368148
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           a6, 0x80000000
                  li           s9, 0x6e3f4721
                  li           a3, 0x7cc37a2
                  li           s8, 0xffffffff
                  li           s7, 0xffffffff
                  li           gp, 0x80000000
                  li           t5, 0xffffffff
                  li           t4, 0x6911561a
                  li           s6, 0x0
                  addi         t4, s9, 1316
                  auipc        s6, 385868
                  nop
                  nop
                  auipc        t5, 666232
                  lui          gp, 1004631
                  nop
                  add          a6, s2, s9
                  sub          a6, s9, t4
                  auipc        a3, 31976
                  addi         a3, a6, -1891
                  lui          s9, 197827
                  addi         s9, s7, -1012
                  lui          t5, 785355
                  addi         t5, a6, -1881
                  nop
                  lui          gp, 470252
                  addi         s8, s9, -1273
                  lui          a6, 251440
                  auipc        a3, 801279 #end riscv_int_numeric_corner_stream_14
                  xori         sp, s2, -2033
                  srai         t4, zero, 30
                  sll          t1, a6, a1
                  slli         s6, a2, 8
                  srl          s9, s6, t6
                  or           a0, tp, s8
                  ori          s6, s4, 1019
                  xor          s0, s11, t5
                  sltiu        t1, s8, -416
                  xor          a5, tp, t6
                  sltu         sp, a0, a0
                  lui          gp, 490433
                  xori         t6, zero, 833
                  ori          zero, s8, 476
                  sra          s2, t6, s1
                  xor          s0, t1, s8
                  slli         s11, t1, 13
                  addi         t6, zero, 1619
                  slti         s10, s8, -1453
                  andi         s8, a4, 1814
                  srai         s8, a5, 7
                  sll          a6, s9, t1
                  add          s9, a3, t2
                  nop
                  and          s0, a0, a7
                  addi         s9, t1, -837
                  sra          s10, zero, a0
                  xori         t3, a4, -1273
                  slli         a7, t0, 25
                  ori          t0, t2, 350
                  srai         t4, a5, 16
                  xori         tp, a2, -1624
                  lui          zero, 455663
                  or           s9, t3, s11
                  auipc        ra, 902806
                  add          s5, a7, s4
                  sra          gp, a1, s11
                  ori          a6, sp, 1030
                  addi         s11, s2, 1497
                  slt          s6, s9, a7
                  srli         a6, s2, 28
                  add          t3, t2, ra
                  srl          s8, a6, t6
                  slt          ra, a5, ra
                  xor          s0, s11, s2
                  nop
                  or           s8, a5, s10
                  auipc        a1, 754318
                  sll          a0, tp, s3
                  auipc        s4, 687823
                  auipc        t1, 677889
                  lui          s8, 798942
                  slt          s11, t2, s8
                  xor          ra, t1, s7
                  slt          a7, s9, t2
                  add          a1, ra, a1
                  sra          a6, s10, s8
                  nop
                  sltiu        a2, a3, 2
                  slti         s0, t2, -693
                  srai         s6, s5, 3
                  xori         ra, s9, 605
                  ori          a2, a7, 412
                  ori          t3, tp, -1815
                  sltu         sp, sp, tp
                  sltu         a0, zero, tp
                  srai         tp, a7, 25
                  addi         a2, s1, 1067
                  sub          a0, s11, s3
                  srai         a2, sp, 25
                  addi         a0, t4, -1974
                  srl          a6, a0, s6
                  ori          s11, gp, 968
                  xori         gp, t3, 580
                  lui          t0, 707532
                  sub          t5, a3, a2
                  auipc        a6, 873087
                  lui          t1, 371042
                  lui          t6, 342504
                  srli         t1, a6, 4
                  sltiu        s6, s2, 334
                  xor          s0, s11, s2
                  slti         s10, s11, -58
                  slti         s2, s5, 1953
                  sub          s5, t1, sp
                  slli         s7, a1, 0
                  lui          gp, 426098
                  sltiu        s4, a0, 376
                  andi         t4, ra, -637
                  slli         a0, a4, 6
                  xori         t6, ra, 1611
                  slti         t3, a0, 1018
                  add          s9, t5, s3
                  andi         t5, s9, -489
                  sltu         s4, a6, t3
                  slt          s6, a6, sp
                  andi         s11, a2, 505
                  nop
                  lui          a7, 6606
                  srl          s4, s8, a0
                  auipc        a7, 193472
                  srli         t4, s0, 8
                  andi         a5, t2, 1258
                  srai         s0, s0, 4
                  sltiu        tp, s11, 907
                  sra          s5, t5, s6
                  srl          t5, t4, a3
                  addi         t3, s11, 950
                  xor          s10, a5, zero
                  sub          t5, zero, a5
                  slti         t1, s8, 332
                  andi         s6, s10, -763
                  srl          s10, a1, t2
                  sll          s2, a3, s9
                  add          gp, a1, s10
                  sltu         a7, gp, s1
                  nop
                  srli         s10, a4, 6
                  sltu         a5, s8, s3
                  andi         s7, s11, -1364
                  slti         sp, s3, 1998
                  addi         a1, s3, 1110
                  xori         s0, t3, -1546
                  srai         a6, s6, 31
                  slti         t5, s5, -1007
                  nop
                  ori          a1, a1, -1075
                  auipc        a5, 1022702
                  sll          t0, s5, a1
                  srl          t1, sp, s11
                  and          a2, s11, t6
                  xor          s6, t2, a4
                  addi         a2, a0, -265
                  sra          s8, ra, a0
                  sltu         t0, s7, a5
                  ori          t1, t3, 1428
                  srli         s6, s4, 11
                  sltu         s10, s8, a6
                  add          s7, a3, gp
                  slti         s4, zero, 1424
                  add          a7, t4, a3
                  srai         s6, a7, 23
                  ori          s10, s3, -1416
                  slti         s2, s7, -2038
                  srli         s10, s6, 17
                  lui          s4, 895104
                  sltiu        s0, s6, -1675
                  addi         tp, t4, 1788
                  slli         s6, s2, 11
                  nop
                  and          a5, ra, s3
                  srli         s10, s2, 27
                  slt          s11, sp, tp
                  sltiu        zero, s5, -1759
                  xori         a6, zero, 934
                  lui          a4, 802801
                  srl          gp, s5, sp
                  andi         a3, a3, 5
                  andi         t3, s4, -877
                  ori          s4, gp, 1398
                  xori         a3, s2, -581
                  ori          tp, t3, 1244
                  slti         a1, s1, 2008
                  ori          zero, t5, 122
                  slli         s5, t2, 7
                  auipc        t4, 1003985
                  sll          a3, a2, a6
                  srai         t5, s9, 10
                  andi         s9, a2, -512
                  sll          t3, a1, t6
                  and          a2, t6, s5
                  andi         a7, t2, -1699
                  sra          a3, a0, a1
                  auipc        a6, 192012
                  sltiu        tp, s3, 1118
                  slti         s2, s3, -1056
                  sub          a4, zero, t5
                  slti         t1, t5, 358
                  nop
                  sra          a1, s11, a5
                  andi         a4, s3, 2031
                  ori          s6, s10, -1630
                  xori         s2, s6, 1489
                  slli         s4, a1, 11
                  sltu         a2, t5, s11
                  sub          a3, t1, ra
                  sltiu        a3, s9, 1221
                  srl          s4, zero, tp
                  sltu         s4, t4, s8
                  auipc        s0, 810673
                  srl          a3, a5, t5
                  add          ra, a4, a4
                  sltiu        s8, t1, 530
                  xor          s0, t1, s3
                  and          s4, a1, s8
                  slt          s11, a2, ra
                  ori          s9, t2, 1080
                  or           t3, s3, t0
                  slli         gp, a2, 26
                  sra          a1, t2, s7
                  slt          sp, s11, a5
                  xor          sp, s4, s3
                  xor          t4, s0, gp
                  srl          a2, t2, s8
                  srl          s0, a0, gp
                  srl          t4, s3, t6
                  addi         a1, a2, 683
                  sub          ra, t3, s1
                  ori          a6, gp, -122
                  sub          t0, t6, a6
                  xor          a1, t3, a7
                  xori         s7, s9, 1546
                  lui          s8, 1040414
                  addi         zero, a3, -163
                  ori          ra, t5, 869
                  add          ra, a2, a6
                  sltiu        gp, t5, 1708
                  auipc        s10, 500201
                  or           a3, t4, a2
                  slt          t1, s10, s3
                  and          a2, s4, s11
                  srli         t3, s2, 9
                  nop
                  or           s7, s5, a3
                  or           t1, s9, t4
                  slti         t0, a4, 1592
                  sll          a1, s2, a7
                  xor          ra, t0, a3
                  srli         s7, t4, 19
                  sltiu        s4, s6, 31
                  slti         a1, s0, 1574
                  slti         zero, gp, 232
                  add          a7, sp, zero
                  srai         sp, zero, 12
                  srli         s11, ra, 24
                  sltiu        s2, s3, 1448
                  andi         t6, ra, -1095
                  nop
                  sra          s9, s3, s3
                  sltu         s6, s6, zero
                  and          s10, a7, tp
                  sltiu        a7, s10, 1225
                  ori          a2, s7, -784
                  sra          s7, t1, t0
                  sra          t6, t0, sp
                  and          a3, a1, t0
                  and          a4, t4, zero
                  srli         a3, s2, 14
                  xori         s8, a0, 1578
                  lui          s9, 404804
                  srl          t0, tp, s10
                  srl          t0, a0, t6
                  auipc        t1, 973583
                  xor          s5, gp, s7
                  sub          sp, s5, a2
                  or           s7, t5, t1
                  auipc        a3, 328824
                  slti         gp, t1, 1167
                  sltiu        tp, s3, 1199
                  slli         s11, tp, 25
                  addi         zero, gp, 1684
                  add          a0, s5, s11
                  lui          s9, 307758
                  slt          s11, s9, t1
                  sub          t0, ra, a7
                  xor          s7, a1, ra
                  srl          s5, s2, t0
                  ori          tp, t6, 1768
                  srl          s0, ra, s2
                  sltu         s10, s3, t1
                  sra          t1, gp, s6
                  srli         a3, a3, 2
                  srai         t5, t1, 25
                  slt          t4, ra, s7
                  addi         s11, t3, 833
                  sltu         s8, s2, sp
                  andi         s6, s3, 449
                  sub          a6, s11, sp
                  and          s9, s7, s3
                  add          s2, gp, zero
                  andi         a3, t4, -1529
                  sub          a1, gp, t2
                  slti         ra, a0, 79
                  ori          a0, zero, -541
                  srli         s9, s6, 28
                  addi         s6, s8, -2048
                  slti         t1, a7, 1236
                  srli         t5, t3, 6
                  sll          a6, a2, s4
                  sltu         s4, s11, s5
                  srai         s10, a1, 28
                  srai         tp, s7, 21
                  slt          tp, a5, s11
                  nop
                  sltiu        a7, a6, -996
                  sltu         zero, s5, s3
                  sll          a4, a4, t5
                  srai         t6, s10, 2
                  nop
                  lui          s6, 127513
                  slti         s11, s11, 1595
                  nop
                  sltiu        gp, s5, 1171
                  sll          gp, a7, t2
                  sra          s10, a5, a0
                  slli         s4, s6, 30
                  srl          t5, a1, s2
                  addi         s0, a7, 1040
                  slli         s2, t3, 2
                  sub          a0, a0, s2
                  slti         zero, tp, 180
                  sll          gp, s4, s0
                  lui          a6, 971499
                  slli         s7, s3, 30
                  addi         zero, s10, 811
                  slt          s5, t5, t5
                  srai         a1, s1, 14
                  xor          a7, s9, s8
                  auipc        a7, 814874
                  lui          s4, 185255
                  auipc        s9, 218267
                  sltiu        a0, s11, -1855
                  xori         s2, t4, -1101
                  xor          s5, t6, zero
                  ori          a7, s7, 1258
                  srl          a0, s7, a0
                  auipc        s9, 996527
                  lui          t1, 511694
                  sub          t1, a4, s10
                  xori         a2, a3, 1079
                  srli         a1, gp, 3
                  sra          a1, sp, a2
                  sltiu        a0, s2, -934
                  auipc        tp, 464816
                  srli         t3, s7, 7
                  slti         t3, t3, -1199
                  and          s7, s0, gp
                  sltiu        s4, a2, -175
                  or           t0, t4, t5
                  sra          t1, s8, a7
                  xori         s10, s10, 1453
                  sltu         t1, t6, s7
                  nop
                  sltu         s5, t1, sp
                  andi         s2, s3, 186
                  sltu         s10, s8, s3
                  srli         s11, s5, 3
                  lui          s0, 33626
                  andi         a7, zero, 934
                  addi         t1, s1, 1371
                  ori          a2, s5, 1749
                  slt          s6, s2, t4
                  srai         a5, zero, 22
                  auipc        a7, 770476
                  srli         s8, t2, 30
                  sltu         a7, s0, a5
                  srli         gp, a2, 8
                  slt          t6, s5, s2
                  srli         s2, s3, 10
                  sltiu        s8, s0, -1304
                  srai         t4, a5, 8
                  add          a4, s0, s6
                  auipc        sp, 483545
                  addi         a4, s3, 1425
                  sltiu        gp, s10, -50
                  auipc        t4, 239299
                  xor          zero, a0, ra
                  addi         ra, t4, -793
                  and          tp, s2, t1
                  auipc        a3, 894941
                  ori          tp, a4, 1695
                  andi         s11, a0, -1925
                  auipc        s10, 62541
                  xori         a0, s7, 914
                  or           s10, a6, ra
                  srai         a6, a7, 7
                  sub          t4, a0, t6
                  srli         sp, ra, 31
                  and          t3, t2, a1
                  add          a3, gp, t5
                  addi         s0, a0, -1458
                  sll          a6, a1, s10
                  slt          t0, a1, t3
                  srai         s6, a2, 12
                  xor          a4, a7, t5
                  sub          t0, ra, s11
                  sub          s0, s11, s6
                  sltu         s8, s3, a0
                  srai         t1, s7, 13
                  xori         t3, s10, -1574
                  ori          sp, s0, 1101
                  sub          t6, s1, a4
                  xori         s0, t0, 957
                  srai         s8, a6, 18
                  addi         ra, ra, 532
                  add          t4, a7, s10
                  addi         tp, s6, 1052
                  slti         s10, gp, 1014
                  sra          a4, s6, s11
                  add          t1, ra, zero
                  sub          s7, s2, gp
                  slti         a1, s9, -24
                  auipc        sp, 24696
                  slt          s11, zero, zero
                  ori          t4, t0, 1438
                  slli         tp, zero, 20
                  nop
                  sltiu        ra, t2, 1035
                  xori         s11, t6, -1414
                  srl          s8, t2, t6
                  or           s4, t6, a0
                  slt          a0, s10, s7
                  xor          a5, a0, a1
                  nop
                  addi         s7, s10, 1835
                  lui          s11, 249066
                  ori          a5, t4, -1436
                  auipc        gp, 1033812
                  sra          s10, a0, a3
                  sra          zero, a7, s3
                  add          zero, a4, t2
                  xor          a3, ra, t1
                  add          s4, a4, ra
                  slt          tp, s6, s9
                  sll          s8, s0, s3
                  and          t4, a4, a3
                  add          t0, a7, a6
                  xor          s0, s10, t4
                  sra          a7, gp, ra
                  nop
                  auipc        s9, 519378
                  sub          t1, s10, t4
                  srai         a7, s3, 31
                  slli         sp, t0, 15
                  srl          t1, tp, t4
                  slt          s5, t2, s0
                  or           s2, s2, gp
                  xor          s7, t3, a3
                  xor          gp, s8, a2
                  srai         s4, t5, 3
                  srli         t3, s5, 29
                  andi         s9, a2, 1259
                  sub          a3, s7, s2
                  srai         s4, tp, 26
                  slt          t1, s4, s11
                  slt          ra, s10, a2
                  addi         t0, s3, -2042
                  xori         s5, t3, 192
                  nop
                  sltiu        s5, a4, -1926
                  xor          s7, t5, ra
                  sra          a2, a4, a1
                  slti         t1, t0, 1945
                  slt          a3, s0, s0
                  sll          s2, t5, t0
                  auipc        s6, 974298
                  and          t4, t0, a1
                  xori         zero, a1, 1148
                  sub          s2, a2, s8
                  xor          gp, s0, a5
                  sltu         s0, t3, t2
                  ori          t3, a1, 60
                  sra          a1, t2, t6
                  sub          t0, a1, a5
                  sltu         t1, t5, a3
                  lui          zero, 489395
                  sltu         s2, s10, a7
                  slti         s10, a6, -335
                  ori          s11, s2, 233
                  sltu         s4, t5, t4
                  sub          t6, s3, a4
                  xori         tp, s5, -1162
                  add          s9, s2, t1
                  add          a6, t1, t2
                  srli         sp, a4, 6
                  sra          t1, s3, s7
                  addi         t6, t6, 341
                  andi         s7, a5, -69
                  slt          a0, zero, a7
                  sltu         s5, ra, t0
                  or           s0, ra, s2
                  and          a6, t1, s3
                  add          a4, ra, a4
                  and          tp, tp, s8
                  xor          t1, gp, a7
                  addi         t1, a3, 1600
                  addi         t4, a0, -130
                  slli         a4, s7, 31
                  add          t6, gp, t3
                  xori         ra, t2, -1282
                  sltu         gp, t4, s5
                  nop
                  srai         s10, tp, 3
                  or           zero, zero, zero
                  lui          a5, 79401
                  sltiu        a3, zero, -1295
                  add          sp, s9, s5
                  srl          s5, s4, s7
                  slti         s5, s2, -621
                  xori         s8, s4, 496
                  or           a4, s2, s10
                  andi         t6, s0, -121
                  srl          a3, a2, ra
                  xor          a7, s3, s8
                  xori         s9, s7, 188
                  xori         s2, a4, -1224
                  addi         s9, s4, 155
                  xori         t6, a7, -1601
                  srl          a7, t4, a2
                  srli         s5, s2, 1
                  srai         a1, s5, 5
                  sub          a5, s1, t5
                  ori          sp, t6, -2046
                  add          t1, tp, tp
                  sub          zero, s1, ra
                  and          a5, t6, t6
                  addi         s2, a2, -167
                  xori         a6, a7, 1700
                  srli         a4, ra, 1
                  andi         t0, a2, -858
                  andi         a3, s5, 1323
                  srl          a5, a5, t3
                  srl          t6, s8, sp
                  sra          gp, a3, s7
                  slti         t6, t2, 805
                  slli         gp, a1, 26
                  ori          ra, t5, -592
                  sll          t3, a3, t1
                  addi         s11, gp, 1330
                  slti         t5, ra, -270
                  li           gp, 0xd05e607f #start riscv_int_numeric_corner_stream_10
                  li           s4, 0xffffffff
                  li           a4, 0xe4222bc3
                  li           a6, 0xcc237812
                  li           s9, 0x80000000
                  li           s2, 0x0
                  li           a2, 0x0
                  li           a3, 0x80000000
                  li           tp, 0x0
                  li           s8, 0x80000000
                  lui          s8, 467074
                  nop
                  nop
                  auipc        s4, 674834
                  addi         s4, tp, 921
                  add          s8, a3, s4
                  sub          s8, s9, s2
                  lui          s4, 502762
                  auipc        a2, 555837
                  sub          tp, a6, tp
                  auipc        a4, 524909
                  add          gp, s8, s9
                  sub          a3, tp, tp
                  addi         a2, a3, -203
                  addi         tp, a2, 7
                  add          a6, s2, a3
                  add          a4, a4, a2
                  lui          gp, 853253
                  lui          a3, 833323
                  auipc        s9, 573952
                  addi         s4, a4, 571
                  auipc        s9, 414078 #end riscv_int_numeric_corner_stream_10
                  andi         s6, s11, 618
                  sltiu        s4, s11, 80
                  sll          t5, t6, s0
                  sltiu        tp, s2, -134
                  add          a3, t5, s9
                  andi         t3, a7, 1413
                  or           t4, t0, t3
                  slt          gp, t5, t2
                  slt          s7, t0, s5
                  sltu         a1, t4, a0
                  srli         a0, tp, 7
                  ori          sp, t5, -1597
                  ori          ra, t5, 1831
                  and          a1, s1, a6
                  sub          a6, zero, zero
                  slti         t5, a7, 1832
                  lui          s2, 971877
                  sltu         a3, a0, s2
                  srl          zero, a5, tp
                  add          s0, s1, s8
                  sll          s11, s9, s0
                  andi         a3, gp, 687
                  slt          zero, a5, a4
                  xor          s7, a1, a4
                  or           s11, a5, sp
                  nop
                  andi         ra, t5, -110
                  add          t4, sp, sp
                  add          a2, a2, a0
                  andi         s6, s1, -139
                  andi         t0, a7, -456
                  srl          a4, a3, t6
                  sltu         a3, s2, tp
                  slli         s7, s3, 1
                  addi         a0, s1, 1775
                  sub          a7, s4, a5
                  andi         s10, ra, 1662
                  xori         ra, a3, 270
                  and          gp, a2, t4
                  addi         a2, s3, -1862
                  ori          s10, sp, -348
                  addi         a6, a2, -1632
                  srl          t3, s8, s3
                  sra          a5, a5, t1
                  srli         s5, t6, 14
                  slli         s8, s6, 13
                  or           s4, a6, a4
                  add          t0, s5, tp
                  sltiu        a6, tp, -103
                  slli         t5, s3, 31
                  addi         a7, s9, 1830
                  srl          tp, a6, a7
                  sll          t0, a5, s9
                  auipc        a1, 425411
                  slt          s4, s3, zero
                  and          s0, zero, t3
                  addi         s9, a6, 480
                  sll          s10, s8, zero
                  sll          a0, gp, gp
                  nop
                  slti         s10, s10, 855
                  sltu         a3, a3, t1
                  sltiu        s6, t1, 1984
                  ori          s7, s5, -2017
                  sll          a6, s7, s2
                  slti         t4, a1, -1541
                  and          t1, t2, s5
                  sll          sp, a5, a4
                  addi         s7, tp, -2043
                  add          t3, s11, sp
                  lui          s6, 352803
                  sltiu        s11, t1, -179
                  srai         a5, gp, 8
                  srai         s9, s1, 0
                  and          s5, t0, s6
                  addi         s6, t0, 339
                  xori         s0, s5, -534
                  srli         a0, s3, 28
                  sub          s4, ra, a3
                  xor          s11, s2, s1
                  slli         a1, a0, 4
                  slli         a4, s1, 9
                  nop
                  sltu         sp, a7, a5
                  srai         a2, s9, 7
                  slt          a3, a4, a2
                  sll          t4, gp, t6
                  slt          s5, ra, s1
                  srli         a3, zero, 27
                  xor          t1, t1, sp
                  srl          gp, s2, s2
                  andi         gp, s10, 904
                  add          s5, t4, t0
                  xori         s7, a2, -1781
                  sra          a3, s1, s3
                  sltu         s11, a2, tp
                  add          s10, t0, s3
                  ori          zero, s10, 1254
                  add          a7, a3, a1
                  nop
                  and          gp, t1, t6
                  srai         s11, a7, 8
                  nop
                  and          a2, ra, s3
                  slti         a3, a3, 1770
                  sltiu        s7, a0, -692
                  srli         a6, s6, 7
                  xor          t4, t5, gp
                  slt          t1, a6, s2
                  slti         a4, t0, -1408
                  srai         a5, zero, 23
                  srai         t5, a6, 9
                  slli         s0, a3, 19
                  srli         zero, s1, 5
                  sra          s0, t0, a2
                  sra          tp, t3, s6
                  add          s8, ra, zero
                  slti         s10, a1, 129
                  xor          s11, ra, s2
                  sltu         tp, a7, zero
                  sub          t5, s6, s8
                  nop
                  sltiu        s2, s5, 724
                  sltu         a6, a2, s0
                  addi         s4, t1, -2016
                  sra          a1, s11, s9
                  and          a5, a2, a5
                  xor          a3, tp, ra
                  xor          a7, t2, sp
                  srli         t5, s5, 27
                  srli         a7, s9, 4
                  or           sp, a4, s10
                  and          a5, sp, zero
                  sub          s8, a1, a5
                  srai         a2, s5, 30
                  slt          a0, t4, s8
                  nop
                  and          s10, s7, t5
                  nop
                  and          tp, a5, a7
                  srai         s7, a3, 16
                  addi         t0, t6, 1784
                  addi         a3, t5, 1869
                  addi         gp, t1, -1416
                  auipc        tp, 767148
                  ori          a3, t1, 1223
                  lui          s0, 631347
                  andi         tp, t2, -1181
                  sltu         s7, t0, a0
                  slt          sp, a3, s6
                  addi         zero, ra, -684
                  xori         t6, t0, 657
                  srli         t6, s5, 2
                  slti         gp, s5, 1376
                  sltiu        zero, s1, -1740
                  or           a4, a0, gp
                  add          ra, s2, t2
                  sra          s4, zero, a6
                  nop
                  slt          a5, t3, s5
                  srai         s6, a6, 11
                  xori         a1, a5, 374
                  sll          tp, a4, t3
                  ori          s0, s7, -1637
                  slti         a4, s7, -904
                  xor          s2, gp, t2
                  andi         a2, t4, 1475
                  slti         a2, s7, 1308
                  slti         t3, a1, 1983
                  sra          s10, s3, s4
                  slli         s10, a5, 29
                  sltiu        ra, a5, -1006
                  xor          s2, t4, s0
                  andi         t4, a5, -913
                  addi         t0, s5, 1838
                  xor          s8, s5, gp
                  sltu         sp, t5, tp
                  srai         a5, s9, 29
                  sltu         t5, a7, t3
                  sltiu        a7, s0, -641
                  slli         ra, tp, 22
                  slt          gp, s11, s7
                  sra          s11, s4, a5
                  slli         t0, s4, 2
                  ori          t3, a1, -222
                  lui          a7, 334527
                  slli         sp, s10, 11
                  and          s2, s3, s4
                  or           s0, zero, a3
                  sltu         a3, s5, s0
                  andi         s11, sp, -799
                  nop
                  sub          t1, s6, a5
                  slti         s9, s2, -1465
                  slt          a3, s4, s10
                  auipc        s6, 526690
                  lui          gp, 609000
                  ori          zero, s7, -1766
                  srli         a1, s9, 31
                  andi         s10, s2, 1188
                  slli         t4, a2, 9
                  nop
                  slli         s11, s6, 18
                  xor          ra, gp, s1
                  nop
                  slt          ra, a4, ra
                  slli         ra, t5, 3
                  slli         gp, s10, 6
                  add          t3, t5, ra
                  and          a7, t5, s7
                  slti         s11, a2, -1981
                  lui          a5, 863231
                  nop
                  sub          s9, t6, s2
                  auipc        s5, 256205
                  srli         s8, s11, 10
                  sll          a4, s0, s7
                  slli         a7, a0, 4
                  slli         s7, s11, 18
                  add          a2, a7, sp
                  sltiu        t1, a7, -113
                  srai         s8, s2, 9
                  slt          ra, s11, t3
                  sra          a3, s9, a7
                  sub          s8, t5, t3
                  lui          a1, 342496
                  sltiu        a3, a1, -1594
                  addi         a0, a2, 1803
                  sltiu        s6, s9, -747
                  nop
                  add          sp, t6, t5
                  add          s10, s7, t2
                  sll          tp, a2, ra
                  sltu         gp, a0, s9
                  add          zero, a1, s1
                  or           s0, s5, t3
                  slli         gp, s8, 2
                  srai         a6, a0, 26
                  sra          s9, s1, a7
                  slti         ra, s6, -1954
                  sll          s5, a5, zero
                  srli         t6, s5, 20
                  lui          t3, 84881
                  xor          t4, s3, t1
                  sltiu        t4, a5, -44
                  sub          s9, s3, s4
                  nop
                  srl          t0, t3, s11
                  sltiu        tp, t5, 25
                  sll          s8, a2, s8
                  addi         a6, s0, 478
                  slt          s5, t3, t0
                  sll          s9, s0, ra
                  slti         s5, s5, 1807
                  srli         s5, t4, 3
                  auipc        a5, 404832
                  xor          a4, s2, tp
                  nop
                  sltiu        a0, s7, -1919
                  sra          a2, a1, a1
                  sub          s5, s10, s7
                  slli         s7, gp, 14
                  andi         s4, s6, -603
                  sub          gp, s4, t0
                  xori         s4, s3, 381
                  ori          a3, t2, -1653
                  add          t5, s3, a1
                  nop
                  auipc        s9, 255414
                  xor          a3, s0, a0
                  xori         t3, a6, 565
                  srli         s5, s11, 9
                  and          tp, t2, a2
                  nop
                  slti         a3, s0, 519
                  srli         sp, s5, 20
                  srli         t1, zero, 28
                  andi         t5, a0, -1781
                  slli         t6, a1, 19
                  lui          t6, 35970
                  nop
                  andi         s4, a7, -1980
                  sra          s10, zero, t5
                  srl          a2, t5, a6
                  sltu         a2, t0, sp
                  xor          s4, sp, s0
                  xori         s0, s5, -1175
                  srl          gp, a3, a0
                  sll          a5, tp, ra
                  slti         s2, s7, -244
                  or           t0, a2, a5
                  lui          zero, 379546
                  lui          t4, 141363
                  slti         s10, s0, 1512
                  and          s10, s8, a2
                  slt          sp, a4, a6
                  sll          gp, s7, s6
                  add          t5, a5, a1
                  ori          t6, s3, -603
                  and          zero, a1, s9
                  and          t1, t6, a5
                  slli         s10, s3, 13
                  ori          gp, s9, 205
                  srli         ra, a2, 4
                  srl          s8, s6, s8
                  addi         t0, s0, -1800
                  or           s8, s7, a7
                  slti         t6, a6, 311
                  sra          s4, s0, a0
                  auipc        a3, 354637
                  slli         t5, a3, 7
                  slti         t4, s4, 1755
                  slti         s5, tp, 1055
                  srl          s2, s7, a1
                  sltiu        a3, gp, -1742
                  xor          gp, tp, ra
                  slti         a0, tp, -32
                  srli         zero, zero, 18
                  addi         t5, t2, -881
                  sra          s11, s1, t3
                  auipc        a6, 470576
                  lui          a1, 62773
                  ori          s8, tp, -38
                  slli         t6, s7, 4
                  srl          s0, ra, t5
                  sll          a3, a4, a3
                  ori          zero, ra, 334
                  sra          a1, a2, ra
                  srl          s11, s9, t3
                  sra          a0, zero, s0
                  sll          a5, t6, a2
                  add          s2, s3, a1
                  andi         s5, a4, -1140
                  sra          t6, ra, s0
                  srai         a6, s9, 4
                  xor          t1, s4, a5
                  sra          ra, s3, s1
                  sltiu        zero, t2, 1506
                  andi         ra, t3, -1866
                  xor          s10, s0, tp
                  lui          sp, 628064
                  srai         s0, t0, 4
                  add          ra, a6, t3
                  slli         a4, t0, 24
                  xor          tp, a4, ra
                  sra          sp, a2, a0
                  slti         s5, t3, 2010
                  nop
                  slt          a4, ra, gp
                  lui          t0, 249933
                  ori          tp, s5, -394
                  slt          t1, s2, a6
                  slt          a3, t5, a6
                  sll          a3, gp, s6
                  srli         t0, a6, 29
                  srai         s0, s11, 8
                  sub          s5, zero, s10
                  srli         s7, a0, 18
                  srai         s2, a6, 25
                  slt          s7, s2, s9
                  sltu         a7, t6, a7
                  xori         a3, sp, 655
                  srai         a4, t3, 1
                  srai         s6, t6, 18
                  or           t6, a2, s5
                  xor          s8, t0, a5
                  lui          s7, 64076
                  srai         t3, t6, 18
                  ori          tp, t4, -1933
                  sra          a4, s4, t2
                  sub          a4, t5, ra
                  xori         t1, a5, 1045
                  lui          s8, 338775
                  nop
                  sra          a7, s3, s2
                  sra          s0, s1, s4
                  and          gp, t4, a2
                  slli         s4, t4, 22
                  srl          a1, a3, s2
                  sltu         s9, t0, a0
                  slti         a3, s0, 760
                  nop
                  xor          s8, s10, t2
                  sll          s4, s3, t0
                  add          s8, t0, sp
                  slli         a3, s0, 7
                  sll          s0, s1, a2
                  sub          a7, s4, s11
                  sra          a3, s1, zero
                  and          a2, s9, a5
                  slli         a6, s4, 1
                  slti         t3, t5, 1508
                  xor          s2, a0, ra
                  add          s9, a0, t2
                  add          t6, t5, zero
                  xori         a2, s2, -1001
                  xori         a5, s0, -150
                  andi         a6, s2, -1288
                  slt          s9, a6, a6
                  srli         s7, s5, 8
                  slti         t4, s2, 1245
                  sltu         a6, s6, t0
                  xori         t1, a6, -1792
                  and          a2, a2, a4
                  slti         s7, a0, -372
                  and          t0, a4, sp
                  sltu         a7, s6, t5
                  xor          a2, t4, s3
                  slti         s0, s1, -6
                  sll          t1, s5, s4
                  sra          s5, zero, a6
                  lui          a3, 417720
                  and          t3, s11, s2
                  slti         t4, tp, 181
                  xor          s2, t1, a6
                  and          t4, s2, a6
                  xor          s8, sp, a3
                  srai         s0, ra, 0
                  srli         t3, s3, 15
                  auipc        a3, 864169
                  addi         s9, a5, -152
                  sub          a6, s8, t6
                  andi         s9, s9, -1505
                  sub          gp, s1, s11
                  sll          a7, s9, s2
                  srl          a1, t0, a7
                  sub          a7, t1, a3
                  slli         s8, t5, 22
                  or           zero, t1, s3
                  nop
                  slli         s6, s6, 23
                  srai         a2, a4, 16
                  sra          a1, sp, s6
                  sltiu        s4, zero, -1451
                  srl          t6, s9, sp
                  ori          t6, s0, -1117
                  srl          a7, s7, s10
                  xor          s11, tp, s5
                  sltu         a4, s3, ra
                  sub          a6, a7, t3
                  ori          ra, t0, 164
                  slti         t5, s6, 1685
                  srli         t6, a5, 2
                  slli         s2, sp, 8
                  xor          a3, t1, a6
                  slti         a3, tp, -792
                  nop
                  auipc        ra, 255708
                  srli         t3, a1, 0
                  slli         gp, t4, 17
                  sra          a4, t4, a6
                  add          s7, a0, a3
                  addi         t6, t4, -478
                  slli         a0, a6, 12
                  add          s2, tp, t5
                  sra          s0, gp, gp
                  li           s8, 0x465a7ff6 #start riscv_int_numeric_corner_stream_2
                  li           s11, 0xffffffff
                  li           s7, 0xffffffff
                  li           t5, 0x80000000
                  li           a0, 0x80000000
                  li           ra, 0x80000000
                  li           t0, 0xffffffff
                  li           a2, 0xffffffff
                  li           s5, 0x0
                  li           s10, 0x80000000
                  addi         s8, s11, -1167
                  sub          ra, a2, a0
                  sub          s8, a2, ra
                  lui          s8, 733216
                  nop
                  nop
                  auipc        t5, 895205
                  add          s5, t5, s10
                  sub          a0, s5, s8
                  add          s10, a2, s10
                  auipc        t0, 213783
                  auipc        s8, 276137
                  sub          s8, s11, s7
                  sub          s8, s11, ra
                  nop
                  lui          s11, 861748
                  sub          s10, s7, a0
                  sub          s10, s7, ra
                  sub          s11, t0, ra
                  nop
                  add          s7, ra, a2
                  nop #end riscv_int_numeric_corner_stream_2
                  addi         s4, t5, 1699
                  and          a0, ra, s1
                  or           t3, s3, s10
                  andi         t3, a6, -1654
                  sub          t6, t6, s8
                  andi         a7, s4, 1135
                  sub          s7, a4, a0
                  sltiu        a4, t2, -1219
                  xori         ra, t6, -1690
                  nop
                  sra          s10, s11, a0
                  xor          a1, s10, a0
                  sltiu        a1, a0, 712
                  or           t0, t2, a2
                  auipc        s9, 19153
                  add          a2, t2, a4
                  slti         sp, a7, -801
                  xor          ra, zero, s3
                  srai         a2, t4, 4
                  srl          t5, t3, s5
                  sra          s9, sp, t2
                  addi         a2, a0, -1177
                  and          a2, s4, s1
                  xori         s2, sp, 522
                  auipc        a2, 993337
                  sltiu        t5, s6, -152
                  lui          s6, 937492
                  srli         s6, a5, 30
                  srli         t0, s7, 21
                  srai         a0, s7, 25
                  auipc        s5, 822620
                  sll          ra, s8, s5
                  sra          t0, a4, a3
                  andi         s0, t1, -919
                  li           a4, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           a7, 0xffffffff
                  li           a6, 0x80000000
                  li           a5, 0xffffffff
                  li           sp, 0x80000000
                  li           s2, 0x80a86d11
                  li           s4, 0xffffffff
                  li           gp, 0xffffffff
                  li           s9, 0x0
                  li           a2, 0x5f3555bb
                  add          s9, a2, a7
                  lui          s4, 81446
                  auipc        gp, 826665
                  addi         gp, gp, -1998
                  add          a6, s2, a6
                  auipc        s9, 642889
                  addi         a7, s2, 900
                  nop
                  add          a5, gp, a7
                  sub          a7, gp, a5
                  add          a2, sp, a2
                  add          a5, s4, s2
                  auipc        s2, 999049
                  add          a5, s2, s4
                  auipc        s2, 213880 #end riscv_int_numeric_corner_stream_12
                  add          t0, s3, s4
                  auipc        t0, 580499
                  slli         t4, s6, 3
                  addi         tp, s8, 1919
                  add          t5, s10, t5
                  andi         t6, s3, 1381
                  srl          t3, s9, t0
                  sra          t4, s11, a4
                  or           s4, a6, s7
                  srl          gp, t2, ra
                  sltiu        s7, s0, 1202
                  or           s11, a5, t4
                  xor          s6, a1, t2
                  addi         tp, t3, 442
                  lui          gp, 795880
                  sltu         s7, s4, s5
                  and          zero, t5, s7
                  andi         s10, t6, 186
                  srli         gp, s11, 17
                  add          t4, s1, a5
                  slli         s2, t4, 10
                  ori          s9, a6, 1777
                  sltiu        t1, t5, -1310
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           t6, 0x0
                  li           s0, 0x80000000
                  li           a4, 0x80000000
                  li           s10, 0xffffffff
                  li           s5, 0x80000000
                  li           t4, 0x0
                  li           s2, 0x0
                  li           a2, 0xffffffff
                  li           a0, 0x80000000
                  nop
                  addi         a2, t6, -1068
                  auipc        t6, 330063
                  addi         s0, s5, -736
                  addi         a4, s10, -1353
                  nop
                  addi         s10, t6, 741
                  addi         a2, a4, -1988
                  auipc        a4, 796595
                  add          s10, t6, s5
                  addi         s8, a0, -210
                  addi         t4, a2, 1505
                  lui          t6, 955079
                  lui          a4, 182709
                  add          a2, s0, s5
                  nop
                  nop
                  add          a2, s2, a2
                  lui          s10, 52381
                  addi         s2, t4, 1383
                  add          a2, a2, s2
                  lui          a4, 264355
                  auipc        a4, 1014062
                  lui          s5, 699033
                  auipc        a0, 904327
                  add          a0, a0, s0 #end riscv_int_numeric_corner_stream_8
                  xori         s2, s1, 598
                  andi         tp, s8, 310
                  xor          s8, s0, a2
                  xori         s9, t4, 174
                  sll          t4, a5, a6
                  slt          s2, s9, a2
                  ori          s2, zero, 1376
                  sra          s2, t4, t6
                  sub          a5, a0, a5
                  slli         s6, t5, 26
                  xor          s11, zero, gp
                  and          s2, zero, t4
                  andi         t0, s0, 303
                  or           a4, a7, s5
                  andi         gp, s2, -300
                  slli         s10, s5, 9
                  or           t6, s9, t1
                  sra          t3, a6, ra
                  sra          ra, t4, t6
                  sra          a0, zero, t0
                  auipc        a5, 852288
                  slli         t0, zero, 22
                  sll          a3, s4, a1
                  sltiu        a5, s4, -1193
                  nop
                  auipc        a7, 417986
                  or           tp, a1, ra
                  srl          sp, s9, a6
                  sltu         s10, a5, t1
                  ori          gp, t3, 859
                  sltiu        t4, sp, 2039
                  ori          gp, t2, 1115
                  or           a3, s3, s7
                  xori         t1, s4, -1096
                  slli         a2, s1, 18
                  auipc        a6, 474789
                  sltiu        a0, a3, -775
                  xori         t4, ra, 1429
                  sra          gp, t6, s0
                  addi         s7, s4, 2043
                  sltu         s9, s11, s10
                  slti         s10, a7, 376
                  ori          zero, ra, -1052
                  sltu         a2, s3, gp
                  add          s6, s1, s6
                  auipc        s11, 1037233
                  xori         a5, t6, 1020
                  or           a2, a1, a5
                  ori          s5, s0, 1467
                  slt          s0, s9, t4
                  xor          zero, zero, tp
                  slt          tp, a3, sp
                  sub          s6, s10, s4
                  xori         a6, gp, -477
                  srli         s11, t4, 17
                  or           t4, a4, t5
                  xori         s8, a1, -1034
                  xor          t1, s9, a1
                  or           t4, a5, s0
                  or           a7, t1, s4
                  and          a5, a1, t0
                  sltu         ra, t2, t3
                  and          s4, a1, zero
                  andi         t6, t2, 1836
                  auipc        s8, 800011
                  ori          a5, s4, -354
                  srai         t5, s5, 26
                  srai         a7, s9, 25
                  xor          a5, s8, s3
                  sltu         gp, s9, gp
                  ori          s8, s7, 1085
                  or           gp, t4, a3
                  srai         s4, a2, 7
                  srli         a4, t6, 5
                  xor          t4, t6, t2
                  srl          t1, s10, a7
                  xori         s11, s4, 375
                  sub          t5, s2, a4
                  lui          ra, 289244
                  and          t6, s6, s2
                  slt          t6, s0, a7
                  and          t3, gp, gp
                  slli         gp, a0, 5
                  nop
                  sra          a2, a0, s11
                  sltiu        zero, a0, -1537
                  auipc        gp, 949826
                  srai         t5, s10, 7
                  sll          a0, s2, t1
                  andi         a6, sp, 208
                  ori          a1, s2, 1086
                  sub          a3, t0, a0
                  ori          a5, zero, -1017
                  sltu         a4, a7, t2
                  srli         ra, s0, 22
                  srli         t4, t2, 12
                  lui          s11, 724750
                  slli         t6, t1, 26
                  sra          ra, a0, t0
                  auipc        t4, 231366
                  sub          a3, a0, s5
                  sltiu        t3, a5, 1582
                  slt          t0, a0, a0
                  xor          ra, a7, s0
                  slt          gp, zero, s4
                  slli         s11, s4, 24
                  addi         a3, a2, 1945
                  lui          s5, 237510
                  slli         s9, s11, 23
                  slti         s6, s10, 678
                  xor          s8, a4, s11
                  nop
                  sub          ra, gp, t2
                  add          t3, a0, a4
                  sltiu        s10, t2, 701
                  auipc        a7, 194073
                  srl          tp, s4, a1
                  sltu         t3, t6, s10
                  srai         s10, zero, 23
                  srai         s4, s11, 6
                  sub          a7, t4, a6
                  sltu         a2, a6, t0
                  sub          s10, s4, zero
                  sltiu        a2, a1, 640
                  and          s7, a7, t2
                  slti         t3, ra, -717
                  auipc        s6, 557309
                  sub          a5, tp, t2
                  nop
                  and          t3, a6, t6
                  xor          s5, t4, s9
                  sll          a4, sp, t2
                  or           s7, zero, t1
                  srl          ra, a6, s4
                  sll          t6, s6, s9
                  srai         s10, tp, 8
                  or           a3, sp, s7
                  xori         s4, zero, -1932
                  auipc        sp, 399464
                  ori          a7, s10, -1249
                  sltu         gp, a0, s10
                  srai         a4, a0, 9
                  srli         a2, a4, 21
                  srai         a2, s9, 26
                  addi         a1, s6, 701
                  ori          a1, t5, -212
                  auipc        ra, 229135
                  add          a7, s8, a6
                  addi         t6, a2, -1823
                  and          t4, a3, t5
                  srl          s5, s11, gp
                  or           s4, s8, a0
                  andi         s5, t5, -1430
                  sra          t0, a4, s9
                  srli         t5, a5, 1
                  lui          t6, 843822
                  srl          s11, s1, s10
                  srl          t1, gp, s3
                  auipc        t3, 559657
                  xor          tp, t3, s10
                  sltu         s10, a7, s1
                  slt          a1, a2, s0
                  slt          a5, s8, t2
                  sltu         s5, ra, a7
                  slli         a1, s0, 11
                  srli         t0, s0, 4
                  auipc        a6, 1001456
                  srl          ra, s9, t3
                  xori         a7, gp, -578
                  slt          a1, s3, t3
                  srl          s5, t6, ra
                  sub          a2, s7, t3
                  sll          t6, a0, s9
                  addi         a1, a6, 1887
                  sra          tp, t1, s4
                  xori         a6, t5, -1367
                  and          a3, s8, s4
                  srai         sp, s11, 17
                  srl          zero, a0, s0
                  sltiu        s0, zero, -1556
                  slti         t5, t2, -1419
                  slti         tp, gp, -619
                  srli         s9, sp, 8
                  and          a2, t5, s6
                  nop
                  slti         s7, a5, -418
                  srai         t0, sp, 0
                  slt          s2, gp, a6
                  sll          a0, s3, s0
                  srai         gp, tp, 1
                  slti         s9, a2, -1433
                  add          s8, s2, sp
                  or           s9, t3, t5
                  slli         t4, t6, 24
                  nop
                  sub          a7, s3, t0
                  sub          s2, a4, s11
                  srl          a6, s9, a1
                  addi         a3, tp, -1351
                  xor          ra, a5, s2
                  srli         a0, t1, 20
                  and          a5, a4, tp
                  andi         s0, s2, 1015
                  srl          a6, s10, t3
                  lui          s10, 773720
                  auipc        s2, 886701
                  ori          a2, s11, -53
                  sltu         zero, s3, s3
                  auipc        tp, 47704
                  sltu         t6, a5, s2
                  and          zero, s6, t3
                  lui          t3, 562562
                  and          s6, t2, s3
                  srai         a7, t2, 15
                  or           s11, ra, ra
                  addi         s9, s10, 160
                  and          s7, s3, s9
                  srli         a0, s9, 9
                  sra          a4, s10, a7
                  ori          a5, s9, 1312
                  ori          s2, s4, 440
                  srl          a6, s6, s0
                  slt          s5, s0, a3
                  or           s7, a0, t1
                  srl          t4, s9, s0
                  nop
                  srl          a0, a5, a2
                  sll          a7, a3, a4
                  auipc        t3, 825990
                  xori         a6, s0, 821
                  sltiu        s9, t2, -556
                  srl          t3, zero, a5
                  auipc        t3, 676561
                  sltu         zero, s11, t4
                  auipc        a3, 203556
                  srai         gp, a6, 13
                  slt          a2, s4, t0
                  ori          gp, a5, -1570
                  sltu         ra, s2, t1
                  sra          a6, t1, a3
                  sll          t1, a3, s5
                  srl          s4, tp, a6
                  add          a4, s2, zero
                  ori          t4, tp, 369
                  sub          a0, t1, s0
                  and          s2, s10, s4
                  sll          s7, a0, t3
                  add          s5, a3, a3
                  sra          a3, gp, zero
                  andi         s0, tp, 1385
                  and          t6, a3, a1
                  sltiu        gp, t0, -1277
                  addi         t4, a6, -1695
                  sltiu        s8, s11, 1932
                  auipc        a6, 256169
                  nop
                  xor          s9, t1, a0
                  sltu         s5, a4, a4
                  addi         zero, s1, -1733
                  slti         a2, s11, 1907
                  xor          t1, gp, a2
                  srl          a5, t1, s4
                  and          s11, s9, a1
                  auipc        a4, 90490
                  sltiu        s4, s7, 349
                  sltu         s0, a4, a5
                  sra          s2, gp, s8
                  lui          a6, 820240
                  srai         s6, sp, 21
                  sub          s10, s3, t2
                  sll          t0, t4, s3
                  nop
                  auipc        s0, 495211
                  sll          a7, t4, s10
                  addi         a3, s1, 1325
                  sltiu        a2, gp, -1471
                  addi         zero, s1, 866
                  or           s4, a4, t5
                  sll          t3, t3, s2
                  add          s5, a1, s0
                  slti         s0, a1, 1861
                  xor          a2, a0, t3
                  auipc        t5, 695697
                  slt          t0, s8, t6
                  sra          tp, s3, a3
                  nop
                  sltu         s7, s9, s1
                  andi         zero, a6, -744
                  ori          t5, s9, -1566
                  andi         gp, t2, 1643
                  sub          a5, t2, zero
                  sltu         s2, a4, s11
                  xor          zero, t0, tp
                  auipc        t3, 93704
                  xor          s2, t0, sp
                  slti         gp, a3, -1305
                  xor          t5, a7, s4
                  sltiu        tp, a4, 1733
                  slt          t3, a6, a3
                  srl          a5, a3, s1
                  sll          s4, sp, s5
                  sra          a3, t4, a1
                  srli         a4, a0, 3
                  and          a1, t0, t4
                  auipc        s5, 311545
                  or           a2, t4, sp
                  and          a6, zero, a2
                  add          s9, a4, a7
                  ori          s4, t4, 1276
                  xor          t6, s8, t2
                  andi         s11, a5, 1169
                  auipc        a0, 232073
                  lui          t3, 964815
                  slt          t4, zero, s6
                  slt          t5, a2, a2
                  sltiu        t6, s5, -55
                  auipc        gp, 225488
                  slt          s2, t6, t1
                  or           a2, t0, s1
                  sub          ra, a0, s1
                  sltu         s0, t4, s4
                  sltiu        zero, s3, 287
                  slt          a7, t6, s5
                  xori         s11, t3, 1100
                  sltu         t4, s8, t6
                  sub          a3, t3, sp
                  auipc        t0, 38958
                  or           t4, s7, t3
                  lui          s4, 1025282
                  nop
                  xori         t1, a2, 169
                  lui          t3, 892605
                  nop
                  srai         t3, s8, 15
                  sltiu        s7, s5, -1448
                  add          t5, a0, t5
                  sub          a5, t3, t6
                  sub          sp, t0, zero
                  ori          s8, t1, 1838
                  sll          sp, s9, a3
                  xor          a1, t0, a5
                  srli         s9, gp, 27
                  xori         a1, s3, -629
                  slt          a2, s6, zero
                  sll          s11, s9, s5
                  sra          a0, s1, gp
                  ori          s6, t1, 909
                  srli         s2, gp, 25
                  sra          s10, t2, s11
                  andi         s8, zero, 561
                  sltu         s9, t1, s3
                  sltiu        s6, a1, -977
                  add          t4, gp, t2
                  slti         s9, s4, -617
                  slli         s9, s4, 8
                  sll          a4, ra, gp
                  sltiu        s6, a4, 275
                  sra          s10, ra, t5
                  sltu         s7, s5, a7
                  addi         t1, s1, 938
                  sra          t1, t5, ra
                  xori         a0, t4, -463
                  andi         a0, t5, -284
                  srli         tp, t1, 30
                  lui          a2, 50282
                  nop
                  srai         s7, s1, 23
                  srai         gp, tp, 14
                  sra          sp, t4, ra
                  slt          s0, s4, s2
                  xori         s9, s4, 389
                  or           s11, sp, t2
                  ori          s4, a0, 1768
                  addi         t6, s1, -1972
                  sltiu        a2, s8, 1629
                  srai         s4, a0, 16
                  slti         t0, a4, 1977
                  sltu         a3, t6, s4
                  xor          a0, a2, s3
                  slli         t6, t4, 19
                  sub          a2, s6, s10
                  srl          t1, zero, s2
                  ori          gp, a2, 1629
                  or           t6, a5, s11
                  lui          a4, 905972
                  srai         a4, a4, 14
                  sltu         s9, a2, a3
                  sra          s10, a3, a4
                  sltu         s9, a2, s9
                  and          t1, t6, gp
                  and          zero, a3, s11
                  slti         sp, s10, 153
                  xor          s9, t5, s1
                  and          s0, s2, t6
                  srl          s10, zero, s3
                  andi         gp, s11, -912
                  addi         s6, s0, 793
                  slt          gp, t4, ra
                  addi         a0, a3, -463
                  sub          a3, s2, a7
                  andi         a2, s6, -1141
                  xor          s2, a5, a1
                  sub          s8, t3, s7
                  sra          s4, s1, s1
                  andi         s5, s0, 97
                  nop
                  sll          s10, s5, a1
                  auipc        s7, 697643
                  sub          a0, a3, s2
                  srl          a1, t4, t6
                  or           a6, t6, t2
                  lui          sp, 334773
                  sll          s8, s1, s1
                  auipc        s10, 607787
                  srl          s0, s9, s4
                  slli         s9, s0, 27
                  sub          sp, t5, t3
                  and          s11, s9, gp
                  and          gp, a6, t3
                  sltu         a7, s7, zero
                  addi         s2, a4, -679
                  srai         s4, t1, 10
                  or           a6, t6, a4
                  andi         gp, a4, -1777
                  andi         a4, a5, -2005
                  slt          zero, s10, s0
                  srai         t6, a4, 14
                  auipc        t0, 869062
                  slti         a1, a3, 1666
                  sltiu        s2, t5, -864
                  add          a1, t2, s6
                  or           s0, t2, s0
                  sub          s4, t4, t4
                  and          s9, a0, zero
                  addi         a7, s7, -713
                  auipc        a0, 746388
                  nop
                  nop
                  sltu         ra, a5, a3
                  srli         t6, t4, 6
                  andi         s7, a6, -965
                  slli         t0, a1, 6
                  sltiu        a6, zero, 1929
                  nop
                  sltu         s8, s6, ra
                  ori          t5, a4, -643
                  slt          s9, s4, a3
                  slti         zero, a1, -1224
                  auipc        a4, 370435
                  addi         s9, t2, -1716
                  slti         s7, s1, 1660
                  xori         s0, ra, -1943
                  slt          s7, t4, s5
                  slti         a6, a6, -56
                  and          zero, t3, s7
                  slti         s9, s8, -146
                  xori         t0, s5, 600
                  xori         t4, s6, 1225
                  add          s2, s4, a6
                  xor          s9, a2, s8
                  xori         s10, s1, -1901
                  sra          s7, s10, s9
                  or           s5, s2, tp
                  auipc        s5, 765291
                  and          a4, a2, a3
                  andi         s6, s4, -713
                  slti         s8, s4, -1414
                  ori          t0, a4, 237
                  and          sp, s11, tp
                  lui          a2, 289007
                  andi         a1, s8, 8
                  ori          t5, s6, 841
                  sltiu        sp, s4, 1986
                  xor          a2, s6, a3
                  andi         t5, t5, -1050
                  addi         a0, ra, -1611
                  xori         t3, a5, -1846
                  srli         a6, s6, 2
                  sub          a1, a4, t3
                  sra          tp, s1, ra
                  sll          s2, zero, s0
                  add          s8, s4, s4
                  sra          s10, a6, s0
                  slt          a0, s3, s1
                  srl          s9, t0, t3
                  and          tp, s0, s7
                  add          t3, ra, s0
                  lui          ra, 392675
                  srli         t5, s9, 18
                  sll          t5, s6, a1
                  slli         t4, tp, 13
                  lui          sp, 657066
                  sltiu        s11, ra, -383
                  sra          t1, a7, sp
                  lui          sp, 1041866
                  slti         t5, t1, -549
                  sltu         s0, s11, a2
                  add          s0, a5, s0
                  srli         s0, s10, 15
                  ori          s9, t6, -1737
                  srli         a4, tp, 27
                  xor          t4, s10, s3
                  xori         t0, s8, -360
                  xor          tp, t1, s3
                  slti         t6, s4, -1942
                  slti         tp, s11, 274
                  slt          tp, a4, t1
                  lui          t6, 90865
                  slt          tp, a6, s6
                  and          a3, zero, a5
                  sub          s9, s4, a7
                  or           zero, s11, a2
                  and          a5, gp, s8
                  sltu         s6, s7, t3
                  lui          t4, 841442
                  srl          s9, t4, a5
                  sll          zero, a0, s2
                  andi         t5, a3, -457
                  slli         s11, s7, 8
                  sll          s4, t5, s10
                  add          t4, s6, s6
                  ori          t4, zero, -755
                  sra          a1, sp, s1
                  slti         a5, a4, 1467
                  srli         zero, s4, 9
                  nop
                  sltiu        s0, t4, 66
                  ori          s11, s2, -1665
                  slt          t4, t2, s3
                  srli         s5, s3, 31
                  xor          zero, s0, s1
                  addi         zero, s10, -1424
                  slti         ra, s9, -831
                  xor          a1, s11, a6
                  sra          s9, a2, t6
                  or           s0, s5, a1
                  sltiu        t4, a7, -446
                  auipc        s8, 462319
                  auipc        t1, 315693
                  xor          a0, s2, a4
                  and          t1, t3, a2
                  xor          a2, s7, s3
                  addi         tp, t5, -28
                  xori         a3, t2, 366
                  xor          t4, t4, s6
                  sltiu        t0, t0, -1160
                  lui          s2, 622290
                  srli         t4, s3, 7
                  slt          t4, zero, t4
                  xori         s10, s4, -1315
                  xori         sp, s9, 214
                  slti         a5, a5, -253
                  slli         a6, s7, 2
                  sra          a7, a3, a4
                  slli         t5, s11, 12
                  xor          s7, t6, a3
                  add          a7, t0, t6
                  add          t6, a3, a4
                  srai         t3, t0, 4
                  ori          s4, s10, -1657
                  xori         a4, a5, 1811
                  sltu         a4, gp, t3
                  srai         ra, a7, 21
                  slti         zero, s6, -1897
                  sltu         t4, s9, a4
                  slti         gp, s9, -1752
                  sub          s4, s7, s7
                  sll          s4, s2, s11
                  sltu         ra, zero, s8
                  slti         s9, gp, 925
                  sub          s2, s1, t0
                  slt          a0, sp, s4
                  andi         s7, s11, -1895
                  andi         a7, t0, 1845
                  or           ra, t1, t5
                  add          t4, s1, a1
                  slti         s0, ra, -554
                  or           a1, t2, s1
                  sra          s4, s5, t1
                  lui          a1, 934610
                  slli         tp, a0, 10
                  slti         sp, s4, -1065
                  srli         gp, ra, 0
                  sll          s4, ra, t5
                  sltiu        gp, a5, 1634
                  sub          s6, s0, gp
                  sll          s5, s10, t4
                  add          s2, t4, t2
                  add          s10, s5, s7
                  nop
                  sub          s6, a2, s8
                  and          a7, s9, t3
                  srai         s11, t3, 10
                  sltu         sp, a1, a1
                  srl          a2, gp, a2
                  addi         a4, s11, 930
                  srl          a0, t5, s3
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           a1, 0x0
                  li           a7, 0x80000000
                  li           gp, 0x0
                  li           a6, 0x80000000
                  li           s4, 0x80000000
                  li           t0, 0x3580a019
                  li           t6, 0xd0b50631
                  li           ra, 0xffffffff
                  li           t4, 0x80000000
                  auipc        t4, 389176
                  sub          a7, gp, a7
                  lui          a0, 315205
                  nop
                  addi         s4, t6, -1642
                  addi         a1, ra, 95
                  auipc        ra, 756782
                  sub          gp, t0, t4
                  lui          t0, 857862
                  auipc        gp, 281232
                  lui          a7, 119318
                  nop
                  addi         a7, t6, 444
                  add          a7, a0, gp
                  add          s4, t6, a0
                  sub          t0, a0, s4
                  auipc        a6, 385605
                  nop
                  lui          a1, 370310
                  lui          ra, 723810
                  auipc        a6, 736514
                  auipc        s4, 8513
                  auipc        t6, 358171
                  lui          a6, 136193
                  auipc        a1, 227247 #end riscv_int_numeric_corner_stream_5
                  nop
                  sltu         sp, s10, a1
                  nop
                  add          t4, s1, t5
                  lui          s2, 678891
                  srai         s10, a6, 25
                  andi         t0, sp, 1251
                  slt          zero, a4, s11
                  srl          zero, s11, a0
                  add          sp, s6, s7
                  slli         a5, a3, 0
                  andi         s0, ra, 1702
                  sra          s10, t2, t3
                  slt          s6, t2, sp
                  auipc        ra, 863462
                  xor          a3, t0, s5
                  sra          s8, s8, s7
                  auipc        s10, 300816
                  lui          zero, 664624
                  andi         t1, a0, 1383
                  slli         t6, t0, 24
                  sltu         s10, a1, t1
                  srai         tp, ra, 15
                  slt          t1, t3, ra
                  sub          s10, s2, a1
                  srl          a2, s0, s1
                  slt          t4, s9, s6
                  sltu         s7, s2, a5
                  slli         s11, a5, 28
                  or           s8, s2, a2
                  srl          a1, t3, s1
                  slt          gp, s7, s5
                  sll          s8, t6, a1
                  auipc        a2, 1022612
                  srli         s0, a0, 3
                  srli         a2, a2, 3
                  lui          a1, 442792
                  srl          a3, t5, s4
                  xori         s6, s4, 1248
                  slt          s4, s0, s3
                  sra          sp, tp, a0
                  slt          s0, s5, s2
                  sltiu        zero, s9, -1536
                  and          s6, s5, a0
                  srai         s5, s5, 4
                  slli         a6, s3, 11
                  sltu         s7, s11, s11
                  andi         s6, s4, 13
                  auipc        s2, 526310
                  sltiu        tp, s9, -786
                  slli         s8, a7, 26
                  lui          s5, 574885
                  ori          s8, a1, -1856
                  and          s4, t4, s6
                  or           t4, s6, a3
                  nop
                  slti         s6, s6, -574
                  slt          tp, zero, a7
                  lui          t6, 724690
                  ori          t6, s8, 438
                  srli         sp, a0, 2
                  auipc        s9, 499055
                  xori         s9, zero, 391
                  addi         a3, a6, 1927
                  ori          zero, s7, 1981
                  nop
                  xor          t6, t6, s5
                  auipc        a5, 808708
                  srai         s4, s5, 24
                  sub          sp, t4, s5
                  auipc        sp, 42176
                  srli         a0, t4, 27
                  srai         t4, gp, 28
                  nop
                  slt          ra, s5, t3
                  xori         a1, s7, -1374
                  slli         t0, t1, 26
                  sll          a5, zero, s6
                  sll          a7, sp, a1
                  sltu         a6, a6, s0
                  sltu         sp, a6, zero
                  ori          s8, t3, -278
                  and          s4, a5, a3
                  nop
                  or           a7, tp, a1
                  nop
                  srli         s4, s3, 31
                  or           a5, s4, s11
                  sub          t1, ra, a7
                  slti         a7, s2, 1295
                  or           tp, t4, tp
                  add          s11, a1, tp
                  add          s9, s3, t0
                  sll          t1, a6, a5
                  addi         ra, a4, -1793
                  xor          t6, s1, s10
                  lui          s6, 255209
                  slli         s9, a5, 24
                  ori          t3, s5, -255
                  auipc        t0, 905684
                  xori         zero, t6, -462
                  and          t5, s10, s0
                  auipc        tp, 224490
                  slli         a6, s6, 12
                  or           tp, zero, a6
                  auipc        ra, 418224
                  slli         t3, s9, 2
                  auipc        a5, 144634
                  srli         t5, s2, 3
                  slli         ra, t2, 19
                  xori         s4, s0, -859
                  andi         sp, s4, 1048
                  and          gp, a1, tp
                  slt          t3, s7, s1
                  andi         zero, s3, 1540
                  sltu         t5, s5, zero
                  slti         tp, t3, 722
                  xor          t0, a0, a3
                  sltiu        s5, s5, 1457
                  sub          ra, a0, s5
                  sra          a6, gp, t4
                  lui          s0, 678368
                  slli         sp, s2, 11
                  li           tp, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           t0, 0x0
                  li           t6, 0x80000000
                  li           a5, 0x0
                  li           s7, 0x76041906
                  li           t1, 0x4c05efeb
                  li           a1, 0xffffffff
                  li           s0, 0x431a8bcd
                  li           t4, 0x4166d240
                  li           s8, 0x0
                  auipc        t6, 116534
                  sub          t4, t0, a5
                  sub          a5, t0, t6
                  add          t0, a5, s8
                  lui          t0, 963344
                  lui          a5, 605117
                  addi         t6, t6, -401
                  lui          tp, 419334
                  sub          a1, a1, s7
                  addi         a1, t4, -848
                  lui          t1, 47158
                  auipc        s0, 392431
                  lui          a5, 71496
                  auipc        s8, 643529
                  nop
                  addi         s8, tp, 101
                  auipc        t4, 67623
                  lui          t1, 843931 #end riscv_int_numeric_corner_stream_7
                  lui          zero, 710975
                  lui          s11, 705426
                  or           a7, s0, t1
                  srai         a6, a5, 1
                  srl          gp, s11, s1
                  sll          s11, a1, a1
                  addi         s2, t4, 1914
                  sra          s7, t5, sp
                  auipc        a5, 339837
                  ori          ra, t1, -685
                  add          s6, gp, s1
                  andi         s11, a5, -1235
                  addi         s8, s5, -1269
                  sra          t4, a2, s0
                  andi         t5, zero, -1908
                  nop
                  ori          a6, a6, -1220
                  lui          a2, 904359
                  sltiu        zero, t5, 348
                  and          s0, s10, a5
                  slt          a0, t5, gp
                  slt          t6, a5, s6
                  xor          t0, t4, t5
                  sltiu        a6, s1, 1123
                  sub          zero, sp, a4
                  add          sp, s9, s6
                  xor          s10, s2, s2
                  auipc        zero, 656163
                  xor          t5, t5, s5
                  and          s8, t5, a6
                  sll          s5, s4, s2
                  nop
                  sra          a0, s7, a1
                  add          s7, s4, s1
                  andi         s11, s2, -1356
                  slli         zero, t0, 8
                  sub          gp, t0, t2
                  addi         sp, s8, 1847
                  sltiu        s7, sp, 1658
                  or           s4, s4, s7
                  srli         s2, a2, 7
                  srl          s2, a5, a5
                  slli         a3, a2, 25
                  slt          s2, a0, s1
                  lui          a7, 632779
                  lui          a1, 995185
                  srl          gp, s7, a1
                  add          t1, t4, s7
                  ori          s5, a1, -1898
                  srli         tp, a0, 21
                  sll          a1, sp, s7
                  srli         t5, t0, 28
                  xor          s0, t3, t5
                  andi         t0, a3, -1031
                  xor          s9, a5, t2
                  andi         s4, s11, 640
                  sltu         t6, s4, t1
                  addi         t0, t0, -903
                  srl          s4, a1, sp
                  sra          a7, s4, sp
                  sub          a5, a6, t5
                  auipc        s8, 1042862
                  ori          tp, t2, 172
                  and          a4, a1, s1
                  sll          t3, sp, s5
                  xori         a1, s0, -1647
                  andi         a7, s11, 1863
                  sub          a6, s8, t2
                  srl          gp, t1, t4
                  srai         a7, t6, 0
                  andi         gp, t0, 1940
                  sub          s9, s10, s5
                  sltiu        s4, a2, -815
                  add          gp, s4, s11
                  srl          a3, t5, s9
                  srli         a5, sp, 0
                  add          s10, a5, s7
                  slt          tp, a5, a4
                  andi         s2, a6, -376
                  and          s9, s5, zero
                  sra          s10, s10, t2
                  srai         ra, s4, 18
                  sll          s2, gp, s6
                  sub          t3, s7, a0
                  auipc        a0, 84177
                  addi         a0, a7, -1418
                  xor          s2, s2, s6
                  and          s8, sp, s1
                  sltiu        s5, a3, 1022
                  xor          a7, s1, s1
                  add          s2, s9, s6
                  add          tp, s1, t6
                  slli         a3, a3, 16
                  auipc        a0, 116579
                  and          a3, a4, t2
                  auipc        tp, 166421
                  sra          ra, a4, s4
                  slti         a3, a4, -1339
                  srli         s0, s0, 16
                  slti         s6, tp, 238
                  srl          a2, s6, t1
                  srli         gp, sp, 29
                  lui          s8, 462059
                  sub          s4, t2, a3
                  lui          zero, 696742
                  lui          t0, 840986
                  slt          a7, t1, a7
                  sltiu        t0, s1, 1654
                  sra          s6, a2, a3
                  ori          s2, t3, 2045
                  sra          a0, ra, s1
                  xori         ra, s10, -793
                  srai         t3, a2, 9
                  sub          a6, sp, a6
                  nop
                  sll          s11, t0, s6
                  lui          a2, 396844
                  srl          sp, a4, t4
                  sub          t0, t6, a7
                  srli         s8, s5, 2
                  sltiu        t6, s1, -1384
                  andi         a0, a3, -1036
                  sra          a1, t1, a1
                  add          zero, s3, s8
                  nop
                  sltu         t4, s9, s6
                  andi         t3, s6, -2048
                  addi         s7, s4, -1431
                  sll          s5, t6, a1
                  sltu         a1, a6, a3
                  srl          t4, t4, t6
                  sll          gp, s11, a5
                  or           a0, s7, a7
                  sra          s11, s1, a2
                  ori          a4, s8, -934
                  sltiu        a2, a4, 606
                  sll          t1, a5, zero
                  sll          t4, s3, t6
                  sltu         t1, t5, t1
                  la x9, test_done
                  jalr x0, x9, 0
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
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x7, x19, zero
                  csrr x14, 0x300 # MSTATUS
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 31
                  bne x14, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x14, 0x341 # MEPC
                  csrr x14, 0x342 # MCAUSE
                  li x15, 0x3 # BREAKPOINT
                  beq x14, x15, ebreak_handler
                  li x15, 0x8 # ECALL_UMODE
                  beq x14, x15, ecall_handler
                  li x15, 0x9 # ECALL_SMODE
                  beq x14, x15, ecall_handler
                  li x15, 0xb # ECALL_MMODE
                  beq x14, x15, ecall_handler
                  li x15, 0x1
                  beq x14, x15, instr_fault_handler
                  li x15, 0x5
                  beq x14, x15, load_fault_handler
                  li x15, 0x7
                  beq x14, x15, store_fault_handler
                  li x15, 0xc
                  beq x14, x15, pt_fault_handler
                  li x15, 0xd
                  beq x14, x15, pt_fault_handler
                  li x15, 0xf
                  beq x14, x15, pt_fault_handler
                  li x15, 0x2 # ILLEGAL_INSTRUCTION
                  beq x14, x15, illegal_instr_handler
                  csrr x15, 0x343 # MTVAL
                  1: la x9, test_done
                  jalr x1, x9, 0

ecall_handler:    
                  la x14, _start
                  sw x0, 0(x14)
                  sw x1, 4(x14)
                  sw x2, 8(x14)
                  sw x3, 12(x14)
                  sw x4, 16(x14)
                  sw x5, 20(x14)
                  sw x6, 24(x14)
                  sw x7, 28(x14)
                  sw x8, 32(x14)
                  sw x9, 36(x14)
                  sw x10, 40(x14)
                  sw x11, 44(x14)
                  sw x12, 48(x14)
                  sw x13, 52(x14)
                  sw x14, 56(x14)
                  sw x15, 60(x14)
                  sw x16, 64(x14)
                  sw x17, 68(x14)
                  sw x18, 72(x14)
                  sw x19, 76(x14)
                  sw x20, 80(x14)
                  sw x21, 84(x14)
                  sw x22, 88(x14)
                  sw x23, 92(x14)
                  sw x24, 96(x14)
                  sw x25, 100(x14)
                  sw x26, 104(x14)
                  sw x27, 108(x14)
                  sw x28, 112(x14)
                  sw x29, 116(x14)
                  sw x30, 120(x14)
                  sw x31, 124(x14)
                  la x9, write_tohost
                  jalr x0, x9, 0

instr_fault_handler:
                  add x19, x7, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

load_fault_handler:
                  add x19, x7, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

store_fault_handler:
                  add x19, x7, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

ebreak_handler:   
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x19, x7, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

illegal_instr_handler:
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x19, x7, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x14, 0x300 # MSTATUS;
                  csrr  x14, 0x304 # MIE;
                  csrr  x14, 0x344 # MIP;
                  csrrc x14, 0x344, x14 # MIP;
                  add x19, x7, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
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
