.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x28, h0_start
jalr x0, x28, 0
h0_start:
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x5, kernel_stack_end

trap_vec_init:    
                  la x19, mtvec_handler
                  ori x19, x19, 0
                  csrw 0x305, x19 # MTVEC

mepc_setup:       
                  la x19, init
                  csrw 0x341, x19

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x19, 0x1800
                  csrw 0x300, x19 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xfbffdaab
                  li x2, 0xf9d2f9fe
                  li x3, 0x80000000
                  li x4, 0xe34ec4ac
                  li x6, 0x8
                  li x7, 0xd
                  li x8, 0xf1c51288
                  li x9, 0x80000000
                  li x10, 0x5
                  li x11, 0x80000000
                  li x12, 0x0
                  li x14, 0x80000000
                  li x15, 0xff03fa6e
                  li x16, 0x68ef6691
                  li x17, 0xf8b8e092
                  li x18, 0x2
                  li x19, 0xfda54648
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0xb
                  li x23, 0x80000000
                  li x24, 0xf06042f0
                  li x25, 0xf308aa85
                  li x26, 0x80000000
                  li x27, 0x521eea9b
                  li x28, 0x89c88799
                  li x29, 0x6
                  li x30, 0x80000000
                  li x31, 0x0
                  la x13, user_stack_end
main:             li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           tp, 0xe4bee986
                  li           s7, 0xffffffff
                  li           a0, 0x80000000
                  li           gp, 0xffffffff
                  li           t6, 0xd929a496
                  li           a6, 0x0
                  li           s1, 0x80000000
                  li           s2, 0x0
                  li           a7, 0x80000000
                  lui          tp, 335150
                  sub          s1, a6, gp
                  sub          s2, s1, s1
                  addi         gp, a7, -1461
                  sub          s1, t6, tp
                  add          s7, a0, a0
                  lui          a6, 185892
                  nop
                  sub          s7, t1, a0
                  add          s7, t6, a0
                  sub          s1, s7, a7
                  add          gp, a0, t1
                  lui          t6, 932415
                  nop
                  add          t6, gp, t1
                  nop #end riscv_int_numeric_corner_stream_3
                  li           tp, 0x99d01de3 #start riscv_int_numeric_corner_stream_17
                  li           a1, 0xe9e6083c
                  li           s4, 0x80000000
                  li           s11, 0xffffffff
                  li           t4, 0xb8ca3dc9
                  li           ra, 0xffffffff
                  li           gp, 0xffffffff
                  li           sp, 0x0
                  li           s2, 0x0
                  li           a5, 0xffffffff
                  lui          ra, 669485
                  nop
                  auipc        s4, 830928
                  lui          tp, 765545
                  sub          a5, s4, a5
                  add          s4, sp, gp
                  lui          s11, 27059
                  sub          s4, a5, s11
                  add          a1, ra, a1
                  lui          s11, 809218
                  nop
                  sub          s2, a5, sp
                  addi         t4, s4, -806
                  nop
                  addi         gp, a1, -2015
                  addi         s2, gp, -138
                  nop #end riscv_int_numeric_corner_stream_17
                  li           t4, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           s7, 0x80000000
                  li           s0, 0x80000000
                  li           s5, 0x80000000
                  li           a2, 0x1c822cc
                  li           a6, 0xd3f01c5b
                  li           gp, 0xffffffff
                  li           s11, 0xffffffff
                  li           ra, 0xffffffff
                  li           t1, 0x0
                  lui          ra, 670359
                  nop
                  addi         gp, t4, -1145
                  addi         gp, t4, 587
                  add          s7, t4, ra
                  add          s0, a2, s0
                  auipc        s5, 797245
                  auipc        t1, 528894
                  auipc        gp, 747597
                  nop
                  add          s7, s5, a2
                  addi         t1, t4, 1587
                  sub          ra, gp, s11
                  nop
                  addi         t1, s0, 1433
                  sub          a6, t1, a2
                  nop
                  nop
                  addi         s11, ra, 1967
                  sub          s0, s0, s0
                  auipc        gp, 904535
                  lui          a6, 230202
                  auipc        s11, 181710
                  add          s11, s5, s11
                  sub          t1, s0, a2
                  add          a6, s5, gp
                  nop
                  add          s5, gp, a6
                  sub          gp, t4, s0
                  nop #end riscv_int_numeric_corner_stream_5
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           s8, 0x0
                  li           s6, 0xffffffff
                  li           ra, 0xffffffff
                  li           a7, 0xffffffff
                  li           t6, 0x0
                  li           t4, 0xffffffff
                  li           s4, 0x80000000
                  li           a5, 0x0
                  li           s10, 0x0
                  add          s8, sp, a5
                  lui          t4, 720047
                  add          s6, s4, s6
                  sub          t4, t4, s4
                  auipc        s10, 461514
                  add          t4, s10, t4
                  addi         a5, s4, 791
                  lui          sp, 677996
                  lui          s10, 683712
                  addi         t4, s4, -702
                  lui          s4, 721479
                  nop
                  add          s4, sp, t6
                  addi         s8, a7, 1722
                  lui          s10, 775200
                  nop
                  addi         t4, s6, 1214
                  addi         ra, s4, 852
                  nop
                  addi         s8, a7, -1197
                  add          s6, a7, s6
                  lui          ra, 349395
                  nop
                  addi         ra, t4, 200
                  auipc        ra, 615524
                  lui          s10, 789094
                  nop
                  sub          s8, a7, t6 #end riscv_int_numeric_corner_stream_19
                  li           t1, 0xc55131e6 #start riscv_int_numeric_corner_stream_4
                  li           a4, 0x7eab56b7
                  li           gp, 0xe6fe67a6
                  li           s0, 0x80000000
                  li           a5, 0x0
                  li           tp, 0x80000000
                  li           s4, 0x80000000
                  li           s6, 0x607594ef
                  li           s10, 0xffffffff
                  li           s9, 0xffffffff
                  lui          s9, 16503
                  nop
                  add          s9, s10, s10
                  add          s6, s0, tp
                  nop
                  addi         s4, s6, -1994
                  addi         s0, a5, -792
                  lui          s4, 117898
                  lui          s6, 409237
                  lui          s4, 759250
                  auipc        s9, 896122
                  nop
                  lui          s6, 329115
                  lui          a5, 379196
                  auipc        s0, 941034
                  nop
                  auipc        a4, 372560
                  auipc        s0, 489791
                  sub          s6, s6, s0
                  nop
                  sub          a5, tp, s9 #end riscv_int_numeric_corner_stream_4
                  li           a1, 0xfe62af7c #start riscv_int_numeric_corner_stream_11
                  li           s5, 0xffffffff
                  li           a4, 0x0
                  li           t5, 0xffffffff
                  li           gp, 0xb0555be0
                  li           a2, 0xdefa0e6b
                  li           ra, 0x0
                  li           s11, 0xc80ad7e7
                  li           s7, 0x0
                  li           sp, 0x80000000
                  lui          ra, 155422
                  auipc        t5, 813845
                  sub          a4, t5, s5
                  addi         ra, s7, 467
                  add          ra, s7, a2
                  add          gp, sp, s7
                  lui          a1, 818188
                  add          s11, ra, a4
                  nop
                  sub          a4, t5, t5
                  add          s5, s11, a4
                  addi         s7, a1, 645
                  nop
                  lui          sp, 326385
                  auipc        sp, 861488
                  lui          sp, 315059
                  nop
                  auipc        ra, 83242
                  add          t5, gp, a2
                  addi         a2, s7, 1027
                  add          sp, gp, gp
                  sub          s5, a4, sp
                  sub          s5, s7, t5
                  sub          s11, a1, ra
                  sub          sp, ra, t5
                  lui          a2, 939915
                  lui          s7, 222173
                  sub          s5, s11, sp #end riscv_int_numeric_corner_stream_11
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           s0, 0x0
                  li           s5, 0x80000000
                  li           a5, 0x67b15e70
                  li           s4, 0xf80d910e
                  li           a7, 0x0
                  li           s6, 0x0
                  li           s8, 0x80000000
                  li           a0, 0xf1a381a5
                  li           s9, 0x0
                  nop
                  sub          a0, s8, s5
                  lui          s0, 385938
                  auipc        s9, 957390
                  auipc        t2, 543157
                  nop
                  sub          s9, t2, s8
                  sub          s9, s5, a0
                  addi         a5, s8, 288
                  addi         s5, a7, 619
                  addi         a5, s8, 2034
                  lui          a7, 60769
                  addi         a7, s0, 823
                  addi         s5, s6, -735
                  add          a5, s4, s5
                  addi         s9, s8, -478
                  auipc        s9, 1686
                  lui          s4, 537830
                  auipc        a5, 678548
                  nop
                  lui          t2, 488323 #end riscv_int_numeric_corner_stream_0
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           ra, 0xffffffff
                  li           s4, 0xfd6c07a8
                  li           tp, 0x0
                  li           a5, 0x0
                  li           s8, 0x0
                  li           gp, 0x513cef43
                  li           s3, 0x5e7ffd12
                  li           t6, 0xffffffff
                  li           s9, 0x80000000
                  add          s4, a5, s4
                  auipc        s9, 10837
                  addi         gp, t6, -1865
                  nop
                  add          s4, s4, gp
                  sub          s9, tp, s8
                  auipc        a5, 1000991
                  add          a4, s4, t6
                  addi         s9, s9, -1241
                  auipc        t6, 13760
                  sub          ra, tp, a4
                  auipc        s9, 188281
                  sub          s8, s8, s4
                  lui          tp, 630406
                  addi         s9, s4, 664
                  lui          s8, 853588
                  nop
                  nop
                  sub          ra, s3, a5
                  sub          t6, a4, t6
                  sub          s4, ra, ra
                  auipc        tp, 155928
                  lui          s4, 418292 #end riscv_int_numeric_corner_stream_15
                  li           t2, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           s3, 0x80000000
                  li           s11, 0x0
                  li           s2, 0x45010453
                  li           s0, 0xffffffff
                  li           a4, 0x80000000
                  li           s5, 0x80000000
                  li           t6, 0xffffffff
                  li           t5, 0x80000000
                  li           s1, 0xc602c5d4
                  auipc        s0, 488183
                  auipc        s0, 97926
                  auipc        s5, 671315
                  addi         s0, s0, -817
                  nop
                  sub          s1, s0, a4
                  lui          t2, 964089
                  sub          t6, t2, s11
                  auipc        s5, 775713
                  auipc        s2, 731217
                  add          s3, s0, s3
                  sub          s1, s11, t6
                  addi         s3, s5, 1419
                  nop
                  addi         s5, s3, 500
                  auipc        t6, 527080
                  add          t5, s5, s0
                  lui          s3, 952795
                  lui          s2, 384443 #end riscv_int_numeric_corner_stream_18
                  lui          t4, 360909
                  andi         s10, tp, 955
                  slt          s9, a3, s7
                  auipc        t4, 33206
                  nop
                  xori         t4, a1, 1449
                  xor          s1, s11, a7
                  sll          zero, t0, s10
                  sll          s0, s5, a0
                  slli         sp, a0, 21
                  add          tp, s3, s4
                  slti         s1, a1, 811
                  nop
                  slli         t6, s1, 6
                  sub          a4, s6, s3
                  slt          ra, sp, s11
                  xor          s1, gp, a2
                  sltu         t4, t4, s9
                  xor          gp, a4, a4
                  addi         t5, a6, -1792
                  srai         a7, a1, 12
                  srai         s8, s5, 23
                  add          a2, t5, s4
                  sltu         t5, s9, zero
                  or           s4, a4, t0
                  or           tp, a3, s2
                  xori         t4, s3, 1662
                  add          t1, a4, t4
                  slti         a7, a6, -485
                  sub          s11, s9, s7
                  sltu         t6, a3, t5
                  sltiu        t4, s11, 1850
                  sltiu        s0, a1, -477
                  sra          a1, t3, s7
                  sra          s7, s11, s8
                  sltiu        s0, s2, -1965
                  srli         a1, t3, 7
                  and          zero, a5, a1
                  slt          s2, a1, t0
                  or           s8, sp, s0
                  xori         a5, s7, 1325
                  slli         s5, a6, 18
                  srai         t6, t1, 14
                  nop
                  sltu         t1, a6, s4
                  slti         s1, tp, -1197
                  srl          s1, a7, t3
                  srli         s4, s1, 14
                  sub          s0, a1, a5
                  slli         a0, t6, 20
                  slt          a1, s2, tp
                  sltu         sp, t2, t2
                  srl          tp, a6, sp
                  ori          s5, sp, 1987
                  addi         a2, ra, -149
                  sltiu        a6, ra, 109
                  srli         s11, s7, 15
                  andi         a0, a4, 75
                  srai         t2, a7, 26
                  srl          s1, t5, s5
                  srl          a7, gp, zero
                  slt          t4, t6, s11
                  auipc        s7, 522911
                  sltu         s4, a5, s3
                  xori         s6, t3, 1883
                  srl          s6, t3, s1
                  addi         s5, ra, -330
                  lui          s0, 928114
                  sltiu        a0, t5, -1564
                  sltiu        a1, t5, 722
                  ori          s3, s0, -35
                  addi         a2, s0, 1948
                  slti         t1, t4, 1198
                  slt          s0, t4, s8
                  srai         s3, t6, 3
                  srli         s0, tp, 15
                  slli         s2, a6, 23
                  sra          s11, t5, s4
                  andi         ra, a3, -1681
                  addi         a1, t3, 615
                  xori         zero, tp, 173
                  add          s1, s11, tp
                  sll          s8, gp, a6
                  slti         t4, a3, -295
                  andi         s7, t3, 1389
                  ori          t6, t0, -1579
                  srai         s3, a7, 26
                  sub          a4, t6, s6
                  addi         s9, s5, 911
                  nop
                  slti         s8, zero, 483
                  sltiu        t1, a7, 1805
                  sll          tp, s10, s7
                  xor          ra, s2, s2
                  add          s5, t4, t6
                  slt          a7, t6, t2
                  sub          a1, t4, a2
                  auipc        s11, 329135
                  slt          s8, a3, a4
                  ori          ra, gp, 1600
                  sltiu        tp, t4, 544
                  slti         gp, t4, -1067
                  xori         s11, s7, -1555
                  srli         t4, s9, 29
                  sltu         a1, t0, zero
                  sra          s5, s9, a6
                  sll          t5, s3, t6
                  slt          a7, s8, tp
                  and          zero, t0, s6
                  sltiu        s7, s7, 1191
                  sltiu        sp, s10, 1598
                  sltu         t6, t4, a6
                  xor          s4, a0, zero
                  slt          a2, a2, sp
                  slli         ra, s7, 2
                  and          s9, t4, t4
                  andi         s3, a6, 832
                  and          s5, s8, a1
                  sltiu        zero, t0, 1561
                  sltu         a4, s11, a2
                  sltu         s9, a3, s8
                  srl          s6, s8, a5
                  srai         ra, a1, 23
                  sra          s8, gp, a3
                  sub          ra, t3, s0
                  srli         a2, s6, 7
                  sll          s0, s6, t1
                  xori         s7, s9, 1058
                  and          s1, a3, t2
                  srli         s4, t6, 3
                  sub          a7, gp, s10
                  sll          t4, a5, a1
                  lui          s1, 608478
                  add          s6, a3, s3
                  sra          s3, s2, t3
                  add          s3, t6, gp
                  addi         s10, s5, 1938
                  add          gp, t1, s9
                  slli         t2, s8, 10
                  nop
                  srli         s2, gp, 18
                  andi         t4, t2, -1428
                  srli         t2, a2, 27
                  slt          s4, t0, a1
                  slli         s11, s11, 25
                  slt          a5, s0, a7
                  slti         s1, sp, 739
                  and          s0, t6, s2
                  sltiu        s6, s9, -142
                  andi         t4, zero, -1145
                  slti         s6, a1, -450
                  xori         a4, tp, 739
                  nop
                  and          s7, a6, a7
                  slt          s3, s10, t2
                  srai         s0, a0, 23
                  xor          s3, s7, s6
                  andi         a6, s9, 1688
                  slli         ra, a4, 31
                  andi         s7, a2, -1065
                  srai         a5, s8, 21
                  auipc        sp, 411122
                  sub          s4, t6, a1
                  srli         s6, a7, 1
                  auipc        s7, 791158
                  slti         a1, a4, -1581
                  addi         s5, s3, -1995
                  nop
                  slti         s1, t0, 1921
                  xor          a2, a5, a0
                  xori         s10, zero, -204
                  or           s5, a0, ra
                  sltiu        s6, t5, -1394
                  slti         s5, s5, 1192
                  xor          a0, s7, s3
                  srli         a2, t0, 11
                  slt          sp, ra, a6
                  auipc        a6, 411680
                  srai         t2, t0, 10
                  sra          a0, s6, a5
                  sltu         t5, s11, s11
                  sll          t1, gp, s9
                  slt          s1, t5, a2
                  srl          s6, a0, s5
                  srli         s4, a5, 7
                  addi         s5, t4, -1087
                  nop
                  xor          t2, zero, t0
                  addi         s1, a1, -2015
                  sltu         ra, t2, a5
                  xori         a4, s4, -422
                  srl          s10, a4, a4
                  srl          a1, s1, zero
                  sub          t4, ra, t5
                  or           t1, a4, t1
                  addi         s4, s3, 543
                  or           ra, tp, t0
                  slti         zero, gp, 2047
                  nop
                  and          a6, ra, t1
                  andi         gp, t4, -1227
                  andi         gp, zero, -149
                  and          zero, s3, s4
                  ori          s3, tp, 1252
                  ori          a2, s9, -1268
                  sltu         a2, gp, s0
                  sra          s8, t1, gp
                  sub          ra, ra, t1
                  sub          t6, t6, s0
                  slli         s8, a7, 19
                  ori          s11, ra, 1865
                  nop
                  xori         s10, s6, -1263
                  srai         zero, t5, 17
                  srl          s8, t3, a6
                  sub          ra, a1, a3
                  ori          a4, s11, 961
                  auipc        s8, 347740
                  srai         a1, t4, 29
                  sra          s3, sp, s8
                  slt          t5, t4, zero
                  slli         s2, s11, 25
                  sll          a6, a4, s8
                  auipc        s4, 324800
                  and          a7, a2, s6
                  srl          s0, s9, s5
                  and          a5, gp, t3
                  auipc        s5, 1039053
                  srai         a7, a6, 21
                  slti         s0, s3, 1771
                  xor          s3, zero, s9
                  andi         a6, s1, 1694
                  sltu         t1, t4, t2
                  addi         s5, a5, -1698
                  xori         zero, zero, -1798
                  slti         gp, gp, -569
                  andi         t4, zero, -376
                  addi         sp, sp, -738
                  sltu         a0, sp, t4
                  xori         s2, a2, -763
                  sub          a6, s10, s6
                  sll          s1, s0, a5
                  xor          gp, a4, a6
                  srai         s10, a3, 17
                  srl          t4, s5, s7
                  xori         s0, sp, 1536
                  lui          s2, 510268
                  sll          a2, s0, t1
                  srai         s5, t4, 19
                  or           sp, t1, sp
                  slti         a6, s7, -1932
                  andi         t4, s0, 653
                  slti         s4, a1, 920
                  sltu         s1, a5, sp
                  xori         s5, a7, -535
                  ori          s10, t2, -1710
                  lui          ra, 1005872
                  sltu         a7, a6, ra
                  and          s4, s2, a4
                  slli         s7, s6, 10
                  slti         gp, a7, 650
                  slti         gp, tp, 686
                  addi         s0, a6, 1989
                  add          a7, ra, sp
                  and          s9, s8, a5
                  xor          s10, a4, s6
                  srl          a7, zero, a3
                  slli         s5, ra, 30
                  srai         tp, t3, 11
                  xor          sp, a2, t1
                  ori          s7, a4, -632
                  slli         s6, s3, 12
                  add          s7, a3, a0
                  slt          a7, a0, s2
                  srli         t1, s0, 23
                  sll          s5, s11, t6
                  srli         gp, s7, 31
                  lui          a5, 821176
                  xor          a5, t2, ra
                  andi         s11, t4, 1391
                  sltu         s1, gp, s11
                  srl          s2, sp, sp
                  add          s9, t4, s10
                  ori          s11, s4, 1960
                  xor          t4, t2, a2
                  addi         s3, t1, 1144
                  slli         a6, t4, 25
                  lui          a4, 825165
                  sll          s4, s4, sp
                  andi         s7, s5, -1684
                  sltiu        s0, a0, 593
                  srai         s5, a7, 7
                  sra          s6, s5, t4
                  xor          s8, zero, sp
                  sll          t2, a4, a3
                  srai         tp, s5, 27
                  sra          a4, s3, a4
                  slt          a0, gp, s11
                  or           a0, t2, s2
                  slli         t1, s6, 15
                  sub          s5, t2, a2
                  or           s1, a2, t5
                  sltu         t5, s5, s0
                  slti         t4, a1, -337
                  sltu         sp, s9, s8
                  sltu         t2, s6, s7
                  and          a6, s5, t0
                  srli         a0, s4, 2
                  and          s6, s9, a2
                  lui          a2, 815666
                  nop
                  or           s6, s10, zero
                  slt          s6, a5, tp
                  or           a6, t3, t5
                  sll          sp, s2, a3
                  auipc        s10, 474636
                  srli         a1, s2, 5
                  ori          t2, a6, -1366
                  ori          a2, t6, 20
                  slt          s2, t3, t1
                  srai         gp, s11, 19
                  sltiu        a5, zero, 933
                  auipc        t2, 304501
                  xori         s7, s9, 139
                  andi         s6, t6, 1449
                  sll          s11, s0, a1
                  slli         s5, s3, 21
                  sltiu        sp, s11, -887
                  sll          s5, t2, a6
                  nop
                  and          s5, a2, t5
                  ori          s3, s11, -2023
                  srl          tp, s8, s9
                  srli         a4, zero, 0
                  lui          t5, 112748
                  add          s9, a0, t3
                  srl          s10, t4, s2
                  srai         s7, s10, 14
                  lui          s4, 493065
                  nop
                  srai         s8, a3, 17
                  sll          s7, t5, a0
                  ori          t4, tp, 800
                  srl          s1, a4, a5
                  slt          s1, a6, gp
                  slti         sp, s0, -578
                  ori          s1, a3, 613
                  lui          s1, 622712
                  addi         s4, s5, 1120
                  slti         s5, s9, 357
                  xori         a4, a5, -1551
                  xori         ra, t4, -480
                  or           s6, a6, s1
                  sub          s0, tp, s11
                  and          t1, s2, a6
                  sltiu        ra, ra, -189
                  srl          s2, a0, s1
                  nop
                  auipc        s10, 512650
                  or           a0, s1, a7
                  nop
                  ori          a1, sp, -1354
                  and          s10, a5, t4
                  sltiu        s6, s1, -1225
                  srai         zero, ra, 16
                  or           tp, s9, a2
                  nop
                  xor          s9, a5, s11
                  slti         gp, t2, -615
                  slli         a5, t0, 9
                  ori          s9, s11, -467
                  addi         s9, s11, 1204
                  sll          sp, a7, sp
                  sltu         s5, t6, s6
                  srli         ra, t6, 11
                  ori          t2, t1, 1212
                  srli         tp, zero, 11
                  srai         a5, a0, 9
                  xor          s3, ra, a2
                  auipc        t4, 425135
                  and          zero, gp, t1
                  sltu         s2, s10, s6
                  sra          s4, a2, t1
                  slli         a6, s0, 31
                  sra          a6, a5, t5
                  andi         t1, t0, 232
                  srli         a0, s4, 22
                  and          a0, s7, s3
                  sltiu        s10, t3, 620
                  sll          a7, t1, s5
                  nop
                  nop
                  srli         a4, s11, 14
                  andi         t5, zero, -984
                  nop
                  and          s9, t0, s3
                  andi         s8, tp, -1707
                  or           a1, ra, s10
                  add          a1, a7, s9
                  slti         a4, zero, -1378
                  addi         s7, t1, -1777
                  ori          a6, a1, 856
                  or           s6, t1, s1
                  srli         s8, s6, 4
                  add          s1, a6, a0
                  sra          t4, a2, t2
                  xor          s8, t4, t0
                  slti         s7, s6, -1715
                  and          tp, s11, s4
                  sub          t2, t5, t5
                  lui          s7, 716208
                  sub          t5, s8, t4
                  xori         s6, a1, -680
                  srai         a0, s9, 14
                  slli         a1, t0, 29
                  or           a6, a4, a6
                  nop
                  and          a7, s7, a5
                  sltiu        a4, s3, -405
                  srl          s10, s5, tp
                  andi         s10, a3, -752
                  nop
                  srai         tp, s11, 12
                  nop
                  or           t1, tp, a2
                  slt          a6, a6, a3
                  xor          t1, t2, a3
                  srl          zero, s3, sp
                  auipc        s2, 94773
                  auipc        t4, 443909
                  xor          a6, a4, s4
                  srai         a7, a2, 24
                  lui          t5, 692002
                  slt          t1, sp, t5
                  slt          a1, t2, s0
                  or           a0, s11, s8
                  addi         s11, a3, -1953
                  sll          s8, ra, a4
                  srai         a5, s4, 31
                  sltu         s2, s7, t1
                  and          s8, t4, t1
                  addi         t4, t0, 1149
                  nop
                  andi         t6, t3, -1440
                  lui          tp, 830443
                  sltiu        s2, ra, 660
                  andi         s4, s8, 1726
                  slt          t6, ra, s0
                  andi         a4, t6, -1604
                  lui          t5, 349458
                  slt          a4, a2, a7
                  xor          t6, t5, a5
                  add          s7, a0, a2
                  slli         t2, s11, 1
                  sub          t2, t1, t1
                  sra          a2, zero, s7
                  nop
                  sltiu        s3, ra, -1466
                  slt          a5, a3, t3
                  lui          a4, 372993
                  srl          a7, a7, a0
                  sll          t4, t2, a0
                  nop
                  xori         a0, ra, -1388
                  sltiu        sp, a6, 1428
                  ori          a5, s3, 231
                  nop
                  auipc        s3, 551316
                  slli         t6, s2, 13
                  auipc        sp, 9562
                  sltiu        t2, t3, -301
                  sltiu        sp, a0, 1987
                  xor          t1, tp, s9
                  xor          s4, zero, t6
                  sub          a2, s10, s5
                  sltu         s8, a1, t6
                  srai         a1, a6, 13
                  slli         s2, t6, 4
                  srai         a6, t3, 18
                  auipc        s0, 501914
                  ori          gp, s2, -1854
                  sll          s6, t5, a0
                  slli         s7, s5, 0
                  add          sp, t0, s8
                  srli         s3, a7, 22
                  or           t1, s2, s9
                  xori         s8, t4, -1707
                  sub          t2, s6, a0
                  xori         s11, s10, -1135
                  or           a5, t2, sp
                  sltu         a2, s9, s0
                  srai         s9, ra, 18
                  ori          tp, a6, -632
                  sltu         s5, s9, a7
                  slti         gp, t6, -776
                  lui          s11, 211120
                  slti         sp, a2, -634
                  slli         s5, sp, 10
                  sll          zero, s7, s11
                  andi         s10, t5, 1324
                  xori         sp, s11, -376
                  auipc        ra, 875800
                  auipc        s7, 329774
                  slt          s5, ra, sp
                  xor          t5, t3, a1
                  lui          s9, 508512
                  sll          s0, s3, a5
                  or           ra, tp, a1
                  xori         gp, s11, -1691
                  slli         s4, sp, 15
                  auipc        t5, 785863
                  sltiu        ra, t1, -1985
                  and          s1, t2, t1
                  slt          a0, a7, t1
                  slti         t2, t0, 384
                  and          a6, sp, s10
                  sltu         gp, s3, tp
                  sra          s10, a6, s11
                  sltu         t5, s6, t5
                  sra          s1, tp, sp
                  nop
                  srl          a7, a4, s5
                  sll          s6, gp, s3
                  sll          s1, s7, s5
                  slli         t2, a1, 12
                  xori         gp, s7, -1841
                  xori         t2, s5, -745
                  slti         t1, t6, -1659
                  lui          s9, 225419
                  slli         t4, a1, 5
                  slt          s5, s3, t3
                  sll          s6, a5, t6
                  sltu         a5, zero, a3
                  auipc        zero, 182412
                  slt          t2, ra, a4
                  sll          t4, a3, t2
                  nop
                  sltiu        t1, s3, 571
                  andi         a1, s10, 1328
                  andi         t1, a5, 1641
                  srl          a5, t2, a3
                  srai         a2, s9, 14
                  ori          s2, s9, -1482
                  auipc        s7, 818608
                  lui          t5, 133733
                  or           a6, a6, a6
                  auipc        s7, 673702
                  sll          ra, s7, a0
                  xor          t4, s6, t2
                  sll          a2, a5, a0
                  add          zero, s6, a7
                  slt          ra, t3, s10
                  or           s1, ra, ra
                  srai         gp, s10, 16
                  srai         s3, a3, 22
                  nop
                  auipc        a4, 63029
                  xor          s6, a1, s2
                  slti         s5, s0, 607
                  ori          s0, tp, -1196
                  andi         ra, t4, 178
                  slli         a2, t2, 26
                  sltu         s1, t6, s4
                  srli         a2, ra, 8
                  sll          tp, tp, s4
                  lui          t4, 640463
                  sub          s2, t4, t0
                  addi         s10, a2, -1343
                  and          s5, tp, s0
                  lui          a1, 160223
                  slt          sp, a2, tp
                  xor          t6, s0, s11
                  srli         s9, s11, 9
                  sub          s7, s3, gp
                  sltu         a6, gp, a7
                  sll          a7, gp, a2
                  addi         a4, tp, 1147
                  sll          s8, a7, s10
                  or           zero, sp, a5
                  sra          gp, s11, s11
                  xor          a1, ra, s11
                  lui          gp, 741545
                  slli         s7, t3, 26
                  xori         s7, ra, 1495
                  auipc        s0, 254313
                  and          t5, t4, s11
                  xori         t6, t2, 571
                  srl          s10, zero, t6
                  slli         a6, a6, 22
                  slt          t4, s10, t3
                  sltu         s11, sp, s3
                  sra          gp, s4, s0
                  xori         s5, s2, 1275
                  or           s9, s3, s8
                  slli         t1, gp, 16
                  add          a0, t4, a0
                  lui          s4, 180650
                  addi         t6, t5, 963
                  and          t6, s1, s9
                  add          s7, t3, a0
                  slt          t4, a0, t1
                  ori          sp, s9, 560
                  srli         zero, t3, 8
                  lui          s3, 150422
                  slti         a1, s1, 1551
                  sltiu        t5, zero, -417
                  add          t6, sp, sp
                  sra          s6, s6, t6
                  slti         s6, s11, 1915
                  slti         s9, zero, -1756
                  srli         t2, t1, 29
                  or           t2, a2, zero
                  auipc        zero, 711470
                  sub          sp, ra, a1
                  sra          a6, a5, gp
                  slt          t1, t2, t4
                  slti         a6, t1, -1834
                  or           tp, s5, t2
                  sltu         a6, a3, s2
                  slti         zero, s3, 146
                  addi         ra, a7, 1277
                  sltu         s7, s10, t6
                  auipc        s9, 724881
                  nop
                  slt          t1, s3, a1
                  addi         a2, t4, -1105
                  sltu         a1, s6, s4
                  lui          s10, 208755
                  srli         s6, s2, 10
                  sltu         zero, t2, a2
                  add          a2, t3, t2
                  sltiu        s9, a7, -441
                  ori          t6, a2, -38
                  sltiu        a2, s2, 1246
                  sll          a1, s2, s2
                  add          a7, a6, tp
                  or           s5, t3, t5
                  ori          s6, a3, 1063
                  sll          s7, s5, ra
                  xori         s2, s1, -446
                  sltu         t1, s2, s4
                  sll          s2, s1, t0
                  slt          a7, s11, t0
                  sll          a4, s8, t4
                  and          t5, sp, a4
                  sub          s4, s1, ra
                  addi         a6, t0, 469
                  auipc        sp, 456207
                  lui          zero, 88415
                  or           a6, t4, s8
                  ori          s0, t2, -1705
                  sra          a2, t1, tp
                  sll          a1, s0, t5
                  sltu         t2, a7, a3
                  sub          s4, t1, t0
                  ori          zero, s7, -249
                  slt          s4, s5, t6
                  addi         a2, a2, 141
                  sub          a7, s10, t5
                  sltu         a2, s2, s7
                  sltu         a5, a5, gp
                  ori          s0, s8, -1106
                  sltu         t4, gp, t2
                  slli         a1, s6, 19
                  srai         zero, a2, 28
                  or           gp, a5, t4
                  ori          s8, s9, 158
                  slti         t5, t2, 2002
                  sub          s7, s0, a6
                  slt          s4, s5, a3
                  auipc        t5, 233652
                  slli         s5, s8, 16
                  sra          s8, t0, a5
                  addi         a0, t1, -945
                  nop
                  xor          zero, s8, s11
                  srai         t2, t1, 26
                  srai         a5, t3, 29
                  nop
                  slti         s8, s7, 1026
                  xor          t6, a4, ra
                  lui          a1, 722732
                  and          s2, gp, s8
                  srli         a5, tp, 10
                  slt          a7, s11, a3
                  sra          s5, sp, t5
                  addi         a5, ra, -713
                  slt          s4, ra, t5
                  sra          s8, a6, s9
                  slt          t6, a7, s6
                  or           a4, t4, s5
                  sra          a7, tp, tp
                  sll          s8, a1, a3
                  srai         zero, t1, 27
                  sll          s0, ra, s3
                  srl          s5, s7, ra
                  and          s7, zero, t1
                  auipc        s3, 535788
                  srl          s2, t2, t2
                  xori         a1, s2, -1047
                  xori         s9, a7, -1218
                  auipc        s9, 239564
                  ori          s9, t6, -1885
                  or           a5, s2, t5
                  nop
                  xori         s0, s10, 1087
                  sltu         s2, tp, t1
                  ori          s9, t2, 191
                  sll          t4, a1, s5
                  xori         a7, ra, -473
                  sltu         gp, sp, gp
                  ori          s7, zero, -1995
                  sra          s1, a7, a1
                  slli         a7, t0, 25
                  addi         s5, zero, -1882
                  sra          a5, a7, s3
                  slli         s5, s4, 26
                  sltu         a5, s10, s3
                  or           a7, sp, sp
                  sltiu        t5, s0, 997
                  slt          t5, a0, t5
                  nop
                  sll          a7, zero, t6
                  sltu         sp, a3, t0
                  and          ra, s0, a6
                  add          s4, t0, s0
                  ori          t6, s5, 1687
                  auipc        s3, 950763
                  slti         t4, t5, 1224
                  addi         a7, zero, -1924
                  auipc        s8, 463718
                  andi         a6, a3, -980
                  slti         s10, t5, 1848
                  or           s8, sp, t5
                  lui          s2, 432109
                  nop
                  sltiu        a0, t4, 1234
                  andi         s6, s2, 1134
                  and          s0, a6, a5
                  add          s2, s2, a4
                  sub          t1, s5, t1
                  srai         s6, s0, 28
                  ori          t5, s6, -1167
                  srli         s6, s11, 12
                  srl          s11, s10, tp
                  addi         s9, sp, 957
                  sltiu        a0, s1, 1296
                  srl          sp, s3, ra
                  and          a5, s5, t1
                  xori         t6, zero, 7
                  sll          gp, t2, ra
                  auipc        t4, 34069
                  nop
                  ori          t6, s7, -441
                  slti         gp, sp, 1425
                  sltu         s4, s7, t6
                  or           a7, s7, s3
                  addi         a1, t4, -1035
                  or           s10, t0, ra
                  sll          s9, a5, sp
                  sltu         tp, t3, s5
                  xori         a2, s2, 183
                  xori         t6, s11, -1527
                  addi         s0, s7, -1471
                  sub          s6, t6, t2
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           s8, 0x0
                  li           s1, 0xffffffff
                  li           a4, 0x80000000
                  li           s4, 0xffffffff
                  li           s9, 0xb75cf511
                  li           gp, 0x80000000
                  li           s3, 0x80000000
                  li           s11, 0x0
                  li           t5, 0xffffffff
                  nop
                  addi         s3, t5, 1683
                  addi         s8, t5, 1326
                  add          s1, s11, s11
                  addi         s1, s8, 1459
                  sub          s1, s1, a5
                  sub          s9, t5, s11
                  add          s1, s9, s9
                  nop
                  sub          s1, s3, t5
                  nop
                  add          a5, a5, gp
                  sub          a4, s1, s1
                  add          s9, a4, s9
                  nop
                  lui          s11, 531205
                  auipc        a5, 618978 #end riscv_int_numeric_corner_stream_13
                  add          t1, zero, t3
                  srai         a6, a6, 22
                  slti         s3, s2, -833
                  sltu         t4, a3, s0
                  xor          zero, tp, a0
                  sltu         zero, s7, gp
                  slli         a0, sp, 13
                  lui          gp, 184217
                  add          sp, s11, t6
                  xori         s5, t1, 607
                  srl          s0, s4, t0
                  or           s3, t1, t1
                  add          a4, gp, s6
                  sltiu        s9, a4, 1550
                  slt          ra, s6, s7
                  xor          a5, sp, zero
                  nop
                  sll          s9, sp, t0
                  xori         a1, s8, 976
                  nop
                  sltu         s9, sp, zero
                  xori         a4, t1, 8
                  srli         s5, s10, 25
                  srli         t5, sp, 12
                  srai         s5, s3, 4
                  ori          t5, t1, 1736
                  xor          t6, a4, s0
                  srai         s1, s6, 26
                  andi         s0, t2, 367
                  slt          s6, a3, zero
                  add          a1, gp, a1
                  addi         a7, tp, 1604
                  sltiu        s5, a1, -864
                  xor          s0, a4, a3
                  sltiu        s6, t3, -108
                  xor          sp, s6, a2
                  lui          zero, 401880
                  sra          s4, t3, a6
                  sra          gp, s7, s9
                  sra          s1, tp, gp
                  srai         t5, t1, 11
                  sll          s2, s0, ra
                  sra          s5, a5, s6
                  xor          a1, a5, a1
                  add          s3, s11, t5
                  slt          s4, a5, a6
                  li           tp, 0xd650b479 #start riscv_int_numeric_corner_stream_9
                  li           s11, 0x2dd7b7c8
                  li           s0, 0x80000000
                  li           s7, 0x0
                  li           s4, 0xffffffff
                  li           s6, 0x80000000
                  li           s9, 0x0
                  li           s8, 0xc6a43945
                  li           gp, 0x0
                  li           s2, 0xffffffff
                  sub          s7, s11, gp
                  lui          s2, 215687
                  nop
                  nop
                  auipc        s6, 114634
                  addi         s9, s0, -1961
                  addi         s0, s9, 713
                  lui          s7, 169843
                  addi         s2, s4, -857
                  add          s11, s6, gp
                  add          s9, tp, s8
                  lui          gp, 35918
                  add          tp, s9, s4
                  auipc        tp, 425921
                  addi         s2, s8, 1673
                  sub          tp, s9, tp #end riscv_int_numeric_corner_stream_9
                  add          sp, t5, a6
                  sltu         a0, a2, s5
                  srli         a1, gp, 24
                  sltiu        a1, s2, 1404
                  and          t5, a5, t6
                  nop
                  sltiu        a7, sp, -1212
                  ori          sp, s1, 587
                  slti         s4, a5, 1993
                  slt          a7, a7, zero
                  auipc        s5, 840612
                  srl          a1, a4, zero
                  srl          a5, a0, t6
                  sll          s9, s4, t4
                  xori         zero, a0, -373
                  add          t5, s11, s8
                  slti         t1, s1, -1844
                  slt          s7, s10, s6
                  srai         s2, s0, 19
                  slt          t4, a6, zero
                  auipc        gp, 633922
                  add          t4, t3, s11
                  andi         t5, t6, -1492
                  sra          t6, s1, s0
                  slt          a6, t4, ra
                  slli         t2, s1, 2
                  sltu         a5, t0, gp
                  xori         s9, s1, 1676
                  lui          s6, 913778
                  lui          s4, 922567
                  auipc        tp, 636074
                  add          s0, s5, s11
                  nop
                  slli         s6, t6, 30
                  sra          s4, a1, a7
                  sltiu        a0, a2, -16
                  slt          t1, t3, a4
                  xor          s11, t4, s6
                  slti         s1, s5, 1417
                  andi         a4, s11, -1711
                  or           t5, a7, t3
                  or           a1, zero, t6
                  srl          sp, ra, s8
                  slti         s0, s6, 917
                  or           s1, s4, s4
                  auipc        a2, 961262
                  lui          a1, 710721
                  slti         s3, t5, 1922
                  addi         s10, s11, -1929
                  srai         s11, s4, 12
                  ori          t4, a1, -967
                  sltu         t2, sp, a5
                  add          a4, t0, t2
                  nop
                  or           t1, s8, s9
                  srl          gp, a3, s2
                  addi         s1, a7, 267
                  andi         a0, t3, 1125
                  slli         t5, zero, 25
                  andi         a6, s7, 104
                  and          tp, s3, s10
                  xori         a4, s11, 1193
                  lui          s5, 771118
                  sra          a5, s9, zero
                  xor          s7, a3, s4
                  srli         a5, a3, 20
                  xor          s7, a0, s2
                  slt          a4, gp, s10
                  addi         a6, tp, 1593
                  nop
                  sra          a7, t1, ra
                  addi         t6, s1, -912
                  slti         s8, s6, -185
                  slti         s0, t0, -1966
                  andi         a0, a0, -443
                  lui          a5, 820530
                  slti         ra, t6, -1915
                  and          t1, t2, s8
                  addi         s8, t4, 581
                  addi         s10, a2, 273
                  sltu         s0, a6, a5
                  xor          t2, s2, t6
                  sra          s0, s2, t2
                  slti         t2, t5, 407
                  sll          ra, tp, a2
                  add          t4, a1, a0
                  lui          zero, 95697
                  addi         a2, t3, 1824
                  sltiu        s3, a2, -972
                  sltiu        s6, s6, -1132
                  or           s8, s5, t0
                  srai         s8, a4, 31
                  srai         s2, a2, 26
                  nop
                  add          s8, a4, ra
                  auipc        s7, 688740
                  xori         s4, s4, -1319
                  xori         tp, tp, 1752
                  lui          sp, 489380
                  sra          a6, sp, s1
                  nop
                  xori         s10, s2, -283
                  sll          a2, t2, ra
                  srli         t6, t4, 29
                  andi         s11, s6, 593
                  slli         a2, s5, 13
                  srli         t5, gp, 22
                  sra          t4, s2, s2
                  sltiu        t2, a1, -768
                  srl          s6, s10, ra
                  ori          zero, a5, 1765
                  xori         a1, sp, -1279
                  xor          s7, a3, s11
                  sltiu        s4, tp, 54
                  andi         a4, s3, 1489
                  sltiu        s9, s4, -1763
                  srai         s0, a0, 26
                  slli         s6, a1, 30
                  and          a5, s8, t0
                  slli         s3, s10, 17
                  srli         s9, s8, 6
                  sltiu        a4, s8, -1634
                  auipc        gp, 1023079
                  slt          s9, s4, t6
                  srai         s10, gp, 27
                  sra          t2, s6, t0
                  nop
                  sll          sp, sp, s7
                  sltiu        s9, t6, 1238
                  xor          s9, t1, tp
                  sra          s11, sp, a1
                  auipc        gp, 71630
                  slti         t1, s3, -281
                  auipc        a7, 163869
                  sltu         s11, s5, tp
                  slt          a7, sp, t1
                  addi         tp, s6, 1211
                  slli         s10, a6, 7
                  addi         t6, t1, 311
                  add          t4, a2, tp
                  slti         s8, a3, 859
                  add          a7, t1, t3
                  and          s10, s10, a3
                  or           t6, a6, a3
                  srli         s6, t6, 5
                  sll          s0, zero, s5
                  slti         t6, a5, 1098
                  slti         s2, s3, -996
                  slli         gp, s7, 6
                  slti         ra, t3, -1947
                  srl          a6, a7, t0
                  xor          t6, s9, s0
                  andi         s0, a1, -1939
                  and          zero, a3, s4
                  add          a0, zero, t6
                  andi         zero, a0, 1821
                  sltiu        s0, s0, -1895
                  slti         ra, t1, 335
                  or           a1, t6, s10
                  sltu         s9, a3, s4
                  addi         t6, a3, -1906
                  addi         tp, a2, 464
                  andi         zero, a5, -1022
                  and          s2, s5, s0
                  andi         s5, a1, -1887
                  xor          t1, t3, a7
                  or           s4, a4, t3
                  lui          s1, 715019
                  andi         s6, t1, -496
                  sra          t4, s8, s8
                  nop
                  addi         t5, t5, 1301
                  slli         s2, s10, 25
                  xor          sp, t6, zero
                  lui          a2, 686103
                  nop
                  xori         t6, sp, 1115
                  slli         s8, t0, 6
                  srai         t2, a3, 28
                  sltu         s8, s0, a6
                  sltu         a4, t3, zero
                  and          tp, a7, s2
                  auipc        a5, 56218
                  or           s10, t6, s7
                  add          a6, s9, s0
                  auipc        s3, 595936
                  srl          a7, s11, a4
                  srli         s10, s9, 20
                  nop
                  sltu         t1, t2, s1
                  sltu         tp, s6, t4
                  sub          s6, s7, s8
                  andi         s2, t0, -1407
                  add          t1, s6, a4
                  xori         t5, s9, -1120
                  srli         a1, t0, 19
                  andi         ra, s2, -1318
                  add          s1, s2, a5
                  nop
                  ori          gp, a4, -708
                  sltu         a4, a5, s3
                  sra          s4, a5, s11
                  and          s5, s0, t2
                  slt          s0, t3, s0
                  slt          s10, s11, s7
                  or           sp, t5, ra
                  sll          a0, ra, s11
                  add          ra, s1, s2
                  xor          s6, a6, t0
                  andi         t6, a2, -1029
                  andi         s10, a3, -1199
                  addi         s4, t4, 1739
                  andi         tp, s0, -1622
                  xor          a7, a3, s10
                  slt          s4, t1, t3
                  or           s0, sp, sp
                  andi         a7, t3, 868
                  lui          s10, 330757
                  or           a7, gp, t3
                  add          gp, s4, s10
                  slli         a7, s2, 17
                  addi         a0, t0, 757
                  sltu         t1, t3, s0
                  sub          s7, t4, s10
                  andi         a0, s2, -1753
                  srai         a1, a7, 18
                  sltiu        s2, tp, 867
                  lui          s10, 248802
                  slt          s9, zero, t0
                  or           s2, t0, s4
                  sltiu        s4, s6, 999
                  add          t5, s4, t1
                  srl          s4, s1, s2
                  andi         a0, s7, 954
                  auipc        s7, 105402
                  add          s5, t1, gp
                  or           s10, s8, tp
                  add          tp, ra, a3
                  srli         ra, t5, 8
                  sll          s8, s4, gp
                  slt          a1, t2, s6
                  srl          a5, t0, t3
                  ori          a6, tp, 1976
                  sll          t6, s11, s3
                  sltu         a1, t4, s7
                  slli         gp, s7, 11
                  andi         s2, s2, 785
                  slli         s7, s0, 6
                  sra          t1, s11, s8
                  add          s7, s5, s7
                  ori          s6, s0, -1849
                  auipc        s6, 61200
                  slti         t2, s11, -1523
                  andi         s3, t5, 61
                  nop
                  add          tp, s6, s5
                  sll          s7, sp, s10
                  and          a5, s0, t2
                  sub          s1, zero, t2
                  sra          sp, ra, sp
                  slt          s2, s11, a4
                  li           s10, 0x4dceb10d #start riscv_int_numeric_corner_stream_2
                  li           ra, 0xffffffff
                  li           s11, 0x0
                  li           s6, 0xffffffff
                  li           sp, 0x80000000
                  li           s3, 0xc00fd815
                  li           t2, 0xffffffff
                  li           s5, 0xffffffff
                  li           s7, 0xffffffff
                  li           t1, 0x0
                  addi         s5, s5, 1769
                  nop
                  add          s7, s10, s5
                  add          t2, s10, s11
                  auipc        sp, 879971
                  sub          t1, s10, s6
                  sub          s3, s3, sp
                  lui          sp, 131000
                  lui          s3, 930710
                  sub          s3, t1, s5
                  sub          sp, s3, s6
                  nop
                  nop
                  add          ra, t2, t2
                  add          s5, ra, s6
                  add          s7, s10, t1
                  auipc        s3, 203817
                  nop
                  sub          s11, s6, s5
                  auipc        s3, 888206
                  auipc        t1, 462184 #end riscv_int_numeric_corner_stream_2
                  and          s2, s3, s3
                  auipc        t4, 991312
                  slli         s11, s4, 1
                  srl          t1, a4, a4
                  auipc        t5, 985478
                  slt          s0, ra, a5
                  addi         s11, t1, -684
                  add          a0, t1, s3
                  ori          a2, s1, 1239
                  slti         sp, tp, -681
                  add          s5, s2, t0
                  xori         s9, s10, 1921
                  sub          s2, t6, s4
                  lui          s7, 597735
                  ori          s11, s11, 870
                  sll          t2, a5, s2
                  sltu         s6, a6, a1
                  addi         gp, t4, -1494
                  slt          s11, a7, s3
                  xor          s11, t3, t4
                  srl          s8, a6, s5
                  ori          s0, s11, 146
                  addi         s8, t0, 1581
                  slt          zero, s7, a3
                  lui          s0, 197545
                  slli         s11, s8, 24
                  slli         s5, t6, 8
                  sll          s1, t2, sp
                  srai         s4, s11, 27
                  sra          a5, s7, tp
                  srli         a7, a5, 19
                  srl          a0, s8, ra
                  or           t2, s7, t4
                  sra          s5, a2, s0
                  sub          a2, t2, a4
                  andi         t6, a5, -663
                  xori         sp, a1, 1507
                  ori          s4, a5, 950
                  sltu         a1, gp, t3
                  sub          tp, a2, a2
                  slt          s9, a2, t3
                  sra          s4, s11, a0
                  and          a0, s5, a1
                  srli         s10, t5, 31
                  slli         zero, s7, 19
                  add          s1, a6, s5
                  sra          t4, s3, a4
                  xori         s3, t4, -607
                  sub          a1, sp, sp
                  sltu         s10, s0, gp
                  slt          t5, s2, t4
                  xor          t2, s8, s9
                  and          s10, t1, s9
                  add          ra, t6, gp
                  xor          zero, a4, s6
                  sltu         a1, s0, a7
                  auipc        s11, 1022458
                  slti         s6, s5, 1616
                  nop
                  andi         s8, gp, -1154
                  sll          t1, s4, s9
                  ori          t5, t0, 1382
                  srli         s1, t5, 19
                  srai         s5, s11, 8
                  sub          s7, ra, s5
                  auipc        s3, 129784
                  addi         s9, a4, 1755
                  andi         ra, a6, 1395
                  lui          s5, 282545
                  add          s5, t3, a1
                  sra          tp, s8, s2
                  srl          s0, s10, s4
                  sub          s6, a7, s4
                  sll          a6, ra, a4
                  sll          s4, t2, s5
                  lui          s3, 184443
                  sra          t1, tp, gp
                  slt          s1, a5, a7
                  sltu         t5, a0, s8
                  srai         s8, t5, 9
                  auipc        s9, 283971
                  and          a5, s9, t5
                  slt          s3, a2, s1
                  add          a1, t4, s1
                  sub          s7, s8, s7
                  add          s7, s0, a0
                  sll          s11, s0, t5
                  sll          t5, a2, t6
                  auipc        ra, 545664
                  sltiu        a7, s2, -1909
                  slt          s6, tp, t4
                  srl          s10, s7, a3
                  sll          s2, s2, t0
                  sltiu        s5, t6, 871
                  srl          t4, s7, a5
                  auipc        tp, 940987
                  sub          a1, tp, s1
                  sub          zero, a7, s1
                  sra          gp, s6, t6
                  add          s9, a1, t4
                  slti         t5, s5, 287
                  sub          t1, a0, s6
                  add          a6, s5, a6
                  slli         t2, t1, 0
                  lui          a6, 801927
                  nop
                  addi         t2, tp, -1327
                  sub          s2, s2, s5
                  sra          tp, a3, a6
                  slt          a6, t5, t0
                  slti         a2, tp, 1358
                  add          s8, a4, s11
                  lui          t4, 717909
                  addi         s11, a6, 1707
                  sll          t5, t0, s10
                  and          t2, t3, s3
                  nop
                  auipc        s1, 52079
                  slt          a2, s3, s1
                  sltu         tp, s4, tp
                  sll          a1, s3, a0
                  auipc        s0, 416231
                  slt          s7, a4, s5
                  add          s10, t1, s8
                  slti         gp, s3, 231
                  srl          t1, t0, t0
                  andi         zero, s7, 196
                  srl          a2, s7, tp
                  srli         tp, a7, 30
                  slli         s1, t2, 19
                  ori          a0, gp, 207
                  sltiu        a2, a6, 1344
                  nop
                  and          s7, a5, s4
                  auipc        zero, 835267
                  add          s10, s9, t2
                  xor          s8, s1, s3
                  srli         a6, a6, 11
                  sll          s11, a5, zero
                  or           zero, s6, s4
                  sra          a6, a6, a4
                  srli         s8, s3, 18
                  ori          s1, t5, -1041
                  slti         zero, a7, 2038
                  xori         a7, t2, 1858
                  sltiu        s11, gp, -448
                  slt          s11, s7, s1
                  sltiu        s7, t2, 677
                  srai         a7, s11, 13
                  sll          s4, s11, s5
                  lui          sp, 52141
                  lui          a4, 431636
                  srl          t1, s1, a7
                  add          s6, s6, s11
                  srl          t4, s5, a0
                  nop
                  add          t2, s11, s10
                  srli         a5, s5, 1
                  srai         s0, s11, 17
                  srl          t6, t2, s10
                  andi         s3, t3, 906
                  sra          t1, zero, t6
                  sub          a5, s8, t1
                  sra          s0, s8, s6
                  ori          a5, s9, -318
                  nop
                  and          s10, t5, gp
                  sra          t2, s0, s5
                  sra          a7, tp, t5
                  or           t2, s10, a2
                  sll          s9, zero, s5
                  nop
                  and          a4, t5, tp
                  sltu         a7, a7, a2
                  srl          t2, t2, s3
                  sll          s6, s11, s0
                  add          s7, s3, a7
                  xor          ra, t4, s7
                  xor          s1, a1, ra
                  nop
                  slti         a2, ra, -266
                  xor          a1, zero, a0
                  slt          s7, a2, s4
                  xori         t4, s4, 509
                  andi         a2, a7, -640
                  nop
                  sra          s11, sp, s3
                  srli         s2, gp, 3
                  auipc        ra, 768666
                  andi         zero, t2, -1327
                  sltu         s1, a2, s2
                  nop
                  or           a7, tp, s7
                  or           s5, s1, a7
                  slti         tp, s9, -1254
                  andi         a0, a7, -1767
                  ori          a6, s3, 1316
                  xori         s6, s7, 205
                  nop
                  and          s6, a6, s10
                  and          s11, s4, a2
                  andi         s9, s9, 536
                  sra          s2, a6, s5
                  sltu         a6, s11, s7
                  ori          sp, s0, -1578
                  nop
                  srai         zero, s5, 4
                  slli         t5, t2, 2
                  auipc        a2, 406811
                  sltu         s2, s0, t2
                  add          s9, t6, s10
                  slt          s9, a1, s0
                  sltu         a0, s5, tp
                  andi         s9, t6, 126
                  xori         zero, s11, 742
                  nop
                  and          t1, a4, a1
                  ori          s5, s8, -1094
                  sltu         t2, t0, a4
                  sub          s11, s8, a7
                  auipc        s3, 905144
                  addi         t4, a7, 1592
                  slli         t6, t5, 17
                  sltu         a0, a7, a2
                  srli         s1, t1, 16
                  sltiu        ra, s4, -1464
                  add          a7, a4, s0
                  ori          a0, a2, 120
                  and          a0, a6, t3
                  slti         t6, t2, -2006
                  sub          s10, s9, s10
                  or           a0, s0, s0
                  srai         tp, s4, 5
                  nop
                  slt          a1, a2, s8
                  xori         a0, a3, 634
                  add          sp, s3, t3
                  addi         s5, s9, 1650
                  slti         tp, t2, -716
                  sll          a4, t3, a5
                  sub          s6, ra, s3
                  addi         s0, a3, 1980
                  nop
                  sra          s11, tp, a0
                  ori          a6, s1, 155
                  nop
                  auipc        a4, 507452
                  sra          a7, s8, s5
                  ori          tp, s7, 1351
                  and          s10, gp, s0
                  or           s0, s4, t5
                  srai         a1, sp, 18
                  slti         ra, s10, 797
                  or           ra, t4, gp
                  sltiu        a1, s0, -213
                  addi         a1, a2, 1215
                  srai         s1, s2, 26
                  xori         zero, tp, 1318
                  srli         t4, s11, 21
                  sll          t1, a2, a7
                  andi         t4, s0, -357
                  slti         t2, s5, 294
                  add          ra, s5, zero
                  nop
                  sub          t1, a4, a2
                  xor          a0, a6, s7
                  sltu         zero, s10, t4
                  sll          s11, t4, s4
                  andi         s7, t6, 1946
                  sub          t4, zero, s9
                  xor          a4, a1, a4
                  or           s4, s9, t2
                  andi         ra, a5, -1025
                  nop
                  xori         t5, a0, 664
                  xor          s10, a5, tp
                  nop
                  sub          t6, s0, t6
                  sltiu        s9, a7, -1469
                  sra          a7, t0, a3
                  srai         a5, ra, 9
                  add          t1, s0, a0
                  slli         zero, a7, 14
                  srai         s1, s5, 2
                  or           s1, s8, s0
                  sll          ra, t0, s9
                  slti         a0, t4, -1989
                  add          zero, a6, gp
                  srai         t5, s1, 7
                  auipc        a1, 595975
                  xori         s7, a6, 515
                  xor          s1, t2, gp
                  srl          a4, s11, t5
                  sra          s11, a6, s10
                  slti         a7, t4, -855
                  xori         s0, a4, -975
                  and          a5, t2, ra
                  sll          ra, a5, ra
                  auipc        s2, 385335
                  nop
                  srli         a2, sp, 26
                  and          t1, s3, sp
                  lui          t1, 464137
                  sltu         s11, s7, a2
                  slti         gp, s6, 1222
                  sub          sp, s2, t2
                  sra          a5, s9, s1
                  slt          s11, t5, s6
                  slt          t2, a7, a3
                  sltiu        t2, t2, 1487
                  sltu         s10, a7, ra
                  or           a5, tp, sp
                  slti         s9, a5, -1574
                  srai         s4, t4, 30
                  slt          s6, t6, s10
                  andi         a6, s4, 1433
                  xor          s10, s5, s8
                  lui          gp, 862441
                  sltu         t6, a3, a0
                  slli         s5, tp, 15
                  sltu         t6, t6, s2
                  slt          s3, s5, t4
                  sra          s4, gp, tp
                  sub          t4, a3, gp
                  sltiu        s4, zero, -788
                  or           sp, zero, s2
                  ori          s1, s1, -869
                  auipc        t6, 439774
                  srl          s4, t1, a2
                  andi         t5, s4, 239
                  addi         t5, s2, -988
                  srli         s2, t1, 5
                  addi         s8, t3, 268
                  lui          t1, 783345
                  xori         s4, s5, -1053
                  sltiu        s10, a2, 1620
                  lui          s5, 1010185
                  addi         a4, s3, -1379
                  srl          t6, s4, tp
                  addi         t1, s6, 1544
                  sub          tp, s4, s9
                  xori         s7, s2, 564
                  srli         s1, s0, 8
                  addi         a2, a4, 1307
                  srl          s2, tp, a2
                  addi         sp, t0, 1632
                  ori          s7, s3, 290
                  and          a4, t4, s6
                  sll          t4, s9, a2
                  lui          s9, 305931
                  sltiu        s11, a7, -1099
                  sltiu        a5, s5, -1004
                  addi         gp, s1, 156
                  sll          s5, s11, gp
                  srli         t2, a5, 9
                  sub          a6, a2, t5
                  sltiu        s3, a2, 297
                  slti         a5, a3, 1743
                  srl          s7, t3, a3
                  nop
                  slli         s5, s2, 25
                  ori          s4, a7, 69
                  slt          t6, s9, s0
                  ori          a0, s0, -1869
                  srl          a2, a3, s10
                  sltu         a2, zero, s11
                  addi         s10, a6, 1937
                  lui          s9, 601977
                  nop
                  and          s6, a6, a4
                  andi         tp, a1, -1219
                  addi         s6, a6, 692
                  slli         s8, a3, 30
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           s7, 0xffffffff
                  li           a6, 0x498c4c80
                  li           a5, 0x37bb2e90
                  li           s1, 0xc9f28d73
                  li           t1, 0x80000000
                  li           s6, 0x776d3845
                  li           a2, 0xffffffff
                  li           a0, 0xa13a528d
                  li           s0, 0x0
                  sub          s6, a5, s1
                  addi         s8, a2, -1621
                  lui          a2, 425959
                  addi         s7, a0, 346
                  addi         a6, a2, -1063
                  lui          s6, 478314
                  addi         s7, a0, 1881
                  add          t1, s7, a5
                  addi         a5, s6, -1337
                  auipc        s8, 193917
                  add          s7, a6, s1
                  auipc        s0, 45934
                  addi         s6, s8, -201
                  auipc        s7, 395110
                  add          t1, a5, a2
                  add          s8, s7, s6
                  sub          a6, t1, s0
                  sub          s0, s6, a6
                  nop
                  lui          s8, 464661
                  addi         a5, a0, 1959
                  add          s8, a5, s8
                  addi         a0, s1, -1304
                  add          s7, s6, a2
                  sub          s1, a0, a5
                  nop
                  addi         s0, a2, 1781 #end riscv_int_numeric_corner_stream_1
                  xor          s0, ra, a2
                  sltu         s5, a4, s11
                  ori          s0, s10, 16
                  sub          s5, s10, a7
                  sltu         s11, s1, s3
                  nop
                  or           a1, t5, gp
                  srl          gp, t2, t3
                  sltiu        tp, a6, -38
                  nop
                  slt          a0, zero, t1
                  auipc        a5, 1026815
                  nop
                  xor          tp, t5, s2
                  sltiu        sp, a2, 2011
                  or           a7, s5, zero
                  and          a2, t3, zero
                  xor          s7, s6, zero
                  or           a5, t0, a3
                  xor          s11, t0, a4
                  srli         s8, s7, 11
                  sra          tp, ra, t0
                  srl          s2, a6, a0
                  andi         s3, t1, 1230
                  slti         a1, sp, -1671
                  ori          t6, s3, 1597
                  add          s3, t4, a6
                  xori         s10, s10, -1270
                  sll          tp, a7, s6
                  sll          s5, a3, s8
                  xori         a6, s10, -645
                  slli         sp, zero, 14
                  sltu         t2, gp, t3
                  and          ra, s11, s4
                  xor          s5, sp, s5
                  srl          s3, s0, t3
                  xor          s0, s11, t3
                  or           t1, s10, t1
                  and          s4, s4, a7
                  sltiu        s10, gp, 1298
                  lui          a4, 558483
                  auipc        s3, 726284
                  and          a7, t6, t4
                  xori         gp, t1, 1387
                  nop
                  nop
                  sub          s9, a1, s8
                  sra          s5, a4, a0
                  sltu         s9, s0, t5
                  slti         s10, a0, -1736
                  xor          ra, s6, s1
                  addi         s0, a6, 1075
                  and          s9, s10, s7
                  addi         s1, t6, 646
                  addi         zero, s8, -1843
                  ori          s10, a2, 2012
                  or           t6, s10, a1
                  slt          a6, a2, gp
                  sub          sp, ra, s2
                  sltu         t2, a6, tp
                  or           zero, a5, zero
                  srli         s4, s1, 19
                  slti         a1, s3, -992
                  sltiu        s2, a7, 961
                  nop
                  slt          t6, s2, a1
                  or           s8, s4, s3
                  sra          t1, s6, s11
                  slt          s3, t0, a1
                  srl          s4, t5, a7
                  nop
                  sub          s11, s4, s10
                  or           s3, a2, a3
                  and          s8, a0, a5
                  slli         tp, t1, 26
                  xor          s11, ra, t0
                  srai         a2, s11, 14
                  sltu         s4, s7, s10
                  srli         a6, zero, 13
                  slli         s1, s3, 5
                  and          a5, s6, zero
                  auipc        s4, 723141
                  xor          a0, s2, a6
                  sra          s6, a2, t4
                  slti         t2, a2, -999
                  srl          a0, t1, t2
                  slti         a5, ra, 456
                  slt          s10, gp, a1
                  sra          a6, a4, s1
                  and          s3, ra, t4
                  sra          a1, t5, a1
                  add          s11, t1, s5
                  slt          s5, t1, s6
                  sltiu        s3, s0, 1885
                  sltu         ra, a6, s2
                  srl          s1, s5, s2
                  sll          sp, s9, t2
                  slli         s11, a0, 31
                  sltiu        s10, s8, -1185
                  nop
                  lui          s0, 512143
                  nop
                  addi         a5, t0, -1324
                  srl          a6, s8, a6
                  nop
                  xor          t4, a2, t2
                  and          s10, a5, t4
                  or           s11, a3, a4
                  nop
                  slli         ra, t4, 5
                  sltiu        a1, s5, -368
                  slti         s2, a1, 1182
                  andi         a5, s5, 1066
                  xor          t5, t0, s3
                  add          s1, s9, s6
                  srai         s4, a7, 23
                  slli         zero, gp, 2
                  sltiu        s2, t4, -765
                  slli         s4, s11, 3
                  xori         a4, s2, -1051
                  andi         gp, s7, -1773
                  sltu         s11, a2, a6
                  sltu         s1, a4, t1
                  lui          a0, 664290
                  auipc        s11, 532106
                  addi         a2, t0, 458
                  srl          a6, s1, t3
                  xor          t4, a6, s4
                  sub          s7, t5, a1
                  add          a7, s11, s7
                  sub          s11, a4, t6
                  add          s11, s2, s8
                  andi         t4, gp, 1429
                  lui          t2, 621021
                  and          s5, t5, t2
                  sub          s1, s0, t2
                  addi         gp, s1, 22
                  ori          s3, zero, 920
                  ori          t1, a0, 367
                  addi         s8, s8, -1726
                  sltu         s0, a1, s4
                  auipc        s1, 623828
                  sltiu        s10, a4, 326
                  srli         s5, a5, 23
                  sltu         s7, t3, t4
                  slti         a6, s2, 644
                  sltiu        a6, a1, -1558
                  auipc        zero, 335429
                  slt          s11, s0, zero
                  slti         ra, ra, -915
                  sll          a2, a6, s7
                  add          tp, a1, a6
                  sub          a7, s6, s3
                  sltiu        a6, s11, -250
                  ori          s11, s10, -1772
                  addi         a0, s10, -1620
                  ori          t4, a4, 824
                  slti         sp, ra, -918
                  and          s8, t3, s9
                  xor          s3, s5, s0
                  lui          a1, 549848
                  slli         a7, ra, 0
                  ori          s1, sp, -1135
                  ori          a6, s5, -855
                  addi         sp, a5, 1576
                  sub          s4, sp, tp
                  andi         a2, ra, -1820
                  srl          s2, s4, t3
                  sra          zero, s0, s11
                  sltiu        s9, t1, -1059
                  sltu         s8, t2, t3
                  srai         s7, s2, 5
                  xori         a1, a6, -1703
                  ori          t2, t3, -404
                  sltiu        t5, t6, -1184
                  ori          a7, a0, -1694
                  ori          t5, a6, 323
                  srl          s3, sp, t1
                  xori         a0, a4, -747
                  sub          zero, a1, s9
                  or           a4, tp, s2
                  addi         a7, t1, 328
                  lui          s9, 5687
                  lui          tp, 1014247
                  slti         s0, a5, -1464
                  addi         s0, ra, -622
                  sll          s6, s11, s4
                  sltiu        s4, s3, -560
                  nop
                  sub          a1, s5, s8
                  andi         s10, t0, 1728
                  srl          s2, t5, sp
                  sltiu        a6, s4, -430
                  or           t6, a6, a7
                  slti         t5, sp, -373
                  sra          s2, a2, t4
                  sltu         s4, a3, s6
                  auipc        s4, 1047052
                  auipc        s0, 338049
                  and          a2, s10, ra
                  xori         a4, t2, 50
                  slt          t4, sp, t5
                  sltiu        a6, s9, 127
                  slti         gp, a7, -664
                  srli         s2, gp, 14
                  or           s0, tp, s0
                  xori         s1, s4, 375
                  add          gp, s11, a4
                  auipc        s4, 754589
                  nop
                  sra          sp, a2, t2
                  and          s2, s2, s2
                  slt          a1, s1, a5
                  andi         s0, a2, -227
                  add          t6, t3, a0
                  lui          t6, 110688
                  sub          zero, s6, s9
                  srli         s1, s3, 29
                  slli         a5, t0, 23
                  add          zero, s1, gp
                  sll          a6, t5, gp
                  nop
                  xori         s11, s3, -417
                  addi         s11, a1, -678
                  sll          gp, t1, s3
                  slt          t6, tp, s9
                  srli         s2, a5, 18
                  slt          s0, s7, a3
                  sll          s2, a1, s9
                  andi         a5, s5, -85
                  lui          a7, 212133
                  srai         s6, s7, 10
                  slt          t4, a1, a1
                  srai         t1, s0, 11
                  nop
                  sub          s0, s8, a6
                  slti         a0, s5, 1057
                  xor          s4, gp, s1
                  xori         s5, tp, 1927
                  andi         s1, a1, -1447
                  srli         a5, zero, 8
                  xor          ra, ra, a1
                  ori          a4, a1, -2028
                  nop
                  lui          t5, 1026676
                  xori         t5, t5, -1347
                  sltu         s11, t5, s1
                  xor          s3, a5, a2
                  srai         a4, t0, 6
                  add          tp, s7, ra
                  and          a0, t1, a7
                  sub          s2, s4, s9
                  xor          a1, a5, t1
                  sltu         s4, a6, s0
                  ori          t6, a1, 2008
                  sll          s5, tp, zero
                  or           a0, t0, s6
                  slt          t1, t6, t5
                  sltiu        a5, s6, -37
                  lui          a0, 928375
                  sll          s1, ra, s1
                  auipc        a1, 45605
                  sltu         gp, sp, t5
                  nop
                  sub          t2, t0, ra
                  slli         s7, s4, 18
                  auipc        t1, 366951
                  auipc        s5, 264236
                  nop
                  addi         a2, s2, 1507
                  sub          t1, t2, a7
                  sll          a4, a7, zero
                  slli         s1, s10, 8
                  addi         sp, a2, -1302
                  sub          s0, s6, t5
                  sra          s6, t5, a1
                  and          s2, zero, s4
                  add          s6, t5, tp
                  xori         tp, s8, 1879
                  xor          s1, s2, a5
                  add          a2, s10, s6
                  auipc        sp, 81567
                  slt          s8, sp, t6
                  slti         a4, a5, 158
                  sltiu        s9, t1, 1542
                  srl          gp, s4, s9
                  or           gp, a4, t2
                  xori         t6, s1, 1090
                  add          zero, a1, s11
                  sub          a6, s0, s5
                  xor          tp, a7, t0
                  lui          a4, 606547
                  xori         a4, s3, -520
                  addi         zero, a1, -762
                  slt          ra, a4, a6
                  auipc        t6, 318470
                  or           a5, a3, s2
                  sra          t4, s8, t4
                  slli         s3, s8, 14
                  ori          sp, s6, 1831
                  nop
                  auipc        a1, 807441
                  slli         sp, s1, 19
                  or           a2, s8, s11
                  xor          s6, a1, gp
                  sra          t6, s3, a5
                  xor          s6, a7, a2
                  srli         a0, t6, 20
                  srl          t4, a7, a1
                  srai         s5, sp, 18
                  slli         s3, s6, 30
                  or           t4, a1, s3
                  slli         a0, t0, 15
                  slli         s4, a0, 30
                  lui          s8, 459956
                  lui          s5, 859134
                  slti         sp, a2, -302
                  srl          a2, t2, s5
                  srli         t5, a5, 15
                  sll          s11, t5, s9
                  sll          s9, t3, t4
                  xor          sp, ra, t2
                  add          t5, s7, t1
                  auipc        s0, 634315
                  sltu         a1, s8, a0
                  or           tp, s5, gp
                  auipc        s7, 92551
                  srai         s6, s3, 19
                  sltiu        s3, t0, 1139
                  xor          a7, t5, s7
                  sra          tp, s6, ra
                  sll          t2, s8, s5
                  and          a5, t3, a6
                  andi         sp, a1, 332
                  xori         s1, t4, 189
                  srl          s4, a2, t2
                  srli         zero, t2, 1
                  xor          s7, t6, ra
                  auipc        s2, 429865
                  andi         a4, t4, 114
                  ori          t2, a1, 925
                  sub          s4, s1, a4
                  srli         t6, t3, 7
                  srli         s0, s0, 14
                  sll          s5, a1, a5
                  add          s8, s3, t0
                  sub          a2, a0, s2
                  srli         a6, t0, 12
                  srai         sp, s2, 27
                  srli         a7, a7, 13
                  ori          s3, t5, 1008
                  xor          s0, t6, t1
                  srai         s10, a6, 30
                  sltu         sp, sp, a2
                  srli         a7, s3, 2
                  slli         tp, s0, 2
                  srai         s1, s5, 25
                  and          s1, t6, s11
                  lui          a5, 149302
                  and          a5, t5, a7
                  srli         a2, t2, 1
                  or           t6, a2, s7
                  nop
                  ori          sp, s11, -1048
                  addi         a5, t3, -9
                  xor          s9, a1, ra
                  sltiu        zero, a5, 1204
                  srai         s9, a1, 10
                  xori         a6, a3, 334
                  addi         s2, a3, 1488
                  xori         s2, a6, -1827
                  sub          t6, tp, a4
                  slt          s5, t0, ra
                  sub          a5, a6, a7
                  sltu         t1, a1, a5
                  slli         s9, t3, 11
                  sra          a7, sp, a0
                  ori          gp, s6, 885
                  slt          s5, ra, gp
                  sub          s10, t2, s6
                  add          s8, a5, s1
                  sltiu        t1, a4, 1150
                  slt          a5, a3, s1
                  and          a0, a5, t5
                  nop
                  addi         tp, ra, -1117
                  srl          t1, sp, s6
                  slli         zero, gp, 2
                  srl          s2, s11, a6
                  slt          s9, t3, zero
                  sltu         sp, a4, a3
                  and          a5, t2, t4
                  sra          sp, s5, s8
                  and          a5, t1, ra
                  sra          s3, s5, s4
                  srai         sp, s4, 24
                  xori         a7, a3, 2024
                  slt          a7, t5, t1
                  sra          t1, sp, a2
                  or           s0, s11, t4
                  add          s7, tp, t6
                  addi         t1, t0, -1665
                  sltu         t6, s4, s8
                  addi         s0, s6, 318
                  andi         a2, a4, 1424
                  add          ra, a0, t0
                  srl          t6, t5, a0
                  xor          s7, s2, s6
                  srai         a7, zero, 12
                  slti         s4, a7, -1785
                  sltiu        s4, tp, -1676
                  sub          t2, t4, s9
                  slli         t5, s0, 16
                  or           s5, s10, a6
                  sra          t2, s11, s3
                  sll          a7, t2, t2
                  or           ra, a2, a7
                  slt          a4, t3, t6
                  xori         a2, s10, -10
                  srai         s0, t3, 9
                  slli         t6, sp, 18
                  srai         gp, a2, 13
                  slti         ra, zero, 523
                  lui          a1, 243333
                  slt          s0, ra, t3
                  srli         a1, s5, 11
                  srl          s7, s6, s11
                  add          s3, a3, t2
                  auipc        s4, 381314
                  and          a6, a0, t0
                  and          a4, a4, s4
                  srl          a2, s8, t5
                  xori         a6, t0, -1870
                  nop
                  srli         zero, t3, 29
                  srai         zero, t1, 9
                  andi         s10, sp, -1655
                  sll          a6, s5, a1
                  slli         a5, s5, 0
                  slt          t5, s5, zero
                  auipc        a0, 175323
                  sra          s1, s4, s4
                  slli         a7, t4, 14
                  srl          ra, a7, s1
                  srli         a0, t3, 3
                  lui          s4, 521395
                  srl          t1, a5, t4
                  sub          s3, s1, s1
                  srl          s0, s11, s5
                  sra          s11, s3, a5
                  sltiu        zero, s6, 614
                  and          t5, a0, s0
                  addi         a6, a5, 691
                  slli         tp, t2, 5
                  sub          s10, ra, a7
                  or           s0, a6, a4
                  slti         s6, s8, 255
                  and          s3, s7, s5
                  auipc        a6, 169553
                  sll          sp, a3, t0
                  andi         a6, s5, 1010
                  lui          t6, 804511
                  andi         a5, s0, -1424
                  xori         gp, t1, -55
                  lui          t1, 656329
                  auipc        t2, 804252
                  slti         s9, ra, 932
                  sltu         s11, a1, s0
                  srai         s3, a6, 28
                  sra          s11, sp, a7
                  srai         a4, s7, 29
                  slti         t2, s3, -817
                  slt          s7, gp, s2
                  srl          t5, t3, s1
                  slli         a1, s2, 18
                  auipc        s6, 337737
                  xori         s4, t6, -993
                  sltiu        s3, s11, 2009
                  and          s10, a7, a1
                  srli         a5, a0, 21
                  sll          s6, a1, a0
                  xori         s8, s8, -1836
                  and          a1, a6, gp
                  xori         zero, a7, -665
                  and          a2, s0, gp
                  xor          a6, t6, s11
                  slti         s3, a1, -1897
                  ori          a0, s7, -371
                  slt          a0, a5, t5
                  and          a7, a7, s9
                  sll          a1, a5, s2
                  lui          s2, 848999
                  xori         gp, t5, -1
                  srli         s7, s11, 5
                  addi         a0, t5, -702
                  srai         sp, s6, 11
                  addi         s1, s11, -1592
                  srli         t4, t3, 11
                  sub          a2, t5, ra
                  srl          s2, s9, s10
                  add          t5, s1, t6
                  slti         a4, s6, -1046
                  sltiu        s8, s9, 1713
                  and          s7, s5, a0
                  sltu         a7, a1, s10
                  sub          a4, t1, s2
                  addi         t2, a7, 823
                  lui          s8, 153893
                  sltu         t5, tp, t6
                  srl          gp, a1, t6
                  andi         s2, t1, -954
                  andi         s0, a0, -768
                  sltiu        t1, a3, 1234
                  slli         t5, s8, 5
                  xori         a1, zero, -265
                  add          a6, s3, zero
                  sltu         s8, s1, s11
                  or           a4, a2, s3
                  xori         a4, a3, -669
                  srli         tp, gp, 10
                  srli         s3, t4, 22
                  sub          s3, t4, zero
                  addi         t1, t6, -1460
                  and          t1, s5, s11
                  srai         a4, s4, 31
                  sub          s8, t6, s9
                  xori         s0, s0, -1652
                  srl          a1, tp, t1
                  auipc        s3, 268010
                  sltu         s6, t3, s4
                  srai         sp, s2, 20
                  slti         t2, s2, 1453
                  auipc        s7, 580702
                  slli         a1, s1, 9
                  nop
                  xori         s8, s5, -1234
                  xor          s7, s4, tp
                  srai         a4, s4, 11
                  sub          a2, s6, a6
                  lui          tp, 79297
                  or           t4, t3, t0
                  andi         tp, sp, -71
                  sub          s8, t1, s9
                  andi         t5, ra, 1836
                  or           a1, s7, ra
                  srl          a2, s9, t6
                  slti         s5, zero, 1821
                  ori          a4, s3, 216
                  srl          ra, a0, t6
                  and          s11, s5, s2
                  lui          s9, 407634
                  srl          s6, s6, a3
                  andi         t5, a6, 1334
                  sra          tp, s0, a3
                  nop
                  andi         t4, a3, 50
                  srl          s2, a3, s2
                  add          t4, s7, t6
                  sub          a4, t5, s4
                  srl          s6, s10, t6
                  slti         t2, a3, -2017
                  and          s10, s2, s9
                  andi         gp, s6, 1892
                  addi         tp, t5, -1534
                  slti         zero, gp, -1363
                  sub          a2, a6, a7
                  sub          s5, a5, s0
                  nop
                  auipc        ra, 529619
                  sra          a6, s6, a4
                  sra          a5, s3, t4
                  sll          a0, gp, a3
                  sltiu        s3, a5, 522
                  and          a4, s10, s9
                  sra          s5, s10, zero
                  xori         a1, a7, -1023
                  sltiu        s2, s4, -518
                  slti         a0, s8, -2033
                  sltu         s7, a3, a5
                  sub          s9, sp, a0
                  slli         sp, a7, 15
                  lui          s5, 530179
                  addi         s9, a5, 1747
                  sltiu        a4, a7, 237
                  srli         gp, a2, 20
                  and          a5, a1, a4
                  auipc        a7, 850214
                  and          t5, a3, t0
                  srli         s6, s4, 10
                  lui          zero, 489456
                  slli         a6, a4, 27
                  lui          gp, 1001108
                  slli         s3, gp, 8
                  and          a4, s11, s1
                  or           ra, s9, gp
                  auipc        s2, 423327
                  add          s8, gp, s0
                  sltiu        t4, s2, -1412
                  slli         a4, t4, 29
                  xori         a0, a2, 1072
                  auipc        s0, 527952
                  xor          a6, t2, a1
                  slt          t1, gp, ra
                  auipc        t5, 1011076
                  sltiu        tp, t5, 1631
                  add          s1, t0, s0
                  srai         s4, t1, 11
                  sra          t5, s10, gp
                  auipc        s0, 135800
                  sltiu        sp, s0, -783
                  slli         t4, gp, 2
                  and          s11, s11, t4
                  sub          sp, tp, t4
                  sra          a2, s5, s10
                  sltiu        s0, t1, 483
                  sll          s1, sp, a3
                  srai         t6, s11, 1
                  srl          s1, tp, ra
                  ori          a7, s8, -991
                  addi         t6, a5, 1319
                  nop
                  and          s5, s1, s10
                  srl          tp, s7, ra
                  sll          s7, a4, s9
                  auipc        a2, 880996
                  addi         s9, ra, -1886
                  sub          a4, a6, s5
                  andi         a5, a1, 244
                  slti         a2, a4, -1429
                  srli         a1, t5, 22
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           a5, 0xffffffff
                  li           a7, 0x0
                  li           s8, 0x0
                  li           s1, 0x3ecce85e
                  li           a2, 0x80000000
                  li           s9, 0x83f463fc
                  li           s11, 0x0
                  li           s6, 0xffffffff
                  li           s0, 0xffffffff
                  sub          s8, s11, a7
                  auipc        a2, 980477
                  nop
                  add          s6, ra, a7
                  sub          s11, s6, s9
                  nop
                  addi         s6, a2, -1283
                  nop
                  lui          a5, 183713
                  addi         s1, ra, -1520
                  nop
                  lui          s11, 254232
                  lui          s8, 21721
                  sub          s1, a5, a7
                  sub          s9, s1, a5
                  addi         s0, s0, -1830
                  sub          s1, s0, s6
                  lui          a2, 262310
                  sub          a2, a5, s9
                  sub          s1, a7, s0
                  addi         a5, s0, 621
                  nop
                  addi         a7, s11, -1480
                  lui          s9, 917931
                  sub          s11, s6, a2 #end riscv_int_numeric_corner_stream_8
                  add          ra, a5, s5
                  slli         t2, a6, 21
                  or           t5, s1, s3
                  srai         a7, s11, 16
                  sll          s6, tp, t3
                  xori         a2, t2, -1128
                  or           t1, ra, tp
                  srai         s6, s2, 5
                  xor          s0, tp, t4
                  srli         s11, s1, 23
                  slt          a6, t4, s3
                  or           s5, t1, s0
                  sub          t1, tp, t6
                  nop
                  sra          s7, zero, t6
                  sub          a2, t4, sp
                  sub          s4, s9, a0
                  sltiu        a2, a3, -1017
                  slli         sp, t3, 28
                  srai         t6, t5, 29
                  lui          a4, 994024
                  sra          ra, s4, gp
                  addi         t1, t6, 681
                  sll          s11, a2, t4
                  auipc        s9, 600
                  addi         t1, s8, -641
                  lui          t6, 1029146
                  and          a6, t2, a3
                  srai         a0, a5, 19
                  or           s7, sp, a2
                  sra          s1, s9, a2
                  andi         a4, a2, -740
                  sltu         s10, t3, s9
                  xori         tp, a6, -4
                  slt          a6, s11, a5
                  srai         ra, a6, 19
                  srai         t6, sp, 1
                  slt          ra, s8, s6
                  lui          a6, 319267
                  and          s1, s7, zero
                  srl          s11, s4, tp
                  lui          t4, 474656
                  sltiu        t2, s0, 932
                  srai         s2, a0, 16
                  sll          a1, a6, s11
                  sub          a4, s6, s9
                  sltu         s11, a0, s2
                  srai         tp, s9, 23
                  add          s0, s9, a0
                  nop
                  sub          a7, s11, s3
                  lui          a4, 124037
                  and          s10, t1, gp
                  ori          t2, tp, -1649
                  addi         tp, a2, -495
                  auipc        s3, 663786
                  slli         a7, s10, 7
                  addi         sp, s2, 1037
                  srai         ra, s1, 23
                  nop
                  sll          s4, a2, t0
                  xor          t1, ra, t2
                  sltu         sp, s7, s10
                  xor          t6, t6, t2
                  and          s7, t1, sp
                  or           s0, s10, t6
                  srli         gp, a2, 24
                  srli         s9, s6, 30
                  sltu         s11, t1, a6
                  slt          a4, t1, tp
                  lui          a1, 784807
                  sltu         s2, tp, ra
                  srai         t6, sp, 30
                  xori         s8, zero, 143
                  slt          a6, s7, t2
                  sra          s9, t1, a7
                  sltiu        t1, s0, -895
                  or           t6, s8, t5
                  xori         tp, t1, 1388
                  srai         s8, a6, 1
                  sll          t4, s2, s4
                  ori          a2, tp, -2
                  sll          s10, s0, t5
                  auipc        tp, 484069
                  add          s2, s9, s7
                  slti         s2, s4, 848
                  andi         s3, zero, 590
                  lui          s5, 843174
                  slt          s3, a5, s11
                  xor          gp, s3, t1
                  sub          a1, a3, gp
                  srai         s8, sp, 25
                  xori         a0, t3, 933
                  srai         s2, s6, 5
                  auipc        zero, 591957
                  xori         t2, t2, 167
                  sra          s0, s1, a7
                  andi         a2, s8, -198
                  and          ra, a5, a1
                  add          t5, s7, a2
                  or           s2, t3, ra
                  slt          s11, a4, sp
                  sra          a2, a0, a1
                  and          s9, s0, a7
                  slti         a5, a2, 617
                  xori         a6, s6, -745
                  ori          a5, t5, 723
                  sltiu        zero, a7, 1891
                  andi         a0, a7, 77
                  or           s2, ra, ra
                  xori         s5, zero, -437
                  slt          a4, a2, a7
                  xor          t6, t5, ra
                  slt          s9, t1, s10
                  nop
                  sltu         a0, s3, tp
                  srl          s8, s8, t6
                  sltu         t6, s4, a7
                  sltiu        sp, t6, -85
                  slt          tp, a5, s9
                  srl          s1, a1, a5
                  slti         s1, s7, 506
                  and          s11, a3, a3
                  xor          t4, t4, t3
                  sra          s0, a1, tp
                  sll          s9, a3, s7
                  slt          s7, a4, a5
                  sltu         s10, t2, s3
                  lui          zero, 674179
                  sub          s4, s3, t3
                  add          a2, t0, t4
                  lui          t1, 700859
                  srli         s8, t2, 7
                  srli         t1, s1, 4
                  xor          s3, a0, s1
                  sltiu        t5, s10, 515
                  slli         t5, t5, 2
                  sra          zero, s4, s11
                  slt          a0, t2, sp
                  srli         t6, sp, 11
                  xori         a4, a5, 876
                  srli         t1, a2, 7
                  slli         tp, t2, 6
                  srai         a6, t5, 15
                  or           s0, zero, t5
                  srl          a0, s2, tp
                  srli         a6, zero, 17
                  or           zero, t2, s7
                  slti         ra, a1, 210
                  slli         s0, s1, 16
                  sll          a5, a3, s1
                  add          t2, s3, s5
                  srai         sp, tp, 12
                  sltiu        a6, t6, 1512
                  sra          a0, s2, a2
                  slti         t6, a2, 881
                  srl          s7, a6, s8
                  andi         s8, a0, -487
                  nop
                  slti         s9, t3, 922
                  add          zero, a5, t5
                  ori          a1, s0, -1300
                  sltu         a4, s7, ra
                  sltu         s10, a2, a0
                  ori          s8, s10, -27
                  slt          s3, ra, s1
                  and          s4, a0, a5
                  slt          zero, s11, s10
                  sltiu        s6, s10, -1115
                  and          a5, a2, sp
                  andi         s1, s0, -840
                  or           t5, s8, a0
                  slt          t4, t3, s8
                  sub          a2, zero, t4
                  sltu         s3, t6, t5
                  sra          s9, s2, a1
                  auipc        s7, 1043918
                  sltu         s9, a3, a5
                  sra          s8, a3, sp
                  slti         s7, s1, 1957
                  and          s1, s2, a7
                  sra          s3, zero, s1
                  slti         a0, a4, -1468
                  add          s6, s9, s10
                  srli         s7, s11, 14
                  sra          sp, t4, a3
                  sltu         t4, a4, s9
                  ori          a6, tp, 1821
                  xori         t4, s5, 715
                  or           a6, t2, gp
                  addi         a5, a3, -1541
                  lui          t4, 449723
                  andi         s6, t0, 462
                  slt          zero, s10, t1
                  srai         t6, s2, 29
                  xori         a6, s2, 1431
                  slti         a6, s8, -741
                  ori          s7, t4, -1940
                  srl          s7, gp, ra
                  sltiu        a4, t6, 98
                  or           t4, s8, sp
                  xori         s10, a2, -1949
                  sltiu        s1, a3, -2037
                  ori          a6, t5, -1167
                  andi         s9, t5, -130
                  slt          t4, sp, a2
                  slt          t6, zero, gp
                  andi         s9, ra, 1376
                  add          a0, s5, s6
                  auipc        ra, 993632
                  xori         t2, a6, 846
                  addi         a7, s0, -467
                  sub          a5, zero, t5
                  sll          a0, t0, a0
                  addi         a4, a5, 605
                  srai         t1, a3, 2
                  and          s10, a5, t0
                  or           a7, a0, zero
                  sltu         a0, a1, s5
                  srai         t1, a0, 2
                  nop
                  andi         t6, zero, 1867
                  srli         s3, t6, 27
                  nop
                  sra          s0, s2, s9
                  ori          s8, s6, 253
                  andi         s8, s7, 1193
                  slli         tp, ra, 13
                  lui          s5, 639574
                  xor          s1, s9, a6
                  srl          s3, t5, t3
                  srl          a4, t0, s0
                  ori          t6, sp, 654
                  auipc        s3, 537474
                  xori         t2, t3, 1847
                  andi         t4, ra, -2008
                  ori          s2, s4, 769
                  xori         t5, a5, -548
                  slti         t4, s7, 736
                  sra          s11, a3, a5
                  srl          tp, s7, s11
                  slli         a1, s1, 27
                  sll          s8, s7, s1
                  and          t2, a7, s6
                  lui          gp, 808095
                  ori          s1, s8, 1547
                  add          s9, t5, ra
                  sltu         s10, s10, a4
                  addi         s0, a3, 1846
                  srl          t6, s5, t5
                  auipc        t2, 864914
                  srl          s6, s7, ra
                  slt          gp, sp, a5
                  lui          a4, 138505
                  slt          s10, s11, t2
                  ori          a1, a5, -1184
                  slti         s0, sp, 1204
                  and          s8, t0, a1
                  srli         s6, s10, 15
                  addi         a7, tp, 1967
                  xori         t6, ra, -2005
                  andi         ra, a7, -321
                  srai         s7, s7, 21
                  xor          a5, t1, s6
                  slti         t1, s8, -1335
                  sltiu        t5, t0, 1854
                  nop
                  add          s7, ra, s6
                  srl          a5, s7, t5
                  sra          zero, s4, t5
                  srai         a1, sp, 4
                  slti         s5, s0, -1880
                  addi         sp, a1, -1055
                  auipc        a7, 391004
                  slt          s8, zero, a3
                  nop
                  sltiu        t1, s10, -1453
                  slt          s7, a4, a4
                  srai         s8, s4, 20
                  sub          s5, t5, t2
                  or           zero, t4, s2
                  sltiu        s2, ra, 672
                  nop
                  slli         a5, t0, 6
                  or           zero, a2, t5
                  ori          a7, a0, -1035
                  slt          ra, s3, s10
                  nop
                  or           a7, s11, s10
                  sub          s3, t2, a5
                  slli         a5, tp, 29
                  xori         a1, t5, 1477
                  and          a1, s3, s8
                  xori         a5, s8, -1825
                  sltiu        s5, s0, -1605
                  and          s1, s0, sp
                  sll          t6, t4, sp
                  sra          t2, s10, s10
                  addi         gp, s2, -854
                  auipc        s7, 170030
                  srli         t1, s5, 17
                  sltu         tp, s5, zero
                  sub          t5, s2, a6
                  nop
                  xor          t1, s5, s1
                  srl          s2, t5, t2
                  sltiu        s6, s0, 76
                  andi         t1, ra, -1242
                  srli         a6, s3, 9
                  sltiu        t5, s4, -567
                  slt          t6, a3, s7
                  sll          tp, s3, a2
                  or           s7, s1, s8
                  slt          t4, a0, a2
                  nop
                  lui          s5, 604443
                  li           s11, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           a5, 0x80000000
                  li           a0, 0x0
                  li           a2, 0x80000000
                  li           s9, 0x80000000
                  li           a6, 0xffffffff
                  li           s5, 0x0
                  li           t4, 0x0
                  li           a7, 0xb37c7acb
                  li           tp, 0xffffffff
                  nop
                  sub          a5, s11, a7
                  add          a2, a7, s5
                  nop
                  addi         a6, a2, -1025
                  add          a6, a7, a6
                  auipc        a7, 9813
                  addi         t4, s11, 1941
                  add          t4, a7, s5
                  lui          s11, 30396
                  sub          a7, a2, s11
                  lui          t4, 511800
                  addi         t4, s9, 948
                  sub          s11, s9, s11
                  sub          a7, a7, a6
                  lui          a5, 120985
                  add          s11, a7, a2
                  add          tp, s9, s5
                  sub          a2, s5, a0
                  lui          a2, 851684 #end riscv_int_numeric_corner_stream_6
                  and          tp, t1, t4
                  and          a0, s6, tp
                  srai         zero, gp, 27
                  xor          t4, t3, a6
                  andi         s3, a3, 647
                  auipc        t5, 972669
                  sub          s4, a5, tp
                  nop
                  and          a4, tp, a1
                  ori          a2, a4, -694
                  addi         a7, t3, 1447
                  srai         t6, s4, 3
                  slli         s4, s2, 16
                  and          s8, t5, s4
                  addi         a0, s2, -1182
                  slti         s8, sp, 913
                  sub          s0, s0, t3
                  srai         t1, t1, 24
                  slti         s1, t0, 1318
                  slti         s6, s2, 960
                  auipc        sp, 819333
                  ori          ra, s9, 467
                  andi         s4, a7, -1394
                  add          t6, t6, s3
                  sub          t1, s3, s3
                  add          a4, s9, s1
                  xori         t4, a7, 898
                  nop
                  and          t4, tp, s2
                  sltu         t4, s10, tp
                  xor          sp, tp, tp
                  and          t1, a7, a7
                  sra          a6, t0, s0
                  nop
                  sltiu        s0, a2, 1776
                  and          tp, s10, gp
                  ori          a1, s2, -836
                  sll          t5, t1, s3
                  sltiu        t5, a5, -31
                  addi         a0, a7, -1340
                  slt          a1, a6, t1
                  addi         s6, s6, 493
                  andi         gp, s2, -1577
                  sra          s5, a4, t3
                  slt          t6, a5, s4
                  srai         s9, s5, 23
                  sltiu        t2, t2, 337
                  slti         s2, zero, -1611
                  sltu         s9, s5, s2
                  slt          t4, t1, s7
                  sra          s6, t0, a7
                  slt          t5, a6, s8
                  sltiu        s8, gp, -1825
                  auipc        a6, 777022
                  ori          t1, t4, 998
                  sltiu        zero, s5, 1730
                  srli         s7, a0, 12
                  xori         a2, a2, 1960
                  slti         s5, a7, 650
                  lui          sp, 553103
                  xori         s4, a0, -1461
                  add          a4, s7, a3
                  slli         a1, a3, 1
                  sra          s7, s0, s9
                  auipc        s7, 20650
                  xori         a5, s5, -2005
                  or           s3, t1, s6
                  andi         zero, t3, 1085
                  xori         s4, s3, -511
                  slt          a0, t1, sp
                  slt          a1, s6, s11
                  addi         s8, s10, 562
                  sub          s3, a6, s1
                  or           s8, a4, s7
                  auipc        a7, 917428
                  and          ra, a0, s7
                  xor          s5, s5, gp
                  slti         a6, t5, 147
                  sltiu        t5, sp, 1315
                  sltiu        a7, s0, -1976
                  slli         s11, gp, 9
                  or           s4, s4, a3
                  andi         s0, t1, -139
                  or           t4, a6, t6
                  xori         s10, s11, 102
                  lui          a0, 839382
                  sltu         s1, t6, t6
                  add          gp, a1, a3
                  slt          sp, zero, s11
                  xori         a1, t6, -730
                  sub          t6, a5, sp
                  srl          a6, s9, s3
                  srli         gp, s5, 1
                  and          zero, s2, ra
                  xor          t1, a0, sp
                  sll          a1, ra, t3
                  sltiu        gp, a5, 1894
                  add          a5, a5, s0
                  sra          s10, a5, s4
                  sltiu        t1, s0, 1140
                  xori         a4, s11, -1468
                  sra          ra, a3, s6
                  srl          s5, s8, sp
                  andi         a2, a2, 585
                  sra          t2, s2, s2
                  slli         s4, a3, 2
                  srli         a7, a6, 0
                  sll          t6, a4, a4
                  srli         ra, t0, 22
                  andi         a4, s7, 540
                  sll          t1, s1, s10
                  slti         s8, s1, 1779
                  sll          s6, zero, a3
                  sltiu        a0, t4, 506
                  ori          sp, a0, -624
                  nop
                  ori          t6, s5, -10
                  sub          s5, a2, s7
                  lui          s9, 883148
                  auipc        tp, 649865
                  srai         t1, a1, 13
                  slt          t5, a0, s1
                  and          sp, ra, a6
                  auipc        a5, 532139
                  sll          s9, t6, a0
                  ori          s11, s2, 917
                  slt          t6, a6, t1
                  srai         s7, s7, 30
                  auipc        s6, 622074
                  srai         a2, a5, 5
                  sub          a7, s6, a3
                  sra          a5, s7, s2
                  or           sp, a2, s0
                  lui          gp, 407021
                  and          a4, t1, t6
                  auipc        a2, 773406
                  auipc        ra, 14620
                  add          s6, s4, a7
                  srl          s11, gp, s4
                  srl          a2, t5, a5
                  and          s10, s5, t6
                  xori         a6, s5, -675
                  srai         a4, t6, 24
                  slti         s6, a5, -1242
                  ori          s5, a4, -1543
                  srli         a5, s4, 29
                  srai         s8, a6, 29
                  srl          a6, t2, gp
                  and          t4, t2, s1
                  sra          s5, s2, s6
                  ori          a4, a2, 2008
                  xor          t6, tp, zero
                  slli         a0, sp, 22
                  srl          a7, a6, a1
                  srai         a4, s5, 25
                  xor          s9, a0, t6
                  addi         s10, a1, 607
                  addi         s4, a4, -1438
                  auipc        s10, 305795
                  srli         s3, gp, 29
                  xori         s8, a2, 427
                  sub          s7, s11, a0
                  srli         s4, ra, 30
                  slt          s7, s11, t4
                  xori         t6, a6, 515
                  sub          s4, s7, t6
                  slt          s7, s2, s6
                  xor          s2, s2, tp
                  nop
                  sltiu        s9, a1, 1505
                  slli         gp, t0, 24
                  xori         s0, s2, -634
                  srl          a4, t4, t3
                  slt          s0, gp, a0
                  srli         s2, a5, 24
                  addi         s4, s5, -1834
                  slti         zero, a6, -585
                  slti         ra, s2, -1446
                  slt          a6, zero, a1
                  slti         sp, t4, 1694
                  lui          zero, 691272
                  addi         s11, s7, 1713
                  ori          a4, s3, 1297
                  andi         a4, t4, 603
                  or           sp, t5, s9
                  lui          a7, 135866
                  slt          ra, t6, s2
                  sltu         s4, s7, s0
                  addi         gp, t4, 867
                  slli         gp, s11, 0
                  and          sp, t4, s0
                  sltu         a5, s6, a0
                  slt          s9, s9, s1
                  and          a5, a2, t6
                  ori          s5, t6, 784
                  sub          s1, a2, gp
                  sub          a7, t5, a5
                  sra          s8, s0, s11
                  xor          t5, t0, t6
                  addi         a4, tp, 1248
                  slti         s6, s8, -1915
                  sll          a1, t3, t5
                  auipc        a7, 807188
                  or           a7, s0, t6
                  srl          zero, s8, s4
                  sll          gp, s5, t3
                  xori         s5, s11, 1686
                  srai         sp, sp, 15
                  sub          s0, s8, a6
                  xori         a1, s2, -1992
                  sub          s7, s7, sp
                  slti         a1, s1, -1879
                  sltu         s0, tp, t2
                  slti         t5, ra, -465
                  add          t5, s1, zero
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_10
                  li           a7, 0x80000000
                  li           s10, 0x8ab820e8
                  li           s2, 0xffffffff
                  li           t1, 0xffffffff
                  li           s5, 0x48ac1ec2
                  li           a5, 0x0
                  li           ra, 0x80000000
                  li           s7, 0xffffffff
                  li           a6, 0x96b2c5c2
                  auipc        s0, 707141
                  nop
                  sub          s7, s10, s5
                  addi         a6, a7, 1803
                  nop
                  addi         a7, t1, 785
                  addi         s10, ra, -1032
                  add          s7, s7, s10
                  lui          s10, 598551
                  auipc        s10, 723691
                  lui          ra, 725087
                  addi         a7, a6, 637
                  nop
                  add          s5, s2, s7
                  lui          a6, 22090
                  sub          s10, a6, t1
                  nop
                  auipc        s5, 332437
                  sub          t1, s5, s10
                  addi         a5, t1, 959
                  add          s7, t1, s5
                  addi         s7, s7, 1103 #end riscv_int_numeric_corner_stream_10
                  nop
                  add          a7, t0, s10
                  and          a6, s2, a3
                  or           t4, s8, s11
                  sub          s1, a6, s10
                  srai         a0, a3, 7
                  ori          a1, s5, -80
                  sltiu        s10, a5, 690
                  ori          s6, sp, -1631
                  sub          t2, a6, s3
                  auipc        s0, 889331
                  and          s11, sp, s9
                  sltiu        s0, a0, 2021
                  nop
                  add          t5, sp, s2
                  addi         s5, s9, -1107
                  lui          tp, 417041
                  or           ra, s4, s1
                  xor          s7, s4, a5
                  auipc        t2, 269081
                  sra          a7, t6, t6
                  nop
                  srl          s9, a3, ra
                  ori          a7, s3, 1270
                  addi         t2, a0, -1245
                  sub          a7, t4, s11
                  srai         s0, t3, 4
                  lui          s11, 323374
                  xori         a5, s3, 1176
                  sub          gp, t1, s11
                  sltiu        t4, s6, 212
                  slli         t6, s6, 25
                  sltu         s3, t3, a6
                  lui          s2, 890706
                  add          tp, a6, t4
                  addi         a1, t4, -223
                  sll          sp, a1, s11
                  slt          zero, ra, s7
                  auipc        s0, 867432
                  xori         t6, s6, 1101
                  slt          s4, a3, t5
                  slt          a6, a4, s7
                  ori          s4, gp, 675
                  addi         t2, s8, -1051
                  nop
                  sra          a4, a5, s1
                  and          a4, s10, t4
                  addi         s10, a3, -425
                  srl          a4, a6, t5
                  sltu         zero, s10, s0
                  andi         ra, s11, -894
                  xori         s0, sp, -405
                  addi         s7, s1, -1538
                  add          t5, s6, t5
                  xor          a0, s9, a2
                  xori         sp, s6, 1261
                  srai         sp, s10, 2
                  add          sp, a1, a4
                  nop
                  srli         a2, a1, 22
                  sra          t6, sp, a6
                  srl          a0, s3, t4
                  lui          s10, 290297
                  slti         s8, s8, 1904
                  nop
                  and          s3, s0, s6
                  slti         s4, ra, -705
                  ori          a1, t0, -1494
                  ori          a7, t2, -241
                  xor          ra, s4, t4
                  or           a7, a7, s0
                  sltu         s9, s5, s3
                  add          a1, s8, s11
                  slt          t2, a0, a2
                  addi         a1, s6, 628
                  sra          s4, a2, a4
                  sll          s10, s2, s10
                  nop
                  add          zero, a4, s5
                  andi         s2, gp, -1818
                  andi         tp, a7, 1818
                  andi         s5, gp, -1053
                  ori          s6, s0, -1065
                  addi         s2, a7, 454
                  nop
                  or           a4, s5, ra
                  xor          t4, a1, ra
                  nop
                  slti         a5, zero, 1646
                  and          s5, t4, a1
                  sub          s10, a3, t1
                  lui          a5, 648636
                  lui          s10, 853269
                  add          zero, s0, t0
                  slli         ra, s8, 11
                  ori          s5, t3, 1315
                  slli         s2, a6, 21
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           sp, 0xffffffff
                  li           a0, 0xffffffff
                  li           a5, 0x0
                  li           s7, 0xa5c1fa30
                  li           a1, 0x384a7990
                  li           s9, 0x0
                  li           t1, 0xffffffff
                  li           s1, 0xffffffff
                  li           s11, 0xf742b030
                  addi         a1, s11, -152
                  addi         s2, s7, 1564
                  auipc        sp, 173009
                  lui          t1, 461004
                  addi         a1, s1, 482
                  lui          s1, 601216
                  addi         a5, sp, 842
                  addi         a1, s1, 1303
                  sub          a1, s7, s1
                  sub          s7, s7, a0
                  auipc        a0, 464912
                  nop
                  sub          a1, a5, s2
                  auipc        s2, 689312
                  auipc        s11, 38530 #end riscv_int_numeric_corner_stream_12
                  xori         s4, s4, 1542
                  add          s11, t2, t6
                  lui          s8, 52379
                  srli         t5, a2, 3
                  sub          a6, t5, zero
                  xori         s7, a1, -1076
                  ori          tp, a7, 1826
                  and          s2, ra, t2
                  ori          s9, t3, -115
                  auipc        s6, 207946
                  xori         t4, t1, -2042
                  lui          s3, 932264
                  sll          s3, a2, a1
                  auipc        a7, 970284
                  srli         sp, a6, 10
                  sra          t4, a1, s4
                  xori         t6, t3, 1387
                  slt          s8, a3, t1
                  and          t2, s1, t1
                  auipc        s5, 925933
                  auipc        tp, 744013
                  sub          a0, a3, a5
                  ori          s6, s3, -929
                  and          s6, sp, s3
                  srli         a5, s5, 29
                  or           t5, s1, a0
                  and          t4, t0, t1
                  slli         a5, t4, 30
                  slt          s3, t0, a3
                  xori         s4, t4, 1744
                  slti         gp, a1, 1936
                  srl          a1, s0, sp
                  andi         s2, s5, 1802
                  nop
                  slli         a7, a0, 21
                  or           a7, a4, a7
                  slt          t5, s10, s6
                  sra          s9, t1, a6
                  or           s8, a2, s7
                  nop
                  slti         s10, s10, -1090
                  sltiu        s8, a4, 2010
                  slti         a1, s5, 2043
                  srli         s3, gp, 22
                  and          t4, s1, s6
                  sra          t6, t4, a6
                  and          s6, a5, a2
                  srl          gp, s2, a5
                  sra          s7, s1, t2
                  sltu         s2, a2, t4
                  sltiu        a2, s1, -143
                  ori          zero, tp, -1816
                  lui          s9, 133203
                  addi         a6, ra, -1943
                  slli         tp, a5, 27
                  srai         s11, t2, 31
                  sltu         a2, s8, ra
                  and          s9, s8, t1
                  ori          tp, ra, -733
                  srli         s7, t5, 13
                  add          s5, a4, s1
                  auipc        s7, 176001
                  sra          t5, t4, t1
                  srl          t2, s6, s11
                  sll          t2, a1, a6
                  sltiu        t2, t6, 1086
                  addi         t5, tp, -602
                  addi         a0, sp, 55
                  srl          t1, s8, t5
                  lui          s3, 87300
                  and          sp, s4, a7
                  sub          sp, t2, a7
                  sub          ra, s11, gp
                  lui          s6, 118833
                  nop
                  slli         a4, s8, 22
                  slli         s7, a6, 15
                  auipc        a5, 472567
                  addi         s4, a7, -598
                  srl          tp, sp, t1
                  or           s2, t3, s5
                  slti         s6, a0, 878
                  auipc        ra, 30632
                  andi         a0, a6, 1684
                  andi         t5, s8, 906
                  srai         a0, s0, 9
                  sltiu        a6, t3, 1049
                  slti         s6, t6, 1517
                  xori         s9, t0, -1455
                  slli         s3, s6, 9
                  sra          a6, s5, s7
                  andi         gp, a2, 254
                  xori         s1, tp, -606
                  srl          s11, sp, a0
                  sra          s4, s6, zero
                  ori          s5, zero, 1852
                  slt          a1, t3, tp
                  srli         a1, a4, 16
                  or           gp, sp, a1
                  slli         ra, s1, 13
                  andi         s6, t2, 85
                  srli         s4, s10, 9
                  sltu         s4, a3, s8
                  sll          a4, t3, a5
                  slti         t6, t0, -463
                  slti         s6, sp, 1189
                  xor          zero, t6, s1
                  slli         s7, s3, 8
                  slli         s7, s6, 7
                  ori          a6, tp, -1195
                  sra          gp, s10, sp
                  nop
                  slli         s7, s6, 17
                  slti         a6, t3, -857
                  srai         s5, t6, 2
                  srli         ra, t6, 9
                  addi         s5, t3, 1651
                  slt          sp, t6, a0
                  slti         s10, a1, 1516
                  srl          s7, s0, t6
                  add          a6, s2, a1
                  sra          a5, t6, a6
                  srl          a4, t6, a2
                  sra          t1, t5, s8
                  or           t6, a0, s0
                  slt          s9, zero, s1
                  srl          a4, a4, s0
                  andi         t2, a6, 1346
                  sll          s8, a1, a1
                  sll          s1, a6, a4
                  slli         t2, tp, 8
                  sra          t6, t1, s5
                  lui          s8, 958396
                  andi         a7, tp, 1744
                  srli         a6, t5, 9
                  andi         s10, tp, -414
                  lui          s5, 615855
                  srai         a6, a7, 25
                  xor          s9, s11, a3
                  ori          s6, t4, -266
                  slli         s5, s6, 27
                  sub          t1, s2, t0
                  sll          a1, a7, a4
                  sra          a4, gp, s7
                  andi         s2, s1, -2014
                  srai         s4, s1, 0
                  or           s10, s6, t6
                  add          t6, zero, s2
                  xori         s0, a1, 149
                  slt          a7, tp, a0
                  addi         s10, a4, -617
                  slli         gp, s5, 23
                  ori          s7, ra, -1234
                  srai         s1, zero, 17
                  auipc        a5, 398440
                  slli         ra, t5, 1
                  srai         a2, s5, 0
                  slli         s1, t5, 31
                  srai         s9, t2, 2
                  ori          s11, t6, 889
                  sub          s1, gp, gp
                  lui          s9, 57519
                  slt          a5, a4, tp
                  srai         a6, a5, 15
                  slli         a7, s8, 15
                  slt          t5, a1, s7
                  lui          s9, 233049
                  slli         s2, t3, 31
                  srl          a6, s5, t1
                  nop
                  xori         a0, s7, -625
                  lui          s8, 290206
                  add          s5, t0, s5
                  srai         s10, s10, 15
                  sltiu        a4, a1, 1584
                  add          gp, s9, s5
                  slt          t4, gp, t2
                  sub          a7, s1, s0
                  ori          t6, s3, 1900
                  slt          sp, s0, s7
                  srl          ra, a7, s6
                  andi         a2, sp, -826
                  sub          tp, a2, a1
                  srai         a7, t4, 3
                  auipc        t2, 978135
                  add          t5, t4, s4
                  ori          t6, s6, 1643
                  ori          a4, t1, 679
                  sltiu        s9, a0, -940
                  slli         t1, s7, 23
                  addi         t1, s3, 199
                  srli         zero, a5, 0
                  sll          sp, s0, a1
                  srl          a0, t0, t0
                  sll          t1, zero, s4
                  and          s4, s11, s9
                  xori         a7, s11, -1208
                  sub          t2, a6, s1
                  nop
                  addi         s8, s4, -558
                  ori          a6, s11, 1953
                  and          s5, s9, t4
                  nop
                  xor          s8, tp, a5
                  add          a2, t4, gp
                  nop
                  xori         s7, a2, 1308
                  add          s1, s1, s2
                  addi         a5, s1, 483
                  auipc        s6, 513617
                  ori          s4, zero, -283
                  sub          a7, a0, gp
                  lui          a5, 815106
                  srai         a5, s8, 28
                  xor          a7, t5, t0
                  sra          a0, s1, s3
                  and          s2, tp, s7
                  sltiu        t6, t6, -1287
                  sltu         s6, a6, s2
                  sub          t4, s2, t4
                  srai         s9, s1, 18
                  andi         s6, gp, -144
                  slti         sp, t2, 412
                  slti         sp, s2, -1382
                  xori         s2, gp, -1942
                  add          s1, t2, t2
                  xori         s10, zero, -855
                  addi         s7, a2, 1551
                  xor          s1, t6, zero
                  srli         a5, s4, 9
                  add          a0, zero, a5
                  sub          s5, t3, s5
                  ori          s2, ra, 251
                  lui          s6, 735814
                  andi         t5, s0, -905
                  xor          a5, t3, a1
                  sub          a5, s6, a5
                  lui          s8, 895710
                  sra          s5, s5, t2
                  srl          zero, a2, a7
                  add          ra, s3, s11
                  sra          ra, zero, s11
                  slli         a1, a0, 24
                  ori          a4, s11, -1729
                  auipc        a6, 313389
                  slti         s4, s4, 1073
                  ori          s10, t1, 1987
                  addi         zero, t3, 582
                  xori         a1, t2, 1925
                  srli         gp, t4, 5
                  xori         t4, s11, 330
                  srli         t1, s2, 3
                  or           a0, t0, t0
                  slti         s6, t1, 1082
                  auipc        a7, 790255
                  sll          s11, s4, a0
                  slti         tp, t0, 1661
                  addi         a4, t1, -804
                  sltiu        t6, a2, -134
                  and          a6, s8, t4
                  slli         s5, s1, 13
                  add          a1, gp, s9
                  srli         ra, s0, 1
                  xor          t5, t4, a4
                  srai         s10, s4, 20
                  sub          s3, s5, t0
                  sll          ra, s3, t6
                  ori          a6, a4, -1746
                  lui          a7, 977075
                  xor          a2, s8, s1
                  nop
                  lui          zero, 273506
                  or           a7, a1, s3
                  ori          s2, a4, 1448
                  sltiu        t4, zero, 1711
                  slli         ra, s1, 0
                  or           a4, s10, t3
                  slt          a1, s2, s1
                  andi         s10, t4, 1760
                  sltiu        a7, sp, -474
                  slti         t5, s3, -465
                  andi         ra, zero, -210
                  sltu         t2, tp, s5
                  slli         a0, t5, 17
                  srli         t4, s2, 23
                  slti         s8, t5, -1504
                  srai         t2, zero, 7
                  slti         t5, t5, 21
                  slti         t5, s11, 1142
                  srai         t6, t2, 25
                  or           s7, s11, s9
                  slti         zero, s4, -1652
                  sltu         t1, s3, t3
                  sll          a1, t2, a5
                  addi         t6, gp, 1081
                  xori         s5, t0, 128
                  ori          a0, a2, 1148
                  auipc        a1, 212378
                  add          a1, tp, a0
                  sra          s4, a6, ra
                  sll          a1, s7, s2
                  sub          gp, t4, s10
                  sra          t5, s5, s5
                  srl          a5, s0, t5
                  slli         s11, s11, 24
                  andi         s4, s9, -528
                  xori         a0, a3, 658
                  xor          ra, a7, s9
                  and          a4, s1, s1
                  addi         t5, s4, 1541
                  andi         s11, t0, -1812
                  auipc        s1, 966025
                  andi         zero, t5, 574
                  sltu         s0, t2, s3
                  sltiu        s5, s6, -1234
                  and          s9, t5, s11
                  slt          a2, s1, s2
                  nop
                  ori          a0, s6, 1027
                  auipc        s0, 455798
                  addi         t2, t0, -1326
                  and          a5, a2, a3
                  addi         a4, a0, 2039
                  slt          a5, s5, ra
                  or           a5, t2, s11
                  sub          s8, t6, s1
                  srl          gp, a2, s7
                  sll          a2, s5, t0
                  sll          s6, a7, tp
                  slt          s0, a5, t2
                  srl          s2, ra, s8
                  slt          s0, s7, t1
                  nop
                  sll          a6, t0, t2
                  slt          sp, s10, gp
                  or           s5, s0, t4
                  srai         a4, s0, 9
                  sltiu        s4, s8, 1078
                  srl          t6, a5, a4
                  slti         s7, a2, -1146
                  auipc        s8, 1033180
                  srl          a4, a1, a5
                  sra          sp, s11, s8
                  sll          a2, t6, t0
                  or           s9, s1, gp
                  auipc        s0, 810512
                  addi         zero, zero, 278
                  nop
                  and          a2, a2, s9
                  sra          a2, s7, t6
                  slti         t6, sp, -1796
                  addi         s10, a4, 782
                  and          s10, a2, t3
                  slti         s8, s7, 1862
                  lui          s9, 734457
                  srai         zero, t0, 17
                  xori         gp, a0, -1060
                  sltiu        a4, s10, -1091
                  auipc        gp, 324642
                  lui          t1, 172848
                  add          s10, t2, s5
                  sra          zero, t3, s6
                  srai         a0, a5, 2
                  ori          a6, a7, -934
                  or           s11, s1, s3
                  slli         t2, zero, 9
                  sll          sp, a4, t6
                  and          a1, a2, s9
                  sra          s2, zero, t1
                  lui          ra, 960814
                  or           s5, t0, s11
                  srli         t5, s10, 13
                  srli         a6, s3, 14
                  ori          t6, t5, -1838
                  add          a0, ra, a0
                  srl          gp, sp, a4
                  slt          t6, a1, s0
                  xori         a7, t2, -1250
                  slt          s0, t4, t6
                  slti         a0, t6, -1810
                  xori         t6, gp, -624
                  or           gp, s3, s4
                  slti         a2, a6, 696
                  xori         s4, sp, 1175
                  addi         t2, ra, 499
                  addi         s11, s9, 528
                  or           t6, s7, a0
                  srl          s4, s10, a7
                  nop
                  and          t6, t5, t3
                  or           s6, t6, t4
                  sltiu        t6, a7, 969
                  andi         s5, a0, -1683
                  andi         s7, zero, -285
                  sltu         sp, a1, t0
                  nop
                  andi         s1, s2, 904
                  srai         ra, t5, 5
                  sra          a1, a7, s8
                  slt          a1, t5, zero
                  addi         t5, a2, -1028
                  add          s0, s8, a3
                  sltiu        a5, t4, -874
                  sltu         t1, s10, s4
                  lui          a5, 689645
                  lui          s8, 252258
                  slt          a7, zero, s7
                  sltiu        s6, s5, 355
                  ori          a7, t1, 1000
                  addi         s1, a7, -880
                  or           a7, sp, s4
                  srl          s1, s1, s10
                  add          s0, t6, s8
                  add          s2, t2, a0
                  sra          tp, s5, zero
                  andi         ra, a6, 844
                  andi         a1, zero, -646
                  andi         a0, ra, 1367
                  lui          gp, 705547
                  xor          a7, s2, t6
                  lui          s4, 743443
                  xor          a2, s4, t6
                  sll          s11, s1, t4
                  nop
                  andi         a6, a1, -1930
                  xori         tp, a2, -376
                  add          a0, a7, t5
                  sub          s11, gp, s8
                  xori         s9, s5, 836
                  xor          ra, s0, tp
                  andi         s6, s4, -1380
                  sll          s1, t2, a0
                  andi         t1, a6, -1946
                  addi         s0, t4, -1458
                  add          s10, sp, t0
                  nop
                  srl          s10, t0, s5
                  slt          s8, t5, s10
                  sltiu        a5, a7, 992
                  sra          a0, sp, s8
                  addi         t5, s6, 644
                  xori         s9, s2, -754
                  sltu         t5, gp, a0
                  xori         s10, s8, -1058
                  slt          s8, s3, t0
                  addi         t5, t4, -1906
                  auipc        s4, 1024935
                  srai         s2, t2, 9
                  sltiu        sp, a1, 1353
                  slti         a7, t4, -1402
                  sll          s8, a0, s6
                  auipc        s9, 766227
                  srl          ra, a5, s0
                  and          s6, a2, a1
                  slt          s2, t1, s6
                  slti         t6, a5, 1986
                  sltu         s6, s2, s2
                  sll          s11, tp, s8
                  auipc        s8, 564001
                  sltiu        s3, zero, 1051
                  sub          t5, a5, s5
                  slli         s8, s0, 26
                  sra          s11, sp, s2
                  srai         s0, a0, 0
                  add          a4, ra, a6
                  sra          t1, sp, a5
                  sub          s1, t3, t2
                  nop
                  sltu         s5, s0, gp
                  ori          gp, s0, 2024
                  sltu         a0, sp, s6
                  lui          s4, 237559
                  sra          s1, t1, a1
                  slt          s7, s8, ra
                  add          gp, t4, a7
                  addi         t5, s2, -63
                  or           s2, t5, t1
                  sub          s1, t6, a7
                  ori          a1, a5, -1720
                  nop
                  slli         s1, t0, 4
                  ori          a6, t1, 469
                  andi         a4, tp, 838
                  nop
                  slt          a7, s6, a0
                  sll          s2, s4, a4
                  and          s5, a5, a3
                  xori         t6, t5, 647
                  and          sp, zero, s2
                  addi         s2, ra, -410
                  sub          s11, t4, a4
                  sltu         a7, s6, sp
                  addi         t4, s4, -1643
                  slli         s1, a5, 24
                  srai         s7, a1, 2
                  auipc        a4, 690417
                  sub          a4, s6, s11
                  or           s5, zero, s5
                  nop
                  sll          t2, a2, s1
                  srl          s8, s8, tp
                  slli         a2, a5, 4
                  srli         s4, s9, 23
                  auipc        s7, 464324
                  slt          t5, t6, a5
                  li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           a6, 0x80000000
                  li           s8, 0x80000000
                  li           sp, 0xffffffff
                  li           t5, 0xffffffff
                  li           a0, 0x2d232f17
                  li           a7, 0xe5811102
                  li           s9, 0x0
                  li           ra, 0x0
                  li           s7, 0x80000000
                  sub          a6, t4, t4
                  lui          a0, 229233
                  lui          a7, 264208
                  auipc        s9, 650704
                  sub          s7, t4, s7
                  nop
                  sub          s9, a6, t5
                  nop
                  nop
                  lui          s8, 818773
                  sub          t5, a6, sp
                  auipc        s9, 88512
                  addi         t5, sp, -684
                  add          t5, a7, s8
                  nop
                  lui          a7, 960006
                  lui          t5, 847574
                  nop
                  addi         sp, s7, 470
                  sub          a0, t4, a6
                  nop
                  sub          t5, s8, sp
                  addi         t4, s7, 1030
                  nop
                  addi         t4, ra, -177
                  sub          t5, a7, s7
                  sub          s9, a0, s8
                  sub          a0, a7, t5 #end riscv_int_numeric_corner_stream_16
                  sltu         s9, a6, s7
                  slli         s5, s0, 30
                  srl          a7, s3, a0
                  and          s2, s8, s2
                  xor          s6, s5, t6
                  or           t5, t2, s6
                  ori          t1, ra, -2024
                  addi         s6, s0, 1375
                  slti         sp, a7, 1740
                  srai         a2, t2, 30
                  sll          t6, zero, t5
                  sub          a1, s6, s3
                  addi         a7, a7, 847
                  auipc        s4, 609440
                  sub          s6, s6, s7
                  xori         s0, s0, -1026
                  auipc        s11, 619247
                  or           s8, a2, a6
                  srli         s3, s5, 15
                  sltiu        s2, t6, -1354
                  slli         s2, zero, 10
                  lui          t6, 897618
                  add          s7, a6, a6
                  slli         s4, a0, 16
                  xor          s10, a2, s3
                  sltiu        a6, t2, -448
                  sra          t4, t0, t1
                  or           gp, t4, sp
                  lui          s5, 903214
                  auipc        s6, 769930
                  ori          s9, t5, -609
                  xori         t5, s4, 127
                  ori          a1, t4, 911
                  slti         s3, a6, 48
                  add          a7, s6, sp
                  sub          t4, a1, a0
                  xori         s5, s6, 139
                  xori         s9, t3, 1671
                  srl          gp, t3, t0
                  sltiu        t6, ra, 1404
                  auipc        tp, 793924
                  addi         sp, ra, -1332
                  srl          tp, sp, s10
                  nop
                  slli         s0, sp, 1
                  sub          t5, s0, a2
                  or           a6, t2, gp
                  lui          s2, 782036
                  andi         s9, a0, -399
                  nop
                  slli         s5, tp, 31
                  and          s6, s0, t6
                  auipc        a6, 417786
                  sltiu        a7, a7, 158
                  slti         t6, s1, -431
                  sltiu        tp, t0, -449
                  nop
                  and          s10, s8, tp
                  sub          a1, a6, t5
                  and          ra, a5, a1
                  slti         s4, a6, 1619
                  ori          a7, s9, 1298
                  slli         s7, s0, 16
                  or           s1, tp, a5
                  srl          ra, t3, t4
                  xori         a5, t0, 1313
                  srai         s5, s7, 5
                  srli         t5, ra, 15
                  xori         a1, s11, 1413
                  sll          zero, a5, s2
                  slli         zero, s3, 10
                  slli         t2, t5, 15
                  xor          a4, a3, tp
                  sra          t2, t3, s1
                  sub          t4, s4, s8
                  srai         s5, t2, 6
                  ori          a0, s3, -1423
                  andi         t1, s9, 102
                  sub          a2, gp, s0
                  sltu         s1, sp, a3
                  sltu         zero, zero, t6
                  add          a1, a7, zero
                  sltu         a1, t4, a4
                  sltiu        a7, a7, -1147
                  or           s9, a1, zero
                  xori         s9, s6, -1179
                  sub          gp, s7, s6
                  srai         tp, s10, 2
                  slt          s2, t1, t0
                  sra          a2, a6, s0
                  auipc        gp, 515748
                  andi         t1, s8, 1977
                  srai         sp, sp, 23
                  nop
                  auipc        s7, 203863
                  lui          t1, 1012864
                  addi         a2, s5, 1401
                  slt          s1, s3, s0
                  slt          tp, sp, t6
                  and          zero, s9, a0
                  sra          tp, a2, t0
                  sltiu        a5, s0, -16
                  nop
                  xori         gp, t4, -1818
                  slt          a2, t5, ra
                  and          t6, a5, s9
                  or           s7, s2, sp
                  andi         a5, s10, 766
                  nop
                  srli         s0, t1, 16
                  nop
                  xori         s9, sp, -1830
                  sltiu        s10, s2, -1668
                  xor          s8, s2, a2
                  xori         sp, s10, -1636
                  sll          a7, t0, t5
                  slli         s10, s5, 4
                  sltu         s6, t3, a0
                  srl          s7, a6, t4
                  slti         a1, s6, -1797
                  sltu         t4, s10, s7
                  or           sp, tp, s11
                  or           sp, a2, a7
                  slli         a0, a3, 10
                  auipc        gp, 364890
                  sub          gp, s2, s5
                  ori          gp, t5, 1830
                  addi         s1, t3, -429
                  srai         t6, a2, 28
                  srai         gp, ra, 31
                  addi         t2, a7, 591
                  ori          t4, a1, -1899
                  lui          a0, 634246
                  xori         t6, s10, 862
                  addi         gp, a7, 1235
                  xori         s8, t0, -1226
                  slli         a0, t5, 0
                  xori         t4, s6, -1112
                  and          s2, a6, s9
                  slti         t2, a0, -115
                  ori          sp, s3, 1348
                  andi         t6, a5, 284
                  slti         zero, s3, 647
                  xor          t6, sp, t2
                  slti         a2, sp, 1201
                  andi         s2, s5, 641
                  auipc        s1, 365345
                  sub          a2, zero, a4
                  xori         sp, s4, 101
                  sub          s7, sp, a2
                  and          s7, t5, s5
                  or           t6, s4, sp
                  addi         a0, s9, -995
                  sra          s5, a0, s10
                  sub          s2, t4, sp
                  srli         a5, s11, 2
                  sra          s0, t5, t2
                  lui          s5, 289730
                  or           s1, s11, ra
                  and          s1, t3, s9
                  srai         ra, s11, 29
                  sra          s1, ra, t6
                  or           a0, a1, t6
                  xori         t6, a4, -1334
                  sltu         s3, t5, a4
                  srai         a0, a1, 9
                  slli         t2, a1, 9
                  srai         s9, s6, 5
                  and          sp, s4, a1
                  sll          s2, sp, t6
                  sltu         s7, s0, s3
                  or           s3, a7, s10
                  sub          s11, s11, s8
                  or           tp, s11, t0
                  xor          a7, a7, s8
                  ori          t4, t0, -1139
                  srai         a1, a1, 28
                  auipc        a2, 994835
                  sltu         a7, t1, a2
                  sll          a6, s0, t0
                  lui          ra, 395681
                  sll          t6, t5, t1
                  slt          s3, s7, t5
                  lui          a6, 1027327
                  sltiu        a1, a1, 19
                  andi         s2, s6, 1609
                  srai         a2, t1, 22
                  sub          t5, s3, a5
                  nop
                  slli         tp, tp, 9
                  sll          s10, a0, ra
                  slt          s9, s9, s4
                  add          t5, sp, a2
                  sltiu        a1, a7, -1570
                  andi         s7, t5, 496
                  srai         a6, a5, 11
                  sra          sp, s8, t2
                  nop
                  srli         t6, t2, 20
                  srl          a6, a6, s5
                  srl          a5, t6, t6
                  xori         ra, s10, 458
                  sll          ra, a6, a4
                  andi         t2, sp, -508
                  auipc        t1, 512754
                  and          zero, a4, a0
                  andi         a1, zero, 1964
                  srli         t2, s10, 8
                  slti         a6, s10, -826
                  xor          a0, a2, a2
                  srli         s10, a4, 15
                  or           s4, s10, a0
                  add          a7, t1, t1
                  or           s2, a6, s9
                  nop
                  andi         s7, a4, -1800
                  ori          s5, s3, -911
                  sra          s11, t5, s11
                  srai         a0, s6, 23
                  slti         t4, t1, -282
                  xori         s4, s4, 981
                  slt          sp, s1, s0
                  xori         t2, s3, 258
                  andi         s11, s5, 1636
                  and          tp, t5, gp
                  lui          t2, 1039283
                  addi         s8, a3, -1163
                  nop
                  sra          t2, a4, a4
                  srli         t1, a0, 4
                  ori          tp, sp, 1890
                  slli         a0, s4, 17
                  sltu         s6, s6, s2
                  sltiu        s7, s2, -1945
                  srl          s3, s6, a4
                  slt          a7, a0, a0
                  ori          t6, a2, -2041
                  srli         a5, t5, 26
                  srl          a1, gp, sp
                  slli         t6, t0, 24
                  auipc        s1, 1009191
                  and          t5, t4, a1
                  and          s0, a2, sp
                  slli         a6, s8, 4
                  ori          s2, a5, 1729
                  lui          zero, 258719
                  sra          s10, t2, s9
                  xori         s5, t0, -1038
                  sltiu        gp, gp, 1263
                  srai         a2, t6, 4
                  addi         a5, a6, -1218
                  xori         a7, a0, 1602
                  ori          a5, s2, -1692
                  srl          a4, a1, s11
                  add          t2, a0, s4
                  slt          s11, s10, tp
                  and          a5, sp, t4
                  xori         tp, a4, 1494
                  slti         a0, a0, -1697
                  sll          s10, s3, sp
                  srl          t1, a2, t4
                  xor          s3, s10, s10
                  auipc        s6, 1087
                  nop
                  sltu         t2, s9, t4
                  slti         s8, s9, -176
                  sltu         a2, ra, a6
                  sra          s2, t3, t5
                  add          s9, s8, a0
                  and          t4, gp, ra
                  add          s7, s1, s0
                  andi         a7, tp, -497
                  srli         a5, t4, 21
                  auipc        s10, 776120
                  sll          s0, s3, a4
                  ori          tp, s9, 1983
                  and          s5, s1, s5
                  sltiu        s9, tp, -999
                  slti         a6, s9, -478
                  srli         s3, s3, 29
                  xori         t4, t6, -1489
                  or           a4, zero, s2
                  slt          s4, t0, s7
                  srli         t1, s0, 14
                  ori          s1, tp, 1287
                  andi         t6, t3, 1507
                  add          a1, a0, tp
                  sltiu        a2, s8, 781
                  ori          s9, a3, -420
                  and          sp, ra, s2
                  sra          a0, a5, t3
                  sra          a5, t3, a4
                  sll          s2, t3, t4
                  andi         t5, a4, 402
                  slt          s8, t3, s5
                  xori         s8, a6, 1492
                  auipc        t4, 176676
                  xor          s5, s4, t5
                  ori          s5, s9, 1579
                  sub          a5, t3, a3
                  srli         gp, t6, 20
                  sll          a6, s9, t2
                  srl          s11, s3, s1
                  lui          s4, 907516
                  add          s7, s10, s3
                  sltiu        t5, s6, 1203
                  nop
                  sltiu        tp, s2, 1920
                  srl          s10, s1, t1
                  auipc        a7, 230537
                  slt          a7, ra, t5
                  srl          s7, a6, a5
                  lui          gp, 650762
                  sltiu        a0, s6, -782
                  xor          s11, gp, s3
                  sra          s5, s11, a0
                  auipc        a0, 584026
                  ori          a1, a5, 653
                  sltiu        a0, s1, 341
                  auipc        a7, 840940
                  nop
                  lui          t1, 756805
                  or           a4, ra, s5
                  sltiu        s3, s7, 928
                  sub          s9, s9, s5
                  slli         t1, t0, 7
                  xor          s0, s7, a2
                  or           t5, zero, a0
                  nop
                  srai         gp, gp, 14
                  xori         t1, a1, 939
                  sub          s8, s6, s1
                  xor          a1, a7, s0
                  lui          t6, 227292
                  srl          a0, a4, t1
                  slti         zero, a6, -1198
                  srl          t4, gp, a7
                  and          a0, ra, s0
                  sub          s8, a5, t4
                  sltiu        s3, s10, 1092
                  or           gp, s4, t2
                  lui          a5, 839090
                  and          a6, a5, ra
                  sll          s7, t5, a0
                  sltu         a2, gp, a2
                  slt          a2, t3, s10
                  lui          a5, 417930
                  andi         s8, s9, 608
                  and          sp, s9, s11
                  sll          t2, sp, t6
                  xor          tp, t1, s11
                  sll          s3, s8, a5
                  andi         s0, tp, 1183
                  srl          s4, s5, sp
                  srli         s10, a4, 25
                  nop
                  xori         a5, a5, 1459
                  add          s4, s6, t0
                  sltiu        a0, ra, -1422
                  xor          s2, a1, t1
                  sra          t5, s8, a4
                  sll          s11, s1, a4
                  or           t1, s4, t2
                  slt          sp, t3, s2
                  addi         s5, s0, -1205
                  sltiu        s5, tp, 1352
                  lui          t5, 243960
                  srai         s2, a3, 2
                  ori          a5, tp, -257
                  nop
                  slti         s8, a6, 1232
                  srai         sp, a5, 21
                  lui          s4, 584237
                  srl          gp, s9, t1
                  auipc        zero, 559255
                  andi         t2, ra, -420
                  ori          s4, sp, -177
                  and          s1, t6, sp
                  lui          s4, 91842
                  nop
                  srai         s5, tp, 8
                  srai         tp, t0, 2
                  ori          s9, a3, -10
                  xor          zero, s7, s11
                  lui          a5, 959212
                  srl          s11, t5, a5
                  or           s4, a1, zero
                  slti         a6, s4, 169
                  sltu         t1, s4, a2
                  xor          sp, s10, s6
                  sltu         s5, t0, zero
                  sltu         t5, a0, gp
                  and          s0, a6, s10
                  sub          a7, s8, s9
                  sra          sp, a6, ra
                  slti         zero, s2, -1389
                  sll          s4, tp, s0
                  slt          a2, a4, tp
                  srl          s8, tp, a5
                  add          s2, a7, s4
                  srl          gp, t0, s1
                  addi         s0, ra, 1797
                  nop
                  sltiu        a4, s6, 1732
                  xori         a7, t2, 1347
                  sll          a2, s6, gp
                  andi         s11, s5, -954
                  add          a5, a7, ra
                  and          a7, a5, a4
                  srli         gp, sp, 28
                  ori          s8, a3, 880
                  xori         a5, s9, 226
                  auipc        s3, 659487
                  addi         s6, tp, -1097
                  sltiu        s11, a4, -1941
                  sltiu        a1, a2, 770
                  slt          s4, a6, zero
                  addi         a4, a6, 1085
                  and          a5, s4, s11
                  addi         t5, s4, -1069
                  sltiu        sp, a2, -1125
                  and          gp, tp, a5
                  xor          s3, s11, a4
                  nop
                  sltu         s5, s8, a0
                  sra          s2, s5, s1
                  sltu         t6, a5, t5
                  ori          a6, s1, 504
                  slli         s6, t6, 23
                  xori         s1, s11, -479
                  sub          t4, t6, a7
                  add          s10, a5, ra
                  srli         a1, t2, 27
                  ori          sp, a3, -1613
                  sltiu        gp, s2, 204
                  sltiu        sp, tp, 297
                  sub          s9, a6, s8
                  sub          sp, a6, gp
                  or           s1, t6, s0
                  ori          t5, t5, -166
                  add          zero, s2, s2
                  sll          s4, a0, s10
                  lui          a5, 788944
                  xor          s0, tp, s3
                  sub          s7, zero, s6
                  srli         s6, s10, 25
                  sltiu        ra, a4, -1253
                  srai         s3, a2, 20
                  sub          zero, t4, a5
                  sltiu        s9, t5, -1377
                  xori         a0, t6, 1987
                  xori         s10, s5, -1579
                  xori         s8, s10, -1477
                  ori          s0, a7, -1677
                  slti         s4, t4, -1695
                  srl          ra, a3, a3
                  srl          t5, t2, t1
                  nop
                  nop
                  srl          ra, sp, t0
                  slti         t6, s5, 318
                  nop
                  sub          s11, a0, t4
                  srai         a1, t0, 14
                  sltu         s11, s10, t3
                  xori         s1, a7, -1688
                  slt          gp, s10, t0
                  slti         s9, t5, 540
                  sll          s0, a5, sp
                  srl          t1, a7, s2
                  ori          s4, s10, 1929
                  addi         t1, s10, 1818
                  sll          s0, s6, t2
                  and          zero, s5, t3
                  ori          a7, s9, 1115
                  sub          t1, t0, s1
                  sub          tp, gp, a2
                  sll          a6, t3, s5
                  slli         s8, s2, 28
                  sll          t6, a1, s5
                  add          ra, s8, s7
                  or           t1, s9, t1
                  and          s7, t2, t0
                  ori          s1, a2, -358
                  xor          a4, s11, a2
                  andi         a2, a3, -1953
                  sltiu        s7, a5, 987
                  srl          a5, a7, a5
                  sub          a1, s5, s6
                  nop
                  addi         s1, s5, 257
                  lui          gp, 234714
                  srai         s0, ra, 25
                  slti         sp, a4, -10
                  sub          s4, a5, t3
                  nop
                  add          t2, t4, t5
                  srli         s8, s5, 3
                  slti         s8, a3, -1049
                  sub          s0, zero, sp
                  addi         a7, s1, -322
                  xor          t5, a1, s5
                  and          s9, t6, t4
                  xori         s10, s9, 863
                  sltu         s8, s8, zero
                  srl          s11, s9, a6
                  slt          a5, s10, gp
                  slli         t2, t3, 3
                  sll          t1, ra, t2
                  add          a2, sp, a2
                  srl          zero, t3, s2
                  srl          sp, t6, sp
                  sltu         tp, t2, t2
                  lui          t6, 93461
                  xori         zero, t4, 203
                  slli         s2, t6, 30
                  xor          sp, s7, s11
                  and          s4, t1, t4
                  slti         a4, s6, -1348
                  sll          a5, t0, t3
                  auipc        s3, 645837
                  sltu         a6, s10, s5
                  and          s8, s7, s11
                  xori         a0, a6, 1853
                  and          t6, s2, s1
                  addi         s6, s4, 948
                  xori         gp, s6, -42
                  nop
                  nop
                  lui          zero, 983479
                  sltiu        s9, s8, 145
                  sltiu        s5, a6, 1213
                  add          t6, a6, s6
                  auipc        sp, 318612
                  nop
                  auipc        s11, 776130
                  srl          ra, a2, sp
                  or           s3, a1, a5
                  srli         s10, s1, 24
                  srl          a0, a4, s6
                  addi         s2, tp, -627
                  srai         s10, s7, 18
                  sub          s11, a7, s9
                  or           a2, s9, t6
                  srl          s4, s10, a3
                  or           a2, s6, s0
                  srli         a1, a3, 3
                  auipc        gp, 997636
                  slli         s7, s3, 5
                  or           a6, s4, a1
                  xor          t2, a3, s9
                  srai         s4, s9, 17
                  or           s6, gp, a2
                  lui          a0, 942299
                  lui          a2, 51473
                  sltu         t4, t5, s6
                  srai         s4, t4, 3
                  addi         s9, zero, 759
                  srl          a0, a0, a7
                  srli         a0, gp, 3
                  srai         s11, s5, 2
                  srli         a6, t5, 4
                  slt          s8, s0, a5
                  sub          t6, a3, ra
                  addi         s1, s2, 651
                  srai         s5, a4, 17
                  srl          s10, t3, tp
                  xori         s0, s10, -985
                  auipc        sp, 719934
                  auipc        s1, 616762
                  sub          a5, t6, a0
                  and          s1, s5, t0
                  addi         a4, t4, 396
                  or           s6, a7, gp
                  lui          s7, 958038
                  nop
                  addi         gp, a0, 2
                  or           t2, t2, s4
                  andi         gp, s11, -1970
                  slli         s2, sp, 29
                  lui          t6, 194515
                  xori         s0, tp, 1737
                  slt          gp, a1, s1
                  srli         t5, t0, 4
                  auipc        s1, 961057
                  sub          s9, t5, s3
                  add          s8, t2, s11
                  or           s1, s5, gp
                  andi         s5, s5, 1642
                  sll          s0, s8, a0
                  andi         ra, a1, 1502
                  slt          s4, s6, ra
                  srai         a1, s10, 18
                  and          t6, a2, s1
                  xor          a5, t6, s11
                  sra          gp, a7, s10
                  sra          s11, ra, s2
                  lui          a1, 133769
                  addi         t5, gp, 1372
                  sub          s9, t3, tp
                  auipc        a2, 841804
                  srai         a4, a5, 26
                  sltiu        t5, s9, -414
                  xor          s5, a6, t3
                  or           s6, a1, a7
                  srli         a6, tp, 2
                  xor          t1, s6, s4
                  nop
                  sll          s4, s3, t6
                  sltu         s9, a5, a3
                  auipc        tp, 524144
                  auipc        s10, 572432
                  sub          s1, s3, a1
                  nop
                  or           a2, s5, a5
                  sub          s0, t6, s2
                  ori          s5, gp, -85
                  sltu         s0, s8, t0
                  andi         s8, a2, 1799
                  slti         t5, s9, 1963
                  slti         a1, zero, 1453
                  or           t2, a5, t0
                  addi         a1, t0, 1570
                  auipc        s8, 405704
                  sll          s3, s5, t1
                  addi         gp, sp, -318
                  addi         s0, s7, 1930
                  lui          s1, 919980
                  srl          ra, s10, a1
                  or           s0, a1, t0
                  auipc        t6, 266788
                  sltu         t6, t5, t2
                  slli         tp, t3, 10
                  sll          t1, gp, t4
                  sll          zero, zero, gp
                  xor          gp, t5, s11
                  sll          t2, tp, s1
                  srli         ra, s3, 29
                  xori         a5, s2, 1948
                  sll          t5, zero, a7
                  sra          a7, s4, s0
                  add          ra, s3, t1
                  srli         zero, a1, 13
                  ori          t5, s1, -608
                  andi         a5, sp, -1736
                  sub          a2, s2, a2
                  xori         s2, s2, 1532
                  ori          a6, s4, 1959
                  and          a1, s0, s3
                  srai         a6, s9, 20
                  srai         t2, sp, 6
                  and          a6, a5, t0
                  xori         s11, s3, -1895
                  srli         s2, s0, 9
                  xori         a2, a7, -1809
                  lui          tp, 487834
                  sub          t2, s2, tp
                  sltiu        a6, s6, -1874
                  sub          a5, a4, a4
                  sll          s6, t0, gp
                  addi         t4, zero, 1253
                  sra          t1, s11, s7
                  addi         a2, a1, 1645
                  sltu         sp, a4, s6
                  slli         tp, s3, 20
                  add          gp, a5, ra
                  srl          a0, a1, s3
                  lui          a5, 900647
                  auipc        s9, 187847
                  and          s10, s4, t1
                  lui          ra, 57439
                  xori         s3, t2, 1104
                  xori         s3, s1, 310
                  sub          s0, s3, tp
                  add          s8, sp, s2
                  andi         a7, s9, 1980
                  or           a4, s0, s8
                  add          gp, s0, s10
                  sll          a5, s3, a2
                  srl          a6, a5, s8
                  sra          s10, a1, t6
                  addi         s11, s10, -2032
                  addi         tp, s6, -542
                  lui          t1, 1031914
                  and          s0, ra, s8
                  sltu         s9, a2, s8
                  sll          a2, a4, s6
                  xori         a0, zero, 607
                  xor          t4, s8, t4
                  slti         s6, s10, -1517
                  sltiu        a1, a3, 295
                  addi         a2, a5, 2045
                  slli         s1, s9, 1
                  srli         zero, s9, 2
                  sltiu        s4, s2, 357
                  slli         s1, s9, 4
                  addi         s3, s3, -1125
                  sltu         a6, a2, sp
                  sub          a6, s5, t6
                  slli         a2, a2, 13
                  sltiu        a7, s11, -1883
                  nop
                  ori          sp, s5, 84
                  xor          zero, s9, s10
                  sltu         ra, s4, s8
                  addi         a7, s11, 474
                  xori         s6, s9, -1257
                  srai         ra, ra, 29
                  xori         s3, s3, 1757
                  and          sp, t2, a2
                  ori          ra, a4, -1566
                  xor          s3, s6, s6
                  slt          s3, a4, s8
                  xor          a7, s2, s3
                  slli         s2, t5, 22
                  and          s6, a5, s2
                  ori          a0, a2, 771
                  nop
                  add          s1, s1, t3
                  srli         a6, a3, 13
                  sltiu        t5, a2, 2031
                  addi         s4, a5, -1602
                  xori         s0, t5, -2040
                  slt          t2, tp, t6
                  slli         a5, t0, 29
                  lui          sp, 724735
                  addi         s4, a5, 552
                  srai         s2, a3, 12
                  slti         t1, s9, 877
                  and          s6, t1, t6
                  nop
                  slti         tp, gp, -1690
                  slti         zero, a4, 562
                  slt          s9, ra, a2
                  andi         sp, zero, -1384
                  sub          a5, s8, a7
                  xori         a6, s3, -99
                  xor          t5, s8, t5
                  srli         a7, t4, 19
                  lui          t5, 534480
                  srl          zero, s3, s3
                  auipc        t2, 265569
                  sra          s2, a3, a0
                  srl          t5, t1, a5
                  xori         s8, t6, 1201
                  and          s0, s11, tp
                  auipc        a2, 658985
                  nop
                  slli         t2, a4, 13
                  slt          s8, a6, a3
                  and          a6, a0, tp
                  srai         gp, gp, 19
                  ori          ra, ra, -553
                  sll          zero, a4, a0
                  slt          t4, a5, t3
                  slli         t5, a1, 8
                  xori         ra, sp, -294
                  srl          s9, tp, s2
                  ori          sp, ra, 924
                  auipc        s10, 2248
                  sltu         s2, s10, s7
                  sltiu        s8, a5, -1471
                  sltu         s11, s10, t4
                  add          s0, tp, sp
                  srli         s1, a3, 25
                  sub          s1, s4, zero
                  addi         s3, t0, 605
                  srai         t6, s9, 28
                  srli         s8, a6, 26
                  auipc        a6, 514738
                  srai         t6, s10, 19
                  andi         t4, s2, -1453
                  lui          s0, 904607
                  slli         a6, s3, 1
                  sll          s4, a7, s10
                  or           ra, a7, a0
                  srai         s0, s10, 1
                  add          a0, s10, s1
                  sltu         s8, t4, s2
                  addi         s4, ra, -91
                  addi         tp, t2, 1989
                  lui          s2, 437321
                  add          s3, s6, zero
                  nop
                  sub          t4, s6, s5
                  srl          s8, s1, t0
                  slt          tp, s5, a3
                  xori         t1, a0, 1466
                  srai         t5, a4, 15
                  or           s9, gp, t5
                  ori          t5, a5, -1967
                  auipc        s6, 1040102
                  xori         a5, t6, -51
                  srl          s3, tp, zero
                  sltu         t6, s9, s3
                  xori         a1, a7, -1100
                  addi         ra, s9, -1988
                  add          s7, tp, s9
                  sra          a6, t4, a7
                  sltiu        s1, t0, -439
                  slt          s8, a2, s9
                  sltiu        a2, a3, 1897
                  sll          s3, s7, s10
                  and          s0, t0, a2
                  nop
                  xori         a6, s0, -61
                  addi         a4, s9, -930
                  sltu         s1, s9, s8
                  sltiu        a0, s5, -568
                  srli         a7, t5, 19
                  lui          s6, 179105
                  slt          a0, a2, a6
                  xor          s11, s5, s6
                  lui          s10, 25698
                  srli         t6, t1, 8
                  sltu         a0, a3, a6
                  sub          s10, zero, t4
                  auipc        sp, 52555
                  sltu         t4, s4, a2
                  sltu         s5, a0, s8
                  srli         t4, a3, 12
                  xori         s4, s5, -1601
                  slli         s6, a3, 15
                  slli         a4, s9, 4
                  or           t6, s2, ra
                  slli         s10, s1, 21
                  sub          a0, s7, s3
                  xori         ra, gp, 1752
                  sltu         s7, a5, ra
                  nop
                  xor          zero, s4, a1
                  xori         gp, a7, -180
                  sub          s7, a5, s2
                  add          a7, t0, t6
                  and          s11, sp, a0
                  xor          s7, t0, a7
                  andi         s10, a7, -714
                  lui          s4, 512712
                  sra          tp, s2, tp
                  xori         sp, s1, 163
                  addi         tp, a6, 1962
                  ori          s9, a0, -210
                  xori         a1, t4, -1163
                  slti         t4, s3, 995
                  add          a5, s0, s6
                  nop
                  or           a2, s1, t4
                  add          s11, tp, s10
                  slli         t2, t4, 22
                  sltiu        s4, a1, 1987
                  add          sp, s7, a3
                  sub          s7, t0, a7
                  add          s2, t1, s2
                  sltiu        s1, s6, 1017
                  lui          a5, 694815
                  andi         sp, a2, 1349
                  addi         tp, a1, -1245
                  andi         zero, s7, 77
                  srli         s1, s6, 21
                  ori          gp, s0, 429
                  xor          a4, s9, ra
                  sra          s10, zero, s0
                  sltiu        t4, s4, 1964
                  and          s4, t5, s11
                  xori         ra, tp, 521
                  srli         s11, a0, 25
                  add          s1, t6, s3
                  add          t2, a0, a6
                  srli         t2, a0, 21
                  xor          t4, s1, t5
                  sub          s8, a0, s8
                  and          s10, gp, s8
                  ori          zero, t2, -1180
                  slti         s10, s6, -963
                  slt          s5, a4, s1
                  sll          gp, t1, zero
                  srai         t4, a7, 12
                  srl          zero, a4, t5
                  ori          a4, s8, -242
                  sll          t1, tp, s9
                  slt          sp, t6, a2
                  sub          s7, t5, zero
                  slli         tp, gp, 10
                  auipc        s11, 886616
                  sra          s2, s8, s7
                  sltiu        a6, s3, 1002
                  srli         t6, t0, 14
                  add          s6, t6, a1
                  addi         ra, s6, -37
                  addi         s7, a5, -818
                  sltiu        a7, s9, -149
                  sra          s5, a5, a6
                  sll          t5, a6, a0
                  slt          zero, a4, a4
                  and          s3, t2, a3
                  ori          s5, t6, -1007
                  xori         s0, tp, 715
                  or           a4, s1, s7
                  addi         s4, ra, 179
                  slti         s8, s9, -182
                  srai         t6, t3, 15
                  addi         a5, gp, -1248
                  sll          s1, t6, a5
                  sll          t5, s5, t5
                  sub          ra, s5, a2
                  slti         a1, t3, -1251
                  sra          s2, a1, a3
                  auipc        a1, 152282
                  sub          gp, s1, s7
                  sltiu        sp, sp, 1959
                  auipc        t6, 595307
                  ori          a0, a1, -1058
                  srli         s7, t3, 13
                  xor          sp, t0, t3
                  addi         s0, t5, -871
                  slli         s6, s11, 17
                  or           s3, s11, s5
                  lui          s3, 612359
                  srl          ra, t4, tp
                  and          s11, s3, a6
                  sll          s3, s7, a7
                  nop
                  addi         sp, t1, -1638
                  sub          t5, gp, t5
                  slti         a1, a6, -1746
                  slt          t4, a4, a5
                  lui          s6, 458618
                  or           a6, a7, t2
                  sub          t2, s8, t6
                  sra          s3, a7, t1
                  addi         s4, t3, 1916
                  addi         a2, s2, 823
                  ori          s11, s7, 414
                  nop
                  sra          a5, s11, s9
                  srai         zero, t0, 27
                  or           t2, s7, t4
                  srli         s9, sp, 10
                  or           t1, s4, s8
                  srai         gp, t3, 7
                  add          t6, gp, s9
                  lui          s7, 5134
                  sll          a7, t3, ra
                  add          t2, s9, sp
                  srli         t6, a1, 7
                  andi         t4, a5, 1703
                  slli         a6, t4, 11
                  sll          t5, gp, s3
                  add          s7, t6, a0
                  and          a6, s11, zero
                  slti         zero, sp, -837
                  slli         s9, ra, 29
                  lui          s2, 262230
                  auipc        a2, 864062
                  andi         t4, t0, 1324
                  nop
                  srai         a6, s9, 16
                  ori          t5, s11, 1462
                  sub          t6, zero, a2
                  sub          a2, ra, s9
                  slli         a4, t4, 16
                  and          a2, s7, a0
                  slt          a4, s0, a5
                  nop
                  add          a7, a1, ra
                  add          s2, t6, t3
                  ori          s9, sp, 1930
                  sll          tp, a4, s3
                  slt          s3, a6, s10
                  sub          tp, a5, tp
                  srai         s9, t2, 4
                  auipc        a2, 829912
                  srl          s9, a4, a0
                  nop
                  sltu         s11, a0, s5
                  sra          a2, a2, a5
                  sltu         t4, s2, tp
                  sll          s0, t3, t5
                  sub          t1, a3, t2
                  add          s1, a2, t4
                  or           sp, t6, a0
                  sltiu        ra, t6, 437
                  sub          s4, zero, t3
                  srl          s4, t6, s10
                  xor          a2, s2, a3
                  sltu         a4, a3, s6
                  ori          s11, t5, 1408
                  sltiu        s0, t1, 1605
                  xori         a4, t3, -1057
                  sub          a6, s8, s9
                  and          t4, a1, a2
                  sra          t6, s3, a1
                  add          gp, s4, t3
                  lui          s7, 436309
                  sltiu        a6, s10, 1245
                  slti         gp, gp, 957
                  srl          s1, t0, a3
                  xori         t2, s11, -1281
                  andi         t2, a7, 201
                  nop
                  sltu         a4, t4, a6
                  sltu         zero, t4, s3
                  addi         s5, zero, -1766
                  srai         s10, t1, 23
                  srl          a5, s9, s8
                  lui          s5, 817199
                  srl          s4, tp, t4
                  srl          ra, a3, s7
                  auipc        a5, 563327
                  slli         s0, t1, 31
                  addi         tp, s4, -263
                  ori          s9, s9, 486
                  xori         s0, zero, 435
                  sra          a0, ra, t6
                  sltiu        t1, t5, 1074
                  or           s11, a0, tp
                  sltiu        tp, t2, 1766
                  sra          s6, ra, t0
                  sltu         t6, zero, s3
                  sltu         a0, sp, s11
                  and          s5, s5, s10
                  add          s11, s7, tp
                  slt          s9, s4, s3
                  add          s5, s11, a7
                  addi         zero, t3, 347
                  ori          t5, s10, -318
                  sltu         a4, a4, a1
                  addi         s1, t0, -721
                  srai         s3, t5, 30
                  sll          s8, s5, tp
                  sltu         t5, t5, ra
                  srli         s11, s8, 28
                  sll          t6, s10, s0
                  sub          a6, t1, a7
                  sll          s3, sp, a6
                  sltiu        s7, t5, -823
                  srli         s10, a1, 27
                  srai         ra, s8, 22
                  addi         ra, t5, 1694
                  slli         s7, tp, 31
                  or           gp, t5, s0
                  nop
                  lui          s4, 499680
                  ori          s5, a2, -265
                  srli         ra, t6, 12
                  addi         sp, t4, -1052
                  sltu         s11, s4, t1
                  sll          t6, s2, a0
                  xor          t2, a2, a2
                  lui          t2, 267123
                  xori         a7, s3, 1427
                  xori         s1, ra, -985
                  nop
                  srl          a4, gp, s3
                  add          s4, t0, a7
                  xori         a0, s10, 1985
                  andi         sp, s5, -628
                  sra          s3, s2, s10
                  lui          sp, 358584
                  sltiu        a6, s10, -289
                  sltiu        t5, s9, 1357
                  slti         a5, zero, -309
                  addi         s10, s5, 900
                  andi         t1, s0, 1134
                  nop
                  nop
                  xor          s10, t5, t1
                  srl          a1, s8, a2
                  sll          zero, t4, s10
                  add          a1, t0, s3
                  sltiu        t6, s8, 1207
                  xor          gp, s2, t5
                  srai         gp, s2, 15
                  sltiu        s9, s7, 1683
                  srli         zero, a4, 24
                  addi         t1, s5, -795
                  addi         a6, s7, 2021
                  sra          a4, t4, a3
                  slli         ra, t1, 19
                  andi         t2, s5, 1295
                  slti         s8, a1, -540
                  srli         s6, a6, 11
                  sra          sp, s8, sp
                  auipc        s5, 224122
                  addi         s0, a1, -1136
                  lui          t5, 564375
                  addi         zero, a4, -1159
                  li           t4, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           ra, 0x80000000
                  li           s5, 0x0
                  li           t6, 0x80000000
                  li           s3, 0xffffffff
                  li           s1, 0x848c099d
                  li           gp, 0x80000000
                  li           s9, 0x0
                  li           a7, 0x0
                  li           sp, 0x0
                  nop
                  sub          gp, t4, s9
                  add          a7, s3, a7
                  add          sp, s1, ra
                  nop
                  addi         s3, gp, -125
                  add          s3, gp, t6
                  nop
                  addi         gp, ra, 836
                  add          s1, s3, sp
                  auipc        s3, 1037894
                  nop
                  nop
                  lui          ra, 76750
                  nop
                  nop
                  auipc        s5, 767004
                  add          s1, s3, t6
                  addi         sp, a7, 1345
                  addi         t6, s1, 1385
                  addi         s5, t4, -202
                  sub          sp, t4, s5 #end riscv_int_numeric_corner_stream_14
                  auipc        gp, 381987
                  srl          a5, s8, a2
                  ori          tp, ra, 23
                  slli         s4, a4, 7
                  xor          s10, s1, t4
                  ori          t2, a4, -183
                  slt          s2, s3, s9
                  lui          a0, 501141
                  slti         t1, a4, 777
                  auipc        t1, 15267
                  sll          s2, a7, a2
                  slli         s10, s10, 28
                  xori         s9, t6, -343
                  ori          t1, t2, 116
                  xor          t4, s1, a5
                  add          t2, s4, t4
                  andi         s0, t0, 373
                  slti         a7, t3, 2032
                  sltiu        a4, s7, 1443
                  addi         a6, a7, 219
                  or           gp, a1, a0
                  andi         s2, a5, -1399
                  sltiu        t2, s2, -1133
                  sll          t2, tp, s4
                  sltiu        t6, gp, 1880
                  xori         s4, a0, 1160
                  srai         s0, s9, 4
                  or           s2, t4, a1
                  and          ra, t0, t0
                  sltu         s0, ra, a1
                  and          zero, s5, t4
                  sll          a7, s11, t1
                  slli         a1, t0, 5
                  and          t4, a2, s11
                  xori         s3, ra, 411
                  sltiu        s8, ra, 995
                  sltu         s7, a5, a1
                  sra          s5, s3, s1
                  srli         a6, tp, 15
                  addi         t2, s8, -872
                  or           s8, a0, t0
                  slt          s6, a1, t0
                  sltiu        s6, tp, -445
                  auipc        a0, 523943
                  xor          s4, t2, s10
                  slli         a4, t5, 14
                  srl          gp, s5, a0
                  nop
                  and          zero, sp, t0
                  slti         s5, s9, -1784
                  sltu         zero, s2, gp
                  add          s11, sp, t5
                  sub          a6, a3, s6
                  and          t6, ra, s2
                  xori         s6, t0, -92
                  lui          s4, 927551
                  sub          a5, sp, t5
                  or           gp, t2, a7
                  sll          s8, a0, a4
                  sltiu        a7, t3, 76
                  addi         s3, t6, -853
                  ori          a0, s9, -651
                  sltu         a1, a7, t3
                  srai         a6, t4, 15
                  ori          a0, a6, -937
                  lui          ra, 632744
                  srai         t2, s3, 27
                  sll          s5, a6, tp
                  sub          a0, a1, a7
                  ori          a6, s0, -2012
                  sltu         s10, s7, s5
                  add          a7, zero, a5
                  and          a6, zero, a7
                  and          s9, a1, a5
                  srl          a7, a4, s7
                  srli         s7, s0, 6
                  slti         t5, sp, 480
                  sra          s2, gp, a3
                  auipc        s2, 938555
                  srli         s8, ra, 19
                  srai         t5, t3, 8
                  add          sp, gp, a3
                  sltiu        s1, sp, -1678
                  slti         s6, s1, -1393
                  nop
                  sltu         t6, ra, a1
                  sll          s0, tp, t1
                  xor          a1, a3, s8
                  nop
                  xori         s8, s0, -1981
                  srli         s5, s1, 11
                  srai         sp, t5, 23
                  sll          t6, a7, gp
                  slti         tp, s5, -1333
                  slli         s5, gp, 13
                  lui          a5, 544288
                  sub          gp, sp, s10
                  srli         t2, s9, 5
                  nop
                  auipc        s6, 534028
                  slli         s8, s6, 31
                  ori          a4, t3, -264
                  add          s8, a6, a3
                  slt          t5, s10, t6
                  or           a0, ra, s2
                  sub          a7, sp, t6
                  sltu         a1, s5, s10
                  ori          t6, a4, -279
                  sll          zero, t4, t0
                  auipc        a6, 215630
                  srl          ra, s5, s5
                  addi         zero, s4, 1448
                  add          s8, t2, t2
                  slti         s5, s5, 125
                  sll          a7, a1, s4
                  or           s9, a4, a2
                  srai         a4, a4, 20
                  sll          a6, a7, s0
                  sltiu        a0, sp, 1207
                  auipc        a7, 434540
                  srl          s9, a3, t4
                  addi         a5, a6, -372
                  ori          gp, a4, -965
                  sltu         tp, a0, s6
                  slt          t1, a6, t5
                  slti         a5, s4, 929
                  xori         s0, a1, 74
                  ori          t1, s8, -329
                  or           a0, ra, t3
                  add          a6, t2, a7
                  and          t1, s1, a0
                  add          s10, a6, s8
                  sltu         a0, s11, t0
                  and          a6, t2, t1
                  nop
                  sll          a0, s2, ra
                  ori          gp, s9, -1431
                  lui          s5, 657903
                  slti         s7, s7, 1567
                  sll          t4, a1, s3
                  sll          s6, t6, s2
                  sll          s10, t3, a1
                  addi         s5, a1, 1547
                  slt          a6, gp, t2
                  sub          t5, a3, s11
                  srl          t4, t0, s7
                  slt          t4, s3, t4
                  sub          ra, gp, s4
                  slti         a5, s4, 122
                  slt          tp, a1, s8
                  andi         t5, t6, 807
                  slt          s4, s6, s0
                  srl          s2, zero, t2
                  sra          zero, a6, t2
                  auipc        a0, 471085
                  and          s8, s1, t0
                  ori          s3, gp, 1040
                  xori         t1, a7, 1903
                  sltu         t5, t6, s2
                  slt          t2, a7, a7
                  sub          a7, s6, a7
                  slti         s6, t6, -411
                  and          s4, tp, tp
                  slt          s3, s3, t2
                  sub          a7, s3, s6
                  sll          s6, s5, s0
                  or           tp, s2, a0
                  and          sp, s6, sp
                  addi         s10, t6, -1397
                  sltiu        t4, zero, -1833
                  addi         gp, t2, -425
                  ori          a4, t6, -1059
                  or           s8, s9, tp
                  nop
                  slt          a0, s4, s0
                  nop
                  xor          s5, ra, s7
                  slli         a2, s9, 27
                  sra          s10, s7, a0
                  and          a2, t5, gp
                  andi         s2, tp, 31
                  and          s5, t3, a6
                  xor          s7, s11, s1
                  sll          a7, t4, t1
                  srl          s5, s2, a7
                  slti         t1, t2, -975
                  slt          ra, s1, a7
                  ori          a6, a2, -821
                  nop
                  nop
                  add          s8, a1, a5
                  addi         a2, gp, -102
                  andi         tp, zero, 989
                  add          t5, s7, s4
                  sltiu        t4, a3, 549
                  or           s3, a3, a4
                  xor          a4, ra, s6
                  lui          t2, 52673
                  and          a0, a2, s2
                  srai         a0, t0, 21
                  nop
                  xori         s11, s4, 1130
                  sltiu        s6, s9, 1946
                  slli         s2, sp, 25
                  andi         a2, s5, 707
                  auipc        s4, 857674
                  xori         a7, t5, -780
                  andi         s7, t3, 1566
                  nop
                  add          a1, ra, tp
                  or           t2, gp, gp
                  and          s1, gp, a1
                  slt          s5, t4, s0
                  srli         a0, t0, 27
                  and          a1, s6, a1
                  sltu         s2, s6, a2
                  slti         s3, zero, -227
                  sltu         s7, t6, s6
                  sltiu        a6, a1, -434
                  srai         s6, t0, 16
                  sra          s2, s4, sp
                  sra          a2, s2, a4
                  srli         sp, s9, 4
                  ori          ra, s3, -556
                  srli         s4, a1, 1
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           s11, 0xb415e0d3
                  li           s2, 0xffffffff
                  li           a0, 0x80000000
                  li           a6, 0x7f93e392
                  li           t2, 0x0
                  li           s10, 0xffffffff
                  li           s6, 0x80000000
                  li           gp, 0x80000000
                  li           s9, 0x4e6390b0
                  sub          s9, s9, s8
                  lui          s11, 367741
                  nop
                  lui          s11, 726871
                  add          s10, s11, s9
                  nop
                  lui          s10, 370458
                  sub          a0, s2, s11
                  lui          s11, 956651
                  nop
                  lui          t2, 772533
                  nop
                  addi         s6, s10, -1062
                  auipc        a0, 976733
                  add          s9, s11, gp
                  sub          a0, a6, a6
                  add          a6, s11, s8
                  sub          a0, s10, a0
                  addi         s9, s2, -2043
                  nop
                  add          a6, s2, s6
                  addi         s11, s2, -1960
                  auipc        s2, 945
                  sub          s10, s10, s10
                  addi         s9, t2, -1541
                  auipc        t2, 984104
                  nop
                  nop
                  addi         s8, s11, -1716
                  sub          a0, a0, s2 #end riscv_int_numeric_corner_stream_7
                  lui          a4, 10889
                  add          a6, s7, a3
                  srli         s2, s4, 24
                  srl          s6, s6, s0
                  sra          s0, s1, t5
                  sra          a4, t6, t5
                  srai         s1, t6, 20
                  nop
                  sltu         s4, sp, a4
                  slli         a7, s2, 9
                  xor          a6, t6, t3
                  slti         s6, a1, -573
                  xori         sp, tp, -1472
                  and          s6, s3, t4
                  or           a4, tp, s5
                  slli         ra, t4, 10
                  slti         a1, t5, 216
                  srai         s11, a4, 27
                  sltu         a1, s11, t1
                  sltu         ra, tp, s10
                  sub          s10, t5, s9
                  srl          s1, s4, s1
                  add          a2, t3, s2
                  slti         a7, a4, 560
                  sub          s7, s5, t2
                  slt          a4, s4, zero
                  addi         tp, s1, 1322
                  xor          t5, s2, t2
                  xori         s2, t2, -1685
                  lui          a5, 311394
                  xori         s8, gp, -1239
                  sltu         s11, a3, t0
                  sll          s10, a3, s3
                  sltu         s6, a4, t3
                  sra          t6, t0, ra
                  addi         s5, a4, 1032
                  srli         s8, s6, 15
                  andi         tp, t1, -735
                  sltiu        gp, t6, 273
                  ori          s8, gp, 666
                  srli         t5, t5, 24
                  auipc        s4, 932838
                  slti         s10, zero, 1648
                  or           t6, a5, s9
                  sub          ra, a0, zero
                  addi         t2, s6, 1746
                  and          gp, a3, a6
                  slt          t2, t2, a1
                  sll          gp, s11, a1
                  slli         s8, s10, 1
                  srli         zero, sp, 20
                  srl          s7, s6, s3
                  lui          s0, 717686
                  srl          a4, s7, ra
                  sub          a5, gp, a5
                  sll          t4, s1, t6
                  addi         sp, s4, -739
                  lui          s9, 1003485
                  add          s2, gp, t1
                  slt          t1, t1, a1
                  ori          s5, a1, -1409
                  xori         ra, t5, -1458
                  addi         a7, t0, -855
                  slli         gp, zero, 5
                  sltiu        a6, a7, -557
                  lui          gp, 819643
                  add          a0, s2, a4
                  andi         gp, zero, -1164
                  srai         sp, s11, 26
                  andi         s7, t5, 1546
                  xori         sp, s4, -350
                  sra          s1, a3, a4
                  ori          a6, s7, 1500
                  sltiu        a5, a2, 663
                  slt          s5, s8, t3
                  nop
                  nop
                  sltiu        s6, ra, 843
                  nop
                  andi         s1, t2, 928
                  srai         t5, s11, 8
                  slti         t4, a2, 404
                  sltiu        t6, a2, 458
                  sub          gp, t4, s9
                  sub          a0, t6, t6
                  sub          s2, s5, t4
                  ori          a0, t0, -1901
                  sll          a4, s6, s1
                  add          a0, a6, t0
                  and          gp, tp, t0
                  srai         t5, a7, 9
                  and          t5, s5, a6
                  sltu         s5, s4, sp
                  slti         s1, s8, 320
                  auipc        s2, 250471
                  lui          tp, 604210
                  srl          t2, s2, a7
                  lui          s4, 643457
                  xori         zero, t4, -266
                  sltiu        s7, s9, -1448
                  addi         s7, s0, 465
                  xor          a2, a2, s7
                  andi         s8, s10, -779
                  ori          tp, ra, 881
                  sll          a5, a4, t4
                  srai         t2, s11, 16
                  srli         t1, s5, 0
                  srai         a7, s5, 25
                  add          s0, zero, s3
                  sltiu        s6, gp, 123
                  slti         s2, a1, -1151
                  nop
                  slt          t6, t0, a5
                  srai         ra, t2, 3
                  andi         a5, t1, 1576
                  sll          s9, a2, tp
                  xor          tp, s7, s10
                  srl          a7, tp, t0
                  slti         s10, s2, -1576
                  xori         s7, s1, 1169
                  slti         tp, t0, 1111
                  sltiu        t2, s1, 247
                  sub          s8, a3, t4
                  auipc        s8, 439390
                  srl          s11, a7, s10
                  or           t1, a6, a4
                  lui          gp, 245386
                  slti         s2, gp, 748
                  srli         zero, s3, 11
                  ori          s10, t5, -1905
                  srai         a2, t6, 31
                  sltiu        s10, s3, 1589
                  addi         s6, s1, -1181
                  auipc        s7, 326783
                  xor          s2, s2, t1
                  auipc        gp, 537026
                  sub          t4, s3, t1
                  add          t1, s8, t6
                  addi         t4, s11, -667
                  nop
                  slt          a2, a5, t2
                  add          tp, s2, t4
                  nop
                  sll          zero, zero, t4
                  srli         a2, gp, 4
                  sll          s8, s8, a7
                  slti         s2, s4, -250
                  sltu         s10, t1, t1
                  srl          t1, a6, ra
                  andi         gp, s9, 330
                  slti         a6, gp, -799
                  slt          tp, a0, t1
                  srli         t5, a5, 26
                  srl          s1, t0, s9
                  sra          t6, s7, s0
                  xori         ra, zero, -1866
                  addi         s0, s3, -1957
                  slt          s5, s11, t1
                  addi         t1, s2, -1068
                  lui          sp, 1014969
                  ori          ra, s2, 287
                  addi         tp, t2, 843
                  lui          t5, 36235
                  or           s9, a5, s9
                  sub          a6, ra, s1
                  andi         zero, t1, 1956
                  and          t1, s8, a7
                  xor          a5, s5, t2
                  addi         a0, s2, -1978
                  nop
                  slli         s10, s2, 16
                  sltiu        s10, s6, 136
                  sltu         s3, a0, sp
                  ori          s0, a7, -490
                  auipc        s2, 163164
                  andi         s5, s7, -283
                  xori         t5, a7, -1503
                  sub          s3, t3, a4
                  sltu         s8, s6, t4
                  add          t1, s10, sp
                  xori         s5, s11, 593
                  xor          s2, t4, t0
                  andi         s10, s8, 1856
                  ori          s9, sp, 1419
                  ori          tp, t1, 1345
                  auipc        a4, 333804
                  auipc        gp, 607829
                  srli         s3, a5, 22
                  slti         gp, s7, -1387
                  auipc        s5, 789098
                  nop
                  srl          a6, ra, s0
                  slli         t5, s9, 5
                  auipc        t1, 840886
                  sltu         a4, a4, s5
                  slt          a2, a0, ra
                  lui          a5, 240414
                  sra          a1, s10, a2
                  nop
                  sltu         t1, a1, tp
                  addi         sp, s1, 909
                  addi         s10, t5, 162
                  sra          s9, tp, t0
                  slti         s3, s6, 1106
                  sra          s3, s5, s2
                  or           s2, s8, s3
                  srai         t6, a0, 19
                  auipc        a1, 754385
                  addi         a4, t6, 923
                  lui          t6, 799765
                  srl          t4, s5, s1
                  add          s5, t4, s9
                  auipc        s5, 320799
                  add          a6, s11, a6
                  sltiu        t4, s6, -1216
                  addi         a1, sp, -941
                  slt          t1, t4, a3
                  addi         t6, s6, 1591
                  and          t4, ra, a1
                  add          s10, s2, s10
                  or           sp, a5, a7
                  addi         s9, a1, -1538
                  ori          a2, a3, -1164
                  nop
                  and          s1, t1, a7
                  ori          sp, t3, 662
                  srai         s3, s3, 8
                  xor          s4, s0, sp
                  andi         sp, a2, -1850
                  add          s0, zero, tp
                  auipc        a6, 324011
                  srai         a7, a2, 14
                  slt          a7, t4, s2
                  andi         s0, t2, 1903
                  add          s4, a7, a5
                  slli         t6, t2, 30
                  sll          t5, s10, s4
                  sub          s0, s11, a6
                  and          a5, a6, t1
                  sltu         ra, t5, a5
                  auipc        a2, 251831
                  slti         sp, a6, -1957
                  and          a5, s6, t4
                  xori         s3, a1, 972
                  auipc        s11, 20555
                  sll          a5, t5, t4
                  slt          a4, s1, a5
                  ori          ra, a6, 1402
                  srl          s11, a7, s2
                  srai         t5, s4, 15
                  sltu         sp, t5, gp
                  sltiu        s9, a0, 1005
                  srai         a2, s5, 28
                  addi         a6, s5, 1797
                  slti         t6, a1, 1592
                  and          a1, s6, t0
                  xor          s9, t4, sp
                  andi         s10, s5, -1357
                  sub          t5, t3, a7
                  slli         s9, s11, 1
                  sub          s11, sp, ra
                  auipc        a5, 190407
                  sll          tp, s2, s2
                  add          t1, tp, s1
                  srai         a7, t4, 8
                  srli         a1, a7, 18
                  andi         t5, a0, -14
                  add          s9, a3, s8
                  sltiu        t6, s8, 1678
                  sub          t4, a3, s4
                  and          s10, a4, a4
                  xori         s4, s7, 1285
                  srl          s7, a4, s2
                  sltiu        zero, s2, -574
                  add          s0, t4, s9
                  srli         s5, s11, 15
                  sll          s8, sp, t6
                  sll          t5, s7, s11
                  srl          s6, s2, s2
                  lui          s0, 144021
                  ori          a4, a3, 1003
                  slti         sp, t3, -1492
                  sltu         zero, sp, s11
                  sra          t2, s5, s7
                  slti         a1, t3, -1122
                  sra          t1, a7, a0
                  or           a1, t4, s9
                  sltiu        t4, s6, -1096
                  andi         s10, a2, -152
                  sll          s1, tp, s11
                  sra          s7, ra, t4
                  add          t4, s6, tp
                  sra          s3, a3, s7
                  and          sp, a2, t5
                  lui          a0, 515122
                  and          s9, zero, gp
                  sub          s9, s0, s7
                  sub          s9, s3, t1
                  sra          s7, sp, a5
                  srai         s3, sp, 8
                  lui          t6, 49095
                  lui          a6, 97178
                  slt          tp, t4, s3
                  srl          s4, a7, a2
                  srli         s7, s0, 14
                  and          t6, t4, s7
                  slti         s7, t5, -1372
                  slli         t4, a6, 31
                  srai         s1, a4, 24
                  auipc        s7, 613736
                  or           s9, a7, s2
                  and          t2, t5, sp
                  add          t6, ra, s9
                  add          s5, t5, zero
                  xor          a4, s7, s11
                  auipc        tp, 996943
                  slt          s4, t6, a0
                  addi         a2, a0, -1435
                  slli         t1, s0, 19
                  slt          s4, a7, t3
                  auipc        s11, 1002105
                  sltiu        t2, t5, -1663
                  sra          t6, a5, t6
                  and          a7, s4, ra
                  slli         t4, ra, 10
                  sra          s9, s1, t4
                  or           s4, s7, s7
                  sll          a5, gp, a7
                  slli         ra, s10, 31
                  srai         gp, t0, 20
                  and          s7, t1, s7
                  slli         a4, s7, 19
                  srl          t5, a1, s7
                  srai         s11, a4, 0
                  sub          tp, t5, ra
                  addi         a5, a5, -952
                  srl          t6, t2, ra
                  xori         t4, s10, 78
                  and          t5, s1, sp
                  xori         t5, a1, 1772
                  sra          sp, a6, gp
                  lui          s8, 48018
                  andi         sp, tp, -202
                  and          gp, t5, s7
                  srai         s1, a5, 15
                  slli         ra, t6, 13
                  sltu         a0, s4, s1
                  nop
                  nop
                  addi         sp, s2, -606
                  sub          s7, a3, tp
                  sra          s4, sp, a4
                  srl          s5, zero, s2
                  add          s9, ra, t6
                  auipc        zero, 945288
                  slli         t6, s8, 5
                  add          s1, s2, a0
                  xori         a5, s0, 504
                  sltu         s6, t5, s1
                  auipc        tp, 36428
                  sll          gp, s8, a5
                  or           s1, s7, s5
                  xor          a6, a1, a7
                  auipc        a4, 81014
                  sra          ra, s0, zero
                  and          tp, t2, s9
                  andi         s5, s0, 633
                  or           a6, a0, s4
                  add          s5, s7, s3
                  slti         tp, a7, -749
                  slt          s5, t2, s6
                  srai         sp, t3, 6
                  addi         gp, s1, 1891
                  lui          tp, 875589
                  or           a6, s4, a3
                  ori          tp, s0, -886
                  nop
                  and          t6, t6, t4
                  or           s3, s7, tp
                  or           ra, a6, t6
                  sltu         t2, a0, t2
                  lui          t1, 203018
                  and          s0, s7, t3
                  add          s8, t1, s4
                  srl          a1, a7, t1
                  slti         a2, t3, -350
                  ori          a4, t6, 972
                  nop
                  srai         a6, s9, 19
                  nop
                  nop
                  srli         s10, a0, 29
                  andi         s2, s11, -1424
                  srl          t2, a2, t0
                  addi         a0, t6, -1785
                  sll          ra, t4, s8
                  slti         a5, a1, 848
                  sub          s11, t0, s3
                  sll          gp, t6, tp
                  srli         s9, t2, 3
                  add          sp, s5, tp
                  sra          t5, t4, a1
                  slli         zero, s3, 7
                  or           s7, a0, s3
                  nop
                  or           ra, zero, s9
                  srai         s0, s9, 27
                  and          s0, s6, s1
                  sltiu        s7, s10, 712
                  slt          t6, s2, a2
                  slti         s11, s10, 1021
                  lui          a4, 772486
                  nop
                  srli         ra, s8, 12
                  ori          s1, s2, 823
                  addi         a4, a4, -1855
                  sltu         ra, s0, a3
                  addi         a2, s7, 1159
                  srai         a1, s0, 10
                  addi         a2, s2, -199
                  slli         s0, gp, 17
                  sra          sp, sp, s11
                  srl          s7, sp, t0
                  and          s9, sp, s10
                  slli         s8, s1, 14
                  sltiu        t5, zero, 882
                  addi         a7, ra, 1620
                  sltu         t2, a6, t2
                  and          s6, ra, a3
                  sub          a5, t5, t0
                  xori         gp, a0, -1105
                  slti         t1, s2, -1560
                  nop
                  xori         gp, s7, -1879
                  srli         s9, a2, 7
                  xori         a2, t6, -1694
                  sll          s8, a5, s0
                  srai         a0, t6, 27
                  sltu         a2, s5, s11
                  srai         s6, s8, 15
                  slti         a1, gp, 1912
                  sltu         a5, t0, a3
                  srli         t4, a1, 18
                  addi         s7, a5, 72
                  slli         s1, t4, 27
                  sll          t2, s6, a2
                  auipc        s4, 1045038
                  sltiu        ra, t5, -266
                  slti         s10, t2, -921
                  addi         s4, sp, 930
                  srl          s10, s3, tp
                  or           s3, s0, s11
                  auipc        ra, 292536
                  ori          gp, a3, -1578
                  srai         s1, t5, 28
                  auipc        s3, 249524
                  xor          sp, s2, ra
                  sll          s7, t1, s8
                  or           s8, a4, sp
                  sub          zero, s2, s7
                  slti         a6, s2, -1905
                  sltiu        s3, s2, -1224
                  slli         t5, a5, 10
                  and          a4, tp, tp
                  andi         a5, gp, -201
                  nop
                  ori          a0, s2, 442
                  sra          a5, s6, t6
                  andi         a4, gp, 1097
                  xori         ra, s3, -1143
                  sub          gp, a1, s11
                  xori         t2, gp, -935
                  nop
                  or           a7, s9, a3
                  ori          s1, s7, -340
                  sra          s7, t4, a2
                  slt          tp, s9, gp
                  lui          s7, 364103
                  srli         s4, s4, 25
                  or           s7, s8, s1
                  la x28, test_done
                  jalr x0, x28, 0
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
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x5, x13, zero
                  csrr x19, 0x300 # MSTATUS
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 31
                  bne x19, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x23, 0x3 # BREAKPOINT
                  beq x19, x23, ebreak_handler
                  li x23, 0x8 # ECALL_UMODE
                  beq x19, x23, ecall_handler
                  li x23, 0x9 # ECALL_SMODE
                  beq x19, x23, ecall_handler
                  li x23, 0xb # ECALL_MMODE
                  beq x19, x23, ecall_handler
                  li x23, 0x1
                  beq x19, x23, instr_fault_handler
                  li x23, 0x5
                  beq x19, x23, load_fault_handler
                  li x23, 0x7
                  beq x19, x23, store_fault_handler
                  li x23, 0xc
                  beq x19, x23, pt_fault_handler
                  li x23, 0xd
                  beq x19, x23, pt_fault_handler
                  li x23, 0xf
                  beq x19, x23, pt_fault_handler
                  li x23, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x23, illegal_instr_handler
                  csrr x23, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

ecall_handler:    
                  la x19, _start
                  sw x0, 0(x19)
                  sw x1, 4(x19)
                  sw x2, 8(x19)
                  sw x3, 12(x19)
                  sw x4, 16(x19)
                  sw x5, 20(x19)
                  sw x6, 24(x19)
                  sw x7, 28(x19)
                  sw x8, 32(x19)
                  sw x9, 36(x19)
                  sw x10, 40(x19)
                  sw x11, 44(x19)
                  sw x12, 48(x19)
                  sw x13, 52(x19)
                  sw x14, 56(x19)
                  sw x15, 60(x19)
                  sw x16, 64(x19)
                  sw x17, 68(x19)
                  sw x18, 72(x19)
                  sw x19, 76(x19)
                  sw x20, 80(x19)
                  sw x21, 84(x19)
                  sw x22, 88(x19)
                  sw x23, 92(x19)
                  sw x24, 96(x19)
                  sw x25, 100(x19)
                  sw x26, 104(x19)
                  sw x27, 108(x19)
                  sw x28, 112(x19)
                  sw x29, 116(x19)
                  sw x30, 120(x19)
                  sw x31, 124(x19)
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x13, x5, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

load_fault_handler:
                  add x13, x5, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

store_fault_handler:
                  add x13, x5, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

ebreak_handler:   
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x13, x5, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

illegal_instr_handler:
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x13, x5, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x13, x5, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
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
