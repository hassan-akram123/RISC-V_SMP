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
                  li x29, 0x40000100
                  csrw 0x301, x29
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x29, mtvec_handler
                  ori x29, x29, 0
                  csrw 0x305, x29 # MTVEC

mepc_setup:       
                  la x29, init
                  csrw 0x341, x29

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x29, 0x1800
                  csrw 0x300, x29 # MSTATUS
                  mret
init:             
                  li x0, 0x3e39b166
                  li x1, 0xde4945ed
                  li x2, 0x0
                  li x3, 0x6
                  li x4, 0x0
                  li x5, 0xfd21e484
                  li x6, 0x0
                  li x7, 0x80000000
                  li x8, 0xf4a39fc8
                  li x9, 0x80000000
                  li x10, 0xf6627470
                  li x11, 0xa
                  li x12, 0x0
                  li x13, 0x0
                  li x14, 0x0
                  li x15, 0xd9b3346d
                  li x16, 0xf
                  li x17, 0xfa71c883
                  li x18, 0x80000000
                  li x19, 0x2fa2af1c
                  li x20, 0x0
                  li x21, 0x9b80a2a0
                  li x22, 0xb
                  li x23, 0xf6a48945
                  li x24, 0x0
                  li x25, 0x80000000
                  li x26, 0x91762578
                  li x28, 0xf65eea58
                  li x29, 0x0
                  li x31, 0x7d11f103
                  la x30, user_stack_end
main:             li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           gp, 0x80000000
                  li           ra, 0xc0f22211
                  li           tp, 0x80000000
                  li           a4, 0x80000000
                  li           s0, 0xffffffff
                  li           t1, 0x67c84094
                  li           s10, 0x80000000
                  li           s9, 0x0
                  li           a0, 0x80000000
                  nop
                  auipc        a4, 298196
                  lui          s0, 1001494
                  add          gp, s6, s10
                  add          a4, s9, a0
                  addi         t1, ra, -993
                  add          a4, t1, t1
                  nop
                  auipc        gp, 14761
                  sub          ra, gp, s6
                  addi         s6, ra, -1704
                  add          a0, a0, s10
                  nop
                  nop
                  lui          s9, 7775
                  auipc        ra, 873627
                  addi         s10, gp, 683
                  sub          s6, s6, a0
                  sub          tp, ra, s6
                  lui          s6, 720391
                  sub          s0, gp, s0
                  addi         s6, s10, -1019
                  auipc        s10, 22311
                  add          a0, a4, a0
                  auipc        s10, 791038
                  add          tp, s6, s6 #end riscv_int_numeric_corner_stream_5
                  li           t1, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           t2, 0xffffffff
                  li           ra, 0xffffffff
                  li           s10, 0x36f7bad8
                  li           a1, 0xffffffff
                  li           a0, 0x0
                  li           a3, 0x80000000
                  li           t6, 0x1e4ed13e
                  li           s9, 0xffffffff
                  li           t4, 0x0
                  auipc        a1, 396479
                  nop
                  auipc        s9, 600436
                  addi         t2, t1, -1346
                  addi         a1, ra, -775
                  add          s9, t1, t2
                  sub          t6, t2, t2
                  sub          s9, a3, t4
                  add          t6, a1, t4
                  add          t4, ra, a1
                  auipc        s9, 686378
                  add          ra, ra, t2
                  add          a0, ra, a3
                  add          a3, s10, s10
                  addi         s10, a1, -1470
                  lui          t2, 503916 #end riscv_int_numeric_corner_stream_0
                  li           a6, 0xdcd60c6f #start riscv_int_numeric_corner_stream_7
                  li           a1, 0xffffffff
                  li           a2, 0x0
                  li           a3, 0x0
                  li           t3, 0x80000000
                  li           sp, 0x80000000
                  li           s10, 0x80000000
                  li           ra, 0x80000000
                  li           a7, 0x0
                  li           s5, 0xffffffff
                  add          a2, sp, a1
                  addi         a1, a7, -532
                  auipc        a7, 42653
                  addi         ra, a3, 1922
                  sub          s5, s5, a3
                  sub          a2, a2, ra
                  sub          t3, s10, s10
                  lui          a2, 855579
                  add          a7, a2, a2
                  sub          ra, s5, a3
                  add          sp, s5, a2
                  addi         a6, a1, -1407
                  addi         sp, a7, 1559
                  nop
                  add          a2, s5, s5
                  add          a7, a2, s5
                  addi         t3, ra, -297
                  lui          sp, 324062
                  add          a3, sp, a2
                  lui          s10, 539601
                  lui          t3, 778711
                  lui          a3, 620241
                  nop
                  add          a2, a7, ra
                  add          a6, ra, a7
                  addi         a3, a2, 1503
                  sub          ra, ra, s10 #end riscv_int_numeric_corner_stream_7
                  li           t0, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           s2, 0xbd1a501c
                  li           s9, 0x0
                  li           s0, 0xffffffff
                  li           a0, 0x0
                  li           s5, 0x80000000
                  li           t6, 0xca50cd68
                  li           a2, 0x80000000
                  li           tp, 0xffffffff
                  li           s6, 0x9ad328e0
                  add          a0, s6, t0
                  nop
                  addi         s5, s9, 1447
                  nop
                  lui          a0, 835704
                  auipc        s6, 178445
                  lui          s0, 446817
                  lui          s2, 574384
                  nop
                  addi         s2, a2, 551
                  addi         s9, a0, -1693
                  lui          tp, 656576
                  sub          a0, a0, a2
                  sub          s0, a0, tp
                  sub          t6, s2, s5
                  sub          a2, t6, s5
                  addi         t0, s2, 1984
                  nop
                  nop
                  addi         t6, s2, 1738
                  sub          t0, s0, t0
                  nop
                  addi         s5, s5, 113 #end riscv_int_numeric_corner_stream_8
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           s5, 0xffffffff
                  li           s8, 0x0
                  li           s2, 0x0
                  li           t2, 0xffffffff
                  li           t1, 0x80000000
                  li           s9, 0x0
                  li           ra, 0x0
                  li           a7, 0x80000000
                  li           t6, 0x80000000
                  nop
                  nop
                  nop
                  lui          ra, 1016205
                  sub          t6, t2, s5
                  addi         s9, s2, 1997
                  nop
                  nop
                  lui          s2, 931265
                  add          a7, t6, t6
                  add          s2, s8, t2
                  sub          s8, t1, s8
                  lui          a5, 50878
                  nop
                  add          t6, t6, s5
                  sub          t2, s5, a7
                  nop
                  auipc        t2, 476808
                  nop
                  sub          t1, s5, t6
                  sub          s9, ra, ra
                  nop
                  nop
                  nop
                  sub          t1, ra, t2
                  auipc        a7, 560139
                  add          s5, ra, t6
                  add          t6, s8, s5
                  sub          s2, t1, s8 #end riscv_int_numeric_corner_stream_1
                  xori         tp, t5, 437
                  sub          a6, a7, s5
                  lui          t0, 1021243
                  sll          a6, a1, zero
                  sltu         zero, a7, s11
                  sll          s5, s9, s8
                  xor          sp, a1, a3
                  slti         s3, s3, -261
                  slt          s4, s2, gp
                  and          zero, s11, a2
                  srli         s9, s4, 9
                  srai         s3, a4, 24
                  slt          a3, s4, s7
                  srai         a5, a7, 13
                  srl          ra, s3, t5
                  auipc        a3, 264886
                  add          t3, s0, t4
                  addi         t6, t3, 293
                  auipc        t1, 58857
                  xor          t6, t3, zero
                  sltiu        s7, s1, -123
                  sll          a1, a6, t1
                  nop
                  xori         a0, t3, -874
                  nop
                  sltu         s2, a4, s9
                  slti         s8, sp, 310
                  slli         s10, t2, 22
                  srli         s6, t0, 2
                  slli         zero, gp, 14
                  sra          a7, t6, s5
                  sra          t2, zero, sp
                  andi         s3, t1, 662
                  sltu         s10, s9, gp
                  sltiu        s5, t0, -155
                  add          s10, s3, a0
                  or           t1, zero, a2
                  sub          a7, s10, a2
                  srl          s7, zero, a4
                  add          s2, s9, a4
                  srl          t1, a3, zero
                  or           t6, t4, s7
                  addi         s2, s9, 442
                  srl          a3, gp, t6
                  addi         a6, t1, -537
                  slti         a2, t0, -2048
                  srl          tp, s6, s7
                  srli         sp, a7, 30
                  and          t1, ra, t0
                  ori          a0, s5, 452
                  srl          a6, zero, s4
                  addi         s2, s7, -709
                  slt          t4, s4, s9
                  or           gp, zero, s9
                  and          s6, tp, a6
                  lui          t0, 383745
                  slli         ra, s0, 29
                  and          s2, tp, a4
                  and          ra, s2, tp
                  sra          s9, s6, a3
                  add          s2, t3, s11
                  slli         sp, a0, 22
                  ori          tp, zero, 809
                  slt          s10, s7, t1
                  slli         a3, s11, 9
                  slt          t3, a2, ra
                  addi         a1, s1, -385
                  sra          a4, s4, s1
                  addi         t2, t3, 1896
                  auipc        s3, 419799
                  slli         t3, t5, 24
                  lui          a0, 597243
                  sll          a4, a2, a7
                  srli         s6, t5, 0
                  and          a4, s4, s6
                  srl          s6, s3, t0
                  xori         sp, s4, -856
                  slti         zero, s7, 1690
                  sltu         s4, sp, t3
                  sub          s9, t6, t3
                  sll          t6, s3, s7
                  xori         a2, t4, 642
                  slt          s6, s8, s6
                  and          s9, s9, s6
                  srai         t4, s7, 20
                  and          a0, t2, s2
                  srai         s10, t3, 9
                  sltiu        tp, a3, -1906
                  srai         a2, t6, 17
                  or           a5, a0, sp
                  srli         s3, tp, 16
                  slt          t1, s11, a4
                  slt          a6, s0, ra
                  slti         gp, s10, -229
                  add          t1, s11, a5
                  andi         s9, ra, 1900
                  lui          tp, 1045574
                  slti         s2, a3, -1543
                  and          a5, zero, sp
                  or           zero, zero, a3
                  nop
                  addi         s6, t5, -26
                  add          s8, s10, a1
                  addi         zero, sp, 1510
                  sltiu        ra, a3, 1892
                  ori          a5, a1, -1281
                  sll          tp, sp, s7
                  and          s8, s0, sp
                  xor          t6, a7, t5
                  add          tp, sp, s0
                  ori          s8, a0, 1423
                  addi         a2, a4, -851
                  sra          sp, ra, a4
                  andi         s8, t1, -315
                  xori         s8, s7, -869
                  ori          sp, s9, -1189
                  sub          s8, t0, s0
                  slt          s5, s4, ra
                  and          a6, t3, t6
                  nop
                  andi         gp, s11, -945
                  lui          s9, 250751
                  xori         t1, s9, -466
                  sltu         gp, s2, s1
                  xori         ra, a1, 533
                  addi         t2, s5, -992
                  xori         t2, a7, 2023
                  nop
                  sltu         s4, s7, a3
                  srl          a6, s1, a2
                  add          gp, t2, s11
                  srai         a6, s1, 27
                  srai         a2, sp, 15
                  sltu         sp, a6, s2
                  auipc        gp, 797057
                  andi         a6, t2, 1024
                  sll          s6, s6, zero
                  andi         gp, t3, -1880
                  auipc        s0, 704629
                  xor          a1, ra, s10
                  sra          a7, ra, t0
                  sra          t1, s4, s11
                  xori         t3, tp, 1693
                  andi         sp, s10, -234
                  sll          a3, s0, a2
                  add          a3, a5, a0
                  sll          t4, a4, a7
                  sra          t3, t6, s0
                  srai         a5, t2, 30
                  xor          tp, a6, a0
                  xori         gp, s4, -1500
                  auipc        s0, 1033994
                  andi         t1, s4, 1975
                  ori          a6, s10, -1263
                  and          zero, s10, a3
                  andi         s0, zero, -78
                  addi         s3, s3, 1862
                  or           sp, a1, t3
                  slt          s3, a6, t3
                  srli         s4, s3, 13
                  sll          a0, s10, ra
                  sltu         sp, a1, a0
                  xori         s5, t2, -1060
                  srl          a4, s0, s11
                  ori          gp, a1, 316
                  add          ra, a7, s4
                  lui          a2, 160865
                  add          sp, t3, s7
                  nop
                  add          t0, t1, s9
                  sll          a2, ra, s4
                  xori         tp, t6, -1561
                  slli         t6, s9, 0
                  xor          gp, t0, a1
                  srli         s7, s4, 11
                  sra          s5, a5, a5
                  andi         t2, t4, -1783
                  lui          s10, 24410
                  srl          s10, a6, s9
                  slli         s6, t0, 18
                  or           t6, s0, s8
                  add          t3, t2, a4
                  sltiu        t1, ra, 763
                  slti         s2, s11, 889
                  slli         a5, s3, 17
                  nop
                  auipc        t1, 445725
                  sll          zero, sp, a2
                  nop
                  xori         t6, t0, 1193
                  auipc        s2, 343742
                  sll          a2, s4, s4
                  srl          a3, a1, s7
                  xori         a7, a4, 1589
                  sltiu        ra, t2, 1735
                  srl          t3, a5, s10
                  lui          zero, 423976
                  nop
                  slt          s2, a5, a6
                  nop
                  xor          s5, ra, a2
                  srai         s9, tp, 17
                  andi         s10, a1, -1448
                  add          s10, ra, zero
                  sltiu        t1, s7, -1755
                  add          a0, s3, t3
                  xori         gp, a7, 1127
                  auipc        a5, 229251
                  slti         ra, s7, 2018
                  xor          a2, gp, s1
                  sltu         gp, a2, s5
                  slti         a5, a0, 56
                  sltiu        s6, s0, -293
                  xor          t0, gp, zero
                  slli         ra, gp, 31
                  ori          s0, t0, -1100
                  slt          a1, tp, s0
                  nop
                  nop
                  slli         t0, t1, 4
                  auipc        a7, 959398
                  addi         a0, gp, -983
                  xor          s3, s3, a5
                  and          s7, s1, a5
                  and          s4, a1, ra
                  srli         t0, t4, 10
                  auipc        s2, 260472
                  and          a0, s0, s9
                  add          a3, s2, s3
                  slli         a3, s1, 6
                  sll          a5, s2, t5
                  sltiu        s0, t4, 945
                  auipc        gp, 882052
                  sra          t0, a7, t2
                  sub          t3, t4, s9
                  sll          t6, sp, t1
                  and          a7, s10, t5
                  ori          a5, t0, 1334
                  sltiu        s9, t1, -1606
                  sll          zero, ra, s4
                  sra          s4, s2, sp
                  sltu         s5, s8, s3
                  and          t1, s2, s9
                  sltiu        a2, s1, -1642
                  sll          a4, a0, s1
                  lui          zero, 438226
                  srli         s7, t6, 0
                  srl          gp, t3, a6
                  addi         s3, t2, -251
                  xori         ra, zero, -1000
                  addi         s3, t6, -1335
                  slli         s0, sp, 24
                  lui          a0, 760418
                  auipc        s2, 455623
                  sltu         ra, s4, a4
                  xori         a1, s9, 1995
                  sll          s4, a2, a0
                  xor          a3, s10, t4
                  sltiu        s9, a3, 1480
                  sltiu        a1, s7, 700
                  and          t0, s1, ra
                  xori         s6, a3, 230
                  addi         a4, sp, 1679
                  slli         zero, t2, 18
                  srai         ra, tp, 16
                  srl          a6, a0, s7
                  sltiu        t1, s11, -1019
                  sra          t3, s1, s8
                  and          s5, s2, t1
                  xor          s8, t4, s11
                  sra          gp, s2, t6
                  xor          a4, s5, s8
                  sub          a5, t3, t2
                  srl          a2, a6, t0
                  nop
                  addi         a5, a3, -1612
                  auipc        s6, 888391
                  and          t2, ra, s2
                  sub          t3, s10, s11
                  srl          sp, s2, a2
                  nop
                  addi         sp, a6, -149
                  srai         zero, s1, 31
                  sub          a6, a4, s9
                  andi         t6, a1, -671
                  add          a1, s10, s4
                  sll          s9, t2, t6
                  sra          s10, t5, s6
                  xor          a7, a7, a5
                  nop
                  add          t6, a1, t4
                  andi         s9, a6, -1508
                  or           a7, t2, a5
                  lui          s9, 898711
                  sub          a3, s3, sp
                  sltu         s0, a0, s0
                  sub          ra, s1, t0
                  or           gp, t4, a7
                  add          sp, ra, t1
                  auipc        s4, 946173
                  sub          s0, s8, s3
                  and          a1, sp, a3
                  slli         s5, s10, 0
                  srai         a1, a3, 12
                  sll          a4, s4, a3
                  slt          ra, gp, s4
                  slti         t3, a0, 1360
                  sltu         a2, t1, a1
                  srl          s0, s0, t6
                  sltiu        s10, ra, 1542
                  sub          gp, a0, a4
                  addi         s3, t6, 997
                  addi         t6, t2, 1633
                  add          t3, a7, a1
                  slti         s6, tp, -1068
                  slli         s6, t3, 22
                  sll          a5, t6, s11
                  sltiu        s4, t1, -261
                  srl          a5, s0, t2
                  srl          s2, t5, sp
                  and          zero, s9, t3
                  add          s3, tp, a7
                  srai         s5, t2, 25
                  nop
                  slli         a3, a1, 16
                  and          zero, t0, zero
                  srl          a0, t1, t4
                  and          s0, s9, t3
                  add          t3, s6, ra
                  lui          zero, 904799
                  xori         t1, t2, -1989
                  nop
                  sra          t2, tp, s8
                  xor          s9, s7, a0
                  sra          t0, a3, a1
                  slli         s7, s0, 0
                  slli         s10, a6, 12
                  or           a2, s0, s1
                  slt          a2, a5, s5
                  slti         s8, s7, 1046
                  slti         t4, s4, 500
                  sltiu        s3, t1, -680
                  sra          a5, s0, a2
                  srli         s3, s10, 7
                  and          t0, s10, s11
                  sub          s10, t6, s7
                  srai         s2, t0, 21
                  slli         zero, a1, 20
                  xor          t4, t6, a3
                  srai         a2, s10, 20
                  sltiu        a4, t2, 805
                  auipc        a2, 927031
                  nop
                  sll          s3, s0, s7
                  ori          s3, s7, -1147
                  slt          s2, tp, s10
                  sub          a7, t6, a4
                  xor          a2, sp, a4
                  xor          t1, a0, s9
                  slli         a2, s4, 2
                  sll          s0, s2, a3
                  xori         a0, s1, 825
                  sltu         ra, s5, s4
                  xor          s6, s9, s3
                  slt          s2, s0, sp
                  slt          a3, s8, s0
                  andi         s9, t5, -573
                  addi         t6, a0, -1614
                  sra          t3, ra, s7
                  add          s7, a2, t3
                  andi         s7, t4, -1158
                  sltiu        s6, t4, -1870
                  slt          sp, a5, t5
                  srl          t3, a2, t2
                  srai         zero, gp, 8
                  auipc        s5, 534246
                  srli         s3, a4, 28
                  or           t1, a2, s0
                  slt          s7, a6, a2
                  sltiu        gp, a1, 552
                  auipc        t6, 35472
                  sub          s4, a6, s9
                  sltu         s7, zero, t5
                  lui          t2, 557864
                  sltu         s2, s5, gp
                  sub          ra, s0, s11
                  andi         s3, t0, -1728
                  sltu         a0, tp, tp
                  sub          gp, s8, t1
                  slli         sp, s2, 3
                  sltiu        sp, sp, 1350
                  sll          zero, a1, a4
                  nop
                  add          s9, t4, s1
                  sll          ra, t5, s0
                  or           s8, s6, s10
                  sra          s0, t4, s5
                  slt          s4, ra, t3
                  ori          s4, s11, -1842
                  andi         zero, s9, 1843
                  ori          ra, a6, -617
                  xor          t4, t5, t6
                  sltu         gp, s4, s3
                  ori          s7, s11, -1944
                  sll          tp, t0, t3
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           t0, 0xffffffff
                  li           s5, 0x80000000
                  li           a3, 0x0
                  li           a2, 0xffffffff
                  li           s10, 0x80000000
                  li           a1, 0x0
                  li           a6, 0x80000000
                  li           a0, 0xb64aab23
                  li           ra, 0xb2d6b8bd
                  sub          a6, s5, a2
                  lui          s5, 683416
                  addi         s10, a6, 814
                  add          a2, s5, a4
                  nop
                  addi         ra, a0, 1457
                  lui          s5, 249306
                  add          s5, ra, a1
                  lui          a3, 345868
                  sub          a4, s5, a0
                  nop
                  lui          t0, 608000
                  auipc        s5, 138570
                  auipc        a0, 158090
                  add          a2, t0, s10
                  lui          s10, 419917
                  nop
                  nop
                  auipc        s5, 819315
                  add          s10, t0, a0
                  nop
                  nop #end riscv_int_numeric_corner_stream_18
                  slt          s5, tp, a6
                  srai         s10, s11, 0
                  xor          t2, t1, s2
                  and          t6, tp, gp
                  addi         t4, zero, -1657
                  srl          a1, s3, s0
                  slt          a6, a5, t6
                  ori          a5, s8, -1640
                  sll          s6, a4, a7
                  sub          t0, s2, s8
                  xor          zero, a0, s9
                  srli         a7, a6, 21
                  andi         zero, t2, 350
                  sra          a2, s3, a7
                  auipc        s10, 635932
                  sltu         a7, a5, a7
                  lui          t1, 47767
                  slli         s8, tp, 30
                  ori          t6, gp, 295
                  ori          s9, t0, -310
                  nop
                  srai         s3, t3, 25
                  sra          s3, s10, a6
                  sltu         s0, t3, a5
                  sltiu        s6, a2, 1608
                  slt          s9, gp, s3
                  slli         t2, s1, 8
                  srai         ra, t3, 1
                  sll          t2, a5, a7
                  sub          zero, s3, s1
                  srai         s5, a3, 20
                  ori          gp, ra, 63
                  sltiu        s3, a4, 160
                  slli         tp, s3, 3
                  sub          s5, t1, t4
                  srai         t6, a0, 31
                  auipc        t6, 982401
                  srl          a2, zero, zero
                  xor          t0, zero, t3
                  srli         s7, s2, 14
                  add          gp, s3, s9
                  srli         a7, s3, 29
                  sltu         s0, s9, a6
                  slli         sp, a2, 18
                  or           ra, zero, gp
                  auipc        s9, 635219
                  srli         s6, s4, 0
                  slt          t6, s5, s2
                  xori         ra, a1, 932
                  sub          a2, t6, zero
                  sll          s6, s4, sp
                  srai         sp, s10, 15
                  sra          tp, s8, t5
                  addi         a1, s5, -1979
                  auipc        s4, 387658
                  auipc        gp, 417235
                  auipc        s9, 470822
                  srai         t1, s11, 13
                  add          sp, a2, s3
                  auipc        s6, 185982
                  srli         s9, a2, 4
                  addi         ra, a0, -166
                  sltu         zero, s6, a1
                  sub          s4, s8, sp
                  andi         s3, s1, 1853
                  auipc        gp, 1030709
                  lui          t0, 401678
                  srli         t6, a0, 20
                  or           s5, s4, ra
                  sra          a6, ra, s8
                  sub          tp, sp, s4
                  sltu         a7, s11, gp
                  slt          s10, s4, t2
                  or           zero, s0, a4
                  auipc        t4, 319506
                  slti         s8, t0, 1096
                  slt          s5, t1, a6
                  slti         t0, s0, 1937
                  nop
                  xori         s8, a5, -996
                  sll          t3, a7, a3
                  sra          s10, a6, s0
                  addi         sp, s11, -764
                  srai         s8, t2, 14
                  ori          ra, s5, -439
                  xori         a6, t3, -764
                  lui          t3, 975124
                  slti         a7, a1, -1983
                  nop
                  nop
                  and          a3, s5, a1
                  ori          s3, s8, 968
                  srl          s5, t1, a6
                  sub          t3, t3, a1
                  srl          t4, a7, t4
                  srai         t1, t1, 30
                  slli         a4, a5, 21
                  li           a0, 0x386d2512 #start riscv_int_numeric_corner_stream_9
                  li           a6, 0x80000000
                  li           s2, 0x80000000
                  li           t0, 0xffffffff
                  li           t6, 0xffffffff
                  li           gp, 0x80000000
                  li           s8, 0x80000000
                  li           s9, 0x1ed57fc6
                  li           s0, 0xfe7e05eb
                  li           s10, 0xe94feb79
                  auipc        s8, 279727
                  add          s8, gp, a6
                  addi         t6, gp, -971
                  addi         gp, a6, -579
                  nop
                  nop
                  lui          t6, 229929
                  nop
                  addi         t0, s9, 414
                  addi         s8, s8, 654
                  lui          a6, 651714
                  add          t6, s2, s2
                  lui          a6, 680563
                  sub          s9, s10, s10
                  nop
                  auipc        s10, 349137
                  auipc        s0, 413000
                  addi         a6, a6, 39 #end riscv_int_numeric_corner_stream_9
                  addi         a1, s4, -673
                  or           s3, s2, s6
                  sltiu        zero, a0, 2008
                  andi         s8, t2, 1364
                  srli         sp, ra, 14
                  and          a2, a0, t6
                  sub          a5, s11, sp
                  and          t1, s4, t2
                  auipc        t2, 1023839
                  xori         t1, t0, 2012
                  sll          a1, t4, t5
                  slt          s6, t1, t2
                  andi         a0, s6, 1765
                  srai         t0, zero, 24
                  srai         a2, t2, 5
                  auipc        sp, 821100
                  and          a0, s3, s8
                  add          s9, a7, a1
                  or           t2, s6, s3
                  ori          s6, s2, 1636
                  xori         a7, t6, 113
                  slli         s8, s3, 9
                  xori         s7, s0, -125
                  ori          a1, s10, -1098
                  addi         t6, sp, -739
                  sll          a0, a5, s9
                  nop
                  lui          t0, 611699
                  or           s8, a4, t6
                  lui          a4, 290540
                  sltu         ra, s7, a4
                  addi         a4, gp, -1985
                  sub          a5, a5, t2
                  lui          s9, 544794
                  add          s10, a5, s8
                  sub          a7, a4, t6
                  add          s0, t5, t1
                  add          t4, s3, s4
                  nop
                  sra          t0, a5, a5
                  srai         a6, t2, 22
                  nop
                  addi         a2, a5, 1910
                  ori          a7, t2, 1818
                  addi         t6, t2, 1518
                  nop
                  ori          sp, a6, -59
                  sltu         s6, a4, s9
                  lui          t0, 456322
                  andi         s3, a0, 2036
                  add          t4, t3, a6
                  xori         s8, tp, 1694
                  or           t6, s7, sp
                  auipc        zero, 618225
                  slli         t6, s2, 31
                  srli         s10, s2, 16
                  add          s9, s10, t5
                  xor          t2, t6, s2
                  and          s10, t5, gp
                  and          s4, a7, a5
                  sltu         a3, a7, s6
                  ori          s3, t2, 1351
                  srli         a6, s1, 18
                  slti         a3, s11, 1551
                  srl          s0, s2, sp
                  and          t4, a0, s6
                  sub          s0, t0, t0
                  and          s7, a7, a7
                  or           a1, ra, s11
                  auipc        s9, 973741
                  sltu         zero, t1, t3
                  or           s9, s4, a3
                  auipc        s10, 968662
                  ori          a7, sp, 1471
                  ori          t4, s4, -158
                  xor          s7, t0, a1
                  andi         a4, s6, -1687
                  slt          a0, a1, s10
                  slti         t3, s8, 91
                  slt          s2, a2, s2
                  or           t4, t3, t3
                  sub          a1, s2, s0
                  and          a7, a6, s5
                  srli         s7, a5, 22
                  and          s10, a3, s4
                  sub          ra, t2, t0
                  srai         a1, tp, 9
                  srl          a4, a7, s2
                  srl          s10, a7, a7
                  add          zero, tp, s7
                  sra          a7, t4, s1
                  slt          a7, a0, s7
                  slli         t0, a3, 13
                  slt          t3, s7, s3
                  sub          t6, tp, t1
                  xori         a1, a1, -65
                  add          s9, t1, t3
                  slli         sp, t5, 17
                  sra          ra, t6, t2
                  slt          s3, zero, s9
                  slli         s8, s0, 15
                  lui          a7, 469612
                  addi         s6, s3, 1371
                  sra          zero, zero, a2
                  slti         s7, t2, -791
                  sltiu        a4, ra, -144
                  sub          a7, a5, s8
                  auipc        a4, 444598
                  auipc        sp, 98676
                  sra          s0, s1, t4
                  sltu         s6, s0, a2
                  sltiu        gp, sp, 1321
                  auipc        t0, 503805
                  nop
                  and          s0, gp, a0
                  addi         s3, t1, -462
                  or           ra, t2, s4
                  srli         sp, t4, 17
                  srli         s0, t5, 10
                  xori         gp, a6, -77
                  ori          s4, t0, 949
                  ori          a2, t2, 47
                  ori          s9, s3, -85
                  sltu         s5, s1, s0
                  and          s3, s0, s11
                  addi         ra, a3, 431
                  sll          s5, s1, s7
                  sltiu        t1, a1, 1209
                  sll          a2, s8, s0
                  sltu         ra, s5, a6
                  nop
                  sltiu        t2, sp, 571
                  auipc        s6, 18561
                  and          a0, a6, s6
                  slt          a0, s9, t3
                  xori         a7, t0, -745
                  srai         s6, a0, 3
                  add          s10, a2, s1
                  slti         t0, t1, -637
                  sltiu        s7, s9, -646
                  slli         zero, t0, 9
                  addi         a7, s3, 1712
                  slt          ra, s6, gp
                  and          sp, s2, gp
                  or           ra, t2, t2
                  slti         s7, s8, 1830
                  sra          a7, t5, a5
                  sra          a4, a7, sp
                  andi         tp, s1, -525
                  sub          sp, s5, s6
                  sll          sp, s5, t6
                  lui          ra, 626982
                  sra          t0, a0, sp
                  sltu         t3, a2, a2
                  srli         t1, a1, 1
                  nop
                  add          t3, tp, t0
                  sll          a2, s0, s1
                  and          s3, t6, a6
                  auipc        zero, 362431
                  srl          s10, a3, zero
                  sub          a5, t1, s4
                  slt          a6, a6, s5
                  lui          t4, 861709
                  srai         sp, tp, 5
                  slli         t0, a6, 13
                  srai         s8, t5, 12
                  and          t3, s0, a7
                  or           t1, s8, s1
                  sltiu        a1, zero, 1872
                  ori          s0, s0, -2010
                  srl          s8, t1, t1
                  slti         t3, gp, 437
                  srli         zero, gp, 5
                  and          s7, t4, s3
                  srl          gp, s2, s1
                  srai         a0, t2, 7
                  xori         s7, a6, 472
                  ori          t6, s2, 83
                  add          s9, s2, s9
                  andi         t0, t3, -1998
                  sltu         ra, s3, a2
                  sltiu        a1, s11, -862
                  and          s4, a3, t5
                  andi         a3, a1, -301
                  sltu         a7, s11, s11
                  nop
                  sltu         a3, s1, a0
                  addi         s8, s3, -1041
                  slt          s8, t6, s9
                  srl          s6, s8, s4
                  auipc        a3, 336732
                  ori          a7, a0, 157
                  add          t4, a2, s8
                  add          a5, s7, ra
                  sltu         ra, s10, s2
                  slt          s3, a7, ra
                  slt          t0, a0, s4
                  slt          a3, a3, a2
                  andi         t4, t0, -1363
                  srl          ra, s3, ra
                  xori         t4, t5, 1190
                  andi         a5, s10, -1098
                  nop
                  slli         t2, sp, 17
                  or           s2, s8, t0
                  xor          t0, sp, ra
                  lui          t4, 614188
                  sltu         zero, s9, s5
                  xori         a4, t5, 1032
                  sltu         a5, t0, sp
                  add          t6, a3, t6
                  andi         s8, a4, -1133
                  srli         s5, gp, 21
                  and          t6, s6, a3
                  srai         s10, s0, 9
                  add          a5, a3, t5
                  slt          a3, t2, zero
                  and          t0, t4, zero
                  sltu         s9, tp, tp
                  or           t2, t2, gp
                  or           a2, t4, t3
                  auipc        s4, 3048
                  addi         tp, s8, 1317
                  sll          s7, t5, s8
                  srl          t4, ra, ra
                  nop
                  nop
                  xori         a6, s11, -1237
                  ori          s2, s2, -505
                  sub          t6, t4, s1
                  sub          a4, zero, a5
                  lui          s4, 551318
                  slt          a2, s1, s5
                  srl          s4, a0, sp
                  add          a7, gp, a6
                  auipc        t3, 732872
                  addi         s4, sp, -1241
                  and          tp, t2, s2
                  or           zero, t1, a2
                  slli         t6, sp, 16
                  addi         t2, sp, 1974
                  xor          a5, s7, s3
                  nop
                  xori         s9, s10, 472
                  ori          a0, ra, -939
                  sll          s0, s0, a2
                  and          t2, t4, a6
                  srli         s5, a5, 27
                  srai         a2, s10, 21
                  andi         a0, t3, 1700
                  sra          s0, a6, a4
                  ori          a0, t0, 1529
                  addi         t6, s7, 744
                  srli         t6, s2, 20
                  addi         a5, t2, -2028
                  srli         ra, s0, 16
                  slt          t0, s0, ra
                  andi         ra, s7, 1083
                  sub          sp, s10, a0
                  xor          s2, t6, a7
                  srli         gp, a4, 18
                  add          s10, t5, s3
                  sub          a2, a5, s7
                  add          t0, t2, zero
                  xori         s8, t5, -16
                  srai         ra, t3, 21
                  sltiu        tp, gp, -659
                  slt          a4, s0, a1
                  addi         a3, a3, -524
                  xori         a5, t1, 1862
                  and          s5, gp, s7
                  auipc        s4, 5039
                  srai         t3, t3, 14
                  slli         s6, tp, 18
                  and          zero, s9, zero
                  andi         a4, a1, -1024
                  xori         s3, s5, -35
                  srl          a3, s8, s8
                  xori         t1, a4, -167
                  auipc        t6, 1037318
                  ori          ra, a5, 1538
                  xor          a2, a5, s0
                  lui          t1, 970164
                  srai         t3, s2, 28
                  sra          t6, a2, tp
                  slli         s7, t4, 8
                  slti         a2, zero, -1939
                  srai         gp, sp, 27
                  lui          s5, 247877
                  add          gp, s1, a5
                  sltu         s0, t4, s7
                  auipc        gp, 294306
                  nop
                  addi         s8, s5, -825
                  srli         a2, t5, 26
                  ori          zero, s10, 767
                  ori          s7, a7, 1254
                  srai         a2, s0, 9
                  slti         sp, gp, 445
                  sltiu        s8, t5, -1077
                  lui          s5, 405802
                  srl          zero, a2, ra
                  sll          ra, sp, a6
                  lui          a7, 1020016
                  slli         s8, t0, 5
                  sra          t0, t2, sp
                  xor          s3, a5, s6
                  sltiu        t4, s2, 967
                  addi         s8, t2, -496
                  slli         s2, t3, 28
                  sll          s2, s9, t0
                  sltiu        s7, s10, -1839
                  xor          s4, s1, s8
                  xor          a2, s3, t1
                  addi         s0, s2, 1820
                  xor          sp, gp, s6
                  ori          a2, s10, -1571
                  andi         a1, s2, 847
                  lui          sp, 550407
                  srli         t1, a5, 19
                  xor          t1, a0, s9
                  slt          t3, a4, ra
                  sltu         a5, a2, t3
                  sub          a6, s10, s8
                  slli         s9, a0, 22
                  add          s6, zero, gp
                  andi         s8, a3, -931
                  sra          s2, s2, s0
                  srai         tp, t1, 6
                  slti         s3, s11, -1078
                  auipc        s10, 826961
                  sra          s4, a1, s0
                  sll          tp, s4, s11
                  andi         a1, s6, 1268
                  sltiu        t4, a2, -1469
                  srai         a5, s5, 8
                  sltiu        s10, a4, -503
                  slti         ra, s5, -1180
                  nop
                  and          t2, a1, t0
                  andi         t0, a6, -140
                  or           a1, gp, s8
                  add          a6, t2, a3
                  xor          a3, s9, s7
                  sll          a2, t6, a5
                  andi         s4, s8, -693
                  lui          s7, 992796
                  xor          a7, s7, t1
                  sub          a4, s6, t6
                  sra          ra, a0, t6
                  and          sp, t5, s3
                  sltiu        a1, s5, -2036
                  sltu         a3, tp, sp
                  or           ra, s7, t2
                  lui          tp, 421159
                  srli         t4, a5, 20
                  or           t1, a0, a2
                  slli         tp, t3, 9
                  srli         s6, a3, 17
                  lui          t6, 805208
                  andi         a3, s5, 1071
                  addi         t3, t0, 219
                  xor          s3, t1, ra
                  sltu         a5, s5, zero
                  sltu         a6, t2, tp
                  slti         a1, gp, -425
                  slti         s5, s5, 1853
                  lui          s3, 326945
                  nop
                  sra          sp, a2, s8
                  slti         t2, tp, -855
                  auipc        s10, 974900
                  andi         t1, a3, 720
                  slli         t6, a3, 8
                  andi         t1, tp, 1031
                  add          zero, s4, s11
                  srli         t6, s3, 6
                  add          a2, s8, a3
                  xor          a0, ra, t1
                  lui          s2, 108097
                  sra          a1, a1, a3
                  sub          t1, t2, zero
                  srai         zero, s0, 1
                  add          s4, s10, s6
                  sll          t4, s5, a4
                  srai         a7, t2, 30
                  ori          s3, s2, -1955
                  slli         t2, t0, 3
                  srli         t6, a7, 8
                  sra          s7, a7, s3
                  nop
                  slti         a7, t0, 1571
                  slt          s3, a3, s9
                  nop
                  sra          s10, a1, t2
                  nop
                  xori         t0, t6, -1604
                  auipc        ra, 400223
                  lui          zero, 252924
                  srai         s9, a1, 22
                  srli         s7, t2, 12
                  srai         t3, t1, 19
                  sltu         t2, s4, s4
                  add          a1, s6, sp
                  slli         tp, a5, 6
                  slti         s7, t1, -742
                  xor          s9, t1, s9
                  sll          s7, t5, s9
                  auipc        gp, 95982
                  lui          tp, 61283
                  or           a6, s5, s1
                  sltiu        a2, a3, -958
                  slti         a0, a4, -1207
                  nop
                  slt          t4, gp, a0
                  xor          s10, s3, t2
                  and          s8, a0, t2
                  sll          a6, s6, t6
                  ori          s0, a3, -791
                  nop
                  auipc        s9, 875012
                  slt          a6, s9, gp
                  sra          zero, a2, t3
                  addi         s3, t6, 877
                  sub          s0, ra, sp
                  xori         s8, sp, -753
                  srai         a4, s10, 8
                  andi         a2, a2, -1306
                  sra          s7, t0, s2
                  slti         a6, s10, 1295
                  slti         a4, t6, -725
                  sltu         a0, s9, ra
                  sub          a2, a0, t6
                  slli         t1, t2, 3
                  addi         t4, a1, -611
                  or           sp, t0, gp
                  slti         s7, t6, 1520
                  sltiu        s9, a1, 1156
                  sll          s8, a2, s0
                  slt          zero, a6, ra
                  lui          s8, 674286
                  sub          s10, tp, a0
                  andi         s3, ra, 960
                  xor          s6, zero, t1
                  sltiu        s0, s8, -254
                  sltu         s2, a7, a4
                  add          zero, a6, t1
                  xor          s9, t2, s4
                  slti         s8, s10, 133
                  slli         gp, a4, 13
                  sltu         s10, zero, s8
                  slti         s7, s5, 479
                  sltiu        t6, a2, -1305
                  srai         t1, a6, 28
                  slti         t0, s5, 1851
                  andi         s9, t1, -1955
                  auipc        s10, 836140
                  sltu         s4, s11, t4
                  or           s6, s6, sp
                  sra          s5, t5, tp
                  or           t4, a4, a2
                  slti         gp, zero, 378
                  ori          t0, t5, 1556
                  xor          s4, s9, tp
                  slli         t1, tp, 26
                  slli         ra, a2, 19
                  slli         s5, s2, 10
                  or           s2, s8, a3
                  slti         t6, t6, 693
                  slt          s0, s1, a5
                  sltu         a4, sp, a2
                  sra          a4, s7, a6
                  andi         zero, s8, 220
                  auipc        s4, 747924
                  xor          tp, ra, t5
                  srai         zero, sp, 10
                  slt          a3, a5, s7
                  andi         sp, t4, -1429
                  lui          t2, 492230
                  sltu         tp, s11, s2
                  xor          gp, s8, t3
                  sll          s3, s0, a3
                  srl          a2, s7, s8
                  andi         gp, a5, 475
                  xor          s9, s3, a2
                  addi         s7, a2, 997
                  sll          s7, s8, s4
                  add          s4, a0, ra
                  auipc        s3, 271935
                  slli         s9, t2, 18
                  srli         s2, s6, 4
                  sub          gp, s4, t4
                  sub          a6, t1, s0
                  sltu         a2, s7, s7
                  nop
                  srli         a7, a3, 9
                  xori         s0, t6, 740
                  lui          a2, 442853
                  xor          t4, sp, t3
                  andi         ra, a7, 1461
                  auipc        t3, 929972
                  xori         s7, a2, -779
                  ori          ra, sp, -2022
                  auipc        s5, 624991
                  and          a7, tp, a1
                  slli         tp, t4, 16
                  ori          t0, s9, -102
                  nop
                  srli         a6, a6, 13
                  lui          t0, 284895
                  sra          gp, a1, a7
                  addi         t1, t2, 224
                  srai         s0, t1, 21
                  slt          a3, a7, a3
                  andi         a0, a1, -1912
                  sub          zero, t6, s3
                  sub          s4, s9, s10
                  add          a5, tp, s6
                  add          s7, s11, s1
                  sltiu        t6, s10, -784
                  ori          s8, a1, 670
                  srli         t0, s8, 23
                  sltiu        t4, a4, -863
                  or           a4, s7, t2
                  srai         s10, s7, 2
                  auipc        s9, 244120
                  ori          s8, a2, -1532
                  or           s2, ra, tp
                  sltiu        t4, t0, -514
                  add          zero, s2, tp
                  or           t1, tp, a1
                  xori         tp, t1, 759
                  sltiu        s8, s1, -96
                  srl          a0, a4, s4
                  add          a7, t1, t1
                  sltiu        t3, sp, 1229
                  add          s10, s6, s5
                  auipc        t1, 41531
                  or           a7, zero, a0
                  lui          a7, 917617
                  nop
                  sub          t3, tp, s9
                  andi         zero, a7, -976
                  slt          tp, tp, s8
                  sltiu        s8, s3, -612
                  srli         s9, s6, 10
                  lui          s8, 260521
                  sra          t0, a6, s0
                  ori          a3, s11, -1343
                  slli         zero, gp, 16
                  srai         s2, tp, 31
                  nop
                  sltiu        gp, t6, -1619
                  xori         a0, s10, -1293
                  xor          a4, t2, ra
                  sub          s0, t0, t2
                  xori         s9, a7, 1580
                  slt          zero, a4, s10
                  lui          s2, 853186
                  srai         tp, t5, 2
                  addi         sp, t0, -884
                  ori          t2, s9, 1608
                  or           t2, a4, a4
                  sltiu        s10, a0, 1439
                  sll          s8, a5, s11
                  xor          a0, sp, t2
                  xori         a0, a5, -1166
                  slt          a4, a5, t2
                  srai         s5, s8, 6
                  add          t3, s4, t2
                  slli         sp, gp, 10
                  slt          t3, s8, s1
                  addi         ra, t4, 1152
                  or           s3, a4, s6
                  srli         s10, s4, 6
                  sll          a3, s1, t6
                  nop
                  or           s3, s3, a0
                  sltu         s2, s0, a4
                  sltiu        a3, zero, -949
                  sll          t6, a0, s7
                  sra          s6, t2, s5
                  nop
                  sll          zero, a5, t0
                  addi         tp, s8, -1131
                  srai         s2, t2, 13
                  add          a0, t1, s10
                  sub          t1, s3, s7
                  xor          t4, a1, zero
                  slli         zero, a5, 10
                  slli         gp, zero, 19
                  srai         s2, t3, 7
                  sltiu        a3, a7, -964
                  add          s5, s5, a0
                  xor          a7, a4, s5
                  slti         t2, t2, -1199
                  andi         t0, t5, 1350
                  sltu         s9, s9, a6
                  auipc        zero, 1017134
                  sltu         s0, a6, a6
                  addi         ra, a5, -1959
                  srl          t1, s0, tp
                  sra          s9, tp, a1
                  srl          t2, s5, a4
                  sll          s2, a1, s3
                  slti         zero, sp, -1803
                  nop
                  sltiu        s6, a5, -494
                  auipc        a1, 74776
                  sll          t4, t2, a1
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           a1, 0x80000000
                  li           s7, 0x0
                  li           gp, 0x0
                  li           s4, 0x0
                  li           t6, 0x4e355463
                  li           a6, 0xffffffff
                  li           t3, 0x0
                  li           t2, 0x80000000
                  li           a3, 0x9c577dcc
                  sub          gp, a1, t6
                  add          gp, a1, a1
                  nop
                  sub          a6, a3, a3
                  lui          a6, 714808
                  lui          t2, 374090
                  lui          a3, 1006170
                  nop
                  lui          s4, 55721
                  auipc        a1, 923749
                  sub          a3, gp, s4
                  auipc        s4, 622377
                  nop
                  auipc        gp, 528440
                  auipc        s7, 217322
                  addi         t2, t6, 534
                  lui          t2, 353136
                  nop
                  sub          a1, s4, a6
                  addi         s4, a1, -347
                  sub          a0, s4, a1
                  nop
                  sub          t3, s4, t6
                  add          a1, t2, t3
                  auipc        t2, 970284
                  add          s4, a3, s4 #end riscv_int_numeric_corner_stream_13
                  andi         a1, a7, -1371
                  sltu         t0, t2, s3
                  sltu         s0, t4, s7
                  lui          t3, 186750
                  sub          s0, s1, a4
                  ori          tp, gp, 1312
                  addi         a7, s3, -395
                  sub          t0, s4, s6
                  auipc        t4, 146777
                  xori         a6, t5, -809
                  ori          s10, t1, -1182
                  nop
                  andi         s9, s0, 1043
                  slti         s8, t5, -482
                  andi         s2, a1, 911
                  srai         s10, s3, 31
                  xori         a4, s10, -1159
                  andi         a1, s9, 1507
                  slt          s7, s5, tp
                  ori          a5, a1, 1920
                  slti         t2, t6, -949
                  sltu         t1, a5, a0
                  ori          t3, zero, 1293
                  nop
                  srai         t3, a4, 31
                  sub          a6, s6, s7
                  andi         a6, a4, 196
                  slt          a0, t3, tp
                  lui          t3, 5333
                  auipc        a0, 1000652
                  nop
                  andi         a4, ra, 1387
                  slt          a7, s2, a4
                  nop
                  sltu         a2, s9, t0
                  xori         tp, s0, 383
                  and          a3, a7, a4
                  add          s6, s8, t0
                  xor          t1, s8, t3
                  slli         zero, t4, 7
                  srl          gp, tp, s11
                  srl          t4, t2, a3
                  auipc        s9, 843919
                  and          s9, a7, a2
                  xor          ra, t4, s1
                  or           ra, s7, t3
                  ori          a7, t3, 773
                  nop
                  srai         s5, a0, 28
                  xor          a3, s0, a5
                  sub          t3, zero, a5
                  slli         a7, s11, 28
                  nop
                  addi         a6, sp, 1679
                  srli         t1, a1, 22
                  srl          t0, a6, s10
                  sub          a0, s5, a3
                  sll          gp, a1, s9
                  xori         s3, t2, 511
                  ori          s5, t3, 1415
                  xor          s3, s1, gp
                  ori          a1, a6, 1824
                  lui          sp, 165108
                  sra          a0, s9, a5
                  add          s7, tp, t3
                  add          sp, sp, t6
                  slti         a4, s10, -1664
                  srl          t1, tp, a3
                  sub          s7, a2, t5
                  slti         t2, s10, -1414
                  and          t3, tp, t2
                  srl          a5, s7, a1
                  nop
                  auipc        s9, 536755
                  sll          s6, a0, a5
                  xori         a0, sp, -1021
                  srli         a5, a1, 13
                  or           zero, s3, s11
                  sll          t0, s5, a1
                  srl          s4, t6, gp
                  sub          s4, t3, a2
                  addi         t4, t3, -1082
                  sub          gp, s11, s8
                  lui          a2, 417044
                  slt          gp, tp, zero
                  sra          s3, t0, a5
                  sll          t0, s10, a6
                  srai         a1, s6, 17
                  srli         a2, t6, 25
                  slti         a2, a3, -1018
                  add          gp, t0, s11
                  sll          s2, a1, a0
                  sltiu        s7, a7, -972
                  addi         t0, s6, -901
                  sll          zero, s4, s3
                  andi         tp, s5, 1708
                  or           s8, s6, s9
                  srli         s6, t4, 28
                  and          s4, a3, s9
                  nop
                  xori         a2, a4, 1658
                  slli         a3, s2, 29
                  andi         a6, gp, -342
                  sll          t1, s3, ra
                  sltiu        a2, a7, 1177
                  sub          t0, a0, s8
                  lui          t3, 946572
                  ori          a5, a6, 1531
                  andi         zero, a6, -1597
                  add          s4, t2, s9
                  sltiu        a7, t6, 176
                  sll          a3, a1, s9
                  sra          t2, s9, s3
                  slti         s4, a2, -199
                  auipc        a2, 133516
                  srl          s8, s1, s10
                  sltu         a5, s9, s6
                  addi         t6, a1, -1761
                  slli         s7, s6, 23
                  srli         s5, s11, 21
                  andi         a2, a6, 174
                  and          s2, s9, a1
                  andi         t6, s8, -1935
                  and          s5, s2, t1
                  srai         t2, s2, 25
                  slti         gp, t0, 943
                  slti         sp, s1, -1573
                  or           s3, t0, a5
                  or           s0, s6, t1
                  sll          a2, t5, t1
                  srl          a6, s7, s5
                  srli         gp, s7, 28
                  xori         s10, s1, 672
                  or           s8, s0, s0
                  slli         a0, a5, 11
                  xori         t6, s6, 1522
                  srl          s10, a4, s3
                  slli         zero, a2, 28
                  andi         tp, t1, -2001
                  addi         t3, a4, 889
                  andi         s10, s10, -1047
                  auipc        gp, 714864
                  xori         a6, t2, -515
                  srai         sp, a4, 12
                  sltiu        s7, t0, -653
                  slt          s7, s11, a7
                  srli         s9, s4, 12
                  slti         s10, s3, 945
                  sub          s3, a6, a3
                  sltu         s8, a2, t5
                  or           a5, t1, a4
                  nop
                  sltu         t1, s1, a1
                  slti         a3, a5, -12
                  andi         a2, gp, 1687
                  sltiu        s6, s6, -1012
                  slt          s4, s1, t6
                  and          t2, a0, t5
                  xori         t6, s4, 1913
                  nop
                  auipc        sp, 869703
                  xori         s7, gp, -965
                  sltu         t2, s3, zero
                  srli         gp, a7, 15
                  xori         t6, a6, 1616
                  ori          s3, s8, -1350
                  sltiu        a1, s4, -430
                  andi         ra, t0, -1065
                  and          gp, t0, s2
                  srai         t1, s2, 27
                  xor          s10, s0, s5
                  lui          s5, 631590
                  ori          s0, s10, 421
                  nop
                  lui          s0, 265175
                  sub          a1, s9, a5
                  sub          t4, s4, tp
                  nop
                  add          a1, t1, tp
                  add          gp, s4, sp
                  srai         a2, t5, 9
                  srli         gp, s10, 12
                  andi         s5, gp, -1468
                  nop
                  srli         a4, s3, 8
                  andi         zero, s3, -1671
                  slt          ra, t2, s11
                  sra          t4, t6, t1
                  sll          t2, a6, s1
                  or           a5, tp, s11
                  add          a4, s5, a4
                  xor          s5, t0, s2
                  xori         a2, tp, -645
                  nop
                  auipc        a0, 391674
                  xori         a7, s10, -1835
                  andi         s2, s3, -59
                  srli         t1, s1, 25
                  add          t6, a6, sp
                  sltu         t4, t4, t6
                  add          s4, a1, t5
                  add          s6, s10, s11
                  slti         s2, t5, 985
                  srl          s7, a6, s9
                  sll          gp, s4, s9
                  and          s7, a4, a5
                  xori         a3, t4, 1601
                  or           s2, t5, a6
                  sll          a1, zero, a2
                  sra          s2, s1, sp
                  xor          gp, t2, a5
                  sll          a3, t0, tp
                  sub          a4, s8, a6
                  sub          a6, s2, sp
                  xori         a1, s7, -1203
                  sltiu        t0, t5, -696
                  auipc        a6, 130280
                  sltu         t1, a7, a0
                  sll          t0, zero, ra
                  addi         a5, a5, -186
                  ori          a0, s1, -1646
                  sub          s10, a6, sp
                  and          s2, t6, t6
                  srli         gp, ra, 12
                  slli         a2, tp, 25
                  srli         a3, ra, 9
                  slt          a0, s10, s4
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           a4, 0x80000000
                  li           s7, 0x0
                  li           a6, 0x80000000
                  li           a2, 0x91b002fa
                  li           tp, 0x2fef7e64
                  li           t0, 0xffffffff
                  li           ra, 0xffffffff
                  li           t3, 0xffffffff
                  li           sp, 0x0
                  addi         s4, t3, -51
                  add          tp, tp, a2
                  addi         ra, a6, 1707
                  add          t0, a2, ra
                  lui          s7, 265164
                  addi         a6, t0, 930
                  auipc        s4, 636829
                  auipc        a4, 55542
                  add          t3, t0, s4
                  lui          tp, 760767
                  auipc        ra, 970773
                  addi         sp, sp, -444
                  lui          s7, 250875
                  sub          t3, a6, s4
                  addi         s7, ra, 1847
                  nop
                  nop
                  add          t0, tp, s7
                  addi         s7, t0, -706
                  sub          a2, s7, a2
                  addi         s4, s7, -1627
                  nop
                  sub          sp, tp, s4
                  lui          tp, 150902
                  lui          ra, 116661
                  add          s7, s7, ra
                  lui          s4, 894788
                  auipc        t0, 826381 #end riscv_int_numeric_corner_stream_16
                  slli         a5, t3, 30
                  ori          t6, a4, -1888
                  sll          s5, s3, a1
                  sltiu        s8, s2, -231
                  sll          t4, gp, zero
                  andi         a7, a1, -226
                  sll          t0, s9, t3
                  addi         s8, s11, -1436
                  slli         ra, s5, 8
                  slti         t4, a2, 1088
                  sltu         zero, t0, sp
                  addi         t3, zero, 442
                  sltiu        tp, a0, 669
                  addi         a0, s5, 1230
                  srli         a3, a0, 30
                  auipc        a5, 651288
                  or           ra, s10, a7
                  srai         s9, s2, 14
                  sub          t0, a2, t2
                  srai         a3, a1, 21
                  andi         s10, a0, 119
                  srl          s0, s4, t6
                  srl          s10, t1, t4
                  slt          a3, s4, gp
                  andi         s7, t0, 136
                  srai         s5, s0, 28
                  slli         a7, s9, 25
                  xori         t4, gp, -1489
                  sltu         ra, t0, a4
                  sltu         a2, a4, zero
                  slti         a1, t2, -1941
                  ori          a1, t1, 27
                  xor          s6, gp, tp
                  sltu         s6, t6, t4
                  add          s8, a0, a2
                  or           a6, s1, s7
                  or           s6, s7, a2
                  sltu         s4, a2, a3
                  nop
                  ori          a5, t6, 522
                  slt          s2, a3, s6
                  auipc        sp, 877026
                  slli         s7, gp, 10
                  slti         a3, a3, 329
                  or           s10, a1, tp
                  auipc        sp, 457397
                  ori          tp, sp, 1737
                  slli         a4, ra, 21
                  and          s9, s0, a4
                  srai         s2, sp, 14
                  srl          s0, a2, a6
                  xor          a6, tp, s8
                  sra          t6, tp, tp
                  srli         a6, t1, 17
                  or           t0, s9, s0
                  slli         ra, s4, 6
                  slli         s4, t4, 22
                  and          s3, a1, zero
                  or           a0, s1, tp
                  sra          s4, s6, s5
                  sra          a1, a0, t2
                  srai         sp, s2, 11
                  andi         a1, s4, 1552
                  sra          t1, s10, a3
                  slli         s8, a1, 7
                  sra          t3, s8, a3
                  xor          t1, a4, t3
                  xori         a4, t0, -69
                  nop
                  sra          a1, a0, a4
                  srai         a1, t3, 21
                  xor          gp, s5, s4
                  slt          a0, s9, a1
                  sub          t2, s8, t3
                  nop
                  slti         a0, a5, -2048
                  addi         a6, a0, -1437
                  xori         tp, s10, -1625
                  xori         s10, t5, -1351
                  slti         sp, t4, -1690
                  srli         t6, t2, 13
                  andi         s5, gp, -1838
                  and          s10, s3, s9
                  slti         a5, s9, 702
                  auipc        s5, 961315
                  sub          s6, t2, t2
                  sltu         ra, a7, a3
                  srai         a1, a1, 21
                  lui          t2, 903910
                  sra          ra, s11, a5
                  auipc        sp, 532054
                  srai         a2, a0, 25
                  xor          s2, s6, gp
                  sltu         t6, s10, s6
                  nop
                  sra          s3, s4, t5
                  and          t2, a5, s6
                  slli         s2, t6, 31
                  nop
                  or           t6, s3, a7
                  sll          a2, s2, t1
                  xori         a0, tp, 886
                  sub          s4, t6, a7
                  xor          ra, a2, t6
                  nop
                  xor          s4, t5, gp
                  sll          s3, s10, a7
                  slli         tp, s2, 29
                  sra          s10, t1, gp
                  xori         a6, t1, 1815
                  slli         a3, s9, 0
                  sltu         a7, gp, zero
                  srli         a7, a7, 29
                  addi         s8, s6, -1421
                  slt          s9, t4, sp
                  slt          s8, s2, s5
                  add          t0, ra, gp
                  xor          a3, t4, s3
                  addi         sp, t6, 1109
                  slt          s2, a2, gp
                  srli         a0, s8, 18
                  xori         ra, a4, -16
                  sra          t2, a5, a1
                  sra          a5, a2, t5
                  slti         s3, s0, -77
                  slti         tp, zero, 1173
                  sltiu        a3, a4, -1447
                  nop
                  add          sp, a3, t3
                  add          a2, gp, a1
                  sub          t1, zero, t1
                  sll          t6, s8, gp
                  sll          a6, a5, ra
                  auipc        s10, 962108
                  andi         s10, t5, 383
                  xori         t2, t5, 623
                  add          s0, t5, zero
                  xor          s5, s9, t3
                  xor          gp, a4, t4
                  sltu         a1, t2, a7
                  auipc        zero, 885330
                  slti         ra, s0, -665
                  sll          s2, a5, t1
                  sra          s5, t1, s3
                  or           t6, t1, s5
                  and          t1, s5, sp
                  sra          s9, t0, zero
                  sra          sp, a0, t6
                  ori          t4, t1, 1838
                  auipc        a3, 509105
                  andi         t0, s7, 234
                  sll          t6, t2, a7
                  or           t6, a1, s8
                  sub          s5, tp, ra
                  ori          s3, gp, 1482
                  slti         a6, a7, -254
                  add          t3, s2, a5
                  nop
                  sra          t0, t5, sp
                  nop
                  lui          a1, 203107
                  slt          s10, t4, t3
                  sltiu        t0, s3, -1507
                  add          a0, sp, tp
                  add          s10, s10, t2
                  andi         a5, tp, -969
                  sub          a3, t0, s0
                  add          s7, s9, a1
                  srai         a0, a4, 21
                  sub          a4, a7, t4
                  andi         a0, s10, 1322
                  add          s3, a1, t5
                  or           s2, t5, s1
                  slti         t2, a1, 1450
                  slli         a2, s10, 27
                  slti         s7, t1, -1336
                  andi         ra, sp, 1275
                  slli         s10, s9, 24
                  and          t0, s11, a3
                  srli         t3, t3, 29
                  addi         s9, t1, -206
                  srli         s10, zero, 9
                  xor          s10, a6, a2
                  xor          t3, ra, t5
                  xori         s7, t2, 543
                  sra          t4, s4, t0
                  srai         t3, t4, 22
                  slti         t1, a1, -344
                  slt          t2, s8, t1
                  sub          t0, s1, tp
                  slli         t4, zero, 1
                  sra          s10, s0, s7
                  sra          ra, s0, a1
                  nop
                  srai         s7, s11, 25
                  slti         t4, s1, -1038
                  sra          gp, s6, t5
                  nop
                  andi         gp, a0, 1985
                  add          t6, s8, s8
                  sltu         a0, s1, s8
                  sub          a5, gp, s4
                  slt          a0, t3, zero
                  nop
                  slli         a0, a6, 22
                  and          t2, s3, sp
                  slt          a0, gp, gp
                  sltu         t4, s11, a7
                  srli         s9, s1, 18
                  srli         s2, a4, 15
                  srl          tp, s4, t1
                  nop
                  sltu         t0, t4, s11
                  or           s5, t3, t4
                  slt          s9, t2, s9
                  or           sp, s10, t4
                  sra          t3, t3, s6
                  sll          a1, s1, s5
                  xor          s6, gp, tp
                  and          s5, a2, s2
                  add          s3, t6, s4
                  auipc        a3, 946874
                  sltiu        a0, t3, -1506
                  sltiu        t3, a6, -1968
                  auipc        s5, 741433
                  slti         t2, a5, 1362
                  srli         t2, t3, 23
                  slt          zero, a2, sp
                  xor          s10, t1, a0
                  add          s8, t1, s4
                  slti         t2, s9, -753
                  srl          a7, t0, s8
                  slti         a4, a2, -1934
                  srl          s10, s6, s9
                  srli         s9, gp, 7
                  sub          a4, s7, s6
                  srai         t2, a6, 9
                  xori         ra, a4, 295
                  slti         a0, tp, -1501
                  slli         s10, a6, 8
                  xori         t0, s1, -1480
                  auipc        a6, 97522
                  add          zero, a6, a6
                  ori          s4, t1, 1057
                  sra          a1, s10, a1
                  srli         s6, s11, 24
                  nop
                  srli         a6, s6, 12
                  xor          s7, ra, ra
                  add          t4, s7, ra
                  slli         s5, s3, 14
                  and          sp, s8, a7
                  sub          a3, t2, a2
                  xor          a3, t1, s11
                  xori         t6, a3, -13
                  srl          gp, a1, s10
                  sltu         gp, a3, s9
                  andi         a2, a0, -1350
                  srai         s2, t3, 27
                  srai         a4, s0, 23
                  sra          s8, a0, a0
                  ori          a4, sp, -890
                  add          s7, s11, s5
                  or           s2, t5, s8
                  sra          t1, s2, a4
                  sub          t2, a7, a5
                  ori          ra, gp, -240
                  nop
                  srai         s7, t5, 30
                  auipc        a2, 1008271
                  srai         ra, s1, 16
                  xori         ra, s0, 1558
                  srli         t3, a5, 0
                  xor          a0, a3, a4
                  nop
                  andi         a1, s5, -1165
                  ori          zero, s7, 1610
                  nop
                  sra          s9, s4, s2
                  slt          t4, tp, ra
                  add          ra, s5, a6
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           a4, 0x80000000
                  li           s6, 0x0
                  li           s9, 0x80000000
                  li           t4, 0x0
                  li           a5, 0x0
                  li           s7, 0x0
                  li           t6, 0x80000000
                  li           sp, 0x80000000
                  li           s10, 0x0
                  lui          t4, 522736
                  nop
                  auipc        t6, 159136
                  auipc        sp, 184987
                  add          s9, s7, s7
                  auipc        a5, 150100
                  sub          a5, t4, s9
                  sub          a6, s9, a6
                  auipc        s10, 659560
                  auipc        sp, 794371
                  addi         s6, t6, -826
                  auipc        t4, 671985
                  add          t4, t4, s9
                  lui          s7, 964873
                  lui          s10, 46783
                  addi         s7, s6, -12
                  lui          sp, 675596
                  add          sp, s6, a5
                  addi         sp, s10, -514
                  sub          s9, a6, s9
                  addi         s9, s6, -930 #end riscv_int_numeric_corner_stream_15
                  ori          a3, t0, 43
                  add          a6, s4, s3
                  xor          t6, t2, s7
                  or           a4, s6, a2
                  xor          ra, s7, s5
                  addi         t2, s6, 74
                  sra          zero, t4, s5
                  auipc        zero, 798429
                  and          a1, sp, s6
                  and          a4, s3, s7
                  srai         s6, s7, 27
                  sltiu        t1, a7, 626
                  lui          s9, 475278
                  sra          a2, t6, t4
                  addi         a7, s0, -200
                  andi         a2, s8, 463
                  sra          a4, s10, a7
                  lui          a7, 643849
                  and          s10, a5, s2
                  slli         a3, a2, 25
                  andi         a5, a1, 1953
                  slli         zero, s3, 11
                  ori          s2, a1, 701
                  srli         a5, a3, 22
                  xori         t6, t0, -394
                  srli         t4, a5, 10
                  srai         s5, a6, 7
                  ori          s8, t4, 222
                  srli         a7, a4, 1
                  sub          s4, a3, s10
                  srai         sp, s1, 15
                  sra          ra, a7, s9
                  or           s8, gp, s4
                  andi         gp, s6, 1460
                  or           a4, s8, t4
                  srl          s6, s2, t4
                  lui          t0, 26902
                  srl          tp, gp, t5
                  xori         s0, a7, 864
                  srl          t6, tp, ra
                  slti         ra, a2, 1348
                  srai         s5, s4, 11
                  sll          a1, s4, a5
                  ori          t0, t2, 500
                  xori         s4, a6, 535
                  sub          t1, s2, a5
                  sra          a2, t1, s11
                  sltu         sp, t2, s9
                  srli         t0, t5, 12
                  andi         t4, a0, 1143
                  sltiu        a0, a4, 1692
                  andi         s8, s5, -1977
                  slt          a1, s2, t1
                  lui          ra, 352451
                  sra          t6, t1, t4
                  xor          t2, s6, gp
                  addi         a0, a3, 1975
                  ori          t1, s0, -1586
                  add          s7, s11, s5
                  add          s6, s2, s10
                  lui          a4, 628596
                  addi         a5, a6, -1604
                  or           s0, s6, s1
                  srai         s7, a1, 31
                  nop
                  sltiu        t6, s8, -358
                  add          s6, t2, gp
                  xor          t0, a7, ra
                  addi         t3, gp, 616
                  xor          t6, zero, a6
                  slti         a4, s7, -2035
                  sltiu        s0, s3, 197
                  srl          s2, a3, s8
                  sll          t3, s1, t2
                  sll          t4, s10, ra
                  sltiu        a0, tp, -783
                  sll          t2, s2, a1
                  or           ra, gp, gp
                  slt          s4, s11, t3
                  or           a4, s6, a5
                  addi         a3, t5, -748
                  nop
                  sltiu        t1, s9, 1602
                  srai         a4, zero, 9
                  addi         s5, a1, 460
                  sub          t3, a7, t0
                  sltu         a0, t2, s1
                  sll          s2, a7, s6
                  srli         a6, zero, 9
                  slt          s10, s11, s3
                  slli         sp, s1, 4
                  and          t0, s10, sp
                  ori          t6, s8, -1296
                  sra          a4, s4, s3
                  addi         s7, s9, 1238
                  lui          a4, 303905
                  sltu         s5, a3, a4
                  srl          s8, sp, s0
                  nop
                  xor          s4, a4, a6
                  slt          a7, s7, gp
                  srli         a0, a4, 24
                  srl          s10, s4, t6
                  nop
                  sltiu        s4, s8, -586
                  srli         s5, tp, 28
                  auipc        s7, 593219
                  xori         t4, t1, 1478
                  nop
                  srli         t3, a2, 21
                  lui          s8, 881512
                  xor          t2, t4, a0
                  slti         a0, t2, 3
                  xori         t3, s5, 368
                  sll          t6, a0, a0
                  andi         s7, t5, 1005
                  sltiu        s10, s5, -918
                  sub          t2, t6, s4
                  li           t3, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           s9, 0x0
                  li           t1, 0x0
                  li           a0, 0x26b8fa3d
                  li           s2, 0x0
                  li           a4, 0xffffffff
                  li           ra, 0xffffffff
                  li           s10, 0x88ea51f1
                  li           a5, 0x9ac81fd8
                  li           a7, 0x0
                  auipc        s9, 416033
                  sub          a5, s2, t1
                  addi         a7, s10, 615
                  nop
                  sub          ra, a5, s9
                  lui          t1, 706380
                  sub          s10, s2, a4
                  add          s2, a4, s9
                  lui          a4, 863774
                  lui          s10, 610891
                  sub          s9, t3, a4
                  auipc        ra, 993860
                  auipc        s10, 281924
                  auipc        s2, 374744
                  auipc        a5, 114267
                  addi         s10, a4, -129
                  add          s10, s2, a0
                  add          a5, a4, a5
                  auipc        s9, 437989
                  auipc        a5, 257459
                  lui          a7, 295579 #end riscv_int_numeric_corner_stream_2
                  sra          s2, t2, s10
                  and          t4, s6, s8
                  xori         t4, ra, -1586
                  srli         s4, sp, 30
                  slli         a6, zero, 24
                  slt          s6, s5, s1
                  sltiu        tp, ra, -598
                  srai         s0, s1, 4
                  nop
                  auipc        t2, 279985
                  addi         s8, t1, 346
                  sub          sp, s6, zero
                  xori         t1, t6, 1207
                  sra          t6, t1, t0
                  xori         s5, ra, 1931
                  or           s3, s11, a3
                  sra          a3, s10, s5
                  xori         s4, zero, 750
                  sltiu        a5, t2, 963
                  srai         s3, gp, 10
                  slt          a5, s3, t3
                  nop
                  xori         a1, s5, 320
                  sub          sp, s11, a7
                  slt          s8, s2, s10
                  andi         a2, s9, -567
                  slli         ra, s8, 7
                  sltiu        a0, sp, -1712
                  add          sp, s2, ra
                  nop
                  nop
                  sub          s9, tp, s7
                  sltu         s5, a2, a7
                  nop
                  xor          t6, s7, s0
                  sra          a3, s6, t2
                  andi         s2, s9, 1209
                  slli         a7, s9, 14
                  addi         s8, ra, -456
                  nop
                  lui          a6, 207715
                  sltiu        t6, gp, -1492
                  srai         s0, ra, 7
                  nop
                  sltu         s9, s2, a3
                  addi         s0, s0, 1010
                  andi         t4, a4, -1443
                  lui          s4, 726667
                  and          sp, s1, a4
                  srl          a4, a6, s6
                  slti         gp, t3, -1328
                  srl          gp, t2, s1
                  srl          a5, a0, s3
                  lui          a1, 456040
                  andi         s7, a7, -1420
                  auipc        a5, 827129
                  slli         s8, s11, 4
                  srai         a5, a2, 0
                  auipc        s6, 1001628
                  sub          s9, s9, a7
                  sltu         s4, s0, a7
                  nop
                  nop
                  li           s9, 0x7a16012f #start riscv_int_numeric_corner_stream_6
                  li           sp, 0x2c7755ec
                  li           t1, 0xffffffff
                  li           tp, 0x0
                  li           gp, 0x1d45ce1a
                  li           s7, 0xffffffff
                  li           ra, 0xffffffff
                  li           a1, 0x0
                  li           a7, 0xffffffff
                  li           a2, 0x0
                  add          a7, gp, sp
                  nop
                  auipc        a7, 141985
                  sub          s9, gp, sp
                  lui          s7, 166649
                  auipc        a7, 795061
                  lui          a1, 1015305
                  auipc        sp, 764788
                  addi         sp, a2, -1916
                  add          s7, s9, ra
                  lui          ra, 528782
                  sub          ra, a1, s7
                  add          sp, s7, a7
                  auipc        s9, 645411
                  add          ra, a2, gp
                  sub          a7, s7, a1
                  sub          a1, a7, ra
                  lui          a2, 194646
                  auipc        a2, 358792
                  nop
                  sub          a7, a7, ra
                  lui          a1, 788092
                  auipc        t1, 10253
                  sub          s9, tp, sp
                  sub          a1, a7, s7
                  nop
                  lui          gp, 794701
                  auipc        s7, 341576
                  sub          sp, tp, t1 #end riscv_int_numeric_corner_stream_6
                  slti         s8, s1, -394
                  sltiu        s8, a7, -633
                  sll          s8, sp, s6
                  sltiu        tp, a3, 407
                  sltu         a4, a5, s11
                  sub          a3, t4, a7
                  and          a2, tp, s3
                  sltiu        s2, a2, 1424
                  slt          t4, t2, a3
                  sltiu        s8, t4, 691
                  auipc        a5, 604468
                  sll          t6, s11, s11
                  slt          t4, s5, t3
                  slt          a3, s11, a2
                  addi         t1, t6, 596
                  or           a7, a3, s1
                  sll          t2, ra, s2
                  or           a1, s4, t3
                  lui          t0, 277955
                  ori          a5, tp, -1314
                  addi         t3, s5, -712
                  xor          a5, s9, t6
                  slti         s2, t5, -659
                  lui          a7, 102599
                  nop
                  or           ra, s0, t4
                  auipc        sp, 265684
                  slt          s2, s5, a0
                  slti         s9, t2, -769
                  slti         s2, t4, -820
                  slt          a3, t1, a1
                  sub          s5, t1, s7
                  sll          sp, t2, t4
                  xor          t0, s1, s5
                  nop
                  sltu         ra, sp, s11
                  xori         s9, tp, -1564
                  xor          s0, a2, a5
                  lui          a2, 802860
                  slti         ra, ra, -1809
                  slti         s2, s10, -169
                  srli         s3, t5, 3
                  xori         a6, zero, 502
                  xor          t1, sp, sp
                  and          a1, t5, s11
                  slli         s4, t1, 15
                  nop
                  lui          s8, 648001
                  srl          s5, s8, t2
                  slti         a1, tp, 1312
                  srli         s6, t5, 5
                  slti         a3, s4, -356
                  srli         t6, s0, 13
                  ori          ra, t6, 209
                  slli         t1, t4, 30
                  srli         s5, a6, 27
                  add          a1, a4, a1
                  lui          a4, 799998
                  lui          t0, 526780
                  slli         s8, t2, 4
                  sll          a1, s0, t4
                  add          s9, t6, a1
                  addi         s0, s2, -351
                  auipc        zero, 491897
                  slti         a6, t0, 1762
                  slti         zero, s9, 593
                  sltiu        s5, s7, 859
                  srl          ra, t5, sp
                  sub          t1, s8, s11
                  and          ra, s0, s0
                  add          ra, t3, tp
                  sltiu        s10, a1, -1704
                  add          s6, a2, s2
                  sltu         s0, a6, s1
                  nop
                  addi         a4, t2, 767
                  and          a4, t5, a5
                  slli         s8, t1, 5
                  sltu         s6, t6, s11
                  ori          a4, s10, 756
                  xor          t4, s5, a6
                  sltu         s10, a5, s6
                  slt          a7, tp, s8
                  sra          s9, t0, s4
                  andi         s7, a6, -720
                  and          a0, t0, tp
                  slli         s6, a5, 5
                  auipc        a6, 397950
                  xor          a4, s9, a0
                  sltiu        t0, t4, 256
                  ori          sp, zero, -1327
                  or           s4, t3, a5
                  xor          a7, s10, t0
                  sll          ra, s0, s4
                  auipc        gp, 36914
                  srai         t4, s6, 29
                  and          a5, tp, s0
                  nop
                  sltiu        a3, s0, 1307
                  sll          t6, zero, s3
                  sltu         tp, a6, t2
                  sll          zero, a5, s0
                  xori         a2, s5, -1821
                  slti         s10, zero, 1982
                  srli         sp, s7, 18
                  sra          a5, t1, t6
                  slti         s5, a0, 24
                  sub          s8, t0, a7
                  sltu         ra, s0, s7
                  xor          t3, a4, t1
                  nop
                  and          sp, s8, s7
                  srai         a0, s9, 27
                  slli         a2, t3, 5
                  or           t4, t3, t5
                  lui          t3, 704111
                  lui          a6, 267080
                  auipc        t6, 357257
                  srli         s10, t4, 5
                  addi         s3, t0, -378
                  andi         s9, s9, 95
                  sra          t3, gp, a1
                  nop
                  addi         a0, t0, 1819
                  lui          s2, 499438
                  sub          a5, t3, sp
                  auipc        a4, 137138
                  auipc        s5, 245293
                  lui          tp, 591439
                  xori         a6, s1, 1686
                  sltiu        t6, s6, 479
                  ori          s0, s4, 754
                  nop
                  nop
                  ori          s10, s5, 1747
                  slli         a0, zero, 24
                  sltu         a1, a4, s1
                  xori         s4, s1, 1138
                  sltu         a2, s0, t6
                  srli         s8, s7, 9
                  slti         t1, s3, 1729
                  addi         s5, a2, -1162
                  xor          a6, t0, zero
                  ori          t6, t1, 1008
                  or           t3, a6, s5
                  srli         a6, t5, 15
                  and          zero, t1, t2
                  sltu         s2, a5, a3
                  sra          s3, s11, s3
                  slt          s4, t6, t5
                  sltiu        t6, s7, -1617
                  auipc        t4, 423556
                  slti         s0, ra, 781
                  add          s2, s7, t3
                  add          s2, a2, s10
                  slli         gp, t1, 23
                  srl          a2, s11, a6
                  slt          a7, a0, s1
                  slt          s0, s1, t6
                  auipc        t3, 35444
                  or           a3, s3, s8
                  sra          s4, a3, s0
                  slti         t4, t1, -119
                  slli         t6, s0, 11
                  slt          s2, tp, s10
                  sra          a4, s11, a4
                  nop
                  ori          s6, a1, -1702
                  sltu         t6, t6, gp
                  sltiu        a3, gp, 565
                  slt          a2, a7, s2
                  srli         s7, s4, 31
                  sub          a2, a1, t4
                  sub          t4, gp, a2
                  ori          t1, s6, 1994
                  or           t6, sp, t1
                  andi         a3, a7, -956
                  slti         s9, a5, 601
                  addi         a5, s3, 1364
                  add          s4, s9, t4
                  or           a5, s0, a2
                  and          s10, t4, gp
                  auipc        s5, 707734
                  sll          a6, a7, a5
                  ori          s4, gp, -385
                  sltiu        s2, s5, 181
                  sll          s10, s7, s11
                  add          t3, a7, s0
                  sub          t1, s8, s6
                  slli         a6, t3, 10
                  addi         s5, tp, 671
                  srai         s9, a6, 7
                  and          t6, t6, ra
                  slt          a2, t1, s1
                  srai         a7, s6, 27
                  add          s10, zero, a6
                  sra          a4, s2, a7
                  andi         t1, s9, -148
                  sltu         a1, sp, a6
                  srl          gp, s11, s11
                  srli         t6, t3, 30
                  li           t1, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           s5, 0x80000000
                  li           s6, 0xffffffff
                  li           a5, 0xffffffff
                  li           t6, 0x0
                  li           s4, 0xffffffff
                  li           s8, 0xffffffff
                  li           t4, 0x80000000
                  li           t0, 0x0
                  li           a0, 0x2e465890
                  addi         t0, a5, 1507
                  addi         s5, a5, -1216
                  add          a5, a0, s8
                  nop
                  nop
                  nop
                  nop
                  nop
                  addi         t6, t6, -32
                  addi         t4, t1, -1961
                  add          t4, s5, s4
                  nop
                  lui          s4, 706777
                  add          s4, t0, t0
                  addi         s8, s6, 1109
                  sub          t0, t0, s4
                  lui          a5, 1021524
                  sub          a0, s4, t1 #end riscv_int_numeric_corner_stream_10
                  srl          t1, t1, s9
                  add          t6, s3, t5
                  sltu         t0, a0, a5
                  addi         tp, s0, -916
                  sra          t2, sp, a7
                  sub          s6, t4, ra
                  sltiu        s3, s4, 267
                  slt          a1, sp, t6
                  slli         t3, t3, 23
                  sltiu        t1, s0, -1499
                  xori         zero, s6, -91
                  and          t6, a0, a1
                  and          tp, a4, s8
                  slt          ra, a6, a4
                  srli         a3, s6, 6
                  xor          a0, t2, s8
                  nop
                  slt          s6, s1, s4
                  auipc        a0, 518004
                  nop
                  sll          s0, a4, t5
                  xor          a4, t5, s6
                  lui          a4, 380502
                  andi         tp, s2, 1419
                  sltiu        t2, s6, -1429
                  srai         t4, s6, 0
                  slli         s9, t1, 7
                  sltiu        sp, s8, 657
                  xori         s4, t6, 707
                  sra          t2, t1, a4
                  nop
                  nop
                  srai         a6, a2, 18
                  and          t2, s10, t2
                  slti         s6, t6, -175
                  auipc        s10, 375403
                  ori          s3, tp, -999
                  sub          ra, t5, s9
                  auipc        t4, 52116
                  slti         ra, s6, 1696
                  sltu         a4, s2, tp
                  slti         t6, zero, -451
                  ori          a6, ra, -596
                  sltiu        s7, a3, 1732
                  srli         ra, a6, 7
                  andi         a0, s2, -864
                  srai         a2, t2, 14
                  xori         s8, t3, 1261
                  srl          a3, s4, s9
                  slt          a3, a3, a3
                  auipc        gp, 199557
                  srai         t1, s11, 26
                  xor          zero, s2, a2
                  addi         a2, t1, -731
                  xor          a5, a3, t6
                  sltiu        tp, a3, 1238
                  sra          a3, t0, s10
                  and          s9, t5, sp
                  sltiu        s7, t6, -76
                  or           a4, s10, s6
                  sll          s8, a2, ra
                  slli         t0, s8, 30
                  slt          a0, gp, s8
                  add          s4, a4, a2
                  andi         t4, s4, 640
                  xori         t2, t5, -1517
                  slli         s6, zero, 5
                  srl          a2, a1, t5
                  sltu         s9, s2, t2
                  lui          a2, 175608
                  sub          s9, a3, s3
                  and          s9, t1, s0
                  addi         s3, s8, 1219
                  ori          a1, s3, 1466
                  sltiu        a0, t5, -1586
                  or           gp, a3, a1
                  slt          s5, s8, a1
                  slti         s2, gp, 1454
                  add          s0, t1, a2
                  sltu         t6, s1, gp
                  nop
                  or           tp, s7, tp
                  ori          a6, a2, 784
                  xor          s9, ra, ra
                  slti         a4, s2, -733
                  addi         gp, t0, -409
                  ori          tp, s0, 689
                  sub          s2, a5, s8
                  or           a0, s8, s3
                  auipc        a6, 104520
                  addi         a7, a7, 1118
                  and          ra, s1, s2
                  nop
                  sltu         s8, a7, t2
                  ori          s2, t2, 519
                  srl          a3, s3, ra
                  srli         t1, t1, 10
                  ori          t2, t4, 1469
                  sltiu        t2, s6, 896
                  ori          s3, s9, -1411
                  sltu         s0, a5, tp
                  andi         zero, s3, -1176
                  srai         sp, a3, 9
                  sub          a5, s7, s10
                  lui          zero, 468412
                  or           a3, s9, s3
                  sra          t4, gp, zero
                  slti         a7, s7, -1723
                  sltu         sp, gp, s5
                  addi         s3, tp, -1724
                  and          a0, sp, a2
                  andi         t4, t4, 446
                  addi         gp, tp, -666
                  sra          s3, s9, s7
                  slt          s2, t0, t0
                  xori         s3, t3, -480
                  xori         a4, s8, 787
                  and          a2, s5, s5
                  srli         s8, a5, 29
                  andi         sp, a2, -575
                  sra          gp, s10, tp
                  auipc        a4, 337288
                  ori          s2, s7, -311
                  xor          gp, a6, s2
                  slt          a1, a2, sp
                  sra          s10, a6, a1
                  ori          t2, s11, 1883
                  lui          s8, 424965
                  addi         s8, a3, 864
                  sub          a3, t2, t0
                  and          t4, t5, zero
                  xori         t1, s6, 1150
                  ori          t4, s6, -986
                  sltu         t2, a7, a3
                  sltiu        a0, s11, -1276
                  sub          s2, ra, s7
                  xori         a2, t0, -1377
                  slti         s3, t4, -1583
                  xori         s0, s3, 1269
                  andi         t4, a1, 1983
                  or           s3, sp, s8
                  sub          s7, t5, a2
                  sub          a4, s3, s10
                  add          a2, a2, a6
                  add          t3, a6, s8
                  sltu         s4, t4, s11
                  andi         tp, s2, -1472
                  lui          sp, 194545
                  sltiu        gp, t4, 798
                  srl          s8, s1, a7
                  sltiu        t3, t1, -86
                  srl          a6, a5, s5
                  or           a5, t0, gp
                  sub          s3, s11, s10
                  sub          t6, a5, s11
                  sltu         a0, a2, a3
                  sltu         t1, a3, sp
                  sub          s6, a6, ra
                  andi         a4, a6, 1717
                  add          s5, s3, tp
                  ori          s5, tp, -2047
                  sra          s6, s6, s9
                  or           sp, s0, t5
                  add          a2, a1, a3
                  auipc        gp, 221322
                  ori          a6, zero, 853
                  xor          s9, zero, s3
                  slt          t0, a5, t4
                  lui          t1, 1040834
                  or           s10, s3, s3
                  xor          a4, sp, a6
                  and          s0, s6, s8
                  sub          gp, s7, t2
                  lui          t0, 1047520
                  ori          s0, s2, -218
                  ori          s3, s6, 587
                  and          a0, t4, zero
                  or           s2, gp, s0
                  slti         a7, a5, 123
                  sub          s10, s3, t6
                  xori         s6, s11, -256
                  xori         s5, gp, 694
                  xori         zero, t5, -553
                  slt          t3, a7, a7
                  lui          s8, 343526
                  xor          s9, t6, s10
                  sra          a2, sp, s3
                  and          t3, t3, sp
                  sll          s5, s5, a7
                  xor          s7, s11, s4
                  srli         a7, s0, 9
                  sltu         zero, s8, s3
                  sra          gp, t1, sp
                  andi         a2, s5, 860
                  sltu         t4, t6, zero
                  sltu         s2, s1, s11
                  srai         a7, t6, 27
                  srai         s8, s6, 31
                  sltiu        t2, s9, -1747
                  lui          a2, 741357
                  xori         s8, t1, 721
                  addi         t3, s4, -400
                  auipc        a0, 468020
                  slt          a5, t1, s3
                  srl          s3, s11, a6
                  sub          s9, sp, t3
                  srl          zero, s11, a0
                  and          a7, ra, a7
                  srli         tp, a4, 31
                  ori          s9, s8, 1121
                  sltiu        s8, t1, 1269
                  sra          s3, s4, s7
                  slt          s10, s9, s11
                  slti         a6, t0, -3
                  srli         s6, ra, 20
                  nop
                  add          a0, t2, sp
                  or           zero, s10, t0
                  sra          tp, t1, s8
                  srli         t6, t6, 11
                  sltiu        a2, a5, 1456
                  sra          t0, s7, s6
                  addi         a2, s3, 1628
                  nop
                  srli         t0, s8, 24
                  sltiu        a1, s6, 602
                  sub          t1, zero, t1
                  lui          t3, 252507
                  slt          s5, s5, a7
                  srai         a6, s0, 14
                  or           a5, s7, s1
                  slli         a0, s1, 9
                  sll          a1, s5, t1
                  xor          a5, t2, gp
                  slti         s3, s10, 1711
                  auipc        s7, 982938
                  auipc        s5, 1028621
                  andi         t6, s3, 343
                  srl          t3, zero, s1
                  sltu         a6, a3, s0
                  lui          s10, 281094
                  addi         a0, t6, 1619
                  addi         a0, s7, -801
                  sub          t0, s2, ra
                  addi         a1, a2, -1767
                  sltu         s3, a2, a4
                  add          a7, t5, s11
                  sll          a4, s4, s11
                  lui          a5, 85318
                  ori          zero, tp, 1243
                  slli         a1, s8, 6
                  lui          s5, 1006943
                  andi         t4, t1, 1127
                  sltu         a6, a2, t1
                  slli         a4, a3, 10
                  andi         a4, t3, -2003
                  srli         t2, a7, 17
                  ori          s0, s3, 1546
                  auipc        t4, 202978
                  sltu         s10, a4, a3
                  slt          a3, s10, a4
                  slti         t3, t0, 1531
                  slli         tp, s11, 31
                  add          t6, s1, a7
                  srai         t6, s10, 17
                  ori          s7, s2, 776
                  sra          t0, s5, t4
                  sub          s10, s11, t2
                  andi         sp, a6, -1080
                  or           a4, zero, s7
                  xor          s0, s4, t0
                  sll          s10, a3, t2
                  xor          a2, s4, s8
                  slt          t0, s1, zero
                  sll          s8, ra, s4
                  slt          a5, s11, sp
                  sub          a4, t2, a2
                  andi         s7, t1, -921
                  slt          s8, zero, s8
                  xori         a5, s7, -1529
                  add          t3, zero, s9
                  andi         t4, s4, 1369
                  addi         a4, s2, -1206
                  slli         s4, a2, 9
                  srai         t1, t5, 9
                  nop
                  slli         a2, a4, 2
                  sltiu        t4, a7, 1330
                  slti         s9, s11, -1502
                  srai         s3, a7, 9
                  slt          a7, a5, t1
                  nop
                  sub          s8, t4, s5
                  sra          s8, zero, s4
                  xori         t6, t2, 936
                  andi         a2, s3, 1823
                  and          t2, s1, s4
                  sltiu        a3, s0, 547
                  addi         s6, s5, -420
                  andi         s0, s1, -1419
                  xor          sp, t6, a5
                  slt          s9, a7, t3
                  slt          s3, t1, s0
                  srl          s9, s3, a3
                  sltiu        t6, s7, 533
                  xor          s6, sp, s2
                  auipc        s6, 610236
                  sra          gp, s9, a7
                  sltiu        gp, s1, 1145
                  sltu         a0, t0, t5
                  xor          t4, s10, gp
                  lui          a1, 972762
                  slli         a6, t3, 13
                  srai         t6, zero, 22
                  addi         t3, a6, 116
                  xori         t6, s11, 1438
                  or           zero, s11, s5
                  slti         s3, s0, 1079
                  or           a1, s8, s2
                  slli         s9, s1, 12
                  and          sp, s6, a7
                  ori          s6, t0, -390
                  slli         a3, s1, 30
                  addi         ra, s0, -1282
                  ori          t6, s9, 1145
                  nop
                  xori         s2, s9, -2019
                  srli         s6, zero, 13
                  or           s10, s11, t1
                  srl          s8, a6, a6
                  addi         s9, t1, 1111
                  auipc        s5, 183638
                  nop
                  addi         s8, s10, 1265
                  add          t0, s5, t0
                  and          zero, zero, s4
                  slt          gp, s2, a7
                  auipc        t1, 680994
                  slti         s6, s11, 1793
                  andi         a4, s4, -1561
                  sltiu        s0, t0, -556
                  sra          s4, t6, t2
                  srai         tp, s2, 5
                  addi         sp, gp, 615
                  sll          zero, ra, s4
                  sltiu        s5, s0, 1949
                  auipc        a0, 37753
                  auipc        t2, 758821
                  srli         ra, s5, 16
                  auipc        s0, 309546
                  nop
                  xor          zero, s3, s3
                  or           s7, a7, a1
                  andi         s0, a5, -1374
                  sub          a7, a4, s10
                  and          t2, s0, a0
                  sltiu        s5, a7, 852
                  ori          a7, a3, -916
                  or           t4, s8, s9
                  srai         a4, t3, 8
                  addi         s8, a2, -1550
                  xori         a5, t6, -1149
                  ori          s0, t6, -899
                  nop
                  sltu         s0, s5, s6
                  add          a7, s4, sp
                  nop
                  ori          sp, t6, -1742
                  and          t4, a2, s11
                  andi         t0, gp, -2040
                  add          s8, s11, s7
                  sltu         tp, s4, a6
                  slt          s3, s9, a7
                  srli         s3, s11, 8
                  nop
                  xori         s10, a6, 76
                  srl          a7, s10, t1
                  nop
                  ori          s4, t4, 1893
                  or           s2, t0, t2
                  sll          tp, zero, a7
                  slli         t3, s0, 30
                  srai         a6, a4, 30
                  xor          t2, sp, t1
                  slti         s4, t2, 985
                  lui          a6, 706616
                  sub          tp, a3, s3
                  slli         a5, a5, 29
                  slt          s9, a6, s5
                  andi         a4, sp, -155
                  sub          a3, zero, a1
                  auipc        t6, 313798
                  slti         t0, sp, 80
                  sra          ra, s9, s5
                  or           t0, s5, s7
                  sra          s6, s11, s4
                  srl          s6, s0, s5
                  sub          zero, s8, s8
                  slti         s8, s10, -572
                  nop
                  srli         sp, s2, 8
                  slt          gp, zero, s10
                  or           gp, a1, a7
                  auipc        t0, 947609
                  sll          s8, t3, t5
                  add          s2, s9, a0
                  addi         s2, s9, -1002
                  sll          gp, s9, s9
                  auipc        s2, 796569
                  add          sp, a1, ra
                  sub          tp, a6, a0
                  andi         a0, a3, -733
                  slt          a3, s9, s0
                  andi         gp, a1, 552
                  and          s4, t0, a5
                  addi         s3, a0, -699
                  slt          a6, s11, t3
                  andi         t0, s7, 1340
                  slt          s9, a5, zero
                  auipc        ra, 502704
                  sra          s5, a0, s1
                  sltu         s3, a4, t0
                  xor          s6, s5, a3
                  addi         t3, t5, -595
                  andi         a7, gp, 1813
                  or           t0, t3, s3
                  sub          a5, s6, t5
                  srli         a2, s2, 4
                  auipc        s3, 618492
                  andi         s2, ra, 1393
                  andi         t0, s1, 1314
                  lui          s6, 480810
                  srli         tp, a0, 28
                  sub          a6, gp, a2
                  andi         a4, s6, -497
                  ori          a3, a6, 1813
                  andi         t3, t4, -1759
                  sra          t3, t1, t0
                  sltiu        s10, zero, -382
                  slli         t6, s8, 10
                  lui          a2, 704322
                  andi         s2, t2, -1542
                  andi         a2, s11, -391
                  slli         a0, t0, 7
                  xor          t2, ra, s0
                  srai         t0, ra, 10
                  or           t1, t3, a1
                  and          t3, sp, a3
                  sll          a6, s7, s8
                  ori          ra, s5, 1269
                  or           s6, a0, t3
                  or           t6, a6, s3
                  or           ra, t3, s9
                  srl          t6, a7, sp
                  sltu         tp, t1, s7
                  addi         s0, s0, 531
                  slli         a6, t1, 6
                  xor          t6, t2, s3
                  sll          s0, a4, zero
                  or           a1, a1, s6
                  slt          s7, sp, s6
                  xori         a5, s2, -1196
                  add          t0, t2, s11
                  srl          a3, s4, a6
                  sltiu        s3, a2, 2007
                  sub          t3, ra, a1
                  sltiu        s9, a4, 56
                  slt          s10, t3, a5
                  srli         a3, s4, 3
                  andi         t3, s0, 773
                  slti         zero, tp, 1581
                  xor          s8, a6, ra
                  ori          s10, t2, 738
                  ori          zero, s4, -1568
                  xor          s9, a0, t1
                  and          a6, s0, gp
                  lui          s7, 528191
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           s10, 0xffffffff
                  li           t0, 0x1c9db7d3
                  li           ra, 0xffffffff
                  li           t6, 0x0
                  li           s5, 0x80000000
                  li           tp, 0xffffffff
                  li           t3, 0xffffffff
                  li           s4, 0x0
                  li           a2, 0x80000000
                  lui          s5, 613815
                  nop
                  auipc        tp, 492504
                  sub          ra, a2, s5
                  add          t0, ra, t0
                  sub          ra, s5, s5
                  lui          tp, 136115
                  addi         s4, s9, -169
                  nop
                  nop
                  sub          t0, t3, t0
                  add          s5, s10, t3
                  sub          s5, s5, s5
                  sub          s9, a2, t3
                  lui          a2, 416565 #end riscv_int_numeric_corner_stream_4
                  and          gp, t6, a4
                  slli         s2, t5, 25
                  slli         s4, t4, 3
                  slli         a2, a3, 26
                  sub          tp, a7, ra
                  xori         a5, s2, -975
                  xori         a3, s9, 1433
                  sltu         a3, a4, s10
                  srli         s0, tp, 15
                  andi         t2, a4, -198
                  srl          s10, a4, t5
                  slti         a0, t0, 476
                  andi         t4, a6, -1475
                  srl          a3, t4, a4
                  xor          s5, s9, s5
                  and          t0, a3, s3
                  srai         t2, sp, 14
                  slli         a5, a7, 26
                  sll          s6, a4, t4
                  sub          a3, s6, s2
                  xori         t3, s3, -552
                  or           tp, a1, gp
                  add          a2, sp, s7
                  xor          s3, t2, a7
                  srl          t3, s0, t0
                  or           s5, t5, t4
                  sra          a6, a5, s0
                  sub          t1, a6, t3
                  sltiu        a6, gp, -203
                  lui          s0, 722511
                  and          s9, a5, gp
                  auipc        s6, 270863
                  slli         t4, s8, 26
                  lui          s5, 600151
                  addi         s4, s4, 1167
                  slli         tp, s7, 27
                  lui          t6, 868771
                  or           a3, sp, zero
                  and          s7, s6, a3
                  sra          s0, a1, a0
                  and          s9, sp, s8
                  lui          s9, 545903
                  slli         s7, t6, 29
                  xor          zero, a3, s3
                  nop
                  sltu         s0, sp, s8
                  srl          a2, t2, t1
                  slti         s10, a1, -702
                  lui          t1, 409268
                  sltiu        gp, s1, -1066
                  xor          t4, ra, a4
                  slt          s9, t5, s11
                  xori         s4, t6, 1133
                  slli         s6, s1, 21
                  srl          a4, s0, s1
                  sub          s6, t2, a0
                  slli         a0, s3, 25
                  slt          a7, a0, t4
                  sll          t6, t2, t1
                  srl          s8, s2, s6
                  sll          zero, a3, a3
                  sltiu        t6, a0, 47
                  addi         t2, sp, -1498
                  ori          a6, t0, 985
                  and          s10, a0, s5
                  auipc        t2, 903522
                  xori         s3, a3, -1507
                  nop
                  nop
                  and          tp, t6, t6
                  srl          s0, s5, a4
                  nop
                  xori         s5, s6, -1676
                  or           t1, s3, t1
                  xori         t1, a7, -588
                  slti         s3, s3, 1243
                  lui          s10, 980910
                  sltiu        a2, a2, -168
                  sra          s4, a0, a4
                  and          t2, s6, tp
                  auipc        t1, 862718
                  sltu         s2, a5, a0
                  slti         s10, t6, 1298
                  xor          s5, s0, s8
                  and          t1, a2, a1
                  srli         s4, t5, 1
                  add          t4, s7, tp
                  addi         sp, zero, 457
                  sll          tp, gp, a1
                  xor          s6, s6, s10
                  srai         s4, s10, 1
                  sra          a2, s9, t5
                  sltu         a7, ra, zero
                  ori          t6, t6, 850
                  auipc        t4, 577020
                  srai         a7, t5, 5
                  and          a2, s1, a4
                  xori         t3, a7, 882
                  sll          s6, s5, sp
                  add          gp, s2, t6
                  nop
                  sltiu        a7, s8, 1232
                  sltiu        s0, sp, 79
                  sra          s3, s11, a0
                  nop
                  slt          zero, s4, s1
                  addi         zero, a1, -1321
                  srli         a1, a7, 9
                  sub          t4, s3, t5
                  lui          s0, 3676
                  lui          t0, 569056
                  andi         s5, s1, 176
                  slti         t4, s2, -781
                  or           a7, s6, t2
                  slt          s3, s9, s10
                  sltu         t4, zero, t6
                  slt          t3, s0, s6
                  sub          s5, s9, s2
                  sll          a4, zero, s10
                  sll          a5, ra, t5
                  srai         t1, s9, 14
                  auipc        a3, 590832
                  addi         zero, s3, 92
                  and          a4, t5, s3
                  xori         zero, s11, 220
                  auipc        s0, 345009
                  lui          s3, 401428
                  addi         t2, t2, -216
                  andi         t0, a6, -253
                  nop
                  auipc        s3, 46196
                  slt          t4, a4, a7
                  srai         sp, a5, 19
                  sra          t0, a4, s5
                  sub          a4, s8, ra
                  srai         s4, s0, 17
                  nop
                  srl          a6, s1, s7
                  addi         t1, a2, 899
                  addi         a6, s3, 738
                  xor          s5, a2, s7
                  sra          sp, s6, s10
                  srai         a5, sp, 26
                  slt          t3, s6, a6
                  slti         s10, a0, 1439
                  ori          a1, s3, -1012
                  or           t4, zero, s3
                  srai         a1, s4, 7
                  and          a6, t0, a7
                  or           s8, s5, s7
                  slli         s2, ra, 30
                  srli         s7, s2, 17
                  xori         gp, t5, -419
                  sltiu        s7, ra, -12
                  ori          t3, s9, 937
                  srl          gp, a3, a5
                  sltu         s7, a3, a7
                  addi         s6, a3, -491
                  xori         t1, s9, 1408
                  xori         s6, t5, -514
                  xor          t4, sp, s3
                  sub          t2, a4, t2
                  xor          s0, a5, s7
                  srl          a4, t0, s8
                  sra          t6, t2, a2
                  nop
                  sra          t4, a2, s10
                  sub          s4, s1, s10
                  lui          a0, 984335
                  slli         a4, tp, 11
                  slti         s10, gp, -1525
                  add          s5, a5, t3
                  sub          a4, t1, a5
                  sltiu        t0, s11, 634
                  or           a7, a4, a3
                  ori          s9, s0, -1735
                  srli         t6, s8, 11
                  addi         ra, ra, 252
                  slt          ra, a7, a0
                  and          s9, s3, s11
                  slt          s6, t2, tp
                  sub          a5, s3, s5
                  sub          a5, t4, s6
                  xor          zero, a7, a7
                  sltiu        a6, s5, 1264
                  lui          a5, 624461
                  srai         s6, tp, 31
                  sltu         t6, a2, ra
                  auipc        s3, 259670
                  and          s3, a0, a5
                  sra          s9, t2, s0
                  sra          s7, ra, s1
                  auipc        s6, 703061
                  and          a5, tp, a7
                  sll          gp, s5, zero
                  sub          s8, t2, a5
                  addi         s7, s5, 233
                  srli         a3, s9, 12
                  lui          s5, 683145
                  xor          a6, s4, s6
                  or           t0, s5, s7
                  xor          s3, t4, s6
                  xor          s7, s9, a6
                  srl          s6, a4, s5
                  sra          s0, s11, a4
                  add          s9, zero, s11
                  xor          s2, s5, sp
                  lui          t6, 731104
                  add          a1, s8, a4
                  ori          t0, s5, 1432
                  sra          a4, a6, s7
                  or           t0, a2, a7
                  slt          a3, t2, a7
                  and          s5, s1, ra
                  andi         a5, ra, -1431
                  add          tp, a6, a4
                  slli         s4, s0, 2
                  sltu         a2, s3, t6
                  sll          s3, s6, a2
                  slli         s0, s2, 20
                  xor          s0, sp, a1
                  sll          s3, ra, sp
                  slti         a3, s10, -890
                  srai         sp, a0, 4
                  or           a0, s11, a6
                  srai         t1, a7, 1
                  srai         s7, s5, 6
                  slli         s6, ra, 31
                  srl          a4, a5, s2
                  srai         gp, t4, 22
                  andi         a5, s5, -534
                  sltu         sp, s11, s11
                  ori          sp, gp, 1975
                  add          t6, a1, s5
                  add          a2, a4, a0
                  sltu         s8, a6, tp
                  xori         gp, sp, 771
                  xori         tp, s6, 1660
                  srl          ra, s8, a4
                  auipc        s7, 787319
                  srai         t0, s9, 19
                  auipc        s8, 127827
                  xor          s0, a4, tp
                  sra          tp, ra, a0
                  or           t2, s4, a6
                  sub          t1, s2, t5
                  xori         t2, a6, -2015
                  slti         t1, tp, -301
                  sltu         t1, t2, s5
                  srli         s2, tp, 18
                  or           s4, t0, sp
                  sltiu        s8, s9, -34
                  srai         a2, a7, 2
                  nop
                  or           s0, s9, a4
                  xori         t0, a1, 1830
                  and          s9, a2, a6
                  slli         zero, s5, 11
                  addi         s3, s4, -307
                  slti         zero, s1, 1940
                  slti         s8, s10, 99
                  srli         tp, s10, 29
                  sll          a3, zero, a6
                  ori          t1, s0, 173
                  add          t4, a2, t1
                  ori          s7, s11, 440
                  or           s0, s8, a5
                  xori         a0, t1, 480
                  sll          s5, t1, s0
                  andi         a2, s5, -123
                  sltiu        s9, s11, -1174
                  add          a2, t1, s5
                  sub          a1, t6, s11
                  add          a3, a2, ra
                  sll          a1, sp, gp
                  sltu         s7, tp, a6
                  nop
                  andi         sp, s6, 904
                  lui          t1, 794327
                  addi         s5, a7, -609
                  nop
                  sltiu        zero, gp, 778
                  or           t2, s2, t2
                  slt          a1, s0, zero
                  lui          a5, 842760
                  srai         a6, ra, 25
                  srl          t1, t4, t2
                  srli         s5, a1, 20
                  srai         s9, ra, 27
                  add          s0, ra, s11
                  or           a3, s0, a3
                  slli         s10, t3, 21
                  sltu         t2, s3, s3
                  andi         a2, s9, 489
                  slt          s8, s9, gp
                  slt          a0, t3, a3
                  srli         s9, s4, 14
                  sub          s7, t0, t6
                  srli         s4, s3, 7
                  sub          a6, sp, s4
                  sltiu        s7, s5, 41
                  ori          sp, s1, 1882
                  sll          s8, t4, a3
                  srli         t6, s1, 5
                  and          sp, t6, s11
                  auipc        a3, 84076
                  add          a3, tp, s11
                  or           t0, zero, a5
                  sltu         s8, s4, s7
                  addi         gp, a1, -248
                  xor          s7, t1, s9
                  srli         s5, s0, 18
                  slti         a5, a0, 1827
                  sub          t4, s1, ra
                  and          t1, t3, s1
                  and          a6, t0, sp
                  slt          t4, s10, t4
                  or           a6, s0, t3
                  sll          s8, t2, t1
                  sll          t2, t5, a0
                  sra          t4, t2, ra
                  add          tp, t3, t2
                  sra          a6, t2, s1
                  sltu         a2, tp, gp
                  li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           s0, 0x80000000
                  li           a7, 0x0
                  li           s7, 0x80000000
                  li           a2, 0x0
                  li           s3, 0xecbd7a14
                  li           t0, 0xffffffff
                  li           a5, 0x80000000
                  li           s6, 0xbc6a5fa9
                  li           s2, 0x80000000
                  nop
                  auipc        t0, 591086
                  addi         a2, s0, 1849
                  sub          a2, a2, s0
                  auipc        s3, 675684
                  addi         s3, s0, 1425
                  addi         s7, a2, -444
                  addi         s3, a7, 1770
                  add          s0, a2, s2
                  lui          a2, 237687
                  sub          s2, s6, s3
                  addi         t0, s7, 134
                  nop
                  add          t0, s6, a7
                  add          s0, s6, s2
                  sub          s0, a7, s6 #end riscv_int_numeric_corner_stream_19
                  auipc        t2, 120460
                  sltiu        t3, a6, -1360
                  xor          a4, a1, s9
                  srl          t3, a5, a4
                  srl          s10, s6, s4
                  ori          gp, t5, 349
                  sub          a4, ra, tp
                  andi         s8, t1, -1346
                  add          s2, t6, tp
                  lui          t4, 405609
                  andi         t0, t2, 538
                  andi         s5, s7, 1726
                  add          sp, zero, t1
                  auipc        sp, 1038144
                  slti         a5, t6, -671
                  nop
                  andi         s4, t2, -36
                  lui          t2, 42228
                  nop
                  xori         t3, a0, -1412
                  xor          s7, t0, s9
                  sltu         s2, s0, t3
                  or           s10, zero, s9
                  lui          s2, 962759
                  ori          s6, ra, -1685
                  sll          t2, s9, a7
                  srli         t0, a4, 0
                  sub          ra, s5, a6
                  srli         a0, s6, 11
                  slt          t2, t2, s5
                  addi         a0, s9, -500
                  or           t3, s10, s9
                  or           s0, t5, zero
                  ori          a2, s9, -563
                  xor          a2, s7, s10
                  andi         a1, a4, -1910
                  sll          s0, s4, s10
                  sltiu        a4, a1, -834
                  add          t6, s0, zero
                  srai         a2, s8, 24
                  addi         a0, s1, 1651
                  srli         s8, t4, 14
                  sltu         tp, s9, a2
                  xor          t2, t1, a3
                  srai         s7, a5, 22
                  addi         a2, s6, 2037
                  srl          gp, s0, t4
                  sltu         a2, s8, s0
                  slti         a3, a5, 1409
                  add          ra, tp, t2
                  srli         a1, a2, 19
                  or           t0, a2, s9
                  xor          sp, s9, t2
                  and          a3, zero, a3
                  xor          a1, gp, a5
                  andi         s6, tp, -1906
                  or           a4, s5, sp
                  srl          a2, gp, gp
                  xori         t1, s11, -1751
                  ori          t0, s10, -1412
                  srli         a6, s9, 4
                  auipc        a3, 31600
                  auipc        t6, 726356
                  and          gp, gp, a5
                  srl          s5, a4, t5
                  addi         s9, s7, 173
                  addi         s5, t6, -750
                  srl          s5, a4, t6
                  and          tp, s1, a6
                  nop
                  addi         a0, zero, -382
                  sltiu        s3, t5, 850
                  sub          s2, s2, zero
                  slt          sp, t3, tp
                  add          a5, s10, s9
                  slli         s7, s7, 14
                  sra          a0, t2, s4
                  srl          tp, s8, a5
                  auipc        s9, 676835
                  ori          s0, s6, -183
                  xor          a1, t6, s2
                  srli         s8, a4, 15
                  andi         ra, s6, -1893
                  slli         a7, t0, 24
                  srl          s8, t4, t5
                  srl          a4, t0, a4
                  xor          sp, s11, t3
                  slti         t1, s10, 774
                  sra          a6, t3, a3
                  slt          a2, sp, t2
                  lui          a4, 871928
                  sub          gp, s4, a7
                  andi         ra, s10, 507
                  addi         a3, t6, -224
                  slt          a7, t5, gp
                  nop
                  addi         sp, a1, -338
                  srai         t1, s3, 13
                  sra          a1, s7, a5
                  slli         s6, zero, 25
                  xori         a0, t5, 486
                  andi         s4, zero, 1142
                  sub          s2, a3, tp
                  srl          s2, a7, s10
                  xori         a4, sp, 1581
                  andi         sp, s0, 854
                  addi         t1, s5, -129
                  add          tp, s8, s6
                  and          a5, t5, a6
                  nop
                  addi         zero, t0, 627
                  xor          zero, zero, ra
                  auipc        s9, 931474
                  srli         a2, t1, 13
                  nop
                  sltu         a4, s6, s2
                  slti         s6, tp, -86
                  andi         t4, sp, -2027
                  srli         t1, s1, 3
                  nop
                  slli         a1, a2, 12
                  sra          s9, tp, a4
                  nop
                  addi         t0, ra, -1550
                  andi         zero, t3, -134
                  slli         gp, s5, 28
                  lui          s0, 316715
                  add          a6, a1, zero
                  slli         s6, t3, 5
                  sll          ra, s1, gp
                  slt          t1, ra, s10
                  slli         t3, t0, 24
                  sltiu        t4, s11, -2010
                  slli         t2, s11, 17
                  sra          tp, t3, gp
                  ori          s5, tp, -325
                  slti         s4, a5, 1814
                  auipc        t1, 820746
                  nop
                  xori         t4, tp, -1455
                  auipc        zero, 179427
                  srai         gp, zero, 22
                  auipc        a3, 988149
                  add          gp, t3, s3
                  xor          a5, a3, sp
                  andi         s6, t5, -916
                  sll          a6, s10, a4
                  srl          a7, ra, s6
                  slli         t3, s5, 26
                  sltiu        t0, s6, -939
                  slt          t4, a6, a4
                  slti         a2, gp, 1913
                  and          t0, s10, s9
                  srai         zero, s1, 8
                  xori         t1, a6, 1121
                  and          s10, t4, a6
                  sltu         a4, a1, t1
                  slt          a0, s1, s2
                  addi         a4, t1, -798
                  slti         a1, t2, -1541
                  or           t2, s8, a6
                  xor          s5, zero, a6
                  xori         s5, zero, 801
                  or           s2, a0, a2
                  sltiu        t0, a2, 1326
                  nop
                  srl          t1, s0, s1
                  sll          tp, t3, zero
                  xori         a0, tp, 1915
                  srai         ra, a0, 18
                  nop
                  slli         s8, t3, 31
                  sll          tp, s5, a5
                  sltiu        t2, s3, 301
                  srl          a7, s5, t2
                  xor          t0, gp, s5
                  and          s10, sp, s4
                  xori         ra, t2, -1306
                  xori         a4, s1, 1422
                  xori         t6, a1, -1765
                  slli         s3, s1, 8
                  add          s5, a6, a5
                  slt          a2, s11, a5
                  srai         s10, s7, 22
                  nop
                  srli         t0, sp, 1
                  sub          t0, s5, t1
                  ori          s10, a4, 546
                  or           a6, s4, t2
                  auipc        sp, 554985
                  xor          s4, a1, a5
                  li           s0, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           a1, 0x0
                  li           a2, 0x0
                  li           gp, 0xffffffff
                  li           t4, 0xffffffff
                  li           s3, 0x0
                  li           a5, 0x80000000
                  li           a3, 0x6b9b6357
                  li           tp, 0x80000000
                  li           t3, 0xf3b57400
                  auipc        a1, 495826
                  sub          s0, s3, a2
                  nop
                  sub          s0, s0, tp
                  add          t4, tp, a1
                  sub          a3, a3, s0
                  add          s3, t3, gp
                  auipc        a1, 350561
                  addi         s0, gp, 1498
                  nop
                  add          gp, t3, a1
                  sub          tp, tp, s3
                  lui          a3, 837053
                  auipc        tp, 836287
                  sub          a2, a3, s0
                  lui          a1, 202376
                  sub          a3, gp, a1
                  lui          a1, 311391
                  lui          gp, 491098
                  add          gp, tp, t4
                  add          a2, gp, a1
                  add          s3, a2, gp
                  auipc        s0, 707909
                  nop
                  addi         a1, s0, -1534
                  auipc        tp, 456140
                  add          s3, a3, a1
                  sub          tp, a3, t4
                  add          a2, a2, tp
                  nop #end riscv_int_numeric_corner_stream_17
                  slli         ra, t2, 27
                  addi         a5, t5, 117
                  srl          t3, t6, a7
                  xori         zero, a1, -455
                  ori          a7, t6, -978
                  xori         a4, s3, -734
                  xor          tp, t3, s10
                  srai         tp, t1, 10
                  sltiu        a0, t1, 328
                  slli         t6, s11, 16
                  sltiu        tp, s11, 1901
                  sltiu        a0, a5, 200
                  andi         a0, a4, -119
                  sll          tp, a4, ra
                  srli         s9, a4, 13
                  addi         t6, ra, 1706
                  sltu         sp, s5, t3
                  slti         sp, ra, 1929
                  sll          a6, s0, s7
                  sra          s10, s5, t0
                  and          a7, a2, s0
                  slti         s5, s8, -1788
                  xori         s6, ra, 1892
                  slli         s5, gp, 4
                  nop
                  addi         a6, ra, -175
                  srai         s4, a7, 5
                  slt          s6, t2, s8
                  sub          s0, t0, t6
                  sll          a5, a6, s9
                  srl          t3, t4, t4
                  xor          t1, t2, gp
                  add          s9, s3, a3
                  sltiu        t0, a4, -1487
                  and          tp, s5, s3
                  sra          t0, s9, t0
                  slti         s8, tp, 1547
                  andi         s10, s10, -1390
                  and          a3, s3, s1
                  srai         gp, a1, 9
                  lui          a7, 622269
                  srai         gp, t2, 8
                  or           a5, t5, s4
                  or           s3, tp, a0
                  srai         t3, s1, 5
                  slli         s0, a1, 10
                  slt          s0, s9, s1
                  nop
                  sll          ra, s7, t6
                  sltiu        ra, t2, -1395
                  add          sp, zero, zero
                  slli         tp, a2, 30
                  slli         t0, t2, 2
                  nop
                  slti         s9, t1, 1794
                  lui          t6, 491360
                  xor          t1, t6, a0
                  auipc        a4, 448777
                  slt          sp, s11, s0
                  and          zero, s8, t5
                  nop
                  slt          a6, a2, a1
                  srl          s9, s10, s3
                  srai         s0, t2, 11
                  srli         tp, s11, 17
                  nop
                  lui          t3, 939326
                  srl          a2, zero, s4
                  slli         a3, a2, 0
                  add          a4, t4, s8
                  add          a5, s5, s0
                  slt          ra, s11, t1
                  andi         s9, a1, -1145
                  lui          t4, 1031264
                  sltu         t6, s4, a5
                  auipc        t0, 885878
                  sub          sp, s0, s4
                  sltu         t4, s3, a0
                  sra          a3, s0, ra
                  sltu         t0, a7, a6
                  addi         ra, s10, 1520
                  auipc        a5, 662390
                  slli         zero, t5, 3
                  auipc        s8, 405142
                  sra          a2, s9, s2
                  xori         a6, s11, 832
                  slt          s8, s7, s11
                  slti         t1, s2, -1504
                  lui          s2, 403677
                  and          a4, t4, t2
                  add          s8, s7, t0
                  sltiu        s6, s10, -1463
                  nop
                  andi         a3, s11, -482
                  xor          s9, s2, a7
                  srai         t4, sp, 30
                  srli         s2, s5, 23
                  add          t6, s10, s2
                  nop
                  srai         zero, t5, 15
                  sra          t2, s5, s0
                  slli         t2, a5, 1
                  andi         s9, gp, 1840
                  srai         s5, a5, 22
                  slli         t4, s5, 6
                  srli         t3, t0, 10
                  slt          a0, ra, a3
                  add          a5, s4, a5
                  or           sp, t0, tp
                  sub          s8, tp, sp
                  nop
                  or           tp, a5, a5
                  sra          a3, s1, ra
                  sltu         zero, a4, s2
                  andi         a3, t6, 793
                  or           s2, s9, a5
                  ori          sp, t2, 546
                  xor          a5, tp, s10
                  auipc        a3, 667709
                  nop
                  add          ra, a6, s2
                  srli         zero, s5, 25
                  and          tp, a0, a2
                  slli         a2, s0, 0
                  auipc        ra, 283100
                  or           sp, t3, a3
                  ori          zero, s9, 1631
                  sltu         a4, t1, a1
                  auipc        s6, 393737
                  sltiu        t4, s8, -1631
                  slti         ra, gp, -658
                  slli         gp, s5, 18
                  slt          s2, t4, a2
                  sub          s8, t6, s4
                  sub          s4, t3, s11
                  srli         s0, s5, 10
                  slt          t0, s4, s3
                  srl          s5, s6, t0
                  ori          s7, s4, -1018
                  srli         a5, s7, 11
                  add          t6, a0, s3
                  xor          a7, ra, s8
                  and          s6, s5, s11
                  add          t3, s3, t0
                  srli         a2, s0, 29
                  addi         s9, t0, -1704
                  sra          t6, t2, s1
                  slt          s6, a4, a1
                  ori          tp, a4, -1464
                  slli         t0, s4, 2
                  srli         t1, s8, 23
                  ori          a0, s1, 574
                  and          t3, s7, ra
                  sltiu        s8, t3, 665
                  xori         s7, a3, 1266
                  nop
                  ori          a3, t1, 1439
                  lui          t2, 697996
                  slli         s4, a1, 23
                  xor          s2, a3, s4
                  auipc        s4, 939648
                  sltiu        a7, s3, 1970
                  slt          a0, tp, a6
                  xor          a2, t2, sp
                  addi         t4, t6, -1903
                  srl          s10, s8, zero
                  nop
                  sltu         s9, t5, s0
                  sltiu        s7, a6, 930
                  sra          gp, s1, s2
                  sltiu        t6, a5, -1170
                  slti         s7, t5, -146
                  sltiu        a0, s9, -745
                  add          a5, s3, t0
                  srli         s4, tp, 2
                  srli         a1, t1, 27
                  sub          s0, t1, a2
                  sltiu        s10, s2, 2026
                  lui          a0, 248366
                  or           gp, a7, a1
                  sltiu        s6, s9, -1130
                  sll          a5, t4, a3
                  slt          s0, a6, t4
                  add          a6, s1, s2
                  sltiu        s4, sp, 179
                  slti         a4, s8, 1598
                  addi         a7, s10, 93
                  xori         a1, s9, -1367
                  sub          a6, a2, a4
                  sra          s3, a0, a1
                  slt          a4, a3, s5
                  addi         a1, t0, -948
                  addi         t4, s6, 180
                  sra          gp, s6, t0
                  slt          s0, s10, s1
                  slti         s4, a7, 1889
                  sltiu        s3, s3, -1310
                  srl          s4, tp, a1
                  srli         s9, zero, 30
                  sltu         gp, t1, gp
                  sra          sp, t5, t0
                  lui          s2, 476811
                  sub          a6, a7, a7
                  slli         s5, t0, 9
                  slt          gp, s7, a3
                  lui          s0, 611240
                  xori         t1, a0, -1919
                  or           a2, a1, t1
                  slt          s4, ra, s2
                  srli         s6, s4, 21
                  xori         a2, s4, 173
                  xor          s10, s1, t2
                  slt          s0, s8, t0
                  and          t3, s11, t2
                  add          s6, ra, s4
                  srai         t4, zero, 1
                  sll          s5, t0, a6
                  slt          t1, s2, s2
                  add          a3, s7, zero
                  sub          t1, s4, s7
                  xori         gp, a4, -593
                  srli         s6, t5, 8
                  xor          a4, s11, sp
                  or           a4, ra, gp
                  srai         s3, a1, 26
                  slli         t2, zero, 10
                  and          a3, s11, s0
                  nop
                  srai         t0, a5, 9
                  slli         a0, s10, 10
                  or           a0, a1, t3
                  srli         t1, s4, 30
                  lui          a5, 728952
                  and          zero, s10, s4
                  addi         s6, a5, -1020
                  or           s10, a2, t4
                  li           s10, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           a0, 0xffffffff
                  li           a2, 0x80000000
                  li           a5, 0x80000000
                  li           t0, 0x80000000
                  li           t2, 0x80000000
                  li           ra, 0x0
                  li           a4, 0x80000000
                  li           t3, 0x0
                  li           gp, 0x0
                  add          ra, gp, gp
                  addi         a0, s10, -1284
                  nop
                  add          t2, t3, t2
                  add          t3, s10, ra
                  sub          a5, t3, s10
                  auipc        a4, 68295
                  lui          s10, 846189
                  auipc        a0, 32667
                  sub          gp, gp, a2
                  lui          t0, 384664
                  addi         t2, a5, 336
                  addi         t2, a5, 234
                  addi         a0, a5, 1845
                  addi         gp, t0, -1233
                  auipc        a4, 989233
                  add          gp, ra, a5
                  sub          t0, a5, gp
                  addi         a0, t0, 254
                  lui          gp, 679540
                  nop
                  lui          a2, 869231
                  add          a0, a0, a5
                  auipc        t0, 333597
                  add          a5, t3, a4 #end riscv_int_numeric_corner_stream_14
                  slti         t1, a0, 368
                  add          a1, a4, s4
                  xori         s10, s2, 1312
                  srai         t0, a5, 19
                  ori          s5, s8, -477
                  srai         gp, a3, 23
                  nop
                  sltu         t2, s0, t1
                  or           t0, t2, s3
                  sltu         a0, a1, s2
                  auipc        s5, 518093
                  sra          sp, a4, sp
                  xor          s6, t1, a5
                  nop
                  andi         gp, s4, -960
                  sltu         t6, s2, t1
                  or           a1, s9, sp
                  or           s6, s10, a3
                  sltu         a1, s4, s3
                  slti         sp, a5, -622
                  srai         t2, zero, 19
                  addi         t1, t6, 665
                  sltiu        s9, t3, 1018
                  or           t3, zero, t1
                  addi         a0, t4, -1318
                  sra          s7, t3, s3
                  slli         ra, a1, 26
                  nop
                  slli         s3, a0, 15
                  auipc        s4, 559565
                  nop
                  slti         s4, s9, 1317
                  srl          s4, a0, s1
                  sra          s9, t1, t0
                  slli         ra, s10, 11
                  lui          s10, 905810
                  sltiu        t0, zero, 1802
                  and          gp, a2, a7
                  addi         tp, a6, -203
                  slt          s10, s2, s4
                  sltiu        s6, a6, 43
                  srl          ra, t0, s1
                  slt          s7, a1, s10
                  xor          t2, s1, sp
                  and          a7, s11, a2
                  slli         gp, a4, 3
                  sra          a0, a2, s0
                  srli         s7, a6, 13
                  sra          s4, s9, s10
                  and          s10, a2, a2
                  lui          tp, 122137
                  srl          t3, t4, gp
                  addi         t1, sp, -500
                  slt          t2, s3, s6
                  sub          s8, a5, a3
                  slti         s7, a7, 678
                  ori          t0, s6, 22
                  or           t4, zero, t5
                  slt          ra, s5, t2
                  xori         a3, s1, -274
                  addi         t1, a2, 340
                  xori         zero, a6, 778
                  sra          s6, t4, s9
                  nop
                  slli         ra, t5, 17
                  slli         t4, t4, 29
                  slti         gp, s11, -735
                  xori         t4, s11, 1755
                  slt          t2, sp, a5
                  or           s2, t6, t5
                  sll          gp, gp, a7
                  sltu         s4, s2, a1
                  xori         tp, s7, -1544
                  or           t1, t3, t6
                  sltiu        tp, s8, 845
                  add          t4, sp, a7
                  slti         s0, s2, 836
                  sub          s5, a1, a2
                  slti         a6, s9, -1114
                  and          t1, ra, zero
                  srl          t0, a7, t6
                  ori          s5, a3, 1117
                  xor          a7, t4, s3
                  ori          tp, a0, -1073
                  addi         t1, s8, 855
                  sll          s4, gp, ra
                  and          a0, gp, s9
                  srli         s0, s8, 15
                  xor          a0, s9, a7
                  andi         a7, ra, 404
                  sra          t4, s0, a0
                  lui          t6, 184581
                  ori          s7, t5, -855
                  srli         gp, ra, 27
                  sll          a3, a4, t5
                  auipc        s7, 856722
                  sll          t2, s2, a3
                  sll          sp, s11, t0
                  lui          a5, 663857
                  srai         a0, a4, 28
                  slt          a3, t2, t3
                  sltiu        a3, s0, -1328
                  addi         t4, t0, 1109
                  lui          a0, 732989
                  andi         ra, s1, -334
                  auipc        ra, 113106
                  xor          t6, a7, s3
                  auipc        t0, 998651
                  xori         sp, t2, 832
                  slti         s8, zero, -32
                  addi         t0, t1, 2025
                  sltu         t2, sp, s11
                  srli         a4, a2, 2
                  xor          a6, a1, a6
                  srl          tp, s7, s10
                  and          t4, a3, ra
                  or           s6, gp, zero
                  srai         t6, s8, 13
                  andi         t4, s11, 1706
                  sra          t1, t2, t6
                  srl          s10, sp, t4
                  add          s9, t0, s6
                  sub          t3, t5, t1
                  srai         a3, s9, 17
                  sltu         t3, s6, t4
                  srli         zero, zero, 29
                  andi         s5, t5, 1083
                  xori         s2, a4, 1724
                  sub          t0, t0, s8
                  srl          a2, t6, s8
                  addi         s4, s9, 1568
                  and          a0, t6, a3
                  addi         s9, t5, -890
                  ori          a4, s5, 703
                  ori          a5, a7, -1166
                  sra          sp, a4, s3
                  slt          a2, s2, a5
                  sra          s2, a4, a7
                  add          t6, s6, a2
                  or           s7, s1, s0
                  slt          s9, s10, s1
                  sltu         s5, a3, t6
                  srl          tp, a5, s8
                  andi         s10, s0, 1385
                  sltu         a5, t0, s9
                  andi         t3, t3, -277
                  slti         s2, s6, -1122
                  srli         t3, s9, 13
                  xori         a1, sp, 1969
                  addi         ra, t3, -1597
                  srl          t4, a3, s2
                  addi         s7, s8, 436
                  nop
                  sll          a4, s5, zero
                  xor          s0, s10, s8
                  slt          a7, s6, zero
                  sub          a0, t0, s7
                  srli         s6, s10, 20
                  xori         s10, a1, 337
                  srl          a1, sp, a3
                  srl          a4, a0, t3
                  srli         s3, a2, 12
                  slt          s10, s5, t1
                  slli         s4, s8, 26
                  and          t4, s1, a3
                  sra          a3, zero, tp
                  xor          t3, t1, s1
                  slli         s0, a5, 17
                  add          t1, s11, a7
                  or           s3, s7, a1
                  slli         a6, a2, 0
                  srl          s0, a7, sp
                  sltiu        a2, a5, 898
                  sltiu        t4, s5, -754
                  lui          s7, 706217
                  sll          s3, a1, t2
                  auipc        a7, 639693
                  sll          s8, t3, s2
                  xor          t6, sp, a1
                  slt          t6, sp, s1
                  lui          sp, 815547
                  slti         a5, s2, -332
                  lui          t4, 1026220
                  andi         t0, s1, 2026
                  and          zero, t1, s1
                  add          a7, s2, s5
                  slli         s10, s9, 0
                  or           t4, a6, t4
                  lui          s5, 2597
                  srli         s7, s11, 11
                  sltiu        t4, s11, 2012
                  andi         a3, s3, 353
                  sub          a2, s11, a3
                  and          t0, s11, sp
                  sub          s6, s0, sp
                  lui          a1, 878875
                  nop
                  auipc        a3, 350534
                  sub          sp, s11, s7
                  addi         t2, t1, -1774
                  auipc        a0, 275953
                  or           tp, zero, s1
                  sra          zero, s11, t1
                  nop
                  sub          a4, s2, a5
                  lui          s6, 682727
                  and          t1, gp, s5
                  srl          a1, t3, gp
                  addi         s4, t6, 104
                  sltiu        s6, gp, 1255
                  xori         s10, ra, -290
                  sub          s9, t3, t1
                  sltiu        a6, t3, -1301
                  auipc        gp, 792556
                  slti         s6, s5, -1677
                  andi         s6, s11, 1130
                  srai         ra, a3, 21
                  slti         ra, s10, -854
                  xor          s3, s4, t2
                  xori         a2, gp, 537
                  sra          t0, s10, a3
                  andi         t3, a5, 540
                  add          a2, s2, ra
                  srli         s7, t2, 6
                  or           t0, a0, s5
                  srli         s5, t3, 6
                  addi         s5, gp, 436
                  slli         a0, a1, 1
                  slli         t3, s2, 16
                  ori          t3, a4, 446
                  sub          a4, a3, ra
                  srl          t6, s3, s7
                  andi         s4, t2, -63
                  or           a2, t0, a6
                  slti         zero, s5, -712
                  lui          s3, 491689
                  srli         s2, a4, 4
                  srl          a7, a7, tp
                  srl          s9, a4, s11
                  nop
                  srai         a7, a6, 18
                  or           s0, t1, s9
                  nop
                  addi         sp, a6, -1490
                  auipc        gp, 665239
                  slli         s9, s2, 3
                  srl          s9, s5, a7
                  lui          tp, 433652
                  lui          zero, 50773
                  slti         ra, zero, 325
                  addi         s6, s5, -718
                  sub          sp, a1, a7
                  andi         s3, ra, 682
                  srli         zero, t5, 5
                  sltiu        s2, s10, 1453
                  auipc        a0, 947418
                  sub          a5, s11, s8
                  andi         a4, a0, 148
                  lui          a5, 870825
                  sll          s8, s11, s2
                  lui          s9, 730148
                  sltu         a5, a2, s4
                  srl          gp, sp, t2
                  or           t2, a0, s1
                  addi         a2, a6, -548
                  sll          s2, s11, t1
                  ori          a1, a7, -1016
                  slt          s4, s5, a4
                  sra          s4, t5, t2
                  sra          s0, ra, t6
                  andi         s0, a3, -156
                  add          t0, a4, t0
                  sll          t4, s11, s3
                  nop
                  sltiu        t3, gp, 2037
                  add          s8, t0, s11
                  sltiu        s8, s0, -1793
                  and          s10, s0, s2
                  srl          t0, a2, a4
                  srli         a2, t3, 19
                  sra          t1, gp, s11
                  xor          sp, sp, a1
                  srli         s10, s2, 11
                  sltu         t3, t6, a2
                  sltiu        t1, t5, 1042
                  sltiu        ra, s5, 381
                  slt          t3, s3, a5
                  nop
                  xor          a3, s9, zero
                  ori          a6, gp, -80
                  add          s2, t5, gp
                  auipc        t0, 219142
                  srli         t3, s3, 30
                  slt          t2, t2, s0
                  nop
                  sll          a0, s10, a2
                  srai         s4, s1, 10
                  xori         s4, s4, 867
                  srli         t1, s7, 5
                  add          t3, a0, t2
                  nop
                  srl          zero, t2, s6
                  xor          t6, t6, a0
                  nop
                  add          s0, s4, a1
                  and          a7, a1, tp
                  add          a1, gp, a6
                  xor          a7, gp, ra
                  sll          s10, s4, a6
                  slt          s3, a5, t1
                  lui          a2, 551543
                  add          t3, a6, a0
                  and          ra, t5, t3
                  addi         t2, zero, -1940
                  auipc        t4, 23724
                  nop
                  addi         t4, tp, 830
                  addi         a0, t3, 566
                  nop
                  and          a4, ra, gp
                  slti         a5, a2, -1368
                  sll          s10, s5, s9
                  slt          s4, a1, gp
                  slti         s10, t4, 1210
                  slli         s9, a4, 2
                  addi         s2, s0, 514
                  srai         s8, zero, 30
                  xor          t6, s10, s6
                  slti         gp, s1, -1499
                  sltu         s2, s6, a4
                  and          s8, ra, t2
                  sltiu        t0, a2, -2045
                  auipc        sp, 236528
                  sub          t6, tp, a0
                  sltiu        s6, t3, -659
                  srai         s5, t5, 2
                  xor          s2, a3, a2
                  sltiu        tp, s6, 48
                  sll          ra, s9, zero
                  sub          a5, a7, t0
                  sltiu        a0, a0, 182
                  auipc        t3, 595120
                  srai         a7, a6, 12
                  sra          a2, a0, s7
                  slti         a5, t2, -772
                  sltu         t3, t3, a2
                  sltiu        s2, t6, -1206
                  add          s5, a2, t3
                  slli         gp, zero, 6
                  ori          s5, s0, -1923
                  and          gp, zero, s6
                  slt          t1, t4, gp
                  srl          t3, a4, a0
                  auipc        s8, 674213
                  srai         t3, t3, 14
                  andi         gp, s6, 110
                  sub          s9, sp, t2
                  slt          s4, sp, a7
                  slli         a2, s10, 10
                  slt          s2, tp, t0
                  sub          ra, a5, a2
                  srl          s5, a7, s7
                  sltiu        gp, t1, 1918
                  xori         s5, s7, 389
                  sub          a5, s0, t2
                  sra          a3, t5, a0
                  add          a2, s3, a5
                  xor          t2, a3, s0
                  slli         s3, tp, 20
                  add          a5, s1, s6
                  addi         s7, t0, -805
                  xori         ra, s9, -1805
                  xor          gp, gp, s3
                  sll          a6, tp, s6
                  xori         s8, s1, 592
                  nop
                  slli         tp, s2, 15
                  add          a5, s3, t5
                  sltiu        tp, ra, -808
                  srai         zero, t4, 25
                  srl          tp, ra, t0
                  or           t1, s5, s9
                  addi         s2, ra, 675
                  add          s8, sp, a4
                  auipc        a7, 480077
                  slti         s7, s10, -1834
                  sub          t6, a2, s3
                  srl          s0, gp, t0
                  or           s8, s9, t4
                  ori          a5, a3, 347
                  slti         s5, s4, 1469
                  auipc        s2, 924567
                  sltiu        gp, a6, 2042
                  andi         a2, a3, 1332
                  lui          a4, 486052
                  addi         tp, s2, -1806
                  ori          s8, sp, -1682
                  xor          a0, a5, s9
                  sub          tp, a0, t2
                  slli         a4, s8, 31
                  xor          a7, s11, s4
                  add          a6, tp, s6
                  andi         a7, t3, 1539
                  slti         a7, zero, 540
                  sltiu        s7, gp, 1721
                  sltu         s8, a4, s1
                  add          t0, t1, a3
                  and          a5, t5, a3
                  nop
                  add          a3, a7, a2
                  sub          tp, a4, a0
                  addi         tp, a1, -292
                  slli         t1, sp, 13
                  srl          s7, s11, tp
                  slt          a7, s8, s10
                  or           a5, s7, sp
                  and          a3, a4, a6
                  slt          s10, s3, a3
                  sra          a1, s11, s6
                  auipc        s0, 896194
                  nop
                  lui          sp, 785153
                  sub          a1, s7, a3
                  or           s9, s10, t2
                  auipc        tp, 810838
                  sub          gp, t0, a6
                  nop
                  and          t3, t2, a2
                  addi         t0, t5, 548
                  sra          a7, sp, s0
                  srl          t0, sp, t2
                  sltu         s2, s2, tp
                  sub          s3, ra, a4
                  sll          s5, a3, s11
                  and          s10, a6, t2
                  sra          t4, s6, a2
                  srl          t6, t5, zero
                  sltiu        s5, s0, 84
                  srai         s4, sp, 12
                  sub          s9, s10, s1
                  addi         zero, t2, 663
                  sltu         s9, s0, s11
                  sltiu        a7, s3, -549
                  add          ra, t2, s4
                  andi         s4, t6, 1634
                  sltu         t2, a3, s6
                  slti         a6, t5, 1207
                  slli         t3, gp, 16
                  nop
                  nop
                  ori          s10, s10, -944
                  srai         s6, a3, 13
                  slli         t4, t1, 12
                  srl          t1, a2, a5
                  lui          s5, 704935
                  add          gp, a3, t4
                  andi         s5, s6, -1058
                  andi         sp, a4, -673
                  or           sp, s8, a6
                  and          s9, s7, a0
                  sltu         s8, sp, s0
                  slli         a0, a2, 24
                  lui          a3, 961972
                  and          gp, t1, t4
                  andi         a6, a1, 1207
                  lui          tp, 793022
                  srai         t0, a2, 15
                  sll          s3, s9, s11
                  sll          a7, a1, s6
                  srai         s5, a2, 25
                  sub          s10, s6, s2
                  and          a7, gp, a2
                  lui          s10, 137067
                  lui          zero, 484918
                  andi         t0, s7, 1758
                  xor          s2, a1, a2
                  sll          gp, s10, s5
                  auipc        t4, 599771
                  slt          a3, s5, a7
                  slt          s2, s6, s2
                  nop
                  slli         a7, a2, 11
                  slti         t3, ra, -1815
                  nop
                  lui          a1, 46690
                  addi         zero, s9, -2014
                  sll          a0, t2, t6
                  slt          tp, a4, s10
                  sub          a5, s4, s6
                  sll          a7, t5, t2
                  slt          a1, s10, s3
                  xori         sp, s11, -1681
                  or           sp, s5, s6
                  sll          s4, t2, s7
                  nop
                  sltu         t4, s8, a0
                  sra          gp, s0, s3
                  slli         s4, s11, 19
                  xor          zero, sp, t5
                  slli         s4, t1, 30
                  sltu         t4, s1, s8
                  sll          s4, s8, t6
                  sltu         sp, t2, s3
                  andi         t2, s1, -1160
                  srl          gp, gp, t6
                  sltu         t1, s1, t2
                  and          s4, t2, s8
                  andi         a5, s4, -525
                  sltu         a4, t4, s8
                  slti         s0, s11, -733
                  andi         t4, s8, -1556
                  ori          gp, s5, -697
                  srai         t0, a3, 5
                  add          s9, s3, ra
                  sub          s5, a4, a1
                  xori         ra, a4, 1831
                  sub          sp, gp, a5
                  slti         a6, t6, -294
                  or           a7, zero, a1
                  sltiu        s6, zero, -78
                  srl          s9, s8, a4
                  srli         a4, sp, 22
                  slli         t3, a3, 26
                  nop
                  addi         t1, a3, 947
                  nop
                  sll          s8, t1, a2
                  slli         t1, s10, 4
                  xor          a5, s9, s11
                  add          t1, s3, s0
                  ori          s8, s0, -1609
                  xor          ra, s0, s5
                  slt          a7, s10, s11
                  or           a2, a7, s3
                  srl          tp, a6, s11
                  or           a3, s2, sp
                  srai         tp, a2, 19
                  or           s8, a2, t2
                  sub          a5, t1, a0
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           ra, 0x80000000
                  li           tp, 0x0
                  li           s8, 0x80000000
                  li           t6, 0xffffffff
                  li           a5, 0xffffffff
                  li           a6, 0x80000000
                  li           t4, 0x0
                  li           s5, 0x80000000
                  li           s3, 0x465abd02
                  auipc        s4, 436392
                  sub          t4, a6, t6
                  sub          t6, s8, t6
                  add          s8, ra, a6
                  sub          a6, t6, tp
                  sub          s4, s4, s8
                  nop
                  auipc        ra, 760899
                  sub          s3, t4, s4
                  sub          s3, s4, tp
                  nop
                  nop
                  sub          t4, t6, t4
                  nop
                  add          t4, t4, ra
                  addi         ra, t6, 1840
                  add          t6, s3, tp
                  nop
                  nop
                  nop
                  addi         s8, t4, 810
                  sub          s5, s3, a6
                  auipc        t6, 803816
                  add          tp, s4, s4
                  addi         t4, s8, -449
                  lui          t6, 811961 #end riscv_int_numeric_corner_stream_11
                  xori         zero, s10, 1678
                  srai         s10, a1, 1
                  srl          s7, s3, a5
                  auipc        s10, 516866
                  auipc        t3, 202895
                  sltiu        a0, a2, 1142
                  slt          s3, a6, t6
                  srl          s8, s1, a7
                  andi         a0, a3, -72
                  slt          t3, a5, gp
                  ori          a2, a2, 1067
                  lui          t2, 571036
                  add          a2, s3, zero
                  or           a2, t0, s5
                  srli         t4, s9, 14
                  sll          s4, zero, s6
                  sub          s2, a7, ra
                  sll          s5, tp, s5
                  slli         t3, a3, 20
                  nop
                  and          s5, t4, s8
                  xor          sp, s0, sp
                  sub          s5, t4, s9
                  srai         s10, a5, 23
                  and          s10, s7, t2
                  slli         a4, t4, 28
                  xori         a6, s3, 302
                  slt          a5, s3, a1
                  sltiu        s7, s8, 369
                  slli         sp, s3, 31
                  sub          a7, zero, a4
                  add          s3, t2, s10
                  srl          gp, s2, s9
                  andi         s4, t4, -1885
                  ori          s2, ra, 1420
                  add          a3, sp, s8
                  xor          a4, a7, zero
                  lui          s10, 888423
                  or           s8, a1, s10
                  srai         ra, a7, 8
                  sll          a5, t0, s7
                  lui          a0, 120524
                  nop
                  slti         sp, s3, -1799
                  and          s6, s0, a2
                  andi         sp, s11, -1329
                  sltu         zero, a1, s10
                  sltu         a3, s4, t6
                  auipc        t1, 994151
                  srai         t0, t4, 15
                  srl          gp, a4, t2
                  srli         t3, tp, 18
                  sra          s0, s2, zero
                  lui          a5, 682319
                  srai         a4, t3, 7
                  or           s6, t6, a3
                  slt          a0, s1, s8
                  xor          s10, t6, s2
                  or           s6, a3, s2
                  andi         a2, ra, -13
                  srai         t1, t6, 30
                  sra          s6, t3, a4
                  add          gp, s1, s3
                  sub          s0, s11, sp
                  ori          ra, a6, -218
                  addi         a2, zero, -9
                  and          a4, a2, a4
                  slt          a5, t3, a5
                  sll          gp, s10, a6
                  slli         sp, s11, 2
                  nop
                  sltiu        s0, tp, 985
                  sub          s5, s0, gp
                  nop
                  sll          a2, tp, sp
                  lui          gp, 210988
                  andi         a3, s9, -956
                  sll          tp, a2, s4
                  nop
                  sltiu        gp, s6, -431
                  sltu         tp, zero, s2
                  nop
                  xor          a4, s4, t4
                  nop
                  auipc        a0, 970326
                  xor          s8, a3, a2
                  auipc        a6, 624964
                  sltiu        a0, a4, 515
                  lui          tp, 1020097
                  nop
                  ori          s2, t2, 1712
                  sltiu        a3, s0, 1464
                  xor          a5, ra, gp
                  slt          s4, s9, s4
                  srli         a4, s4, 2
                  xor          t3, a1, s8
                  sra          a4, a7, t6
                  add          t4, s11, tp
                  xor          s10, s2, s0
                  srl          tp, a7, gp
                  xor          s3, a7, t5
                  sra          t6, s1, zero
                  add          t2, s1, a3
                  srli         t2, s7, 27
                  sll          s6, a6, a2
                  auipc        t0, 983350
                  xor          s2, s11, s0
                  sltu         t1, s7, s9
                  xor          s4, t6, ra
                  lui          zero, 537950
                  andi         a5, s3, -1464
                  srai         gp, zero, 20
                  sltu         a3, ra, a5
                  auipc        s6, 919553
                  and          a4, t2, s2
                  sra          a1, t6, s2
                  sll          tp, a0, s9
                  auipc        s6, 791970
                  ori          a6, t1, -1612
                  srl          sp, zero, s5
                  srl          t2, t3, a7
                  srai         s9, a7, 25
                  sub          ra, a5, s2
                  sltu         s7, t4, s4
                  addi         t3, t1, -2025
                  slli         a3, ra, 30
                  sub          gp, a2, a3
                  srl          s7, sp, a7
                  sltu         s6, s2, t3
                  nop
                  sll          s8, a0, s3
                  sub          s8, t0, s7
                  slli         s5, t5, 22
                  xori         a5, s8, 197
                  sltiu        s9, s3, -190
                  sub          a4, s1, s1
                  xori         s9, a1, 1995
                  or           a5, tp, a7
                  sll          s10, t1, tp
                  slli         s6, s9, 3
                  auipc        ra, 158411
                  lui          t0, 362633
                  add          gp, t2, s5
                  slt          s6, a4, s11
                  sra          s0, t3, t1
                  xor          s6, tp, ra
                  slti         zero, a4, 1661
                  slli         a3, t6, 24
                  srai         t2, s1, 10
                  nop
                  andi         t6, s8, 441
                  xori         t4, a1, 591
                  xor          s5, s1, t0
                  slti         t3, a6, -1790
                  andi         gp, s7, 294
                  and          s5, a5, a6
                  addi         t3, s0, 1506
                  srli         zero, a4, 0
                  add          a3, t1, s11
                  ori          a2, a7, -1879
                  andi         gp, a0, -1495
                  or           t2, s1, s11
                  add          zero, t6, t0
                  slt          s0, zero, a2
                  srai         s5, s11, 28
                  nop
                  srli         a4, s1, 2
                  sub          a1, s6, tp
                  sra          s4, a1, a5
                  sub          t2, t2, s1
                  or           a5, a7, zero
                  auipc        s8, 602468
                  slli         s3, tp, 1
                  xori         sp, t5, -1736
                  lui          t2, 222319
                  slli         s6, gp, 19
                  auipc        s2, 409939
                  andi         s7, sp, -1672
                  sll          t1, a1, s8
                  nop
                  sll          t4, a0, t1
                  srli         s7, a1, 27
                  andi         s4, t1, 1155
                  srl          a3, t2, s5
                  sub          s7, sp, a4
                  srl          a3, a6, s2
                  ori          a1, t2, 690
                  ori          gp, s6, 1602
                  and          t0, s0, a3
                  andi         a2, s7, -1731
                  auipc        s3, 551062
                  lui          s8, 178380
                  sub          a2, t4, s3
                  slli         s8, s1, 18
                  lui          t3, 219822
                  addi         a0, a6, 156
                  and          t4, s9, a4
                  sltiu        t2, t1, -1814
                  srli         a7, t6, 28
                  slt          ra, s6, s7
                  srl          t4, t4, t1
                  slti         t4, t6, -2017
                  addi         zero, s6, 25
                  slti         a6, s7, -1045
                  srai         a3, s1, 6
                  sra          s7, a2, a4
                  ori          t1, a4, 1656
                  or           t2, t2, a4
                  xor          a4, a6, a2
                  srl          t2, gp, a4
                  addi         t1, s3, -1059
                  add          a4, tp, ra
                  sltu         s0, gp, a4
                  xori         t3, a1, -535
                  lui          a7, 569063
                  lui          s9, 228709
                  srai         t4, t6, 10
                  addi         a5, a5, -2044
                  srli         sp, ra, 6
                  sll          s4, t0, gp
                  slli         t2, zero, 15
                  slt          t0, s1, a1
                  sub          a5, s2, s11
                  auipc        s6, 467152
                  andi         a1, s9, 393
                  srl          t3, s2, t2
                  srli         t2, gp, 10
                  xori         sp, a2, 1820
                  slli         sp, t2, 19
                  xor          t2, a7, s4
                  sltiu        gp, a0, -266
                  srli         a6, ra, 27
                  slt          s2, gp, s5
                  srli         a5, ra, 20
                  and          a0, t6, s8
                  sra          t2, a1, s3
                  sra          a5, ra, s4
                  sll          a2, t3, s6
                  slli         zero, a6, 2
                  addi         s6, s3, 178
                  slli         t6, a7, 14
                  auipc        ra, 796581
                  srl          s8, t4, t1
                  sltu         s2, t1, s4
                  and          s6, sp, ra
                  xori         zero, s2, -1248
                  srli         s3, s8, 0
                  srl          tp, tp, a1
                  srai         s0, s9, 31
                  andi         a3, t3, -1297
                  slt          a6, s5, t4
                  slli         s8, s5, 8
                  slt          a5, s7, gp
                  sltiu        a1, s3, 1004
                  nop
                  add          ra, tp, s8
                  srl          a5, s11, t5
                  sra          a4, a3, a2
                  slli         t2, s2, 5
                  andi         s4, s10, -1536
                  addi         t3, s2, 1357
                  or           a7, t6, t1
                  auipc        s0, 363093
                  auipc        a4, 807448
                  addi         a7, s8, -744
                  nop
                  or           t6, s1, s4
                  sll          s0, tp, a1
                  srai         a1, a2, 15
                  lui          s2, 244593
                  lui          t3, 249125
                  nop
                  add          a4, s11, t4
                  xori         zero, s2, -1709
                  nop
                  sub          a7, a1, t0
                  slti         gp, a1, 119
                  sltiu        s9, a6, 736
                  slli         a4, tp, 23
                  ori          t0, s4, 1642
                  srai         t1, a5, 12
                  add          a1, a0, s0
                  sltu         a2, a0, zero
                  lui          s2, 70622
                  srl          a6, s5, a6
                  slli         s7, s4, 10
                  auipc        sp, 881746
                  lui          a7, 541340
                  sll          s0, t5, a2
                  srai         sp, ra, 26
                  add          t0, a2, a5
                  slli         t2, s4, 10
                  addi         s3, a5, 532
                  xori         a3, s9, -810
                  srli         a6, s7, 10
                  nop
                  sub          s5, a3, s1
                  xori         tp, a6, -1106
                  srl          ra, a0, a5
                  or           a5, a2, t0
                  slti         a0, t4, -84
                  or           a2, s4, gp
                  sltiu        s7, a3, -1861
                  sltu         a5, s3, t6
                  and          s3, s3, a7
                  sltiu        a6, t1, -1164
                  add          a7, a0, s5
                  slt          s0, t4, s9
                  andi         s5, t0, -692
                  add          s8, t6, a4
                  auipc        t3, 459913
                  srli         a7, s10, 16
                  slli         s2, t5, 31
                  and          t2, ra, gp
                  sub          t1, s6, t1
                  ori          ra, s0, -1488
                  sll          sp, s2, t3
                  sltiu        sp, t3, -1519
                  sltiu        s7, s6, 775
                  slli         a6, sp, 0
                  srai         a2, a1, 22
                  addi         a0, s11, 1364
                  or           a5, a7, s9
                  sra          a6, s10, t0
                  sub          a3, t6, a6
                  andi         s2, a1, -1038
                  ori          a0, s9, -1079
                  or           tp, s4, a6
                  or           s7, t5, a1
                  addi         gp, s3, -678
                  nop
                  srai         gp, s9, 27
                  addi         a3, a6, -429
                  and          t0, sp, s11
                  and          tp, s11, s9
                  sltu         s8, sp, s9
                  add          a2, ra, a2
                  addi         a0, t2, -816
                  slt          a4, t2, s5
                  ori          zero, a6, -1867
                  srl          s0, t6, a0
                  slli         a0, a2, 26
                  nop
                  sra          sp, a7, s5
                  and          zero, tp, zero
                  sltiu        s2, t6, -412
                  srli         s2, t4, 10
                  auipc        gp, 707962
                  auipc        zero, 136288
                  srli         s8, s3, 4
                  addi         s9, s6, 1585
                  add          a7, t1, a4
                  sltiu        t1, a4, -546
                  lui          t4, 711452
                  add          s9, zero, gp
                  add          a0, tp, s5
                  sra          zero, s0, a5
                  slt          a0, gp, t3
                  and          s4, a4, t2
                  xor          s6, tp, t1
                  sltiu        a6, t6, -714
                  sltu         a0, t5, a2
                  xori         t2, a2, -950
                  sltiu        gp, s5, 1893
                  addi         s5, t4, 334
                  sub          sp, a2, t6
                  sub          a6, a1, s4
                  slli         s10, a5, 5
                  slti         a4, s3, -525
                  sltu         zero, t2, a5
                  sltiu        t6, s11, -1078
                  and          s5, a6, t3
                  sltu         s2, s10, a0
                  addi         s0, s2, 985
                  lui          sp, 1026218
                  srl          sp, t2, t0
                  sra          a6, s11, a1
                  slt          zero, a7, a2
                  add          t4, s0, a7
                  slti         ra, a2, 1035
                  sltu         a0, s4, t1
                  srl          zero, s4, s7
                  lui          s7, 960367
                  sll          a7, a5, t6
                  xor          gp, a6, zero
                  sltu         t1, t6, s8
                  andi         t1, s9, -385
                  xori         t4, s8, 1616
                  sltu         a5, gp, a3
                  xori         t0, a1, 1750
                  or           s8, t6, a0
                  slt          t6, s7, a4
                  and          t6, a7, ra
                  add          ra, s9, t1
                  slt          a4, a1, zero
                  slli         tp, s11, 17
                  sra          s10, a2, t4
                  srl          ra, a5, a5
                  srai         gp, s6, 4
                  xor          a0, a0, s9
                  lui          a1, 916891
                  slli         s2, gp, 8
                  slli         t6, t1, 18
                  add          a1, s11, s1
                  sltu         a0, s7, zero
                  and          s3, s11, t0
                  srl          t0, t1, s0
                  srl          a6, sp, s10
                  slti         s10, a0, -1024
                  lui          s2, 833545
                  sra          a6, s6, s0
                  slti         a6, s0, -1101
                  sra          a7, s1, a4
                  sra          s2, s4, s11
                  nop
                  sra          t0, gp, a2
                  xori         s2, tp, 368
                  xor          s0, t2, s10
                  slti         s7, s4, 1154
                  sub          s2, s6, s11
                  sltiu        ra, t6, -284
                  lui          s9, 241830
                  lui          s4, 112546
                  xor          s4, s7, ra
                  sltu         s6, ra, ra
                  sltu         t6, t0, s10
                  auipc        tp, 647709
                  or           s6, a4, a7
                  ori          s6, t6, 1123
                  sltu         zero, s6, t0
                  slti         a5, s8, -224
                  nop
                  slt          s6, ra, sp
                  srli         a6, s0, 4
                  add          t1, t4, s3
                  sll          ra, s2, t0
                  lui          a2, 326123
                  sra          a7, s5, s0
                  slt          a7, s6, a1
                  or           a1, sp, s2
                  sub          a4, a3, gp
                  xori         a0, s4, -1866
                  ori          a0, s0, 809
                  and          gp, zero, gp
                  sra          ra, s4, a0
                  add          s7, gp, a3
                  sra          s2, t4, a2
                  sra          s4, a3, s1
                  sub          a7, ra, t5
                  srl          a0, tp, t2
                  xori         s4, s2, -1586
                  sltu         t6, t6, s8
                  xori         a1, a5, 1224
                  slli         a4, a6, 7
                  sub          a3, s2, s8
                  or           a4, s5, t3
                  srai         gp, s4, 28
                  auipc        t3, 653633
                  xor          gp, t2, t6
                  sltiu        s10, s0, 712
                  addi         a3, t3, -1396
                  auipc        t6, 224269
                  slli         s9, t2, 3
                  slt          a2, s2, a1
                  and          t1, s11, t3
                  slt          t0, a3, a6
                  xori         a5, s9, -1726
                  sra          s4, s11, tp
                  lui          tp, 513105
                  add          s2, t1, t3
                  sll          s2, s6, t2
                  sub          t0, a7, t3
                  slli         s4, s0, 12
                  slli         a5, t1, 7
                  sltu         sp, s0, tp
                  srai         gp, s1, 27
                  srli         gp, s7, 27
                  srli         s5, t0, 21
                  srli         s9, a2, 24
                  srl          s9, a3, s10
                  sltu         t1, a7, s6
                  sltu         sp, s3, gp
                  sltu         s6, s6, s4
                  sll          a4, s9, s1
                  srli         sp, s0, 13
                  and          sp, a5, s6
                  nop
                  srai         a0, s1, 24
                  srai         gp, a7, 31
                  and          t1, t1, s1
                  ori          s2, s10, 918
                  ori          s8, s5, -1416
                  lui          s2, 628472
                  and          s0, a1, s10
                  srl          tp, a6, t0
                  xori         t3, s2, -1451
                  sra          a2, tp, s8
                  ori          s3, sp, 1832
                  slli         t3, s11, 1
                  sll          a1, ra, sp
                  sub          sp, a7, s9
                  srai         s4, s6, 24
                  or           s10, a7, zero
                  or           sp, s3, s8
                  add          s6, a4, s10
                  sltiu        a6, a5, 203
                  srl          a1, t5, s8
                  slli         a3, s11, 3
                  add          sp, s5, t4
                  sll          s8, t2, a4
                  xor          t6, s8, s8
                  srl          s4, a2, t6
                  sltiu        a3, tp, -1407
                  xori         t1, gp, 1748
                  add          s9, s9, t6
                  sra          a7, tp, gp
                  sub          sp, a7, t4
                  xori         sp, tp, -196
                  slti         t3, sp, 1948
                  add          t6, s5, t3
                  slli         t1, a5, 6
                  sll          s6, s11, s2
                  xori         t1, ra, 2021
                  nop
                  sra          s9, tp, t1
                  xori         s5, ra, 801
                  lui          a4, 284088
                  ori          s9, s7, -1922
                  xor          zero, t1, a4
                  and          s3, a2, s3
                  auipc        gp, 151690
                  or           ra, a4, s11
                  slli         ra, s7, 3
                  andi         gp, s7, 980
                  slli         a1, s9, 18
                  slli         t6, s5, 7
                  nop
                  or           s3, t0, a1
                  sltu         s3, sp, s4
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           s0, 0xffffffff
                  li           s10, 0x80000000
                  li           s2, 0xd17c3640
                  li           s9, 0x23aabea6
                  li           ra, 0x80000000
                  li           s6, 0x80000000
                  li           a6, 0xb65ad250
                  li           s8, 0xb0b14020
                  li           a7, 0xffffffff
                  sub          s8, ra, s0
                  auipc        s9, 729430
                  add          s2, a6, s0
                  sub          s8, s10, ra
                  sub          s6, s0, a7
                  nop
                  auipc        s10, 575081
                  lui          s8, 156806
                  sub          ra, s6, t2
                  add          ra, s0, s6
                  lui          s8, 1046459
                  add          s0, s6, s8
                  nop
                  lui          t2, 931843
                  addi         s6, a7, 642
                  sub          a7, ra, s10
                  add          s0, s10, a6
                  nop
                  auipc        s2, 340597
                  add          s8, s10, a7
                  lui          t2, 103135
                  auipc        s2, 901653
                  addi         a6, t2, -586
                  add          s10, s0, s0
                  auipc        t2, 1030693 #end riscv_int_numeric_corner_stream_3
                  xori         sp, s0, -1272
                  sra          a2, sp, s3
                  and          t1, a0, s10
                  srli         a2, a0, 24
                  slti         ra, s11, -1655
                  lui          zero, 451436
                  andi         t4, zero, 112
                  sltu         a5, s8, s8
                  sll          s7, t5, a5
                  ori          s3, s4, -9
                  srli         s4, s7, 2
                  slli         s10, t5, 6
                  slti         a5, s8, -1864
                  slli         s9, ra, 19
                  addi         a5, t5, 1251
                  slti         t0, s11, -338
                  sltiu        t3, s11, 1208
                  lui          t1, 205426
                  srli         ra, ra, 14
                  nop
                  lui          a1, 471280
                  xor          s4, s4, t0
                  xor          t4, a4, s9
                  sub          s3, s11, sp
                  ori          t6, t4, -535
                  andi         t3, t5, 30
                  add          a6, t5, s6
                  sll          t4, t5, sp
                  slli         a6, s0, 20
                  xori         a4, gp, -334
                  xori         t2, t2, 376
                  andi         s6, s10, -115
                  addi         a0, s8, -854
                  slt          s10, s7, a3
                  slli         t3, t4, 16
                  nop
                  addi         s6, s4, 407
                  xor          a6, a7, s8
                  srli         s3, a7, 8
                  slt          a6, sp, a5
                  xori         t0, s9, -1522
                  slli         s3, s5, 7
                  xor          a5, gp, s11
                  xor          tp, s0, t0
                  nop
                  srai         zero, t3, 17
                  xori         t4, t3, 1386
                  sll          s10, t1, t2
                  srai         a5, zero, 18
                  slt          ra, a5, s10
                  xor          t6, a3, a6
                  auipc        a6, 591122
                  add          ra, a5, t0
                  xori         s4, s0, -1951
                  add          s10, s3, s3
                  sra          a3, a7, t5
                  lui          s3, 1041347
                  sll          s9, s8, sp
                  sltiu        s4, a3, 391
                  xori         s3, s6, -1308
                  ori          s2, t2, -990
                  sltiu        s4, t1, -190
                  add          t1, gp, zero
                  lui          zero, 691665
                  slti         s10, a3, 588
                  xori         t3, sp, 2000
                  slli         a0, s0, 20
                  andi         s4, a7, 231
                  sub          a4, a2, a4
                  sll          t2, t4, s0
                  sltu         t2, t3, t2
                  sltiu        s4, gp, 366
                  sll          s0, s3, s2
                  srli         zero, ra, 16
                  sra          a2, zero, s6
                  slti         gp, t4, -1200
                  sra          t6, a3, a6
                  slti         t0, sp, -1971
                  srl          s7, s9, a6
                  sub          t4, s9, s6
                  sltu         a5, tp, a6
                  ori          tp, tp, 27
                  andi         a4, ra, 1264
                  nop
                  slt          t4, sp, s1
                  sltiu        t6, a3, 1505
                  andi         a6, t6, -859
                  slli         a5, s8, 6
                  sra          s9, t3, gp
                  xor          t4, a0, a5
                  add          s2, s5, a2
                  sub          s3, t5, s11
                  add          ra, a5, s4
                  sll          sp, a1, t5
                  or           t1, s1, s0
                  lui          sp, 103614
                  auipc        t2, 846290
                  sub          s3, a7, a1
                  srai         a5, s4, 23
                  sll          s3, s1, a7
                  and          a6, s10, a7
                  sll          a2, s0, s7
                  nop
                  andi         sp, s10, -1844
                  srli         a5, s0, 19
                  addi         s8, a7, -1860
                  sra          a0, zero, s4
                  auipc        a1, 334335
                  sltu         s5, s8, t0
                  lui          t2, 827305
                  slti         a0, t0, -430
                  sll          s4, gp, a5
                  sll          a2, t0, s8
                  nop
                  srai         a6, s4, 13
                  and          a4, zero, ra
                  slti         s0, t4, -292
                  andi         s3, a1, 1120
                  srli         t0, t5, 23
                  and          s9, t5, sp
                  xor          s9, a0, t1
                  lui          t1, 866496
                  andi         a3, gp, 1692
                  slti         s2, tp, -1382
                  xor          a7, ra, s0
                  slli         a3, s2, 0
                  andi         a2, t3, -1151
                  srl          t2, a3, s4
                  srli         t4, sp, 13
                  slt          gp, t0, gp
                  auipc        tp, 541944
                  sltiu        s4, a4, -1489
                  andi         s7, t1, 1551
                  addi         zero, a7, 922
                  xori         s10, s9, -1422
                  sltiu        a7, a1, -1360
                  lui          t2, 1041392
                  srai         t0, s6, 24
                  nop
                  andi         t1, a6, -1881
                  addi         t6, a7, -1552
                  sltiu        a2, s7, 341
                  sll          s5, t6, s7
                  slti         s4, a4, 1746
                  auipc        t6, 788306
                  addi         s9, a1, -138
                  srai         s10, a5, 16
                  sub          s10, a0, s1
                  sra          t4, zero, a0
                  add          s0, s2, s1
                  sll          a3, a6, s10
                  sltiu        s7, s9, 1394
                  slti         sp, s7, -1100
                  sltu         a3, s9, a2
                  sltiu        gp, s4, 12
                  auipc        t6, 943033
                  sltiu        s8, ra, -328
                  xori         tp, t3, 295
                  srl          s4, t2, s0
                  nop
                  lui          zero, 67061
                  or           t2, s7, a4
                  or           a5, a7, s3
                  srli         s0, sp, 16
                  nop
                  lui          s4, 1022585
                  xor          a1, s7, t5
                  add          t0, s10, s1
                  slt          s10, a0, s3
                  srli         t1, a6, 2
                  lui          s8, 501587
                  srai         s9, zero, 18
                  sra          s6, s10, s3
                  and          t4, t4, tp
                  slli         s4, s10, 2
                  sltiu        zero, s10, 1136
                  srai         a4, s0, 27
                  add          t2, t4, gp
                  addi         s4, t1, -781
                  srai         a3, t6, 19
                  auipc        s0, 544004
                  srli         s4, a0, 5
                  lui          zero, 669548
                  srl          s9, s10, t2
                  sltu         t3, s9, a0
                  lui          t0, 198706
                  ori          s10, s4, 381
                  auipc        a4, 512098
                  andi         s3, a5, -1269
                  srl          a5, s2, a3
                  nop
                  slti         t1, a5, 1146
                  xori         a4, s7, 1381
                  add          sp, s4, s7
                  sra          s0, s0, t0
                  sltiu        s9, a1, -819
                  sltu         ra, a5, s9
                  sltu         a7, s1, a0
                  sll          s9, s3, s11
                  xori         s7, s9, 1682
                  auipc        a4, 550618
                  srli         zero, t4, 27
                  sltiu        a1, zero, -677
                  or           s5, s8, t0
                  add          s9, t2, sp
                  ori          s4, s2, -692
                  slti         t0, s1, -1168
                  sltu         s7, a2, a2
                  srai         a7, t2, 19
                  addi         s5, t1, 1273
                  slti         sp, s3, 1916
                  slti         a4, s5, -437
                  srai         s7, t2, 12
                  andi         zero, zero, 1131
                  slt          a3, t5, t5
                  andi         a3, s8, -1272
                  srai         s6, s7, 31
                  and          tp, a4, s10
                  sltu         a0, s6, s1
                  sub          s9, gp, s3
                  sltu         a2, t5, s11
                  andi         s4, a1, 1954
                  sll          t1, t6, a5
                  sll          a4, t4, s0
                  sll          s4, s5, t6
                  sra          s7, s6, zero
                  and          a6, t6, s1
                  srli         a1, s7, 24
                  slt          a7, a2, s0
                  nop
                  sltiu        s3, t1, -1358
                  slti         gp, s11, -563
                  xori         gp, s10, -1082
                  slti         t6, t6, 1219
                  slli         a3, s11, 4
                  sltiu        t0, s7, -1530
                  sra          t1, tp, gp
                  srl          s0, ra, a0
                  sltu         t1, t0, gp
                  ori          t2, t5, 707
                  sra          s6, a1, s11
                  and          t0, a5, zero
                  xori         s5, tp, 1764
                  ori          sp, a1, 1892
                  slti         s10, s10, 1192
                  srl          a1, s6, t2
                  addi         a4, a3, 1424
                  srli         sp, a6, 6
                  add          t6, a7, s4
                  sra          s3, s2, a1
                  xori         s7, a2, 555
                  srli         s10, t0, 1
                  slti         s5, s8, -1231
                  nop
                  sll          a5, s4, zero
                  andi         ra, a3, 774
                  auipc        a1, 669876
                  xori         t4, t6, 232
                  slt          s0, s8, a7
                  sltu         a7, a1, a4
                  slt          a0, t4, t1
                  srli         sp, s10, 10
                  srai         sp, t3, 26
                  auipc        s8, 908795
                  ori          t0, s7, 1238
                  xori         s9, t1, 216
                  slli         a6, a6, 2
                  nop
                  slt          t4, s6, tp
                  srli         s2, s11, 22
                  or           s6, s3, a3
                  or           s9, ra, s0
                  addi         s8, a0, 33
                  srai         a3, t1, 11
                  addi         s5, gp, -1
                  xori         s2, s2, 1484
                  sll          ra, a4, a4
                  slli         t2, a1, 10
                  srli         s8, s3, 9
                  slti         s0, s0, -1729
                  xori         a5, a4, -1348
                  slt          s4, a5, a6
                  sltu         t3, t0, a2
                  sltiu        s5, a7, 1771
                  and          a7, s3, s8
                  nop
                  andi         gp, s8, -1798
                  add          s9, s2, a0
                  and          a7, a2, a1
                  slt          t2, s11, t6
                  add          ra, tp, s4
                  andi         t4, s4, 1472
                  and          a0, t1, s0
                  xor          a3, tp, t1
                  sra          ra, t1, s8
                  sub          t6, a6, a6
                  sub          a4, t5, tp
                  lui          a1, 381165
                  sll          ra, t3, a3
                  srl          t2, s11, s3
                  andi         s3, s9, -385
                  ori          a4, s6, -758
                  auipc        t1, 460675
                  slli         t4, a5, 7
                  nop
                  srai         t0, s2, 9
                  sub          s4, s9, t3
                  sltu         s2, s11, t0
                  nop
                  auipc        s5, 368526
                  add          a4, s8, s2
                  or           a1, tp, tp
                  slli         s10, ra, 11
                  slti         t6, gp, -1822
                  auipc        s4, 591894
                  sltu         s7, a2, t1
                  ori          s6, a3, -1990
                  slti         tp, t1, -1006
                  xor          t4, a0, s2
                  auipc        s10, 11687
                  ori          a7, s7, 1102
                  andi         s4, s11, 1671
                  andi         s5, s5, -635
                  srli         a4, a2, 26
                  sra          a1, a0, a6
                  sltiu        s2, t3, -2036
                  sub          ra, a7, s8
                  sub          s8, a3, a2
                  nop
                  sub          t6, sp, t3
                  srl          s4, a0, a5
                  slti         a3, t6, -1410
                  xor          a5, a6, s0
                  sltiu        s10, t0, 2035
                  slt          s2, t5, zero
                  add          tp, s8, s11
                  srli         a2, t6, 23
                  sub          a7, t5, s5
                  srai         s4, a4, 7
                  addi         a0, s3, -1213
                  addi         a1, a2, -1831
                  or           gp, s0, s7
                  srl          s4, s0, a1
                  srai         t3, a7, 19
                  sub          a1, t3, a5
                  slli         t2, a5, 21
                  sltiu        a0, a5, -1286
                  xor          s0, a2, s10
                  xor          a4, a0, t6
                  xor          t1, tp, s3
                  andi         a7, t5, -1057
                  xor          a1, s4, a1
                  srli         sp, s11, 6
                  or           s8, a0, s3
                  srli         s6, gp, 7
                  sll          s4, s10, s10
                  srl          s5, t4, s3
                  sltiu        t0, ra, 187
                  sltu         t1, t5, s6
                  srli         s4, s1, 2
                  andi         zero, a7, 1645
                  add          a5, s2, s2
                  slti         s4, s0, -131
                  nop
                  add          a1, gp, s4
                  srai         zero, s1, 18
                  or           s10, s3, s0
                  slti         s0, a5, -128
                  sub          a5, s10, s5
                  andi         a4, s9, 1756
                  sub          a7, a7, t0
                  auipc        s6, 1031361
                  sub          a4, a4, s8
                  srl          t4, s0, t5
                  nop
                  or           s6, s1, s6
                  auipc        t0, 323299
                  nop
                  nop
                  andi         t1, gp, -1359
                  addi         ra, t6, -434
                  add          a6, gp, s1
                  add          t0, s3, t6
                  ori          s0, a5, -2011
                  or           t3, t6, sp
                  srl          a6, s2, ra
                  sub          s4, zero, zero
                  andi         s0, s2, -443
                  srai         sp, s11, 10
                  srl          a2, t4, zero
                  sub          t4, s2, sp
                  auipc        a5, 1009235
                  sub          t2, sp, s10
                  nop
                  slti         s5, a7, 1867
                  nop
                  slli         t1, t6, 1
                  sltiu        a2, s4, -390
                  lui          s2, 804975
                  slti         s9, a0, 1206
                  slli         a0, a1, 14
                  andi         tp, t6, -1920
                  slt          s7, a7, ra
                  srli         s3, ra, 15
                  slli         t1, a3, 10
                  addi         s9, s10, -1270
                  auipc        s4, 137090
                  xori         a6, t5, 233
                  andi         ra, a2, -1715
                  ori          a7, t1, 1778
                  sub          s7, gp, a4
                  addi         sp, t6, -8
                  sra          s10, t0, t3
                  xori         t4, a3, 1162
                  srli         s5, t4, 31
                  lui          t1, 7547
                  sltiu        a3, gp, -29
                  slti         a1, s4, 1233
                  add          s6, a2, zero
                  xori         ra, a0, 672
                  nop
                  or           t1, s11, s6
                  add          t6, s5, s4
                  addi         s7, s11, 1227
                  xori         ra, a5, 11
                  slt          a3, a1, t3
                  lui          s3, 739023
                  sltiu        a3, t6, 836
                  sub          s6, t3, s0
                  slti         t1, s11, -1083
                  srai         t3, s10, 4
                  xori         s10, a7, 370
                  srli         t1, s10, 20
                  andi         t2, t4, 1093
                  slli         a4, s5, 3
                  srli         s8, a7, 6
                  sltu         a1, a2, zero
                  xor          gp, s10, a1
                  or           s5, t6, t4
                  sub          sp, s11, gp
                  slti         t1, s5, 1769
                  and          s7, s9, a1
                  sltu         a7, t4, a0
                  xori         gp, s9, 1781
                  xori         s4, s0, -709
                  sra          a4, s2, ra
                  ori          s8, a5, 1626
                  xor          a0, s0, s3
                  sub          t1, a2, t3
                  xori         s5, s10, -1664
                  slti         a2, zero, 1645
                  xor          t6, a2, s3
                  auipc        t1, 581799
                  andi         s6, s5, 1999
                  lui          s10, 285891
                  addi         s7, t5, 2044
                  xor          s5, a5, a5
                  or           s9, s0, s3
                  nop
                  sll          a6, s5, a3
                  sltu         t2, s8, t0
                  xori         s10, s8, -289
                  sll          t6, a1, a0
                  sra          a1, s8, ra
                  and          sp, s4, a3
                  auipc        s7, 458364
                  slt          tp, s4, s11
                  sub          a7, s1, s4
                  sra          a5, t4, s8
                  auipc        s5, 969939
                  srl          t6, gp, a7
                  ori          a6, ra, -1934
                  srli         zero, a7, 12
                  sub          s6, s5, s6
                  sltiu        s3, a3, -557
                  xori         a6, a3, -193
                  auipc        t1, 830275
                  srai         tp, a4, 0
                  sra          s5, t6, a5
                  li           a3, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           a6, 0xffffffff
                  li           ra, 0x80000000
                  li           t0, 0xffffffff
                  li           s3, 0x0
                  li           a0, 0xffffffff
                  li           sp, 0x80000000
                  li           s2, 0xffffffff
                  li           s7, 0x80000000
                  li           t1, 0x0
                  auipc        ra, 264726
                  add          a3, s3, a6
                  auipc        a0, 270799
                  addi         a0, sp, 228
                  addi         s3, a0, 674
                  nop
                  lui          sp, 130256
                  addi         a3, a0, 7
                  addi         s2, t0, 1348
                  auipc        s7, 833525
                  add          s3, ra, s7
                  nop
                  lui          t1, 257308
                  nop
                  add          ra, t1, a0
                  addi         a6, sp, -1965
                  auipc        sp, 534437
                  sub          a3, a3, a6
                  nop
                  add          a6, s3, s3
                  add          s3, t1, a0
                  auipc        sp, 308175 #end riscv_int_numeric_corner_stream_12
                  sub          s8, sp, s6
                  nop
                  xori         s9, gp, 1699
                  xori         a2, t1, 1821
                  auipc        t0, 500152
                  and          a5, t0, gp
                  xori         s5, s9, -1724
                  xori         zero, a4, -851
                  xori         t1, a0, -1898
                  sltu         t1, s6, s4
                  or           s0, s6, a2
                  nop
                  srl          a4, s11, s0
                  lui          a4, 571640
                  slti         a0, a2, -238
                  andi         s4, t3, -1042
                  sltiu        t2, t6, -1685
                  slli         sp, sp, 12
                  and          s8, tp, sp
                  addi         zero, a4, -1475
                  addi         tp, ra, 860
                  sltiu        s10, a4, -1642
                  slt          s9, a3, a5
                  srai         t1, t2, 18
                  sll          s3, t1, s1
                  auipc        t0, 536568
                  sra          s9, t1, a2
                  sltiu        s9, t3, -1144
                  auipc        t6, 679674
                  andi         sp, s3, 329
                  andi         t4, a2, -1066
                  slli         t3, a1, 14
                  addi         a0, sp, -1041
                  sltu         s10, s5, t0
                  andi         tp, t4, 930
                  addi         a1, t0, -1292
                  sra          s10, a1, s4
                  sltu         s5, t2, a4
                  srl          s8, s6, s11
                  slt          s10, s3, s6
                  slti         s6, s4, 1677
                  sltiu        s5, sp, 14
                  xor          t0, s7, a6
                  and          a3, gp, sp
                  andi         a6, ra, 438
                  lui          a1, 278985
                  nop
                  lui          s5, 105064
                  sltu         a3, s3, s5
                  lui          a1, 323961
                  ori          s3, s10, 1813
                  xor          ra, t4, ra
                  sra          a2, a2, t3
                  sltiu        a7, sp, -1986
                  lui          s10, 681639
                  srl          s8, s11, s3
                  sra          a3, s6, zero
                  lui          a0, 950430
                  lui          s10, 652142
                  nop
                  add          ra, t1, a3
                  sltu         a4, s0, s9
                  sll          s9, a7, a1
                  srli         s5, a5, 21
                  sub          t1, s4, t3
                  or           s10, tp, s9
                  sltiu        s5, a3, -1679
                  srli         a2, a3, 22
                  andi         s6, t3, -335
                  addi         a6, a3, -165
                  xor          s6, t6, gp
                  and          gp, s11, a0
                  sub          tp, s11, s8
                  or           a6, a7, gp
                  lui          a3, 187226
                  ori          s6, a0, -996
                  or           s10, s1, a1
                  slli         t6, s10, 26
                  srli         s8, gp, 15
                  lui          t2, 926140
                  and          t3, s3, t3
                  andi         a7, s2, -809
                  lui          sp, 230817
                  sra          ra, s6, s3
                  srli         a4, s6, 19
                  addi         s10, s4, -110
                  and          a1, a5, s2
                  slti         s5, t5, 730
                  lui          s10, 205536
                  addi         t3, a2, 590
                  xori         t6, s3, -403
                  sra          a4, s9, gp
                  auipc        s2, 555077
                  xori         a1, a1, 350
                  sltu         t2, s5, s6
                  nop
                  lui          sp, 176641
                  srai         a7, a0, 28
                  xori         ra, t4, -1580
                  srai         a0, t1, 26
                  lui          a7, 898157
                  srai         a4, s10, 30
                  lui          a4, 551760
                  srli         a3, a2, 24
                  xori         s6, gp, -885
                  srli         s2, s6, 5
                  addi         a5, s2, 234
                  srli         s7, t5, 13
                  xor          t0, ra, gp
                  nop
                  sll          a0, s3, s11
                  xor          t1, s6, sp
                  srl          s8, t4, s0
                  lui          t1, 258655
                  srli         s5, a6, 24
                  xor          t2, s2, s4
                  nop
                  sll          zero, s8, s6
                  nop
                  sra          s2, s0, a2
                  slli         t4, s11, 15
                  slti         t6, s5, -711
                  xori         tp, a7, -1910
                  auipc        ra, 270074
                  sra          s9, s0, t3
                  and          sp, t5, s9
                  auipc        gp, 462977
                  andi         s2, zero, 451
                  auipc        s0, 195041
                  sll          s5, gp, ra
                  xori         t6, ra, -1866
                  sll          tp, a4, gp
                  or           ra, s2, s0
                  and          gp, s7, s2
                  srl          t2, s0, s6
                  slt          sp, zero, s0
                  slti         gp, a2, 1113
                  slt          a4, tp, a0
                  xori         t1, a6, 205
                  addi         gp, t5, -1673
                  addi         s4, a5, -1419
                  slti         a6, a2, -121
                  sub          a1, a3, a7
                  xori         zero, s3, 1199
                  sltu         gp, ra, sp
                  lui          s4, 818263
                  slt          ra, a0, t2
                  nop
                  slti         s10, t2, -1358
                  srai         s7, zero, 19
                  slli         a7, s5, 7
                  sub          zero, a1, zero
                  lui          s9, 215040
                  srl          a2, s9, t2
                  and          s6, s9, tp
                  sltiu        s0, a7, 1375
                  srli         s8, gp, 14
                  srl          a0, a0, sp
                  sltu         t1, a4, a5
                  xori         t1, t0, 1276
                  slli         s2, gp, 30
                  addi         a5, t3, 558
                  srai         s9, sp, 17
                  srl          zero, a7, s8
                  nop
                  sltiu        s10, gp, -1287
                  sltiu        t0, a0, -2021
                  srl          t4, a6, s11
                  nop
                  slti         a2, s8, -1325
                  add          a1, s8, ra
                  lui          s3, 267455
                  sub          t2, s0, t3
                  xor          gp, a3, s4
                  srli         a6, t3, 9
                  srl          a7, t2, gp
                  andi         tp, s10, -962
                  srl          t6, s8, a7
                  sltu         t4, s8, s11
                  slti         gp, t0, 438
                  lui          a2, 77152
                  srl          a7, s10, a4
                  sltiu        s5, s4, 1210
                  slli         s9, s9, 28
                  xori         a5, s0, -514
                  addi         t0, a6, 1528
                  ori          gp, s9, -937
                  sltu         t0, t3, s7
                  andi         a1, s10, 0
                  sltiu        s2, s7, 883
                  srai         s6, s10, 1
                  sll          zero, s8, t5
                  slt          a4, tp, t6
                  sll          zero, a5, a7
                  sub          s10, a0, t2
                  sltu         gp, s4, s7
                  slt          a1, s5, s2
                  lui          a0, 369092
                  lui          ra, 776023
                  add          ra, gp, s4
                  slli         s4, s0, 19
                  slt          t4, a4, s7
                  srai         t3, s7, 16
                  sra          t1, a7, t3
                  srl          s5, s10, a1
                  nop
                  sll          a4, s5, s5
                  andi         ra, zero, 755
                  auipc        s2, 705792
                  xor          tp, a2, t4
                  ori          tp, a0, -1731
                  srai         s8, t0, 26
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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x27, x30, zero
                  csrr x29, 0x300 # MSTATUS
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 31
                  bne x29, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x29, 0x341 # MEPC
                  csrr x29, 0x342 # MCAUSE
                  li x22, 0x3 # BREAKPOINT
                  beq x29, x22, ebreak_handler
                  li x22, 0x8 # ECALL_UMODE
                  beq x29, x22, ecall_handler
                  li x22, 0x9 # ECALL_SMODE
                  beq x29, x22, ecall_handler
                  li x22, 0xb # ECALL_MMODE
                  beq x29, x22, ecall_handler
                  li x22, 0x1
                  beq x29, x22, instr_fault_handler
                  li x22, 0x5
                  beq x29, x22, load_fault_handler
                  li x22, 0x7
                  beq x29, x22, store_fault_handler
                  li x22, 0xc
                  beq x29, x22, pt_fault_handler
                  li x22, 0xd
                  beq x29, x22, pt_fault_handler
                  li x22, 0xf
                  beq x29, x22, pt_fault_handler
                  li x22, 0x2 # ILLEGAL_INSTRUCTION
                  beq x29, x22, illegal_instr_handler
                  csrr x22, 0x343 # MTVAL
                  1: la x9, test_done
                  jalr x1, x9, 0

ecall_handler:    
                  la x29, _start
                  sw x0, 0(x29)
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  la x9, write_tohost
                  jalr x0, x9, 0

instr_fault_handler:
                  add x30, x27, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

load_fault_handler:
                  add x30, x27, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

store_fault_handler:
                  add x30, x27, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

ebreak_handler:   
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x30, x27, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

illegal_instr_handler:
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x30, x27, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x29, 0x300 # MSTATUS;
                  csrr  x29, 0x304 # MIE;
                  csrr  x29, 0x344 # MIP;
                  csrrc x29, 0x344, x29 # MIP;
                  add x30, x27, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
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
