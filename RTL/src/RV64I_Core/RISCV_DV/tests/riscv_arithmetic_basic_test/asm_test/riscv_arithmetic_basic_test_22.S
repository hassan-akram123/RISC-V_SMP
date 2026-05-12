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
                  li x23, 0x40000100
                  csrw 0x301, x23
kernel_sp:        
                  la x26, kernel_stack_end

trap_vec_init:    
                  la x23, mtvec_handler
                  ori x23, x23, 0
                  csrw 0x305, x23 # MTVEC

mepc_setup:       
                  la x23, init
                  csrw 0x341, x23

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x23, 0x1800
                  csrw 0x300, x23 # MSTATUS
                  mret
init:             
                  li x0, 0xfdd4b140
                  li x1, 0x85340cea
                  li x2, 0x80000000
                  li x3, 0x80000000
                  li x4, 0xa
                  li x5, 0x8da14ec9
                  li x6, 0x80000000
                  li x7, 0xb9e0494f
                  li x8, 0x0
                  li x9, 0xfa59a9d9
                  li x10, 0x75b6a12
                  li x11, 0x5
                  li x12, 0x0
                  li x13, 0xb12e828
                  li x14, 0xf6ed9cec
                  li x15, 0x4bfb3107
                  li x16, 0x92e3afc1
                  li x17, 0x0
                  li x18, 0x80000000
                  li x19, 0xb
                  li x20, 0x80000000
                  li x21, 0x7bd40241
                  li x22, 0xf
                  li x23, 0x80000000
                  li x24, 0x86b97181
                  li x25, 0x0
                  li x27, 0x0
                  li x28, 0x0
                  li x30, 0xe
                  li x31, 0x0
                  la x29, user_stack_end
main:             li           a6, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           s3, 0xffffffff
                  li           s11, 0xffffffff
                  li           a3, 0x80000000
                  li           s7, 0x80000000
                  li           a7, 0xc4cea7b0
                  li           s4, 0x80000000
                  li           gp, 0xffffffff
                  li           a1, 0xf0908a4f
                  li           a0, 0x80000000
                  sub          a6, s3, a3
                  nop
                  nop
                  lui          s3, 383804
                  add          s11, s11, s7
                  auipc        a1, 191091
                  nop
                  addi         a6, s3, 1818
                  add          gp, a1, s11
                  lui          a0, 1000626
                  auipc        s3, 694461
                  add          a1, a3, a0
                  addi         a3, a7, 1215
                  sub          a6, a7, a7
                  auipc        a1, 1047607
                  nop
                  add          gp, s3, gp
                  addi         a3, s7, 815
                  add          gp, s3, a1 #end riscv_int_numeric_corner_stream_4
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           t6, 0x0
                  li           s7, 0xc9027d2c
                  li           s11, 0x45261455
                  li           a0, 0x80000000
                  li           a7, 0x38708bd
                  li           s5, 0x80000000
                  li           gp, 0xffffffff
                  li           ra, 0xd160198d
                  li           t3, 0x0
                  lui          s2, 328470
                  sub          s7, ra, a0
                  sub          t3, t6, t6
                  sub          s7, gp, s7
                  auipc        gp, 809128
                  lui          t3, 758134
                  nop
                  auipc        ra, 307606
                  add          s2, s5, t3
                  sub          ra, s2, a0
                  addi         s2, a7, -757
                  sub          s5, ra, s7
                  addi         gp, a0, -328
                  nop
                  auipc        s5, 444789 #end riscv_int_numeric_corner_stream_7
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           t6, 0xffffffff
                  li           gp, 0xffffffff
                  li           t2, 0x80000000
                  li           t3, 0x0
                  li           t5, 0xffffffff
                  li           s4, 0xf8e1985d
                  li           t1, 0x0
                  li           s11, 0x0
                  li           a2, 0x80000000
                  addi         s11, s4, -558
                  sub          t3, s4, s4
                  sub          s4, t2, t2
                  nop
                  lui          gp, 708141
                  addi         t6, t5, -542
                  sub          gp, t6, ra
                  add          gp, t2, t2
                  add          s4, ra, s11
                  add          gp, ra, ra
                  lui          t2, 879990
                  addi         t6, ra, -1966
                  lui          s4, 467144
                  add          a2, a2, s11
                  sub          t3, gp, s4
                  addi         t5, t2, -1690
                  add          t3, t6, s4
                  addi         s4, t5, -1925
                  sub          t2, t5, t6 #end riscv_int_numeric_corner_stream_1
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           a7, 0x0
                  li           a5, 0x579efad7
                  li           t5, 0x80000000
                  li           s11, 0x0
                  li           t0, 0xffffffff
                  li           a1, 0x0
                  li           a2, 0x0
                  li           ra, 0x80000000
                  li           s2, 0x0
                  sub          s11, s2, a7
                  auipc        a5, 636627
                  auipc        ra, 106970
                  addi         ra, ra, -1171
                  lui          s11, 141901
                  lui          s2, 1030274
                  add          ra, tp, t5
                  sub          a5, s11, ra
                  auipc        ra, 886324
                  sub          t5, a2, ra
                  nop
                  lui          a5, 599934
                  sub          tp, s11, ra
                  addi         a7, t5, -1976
                  add          s11, t0, ra
                  addi         ra, a1, 579
                  sub          t5, ra, ra
                  nop
                  auipc        a2, 912672
                  sub          t0, t0, a2
                  addi         s11, a2, -936
                  sub          a5, ra, tp
                  nop
                  auipc        ra, 908986 #end riscv_int_numeric_corner_stream_12
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           s0, 0x4cf7728e
                  li           s8, 0x0
                  li           a3, 0xffffffff
                  li           a4, 0x80000000
                  li           tp, 0xffffffff
                  li           s2, 0xce00409d
                  li           t1, 0x1150e8cd
                  li           a7, 0xf1418065
                  li           s3, 0x80000000
                  addi         a3, s3, -5
                  nop
                  addi         a4, a7, 1802
                  addi         tp, s8, -581
                  nop
                  lui          a7, 882907
                  add          s2, a4, tp
                  lui          s8, 741161
                  add          s8, s0, s0
                  sub          t1, s8, s7
                  nop
                  auipc        s3, 139436
                  sub          s2, s3, s2
                  lui          s3, 653826
                  sub          s8, t1, t1
                  sub          s2, a4, s2
                  lui          tp, 232788
                  auipc        tp, 787584
                  auipc        tp, 420912
                  addi         a4, tp, -690
                  add          s0, a7, s2
                  nop
                  lui          s3, 50510
                  add          s0, a3, s2
                  lui          s8, 637746
                  auipc        s7, 34440
                  nop
                  nop
                  auipc        a7, 414139
                  addi         s0, s2, -143 #end riscv_int_numeric_corner_stream_13
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           ra, 0x80000000
                  li           s4, 0xffffffff
                  li           t0, 0x28a30267
                  li           a5, 0x80000000
                  li           t2, 0xdf58621e
                  li           a7, 0x80000000
                  li           a4, 0x80000000
                  li           a3, 0xc8c926d7
                  li           t6, 0x0
                  sub          ra, a4, a6
                  add          t2, ra, a6
                  nop
                  sub          a4, ra, s4
                  lui          s4, 74890
                  addi         a6, t0, 2040
                  nop
                  addi         a7, t0, 2018
                  lui          t0, 377316
                  nop
                  sub          s4, a5, t2
                  nop
                  auipc        a7, 513891
                  nop
                  lui          t0, 281402
                  nop #end riscv_int_numeric_corner_stream_6
                  li           s0, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           t0, 0x80000000
                  li           a6, 0x89a9ff12
                  li           sp, 0x14d383d0
                  li           a2, 0xffffffff
                  li           s2, 0x0
                  li           s7, 0x80000000
                  li           s5, 0x80000000
                  li           a4, 0x0
                  li           t2, 0x80000000
                  sub          a2, t2, s0
                  lui          sp, 259684
                  auipc        a6, 749014
                  nop
                  add          s0, t0, t2
                  add          t0, s7, t2
                  auipc        s5, 398724
                  auipc        s7, 649991
                  addi         sp, s2, -593
                  lui          s5, 461168
                  addi         s2, s7, 644
                  sub          s2, s7, sp
                  addi         s5, a2, -1140
                  add          sp, s7, s5
                  add          a2, s7, a4
                  nop
                  nop
                  lui          s5, 908612
                  nop
                  lui          a4, 40980
                  addi         sp, a4, 264
                  nop
                  auipc        t0, 947390
                  sub          t0, a6, s2
                  add          t0, a2, sp
                  lui          t0, 441838 #end riscv_int_numeric_corner_stream_16
                  li           s6, 0x60c24941 #start riscv_int_numeric_corner_stream_14
                  li           t2, 0x0
                  li           s8, 0x80000000
                  li           t3, 0x0
                  li           a5, 0x0
                  li           s11, 0xffffffff
                  li           sp, 0xb75e14c0
                  li           s5, 0x0
                  li           a1, 0x0
                  li           tp, 0xe57271fb
                  auipc        tp, 354241
                  add          a1, s6, t3
                  lui          sp, 330475
                  sub          s8, t2, s11
                  addi         sp, s11, -384
                  nop
                  nop
                  lui          t3, 896184
                  lui          s6, 730509
                  addi         t3, a5, 1114
                  nop
                  nop
                  add          s6, a1, tp
                  lui          a1, 222280
                  auipc        s8, 249898
                  add          s6, s11, t3
                  lui          t2, 552630
                  nop
                  sub          a1, s8, t3
                  lui          t3, 402434
                  lui          sp, 456342
                  nop
                  auipc        sp, 251828
                  nop #end riscv_int_numeric_corner_stream_14
                  srai         s2, t4, 17
                  sub          zero, s7, s2
                  sll          s8, s10, tp
                  addi         t6, zero, 1562
                  srai         s6, tp, 19
                  srai         sp, s0, 17
                  sub          s9, s0, gp
                  slti         t6, s9, -2011
                  add          sp, sp, s11
                  slli         t1, s2, 2
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           a3, 0x80000000
                  li           s2, 0xffffffff
                  li           s4, 0xe5878297
                  li           s0, 0xffffffff
                  li           a5, 0x0
                  li           a2, 0xffffffff
                  li           a1, 0xffffffff
                  li           s8, 0x0
                  li           t6, 0x0
                  auipc        a6, 519217
                  add          s0, a2, a3
                  auipc        s8, 959411
                  addi         a5, a3, -1716
                  lui          t6, 590275
                  lui          a5, 401510
                  auipc        a1, 413798
                  add          a5, t6, a3
                  addi         t6, a3, -2007
                  auipc        a2, 828772
                  add          s0, a5, t6
                  auipc        a3, 88970
                  nop
                  nop
                  lui          a5, 1037888
                  sub          a1, a1, a3
                  nop
                  auipc        s8, 76238
                  addi         s8, s0, -978
                  sub          a2, a5, a3
                  addi         s8, a5, -1758
                  addi         a5, a6, -1617
                  sub          s8, s4, a2
                  nop
                  lui          t6, 173021 #end riscv_int_numeric_corner_stream_2
                  slt          t2, s8, t1
                  sub          t3, t1, t6
                  srl          a6, t6, s10
                  sltu         sp, a2, s10
                  auipc        s3, 738054
                  ori          t2, gp, 549
                  sltiu        a2, t6, -1989
                  sll          s0, sp, s11
                  xori         s2, a4, 1236
                  auipc        s2, 971206
                  ori          tp, t0, -382
                  lui          t6, 767938
                  sltu         a3, a2, t1
                  sltiu        a0, tp, -1612
                  sll          a7, s11, a2
                  slli         t2, s2, 25
                  or           a5, t2, ra
                  and          s9, a7, s3
                  xor          a5, t2, t1
                  or           zero, a5, t0
                  srli         s11, s1, 4
                  andi         t2, s2, -353
                  sll          s7, s11, tp
                  xor          s3, s2, zero
                  sltiu        t3, s4, -1201
                  lui          a0, 595478
                  slt          a5, sp, a7
                  slt          s3, s0, a1
                  sub          s2, gp, a4
                  srl          s2, s1, gp
                  sll          s0, s4, s4
                  sra          a6, a5, s3
                  and          a6, a7, s4
                  xor          s6, s4, a3
                  srl          a0, t4, s5
                  or           s8, a3, t0
                  srai         s9, t2, 12
                  sub          ra, t4, zero
                  sll          s3, gp, t4
                  andi         tp, t2, 601
                  lui          a1, 993331
                  srl          s2, t6, tp
                  and          a2, s7, t5
                  slti         s8, a5, -1903
                  nop
                  sltu         t3, s6, zero
                  lui          a2, 202888
                  auipc        a5, 814374
                  srai         s8, a5, 10
                  xori         a2, a6, 1837
                  and          s5, sp, s10
                  nop
                  sltiu        a5, t6, 1220
                  sll          a5, a6, ra
                  add          a1, a1, s11
                  slli         s6, tp, 14
                  srli         s0, t3, 20
                  sll          a6, a4, t2
                  xori         a5, a6, 1393
                  xori         a6, a2, 659
                  addi         t0, a1, 1136
                  sll          s11, tp, s4
                  auipc        s5, 630904
                  sltiu        sp, zero, 929
                  sltu         sp, a0, sp
                  slti         s11, s9, -194
                  xor          t5, a7, t1
                  sub          t3, a6, a2
                  slt          sp, sp, t3
                  slt          t5, t6, ra
                  srai         s7, t4, 28
                  auipc        a6, 947733
                  xor          t1, tp, a5
                  srli         s6, a5, 29
                  addi         a7, t1, 227
                  lui          t3, 429332
                  ori          s9, s0, 1552
                  addi         s7, sp, 998
                  slti         s6, t6, -815
                  slt          sp, s11, a7
                  andi         t1, t0, 1002
                  or           a6, s9, s0
                  addi         ra, s11, 1796
                  xori         a2, s7, 1548
                  addi         t5, s9, 1837
                  lui          t1, 356266
                  slti         a5, t2, 91
                  xor          s4, a3, ra
                  sltiu        a0, s8, 732
                  sltiu        t5, s11, 1887
                  srai         a3, t3, 30
                  nop
                  slli         a6, s9, 4
                  sltiu        s3, t5, -1752
                  lui          t0, 178195
                  sltu         ra, t2, s4
                  andi         a3, t3, 1866
                  srli         t6, s4, 12
                  lui          tp, 162523
                  auipc        a2, 939219
                  lui          a2, 481178
                  srli         sp, a1, 1
                  xor          t6, t2, s9
                  sub          s4, t3, zero
                  xor          zero, t2, a6
                  ori          t6, a6, -269
                  sltu         t1, s5, s9
                  auipc        s8, 960214
                  addi         gp, s3, 1190
                  sub          a7, s11, s2
                  auipc        s9, 890397
                  sltu         t3, a3, s2
                  slt          t6, s2, s11
                  and          tp, t1, a1
                  sltu         s0, t5, s11
                  xor          a0, t0, a5
                  sub          t5, s5, a3
                  slt          zero, s10, s1
                  srl          s0, a6, s7
                  lui          t2, 942839
                  xor          s3, s0, t6
                  slt          a5, a6, s11
                  nop
                  slli         s3, tp, 23
                  xori         t5, a5, -597
                  or           zero, a2, a0
                  srli         t2, gp, 23
                  lui          tp, 309737
                  slti         s0, sp, -457
                  andi         s8, a3, -958
                  nop
                  andi         s11, ra, -1139
                  sltiu        a4, s5, 1819
                  srai         a4, s4, 0
                  and          s9, s3, t5
                  srli         gp, s0, 4
                  srli         a5, s6, 28
                  nop
                  xor          a3, s3, s0
                  sltiu        tp, t3, 273
                  ori          a0, a5, -667
                  sltiu        tp, a4, 1582
                  andi         s9, s8, -777
                  sltu         s4, zero, s7
                  ori          t0, a7, -1546
                  xori         gp, a5, -1663
                  auipc        a3, 627694
                  sra          s4, tp, t1
                  sltu         tp, s5, a6
                  auipc        ra, 793223
                  srl          t6, a1, t2
                  xori         t1, s10, 477
                  srai         t3, tp, 23
                  sltu         a4, s8, a4
                  addi         s8, sp, -1731
                  srli         a7, a0, 28
                  auipc        sp, 624492
                  slti         t0, ra, 336
                  xor          a1, s9, a6
                  srl          s9, s3, a3
                  srl          s11, tp, a0
                  sra          a6, s4, t0
                  srli         gp, t3, 18
                  and          s11, a3, a3
                  sll          t0, s2, a5
                  auipc        t0, 467501
                  andi         tp, ra, -727
                  sll          zero, s5, s11
                  or           s5, a2, t3
                  sltiu        sp, s10, 1853
                  add          t0, a6, s2
                  srl          s5, gp, t0
                  nop
                  lui          t6, 944681
                  and          a0, t6, t4
                  and          tp, s2, t1
                  sll          a7, a2, s2
                  andi         t2, s1, -1896
                  slli         a2, t6, 1
                  sra          a7, sp, a7
                  sub          a2, ra, a5
                  slti         s5, ra, 406
                  addi         t2, a6, 1027
                  and          t5, s2, t2
                  srl          s7, s3, s11
                  slt          t3, s7, a4
                  sltu         sp, s0, s2
                  auipc        s5, 243978
                  sltu         a7, s0, a7
                  and          t6, s6, a1
                  sltu         ra, t0, s4
                  xor          ra, t0, ra
                  sltu         tp, s7, s7
                  srai         zero, sp, 24
                  xori         s0, t6, -36
                  ori          s4, a0, -1961
                  sub          t6, a6, a4
                  sltu         tp, s9, sp
                  sltiu        s8, a2, -267
                  auipc        a5, 237917
                  srai         a0, a2, 21
                  andi         a0, a5, 1641
                  sub          s7, s4, a7
                  slti         s8, a3, 873
                  sra          t5, t6, s8
                  slt          a6, a2, a5
                  xor          t1, t5, a2
                  nop
                  and          a2, s6, s1
                  sll          a6, s0, s6
                  srai         t6, s3, 1
                  addi         t6, gp, 1755
                  sll          s3, t5, s1
                  xor          gp, s4, s9
                  xori         t5, s11, 122
                  add          tp, s1, s6
                  srl          a7, s6, s9
                  sltiu        a2, t5, 649
                  xori         s6, sp, -1776
                  slli         s5, a7, 3
                  addi         t0, t3, 650
                  slli         s3, t0, 28
                  lui          s5, 711653
                  slti         s6, s1, -1842
                  xor          s9, ra, s3
                  sll          a4, t2, s5
                  nop
                  sra          a2, s1, t3
                  slti         t5, s11, 681
                  sltiu        a2, s2, 1004
                  and          s6, s6, a3
                  sltiu        sp, a1, 435
                  slli         a6, s4, 29
                  ori          sp, ra, -708
                  ori          a7, s1, -626
                  lui          s3, 148567
                  addi         ra, s10, 311
                  sltiu        ra, t4, -1980
                  auipc        s5, 760725
                  add          s6, t3, t3
                  sltu         t0, a7, sp
                  andi         s9, s8, 1417
                  slti         a2, gp, 1325
                  or           s3, sp, ra
                  sub          s6, s3, t4
                  addi         a6, t6, 1426
                  sra          s9, a5, s0
                  ori          ra, t4, -1164
                  srl          a3, s5, s11
                  srli         s5, s0, 18
                  add          s2, s7, s0
                  nop
                  sltiu        s5, s8, -54
                  or           s0, a5, t5
                  sub          zero, s7, a2
                  xori         a5, a6, -814
                  add          t0, zero, a7
                  slt          a7, a7, gp
                  slt          sp, t1, t4
                  srl          s5, s6, a3
                  sll          t2, s7, a3
                  srli         t0, s2, 9
                  lui          s4, 241310
                  slti         tp, s1, 2014
                  andi         ra, a0, 1766
                  srl          ra, t6, t5
                  add          s3, s2, a6
                  slti         s0, a4, -1263
                  sltu         s5, t2, zero
                  slti         sp, tp, -815
                  lui          sp, 951571
                  sll          gp, zero, t4
                  and          s4, t5, a6
                  add          s8, a7, t5
                  sltu         t2, s8, s2
                  xor          a0, t4, s4
                  nop
                  slli         zero, ra, 7
                  sltu         s6, t6, t0
                  slli         t6, a7, 23
                  slt          s5, s0, s3
                  slti         tp, s9, -436
                  srli         a3, s6, 20
                  andi         s9, s6, 315
                  auipc        t6, 353359
                  ori          a6, a6, 779
                  sub          t5, t0, a2
                  sra          t1, s0, a6
                  and          a0, s8, s3
                  xori         a2, gp, 1595
                  addi         s5, a4, 1231
                  srli         s6, s4, 6
                  sub          zero, t4, t4
                  sltiu        a4, a0, -1342
                  sltiu        t0, t2, 682
                  addi         s4, s1, -696
                  sltiu        t1, a7, -1297
                  add          tp, tp, s7
                  sub          s11, s10, a7
                  lui          a5, 861610
                  srli         s6, t6, 14
                  ori          a7, tp, 554
                  nop
                  addi         sp, s10, -624
                  or           t1, ra, a5
                  srli         t0, t1, 11
                  nop
                  srai         t0, sp, 26
                  sra          s5, s1, tp
                  auipc        s2, 275447
                  addi         sp, gp, -203
                  slti         s9, gp, 224
                  srl          a3, s6, s3
                  sra          a3, zero, t1
                  slt          a7, s10, s8
                  lui          t5, 804272
                  sltiu        a0, a0, -1654
                  slti         ra, s0, -312
                  nop
                  and          s8, s10, s9
                  lui          zero, 631497
                  lui          s11, 208059
                  addi         s8, s4, -1881
                  slt          ra, s9, t0
                  xori         t6, a6, 1421
                  and          a1, s0, tp
                  lui          s9, 463551
                  nop
                  slli         s7, t2, 27
                  sub          a4, s2, s10
                  srai         tp, t0, 25
                  xori         s8, s7, 204
                  srl          s0, a0, s6
                  sll          s7, a6, zero
                  srl          s6, a6, t1
                  addi         a6, a7, -761
                  xor          a1, a1, a0
                  andi         a2, s1, -83
                  sll          a4, t5, a4
                  slt          ra, s2, s0
                  srli         s11, s1, 21
                  xor          s6, s11, ra
                  xori         t0, s5, -238
                  lui          a4, 921328
                  sltu         s9, s2, s0
                  sltiu        tp, a6, 1954
                  nop
                  sll          s3, t2, a5
                  slt          sp, a4, s4
                  lui          a7, 402088
                  addi         a4, a4, -117
                  sub          t2, t5, a5
                  sltu         s8, gp, t1
                  srl          a7, t2, t3
                  xori         a4, t0, 326
                  srl          a6, a7, a4
                  sra          s3, zero, t2
                  or           s9, a2, s1
                  xor          t2, a6, s6
                  slli         s7, a1, 21
                  lui          s2, 397050
                  add          ra, zero, s5
                  add          s0, s3, a0
                  sll          a6, s7, t0
                  add          s7, s5, a7
                  slt          a2, sp, a2
                  sll          s4, tp, t0
                  srli         s8, s7, 5
                  sra          a6, zero, t0
                  lui          s3, 194224
                  nop
                  srai         s0, tp, 31
                  sltiu        s3, t3, -932
                  slli         s4, gp, 23
                  srl          s4, s3, s6
                  srli         s9, s11, 2
                  lui          t5, 329161
                  srl          s0, t0, s10
                  srli         t3, sp, 30
                  sub          t0, s9, s10
                  xori         s8, tp, 159
                  srai         t2, zero, 2
                  auipc        tp, 828385
                  slti         s7, zero, -420
                  nop
                  sltu         a4, s0, tp
                  or           a0, gp, ra
                  srai         t2, a2, 25
                  slli         tp, a2, 23
                  srli         a0, s9, 31
                  srai         t5, a5, 10
                  and          a2, ra, gp
                  srai         gp, sp, 20
                  sltiu        s9, sp, 130
                  sltu         t2, t1, s10
                  xor          t0, a5, s1
                  srli         a6, s8, 7
                  sll          t5, s2, tp
                  sltiu        s2, t3, 1156
                  slt          t6, s4, a4
                  sltiu        ra, ra, 1791
                  sra          a7, a7, s2
                  andi         s7, t1, 1017
                  ori          s6, tp, 1398
                  sltu         a3, a3, a4
                  slti         sp, s2, 826
                  sub          s3, t0, t2
                  srl          s11, s9, t2
                  sra          s7, s8, s10
                  srl          zero, s4, s4
                  auipc        a0, 775141
                  ori          a0, t2, 786
                  sltiu        s9, zero, -1854
                  sltiu        s11, s7, 1428
                  sll          s4, s4, s9
                  add          tp, s0, tp
                  sra          a2, t6, gp
                  sltu         s6, a2, s7
                  addi         a0, t3, 2004
                  sltu         s5, s8, a3
                  sra          a5, a1, a1
                  nop
                  auipc        a0, 755913
                  sltu         ra, s1, a5
                  auipc        t5, 958464
                  sll          t6, t3, s6
                  addi         a1, t3, -1774
                  or           s8, tp, gp
                  sub          a0, t1, zero
                  sltu         t0, sp, s11
                  xori         s5, s3, 164
                  nop
                  slt          t2, a3, t4
                  sll          a5, s0, a1
                  slt          s0, s0, a2
                  sub          s9, tp, s11
                  xori         s0, s5, 1842
                  andi         t5, a0, 667
                  srli         s7, zero, 25
                  and          a2, s4, a7
                  auipc        t6, 368387
                  srl          s7, t5, a1
                  and          s7, s2, s2
                  andi         s8, a4, -242
                  srli         s8, a2, 0
                  andi         s5, a2, -420
                  srl          t2, t2, s10
                  add          a3, a0, s3
                  xor          t1, s5, ra
                  xor          t2, gp, s0
                  sltu         s9, t5, t1
                  or           t6, t5, a4
                  ori          tp, s10, 1767
                  slt          a3, a5, s0
                  add          t2, s11, s11
                  slli         a1, s8, 24
                  ori          a5, s2, 937
                  xor          s0, a5, s0
                  srai         t0, sp, 27
                  ori          s2, s7, 1122
                  and          a5, a6, a6
                  andi         t5, a5, 1299
                  or           a6, a0, t4
                  sub          s8, a6, s1
                  nop
                  xor          s4, a3, s6
                  or           sp, zero, s1
                  slt          a3, s11, s4
                  xor          s5, t6, a1
                  andi         t5, t1, -411
                  sub          t3, t2, a6
                  sra          s9, t4, t0
                  ori          ra, s3, -1599
                  xor          a7, sp, a4
                  or           s0, a7, sp
                  sltu         s5, gp, s9
                  nop
                  ori          s2, tp, 1738
                  sra          a6, a1, s11
                  srl          a4, a1, t1
                  nop
                  nop
                  sra          a0, a5, s10
                  sub          t3, a1, ra
                  andi         s6, t0, -1138
                  nop
                  slt          s9, s4, a3
                  srl          s6, ra, t2
                  srai         a2, tp, 16
                  xori         s2, tp, 112
                  sltu         t5, tp, a7
                  nop
                  sra          t0, a4, s1
                  or           t0, s8, a0
                  slli         s9, s0, 21
                  xori         t3, s8, -1863
                  nop
                  sll          s8, a7, t5
                  and          a0, t2, a2
                  srai         a6, t2, 31
                  addi         t3, t0, -445
                  sltu         ra, tp, a5
                  lui          sp, 150403
                  xori         s11, s6, 100
                  sra          zero, sp, s2
                  addi         s0, ra, 687
                  srli         a7, a2, 2
                  sub          a2, t6, s1
                  nop
                  lui          s11, 964264
                  slt          s3, s11, a2
                  srai         s5, gp, 18
                  srli         t6, s7, 15
                  nop
                  andi         tp, a6, -371
                  sll          zero, a3, a6
                  and          a3, s6, a2
                  sra          s4, t2, t5
                  srl          tp, a2, s5
                  sll          a5, zero, a2
                  slli         a1, s4, 19
                  addi         s5, s8, -634
                  sltiu        s5, zero, 1321
                  slli         a3, s11, 29
                  ori          a6, a4, 1362
                  srli         s4, a2, 0
                  sub          a6, sp, s3
                  addi         s9, gp, 1495
                  sra          gp, s8, a6
                  srai         a1, t2, 13
                  andi         t2, s3, 896
                  sltiu        a7, sp, -1840
                  sub          ra, a0, a0
                  auipc        a3, 646253
                  srl          s3, zero, t4
                  sltu         a4, s0, s4
                  auipc        a7, 116472
                  sll          a0, a3, sp
                  ori          a4, s9, -577
                  srli         s8, t2, 9
                  srl          a2, t2, t4
                  ori          t3, a7, -1284
                  slt          a7, a6, sp
                  addi         s11, a7, -736
                  xor          zero, s2, s3
                  add          a5, s8, s8
                  add          t3, t3, t5
                  slli         s4, a2, 20
                  xor          s9, s2, s8
                  xori         a0, sp, 808
                  sra          s8, t4, a4
                  sub          t6, s0, s6
                  srl          tp, a3, s5
                  sltu         s11, a3, a1
                  srl          t6, t6, s0
                  or           s8, s3, s0
                  srai         t5, t0, 7
                  nop
                  srai         a5, s10, 30
                  andi         a1, gp, -1346
                  sltu         a1, a4, s6
                  sll          t6, s5, s2
                  add          a7, a3, a7
                  lui          ra, 401745
                  addi         t1, sp, -420
                  or           a0, s11, zero
                  srli         a6, a0, 22
                  addi         a0, s0, -350
                  slli         t3, t5, 23
                  srl          s0, s0, s4
                  sltu         s9, t3, a6
                  and          t6, s7, t5
                  slti         t1, a1, 1017
                  or           a3, s5, s8
                  nop
                  ori          s11, s7, -1591
                  sltu         t0, s9, zero
                  and          sp, a2, t0
                  xori         gp, s5, -221
                  addi         a5, s4, 1323
                  xor          a6, tp, zero
                  sll          s3, s5, a1
                  srl          a1, s6, s11
                  andi         tp, t5, 944
                  andi         a6, t1, -1966
                  andi         a7, t2, 2038
                  slti         s7, t2, -1738
                  xori         s3, s7, 402
                  xor          a1, s1, s7
                  ori          t5, a3, 874
                  auipc        s7, 152017
                  slt          gp, a0, a3
                  lui          s7, 635525
                  nop
                  or           t5, a4, s3
                  slli         gp, s2, 13
                  xor          a7, t4, a6
                  addi         a5, a2, -1720
                  and          s8, t4, s5
                  and          a3, a2, s2
                  sltu         a2, tp, a1
                  sub          a4, a0, t2
                  slt          a0, a3, s6
                  ori          t5, gp, 607
                  sltiu        s6, s6, 1654
                  and          tp, a6, t6
                  sltiu        t2, s0, 1166
                  add          s0, a1, t0
                  and          s9, s10, a7
                  xori         a0, gp, -154
                  lui          t0, 585649
                  srl          s4, t5, a1
                  srli         s11, s2, 18
                  nop
                  sra          t5, s5, ra
                  sltiu        t5, s4, -342
                  addi         s9, t0, 557
                  srai         a0, gp, 14
                  sra          tp, s3, tp
                  add          a5, s1, a3
                  sll          sp, a3, s9
                  sra          s3, a6, s7
                  xor          s6, s11, a4
                  sub          s2, s0, a7
                  add          s9, s4, a1
                  sub          s9, s10, a5
                  ori          a0, ra, 1898
                  srl          gp, s11, t4
                  sltu         a3, a6, s4
                  sll          t2, zero, s1
                  srl          s3, a3, a1
                  sltu         t5, a7, s0
                  ori          a2, s4, -1817
                  srli         s2, s8, 31
                  andi         a7, s0, -785
                  sub          t1, t6, t1
                  srli         t5, ra, 1
                  slt          s3, s5, a0
                  nop
                  slti         t5, a2, -163
                  slt          a0, s9, a0
                  auipc        s6, 960192
                  and          t1, s9, ra
                  srai         ra, s9, 22
                  xor          a4, a3, a5
                  and          gp, s11, s4
                  nop
                  xor          a6, s0, s4
                  srli         sp, a1, 26
                  or           gp, a0, t5
                  and          t5, a1, a1
                  sll          s4, tp, sp
                  sll          s2, s5, s0
                  or           s6, tp, s3
                  sltu         a4, a4, t6
                  nop
                  slt          t1, tp, a7
                  srai         s2, a6, 14
                  add          t6, s7, t5
                  nop
                  srli         a5, t6, 7
                  xor          t6, a0, s10
                  auipc        t5, 661953
                  lui          t6, 500117
                  sra          t2, gp, a1
                  addi         s2, a2, 381
                  nop
                  xor          t5, t6, t4
                  sra          t2, s3, zero
                  sll          a0, a7, s10
                  addi         a3, s4, -1089
                  slti         a1, s7, -1888
                  nop
                  sltu         gp, s7, tp
                  sltiu        t5, a1, 1132
                  add          a7, s5, s7
                  auipc        s7, 675651
                  xori         t6, t5, 1580
                  ori          s8, t5, -1602
                  andi         t5, a2, -862
                  nop
                  sltiu        a0, t3, -646
                  and          a5, t1, a4
                  sub          t0, t6, a5
                  add          s8, s5, s2
                  sltu         s0, s0, ra
                  srli         a2, a5, 3
                  sll          ra, tp, a6
                  sltiu        t1, gp, -307
                  or           a1, s8, t1
                  slti         s5, a7, 671
                  xor          a7, s1, a3
                  xor          s9, s2, s10
                  slt          t5, t1, s10
                  nop
                  sra          a7, s9, t1
                  sltu         a0, t6, s11
                  sll          a0, s7, gp
                  or           s5, a1, s1
                  auipc        s11, 280418
                  sra          s8, zero, t6
                  lui          s3, 621965
                  slli         tp, a0, 24
                  nop
                  addi         a3, s0, -1085
                  add          s3, ra, s2
                  sltiu        s8, a4, 1133
                  sltu         t3, s0, zero
                  and          ra, s7, a2
                  slli         a4, t3, 31
                  andi         a7, a6, -1920
                  sltu         a7, a4, s6
                  slt          s3, s0, s5
                  slti         a3, a7, 1754
                  xor          s3, t3, t4
                  or           a7, a7, t5
                  sub          a2, t1, zero
                  addi         s8, t2, -1506
                  slt          t6, a5, s1
                  nop
                  add          s6, tp, s1
                  srli         s4, t6, 28
                  sub          zero, t3, a3
                  sltiu        s11, s2, -697
                  nop
                  and          s5, a1, s0
                  lui          s11, 687065
                  srai         a1, s4, 16
                  srl          t3, a6, sp
                  add          t5, sp, s8
                  sub          s7, s8, a5
                  slli         s2, s5, 14
                  sltu         tp, a7, s3
                  ori          a2, a3, -631
                  ori          s7, gp, 1877
                  ori          s3, a4, 1877
                  sltu         s2, s1, t4
                  slli         t6, t2, 7
                  ori          a3, t1, 341
                  ori          a1, s4, -137
                  sltiu        s9, a7, -1966
                  srl          s11, a0, sp
                  xori         t0, zero, 1217
                  srl          a2, a3, s8
                  srai         t3, a6, 15
                  slli         t1, a3, 31
                  nop
                  or           ra, zero, s11
                  andi         sp, s6, -151
                  sub          s9, s10, s1
                  slli         a3, s4, 17
                  xori         a6, gp, -1693
                  addi         t6, s10, 804
                  slt          t6, s1, a4
                  andi         a7, t4, 306
                  xor          s0, sp, a2
                  srai         t0, s8, 19
                  addi         t5, s9, -1302
                  srl          a6, a5, s6
                  xor          s7, a2, a6
                  addi         zero, a4, 1298
                  nop
                  sltu         s5, a4, a3
                  andi         s3, s3, 692
                  lui          tp, 951193
                  and          a3, s8, t1
                  andi         s6, t1, 559
                  srli         a2, s9, 14
                  auipc        a1, 66855
                  auipc        s5, 334522
                  ori          a2, s11, 1683
                  nop
                  xor          gp, a3, t1
                  xori         s7, sp, 74
                  xor          a7, s9, a4
                  nop
                  sub          s9, gp, a3
                  slti         s2, t6, 673
                  slt          s8, s4, s6
                  srai         s5, s7, 14
                  slli         a5, s6, 29
                  ori          s7, a7, -1624
                  sltu         a6, t1, s1
                  sra          a1, a3, s10
                  slli         a7, t1, 1
                  srli         sp, s2, 17
                  sltu         a1, a0, t3
                  ori          ra, s9, -598
                  sub          a5, a7, s8
                  slli         s5, t3, 12
                  add          sp, s4, t5
                  add          s3, t6, a3
                  sub          t1, zero, tp
                  and          gp, tp, a1
                  slli         s11, gp, 3
                  srai         a2, t4, 25
                  xori         s6, s11, -1149
                  add          a2, a5, a3
                  addi         s0, a1, -441
                  srai         a4, s6, 10
                  sll          ra, s1, s10
                  nop
                  srai         ra, a7, 5
                  addi         s9, s5, 1200
                  srli         s4, t5, 23
                  or           t6, sp, t0
                  srai         t2, s1, 26
                  slti         s9, ra, 124
                  xor          t2, a0, a0
                  sll          a3, s0, a5
                  add          s2, s3, t6
                  xori         t1, zero, 1343
                  srai         t3, a3, 18
                  add          a4, t1, a2
                  srai         ra, tp, 13
                  sll          sp, s7, s9
                  auipc        t5, 331701
                  sub          s8, sp, tp
                  sra          sp, t1, s0
                  xori         sp, s5, -550
                  add          ra, s10, s10
                  xori         s7, a3, -221
                  auipc        a5, 4388
                  sra          a7, s9, a1
                  add          gp, s11, a1
                  xor          s0, s9, tp
                  srai         s0, s5, 19
                  srl          s6, s0, a2
                  auipc        a2, 1000840
                  sub          s4, s10, a0
                  or           t3, s8, s3
                  and          s3, t2, t3
                  sra          a7, t4, tp
                  andi         s7, s11, -750
                  slli         t3, s7, 7
                  srai         a7, s0, 30
                  sltu         s9, a5, zero
                  slti         s7, t3, -398
                  add          t0, s6, t5
                  andi         a2, t4, 2034
                  addi         s6, a2, 53
                  sub          a2, sp, t2
                  nop
                  sltiu        a5, a7, 356
                  xor          t6, t6, s9
                  sltu         s5, a3, s6
                  slti         s4, a1, 1011
                  sltu         t6, a5, a2
                  slti         t0, zero, 481
                  or           s7, s2, a3
                  srai         t3, s0, 14
                  sltiu        s4, a5, -1982
                  slli         s5, t5, 24
                  srl          t5, s10, t1
                  slt          ra, t5, s11
                  lui          a7, 631216
                  sll          t6, a0, t2
                  andi         t3, a1, -1050
                  sub          a1, t3, s1
                  li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           ra, 0x0
                  li           sp, 0x0
                  li           s7, 0x0
                  li           s3, 0x3e9a8b60
                  li           t0, 0x425be1f0
                  li           a6, 0x0
                  li           s9, 0x60534d3c
                  li           s0, 0x80000000
                  li           s11, 0x40a426c1
                  auipc        sp, 387880
                  auipc        s7, 952224
                  add          a6, sp, s3
                  addi         s3, s3, 1366
                  sub          t0, s7, sp
                  nop
                  lui          s0, 764710
                  lui          ra, 734577
                  lui          t0, 507222
                  nop
                  add          s0, a6, a6
                  auipc        s7, 687874
                  lui          s11, 588265
                  auipc        s11, 69482
                  sub          a6, s9, t0
                  sub          s3, t0, s0 #end riscv_int_numeric_corner_stream_5
                  slli         a5, a0, 26
                  sltiu        t1, s7, 2017
                  or           a3, t0, a0
                  auipc        a3, 973947
                  sll          s9, s8, t4
                  slli         s11, t3, 16
                  slti         s2, t6, -799
                  lui          s2, 579289
                  slt          t0, tp, a6
                  sra          gp, t6, t2
                  sltu         t0, s0, t6
                  sltiu        gp, zero, 1043
                  nop
                  sra          sp, s11, a5
                  sra          sp, s8, a5
                  sltu         a5, t4, a0
                  sub          s3, t4, s1
                  andi         a3, s2, 339
                  or           s9, s10, zero
                  lui          s9, 1033065
                  add          gp, s8, t0
                  slti         s7, t0, 40
                  sll          zero, ra, s5
                  srai         s8, gp, 31
                  add          t3, a5, a1
                  slli         t2, s5, 27
                  srli         s11, s9, 7
                  slti         s6, zero, 392
                  and          s5, s7, zero
                  andi         t3, s5, 452
                  or           gp, s6, s6
                  sltiu        t5, s8, -2014
                  slti         gp, s1, -1886
                  ori          a3, s8, -1883
                  slli         s8, s10, 19
                  srai         a1, t1, 12
                  xor          a2, a6, zero
                  sll          a7, sp, s11
                  ori          ra, t5, 804
                  srai         t2, t1, 30
                  auipc        t0, 756798
                  xori         ra, sp, -1317
                  srai         zero, t0, 10
                  xori         a5, s3, -1789
                  addi         t5, a0, 56
                  srli         t2, a6, 10
                  and          s7, s4, s11
                  slt          zero, s3, zero
                  nop
                  sltu         t0, t0, t0
                  xor          a0, sp, s10
                  add          s9, gp, sp
                  sltu         s6, t0, a7
                  sub          a3, s5, a6
                  nop
                  nop
                  xor          a3, gp, a1
                  addi         a7, s2, -1151
                  xori         s6, s1, -1400
                  or           a5, s6, t3
                  sub          a5, t0, t4
                  sub          a3, s2, a0
                  nop
                  andi         s2, a6, -1886
                  srai         a2, a1, 14
                  addi         t0, t4, 1191
                  sra          sp, s10, a5
                  add          a6, ra, s4
                  addi         s3, s10, 1515
                  nop
                  xor          s11, a7, t2
                  srai         gp, s8, 30
                  srai         t0, s6, 23
                  slli         s7, s0, 25
                  and          tp, t5, zero
                  auipc        a0, 992575
                  xori         s3, t1, 999
                  addi         s11, gp, 133
                  auipc        s3, 374371
                  xori         s2, tp, 41
                  addi         t6, a1, 698
                  slt          s4, s6, s4
                  addi         a1, t1, 1573
                  and          t3, t1, a5
                  sra          t0, t4, ra
                  nop
                  nop
                  srl          a0, s5, a3
                  srai         s7, t3, 23
                  srli         a3, t6, 30
                  sll          a2, a5, s6
                  sra          s7, a1, sp
                  auipc        a6, 907059
                  slli         a3, gp, 10
                  sltu         t1, t3, a7
                  andi         sp, t5, 1182
                  sltu         s3, s3, a6
                  slt          s8, s8, a2
                  xori         a3, a0, 993
                  xori         s5, gp, 303
                  slt          sp, zero, t2
                  sltu         gp, a0, s5
                  slti         zero, gp, 648
                  slti         s7, t2, 438
                  xori         s2, s5, -1917
                  addi         s8, t0, 1448
                  and          t3, gp, s0
                  xori         zero, s0, -292
                  srai         a0, a0, 7
                  addi         a3, s0, -1391
                  sltu         s3, s5, s1
                  slli         ra, sp, 18
                  andi         zero, ra, 1886
                  and          a5, zero, gp
                  slti         s7, t0, -1789
                  sltu         a6, s7, t0
                  slli         s7, t0, 29
                  andi         t1, s7, 1267
                  sub          t1, ra, ra
                  sub          t0, s2, a2
                  sra          sp, t0, ra
                  slli         a0, a4, 11
                  and          sp, t1, a4
                  auipc        zero, 425559
                  andi         s11, a6, 1969
                  sra          s0, ra, t5
                  slli         a3, s3, 9
                  srli         zero, s1, 0
                  sra          t1, s0, s4
                  auipc        t6, 635790
                  lui          ra, 383393
                  addi         ra, s11, 837
                  sltiu        s2, t4, 1877
                  srl          a4, s4, a2
                  slli         zero, s9, 3
                  or           t0, s8, s3
                  sra          t0, gp, sp
                  sub          s2, s4, sp
                  or           a6, s9, a5
                  slli         s0, t4, 8
                  sltiu        t2, t5, -899
                  slli         s4, a5, 0
                  addi         t5, t1, 1220
                  sub          t5, zero, t1
                  sll          t5, gp, t2
                  slti         ra, a6, -81
                  srl          sp, s0, s10
                  slt          s4, s9, a2
                  sltu         s5, a2, s3
                  ori          a7, t1, -664
                  xori         t5, s0, 337
                  lui          s9, 815217
                  srai         a1, s0, 1
                  slt          ra, sp, s10
                  slli         a0, sp, 20
                  slli         t0, s3, 2
                  sra          a0, tp, s3
                  auipc        t0, 88256
                  add          a5, s0, a5
                  addi         a3, a3, 215
                  xori         t3, s4, 1071
                  xor          t0, a6, zero
                  sltiu        s11, t3, -1433
                  or           t3, t5, s4
                  nop
                  xor          a5, tp, gp
                  addi         s6, a6, 498
                  ori          tp, s0, 7
                  slt          a5, t0, a2
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           s6, 0xf77e3818
                  li           gp, 0x0
                  li           t2, 0x1958db41
                  li           a4, 0xffffffff
                  li           a5, 0x9b9196bb
                  li           s5, 0xffffffff
                  li           t0, 0xffffffff
                  li           tp, 0x80000000
                  li           a2, 0x0
                  add          t0, a5, a2
                  auipc        s6, 427379
                  addi         gp, t0, -1238
                  auipc        t0, 417150
                  auipc        s6, 482306
                  addi         s6, a4, 1587
                  lui          s5, 904648
                  nop
                  sub          gp, tp, gp
                  sub          a5, a5, t0
                  add          ra, t0, t2
                  nop
                  sub          a2, a5, s6
                  lui          ra, 932752
                  lui          ra, 318334
                  lui          s6, 1005371
                  auipc        t2, 1030470
                  sub          a2, t2, tp
                  lui          s5, 221751
                  nop
                  sub          s6, s6, a4
                  add          a2, tp, s5
                  sub          s6, a2, t0
                  add          tp, s5, t2
                  auipc        s5, 570750
                  sub          a2, a5, gp
                  sub          t2, s6, tp #end riscv_int_numeric_corner_stream_0
                  sra          t5, t1, gp
                  lui          s2, 12078
                  lui          t1, 628979
                  sra          s7, sp, a3
                  sra          s11, a7, s0
                  sub          a1, s5, s0
                  or           a0, s5, a3
                  sltu         a0, t0, t4
                  add          s5, s2, s11
                  nop
                  srli         s4, t2, 12
                  nop
                  ori          t3, s3, 1658
                  xori         s8, a2, -419
                  srl          s9, tp, s4
                  ori          s5, t6, 335
                  ori          t1, a4, 902
                  addi         t5, t3, 1483
                  sll          s3, a3, s8
                  srli         s7, ra, 8
                  addi         a3, a4, 397
                  sltiu        t5, t6, -1318
                  auipc        s5, 478736
                  sub          ra, a2, a3
                  sll          a4, t2, a2
                  xor          t2, s3, s9
                  xor          ra, t5, sp
                  sll          t5, s1, t2
                  srl          a4, t2, t2
                  sub          s5, a6, t0
                  slt          sp, s1, t1
                  slti         a4, s9, -342
                  sra          s2, s2, a4
                  auipc        a4, 196815
                  srli         a2, a0, 3
                  slli         a3, s9, 7
                  auipc        a3, 1035075
                  ori          s6, a2, -1430
                  slli         a1, t3, 23
                  xori         a3, tp, 1608
                  srai         s5, s3, 23
                  sltiu        a5, s8, -1769
                  add          s2, s8, t2
                  andi         a1, t2, 1298
                  xori         s7, a7, -888
                  slti         a4, a3, -462
                  xori         s9, t0, -960
                  slt          s3, a1, a2
                  sltiu        t6, a0, 1511
                  and          a4, a4, a4
                  sltu         zero, a1, s8
                  srli         s9, s2, 3
                  addi         s5, a1, 2005
                  andi         ra, s3, 1432
                  sub          t6, s10, s6
                  sra          a4, zero, s4
                  xori         s5, s8, 1757
                  sub          s8, s4, a3
                  srl          gp, s4, a5
                  or           s9, s7, a1
                  sltiu        s6, sp, -1411
                  slt          a4, a0, sp
                  sltiu        a0, tp, 1744
                  lui          s0, 214974
                  srl          sp, a0, a0
                  addi         s9, s9, 854
                  xori         s0, s10, -1075
                  or           gp, s5, s3
                  slti         ra, s11, -461
                  srl          sp, s4, t3
                  auipc        t1, 362291
                  addi         zero, s10, 742
                  slli         t5, s1, 13
                  slt          s3, s4, s11
                  andi         t0, t5, 1037
                  ori          t3, a1, 501
                  and          s2, s6, t4
                  sra          a7, t1, a5
                  addi         a7, a4, 1211
                  slt          a1, zero, s0
                  or           s6, t2, s10
                  xori         a4, s11, 77
                  sub          s8, a2, a1
                  sltiu        s4, a0, -1776
                  srli         s3, s1, 30
                  slti         a3, a0, -994
                  and          s0, t3, s3
                  sll          t1, a0, gp
                  nop
                  add          s8, a3, t5
                  slti         t2, a6, -1480
                  slti         a7, a1, -1864
                  srl          zero, s2, t6
                  add          a2, t4, a5
                  sll          t2, t6, s7
                  sltu         t0, t0, a1
                  sll          s4, zero, a5
                  xor          zero, gp, s4
                  sll          s6, gp, s7
                  slli         a3, t0, 9
                  nop
                  xori         s9, t2, -693
                  xori         tp, t2, 595
                  add          a0, t0, a1
                  ori          s11, s6, 148
                  srl          s9, gp, s4
                  sltiu        t3, tp, 1964
                  and          a4, t5, a1
                  andi         s9, s4, 111
                  srai         s0, a6, 8
                  andi         a5, s8, -681
                  xori         t2, t2, 262
                  xori         t3, t1, 1241
                  andi         zero, t3, -1062
                  andi         gp, a3, -1443
                  slt          sp, a7, t3
                  sll          a3, a3, zero
                  slti         sp, t2, 97
                  add          zero, sp, a5
                  sub          ra, a1, s3
                  srli         s8, t5, 23
                  add          a2, s0, a5
                  nop
                  and          s9, sp, t1
                  xori         a7, s3, -357
                  lui          s9, 198102
                  andi         tp, s2, -1990
                  slti         a6, a6, 1914
                  slli         t3, s11, 10
                  add          a6, s1, a4
                  sltiu        s4, a5, -1445
                  nop
                  addi         s7, t1, -908
                  srli         ra, gp, 3
                  and          s2, a5, s9
                  addi         t0, gp, 1571
                  sltiu        t5, ra, -1476
                  add          a3, s1, s8
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           t2, 0xffffffff
                  li           s3, 0x80000000
                  li           tp, 0x80000000
                  li           t5, 0x80000000
                  li           t3, 0x4a344b0c
                  li           t6, 0x0
                  li           a6, 0xe409061a
                  li           s8, 0x80000000
                  li           a5, 0x0
                  nop
                  nop
                  sub          t5, s3, t3
                  lui          tp, 412748
                  lui          s8, 536990
                  lui          ra, 204100
                  nop
                  lui          t3, 705764
                  auipc        s8, 318805
                  auipc        t6, 846285
                  nop
                  auipc        s3, 205293
                  addi         tp, t3, 1297
                  add          s8, s3, s8
                  lui          s3, 672373
                  auipc        a6, 152801
                  nop
                  lui          ra, 667857
                  add          tp, t2, a5 #end riscv_int_numeric_corner_stream_11
                  srli         s5, a2, 4
                  or           a7, a4, a4
                  ori          s4, ra, 946
                  srai         s0, t3, 30
                  slti         t3, t3, 980
                  sltiu        t1, t5, -403
                  srl          a7, s9, a1
                  sra          s4, s10, s0
                  srl          s11, zero, t4
                  slti         t1, t1, -532
                  sltiu        a6, gp, 1805
                  xori         s0, a2, 1890
                  srai         t3, t1, 9
                  nop
                  srai         s4, sp, 28
                  sltu         a3, t5, s9
                  srli         s0, s6, 22
                  slti         a7, s3, 893
                  and          s5, t1, a1
                  srli         a7, tp, 3
                  srai         t1, a5, 24
                  add          s7, sp, t1
                  slli         a6, t0, 14
                  slti         a5, gp, -1967
                  xori         ra, t3, -2003
                  xor          s0, s7, s11
                  sra          t1, t1, s8
                  andi         t0, sp, -1508
                  andi         s4, s1, 176
                  xor          a3, t0, t0
                  addi         ra, a3, -1828
                  add          s8, zero, a4
                  andi         s5, s7, -1195
                  xori         s8, a0, 1271
                  ori          t3, a5, -710
                  sltu         t2, t4, sp
                  and          a6, t2, zero
                  lui          a5, 328856
                  sra          tp, t0, s7
                  add          s0, a1, tp
                  auipc        ra, 225347
                  addi         t5, s1, -1954
                  ori          a1, s9, 399
                  and          a3, t3, s2
                  addi         s3, a5, -1154
                  slt          s0, t4, a1
                  auipc        s8, 854789
                  lui          a4, 958184
                  xori         a0, sp, 1810
                  sll          sp, s10, s3
                  sll          s4, s7, s7
                  sra          s2, t5, a0
                  slt          a3, a7, s0
                  srai         t5, a7, 28
                  ori          s0, s1, -446
                  sll          s3, gp, zero
                  lui          t1, 379705
                  sltu         s3, s6, s4
                  nop
                  andi         a0, t1, -1459
                  sll          t0, s9, a6
                  or           gp, t1, a6
                  srl          a2, s5, s6
                  srl          s2, gp, a7
                  srli         t5, s3, 8
                  ori          sp, s6, 62
                  lui          s11, 797781
                  slt          t2, s8, a7
                  xori         s3, t4, 1788
                  slti         a7, s2, 425
                  sltiu        s5, a1, -175
                  sra          a4, gp, t0
                  auipc        ra, 102166
                  slti         s7, ra, 414
                  sub          a7, t6, ra
                  srl          t0, a2, s4
                  xori         t6, a5, -1341
                  add          s9, s2, a7
                  nop
                  xor          s4, zero, t1
                  sra          s11, s10, tp
                  sra          gp, a3, s9
                  auipc        a4, 739902
                  slt          s8, s5, s11
                  and          s5, s1, t5
                  addi         gp, t3, -1224
                  and          s8, t1, t3
                  add          s6, t3, ra
                  slli         t1, ra, 27
                  srl          a7, a0, a6
                  or           s0, ra, s3
                  sub          s7, s6, a2
                  sltiu        a7, s8, 68
                  or           a2, tp, a7
                  sub          gp, t5, t6
                  lui          a5, 755111
                  auipc        a2, 298969
                  addi         t3, a7, 1635
                  xori         a7, s5, 36
                  or           t5, s6, a4
                  sra          a7, s0, t3
                  srli         s5, s5, 17
                  and          a5, t6, s7
                  andi         a2, t0, -439
                  or           zero, t6, t0
                  srai         s2, s3, 22
                  ori          a0, s3, 339
                  xor          t2, s1, ra
                  or           a1, s10, a6
                  srli         a6, s0, 0
                  sltiu        s3, a1, 1410
                  slti         s6, t3, 1020
                  slti         t1, a3, -757
                  or           s3, s7, s0
                  auipc        a4, 932112
                  auipc        a4, 1037332
                  add          t1, t2, a4
                  sltiu        gp, a1, -829
                  sub          a4, a7, s5
                  srl          a7, sp, t0
                  xori         s8, a2, 994
                  srai         s5, s3, 18
                  add          t3, a6, gp
                  xori         s7, s3, -246
                  slli         s2, s4, 30
                  sub          a1, s8, a7
                  and          sp, s8, t5
                  ori          t2, t1, -461
                  sub          a0, s5, a4
                  add          s9, s3, s0
                  sub          s0, s4, gp
                  slti         a6, s4, -1588
                  addi         s7, a1, 851
                  nop
                  srl          s6, s1, s9
                  auipc        s8, 430723
                  nop
                  srai         s11, s11, 8
                  srai         t6, t6, 19
                  sll          s4, ra, s11
                  auipc        s7, 48185
                  srl          a1, zero, a7
                  xori         a1, t1, 1736
                  ori          t3, t0, 268
                  lui          a2, 459977
                  slli         a7, t4, 13
                  andi         t2, s1, 356
                  slti         t0, zero, 1125
                  slt          s0, s9, t5
                  sub          s5, t0, t2
                  lui          s9, 937190
                  sra          a4, s7, s3
                  addi         t5, s2, -137
                  slt          s8, a4, s4
                  andi         s8, s2, -1281
                  lui          t5, 46009
                  sub          a5, s7, a1
                  and          t6, t6, a7
                  slti         a4, a6, 1076
                  add          a3, a7, s8
                  sltiu        a7, t4, -1532
                  slt          s11, t6, a6
                  sltiu        a1, a5, 758
                  sltu         s0, a1, t2
                  ori          s8, a0, -1910
                  and          s0, t3, s2
                  auipc        sp, 889680
                  add          s5, a7, s0
                  srai         s0, s5, 20
                  add          a4, a4, s6
                  sll          s2, s2, t5
                  srli         t3, s2, 15
                  sll          t3, tp, t1
                  and          tp, s9, t6
                  srai         s2, s4, 5
                  lui          s8, 768332
                  slti         a1, ra, 187
                  slt          t1, a7, t4
                  auipc        a4, 711573
                  srli         a3, ra, 8
                  sub          s5, s8, a1
                  sra          tp, zero, s4
                  xor          a7, t5, tp
                  lui          t3, 178495
                  srai         a5, s0, 9
                  srli         sp, s1, 22
                  sltu         a0, a0, a6
                  addi         gp, s3, 253
                  xori         s0, t3, -1364
                  add          ra, t3, s6
                  add          t3, s4, s1
                  xor          a3, s10, a2
                  addi         a4, s10, -1490
                  srl          ra, t5, t1
                  sub          t0, a4, gp
                  and          a1, s6, t5
                  and          s8, t2, s4
                  sub          sp, s0, s2
                  auipc        t2, 751994
                  slti         a4, s4, 1111
                  or           t5, t4, gp
                  or           sp, s4, s2
                  xori         s7, t5, -766
                  or           s8, s11, t5
                  slti         tp, t4, 1428
                  andi         gp, s0, 33
                  slti         a2, a6, 1728
                  and          s4, t0, t4
                  slli         tp, t0, 30
                  or           a5, a7, ra
                  srai         s5, t5, 25
                  sll          s9, a4, a7
                  and          s9, s5, a5
                  xori         a1, s7, 350
                  lui          t6, 886347
                  sll          a7, s10, a4
                  srli         a2, s7, 19
                  sra          gp, s2, s3
                  slt          s8, s1, s4
                  or           t1, s5, s6
                  ori          t1, zero, 99
                  sub          s0, s11, a3
                  andi         ra, ra, 1594
                  slti         ra, a0, 2046
                  slt          a3, t3, s6
                  or           s3, t2, s3
                  sltiu        a5, a0, 23
                  sltiu        a5, a1, 781
                  slt          a5, tp, s1
                  addi         a0, tp, -85
                  auipc        a7, 1007879
                  srli         s11, s3, 30
                  add          t3, s6, s4
                  addi         a2, a3, -1016
                  sltu         t1, s6, a2
                  sltu         a2, a3, a2
                  addi         a6, zero, -827
                  addi         s6, t3, 1343
                  ori          s2, tp, 923
                  ori          s5, a0, -1498
                  ori          a3, s5, -2012
                  lui          ra, 871210
                  sltu         s8, t1, zero
                  sll          s9, s8, s3
                  sll          a7, s7, s11
                  slti         gp, s2, -1630
                  srai         a5, a7, 15
                  slti         s8, s6, 260
                  xor          s4, a6, t0
                  addi         a6, t3, -363
                  or           a7, s10, s10
                  sll          s9, a5, s5
                  xor          a3, s11, s2
                  srl          t2, s0, gp
                  srai         sp, a1, 20
                  sra          s0, s11, t3
                  srli         s7, a1, 1
                  and          s4, s10, t1
                  ori          t3, t3, -1326
                  addi         ra, a3, 818
                  srai         ra, t3, 26
                  slt          t1, s0, s10
                  xori         a0, s11, -1667
                  srl          t2, s5, s10
                  srl          a2, tp, t5
                  sltu         gp, a2, s2
                  slt          s11, s6, s0
                  slt          ra, s4, s4
                  sub          s4, s9, t2
                  addi         a1, t1, 1177
                  and          s0, gp, s7
                  xori         s5, s7, -86
                  add          s0, ra, s1
                  andi         t0, s0, -485
                  nop
                  xori         s2, a5, -1408
                  andi         s6, t0, -1185
                  srli         s6, t3, 24
                  or           a0, t0, t2
                  addi         a4, tp, 1727
                  nop
                  or           s11, tp, s9
                  sltiu        s8, s4, 1447
                  srai         a7, t5, 7
                  slti         s0, s11, -271
                  xor          s2, t5, a4
                  slt          a3, s4, tp
                  srai         s9, a4, 11
                  slt          s4, s4, gp
                  sll          gp, ra, s7
                  lui          s5, 867177
                  or           t1, s7, t0
                  sub          s4, s9, t5
                  xor          tp, t2, tp
                  slti         s3, t1, 371
                  sra          a7, t2, s5
                  slli         s11, s7, 3
                  ori          a6, gp, -250
                  slli         a1, a2, 11
                  auipc        s0, 510485
                  xori         t2, s8, -247
                  sub          s2, ra, a4
                  or           s11, s1, t2
                  nop
                  add          s2, a7, s2
                  srli         s0, t2, 6
                  ori          a6, a2, 859
                  slt          t1, s10, s0
                  xori         a4, t6, 1810
                  slti         gp, t3, 1191
                  srli         a2, s1, 8
                  sll          s5, t5, sp
                  srai         tp, s1, 16
                  and          t1, t2, gp
                  slt          s9, t5, s6
                  nop
                  sltiu        ra, s2, 1185
                  or           tp, a1, t0
                  xor          sp, t4, s8
                  slli         s8, s3, 18
                  auipc        s8, 492539
                  nop
                  srai         t3, s4, 18
                  sll          a4, s7, s6
                  add          t6, gp, zero
                  auipc        s6, 124311
                  srl          a5, a3, s6
                  andi         s4, t2, -584
                  sltu         s3, sp, t4
                  sub          t0, s8, s0
                  slti         s8, s10, 1126
                  slli         zero, s10, 12
                  sltiu        t5, a0, 764
                  slti         t3, a2, 252
                  srai         t2, a0, 6
                  nop
                  slt          t3, t1, t1
                  auipc        s0, 828009
                  ori          a6, t1, 1153
                  slt          s5, gp, s9
                  andi         t3, a7, 912
                  addi         s8, gp, -1783
                  srl          s7, a1, gp
                  srli         a0, t2, 4
                  slti         s7, s11, -664
                  slt          a1, t6, s4
                  auipc        a7, 331915
                  srai         a3, t4, 7
                  auipc        sp, 406313
                  sra          s7, t4, a2
                  sll          t3, s7, t5
                  sltu         a7, t3, tp
                  slti         sp, sp, 1966
                  slt          s5, s5, t6
                  sub          t1, a1, s6
                  auipc        a1, 130555
                  and          a4, a4, s6
                  lui          ra, 798454
                  slt          s2, tp, s7
                  and          a5, t4, s8
                  sltiu        t3, s8, -1791
                  xori         a3, s7, -884
                  xori         zero, t6, 1591
                  sltu         s6, s11, s2
                  andi         t6, t4, -923
                  slli         a3, a7, 14
                  srl          s11, a1, s2
                  srl          s4, a4, a0
                  and          a7, s5, t2
                  or           a3, s8, s3
                  srai         s5, a1, 0
                  or           sp, s4, s11
                  sltiu        s0, ra, 2010
                  slti         s4, t3, -1463
                  sra          a7, t6, s7
                  xor          a3, t5, a0
                  sub          a4, a2, s0
                  and          a6, a5, ra
                  xori         t3, a4, 762
                  sltu         a5, a6, t3
                  lui          tp, 521730
                  addi         zero, s8, 1595
                  auipc        t3, 866272
                  auipc        t6, 402956
                  slt          a0, a5, t4
                  sltu         s8, s8, s2
                  sub          ra, t3, s5
                  lui          tp, 427749
                  sra          zero, a7, a3
                  or           t0, s2, a7
                  xor          s6, a4, ra
                  slti         t0, s11, 821
                  and          ra, s1, sp
                  sll          t6, a1, a2
                  or           s2, s3, a4
                  srai         ra, a5, 29
                  slt          s11, s11, t5
                  andi         a2, a7, -1227
                  srli         t2, sp, 15
                  sltiu        a0, t0, 1816
                  lui          zero, 165249
                  sll          s2, a6, s10
                  slli         a5, t6, 10
                  slli         sp, gp, 3
                  auipc        t2, 194409
                  or           a4, a1, a4
                  sltu         s11, s11, t0
                  nop
                  slli         s11, a6, 31
                  slt          a5, sp, a5
                  ori          s2, a6, -1768
                  or           a7, t0, t6
                  sll          zero, a1, tp
                  xor          t6, sp, s4
                  and          t6, s8, t4
                  sll          s0, zero, tp
                  xori         a3, s6, -1431
                  sra          ra, a7, a3
                  add          a5, a3, s2
                  slt          t3, a5, t1
                  lui          t5, 308217
                  slti         s8, t6, -792
                  slt          a0, s11, s11
                  lui          t1, 96542
                  slti         sp, a4, 1544
                  ori          t5, a1, 1017
                  or           s2, sp, t4
                  slli         a2, a5, 12
                  slli         t1, t6, 9
                  xor          zero, a5, a0
                  slt          a2, t4, s1
                  slli         a2, a3, 1
                  slti         a6, a2, 471
                  and          s3, a4, gp
                  slti         a6, s11, -1219
                  and          t6, a7, t6
                  xori         s5, s0, 1034
                  srl          a4, t4, s3
                  slt          s8, gp, s3
                  srl          gp, a2, s9
                  auipc        a5, 600013
                  sub          t3, s0, t6
                  slti         a5, tp, -1255
                  ori          a2, s7, 667
                  slt          t3, a7, a4
                  sra          s4, a3, t0
                  sltiu        s5, s7, 1790
                  sltu         s3, s9, t2
                  slt          t3, a4, s7
                  andi         sp, s4, 531
                  sltu         a3, t0, ra
                  auipc        t3, 221335
                  lui          a4, 662667
                  sll          a2, a3, a1
                  slt          s9, s6, a4
                  slti         s3, gp, 1503
                  auipc        s4, 705683
                  srai         a7, t0, 22
                  sltu         s3, s8, a4
                  auipc        s3, 686928
                  sra          a0, t3, tp
                  xor          s4, t0, t5
                  srai         s9, t2, 13
                  sltiu        a6, s1, -124
                  add          s9, a0, ra
                  sra          s0, t3, s2
                  slt          t1, gp, t2
                  srli         s9, t2, 21
                  slti         a2, s6, 553
                  sub          a2, a3, a5
                  sltiu        a0, t3, 500
                  srl          s2, s8, s6
                  andi         a6, t2, -612
                  srl          a6, t6, s7
                  sltu         s11, t3, t1
                  xor          gp, t5, a4
                  slt          tp, s1, t0
                  andi         tp, s7, 527
                  add          zero, s0, s9
                  slt          tp, t3, a5
                  sra          t0, a2, s6
                  auipc        a0, 745459
                  sub          a1, t6, a3
                  or           t6, s1, tp
                  srl          s9, s1, a6
                  lui          a5, 959960
                  slt          gp, a3, a5
                  srli         t6, a4, 27
                  srai         zero, s4, 14
                  add          t6, t6, s3
                  or           t5, s11, s3
                  lui          s11, 324869
                  lui          t2, 505051
                  slti         s8, s11, 8
                  srai         tp, s6, 8
                  xori         a3, s3, -1392
                  sltiu        t3, s1, 1493
                  add          zero, s11, s1
                  sll          t5, t0, t3
                  srli         a5, a3, 4
                  ori          a5, a7, -1062
                  sll          ra, s7, s3
                  xor          s5, gp, ra
                  or           t6, a5, t2
                  addi         a0, tp, 506
                  sltiu        a4, t4, -900
                  ori          s5, t0, 364
                  auipc        ra, 999499
                  addi         s5, gp, 1214
                  ori          s3, s7, -1428
                  nop
                  auipc        a4, 431773
                  lui          s0, 45712
                  slt          a3, a1, t2
                  xor          s0, s8, t5
                  sub          s0, s1, a5
                  sltiu        s9, s3, 1165
                  slti         s11, t4, -1170
                  srli         s2, t2, 12
                  addi         s3, s6, 634
                  slti         a4, a5, 102
                  srai         s7, s4, 9
                  ori          t1, ra, 990
                  and          sp, s7, s7
                  srai         a6, ra, 26
                  auipc        s9, 860016
                  sra          tp, s10, tp
                  sltiu        a2, s11, 2014
                  sub          a0, t5, s11
                  xor          tp, a2, a2
                  addi         a5, t0, 1828
                  or           zero, s4, a3
                  addi         ra, s8, -1957
                  nop
                  auipc        a0, 958871
                  sltiu        sp, a0, 1948
                  and          t3, a0, t1
                  sra          s8, s11, s7
                  srli         s6, s10, 18
                  srli         s0, t5, 28
                  auipc        s3, 457801
                  andi         t5, sp, -240
                  or           s7, s8, a2
                  srli         s11, a0, 31
                  addi         t5, ra, -1972
                  xori         a7, t4, -974
                  sra          s4, s2, s11
                  srl          t2, t2, t0
                  sra          s3, s10, s10
                  and          gp, a6, a6
                  sltiu        a7, s4, -2031
                  srai         s4, a7, 16
                  xor          t0, a2, s7
                  sltiu        tp, a2, -184
                  lui          t5, 147577
                  or           a4, s2, s9
                  ori          a0, s6, -1995
                  sub          a3, t3, t1
                  sltu         a3, a0, s5
                  sub          ra, s8, a6
                  addi         a6, a3, 451
                  xor          s7, s8, a6
                  sll          a3, s8, gp
                  srli         zero, t0, 30
                  addi         tp, t6, 1584
                  slli         sp, a1, 14
                  slti         a6, t2, -630
                  sltu         tp, sp, s9
                  add          a3, zero, gp
                  or           t0, a5, t4
                  auipc        t5, 783708
                  sub          zero, s4, a7
                  sub          s2, a4, s5
                  sltiu        s4, s3, -794
                  xori         t1, t3, -654
                  srl          s8, tp, s0
                  lui          a2, 461441
                  xori         a6, sp, 929
                  sra          a7, t5, gp
                  srl          sp, a6, a6
                  auipc        s3, 530085
                  sltu         s5, a5, s6
                  sltiu        ra, t2, -530
                  addi         a7, gp, 825
                  slti         t5, a4, 669
                  xor          a3, t2, a2
                  sltu         t6, t2, s1
                  slli         a1, t5, 8
                  nop
                  andi         tp, gp, -1360
                  lui          a1, 832436
                  lui          a3, 722017
                  auipc        a1, 364790
                  sltiu        a4, t6, 911
                  sltiu        t1, tp, 1870
                  nop
                  and          zero, a6, sp
                  sltiu        s2, s11, 883
                  add          s8, s9, zero
                  ori          a3, s3, -1009
                  nop
                  slli         s7, s7, 12
                  lui          s9, 508840
                  lui          t1, 589027
                  slli         a3, a2, 1
                  xor          a4, ra, t0
                  srai         s3, gp, 8
                  xor          t1, t0, t1
                  sltu         t6, s10, a2
                  sltiu        a5, t2, -1553
                  lui          a7, 359801
                  slli         s3, a7, 8
                  slt          gp, s8, a1
                  nop
                  sltu         ra, a2, s7
                  srli         s7, s4, 8
                  xori         a7, t1, -608
                  or           t3, s9, s10
                  addi         a6, s2, 833
                  slti         a3, tp, 2014
                  addi         s11, t1, -1860
                  ori          tp, a3, 328
                  slli         t0, s7, 16
                  auipc        t5, 135953
                  srl          s4, s8, s2
                  sltiu        a5, s8, -645
                  xor          t5, a1, s10
                  sub          t0, a6, s7
                  add          s2, t4, s0
                  slti         s8, gp, 74
                  andi         sp, a4, -1701
                  ori          s7, t6, -401
                  slli         t1, a3, 29
                  sltu         a5, t6, a5
                  xor          s8, t4, t0
                  or           zero, t6, t2
                  andi         t6, t3, 597
                  auipc        a7, 63282
                  addi         t6, s6, 414
                  slt          t1, s1, sp
                  sub          s7, s8, s3
                  and          a1, s1, a2
                  addi         s7, gp, 866
                  srli         t2, s3, 13
                  slt          a6, a0, a4
                  xor          s7, s0, a5
                  andi         s2, a4, -1189
                  and          s5, t0, ra
                  srai         t1, s9, 5
                  sltu         t2, sp, a5
                  srli         t2, sp, 2
                  nop
                  add          a4, sp, s0
                  lui          s3, 700997
                  or           s11, s4, t5
                  xor          t1, t5, s11
                  lui          t5, 94672
                  xori         a6, gp, 46
                  nop
                  xor          t1, s7, s2
                  slti         sp, s8, 428
                  srli         a4, a2, 0
                  andi         a5, t4, 884
                  add          s0, s3, t3
                  sltiu        t0, s8, 402
                  nop
                  nop
                  sub          s6, t6, s2
                  sltu         t5, t0, s5
                  xori         s3, s9, -1690
                  sltu         a3, t6, a5
                  slti         gp, t0, -1305
                  slti         s0, s7, -278
                  sltiu        s0, t0, 656
                  nop
                  lui          s0, 654553
                  nop
                  add          s9, ra, s1
                  addi         a2, s6, -647
                  add          a1, zero, sp
                  srai         sp, s11, 14
                  sltu         t6, a3, t2
                  sltu         a2, t1, s11
                  srai         a2, gp, 29
                  srl          a4, sp, s1
                  slti         a6, a7, -1261
                  sll          gp, s8, s1
                  addi         a1, s4, 632
                  or           a0, t2, a0
                  sub          t6, a0, s0
                  andi         tp, ra, 1822
                  sltu         ra, t6, s7
                  nop
                  srai         s5, t0, 23
                  sltu         a1, a3, s4
                  ori          s3, t1, -161
                  srai         a6, a7, 8
                  add          s9, zero, tp
                  sra          a4, a6, s3
                  srli         a5, t1, 3
                  slti         s11, gp, 596
                  and          a5, s2, s11
                  srai         a0, zero, 6
                  slt          t6, a3, a7
                  add          a7, a1, t5
                  add          s5, s0, a4
                  lui          sp, 828538
                  sltiu        gp, s6, -753
                  addi         s7, t5, -435
                  xor          s8, a4, a6
                  ori          tp, t5, 1058
                  add          gp, a3, t3
                  sltiu        a4, a6, -968
                  auipc        sp, 566643
                  sub          s6, a1, s2
                  sra          a5, sp, t4
                  nop
                  sll          s4, t4, t4
                  lui          s4, 542674
                  or           a6, a3, t2
                  sltu         t2, a4, a3
                  slti         s11, t6, 627
                  slt          s8, t5, a5
                  slti         a7, a7, 1593
                  andi         t5, s5, 368
                  sltiu        a0, s0, 1659
                  slti         t0, a7, 494
                  sll          a6, s5, ra
                  and          a4, a2, a7
                  slti         s6, s0, 1961
                  xori         s11, a3, 540
                  xori         a3, s4, -151
                  sltu         a5, a3, t2
                  andi         a3, t1, 337
                  addi         gp, s8, -960
                  ori          a7, s8, -1577
                  sra          tp, t4, s10
                  or           s7, s9, gp
                  sltu         s0, t4, a4
                  or           zero, s11, a6
                  xor          s6, zero, a7
                  srai         t5, tp, 14
                  slt          ra, a7, t2
                  add          a4, tp, sp
                  srli         s8, a5, 0
                  nop
                  addi         ra, zero, -411
                  auipc        s4, 625255
                  srai         a5, t0, 9
                  or           t1, a6, s11
                  srai         t0, s1, 28
                  auipc        tp, 17382
                  xor          s3, a2, s7
                  lui          s2, 33285
                  lui          s4, 399220
                  sltu         a1, s8, s4
                  auipc        a3, 23851
                  xori         s3, a6, -697
                  sll          s11, t4, tp
                  slli         a4, sp, 10
                  auipc        t6, 908816
                  and          tp, t6, a6
                  or           t2, zero, s6
                  sub          t2, t1, t4
                  srai         a6, zero, 18
                  xori         sp, s9, -1101
                  srl          s8, t3, a2
                  slti         s11, s9, 1672
                  ori          a4, a0, -555
                  slt          a3, s8, sp
                  xori         a2, s1, 2022
                  andi         zero, t2, -730
                  nop
                  slt          s11, s8, t6
                  slli         s11, t5, 18
                  lui          gp, 803748
                  and          s8, a6, t4
                  sltiu        s7, t3, 1364
                  slt          a0, s5, s8
                  sra          sp, gp, gp
                  lui          s5, 559114
                  nop
                  srai         s5, a2, 12
                  auipc        s3, 259738
                  sub          ra, sp, s6
                  slti         a2, s0, 1427
                  srl          s5, t4, a6
                  add          s5, s0, t1
                  sra          s5, gp, t6
                  srai         t6, a4, 17
                  xori         a0, s4, -1521
                  ori          a2, t4, 906
                  ori          s8, zero, -325
                  slti         t6, a5, 1024
                  auipc        a0, 770410
                  sub          t5, a3, s1
                  sub          a6, s1, tp
                  addi         t0, t3, 1627
                  sltiu        a6, ra, -1759
                  sltiu        s6, s1, 740
                  addi         a1, ra, -280
                  xor          ra, a2, s8
                  or           s11, s4, t3
                  slt          a4, a0, s5
                  xori         s0, s3, 116
                  xor          tp, s3, a5
                  or           s3, a3, s2
                  add          ra, s5, t6
                  auipc        a2, 58192
                  sra          s2, sp, a7
                  sltu         s3, s0, s4
                  sltu         a1, gp, s2
                  slti         t3, s11, -1096
                  or           sp, t5, s1
                  andi         gp, tp, -66
                  slti         t2, t4, -820
                  ori          s0, s4, -1027
                  and          t5, t2, zero
                  auipc        a1, 406896
                  sltu         a0, t1, a7
                  sltiu        s11, tp, 1222
                  xori         s11, s2, 1541
                  srai         a4, a1, 11
                  slli         s7, s8, 21
                  sltiu        s3, s4, 1230
                  srai         a6, gp, 25
                  xor          t0, a0, sp
                  addi         t3, t1, 1400
                  xori         a2, ra, 1256
                  xor          sp, s11, a6
                  srl          t0, t1, s2
                  sltiu        t5, a0, 536
                  sub          a6, s5, a5
                  slti         s9, tp, 1588
                  add          t0, a0, a2
                  andi         s9, s2, -404
                  slti         tp, sp, -1130
                  xori         t2, ra, -93
                  sll          tp, s7, a1
                  sltu         t2, t6, t1
                  xori         s4, gp, 1153
                  slt          ra, t0, a2
                  slti         ra, s2, -2034
                  andi         s4, a0, 1883
                  xor          s7, s1, s8
                  srli         gp, s10, 29
                  srai         t0, s5, 27
                  slli         s7, t0, 21
                  sll          s8, tp, tp
                  add          s2, a7, s10
                  srai         t2, s10, 24
                  srai         s6, t3, 23
                  sll          s4, sp, a2
                  xor          s0, ra, t4
                  sltu         a4, s1, s10
                  xor          a4, s5, a5
                  lui          t6, 441095
                  or           t3, a1, ra
                  sub          sp, t5, a4
                  sra          t1, t6, tp
                  sltiu        s9, t0, 579
                  nop
                  sltiu        a6, t2, -1287
                  ori          gp, s0, -700
                  slli         a5, t6, 3
                  add          s8, s2, s0
                  addi         a1, s9, -747
                  xor          t0, a3, a1
                  lui          s7, 721354
                  addi         a1, t3, -756
                  srli         s7, a5, 17
                  andi         s2, s7, -425
                  nop
                  xor          t0, s2, t3
                  auipc        s0, 89599
                  srai         t1, sp, 14
                  auipc        a6, 397090
                  sra          t0, ra, sp
                  sltu         a1, a1, a1
                  sll          a6, t5, a7
                  lui          s0, 113610
                  andi         t5, s0, 6
                  slli         s11, a6, 28
                  auipc        zero, 1041137
                  addi         s7, a5, -2043
                  or           a2, s7, t1
                  ori          a2, t5, -345
                  andi         t0, s0, 1295
                  srli         zero, s5, 1
                  add          ra, s11, a1
                  sll          sp, a0, a6
                  or           s3, s8, t2
                  slti         s7, a4, -1369
                  xori         gp, t1, 412
                  add          sp, tp, ra
                  srai         tp, t3, 19
                  add          s3, t0, a7
                  auipc        a5, 878426
                  srl          t2, t6, a3
                  slli         tp, s0, 10
                  nop
                  add          t6, a0, zero
                  or           s4, t5, s0
                  and          gp, s11, t6
                  srli         t5, s5, 5
                  slti         s5, s11, 11
                  sra          a1, s4, t0
                  andi         t1, s11, -1057
                  xori         a0, s7, 1269
                  nop
                  sll          a1, t4, s8
                  lui          s8, 677050
                  srli         ra, s10, 30
                  add          a5, a3, t2
                  xor          s11, s8, t6
                  srai         s0, t4, 6
                  lui          a4, 882618
                  andi         a3, s7, 134
                  ori          s9, sp, -392
                  slt          ra, a6, s6
                  sub          t3, a5, t0
                  sra          t0, sp, tp
                  slt          s4, t3, s1
                  sltiu        a2, gp, 1311
                  srli         s4, a4, 6
                  auipc        zero, 899961
                  and          t0, t1, a0
                  add          a3, ra, tp
                  sra          s0, sp, sp
                  xori         t1, gp, -1445
                  sltiu        a1, t3, 1855
                  srl          s6, a4, t2
                  auipc        gp, 883324
                  sll          sp, a1, s9
                  addi         s6, a3, 464
                  srai         a5, s9, 17
                  srl          s9, s7, t0
                  add          a2, t2, s4
                  ori          s6, a4, -1011
                  and          s2, a4, a2
                  sll          zero, s2, t5
                  lui          s2, 1036384
                  addi         gp, ra, 1988
                  addi         a6, s5, -2040
                  sub          tp, s11, a7
                  srl          s7, t1, a4
                  srli         t1, s6, 19
                  ori          a4, a7, 803
                  auipc        a5, 627976
                  sub          s2, t4, t3
                  sltu         a5, t1, s10
                  ori          s8, s0, 1067
                  slti         tp, tp, 1192
                  ori          s4, t2, -439
                  sra          zero, s11, a3
                  andi         a1, ra, -1575
                  xori         s5, a5, -248
                  srai         a1, s9, 6
                  slli         t6, s2, 17
                  nop
                  sltiu        a0, a7, -202
                  sll          s11, s6, t5
                  add          s7, tp, a3
                  lui          s8, 58783
                  ori          t2, s8, 220
                  or           s6, s10, t0
                  sltu         s6, s5, a4
                  sltu         s6, s4, a2
                  sll          s8, zero, s1
                  or           a3, a5, a7
                  slti         s2, t4, -607
                  srli         s5, t4, 6
                  srli         s6, t3, 25
                  nop
                  srl          a1, s2, t3
                  slli         ra, s9, 14
                  ori          a0, s4, -1722
                  slt          a6, t2, sp
                  sra          s0, s6, a2
                  add          a6, a2, s9
                  lui          a6, 959609
                  xor          s2, a2, a7
                  sll          s6, a1, a6
                  auipc        s9, 56271
                  and          zero, s7, t5
                  auipc        a7, 548379
                  ori          ra, t6, 527
                  srl          s3, s10, tp
                  srli         a4, t1, 2
                  sub          t0, s2, a6
                  andi         a1, t0, 1569
                  sub          s5, zero, t1
                  nop
                  slti         s3, s4, 573
                  and          t6, s11, s7
                  sra          t1, s8, t4
                  srl          a6, t5, a6
                  add          a3, s2, t1
                  sub          gp, sp, t4
                  add          t5, s10, a3
                  lui          a0, 596464
                  slt          s6, a4, a3
                  nop
                  or           s3, s2, s5
                  sub          s4, s0, a4
                  slti         a6, s5, -224
                  slt          s8, s11, s3
                  or           t0, tp, a6
                  addi         ra, a2, 1269
                  sltu         s6, s11, tp
                  sra          s4, t5, t1
                  xor          t6, t4, s9
                  slt          s6, s10, t0
                  srl          a7, s9, s11
                  andi         t6, a5, 170
                  srli         a4, a4, 20
                  and          s11, s7, s4
                  andi         s5, s2, -1937
                  sll          s2, s7, a5
                  slli         a1, gp, 13
                  xor          s5, zero, a0
                  srli         s0, s9, 29
                  sll          t5, t2, a0
                  sub          s7, s8, s6
                  add          a4, t0, a1
                  slti         ra, sp, -570
                  slli         tp, t3, 14
                  srai         a7, t4, 0
                  slli         gp, t2, 6
                  sltiu        t2, t1, -1611
                  add          t0, ra, t3
                  slli         s0, t1, 13
                  nop
                  srai         a1, t2, 5
                  xor          s2, gp, t0
                  slli         t6, s9, 6
                  lui          gp, 43709
                  sltiu        t1, s3, -200
                  sltu         a2, a3, t5
                  nop
                  sltu         a6, a7, ra
                  sub          a0, ra, s5
                  addi         a7, t6, 1615
                  ori          s7, t2, 1512
                  and          s9, s9, s6
                  slti         t3, s2, 851
                  auipc        s11, 938646
                  nop
                  ori          a7, s3, -546
                  srai         t1, s7, 19
                  or           a6, a2, sp
                  and          s2, s8, sp
                  sll          s7, a5, t3
                  sll          t6, s6, a5
                  auipc        s7, 220291
                  sra          a5, s9, s5
                  sra          a7, a4, t4
                  add          a2, t1, s8
                  sra          t5, s3, a7
                  xor          t5, t5, zero
                  xor          t1, a7, a7
                  lui          s9, 703225
                  slli         t6, t0, 23
                  srli         a4, a7, 30
                  srai         s0, s3, 13
                  sltiu        s6, gp, -1858
                  xori         t6, s0, -1176
                  sltiu        s0, gp, -236
                  slti         ra, a3, 255
                  sra          zero, a2, s4
                  srli         sp, ra, 12
                  addi         ra, s4, -1325
                  slli         sp, a7, 31
                  slti         a2, s2, 36
                  srli         s3, s5, 2
                  sll          a7, t5, a5
                  slt          s11, t6, zero
                  sub          gp, gp, t5
                  or           tp, t6, s2
                  sub          s2, s3, s1
                  slli         t3, s10, 30
                  sra          t1, s5, a6
                  xor          a0, zero, gp
                  xor          a4, s1, a4
                  xor          s6, t0, a0
                  nop
                  andi         a0, s0, -757
                  and          s2, s1, s0
                  xor          gp, a2, s7
                  sll          a1, s9, tp
                  sra          t0, t3, t4
                  addi         s2, a0, -930
                  srl          s4, t5, gp
                  srl          zero, s3, gp
                  lui          a5, 68256
                  lui          s2, 56934
                  lui          s4, 971433
                  slt          t3, gp, a2
                  and          ra, a0, s3
                  nop
                  sltiu        s7, s0, -220
                  slli         s2, s5, 24
                  add          t2, a7, t1
                  andi         s2, t0, 1807
                  andi         ra, a4, 853
                  sll          t1, a1, s11
                  slti         a7, gp, -955
                  sltu         s0, t4, t1
                  srai         t1, s1, 24
                  nop
                  sll          s6, s11, s4
                  slt          t0, a1, sp
                  add          a3, t3, a7
                  slt          gp, tp, t1
                  and          t5, s6, sp
                  ori          s7, s10, 727
                  or           a0, a3, s7
                  xori         a2, t4, 1144
                  sltiu        s8, s7, -265
                  slti         a7, a5, -1923
                  ori          s2, a4, -1615
                  or           s0, a1, t3
                  slt          s7, s4, s1
                  sltiu        a2, a0, -1259
                  xor          s8, t6, t4
                  srl          sp, s5, s0
                  lui          s0, 689472
                  sra          a6, t2, s1
                  slli         s0, s9, 8
                  sltiu        s9, s0, 2032
                  or           a6, t2, a6
                  li           a2, 0x54c390ca #start riscv_int_numeric_corner_stream_8
                  li           t6, 0xffffffff
                  li           s3, 0x5748f47f
                  li           sp, 0x80000000
                  li           t0, 0x7b54efb5
                  li           a6, 0xffffffff
                  li           a4, 0xffffffff
                  li           s5, 0xe97af098
                  li           a1, 0xffffffff
                  li           s11, 0xf800ca79
                  add          sp, s11, t6
                  addi         a2, sp, 1525
                  sub          a4, t0, s11
                  lui          a1, 429508
                  sub          sp, a6, a1
                  add          t0, a1, a6
                  lui          sp, 913363
                  nop
                  nop
                  sub          a6, s5, a6
                  sub          t0, sp, t6
                  lui          s3, 308642
                  auipc        t0, 764058
                  lui          s5, 310024
                  add          a2, s3, s5
                  add          a1, t6, s11
                  addi         a6, a2, 1583
                  nop
                  addi         a1, a2, -313
                  addi         t0, s11, -291
                  add          a2, s5, s5
                  sub          a1, s3, s3
                  add          a2, s5, a6
                  nop
                  nop
                  lui          t0, 934631
                  auipc        a1, 714343
                  auipc        sp, 798422 #end riscv_int_numeric_corner_stream_8
                  andi         tp, a7, 1288
                  or           a4, a3, t2
                  srli         t5, s9, 3
                  andi         s3, a3, 1801
                  sra          a0, tp, s8
                  sra          a0, ra, s1
                  sra          sp, s0, a0
                  srl          t1, a5, a2
                  slti         s4, t1, -801
                  auipc        s11, 829425
                  or           zero, s2, t3
                  addi         s0, s10, 430
                  ori          s8, a0, -165
                  slli         a7, s7, 26
                  sltu         a2, s8, s10
                  add          a4, t2, s1
                  sltu         s3, a1, s4
                  sra          a1, t3, tp
                  auipc        s2, 750335
                  add          s5, a3, tp
                  ori          t0, s8, 1829
                  lui          a1, 648363
                  addi         a1, zero, 167
                  srl          s6, s0, t3
                  xori         a5, s7, 1799
                  sll          s0, ra, s6
                  nop
                  srai         t5, t5, 14
                  srli         t2, zero, 18
                  sub          a1, t1, zero
                  sll          s0, s10, a2
                  slti         t2, a2, -1977
                  slti         s7, a6, 17
                  srli         a1, a2, 9
                  slli         t0, a2, 16
                  srai         zero, tp, 0
                  add          t6, t2, t6
                  ori          ra, t4, 1406
                  ori          s6, a1, 1267
                  andi         s11, a3, -2044
                  srai         s5, t3, 4
                  sltu         s5, t1, t2
                  slt          s3, a0, t2
                  slli         s4, s5, 8
                  sll          a7, t2, sp
                  sll          t5, s5, t5
                  slli         gp, s3, 18
                  addi         t3, s10, 580
                  xori         a7, s5, 250
                  srai         s7, a4, 0
                  xor          s7, t1, a0
                  slt          s5, s9, s0
                  andi         ra, a3, -462
                  sub          a4, s6, ra
                  srl          a2, s0, zero
                  or           s7, a5, s4
                  xori         s9, s10, 351
                  srai         s5, t4, 7
                  sltiu        t5, t5, -725
                  sub          t3, a6, s4
                  lui          s3, 22622
                  or           a1, sp, s3
                  slti         s9, t0, -619
                  srli         a0, t0, 1
                  slt          s8, s6, s6
                  sll          t0, s4, t1
                  sll          sp, t0, s1
                  nop
                  sub          a4, t2, s5
                  addi         a3, a7, -1729
                  xori         a5, t2, 1876
                  slt          a1, s10, s0
                  or           t6, t3, s1
                  sll          s7, s6, s9
                  slli         a5, t3, 4
                  lui          a7, 823482
                  andi         tp, s1, -1968
                  slli         s11, t5, 24
                  xor          t3, gp, t5
                  auipc        a5, 799555
                  slt          gp, t5, t6
                  auipc        a3, 690722
                  srl          s11, t1, sp
                  slti         t5, s7, 296
                  andi         gp, s6, 1329
                  slli         a0, s9, 31
                  or           t2, a0, s7
                  xor          a7, a5, s7
                  xori         t1, a2, 1584
                  sll          s5, a0, s3
                  sub          s0, a5, zero
                  or           a5, s1, a3
                  sltu         a5, s1, s2
                  addi         a5, a5, -1956
                  sub          a0, a4, a1
                  lui          s5, 84171
                  lui          ra, 635551
                  sltiu        t1, t3, 1351
                  addi         s7, a4, 30
                  or           a1, a5, gp
                  srli         s3, a4, 31
                  add          a4, a0, a4
                  sltiu        sp, s11, -79
                  auipc        s0, 738758
                  sub          gp, t2, s11
                  sll          s4, t2, t4
                  auipc        a2, 410725
                  slt          s2, t4, sp
                  slti         a4, s9, -591
                  srai         s0, ra, 9
                  srli         ra, s10, 23
                  xori         s5, s9, -1435
                  srl          a2, s9, s7
                  sltiu        zero, sp, 1087
                  sll          zero, ra, s5
                  srl          t2, s10, s7
                  sltiu        t0, s1, -1775
                  auipc        sp, 801844
                  sltu         a3, s0, s2
                  xor          a6, a1, a5
                  sltu         t2, zero, s9
                  andi         a2, ra, -1817
                  srl          a0, s1, a5
                  or           t2, a1, a4
                  srl          t5, s3, a0
                  sltiu        t0, t5, 877
                  sltiu        s7, a3, -1177
                  sltu         sp, sp, s2
                  sra          a6, a0, a0
                  nop
                  andi         s11, zero, 1919
                  srli         s3, t6, 7
                  and          zero, s1, s9
                  sll          s4, a4, s10
                  slti         a4, s6, -418
                  sltu         s3, ra, a7
                  slt          gp, a0, t5
                  lui          zero, 332554
                  andi         s8, s7, -829
                  add          s4, a7, a7
                  and          s4, t5, a5
                  and          gp, t5, t0
                  sll          t1, s2, s2
                  xori         a4, t3, 1549
                  srai         a6, t2, 22
                  srli         s5, t3, 29
                  sltiu        t0, gp, 910
                  and          a5, t4, s1
                  xor          s9, a0, t3
                  srl          s8, ra, s10
                  auipc        tp, 253418
                  auipc        s2, 103080
                  srai         a1, s8, 18
                  or           a3, s10, s0
                  xori         t2, a4, -1319
                  sra          a0, t5, a7
                  lui          a6, 379040
                  srli         t5, t3, 10
                  add          s3, zero, gp
                  srl          s8, s9, a5
                  srli         s8, s7, 26
                  slli         s6, gp, 14
                  add          a3, a7, s6
                  sltiu        a0, s8, 1113
                  auipc        t6, 475714
                  slti         t3, t5, -1456
                  sll          sp, s2, zero
                  srl          t3, t1, s10
                  auipc        a0, 562936
                  lui          s3, 188880
                  xor          s0, t5, t4
                  addi         gp, s9, 454
                  add          a1, s9, tp
                  srai         t2, t0, 29
                  add          s7, ra, tp
                  sll          zero, t2, t0
                  sltu         t3, a3, s4
                  nop
                  nop
                  sltiu        a3, t3, 1990
                  addi         a6, t2, -996
                  srai         a4, s7, 3
                  sll          s0, gp, a7
                  nop
                  xori         tp, t3, -255
                  sub          a3, a6, a0
                  sltu         t2, a0, tp
                  ori          t3, t5, -1425
                  slli         ra, s0, 11
                  slt          s4, s7, s4
                  nop
                  slli         s11, sp, 19
                  nop
                  lui          t6, 570334
                  ori          s4, a0, -1382
                  srai         t6, s1, 6
                  srli         s2, a7, 12
                  slt          gp, a6, s9
                  sra          s2, t0, t1
                  or           t2, a5, a6
                  srl          a0, ra, t0
                  xor          s0, t6, a5
                  addi         s9, a2, -103
                  or           tp, a0, s4
                  srl          a3, tp, s2
                  or           sp, s5, a0
                  srli         t1, s9, 31
                  srl          a0, gp, t3
                  lui          s3, 875652
                  ori          t5, ra, 1872
                  xor          s3, s11, tp
                  xor          s6, t2, s4
                  slti         t5, t5, -564
                  srli         s9, s2, 20
                  or           s8, s8, s2
                  xori         s8, s2, 1874
                  sra          a5, t6, s5
                  or           a0, t1, gp
                  slt          s9, sp, t0
                  sra          s3, gp, t2
                  xor          s5, a3, s4
                  addi         t2, s0, -866
                  addi         a5, a4, 227
                  lui          t6, 707724
                  srai         zero, t1, 27
                  lui          a7, 753716
                  ori          s5, s4, 8
                  srl          a0, t6, t1
                  and          t6, a6, gp
                  srli         s8, s6, 24
                  auipc        t1, 758094
                  sub          a3, t3, tp
                  slti         s2, zero, -2022
                  lui          a4, 652516
                  sltiu        t3, s0, 1726
                  nop
                  slli         t2, sp, 14
                  auipc        s8, 64095
                  andi         t1, ra, -523
                  sll          t3, a7, s8
                  slti         zero, s2, -295
                  auipc        a5, 447258
                  andi         zero, a0, 274
                  sltu         t0, a4, s8
                  srl          t5, a3, t6
                  andi         sp, s10, -1144
                  sltiu        a3, s0, 1679
                  addi         t3, a6, 1794
                  add          gp, a6, a1
                  andi         s0, s3, 1707
                  auipc        a0, 1013420
                  slt          a4, s0, s5
                  sub          s3, s5, s7
                  andi         t2, a5, -315
                  srli         s11, a2, 11
                  auipc        tp, 426494
                  slti         a7, zero, -1336
                  auipc        t0, 714036
                  ori          s6, a0, 1840
                  sra          s5, a0, t1
                  lui          a4, 387261
                  slli         s3, t2, 25
                  slli         s7, s0, 12
                  sub          s4, tp, t1
                  sub          s5, t0, s10
                  sltiu        a4, sp, -451
                  sltu         t6, tp, zero
                  sub          t0, s9, s4
                  sll          s3, a4, a3
                  lui          s0, 479461
                  srai         s8, zero, 14
                  sub          t3, s5, t5
                  slt          s5, s10, ra
                  or           tp, s2, a1
                  sub          zero, s6, t5
                  slli         a7, ra, 11
                  addi         a0, a0, 1425
                  srai         a1, a7, 27
                  addi         s9, a5, 628
                  slli         a1, t1, 9
                  sra          s2, s0, a1
                  srl          t5, s8, s9
                  sll          t0, s11, t2
                  slli         a3, a5, 24
                  lui          s4, 1045822
                  slt          s0, s3, s9
                  or           s6, t6, s3
                  sltu         t1, t1, a1
                  sltu         s11, t4, a6
                  or           s6, s8, a4
                  slti         s7, s3, -1588
                  and          a4, s6, t6
                  nop
                  srl          gp, s11, s8
                  srl          a3, s11, s0
                  or           t1, s1, s2
                  add          t3, s3, a5
                  sll          sp, a3, a6
                  sra          a2, a3, t1
                  sra          t6, a2, a4
                  srl          a1, s8, zero
                  xor          gp, t5, a3
                  ori          s2, sp, 536
                  nop
                  andi         s5, s0, -1191
                  andi         s5, s3, 172
                  xor          s9, sp, a7
                  nop
                  sll          t1, s6, s0
                  nop
                  xori         a1, s11, 770
                  srl          a2, t6, s9
                  andi         gp, a1, -1104
                  slt          s6, tp, s2
                  slt          a1, t4, zero
                  srai         a0, a1, 4
                  or           s3, s9, a6
                  slti         s0, a1, 301
                  auipc        a3, 984416
                  sub          zero, s11, t6
                  xor          s5, t0, s5
                  or           s3, a6, t6
                  sltu         gp, ra, t3
                  slt          s11, tp, s2
                  sra          s0, a7, a4
                  ori          a0, a2, -1738
                  sltiu        s4, a3, 197
                  ori          a7, a1, -1453
                  sltiu        t3, s7, 898
                  and          s9, t5, s4
                  lui          tp, 895919
                  slt          a0, tp, zero
                  sltu         ra, t5, t5
                  ori          t1, tp, -1769
                  sra          t2, t6, tp
                  slli         s0, t6, 13
                  sll          tp, a6, s7
                  slti         a0, a5, 531
                  srli         a6, tp, 27
                  sub          a6, s6, a4
                  srli         s6, t0, 1
                  sub          t5, t0, gp
                  slt          a4, sp, ra
                  sra          a3, t1, s3
                  nop
                  sltu         s2, s6, a6
                  xori         s0, t1, 1253
                  sltu         a2, t1, s9
                  addi         sp, a1, -795
                  sll          t5, t5, s11
                  xori         s7, s11, 1406
                  and          s9, s11, gp
                  srai         s7, t4, 1
                  xor          a0, a1, t4
                  srl          a4, sp, s9
                  sra          t0, a6, sp
                  sltiu        t6, t5, 1430
                  slli         s9, s1, 26
                  andi         a5, a5, 1888
                  ori          a1, a1, 1381
                  srai         t1, s5, 19
                  srai         a5, s0, 10
                  xori         s7, s9, 1093
                  nop
                  sll          s0, s5, a7
                  add          a0, t0, tp
                  nop
                  xor          a5, t4, s3
                  or           a2, t4, t4
                  ori          a4, sp, -1896
                  sra          s7, gp, s2
                  nop
                  lui          a0, 340686
                  xor          s11, a1, a6
                  sltiu        a7, zero, 606
                  or           s8, a1, t3
                  slt          a2, s9, a1
                  srl          ra, a3, s6
                  sra          a7, a4, ra
                  nop
                  xor          t3, s2, t4
                  auipc        t3, 897972
                  srl          a6, a4, a3
                  or           s2, zero, s6
                  sltiu        s2, a5, -337
                  xor          s8, t0, s2
                  ori          t3, s6, -5
                  srl          t5, t6, s1
                  and          sp, s10, s5
                  xori         gp, ra, 194
                  slli         s8, a2, 4
                  addi         ra, ra, -129
                  auipc        s6, 479815
                  sll          zero, s4, a4
                  lui          s6, 488215
                  xori         a0, a0, 1037
                  sltiu        s8, t0, -675
                  or           t2, t2, a7
                  slt          ra, t6, s0
                  sltu         tp, a1, s10
                  addi         s6, s7, -1251
                  sra          s3, a1, s10
                  srli         s3, t0, 21
                  sra          s2, a4, s8
                  sltu         t5, a5, t0
                  auipc        t2, 253965
                  sltu         s2, a2, s6
                  sltu         gp, s6, t6
                  xor          tp, s1, s1
                  sub          tp, sp, s5
                  sra          t3, s8, a2
                  add          t0, s0, zero
                  sltu         s6, a6, s10
                  and          s4, tp, a6
                  sltu         t1, s8, t6
                  xor          zero, t6, a6
                  xor          a3, a1, s2
                  sltiu        s5, s2, 290
                  srl          sp, s0, a3
                  sub          a4, tp, s6
                  slt          s11, gp, a1
                  sltu         a4, t4, s7
                  xori         a5, s0, -1118
                  sra          t2, t0, s5
                  lui          t3, 24079
                  xori         s6, tp, 248
                  andi         s9, t5, -65
                  slli         s4, tp, 12
                  xori         s4, s0, 232
                  sltu         s7, a5, t2
                  lui          a7, 24553
                  slti         a1, s6, 454
                  sltiu        s8, s1, -764
                  andi         a0, gp, -2006
                  srai         s9, t5, 19
                  slt          s5, a6, s8
                  srai         s4, a4, 27
                  auipc        s5, 43842
                  auipc        a7, 3509
                  sll          s6, t3, t6
                  nop
                  slt          t1, t3, s1
                  sltiu        s0, s0, 631
                  sll          s7, s7, a1
                  ori          tp, zero, -1413
                  xor          t2, t6, s7
                  add          a5, t1, a5
                  lui          s0, 496622
                  slti         t6, a7, 870
                  auipc        s11, 344968
                  nop
                  add          t1, s7, a2
                  srli         s8, s10, 24
                  lui          t5, 974088
                  slli         gp, s7, 23
                  srl          t1, tp, a6
                  ori          t3, a1, 1270
                  srli         a5, s4, 30
                  ori          s9, gp, 1470
                  add          s3, t2, sp
                  ori          sp, t0, -500
                  and          t3, a7, s4
                  srai         t2, s8, 27
                  slli         zero, t6, 13
                  nop
                  sub          s11, t1, s4
                  sub          a1, t3, a0
                  nop
                  addi         s6, zero, -97
                  xori         a2, t3, -1482
                  xor          s4, a7, s7
                  srl          ra, s3, a1
                  slt          a0, s6, a4
                  slti         a3, tp, 899
                  sll          t3, a4, a6
                  xori         gp, t4, -205
                  sub          ra, t0, s7
                  sltu         a5, a5, a6
                  srli         s6, s3, 13
                  sltiu        a3, t6, 1656
                  sub          s0, s10, s11
                  slli         s11, t1, 9
                  and          s9, s10, t4
                  xor          a2, t2, a1
                  sra          s9, tp, s1
                  add          tp, s1, s6
                  srli         t2, t6, 30
                  andi         a4, s7, 464
                  auipc        a0, 790555
                  ori          s8, a4, -163
                  sub          s3, ra, a5
                  srai         s3, a7, 0
                  add          s7, s2, s3
                  srl          t5, t4, a2
                  srai         tp, s4, 14
                  sub          sp, gp, a0
                  srai         t6, s1, 30
                  nop
                  ori          s8, s9, -470
                  xor          zero, t5, zero
                  slt          t6, s4, t5
                  andi         t3, t1, 496
                  ori          a2, t5, -1649
                  srai         a2, a0, 10
                  add          s9, ra, t6
                  auipc        t2, 341306
                  srai         a0, s1, 10
                  or           a6, t5, s6
                  lui          s3, 749735
                  and          t3, a1, s7
                  ori          sp, gp, 1767
                  sll          s11, s0, s0
                  sltiu        t2, s6, -441
                  add          s8, s9, a6
                  add          a5, t1, t5
                  lui          s9, 383962
                  and          gp, s9, s0
                  ori          a3, a3, 1162
                  andi         s2, tp, -147
                  xori         s0, s9, -174
                  sub          sp, s4, s5
                  addi         gp, a0, 1406
                  or           t1, tp, ra
                  xor          s11, a6, s0
                  addi         a2, t3, -285
                  srl          s6, s11, t2
                  andi         s6, a2, 1035
                  xor          s4, s8, a2
                  addi         a2, s5, 1474
                  and          tp, a4, s1
                  nop
                  srl          a2, tp, a3
                  li           s11, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           t0, 0x80000000
                  li           sp, 0x80000000
                  li           a2, 0x80000000
                  li           s0, 0xffffffff
                  li           a1, 0x80000000
                  li           t5, 0x0
                  li           t2, 0x0
                  li           s7, 0x80000000
                  li           s5, 0x0
                  sub          a1, s0, s5
                  auipc        s7, 448773
                  addi         t5, s11, -726
                  add          s11, a2, t0
                  lui          a2, 557397
                  nop
                  addi         t0, a2, -919
                  sub          a2, t0, t0
                  nop
                  auipc        sp, 336135
                  lui          a2, 774835
                  addi         a2, s5, 1615
                  addi         s11, sp, 838
                  lui          s7, 391011
                  nop
                  lui          s7, 840820
                  add          s7, t5, s11
                  add          sp, s7, t5
                  lui          s7, 588708
                  addi         t2, s7, -1043
                  lui          s11, 13151
                  auipc        a1, 64280
                  addi         s7, a1, 412
                  lui          s5, 476859
                  nop
                  sub          t2, s7, a1
                  sub          s0, a1, s0 #end riscv_int_numeric_corner_stream_17
                  srai         a7, s5, 21
                  srl          t5, a2, s1
                  xor          zero, t3, sp
                  or           a5, s8, s3
                  sltiu        zero, s10, 1658
                  or           zero, s10, t4
                  slt          t0, s3, t2
                  or           s4, gp, a1
                  xor          a1, s6, s0
                  srli         s7, ra, 25
                  slli         s7, t3, 6
                  xori         t2, s11, 1949
                  sra          a4, t4, sp
                  add          gp, t2, s4
                  slti         t2, sp, 255
                  sltu         s9, s10, sp
                  addi         a7, a2, -1925
                  xori         zero, s3, 720
                  addi         a1, s4, -501
                  srai         s5, a0, 20
                  sra          tp, s2, t2
                  srai         s2, t3, 25
                  xor          tp, s3, a5
                  sub          a7, a3, a2
                  andi         s4, s7, 725
                  addi         t6, ra, 451
                  slli         a4, gp, 30
                  xor          a5, ra, a6
                  ori          sp, s1, -236
                  sltiu        s0, t6, 937
                  addi         s3, s4, -738
                  sll          a2, a6, s6
                  add          a4, s7, s8
                  xori         t3, s4, 244
                  andi         a0, tp, 1640
                  or           s2, t0, s6
                  srai         s0, sp, 12
                  srl          s9, s9, s1
                  srl          s5, s10, t0
                  addi         ra, a4, 1920
                  srl          s3, s9, s5
                  slt          s2, a2, sp
                  auipc        zero, 280458
                  ori          s0, zero, -1318
                  xor          t5, zero, a4
                  slli         a2, a7, 20
                  srli         s6, s10, 12
                  ori          s5, a0, -1444
                  sub          t1, zero, t3
                  srli         t3, s11, 28
                  addi         a3, t6, -694
                  sub          s0, t1, t3
                  slt          a6, s5, t1
                  slti         sp, tp, -1930
                  addi         a3, t6, 1842
                  ori          s5, t6, -542
                  sll          a7, s0, t6
                  auipc        a4, 523510
                  nop
                  sll          s8, s9, s2
                  xori         gp, a6, -1013
                  slti         zero, gp, -1553
                  nop
                  xori         t6, zero, -560
                  xori         t1, s5, -286
                  sltiu        s3, s1, 2024
                  xor          s2, a1, s8
                  addi         s7, gp, -654
                  sub          s9, a6, t3
                  auipc        a0, 234405
                  sltiu        tp, a2, -1120
                  sltu         s11, a2, s0
                  xori         gp, gp, -1740
                  slt          t2, a5, s10
                  srl          a5, t6, t1
                  and          t2, s2, a7
                  slt          s2, t3, a5
                  srai         s5, t4, 5
                  slti         a1, s3, 1381
                  srai         a2, a4, 23
                  and          s4, gp, t3
                  srai         a6, a1, 6
                  slti         s11, a2, -1334
                  sltiu        sp, a5, -754
                  auipc        zero, 95791
                  xori         s0, t1, -1697
                  andi         gp, t3, 1774
                  xori         gp, t2, -1245
                  addi         t3, s7, -130
                  addi         a0, a5, 483
                  slti         gp, a1, -1235
                  nop
                  nop
                  sll          s3, gp, t0
                  sltiu        a6, s2, 56
                  slli         t3, a3, 1
                  add          a3, t1, t0
                  sra          s8, s6, s3
                  sra          a7, a1, s1
                  auipc        s0, 641167
                  srai         sp, tp, 26
                  srl          s11, t1, a5
                  sltiu        s3, a1, 1531
                  sll          s9, s2, s6
                  sra          sp, a0, s5
                  andi         tp, a1, -138
                  sll          a6, sp, a4
                  auipc        a4, 534989
                  sra          s5, a4, s6
                  xori         a4, s9, -1865
                  xori         zero, a7, -381
                  sra          s5, sp, gp
                  and          sp, sp, a2
                  sltiu        s7, a2, -1072
                  xori         s4, tp, -70
                  sub          a2, t1, t5
                  addi         s7, s2, 1660
                  srli         ra, t5, 9
                  xor          a2, a1, s0
                  slti         s9, t6, 1670
                  xor          a7, t3, s0
                  srli         ra, s5, 21
                  andi         t1, s2, -1186
                  srli         s5, tp, 7
                  sltu         s4, a6, t0
                  add          tp, a0, a6
                  or           t0, s7, s8
                  add          s0, t4, s5
                  sll          sp, a5, a5
                  andi         a6, t5, -1577
                  sltu         a2, t6, s8
                  xor          s3, s3, t3
                  sub          s11, t3, s5
                  or           t0, zero, t5
                  nop
                  add          s5, s2, s1
                  auipc        gp, 529162
                  or           a0, t1, s6
                  slli         t3, s4, 9
                  srl          a1, gp, s0
                  xor          sp, a0, s0
                  slt          s8, t4, t5
                  srai         gp, a5, 22
                  add          s7, s11, s0
                  xori         s8, t5, 1848
                  srai         s4, t0, 5
                  sub          s11, s8, t4
                  sltiu        t5, t2, 760
                  sltu         s0, s2, sp
                  andi         s3, s9, 808
                  sub          s0, s10, t6
                  srli         a1, t5, 21
                  xor          s8, t3, a2
                  sub          a5, s10, a0
                  srl          a6, t6, t0
                  lui          s4, 984007
                  sltiu        s3, s11, 1496
                  sub          s11, t4, a4
                  andi         s2, a4, -1813
                  sll          t0, t2, ra
                  or           s8, ra, gp
                  addi         s2, t5, 749
                  slt          s3, a1, t4
                  add          s0, a5, a7
                  sll          a5, s11, a0
                  srli         t0, a2, 23
                  nop
                  slt          t1, s10, s0
                  ori          s8, a1, 84
                  or           a6, sp, t6
                  add          t3, a7, a4
                  and          a4, s6, t6
                  sra          a1, gp, a6
                  sub          t1, zero, t3
                  andi         t0, a3, 1508
                  srl          t0, s10, s11
                  sltu         gp, sp, s10
                  or           tp, sp, t6
                  addi         t1, s8, -1087
                  addi         s0, s3, -1905
                  andi         gp, s10, 1425
                  xor          a5, a1, ra
                  sra          a2, s4, s1
                  slli         a2, zero, 6
                  sub          tp, s4, t4
                  and          zero, s7, t4
                  add          s0, a2, s6
                  sll          a6, t0, zero
                  sll          sp, s6, zero
                  or           t3, s6, t4
                  add          t1, s3, a0
                  slt          a7, s1, s8
                  lui          s6, 287889
                  sub          s8, s9, a0
                  srai         t2, s0, 4
                  xor          t1, t3, s7
                  add          s7, a5, a2
                  sltu         a5, s7, a3
                  sra          s8, a5, t2
                  xor          s5, tp, gp
                  srl          t6, a6, zero
                  xor          a7, s5, gp
                  ori          a6, s4, -1472
                  srl          a0, t3, s3
                  sltiu        a0, s11, 1237
                  srai         tp, sp, 14
                  auipc        a5, 562871
                  sltu         s4, t0, a7
                  add          ra, t2, s7
                  sra          a3, t3, s2
                  slt          t0, s9, a2
                  lui          a1, 176036
                  addi         a0, s2, 1415
                  addi         a2, s2, 1754
                  lui          sp, 159167
                  srli         t5, a5, 17
                  slt          a6, a0, s9
                  sra          t3, s6, a4
                  ori          s4, tp, -1678
                  sub          s9, s7, s7
                  xor          t6, tp, t4
                  slti         s3, t3, -41
                  auipc        ra, 410682
                  nop
                  slti         a3, ra, -1016
                  andi         a3, s6, 41
                  auipc        a5, 400040
                  slli         sp, s8, 10
                  addi         s7, a6, -1389
                  sll          s6, t3, sp
                  srai         a3, s7, 12
                  sltiu        s4, s4, 1902
                  sltu         s8, t0, a2
                  srai         s11, t6, 9
                  slti         a6, a4, 1279
                  auipc        s5, 885813
                  sra          tp, a3, s0
                  add          t3, ra, ra
                  slt          t5, sp, a1
                  slti         a5, tp, 715
                  nop
                  slli         tp, t4, 11
                  or           t6, a7, tp
                  slt          s8, a5, s0
                  lui          a6, 995815
                  and          t3, t5, tp
                  srai         a6, s6, 19
                  sra          a4, s2, t6
                  ori          ra, a7, 2012
                  andi         s4, sp, -1101
                  auipc        s8, 424676
                  srai         gp, s11, 27
                  sra          gp, s0, a3
                  lui          s6, 791050
                  add          s8, a5, t6
                  slt          a6, t2, s5
                  sll          ra, gp, s7
                  xori         s11, a3, 628
                  srli         ra, s4, 17
                  andi         s7, a3, 923
                  sltiu        a1, s9, -1538
                  sll          t6, s5, s5
                  sltiu        tp, s6, 1738
                  srli         a6, tp, 17
                  addi         t2, s4, -1613
                  andi         t0, a4, -413
                  sub          s11, t4, a0
                  srai         s3, gp, 10
                  sltu         s8, s9, ra
                  lui          t6, 23851
                  sltiu        a0, a6, -1638
                  slli         ra, t3, 23
                  lui          a6, 165649
                  ori          s5, s1, -390
                  ori          t1, t1, 1775
                  addi         a2, s9, 1605
                  sll          ra, zero, s4
                  xor          gp, t1, a1
                  sll          s6, s4, a0
                  srli         t5, t1, 15
                  ori          t6, t0, -972
                  xori         gp, s11, -1273
                  add          t5, t6, s9
                  sltu         a2, s6, s8
                  srli         s0, sp, 9
                  addi         a6, t1, -1583
                  slli         a2, s1, 21
                  andi         s7, t3, -1951
                  sra          t2, a0, a0
                  add          a7, s9, t5
                  addi         gp, gp, -1658
                  and          a3, gp, a5
                  ori          s0, s3, 1340
                  and          t2, a4, gp
                  ori          s8, tp, 1632
                  srl          a1, a6, zero
                  sltiu        a1, t3, 1137
                  add          s5, tp, s5
                  srai         ra, a4, 4
                  sll          t6, a3, s7
                  srl          t5, a0, s2
                  xori         s6, s7, 708
                  and          s3, t6, t6
                  or           s11, a4, s10
                  add          t5, a6, s1
                  or           ra, a0, t2
                  srl          s5, t1, s0
                  srai         s3, a7, 22
                  srli         s5, t3, 22
                  srai         ra, s8, 1
                  or           s5, s7, t1
                  sltu         a3, t3, a3
                  nop
                  sll          a2, ra, a4
                  add          ra, zero, t0
                  slli         s6, s11, 18
                  sltiu        s2, s2, -1466
                  slti         t3, a3, 799
                  slli         t3, t4, 19
                  and          s11, t6, s8
                  or           sp, a1, s3
                  auipc        a7, 86584
                  slli         zero, t3, 21
                  sra          t6, t5, zero
                  srl          s8, s1, a5
                  xori         s7, s1, -1140
                  srl          s4, t1, s2
                  add          s9, zero, zero
                  sra          a2, t4, t1
                  slti         s0, gp, -11
                  add          sp, t3, s2
                  ori          t6, t1, -320
                  lui          zero, 455021
                  auipc        s2, 390654
                  slti         gp, a6, 1566
                  or           a2, a5, s1
                  andi         a0, s11, 1435
                  nop
                  auipc        t2, 358614
                  ori          tp, s10, -1586
                  srli         t0, t1, 6
                  xori         t1, a7, 1583
                  or           s2, s8, t4
                  sll          a4, t4, ra
                  ori          a3, t1, -307
                  addi         a5, t3, -1952
                  or           s0, a5, s8
                  or           s7, gp, a2
                  srai         s3, a1, 10
                  xori         s5, t5, -680
                  andi         t0, s0, 1129
                  sltu         t2, a3, t1
                  andi         t0, s4, -1835
                  nop
                  xori         s9, s0, -764
                  addi         tp, a4, -558
                  addi         a7, t5, 1205
                  xori         t5, ra, 1763
                  sll          a4, s6, a1
                  lui          s9, 294866
                  slli         a0, s2, 11
                  add          zero, ra, ra
                  srli         s8, t3, 8
                  add          a5, s0, s3
                  sub          a7, a1, a5
                  srl          t5, tp, s7
                  slli         a1, a4, 4
                  sltu         a6, t5, a5
                  slli         a3, a4, 0
                  nop
                  lui          a1, 71046
                  and          t0, tp, a4
                  sra          zero, t1, s4
                  auipc        s5, 624462
                  slt          sp, s6, s10
                  addi         t1, s0, 886
                  sll          a2, sp, s3
                  nop
                  add          s8, a0, gp
                  nop
                  ori          t2, t2, -1875
                  sltu         a1, a6, s9
                  xor          ra, tp, a4
                  xori         a0, s5, -1876
                  sll          s0, s0, t1
                  sra          gp, a2, a6
                  sra          a0, a0, t0
                  lui          t6, 35229
                  lui          s3, 52684
                  sll          sp, a5, a6
                  auipc        a3, 593233
                  slli         ra, t6, 13
                  xori         sp, t3, 192
                  slt          tp, t3, t0
                  and          t5, t2, s4
                  andi         ra, t6, -488
                  or           t2, s9, a6
                  sra          s3, t4, s10
                  and          a3, t3, t3
                  add          gp, s8, s1
                  sra          s3, s9, a6
                  slli         sp, a5, 22
                  xor          s9, s3, ra
                  srai         gp, s0, 22
                  srli         s3, s8, 20
                  addi         ra, t4, -1798
                  sub          s5, ra, s11
                  andi         s7, a0, -1720
                  slli         t5, s9, 27
                  sltu         ra, s3, t4
                  srl          s7, s9, zero
                  ori          zero, a1, -332
                  lui          zero, 1003785
                  ori          gp, s11, -1549
                  sub          sp, a1, a6
                  xori         s8, s1, -389
                  auipc        a5, 35480
                  srai         a5, a0, 15
                  sll          sp, t1, a5
                  slti         gp, s3, 283
                  srli         t1, a7, 22
                  xor          s4, a4, s1
                  slti         t6, t5, -781
                  nop
                  srai         a6, s3, 31
                  slti         s7, a7, -542
                  xori         s6, a5, 375
                  lui          s7, 296600
                  lui          sp, 233021
                  lui          s0, 414023
                  srai         s9, gp, 1
                  and          s6, tp, t4
                  srl          t1, s1, t2
                  or           zero, t0, t1
                  sltu         a7, ra, t4
                  or           sp, a7, a3
                  slt          t5, a1, a0
                  slti         s8, s1, 1032
                  addi         zero, sp, 911
                  sub          ra, a3, t0
                  and          t1, s1, t2
                  sltu         sp, s4, s1
                  slt          t2, t1, s11
                  slt          t1, s11, s1
                  slti         t2, sp, -187
                  slli         ra, t1, 7
                  or           t2, gp, t5
                  sltu         tp, t6, s3
                  xori         ra, a6, 605
                  slti         s6, a6, -1232
                  slti         t2, a5, 562
                  addi         s3, a2, -430
                  srli         s6, s0, 31
                  add          t3, gp, s3
                  sub          t0, gp, s8
                  slli         t0, s8, 31
                  sll          s6, s7, s10
                  lui          s4, 855551
                  slli         s0, a1, 29
                  lui          s2, 786913
                  addi         s4, a1, -1745
                  xori         a6, ra, -567
                  sltu         a3, s10, t5
                  addi         s7, t5, -875
                  srai         s6, s1, 2
                  or           a1, t1, a7
                  lui          s11, 133285
                  xor          s7, a7, s11
                  and          gp, s9, s11
                  slli         s11, s6, 24
                  xori         a2, t5, 1467
                  andi         sp, t3, -1224
                  sltiu        t6, t3, -1358
                  srli         a2, a7, 0
                  xori         s8, t0, 624
                  srl          a4, s3, t6
                  or           a4, t2, s7
                  xori         s6, t0, -29
                  lui          s6, 5153
                  sra          s9, s6, gp
                  lui          s0, 127224
                  xor          a7, s8, a1
                  andi         t5, a0, -1344
                  sra          s2, s7, t1
                  addi         t0, a7, -842
                  auipc        a4, 1022959
                  ori          s6, s1, 932
                  srli         s9, s2, 28
                  sll          s9, s5, t4
                  sltu         s0, a0, a4
                  ori          a3, t1, -690
                  lui          s3, 844717
                  addi         a0, t1, 1974
                  sra          a7, a5, ra
                  andi         t5, t0, 2012
                  sra          sp, s0, s3
                  sll          s3, s4, ra
                  add          sp, s8, s5
                  andi         t1, a1, 1079
                  add          t3, t3, a2
                  xor          tp, zero, ra
                  auipc        s3, 10731
                  slt          a0, t0, t6
                  ori          ra, t0, -531
                  nop
                  and          s6, s9, s3
                  slt          a5, s6, s5
                  sra          t2, a3, s4
                  srli         a2, a7, 13
                  sltiu        a4, s10, 1069
                  nop
                  ori          a1, s9, -160
                  nop
                  nop
                  auipc        s11, 6048
                  srai         t0, gp, 15
                  sltiu        a0, s4, 1070
                  andi         s8, t0, 1641
                  and          s4, t3, t0
                  slt          a6, s7, a0
                  or           t1, t6, t3
                  andi         s3, s11, -1657
                  sra          t2, a3, t0
                  and          zero, t0, s9
                  nop
                  sltiu        s8, s0, -719
                  ori          s7, a3, -1192
                  srli         gp, t0, 0
                  srli         t6, a4, 9
                  sra          t0, s9, s3
                  slti         s9, a7, -980
                  sltu         sp, a2, s7
                  slli         a7, t4, 30
                  lui          tp, 64662
                  nop
                  sll          a1, t1, t3
                  ori          a2, a5, -1949
                  auipc        zero, 658126
                  srl          t6, s6, sp
                  and          t5, t2, t3
                  add          s11, t4, t3
                  andi         a0, a4, 2019
                  sll          zero, tp, t4
                  srai         ra, t0, 28
                  sll          a2, t0, t2
                  add          s2, zero, sp
                  nop
                  srl          s9, s4, s1
                  sll          a6, a6, t4
                  lui          sp, 765723
                  and          a3, a5, tp
                  sll          s11, gp, s9
                  auipc        tp, 170790
                  lui          a3, 561732
                  slti         t5, gp, 486
                  add          a1, a0, s4
                  slli         a3, a2, 3
                  srl          s4, t6, a7
                  xori         t3, s10, -1049
                  addi         ra, s10, -1713
                  slt          s2, a6, s0
                  addi         a4, a7, -722
                  auipc        a4, 1014846
                  srli         s6, s2, 25
                  or           a2, t4, a1
                  srli         t0, a4, 25
                  slti         t3, a7, -1686
                  slli         t2, a0, 23
                  nop
                  sll          a7, s1, a4
                  ori          t1, t2, -780
                  nop
                  sll          a0, s9, s7
                  andi         a4, t4, 491
                  nop
                  srli         a0, t0, 21
                  sra          sp, ra, a5
                  add          s2, s3, zero
                  auipc        a4, 836001
                  or           s4, a6, gp
                  auipc        s2, 1035089
                  slti         a0, sp, 686
                  slt          s4, t3, a7
                  srai         zero, a4, 6
                  slti         s2, a0, -854
                  nop
                  slt          t1, s11, s4
                  addi         s3, t3, -1908
                  sra          s7, a3, s6
                  or           t5, a3, gp
                  or           t0, s8, s1
                  sra          s2, t4, a2
                  slli         t3, t3, 16
                  sltiu        a5, s6, 1849
                  nop
                  xor          s4, t6, s4
                  auipc        t6, 568206
                  auipc        a7, 294782
                  slli         gp, gp, 29
                  addi         a5, t3, 754
                  slti         a7, s6, 91
                  nop
                  andi         t3, s3, -1453
                  auipc        t3, 844201
                  lui          t2, 791079
                  ori          s3, s9, 328
                  andi         a7, a2, 172
                  slt          t5, s5, s11
                  srl          ra, t5, zero
                  auipc        s6, 784871
                  or           a7, t4, t1
                  sltu         a1, t1, a0
                  xor          a2, s2, t1
                  addi         s6, s3, -1177
                  srl          s11, a5, a5
                  srli         t0, a1, 16
                  nop
                  slt          s8, a0, a2
                  xori         a5, s2, 1792
                  and          gp, s4, s6
                  sltiu        s2, s4, 768
                  sltu         a2, zero, t0
                  lui          a3, 260046
                  slti         t0, a5, 1804
                  lui          s11, 440163
                  sltu         a7, t6, t4
                  slli         s6, zero, 17
                  slli         s6, gp, 17
                  ori          t3, s6, -1925
                  xor          zero, a1, s4
                  srli         t1, s5, 8
                  sra          zero, s4, t1
                  xor          t5, t0, s8
                  ori          t6, s2, 794
                  xor          ra, s4, t3
                  auipc        s3, 653106
                  sll          t0, a7, s10
                  sltu         a5, a4, s1
                  srai         t1, a7, 12
                  nop
                  srli         t0, s8, 22
                  ori          a7, s11, 15
                  auipc        tp, 693591
                  lui          s0, 863509
                  auipc        a7, 656238
                  srai         a0, a3, 12
                  sub          gp, s4, t4
                  slli         s9, a2, 12
                  sltu         gp, s7, a2
                  andi         s8, s0, -118
                  srl          s0, t5, a3
                  xori         gp, a5, -90
                  sub          t2, t5, ra
                  and          s9, t3, gp
                  sub          t2, s10, a5
                  lui          t2, 705056
                  addi         a2, s9, 220
                  and          sp, s7, s2
                  slt          t5, s1, s1
                  addi         t1, t0, -1193
                  xori         t2, s9, -402
                  xori         t3, s7, 1599
                  xor          tp, s9, s2
                  ori          tp, zero, 1679
                  auipc        s6, 9022
                  add          a4, a4, s4
                  nop
                  lui          sp, 327177
                  slli         s6, t4, 10
                  sltiu        tp, zero, 983
                  slli         a2, s2, 25
                  add          s7, a3, a0
                  slt          s0, a6, t4
                  ori          t5, t6, -993
                  srai         gp, zero, 17
                  sub          t3, a0, a6
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           sp, 0x95377473
                  li           a2, 0x80000000
                  li           t1, 0x80000000
                  li           s8, 0x80000000
                  li           t0, 0x0
                  li           a7, 0x0
                  li           s0, 0xffffffff
                  li           s2, 0x37bc0bc1
                  li           gp, 0x0
                  add          a7, a7, s0
                  sub          t0, a7, t0
                  nop
                  nop
                  nop
                  auipc        t1, 840972
                  add          gp, a2, t1
                  addi         sp, gp, -1498
                  addi         s0, t0, -1593
                  add          gp, s8, s0
                  add          t0, gp, t0
                  add          t0, s0, gp
                  lui          a2, 975768
                  add          a5, s0, a5
                  add          gp, s2, s0
                  sub          sp, a5, a7
                  addi         sp, t0, 1287
                  add          a7, a2, sp
                  lui          sp, 937705
                  lui          s8, 265065
                  nop
                  add          s2, s8, s2 #end riscv_int_numeric_corner_stream_18
                  sltu         s6, ra, t5
                  sltu         t0, a2, a5
                  auipc        a4, 29778
                  sub          zero, a6, s11
                  sltiu        s7, sp, -473
                  addi         a0, s0, 716
                  ori          s9, s10, -423
                  ori          tp, s10, 860
                  xori         a6, s9, -1323
                  srl          s0, sp, ra
                  sll          gp, a6, zero
                  srl          tp, t6, a7
                  sltu         zero, s9, ra
                  add          t1, t1, gp
                  auipc        t6, 632235
                  add          a2, sp, a1
                  slt          t3, sp, t4
                  srl          a1, tp, t3
                  sub          a3, a6, a7
                  addi         a4, s3, -201
                  sub          ra, s10, a6
                  or           tp, t6, a1
                  auipc        ra, 122895
                  addi         gp, s3, -229
                  srai         gp, s9, 11
                  slli         t6, s6, 24
                  slt          t3, t5, a7
                  sll          zero, t0, a1
                  nop
                  xor          t5, a3, sp
                  slt          a5, sp, a1
                  sub          gp, s3, s2
                  lui          a1, 978796
                  ori          t5, s5, 1938
                  andi         ra, t5, -1509
                  xor          a6, a3, a7
                  sra          t2, s2, a3
                  sra          t6, ra, a7
                  srl          s6, s10, a0
                  or           s0, s9, t0
                  slli         t3, t0, 8
                  slli         s9, a0, 6
                  sra          a6, s11, s7
                  andi         s0, s7, 964
                  and          t1, s4, t4
                  slli         t6, tp, 30
                  sll          s3, a0, s8
                  xor          a3, sp, s8
                  and          t1, s10, zero
                  ori          tp, s7, 367
                  or           a5, a0, s3
                  slt          a5, s4, sp
                  addi         gp, s9, 1855
                  addi         a4, s5, 839
                  srli         ra, a4, 28
                  xor          t6, ra, tp
                  xor          a0, t5, ra
                  auipc        t6, 600672
                  lui          a1, 929905
                  sub          ra, s1, s0
                  and          a7, t6, s6
                  xor          a3, s8, s7
                  ori          a2, s9, -240
                  auipc        tp, 394187
                  slt          zero, ra, s4
                  nop
                  or           sp, t5, s2
                  nop
                  srl          a1, s6, s5
                  addi         t1, a3, 32
                  nop
                  slt          gp, s8, sp
                  srai         t3, s10, 22
                  xor          ra, t3, s2
                  sltu         s0, a6, t0
                  srli         t5, s7, 12
                  add          a3, t1, a5
                  add          t0, a2, t3
                  nop
                  slli         a4, gp, 6
                  add          t3, t2, sp
                  or           t1, tp, s6
                  srl          a0, t3, sp
                  xor          s2, s6, a5
                  sra          t2, sp, s7
                  xor          s8, tp, a4
                  sltiu        a6, s10, -1159
                  xor          s3, ra, s8
                  xor          s8, s0, a0
                  sra          a0, s6, s9
                  ori          s4, a2, -1172
                  sll          t1, s4, a4
                  or           t3, t3, ra
                  addi         t5, t2, 49
                  andi         s0, s7, 1098
                  srl          s3, s0, a0
                  or           s7, a5, s1
                  srai         ra, s11, 17
                  xor          gp, a0, t1
                  addi         s3, t4, 653
                  srli         a2, zero, 14
                  xor          t5, tp, s10
                  xor          s8, t6, a1
                  sra          a7, a5, s0
                  srl          sp, t2, a0
                  slt          a4, t4, zero
                  ori          s9, a1, 298
                  slli         s5, a7, 30
                  and          a3, zero, t3
                  srl          s9, zero, a1
                  slti         a1, s10, 847
                  andi         t1, s4, 717
                  ori          a4, s6, 732
                  xor          tp, s2, tp
                  srai         tp, t4, 23
                  add          t5, s4, ra
                  or           t3, t0, s2
                  sll          s11, a4, s0
                  and          s9, s0, a6
                  addi         gp, a4, 1293
                  ori          s11, t3, -916
                  andi         s0, t5, 803
                  sub          t5, s10, s4
                  add          a2, a4, zero
                  sll          a7, t5, a4
                  sltiu        zero, t6, 613
                  auipc        s6, 578846
                  slti         s0, sp, -800
                  srai         s6, a5, 2
                  srli         s8, gp, 27
                  srai         a4, s5, 10
                  xori         a2, s9, 485
                  srai         s8, s1, 5
                  nop
                  nop
                  auipc        s7, 405873
                  and          t6, s4, s1
                  lui          t5, 335148
                  and          s8, t2, t4
                  sltiu        gp, s11, 1643
                  srli         t2, tp, 23
                  xori         sp, gp, -579
                  srl          ra, t6, sp
                  srai         a1, gp, 29
                  srl          t6, s10, a7
                  add          a3, s10, s7
                  srl          s8, s1, sp
                  xori         s2, t1, -1988
                  sll          s7, sp, gp
                  ori          a5, zero, 2000
                  andi         ra, s1, -1440
                  sub          s0, a7, t0
                  slli         gp, ra, 13
                  sltu         t1, t4, a3
                  xor          zero, s10, s3
                  xor          tp, s11, s10
                  sltiu        a6, s0, 485
                  xori         a5, s2, -1988
                  slli         zero, s7, 12
                  slli         zero, sp, 24
                  sltiu        a3, t2, 900
                  add          a6, s8, s1
                  sltiu        s6, a5, -531
                  slti         a7, ra, 1654
                  nop
                  lui          ra, 838929
                  slti         s4, tp, -628
                  xori         a0, s5, 649
                  addi         t2, s7, 643
                  srli         s7, s4, 21
                  sub          t3, s0, a4
                  nop
                  addi         t6, s1, -1696
                  slti         t2, s4, 1866
                  add          a0, sp, a6
                  srl          t2, s6, s7
                  addi         t6, t0, 1653
                  sltu         s9, ra, t5
                  srli         s2, s8, 8
                  slli         s2, t0, 8
                  sub          a1, s3, s10
                  sltiu        sp, s11, 1826
                  and          ra, s7, t1
                  auipc        t2, 833689
                  slti         gp, t3, 984
                  slli         s2, s4, 15
                  sltiu        sp, a1, 1388
                  slli         a0, s2, 2
                  slti         t3, s2, 809
                  sltiu        s6, s6, -1150
                  srl          s4, s9, a7
                  srai         a1, t2, 25
                  andi         a6, t6, 1449
                  srai         a7, t3, 4
                  srl          t1, sp, t1
                  srai         s8, t4, 9
                  and          s8, zero, s10
                  sll          a3, s8, s4
                  slt          s6, a2, s0
                  srl          a5, a2, a6
                  ori          s5, a4, 1308
                  sra          a4, s2, s0
                  ori          tp, s3, -73
                  or           a7, t4, a3
                  slti         s0, s11, -1333
                  srai         t2, s9, 18
                  slt          a2, a2, s3
                  auipc        s5, 778908
                  nop
                  srai         tp, t2, 0
                  lui          s6, 1007069
                  slli         t5, s9, 3
                  xori         ra, zero, 1459
                  srli         s2, a2, 19
                  nop
                  andi         a1, sp, 763
                  addi         t1, s0, -1662
                  addi         gp, s7, -1372
                  sltu         s0, s7, a5
                  slt          a1, gp, s4
                  ori          a3, s8, 1127
                  srl          gp, s2, a3
                  slli         s6, sp, 19
                  ori          s9, s11, -1242
                  srai         t3, a4, 25
                  add          gp, a2, t5
                  lui          a2, 770304
                  sll          s5, s1, s10
                  or           s5, tp, s8
                  sltu         a1, t6, s6
                  andi         a5, s7, 204
                  lui          a3, 489047
                  ori          a7, a6, 274
                  srai         ra, s6, 31
                  ori          s11, s3, 1912
                  or           s4, zero, s6
                  sltiu        sp, zero, 1888
                  srai         t2, s6, 27
                  slt          a2, t0, s6
                  slli         s2, a7, 23
                  xor          a3, s8, t3
                  srli         a3, s9, 29
                  srai         s8, a6, 0
                  and          a6, t2, s1
                  slti         s11, t6, -226
                  or           a3, s5, s11
                  srl          s11, a3, ra
                  auipc        t0, 745165
                  srai         a5, t3, 31
                  slli         tp, sp, 9
                  lui          s6, 577579
                  xori         ra, s8, -1486
                  slli         s8, tp, 14
                  xor          s0, s4, s9
                  auipc        gp, 255947
                  add          a3, t2, s9
                  auipc        s11, 335341
                  xori         s6, a7, 777
                  xori         t1, s4, -1191
                  xor          s11, a6, s9
                  ori          t0, s9, 1900
                  or           s11, t5, t3
                  sub          gp, t3, s1
                  nop
                  slti         s8, t1, 903
                  sll          t6, s1, s3
                  ori          a0, s0, 187
                  sra          s0, tp, s1
                  srai         s11, s2, 2
                  or           t5, s4, t6
                  auipc        t0, 688285
                  srl          tp, a6, s6
                  srli         a7, s2, 14
                  slti         s0, a5, 149
                  xori         s8, s11, -568
                  slti         t3, s10, 511
                  xori         s2, a7, -77
                  sra          t6, a1, s1
                  srl          a2, s2, sp
                  xori         ra, tp, 946
                  add          t3, s1, s11
                  xori         s8, s0, -1256
                  srl          t1, s7, s6
                  add          s6, s6, zero
                  sltiu        a6, gp, -554
                  slti         t0, s7, 1470
                  addi         s4, zero, 1932
                  nop
                  slt          a2, s9, s0
                  andi         zero, t5, 1971
                  sll          zero, a1, t6
                  add          gp, ra, s10
                  xori         s11, s11, -716
                  or           zero, t0, a1
                  andi         t0, tp, 1415
                  ori          s6, t1, -1493
                  srli         tp, tp, 15
                  sltu         s3, tp, s8
                  or           s4, a3, t3
                  auipc        a7, 408078
                  sltu         t6, a7, tp
                  ori          s9, s5, 1863
                  or           a7, t1, s10
                  add          t1, sp, s10
                  nop
                  sltu         tp, t4, s10
                  srai         a1, t2, 4
                  xor          s5, a1, t3
                  or           t5, a1, a5
                  sra          s5, s4, zero
                  srai         s4, s6, 15
                  srl          s2, s2, a5
                  lui          tp, 420753
                  sll          s6, s9, s2
                  xor          a6, s5, t2
                  sra          s2, s3, s2
                  slti         a0, a5, -118
                  xori         s2, a1, 1954
                  sll          a3, a0, s8
                  ori          zero, s1, 1916
                  sltiu        a6, a2, -544
                  xori         s8, s3, 1511
                  slti         s7, a4, 1403
                  addi         t3, t2, -1264
                  srli         a7, s11, 0
                  lui          a3, 57033
                  xori         s4, a3, -1104
                  lui          s9, 234380
                  sra          a5, t4, tp
                  lui          a2, 974576
                  srli         t6, a2, 4
                  ori          s8, a2, 442
                  ori          a5, s10, -1548
                  ori          t1, ra, 1654
                  addi         s6, a7, 598
                  sll          s4, s4, gp
                  lui          a0, 485876
                  ori          s5, s6, 914
                  srai         s2, s6, 4
                  add          s2, s8, a1
                  add          s11, tp, t0
                  srai         a7, s11, 2
                  ori          a0, t6, 173
                  andi         gp, a5, 1522
                  addi         s4, t6, -1976
                  slti         t0, sp, 1719
                  or           s9, a4, t1
                  auipc        s2, 280149
                  slti         s9, s6, 1226
                  addi         s8, t0, -1055
                  sltu         a2, s1, s11
                  slt          a4, t1, a5
                  srai         s8, a0, 2
                  sltu         s11, sp, ra
                  nop
                  andi         s3, a6, 1374
                  sub          s8, s0, gp
                  slli         tp, zero, 7
                  addi         t2, a4, -1638
                  addi         t1, a7, -1118
                  lui          a1, 944965
                  ori          t0, ra, 674
                  srli         gp, s4, 2
                  xor          a6, t0, tp
                  or           a1, a2, tp
                  slti         ra, a1, -424
                  ori          a2, s5, 749
                  add          t1, sp, a3
                  slli         t1, sp, 29
                  lui          s9, 451199
                  sltu         a6, s10, a0
                  srl          s9, a0, t1
                  sll          a3, a7, a0
                  nop
                  andi         a2, a5, 412
                  srai         a2, t6, 13
                  srli         a3, s9, 16
                  andi         s11, s0, -1940
                  sub          a5, t5, t4
                  lui          a6, 280639
                  sra          a1, a5, a5
                  slt          s0, s0, a4
                  sltiu        s11, a1, -1863
                  xori         sp, a0, 666
                  sra          a7, t5, a6
                  slti         a5, tp, 1007
                  xori         gp, gp, -1078
                  sra          a6, s7, a2
                  slt          t6, s6, a3
                  or           s4, t6, t0
                  sltiu        s6, a3, 1083
                  add          t5, t3, s11
                  lui          t2, 334272
                  add          s0, s9, s8
                  sub          tp, a1, t3
                  srai         s2, a0, 6
                  lui          s9, 985813
                  lui          s11, 323299
                  srl          a6, a7, ra
                  nop
                  auipc        s6, 703622
                  slt          t2, t4, ra
                  slli         zero, s2, 6
                  ori          s8, a2, 1084
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           s6, 0x0
                  li           s9, 0x80000000
                  li           a2, 0x56ad3cbc
                  li           gp, 0x80000000
                  li           s3, 0x80000000
                  li           t6, 0x1d9867f3
                  li           t5, 0x0
                  li           a4, 0x80000000
                  li           s11, 0x29440f5c
                  nop
                  auipc        tp, 401899
                  nop
                  lui          s11, 468931
                  nop
                  auipc        tp, 624657
                  auipc        a4, 916694
                  auipc        a2, 426335
                  auipc        s6, 161609
                  nop
                  sub          a2, a4, gp
                  addi         s9, a4, -51
                  addi         t6, s9, 461
                  lui          a2, 672263
                  addi         t5, t5, -547
                  sub          s3, tp, s3
                  add          gp, tp, a4
                  nop
                  nop
                  lui          s3, 393612
                  lui          s11, 815776 #end riscv_int_numeric_corner_stream_19
                  auipc        gp, 651487
                  srli         s4, a6, 17
                  srli         s2, a3, 3
                  sltiu        s4, a2, 369
                  or           s9, s11, a1
                  srai         a3, a0, 22
                  xor          a3, a2, a2
                  slt          a1, t0, t0
                  sub          a7, s8, gp
                  or           s6, sp, t0
                  srli         t5, s8, 29
                  srli         s4, a7, 3
                  addi         a6, t3, -1082
                  sltiu        s7, a5, -716
                  sll          s6, t5, t2
                  nop
                  slli         s8, s8, 31
                  add          ra, a3, tp
                  xor          a6, tp, s1
                  nop
                  or           s6, s0, s0
                  nop
                  addi         a6, a4, 1193
                  lui          a4, 466594
                  sra          s9, s5, s4
                  sltu         a1, t6, ra
                  srli         sp, a4, 0
                  lui          ra, 1098
                  xori         t1, s11, -965
                  slti         s8, a3, -1040
                  auipc        a7, 845122
                  add          a1, s0, a2
                  srl          a6, a7, s8
                  and          a4, s11, gp
                  lui          tp, 846313
                  srai         a5, sp, 27
                  sra          s4, s2, t0
                  xor          a7, t1, zero
                  sub          tp, a3, ra
                  srl          t3, a3, t0
                  slt          zero, t3, a0
                  lui          s7, 168485
                  sll          s8, a5, s3
                  sltiu        s0, tp, -712
                  slti         tp, s7, 899
                  srai         t3, a2, 23
                  andi         s11, sp, -659
                  srai         s6, zero, 22
                  andi         s4, sp, 1366
                  xor          a5, tp, gp
                  sra          s4, zero, s0
                  slli         t3, t6, 28
                  sra          s9, s10, ra
                  and          s8, gp, a2
                  srli         s6, t4, 28
                  slti         s11, a4, 1304
                  sltiu        a4, sp, -1643
                  auipc        t5, 721235
                  nop
                  addi         tp, zero, -966
                  and          ra, s9, t2
                  sltu         s4, s11, s0
                  xori         t2, zero, -119
                  slli         t6, a5, 0
                  srl          ra, s4, s4
                  sltiu        a4, a7, 470
                  or           sp, s0, a6
                  andi         t5, a6, 1353
                  nop
                  sltiu        t2, t2, -555
                  slli         s0, t6, 27
                  sub          a7, a2, gp
                  add          s5, s0, a7
                  auipc        a7, 363084
                  xori         a6, a0, 1947
                  slti         s2, t3, 102
                  auipc        t1, 133427
                  ori          a2, sp, 1631
                  sra          s5, s0, t2
                  xor          s7, a5, a4
                  auipc        sp, 117373
                  nop
                  li           gp, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           a3, 0x80000000
                  li           t6, 0xc13643c2
                  li           a1, 0xffffffff
                  li           s7, 0x0
                  li           ra, 0xffffffff
                  li           s2, 0x0
                  li           t0, 0xffffffff
                  li           s4, 0x80000000
                  li           t5, 0x80000000
                  add          s4, a1, a1
                  nop
                  auipc        s2, 512278
                  nop
                  add          a3, t6, t0
                  lui          t6, 414272
                  auipc        t5, 818675
                  nop
                  nop
                  add          gp, ra, s4
                  addi         t0, s4, 96
                  lui          t0, 249813
                  add          gp, gp, t0
                  auipc        s4, 585266
                  addi         gp, a1, -74
                  nop
                  add          t6, s4, a3
                  sub          s4, a1, s4 #end riscv_int_numeric_corner_stream_15
                  and          t1, ra, a7
                  sll          s9, s7, tp
                  srli         gp, s2, 24
                  lui          s0, 785112
                  and          t5, t3, t2
                  sra          t2, a4, a6
                  sub          a5, t4, a0
                  or           a2, a6, a5
                  sltiu        s11, t5, -1779
                  xor          a1, s9, a7
                  ori          s8, ra, 914
                  add          a5, t5, s6
                  slti         t6, s7, 1794
                  sll          s6, a1, t4
                  xor          t5, zero, s11
                  sra          t6, t3, t5
                  ori          a7, s8, -1804
                  andi         zero, a7, 432
                  or           t0, a4, t0
                  and          t1, s1, a1
                  or           t5, t1, s7
                  xor          zero, t3, a7
                  add          s2, t5, s10
                  andi         a1, s7, 1985
                  auipc        s2, 321820
                  xor          t2, a0, a5
                  srli         s2, s2, 17
                  sltu         t0, a6, t1
                  xori         ra, a6, -442
                  slti         s8, s4, 1093
                  auipc        a1, 98020
                  li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           s7, 0x80000000
                  li           a2, 0xe83e63c0
                  li           s8, 0x0
                  li           t3, 0x80000000
                  li           t2, 0xffffffff
                  li           gp, 0x80000000
                  li           s3, 0x0
                  li           s2, 0x35f72892
                  li           t6, 0x0
                  sub          s8, a2, s7
                  nop
                  auipc        a2, 856515
                  nop
                  lui          a2, 7134
                  lui          a2, 514547
                  addi         t6, a2, 1947
                  addi         a2, s5, -485
                  addi         s2, s7, 1155
                  lui          t2, 936882
                  sub          t2, s5, s7
                  lui          s3, 336565
                  nop
                  sub          s2, t3, s5
                  nop
                  addi         s3, s8, -1871
                  auipc        s3, 281092
                  auipc        gp, 279208
                  nop
                  addi         s3, gp, 177
                  sub          a2, a2, a2
                  add          t2, gp, s8
                  nop
                  auipc        s3, 934181
                  auipc        gp, 106015
                  lui          s7, 718328 #end riscv_int_numeric_corner_stream_3
                  xor          a7, t1, a5
                  sra          s2, t4, s9
                  and          s0, s7, s3
                  xor          s11, t3, t5
                  auipc        s6, 286659
                  slti         zero, zero, -673
                  add          s0, s10, gp
                  srai         t1, t1, 17
                  sub          gp, t5, t0
                  srli         a6, t6, 12
                  sll          t3, sp, t2
                  sltu         t0, t3, a2
                  nop
                  sll          tp, sp, a6
                  sll          gp, a4, a4
                  srli         a4, zero, 18
                  srai         a5, a1, 15
                  xori         t6, tp, 1099
                  lui          s11, 841588
                  xori         tp, t1, -1504
                  sltu         a6, s11, s2
                  add          zero, t5, s11
                  sll          a7, t4, s6
                  add          s11, t5, t0
                  or           s11, s9, gp
                  slt          a2, t6, a2
                  and          a5, a6, a7
                  slt          s4, a5, t0
                  add          a3, s1, ra
                  xor          t5, ra, s9
                  sltiu        a1, t2, -1875
                  sll          s5, a7, a4
                  sltu         s11, t4, s0
                  lui          s9, 526906
                  xori         s5, t3, 174
                  sltiu        a0, t2, -1918
                  sltu         a7, t6, t1
                  sub          a4, s5, s1
                  ori          s7, ra, -1517
                  or           tp, tp, a4
                  and          tp, a6, s9
                  xor          a7, s11, s11
                  xori         s8, s2, 251
                  ori          t1, a0, 725
                  sll          s9, zero, s9
                  sltiu        t3, s10, 302
                  slt          a5, a2, zero
                  slt          a6, gp, t4
                  nop
                  sll          s11, a4, s5
                  or           s7, s6, s9
                  and          s6, a0, s10
                  slti         t6, t6, -721
                  xori         s7, t2, 1727
                  auipc        s9, 160067
                  nop
                  slti         a4, s9, -586
                  sltiu        s8, tp, -588
                  slt          a0, a1, a0
                  addi         ra, s4, 1701
                  or           a7, s2, s5
                  srai         s11, s9, 30
                  xor          s3, t2, t1
                  nop
                  srli         gp, a3, 11
                  srli         a4, s8, 20
                  add          a6, t1, gp
                  add          a0, t3, s9
                  sub          gp, s1, s1
                  ori          t3, t0, -1148
                  slt          s8, tp, a0
                  srl          a1, a3, a3
                  addi         t0, tp, 1623
                  srai         s9, a7, 21
                  sub          a6, t3, tp
                  sra          s5, tp, t5
                  xor          a3, s3, tp
                  lui          s0, 457612
                  sub          s6, tp, a3
                  slti         a6, t2, -725
                  xor          ra, a6, s11
                  srl          s0, a5, tp
                  andi         t3, a1, -856
                  sltiu        t6, s8, 950
                  slti         s0, ra, 555
                  slti         a4, s6, -1037
                  slt          a2, s1, t6
                  slt          s11, a6, sp
                  andi         ra, s10, -1738
                  nop
                  sra          a6, a5, s2
                  add          a4, s10, s5
                  nop
                  andi         a7, s7, -1466
                  slti         s11, sp, -850
                  ori          a4, s4, -1879
                  srl          s8, t3, s4
                  lui          a2, 912702
                  slli         a6, s9, 19
                  xor          tp, sp, a3
                  srai         a3, gp, 29
                  sltu         t3, t4, s8
                  or           s6, a3, t0
                  andi         s4, a5, -1532
                  andi         sp, a5, 842
                  slt          t6, s0, s0
                  sll          t3, s9, s3
                  sub          s8, a2, a4
                  slli         t0, t2, 17
                  auipc        a4, 911895
                  addi         a5, a7, -1402
                  nop
                  addi         t2, t5, 580
                  or           s0, a5, t3
                  slti         s4, gp, -1722
                  xori         s8, zero, -363
                  sltiu        s11, s11, -308
                  srl          sp, ra, t1
                  xori         ra, a4, -1007
                  srli         a7, s6, 9
                  xor          s6, ra, s3
                  and          a7, a4, a5
                  xori         s5, s11, -142
                  sll          sp, s4, tp
                  auipc        a5, 451837
                  sltu         a2, t3, a3
                  auipc        ra, 254270
                  add          ra, s6, a0
                  sltu         s7, s6, s9
                  add          sp, t6, a1
                  srli         tp, s8, 26
                  addi         a3, gp, 1937
                  srli         s0, ra, 0
                  and          s6, ra, s7
                  nop
                  ori          a3, s5, -171
                  sltiu        s8, gp, -56
                  xori         a4, t2, 1461
                  xor          t1, t2, a4
                  ori          a3, s4, 1300
                  add          s8, a0, a3
                  auipc        a7, 549126
                  xori         ra, a7, 1981
                  sltiu        s7, s9, -1271
                  lui          a0, 650296
                  sltiu        a6, zero, -587
                  add          s11, s6, t3
                  xor          a3, a3, a7
                  srl          t6, t0, s8
                  auipc        a4, 490839
                  or           tp, a2, a5
                  slti         sp, sp, -34
                  srl          t6, gp, s11
                  add          a1, zero, a1
                  slti         a4, ra, -672
                  slti         s3, a7, 432
                  slti         s11, s4, 464
                  or           s7, s7, t6
                  addi         a0, t5, -1359
                  lui          t6, 773022
                  sub          s3, a1, t4
                  slt          t3, tp, s2
                  slli         tp, s8, 9
                  xor          a1, tp, zero
                  or           ra, a2, s4
                  addi         t3, a5, 1111
                  addi         a0, a3, -1401
                  xori         zero, t3, 393
                  slt          a0, gp, a4
                  or           s8, s8, s6
                  sltiu        tp, a0, -159
                  andi         zero, a4, -1496
                  nop
                  or           s9, t1, tp
                  sltu         t6, s11, s6
                  auipc        tp, 262440
                  nop
                  lui          s3, 135892
                  ori          ra, t3, 1178
                  srli         t2, s10, 10
                  add          t2, s10, tp
                  srli         s2, a3, 17
                  slt          gp, a4, s2
                  and          a4, zero, sp
                  addi         a1, s9, -424
                  and          s0, s9, zero
                  slli         tp, zero, 19
                  and          a2, a3, sp
                  addi         s11, s2, 838
                  sub          s9, t3, s2
                  ori          s2, gp, 288
                  auipc        s9, 100389
                  sltiu        s3, s3, -529
                  sub          a4, a1, a6
                  sub          a5, s11, a6
                  or           t5, sp, sp
                  or           t1, a0, s10
                  add          a0, t1, s3
                  sub          a0, s3, t3
                  srli         s7, t1, 11
                  sll          s3, a5, ra
                  add          sp, t5, sp
                  auipc        a5, 1040383
                  xor          t3, t2, zero
                  or           s3, s6, s2
                  xori         t5, a0, 1263
                  sll          s2, s3, t1
                  slti         s2, t0, -1165
                  andi         a5, a1, -695
                  sra          t2, s11, s10
                  sltu         s9, s8, ra
                  ori          sp, a1, 1164
                  sra          a2, s4, tp
                  add          s11, sp, s4
                  andi         s0, s11, -80
                  slli         s6, s5, 7
                  sll          a6, s2, s7
                  sltu         t3, a2, t1
                  andi         t1, t1, 1237
                  sltu         a2, a2, s8
                  srli         a0, s2, 19
                  xor          s0, s1, a7
                  sub          sp, a3, t1
                  slt          s8, s9, s6
                  sll          t0, s9, a1
                  ori          a6, t0, -1324
                  sub          zero, a1, zero
                  sub          gp, t1, ra
                  sub          s2, t5, t1
                  auipc        t5, 351569
                  sra          s7, a5, s0
                  sra          a3, a4, a3
                  andi         sp, tp, -887
                  and          a0, zero, a3
                  nop
                  sub          zero, s6, a7
                  srai         a5, a5, 7
                  sltu         s5, a2, t0
                  sra          t5, s6, t3
                  sll          t2, s1, sp
                  or           zero, t3, a2
                  xori         a4, a4, -470
                  sll          s9, s3, s6
                  slti         tp, s9, 1864
                  ori          t0, a0, -1365
                  ori          a7, a6, 337
                  sltiu        a3, a2, -1594
                  srli         t0, s5, 16
                  sra          sp, a3, zero
                  slti         t6, a5, 1695
                  sltu         s3, gp, t5
                  add          t0, s0, gp
                  add          t5, a3, s8
                  addi         t0, s5, 1517
                  andi         a1, a1, -1319
                  slt          s11, t5, t1
                  or           tp, a2, t3
                  nop
                  srli         a3, zero, 3
                  sub          t1, zero, s9
                  srl          s7, s1, s1
                  sub          a5, zero, a3
                  or           s6, s7, s6
                  sra          t3, tp, a2
                  sra          t2, a0, a3
                  sra          sp, t0, t1
                  srl          t1, s11, s1
                  srli         gp, zero, 30
                  sltu         a3, a1, s11
                  srli         ra, s4, 12
                  ori          t1, s1, 245
                  srli         t2, s8, 20
                  nop
                  and          t5, a7, a2
                  srai         a1, t6, 31
                  andi         a2, s7, 101
                  sltiu        s8, t1, 1435
                  sltiu        s6, s7, -1568
                  addi         a6, t0, 1643
                  sll          s5, zero, zero
                  slt          s5, ra, s0
                  srai         zero, t1, 30
                  and          a5, ra, a4
                  xor          a3, s6, s10
                  sub          a7, s3, sp
                  srl          sp, t6, zero
                  or           t3, s2, zero
                  srai         a6, s5, 5
                  andi         s8, s1, 445
                  sltiu        t1, s4, -1547
                  andi         s0, t6, 385
                  slti         t2, s1, -1478
                  xor          t0, zero, ra
                  nop
                  and          a2, a5, a5
                  xori         sp, tp, 241
                  sltu         sp, a6, s9
                  lui          s5, 731397
                  add          s2, s3, t3
                  add          t5, s3, s11
                  sub          a4, s6, s5
                  slli         t3, s5, 21
                  sub          a3, s8, s5
                  add          s6, s7, s2
                  nop
                  andi         s2, t5, 1352
                  add          t6, s3, s9
                  nop
                  sra          ra, t6, s5
                  srli         t0, gp, 28
                  srl          a5, gp, s6
                  addi         a3, t2, -736
                  slt          t3, s1, s5
                  andi         s9, s7, -1214
                  slt          s3, a0, s10
                  srai         t6, ra, 19
                  and          t6, t0, t5
                  srai         s11, s7, 1
                  srai         ra, a3, 0
                  sub          s3, a4, s6
                  xori         t2, s1, 783
                  nop
                  slli         s3, s4, 26
                  srli         s0, tp, 10
                  lui          a3, 255267
                  and          zero, s2, t4
                  srli         s0, s10, 6
                  and          zero, t2, a4
                  srai         s4, s9, 21
                  addi         s9, s8, -1543
                  sll          s0, gp, ra
                  slli         s2, t0, 8
                  sltu         a3, s3, s6
                  sll          a7, s11, a3
                  xori         t0, a0, 1157
                  add          a6, a4, tp
                  sll          a1, s8, s2
                  ori          zero, t0, -10
                  or           s8, s9, sp
                  nop
                  or           a6, a5, s5
                  slli         s2, t3, 25
                  sltiu        a2, sp, -348
                  add          s5, sp, s2
                  xori         a7, a5, 892
                  add          s4, a5, s6
                  addi         s3, a0, 321
                  and          a4, a7, ra
                  and          a4, a6, t5
                  sra          a2, s10, s8
                  sltiu        ra, s0, -1382
                  slt          s5, t1, s4
                  addi         t2, t6, 1456
                  nop
                  andi         gp, s5, -191
                  srli         a1, a4, 20
                  andi         t0, s7, 1598
                  lui          s6, 199654
                  srli         t6, a7, 4
                  auipc        sp, 374708
                  sll          t2, t3, t6
                  sll          a3, s9, ra
                  slti         t2, s6, -1601
                  addi         s11, t3, -422
                  and          t1, t3, s9
                  slt          t0, gp, t4
                  nop
                  lui          gp, 184317
                  auipc        s9, 662552
                  slti         ra, ra, 1305
                  slti         sp, t1, -1227
                  xor          t0, s7, tp
                  sub          a5, s3, s3
                  sub          tp, s5, s9
                  add          t5, s8, s11
                  sll          ra, ra, s4
                  and          t2, s1, s5
                  sltiu        sp, s0, -1745
                  slti         ra, s5, 845
                  sltu         s11, s2, a0
                  nop
                  srli         s9, gp, 30
                  add          s6, s6, s6
                  xori         s5, s0, -441
                  slti         a7, t0, 1844
                  andi         s11, a4, 467
                  sltiu        s0, a0, -1466
                  add          t2, zero, s2
                  addi         t2, a1, 246
                  sub          s3, s2, a6
                  or           tp, a5, s2
                  slt          a5, s10, s3
                  srai         s9, a3, 4
                  addi         sp, s9, 1823
                  ori          t6, zero, 1389
                  and          s8, t1, a3
                  or           a1, s10, t0
                  or           t1, t0, sp
                  sltiu        a3, a2, 1316
                  nop
                  srl          s4, a3, a4
                  sltu         s8, s0, t0
                  addi         a2, a6, -1274
                  slt          s8, a6, a2
                  sub          t2, s5, s11
                  sub          s11, tp, t1
                  slli         a0, t4, 26
                  addi         tp, t0, 1611
                  nop
                  andi         t0, a0, -1004
                  sub          ra, a2, zero
                  sra          s3, s2, s8
                  srai         s2, t3, 29
                  or           a1, tp, t1
                  slli         s4, a2, 3
                  and          a5, t1, s11
                  srl          gp, a1, a1
                  sltiu        s11, t4, -710
                  sub          a3, a7, t6
                  xori         s7, tp, -747
                  srli         sp, s4, 5
                  sub          s5, s5, t6
                  ori          ra, s9, -1353
                  add          gp, gp, s2
                  sra          a0, s1, gp
                  add          a1, a6, s8
                  add          t0, a1, s6
                  or           s9, tp, gp
                  sll          s7, zero, s8
                  auipc        tp, 155978
                  ori          s4, t1, -1059
                  slti         s0, s10, 1762
                  addi         t0, t6, -701
                  ori          a4, ra, 878
                  slli         a3, gp, 5
                  ori          s5, s10, -1906
                  slt          gp, t0, a7
                  auipc        zero, 566266
                  lui          t0, 844371
                  sra          t2, tp, s0
                  ori          a7, t4, 750
                  or           s0, t5, s2
                  add          s2, a5, t0
                  sra          a7, s0, zero
                  slli         a3, t0, 21
                  xor          sp, s2, t5
                  nop
                  nop
                  sltiu        a7, gp, -2015
                  srl          a5, t2, t5
                  sra          a6, a5, s9
                  ori          t6, s3, 1752
                  sub          t1, a1, s0
                  or           t5, a5, s7
                  sltu         s5, s6, gp
                  sll          t5, a4, t6
                  addi         a1, s2, -1421
                  ori          a5, s3, 835
                  sll          s0, s7, s11
                  slt          zero, a0, a4
                  slt          s11, s2, a3
                  and          s3, a3, s2
                  srli         s3, t6, 1
                  slli         a4, t3, 24
                  addi         ra, t6, -1163
                  sub          a4, s0, gp
                  andi         gp, zero, 30
                  andi         a6, s5, -1487
                  sra          s0, a5, s11
                  sltiu        sp, s3, 344
                  ori          s9, a3, -1099
                  lui          t0, 55898
                  slt          t6, a5, zero
                  sub          a1, a1, s10
                  xor          a5, t3, a6
                  and          a6, s5, t3
                  sltu         s5, t0, s0
                  or           a0, a7, t4
                  sltu         s7, s4, a3
                  srli         t5, t2, 25
                  ori          zero, a4, 1320
                  slli         tp, s0, 14
                  sra          ra, t0, a7
                  nop
                  srai         a7, a7, 1
                  srai         tp, gp, 26
                  or           a2, t0, ra
                  and          t3, sp, s4
                  slt          s4, t2, sp
                  andi         ra, a1, -157
                  addi         s6, a6, -408
                  xori         s4, a4, 1406
                  xori         s11, t6, 1834
                  srli         a6, t0, 23
                  slti         s6, s11, -195
                  srl          s0, s0, t6
                  srl          t5, a1, a3
                  sltiu        ra, s7, -1254
                  and          ra, s8, s1
                  sra          a2, a7, t5
                  andi         t2, a2, 128
                  ori          s3, s0, 177
                  xor          t1, s6, a5
                  nop
                  sra          a5, s3, t0
                  nop
                  addi         sp, s11, -460
                  slli         s6, s7, 17
                  sltiu        s4, a4, -1279
                  sra          s9, a5, a2
                  add          t1, tp, s10
                  and          a7, s3, ra
                  and          zero, s2, a4
                  sltiu        t2, t5, -1336
                  ori          sp, s5, -1232
                  slli         a6, s11, 24
                  slt          s0, t6, t1
                  slli         t1, tp, 11
                  ori          a3, t6, 1254
                  srli         s7, s11, 23
                  and          s9, s10, t3
                  auipc        s2, 799450
                  sra          sp, s11, sp
                  slti         a4, t2, 571
                  sll          s11, s6, s6
                  sltiu        s7, t4, -1274
                  slt          t5, a2, t2
                  sra          zero, t2, a0
                  slti         a2, t2, 549
                  slt          a6, tp, s6
                  sub          tp, s7, s6
                  sra          s0, s8, s5
                  addi         a0, t5, 682
                  or           a7, sp, s2
                  srli         s2, s8, 21
                  andi         s2, t0, 1531
                  addi         t0, tp, -1834
                  auipc        sp, 847579
                  sra          a5, s1, s5
                  auipc        t3, 907325
                  srai         a2, s5, 28
                  andi         t0, a7, -1054
                  ori          ra, t3, -1523
                  srli         zero, a1, 8
                  add          a6, s11, s11
                  xori         s2, zero, -1699
                  sll          s8, a2, a7
                  add          s0, tp, t6
                  slli         a2, s10, 29
                  xori         t0, s1, -1961
                  or           s4, t3, s4
                  add          s11, a1, a0
                  xor          tp, t3, a3
                  slti         a3, t3, 1565
                  and          s8, a0, ra
                  addi         s11, s6, -16
                  andi         a0, s5, -1239
                  slt          s6, s10, s8
                  srl          t1, ra, t3
                  lui          s9, 875672
                  srl          a7, gp, t5
                  sll          s8, s7, t0
                  ori          ra, s9, 1648
                  slti         a6, a5, 1861
                  sltiu        gp, s2, -1080
                  srai         gp, a4, 16
                  lui          ra, 631561
                  sltu         s3, t6, a7
                  xor          s3, a3, tp
                  sltiu        s3, tp, 1178
                  sra          a4, t0, s4
                  or           a3, s8, s8
                  ori          a1, t0, -1057
                  auipc        s4, 51714
                  andi         t1, sp, -1748
                  slti         a0, zero, -1825
                  lui          s0, 312025
                  xor          a7, a0, a2
                  sltiu        a6, t0, -824
                  sll          a0, t2, a2
                  sltiu        s7, s4, -1168
                  addi         s2, t2, 138
                  slti         a5, a0, 961
                  srl          a1, a5, s10
                  srai         a1, t4, 11
                  sub          a5, t3, a0
                  sll          a5, s3, t5
                  xor          s3, a4, a2
                  andi         a3, s2, -1876
                  and          s0, t1, gp
                  sltiu        t0, t0, -569
                  xor          s5, a4, a4
                  lui          a2, 165026
                  or           a3, t0, a1
                  add          a4, s4, t4
                  sltiu        s3, a5, -1643
                  slti         s4, t4, 187
                  and          s7, s7, t0
                  slt          t6, s6, ra
                  and          s7, a0, a6
                  add          tp, a2, s0
                  sra          tp, a6, gp
                  srl          s9, s2, s10
                  ori          s4, s2, -339
                  srli         a3, s3, 24
                  xori         s9, a6, -334
                  xori         s6, a6, -328
                  srl          s7, t6, t6
                  sll          s2, a4, s9
                  auipc        a6, 379238
                  slli         s2, s6, 5
                  add          t5, t4, a7
                  srai         t0, s11, 15
                  slli         t6, s8, 4
                  srl          zero, t2, s4
                  sra          a3, s8, sp
                  srai         a1, a4, 16
                  xor          s8, s6, s10
                  slli         a3, a5, 25
                  srli         t3, s6, 29
                  srli         a5, t6, 5
                  slli         a1, s5, 8
                  srl          t1, s1, tp
                  add          t5, a0, a0
                  sltiu        s7, a6, -654
                  sra          gp, t4, a2
                  ori          a0, a1, 1192
                  srl          tp, s11, s0
                  andi         a5, a3, -1434
                  ori          a3, s9, 836
                  sra          s6, s10, t2
                  slt          t0, a3, s1
                  auipc        t6, 801902
                  slt          s3, a0, s3
                  srl          a3, a4, a7
                  add          t6, a3, s10
                  srli         s3, a2, 20
                  addi         ra, t0, -1646
                  srl          t6, s7, a0
                  lui          sp, 953747
                  and          t5, a0, s11
                  add          s2, t6, s5
                  sll          s5, s7, a3
                  and          t3, t2, a3
                  ori          ra, a2, -821
                  slli         sp, a5, 10
                  sub          a6, a6, tp
                  andi         t2, s2, 1013
                  sll          a3, a1, a1
                  srl          a6, s10, tp
                  sra          s5, t0, t1
                  srli         t3, t1, 3
                  slti         t5, ra, 454
                  nop
                  slli         a4, s9, 29
                  add          a3, t5, ra
                  ori          s8, t3, -1955
                  slli         a7, a7, 30
                  andi         s4, s5, 179
                  slt          a2, a4, a1
                  xori         s7, s5, 1225
                  srli         sp, t0, 30
                  andi         s2, t3, 118
                  nop
                  or           s5, s7, s5
                  or           a2, s1, t2
                  or           s5, s0, a5
                  sltiu        s8, s3, -1487
                  sll          gp, s5, t4
                  and          a5, t4, a1
                  ori          a2, s4, -833
                  nop
                  and          zero, a2, s9
                  srli         t1, a5, 16
                  sltiu        t3, a2, 748
                  or           zero, a3, s7
                  sub          t2, s1, s2
                  sll          zero, s7, s9
                  sltiu        a3, a5, 1536
                  slti         a1, gp, -1054
                  sub          t1, t3, a5
                  auipc        s5, 321458
                  srai         s0, s10, 2
                  srai         t3, t3, 29
                  slli         s6, a2, 6
                  ori          a2, s9, 750
                  sltu         sp, s1, zero
                  srl          s11, t1, a7
                  addi         sp, a3, -2034
                  slli         a4, s5, 6
                  auipc        s2, 342958
                  sub          t6, a5, ra
                  srai         t5, s10, 4
                  ori          zero, t1, -1663
                  sltiu        s8, a4, -1093
                  srli         a5, a3, 3
                  slli         a7, t5, 20
                  srl          s0, s10, s5
                  slt          t6, t3, ra
                  sll          a2, s0, t3
                  srl          s3, a6, zero
                  srai         a7, gp, 6
                  nop
                  srl          zero, ra, s7
                  lui          a7, 335456
                  sra          a2, s4, s5
                  add          s11, a0, tp
                  and          a2, a7, a0
                  srli         s8, s6, 15
                  sra          a3, a3, s6
                  srl          t5, s4, sp
                  xor          s4, t1, a0
                  or           s4, s0, s2
                  auipc        a7, 652685
                  sra          s4, t6, s6
                  andi         t6, s3, 602
                  and          s4, a4, ra
                  sltu         a2, t2, s11
                  srai         s0, s11, 20
                  sra          a3, s0, a7
                  sub          s9, a2, tp
                  ori          a6, t2, -687
                  srai         zero, t1, 10
                  auipc        t6, 168805
                  sll          s5, ra, t4
                  xor          s3, a3, t2
                  slti         s8, t5, -377
                  xori         s9, s9, -1852
                  sll          t0, t5, t5
                  srai         s2, a0, 2
                  xor          s11, t2, s9
                  ori          t3, t4, -1512
                  srai         a7, s8, 10
                  slt          ra, t1, a3
                  lui          t3, 985251
                  or           s5, t2, t0
                  and          a6, t2, s8
                  slli         s5, s8, 26
                  xori         t1, gp, -825
                  add          s11, gp, s3
                  and          a5, s1, a7
                  srli         s11, a7, 31
                  and          s7, s6, t6
                  slt          s7, s7, tp
                  addi         s7, s11, -861
                  srli         tp, t2, 1
                  srai         s2, s1, 16
                  andi         a5, s6, 1984
                  sltiu        sp, a1, -66
                  sra          t1, gp, a1
                  auipc        s3, 987501
                  sltiu        t0, s5, -776
                  ori          a1, a1, 1288
                  sll          tp, s6, s7
                  sltiu        s9, a5, -107
                  lui          a4, 591351
                  sltiu        s3, a4, -2040
                  slt          s8, s0, a6
                  srli         s3, a7, 6
                  sub          s8, a0, s1
                  sltu         t3, t5, t5
                  xori         t6, s1, 1847
                  auipc        s3, 750303
                  andi         a7, tp, -347
                  addi         a7, s10, -1222
                  sltiu        a5, s1, 1124
                  slti         a5, s3, -658
                  sltiu        t1, s7, -1738
                  sra          gp, a4, a0
                  or           s8, s5, s11
                  or           s8, a0, t1
                  slti         t5, a0, 1463
                  sub          s4, t6, s10
                  srai         a3, a3, 6
                  xor          t2, t6, s5
                  slli         s4, tp, 7
                  and          t3, s1, t4
                  addi         s4, s4, 1721
                  lui          a6, 204815
                  sltu         t5, t0, s5
                  add          a1, t5, a5
                  add          s8, sp, a6
                  auipc        s3, 524806
                  ori          s5, a2, -1710
                  sub          zero, t5, s11
                  srli         a0, s5, 17
                  xor          a7, a0, t0
                  nop
                  sll          a7, t4, s8
                  slti         sp, s0, -1361
                  andi         t6, sp, 210
                  nop
                  and          a5, a2, s6
                  slti         t0, s8, 517
                  sub          s8, s7, a3
                  sltu         a7, s10, a1
                  slli         gp, s11, 31
                  ori          a0, s11, 1044
                  srli         t1, zero, 19
                  or           t1, t2, t2
                  sub          s0, a3, ra
                  sll          a4, sp, s11
                  sub          s4, s2, s1
                  xor          gp, gp, t5
                  add          a7, t1, s11
                  slt          s8, sp, s8
                  sltu         t6, s8, t4
                  slt          t6, t4, zero
                  andi         ra, tp, 1755
                  sll          s4, s8, s9
                  slli         a0, tp, 12
                  addi         a7, a2, -1167
                  auipc        s9, 611751
                  and          s11, t5, s1
                  lui          a0, 319616
                  andi         t5, a2, 336
                  sltu         zero, s7, a1
                  lui          gp, 1014990
                  addi         s11, a5, 1656
                  slt          t1, t2, s10
                  sra          s3, t0, s5
                  sltu         s5, s11, t4
                  sub          a3, s11, s3
                  sltiu        a0, s3, 1630
                  sltu         a1, a0, t3
                  sltu         s0, a6, t4
                  xori         s0, t5, -1535
                  addi         ra, t6, 1680
                  xori         t3, t3, 1590
                  slt          s7, s10, t5
                  slli         s8, a0, 6
                  sra          s2, s7, s8
                  srl          sp, s3, s5
                  sltiu        a1, s10, 1381
                  auipc        ra, 409802
                  sltiu        t6, s10, 167
                  nop
                  and          sp, s4, a3
                  slt          a2, t4, t0
                  auipc        a3, 398742
                  sub          t5, t5, gp
                  slti         ra, t0, 1563
                  slti         s4, a5, 1665
                  sra          t0, t4, s3
                  sltiu        ra, t3, 23
                  or           t6, a1, a3
                  sub          gp, s0, a7
                  srl          s8, t2, t0
                  slli         s0, s3, 12
                  sub          a4, gp, gp
                  ori          s3, s7, -383
                  xori         s5, s6, -1048
                  andi         t0, zero, 152
                  sll          t0, t6, s1
                  ori          s7, a0, 1321
                  ori          a1, s6, 131
                  slli         a4, s5, 25
                  add          zero, a4, t2
                  sub          ra, a3, a1
                  srli         s6, tp, 4
                  srl          s6, tp, t0
                  sll          a1, t3, s6
                  auipc        s8, 823992
                  addi         tp, gp, -1422
                  sltiu        s8, a0, -1886
                  nop
                  slti         s6, a2, 342
                  slt          s3, s5, t1
                  sub          s9, s0, s9
                  slli         a3, a2, 1
                  lui          s9, 802092
                  sll          zero, s7, t4
                  ori          gp, t2, -1290
                  xori         s9, s6, -333
                  xor          s0, ra, s1
                  sub          a5, s8, a3
                  slti         s9, t2, 775
                  andi         a4, a2, 1562
                  sub          a7, s1, a2
                  lui          s7, 742450
                  srli         gp, s0, 19
                  srai         s0, s5, 24
                  slli         t6, s2, 13
                  srli         t3, t5, 12
                  sltu         t1, s0, s7
                  srl          a1, a3, a7
                  srai         sp, s4, 22
                  sub          a3, gp, ra
                  or           zero, s2, a3
                  nop
                  slti         s5, a3, 365
                  addi         s0, s7, 1428
                  or           a6, s3, t3
                  slt          ra, a4, a7
                  srli         t2, s2, 6
                  or           s4, a0, t4
                  sll          s2, gp, s5
                  xori         a0, t5, -61
                  li           s11, 0x4b0c63d4 #start riscv_int_numeric_corner_stream_9
                  li           t0, 0x61297d1b
                  li           s0, 0xffffffff
                  li           ra, 0x4895a7f1
                  li           s3, 0xffffffff
                  li           s2, 0x80000000
                  li           a5, 0x80000000
                  li           s8, 0x0
                  li           t2, 0x0
                  li           t1, 0x80000000
                  nop
                  add          t1, s2, s0
                  sub          s0, s11, s8
                  addi         s3, t0, 1495
                  auipc        s11, 478503
                  auipc        a5, 441709
                  sub          s0, s2, s3
                  auipc        t0, 936865
                  nop
                  auipc        t0, 1031456
                  auipc        t0, 250583
                  lui          ra, 35276
                  nop
                  nop
                  addi         t1, t2, 280
                  sub          s8, t2, t0
                  sub          t0, s8, a5
                  addi         s2, a5, -518
                  add          s3, a5, s11
                  sub          t2, a5, s0 #end riscv_int_numeric_corner_stream_9
                  xori         a5, a4, -396
                  slt          t2, a6, t3
                  addi         a7, s9, -30
                  sra          s2, a7, s8
                  slti         s11, s8, -1604
                  ori          a2, t3, 1036
                  or           a5, a2, t6
                  xor          s11, ra, a4
                  ori          s9, s4, -1041
                  xor          t2, t5, a4
                  slli         a6, sp, 3
                  xori         s0, s10, -3
                  sra          zero, s10, t5
                  srli         s4, s9, 0
                  lui          s6, 938878
                  lui          t2, 854752
                  xor          sp, t0, s11
                  xori         t2, s8, 1170
                  srl          t5, a5, s6
                  srai         a1, s3, 6
                  slli         s11, a0, 26
                  xori         s3, t1, -2023
                  add          s7, a6, a2
                  nop
                  sll          s8, t4, a0
                  or           a5, t5, s0
                  sra          a4, s7, s3
                  sra          s7, s8, s3
                  ori          a7, tp, 538
                  slli         a3, t2, 8
                  srl          s8, a5, a3
                  srl          t3, t2, t3
                  xor          t3, a3, s1
                  xor          t5, t3, s6
                  auipc        tp, 676166
                  sra          t6, a1, a7
                  srl          tp, s10, a3
                  andi         a3, t1, 1252
                  ori          a5, s1, 1976
                  sub          gp, s0, tp
                  ori          ra, a3, -1635
                  sltu         a4, a0, s9
                  lui          s6, 193011
                  and          t3, a7, zero
                  sltu         zero, s5, s7
                  lui          a3, 923538
                  xori         zero, s9, 222
                  nop
                  addi         a1, a6, -1056
                  sra          a3, t6, s7
                  xor          a6, s2, s11
                  srli         a0, a3, 16
                  slli         t0, t5, 3
                  nop
                  sltiu        a6, t4, 131
                  srai         t0, s4, 26
                  ori          a7, t2, -548
                  slt          s0, s11, s1
                  slli         s3, t5, 24
                  sltiu        t3, s0, 1010
                  ori          a5, s1, 156
                  sltiu        a6, a4, 1889
                  sub          s0, a4, s11
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           s6, 0xdbbd3d29
                  li           ra, 0x80000000
                  li           a0, 0x2c72b846
                  li           tp, 0x80000000
                  li           t6, 0x80000000
                  li           t1, 0x80000000
                  li           s5, 0x0
                  li           s4, 0xafef07fb
                  li           s9, 0x80000000
                  auipc        s8, 948945
                  lui          t6, 983195
                  addi         ra, s4, 491
                  lui          s6, 879558
                  sub          ra, s4, ra
                  auipc        s8, 700318
                  add          tp, s5, t1
                  sub          s8, s9, s4
                  addi         a0, ra, -1478
                  addi         s5, ra, 1083
                  add          t1, a0, s9
                  lui          s8, 890869
                  add          t1, s8, s4
                  lui          t1, 48699
                  sub          s8, a0, ra
                  sub          s4, s8, tp
                  addi         s8, t1, -943
                  addi         s6, t6, 1394
                  auipc        t6, 24098
                  sub          tp, t6, s8
                  add          ra, a0, t1
                  sub          ra, tp, a0
                  addi         s8, ra, 742
                  sub          a0, t6, t6 #end riscv_int_numeric_corner_stream_10
                  sll          t1, t5, a2
                  slt          tp, s0, a7
                  xori         s5, s11, 138
                  srl          s11, s4, a0
                  srli         zero, tp, 29
                  nop
                  and          t2, t6, s4
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
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x26, x29, zero
                  csrr x23, 0x300 # MSTATUS
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 31
                  bne x23, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x12, 0x3 # BREAKPOINT
                  beq x23, x12, ebreak_handler
                  li x12, 0x8 # ECALL_UMODE
                  beq x23, x12, ecall_handler
                  li x12, 0x9 # ECALL_SMODE
                  beq x23, x12, ecall_handler
                  li x12, 0xb # ECALL_MMODE
                  beq x23, x12, ecall_handler
                  li x12, 0x1
                  beq x23, x12, instr_fault_handler
                  li x12, 0x5
                  beq x23, x12, load_fault_handler
                  li x12, 0x7
                  beq x23, x12, store_fault_handler
                  li x12, 0xc
                  beq x23, x12, pt_fault_handler
                  li x12, 0xd
                  beq x23, x12, pt_fault_handler
                  li x12, 0xf
                  beq x23, x12, pt_fault_handler
                  li x12, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x12, illegal_instr_handler
                  csrr x12, 0x343 # MTVAL
                  1: la x9, test_done
                  jalr x1, x9, 0

ecall_handler:    
                  la x23, _start
                  sw x0, 0(x23)
                  sw x1, 4(x23)
                  sw x2, 8(x23)
                  sw x3, 12(x23)
                  sw x4, 16(x23)
                  sw x5, 20(x23)
                  sw x6, 24(x23)
                  sw x7, 28(x23)
                  sw x8, 32(x23)
                  sw x9, 36(x23)
                  sw x10, 40(x23)
                  sw x11, 44(x23)
                  sw x12, 48(x23)
                  sw x13, 52(x23)
                  sw x14, 56(x23)
                  sw x15, 60(x23)
                  sw x16, 64(x23)
                  sw x17, 68(x23)
                  sw x18, 72(x23)
                  sw x19, 76(x23)
                  sw x20, 80(x23)
                  sw x21, 84(x23)
                  sw x22, 88(x23)
                  sw x23, 92(x23)
                  sw x24, 96(x23)
                  sw x25, 100(x23)
                  sw x26, 104(x23)
                  sw x27, 108(x23)
                  sw x28, 112(x23)
                  sw x29, 116(x23)
                  sw x30, 120(x23)
                  sw x31, 124(x23)
                  la x9, write_tohost
                  jalr x0, x9, 0

instr_fault_handler:
                  add x29, x26, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

load_fault_handler:
                  add x29, x26, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

store_fault_handler:
                  add x29, x26, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

ebreak_handler:   
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x29, x26, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

illegal_instr_handler:
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x29, x26, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x29, x26, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
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
