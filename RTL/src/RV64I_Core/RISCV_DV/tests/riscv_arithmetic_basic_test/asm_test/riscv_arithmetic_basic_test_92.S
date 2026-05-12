.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x8, h0_start
jalr x0, x8, 0
h0_start:
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 1
                  csrw 0x305, x20 # MTVEC

mepc_setup:       
                  la x20, init
                  csrw 0x341, x20

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x20, 0x1800
                  csrw 0x300, x20 # MSTATUS
                  mret
init:             
                  li x0, 0x1
                  li x1, 0x0
                  li x2, 0xf28948ee
                  li x3, 0x80000000
                  li x4, 0xfbc50667
                  li x5, 0x6d93d7f9
                  li x6, 0x6443160b
                  li x7, 0x0
                  li x8, 0x135d06c3
                  li x9, 0x80000000
                  li x10, 0x80000000
                  li x11, 0xbb3c6332
                  li x12, 0x0
                  li x14, 0x0
                  li x15, 0x0
                  li x16, 0xfdb6f8f7
                  li x18, 0xf88cc3e9
                  li x19, 0xf8d110a7
                  li x20, 0x3f0d3b0c
                  li x21, 0x9
                  li x22, 0xd069fbe7
                  li x23, 0x0
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0xfe4f97d8
                  li x27, 0xf2fba0ad
                  li x28, 0xf791d77b
                  li x29, 0xe355c565
                  li x30, 0x0
                  li x31, 0x8
                  la x17, user_stack_end
main:             li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           s5, 0x80000000
                  li           t6, 0x9c0081b2
                  li           a6, 0x6fd1a677
                  li           a4, 0xffffffff
                  li           s6, 0xfe335c47
                  li           sp, 0x58cbdf6d
                  li           a1, 0x80000000
                  li           ra, 0x0
                  li           tp, 0x80000000
                  sub          a2, tp, sp
                  lui          s6, 500227
                  add          sp, a2, t6
                  add          sp, sp, sp
                  add          tp, sp, tp
                  addi         s6, a6, -1936
                  add          tp, ra, ra
                  nop
                  add          t6, sp, t6
                  nop
                  auipc        a4, 483291
                  add          sp, t6, ra
                  add          a6, a2, a6
                  lui          a6, 214170
                  sub          sp, tp, a6
                  nop
                  nop
                  auipc        ra, 216081
                  sub          sp, sp, s6
                  auipc        t6, 284366
                  nop
                  lui          tp, 909491
                  sub          s5, a1, tp
                  nop
                  add          s6, t6, a2
                  add          tp, tp, a4
                  auipc        sp, 332176 #end riscv_int_numeric_corner_stream_17
                  li           a6, 0xe7008b4b #start riscv_int_numeric_corner_stream_13
                  li           t4, 0x80000000
                  li           s3, 0x0
                  li           t3, 0x0
                  li           t2, 0xffffffff
                  li           s1, 0x0
                  li           s11, 0x80000000
                  li           t5, 0xffffffff
                  li           s2, 0x0
                  li           s10, 0xcbb3c169
                  auipc        s10, 575304
                  lui          a6, 214250
                  nop
                  addi         s1, t5, -1775
                  lui          s1, 676825
                  nop
                  lui          t4, 149174
                  add          a6, t5, s11
                  nop
                  nop
                  nop
                  lui          s10, 205650
                  sub          s1, s2, s10
                  nop
                  addi         s1, t3, 980
                  add          s1, t4, t5 #end riscv_int_numeric_corner_stream_13
                  li           t1, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           s10, 0x80000000
                  li           s4, 0x80000000
                  li           t3, 0x0
                  li           s8, 0x80000000
                  li           a4, 0x9a1f53fa
                  li           gp, 0xffffffff
                  li           sp, 0x0
                  li           t6, 0x0
                  li           s1, 0x80000000
                  auipc        t1, 1045723
                  nop
                  add          s8, a4, a4
                  sub          gp, sp, t6
                  auipc        t3, 797945
                  add          s4, t6, s1
                  nop
                  addi         t3, t1, 297
                  addi         s4, t3, -1137
                  nop
                  auipc        s10, 704016
                  nop
                  auipc        s10, 1002971
                  sub          t6, s10, t6
                  sub          t1, s8, s10
                  auipc        s10, 135681 #end riscv_int_numeric_corner_stream_2
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           sp, 0xc3c4cfc7
                  li           s9, 0x59a1be78
                  li           a1, 0x80000000
                  li           a0, 0x0
                  li           t3, 0x80000000
                  li           s8, 0x0
                  li           s5, 0x0
                  li           a5, 0xffffffff
                  li           s6, 0x997701c2
                  sub          sp, a5, a1
                  auipc        s9, 51440
                  auipc        s5, 202014
                  auipc        s9, 807687
                  add          a5, a1, s9
                  addi         s6, s5, -1727
                  nop
                  nop
                  sub          s9, t3, s8
                  sub          s10, a0, sp
                  auipc        s6, 58893
                  add          a0, s9, s5
                  nop
                  add          a0, a0, s8
                  auipc        s6, 1027598 #end riscv_int_numeric_corner_stream_11
                  li           s3, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           a0, 0xffffffff
                  li           t1, 0x0
                  li           s1, 0x80000000
                  li           s7, 0x0
                  li           t3, 0xd8e6afb1
                  li           t6, 0x6eca748e
                  li           t0, 0xffffffff
                  li           tp, 0xe7b191c6
                  li           a6, 0x306659d4
                  nop
                  auipc        s7, 412680
                  auipc        s7, 761362
                  sub          t3, t0, t1
                  add          a6, s7, tp
                  auipc        t6, 205923
                  nop
                  add          tp, s3, t6
                  nop
                  addi         t6, t6, 843
                  add          s3, a6, t0
                  auipc        t1, 54686
                  nop
                  auipc        t3, 374560
                  addi         a0, t6, 1425
                  lui          t6, 696415
                  auipc        t1, 900400
                  lui          t3, 923470
                  nop
                  sub          s3, t0, s3
                  nop
                  auipc        tp, 443694
                  auipc        t1, 292948
                  lui          s7, 639739
                  lui          t3, 167111
                  lui          t6, 218405
                  lui          a0, 1026943
                  addi         t1, a0, 1671
                  addi         s7, a6, -376
                  nop #end riscv_int_numeric_corner_stream_3
                  li           t5, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           a1, 0x4f2f3570
                  li           s9, 0x80000000
                  li           a0, 0xffffffff
                  li           t1, 0x80000000
                  li           ra, 0xc9e38b23
                  li           t6, 0x0
                  li           s10, 0x61cea831
                  li           t4, 0x0
                  li           a6, 0x0
                  add          s10, s9, ra
                  auipc        a6, 829927
                  lui          s10, 1023815
                  auipc        a1, 714505
                  sub          ra, t4, a1
                  addi         a0, t4, 205
                  sub          s9, t5, s10
                  sub          s10, s9, a6
                  addi         t6, t1, 543
                  sub          a1, t5, t1
                  addi         t4, t6, -1340
                  auipc        a0, 37487
                  sub          a1, ra, a1
                  add          ra, s9, t6
                  lui          s9, 90495
                  lui          t6, 793
                  addi         t4, a6, 1609
                  addi         t5, s10, -587
                  nop #end riscv_int_numeric_corner_stream_0
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           a6, 0x80000000
                  li           s5, 0x0
                  li           t5, 0x0
                  li           s11, 0x49fe00dd
                  li           a2, 0x0
                  li           s10, 0x0
                  li           s8, 0x66c6660c
                  li           t4, 0x0
                  li           a5, 0xffffffff
                  add          t4, s10, s10
                  add          t5, a6, t4
                  auipc        s5, 305433
                  addi         a6, t4, 564
                  auipc        t4, 415941
                  add          a6, s8, a2
                  add          s8, t5, s11
                  addi         s5, t4, -1850
                  sub          t5, t5, t5
                  addi         s8, a6, 656
                  sub          s11, s10, a6
                  sub          t5, a6, s8
                  lui          s10, 147634
                  sub          s5, s5, t4
                  add          a5, tp, s10
                  nop
                  add          s8, s10, t4
                  lui          a6, 846455
                  addi         s5, s10, 669
                  addi         t5, s8, 514
                  add          s10, a6, s10
                  addi         s5, a5, 1189
                  addi         s11, t4, -1198
                  addi         t4, a2, -901
                  addi         t5, s10, 1079
                  lui          t4, 147812
                  auipc        s11, 366168 #end riscv_int_numeric_corner_stream_16
                  li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           t1, 0x0
                  li           s9, 0x80000000
                  li           s3, 0x74ea72c3
                  li           t4, 0xd569f0ff
                  li           s10, 0xffffffff
                  li           t6, 0xffffffff
                  li           s7, 0xffffffff
                  li           s8, 0x80000000
                  li           a4, 0xffffffff
                  add          s7, s8, s10
                  addi         s5, s10, 1011
                  addi         s5, t1, 1461
                  add          s9, s7, s3
                  addi         s10, s7, 288
                  add          s5, s5, s10
                  addi         s9, s10, -1398
                  nop
                  addi         t4, s9, 1585
                  addi         a4, t1, 1397
                  nop
                  add          s10, t1, a4
                  add          s5, s8, s10
                  addi         s5, s9, 1572
                  add          t6, t4, s3
                  nop
                  auipc        a4, 278151
                  auipc        s3, 658891
                  sub          s3, s5, s5
                  auipc        s3, 1043085
                  addi         s8, s10, -1185
                  addi         s9, s5, -479
                  nop
                  sub          s7, s8, s7 #end riscv_int_numeric_corner_stream_14
                  ori          t2, gp, -1113
                  srl          s3, t4, s3
                  add          a0, s10, s4
                  srai         a4, s2, 6
                  lui          a2, 1045279
                  sub          a4, s11, tp
                  nop
                  sll          s9, a4, t3
                  ori          s3, s8, 368
                  addi         t4, t5, 127
                  sll          s8, a5, s9
                  srli         s3, a3, 28
                  and          t1, s4, tp
                  srli         s1, s1, 9
                  xor          t5, s6, zero
                  sra          t0, gp, s5
                  srai         a0, s8, 5
                  or           ra, s0, a0
                  slti         a2, s11, -123
                  slt          zero, gp, s8
                  slli         a4, s9, 11
                  srl          sp, ra, t5
                  add          s11, t0, t2
                  lui          zero, 606359
                  sll          s3, a1, s6
                  andi         s7, a6, -1967
                  andi         s3, s7, 938
                  sltu         gp, t6, t5
                  sll          zero, a5, t4
                  nop
                  slt          s3, t3, tp
                  sub          s4, s2, s10
                  sra          s10, s7, s11
                  xor          s5, s7, s8
                  auipc        t1, 123355
                  xori         a4, s8, 135
                  srli         a4, a6, 7
                  auipc        t5, 1036877
                  nop
                  sltu         a1, s1, s9
                  sll          tp, a3, t1
                  slt          s1, t2, s3
                  sltiu        tp, t3, 612
                  addi         a1, s4, -605
                  sll          a1, s11, s3
                  sll          s7, ra, a6
                  lui          a1, 532095
                  slti         s8, t1, 1728
                  srai         s11, s10, 31
                  xor          t6, s8, ra
                  auipc        s4, 42727
                  slli         ra, a6, 18
                  nop
                  xori         s7, s9, -838
                  srli         s3, a2, 15
                  srli         a4, a0, 22
                  nop
                  sll          sp, a7, sp
                  andi         sp, t6, 404
                  xori         s3, s4, -1741
                  nop
                  nop
                  and          t3, s1, t4
                  auipc        s5, 42861
                  sltiu        s1, s0, 970
                  nop
                  xor          zero, s8, zero
                  sll          a1, a1, t1
                  sltu         t3, s8, t0
                  srl          a5, s0, s1
                  addi         tp, s3, -420
                  addi         t5, s4, 1952
                  srai         zero, s8, 19
                  sltiu        sp, a3, -2002
                  nop
                  xor          s6, t1, s8
                  sll          s9, a0, s3
                  xor          s11, t4, ra
                  lui          t3, 826130
                  lui          a2, 296531
                  nop
                  slt          gp, a4, a6
                  slli         s6, t3, 9
                  sll          t2, t2, s7
                  auipc        a2, 887749
                  slli         a0, a2, 0
                  sltu         t6, a4, s8
                  sll          s1, ra, s1
                  slti         t5, t4, 1432
                  sltiu        s4, t6, -167
                  xori         s8, s8, -1139
                  and          s5, a1, a7
                  or           t4, s11, t1
                  srai         s11, s8, 21
                  xori         s5, zero, 1123
                  srl          gp, s7, t0
                  srl          a6, a1, s8
                  sll          t5, ra, t3
                  lui          t2, 443522
                  xor          t4, a4, s5
                  srl          s2, t1, a0
                  sltu         s2, t1, t4
                  sub          s7, a5, s6
                  andi         s5, s7, 77
                  lui          t4, 112565
                  sra          t6, ra, a2
                  xori         s8, t5, 1337
                  srai         tp, s10, 10
                  and          a6, s10, s5
                  and          t0, s11, tp
                  sltu         s9, s0, zero
                  srl          t5, t6, s4
                  xori         s9, s1, -1799
                  xor          a0, s0, t6
                  andi         s6, s8, -694
                  sltu         s9, gp, a3
                  andi         s9, s9, -30
                  or           ra, s0, a0
                  slti         gp, s0, -100
                  srl          a1, a6, a6
                  slti         s1, s11, -696
                  xori         s9, s6, -1917
                  addi         gp, s4, -315
                  srl          t6, s4, ra
                  sltu         t1, ra, ra
                  slti         tp, a1, 758
                  slli         zero, ra, 3
                  srli         a2, t1, 2
                  andi         a1, a2, -297
                  sll          t1, s5, a0
                  lui          s11, 314061
                  and          s6, s11, a6
                  sltu         sp, s1, t4
                  srli         s8, a0, 28
                  lui          s9, 28278
                  srli         a5, s11, 23
                  sltu         t3, s11, s8
                  sra          s11, s11, a1
                  srai         t0, zero, 1
                  andi         s7, s1, -218
                  nop
                  sltiu        a4, t3, 2005
                  or           gp, s2, ra
                  sra          t0, s7, a1
                  slli         s5, s9, 17
                  lui          s3, 172210
                  slti         s9, s7, 1711
                  li           s5, 0x59b957e2 #start riscv_int_numeric_corner_stream_4
                  li           t1, 0x0
                  li           s2, 0xffffffff
                  li           t4, 0xffffffff
                  li           a5, 0x80000000
                  li           gp, 0x80000000
                  li           t5, 0x80000000
                  li           a1, 0x0
                  li           sp, 0xcbe2d791
                  li           a2, 0xffffffff
                  nop
                  addi         t5, sp, 1239
                  auipc        t1, 225477
                  auipc        t4, 248063
                  nop
                  lui          a1, 345251
                  auipc        s5, 1036328
                  nop
                  auipc        a2, 835669
                  nop
                  lui          s5, 643663
                  lui          s5, 416083
                  add          t4, gp, sp
                  addi         t5, a1, 1597
                  add          sp, gp, sp
                  auipc        t5, 514621
                  lui          t1, 313799
                  add          t1, sp, gp
                  lui          s2, 655562
                  auipc        t4, 434561 #end riscv_int_numeric_corner_stream_4
                  nop
                  sltiu        t3, t4, 1841
                  addi         a5, s4, 333
                  slt          zero, a5, a5
                  addi         s2, gp, -1614
                  slti         s2, a0, 280
                  auipc        t2, 402483
                  slt          zero, s1, a1
                  srl          s11, a5, a2
                  xor          s2, t5, s3
                  andi         ra, a4, -454
                  or           t2, t1, s8
                  auipc        zero, 888707
                  addi         sp, a0, 393
                  slli         t6, ra, 13
                  xor          s3, a1, s6
                  slt          s11, a6, t3
                  slti         tp, t0, 1707
                  andi         a5, a0, 517
                  addi         a1, s8, 1175
                  and          t1, s2, t6
                  sub          t1, a4, s11
                  sll          t3, a7, a2
                  xori         t6, s1, -557
                  and          t3, t4, s0
                  sub          s1, t1, a6
                  slt          s1, t6, s7
                  xor          s11, sp, s1
                  sltiu        a6, s4, 1424
                  srai         s5, s4, 25
                  and          a0, a4, a4
                  srli         tp, s3, 26
                  add          a4, s11, a6
                  sra          a4, s3, s10
                  and          a1, t6, s10
                  slli         ra, s3, 2
                  xor          s5, a2, t3
                  sltiu        s4, s11, -1782
                  slt          a6, a6, s2
                  sra          t0, t5, s2
                  lui          a5, 896568
                  xor          a6, s4, s9
                  xori         s11, s1, 1914
                  addi         zero, t2, -1995
                  sub          s8, t0, a4
                  sub          t1, s11, a0
                  sltu         t5, a1, a4
                  andi         s11, t1, -1835
                  xor          gp, ra, a1
                  auipc        s5, 1028096
                  xor          s7, a3, s1
                  xori         a0, t6, 1671
                  slt          s7, s7, s7
                  sll          a5, sp, a6
                  or           t6, s0, s11
                  xor          s9, s9, t4
                  srai         t0, a1, 29
                  addi         s8, a4, 118
                  srai         s8, zero, 20
                  ori          s2, s11, -1922
                  srli         t6, s8, 4
                  srai         t3, sp, 20
                  andi         ra, t2, -1199
                  nop
                  sll          s11, s8, s2
                  ori          t5, s4, -1836
                  add          gp, a2, a3
                  nop
                  sub          tp, t2, a0
                  srai         t3, s1, 3
                  srl          zero, s4, s4
                  xori         s2, a3, -793
                  srl          a6, a5, s8
                  sra          s4, s8, t1
                  srli         t1, a3, 20
                  xor          a0, sp, s0
                  andi         sp, s3, -76
                  nop
                  add          s4, s1, t0
                  slt          a6, t3, s3
                  and          tp, s11, a1
                  slli         s3, a6, 3
                  slt          t6, s3, s5
                  srai         s2, s2, 11
                  sll          a5, s6, ra
                  ori          s3, s7, -741
                  srl          a4, s8, a1
                  nop
                  xor          t4, a0, t2
                  sub          t6, a6, t0
                  andi         zero, t6, -1891
                  addi         sp, t1, -1072
                  sltiu        a2, a7, 1263
                  sra          s10, a0, t2
                  sltiu        a2, a6, 1131
                  add          s9, tp, a7
                  slli         s1, a6, 31
                  sra          a5, a7, s3
                  auipc        ra, 478553
                  sltiu        s11, a7, 1671
                  sra          t6, a7, s4
                  slli         ra, s3, 19
                  sltu         s8, a0, t5
                  xori         a1, a2, -1047
                  srli         t5, t0, 8
                  addi         a5, s6, -688
                  sra          t3, t5, t1
                  sltu         s3, t4, t6
                  sra          t4, a4, t0
                  slti         t1, t2, 771
                  slli         t0, s6, 7
                  and          t2, s6, s7
                  nop
                  and          s11, s10, t3
                  srai         tp, s9, 1
                  andi         t4, a6, 1718
                  sltiu        ra, a1, 711
                  srli         s5, a0, 19
                  and          zero, t0, a5
                  slli         a1, t6, 15
                  xori         t1, s4, 1131
                  sltu         ra, s1, a3
                  andi         s3, s8, 984
                  srli         t4, t3, 26
                  andi         s9, s9, -1648
                  xor          tp, s10, a7
                  andi         t2, s0, -449
                  sra          t3, s5, a1
                  sub          t6, ra, a7
                  sra          s10, ra, s8
                  addi         t0, t3, 779
                  srai         gp, a1, 21
                  sltu         t1, t5, ra
                  andi         t0, s11, 1099
                  slt          s4, a7, s7
                  sltiu        s4, s9, 1309
                  sra          tp, s8, s9
                  xor          s10, zero, s5
                  slti         t2, a6, 1227
                  or           a6, s1, a2
                  lui          tp, 347794
                  or           ra, ra, a2
                  add          s7, a3, ra
                  add          s11, s9, sp
                  srl          s8, a7, gp
                  sll          t1, t4, s1
                  slt          gp, s0, t6
                  andi         s7, s10, 123
                  sltu         s8, s0, t0
                  sltiu        tp, s4, 403
                  srai         tp, a1, 21
                  nop
                  addi         gp, zero, 1705
                  nop
                  and          s11, s0, t6
                  lui          s1, 257803
                  sll          s8, a3, t3
                  sll          t5, a3, a3
                  slli         t0, s5, 24
                  auipc        s3, 597932
                  auipc        t4, 420326
                  srai         a2, a1, 21
                  add          s2, sp, s0
                  sltiu        a1, a0, 557
                  sll          s10, s0, sp
                  sltiu        t1, s2, 118
                  srai         tp, a6, 29
                  sll          zero, a0, s3
                  sra          a5, s4, sp
                  sltiu        a0, t5, -8
                  sltu         t0, s6, s4
                  nop
                  xori         s8, s11, -986
                  slt          s11, s1, tp
                  xori         s8, ra, 131
                  or           tp, t0, s8
                  srai         s5, a5, 18
                  xor          s11, t4, a1
                  ori          s10, t3, -153
                  andi         s11, sp, -1868
                  andi         sp, t3, 345
                  add          sp, a1, a5
                  andi         a0, t6, 181
                  ori          a4, ra, -1064
                  slti         s2, s11, -1302
                  xori         s5, s6, -116
                  sll          s2, gp, s0
                  or           s2, a3, tp
                  xori         t3, s5, 786
                  slti         t5, t3, 754
                  ori          ra, tp, 601
                  and          s5, s10, gp
                  xor          a4, s8, a2
                  andi         gp, s6, -1750
                  ori          s11, a4, 1317
                  sub          gp, a0, s5
                  or           s2, s5, t4
                  sll          a2, t0, tp
                  sll          s6, t0, s7
                  nop
                  slt          s4, gp, a3
                  srai         a1, ra, 0
                  srl          s5, t4, s0
                  nop
                  slli         t2, a7, 19
                  sub          a0, t3, s10
                  nop
                  nop
                  slli         s5, s2, 11
                  sub          s1, s8, t4
                  sltiu        a6, a4, -944
                  sltiu        t6, s1, -428
                  srai         a4, a7, 16
                  andi         t6, s7, -419
                  nop
                  xor          sp, t4, t0
                  nop
                  andi         t6, s5, -1121
                  sltu         s11, a7, a0
                  nop
                  andi         t4, t4, 1389
                  andi         t0, t6, 1050
                  or           s7, t0, s2
                  lui          a6, 922921
                  srl          t0, s0, a7
                  srai         s11, s6, 16
                  nop
                  srl          s11, s6, s7
                  sll          t6, a3, s6
                  slli         gp, t6, 3
                  srl          t1, a5, s3
                  and          s2, t0, t3
                  lui          s7, 25963
                  sltiu        a0, tp, 130
                  xori         s10, t0, 1827
                  add          ra, t1, a2
                  slli         a2, t0, 27
                  ori          t3, s2, 1662
                  sll          a1, s3, a0
                  slti         s8, s9, 992
                  lui          a5, 316137
                  slli         s6, s8, 17
                  add          a0, ra, a6
                  addi         a1, tp, 285
                  and          a2, s8, t2
                  srai         t5, t6, 1
                  sra          t6, s11, s0
                  srli         t1, s8, 13
                  sll          t4, t3, s11
                  nop
                  auipc        s1, 960750
                  sub          tp, t4, a3
                  addi         s5, a4, 1448
                  auipc        t6, 315826
                  auipc        s7, 896618
                  sltiu        s3, t0, -137
                  srli         s2, s0, 31
                  sub          t6, t3, a1
                  or           s4, t5, zero
                  andi         a0, t0, -627
                  addi         s4, zero, 803
                  sll          s6, s6, gp
                  srli         gp, t1, 1
                  sra          t2, a7, t1
                  sra          s7, t5, s6
                  sltu         a1, ra, tp
                  sltu         ra, s10, s11
                  ori          a2, t6, -1832
                  sub          gp, s2, a0
                  sltiu        sp, t4, 1059
                  lui          s8, 151191
                  srl          t4, a3, t4
                  srli         a2, a7, 1
                  addi         s4, s8, 1375
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           s2, 0x55e2657a
                  li           s1, 0x0
                  li           s8, 0x0
                  li           gp, 0xffffffff
                  li           a6, 0x0
                  li           ra, 0x0
                  li           s4, 0xf0a593f4
                  li           t6, 0xb99eb1fd
                  li           s5, 0x0
                  sub          s9, s5, s4
                  addi         s9, t6, 563
                  sub          t6, s8, s9
                  auipc        s8, 11828
                  sub          s1, s4, ra
                  lui          s1, 959737
                  nop
                  sub          s9, s1, s8
                  lui          s2, 880054
                  auipc        a6, 967345
                  auipc        a6, 727565
                  nop
                  auipc        ra, 366102
                  nop
                  sub          s4, s2, s8
                  lui          s4, 219651
                  lui          gp, 324024
                  add          s9, t6, s2
                  sub          s5, a6, s4
                  add          t6, t6, s5
                  add          s5, s5, s9
                  nop
                  lui          a6, 929165
                  auipc        s5, 812978
                  lui          s1, 255249
                  addi         s2, s9, 2004
                  addi         ra, a6, -640 #end riscv_int_numeric_corner_stream_8
                  sltiu        a2, gp, -905
                  andi         ra, t3, -1582
                  xori         a0, a4, 12
                  srl          s10, s5, zero
                  srli         s4, t6, 31
                  sub          s6, s4, t5
                  auipc        s4, 136019
                  nop
                  slt          s3, t4, t1
                  andi         sp, s1, 131
                  auipc        s6, 734435
                  lui          s4, 204653
                  addi         ra, t6, -1653
                  lui          s6, 1006375
                  slli         a1, t5, 18
                  and          sp, a7, t2
                  srai         gp, zero, 15
                  srli         gp, s2, 19
                  srli         t2, s9, 18
                  lui          a1, 508678
                  xori         t2, s3, -1639
                  xori         s6, s10, -502
                  or           a0, s8, s1
                  srli         a0, t4, 9
                  sra          s4, s2, ra
                  srl          ra, s11, s7
                  ori          a4, tp, -999
                  slli         a4, a5, 22
                  lui          a2, 924547
                  slli         gp, s11, 1
                  slti         t6, sp, -1445
                  srli         s7, a7, 0
                  xor          t4, s0, a7
                  add          a4, ra, s10
                  auipc        a4, 1024599
                  slti         zero, s10, -839
                  sub          a1, t0, t4
                  sltiu        t3, s10, 1952
                  auipc        t2, 835950
                  xor          s9, t2, s8
                  sra          s3, a6, gp
                  sltu         a4, tp, s7
                  slt          t5, tp, ra
                  srl          s1, s10, a5
                  srai         s9, a0, 11
                  andi         t5, t6, 652
                  or           t6, a2, s6
                  srli         tp, s3, 18
                  xor          a0, gp, a2
                  ori          s6, t0, 182
                  sltu         zero, s2, s10
                  or           a2, tp, s5
                  andi         sp, a5, -1422
                  andi         a6, t6, -717
                  sltu         a4, s5, gp
                  slti         s1, t6, 1794
                  lui          a6, 816657
                  add          a5, a7, s11
                  srai         s8, s10, 24
                  lui          a6, 166287
                  sll          s10, sp, s2
                  slt          ra, s8, s1
                  slti         s7, a0, -83
                  auipc        tp, 224870
                  and          t0, t6, ra
                  auipc        s9, 872567
                  nop
                  addi         t4, s0, -1985
                  sub          t2, s0, t4
                  srli         zero, t5, 7
                  slti         sp, s10, 1856
                  sub          a4, sp, gp
                  nop
                  ori          a1, a5, -1454
                  sll          s4, s7, ra
                  and          t6, s4, s3
                  add          s2, t1, a6
                  srli         s7, t1, 21
                  andi         t5, sp, -1208
                  slt          a5, t5, a7
                  srl          s3, zero, s8
                  sub          ra, zero, t5
                  sra          a4, sp, s4
                  sltu         s8, s9, a0
                  srl          gp, t6, t4
                  srli         s10, s2, 10
                  add          s10, ra, s2
                  slti         t1, a5, -279
                  srli         s11, a7, 26
                  sub          t0, t1, s11
                  lui          a1, 257272
                  sra          s2, s6, s10
                  or           t4, s2, s3
                  ori          t6, s3, -802
                  sltu         s9, a1, sp
                  and          a2, t0, s0
                  ori          a5, s10, -1303
                  and          s5, t3, a3
                  xor          s9, t2, a3
                  sll          zero, s3, sp
                  sltu         tp, t0, a3
                  xor          s4, s2, s1
                  nop
                  slli         s9, t0, 11
                  sra          s3, s9, s1
                  sltu         t1, a1, a5
                  lui          tp, 708279
                  srl          a2, t4, t2
                  slti         s1, t1, -1462
                  sll          t5, a0, t1
                  andi         s5, s6, 541
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_19
                  li           t6, 0xffffffff
                  li           sp, 0x80000000
                  li           t1, 0xffffffff
                  li           s2, 0x0
                  li           s6, 0xffffffff
                  li           t5, 0x3b1ffb52
                  li           t3, 0x56ac53b4
                  li           s3, 0x80000000
                  li           t0, 0x80000000
                  sub          t1, t5, t6
                  nop
                  nop
                  lui          s3, 522567
                  nop
                  sub          t5, sp, t3
                  add          t5, s3, sp
                  addi         sp, s2, 457
                  add          t6, t3, s4
                  addi         sp, s4, 1944
                  auipc        s4, 465090
                  nop
                  sub          t0, t3, s4
                  sub          s3, t3, s4
                  nop
                  addi         t3, t0, -789 #end riscv_int_numeric_corner_stream_19
                  ori          a6, t6, 1309
                  or           zero, s8, s10
                  sll          a5, a6, a3
                  srl          a0, t0, t6
                  and          s9, s4, t4
                  slt          s9, s3, s0
                  slt          t1, t3, t6
                  andi         s3, t4, -1395
                  slti         s5, s3, -1469
                  nop
                  lui          sp, 253838
                  nop
                  ori          a1, a5, -502
                  lui          s8, 46866
                  srl          a0, a1, s11
                  sub          s7, s9, zero
                  sltiu        s9, t4, -227
                  slli         a2, a4, 30
                  srai         t3, s2, 21
                  sub          s6, t0, a3
                  srli         a6, s8, 8
                  ori          s10, t6, -51
                  srli         a0, t6, 28
                  sll          s6, s2, s8
                  sub          t3, a2, tp
                  sub          t1, s11, t6
                  xori         s11, a3, 948
                  lui          s11, 157000
                  or           t4, a4, a3
                  addi         s10, a3, -1862
                  slli         gp, ra, 24
                  addi         t1, zero, -1688
                  and          t4, a3, a1
                  slt          s7, gp, ra
                  sltu         a5, s4, s9
                  addi         t0, t3, 1116
                  slli         s2, a5, 7
                  sll          gp, gp, a2
                  lui          a2, 266606
                  or           s2, s4, a2
                  sll          gp, s9, t2
                  sll          s7, ra, s6
                  slti         tp, s9, -982
                  slli         s4, t4, 3
                  slt          s4, t2, t3
                  srli         s6, s1, 25
                  or           s11, t5, zero
                  lui          t1, 929641
                  auipc        s11, 1005952
                  slt          t0, tp, t4
                  srli         tp, a3, 6
                  sltiu        a6, a1, -1254
                  xori         s3, s11, -1022
                  auipc        gp, 126796
                  xori         s4, t1, 1274
                  nop
                  addi         t3, t0, 562
                  srl          s9, a3, s1
                  srli         t2, a2, 12
                  sltu         s6, tp, a1
                  addi         s11, s3, -240
                  ori          gp, s9, -1601
                  nop
                  sra          t0, tp, t6
                  sll          s3, t3, tp
                  slli         s5, a2, 15
                  xor          zero, s1, zero
                  or           a1, s10, a1
                  sub          s9, a2, s11
                  srai         a6, a3, 7
                  or           t2, s9, t1
                  addi         a6, s3, -1078
                  sltiu        a5, a1, 703
                  add          tp, t6, s11
                  sltiu        a4, a0, -1769
                  add          t4, t1, ra
                  slti         a0, s6, -458
                  srli         a1, a0, 0
                  and          s10, gp, a6
                  xori         s4, s8, 2005
                  slt          s1, t2, t5
                  srai         a0, s9, 21
                  xori         s10, a5, -1497
                  sll          gp, s10, t4
                  xori         a1, s2, -578
                  sltu         s10, tp, s6
                  xor          ra, t4, s2
                  auipc        gp, 341053
                  srl          t0, s8, a5
                  ori          t5, a7, -172
                  slt          s2, ra, s0
                  xor          tp, t2, s1
                  ori          s5, s1, 1595
                  sra          s10, a0, s4
                  xor          a2, t3, zero
                  addi         tp, a1, 1128
                  ori          gp, s3, 1332
                  srl          a1, a0, t0
                  srai         a6, s1, 25
                  or           s2, t4, s0
                  sub          t6, s1, ra
                  addi         s8, a1, 1536
                  slt          ra, t1, s8
                  xor          t6, s3, s9
                  srli         t4, a1, 4
                  slt          t2, s3, a2
                  sub          s10, a4, s5
                  sll          s4, t0, s2
                  sra          t6, s2, s10
                  sub          s1, t4, a0
                  srli         a2, a0, 24
                  sub          a5, s3, zero
                  nop
                  slt          t4, t1, a2
                  sra          t2, s9, a6
                  addi         tp, s8, 1337
                  and          tp, a6, a1
                  sltu         t3, s6, gp
                  xor          a2, zero, t2
                  nop
                  ori          t4, t6, -2010
                  srli         s8, t5, 7
                  srl          a0, s9, a7
                  slti         s9, t0, 199
                  lui          a6, 36428
                  sltiu        a6, gp, 1077
                  sltiu        a2, a4, -1231
                  nop
                  sll          a1, t2, a0
                  or           a1, a1, t0
                  lui          a2, 243462
                  srai         s9, s11, 16
                  sra          tp, ra, s3
                  sltiu        ra, s6, -173
                  sltiu        s1, a6, 463
                  xor          s9, tp, t6
                  sub          gp, s10, zero
                  auipc        s9, 705217
                  andi         t6, a0, -806
                  xor          t0, a4, a4
                  xori         s6, s3, -1988
                  and          s3, s2, s5
                  and          a2, t4, s9
                  slt          s1, s11, s1
                  xor          s9, ra, s0
                  addi         s1, sp, 1789
                  slt          s10, sp, s10
                  sltiu        t3, a5, 1747
                  sra          gp, a7, zero
                  nop
                  and          s1, s4, t0
                  addi         ra, tp, -1024
                  slt          t0, s7, ra
                  sra          t1, tp, s0
                  srai         s6, s1, 14
                  srli         zero, a4, 19
                  sll          t6, s8, s8
                  sll          a5, gp, t0
                  ori          a1, sp, 161
                  srl          s11, t4, t4
                  or           s3, a5, zero
                  srli         t5, ra, 5
                  nop
                  sra          s11, a1, tp
                  slti         s7, t2, 1589
                  slti         s8, s2, -1300
                  xor          t0, a0, a6
                  nop
                  slt          t0, t4, s11
                  addi         a0, s2, -1110
                  slli         t2, s3, 31
                  xor          s7, gp, a7
                  slti         tp, a3, 359
                  srli         ra, a7, 4
                  auipc        t0, 187079
                  slli         s2, s2, 21
                  nop
                  andi         tp, s3, 1753
                  sltu         s1, s6, t6
                  andi         s2, a3, -1708
                  srli         t2, a4, 4
                  lui          s7, 840114
                  add          s7, t0, t1
                  sltu         a2, t3, gp
                  srli         t4, tp, 8
                  xori         a1, s0, 979
                  sltu         s3, s0, gp
                  andi         s11, t6, -832
                  andi         s11, a3, 1635
                  add          ra, tp, a1
                  sll          zero, t1, a7
                  lui          t3, 546577
                  slti         gp, s8, 2010
                  slt          a4, t0, s9
                  xori         t1, t1, -1803
                  lui          s2, 401085
                  slti         t0, s1, 1333
                  andi         t6, s3, 1433
                  and          t1, s3, t1
                  sll          t2, a5, s9
                  slti         s11, t3, -462
                  nop
                  sll          s7, t2, zero
                  nop
                  add          sp, t2, a6
                  slt          s6, t4, t5
                  nop
                  addi         s1, sp, 1163
                  nop
                  srli         t0, s4, 17
                  ori          a4, s1, -1354
                  sltu         sp, gp, t5
                  srli         a6, a7, 15
                  add          s7, s5, zero
                  nop
                  srli         s11, sp, 28
                  sra          t5, s10, t0
                  sll          t3, t0, t1
                  sltu         s4, gp, t3
                  sra          ra, ra, t1
                  add          t5, t2, sp
                  lui          a5, 134390
                  ori          s4, t0, 1597
                  xor          t5, t1, sp
                  auipc        a6, 365432
                  sra          t0, s1, a3
                  or           t0, ra, a0
                  slti         a6, s8, 1195
                  add          t0, a6, a7
                  slti         s11, s2, -578
                  sra          s5, t4, s6
                  srl          s10, s7, s5
                  addi         a0, s1, -1295
                  lui          t4, 233056
                  slt          s3, t3, s8
                  sra          s6, a3, a7
                  sltu         s5, t6, s6
                  lui          a6, 131297
                  sll          a5, sp, s11
                  slli         s7, s6, 25
                  add          t0, t0, ra
                  addi         s7, s9, -660
                  slli         s3, t0, 19
                  lui          t3, 342054
                  add          s4, s9, a6
                  lui          a2, 517791
                  sra          t6, zero, t6
                  xori         s3, a3, 1385
                  addi         s11, s5, 802
                  sra          gp, s10, t0
                  andi         s2, s3, -799
                  slt          t5, s5, a6
                  addi         s5, t6, 1896
                  sltiu        s9, t3, 1905
                  slti         a5, s4, -1800
                  srli         t0, s2, 22
                  xori         t6, s5, 1880
                  nop
                  andi         zero, zero, -718
                  xori         t0, t0, -970
                  sltiu        t4, sp, -2045
                  sra          s7, a7, zero
                  or           sp, zero, a5
                  lui          s6, 727833
                  add          s2, s5, a5
                  slti         s5, s11, 1447
                  lui          a1, 36981
                  andi         a6, s4, 1339
                  sub          t2, s1, s4
                  sltu         s9, a7, s7
                  sltu         s5, s9, t2
                  srli         a5, sp, 12
                  sltiu        s2, gp, -770
                  xori         t4, sp, -1610
                  ori          zero, a4, 1931
                  auipc        a6, 418914
                  nop
                  ori          s11, t5, 1320
                  lui          t0, 246929
                  lui          s5, 238684
                  xori         s4, s6, 715
                  addi         s5, t5, -1209
                  andi         t4, s5, 1948
                  slt          a5, a3, a0
                  sltiu        s5, s5, -1530
                  slli         s1, s5, 31
                  auipc        sp, 644812
                  sll          sp, sp, t1
                  or           s6, t0, s3
                  sltu         s2, s7, a0
                  slt          ra, s11, t6
                  slti         a6, t4, 1127
                  addi         t5, s7, 1555
                  srl          sp, s1, t2
                  sll          s6, gp, a5
                  xor          gp, a6, s0
                  or           t0, gp, t1
                  sltu         t1, t3, a4
                  sltiu        s10, a6, 1288
                  nop
                  andi         a6, t6, 1130
                  sll          s2, s3, sp
                  srai         s4, ra, 28
                  sra          s9, a6, t2
                  or           s4, s4, a3
                  lui          t6, 440380
                  lui          gp, 768068
                  srai         a1, t1, 30
                  addi         s9, a6, 653
                  or           zero, zero, a5
                  lui          sp, 687616
                  and          t2, a6, t0
                  slli         s1, s10, 16
                  slli         t5, t4, 18
                  addi         t1, s7, -1835
                  sltiu        s7, ra, 1599
                  and          t6, tp, a6
                  ori          a1, zero, 497
                  sra          s11, s5, a5
                  srl          t0, t6, t5
                  nop
                  addi         a5, a2, -1836
                  slti         s4, a6, 682
                  or           t3, s0, s5
                  slt          tp, s6, s4
                  auipc        t5, 68273
                  sltiu        t3, t5, -892
                  addi         a4, t2, 899
                  slli         s10, t0, 6
                  sltiu        ra, gp, -849
                  sra          t6, a0, t6
                  add          zero, a2, s4
                  slt          s2, ra, a3
                  ori          s2, tp, 1947
                  slt          a0, t0, a5
                  xor          t0, ra, s4
                  nop
                  lui          a1, 332246
                  auipc        t2, 543126
                  slt          t0, s5, s2
                  slt          t1, a0, tp
                  sltiu        t1, a1, -1531
                  slli         t0, ra, 28
                  sll          s1, t1, ra
                  and          s4, t0, tp
                  slli         gp, s8, 17
                  andi         t2, a3, -1872
                  xori         s4, t0, 2001
                  slli         ra, t2, 29
                  ori          s11, s4, -1808
                  slli         t6, s7, 6
                  slt          a5, a7, zero
                  andi         a2, t6, -9
                  addi         a5, t2, 1241
                  slti         s1, s6, -676
                  lui          a0, 1009859
                  slli         t2, s8, 2
                  sltu         s10, s5, s5
                  andi         s10, s0, 468
                  or           a0, s2, ra
                  xori         t6, s0, 1195
                  add          s3, a7, t5
                  sltiu        t3, t4, 1614
                  lui          a0, 324688
                  sll          t6, s3, a7
                  slti         s8, t1, 807
                  lui          a5, 67641
                  or           a6, s6, s0
                  sub          gp, a5, ra
                  or           a5, s7, a1
                  sltu         a4, s1, s4
                  sub          s8, a2, sp
                  or           sp, a1, s11
                  sltu         t0, a4, t6
                  ori          t4, s0, -702
                  and          s8, a1, s5
                  lui          tp, 168846
                  addi         t1, a2, 559
                  srai         a1, s9, 11
                  srli         t1, s1, 9
                  auipc        t3, 127736
                  srai         sp, s2, 21
                  srai         sp, a2, 15
                  slti         s9, tp, 459
                  or           s10, s8, a4
                  srli         s9, s9, 1
                  nop
                  add          a6, a4, a1
                  sra          t5, tp, a3
                  slti         gp, a4, -734
                  andi         t5, a3, 232
                  sltiu        a6, s5, -669
                  sra          tp, t5, s10
                  srai         t1, s11, 14
                  add          t2, a6, t4
                  nop
                  auipc        t6, 835300
                  or           s8, s11, t2
                  sra          a2, s8, t0
                  slt          a2, s7, a2
                  slli         gp, a3, 17
                  sltiu        t1, a6, -1350
                  andi         t0, a6, -1488
                  xor          t0, ra, s7
                  nop
                  sub          tp, s6, a3
                  slti         s4, s1, -1482
                  andi         s2, s4, 223
                  lui          ra, 857377
                  addi         sp, s4, -1300
                  xori         s3, s6, -1084
                  add          t6, s4, s2
                  andi         zero, a4, -896
                  sltu         t3, a1, tp
                  srli         s4, s11, 12
                  nop
                  lui          tp, 209365
                  auipc        t0, 615950
                  srl          tp, s8, s7
                  sll          s5, a1, t4
                  sltu         s7, s1, gp
                  srli         a0, t2, 18
                  andi         s6, s1, 650
                  sltiu        t5, a2, 1621
                  sltu         t6, a6, s6
                  slt          zero, s1, s0
                  auipc        t1, 643826
                  sltiu        t6, s2, -1395
                  xori         a5, gp, 702
                  srli         a2, gp, 15
                  sra          s11, a6, a4
                  sltu         t4, s9, a5
                  auipc        s3, 159257
                  slti         ra, s5, -150
                  andi         s10, s3, -1094
                  lui          s5, 684844
                  sll          s5, s5, t6
                  srai         t3, a6, 0
                  slt          t2, sp, t6
                  or           t6, s7, s3
                  xor          s8, a2, gp
                  srai         gp, t6, 11
                  xori         ra, a3, -6
                  srl          sp, t3, t0
                  srl          s11, t3, ra
                  sltu         s5, a4, t0
                  and          a1, s2, s6
                  ori          s6, s2, 288
                  sltu         s11, t5, s2
                  xor          a2, ra, a5
                  sltiu        s6, s3, -562
                  auipc        a5, 753117
                  sltiu        s7, s3, -83
                  xori         t3, zero, -1056
                  sra          s10, t6, a0
                  xor          t4, s3, s7
                  sltu         a1, s11, t6
                  xori         s2, ra, -1568
                  sub          s7, s4, t6
                  sub          s7, a7, s4
                  sra          s8, s1, a5
                  addi         tp, t6, 971
                  ori          gp, gp, 1805
                  sltu         tp, ra, s11
                  srli         s9, gp, 1
                  and          sp, t2, ra
                  slli         s3, s10, 29
                  auipc        t4, 385232
                  andi         a4, t1, -995
                  slli         t4, s8, 26
                  nop
                  srli         a2, t3, 30
                  sra          a4, t3, t5
                  srai         tp, a1, 25
                  auipc        t4, 127832
                  add          s10, t1, zero
                  add          t5, s7, t0
                  sltiu        s11, s1, -744
                  srli         s1, s2, 25
                  srai         a4, s4, 13
                  andi         a2, tp, -823
                  ori          t5, t1, -650
                  sltiu        s5, s3, -1990
                  srl          gp, a3, gp
                  andi         s8, s11, -487
                  addi         s10, s2, 465
                  ori          a6, s5, 1246
                  sra          s4, s9, a4
                  slti         s5, s3, -1305
                  xori         s10, s3, 1159
                  sltiu        a6, s0, -1420
                  sltu         a5, s2, s7
                  ori          s11, a3, -1892
                  andi         s5, sp, -385
                  sll          t4, t2, s6
                  or           t4, t0, s6
                  ori          a1, a0, -916
                  auipc        s7, 708074
                  srl          s6, s9, t6
                  sll          gp, tp, t2
                  slli         s10, a4, 13
                  and          s8, a0, a6
                  lui          a0, 230141
                  or           s2, s9, zero
                  sltu         gp, t3, s5
                  ori          s10, s1, 261
                  add          s8, ra, s9
                  sltiu        t2, t3, -1109
                  and          a5, s9, s10
                  srli         t5, s11, 13
                  slli         a1, a4, 11
                  sub          s5, t1, s7
                  sll          t2, s7, t4
                  nop
                  srli         a1, sp, 22
                  xor          s8, s3, t0
                  nop
                  sub          a0, ra, a2
                  auipc        sp, 355655
                  sra          s1, sp, t0
                  add          gp, t3, ra
                  sltiu        s3, s6, -1588
                  sll          sp, ra, s1
                  nop
                  sltiu        s9, a0, -1434
                  addi         s11, s8, 652
                  auipc        t1, 365358
                  slli         t3, s7, 17
                  and          s7, s8, a4
                  sll          t3, ra, s10
                  sltu         s9, a3, s3
                  auipc        s5, 93996
                  or           s6, tp, s1
                  ori          a2, a0, -1173
                  srl          a1, s1, s7
                  ori          a2, s3, 937
                  srl          zero, a7, gp
                  sltu         s5, s3, a2
                  addi         s5, s7, 130
                  srl          s11, s8, t6
                  slt          t3, s4, a4
                  auipc        ra, 832220
                  sltu         a0, t1, t0
                  srli         t0, zero, 15
                  addi         sp, a2, -1557
                  or           s8, s4, a1
                  xori         a2, t5, 1427
                  slti         a0, s9, 871
                  sll          t3, s1, gp
                  slt          s11, s10, tp
                  nop
                  ori          a1, s2, 184
                  nop
                  auipc        a6, 28787
                  xori         a6, t4, -471
                  add          a4, a6, a5
                  sub          t1, a3, a6
                  srl          t5, s1, s11
                  andi         s2, t0, -272
                  srai         a6, s1, 26
                  srli         t4, s5, 25
                  addi         s11, a6, -117
                  ori          s7, s1, 467
                  slli         s3, sp, 30
                  sra          s9, s7, t4
                  sll          s10, t3, t4
                  sltiu        a1, zero, -392
                  srl          gp, a2, a6
                  auipc        s2, 500824
                  sub          a0, s2, s2
                  nop
                  lui          t2, 978173
                  sltiu        a0, a0, 1243
                  slt          t4, ra, s9
                  and          s9, t3, s11
                  add          sp, t6, s10
                  xori         t0, t1, -693
                  addi         t6, ra, -1088
                  sub          t4, s7, a2
                  sra          t4, t1, s5
                  sltu         sp, s3, t4
                  xori         a4, s2, -317
                  sltiu        a1, s3, -1948
                  add          s5, a3, s2
                  or           ra, a0, t6
                  and          t3, a1, tp
                  auipc        a2, 785729
                  slt          t3, s2, s6
                  addi         a4, s7, -647
                  slti         s6, s2, 383
                  auipc        s10, 354291
                  ori          a2, sp, -1200
                  sub          a5, ra, t1
                  sll          a6, sp, t0
                  nop
                  slti         s8, s8, -1176
                  lui          a2, 548181
                  slli         a5, a5, 2
                  auipc        gp, 1018995
                  sll          s10, t5, a7
                  xori         s1, a1, 1714
                  sltiu        s10, s10, 1580
                  slli         s6, a6, 23
                  nop
                  slt          t2, a4, t2
                  and          zero, s2, tp
                  sltiu        t2, a3, -763
                  srl          s1, a2, a7
                  slti         a5, s4, -808
                  ori          a2, s1, 214
                  srai         s8, t2, 14
                  slt          s11, s1, zero
                  lui          s6, 31746
                  srl          ra, a3, ra
                  srl          s10, t6, t1
                  andi         t0, s9, 401
                  srl          tp, tp, a2
                  xori         t6, s10, -775
                  addi         s8, a3, -1261
                  xor          s5, s10, s1
                  addi         t1, a0, 131
                  ori          t3, s9, -945
                  andi         a5, a0, 1600
                  slt          s8, s3, zero
                  andi         s11, t2, -590
                  sra          t6, s10, a5
                  srli         a4, s2, 17
                  sub          a2, s3, gp
                  addi         s8, ra, 1406
                  auipc        a6, 626854
                  lui          t4, 46815
                  srl          s11, a4, ra
                  or           t1, s1, s7
                  srli         a2, a5, 15
                  sltu         t6, a2, t4
                  lui          s7, 607067
                  slti         s4, gp, 1259
                  ori          a6, a5, 777
                  xor          s5, s4, s7
                  auipc        tp, 402782
                  sltu         s4, s1, a3
                  sll          s9, t3, sp
                  and          s3, a0, gp
                  nop
                  sltu         s4, gp, a6
                  lui          s4, 852036
                  srai         s6, tp, 10
                  nop
                  lui          a2, 300487
                  srl          s5, s10, zero
                  add          s7, t4, a1
                  auipc        a1, 1035186
                  sltu         ra, t6, s6
                  andi         a0, zero, -895
                  srl          t4, s2, zero
                  and          s7, a4, s7
                  slli         a2, tp, 20
                  addi         a4, a5, 719
                  sltiu        t1, a4, -1494
                  sltiu        s4, a6, 458
                  sltu         s9, a3, s5
                  lui          s9, 87939
                  srli         a0, a4, 27
                  slli         a4, sp, 2
                  slli         t2, t5, 3
                  srli         s4, s0, 7
                  sltiu        s5, a4, -1906
                  sub          a5, s5, ra
                  srl          t1, t2, t5
                  sltiu        s1, ra, 303
                  and          s2, a4, a5
                  srli         s4, s10, 15
                  slti         s11, a3, 241
                  lui          gp, 179796
                  ori          t6, t3, 1533
                  sra          s6, a7, gp
                  nop
                  slli         a0, s10, 5
                  nop
                  nop
                  add          t5, s10, s1
                  or           s8, t5, a0
                  add          a1, s6, a5
                  and          t5, s4, t4
                  auipc        tp, 1001130
                  sra          a2, s2, s4
                  sub          ra, gp, s2
                  ori          t3, a0, 1564
                  xori         gp, t1, 1510
                  slti         tp, tp, 896
                  slli         sp, a7, 19
                  auipc        a6, 689027
                  xor          t2, s2, a5
                  and          s3, t3, sp
                  auipc        t6, 206255
                  srai         sp, a6, 16
                  or           a1, t0, sp
                  nop
                  srl          a0, gp, a3
                  and          a0, t1, t0
                  xor          gp, a2, t5
                  sltiu        sp, a4, -2014
                  slt          t3, s4, a3
                  xor          s10, t2, s6
                  andi         s5, a2, 1717
                  xor          s6, s2, t0
                  andi         a6, s1, -1221
                  srli         s7, ra, 24
                  xor          s7, s10, s3
                  slt          s11, s2, tp
                  sra          s10, t3, t4
                  addi         sp, s6, -1979
                  slti         gp, t5, -646
                  xor          a5, a1, t4
                  sll          a5, s0, t2
                  xor          tp, a6, a2
                  sll          s6, a5, s1
                  srai         s7, t3, 25
                  lui          s2, 94227
                  xor          s9, s7, s5
                  srl          t6, s1, a1
                  xor          t5, ra, a5
                  xori         s5, s8, 955
                  andi         ra, gp, -1028
                  srai         s1, a1, 6
                  slti         t2, a6, -360
                  srl          a6, t4, s7
                  sltiu        ra, a0, 903
                  auipc        zero, 411658
                  xor          a1, a1, s0
                  srai         s9, a4, 5
                  sltu         s5, a0, a3
                  addi         t1, t2, -1814
                  addi         s4, t4, 1228
                  ori          s1, a6, -345
                  ori          zero, t6, 1088
                  auipc        a4, 31497
                  sra          a0, gp, s6
                  ori          gp, a3, 935
                  lui          t4, 937603
                  slti         s11, s10, -1874
                  slti         t3, t4, 170
                  srai         t6, s11, 22
                  lui          zero, 519324
                  slt          t0, s1, s10
                  addi         sp, s2, 992
                  or           s4, s1, tp
                  srli         a5, t0, 15
                  sltiu        t6, s9, -2044
                  slli         t4, s7, 31
                  ori          ra, s0, 1660
                  xori         t3, t4, -721
                  slt          t2, a3, t6
                  xor          s8, zero, zero
                  sltu         ra, t4, a4
                  srli         s10, t6, 13
                  sub          a0, s8, s9
                  srl          a4, tp, gp
                  ori          a1, a4, -344
                  xor          t5, a7, tp
                  srli         t5, a1, 29
                  lui          tp, 219922
                  andi         s11, t4, -1297
                  addi         t5, a3, 1404
                  auipc        a6, 358588
                  sltu         s9, ra, s1
                  srai         t4, s4, 3
                  or           s9, a7, a6
                  addi         t0, t4, 116
                  slli         ra, s3, 10
                  add          tp, s4, t6
                  slt          s7, a5, a7
                  sll          s9, s4, s0
                  srli         sp, s8, 25
                  sltiu        s10, a6, -966
                  add          s9, a5, t1
                  andi         ra, t3, -1234
                  slli         sp, s9, 29
                  and          a4, s4, a2
                  ori          t2, tp, -1814
                  addi         s9, s9, 220
                  nop
                  sra          a1, s7, s4
                  andi         t3, sp, -1353
                  nop
                  auipc        t4, 61561
                  slti         gp, t1, 1921
                  slli         t4, s5, 8
                  slti         s6, s7, -994
                  lui          s1, 619642
                  slti         t2, gp, -1099
                  addi         s5, t4, 1279
                  slt          t2, t6, s8
                  ori          t3, zero, 1599
                  andi         t1, t1, 1378
                  sltiu        s10, t3, 1385
                  sltu         s2, gp, s6
                  nop
                  addi         s5, gp, -1794
                  auipc        s3, 865827
                  and          t5, s9, tp
                  or           t3, s10, a4
                  slti         s11, tp, -618
                  sra          a2, ra, t0
                  sub          t0, t0, s8
                  slli         tp, zero, 7
                  add          s1, s7, s5
                  slti         s7, tp, 938
                  nop
                  srli         sp, s10, 16
                  ori          t5, t1, -1607
                  srli         s2, gp, 0
                  srl          a0, a7, zero
                  sra          t2, a7, sp
                  add          t5, s11, t5
                  andi         t2, t5, 525
                  sltu         a1, s9, ra
                  sub          t5, a2, t1
                  auipc        s4, 3311
                  srli         s2, a0, 27
                  sub          a6, a5, s7
                  add          s7, s8, t0
                  slli         t3, a4, 30
                  sltiu        a5, t6, 1673
                  srl          s4, t6, tp
                  and          a2, tp, s5
                  auipc        s4, 67958
                  addi         a5, s11, 354
                  sra          s1, tp, t5
                  nop
                  srli         s5, s0, 24
                  slt          s6, t0, t1
                  xor          t3, s6, a4
                  add          t6, s9, a2
                  srai         a2, a5, 28
                  nop
                  auipc        s3, 829257
                  sltiu        t3, s6, 1888
                  slt          s7, a2, t0
                  ori          s7, a1, -440
                  and          s11, s4, t5
                  sra          ra, zero, t6
                  slli         s11, s2, 6
                  xori         t0, gp, 1267
                  srai         s4, t1, 21
                  xori         a5, tp, -1643
                  auipc        s6, 1029128
                  andi         ra, a6, 1715
                  slti         tp, zero, -260
                  srai         a6, s9, 5
                  andi         a5, a5, 649
                  addi         s3, s1, 218
                  srli         s9, a2, 27
                  ori          s1, a0, 1496
                  slli         a0, t0, 29
                  addi         s3, gp, 1995
                  addi         ra, s9, -1224
                  nop
                  lui          s2, 374820
                  add          s6, s8, s1
                  xor          a0, a7, s11
                  xor          a2, a0, t3
                  xor          a2, t3, s10
                  ori          s7, t0, 1019
                  auipc        s8, 386820
                  slli         t2, s11, 7
                  or           s9, a0, a5
                  nop
                  auipc        a1, 701354
                  srli         t1, s3, 6
                  slti         t1, t5, 1202
                  sltu         t4, ra, s8
                  or           a0, a2, s9
                  xori         s9, t6, -270
                  sll          a0, a0, s1
                  xor          ra, a4, s7
                  andi         s3, s4, 1902
                  srli         tp, s4, 15
                  srai         t6, s7, 27
                  nop
                  sltu         t1, t1, s4
                  xor          a4, a2, a0
                  srl          s7, s9, a7
                  and          a5, s9, a0
                  sra          s5, s6, t2
                  xor          t3, s3, t3
                  lui          a4, 124991
                  srl          t3, a4, s9
                  slli         sp, a4, 22
                  sll          t1, s3, a2
                  nop
                  lui          t4, 182841
                  sll          s5, s4, s3
                  sltu         s9, zero, ra
                  nop
                  srli         t0, t2, 0
                  and          s7, s10, t6
                  sltu         s3, s5, s1
                  sltu         gp, t4, t0
                  and          zero, t6, s0
                  sltu         t5, s10, t6
                  srai         a4, s4, 24
                  srli         gp, zero, 1
                  sltu         s7, s8, s2
                  or           a2, s7, s9
                  xor          s10, s5, s1
                  or           ra, a7, sp
                  slti         s2, t0, 94
                  srai         tp, t4, 17
                  xor          t2, s3, a5
                  xor          t3, t4, s5
                  sltiu        t3, s0, 842
                  nop
                  srl          a5, sp, tp
                  addi         t2, t2, 1176
                  sltiu        t3, t6, -35
                  sltu         s1, t4, s7
                  nop
                  sltiu        t2, t3, -498
                  srl          t6, s4, a3
                  or           s11, gp, a0
                  nop
                  sll          a5, s0, t6
                  and          a6, t1, t2
                  addi         t3, s2, -1229
                  slt          s2, s8, a6
                  addi         s8, a0, 2001
                  and          s9, s7, t6
                  slti         s8, s9, -590
                  xori         s11, s1, 993
                  srl          s5, a7, s10
                  xori         a4, s1, 1988
                  srli         s11, t4, 1
                  srai         s10, t0, 6
                  auipc        a5, 209738
                  xor          a6, a1, s2
                  srli         t2, t1, 13
                  sltu         t4, s4, a2
                  slt          t0, t3, a6
                  sub          t2, s0, s7
                  andi         a5, a1, 174
                  and          gp, a0, s11
                  add          t0, tp, t1
                  sub          ra, s8, t0
                  ori          s3, sp, 45
                  xori         ra, t6, 355
                  slli         sp, a0, 9
                  srli         s6, t6, 22
                  srli         s9, tp, 5
                  nop
                  lui          t2, 363686
                  srl          a6, s2, tp
                  or           sp, s0, t5
                  sub          zero, t1, t3
                  sra          t4, s9, s2
                  srl          t2, s5, s0
                  nop
                  srli         zero, t0, 10
                  xori         s4, ra, -777
                  srai         t3, a2, 2
                  and          sp, s7, s2
                  xor          t3, s6, a5
                  xori         a1, s0, -551
                  xor          a1, tp, a2
                  sltu         s6, s5, s6
                  slli         t2, s9, 15
                  srli         s2, a3, 6
                  nop
                  lui          a1, 626132
                  srai         s4, s7, 21
                  srli         t1, t2, 18
                  slt          a6, zero, s0
                  sltu         t2, a1, s3
                  and          s4, s2, t4
                  sra          s8, zero, a6
                  srai         s6, s0, 25
                  srli         tp, sp, 1
                  slt          a2, t3, a5
                  auipc        s4, 965917
                  slli         s4, tp, 25
                  srai         t5, ra, 25
                  xori         t5, t2, -235
                  lui          s8, 697261
                  srl          s3, s7, t0
                  slli         s9, t1, 22
                  lui          ra, 998178
                  slli         s2, s1, 3
                  nop
                  slli         s7, a6, 0
                  nop
                  nop
                  srl          s5, gp, s4
                  addi         t4, a5, -474
                  slti         sp, s11, -1820
                  and          t5, s3, s5
                  slli         s6, s0, 28
                  lui          s5, 1008028
                  addi         a6, s1, 1342
                  add          a6, t2, zero
                  auipc        t6, 370240
                  sltiu        s10, t5, 1342
                  xor          s3, s7, t6
                  addi         s5, a6, -1298
                  ori          s6, a4, -227
                  sra          ra, gp, a7
                  sltu         s1, tp, s11
                  addi         zero, s3, -1304
                  ori          s1, s2, -697
                  nop
                  lui          t0, 500892
                  andi         t5, a3, 1791
                  add          tp, a0, s3
                  sltiu        s11, t0, -1566
                  srai         s11, s5, 9
                  slt          t6, s6, s3
                  xor          s8, t1, a4
                  srai         t2, a6, 25
                  nop
                  lui          t2, 607745
                  sra          s10, t1, a7
                  ori          t1, a2, 1805
                  sub          t1, s11, t1
                  xori         s11, sp, -621
                  sll          t6, ra, t1
                  andi         tp, t0, 162
                  or           s10, t1, t1
                  srai         s4, a2, 31
                  andi         t5, t2, -2046
                  sra          t5, s6, s9
                  add          s1, s8, s6
                  andi         s8, s11, 556
                  lui          tp, 863341
                  srli         a0, a1, 18
                  sra          a4, a0, a0
                  sra          s8, t0, s0
                  slti         a6, zero, -2018
                  nop
                  srai         s3, s10, 4
                  slli         a5, s5, 18
                  xori         sp, t4, -1424
                  or           gp, ra, a6
                  slli         s5, t5, 25
                  lui          t0, 1002721
                  lui          s2, 215447
                  srai         s4, a6, 13
                  lui          ra, 703399
                  slli         t5, s5, 5
                  ori          a4, a3, 997
                  ori          s7, t2, -1902
                  sltiu        a5, a0, -290
                  add          s6, a3, a5
                  srli         t1, a0, 19
                  srli         a6, a5, 16
                  slti         s11, a7, 946
                  add          t0, sp, t0
                  and          a1, s3, t3
                  sra          t4, ra, t5
                  or           zero, t5, t1
                  sll          gp, t4, tp
                  auipc        s1, 260557
                  srli         t5, s5, 27
                  andi         t6, s8, 1419
                  slti         t5, a0, 309
                  ori          zero, s4, -435
                  sltu         t4, zero, s3
                  addi         s2, gp, -1260
                  andi         s4, zero, 1475
                  and          tp, ra, t1
                  slti         s1, s8, 1375
                  sra          t3, ra, s11
                  sltiu        s2, t0, -868
                  lui          t2, 63147
                  sltu         s11, s5, t4
                  xori         s5, t5, 446
                  sltu         a0, zero, s2
                  lui          t3, 779344
                  lui          zero, 378490
                  lui          a2, 1031200
                  slti         t6, s8, 677
                  sra          s2, t2, a1
                  add          a6, s7, s7
                  addi         a0, t2, -176
                  xori         gp, ra, -672
                  andi         a6, a1, 1907
                  nop
                  slti         s10, a6, -1702
                  andi         sp, a1, 1279
                  xor          s9, s0, s1
                  slti         a4, zero, 404
                  and          s11, a2, s5
                  srl          a5, s4, a2
                  add          s10, a7, zero
                  sub          sp, a6, a2
                  nop
                  and          s1, t4, t6
                  nop
                  andi         t1, a5, -1265
                  addi         t6, a7, -1337
                  sll          t2, s3, t4
                  add          a0, s9, t6
                  xori         s3, t3, -1038
                  srli         t4, t1, 16
                  ori          a2, gp, 1895
                  slli         t6, t0, 25
                  or           t3, s5, a3
                  sltu         t6, sp, a7
                  andi         a0, a7, 1340
                  xor          s7, zero, tp
                  lui          t4, 580457
                  slt          s4, a7, s4
                  and          t3, gp, a2
                  nop
                  xor          t5, s1, s8
                  slt          zero, t4, s10
                  sltiu        t0, t4, 747
                  lui          s7, 170214
                  slli         t0, s6, 30
                  slt          t4, t5, t1
                  auipc        a2, 790839
                  addi         s4, a0, 185
                  srli         s1, gp, 0
                  srl          gp, s11, s9
                  lui          a1, 527482
                  sra          zero, zero, t3
                  sltu         sp, s10, s11
                  sltiu        t4, gp, -1603
                  srai         t0, t1, 27
                  add          gp, sp, t5
                  add          a5, ra, t3
                  sll          sp, t6, a1
                  sub          a1, s8, sp
                  srl          s10, s9, tp
                  xor          zero, t0, t2
                  lui          t1, 225020
                  sltiu        a4, a2, 1025
                  sll          t0, s5, s1
                  sltiu        s4, t1, -1589
                  or           s8, a7, t6
                  nop
                  or           a2, zero, s7
                  slti         zero, s6, 1014
                  and          t4, s6, s4
                  nop
                  xor          t2, ra, t5
                  slli         a4, t0, 0
                  nop
                  addi         t4, s8, 885
                  xor          a0, t3, s0
                  slli         s4, a1, 26
                  slti         s7, sp, 880
                  or           sp, sp, a6
                  xor          t3, t5, gp
                  srli         a1, a4, 29
                  and          sp, t3, s6
                  slti         t0, a5, -303
                  sltiu        a2, a7, -2027
                  and          t1, gp, a4
                  sll          a0, gp, t4
                  or           sp, t6, a1
                  sltiu        s2, a2, 1245
                  andi         gp, s3, -1905
                  slti         s7, t2, -297
                  add          s3, t4, t1
                  add          t6, t6, zero
                  sll          a1, s8, t4
                  srai         s8, a6, 31
                  slli         zero, a3, 29
                  sll          sp, s8, a7
                  auipc        ra, 319541
                  slti         s2, t5, 1005
                  srl          s11, gp, t6
                  slt          s6, gp, zero
                  sltiu        s7, a1, 535
                  add          t6, s4, s7
                  ori          s10, t2, -1912
                  andi         t3, s8, -1896
                  andi         t6, s6, -664
                  and          s9, t2, a1
                  and          t6, s8, s0
                  srai         t3, s10, 29
                  srai         s9, zero, 19
                  slt          s10, s3, a0
                  slli         t0, a2, 17
                  slti         s2, s6, -648
                  sll          sp, t0, s5
                  slli         a0, t4, 31
                  slti         s4, s6, -1244
                  nop
                  andi         zero, tp, -1667
                  and          s2, a2, a0
                  auipc        zero, 636684
                  srl          t1, tp, sp
                  slli         s5, s9, 24
                  xori         s3, a3, -350
                  sra          a2, s8, s4
                  xori         a4, s0, 1795
                  slti         a2, sp, 2024
                  or           s4, a4, a3
                  lui          a6, 66623
                  sltu         t3, s2, s1
                  sltu         a0, t3, s10
                  srai         t4, a2, 3
                  slt          s5, t2, sp
                  sub          a5, s6, sp
                  addi         tp, s10, 361
                  auipc        s10, 171575
                  sltiu        s8, t4, 1917
                  nop
                  slli         s7, ra, 16
                  slt          s9, t2, s8
                  sltiu        zero, s5, 1583
                  srl          t1, t3, a4
                  slti         zero, gp, 1824
                  xori         t6, a7, 516
                  or           a1, s10, s3
                  sra          a1, t3, s5
                  srli         sp, a5, 7
                  addi         t4, a1, -523
                  or           tp, t4, a4
                  xor          t2, a5, a0
                  sltiu        s2, a3, -1008
                  slti         a6, a0, 919
                  lui          zero, 138714
                  add          gp, a6, gp
                  ori          s10, s2, -1565
                  slli         a6, ra, 4
                  sltu         a4, s2, ra
                  lui          s5, 892586
                  nop
                  auipc        s11, 32733
                  ori          a6, t5, 1510
                  ori          a1, s7, 1198
                  srli         a4, tp, 24
                  or           gp, s9, s0
                  andi         a0, a0, 1764
                  andi         a6, s6, 55
                  nop
                  slt          s7, s3, t5
                  slli         s9, a2, 24
                  andi         s10, s8, -938
                  srai         s1, s7, 2
                  xor          t6, a7, ra
                  auipc        a6, 720139
                  or           sp, s8, s1
                  lui          gp, 282343
                  addi         t3, s0, -113
                  or           s3, a6, a4
                  sra          t1, s0, gp
                  nop
                  sub          a4, a5, s2
                  sll          a0, t3, t1
                  sll          a4, a0, a5
                  slt          t0, s7, a0
                  or           s5, a0, s4
                  slli         a6, a5, 23
                  nop
                  sub          tp, a2, t6
                  nop
                  ori          s1, s8, -1792
                  slti         s1, sp, -347
                  srl          gp, ra, a5
                  xor          t2, a2, a2
                  auipc        a4, 132074
                  ori          s10, s0, -1194
                  sub          zero, a2, a3
                  slti         s2, a3, -269
                  srai         t5, a7, 13
                  slli         tp, s9, 12
                  srai         t1, zero, 14
                  or           t6, s0, gp
                  sltu         ra, s3, s6
                  or           s3, t2, a4
                  sltiu        sp, s7, 1741
                  auipc        s4, 279141
                  slt          s4, s0, s11
                  slt          t1, t6, a7
                  sra          t4, s6, s8
                  sra          s3, sp, a2
                  xor          s3, a7, a0
                  or           s4, a2, t0
                  sra          s6, a4, t6
                  slti         s6, tp, 1465
                  sltu         a0, s11, s7
                  slti         a5, s11, -957
                  lui          a4, 307941
                  lui          t1, 35566
                  auipc        a5, 110344
                  ori          t6, gp, 1593
                  andi         a5, t6, 1722
                  or           s10, s1, zero
                  sltiu        s10, s1, -277
                  xori         t4, s11, -762
                  slt          s5, s2, s4
                  srl          a2, a5, s8
                  sll          a6, t6, a1
                  nop
                  xori         t5, tp, -1051
                  srli         s5, a7, 23
                  srli         s10, s0, 12
                  add          a5, t2, zero
                  slti         a5, s9, 306
                  and          a2, s3, s10
                  slti         a1, sp, -1251
                  add          s3, t0, a2
                  nop
                  srli         s7, t5, 18
                  xori         t4, a6, -1513
                  auipc        sp, 64289
                  addi         a5, t1, -407
                  srl          sp, t3, a5
                  srl          t6, zero, t1
                  addi         a6, a0, 1959
                  nop
                  and          a5, a2, t5
                  xor          a1, zero, s7
                  slt          s4, a7, s1
                  sltiu        tp, a1, 1404
                  sltiu        a4, t2, 1949
                  srl          s6, a6, t0
                  slt          s6, s2, zero
                  ori          a5, s1, -1395
                  sltiu        ra, zero, 830
                  slt          a1, tp, s6
                  ori          s6, s3, -2033
                  slti         ra, s8, 1808
                  or           s7, t2, a6
                  slti         t3, zero, -1512
                  and          s2, t6, a6
                  lui          a0, 121286
                  addi         sp, a2, -1736
                  srl          zero, ra, s8
                  addi         s11, s7, -1587
                  srl          a4, s3, ra
                  sra          t1, t1, a0
                  sll          s2, gp, s4
                  slt          s8, s5, gp
                  auipc        a0, 759338
                  auipc        s10, 742260
                  xor          a2, gp, s11
                  nop
                  nop
                  auipc        zero, 512435
                  and          s5, s9, t3
                  lui          s6, 341180
                  slti         s6, s8, -1758
                  andi         t6, zero, 1066
                  ori          t3, s5, -962
                  and          s8, a5, a5
                  sub          s1, ra, a7
                  sra          t6, s9, a5
                  sra          t0, t4, t0
                  xor          a6, s10, t3
                  andi         a1, a3, -1765
                  sra          sp, s8, t1
                  sltiu        s6, s9, -2003
                  or           t1, zero, ra
                  sll          ra, gp, s7
                  slti         gp, s4, 1621
                  and          t1, a1, s0
                  srli         s6, s9, 9
                  sll          ra, a6, s4
                  sra          s7, s0, s2
                  srl          zero, a6, t3
                  auipc        s11, 539730
                  srli         t0, s8, 21
                  slti         t5, s9, -2012
                  slli         t2, sp, 30
                  slti         t5, s6, 1737
                  srl          ra, s8, gp
                  srli         s11, s2, 3
                  add          s1, s0, sp
                  slti         a2, a1, -1403
                  add          t2, a7, s2
                  sltiu        a4, tp, 1458
                  auipc        s3, 136695
                  ori          s2, s11, 1498
                  sll          t3, a5, a3
                  srai         gp, tp, 11
                  or           a2, zero, s7
                  ori          s7, a3, 1749
                  srai         s9, a2, 4
                  nop
                  xori         a5, a0, -754
                  slti         s1, a2, -538
                  addi         s2, s3, 1604
                  auipc        a1, 986766
                  sltiu        t4, a6, -806
                  srai         sp, s5, 20
                  slli         t4, sp, 16
                  sra          t3, t2, s5
                  and          a0, a3, a2
                  or           s5, a4, a0
                  slt          tp, a0, gp
                  addi         a5, zero, -579
                  and          zero, a5, t5
                  sltiu        a4, s10, -637
                  srli         zero, gp, 8
                  lui          t1, 300025
                  sll          s3, s11, s2
                  srl          ra, a5, a3
                  xori         gp, tp, 370
                  ori          s8, s2, 884
                  sltu         a6, s2, t6
                  nop
                  xori         s9, t0, 1017
                  nop
                  and          t5, a1, s5
                  or           sp, s8, a1
                  nop
                  slli         s7, gp, 23
                  srl          s10, ra, sp
                  srl          a2, t0, t0
                  xor          a4, a7, t0
                  and          zero, s0, gp
                  slt          t6, t6, t6
                  srai         a1, t5, 19
                  auipc        s5, 188627
                  addi         a4, tp, 1584
                  slli         s2, a4, 18
                  srai         t6, t2, 12
                  auipc        a4, 753343
                  lui          s4, 84071
                  srli         s7, t0, 10
                  sltu         a0, a4, s0
                  slt          zero, s8, s3
                  slli         a5, s3, 3
                  srai         sp, s9, 0
                  srli         t0, a4, 18
                  lui          t2, 746410
                  xor          t4, sp, a6
                  nop
                  slli         a6, s10, 21
                  sll          s2, a2, gp
                  sub          s8, s8, zero
                  slt          sp, s3, t2
                  srai         s5, a2, 11
                  xor          t0, t2, zero
                  slti         gp, a0, 384
                  sltiu        zero, a7, 397
                  addi         a2, s3, 1402
                  sltiu        s1, s8, 519
                  sltiu        t4, s6, 1300
                  add          a0, s3, s11
                  sra          a5, sp, a3
                  slli         t2, s11, 30
                  nop
                  sra          s9, zero, s6
                  addi         t1, ra, 1265
                  srl          a1, s10, a0
                  nop
                  slt          sp, a6, s6
                  add          s6, t2, a1
                  xor          tp, a3, s6
                  xor          s10, s7, t4
                  xor          s3, a2, t0
                  srl          a6, a6, s3
                  sltu         t6, sp, ra
                  sra          s8, ra, s2
                  xor          sp, s2, a0
                  sltiu        s7, gp, 1162
                  addi         s11, a0, -784
                  xori         t5, s6, -537
                  srl          a4, s1, t5
                  srli         t1, t6, 9
                  or           t4, a2, s6
                  andi         t5, s5, -1325
                  srai         t5, t0, 10
                  ori          s7, zero, 1521
                  sra          t3, s6, gp
                  auipc        s6, 798975
                  srli         s10, s7, 26
                  srai         a2, t2, 10
                  ori          t3, t3, -281
                  sll          s8, a0, tp
                  sll          tp, tp, t1
                  sra          s7, s7, t1
                  srai         a4, zero, 30
                  sltu         ra, t0, gp
                  srl          t0, t0, a2
                  nop
                  lui          a1, 897026
                  xor          ra, t1, zero
                  srai         t5, a3, 13
                  slti         t0, s0, 175
                  sub          zero, s5, tp
                  sltu         a5, s6, s6
                  andi         t6, s0, 1147
                  sltu         zero, t2, a4
                  nop
                  slli         t4, gp, 28
                  or           t3, s11, t0
                  srai         s3, s4, 12
                  srl          a2, t5, s10
                  ori          tp, s10, -1300
                  lui          s11, 351554
                  srl          t4, t6, t6
                  andi         t0, s4, -1021
                  srl          a5, a1, a7
                  addi         tp, t1, 1492
                  slli         a1, s4, 13
                  andi         sp, t0, 1662
                  slli         s9, a2, 2
                  ori          t2, t3, -1944
                  srai         a2, t4, 27
                  slti         a0, t6, 1896
                  lui          t4, 1028705
                  nop
                  lui          t4, 684876
                  slt          s3, tp, s9
                  sub          a4, t4, a1
                  sltiu        t6, s3, -1864
                  slli         s6, s10, 27
                  nop
                  sll          a5, t5, zero
                  srai         a2, s3, 25
                  andi         t6, s4, -1063
                  auipc        zero, 126684
                  slt          t1, a2, s1
                  srai         t5, a4, 6
                  andi         a6, s4, -1889
                  xori         a1, a2, 601
                  srli         sp, t4, 19
                  andi         s4, t4, -376
                  addi         t4, a5, -1492
                  sll          a6, a0, s1
                  add          a6, s4, ra
                  sra          s9, s10, a5
                  xor          tp, s11, t4
                  addi         ra, gp, 1347
                  add          s6, a2, s5
                  sltiu        a1, a6, -197
                  andi         t5, a6, 1321
                  sltiu        a4, t1, -146
                  nop
                  slli         s1, s5, 6
                  slti         a5, t3, 1611
                  add          a1, s7, a1
                  sltiu        t3, s0, 1798
                  or           s6, t4, t6
                  or           s3, gp, tp
                  xori         a5, t3, 1424
                  nop
                  xor          tp, s8, t2
                  sll          a1, tp, tp
                  srai         tp, a1, 5
                  add          t1, a7, sp
                  xor          t6, s8, s10
                  slti         ra, tp, -1381
                  nop
                  xor          s10, s9, s8
                  add          t1, a0, t1
                  slt          t1, sp, a6
                  srai         t6, s7, 19
                  sra          s11, t2, s5
                  sra          a1, tp, t3
                  slli         a4, sp, 14
                  srli         t2, s0, 1
                  auipc        s5, 358882
                  sra          t0, zero, gp
                  srai         sp, a3, 23
                  slt          t6, s9, zero
                  sll          t6, zero, a2
                  nop
                  addi         gp, t6, -1356
                  nop
                  andi         s8, sp, 234
                  slt          a2, s7, a1
                  sub          a5, t2, s3
                  sltu         s8, gp, tp
                  slt          s11, t3, a0
                  sltu         sp, s11, s8
                  sltiu        gp, s10, 1323
                  addi         tp, s6, -137
                  slli         a5, t0, 23
                  srl          s8, t6, a2
                  srli         s5, a4, 30
                  or           t1, a1, a7
                  add          t5, ra, a0
                  sltiu        s9, s0, -1807
                  sll          s3, s1, a6
                  sll          t2, a3, sp
                  srai         s10, s0, 2
                  lui          tp, 647060
                  slli         a1, s6, 30
                  addi         zero, s7, 321
                  srai         s3, t5, 22
                  nop
                  addi         t0, t4, 1466
                  slt          a6, a6, s3
                  srl          s10, gp, gp
                  slti         s9, a3, 232
                  sub          tp, s9, a7
                  xori         a5, t6, -1561
                  srli         a0, a6, 31
                  lui          t2, 904598
                  sltiu        t3, tp, -1166
                  add          t6, zero, t0
                  sltiu        sp, s2, -255
                  sll          a4, tp, t4
                  sltiu        zero, t0, -213
                  xor          sp, t6, s5
                  or           s11, t4, sp
                  add          s10, s9, s0
                  slti         t6, t3, 303
                  ori          s4, a5, 952
                  slt          t2, s8, s5
                  or           tp, s5, a2
                  sll          a4, a3, s2
                  add          s2, t2, a3
                  xori         s5, t0, 1857
                  ori          s2, a6, 892
                  srli         t4, s6, 8
                  xori         gp, t3, 1807
                  slli         a1, s4, 7
                  sub          s11, ra, sp
                  and          t5, t2, s6
                  sltiu        t2, sp, 982
                  sub          t5, s4, s4
                  addi         s10, s2, -361
                  sltu         a5, a5, s11
                  and          t2, a0, a6
                  andi         s8, zero, 1424
                  sltiu        gp, t2, -1051
                  slli         t3, ra, 15
                  auipc        t3, 1044184
                  sll          s6, a3, s9
                  addi         s7, s7, -1217
                  ori          sp, s0, 1156
                  auipc        s2, 1004043
                  sltu         a2, a3, t1
                  auipc        s5, 118151
                  or           a1, a0, s8
                  add          s2, a4, s6
                  srai         s8, s5, 25
                  sll          a4, s2, s1
                  auipc        zero, 780016
                  sll          gp, s11, gp
                  and          t4, s1, t6
                  xor          s3, s8, a3
                  sltiu        s4, a3, 1991
                  addi         s1, s4, -1819
                  slli         t0, t2, 21
                  lui          a5, 395620
                  srl          s5, s8, t5
                  nop
                  sub          tp, a7, s7
                  sltu         a5, t6, a6
                  sra          a1, s11, t0
                  sltiu        s11, a6, -600
                  slt          a2, a5, s2
                  sub          s3, a1, t1
                  xor          s5, zero, gp
                  xori         a2, ra, -895
                  srl          s3, gp, s2
                  slti         t5, t2, 661
                  or           gp, t1, t2
                  or           tp, s6, a2
                  nop
                  srai         s4, a3, 0
                  sltu         s10, zero, s7
                  sll          t0, gp, s2
                  slli         t6, a4, 19
                  xor          a5, s10, a6
                  andi         s9, a0, -490
                  sub          s1, t0, s1
                  or           s10, zero, t1
                  andi         a5, t2, -116
                  sltiu        zero, s2, 1086
                  slli         gp, a6, 10
                  srli         s8, a3, 27
                  and          a5, s7, gp
                  slt          s1, ra, s4
                  xor          s7, t0, t5
                  andi         a0, s7, -115
                  slt          t6, t6, a0
                  sltiu        gp, s8, -128
                  slt          s6, s2, t6
                  addi         s6, a3, -517
                  ori          s9, t0, -1170
                  ori          s1, ra, 442
                  xor          sp, t2, s7
                  slli         a4, t5, 6
                  lui          s6, 467267
                  nop
                  andi         s11, zero, -298
                  nop
                  slti         t3, s2, 1178
                  srai         a6, s6, 9
                  slli         tp, s11, 26
                  sra          t5, s10, a6
                  srai         t6, s1, 13
                  xor          t0, a2, s0
                  sra          a6, gp, a0
                  slt          a4, a5, a7
                  nop
                  slti         t2, t5, -1889
                  addi         zero, s6, -1477
                  sub          a1, t1, s11
                  ori          a4, s5, -1792
                  srl          s9, s7, s5
                  sub          a6, s9, s0
                  nop
                  or           ra, sp, gp
                  or           a1, ra, s3
                  sra          t3, s8, a4
                  sltiu        s2, a1, 372
                  slti         s8, a6, 1807
                  auipc        s1, 550466
                  sub          t3, t2, a5
                  and          ra, tp, zero
                  sra          s5, ra, sp
                  sub          s11, t1, s11
                  sll          s5, s11, s0
                  lui          tp, 775257
                  sra          a6, a1, t5
                  sra          sp, zero, s8
                  ori          a0, s9, 774
                  slli         gp, a3, 25
                  auipc        s3, 724537
                  addi         s2, s3, -12
                  sll          s5, s8, sp
                  sll          s7, a4, t3
                  nop
                  and          zero, gp, s11
                  sra          t0, a5, sp
                  srai         t6, ra, 13
                  ori          s11, s11, -1052
                  andi         gp, a4, 1678
                  slt          a5, s10, zero
                  andi         a1, t4, -649
                  lui          t6, 118138
                  xor          tp, a4, sp
                  andi         zero, a2, -70
                  slli         ra, s3, 30
                  slli         t4, tp, 6
                  xori         s1, t3, 1716
                  slli         t4, a4, 4
                  slti         s4, a3, 1611
                  sll          s4, a5, s2
                  srli         gp, a4, 25
                  slt          tp, zero, s3
                  slli         s5, a3, 22
                  sll          t1, s5, gp
                  sll          s11, t2, ra
                  add          s6, t2, s8
                  xori         zero, s9, 779
                  ori          ra, a4, 445
                  sll          s9, zero, t2
                  xori         tp, a7, 1100
                  sltiu        tp, t1, -188
                  addi         a5, zero, 1559
                  srl          s11, s6, s6
                  xor          tp, a6, a0
                  and          t5, t4, s11
                  or           s9, t3, zero
                  andi         a2, tp, -304
                  sltiu        s4, s7, -1011
                  xori         a4, a3, 1297
                  sltiu        t0, s5, -1980
                  xor          a4, s9, a5
                  srl          a5, s0, t6
                  sltu         a5, tp, t0
                  sll          s1, s10, t4
                  lui          s2, 764007
                  or           a6, s1, a3
                  nop
                  slt          s6, t0, sp
                  sltu         a2, t4, s1
                  slli         sp, t0, 23
                  sub          t1, a1, s0
                  or           s6, a7, s10
                  xor          t0, t3, s11
                  andi         s8, t6, 1932
                  auipc        s3, 1025799
                  auipc        a4, 37168
                  auipc        t5, 1033214
                  sra          t3, gp, gp
                  auipc        s6, 215890
                  sra          t4, t1, gp
                  addi         s3, a7, 1601
                  srli         t3, t4, 15
                  or           s2, t6, a7
                  ori          t0, t5, 488
                  ori          t0, t1, -42
                  sll          a4, a5, s0
                  and          a5, s6, s10
                  srl          s2, tp, a5
                  xor          s4, s3, zero
                  ori          sp, a1, 318
                  srai         s9, zero, 9
                  sub          t6, s0, s0
                  nop
                  sltu         tp, sp, zero
                  sltu         s5, a4, a4
                  lui          a4, 154322
                  srl          gp, sp, tp
                  slti         t6, t1, 1115
                  and          s10, a1, a3
                  srai         s7, a5, 16
                  sra          sp, t6, a1
                  slt          s2, t6, s8
                  lui          s6, 201157
                  sltiu        s10, a5, 1550
                  ori          t0, s1, -862
                  auipc        s7, 705336
                  nop
                  sra          s7, a2, s11
                  andi         s4, s11, 430
                  srl          s2, a1, a7
                  slt          s2, tp, a6
                  xor          tp, tp, t0
                  slt          t3, a0, tp
                  slli         a2, sp, 7
                  srai         t0, t3, 19
                  srai         t0, s9, 24
                  auipc        sp, 830561
                  ori          a6, sp, 1002
                  slti         a4, a7, 1338
                  nop
                  lui          s2, 268038
                  sra          ra, tp, a5
                  ori          s6, s8, 1730
                  slt          s3, t2, s6
                  srai         s5, a2, 22
                  and          zero, s4, t4
                  sltiu        a5, tp, -982
                  auipc        t6, 316158
                  and          a6, a4, a1
                  auipc        sp, 45963
                  slti         t3, a4, -656
                  xor          t6, s9, a3
                  addi         t5, s5, 1068
                  xori         s4, s11, -765
                  andi         s4, t4, 740
                  ori          t0, a0, 563
                  sltu         t2, s10, s9
                  srl          a1, t6, a2
                  sltiu        s3, t1, -350
                  srl          gp, s3, t2
                  slti         s10, s7, 161
                  and          ra, t1, ra
                  sra          s9, a0, t0
                  slt          s8, a7, a0
                  andi         a0, s7, 51
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           s10, 0xedd75bf9
                  li           t3, 0x80000000
                  li           sp, 0xffffffff
                  li           s4, 0xda25de3b
                  li           s6, 0x80000000
                  li           t5, 0xaa1328d5
                  li           a0, 0x80000000
                  li           s9, 0x1621e531
                  li           a4, 0xffffffff
                  addi         a0, a4, -1736
                  sub          s6, s6, s6
                  nop
                  add          a0, a6, s10
                  auipc        a6, 411606
                  add          s10, a4, sp
                  add          s4, a4, t5
                  sub          t3, a0, t3
                  sub          s4, a6, t3
                  lui          a4, 319077
                  sub          s6, s4, s9
                  lui          s6, 875169
                  lui          a0, 259151
                  sub          s10, a4, a0
                  sub          a0, t5, s6
                  addi         a6, s10, 1789
                  sub          t3, a4, a4
                  addi         s6, a0, 391
                  auipc        s6, 362308 #end riscv_int_numeric_corner_stream_12
                  or           s5, a7, t4
                  srli         t6, t6, 1
                  slli         a1, zero, 31
                  ori          ra, zero, 1686
                  andi         t5, t5, -2026
                  add          a4, a5, s1
                  andi         a2, ra, 1020
                  li           t4, 0x7d7f7d89 #start riscv_int_numeric_corner_stream_15
                  li           t0, 0x0
                  li           sp, 0x0
                  li           s4, 0xcec18f7
                  li           tp, 0xffffffff
                  li           s9, 0xffffffff
                  li           s8, 0xffffffff
                  li           t5, 0xffffffff
                  li           s5, 0x0
                  li           s2, 0xe276a8ee
                  lui          tp, 555078
                  nop
                  auipc        s4, 441898
                  nop
                  nop
                  nop
                  addi         s5, s2, 1429
                  sub          s8, s9, t0
                  auipc        sp, 418559
                  add          s4, t0, t4
                  auipc        tp, 458583
                  auipc        t5, 413169
                  auipc        t4, 961
                  addi         s4, s2, 213
                  lui          tp, 924634
                  add          s4, s8, t0
                  nop
                  nop
                  add          s2, t4, tp
                  lui          tp, 185721
                  addi         s4, sp, 238
                  nop #end riscv_int_numeric_corner_stream_15
                  srli         s3, s2, 16
                  andi         t4, s1, -1732
                  xori         t1, s6, -435
                  srai         a6, t1, 23
                  srl          s10, t4, a6
                  srl          zero, s8, zero
                  sub          t5, a1, t4
                  sltu         s7, a6, s6
                  auipc        s5, 671905
                  srli         s2, s6, 28
                  xori         gp, s11, -666
                  nop
                  srli         s10, a5, 20
                  addi         t1, s1, -1698
                  or           a2, s2, a6
                  andi         a0, a5, 1441
                  srli         s3, t1, 8
                  srl          a2, ra, tp
                  slt          t0, t0, s9
                  sltu         t6, s4, zero
                  andi         t3, ra, -759
                  add          a1, zero, s4
                  sub          s2, a7, s6
                  slti         s6, zero, -1900
                  sll          t0, tp, ra
                  srai         a5, s5, 1
                  sltu         a1, a3, s10
                  lui          s6, 138502
                  slt          s10, s1, s5
                  sltiu        s2, a3, 492
                  xor          s1, a2, gp
                  ori          a1, sp, -1235
                  srl          s4, a7, s1
                  nop
                  slt          sp, s5, tp
                  and          s9, t4, a6
                  add          t5, a5, a6
                  slli         a4, a3, 29
                  add          a5, t4, s7
                  sltu         s10, a1, t1
                  addi         t3, s3, 620
                  addi         tp, s1, 703
                  slt          sp, a5, a7
                  addi         t0, ra, 1437
                  srl          t5, sp, s11
                  xor          gp, a1, a3
                  add          ra, t4, t3
                  add          gp, t5, a7
                  slti         t6, s2, 1092
                  slli         s6, t3, 2
                  slt          t6, a3, a4
                  slti         s2, gp, -1958
                  slt          t1, gp, a1
                  nop
                  xori         t6, s10, 1449
                  xori         s9, s10, -96
                  xori         s2, s5, 1029
                  auipc        s5, 952013
                  slt          s9, s7, s2
                  or           t1, s10, s4
                  addi         ra, t6, -1573
                  or           s7, s1, s4
                  sltiu        s8, a4, -755
                  slt          s4, tp, a5
                  addi         tp, a6, -183
                  auipc        gp, 591135
                  sra          s11, zero, s1
                  sltu         s8, ra, a7
                  and          t0, t4, t5
                  or           a0, s7, a2
                  sll          ra, s6, a7
                  auipc        s3, 180577
                  sltu         t4, s10, t0
                  slti         s1, t1, 164
                  or           a2, s0, s6
                  nop
                  auipc        s9, 909229
                  sll          a6, s0, s9
                  and          s8, s5, s3
                  slli         gp, s7, 20
                  addi         s4, s6, -2038
                  nop
                  srl          tp, zero, sp
                  or           a5, s8, s6
                  xor          s10, t0, t3
                  sltiu        t3, s8, 876
                  srl          t3, t3, ra
                  slti         a4, s7, -386
                  addi         t2, s8, 1921
                  sltiu        s4, s10, -1839
                  srl          a2, s8, s8
                  sll          t3, gp, ra
                  srli         a4, s0, 19
                  srai         t0, a2, 11
                  slti         t0, t1, 595
                  or           a5, t1, s2
                  andi         a1, s1, 32
                  nop
                  slt          s6, s10, s7
                  srai         t3, t6, 26
                  sltiu        s6, ra, -4
                  sll          s4, t6, s4
                  auipc        s11, 67420
                  xor          t6, s8, a6
                  sub          t3, s2, a7
                  slt          zero, s8, a2
                  and          s7, a5, t5
                  sra          gp, a4, zero
                  srli         tp, tp, 18
                  ori          s10, a0, -467
                  sltu         ra, s10, s2
                  srl          ra, a5, t1
                  xori         s10, sp, 386
                  or           t4, a1, t1
                  slt          s8, t1, t5
                  sub          t6, a6, t5
                  srli         ra, a0, 9
                  sra          s10, t5, sp
                  slli         a2, s1, 3
                  sltiu        zero, a4, 274
                  nop
                  sltiu        s3, s4, -950
                  srli         s1, s0, 6
                  srl          s5, s8, s7
                  andi         t4, t2, -735
                  addi         s2, a7, -1064
                  sra          s11, t2, s5
                  sll          gp, s8, gp
                  sra          s3, t3, zero
                  slli         s5, t1, 7
                  and          s4, s8, a7
                  auipc        s8, 88681
                  slti         t0, t2, -2013
                  srai         s3, s2, 5
                  xor          s10, a3, t3
                  xor          s9, a5, a0
                  xori         s3, a3, -1314
                  add          tp, s7, s6
                  srai         zero, s0, 15
                  nop
                  slt          gp, s9, t0
                  sltiu        zero, s10, -859
                  sra          t5, t6, zero
                  sra          gp, a1, zero
                  lui          tp, 53465
                  sra          a0, s5, a1
                  sub          a6, a6, s11
                  xor          s7, s9, sp
                  sll          t0, a0, s7
                  slt          ra, gp, t2
                  ori          s10, t1, -1600
                  lui          t0, 439304
                  sra          zero, s2, a7
                  lui          zero, 101082
                  xor          a0, s10, t0
                  slt          t1, s1, a7
                  srl          gp, zero, a6
                  or           s9, t2, s4
                  srli         a4, s3, 30
                  andi         s4, s2, -1309
                  xor          a4, a2, s0
                  slli         s10, a5, 17
                  srl          t0, s7, s8
                  xori         tp, zero, -1853
                  sltu         a4, t2, a6
                  addi         s8, s1, 765
                  sltiu        s1, s3, 360
                  and          a6, ra, a6
                  sub          t5, zero, a1
                  srai         s10, s8, 31
                  sll          sp, t1, t6
                  xori         s10, s4, 1771
                  ori          s9, t3, -1555
                  auipc        a6, 29488
                  sub          a2, t2, a7
                  or           gp, zero, gp
                  addi         sp, s3, -1037
                  xori         t1, t0, 388
                  sltu         s5, t0, t0
                  or           a4, s8, a7
                  sltu         t6, zero, s11
                  sltu         s8, s0, a1
                  srai         a0, t0, 15
                  srli         zero, s6, 28
                  slli         s6, a4, 15
                  slti         s9, a2, -401
                  xori         t5, sp, 1984
                  slli         s7, s1, 4
                  srl          t2, t5, a5
                  sltiu        t5, t0, -1601
                  auipc        t2, 770623
                  or           s2, s1, a4
                  sll          s6, a1, s5
                  xor          s8, t4, s9
                  slti         sp, a1, -930
                  lui          t6, 559285
                  sub          a5, a6, s8
                  sltu         tp, s8, a5
                  andi         s8, s4, -140
                  andi         a5, a0, 1456
                  nop
                  auipc        t1, 449669
                  sltiu        t2, t4, 690
                  sltiu        t2, s6, 48
                  slti         a2, a6, 447
                  add          s10, s10, s9
                  srl          s8, t6, s0
                  sltiu        s1, s11, 768
                  sltiu        t2, t3, 424
                  ori          gp, s7, -1543
                  sub          zero, s7, t3
                  sll          s5, t2, gp
                  add          a2, s11, a5
                  auipc        t6, 409866
                  slti         s3, tp, -1255
                  addi         t5, s2, 1266
                  sltu         ra, a0, s10
                  add          gp, t3, t6
                  addi         tp, a1, -1941
                  slti         t4, s9, 1380
                  lui          a6, 375746
                  and          s2, s5, s11
                  slt          t5, a1, t6
                  sra          s6, s9, a1
                  and          s2, t1, s8
                  auipc        zero, 134359
                  add          s2, tp, s6
                  andi         t2, s10, 1794
                  addi         a0, a6, -1801
                  and          gp, t6, a4
                  andi         ra, a1, 1074
                  xori         a4, s5, 314
                  and          a5, t5, a2
                  andi         s10, s6, 1549
                  slli         sp, zero, 11
                  lui          s4, 255192
                  slt          gp, a4, a1
                  srai         sp, a2, 6
                  addi         s7, s6, 1081
                  nop
                  srli         s4, s4, 16
                  sll          tp, zero, s2
                  nop
                  sll          s6, t6, a6
                  addi         s11, s4, 1490
                  xor          s4, s5, a0
                  andi         t2, a3, -1146
                  lui          a1, 955582
                  xor          s10, a5, s6
                  andi         s9, t0, 642
                  xor          s1, s4, t4
                  addi         a6, s5, 890
                  auipc        t4, 497462
                  srli         t6, zero, 11
                  sltu         t6, t2, s7
                  add          s1, s4, s3
                  addi         t6, s11, -100
                  nop
                  ori          a6, t5, 1538
                  lui          s3, 569495
                  slt          s11, s0, t1
                  addi         a4, a1, -431
                  auipc        a5, 357821
                  sll          s7, s11, s9
                  add          s5, t2, t6
                  slt          s11, a1, sp
                  srl          a2, a5, s2
                  addi         t6, s8, 1698
                  auipc        a2, 827704
                  sltiu        gp, s6, 598
                  srl          t3, s6, s0
                  sltiu        t0, t6, 1040
                  add          s11, s0, tp
                  srli         a5, t2, 27
                  srai         s8, a5, 11
                  lui          s9, 683351
                  sltu         s7, a5, a7
                  sub          s7, a2, ra
                  addi         s5, a1, 29
                  nop
                  xor          s4, ra, t0
                  slli         s4, a4, 27
                  andi         t3, s5, -970
                  slti         zero, s11, 1655
                  or           t5, s6, t0
                  sub          t4, s6, s9
                  sltiu        s9, s4, 1673
                  auipc        t0, 659897
                  srli         sp, t3, 2
                  srai         s10, s10, 7
                  slt          gp, s9, s4
                  addi         gp, a0, 1003
                  addi         a1, s10, -933
                  srli         a6, tp, 17
                  or           a1, s4, t2
                  srli         s2, s2, 4
                  srli         t0, s5, 23
                  lui          sp, 663261
                  ori          a5, a4, 485
                  addi         a4, s3, -1642
                  lui          a2, 983500
                  or           t3, s11, s11
                  add          ra, s9, a1
                  li           t4, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           t3, 0x80000000
                  li           s5, 0xffffffff
                  li           a6, 0xffffffff
                  li           sp, 0x438849f6
                  li           t6, 0x0
                  li           s4, 0xffffffff
                  li           s2, 0xf881b00e
                  li           ra, 0x0
                  li           s11, 0x72af92e1
                  lui          s11, 835528
                  auipc        t4, 611223
                  sub          s11, t3, t3
                  auipc        sp, 732995
                  add          s4, s2, t6
                  lui          ra, 345742
                  auipc        ra, 323718
                  add          t6, t4, sp
                  sub          s4, sp, sp
                  addi         s4, sp, 1253
                  lui          s2, 805789
                  nop
                  sub          s11, ra, t6
                  auipc        t3, 186188
                  add          t6, s2, s11
                  sub          s4, a6, t3
                  sub          t4, s5, a6
                  sub          s4, t6, t4
                  lui          s5, 777385
                  add          t3, sp, t6
                  nop #end riscv_int_numeric_corner_stream_7
                  srai         t0, t0, 13
                  sub          s6, a2, t1
                  slt          a5, t2, t2
                  srli         zero, s7, 30
                  slti         a2, s1, 2023
                  sub          s6, s8, t5
                  srl          s10, a7, t6
                  srai         sp, s8, 27
                  slli         s3, s5, 18
                  nop
                  sltiu        a4, sp, -1672
                  srl          s6, s7, s11
                  sra          a4, gp, s11
                  ori          sp, a4, -490
                  auipc        s2, 245818
                  slt          a5, s3, s6
                  sltu         s6, s7, a1
                  andi         s10, s7, 249
                  or           t2, s3, t0
                  or           s3, a6, t0
                  sub          tp, a7, s4
                  sra          t2, a0, s4
                  slti         s10, s8, 1275
                  sub          s9, s5, a3
                  auipc        s8, 844195
                  ori          s1, a2, 1737
                  srai         t6, a0, 24
                  sub          ra, t0, a3
                  ori          s4, gp, 1036
                  sltiu        a5, t4, -342
                  andi         zero, tp, -1438
                  nop
                  srli         s9, tp, 22
                  ori          a1, s11, 315
                  xor          a1, a7, s9
                  slli         t0, s8, 25
                  xor          a5, t0, t6
                  srli         zero, a1, 2
                  lui          t0, 27308
                  auipc        t2, 435906
                  srli         s7, s4, 11
                  slti         a0, s9, 1886
                  sltiu        sp, s9, -793
                  auipc        s2, 851526
                  and          s11, ra, sp
                  auipc        a5, 441892
                  srai         gp, t0, 29
                  srl          s1, s3, s6
                  slti         tp, s4, 140
                  or           gp, t3, s7
                  slli         s2, t4, 26
                  nop
                  or           s2, a1, s9
                  sltiu        s2, a2, -915
                  sll          t4, sp, s2
                  and          s6, tp, a2
                  srl          s3, s7, t5
                  addi         t3, s1, 1185
                  ori          t4, a0, 439
                  sll          t5, a6, tp
                  xor          s3, s5, t0
                  nop
                  srl          a2, t0, s11
                  sltiu        t2, t5, -1896
                  slti         s8, a0, 398
                  ori          t0, s7, 1431
                  or           sp, a3, s6
                  sll          a5, s3, zero
                  lui          t5, 253670
                  addi         gp, s2, 1205
                  sra          s4, s1, s10
                  sra          t4, t4, a3
                  srl          t2, a1, t3
                  sra          s8, s1, gp
                  sub          s8, zero, s7
                  sub          t0, t2, zero
                  lui          a5, 56680
                  and          sp, t2, s9
                  slti         t4, s8, 1860
                  slli         gp, a5, 1
                  sltu         s9, tp, a3
                  sub          s5, s11, t3
                  srl          tp, gp, s5
                  andi         t5, ra, 585
                  and          s6, s0, s6
                  xori         s7, s9, 1952
                  sub          gp, s5, a4
                  add          s1, s6, s5
                  srl          zero, a6, a7
                  lui          s8, 348404
                  auipc        s1, 419453
                  slli         s9, a6, 19
                  nop
                  sltiu        s9, s7, 189
                  sltiu        a0, s4, 1097
                  and          a1, tp, s11
                  ori          a4, s11, 1679
                  slti         s5, a0, -883
                  auipc        t0, 1017430
                  or           t5, zero, t6
                  sltiu        s7, t2, -744
                  nop
                  srl          tp, s10, s5
                  srl          gp, a4, s1
                  ori          s8, tp, -1787
                  sub          t6, s5, a3
                  srli         s5, s6, 0
                  auipc        a5, 742164
                  xori         s3, zero, 757
                  and          s11, s1, sp
                  auipc        a0, 1002912
                  sub          s11, s0, t2
                  lui          a1, 226036
                  sub          t2, s8, a0
                  lui          a1, 12384
                  xori         a1, t3, 181
                  xori         s1, s3, -1704
                  nop
                  slti         a5, a7, 400
                  nop
                  auipc        s9, 210110
                  sltiu        t5, s5, -760
                  ori          a4, a1, 836
                  andi         gp, t1, -1545
                  xor          s7, t2, a5
                  slti         t6, t2, -1880
                  sltiu        s9, zero, 1163
                  nop
                  sll          a5, s7, tp
                  ori          t4, t5, -1390
                  sra          s8, s4, t6
                  xor          zero, t1, gp
                  sub          s9, t1, s7
                  nop
                  sltu         s8, a6, t2
                  nop
                  sltiu        t4, a0, 792
                  ori          s11, s9, 896
                  andi         a2, a5, 940
                  and          t3, a0, a2
                  sltu         zero, s8, t6
                  xor          t1, s8, s10
                  sltiu        s1, ra, 306
                  nop
                  and          s11, s5, s10
                  sub          zero, s7, s1
                  andi         s10, zero, 1772
                  slti         ra, a1, -503
                  addi         a5, t6, 1243
                  srai         s6, a6, 0
                  nop
                  srli         t2, a1, 2
                  sra          a0, t3, s4
                  srli         a4, a5, 25
                  xor          s5, a2, t0
                  sltiu        t3, a3, 607
                  lui          sp, 243711
                  lui          a2, 871535
                  sltu         s9, gp, a3
                  sltiu        s6, t4, -1252
                  auipc        gp, 1000889
                  xor          a4, t5, s5
                  andi         a5, s0, -1506
                  slti         ra, s2, -236
                  ori          t6, gp, -1079
                  and          t6, ra, s11
                  slt          s3, a1, s5
                  addi         s7, t5, -812
                  xori         t6, s3, -689
                  slli         sp, a3, 22
                  srai         zero, a5, 22
                  sub          sp, t5, ra
                  srai         tp, s2, 18
                  or           s4, s6, s4
                  srl          t6, s11, sp
                  sltu         s5, a6, t1
                  sub          s9, s8, ra
                  add          a2, tp, s8
                  auipc        t2, 63341
                  addi         gp, a4, 273
                  addi         s8, a0, -1697
                  andi         t1, ra, -152
                  and          s2, tp, gp
                  nop
                  srli         a2, s0, 31
                  slli         s6, s10, 3
                  sltiu        sp, a5, -528
                  slt          gp, t2, t5
                  nop
                  xor          zero, t6, s0
                  srl          t0, t1, t0
                  andi         s7, t5, 576
                  and          t0, t3, zero
                  sltiu        s3, a5, 707
                  sub          s10, sp, a6
                  sll          s4, t4, t6
                  sll          a0, t3, ra
                  sltu         s7, a3, a1
                  or           ra, s11, a5
                  sll          t6, a1, s0
                  addi         s10, t5, -1177
                  add          s7, s1, s9
                  srl          s8, s6, s8
                  srli         t0, s10, 27
                  sra          a6, s4, t6
                  sll          a2, s4, sp
                  srai         t3, s6, 18
                  auipc        sp, 984292
                  addi         a6, t4, -1823
                  xor          s1, ra, s0
                  lui          s7, 218344
                  and          s10, a2, t6
                  andi         s1, s9, -1594
                  ori          a5, a4, 1493
                  slli         tp, s2, 31
                  sra          t3, a4, t5
                  andi         a6, s3, -1408
                  xori         s9, a1, -915
                  auipc        t5, 955573
                  lui          a0, 1021307
                  srl          s5, tp, a4
                  and          t5, s6, s3
                  srl          t4, zero, s6
                  sra          a5, zero, s6
                  addi         a5, t4, 200
                  nop
                  sltu         s11, a5, a0
                  slt          zero, s2, s5
                  slt          a5, ra, zero
                  sll          s6, s2, s11
                  addi         t0, s1, -1451
                  slti         a4, s7, 1598
                  srl          gp, s8, s5
                  slti         s4, s7, 1373
                  sra          a1, s11, s3
                  slli         t5, t4, 0
                  slt          s9, a6, a6
                  srl          s3, s4, gp
                  sltu         zero, s10, a2
                  srli         t2, a6, 31
                  and          s5, s10, sp
                  sltiu        tp, ra, -105
                  sll          t4, t6, s0
                  srai         s1, s4, 0
                  srl          s6, s6, s7
                  andi         s9, s1, -1653
                  andi         t5, gp, 1266
                  auipc        t2, 1007667
                  slt          s9, t1, t4
                  addi         s11, t2, 1714
                  slt          t0, s10, s7
                  xor          t3, s10, t4
                  sll          gp, t3, tp
                  srl          s3, t2, s4
                  nop
                  sltu         t4, t3, s3
                  srli         ra, t5, 6
                  slti         a2, s9, 195
                  or           s6, a0, a1
                  addi         t0, t1, -487
                  slt          a4, s4, a3
                  slti         s7, t5, -343
                  slt          s11, s11, s5
                  slli         ra, s2, 27
                  slt          t0, s1, a5
                  slli         t6, a2, 24
                  xor          a6, s11, s3
                  and          s11, t2, s0
                  srl          zero, s9, s8
                  sub          s9, s3, sp
                  slti         s7, s6, -667
                  add          t3, a1, s5
                  srai         a6, a4, 14
                  xor          t4, s10, s11
                  slti         sp, s6, -1100
                  nop
                  xori         a1, s7, -216
                  slt          s10, a1, s11
                  andi         tp, t1, 692
                  slli         zero, a6, 6
                  sub          s5, t1, t4
                  slli         t5, s6, 3
                  or           a5, s4, t4
                  sltu         t6, t1, t2
                  sltu         s5, s3, t6
                  sub          s10, s2, t3
                  lui          t4, 338036
                  sub          s8, t4, s7
                  add          gp, s0, t1
                  sltiu        a2, a0, -1682
                  slt          t3, gp, s7
                  andi         gp, a1, 1084
                  xori         sp, t5, 630
                  sltu         s9, a1, t2
                  sltu         a1, a7, s8
                  and          s11, s11, a2
                  or           t2, a4, a7
                  add          t4, s3, s7
                  andi         t5, t3, 702
                  slti         s9, s1, -556
                  nop
                  andi         ra, t2, 318
                  slti         t2, s2, 1376
                  add          s10, s1, a0
                  sll          t2, s2, s11
                  xor          a1, a5, zero
                  lui          a6, 986640
                  slli         s8, t6, 0
                  srai         a5, s10, 16
                  auipc        s4, 441392
                  addi         s7, t2, 1691
                  sltiu        s9, a2, -521
                  srl          a2, a4, s2
                  srai         gp, s2, 18
                  srli         a2, s6, 15
                  ori          sp, a1, 554
                  lui          t6, 424125
                  and          t3, s5, s1
                  andi         zero, tp, 1880
                  nop
                  andi         tp, a6, 595
                  sub          t5, s10, sp
                  ori          tp, a7, 351
                  xor          a5, t5, zero
                  xor          gp, a3, s10
                  slt          s6, t1, a5
                  and          s2, t6, t0
                  srl          s1, t1, s7
                  sub          ra, s3, t5
                  andi         tp, zero, -1594
                  xor          s4, a5, s7
                  sll          sp, s3, a5
                  slli         s2, s4, 6
                  sub          a2, t3, gp
                  or           tp, tp, s11
                  nop
                  sll          s6, a5, s2
                  addi         ra, s2, -805
                  xor          a2, s1, a4
                  sltu         t5, t4, ra
                  nop
                  or           s5, s4, t6
                  srai         s8, s3, 14
                  add          gp, t0, s4
                  nop
                  srli         t2, a4, 29
                  srli         s5, t0, 1
                  slli         a6, t2, 22
                  sll          t0, s7, a5
                  srl          s9, a1, a4
                  sltiu        s9, s2, -691
                  srli         a2, t1, 0
                  ori          t5, s6, -561
                  srl          tp, gp, a1
                  andi         s7, a4, -759
                  auipc        t4, 144282
                  srl          tp, s0, sp
                  sltu         zero, t1, t6
                  sub          s11, s10, a6
                  xor          t2, s2, t3
                  srai         a4, a7, 4
                  ori          s11, a7, 1774
                  slti         ra, t1, -720
                  srl          s4, a1, t2
                  sltu         t4, s2, sp
                  slti         a1, t2, 405
                  slli         s8, s9, 1
                  srli         a5, sp, 21
                  and          t5, a1, t5
                  sltiu        s4, s2, -1154
                  ori          s9, t5, -809
                  slt          s10, s1, s5
                  slli         a2, s2, 6
                  sub          s11, a3, a6
                  slli         gp, s0, 12
                  sll          s6, ra, sp
                  lui          s2, 455585
                  addi         s1, s4, 1579
                  lui          a1, 987124
                  or           t0, ra, gp
                  srai         a5, t4, 17
                  andi         zero, s3, -1285
                  and          s8, a5, s10
                  sll          ra, tp, a2
                  andi         t0, t4, -1518
                  sltu         t1, a5, s2
                  xori         t2, s3, 1722
                  or           t3, s10, t6
                  xori         t1, s6, 1577
                  sub          zero, s6, t4
                  sll          t6, s1, t6
                  or           s8, s4, s7
                  and          ra, s1, sp
                  xori         gp, tp, -1352
                  sltiu        s5, s9, -281
                  sub          s3, s7, zero
                  lui          s8, 178569
                  auipc        t0, 903814
                  sll          s9, gp, a2
                  sra          t5, s10, a4
                  srai         a2, a7, 6
                  sltu         s9, s3, s4
                  slt          a6, t0, zero
                  andi         sp, gp, 234
                  ori          a4, a4, 1273
                  srl          t2, a6, s4
                  ori          ra, s8, 1177
                  slt          s7, ra, s7
                  ori          s7, t2, -1257
                  lui          ra, 407037
                  xori         s11, t1, 370
                  sra          a2, gp, a7
                  or           t2, t0, tp
                  or           s9, t5, tp
                  addi         t1, a5, 482
                  sra          a5, zero, t5
                  and          a1, a6, gp
                  xori         ra, s8, -1803
                  xor          sp, a0, t1
                  or           s9, a1, a5
                  srli         s4, zero, 16
                  or           a5, t1, s4
                  slli         s5, s10, 17
                  sltiu        a0, a6, -287
                  and          a2, t0, a0
                  sra          s8, s9, a0
                  srli         a6, s5, 9
                  sll          a1, a5, s4
                  xor          s2, a0, t3
                  auipc        s9, 380986
                  sltu         zero, a1, s9
                  add          t2, a2, s2
                  andi         ra, a3, -82
                  sltiu        s2, gp, 589
                  ori          a2, gp, 577
                  sub          a2, t3, gp
                  add          a0, a7, t1
                  addi         a0, s7, -1314
                  slti         s2, t2, 227
                  and          ra, sp, zero
                  srl          sp, tp, s0
                  slt          s8, s6, a5
                  sub          a0, s5, gp
                  slli         t2, s7, 11
                  andi         a1, t2, -585
                  slti         s7, a4, -724
                  lui          a4, 391593
                  slti         s1, s5, -1480
                  and          a2, a6, a0
                  xori         gp, ra, 165
                  sub          s3, s6, s0
                  sll          a6, ra, a3
                  auipc        t0, 134320
                  sltiu        s7, sp, -1209
                  srli         s5, a2, 13
                  andi         t6, a7, 1896
                  add          gp, t5, s8
                  addi         gp, s7, 1250
                  xor          gp, t6, tp
                  addi         t6, sp, -210
                  nop
                  sra          t4, s6, a0
                  slli         t1, s8, 13
                  slli         s11, t6, 29
                  srl          sp, s4, a0
                  addi         t4, s3, 1504
                  or           t2, a5, a4
                  srli         s8, t2, 4
                  or           s7, sp, a5
                  sra          a5, s8, a2
                  nop
                  slti         t5, s5, 1713
                  xori         s4, s8, 199
                  auipc        t4, 574499
                  auipc        a5, 831550
                  addi         s6, a6, 706
                  andi         t6, s7, 1182
                  sltu         zero, a5, s11
                  slti         s9, t3, -1572
                  sltiu        s9, s9, 1579
                  xori         s9, gp, -39
                  slti         s11, s7, -1982
                  sltiu        a1, s9, -531
                  addi         s10, gp, 316
                  auipc        a4, 32480
                  lui          t6, 652014
                  srai         s1, t1, 16
                  andi         a5, s9, -40
                  and          t3, a7, t4
                  sra          t1, s3, t3
                  ori          s2, s5, 1364
                  sltiu        t0, a0, -23
                  slti         s7, s11, -1750
                  andi         s8, t3, -52
                  nop
                  xor          s2, a7, s11
                  sub          a1, a7, a4
                  sll          t5, t6, t6
                  auipc        a1, 252052
                  ori          ra, a7, -837
                  xori         s4, s4, -1078
                  li           s5, 0x6e661d0c #start riscv_int_numeric_corner_stream_18
                  li           t6, 0x80000000
                  li           s9, 0x80000000
                  li           a5, 0x80000000
                  li           s7, 0x80000000
                  li           t5, 0x80000000
                  li           a2, 0x2bd40139
                  li           a1, 0xffffffff
                  li           a4, 0x80000000
                  li           t3, 0x80000000
                  addi         a4, s5, 1827
                  add          t5, s7, a4
                  sub          a2, s9, a1
                  auipc        a1, 173533
                  sub          s7, a4, t3
                  lui          s7, 564864
                  addi         a4, a4, -1965
                  add          a1, t5, s7
                  addi         s7, a2, 1752
                  auipc        t3, 1022513
                  nop
                  nop
                  addi         t3, a5, 1793
                  addi         s9, s7, 1366
                  add          a5, s9, a2
                  lui          a5, 932633
                  add          s5, t6, a4
                  addi         a4, s7, 1857
                  auipc        a4, 659610
                  auipc        t3, 843552
                  add          a4, t6, a2
                  add          t6, t5, s7
                  lui          t6, 240669
                  auipc        a5, 987985
                  add          a4, s5, s5 #end riscv_int_numeric_corner_stream_18
                  sll          sp, t2, s1
                  ori          zero, t6, -1096
                  or           t6, s2, s2
                  srli         t4, a7, 19
                  sltiu        ra, s0, 1384
                  xori         a1, s11, 1575
                  andi         s5, a0, -1816
                  sll          t3, t3, s7
                  sltiu        s3, s1, -107
                  xor          s6, t4, s6
                  sltu         a1, t1, ra
                  srai         t0, s6, 23
                  sltiu        s3, s11, 1048
                  sub          s10, a4, s3
                  srai         t5, t5, 6
                  sltiu        t5, a6, 1142
                  addi         s8, a3, 1616
                  andi         a0, a2, 1844
                  auipc        s6, 66383
                  ori          s8, a2, -2041
                  andi         s10, s4, 1964
                  sltiu        a0, a0, 1491
                  sll          a4, a4, t0
                  slt          s6, zero, tp
                  ori          a2, a6, -1629
                  add          s11, a5, s7
                  sub          s4, t3, a2
                  addi         t3, s3, -51
                  slti         a6, a0, -1632
                  add          t5, tp, s4
                  lui          ra, 944573
                  or           t2, s0, s0
                  xori         t5, t0, -1605
                  srl          t4, s0, a5
                  srai         tp, gp, 16
                  and          s4, s5, t3
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           a4, 0x80000000
                  li           a2, 0x0
                  li           t3, 0xffffffff
                  li           t0, 0x0
                  li           t1, 0xffffffff
                  li           t2, 0x0
                  li           sp, 0xffffffff
                  li           s2, 0xdc6d0fa4
                  li           s8, 0xffffffff
                  nop
                  addi         a1, a2, 393
                  addi         t2, t0, -1324
                  add          sp, t0, t0
                  addi         s8, t1, 1225
                  sub          t1, s8, t1
                  addi         a1, t2, -362
                  lui          sp, 201850
                  auipc        sp, 343557
                  nop
                  add          t1, t1, a4
                  add          a2, t2, t1
                  lui          t3, 443461
                  nop
                  auipc        t3, 716336
                  sub          a2, t2, sp
                  auipc        t2, 335098
                  addi         a2, t0, 2000
                  lui          s8, 187038
                  lui          s2, 322771
                  addi         t0, t2, 245
                  add          a4, a1, sp
                  addi         t0, a4, 1927
                  nop
                  nop
                  addi         t3, a4, -1506
                  add          s2, t0, t2
                  auipc        sp, 994357
                  auipc        t0, 790131
                  auipc        t1, 869377 #end riscv_int_numeric_corner_stream_10
                  slti         t1, a5, 1457
                  srli         t4, s3, 21
                  sra          a5, s8, s6
                  andi         a6, s2, -1875
                  sltiu        a2, t3, 1562
                  slti         s11, s11, 1119
                  slt          s1, t2, s6
                  xori         sp, tp, -1161
                  srli         s7, t0, 23
                  srai         s6, t0, 5
                  sll          s3, a6, a3
                  xor          ra, ra, s11
                  nop
                  add          tp, a6, t2
                  lui          t4, 572503
                  srl          zero, t5, s11
                  slli         s5, gp, 7
                  sra          a0, s8, s3
                  addi         t5, a6, -1532
                  xori         t3, s0, 1315
                  andi         s10, s5, 1242
                  xor          t0, s3, s0
                  addi         s1, t0, 1678
                  andi         s2, zero, 823
                  slli         s1, a5, 26
                  slli         t2, a5, 9
                  add          s1, a0, t2
                  sltiu        tp, a7, 70
                  srai         gp, t1, 1
                  and          ra, s7, t4
                  add          s1, t0, s6
                  or           a2, s1, a4
                  srl          t2, a1, zero
                  sll          t0, s6, a6
                  lui          t6, 486454
                  auipc        ra, 940375
                  sll          s2, a7, t3
                  slli         s3, a0, 19
                  lui          a6, 270741
                  ori          a1, s8, -1592
                  addi         s7, s10, 1769
                  slti         s3, gp, -1297
                  sll          a0, s9, ra
                  srai         t0, t0, 21
                  srl          s2, a6, sp
                  slli         tp, a4, 6
                  srl          t4, t2, tp
                  add          t2, s5, ra
                  srl          s3, sp, s11
                  or           t0, s3, a1
                  lui          gp, 736247
                  and          s5, t2, a0
                  auipc        s7, 60341
                  sll          t6, tp, s2
                  sra          s2, t1, s4
                  sll          s6, t2, t4
                  ori          s11, s6, -529
                  srai         s2, s7, 1
                  and          s9, t5, t4
                  xor          s9, t0, zero
                  lui          a0, 853524
                  lui          s9, 160216
                  andi         sp, t2, -302
                  and          tp, tp, a7
                  srli         a4, s3, 14
                  auipc        s2, 87513
                  slti         gp, a6, 356
                  ori          a5, t0, 1740
                  lui          t5, 1046708
                  xor          gp, t6, s10
                  lui          a5, 430874
                  srai         a0, gp, 24
                  srai         s1, s6, 27
                  sra          a4, gp, a0
                  ori          s5, tp, 794
                  sltiu        s5, t2, 272
                  sll          t6, t2, a4
                  auipc        t2, 338919
                  auipc        s9, 284139
                  add          s9, a6, a1
                  xori         a0, tp, -930
                  ori          a2, t5, -960
                  slti         s7, t3, 633
                  sltu         a2, t1, s6
                  auipc        t1, 896965
                  or           t5, a2, s11
                  or           t6, t0, a6
                  srl          t2, s3, a1
                  sra          s1, s5, t3
                  lui          t3, 112924
                  slt          s9, t1, t2
                  sra          t3, t4, s11
                  addi         t1, s3, 272
                  srli         t6, a6, 13
                  ori          t3, a3, -276
                  slt          s3, sp, a4
                  slli         t6, t1, 0
                  or           s2, t1, s5
                  xori         t6, s0, -1051
                  li           t0, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           s11, 0x0
                  li           s4, 0x0
                  li           s10, 0xffffffff
                  li           t2, 0xffffffff
                  li           a5, 0xffffffff
                  li           t4, 0xffffffff
                  li           s9, 0x0
                  li           s5, 0xffffffff
                  li           s3, 0xffffffff
                  nop
                  nop
                  addi         s11, t0, 186
                  lui          s9, 371578
                  nop
                  add          s4, t2, s3
                  lui          s9, 351660
                  addi         t0, t0, 193
                  lui          t4, 892207
                  addi         t2, s11, 492
                  addi         s11, t2, 1366
                  sub          t4, t4, s11
                  add          a5, s3, s11
                  add          t2, s10, s5
                  add          s11, t2, s3
                  auipc        a5, 783881
                  addi         s3, s10, -179
                  lui          t0, 985372
                  addi         a5, t0, 1799 #end riscv_int_numeric_corner_stream_9
                  slli         s1, a5, 19
                  sra          a6, s6, s3
                  sll          s8, s4, t3
                  and          s6, s11, s1
                  xor          s8, s2, s0
                  sra          t1, t3, s1
                  xor          t4, s10, a5
                  add          t2, a7, s0
                  or           s6, a6, s7
                  lui          a5, 743110
                  addi         s1, t1, -264
                  sltiu        t3, zero, -1291
                  xor          s9, t5, t6
                  slti         s11, a7, 1408
                  sra          t0, t6, zero
                  slti         s6, s0, 20
                  andi         ra, s2, 339
                  srli         s9, t3, 12
                  srai         s4, zero, 19
                  xor          a2, t0, s6
                  or           sp, t3, s5
                  or           s7, t4, ra
                  andi         tp, sp, -431
                  xor          a6, a1, t0
                  xor          s4, t3, t4
                  nop
                  sltiu        s8, gp, 1646
                  slti         a1, s6, -1357
                  slt          s4, gp, s2
                  sub          t2, s3, tp
                  srai         t2, t4, 30
                  xori         s11, tp, -21
                  slti         t6, t6, 828
                  lui          tp, 557271
                  sub          t0, a0, s2
                  lui          a0, 12100
                  andi         t3, a1, 1972
                  andi         gp, a1, -697
                  sub          s1, s3, t4
                  srli         a0, tp, 10
                  srli         a5, t2, 18
                  slt          s2, a6, gp
                  sltu         s7, a2, t4
                  sub          zero, s6, s9
                  sll          gp, s11, s7
                  nop
                  add          s9, t2, s10
                  add          t3, s9, gp
                  lui          a4, 393797
                  slt          zero, a2, gp
                  addi         t5, t0, 952
                  srai         a6, s5, 6
                  and          s10, s4, tp
                  and          a5, s11, s3
                  addi         s11, s7, -1226
                  sltiu        tp, zero, -265
                  sub          t2, a4, s5
                  sltu         zero, s8, s0
                  auipc        s2, 1011005
                  nop
                  sltiu        a1, a2, -775
                  ori          gp, a5, 1466
                  srli         s2, gp, 19
                  nop
                  slli         s11, t6, 17
                  sltu         s9, a6, tp
                  lui          tp, 106680
                  srai         s2, sp, 22
                  sra          s10, s2, a7
                  xori         s8, s2, -1739
                  sltiu        t1, s11, -1639
                  srl          a6, a7, s11
                  srli         tp, ra, 2
                  xor          s2, s8, t0
                  auipc        tp, 453389
                  and          s6, zero, a1
                  xori         t3, s5, -771
                  sub          t2, t4, t3
                  srl          s1, t3, a1
                  srli         a5, tp, 17
                  add          gp, s4, ra
                  and          s8, s9, s0
                  and          a4, t0, s9
                  xor          t6, tp, zero
                  addi         t2, sp, -1334
                  slt          s5, zero, gp
                  xor          t6, a0, s0
                  slli         t3, s6, 5
                  or           a5, a0, s10
                  srai         a6, t6, 19
                  or           t3, a0, a1
                  slti         t5, s6, 912
                  sltiu        t4, ra, 793
                  sltiu        a6, s4, -926
                  sltiu        s6, t3, 1539
                  auipc        a4, 862474
                  sub          t5, s10, s10
                  sltu         s10, a6, s6
                  and          s2, tp, a4
                  auipc        a6, 738431
                  add          s6, t6, a6
                  sub          sp, a1, a7
                  srl          a2, s3, ra
                  sub          a2, tp, s6
                  xor          t0, a5, a7
                  xor          t0, a5, t6
                  sll          t2, sp, s5
                  slti         gp, t4, 818
                  sll          s9, tp, a4
                  or           t2, t4, s2
                  sub          s1, a0, t0
                  sub          t3, ra, s0
                  sra          a6, t6, s9
                  srli         a4, s1, 13
                  sll          s3, a4, t2
                  slli         a4, s0, 16
                  andi         s11, sp, -1226
                  or           s2, a2, a3
                  addi         s9, a0, -516
                  srl          t0, t4, t2
                  or           s5, t5, sp
                  xor          t0, sp, a3
                  srli         gp, a2, 15
                  lui          s5, 1026572
                  and          sp, gp, a7
                  and          gp, s4, s6
                  andi         zero, sp, 1468
                  srai         t5, t3, 9
                  xor          tp, a4, t6
                  sra          s8, gp, a1
                  slli         gp, s3, 20
                  xori         zero, t5, -1855
                  sll          s9, sp, a1
                  sra          a1, s6, s7
                  xori         t3, sp, 1990
                  nop
                  slti         s8, a4, -566
                  slli         s11, s1, 26
                  srl          s7, sp, a0
                  auipc        t0, 808410
                  slli         sp, s11, 9
                  sltu         t2, s5, a2
                  sra          t2, t6, s1
                  addi         a1, s6, 1110
                  andi         a1, s5, -1910
                  slti         s2, s1, -1482
                  sll          s6, t0, a5
                  sltiu        s11, s5, 1271
                  srli         a0, s9, 7
                  srl          t0, s3, a1
                  add          a0, tp, s11
                  addi         s4, a3, 524
                  or           s10, t4, s9
                  slt          t2, s9, a0
                  xori         a6, gp, 1752
                  sub          a0, t2, t0
                  slti         s4, s0, 554
                  sltiu        tp, s6, 1657
                  ori          s9, t3, -1446
                  and          t3, s3, t2
                  slti         a6, a1, -746
                  sltu         t2, a7, s3
                  addi         t4, s6, -1396
                  sub          s4, t2, t3
                  auipc        ra, 464903
                  xori         s9, s1, -855
                  or           a4, sp, t6
                  or           t5, t5, a3
                  ori          s8, t6, -1396
                  slti         t2, sp, 113
                  add          t0, a3, t2
                  slt          s10, t0, s4
                  andi         t3, a7, -856
                  sra          s7, s11, a3
                  or           s5, s3, s11
                  sll          gp, a7, gp
                  lui          t2, 996014
                  sltiu        a4, s4, 1491
                  xor          a1, gp, gp
                  sll          a6, a1, s11
                  addi         t4, t0, -65
                  srai         ra, s7, 30
                  addi         s3, a4, -1615
                  lui          t6, 524671
                  add          ra, a6, a5
                  srl          a5, a0, ra
                  sltu         a5, s10, t6
                  nop
                  nop
                  srli         gp, s7, 3
                  lui          gp, 702180
                  sub          gp, zero, s1
                  sra          s1, a5, s11
                  slli         s11, s4, 1
                  srl          sp, s3, sp
                  xor          a0, s4, s0
                  sltu         s10, a3, a4
                  addi         s10, s11, 1467
                  slli         t6, s7, 23
                  srl          t4, s9, s9
                  add          t2, s6, s8
                  sll          sp, a1, t2
                  and          tp, tp, t5
                  lui          s1, 889155
                  auipc        s7, 536069
                  xori         s2, a4, 436
                  sra          a5, ra, a7
                  auipc        t5, 626340
                  or           s2, t2, s1
                  sltu         s3, sp, a7
                  nop
                  addi         a1, a7, 1528
                  slt          t1, s9, a5
                  srai         s2, a5, 3
                  auipc        s11, 1034358
                  lui          sp, 117630
                  xor          a5, a4, s10
                  andi         a2, a5, -1303
                  xori         tp, s7, 1055
                  srai         sp, ra, 18
                  or           tp, a1, s2
                  or           s11, s6, a1
                  lui          zero, 293416
                  auipc        s11, 1020997
                  sll          s6, zero, a4
                  sll          t3, s10, a7
                  sub          s7, s9, s1
                  add          t3, s3, s1
                  nop
                  sll          s10, a5, s3
                  srli         a5, sp, 9
                  addi         s2, a1, 724
                  xori         ra, a2, 242
                  srl          s1, sp, s0
                  ori          s7, s1, 470
                  or           t0, s6, s8
                  ori          sp, s1, 1023
                  srai         s7, s11, 0
                  srl          s4, t4, a7
                  sra          a5, s1, s11
                  nop
                  sltu         s10, s1, tp
                  lui          a4, 894164
                  srl          a2, sp, a3
                  nop
                  and          s6, ra, s6
                  slli         t4, a2, 17
                  srai         s2, s5, 8
                  slt          t5, s1, t4
                  add          t0, s2, tp
                  xor          a5, a4, ra
                  or           s9, a6, t4
                  auipc        a6, 221967
                  lui          t4, 400601
                  andi         t2, t2, 1894
                  ori          s6, s6, -795
                  srli         s8, s2, 19
                  and          s9, t2, s10
                  slt          s6, a4, t3
                  add          s8, t4, t1
                  xori         s6, s9, 1536
                  andi         s8, t2, 1816
                  or           s8, t3, s9
                  lui          zero, 980215
                  add          a5, t2, ra
                  sll          a4, t0, s6
                  lui          t3, 25588
                  sltu         s1, t0, a7
                  add          t1, zero, s8
                  sll          t4, a0, a5
                  srl          a4, t5, t0
                  and          s6, t5, sp
                  sltu         tp, t2, gp
                  srl          sp, zero, t0
                  srai         a1, t5, 10
                  sra          a1, s4, s9
                  lui          t6, 465123
                  sra          t2, a4, a5
                  addi         t0, s4, -1704
                  slli         t3, a5, 11
                  andi         tp, s3, 1866
                  srli         s5, s5, 5
                  or           t3, s11, ra
                  lui          a0, 656975
                  sra          a2, t2, gp
                  nop
                  srli         t5, t2, 11
                  lui          t2, 820052
                  ori          s1, t6, -176
                  auipc        a5, 51264
                  srli         zero, a4, 5
                  xori         s9, s8, 409
                  srl          a6, s1, s5
                  andi         ra, s10, -898
                  ori          t4, t0, -1717
                  slli         s6, s1, 21
                  xori         s5, a6, 27
                  and          gp, sp, s7
                  xori         a4, s10, 459
                  srli         zero, ra, 23
                  sub          s9, a2, t3
                  sra          t3, s9, s4
                  srai         t5, t0, 13
                  srai         t1, tp, 27
                  nop
                  add          a6, t2, s7
                  srl          t0, sp, a1
                  sra          a5, s11, s9
                  and          s3, t6, tp
                  auipc        t4, 171884
                  sll          s4, a6, s0
                  addi         s5, t5, 1972
                  lui          s3, 892235
                  slli         s8, a2, 2
                  or           s7, t6, s0
                  auipc        s9, 497017
                  srai         s3, s3, 16
                  or           tp, a4, gp
                  xor          s4, a1, a6
                  sra          s7, s10, a4
                  sltiu        a5, ra, 18
                  srl          t6, a2, s7
                  ori          tp, a0, 1490
                  slti         a4, a3, 664
                  ori          a4, t1, 1806
                  sll          t6, a4, a0
                  srli         t4, t4, 3
                  slli         s2, t6, 16
                  srl          ra, a4, a4
                  sltu         s1, t3, a7
                  srai         t1, t1, 7
                  andi         t5, s1, 1381
                  lui          a6, 251483
                  andi         s10, t3, -967
                  or           ra, s7, gp
                  slti         s3, a0, -1443
                  ori          s4, a7, 473
                  srl          t4, ra, s5
                  srli         s6, s6, 17
                  add          t6, a2, a2
                  andi         tp, t4, 951
                  slli         s4, s8, 26
                  sra          sp, t1, a5
                  auipc        s9, 296834
                  xori         s2, t3, 1998
                  sltiu        a5, a2, -452
                  sltu         a0, t4, s0
                  sltu         s9, ra, s5
                  slt          a6, t6, s8
                  slt          t3, s10, s8
                  or           s3, t4, t4
                  sltiu        s9, s0, -311
                  ori          s10, s1, -1261
                  sub          s6, s3, s3
                  nop
                  andi         s4, a4, -527
                  addi         ra, t5, 67
                  ori          t2, a6, 972
                  addi         s3, t0, -640
                  addi         a4, ra, -1543
                  andi         a5, s0, 361
                  addi         s10, a2, -1017
                  or           t1, s8, s11
                  srai         gp, s0, 13
                  add          t2, s8, t6
                  sra          s5, a5, a4
                  or           s6, t0, t5
                  srl          s11, a3, ra
                  lui          t6, 260025
                  srli         sp, t1, 16
                  srl          t5, a4, s4
                  lui          s11, 914603
                  andi         tp, t1, -785
                  sra          t4, t2, s2
                  srl          t5, t6, a1
                  ori          t5, t4, -931
                  add          t4, t3, s5
                  sltu         s4, a1, t6
                  slti         t6, a3, -975
                  or           s5, a1, s4
                  slti         a6, ra, -881
                  or           s5, a3, t2
                  slli         s10, a6, 22
                  slli         a0, s2, 30
                  add          t5, s8, zero
                  andi         a4, gp, -1964
                  auipc        s3, 900090
                  sub          s4, t0, a1
                  andi         gp, s6, -455
                  auipc        a1, 731113
                  sll          t0, a6, t5
                  sub          a6, t2, a2
                  add          zero, s1, t1
                  andi         t6, a7, -1343
                  sltu         s4, sp, a1
                  srl          s8, s1, a0
                  andi         s7, zero, 1210
                  srl          s8, s9, s5
                  lui          a0, 128553
                  srl          s8, s9, t1
                  addi         t1, s5, -653
                  and          t5, t2, t6
                  slt          s2, a6, ra
                  addi         t2, s3, -776
                  sra          s7, s7, s2
                  sltiu        s6, s4, 115
                  lui          s8, 122319
                  or           t0, a6, s1
                  lui          s9, 239287
                  sll          zero, s11, a2
                  andi         s9, t4, 986
                  nop
                  auipc        gp, 990738
                  andi         ra, t1, 1185
                  slt          a1, s4, s4
                  andi         t5, s3, 709
                  addi         a1, tp, 13
                  xori         a4, a7, -565
                  srl          zero, a0, zero
                  addi         s8, a1, 1241
                  auipc        a4, 436054
                  sub          gp, s1, s5
                  auipc        s3, 855366
                  auipc        a2, 954795
                  andi         ra, zero, 85
                  andi         s10, s6, 944
                  sltu         s10, t1, t6
                  andi         s5, a4, -283
                  sltiu        t1, s5, 1123
                  nop
                  srli         t5, s6, 18
                  srl          a0, a5, s0
                  nop
                  auipc        s5, 32499
                  xori         s7, s1, 423
                  xori         s8, t5, 87
                  or           a0, t4, s0
                  sra          s10, a0, s1
                  slti         s6, a5, -193
                  ori          sp, t0, -105
                  lui          s3, 1022453
                  xori         ra, t4, 830
                  nop
                  sub          s11, s5, t4
                  and          a2, zero, t4
                  ori          zero, t4, 300
                  srl          t2, t3, s2
                  slti         s11, tp, -72
                  or           s10, t4, a2
                  and          s5, t0, t0
                  or           sp, a5, t0
                  xori         s5, zero, 542
                  auipc        s10, 723447
                  lui          t6, 689209
                  lui          ra, 140270
                  sra          s2, s10, t0
                  xor          s5, gp, t4
                  lui          t1, 687182
                  ori          t1, a0, -1569
                  nop
                  srl          t4, a6, s9
                  sra          s9, s11, a0
                  lui          t0, 1039934
                  xor          t4, ra, a2
                  slli         t1, s5, 26
                  srl          s10, t5, s10
                  srai         s3, a5, 2
                  sltu         t1, zero, a7
                  sub          s9, s1, s9
                  sltu         tp, zero, a4
                  slli         ra, s2, 14
                  srai         ra, s10, 20
                  and          tp, sp, t0
                  slti         s7, s6, -698
                  or           ra, tp, s10
                  ori          s7, gp, -961
                  add          gp, t3, a3
                  ori          t4, sp, -1415
                  slti         s8, a2, -702
                  sltiu        gp, ra, 1864
                  nop
                  nop
                  sltiu        s10, s0, -646
                  sltu         t6, a4, s0
                  sra          tp, zero, s2
                  slt          s2, s10, a2
                  ori          a1, a5, 33
                  slt          t6, gp, a4
                  xor          s8, s10, a2
                  lui          s8, 201303
                  slt          s1, t3, a2
                  lui          t0, 709382
                  and          a2, a3, a0
                  andi         a2, s7, -526
                  srl          t1, a4, t2
                  xor          a0, s5, t4
                  xori         t1, gp, -121
                  nop
                  slt          a1, s1, a5
                  xor          t0, t5, t4
                  slli         s11, s3, 20
                  sra          a5, s0, zero
                  sltu         a6, s6, a5
                  slti         t5, a1, 1467
                  sra          s5, tp, t1
                  sll          sp, s5, t5
                  or           a0, t1, s5
                  sra          t3, gp, sp
                  add          s4, a6, s3
                  and          t6, tp, a6
                  sra          t1, a4, t2
                  sll          gp, a2, s3
                  lui          sp, 873518
                  xori         a1, s3, 357
                  add          gp, s6, s9
                  or           t0, sp, a1
                  sra          s3, s2, a5
                  lui          t1, 1012294
                  sltu         a2, t0, s1
                  slti         gp, zero, -472
                  slti         s3, gp, 373
                  sltiu        t4, s10, -2045
                  ori          s10, t2, -153
                  xor          s1, t1, s3
                  sra          s3, s3, gp
                  slti         s11, s9, -1319
                  xori         a6, t0, 1371
                  nop
                  srl          t5, s6, gp
                  srli         t4, s0, 16
                  sltiu        s5, a2, -181
                  nop
                  srli         s6, s11, 8
                  xori         a0, s9, -749
                  srai         ra, a6, 13
                  slli         a5, s7, 1
                  sll          ra, s0, t5
                  xori         s9, s7, 1934
                  srai         t3, zero, 27
                  addi         s9, s6, -340
                  xor          s3, t2, a7
                  xori         s5, s0, 945
                  srai         sp, zero, 20
                  lui          s5, 150738
                  sra          t6, t0, s5
                  add          t0, a4, t6
                  xor          zero, s3, a1
                  slt          s2, tp, a4
                  add          t5, s10, s7
                  and          a2, t6, a2
                  andi         t6, s9, 919
                  sra          gp, t1, a1
                  nop
                  srai         t4, s6, 30
                  or           s7, s4, s9
                  and          s7, t2, zero
                  slti         s2, a3, 1448
                  srli         s8, s2, 0
                  and          s2, s3, a2
                  addi         s7, t5, 677
                  srai         gp, a1, 20
                  slli         a2, s8, 11
                  srli         a2, ra, 18
                  slli         t4, a6, 23
                  xori         s4, t6, 1120
                  nop
                  xori         tp, t0, 648
                  nop
                  slti         s6, sp, -855
                  sub          a0, t3, a5
                  andi         ra, t3, -1157
                  xori         t1, t0, 442
                  add          gp, a6, s1
                  ori          t6, s7, 1368
                  xori         t6, a4, 1221
                  sltu         a1, ra, s11
                  ori          zero, t4, 1908
                  andi         s2, s10, -147
                  lui          sp, 30410
                  and          t0, a4, a2
                  and          sp, a6, a1
                  sll          gp, s9, a1
                  sub          s3, a3, t4
                  xor          gp, ra, s8
                  and          s5, t6, t5
                  sub          gp, gp, t3
                  xori         s7, s5, -82
                  andi         zero, s1, -1746
                  add          s3, a6, s10
                  sub          s10, gp, a3
                  xor          s4, t0, t6
                  slti         t0, a5, -1781
                  auipc        s10, 943146
                  ori          s10, t1, 655
                  slti         sp, s3, -1897
                  slli         s1, a7, 8
                  sra          s8, s6, t6
                  and          t2, a3, s0
                  slt          s7, tp, a7
                  sll          a2, a5, t1
                  and          s10, sp, t4
                  srl          gp, s9, t0
                  nop
                  sll          s2, s2, t1
                  sltiu        s7, s9, 416
                  xor          s10, t2, s3
                  andi         s2, s5, 1879
                  slli         s5, a3, 4
                  sltiu        t1, s2, -1979
                  slli         a6, s0, 31
                  addi         t0, a1, 1240
                  sub          s6, s10, zero
                  ori          s3, t4, -266
                  srai         s4, zero, 14
                  sll          s11, a4, sp
                  addi         s11, s1, -386
                  lui          s2, 273067
                  srl          a6, a5, t5
                  add          ra, a3, t5
                  srl          s1, t6, s10
                  srli         a0, t3, 23
                  nop
                  addi         s3, s8, -1407
                  xori         t6, a7, -3
                  slli         t2, s6, 25
                  add          s6, t5, s10
                  xor          s2, t6, s6
                  slti         tp, ra, -1379
                  srai         sp, a3, 27
                  sltu         tp, t3, t5
                  andi         s4, s3, -1505
                  andi         a4, a4, 1555
                  lui          t0, 251072
                  slli         a0, s0, 2
                  srai         sp, t5, 19
                  xori         zero, a6, 120
                  sra          t6, t4, s3
                  addi         t1, t1, 947
                  addi         s10, s10, 50
                  lui          zero, 949648
                  ori          sp, a7, -1294
                  sltu         s3, a7, a7
                  sll          s9, t6, s5
                  and          s4, t5, s10
                  and          gp, t3, t3
                  or           t3, s11, t2
                  sub          a2, a1, gp
                  srai         s2, s11, 17
                  sltiu        t1, t3, 789
                  xor          t1, s10, sp
                  slti         s11, t0, -218
                  srli         s6, s1, 14
                  andi         a6, a3, 908
                  nop
                  addi         t0, gp, 116
                  sub          s11, s0, t3
                  addi         gp, t5, 261
                  srai         a0, s3, 3
                  sra          a5, s8, t2
                  add          t4, s4, s8
                  srl          s6, a5, a3
                  srl          s9, s9, s10
                  add          s9, a2, tp
                  lui          t6, 476949
                  xor          s1, t1, a1
                  xori         tp, t6, -932
                  sll          a1, s9, t5
                  ori          s2, t1, 1014
                  srai         tp, t6, 1
                  srl          s10, s3, t6
                  srli         s9, a2, 9
                  xori         t5, s7, -1038
                  andi         s4, a3, -1790
                  and          a0, s2, s3
                  lui          t4, 335716
                  sltiu        gp, ra, -1294
                  slli         s6, s0, 2
                  sra          s5, s10, s10
                  sra          s4, a7, s0
                  sltiu        a1, s3, 678
                  xori         ra, sp, -1312
                  or           t3, a1, t5
                  sltu         s1, a6, a7
                  sub          t6, a3, zero
                  slt          s9, t5, t0
                  sra          a2, t3, a6
                  add          s3, s3, s0
                  sub          s8, t5, a7
                  auipc        zero, 811852
                  and          s7, a7, t3
                  auipc        gp, 776796
                  sll          t5, a0, a3
                  slti         s1, a2, -106
                  slli         a5, s6, 21
                  sra          sp, s3, sp
                  auipc        a4, 187044
                  slti         sp, a7, 213
                  sltu         t6, a7, s3
                  sub          s11, a3, t6
                  sltu         a1, t3, s3
                  sll          a1, s5, gp
                  slli         t4, s1, 31
                  srl          s2, a3, a5
                  srli         s5, a6, 20
                  add          t5, t1, t2
                  ori          t2, s7, -248
                  addi         s1, t0, 1894
                  sra          a6, a4, s6
                  xor          a2, s8, s8
                  sltiu        s9, s8, 1574
                  and          t2, tp, t5
                  sltu         a0, tp, a1
                  andi         s11, a4, -1513
                  and          t4, s10, a1
                  ori          ra, a7, -645
                  auipc        s1, 689549
                  andi         t3, a7, 53
                  or           t3, t4, s1
                  sltiu        s5, s6, 2028
                  xori         s7, t0, -1738
                  slti         s3, a6, 1401
                  slt          zero, s11, t1
                  srai         s7, t4, 18
                  sub          s11, s9, s5
                  slti         gp, s5, -849
                  srli         s4, s2, 18
                  and          s1, t3, s0
                  or           ra, t3, sp
                  srli         s5, gp, 28
                  sltiu        t0, t0, -923
                  sltu         a5, s2, s2
                  xor          t2, s5, s7
                  or           s11, a0, a3
                  andi         zero, s3, 1828
                  add          s11, s3, a1
                  nop
                  sltu         sp, t5, s11
                  slli         a2, a1, 30
                  sltu         zero, t1, a0
                  slli         t4, a4, 24
                  auipc        a0, 448540
                  nop
                  sltiu        t6, s7, 368
                  addi         ra, t4, -1043
                  sltu         a6, s4, s9
                  auipc        s7, 370134
                  srai         a4, s7, 26
                  slli         a2, sp, 23
                  auipc        s3, 529767
                  sltu         s5, s5, a3
                  srl          s3, t1, t0
                  xor          s4, ra, s2
                  sra          ra, s4, s2
                  sltu         s1, t2, t2
                  auipc        sp, 699712
                  slti         a1, a0, -1727
                  sll          zero, t4, s1
                  srai         a5, ra, 15
                  xor          t1, t6, a7
                  srl          a5, gp, a6
                  srli         tp, gp, 29
                  andi         a4, s3, 1684
                  sltu         s8, a7, ra
                  sub          a4, s5, s3
                  sltu         s2, s7, a5
                  slti         a6, t6, 1784
                  xor          s3, a5, s0
                  or           s8, s1, ra
                  ori          a6, a0, 830
                  slli         tp, t2, 9
                  sub          s11, a2, s2
                  and          a4, s6, a7
                  ori          a2, s8, 619
                  xor          s10, t0, s2
                  auipc        s11, 992770
                  and          s4, a0, s6
                  addi         s1, s6, 1584
                  add          s9, t3, a3
                  add          a1, a3, s5
                  lui          gp, 538027
                  add          t5, s1, t2
                  auipc        a4, 36701
                  lui          a5, 363213
                  srl          s1, s4, s10
                  slti         s11, a5, 915
                  sltu         s9, s0, s3
                  ori          s1, a7, -600
                  addi         s7, a4, -830
                  srl          s4, tp, zero
                  slli         ra, s5, 16
                  slli         t2, s10, 22
                  sltiu        t1, ra, 371
                  srli         a1, t2, 23
                  srl          a5, t4, a6
                  slli         a5, s4, 11
                  srai         a2, gp, 25
                  ori          s3, ra, -799
                  sltiu        t5, t0, 465
                  slt          s10, t1, ra
                  andi         a6, t2, -1148
                  srl          a0, a2, a3
                  nop
                  slti         a4, tp, -1594
                  srli         a6, ra, 5
                  srai         ra, a5, 1
                  add          t0, a5, t4
                  sll          t2, a7, s0
                  addi         s10, s4, 1187
                  auipc        s10, 248237
                  xori         t3, a6, 293
                  add          a0, a6, s3
                  sltu         s3, a2, a5
                  xor          s2, sp, s2
                  srai         s8, a0, 9
                  slli         s9, s5, 18
                  nop
                  and          s4, a0, tp
                  slt          s6, t5, sp
                  auipc        s9, 608408
                  add          a1, a2, zero
                  xori         a1, s2, 1421
                  slt          s3, a3, s8
                  ori          s7, t0, -144
                  addi         s4, a7, -977
                  xori         a6, t3, 987
                  sll          t5, a2, t2
                  auipc        s6, 214629
                  srl          s5, a5, s7
                  nop
                  addi         s8, ra, -84
                  and          a0, t2, sp
                  ori          s3, a5, 441
                  addi         t6, s0, 628
                  slti         sp, s10, 961
                  add          t0, a1, a4
                  sll          s9, t5, t6
                  srl          zero, a1, s3
                  slti         t3, tp, 893
                  sra          s6, t0, t5
                  slti         sp, a7, 1393
                  sub          s9, t2, ra
                  nop
                  srl          t4, sp, s8
                  and          s3, zero, t4
                  slli         zero, t3, 13
                  slli         sp, sp, 12
                  xori         s1, a3, 1436
                  sltu         sp, a3, t5
                  ori          tp, s5, -1112
                  auipc        s7, 42996
                  slt          t1, sp, t2
                  slt          ra, s10, t6
                  or           s7, s9, s8
                  slti         sp, a7, -46
                  slt          s2, t3, t4
                  sra          t1, zero, zero
                  lui          s4, 376998
                  sltu         a0, s2, ra
                  addi         s4, a1, 364
                  sub          tp, t5, tp
                  sll          a4, s5, s6
                  ori          s2, a0, -1549
                  addi         a6, zero, 1214
                  sll          s1, a2, a0
                  or           tp, a7, s11
                  srl          t1, s0, a2
                  srli         t6, sp, 5
                  sll          t5, ra, s9
                  ori          s6, s9, 45
                  sll          t4, zero, s9
                  add          t1, zero, s1
                  lui          s9, 229970
                  ori          t1, s7, -730
                  xor          t2, t4, s5
                  add          sp, s3, a2
                  lui          s9, 10042
                  slt          a1, t6, ra
                  sll          gp, a0, s1
                  slti         zero, a0, -213
                  addi         sp, t1, -1371
                  srli         gp, s0, 16
                  srli         a4, zero, 30
                  ori          a5, a6, 836
                  srai         a6, s11, 12
                  nop
                  add          t5, s4, s2
                  and          t4, s6, s4
                  sll          s6, s4, ra
                  sltu         a2, t0, tp
                  nop
                  srai         t4, s10, 23
                  add          s2, t1, t4
                  andi         gp, a6, -1943
                  addi         t6, t5, 821
                  xor          s1, s7, a5
                  xori         a1, t2, 1664
                  sltiu        a2, s10, 1383
                  and          a5, s1, t6
                  lui          s4, 1033290
                  xor          a6, s4, t6
                  sltu         gp, a2, t6
                  xor          t5, gp, a3
                  slt          s7, s2, s9
                  srl          s5, t3, a4
                  sltiu        ra, s9, 1177
                  and          a2, a1, a7
                  srl          zero, a3, s10
                  lui          s4, 156532
                  sltiu        a2, a3, 304
                  sltiu        t2, s5, -277
                  xori         ra, s8, 2017
                  srli         t3, t1, 4
                  xori         s7, s5, -448
                  srli         t0, a7, 28
                  sub          t3, t5, a3
                  add          tp, t5, sp
                  auipc        a1, 713831
                  sra          s11, a6, s8
                  slt          s4, s9, tp
                  sra          s10, a4, sp
                  sltiu        t5, s0, 1753
                  slti         zero, t3, 1743
                  or           t5, s4, s3
                  srl          a1, s5, t5
                  slti         s3, t1, -778
                  sltiu        tp, ra, 1770
                  slti         a1, s11, 691
                  sll          s9, t2, zero
                  andi         s4, t5, 1326
                  slli         a5, s4, 21
                  sll          a4, t5, s8
                  xori         s11, t6, -712
                  sltiu        t1, s6, -745
                  add          zero, s1, s10
                  ori          s9, s4, 1313
                  add          s3, tp, ra
                  nop
                  sltu         t3, t2, a5
                  add          s10, a2, t3
                  srl          zero, zero, tp
                  slt          s11, a1, t6
                  xori         tp, s11, 166
                  auipc        a0, 12211
                  or           t5, s10, a1
                  xori         s8, t4, 1227
                  add          t1, zero, s11
                  slt          t2, s9, s10
                  slt          t3, s5, gp
                  sltu         gp, a3, s2
                  xori         t6, t3, 481
                  srai         s1, s8, 20
                  srl          a5, tp, t1
                  sltu         a4, a0, t3
                  xor          s6, s4, t1
                  sltiu        sp, s5, 1776
                  add          t1, t3, t6
                  nop
                  srl          s2, t3, s11
                  andi         t3, a6, -200
                  xor          gp, a4, a7
                  srli         s9, a2, 17
                  nop
                  slli         t5, s1, 3
                  slt          s11, a0, t1
                  sltiu        ra, a3, 1875
                  sub          s8, s7, a3
                  sltiu        s3, a5, 1385
                  slt          gp, t3, s8
                  lui          a6, 323194
                  sltiu        s11, s9, -2044
                  slli         a6, s2, 18
                  addi         s10, a4, -850
                  xori         a2, s11, 665
                  srli         t5, ra, 13
                  ori          s3, t6, -971
                  slti         t0, s7, 1142
                  srl          t0, ra, t4
                  sub          s10, s0, s2
                  lui          zero, 213434
                  sra          a0, s8, zero
                  and          s10, a3, s11
                  sll          a6, s4, t1
                  sltu         s7, s7, t2
                  xori         ra, s5, -272
                  sra          t1, a4, a6
                  lui          s2, 438113
                  lui          sp, 615227
                  or           s11, s5, s6
                  add          ra, a5, s10
                  lui          s11, 819505
                  slt          gp, t3, tp
                  srl          ra, t6, gp
                  srli         s11, t0, 6
                  srai         gp, t3, 10
                  xori         s11, a0, 543
                  add          a4, t3, s8
                  slli         t0, s5, 0
                  nop
                  slti         tp, gp, -1116
                  slli         zero, sp, 21
                  sltu         ra, a7, t3
                  slli         t6, zero, 5
                  sll          s9, s2, s8
                  or           gp, s1, t0
                  auipc        t0, 284809
                  srl          a0, tp, s5
                  slti         s8, t2, -1069
                  nop
                  xor          a6, a0, s10
                  sra          sp, s11, a1
                  srli         s8, t6, 16
                  ori          ra, s1, 496
                  sll          s3, s11, a5
                  sltu         t3, s6, t5
                  sltiu        t5, a5, 980
                  addi         s7, ra, -720
                  slti         s1, t1, -1685
                  nop
                  sll          s3, tp, gp
                  or           s3, s4, s3
                  and          t2, s0, t0
                  slti         s10, tp, 1914
                  or           t5, t3, a4
                  slti         tp, s8, -1148
                  andi         t6, s0, 442
                  sub          gp, s9, a2
                  sltiu        t4, s8, -1842
                  sra          s9, s4, s7
                  sra          s3, a2, s6
                  srai         a6, t2, 14
                  andi         s11, s9, -2031
                  nop
                  sltu         s1, s2, s1
                  srli         a6, a6, 27
                  xor          a6, a1, a7
                  slli         s5, t4, 16
                  auipc        t0, 715555
                  sra          s11, s4, s0
                  addi         ra, s0, -1083
                  sltiu        gp, t6, 30
                  or           s9, s11, a7
                  srai         sp, s11, 3
                  slli         t6, a1, 16
                  sll          t5, t0, s11
                  lui          sp, 84845
                  nop
                  slti         s5, s1, -1738
                  lui          t0, 196896
                  srli         s9, s2, 22
                  ori          sp, t5, 730
                  sltiu        a5, a2, -36
                  addi         s11, t3, 1022
                  addi         s3, t1, 1590
                  add          t4, a3, s9
                  xori         zero, tp, 1939
                  sll          zero, s5, s10
                  auipc        zero, 320591
                  ori          s7, a4, 1357
                  xor          a2, a4, a3
                  slti         s7, t2, 1137
                  add          s8, t1, s4
                  slti         gp, s1, -44
                  srli         t6, s10, 26
                  srl          a6, s11, a5
                  auipc        s7, 929016
                  slli         t1, s5, 23
                  xori         s10, a5, -604
                  ori          a5, s2, 1103
                  addi         t5, s5, -1965
                  or           a6, s4, s8
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           sp, 0x80000000
                  li           s1, 0x0
                  li           t0, 0xffffffff
                  li           s5, 0x80000000
                  li           s11, 0x3f74168
                  li           s2, 0x0
                  li           s8, 0x80000000
                  li           s9, 0x80000000
                  li           t3, 0x0
                  sub          s8, s2, t3
                  auipc        s8, 219629
                  nop
                  lui          s2, 928379
                  lui          s1, 550721
                  addi         s9, s9, -1989
                  add          s2, t3, s9
                  nop
                  nop
                  auipc        s5, 534976
                  auipc        s9, 625547
                  add          t0, s1, sp
                  lui          t3, 601281
                  add          s11, sp, s8
                  sub          s7, sp, s1
                  sub          s7, s5, sp
                  lui          s2, 183726
                  lui          s8, 31910 #end riscv_int_numeric_corner_stream_1
                  or           a4, a4, s3
                  sll          s8, s0, s6
                  xori         a6, a7, 1367
                  sltiu        tp, ra, -639
                  sll          s5, s5, a3
                  add          s10, a2, zero
                  lui          tp, 180768
                  add          t0, a1, a6
                  sll          t1, a1, t5
                  ori          s8, s2, -1643
                  addi         tp, a5, -1906
                  nop
                  sltiu        tp, s2, -1531
                  srl          s6, s2, t5
                  sub          a4, t1, a3
                  sltiu        t3, ra, 653
                  lui          sp, 1039365
                  ori          s10, a1, -1807
                  slli         t5, t2, 16
                  auipc        s2, 297044
                  or           t4, a1, s8
                  sub          a1, t2, a0
                  lui          a2, 915310
                  srl          s4, gp, a5
                  srai         a0, s4, 3
                  srai         a5, t6, 5
                  slli         a4, s8, 7
                  sltu         t3, a1, t2
                  or           t4, s9, tp
                  nop
                  add          t0, t0, s10
                  slli         t1, s7, 13
                  andi         a6, s11, 1567
                  or           t5, a1, a7
                  and          a4, s10, a1
                  xor          s11, zero, s8
                  or           a1, a7, t5
                  srli         s3, t1, 5
                  srl          a5, ra, s8
                  nop
                  xori         s3, s5, 336
                  slt          t4, a5, a6
                  sub          s6, a2, s10
                  addi         zero, t1, -218
                  sll          s3, s10, s6
                  sub          zero, s5, a0
                  sltu         t4, gp, a2
                  addi         t4, s1, 1907
                  xor          a5, t2, a4
                  add          a4, s10, s10
                  and          s10, s4, t0
                  srl          s1, t6, s5
                  and          s8, ra, a4
                  nop
                  slli         t6, s0, 30
                  srai         gp, t1, 7
                  slt          s3, s4, s8
                  auipc        zero, 816141
                  and          zero, t5, s10
                  srli         a6, a1, 4
                  or           zero, zero, t4
                  xor          s4, t3, t1
                  or           s4, s3, t1
                  nop
                  sll          s4, t3, t6
                  sub          t4, s9, t2
                  nop
                  sub          s6, t1, t6
                  xori         s1, a4, 1438
                  xori         s2, t6, 524
                  srai         zero, a5, 23
                  auipc        s8, 136111
                  auipc        s5, 891272
                  ori          s11, s7, -142
                  slt          s2, t4, s3
                  srai         tp, s2, 1
                  ori          s1, a2, 276
                  or           s5, a0, a4
                  slti         zero, s2, -279
                  xor          s11, gp, s4
                  slt          a2, tp, s1
                  or           s3, zero, a6
                  ori          t4, s7, 1171
                  srl          a2, sp, s9
                  sll          a5, a3, s3
                  sltu         tp, a3, a0
                  slli         sp, t6, 2
                  xor          tp, a7, t4
                  and          zero, a4, zero
                  srli         a0, sp, 24
                  slti         s7, zero, 403
                  nop
                  andi         s6, t1, 264
                  srl          s10, gp, t5
                  sra          gp, a7, s8
                  srl          s2, a1, s6
                  srl          s1, s4, a1
                  andi         s4, zero, 1199
                  sltu         a2, t4, t0
                  add          t5, a1, gp
                  xor          ra, s7, s3
                  and          ra, s1, s5
                  srl          s1, s3, a4
                  srai         s5, a2, 21
                  andi         t0, t0, -314
                  auipc        s3, 159490
                  sltiu        sp, s11, -1809
                  slt          s11, s9, a4
                  ori          s8, s3, 1766
                  and          t5, s11, zero
                  sltu         s6, a4, t6
                  srai         s11, ra, 6
                  sltiu        s9, t1, 1528
                  srl          t0, s7, a0
                  lui          s10, 406740
                  srai         s8, s8, 4
                  sub          sp, t4, a0
                  sltiu        s2, a5, 558
                  sltu         s1, a4, a6
                  nop
                  andi         zero, t3, -394
                  andi         s1, zero, 920
                  slt          a1, t5, s5
                  sub          s11, s5, s5
                  ori          a2, ra, 1468
                  lui          t2, 139266
                  srli         t4, a4, 17
                  xor          s10, gp, s0
                  slti         a5, gp, 1543
                  srli         a1, t5, 21
                  andi         t2, s6, -1009
                  srli         t4, a4, 25
                  sll          s1, s4, s9
                  sll          t4, s10, s10
                  sltu         s7, s1, a2
                  srli         s8, s11, 8
                  srli         s1, tp, 26
                  sltu         sp, a3, s4
                  xori         t3, s0, -1948
                  sll          s7, s11, s9
                  slt          t4, t4, t0
                  nop
                  add          s3, a5, t0
                  xor          a4, s6, t6
                  auipc        s6, 573226
                  and          s8, s8, a0
                  addi         s11, s0, 2021
                  sub          t5, t6, s8
                  ori          s1, t2, 7
                  lui          a1, 172466
                  ori          a6, a7, -1582
                  sll          s1, ra, a6
                  andi         t5, s0, 196
                  srai         a5, s3, 28
                  srl          t4, s0, s0
                  auipc        a2, 144377
                  auipc        a6, 506939
                  andi         a4, t0, 1866
                  srl          t0, zero, t5
                  xor          t3, t5, a5
                  sll          a0, a2, tp
                  slli         tp, s3, 7
                  auipc        t4, 588453
                  xori         s10, tp, 508
                  sltu         a5, t5, s5
                  sltiu        s9, sp, -1829
                  sub          a0, t4, t2
                  sll          a1, a6, t2
                  slti         s1, a1, 886
                  xor          t0, a3, a7
                  or           s8, t0, s1
                  xor          t3, s9, s7
                  lui          t5, 723503
                  sub          zero, ra, a2
                  add          ra, a5, t5
                  add          s1, a0, t3
                  slli         tp, s8, 30
                  srl          zero, t5, a7
                  add          sp, t1, ra
                  xori         t3, t5, 834
                  sra          s8, zero, a6
                  sltu         s7, a5, a3
                  nop
                  ori          s9, s5, -783
                  sub          s2, ra, sp
                  sll          t6, gp, s1
                  slt          t4, sp, s11
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           a4, 0xdfa9e46b
                  li           t3, 0x2eb6caf
                  li           s7, 0x80000000
                  li           t6, 0xffffffff
                  li           s6, 0x80000000
                  li           s8, 0x0
                  li           s10, 0xabe91bf5
                  li           t5, 0x80000000
                  li           tp, 0xffffffff
                  lui          s10, 485056
                  nop
                  addi         s7, s8, 1395
                  sub          s7, s7, t3
                  nop
                  lui          t6, 925576
                  addi         t6, s8, 238
                  addi         a4, t5, -1785
                  auipc        t6, 1042404
                  sub          t3, tp, t6
                  addi         t3, t3, 861
                  nop
                  lui          s7, 71677
                  auipc        t6, 697295
                  add          tp, s8, s10
                  nop
                  addi         t3, s8, 547
                  add          a4, t6, s8
                  auipc        t6, 205995
                  nop
                  addi         a6, a6, -616
                  auipc        s8, 655468
                  nop
                  lui          s8, 842238 #end riscv_int_numeric_corner_stream_5
                  srai         s11, s0, 14
                  sltu         s3, s4, s2
                  slti         ra, t0, -413
                  nop
                  ori          ra, ra, -1391
                  sub          a2, a7, zero
                  addi         zero, a1, 532
                  andi         t1, s4, 177
                  slt          t1, zero, s0
                  andi         s2, s2, 57
                  and          a1, s6, sp
                  or           tp, t6, sp
                  xori         s9, a7, 1716
                  sltu         s3, s7, s7
                  sra          t3, s0, ra
                  or           a6, s9, s5
                  slti         t4, s2, 1815
                  add          s9, t0, a2
                  slli         s10, s6, 4
                  srl          s2, a0, t5
                  srl          a6, a6, s2
                  sub          s7, gp, t1
                  sltu         ra, s8, t5
                  addi         s3, t6, -9
                  sra          s1, sp, t4
                  slli         ra, s1, 12
                  and          s8, sp, t1
                  nop
                  sll          s5, s4, t4
                  ori          t0, a0, -1424
                  sra          t3, s4, a3
                  sra          sp, t6, a1
                  srai         s4, a1, 31
                  sltu         t3, s2, s6
                  addi         s11, a1, 317
                  sll          s3, tp, t2
                  srl          ra, s10, a6
                  ori          a5, a0, 1629
                  sll          s1, s9, s6
                  auipc        gp, 525164
                  addi         a5, gp, -650
                  sub          s9, s2, s1
                  slt          s6, s2, a0
                  ori          t0, a3, 740
                  and          a5, a4, gp
                  auipc        t6, 703451
                  sll          a6, s7, s2
                  srai         zero, gp, 29
                  sll          a6, a7, s5
                  andi         s6, t5, -1178
                  and          t0, t6, t5
                  and          s3, t1, s4
                  slt          s9, t4, s10
                  and          s11, s1, s2
                  ori          ra, s5, 615
                  auipc        s5, 563769
                  and          s6, t5, a3
                  sltu         a4, t1, s3
                  slt          s4, s2, s10
                  or           a2, t0, s10
                  slli         s4, t3, 11
                  sub          tp, a3, s2
                  slti         t0, ra, -1623
                  sll          s11, a4, t0
                  sltiu        a6, a2, -1308
                  sub          a2, a2, tp
                  sltu         a5, t1, s3
                  sll          s9, gp, a2
                  sll          t0, s7, s9
                  slli         s9, a1, 23
                  add          t3, a7, s6
                  lui          a2, 834893
                  auipc        ra, 15571
                  srl          t4, s4, ra
                  add          s4, a2, a7
                  sra          s6, s10, tp
                  nop
                  srl          t0, t1, s10
                  auipc        s4, 747604
                  add          s5, a0, t5
                  and          t1, s4, a4
                  sltiu        a0, tp, -2005
                  sltiu        zero, s8, 1043
                  slli         t6, s6, 0
                  ori          s5, a4, 1305
                  auipc        t4, 618784
                  sltiu        s9, a0, 558
                  and          t6, s9, s9
                  slli         a2, zero, 19
                  srai         zero, s9, 30
                  srl          s7, a4, s4
                  srl          zero, a4, s11
                  srai         a4, s3, 28
                  sll          s9, s8, s8
                  slli         sp, gp, 4
                  and          s11, t5, s3
                  srl          s7, t2, a3
                  sltiu        gp, s7, 237
                  ori          s2, a1, 1539
                  nop
                  lui          t6, 928284
                  sll          s5, s0, a6
                  xor          a2, gp, a4
                  slt          a0, s6, t3
                  sltiu        gp, s11, -1253
                  slli         a4, s9, 23
                  sll          t4, s4, t5
                  and          s4, gp, a6
                  srl          s7, t0, a3
                  addi         tp, t4, 1464
                  andi         s8, s2, 46
                  lui          sp, 30179
                  sltu         a2, sp, a7
                  srli         a0, t2, 14
                  nop
                  sltiu        s3, s4, 522
                  xori         s11, a7, -42
                  addi         t4, s10, 532
                  add          s3, s4, s8
                  sltu         sp, tp, t1
                  srl          t5, t1, t0
                  slt          s7, s8, a6
                  lui          s11, 611678
                  slt          s6, gp, a5
                  lui          s5, 221773
                  xori         t3, zero, 2023
                  lui          sp, 950026
                  sll          zero, tp, s5
                  addi         s5, a4, 396
                  and          ra, t2, t2
                  and          s8, sp, a3
                  sra          s3, zero, s3
                  slli         s1, s10, 30
                  li           t5, 0x24ba80f3 #start riscv_int_numeric_corner_stream_6
                  li           a0, 0x0
                  li           tp, 0x0
                  li           a1, 0xffffffff
                  li           a4, 0xffffffff
                  li           s11, 0xdef0772c
                  li           s5, 0x781486f8
                  li           t6, 0x0
                  li           s4, 0x8676c4ca
                  li           t3, 0x80000000
                  add          s4, t3, s4
                  nop
                  add          tp, s4, tp
                  addi         s4, a4, -254
                  add          t6, s5, a0
                  sub          a0, a4, s5
                  sub          s5, a1, tp
                  sub          t3, t3, s5
                  add          tp, t6, t6
                  nop
                  sub          s4, a0, t6
                  lui          a0, 398042
                  auipc        a1, 560035
                  add          s4, s4, t6
                  auipc        t3, 395338
                  addi         t6, a1, 1238
                  sub          t6, a0, a4
                  add          t5, a1, t3
                  addi         t6, s5, 1104
                  add          tp, a4, a0
                  addi         s4, t3, 322
                  addi         t5, s5, 1220
                  nop
                  add          t3, tp, a1
                  auipc        tp, 739591
                  lui          t5, 326394
                  nop #end riscv_int_numeric_corner_stream_6
                  srli         a4, t1, 16
                  sra          zero, s10, a2
                  sub          tp, sp, a3
                  xor          s3, s4, a7
                  xor          t6, t1, t0
                  add          a2, s1, s1
                  or           s2, tp, s11
                  and          ra, s5, t4
                  auipc        s9, 740142
                  srl          sp, s4, s10
                  srli         t0, s8, 22
                  slt          s1, a5, a5
                  lui          s9, 477717
                  sltu         s3, s6, s2
                  xor          sp, tp, s8
                  sra          a6, a6, s8
                  addi         a0, t0, -1387
                  slli         s11, s2, 17
                  or           gp, s0, s1
                  sra          t0, t5, a6
                  nop
                  srl          a4, t4, a3
                  sltiu        a0, ra, 1028
                  slt          a0, s5, ra
                  xor          s4, s6, t3
                  andi         s4, tp, -1750
                  sll          a0, s6, t2
                  sltiu        t2, a6, -1942
                  andi         a1, a1, -63
                  or           a0, s9, a3
                  nop
                  srai         s3, s7, 18
                  slli         t1, t5, 4
                  sub          s7, s8, sp
                  sltiu        a1, a6, -1807
                  xor          a2, s1, s1
                  sra          a6, t6, zero
                  ori          s1, gp, 1886
                  slli         s1, t5, 21
                  and          ra, t5, s1
                  sll          s7, tp, s7
                  slti         t5, t6, 1669
                  sub          gp, t2, t3
                  xor          s3, t4, a6
                  addi         s5, s8, -75
                  addi         s7, t0, -1722
                  sltiu        s3, s1, -1016
                  add          tp, t2, t6
                  sub          a0, a3, a3
                  xor          a4, t3, t5
                  or           s3, s8, a3
                  sltiu        t6, s1, -648
                  or           t4, s1, s10
                  slli         s4, t6, 24
                  sra          s3, a6, s5
                  xor          t5, a7, s6
                  srl          a5, gp, s3
                  slli         s3, s5, 24
                  slli         zero, a1, 2
                  sltiu        s7, a4, -1761
                  add          t5, zero, s11
                  addi         zero, s5, 616
                  nop
                  srl          zero, tp, t0
                  and          s8, a6, s1
                  sra          a6, gp, s4
                  sll          a0, s8, ra
                  srai         t2, sp, 12
                  sltiu        s3, s5, 1398
                  slli         t3, t4, 29
                  xori         a2, t6, -973
                  sll          t1, s2, s4
                  sltu         a0, t2, t5
                  sub          t0, t6, gp
                  add          s7, t5, a5
                  and          s4, a2, sp
                  ori          tp, a6, -4
                  srai         s9, s11, 14
                  slli         s2, s5, 24
                  addi         t2, a2, -643
                  or           t4, s11, s3
                  sltu         s5, t0, s5
                  or           sp, s4, s7
                  sra          a2, s10, a1
                  sub          t2, s1, s6
                  sltu         a1, t1, a4
                  slt          s4, t3, s10
                  add          t5, s11, s8
                  andi         s5, s10, 1252
                  sll          t1, s4, a7
                  or           s2, t6, s9
                  srl          a2, s6, a4
                  sltiu        gp, sp, 978
                  nop
                  sra          t4, sp, s6
                  xor          s3, gp, s4
                  srli         a2, s8, 2
                  srai         s1, t5, 11
                  andi         zero, t6, -882
                  sltiu        s10, a2, -248
                  auipc        t2, 267861
                  slli         s4, tp, 26
                  sltiu        ra, a5, -1950
                  and          a5, zero, s2
                  and          t5, gp, a0
                  srai         zero, t2, 8
                  slt          s9, tp, s8
                  nop
                  lui          s6, 883347
                  slli         a1, s8, 12
                  srl          t3, a3, t1
                  slli         s10, sp, 23
                  sra          s1, a7, s6
                  slt          gp, a1, a1
                  xori         a2, gp, 1653
                  sltiu        s1, s6, -1861
                  and          s4, s7, s7
                  andi         s2, t6, 1387
                  srai         s5, s6, 7
                  addi         t5, s5, -1895
                  or           s5, s5, t4
                  slli         t3, a6, 30
                  sltu         s9, t6, s8
                  lui          s8, 609717
                  srli         t1, a1, 4
                  sltiu        a2, t6, 1704
                  or           a0, t6, a4
                  nop
                  srl          t6, s8, t0
                  and          t4, t2, a5
                  srli         s5, s11, 18
                  auipc        t5, 461186
                  srai         a2, a7, 13
                  sltu         s9, s4, s10
                  srli         s4, tp, 13
                  srl          s10, t5, s10
                  addi         s8, t1, -1784
                  andi         t2, a3, 265
                  add          a6, t0, s4
                  xori         s9, t4, 688
                  xor          t6, s8, t6
                  sll          a1, a3, s9
                  lui          a1, 441341
                  slti         ra, t1, -106
                  sub          a4, s9, t5
                  sltu         t1, t1, t3
                  sll          t0, a6, zero
                  sltiu        t2, t4, 956
                  sltiu        t3, s11, -1062
                  sll          zero, t0, s10
                  srli         s9, a2, 29
                  addi         s8, s10, 2005
                  or           t2, a6, t6
                  auipc        a2, 375350
                  addi         tp, tp, -1962
                  srl          t1, a3, a2
                  sltiu        sp, s4, -205
                  lui          t4, 770610
                  or           s4, a2, t5
                  sll          sp, s8, t5
                  addi         a5, ra, 282
                  xor          s10, a6, a2
                  andi         t6, s8, -996
                  lui          s6, 42549
                  sltu         s6, tp, t4
                  auipc        s4, 773061
                  sll          t1, a6, s3
                  sub          ra, t4, t6
                  sltiu        a2, t3, -1224
                  sltu         a5, s3, t1
                  xor          s10, t2, a4
                  nop
                  add          a2, s3, a2
                  sltiu        a2, s7, 1494
                  add          a5, a3, a0
                  nop
                  slt          s2, s7, s6
                  auipc        a1, 653216
                  and          t1, s5, a0
                  and          t4, t0, a2
                  slt          a6, t1, a0
                  lui          sp, 150283
                  lui          s5, 441047
                  srli         s11, a3, 12
                  or           s2, gp, s6
                  sll          s3, tp, a1
                  slli         sp, sp, 24
                  sll          s7, a0, s11
                  sub          ra, a7, s2
                  sub          ra, s3, s9
                  and          gp, s1, a1
                  srl          t5, t1, s2
                  sub          a1, s10, s1
                  sub          sp, a3, tp
                  add          t2, s5, t4
                  ori          a4, zero, 125
                  add          a4, s0, a3
                  xor          a6, t5, a3
                  srli         t6, s10, 7
                  sll          t3, a7, s2
                  or           s11, sp, a1
                  sll          s11, sp, s4
                  auipc        a4, 946569
                  add          s1, s9, a1
                  xor          a0, s10, sp
                  sll          s10, s7, a2
                  auipc        s1, 156151
                  sltiu        s8, t1, -1777
                  slt          s2, a7, s10
                  sub          s8, s2, s9
                  xori         s9, a4, 115
                  srl          s7, s3, s8
                  srai         gp, t6, 13
                  and          s6, s0, s11
                  slli         s5, s4, 16
                  andi         t6, s8, -1737
                  sub          a2, t6, ra
                  sub          t1, t3, s0
                  ori          t0, zero, -752
                  ori          s1, s2, -292
                  and          t6, a0, s7
                  add          t5, s1, a4
                  sltu         t5, s5, t4
                  slti         t3, s8, -1594
                  sltu         s9, a4, zero
                  slti         zero, t2, 1828
                  sltiu        a1, s9, -1244
                  xor          a0, t2, s3
                  xori         s10, ra, -1139
                  sltu         a5, a4, s6
                  nop
                  slt          a5, a7, a6
                  auipc        gp, 741719
                  or           a5, s0, t6
                  andi         t2, s3, 50
                  sll          ra, t6, s2
                  ori          ra, t3, -1664
                  ori          s1, t6, 856
                  addi         tp, t4, -1188
                  add          s10, tp, t1
                  sll          gp, s9, s6
                  and          s5, s7, a2
                  andi         s10, s5, 1335
                  slli         t2, t1, 13
                  srl          a0, s11, zero
                  addi         s3, s9, 1640
                  addi         sp, s4, -2025
                  sub          s11, t6, tp
                  sub          a1, s0, a0
                  slti         gp, s1, -114
                  and          s3, t4, s5
                  xor          a6, s4, a3
                  or           s11, s8, t0
                  sub          s8, t4, a5
                  sll          a0, s3, a2
                  sltu         a2, t3, t2
                  sra          s4, s10, a7
                  add          t6, t1, s4
                  addi         s4, s9, 312
                  and          s11, zero, a6
                  sub          a2, a2, t2
                  lui          s4, 129757
                  slli         s3, t6, 18
                  or           s9, t3, a2
                  and          s10, a1, a3
                  andi         a0, t0, -292
                  srl          a2, gp, s5
                  ori          t6, t5, 1220
                  auipc        s4, 438288
                  srli         a1, t4, 15
                  slt          a1, s7, s11
                  addi         s5, a2, -382
                  sll          s2, t5, a6
                  auipc        s6, 788193
                  sltu         tp, s3, a1
                  sub          s11, t2, tp
                  slli         t2, ra, 15
                  or           gp, s4, a6
                  or           a2, a1, zero
                  add          s5, s1, a2
                  ori          a6, s11, 286
                  srl          a2, t2, a2
                  nop
                  sub          s8, s10, a4
                  nop
                  andi         a4, s0, 1624
                  xori         s2, a3, 1836
                  slti         a2, t2, 1891
                  la x8, test_done
                  jalr x0, x8, 0
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
mmode_intr_vector_1:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x13, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_2:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x13, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_3:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x13, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_4:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x13, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_5:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x13, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_6:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x13, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_7:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x13, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_8:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x13, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_9:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x13, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_10:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x13, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_11:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x13, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_12:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x13, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_13:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x13, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_14:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x13, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

mmode_intr_vector_15:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x13, x17, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x8, test_done
                  jalr x0, x8, 0

.align           4
mtvec_handler:    
                  .option norvc;
                  j mmode_exception_handler
                  j mmode_intr_vector_1
                  j mmode_intr_vector_2
                  j mmode_intr_vector_3
                  j mmode_intr_vector_4
                  j mmode_intr_vector_5
                  j mmode_intr_vector_6
                  j mmode_intr_vector_7
                  j mmode_intr_vector_8
                  j mmode_intr_vector_9
                  j mmode_intr_vector_10
                  j mmode_intr_vector_11
                  j mmode_intr_vector_12
                  j mmode_intr_vector_13
                  j mmode_intr_vector_14
                  j mmode_intr_vector_15

mmode_exception_handler:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x13, x17, zero
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x20, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x20, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x20, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x20, x10, ecall_handler
                  li x10, 0x1
                  beq x20, x10, instr_fault_handler
                  li x10, 0x5
                  beq x20, x10, load_fault_handler
                  li x10, 0x7
                  beq x20, x10, store_fault_handler
                  li x10, 0xc
                  beq x20, x10, pt_fault_handler
                  li x10, 0xd
                  beq x20, x10, pt_fault_handler
                  li x10, 0xf
                  beq x20, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
                  1: la x8, test_done
                  jalr x1, x8, 0

ecall_handler:    
                  la x20, _start
                  sw x0, 0(x20)
                  sw x1, 4(x20)
                  sw x2, 8(x20)
                  sw x3, 12(x20)
                  sw x4, 16(x20)
                  sw x5, 20(x20)
                  sw x6, 24(x20)
                  sw x7, 28(x20)
                  sw x8, 32(x20)
                  sw x9, 36(x20)
                  sw x10, 40(x20)
                  sw x11, 44(x20)
                  sw x12, 48(x20)
                  sw x13, 52(x20)
                  sw x14, 56(x20)
                  sw x15, 60(x20)
                  sw x16, 64(x20)
                  sw x17, 68(x20)
                  sw x18, 72(x20)
                  sw x19, 76(x20)
                  sw x20, 80(x20)
                  sw x21, 84(x20)
                  sw x22, 88(x20)
                  sw x23, 92(x20)
                  sw x24, 96(x20)
                  sw x25, 100(x20)
                  sw x26, 104(x20)
                  sw x27, 108(x20)
                  sw x28, 112(x20)
                  sw x29, 116(x20)
                  sw x30, 120(x20)
                  sw x31, 124(x20)
                  la x8, write_tohost
                  jalr x0, x8, 0

instr_fault_handler:
                  add x17, x13, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

load_fault_handler:
                  add x17, x13, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

store_fault_handler:
                  add x17, x13, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x17, x13, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x17, x13, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x17, x13, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
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
