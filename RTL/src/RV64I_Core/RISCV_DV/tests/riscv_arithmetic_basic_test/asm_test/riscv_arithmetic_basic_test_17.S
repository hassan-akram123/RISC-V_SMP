.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x20, h0_start
jalr x0, x20, 0
h0_start:
                  li x13, 0x40000100
                  csrw 0x301, x13
kernel_sp:        
                  la x11, kernel_stack_end

trap_vec_init:    
                  la x13, mtvec_handler
                  ori x13, x13, 1
                  csrw 0x305, x13 # MTVEC

mepc_setup:       
                  la x13, init
                  csrw 0x341, x13

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x13, 0x1800
                  csrw 0x300, x13 # MSTATUS
                  mret
init:             
                  li x0, 0x4
                  li x1, 0x80000000
                  li x2, 0x450a33d5
                  li x3, 0x0
                  li x4, 0x0
                  li x5, 0x80000000
                  li x6, 0xf7860ff0
                  li x7, 0xbc9ec719
                  li x8, 0x80000000
                  li x9, 0xfe7c65ae
                  li x10, 0xe
                  li x12, 0x0
                  li x13, 0xc
                  li x14, 0xfad5e29a
                  li x15, 0x0
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0x80000000
                  li x20, 0x80000000
                  li x21, 0x66818a4a
                  li x22, 0x0
                  li x23, 0x8fb0d4e2
                  li x24, 0xfc22c143
                  li x25, 0xf0a5085f
                  li x26, 0xc458b399
                  li x27, 0x80000000
                  li x28, 0x80000000
                  li x29, 0xe
                  li x30, 0x0
                  li x31, 0x80000000
                  la x19, user_stack_end
main:             li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           s8, 0xfc5e46ab
                  li           gp, 0x0
                  li           s11, 0x80000000
                  li           s7, 0x0
                  li           t2, 0xffffffff
                  li           t1, 0xffffffff
                  li           t0, 0x0
                  li           s5, 0x80000000
                  li           tp, 0xc8fe7d50
                  auipc        tp, 451497
                  add          s5, t1, s5
                  auipc        gp, 129273
                  add          tp, s5, s7
                  lui          t0, 996678
                  add          gp, tp, tp
                  sub          s5, t0, gp
                  auipc        s11, 969740
                  sub          s7, t0, a0
                  nop
                  addi         tp, s8, -398
                  nop
                  addi         s8, s7, 481
                  addi         s5, t0, -2021
                  lui          s11, 923147
                  auipc        tp, 572692
                  sub          a0, s8, gp
                  nop
                  add          t0, s5, s7
                  lui          gp, 561894 #end riscv_int_numeric_corner_stream_3
                  li           s1, 0x496cf427 #start riscv_int_numeric_corner_stream_10
                  li           gp, 0x80000000
                  li           a0, 0xffffffff
                  li           t6, 0x0
                  li           a5, 0xffffffff
                  li           a4, 0x3baff58a
                  li           s11, 0xffffffff
                  li           t3, 0x4d332aaa
                  li           s2, 0x80000000
                  li           t5, 0xeea36c47
                  auipc        a5, 737049
                  lui          a4, 12750
                  addi         s2, a4, 354
                  add          s2, t3, t5
                  lui          t3, 494075
                  lui          a5, 643208
                  lui          t3, 812047
                  addi         t3, s1, -622
                  lui          t3, 779793
                  add          t5, t6, t5
                  addi         s2, a4, -226
                  lui          a4, 962673
                  addi         a0, s1, -687
                  addi         s11, a5, 1980
                  auipc        t6, 116507
                  addi         a4, a5, 664
                  add          t6, a4, t3
                  auipc        t5, 715188 #end riscv_int_numeric_corner_stream_10
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           t0, 0xffffffff
                  li           a5, 0x0
                  li           a2, 0x0
                  li           a7, 0xffffffff
                  li           s2, 0x72963cc2
                  li           a3, 0xffffffff
                  li           s8, 0x7f859db1
                  li           t3, 0x0
                  li           gp, 0x0
                  addi         a7, a3, -1712
                  addi         a2, a2, 1656
                  lui          a5, 638599
                  sub          gp, t3, a3
                  addi         a3, a7, -730
                  nop
                  sub          s2, t3, sp
                  addi         t3, s2, 92
                  auipc        s8, 433846
                  add          s2, t0, a5
                  lui          a3, 456208
                  sub          s2, a3, s8
                  nop
                  addi         s2, gp, -232
                  add          t0, s2, a3
                  addi         a7, s8, -906
                  auipc        t3, 446275
                  auipc        a3, 986632
                  add          a3, a7, sp
                  sub          s2, s8, t0
                  add          gp, sp, s2
                  add          s8, t3, s2
                  sub          t3, s8, a5
                  add          a3, a5, a3 #end riscv_int_numeric_corner_stream_19
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           a3, 0xffffffff
                  li           ra, 0xd9e43fe3
                  li           tp, 0x80000000
                  li           t4, 0xffffffff
                  li           s9, 0x0
                  li           a4, 0x0
                  li           s1, 0x0
                  li           s8, 0x0
                  li           s6, 0x80000000
                  lui          s8, 285921
                  lui          tp, 697734
                  auipc        s1, 836272
                  sub          a5, s1, s9
                  sub          ra, s8, s6
                  auipc        ra, 707889
                  lui          s6, 130755
                  addi         a5, a5, -552
                  add          a5, a4, s9
                  add          s8, a4, a3
                  addi         tp, a3, -1340
                  nop
                  add          a3, s9, a5
                  addi         s8, s8, -977
                  add          s6, s8, s1
                  lui          s8, 817083
                  add          s6, a4, tp
                  lui          s1, 106798
                  addi         t4, a3, 1506
                  add          s1, ra, s8
                  addi         a5, s6, -730
                  lui          a3, 243338
                  lui          s6, 345879
                  add          t4, s9, t4
                  add          a3, a3, s8
                  add          s9, s8, a4 #end riscv_int_numeric_corner_stream_4
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           gp, 0x80000000
                  li           a6, 0x724139ba
                  li           s10, 0x78ffd408
                  li           s6, 0xffffffff
                  li           a2, 0xd2d49518
                  li           ra, 0x0
                  li           s2, 0x80000000
                  li           s7, 0x80000000
                  li           s8, 0x0
                  add          s9, s8, gp
                  auipc        ra, 390993
                  add          gp, s6, gp
                  sub          gp, a2, gp
                  addi         s7, s8, 1705
                  nop
                  sub          a2, s9, s7
                  addi         s6, gp, 664
                  add          s10, s6, gp
                  add          ra, s10, s2
                  addi         s9, a6, -1070
                  nop
                  nop
                  auipc        a2, 262520
                  add          ra, s8, s8
                  add          a2, ra, a6
                  addi         gp, gp, 1213
                  addi         a2, s10, 1242
                  addi         a6, s8, 1854
                  auipc        gp, 264475
                  add          a2, s7, gp
                  lui          a6, 626506
                  sub          s7, a6, s9
                  add          ra, s10, s8
                  nop
                  add          s9, s7, s2
                  auipc        ra, 982817 #end riscv_int_numeric_corner_stream_5
                  li           gp, 0x160c7c82 #start riscv_int_numeric_corner_stream_8
                  li           s10, 0x0
                  li           t1, 0x80000000
                  li           a4, 0xffffffff
                  li           s0, 0x55be465a
                  li           t6, 0xffffffff
                  li           t3, 0xffffffff
                  li           a5, 0xffffffff
                  li           t5, 0xffffffff
                  li           tp, 0xffffffff
                  nop
                  auipc        a4, 847426
                  add          tp, a5, tp
                  addi         t6, a5, 1997
                  lui          t1, 158913
                  nop
                  auipc        s10, 792711
                  sub          t3, a5, t3
                  auipc        s10, 60382
                  nop
                  add          t1, gp, tp
                  auipc        a4, 831717
                  add          a5, gp, t3
                  add          t1, s10, t6
                  lui          t6, 700622
                  add          t5, s0, t1
                  nop
                  sub          t1, s0, tp
                  sub          a5, t5, t5
                  nop
                  add          a5, t3, tp
                  auipc        tp, 229954
                  lui          t6, 628732
                  nop
                  sub          a5, t1, t5
                  addi         gp, s10, -983
                  nop
                  sub          t3, t3, s10
                  add          t1, s10, a4
                  addi         t5, a5, 1480 #end riscv_int_numeric_corner_stream_8
                  srai         s8, s7, 8
                  andi         s0, t2, -1313
                  srai         t2, t1, 30
                  srai         zero, a1, 10
                  auipc        s8, 186948
                  slt          a2, s7, s6
                  lui          s11, 487204
                  li           s0, 0x6ff160d4 #start riscv_int_numeric_corner_stream_13
                  li           a5, 0xed33925b
                  li           a4, 0x0
                  li           ra, 0x80000000
                  li           t0, 0x67b32e7b
                  li           a2, 0x80000000
                  li           s1, 0x0
                  li           sp, 0x0
                  li           s7, 0x79a969a
                  li           t3, 0x0
                  addi         a4, sp, 52
                  nop
                  lui          a5, 477000
                  sub          s7, a5, sp
                  add          s7, s1, a2
                  lui          a4, 232743
                  addi         t3, a2, 1954
                  nop
                  lui          s1, 143144
                  nop
                  nop
                  sub          t3, a5, s1
                  nop
                  add          a2, a4, a2
                  nop
                  auipc        ra, 45031
                  sub          s7, a5, ra #end riscv_int_numeric_corner_stream_13
                  sub          a4, s11, t3
                  or           ra, s11, sp
                  and          a2, gp, sp
                  sra          a4, t2, s9
                  slli         t5, ra, 23
                  slti         t2, s0, 365
                  slt          a5, s11, a5
                  or           sp, ra, t2
                  srli         a6, t2, 31
                  xori         a7, t6, 2031
                  lui          s9, 565788
                  and          s1, s6, t2
                  sltu         a0, s6, s4
                  lui          a3, 260691
                  auipc        a6, 437605
                  slti         s9, s5, -601
                  slli         a4, gp, 24
                  sra          s9, ra, zero
                  xori         a2, a4, -57
                  sltiu        s1, s5, 140
                  andi         gp, t4, -1126
                  sra          s1, a6, a2
                  add          s8, s1, a6
                  sll          a3, s2, tp
                  sltiu        t6, t1, 2035
                  sra          s5, t0, a5
                  auipc        t0, 58262
                  andi         s9, a2, -1805
                  xor          t2, zero, a3
                  slti         ra, t3, 1321
                  slli         t5, s0, 9
                  slti         s6, s1, -1296
                  ori          s8, zero, 439
                  sub          s11, a2, s5
                  slti         s2, s8, 771
                  slt          ra, s11, gp
                  srai         s5, s0, 0
                  addi         s0, t4, 892
                  srl          s9, s4, s0
                  slt          s5, s11, s6
                  slli         s6, t2, 11
                  ori          gp, s3, 1461
                  slti         t6, a3, 868
                  add          t5, s5, s9
                  sub          t4, t6, t1
                  xor          s7, t0, s1
                  sltu         s6, a5, a6
                  slti         t0, s9, 405
                  auipc        a7, 976649
                  sub          a3, a3, a3
                  sltu         a6, s7, a4
                  srai         t3, s4, 3
                  xor          zero, s0, gp
                  slli         zero, ra, 15
                  srai         a6, s2, 7
                  srai         s1, t1, 20
                  sub          t0, a7, zero
                  auipc        s2, 74455
                  add          t5, s10, s8
                  addi         s9, a1, 1866
                  srai         s5, t1, 17
                  srl          s8, s8, a4
                  nop
                  sltiu        t6, s5, -116
                  sltiu        t0, t1, -1989
                  auipc        zero, 766520
                  addi         a0, t0, -1224
                  andi         a6, t6, 658
                  nop
                  addi         s10, s7, -1482
                  sltiu        a4, a5, 969
                  sltu         s7, a1, a1
                  xori         t0, s8, -1568
                  nop
                  sra          s5, a4, s6
                  xori         s2, a1, -2004
                  srli         t2, t0, 26
                  andi         zero, a0, 1082
                  ori          t1, a7, 149
                  nop
                  xori         zero, a0, -214
                  srli         s2, t4, 17
                  slli         a5, s3, 31
                  or           tp, s6, t0
                  ori          t6, s6, 285
                  nop
                  xor          tp, t4, s8
                  lui          ra, 871979
                  sub          ra, s0, s4
                  srai         s9, t1, 2
                  sltiu        s8, a4, -1996
                  sltiu        a5, t3, -1892
                  srai         a0, t6, 20
                  srai         a2, s9, 15
                  xor          t4, a6, ra
                  add          t1, s11, s4
                  lui          a7, 347284
                  slli         s7, s7, 27
                  slt          sp, a0, a6
                  xor          ra, tp, t6
                  add          a6, sp, a0
                  addi         ra, s4, -1027
                  sltu         s5, zero, s8
                  nop
                  srl          s7, s3, s4
                  andi         s1, s2, -839
                  sra          t2, t5, s11
                  addi         s10, s7, 673
                  srai         s9, s11, 29
                  lui          ra, 1030517
                  and          a2, t5, s6
                  slti         s8, s8, -2048
                  sll          s2, a6, a4
                  andi         t5, a7, -211
                  slti         zero, a7, 111
                  addi         a2, t2, -142
                  lui          a3, 233105
                  or           tp, t2, t6
                  nop
                  srai         s11, a2, 31
                  ori          s11, s11, 748
                  srli         a2, s8, 11
                  add          s2, s0, t3
                  srli         s6, gp, 29
                  xor          t4, a0, s8
                  lui          gp, 320672
                  andi         t0, a7, 1102
                  and          a0, t6, s3
                  sra          t2, gp, ra
                  addi         s10, s2, -424
                  add          s8, s7, s3
                  andi         a0, s0, -1440
                  slt          s9, s8, t2
                  or           s9, s9, a0
                  xor          t0, s0, sp
                  sra          a3, s7, s1
                  srl          s5, zero, s10
                  add          a5, s9, s10
                  sra          t3, s10, s5
                  srl          t3, gp, s5
                  auipc        ra, 672421
                  xor          t4, s6, a2
                  andi         s2, a5, 1195
                  ori          s10, a2, 1485
                  slt          a7, s4, a5
                  sll          t5, a3, t5
                  srli         a6, a2, 12
                  nop
                  nop
                  srli         a0, s9, 16
                  sub          s1, a1, zero
                  ori          ra, s5, 1719
                  sltu         s6, a1, s5
                  nop
                  xori         zero, t1, -41
                  and          s5, s9, gp
                  lui          a4, 606028
                  xori         s0, t2, 235
                  lui          s8, 194470
                  sll          gp, t1, a7
                  sra          t3, s3, s1
                  xori         a0, zero, -1377
                  andi         t1, t5, -202
                  sltu         t5, t0, s4
                  srli         t6, a3, 5
                  add          a4, s7, ra
                  or           s6, s8, t4
                  xori         s5, a6, 866
                  addi         tp, t0, 1363
                  add          s6, s6, ra
                  xor          a4, a3, s10
                  xori         t3, s6, -1435
                  sltu         s11, t0, a4
                  andi         a3, t0, 1333
                  slt          s9, s8, s11
                  srli         t0, a0, 27
                  sltu         t5, s7, a3
                  or           t0, s11, zero
                  sltiu        s2, t6, -543
                  srai         a3, sp, 29
                  srli         s11, a7, 24
                  auipc        t2, 356400
                  add          a2, s10, t3
                  andi         s0, zero, -801
                  sra          t5, a2, s0
                  srli         a2, a4, 5
                  sra          s9, s10, a1
                  sub          a5, sp, t4
                  andi         s7, s1, 522
                  srli         s2, t0, 12
                  xori         s7, s10, 1086
                  srl          a7, t1, a0
                  sll          sp, s3, a2
                  auipc        s9, 263324
                  ori          sp, zero, -167
                  addi         s7, a7, 1853
                  srl          s8, s3, zero
                  auipc        t0, 821189
                  srai         t6, sp, 28
                  add          a3, a3, s10
                  addi         s6, zero, -1605
                  sub          s11, a6, sp
                  srl          s9, a3, s2
                  andi         a2, s11, -1847
                  srai         a7, t3, 0
                  andi         t6, t6, 1048
                  srl          a4, a0, s2
                  srli         t6, s4, 7
                  ori          t2, s2, 1292
                  slti         t2, a0, 254
                  sll          t1, ra, s4
                  sltu         a2, t1, s10
                  xori         s1, s2, 339
                  srl          s1, s3, t5
                  sub          tp, t6, a5
                  srli         s2, s3, 26
                  and          a4, gp, a6
                  srai         a0, s9, 25
                  xor          t6, a0, a2
                  xor          a7, sp, a4
                  addi         t0, s1, -774
                  andi         a6, a5, -1437
                  xori         t6, a1, -1161
                  addi         a2, a1, 596
                  ori          s9, tp, 1803
                  addi         a3, t0, -1605
                  sra          a4, s8, zero
                  slt          sp, a3, t4
                  srli         a0, ra, 18
                  sra          s1, gp, tp
                  xor          s11, t2, s5
                  srl          t2, a3, sp
                  sub          a6, a1, sp
                  nop
                  slli         s11, sp, 0
                  slt          s2, s11, t5
                  auipc        a3, 282342
                  sub          s10, s1, a4
                  sub          t4, a4, t4
                  slt          t1, a0, t0
                  slt          s10, a2, gp
                  slli         s1, s6, 7
                  sltiu        t3, a5, 1586
                  andi         s6, s4, 57
                  auipc        s11, 373486
                  ori          a7, s1, -1139
                  srl          s11, t3, s5
                  or           s11, t6, s3
                  sltu         s6, zero, a4
                  srai         s11, a7, 20
                  or           t1, s6, s0
                  sra          sp, a3, t2
                  auipc        t0, 750692
                  ori          s6, s1, -611
                  sltiu        ra, t4, -1439
                  srai         gp, gp, 8
                  slli         gp, s2, 25
                  xor          t5, s2, s11
                  nop
                  slt          tp, sp, s2
                  andi         a0, t6, 1729
                  sltiu        a2, gp, 771
                  or           s10, tp, a4
                  xor          s7, t2, s6
                  lui          a0, 785444
                  and          s9, a5, gp
                  sll          s7, t1, a0
                  slli         a0, tp, 17
                  sltu         tp, gp, s3
                  ori          a3, a5, -2015
                  sra          s2, s9, a7
                  xor          gp, t5, tp
                  and          s0, a2, s3
                  srli         a5, t1, 0
                  sra          s9, s11, a3
                  or           s11, t1, s0
                  addi         ra, zero, 1769
                  auipc        gp, 281084
                  add          s10, t0, s3
                  auipc        tp, 470365
                  add          t1, s0, a2
                  sub          t5, t0, gp
                  xor          a4, a4, s4
                  li           t6, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           s2, 0x80000000
                  li           a2, 0x0
                  li           a0, 0xffffffff
                  li           s8, 0xffffffff
                  li           s10, 0x80000000
                  li           sp, 0xe065327c
                  li           t4, 0x8619816f
                  li           s6, 0xffffffff
                  li           s1, 0x0
                  add          s10, s6, t6
                  sub          s6, sp, s2
                  nop
                  lui          sp, 999528
                  lui          s2, 556859
                  addi         a0, s10, 1317
                  sub          a2, s1, a2
                  nop
                  sub          s2, t6, a0
                  nop
                  add          s10, t6, s6
                  add          a0, a2, t4
                  nop
                  add          s6, t6, t6
                  lui          a0, 180480
                  add          s6, t6, s10
                  addi         s8, a2, 1979
                  addi         s6, s2, -332 #end riscv_int_numeric_corner_stream_9
                  srai         s2, a5, 8
                  sub          t4, s9, s9
                  srai         a6, s7, 18
                  addi         s6, s0, -1941
                  andi         t2, s10, 782
                  nop
                  srli         sp, s10, 7
                  slli         tp, s10, 30
                  srl          ra, s7, a6
                  sra          s11, s9, s3
                  sra          t4, a4, a5
                  sll          a5, t6, s1
                  ori          a2, a4, 482
                  ori          s0, t3, -763
                  slli         a2, t5, 21
                  and          a6, s8, t0
                  srai         a4, t4, 25
                  and          t6, s10, s5
                  sra          gp, s11, ra
                  srl          s2, t2, t5
                  sltu         s6, t3, a3
                  slt          s7, gp, s7
                  slli         a6, t2, 10
                  andi         zero, t0, 114
                  lui          s6, 140064
                  ori          a5, a2, 1897
                  addi         s5, s0, -458
                  andi         sp, t4, 1495
                  auipc        a5, 497188
                  srai         ra, s11, 22
                  slt          a5, gp, t6
                  sra          t4, a1, t3
                  slli         tp, s5, 27
                  slti         t3, t2, 1671
                  sub          t0, a5, ra
                  add          a6, a6, a5
                  srl          a2, s9, zero
                  add          s8, a6, t4
                  lui          t5, 556177
                  or           s9, a2, s6
                  srai         a7, s2, 12
                  auipc        t2, 435432
                  srai         s6, a6, 25
                  or           tp, s5, a7
                  addi         s8, ra, -711
                  sra          a3, gp, ra
                  sll          s6, s9, s4
                  sltiu        s1, a1, -44
                  slti         t2, ra, -1350
                  slti         t6, s10, -137
                  and          s10, s4, t6
                  sub          s1, s1, s1
                  srai         s0, s7, 31
                  sub          s2, t5, a0
                  srai         t5, s9, 31
                  sra          a7, a2, s6
                  sub          zero, t6, a3
                  andi         t2, a4, 860
                  slli         zero, t3, 21
                  ori          a6, gp, 603
                  slli         s2, t4, 30
                  sll          t6, s4, a2
                  xor          zero, a4, s7
                  add          a2, t1, s11
                  sra          a2, t3, s7
                  srl          s11, t2, a4
                  slti         s5, s4, -808
                  xor          t6, sp, t5
                  auipc        s1, 316075
                  lui          t0, 454971
                  sra          t2, t5, t2
                  nop
                  or           s10, a5, tp
                  sltu         t4, t2, s0
                  sra          a7, s10, a0
                  srai         s7, a3, 30
                  sra          t6, s1, tp
                  sltiu        t5, a5, 944
                  srl          gp, s9, a2
                  slt          t1, s3, gp
                  or           sp, a3, s11
                  slli         t2, a2, 17
                  andi         t3, a6, 509
                  add          s10, s4, tp
                  or           a5, s3, a6
                  andi         a5, s9, -1415
                  or           s2, tp, s8
                  xor          gp, ra, s8
                  xor          a0, s8, a7
                  sra          s5, gp, s4
                  srli         ra, s10, 0
                  sltu         a6, s8, ra
                  xori         t0, tp, -423
                  sltu         a6, t5, a7
                  ori          sp, a1, 1067
                  xor          t6, a1, zero
                  andi         s7, a6, 581
                  and          t3, tp, t4
                  add          ra, sp, t6
                  sra          t4, s0, sp
                  slti         t3, t2, -1624
                  sub          s0, s2, s10
                  ori          a3, ra, -1925
                  sltu         a7, a4, s2
                  srli         a2, t4, 19
                  sra          a4, s3, t5
                  xori         s5, a7, -612
                  xori         a4, a6, 1231
                  or           s11, s4, t6
                  auipc        a2, 273072
                  auipc        a2, 1043629
                  or           s7, a5, a2
                  sll          s5, t6, t2
                  sltiu        a2, s11, 1122
                  slli         t4, t1, 21
                  sll          s0, t1, zero
                  and          a5, t2, s1
                  srli         s7, s11, 13
                  or           s1, t1, t2
                  sltu         t4, t5, s1
                  srl          gp, s2, s10
                  sll          t6, a2, s8
                  sltiu        sp, t1, 1305
                  srai         t1, t1, 8
                  addi         s1, t3, 400
                  add          a2, t1, s1
                  sltiu        t5, s3, -268
                  srl          t4, s8, s5
                  andi         ra, a6, -42
                  addi         t3, s8, 1199
                  sub          t2, s4, a6
                  ori          s8, t4, 809
                  add          s1, s6, t2
                  or           s2, s2, tp
                  sra          zero, t4, a7
                  ori          a7, a1, 1507
                  srai         s1, s7, 7
                  lui          s0, 776679
                  slli         s6, t2, 0
                  lui          s9, 942223
                  ori          s7, s6, 1372
                  nop
                  sll          s5, gp, a7
                  or           a7, t6, t5
                  sltiu        a7, s10, 1586
                  addi         t2, a1, -1963
                  nop
                  sra          sp, a4, t5
                  sltiu        t0, a7, 1626
                  andi         a5, t6, 533
                  add          zero, t3, s5
                  sra          a7, s4, a5
                  xor          t6, s11, t4
                  add          a6, ra, a6
                  slt          tp, tp, s7
                  xori         s7, t6, -2042
                  sltiu        sp, zero, -280
                  sltu         t3, t6, ra
                  srli         sp, zero, 17
                  add          s7, s10, s1
                  sra          t4, a2, s8
                  xori         t0, t2, -320
                  xori         ra, s4, -1409
                  xori         s10, a4, -747
                  srl          gp, s0, s9
                  sltiu        zero, t4, -1869
                  sub          s9, s11, tp
                  andi         a2, a0, -336
                  auipc        s2, 80503
                  and          t2, tp, t1
                  add          t1, t6, gp
                  ori          ra, s5, -1964
                  slti         s11, t6, 1104
                  ori          zero, s5, -1888
                  sll          s1, s2, tp
                  ori          s5, t3, -1476
                  sub          s2, a4, s9
                  sltiu        s9, a0, 618
                  xori         a4, t1, 1606
                  xor          a0, s10, s11
                  xori         a0, s10, -1194
                  srli         s11, s1, 13
                  xor          t5, a2, a0
                  srai         a2, tp, 19
                  ori          s1, a2, -153
                  slti         a7, zero, -716
                  andi         t5, a1, -802
                  sltu         s1, s4, a5
                  addi         a4, s3, -1042
                  addi         ra, a7, 1648
                  xor          s5, s9, s9
                  srli         t4, s7, 0
                  slti         s11, s8, 1496
                  srl          t0, t6, t4
                  auipc        t4, 182591
                  lui          s6, 170760
                  srli         a0, a6, 1
                  xor          tp, sp, s11
                  and          s1, a3, a3
                  sub          s1, t6, zero
                  slti         gp, a6, 1756
                  andi         zero, s5, 143
                  xor          s0, s8, t2
                  sltiu        zero, t6, 1169
                  andi         ra, s9, -103
                  sltu         t0, ra, s2
                  or           sp, a6, ra
                  slli         t3, s10, 27
                  slli         s0, s2, 16
                  srli         s10, s5, 12
                  srl          s1, a0, t2
                  slt          s6, t4, zero
                  sltu         s1, s3, a6
                  addi         s9, s10, 390
                  andi         tp, t6, -1439
                  auipc        sp, 560346
                  slti         a4, a6, -973
                  or           gp, ra, s10
                  xori         s11, ra, 1676
                  auipc        t0, 717872
                  srl          a0, gp, s5
                  srai         s7, s3, 9
                  sll          s11, a1, zero
                  nop
                  auipc        s9, 59318
                  sltu         s7, t0, t6
                  sll          tp, t1, t6
                  add          a5, t5, s11
                  auipc        zero, 512611
                  sra          s7, s3, t0
                  lui          t0, 302026
                  sll          zero, gp, sp
                  sltu         tp, t0, a4
                  sltu         zero, s5, t6
                  auipc        s9, 697903
                  or           a6, a2, s3
                  ori          a7, a7, 427
                  xori         s6, a1, 1842
                  nop
                  srli         s7, t2, 20
                  lui          a2, 271519
                  srli         a5, t4, 24
                  slti         t4, s1, -385
                  slt          a0, s0, a0
                  sll          t6, s3, s8
                  slt          s10, a5, s2
                  sra          a5, s10, s8
                  addi         s11, a4, 286
                  slti         s7, ra, -1439
                  slt          s11, t4, a3
                  xori         t0, s3, -1439
                  srai         t6, a5, 9
                  xor          zero, s11, s5
                  or           a7, s7, s6
                  sra          a2, t0, t6
                  xor          t3, t1, a7
                  nop
                  lui          s2, 454168
                  sltiu        gp, t4, -1195
                  or           a2, s11, a2
                  add          a3, t3, s1
                  lui          gp, 263318
                  auipc        a4, 81782
                  sra          t1, s8, a3
                  sltiu        t4, s6, -567
                  sub          s9, tp, s11
                  sub          sp, a5, t1
                  or           a6, s8, a0
                  sra          s10, s1, a6
                  slli         a3, s5, 28
                  xori         s5, ra, -1137
                  sltu         ra, s1, a4
                  srl          t0, s4, a5
                  slt          t3, a4, a7
                  slti         a2, t5, -1121
                  addi         s11, gp, 921
                  andi         t1, s4, 1399
                  addi         a5, gp, -219
                  lui          t6, 612493
                  sltiu        t0, t0, 99
                  slli         zero, s7, 0
                  slti         s6, t5, -1206
                  xor          a5, t5, s11
                  ori          s9, s9, 267
                  srai         t5, a0, 25
                  auipc        t5, 1042923
                  nop
                  sltu         s0, s0, a5
                  auipc        t6, 408434
                  srli         t3, sp, 27
                  sub          t5, s10, a5
                  auipc        gp, 371609
                  xori         t2, ra, -1564
                  srl          t1, t1, s1
                  sll          s2, s5, sp
                  slli         t0, s4, 22
                  slti         s5, t2, 114
                  nop
                  srai         t3, a4, 27
                  sub          s8, tp, s3
                  or           a7, s7, t1
                  add          s0, t5, s10
                  sltiu        a4, a7, 558
                  xori         tp, t6, -1594
                  xor          s0, s3, t5
                  nop
                  sltu         t2, a3, s3
                  and          t4, a5, s1
                  ori          s9, t2, 626
                  lui          s6, 832916
                  sltu         a0, tp, t2
                  and          tp, s8, s7
                  sub          s7, s5, t0
                  srai         s6, a1, 21
                  sltu         gp, s4, s9
                  or           t0, s8, t5
                  or           t6, t0, s6
                  lui          s6, 532971
                  slti         a5, a6, -788
                  srai         s11, s5, 30
                  lui          gp, 849295
                  slli         s1, a1, 6
                  nop
                  sra          s2, s2, zero
                  slli         ra, s1, 3
                  srai         a7, s3, 5
                  add          s9, s3, t5
                  lui          sp, 946239
                  xori         gp, s8, 653
                  add          a2, t3, zero
                  andi         zero, s5, 378
                  xori         t3, s5, -1232
                  srai         s11, s3, 25
                  sub          a7, tp, t6
                  srl          t2, s2, t4
                  srai         a0, s3, 29
                  slli         a5, a5, 15
                  sltiu        a6, t0, -1948
                  and          sp, s10, t1
                  xori         a5, zero, -39
                  or           s1, s7, s8
                  sll          sp, s2, s8
                  slli         s0, a6, 11
                  and          s8, a5, t2
                  sll          s11, s7, s8
                  lui          zero, 764386
                  srai         s0, t2, 28
                  addi         sp, s3, -417
                  srli         ra, t5, 18
                  ori          sp, s8, 1448
                  slli         a0, s3, 12
                  lui          a4, 842408
                  and          s6, s10, t6
                  add          t6, tp, zero
                  srl          s5, t0, t6
                  srai         s11, t5, 22
                  nop
                  xor          a3, a1, s4
                  sltiu        t4, gp, 14
                  xor          t2, s6, a7
                  and          a7, s5, gp
                  sub          t5, s6, t0
                  xor          a4, t2, a0
                  srl          a7, a2, a4
                  addi         s2, t0, 1359
                  srl          gp, a7, s1
                  slti         t6, a1, -2037
                  lui          a0, 197074
                  and          s1, a0, s7
                  slti         t0, s9, -544
                  sra          a4, t0, a5
                  nop
                  srai         ra, s8, 30
                  sll          a6, a7, s5
                  nop
                  andi         ra, t3, -1369
                  addi         s2, t1, 245
                  ori          zero, s1, 464
                  auipc        t6, 341945
                  auipc        a5, 692006
                  lui          s8, 378485
                  sltu         t3, s4, s2
                  lui          s1, 874180
                  and          tp, t0, sp
                  srai         t4, s7, 4
                  srai         t1, s9, 13
                  and          s2, zero, s4
                  slli         s8, t0, 2
                  slli         s2, a4, 28
                  sra          a7, sp, s6
                  ori          s10, s2, 1443
                  xor          a7, t2, s5
                  srl          zero, s0, t0
                  sltu         s11, a1, a7
                  sltiu        a5, s7, 1696
                  nop
                  slli         s7, t2, 2
                  or           t4, s0, t4
                  sll          tp, a2, a2
                  addi         tp, t0, 1858
                  xori         t1, s10, -1061
                  slti         s0, a0, 811
                  add          t0, s4, a4
                  srl          a6, zero, t2
                  sltiu        zero, s3, -1161
                  add          t4, s6, sp
                  sltu         s7, s8, t5
                  sltu         s5, zero, t0
                  add          t0, sp, s1
                  srl          t4, s0, a4
                  nop
                  xor          s5, t4, t4
                  andi         a7, a7, -752
                  sltiu        t6, s8, 375
                  sltiu        t2, s11, -988
                  slt          t2, t5, a7
                  auipc        t0, 603932
                  xori         gp, s3, -866
                  sltiu        s8, tp, -540
                  addi         t0, s9, -349
                  auipc        sp, 892058
                  sub          s6, ra, s8
                  slt          s1, t4, t4
                  xor          s5, s10, a7
                  sub          a7, tp, a0
                  lui          t0, 456832
                  addi         t4, a1, -966
                  slt          ra, zero, s3
                  sra          t4, s2, a6
                  or           a5, s5, a0
                  slt          t6, s4, tp
                  andi         a5, t5, -661
                  andi         s2, s8, 178
                  or           zero, s0, s11
                  andi         t5, a6, 785
                  lui          t4, 387973
                  sll          s5, a3, zero
                  ori          s1, a4, 545
                  sltu         t5, s11, a2
                  sll          s6, t0, s10
                  ori          gp, s6, 1466
                  srai         gp, t4, 7
                  xor          s8, s1, sp
                  srai         t6, t3, 0
                  sltu         s6, sp, a4
                  slti         sp, t4, -1355
                  srai         ra, tp, 24
                  srl          t6, a2, s0
                  or           t3, s0, s2
                  sltiu        t2, s6, -509
                  add          s0, a3, a0
                  sra          t0, t3, ra
                  ori          a7, t1, 1783
                  ori          s0, t3, 774
                  addi         t6, t1, -40
                  sltu         s5, t2, s9
                  ori          s8, a2, -1052
                  andi         sp, s2, -1819
                  auipc        a3, 296285
                  xori         t2, t5, 213
                  xor          t2, t0, a7
                  ori          ra, a3, 1355
                  srai         zero, a6, 11
                  slli         s10, s7, 31
                  srai         a2, a3, 29
                  sub          t1, s9, a3
                  add          s8, s1, s2
                  sltu         a3, sp, sp
                  ori          s5, ra, -190
                  li           t1, 0x0 #start riscv_int_numeric_corner_stream_2
                  li           t2, 0x0
                  li           a3, 0xffffffff
                  li           s10, 0x0
                  li           a0, 0x80000000
                  li           a2, 0x0
                  li           t6, 0x80000000
                  li           a7, 0xffffffff
                  li           t5, 0x80000000
                  li           t4, 0x80000000
                  nop
                  auipc        t1, 454419
                  sub          s10, t4, t1
                  addi         a0, a2, -1120
                  nop
                  lui          t6, 413669
                  addi         a2, t1, 1656
                  nop
                  nop
                  add          t5, a2, t4
                  nop
                  add          t2, a7, t2
                  add          a3, t2, a7
                  sub          t2, a0, a2
                  lui          t4, 1039574
                  add          t1, t4, a7
                  lui          t2, 935931
                  auipc        a2, 611418
                  lui          t2, 604662
                  addi         a3, a7, -1617
                  add          t1, a3, t5
                  auipc        a0, 961844
                  addi         t1, t6, 828
                  auipc        t6, 552337
                  add          t6, t5, t6
                  sub          t4, a3, t5
                  sub          t4, t4, a7
                  add          s10, t6, t4 #end riscv_int_numeric_corner_stream_2
                  sra          tp, s9, a1
                  xor          t3, s6, gp
                  srli         s7, t3, 23
                  sra          t1, s9, sp
                  andi         s8, t6, -817
                  slti         t3, a4, 965
                  sll          gp, s5, t0
                  slti         gp, a7, -907
                  nop
                  xori         t6, s6, -1400
                  and          a7, t2, t0
                  lui          t6, 583860
                  add          zero, s9, tp
                  and          a0, a5, s7
                  nop
                  lui          a0, 916361
                  srli         a6, t0, 13
                  ori          a5, t2, 56
                  srl          t5, t1, t6
                  slt          t0, s9, s8
                  slt          s7, t6, s4
                  lui          tp, 488149
                  slli         a7, t4, 26
                  slli         s1, tp, 26
                  slti         a6, t2, 1767
                  sltiu        a6, s6, -1452
                  auipc        sp, 726101
                  xori         s1, ra, -1521
                  srli         s2, s0, 13
                  sub          a6, t4, t2
                  sltu         a7, s8, t1
                  xori         a3, a1, 820
                  sra          s9, a7, s2
                  and          s8, t4, s11
                  slti         ra, s11, -1553
                  slti         s11, t1, -169
                  sltu         t3, s11, t3
                  and          t0, a7, s6
                  xori         a5, s8, 955
                  slti         gp, a2, 1628
                  sltiu        s1, a5, 223
                  or           sp, a2, gp
                  slli         s9, gp, 7
                  xor          a7, ra, a6
                  ori          s11, t3, -1023
                  and          gp, t0, s0
                  sra          t4, zero, a3
                  lui          s0, 311732
                  sltu         zero, a5, zero
                  ori          s8, ra, 1206
                  srai         a6, a0, 26
                  auipc        s5, 581116
                  and          t5, s6, s0
                  slli         a5, s3, 1
                  sltu         s2, t2, a2
                  srli         s6, t2, 19
                  slli         t0, t2, 23
                  ori          s0, ra, -1968
                  nop
                  nop
                  nop
                  srai         s1, s0, 20
                  srai         a4, s11, 7
                  lui          s6, 800078
                  ori          s11, s8, 1006
                  nop
                  auipc        s9, 763975
                  srli         a6, a3, 7
                  sub          t2, t0, sp
                  slt          s7, a4, s3
                  sltu         a0, s10, s0
                  or           a3, s2, gp
                  sub          s7, zero, t4
                  sra          s9, gp, a1
                  nop
                  sltiu        a6, s9, 591
                  nop
                  lui          t0, 979729
                  nop
                  andi         s0, a0, 307
                  srai         t6, s1, 5
                  andi         s10, t4, 1485
                  slti         t5, t6, 797
                  srai         s9, gp, 14
                  sub          s6, t6, s9
                  and          t3, a3, s3
                  xori         s9, sp, -1869
                  srai         sp, s9, 26
                  add          a4, t3, t1
                  xori         a4, sp, 1985
                  ori          tp, t5, 594
                  ori          s6, t6, -1343
                  slt          a6, t3, a2
                  addi         t5, t4, 1317
                  srl          a2, a5, s10
                  slli         a7, s6, 16
                  add          zero, s4, a7
                  auipc        s11, 663774
                  sub          t4, s7, sp
                  sra          s1, a2, t4
                  nop
                  srai         a6, s4, 21
                  srl          s8, a5, s7
                  sra          s0, s8, s9
                  sltu         t1, s4, a2
                  srl          t6, t6, sp
                  srli         s5, zero, 30
                  sub          a0, s9, t5
                  or           t6, a7, t6
                  andi         s11, s1, -944
                  sub          s8, s2, a7
                  ori          a2, s10, -1092
                  lui          ra, 920031
                  srai         t3, t0, 13
                  sltiu        sp, a4, 568
                  nop
                  srai         s9, s10, 18
                  sll          s8, a5, tp
                  sltiu        zero, t1, -988
                  srl          zero, s4, a2
                  nop
                  xor          t1, t3, a5
                  add          a7, tp, t1
                  slt          gp, s3, a7
                  andi         t3, s3, -128
                  lui          s8, 240187
                  srai         s1, t0, 8
                  ori          t0, s7, -778
                  sra          s10, s0, s5
                  lui          t1, 761802
                  sll          t3, s0, zero
                  xori         s2, t6, -324
                  sltiu        t3, t3, -1609
                  sll          s2, s7, s6
                  srai         s6, t5, 0
                  add          s6, s7, s11
                  xori         a2, ra, -1923
                  ori          t1, s9, 299
                  ori          s9, t3, -1428
                  or           s9, a3, s2
                  srli         a2, s2, 29
                  sltiu        s8, a3, -932
                  ori          s0, a2, -688
                  auipc        s5, 732691
                  sltu         s8, s2, ra
                  sll          t4, t6, s6
                  ori          s2, t5, -110
                  nop
                  sra          s10, t2, gp
                  auipc        s1, 578107
                  auipc        s11, 111657
                  sub          s11, s8, t4
                  sub          tp, s10, ra
                  sltu         zero, t3, s8
                  srli         a4, zero, 29
                  add          t3, s6, gp
                  auipc        t3, 883890
                  srai         s7, s1, 8
                  xor          a4, ra, s0
                  auipc        a0, 548410
                  sub          a4, ra, gp
                  andi         a7, s6, -301
                  or           gp, s4, t6
                  sra          s10, s3, t2
                  slt          sp, s4, s1
                  xori         t5, a3, -578
                  srli         s5, s6, 18
                  sub          zero, zero, s2
                  slli         t3, s1, 16
                  xori         s2, t4, 591
                  srli         a4, a1, 28
                  auipc        t5, 437400
                  slt          s10, s7, a6
                  slli         s6, s11, 27
                  xori         a6, gp, 55
                  addi         t1, tp, -1549
                  ori          gp, t6, -1639
                  or           a4, a4, s0
                  and          s11, ra, gp
                  or           s6, s10, ra
                  and          t6, s0, s7
                  slli         sp, sp, 12
                  srl          t4, s2, t0
                  sra          a4, s7, t0
                  srai         s2, t5, 24
                  andi         s10, a1, 1018
                  sltu         s7, t2, s1
                  nop
                  xor          t1, s3, sp
                  or           s5, t6, zero
                  and          a6, gp, s4
                  auipc        a6, 258484
                  sltu         s11, s7, s11
                  and          s2, a6, s0
                  ori          sp, zero, 1117
                  srl          a7, s1, s7
                  srai         a5, s2, 17
                  ori          gp, s8, -597
                  sll          t2, t2, t5
                  nop
                  sub          a0, ra, ra
                  sltu         t5, s11, zero
                  slli         s6, a0, 20
                  sub          t6, gp, t5
                  sltu         zero, s8, s0
                  sra          t1, t0, s4
                  nop
                  sltiu        s10, a7, -712
                  sra          t1, s4, a6
                  sub          tp, tp, s3
                  or           s6, s0, s9
                  srl          a3, t6, a7
                  or           s0, t6, a2
                  slti         t4, a0, 551
                  sll          a7, s4, s0
                  xori         t6, t0, -1283
                  lui          t0, 653096
                  nop
                  addi         t4, t5, -612
                  sltu         a7, s10, a6
                  sltu         s7, s6, s4
                  or           s0, ra, a5
                  and          a6, s4, a2
                  sub          t0, tp, ra
                  ori          a5, t5, -1907
                  sra          t3, zero, s9
                  slt          a7, a2, a5
                  sra          ra, s3, s2
                  srli         s0, t2, 9
                  xor          s2, a6, t4
                  sra          s11, s5, t4
                  ori          a5, a5, 1351
                  sltiu        t3, a7, 864
                  sra          a7, s4, sp
                  add          sp, zero, s6
                  xori         t4, t1, 715
                  xori         a4, a5, 1788
                  or           gp, s1, gp
                  auipc        tp, 371798
                  nop
                  slt          t0, a0, s7
                  srl          a4, gp, t0
                  andi         a3, t1, -636
                  andi         a6, s10, -1838
                  and          t3, a2, s9
                  xor          a2, s9, a6
                  andi         ra, t5, 1981
                  auipc        s10, 670072
                  auipc        a5, 32457
                  addi         zero, s0, -1032
                  andi         a5, t5, -950
                  xor          s0, t5, s5
                  and          a3, t0, t5
                  auipc        a5, 776374
                  sub          s8, s1, s6
                  srai         t6, s7, 17
                  ori          s1, s3, 1996
                  srl          s10, t0, a1
                  or           s2, a0, a2
                  sra          t0, sp, t2
                  srl          a0, s8, t1
                  sltu         s8, t0, a1
                  srai         s6, s10, 30
                  nop
                  andi         t4, t3, -1528
                  nop
                  slt          gp, t5, s9
                  srl          s1, a0, s5
                  addi         s10, t6, -155
                  srai         t2, a3, 16
                  and          a5, s5, a3
                  xor          t1, a1, s2
                  addi         a7, s0, 640
                  slt          s5, gp, a3
                  nop
                  sltu         a5, t3, s5
                  xori         s6, s2, 1071
                  sll          t1, a3, t0
                  andi         s10, s5, 616
                  sll          s8, s9, a3
                  slti         s9, a7, -992
                  and          a5, s4, t6
                  slti         ra, t1, 552
                  slt          t6, s11, a3
                  slli         s1, t4, 0
                  nop
                  andi         s9, s0, -1297
                  or           t6, t2, a4
                  sltiu        s6, a1, -238
                  xor          s8, s10, s10
                  add          a7, s7, s0
                  sub          t3, s4, s2
                  srl          a7, t2, sp
                  sub          t5, t3, t2
                  addi         s6, s8, 614
                  andi         s6, s6, -233
                  nop
                  lui          t1, 518912
                  sra          s5, s3, t3
                  and          t4, s5, s5
                  srli         t6, s0, 14
                  or           s11, t5, tp
                  slt          s2, a0, a7
                  slt          zero, a7, sp
                  ori          a4, s4, 664
                  andi         t1, a7, 1369
                  sub          gp, a5, a6
                  ori          t1, a2, -516
                  or           s0, t6, s1
                  srli         a0, s8, 18
                  add          a7, a4, t2
                  srl          ra, t0, ra
                  slt          s9, s2, s2
                  addi         a7, s5, 1562
                  andi         t2, t1, -577
                  slli         t6, a2, 16
                  ori          s1, s4, 1281
                  or           t2, sp, t2
                  and          s5, s4, t6
                  andi         t0, s1, -96
                  ori          t5, s3, 1001
                  slt          zero, t6, gp
                  sll          t5, s2, gp
                  sltiu        s10, t0, -1013
                  add          s5, a0, s5
                  sltu         tp, t2, s3
                  sub          a3, a6, s1
                  sub          a6, s1, s6
                  srl          s5, s0, s9
                  sra          tp, s6, a7
                  sra          a6, s7, t5
                  auipc        ra, 740491
                  or           tp, t1, sp
                  and          a2, t2, t2
                  xori         gp, gp, 582
                  add          a5, s0, s8
                  slli         s7, s5, 23
                  auipc        a2, 648916
                  andi         s0, s2, -232
                  slt          s10, s4, s2
                  xori         t0, zero, 847
                  ori          s11, t2, -1210
                  or           t1, ra, s6
                  srai         s2, a4, 16
                  sltiu        a4, s9, -624
                  andi         a4, a5, 311
                  ori          s11, s9, 1270
                  slli         s1, a1, 1
                  sub          zero, a3, t4
                  slt          s1, s4, s5
                  andi         s2, t2, -612
                  auipc        t0, 193057
                  add          gp, a3, s5
                  sra          a3, s10, a2
                  slli         s11, s10, 30
                  xor          s11, s3, s0
                  srai         zero, zero, 26
                  add          sp, s8, s2
                  slt          s10, s9, s9
                  andi         t6, s2, -291
                  sra          s1, ra, gp
                  nop
                  nop
                  nop
                  lui          t3, 615656
                  sltiu        s9, t1, -1958
                  nop
                  slli         t2, gp, 16
                  lui          a4, 740358
                  add          a4, s7, t3
                  slti         s6, a6, -589
                  sub          zero, t0, s7
                  li           t5, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           t0, 0xffffffff
                  li           t4, 0xffffffff
                  li           s11, 0x80000000
                  li           a4, 0x80000000
                  li           a6, 0x0
                  li           s9, 0xffffffff
                  li           a0, 0x0
                  li           sp, 0xffffffff
                  li           a7, 0x0
                  lui          a7, 867794
                  add          s11, a4, s9
                  addi         a6, t0, 181
                  nop
                  auipc        a4, 481927
                  sub          sp, s9, t5
                  add          t0, sp, s9
                  nop
                  auipc        sp, 838342
                  addi         t0, s9, -1152
                  addi         s11, a0, -1706
                  nop
                  add          a0, t0, a6
                  auipc        a7, 356477
                  auipc        t4, 955968
                  sub          a6, s9, a7
                  addi         a4, s11, 100
                  auipc        a7, 52836
                  auipc        a0, 177036
                  sub          a0, s9, t0
                  auipc        t5, 570762
                  lui          a7, 908685
                  sub          t5, a7, t0
                  addi         a0, a6, 1407
                  addi         t4, a0, -1409
                  add          t0, sp, t4
                  addi         a0, a4, 777
                  addi         t5, s9, 1682
                  lui          a6, 50182
                  nop #end riscv_int_numeric_corner_stream_11
                  andi         t0, tp, 262
                  xor          t4, a2, a6
                  nop
                  lui          s11, 940632
                  nop
                  addi         a4, a3, 682
                  sub          t1, ra, t5
                  sra          ra, s5, s5
                  auipc        s10, 304193
                  and          a4, s5, ra
                  sub          s2, t2, a5
                  srli         s0, s9, 0
                  addi         t2, t0, -565
                  slt          a5, a2, t1
                  sub          a5, s11, a4
                  sll          t1, a7, tp
                  sll          t0, gp, s8
                  auipc        tp, 771541
                  sub          t2, a6, s5
                  xor          sp, zero, t0
                  sra          s0, a4, s1
                  srli         t2, ra, 13
                  sll          s10, t0, s4
                  addi         tp, a4, 1598
                  srli         t3, s6, 1
                  srai         a4, a7, 9
                  auipc        s10, 632754
                  sltiu        s6, a7, 649
                  srli         s9, t1, 15
                  sltu         gp, s10, s0
                  ori          gp, s0, -339
                  xor          s1, s11, a7
                  andi         t5, s2, -417
                  sltu         t3, s11, a1
                  slli         t2, t3, 30
                  sll          a6, s10, a5
                  sll          a6, t5, s10
                  auipc        s1, 197925
                  slt          a5, a2, gp
                  sltu         s11, s2, s3
                  slli         t0, s10, 1
                  andi         s0, s5, -1498
                  and          s5, tp, s4
                  sub          s9, s2, s6
                  sll          gp, a5, s3
                  ori          t2, sp, -118
                  ori          s6, t0, -1407
                  xor          s0, s4, t0
                  xori         s8, zero, 1514
                  addi         a0, t0, -1858
                  srl          t2, s5, s11
                  auipc        tp, 77667
                  auipc        t6, 491458
                  sub          a6, a4, zero
                  sltu         t2, s5, s2
                  slli         t1, s5, 10
                  sll          s7, t4, a7
                  slli         a6, s1, 26
                  slt          sp, s10, ra
                  andi         a0, a7, -697
                  slti         a7, a7, -123
                  xori         s2, s0, 241
                  sltu         a7, s11, s7
                  or           t5, a3, t6
                  srl          tp, s6, s4
                  auipc        ra, 862575
                  lui          s9, 983430
                  ori          s0, a0, 887
                  xor          a5, s2, tp
                  auipc        s0, 965645
                  xori         a0, a5, 1008
                  ori          t5, a7, -740
                  auipc        t2, 778069
                  nop
                  addi         s2, t2, 605
                  lui          zero, 728884
                  addi         t1, a5, 1010
                  sltiu        tp, s6, 88
                  lui          t4, 342982
                  slt          s1, a3, s10
                  and          t2, a2, a2
                  ori          zero, a1, -1207
                  lui          sp, 796746
                  slti         s1, t6, -415
                  lui          s2, 401782
                  li           s11, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           a3, 0xffffffff
                  li           tp, 0xffffffff
                  li           s5, 0xffffffff
                  li           s9, 0xffffffff
                  li           s0, 0x0
                  li           ra, 0x8c0941a5
                  li           a2, 0xffffffff
                  li           a4, 0xffffffff
                  li           s8, 0x0
                  lui          ra, 784065
                  lui          s0, 1040448
                  auipc        a2, 858184
                  sub          tp, s5, ra
                  lui          s11, 82623
                  auipc        s8, 529972
                  auipc        s0, 262483
                  auipc        ra, 919218
                  addi         s8, ra, 1437
                  addi         s5, s8, 865
                  addi         a4, a2, -254
                  nop
                  add          s5, a3, a4
                  lui          a4, 28889
                  sub          s11, a2, s11
                  lui          s9, 709301
                  add          s0, a2, ra
                  addi         s11, tp, 808
                  lui          tp, 905969
                  addi         a2, s8, 227
                  auipc        s11, 601266
                  sub          s5, tp, a2
                  lui          s5, 643991
                  sub          s0, s11, s11
                  addi         a2, ra, -1001
                  add          s8, s8, s8
                  auipc        ra, 383290
                  addi         s0, a4, 703 #end riscv_int_numeric_corner_stream_6
                  sltu         s10, s5, s3
                  ori          s10, s10, 1817
                  xor          a0, s6, a5
                  or           a3, s0, a1
                  or           t4, a0, s11
                  xor          s5, ra, a1
                  sll          ra, a0, t4
                  srli         s11, t6, 21
                  sltiu        t1, a5, 1023
                  slti         a0, a4, 1166
                  sltu         a4, zero, a0
                  slt          sp, t2, s10
                  xori         a7, s9, 641
                  andi         a6, s0, 251
                  xor          t6, gp, a1
                  slt          t1, zero, a5
                  sra          s2, a5, s2
                  srli         t4, s9, 22
                  addi         t1, a5, 299
                  andi         s8, t5, -1326
                  lui          t6, 314416
                  sra          t6, ra, gp
                  xori         s7, t1, 186
                  xori         s2, s11, 1946
                  sltiu        s11, t3, 867
                  ori          s5, s5, 121
                  addi         ra, t2, -1594
                  addi         s6, s4, 1529
                  srli         t4, s5, 24
                  li           a6, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           a2, 0x80000000
                  li           s0, 0xffffffff
                  li           s9, 0x80000000
                  li           s1, 0x80000000
                  li           t3, 0x80000000
                  li           s10, 0x3514e1ca
                  li           t0, 0xffffffff
                  li           gp, 0x80000000
                  li           s8, 0xa205aca2
                  nop
                  sub          s8, t3, t0
                  nop
                  add          a6, t0, a6
                  sub          s0, t3, s10
                  auipc        a2, 339283
                  addi         s9, s1, 654
                  auipc        a2, 632886
                  nop
                  lui          a6, 62584
                  sub          s8, a2, s0
                  lui          s9, 248631
                  auipc        gp, 332520
                  addi         s9, a6, -1630
                  sub          s0, a6, a2
                  add          t0, gp, s8
                  add          gp, s9, a2
                  add          gp, s10, s1
                  add          t3, t0, a2
                  auipc        s10, 561238
                  nop
                  addi         a2, a2, -244 #end riscv_int_numeric_corner_stream_15
                  sltiu        a7, a0, -509
                  srli         s5, t1, 11
                  andi         a5, s4, 158
                  srl          t1, ra, s3
                  sra          t3, a0, t2
                  sltiu        s9, t2, -305
                  slli         tp, t4, 16
                  slli         s5, a3, 12
                  add          t6, a1, zero
                  addi         s11, s7, -1492
                  srai         a7, s8, 16
                  auipc        s7, 803834
                  lui          a0, 936011
                  add          s0, s10, zero
                  srl          s6, s0, s10
                  or           s11, a0, t0
                  sra          s6, s1, s4
                  or           a7, t4, s6
                  srai         a3, a1, 0
                  lui          tp, 472188
                  addi         a6, a6, -1975
                  sltu         gp, zero, t1
                  lui          gp, 448088
                  sltu         t4, s3, a0
                  sub          a2, s3, s9
                  auipc        ra, 727629
                  auipc        a0, 716062
                  slt          t0, s10, s7
                  lui          ra, 277001
                  addi         s8, s11, -1134
                  srai         t6, t0, 7
                  slli         s6, s6, 13
                  and          s2, s5, s7
                  auipc        s6, 775251
                  sll          t3, a1, s10
                  srl          a4, a1, s6
                  slli         t0, a3, 24
                  srli         s8, zero, 28
                  srai         t6, a5, 7
                  or           a6, s6, s7
                  srli         s9, t0, 31
                  srai         a5, a0, 7
                  sub          s10, s7, a3
                  xori         t0, sp, 1430
                  srl          tp, s10, s3
                  slt          a3, s10, s3
                  slt          t6, a1, t1
                  ori          s0, ra, -1318
                  xori         ra, s11, 1176
                  xori         t3, a4, 16
                  slt          s7, t6, gp
                  slli         t6, s3, 28
                  slt          t2, t5, t1
                  auipc        a7, 639454
                  xor          sp, s3, t4
                  sltu         t0, a2, s11
                  sub          s8, s0, a6
                  slt          s9, a5, t3
                  srl          s10, sp, s0
                  addi         a0, a7, 1700
                  sltu         tp, s7, s0
                  add          s7, a3, s11
                  sra          t2, s11, s1
                  srli         s1, ra, 18
                  slli         t4, s5, 22
                  srl          a3, t2, s4
                  xori         t5, a7, 1250
                  slti         s8, s1, 1959
                  slt          s1, s4, s8
                  slti         s7, a4, -1405
                  lui          t2, 307243
                  slti         s9, t4, -1649
                  srl          s9, s3, a5
                  lui          sp, 377717
                  slli         t4, s8, 15
                  nop
                  sra          s0, a5, a2
                  xor          s7, gp, t1
                  slt          s7, s1, s7
                  sra          s2, t4, t5
                  slti         s5, a6, 78
                  srl          sp, t3, ra
                  sub          t3, s2, tp
                  xori         t1, t4, -1317
                  slt          gp, a2, t3
                  slli         t3, t0, 1
                  slt          ra, gp, t2
                  slli         a6, a5, 11
                  andi         s1, s9, 2028
                  ori          a0, t4, 898
                  addi         a5, a1, -451
                  lui          t3, 819739
                  or           t4, a3, s2
                  slti         gp, zero, -912
                  addi         a2, ra, 977
                  and          s0, t0, zero
                  slt          s8, s6, t4
                  and          s10, t0, a1
                  sltiu        ra, s6, 329
                  auipc        t5, 720619
                  auipc        a3, 410229
                  sltu         a0, t2, sp
                  andi         a2, t3, 1167
                  sll          ra, a7, s2
                  auipc        a3, 40384
                  srl          a2, s9, s5
                  add          a4, t1, s9
                  lui          zero, 403997
                  srl          t6, a3, a0
                  sll          t2, a1, t1
                  sltu         a0, s7, ra
                  or           t3, a6, t4
                  nop
                  slt          t4, s3, tp
                  srl          a0, sp, s5
                  xori         zero, t2, 162
                  sll          a7, s0, a4
                  and          s1, sp, t6
                  lui          a2, 821588
                  or           a3, sp, a1
                  srl          ra, t1, s7
                  xor          s5, s0, sp
                  xori         s2, t2, 349
                  xori         t0, s1, -1466
                  and          s10, a3, s2
                  addi         a6, zero, 415
                  sra          t1, t0, a2
                  ori          s0, a5, 1169
                  xor          s5, s9, a3
                  sra          s5, s8, t1
                  auipc        gp, 66310
                  slli         a5, t6, 0
                  lui          ra, 544407
                  sub          s9, s11, a7
                  sltiu        s8, sp, -1985
                  sub          sp, s5, t3
                  sltiu        a6, t3, 659
                  addi         s0, a3, -188
                  srai         t0, tp, 7
                  slti         s11, t5, -635
                  xor          s11, a5, t3
                  srl          s1, a5, t2
                  srai         a0, tp, 13
                  sub          s5, ra, s3
                  slti         a0, a6, 1428
                  andi         t6, tp, -1294
                  srai         tp, t6, 19
                  add          a7, s9, s9
                  nop
                  and          gp, t6, s1
                  andi         s6, t5, 664
                  slli         sp, a0, 13
                  and          s10, s0, a0
                  xor          a2, s4, a3
                  srli         tp, s5, 23
                  srli         ra, s3, 24
                  lui          ra, 912113
                  auipc        s5, 588300
                  ori          tp, a6, -2001
                  sltu         tp, ra, a7
                  srl          a0, a5, gp
                  lui          a3, 282507
                  nop
                  andi         t6, t3, -1985
                  sub          s6, a1, s5
                  sra          t5, s5, s2
                  slli         zero, s0, 13
                  auipc        sp, 491454
                  slt          a2, s5, s5
                  nop
                  auipc        sp, 73164
                  and          t4, a5, a3
                  srli         sp, t1, 3
                  andi         t0, s0, -1067
                  srli         a0, s5, 22
                  ori          t4, s1, 162
                  srl          s6, t2, a5
                  xori         s6, s8, 1557
                  xori         t6, t6, 214
                  slti         s5, a7, -149
                  srl          s8, ra, t2
                  addi         s7, t0, 1169
                  slt          a2, s4, t1
                  sra          zero, s0, s8
                  add          s8, t6, s7
                  and          zero, s5, s3
                  sll          s8, s2, a6
                  sltu         s6, t1, a1
                  nop
                  or           a6, t6, s6
                  ori          sp, s5, -531
                  ori          t6, t3, -281
                  srai         gp, s6, 4
                  srl          t5, t1, s8
                  lui          tp, 291841
                  addi         a4, s1, -1720
                  srai         t4, s11, 31
                  nop
                  srl          gp, tp, s6
                  slli         s1, s5, 8
                  or           a4, s1, t3
                  add          s1, a1, s2
                  nop
                  andi         a0, s4, -201
                  and          a2, s11, gp
                  andi         a6, s10, 592
                  slli         a4, t1, 12
                  nop
                  or           s6, zero, t1
                  srai         t1, s3, 30
                  addi         ra, a6, -1718
                  sub          s8, s7, t6
                  sltu         a0, zero, zero
                  slti         s0, t6, -107
                  andi         a4, s8, 1602
                  xor          s1, a4, zero
                  ori          zero, t0, -178
                  xor          s5, s7, t3
                  srli         ra, s6, 27
                  sltiu        s1, t6, -694
                  sltu         s7, s3, s3
                  lui          a0, 310853
                  slti         t2, a0, -1430
                  sltu         a6, s0, tp
                  sra          t2, s10, a4
                  xor          sp, s1, a4
                  sub          s2, s2, t3
                  slti         s6, s5, -295
                  srl          s5, s3, s11
                  andi         a2, s1, -1493
                  and          t2, s1, s11
                  sll          s0, t3, gp
                  srl          s8, t1, s5
                  add          a7, s7, a4
                  srai         t4, t5, 15
                  sll          s2, a7, s4
                  srli         t1, a3, 17
                  ori          sp, s6, 726
                  srl          s5, a5, t3
                  srli         a2, a4, 13
                  sub          a7, a3, s5
                  lui          sp, 452257
                  slt          s7, t5, s2
                  slli         a4, t3, 14
                  sub          a0, s11, a5
                  srl          s7, a6, s2
                  srai         s5, zero, 1
                  slti         s0, s4, 1021
                  lui          s11, 761231
                  slli         t0, a4, 12
                  nop
                  add          s1, s0, t5
                  addi         a6, s5, 1374
                  slti         s6, s3, 2006
                  ori          gp, zero, 833
                  ori          t6, t3, 127
                  sub          zero, tp, a2
                  srai         t6, s7, 31
                  slti         zero, gp, -1997
                  sltiu        a7, s5, -240
                  ori          t2, s9, -832
                  ori          s1, t4, 886
                  xor          zero, t2, a6
                  slli         t4, s2, 31
                  and          t0, t4, sp
                  auipc        s9, 273692
                  xor          t1, t4, a2
                  and          a0, sp, t3
                  slt          s0, s11, a6
                  slli         gp, s2, 20
                  lui          sp, 504364
                  xor          a7, s8, t6
                  sub          s2, s2, s3
                  xori         a2, t1, -1055
                  sra          a0, s4, s5
                  slli         s9, t4, 29
                  auipc        t3, 785678
                  sll          s9, s8, s8
                  srai         tp, a1, 8
                  srli         t4, a4, 2
                  addi         t3, t6, -1838
                  auipc        t5, 975477
                  auipc        a6, 843550
                  or           zero, s6, zero
                  add          t3, a6, t6
                  xori         sp, a2, -259
                  xori         zero, a7, -1165
                  lui          t1, 353070
                  xori         sp, a7, 1050
                  srai         s1, a0, 30
                  sltiu        a6, s4, 579
                  sra          a5, sp, s10
                  and          t6, t4, t0
                  add          t3, s6, t1
                  sltu         s8, t1, sp
                  andi         t4, t3, -445
                  lui          t0, 626644
                  slt          sp, s7, s11
                  andi         s8, s7, -1247
                  sra          s7, s4, s4
                  slti         s11, a6, 1934
                  srai         s6, a5, 2
                  slti         s11, s8, -377
                  auipc        sp, 631406
                  sltu         tp, zero, a4
                  addi         t5, ra, -45
                  or           s9, t0, a3
                  or           zero, tp, t3
                  srli         s1, s9, 13
                  and          ra, s8, a4
                  sltu         zero, a6, s3
                  lui          s9, 271679
                  slti         a4, s9, -182
                  srai         t0, s7, 2
                  xor          tp, t3, zero
                  sltiu        ra, s10, -373
                  xor          t2, a2, a5
                  andi         s8, tp, -1816
                  srl          a2, a3, t0
                  slli         s8, t5, 7
                  srai         t6, s0, 20
                  nop
                  slt          s10, a0, t6
                  sra          zero, t5, t1
                  xor          s7, a0, zero
                  sll          t3, t2, a1
                  lui          a0, 763694
                  srli         s7, a7, 30
                  addi         gp, gp, 693
                  sra          t1, s7, a5
                  or           a6, t5, s5
                  sra          s8, s11, gp
                  xor          zero, s11, t2
                  lui          t4, 605114
                  srli         s10, s10, 10
                  srli         s1, s2, 17
                  srai         tp, a2, 21
                  addi         gp, zero, 1733
                  srai         s5, a2, 15
                  sub          a5, sp, t4
                  xor          a7, sp, a4
                  ori          a2, t1, 303
                  sll          a0, s7, t0
                  xori         a3, s11, -1019
                  ori          tp, s3, -1036
                  lui          t1, 86108
                  and          t5, t6, s9
                  xori         a3, t3, -16
                  nop
                  ori          a2, a5, 1290
                  xor          t1, t4, a4
                  xor          sp, t4, a1
                  sltu         t4, t1, t3
                  sltiu        a6, t0, 79
                  andi         a5, s6, 327
                  sltu         s11, t2, t3
                  slti         s0, s10, -342
                  sub          s10, s8, t3
                  xor          s1, zero, t2
                  srai         s8, s5, 5
                  or           s2, t1, s8
                  slt          s10, s0, t3
                  xori         gp, s0, 8
                  xor          s5, t0, s7
                  srl          ra, ra, s0
                  lui          t3, 600544
                  auipc        sp, 283927
                  sltu         t3, a6, t3
                  srl          s7, a6, a7
                  auipc        a4, 16418
                  or           zero, a6, a5
                  srli         a4, gp, 0
                  sltiu        s6, a1, 229
                  srl          s9, s5, s3
                  xori         s11, s9, 1380
                  srl          t2, zero, s0
                  nop
                  xori         gp, s4, 60
                  sra          s1, t5, s10
                  xor          t5, a6, s1
                  nop
                  slt          a3, s6, s0
                  slli         a3, a0, 27
                  lui          a7, 874421
                  sltu         s5, s9, s10
                  srai         zero, a5, 25
                  or           t4, s11, sp
                  addi         t6, s4, 994
                  lui          zero, 746081
                  sra          sp, s2, tp
                  slt          s2, a7, t4
                  nop
                  ori          t1, s1, -1218
                  ori          a6, s2, -656
                  andi         s8, sp, 1913
                  sll          a4, t3, s3
                  slti         s0, a6, 674
                  nop
                  addi         s1, s9, -1370
                  xori         a4, s11, 1059
                  sll          s5, s5, t6
                  andi         zero, t5, -1973
                  slti         s1, s0, 1793
                  xori         t3, t1, 1616
                  nop
                  sra          s7, sp, s2
                  srli         zero, a2, 3
                  auipc        t0, 763283
                  srl          s5, a5, a1
                  srli         t0, t6, 22
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           a6, 0x212e5cb0
                  li           t6, 0x4ad51b95
                  li           a7, 0xffffffff
                  li           a4, 0x80000000
                  li           a2, 0x80000000
                  li           gp, 0x80000000
                  li           t0, 0xffffffff
                  li           s9, 0x6c2ef680
                  li           t4, 0x0
                  addi         a7, a4, 84
                  sub          a2, t4, tp
                  lui          gp, 586697
                  addi         a2, gp, -1325
                  lui          gp, 526862
                  nop
                  addi         t6, a7, 1842
                  auipc        gp, 569501
                  addi         gp, a4, -433
                  add          a7, t0, s9
                  addi         a7, s9, -534
                  add          s9, t6, a7
                  lui          t0, 176417
                  auipc        gp, 986505
                  auipc        gp, 916786
                  addi         tp, a7, -747
                  addi         t4, gp, 1414
                  add          tp, s9, a4
                  lui          a4, 831930
                  sub          tp, s9, s9
                  nop
                  sub          a2, a4, s9 #end riscv_int_numeric_corner_stream_14
                  srli         a7, s11, 1
                  or           s9, t1, s11
                  srl          t5, zero, s3
                  slli         s7, t2, 19
                  slt          s5, s0, s7
                  srai         s1, s4, 14
                  xori         t1, a5, 992
                  sltu         t6, t1, a0
                  sltu         a5, a7, t2
                  slli         s11, zero, 6
                  andi         s6, tp, -1266
                  srl          t1, s10, tp
                  slti         t1, t1, -1963
                  add          ra, s6, a4
                  or           a6, s11, a3
                  or           a3, t4, a2
                  slti         t5, a6, -347
                  ori          a3, s8, -64
                  srl          a4, s1, a4
                  or           a0, t2, tp
                  sra          ra, t2, gp
                  auipc        t4, 624183
                  sltiu        ra, zero, -1531
                  or           s10, t3, a5
                  srai         t4, a7, 2
                  sltiu        s11, s11, 2045
                  sub          s9, s5, a4
                  sub          t3, t3, s11
                  slti         s8, s6, -685
                  xori         a5, a7, 1967
                  andi         gp, a0, -978
                  sub          a5, ra, s6
                  srli         a0, a4, 19
                  ori          s0, zero, 403
                  sra          t1, t6, tp
                  lui          s8, 487433
                  ori          ra, s6, -1158
                  lui          a5, 838494
                  ori          a7, t2, 524
                  addi         s1, t4, 393
                  sra          t6, a4, s10
                  sll          s0, a1, s4
                  xor          ra, s11, t4
                  and          t5, s9, s0
                  sltu         a0, a7, s7
                  nop
                  sub          s11, a4, ra
                  and          t1, s6, a3
                  slt          s9, tp, t3
                  slt          a3, s11, zero
                  add          a7, s7, s8
                  andi         ra, s6, -1519
                  addi         ra, a6, 1009
                  or           a2, s9, s11
                  addi         gp, zero, -617
                  srai         s8, a1, 3
                  auipc        tp, 26008
                  slt          a4, sp, a4
                  auipc        t4, 1008414
                  sltu         t5, t3, s10
                  ori          s8, ra, -1868
                  srl          s11, a6, a6
                  nop
                  sltiu        t0, a5, 894
                  srai         t1, s3, 25
                  slli         s11, a0, 10
                  slt          a5, s0, t6
                  slli         t5, t4, 20
                  sll          a6, t2, t5
                  or           t0, a4, a0
                  sltiu        s6, s4, -425
                  sltiu        a7, s5, 1516
                  sra          s2, t0, a5
                  sll          a5, t0, a6
                  slt          t3, t6, a7
                  sub          a2, a1, s3
                  or           a6, tp, tp
                  or           s8, t2, t4
                  addi         a7, t4, -1770
                  and          t3, s3, ra
                  and          a5, s10, s0
                  srli         t4, s3, 1
                  srai         t4, a5, 22
                  xor          a2, s2, sp
                  and          tp, s8, t3
                  sll          s8, a6, t6
                  lui          s1, 865271
                  or           a3, s10, s7
                  slti         a6, a3, 1103
                  auipc        t1, 764779
                  sltiu        s10, gp, 1770
                  sll          a3, a7, s7
                  add          t2, gp, a5
                  xor          ra, a2, s4
                  srli         t3, a0, 31
                  sll          s1, gp, a1
                  xor          zero, s8, a0
                  nop
                  slt          t5, ra, s1
                  srli         s2, tp, 28
                  sll          t1, a1, s5
                  sltu         a0, tp, t5
                  srli         s2, s10, 1
                  addi         s5, a0, 1235
                  slt          a3, s1, a2
                  andi         s11, s10, -388
                  auipc        sp, 28453
                  or           zero, ra, s2
                  slt          sp, s7, t0
                  sub          t0, s1, a4
                  sub          t4, t4, a1
                  xori         s7, s1, -1989
                  and          s7, sp, s4
                  sub          s5, a7, s3
                  sub          tp, t0, s3
                  and          s5, s2, s3
                  srl          t1, a2, a1
                  and          s2, t4, t5
                  slt          a7, s11, zero
                  srl          a5, s1, t2
                  and          t6, s0, t5
                  srli         t2, s8, 26
                  lui          t0, 22385
                  ori          s10, t0, 1509
                  xori         s2, s7, -2022
                  auipc        a3, 785999
                  sltiu        s1, a0, 1404
                  xori         s5, t0, 1003
                  and          s0, t2, s6
                  sltu         s10, s6, s10
                  auipc        ra, 945320
                  sra          t5, t0, a3
                  srai         t2, s6, 14
                  sltu         t4, t2, s10
                  slli         a7, a0, 2
                  srl          a7, a7, t0
                  xor          a6, a5, t3
                  xor          tp, s6, t0
                  xori         t3, t0, 520
                  sltu         t0, a7, a3
                  srl          sp, t2, s9
                  lui          s6, 232344
                  xor          gp, s4, s6
                  sub          a7, a1, s5
                  or           sp, t3, a7
                  xori         a4, sp, 424
                  xor          s7, a5, t4
                  srli         t3, t0, 3
                  sra          s2, sp, s7
                  slt          a7, gp, sp
                  add          s5, a4, gp
                  auipc        a7, 480657
                  and          s1, t0, s9
                  sll          ra, a1, s11
                  xor          s1, t0, a6
                  xor          t5, a2, s11
                  addi         a6, ra, -34
                  sltu         t2, t2, t5
                  sll          s7, a0, ra
                  sltiu        a6, s8, 435
                  srai         a7, a1, 1
                  srli         s5, t6, 17
                  srli         s0, s1, 22
                  auipc        s10, 114955
                  slti         s6, s11, -910
                  lui          s8, 821158
                  auipc        sp, 897195
                  sra          a0, tp, t6
                  srli         gp, s7, 22
                  and          tp, t0, a1
                  xori         tp, zero, 1377
                  srl          t0, s0, gp
                  andi         a0, a6, 1615
                  slli         s0, zero, 3
                  nop
                  srai         sp, s2, 19
                  slti         a4, tp, 414
                  sll          s10, a0, gp
                  slli         a6, gp, 17
                  auipc        a5, 489182
                  slli         s6, s11, 16
                  lui          s2, 723167
                  addi         t2, s9, -1212
                  lui          t0, 97424
                  xori         s10, s7, -1571
                  sltu         s11, t4, t2
                  slli         a4, s9, 29
                  lui          a7, 62424
                  xori         t4, a4, 2035
                  lui          tp, 859039
                  srl          t3, s1, tp
                  slti         s7, s9, -795
                  slli         s6, t4, 21
                  lui          a3, 691880
                  sltiu        a4, zero, 351
                  sll          zero, t6, t0
                  ori          t2, a5, 395
                  slti         t6, s3, -561
                  addi         t5, s11, 1862
                  nop
                  srli         ra, s10, 25
                  slt          zero, t3, t5
                  sub          a7, s6, a7
                  srli         t0, a0, 9
                  add          tp, ra, zero
                  slti         t6, t0, -1951
                  lui          ra, 560091
                  and          ra, t1, s9
                  srl          s7, sp, ra
                  sll          s10, t2, s7
                  xori         s7, sp, 371
                  xori         t3, s9, 1730
                  srl          t2, s4, a3
                  addi         s0, t6, 1653
                  srai         t4, a5, 14
                  addi         t5, t3, -2014
                  nop
                  sub          s5, a2, s2
                  andi         ra, sp, -1296
                  nop
                  add          a2, t2, a4
                  srli         s2, a1, 2
                  srai         s10, t4, 31
                  sra          s6, a3, t4
                  andi         s5, a6, 1337
                  slt          s6, s2, a6
                  sltu         s10, s11, a0
                  slti         s5, a7, -74
                  nop
                  slti         tp, t2, 750
                  lui          s0, 588044
                  ori          zero, s11, 1176
                  slli         sp, tp, 8
                  sltiu        t1, s11, -20
                  xor          s0, t1, zero
                  srai         tp, a4, 21
                  sltu         a5, t0, zero
                  nop
                  srli         a7, a5, 19
                  addi         zero, s0, 1394
                  sll          t3, s10, s6
                  srli         ra, a5, 2
                  srl          a6, a4, s6
                  srl          a5, s1, s11
                  slti         s10, a6, 178
                  nop
                  addi         s5, a1, -53
                  srli         t1, a7, 19
                  addi         a0, t0, -942
                  srai         t5, s1, 22
                  lui          s0, 840094
                  sltu         s7, s9, a4
                  slli         a5, s2, 4
                  slt          t2, a5, t2
                  andi         sp, a2, -623
                  slti         s0, s6, -1635
                  sra          t2, a4, t3
                  ori          sp, gp, 1216
                  or           s1, t2, s6
                  andi         s10, sp, 1929
                  sra          s2, s1, s10
                  nop
                  sub          s7, t1, gp
                  srl          t0, a2, s8
                  xori         t4, a0, 1650
                  ori          t2, a6, 1301
                  slt          t1, s6, gp
                  slli         tp, s7, 26
                  add          t3, a5, t0
                  srl          t0, t0, s2
                  xor          t1, s1, t3
                  or           s5, t1, t4
                  auipc        a4, 908967
                  srli         tp, t4, 7
                  slli         t2, s11, 11
                  sra          t1, s7, t0
                  srai         a6, a6, 9
                  nop
                  nop
                  sub          tp, s6, zero
                  slti         a6, a6, 582
                  or           s0, a7, t3
                  srl          tp, s8, t3
                  lui          s1, 327145
                  slti         s11, s7, 1255
                  srai         ra, s10, 26
                  add          s1, t0, s8
                  srli         s2, gp, 27
                  srli         a7, s11, 2
                  slti         s10, a3, -1666
                  srl          a3, s7, gp
                  srai         tp, zero, 14
                  add          t1, tp, s8
                  sltu         a6, t3, t6
                  sltiu        a3, s0, 1642
                  srli         s6, a1, 5
                  slt          gp, a0, s10
                  slti         t6, s4, -1979
                  add          a4, s0, s1
                  add          t4, s5, s7
                  auipc        t3, 228675
                  addi         ra, s0, 1003
                  xor          a7, s6, s9
                  slli         s7, s5, 6
                  srl          s7, s1, a6
                  lui          s2, 677635
                  srl          a6, t3, s5
                  srl          s0, gp, s11
                  addi         s5, gp, -634
                  and          t3, a7, a2
                  andi         sp, t6, 863
                  or           a2, a0, s6
                  nop
                  addi         s5, a1, 485
                  slti         a5, s4, -1819
                  xor          t5, s4, sp
                  or           sp, t4, t5
                  addi         gp, a5, -2001
                  slli         t4, s5, 1
                  slt          s6, s0, a2
                  andi         s7, s11, -1019
                  or           a3, t6, gp
                  or           t1, ra, ra
                  sltu         t5, a7, a4
                  or           t4, s5, t2
                  lui          ra, 562787
                  xor          s2, t6, a6
                  or           a4, zero, gp
                  srl          sp, a5, a5
                  ori          t6, a1, -71
                  srl          s7, s6, ra
                  sll          a6, t0, t6
                  or           s6, s9, sp
                  slt          ra, s6, s1
                  or           a7, s0, a4
                  nop
                  andi         s2, s5, -1355
                  add          t4, a1, s1
                  and          gp, a5, a3
                  slt          t0, s2, a0
                  sra          s8, t3, t1
                  or           a6, s10, sp
                  andi         a3, a0, 535
                  srai         s9, s6, 7
                  sub          tp, zero, s7
                  sltu         t2, t4, s7
                  sra          t0, s11, s3
                  or           s2, t3, sp
                  sltu         a5, s3, s10
                  sltiu        t0, s1, -804
                  xor          s8, t6, s2
                  xori         a7, t1, -1183
                  srli         a4, a3, 7
                  and          t3, s6, ra
                  add          t5, t3, a0
                  sltiu        s1, a7, 820
                  srli         t3, sp, 12
                  ori          a7, a3, -1719
                  ori          t6, s10, 1490
                  srai         a7, zero, 5
                  sltu         t6, gp, a6
                  sra          t4, a4, zero
                  sltu         s2, s5, a5
                  and          s5, s4, a1
                  auipc        a5, 556799
                  andi         s5, gp, -1261
                  slti         t4, s8, 1113
                  slt          a5, t3, t4
                  slt          s7, tp, s0
                  sltiu        ra, a5, -1763
                  slt          s9, s5, a0
                  slli         s2, ra, 5
                  srli         t4, a0, 29
                  andi         a7, a1, 947
                  sltu         a4, a2, t0
                  srai         zero, a6, 8
                  sra          s10, s10, a0
                  slt          a3, s6, t5
                  sub          s1, s10, s7
                  and          t2, a3, t6
                  lui          s11, 686211
                  slti         t3, s4, 1310
                  srl          t6, a1, s8
                  sll          a7, s1, s5
                  slt          t4, s5, s7
                  sub          s0, t1, a2
                  srli         s6, gp, 2
                  sra          s9, t1, a1
                  addi         s8, t2, -1616
                  slli         tp, s4, 7
                  auipc        a7, 731211
                  slti         t5, a2, -1067
                  sltu         tp, s8, s0
                  sltu         gp, ra, s11
                  auipc        t0, 666848
                  auipc        t4, 365435
                  andi         t2, t5, 262
                  xor          s5, zero, s11
                  srl          t1, s0, a3
                  srli         t6, t5, 29
                  srl          t1, a4, a1
                  sltiu        s5, s6, -1790
                  addi         tp, t0, 1135
                  auipc        s10, 956538
                  sltiu        sp, s9, -1573
                  andi         s5, s11, 516
                  and          s0, a0, s11
                  slt          a2, s11, s11
                  srai         t1, a6, 14
                  auipc        s2, 544301
                  sltiu        a0, s11, 1701
                  sra          s6, t5, sp
                  sltu         s2, s5, s10
                  srli         t0, s0, 10
                  sub          s5, s7, s6
                  srai         t5, ra, 26
                  addi         s5, t0, 1342
                  auipc        s5, 912753
                  andi         s5, s4, 651
                  or           gp, zero, tp
                  lui          sp, 407138
                  lui          t1, 779819
                  srai         s8, t0, 12
                  xori         t5, a7, -865
                  srai         t3, s0, 31
                  and          a7, s4, sp
                  and          gp, t3, s6
                  sll          t0, s5, t4
                  sra          gp, a3, s11
                  nop
                  sltiu        s7, sp, -343
                  slti         t4, s4, 777
                  li           s11, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           t5, 0x80000000
                  li           s8, 0xd760c849
                  li           t6, 0x0
                  li           s0, 0xffffffff
                  li           a4, 0x76eabf23
                  li           ra, 0x80000000
                  li           a6, 0xffffffff
                  li           t2, 0x80000000
                  li           a5, 0x80000000
                  sub          s11, t2, a5
                  sub          s8, t5, t2
                  lui          t5, 108788
                  add          s11, s8, t5
                  add          a5, a6, s0
                  add          a4, t6, t5
                  nop
                  auipc        s0, 154949
                  addi         s8, t5, -44
                  lui          t5, 901768
                  nop
                  lui          t2, 344781
                  sub          s0, a6, s11
                  lui          a5, 289657
                  auipc        t6, 696640
                  addi         s11, a5, -531
                  sub          t5, a6, s11
                  nop
                  nop
                  auipc        s8, 2939
                  auipc        a5, 562481
                  add          t5, t5, a6
                  lui          t5, 672683 #end riscv_int_numeric_corner_stream_12
                  addi         t6, t1, -1569
                  add          gp, zero, a1
                  add          s11, zero, t4
                  addi         t5, s8, -1605
                  or           t6, a6, tp
                  srli         t2, tp, 10
                  sll          t2, s4, t6
                  ori          s5, t6, -1660
                  auipc        tp, 799689
                  add          s10, s11, s5
                  add          a4, s6, s0
                  nop
                  slli         s9, gp, 10
                  sub          t5, t4, s9
                  sltu         t3, a3, s2
                  sub          t1, a0, s8
                  slti         t3, s0, -686
                  slti         zero, s0, 831
                  slli         a4, s0, 11
                  sltiu        a3, t6, -803
                  srli         t0, s11, 17
                  sub          s8, zero, a6
                  srl          a0, ra, s1
                  sub          t2, t2, a6
                  sll          a5, s6, a6
                  slli         s11, s7, 8
                  andi         a4, t3, -81
                  lui          a2, 41294
                  sltu         sp, a5, s1
                  srli         a6, s7, 2
                  xor          s8, a3, t1
                  srli         t2, s8, 11
                  xori         s9, a5, -1333
                  srai         tp, s4, 26
                  sub          s8, s7, ra
                  srl          sp, s1, a1
                  srli         sp, s2, 19
                  auipc        a4, 728093
                  xori         a3, a0, 177
                  sltu         t0, s2, s10
                  sub          s7, t2, s10
                  sub          s8, s1, a0
                  ori          s0, s5, 1960
                  xor          t3, s4, s9
                  auipc        s1, 859671
                  sub          s2, s4, zero
                  xori         a6, t2, 876
                  nop
                  xori         ra, a5, 546
                  slli         a6, s10, 13
                  sub          t3, s10, t6
                  xor          t1, a6, a5
                  andi         a5, s1, -1980
                  lui          t0, 193088
                  sltiu        s9, a0, -681
                  slli         t2, s5, 23
                  nop
                  and          t6, zero, s0
                  sra          s0, a3, s9
                  slti         s7, a2, 61
                  addi         zero, a5, -1641
                  sub          t1, ra, a4
                  slt          s11, t0, a4
                  and          zero, s1, a2
                  slli         s8, a6, 24
                  sub          zero, tp, t2
                  slt          s7, ra, t5
                  srli         a2, t6, 22
                  sltu         s7, a2, t4
                  add          t5, t4, a3
                  auipc        s11, 592253
                  sll          t3, a7, zero
                  lui          a5, 940745
                  andi         s1, a5, -1943
                  sltu         t1, a1, s9
                  lui          t5, 290811
                  sll          s10, a5, s1
                  sltiu        t1, a7, -1414
                  lui          t2, 732076
                  slti         tp, t3, -728
                  srl          a4, a3, ra
                  lui          s9, 672213
                  xori         ra, s2, -550
                  slt          a0, a2, s0
                  nop
                  lui          ra, 678018
                  sltu         zero, gp, s2
                  sll          gp, s6, t3
                  srli         t5, s10, 21
                  and          t2, t5, s4
                  slli         zero, s7, 19
                  sltiu        a6, ra, -331
                  addi         t5, s0, 2029
                  or           a2, zero, zero
                  or           t0, a4, s2
                  addi         s1, zero, 1923
                  sltu         zero, t5, sp
                  and          gp, s8, tp
                  ori          s1, s7, 520
                  sll          a5, t4, a1
                  xor          a4, t0, s5
                  nop
                  auipc        tp, 945825
                  and          t4, t5, gp
                  add          a6, zero, s1
                  and          s10, s2, a5
                  sltu         tp, s6, a4
                  or           a5, t2, a5
                  nop
                  sra          s10, a3, ra
                  slti         a4, a6, -1401
                  sra          a7, s7, t4
                  sll          s0, s3, s5
                  add          gp, s8, a2
                  slt          a6, s6, s3
                  slt          ra, a6, a0
                  lui          s7, 692407
                  ori          a5, s3, 1712
                  add          sp, s3, a7
                  xor          a2, a0, t6
                  sltiu        s6, gp, 378
                  sll          t2, gp, a4
                  lui          gp, 741260
                  xor          s8, a0, a4
                  or           t0, s0, s6
                  srai         tp, s4, 25
                  xori         a4, t4, -334
                  or           t2, s5, t6
                  add          ra, tp, t0
                  andi         a2, t4, 1915
                  ori          s0, t5, -1697
                  slli         t2, t3, 18
                  sub          s9, a7, s2
                  ori          s8, a1, 208
                  add          t1, t2, s11
                  andi         s8, s0, -1287
                  xor          t2, t6, a5
                  sll          a3, t5, s6
                  sltiu        s10, s3, -583
                  or           s5, a3, s7
                  ori          t1, s5, -414
                  srai         t1, s4, 29
                  ori          sp, a4, 1548
                  or           t3, gp, s3
                  srai         t3, t3, 11
                  srli         a0, tp, 24
                  ori          s7, a4, -589
                  sltiu        a7, s0, 1830
                  sll          s10, a6, s10
                  andi         gp, t6, 921
                  and          s9, t2, s7
                  auipc        s0, 576151
                  xor          sp, t6, a1
                  addi         ra, s1, -1286
                  slli         a7, a2, 28
                  sltiu        a0, s5, -1778
                  slti         s2, tp, 573
                  slti         sp, zero, -1565
                  sltiu        s10, s4, 1983
                  slt          a7, a7, s10
                  sltiu        ra, a0, 625
                  sra          s2, ra, a7
                  andi         a5, s10, 1179
                  sra          t1, s0, a5
                  addi         s8, ra, -1706
                  or           t6, a1, tp
                  or           zero, s3, a6
                  srl          s8, gp, a4
                  xor          s8, a7, a4
                  xori         s11, s11, 881
                  srai         a3, s1, 23
                  nop
                  addi         t1, t6, -502
                  sltu         t5, a3, a0
                  sll          a6, a0, a6
                  nop
                  xor          s5, gp, t2
                  nop
                  sll          s1, s9, t2
                  sltiu        a7, t6, -407
                  and          t6, t6, a6
                  or           a7, t4, s1
                  xor          s5, tp, a7
                  ori          a2, a1, 2006
                  nop
                  andi         a3, ra, 1395
                  sltu         t5, zero, a0
                  sub          a0, t2, a7
                  xori         a6, t5, 450
                  or           a5, s7, a3
                  addi         s8, ra, 1917
                  slti         a7, t4, -1262
                  andi         s11, s5, 314
                  lui          a4, 106521
                  ori          s7, t1, 980
                  addi         s6, s3, -1239
                  srl          s6, a5, a4
                  sltiu        t1, a0, 629
                  auipc        s8, 153208
                  xori         s8, t0, -359
                  lui          zero, 552174
                  sll          t0, s8, ra
                  sra          t0, a3, t1
                  sltu         t3, tp, s1
                  slti         a3, a4, 1686
                  slt          ra, a1, t2
                  slti         zero, s4, -1414
                  ori          ra, s0, -806
                  or           s6, s6, s2
                  and          gp, t6, t6
                  xor          a7, a6, a4
                  srli         t1, a7, 5
                  xor          t6, ra, t0
                  add          s9, s9, s5
                  srli         a0, t4, 26
                  ori          t3, t4, -1035
                  or           t0, t4, s10
                  or           s9, s1, tp
                  addi         s10, a4, -1022
                  and          t1, s9, s4
                  slli         s0, s3, 19
                  sra          s1, s9, zero
                  andi         t1, t6, -1393
                  sra          sp, s8, s0
                  xor          s1, s11, a5
                  auipc        gp, 453324
                  srli         t5, s5, 25
                  sub          t1, zero, s9
                  srl          ra, s7, sp
                  ori          sp, a6, 1264
                  add          a7, a1, a7
                  add          s6, s0, t1
                  addi         a3, zero, 1860
                  slt          zero, a1, s4
                  addi         s8, s0, -477
                  add          s9, s4, gp
                  sltiu        ra, s0, -1195
                  nop
                  ori          s5, t2, -934
                  add          t1, s7, s5
                  slt          t3, a3, t0
                  xor          t6, t1, a5
                  ori          gp, tp, 1510
                  ori          zero, a6, 1244
                  and          t6, s7, t6
                  or           s7, t0, t4
                  xori         a3, t6, 1508
                  sltiu        t4, s7, -109
                  slti         zero, s4, -8
                  xori         tp, sp, -1062
                  slti         s5, t4, -1371
                  lui          a4, 358682
                  andi         a5, t6, 779
                  sra          t2, a1, t0
                  add          a6, s0, t3
                  xori         s6, s2, 105
                  srai         t5, tp, 22
                  nop
                  andi         s8, t5, -152
                  andi         t1, s6, 1622
                  sub          a7, s1, s11
                  srai         zero, a6, 9
                  addi         s11, a0, 136
                  slti         gp, s7, 951
                  srli         sp, s10, 1
                  slli         s1, a3, 15
                  nop
                  nop
                  sll          zero, t0, s3
                  srl          s7, a0, a3
                  srai         zero, a7, 18
                  lui          a2, 923716
                  addi         sp, s3, 1949
                  sltu         a3, t0, s4
                  xor          s10, s2, s8
                  sll          a4, a7, tp
                  ori          s11, a1, 1921
                  xori         a3, s10, 981
                  nop
                  srl          gp, s0, s0
                  srai         a6, a3, 26
                  andi         tp, t4, 1076
                  ori          s9, a2, 1083
                  srli         s2, gp, 4
                  andi         t1, s8, -1032
                  slli         t2, s4, 22
                  addi         s11, a3, 387
                  or           t2, a0, s7
                  sltiu        tp, a7, 1709
                  srl          s8, t1, t2
                  add          s9, s4, a1
                  slli         a5, t1, 14
                  or           sp, t6, s9
                  srli         s11, a3, 3
                  srl          s9, t2, sp
                  slt          s8, s10, t5
                  add          a2, zero, a7
                  sub          s9, zero, s0
                  srl          s8, a1, a6
                  andi         t4, t3, -982
                  nop
                  add          s2, t1, s1
                  sub          a4, tp, a0
                  add          t0, s2, s4
                  add          zero, a4, t6
                  or           gp, s5, t5
                  srli         zero, a1, 29
                  sltiu        s11, s3, -1413
                  slti         a4, s11, -794
                  or           t0, s8, s6
                  xor          a7, zero, s11
                  or           s0, a4, sp
                  or           s8, a6, t3
                  slt          ra, s4, a5
                  sra          a3, gp, a6
                  or           t0, s7, s11
                  or           t3, s1, t5
                  sub          a6, s11, t2
                  srli         a3, ra, 15
                  add          a6, s9, t3
                  or           a4, tp, a0
                  lui          tp, 738380
                  xor          zero, s10, a2
                  slt          a6, zero, s0
                  srl          s2, s10, t1
                  srl          s2, t2, t0
                  srai         s2, t4, 12
                  slt          s6, ra, a5
                  sll          s0, t3, zero
                  xori         a7, s11, -1529
                  lui          s6, 986279
                  addi         s7, s10, 407
                  srai         s5, s6, 21
                  auipc        s6, 680691
                  slli         s0, a4, 4
                  sltu         t2, s5, a3
                  auipc        s8, 142742
                  xor          tp, a6, t2
                  slli         zero, t6, 0
                  srai         sp, a0, 22
                  slt          s1, t6, a3
                  add          t4, s0, t4
                  andi         a4, s7, -1293
                  add          a0, s4, a6
                  srli         s9, t3, 29
                  add          s1, a2, sp
                  sltiu        ra, a2, 1250
                  or           t4, s9, zero
                  or           a2, s10, a2
                  sra          s7, s5, t2
                  auipc        zero, 312983
                  nop
                  addi         s8, a5, -1890
                  srl          a3, s8, s1
                  sltu         t3, t4, a3
                  srai         t3, s0, 16
                  nop
                  lui          t5, 759619
                  xori         a5, s7, 148
                  sra          a3, t1, t0
                  nop
                  andi         s0, s6, -852
                  slli         a3, a3, 30
                  add          s10, a0, t6
                  sra          tp, s8, t3
                  nop
                  addi         zero, t3, -996
                  add          s0, a2, a2
                  ori          a4, sp, -943
                  add          a3, s4, s2
                  srai         a7, t1, 28
                  andi         a2, s10, 187
                  add          t5, a6, gp
                  or           a2, tp, tp
                  slt          s5, tp, s3
                  sra          t1, t5, s3
                  lui          s2, 995016
                  and          t1, s7, a4
                  srai         t3, a0, 6
                  slti         a0, a5, -1497
                  andi         t0, ra, 999
                  lui          s0, 582617
                  addi         a4, t1, 1355
                  slti         s10, ra, 1831
                  add          s9, t2, s2
                  slli         a0, s11, 24
                  srai         s2, s5, 7
                  ori          a2, t4, -884
                  sra          s1, t6, a2
                  xori         gp, a4, 279
                  slti         s7, a4, -662
                  addi         a7, s7, -539
                  sltu         a2, a2, s3
                  srli         sp, sp, 21
                  sra          a4, a3, zero
                  andi         s2, a4, 1477
                  sltiu        a2, a7, -347
                  auipc        s7, 340483
                  xor          t3, t6, a6
                  add          s0, s5, s3
                  auipc        s5, 1726
                  slt          a6, sp, s11
                  or           a5, t4, s9
                  sub          sp, s8, t4
                  nop
                  add          t0, gp, a5
                  slli         a6, s8, 1
                  auipc        gp, 788595
                  or           a0, t5, a5
                  xori         s2, a2, -101
                  sub          s1, a5, s4
                  sll          t2, s7, s2
                  xor          a2, s6, s5
                  lui          tp, 540203
                  slti         t3, gp, -1179
                  srli         s7, s2, 30
                  addi         t5, ra, -740
                  sltiu        s1, a1, -577
                  addi         a7, s3, -2000
                  or           s11, s5, s1
                  srl          a7, a7, a0
                  and          t0, a7, s0
                  srai         s0, s9, 1
                  sltu         sp, a3, s2
                  xori         t0, a1, -1138
                  sltiu        s5, a1, -120
                  sub          t2, t3, sp
                  srli         s11, t2, 27
                  sra          s7, t2, s9
                  srai         t3, t6, 8
                  andi         a5, s8, -1720
                  and          s2, s5, a7
                  slli         a2, s8, 29
                  or           s11, a4, t5
                  srli         s9, a4, 2
                  srl          s10, s11, a3
                  andi         s8, s1, 1904
                  slti         t0, s2, 994
                  auipc        s8, 222023
                  srl          t2, s10, s6
                  lui          a3, 662407
                  andi         t3, t2, -1415
                  or           s7, s4, zero
                  or           s6, s8, t0
                  srl          s10, s6, t1
                  andi         t0, s6, -120
                  nop
                  nop
                  add          a5, s3, a4
                  srai         s9, t2, 23
                  slti         t0, zero, 926
                  sltu         a2, a2, t1
                  slti         s0, s9, -1885
                  slli         gp, gp, 25
                  addi         t0, ra, -841
                  auipc        a3, 1025580
                  srai         s11, a2, 3
                  sub          a6, t5, t6
                  sltu         t5, a7, s0
                  sll          a2, t6, s6
                  xor          t0, t3, s1
                  sub          a3, a1, tp
                  slti         s8, t4, -680
                  srl          a6, a7, a2
                  slli         gp, ra, 24
                  srl          zero, sp, a7
                  andi         t6, a4, -1393
                  sub          t4, a1, a0
                  lui          s2, 536970
                  andi         t3, sp, -810
                  or           t3, a4, a6
                  xor          a3, s3, s1
                  sub          t4, tp, t4
                  sltiu        s7, t2, -1542
                  or           s0, a7, s8
                  srl          s11, t2, s11
                  sltiu        t6, t1, 1314
                  and          ra, s9, a6
                  addi         sp, zero, 673
                  lui          a4, 993752
                  srai         tp, s5, 3
                  sltiu        s7, s2, 70
                  auipc        s7, 162389
                  sra          a7, s1, t0
                  add          a0, s11, a0
                  srl          s7, sp, s1
                  sub          s1, s0, s5
                  or           a3, a2, a5
                  nop
                  addi         a4, a4, -1216
                  sll          t1, s1, a2
                  xori         gp, s3, -734
                  addi         t2, s0, 687
                  sra          a6, ra, s1
                  auipc        a2, 902560
                  srai         t5, a0, 1
                  addi         s1, sp, 1463
                  addi         s11, s11, -891
                  srl          ra, s7, a5
                  xor          t4, s0, a1
                  sltu         t3, t1, s5
                  srl          t2, s5, t1
                  ori          a7, a6, -1386
                  or           s8, tp, t6
                  xori         s6, a0, 1861
                  auipc        t1, 354877
                  slti         s10, a2, 68
                  sub          s2, tp, t5
                  xori         s5, a0, 488
                  auipc        s7, 161789
                  sll          t4, s6, s7
                  or           s0, s8, s8
                  add          s6, gp, t0
                  or           s10, gp, t6
                  add          s7, a3, t2
                  srli         s11, t6, 7
                  add          gp, a5, tp
                  srli         s8, s5, 24
                  srl          a5, t3, a0
                  slli         a4, zero, 9
                  or           a3, s10, zero
                  slt          a0, t1, s10
                  sltiu        ra, a0, -451
                  lui          s11, 991536
                  or           s0, s6, s4
                  srl          s5, s3, t0
                  xori         a5, s5, -1857
                  andi         s9, s6, -411
                  nop
                  srli         a6, a5, 13
                  sltiu        t3, t1, 399
                  li           a2, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           s5, 0x80000000
                  li           t3, 0xffffffff
                  li           t1, 0x80000000
                  li           a4, 0x0
                  li           a3, 0x80000000
                  li           sp, 0xffffffff
                  li           a6, 0x0
                  li           s8, 0xb5c72692
                  li           a7, 0x0
                  auipc        s5, 876942
                  sub          a7, a7, s8
                  nop
                  add          s8, sp, t1
                  auipc        a6, 187236
                  add          t1, a3, a7
                  addi         s5, a2, 1465
                  nop
                  lui          t1, 319981
                  auipc        s8, 270551
                  auipc        s5, 650330
                  auipc        a6, 598886
                  addi         a4, a6, -777
                  addi         s8, t3, -560
                  lui          sp, 650159
                  addi         a6, a7, -661
                  addi         sp, a3, -1053
                  nop
                  nop
                  addi         a6, a3, -746
                  auipc        a2, 159243
                  addi         a7, a7, -301
                  add          s8, a7, a3 #end riscv_int_numeric_corner_stream_0
                  srl          a3, gp, a3
                  addi         s10, t4, -399
                  sll          s2, s10, t6
                  and          gp, s7, s2
                  nop
                  andi         s5, s11, 1475
                  srl          t1, s11, a7
                  slti         a3, a0, -703
                  auipc        a7, 593404
                  srli         sp, s8, 12
                  ori          ra, s0, -2015
                  nop
                  srl          s10, a2, s3
                  slti         t2, zero, 233
                  addi         s7, s1, 1866
                  srli         a0, s8, 26
                  ori          a7, a5, 465
                  andi         a7, s11, 753
                  ori          a0, s8, -622
                  sra          t2, s6, s4
                  slt          a6, t6, s1
                  andi         s8, a1, -800
                  andi         t5, s8, -1026
                  srl          s10, gp, a2
                  andi         zero, tp, 2016
                  sll          s7, s8, s1
                  slti         a3, sp, 749
                  and          ra, a7, s10
                  srli         s5, t3, 26
                  srli         sp, ra, 24
                  sra          s2, s3, t5
                  nop
                  and          a7, t4, s4
                  slt          t6, gp, s7
                  slt          a5, s9, s3
                  srai         s7, ra, 1
                  slli         a4, s10, 5
                  ori          a0, a5, -599
                  slt          s6, s1, t0
                  auipc        sp, 908273
                  add          t1, t1, a0
                  nop
                  sltiu        s7, zero, -1812
                  ori          sp, a0, 1133
                  srai         t2, t4, 18
                  add          t6, t4, s9
                  slt          zero, s10, t4
                  slt          t5, t4, tp
                  sub          t1, t4, zero
                  auipc        t1, 943496
                  sll          sp, s3, t3
                  sltiu        s8, tp, 1858
                  addi         s1, s4, -249
                  xori         s1, t4, 1910
                  sltu         s8, s8, t1
                  sltu         zero, zero, s7
                  ori          ra, a3, -381
                  sra          t3, s11, a7
                  sltu         a4, a0, s2
                  add          t4, tp, s2
                  slti         s7, a3, 946
                  slt          a6, s3, t0
                  xori         s7, tp, 475
                  and          s9, t5, t5
                  auipc        a3, 681952
                  srli         ra, s9, 21
                  slli         s11, a4, 16
                  slti         s6, sp, -45
                  xor          a5, a5, t4
                  andi         s7, t5, -672
                  srl          s0, t3, s3
                  sra          t4, a0, a3
                  sub          s5, t2, ra
                  nop
                  sra          s10, a2, ra
                  xor          tp, a0, s2
                  ori          gp, t6, 1981
                  srli         gp, gp, 13
                  or           s7, s7, s3
                  slti         s8, a2, 1320
                  xor          t3, t5, s9
                  nop
                  sub          tp, sp, t3
                  sll          a2, sp, a0
                  slti         s1, t3, -1654
                  sub          a6, s2, t0
                  and          t6, a0, t5
                  slt          s2, ra, a4
                  addi         s2, sp, 567
                  andi         ra, s7, 1089
                  and          zero, t6, t1
                  nop
                  xor          s10, a1, a1
                  andi         t5, s4, 1570
                  andi         s10, a5, -776
                  auipc        t6, 46150
                  ori          s5, t3, -111
                  xori         t6, s8, -1615
                  add          ra, gp, t6
                  sub          s5, s5, a3
                  slti         a3, t6, 761
                  or           a7, a2, s3
                  xori         s1, t2, 453
                  and          s11, s0, a4
                  srli         gp, t1, 15
                  srai         a5, t2, 11
                  slt          a4, s6, zero
                  sltiu        tp, a3, 1474
                  slli         t0, ra, 0
                  xor          s2, s8, ra
                  addi         t2, t3, -1947
                  sltu         s2, a0, t3
                  slt          t1, s6, s10
                  sltiu        s9, a7, 319
                  slli         tp, a6, 5
                  nop
                  sltiu        a6, s0, 831
                  andi         s1, s8, -1981
                  srai         s0, s0, 28
                  sltiu        gp, tp, -1238
                  srai         sp, tp, 6
                  xor          a7, s5, a6
                  sll          s10, s11, a2
                  srli         zero, s8, 30
                  auipc        s6, 432047
                  sltu         s0, t3, s11
                  andi         s10, s3, -1161
                  andi         tp, t5, -1444
                  srai         s5, t0, 5
                  addi         t4, t0, 471
                  sub          s1, s11, t3
                  lui          s10, 923370
                  slti         tp, a0, -1299
                  sra          s10, ra, s3
                  xori         t3, ra, -588
                  sub          s7, sp, t0
                  add          sp, s10, a1
                  add          t5, ra, a5
                  srli         s10, t2, 17
                  srai         t6, sp, 30
                  srl          zero, a3, tp
                  add          s6, t3, a1
                  lui          s6, 37603
                  xori         zero, a5, -1553
                  slt          t6, s9, t5
                  and          s8, s9, a6
                  add          s8, s11, s2
                  xor          s7, a6, a4
                  add          sp, a3, sp
                  nop
                  srl          a6, a4, s4
                  andi         a0, s9, -1333
                  and          t3, a7, t4
                  lui          zero, 502749
                  add          a3, t6, t0
                  xori         a6, s11, -537
                  srai         t2, s7, 22
                  sub          a6, tp, s0
                  srai         s7, a4, 19
                  sltu         a0, t5, a7
                  srai         a5, t4, 4
                  srl          t5, a4, a1
                  sltu         zero, s4, s11
                  sub          a7, ra, s7
                  ori          s7, a7, 427
                  xor          a4, a4, s8
                  slli         a6, t6, 30
                  srai         s11, s11, 20
                  slli         s10, s6, 20
                  andi         a3, a1, 644
                  srli         a0, a7, 8
                  and          t3, s4, a3
                  and          s6, s0, s2
                  xori         a7, a6, -981
                  sltiu        t5, a4, -193
                  lui          zero, 791955
                  lui          t6, 779525
                  nop
                  ori          s5, t2, -247
                  lui          a0, 633447
                  slli         t3, s4, 19
                  srli         s0, a1, 13
                  srl          s7, s5, a0
                  xori         s8, s7, -916
                  addi         t2, s9, -991
                  sll          s2, s7, s9
                  xor          t2, a2, s0
                  slt          s6, a1, a5
                  xori         s5, s3, 1205
                  srli         s8, s11, 29
                  sra          t3, s4, t3
                  sll          tp, t4, s3
                  andi         a0, t6, -1123
                  xor          t6, t4, s10
                  add          t0, s11, a1
                  ori          t6, t4, 1898
                  or           a2, t2, s11
                  nop
                  or           s1, ra, s3
                  ori          s7, s10, 1447
                  xor          s8, a0, a3
                  ori          a3, zero, 1007
                  sub          t4, s3, a3
                  sll          a5, zero, a1
                  nop
                  add          tp, s9, sp
                  sll          s11, s3, s3
                  xori         sp, a3, -1654
                  sltiu        a0, t5, -748
                  xor          t6, t0, s11
                  ori          s6, a3, -786
                  slli         a6, ra, 29
                  nop
                  nop
                  srl          a3, s2, a0
                  srl          s10, s6, s3
                  sltiu        a6, s8, 454
                  xor          sp, s9, a0
                  srli         a5, s4, 9
                  andi         a3, s1, 1487
                  xori         t6, s4, 521
                  nop
                  srli         t1, s4, 2
                  addi         s9, gp, -655
                  lui          zero, 328753
                  slti         s0, t3, 1359
                  and          a7, t1, a0
                  sub          s1, s7, t1
                  ori          s6, a3, 81
                  sltu         s0, tp, s2
                  sltiu        t1, gp, -648
                  slt          ra, gp, a7
                  slt          s6, a0, s4
                  auipc        ra, 566781
                  add          s6, s2, a7
                  sltiu        gp, s6, -1725
                  lui          s0, 150678
                  or           tp, s0, s6
                  srai         s11, t2, 31
                  slt          s9, a4, t5
                  ori          a3, s2, -1211
                  srai         s1, t5, 20
                  auipc        s7, 262266
                  add          tp, ra, zero
                  lui          a7, 616394
                  sub          tp, zero, gp
                  xori         a6, a4, -880
                  slt          zero, gp, tp
                  srl          t2, gp, s9
                  sra          s7, t3, t6
                  nop
                  slli         s9, a6, 28
                  sltu         t6, a3, a5
                  andi         t0, a2, -930
                  srli         a3, tp, 1
                  nop
                  sub          a0, s1, s3
                  srl          s5, s1, a4
                  sltu         gp, s1, s8
                  sub          a3, a7, t4
                  sub          t6, a1, gp
                  xori         s11, t2, 1409
                  add          a0, s4, s0
                  srl          t0, ra, t5
                  sra          a2, t1, a4
                  auipc        a6, 157716
                  sltiu        s7, a5, 1818
                  slli         t5, s7, 22
                  xori         t5, t3, 281
                  addi         t1, a2, -2023
                  sltu         t4, a7, a6
                  addi         t5, s5, 1846
                  sltiu        a6, s3, -1154
                  sra          zero, a0, s8
                  xori         s5, s0, 2011
                  sltiu        a4, a2, -773
                  srai         s5, t6, 2
                  sll          s6, s10, s8
                  sll          t5, t2, s1
                  slt          a5, s1, s0
                  lui          ra, 337081
                  sltu         t6, s6, a6
                  add          t3, ra, s9
                  slt          tp, s1, sp
                  or           t4, a7, s1
                  sll          s6, sp, t1
                  lui          zero, 62737
                  add          zero, s0, a4
                  srli         t2, s0, 30
                  srl          t6, s8, t2
                  xori         s11, a5, -1880
                  lui          t1, 436006
                  lui          t5, 801984
                  slti         a3, a6, 2047
                  ori          zero, s6, -1010
                  sltu         a3, a4, sp
                  slti         s8, s9, 1759
                  or           s7, s6, zero
                  xori         s0, t0, -1004
                  nop
                  slli         a7, s5, 6
                  srli         s6, t4, 20
                  nop
                  addi         t1, s10, 635
                  lui          a2, 292746
                  sra          t0, gp, zero
                  auipc        s7, 258887
                  srli         t3, s2, 0
                  xori         t4, s3, -1756
                  srli         t5, sp, 2
                  xori         s10, s6, -907
                  auipc        ra, 645462
                  slti         s8, gp, -757
                  sra          t2, t6, t5
                  srli         a0, a1, 27
                  lui          ra, 914596
                  add          a7, t3, a5
                  andi         s10, s2, -119
                  xor          tp, a1, s0
                  xor          gp, sp, s8
                  slti         t0, s10, -242
                  nop
                  srl          a2, s2, s7
                  auipc        s5, 557240
                  andi         s6, t5, 195
                  sltiu        a7, ra, 1404
                  sltu         a0, ra, t4
                  slt          zero, s11, s6
                  or           tp, t2, a3
                  srai         a4, t6, 27
                  srl          t2, t2, s5
                  sltiu        t4, s11, 192
                  add          s2, s6, ra
                  srli         a3, tp, 8
                  sltiu        s10, t4, -602
                  sub          zero, s1, a5
                  srli         s6, ra, 29
                  xor          t6, s4, s10
                  sll          s5, a1, tp
                  srai         sp, tp, 27
                  lui          t0, 295848
                  ori          s2, t1, -813
                  srl          s9, s8, t5
                  ori          a3, a3, 1481
                  xori         s6, s0, 1872
                  or           a7, t5, a1
                  sltiu        s5, a4, -1000
                  ori          s0, t1, -361
                  slti         t0, a2, -862
                  auipc        t6, 844771
                  xor          s11, t0, a1
                  or           t6, a0, s1
                  lui          s11, 57606
                  srli         t4, a1, 6
                  srli         s7, s5, 12
                  lui          zero, 598396
                  sltu         a2, s7, s9
                  and          t5, tp, a5
                  sub          s1, t0, a1
                  srai         a4, s2, 6
                  sra          sp, s10, t4
                  slt          t4, t6, s3
                  slli         a3, a7, 17
                  or           a5, a6, t1
                  sltu         s8, s3, t3
                  nop
                  sra          gp, zero, s11
                  xori         t5, t1, -1200
                  nop
                  sll          a7, tp, s8
                  sll          a7, a2, t1
                  sub          a3, a3, gp
                  and          t1, t6, s6
                  auipc        a7, 672380
                  auipc        t2, 104439
                  sltiu        s1, t6, -1892
                  or           tp, s3, t1
                  ori          ra, gp, -256
                  sra          zero, t1, a5
                  srli         a6, s2, 2
                  xori         a0, s3, -1963
                  srli         t2, t2, 6
                  auipc        s1, 148021
                  sltu         t4, a3, s11
                  srli         t2, tp, 26
                  lui          s6, 663984
                  auipc        s9, 886234
                  srli         a3, a0, 1
                  slt          tp, zero, s0
                  sltu         a5, tp, a0
                  srai         sp, s6, 4
                  srl          a0, s9, s11
                  and          s9, gp, s5
                  xori         zero, s5, 641
                  auipc        s8, 8241
                  srl          tp, a1, s8
                  lui          tp, 803574
                  add          t3, s0, t5
                  srai         a7, a1, 21
                  auipc        a3, 360226
                  add          s6, t2, s1
                  slt          gp, a0, t3
                  auipc        t5, 720721
                  ori          t2, s4, 259
                  srli         tp, ra, 19
                  auipc        a7, 184490
                  xor          a5, a5, t1
                  addi         a7, a1, 1874
                  slli         s0, a3, 17
                  slti         a3, gp, -633
                  slti         s5, s6, 510
                  xor          a6, t0, s10
                  sll          t1, t3, tp
                  xori         ra, s9, -1960
                  add          sp, a6, s8
                  ori          s9, a6, -1133
                  xor          a5, t6, t1
                  ori          tp, s8, 805
                  srli         t1, s11, 7
                  xori         t4, a6, -1446
                  sltiu        t6, s6, -1222
                  srl          tp, sp, a2
                  srl          t3, a5, a6
                  auipc        a5, 426029
                  and          a2, a2, s1
                  xor          t5, a0, ra
                  auipc        s10, 250903
                  xori         t3, a7, -575
                  sltu         s11, tp, s3
                  and          t2, a3, s2
                  slt          t3, t5, s5
                  auipc        s11, 800755
                  slt          s6, t0, a3
                  and          tp, s5, a4
                  add          a6, a0, t0
                  slti         t1, s3, -235
                  xori         a0, s10, -415
                  srl          a7, s8, t6
                  addi         ra, t5, 1145
                  andi         s6, s11, -244
                  sub          gp, s0, t6
                  srli         sp, a1, 9
                  sub          a4, a1, a7
                  ori          s1, s7, -1298
                  lui          s9, 105598
                  sll          s10, a4, tp
                  sub          t5, a1, s5
                  xor          s1, a7, zero
                  srli         a3, a2, 15
                  or           s10, s6, s5
                  or           s9, sp, t2
                  slli         zero, t4, 9
                  srai         s6, a4, 0
                  sltu         a5, s3, s3
                  addi         gp, ra, -1083
                  srli         a5, s11, 12
                  andi         s9, t6, 1963
                  add          gp, t4, ra
                  auipc        t3, 616568
                  srl          a3, t5, s2
                  ori          s10, ra, 1273
                  addi         s1, gp, 1144
                  slli         s11, t2, 21
                  srl          sp, s10, t5
                  addi         a7, s11, -686
                  srl          zero, t4, t2
                  xori         a0, s4, -1694
                  xori         a7, a4, 1055
                  auipc        a2, 43458
                  sub          a2, a2, a1
                  xor          t0, t5, s5
                  nop
                  sltu         s1, s4, gp
                  addi         a7, s10, 1235
                  srai         gp, a5, 4
                  slt          gp, gp, s10
                  sll          s10, t6, a5
                  srli         a2, a3, 10
                  sra          t5, t4, ra
                  sra          zero, a5, s3
                  slli         s10, zero, 13
                  slli         s8, a2, 16
                  lui          a6, 816615
                  xor          s2, s4, a1
                  andi         s1, a0, 940
                  sltiu        t4, s10, 274
                  or           t2, t1, s5
                  auipc        s6, 430916
                  srli         a4, a1, 6
                  sltiu        zero, t2, 996
                  xori         a7, t2, 1825
                  xori         sp, gp, -1579
                  add          t6, a4, s6
                  srai         sp, gp, 5
                  andi         t5, s5, -1202
                  slt          t2, t5, s4
                  slli         s9, s1, 2
                  or           a7, sp, s11
                  slli         tp, a7, 22
                  lui          s2, 144572
                  add          a7, a3, t6
                  ori          ra, s4, 1231
                  sltu         s10, a4, t4
                  srli         t3, s5, 25
                  srl          s10, t0, s0
                  and          t2, s8, s0
                  add          a7, t5, s9
                  slti         a7, s0, -92
                  addi         a6, s6, 995
                  addi         sp, a0, -1320
                  xor          a5, ra, a1
                  andi         ra, s1, -947
                  sltu         s7, s6, s11
                  xori         t0, s2, -299
                  lui          a2, 803797
                  srai         a5, s8, 2
                  xor          ra, gp, s11
                  addi         s11, sp, -134
                  srl          s10, a5, s0
                  nop
                  sll          s9, tp, t4
                  slli         t4, s11, 14
                  slti         s8, s6, -1556
                  srai         a3, a6, 11
                  sltu         s5, gp, a0
                  sltiu        s9, tp, -574
                  sra          a4, s9, t3
                  lui          a3, 1018091
                  ori          a6, s7, -1362
                  slt          t5, a5, t1
                  xori         ra, a4, -570
                  xori         s1, s5, 752
                  and          t5, sp, s1
                  ori          t3, s10, 177
                  srl          a7, s8, sp
                  sll          s5, gp, a1
                  or           t3, s1, s2
                  add          sp, zero, gp
                  xor          a2, t6, s1
                  nop
                  xori         zero, s4, 834
                  sra          a6, a0, s4
                  sltiu        s0, s11, 497
                  slti         zero, sp, -448
                  srl          a3, tp, a5
                  sra          a2, s8, a3
                  slti         a3, a2, -852
                  addi         s0, ra, 1660
                  sra          s0, s8, t1
                  xor          t5, s5, a5
                  srli         a0, a0, 17
                  lui          t2, 767393
                  or           tp, s8, s3
                  sra          t1, s4, s7
                  sll          s2, s6, ra
                  srli         a0, s9, 13
                  xori         t5, t1, 158
                  ori          a0, t3, 1486
                  lui          t4, 1017368
                  andi         ra, t1, 814
                  slt          s7, s1, s5
                  auipc        s5, 397472
                  srai         a6, a4, 11
                  slt          zero, ra, a0
                  xor          a7, s1, a0
                  and          t1, t4, s10
                  srl          s5, t6, tp
                  slti         t6, s6, -532
                  auipc        s10, 482291
                  sltiu        gp, s10, -1809
                  sltiu        s6, t6, 1869
                  slti         a5, t4, 965
                  sra          t2, s4, a1
                  slti         s10, a7, 896
                  andi         s7, s0, -1714
                  addi         t6, s6, -753
                  srai         t1, a1, 24
                  auipc        a0, 190590
                  ori          t3, gp, 939
                  auipc        s8, 321762
                  srli         t6, s8, 7
                  or           a0, a7, a2
                  add          s10, t6, a0
                  slt          s8, s10, s8
                  andi         t5, gp, -1682
                  add          s2, s7, a0
                  slt          s6, t0, s1
                  srai         sp, s11, 9
                  auipc        a4, 677351
                  and          gp, ra, s8
                  slt          a4, s10, a0
                  sltiu        s2, t4, 1190
                  sll          s9, gp, sp
                  slt          s5, a1, a0
                  or           s2, zero, s0
                  srl          gp, a2, t6
                  sltiu        t5, s9, -1900
                  slti         t0, t4, -1975
                  addi         zero, s5, 886
                  srli         t0, s8, 6
                  xor          t5, s3, zero
                  auipc        s5, 294910
                  and          t4, t5, a5
                  srl          ra, s9, t5
                  slt          s9, s0, a2
                  nop
                  addi         a2, sp, 66
                  slt          t5, s10, a2
                  slti         sp, t6, 2020
                  sltiu        gp, t1, -474
                  sra          tp, s10, t3
                  srli         a5, s0, 21
                  andi         a5, s6, 778
                  or           t4, s7, s6
                  sub          s7, s2, t2
                  srli         t2, a0, 10
                  slli         a2, s1, 3
                  sub          s6, t5, gp
                  addi         t1, a4, -1968
                  sltiu        a7, s0, 1986
                  sra          a2, a5, a7
                  slt          t3, s0, t6
                  auipc        a2, 654195
                  addi         s11, a1, 1482
                  auipc        s7, 472154
                  sltiu        ra, s5, -6
                  sub          s8, s0, zero
                  addi         a3, a2, -69
                  xori         t6, s8, -1884
                  sub          a7, t2, gp
                  sltu         t4, t3, t4
                  slli         s10, a1, 15
                  addi         s11, ra, 773
                  xor          s7, t2, t3
                  srl          s1, t4, sp
                  or           t2, zero, s1
                  sltu         t3, s8, s8
                  srai         zero, s7, 0
                  xor          tp, a4, a1
                  and          t0, t6, ra
                  nop
                  sltu         s7, a5, s1
                  xori         t5, t2, -1658
                  slli         s1, a2, 24
                  srl          a5, s0, t4
                  or           t1, gp, t0
                  slli         a5, a1, 24
                  add          t1, s5, t6
                  xor          t5, a4, sp
                  xori         t6, s1, 334
                  or           t1, s9, t0
                  sll          t2, t6, s1
                  or           tp, s6, t5
                  xori         a0, a1, 1745
                  andi         s6, s2, -1548
                  sll          s9, s2, ra
                  andi         s7, a6, -173
                  slli         s10, gp, 28
                  slti         a6, a7, 69
                  andi         s7, s6, -1388
                  srli         a3, a1, 15
                  sltiu        a2, a0, -771
                  add          a0, a5, s4
                  lui          t3, 954876
                  and          s10, ra, t4
                  slt          t4, t0, s6
                  slti         gp, s0, 985
                  lui          s6, 1044567
                  xor          t3, a5, t6
                  slt          sp, a3, t0
                  srl          a4, tp, t1
                  srai         a5, zero, 18
                  lui          t3, 411515
                  sll          ra, s7, s7
                  ori          tp, t6, -1388
                  srai         s2, s1, 24
                  auipc        gp, 201769
                  nop
                  sub          s9, ra, s0
                  slli         s6, a7, 0
                  or           s1, s6, a7
                  slli         sp, s8, 23
                  sltu         a5, t4, s2
                  lui          a7, 160401
                  and          a0, s4, s7
                  andi         a2, a7, 990
                  add          s11, s9, s11
                  add          t0, t3, ra
                  srli         s5, t0, 11
                  xori         s2, a2, -1483
                  slt          a5, s0, t1
                  srai         t2, t3, 25
                  auipc        t3, 664075
                  srai         t4, t5, 20
                  xor          s0, a5, a5
                  srl          a5, sp, s3
                  sltu         tp, s10, s7
                  sub          a7, tp, s5
                  sll          s7, s10, a7
                  sll          tp, t1, gp
                  sub          t0, a6, sp
                  lui          gp, 643730
                  xori         s10, s2, 1106
                  slli         s6, ra, 28
                  sra          a3, t4, s8
                  add          s5, a7, a5
                  srai         a2, t0, 26
                  sltu         zero, a4, a5
                  sltu         a7, sp, zero
                  add          t2, t0, s0
                  slt          a3, s10, s7
                  xori         s10, s2, -757
                  xori         t5, t6, 188
                  andi         zero, s8, 846
                  sltiu        gp, s2, 1344
                  sll          a5, s4, a7
                  sub          a2, gp, s6
                  ori          s9, s0, -1059
                  or           gp, s7, s4
                  sll          s0, s0, t4
                  srli         s8, t6, 22
                  srai         a3, s3, 16
                  auipc        t0, 373007
                  srl          t2, t4, sp
                  and          a0, a2, a5
                  addi         s2, gp, 1587
                  sltiu        s9, a0, -668
                  sltu         s5, s1, s8
                  sltiu        t0, a1, -7
                  slli         t4, s1, 14
                  lui          a4, 297990
                  srli         t5, t0, 9
                  lui          s2, 92832
                  nop
                  srai         a5, s3, 10
                  xor          tp, t0, ra
                  xori         a6, s3, 141
                  nop
                  lui          s10, 351927
                  andi         t4, s10, 1239
                  xor          t4, t3, a7
                  ori          a3, a7, 670
                  sll          sp, zero, s5
                  srai         tp, s11, 1
                  slli         s7, s5, 4
                  sub          t3, a6, ra
                  slt          s11, a3, s1
                  srai         t0, t4, 29
                  lui          s5, 437126
                  nop
                  sll          t5, gp, gp
                  add          tp, ra, a3
                  add          tp, t1, a0
                  xor          zero, ra, tp
                  andi         gp, tp, -371
                  lui          a4, 85103
                  xori         t0, s11, -462
                  sll          s1, tp, t0
                  nop
                  srai         a0, a1, 8
                  addi         t4, t5, 1136
                  and          t3, a3, t3
                  auipc        t5, 256699
                  xori         s10, s9, 1191
                  lui          s0, 552524
                  srl          a6, s6, tp
                  sll          a4, s0, a6
                  srl          s11, t3, s0
                  sra          s0, t5, gp
                  or           a6, a4, t3
                  slti         t4, a4, -1437
                  andi         s2, s6, -1636
                  xor          t2, t0, s9
                  slli         t2, t1, 21
                  andi         a7, t0, 1812
                  nop
                  sltiu        zero, s7, 516
                  sll          t4, a0, s10
                  or           gp, s2, zero
                  sltiu        s0, a3, -822
                  addi         s2, a0, -562
                  sltu         zero, a5, s1
                  and          s11, s4, t2
                  slli         a3, s5, 11
                  sll          t3, a2, a0
                  slli         s10, zero, 1
                  srl          s10, a5, s2
                  ori          s7, s4, -842
                  auipc        t1, 656719
                  xor          t5, a2, a3
                  addi         s6, a1, 1774
                  srli         t6, a2, 5
                  add          s2, a0, t0
                  nop
                  slt          s2, s2, a6
                  ori          sp, s5, 1225
                  slli         s10, t1, 18
                  add          s7, s4, t6
                  sll          a2, a6, ra
                  slti         t5, s7, 1778
                  sltiu        s9, t3, -1534
                  srli         a6, a4, 11
                  sltiu        t2, s4, 512
                  addi         s10, t4, 808
                  xori         sp, t1, 335
                  srli         a4, ra, 24
                  lui          s11, 518815
                  sltiu        a4, a2, -1176
                  addi         t6, t0, 225
                  srl          sp, s2, a6
                  xor          a7, t1, t2
                  srl          t5, s7, s3
                  srai         a5, s2, 26
                  auipc        s10, 478207
                  srl          t4, s8, t4
                  auipc        s10, 635140
                  sltiu        ra, ra, 1770
                  auipc        s9, 450733
                  and          t5, sp, t2
                  slli         sp, s3, 7
                  srai         s10, s5, 21
                  sltiu        a0, a3, -1194
                  and          tp, a3, a7
                  andi         s5, gp, -1045
                  sub          s10, s1, sp
                  nop
                  andi         s10, a7, -1509
                  sra          s0, t2, a4
                  lui          sp, 569389
                  srl          t5, s11, a7
                  slti         t0, s1, 1159
                  lui          a7, 288370
                  lui          s2, 142546
                  li           gp, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           sp, 0x0
                  li           t1, 0x80000000
                  li           tp, 0x51c8ea4f
                  li           s0, 0xffffffff
                  li           s5, 0x80000000
                  li           s1, 0x80000000
                  li           t6, 0x80000000
                  li           t4, 0xffffffff
                  li           s6, 0x152ebbf3
                  lui          gp, 958941
                  add          s5, gp, s0
                  lui          s6, 286345
                  addi         sp, sp, 676
                  auipc        s5, 230245
                  auipc        s5, 982190
                  nop
                  sub          gp, s1, gp
                  auipc        s5, 392445
                  lui          sp, 409426
                  add          s0, s6, tp
                  sub          s6, t6, tp
                  addi         s1, t4, 1013
                  nop
                  lui          s1, 750464
                  nop #end riscv_int_numeric_corner_stream_16
                  xori         gp, s2, -1201
                  auipc        t6, 332855
                  sltu         s2, s8, a7
                  xori         tp, s4, 1202
                  slli         s2, sp, 28
                  xori         t6, a0, -894
                  slli         sp, s6, 3
                  ori          a0, a2, -502
                  slli         tp, s4, 17
                  nop
                  sltiu        s2, t1, 873
                  xor          a3, t3, s6
                  sub          a4, a0, s4
                  slti         t1, gp, 271
                  lui          a5, 178241
                  or           s0, t4, a1
                  srai         t5, t0, 6
                  and          s6, a3, zero
                  slt          s1, s11, a5
                  xori         a0, t4, -330
                  xori         t6, s8, 55
                  srai         t0, t5, 23
                  and          a5, a5, s9
                  srli         s8, a5, 16
                  xor          s0, t5, s5
                  nop
                  srli         a5, t1, 5
                  slti         ra, zero, -543
                  srli         s7, sp, 4
                  srl          tp, tp, t3
                  lui          tp, 179718
                  lui          t6, 462921
                  srl          a5, a0, s2
                  nop
                  srli         s8, a0, 7
                  sll          a4, t5, s6
                  and          t3, t1, a1
                  srli         s5, s3, 28
                  auipc        s5, 872669
                  sltu         s10, t4, s1
                  auipc        s8, 97069
                  nop
                  sltiu        a4, zero, 1983
                  srl          t3, a4, t1
                  sltiu        t4, s3, -1411
                  xori         t6, a6, -945
                  srli         t4, s2, 20
                  auipc        s6, 13895
                  add          s10, t5, t2
                  sltu         gp, s5, s0
                  srai         s1, s6, 31
                  andi         s10, t6, -695
                  lui          t5, 516060
                  srai         t4, t3, 29
                  nop
                  lui          s8, 821456
                  slti         a2, s9, -1759
                  lui          t1, 107746
                  sltiu        s7, t3, -1351
                  srli         s10, zero, 10
                  sub          s2, s8, s8
                  addi         gp, s9, 1276
                  sltu         gp, t1, t0
                  sltiu        t4, zero, -786
                  sll          s7, s10, s5
                  slt          s9, s0, sp
                  srai         s8, zero, 0
                  andi         s2, s6, 227
                  sltu         t6, s8, a5
                  sra          s8, s8, a0
                  andi         zero, s11, -199
                  srl          zero, zero, s10
                  sub          s10, t6, a6
                  xor          s11, ra, s9
                  and          t5, tp, zero
                  or           gp, s4, s10
                  sltiu        s10, t6, -66
                  addi         a3, s2, 658
                  srli         t1, t2, 25
                  sub          zero, s3, s0
                  ori          t4, s0, -2005
                  ori          sp, a5, -1584
                  srl          t6, t2, s6
                  ori          s2, s8, 593
                  addi         tp, s0, -1663
                  and          s9, zero, s3
                  addi         s2, t6, -109
                  slti         s6, t3, -1641
                  add          s9, tp, t0
                  xori         tp, t1, 1985
                  ori          tp, a3, 789
                  sub          t1, t6, s0
                  or           t0, a4, a2
                  or           s8, s2, gp
                  sltiu        zero, a0, -980
                  slti         s0, ra, -1531
                  sub          sp, t6, tp
                  andi         a6, s11, -1299
                  sra          a4, gp, ra
                  sll          gp, t3, a4
                  or           a0, t3, tp
                  slli         a4, gp, 19
                  xor          s2, s5, s1
                  srai         sp, t3, 23
                  and          a5, sp, s3
                  slt          a0, t3, s7
                  add          a4, tp, s3
                  addi         t1, a4, -1088
                  ori          a0, gp, -202
                  srli         t4, a0, 23
                  lui          s10, 814001
                  sltu         t4, s1, t0
                  sra          t6, a3, a2
                  slt          t0, s5, t4
                  xori         s7, t4, 426
                  slt          tp, t2, t1
                  sra          a5, gp, t6
                  ori          s0, zero, -1501
                  slli         s9, a6, 5
                  slli         t4, s2, 3
                  slli         s6, sp, 18
                  auipc        t6, 596067
                  xor          a3, a7, zero
                  xor          s1, sp, s3
                  add          s1, s7, ra
                  slli         t4, s4, 30
                  sltiu        t1, a5, -1856
                  addi         s11, sp, -1246
                  slt          ra, t5, ra
                  or           t5, s3, s0
                  slli         a4, a6, 19
                  slt          s2, ra, t6
                  sltu         t0, tp, t1
                  sub          a3, s0, s10
                  sub          ra, a5, t3
                  sltiu        a2, a7, 456
                  add          a7, a3, sp
                  sll          t6, s9, a2
                  slti         t2, sp, 1913
                  xori         tp, s7, 1157
                  nop
                  sub          t6, a0, s6
                  slti         a0, a7, 527
                  addi         s0, a4, 835
                  slli         a3, s10, 24
                  nop
                  sll          zero, tp, s3
                  xor          t3, a3, t4
                  xori         t2, s0, -1518
                  addi         t2, t4, -223
                  sub          a6, s4, tp
                  ori          s6, t0, -1233
                  sub          a6, a1, s11
                  and          sp, s0, s4
                  sll          tp, zero, s7
                  slli         s8, sp, 3
                  sll          s0, a2, t3
                  auipc        gp, 916454
                  ori          a7, t1, 481
                  lui          t3, 470575
                  and          a2, s7, t5
                  slti         s2, s0, 2027
                  auipc        s9, 392814
                  srl          a3, sp, a4
                  and          zero, t6, tp
                  ori          a5, t1, -878
                  and          t5, s1, s5
                  sub          t0, t4, a7
                  and          s8, s0, t5
                  srli         s7, t3, 27
                  sub          s9, t3, t2
                  lui          a2, 730612
                  sltu         a5, a2, t2
                  sltiu        t3, a7, -66
                  srai         a2, t3, 19
                  xor          sp, s11, zero
                  xori         s0, t4, -696
                  slt          a2, s4, t5
                  add          s11, s7, a4
                  sltu         zero, sp, s2
                  nop
                  slt          s7, s6, a1
                  ori          sp, a1, -626
                  lui          s9, 949682
                  ori          gp, t5, -483
                  lui          s6, 154644
                  nop
                  srli         t0, s9, 10
                  or           a3, a1, t6
                  srl          t4, a7, a0
                  sra          gp, s2, t3
                  srli         gp, s7, 7
                  sub          tp, s4, t1
                  add          t6, s5, s4
                  srl          a0, s1, s9
                  sra          s7, s7, zero
                  sub          a0, s7, t4
                  slli         a4, s6, 17
                  xor          tp, s5, s2
                  sltu         t3, t0, t3
                  srli         t4, s0, 24
                  srli         t5, s1, 27
                  sub          t6, t0, s4
                  xor          t2, s10, a6
                  ori          s6, a3, -10
                  xor          t1, s9, s3
                  srai         s0, a0, 13
                  sra          a0, t1, zero
                  addi         sp, s2, 1047
                  sltiu        s1, s9, -320
                  slli         t3, zero, 26
                  sltu         zero, a4, sp
                  add          t3, s10, s6
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           a6, 0x0
                  li           ra, 0x23da4bd8
                  li           s10, 0x80000000
                  li           s11, 0x80000000
                  li           s7, 0xffffffff
                  li           s5, 0x0
                  li           a4, 0x80000000
                  li           a5, 0xffffffff
                  li           a0, 0x80000000
                  add          s5, s5, s10
                  add          s9, ra, s11
                  add          a4, s11, a5
                  nop
                  add          ra, a6, a6
                  lui          s10, 472264
                  sub          s11, s10, s9
                  auipc        a0, 308652
                  add          s10, s7, a6
                  sub          a6, ra, s7
                  nop
                  auipc        a6, 216110
                  nop
                  add          a5, s10, s9
                  add          s10, a6, s11
                  nop
                  auipc        s5, 722742
                  sub          s7, s7, s10 #end riscv_int_numeric_corner_stream_18
                  sra          a7, ra, t6
                  addi         a7, s8, -1508
                  and          t3, s0, a7
                  or           tp, s5, gp
                  nop
                  addi         s10, a5, 1809
                  sra          s10, a0, tp
                  sll          a0, s2, a4
                  srai         tp, a7, 3
                  andi         a7, s9, -1132
                  lui          s6, 652
                  sra          gp, s10, s9
                  slt          a4, a2, t6
                  and          t2, s8, t3
                  sltu         t2, s10, t0
                  slti         sp, s6, -836
                  sltiu        t4, s7, 587
                  or           gp, a5, t1
                  slt          s2, a2, a2
                  srai         a6, t0, 3
                  sll          a4, a3, s6
                  srli         s5, sp, 4
                  nop
                  and          a5, s2, t4
                  xor          t0, a3, s0
                  xor          tp, t4, t0
                  or           tp, t3, sp
                  xor          ra, s8, s10
                  sll          t2, zero, s4
                  sra          t4, s11, s5
                  slt          t0, a2, s2
                  srai         a4, a2, 17
                  nop
                  andi         s11, t4, -1366
                  nop
                  slti         a6, a1, -932
                  and          s6, zero, a7
                  nop
                  add          ra, s10, a0
                  slli         a6, s6, 27
                  addi         a6, t0, -595
                  lui          a5, 991961
                  lui          s0, 808560
                  slt          a0, t6, t3
                  xor          a5, a5, zero
                  slli         a3, s11, 8
                  xor          s8, t2, a3
                  srai         a5, s11, 30
                  or           zero, s10, s1
                  srli         s8, s0, 8
                  srli         s6, tp, 24
                  slt          t2, a3, ra
                  xor          t6, a5, tp
                  sltu         s7, gp, t6
                  srli         a0, s7, 28
                  slli         t4, a2, 22
                  sltu         s2, a1, t6
                  auipc        t5, 858996
                  srl          zero, a1, s10
                  srli         t3, t1, 25
                  slli         zero, t2, 23
                  sll          s10, s7, s3
                  slli         s10, s5, 6
                  xor          s0, s6, t5
                  or           zero, s8, s5
                  xori         s7, a6, 1975
                  nop
                  or           t1, t3, s2
                  ori          s6, t5, 1253
                  slli         s11, a2, 1
                  xor          t4, tp, a1
                  addi         s11, s11, -1359
                  sll          s9, a0, t6
                  auipc        a0, 849182
                  addi         ra, a5, 154
                  auipc        t6, 804534
                  sltiu        sp, s8, 1000
                  sltu         a6, t6, s4
                  add          gp, t1, s10
                  and          t3, a4, s0
                  add          t6, s9, a2
                  slli         gp, s3, 10
                  lui          t0, 860155
                  auipc        s5, 154012
                  srai         a0, s2, 19
                  ori          s5, s6, -614
                  slli         s7, s2, 27
                  srli         t4, s6, 4
                  srai         a7, s7, 8
                  xori         s0, a4, 1172
                  andi         a3, t6, 1954
                  andi         s6, s6, -1298
                  add          s8, gp, a3
                  ori          t5, a7, 1577
                  slt          t4, s1, s1
                  sra          s11, t0, s10
                  sra          t0, s1, s7
                  srli         sp, s0, 3
                  srl          t4, s1, s10
                  andi         ra, s11, 1146
                  sra          tp, s1, t3
                  slli         s8, s1, 30
                  sltu         s6, tp, t1
                  xori         t6, t2, 974
                  sltu         t0, a1, t6
                  srl          s1, t3, a1
                  slti         t1, a3, -1439
                  slti         s11, a4, -1574
                  slt          a4, s1, t1
                  slli         a3, a2, 6
                  auipc        a2, 238290
                  sll          s8, sp, s5
                  sll          a3, t3, gp
                  sltiu        a6, s7, 1484
                  addi         s7, s9, -693
                  slt          a7, a5, a4
                  auipc        a6, 375833
                  srli         s7, a7, 2
                  sltiu        tp, a4, -336
                  add          t2, s10, s6
                  slti         a4, zero, 407
                  xori         t3, s0, -644
                  srl          t1, t0, a4
                  nop
                  lui          sp, 41909
                  srl          s9, t3, t6
                  sltiu        a0, t3, -1670
                  or           ra, t1, tp
                  sltiu        t3, zero, -1210
                  and          s5, t1, s6
                  lui          a4, 503597
                  sub          s6, gp, gp
                  sltiu        a5, zero, 1906
                  and          sp, s4, a5
                  sltiu        gp, s3, 1901
                  srai         s9, s4, 9
                  lui          s11, 139111
                  xori         sp, t3, 949
                  nop
                  srai         t2, t3, 23
                  sll          t5, tp, t5
                  lui          t0, 339479
                  sub          gp, s10, s4
                  srl          s9, t0, t0
                  xor          zero, a0, s10
                  xor          s2, s6, s2
                  srl          t6, s10, t6
                  addi         a6, s11, 848
                  slti         ra, s9, -2021
                  sltu         s11, s8, gp
                  xor          a5, s5, s2
                  xor          t1, zero, t4
                  ori          t6, s7, 576
                  li           s10, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           s0, 0x80000000
                  li           a2, 0x80000000
                  li           s7, 0xe8a0d9ab
                  li           t3, 0x0
                  li           s11, 0x0
                  li           tp, 0x80000000
                  li           s5, 0xd4a949bf
                  li           t1, 0x0
                  li           gp, 0x0
                  add          s10, a2, t3
                  lui          t3, 183476
                  add          s5, s7, t3
                  auipc        a2, 448867
                  nop
                  addi         s5, tp, 1279
                  add          s0, tp, gp
                  addi         s5, a2, -1896
                  addi         t1, s5, 1297
                  lui          t3, 4063
                  sub          a2, s5, s5
                  add          s0, s11, t1
                  lui          a2, 368578
                  addi         s11, s7, 1281
                  lui          a2, 858633
                  add          s0, tp, s7
                  add          a2, t1, s0
                  nop
                  nop
                  auipc        s10, 882356
                  sub          t1, s0, s0
                  add          t3, s7, s11
                  add          s0, t1, s7
                  auipc        a2, 848622
                  nop
                  lui          s11, 875412
                  lui          t3, 736365
                  addi         s11, s0, -110 #end riscv_int_numeric_corner_stream_7
                  srl          s7, a5, zero
                  srl          a2, a1, a0
                  slli         a0, a5, 18
                  xori         a6, gp, 577
                  sltiu        t1, t4, 1774
                  sltu         t6, s6, s11
                  lui          t3, 142206
                  auipc        s11, 878566
                  ori          sp, tp, -924
                  srl          s6, s3, s7
                  sltu         t4, a6, t4
                  or           zero, zero, a1
                  slti         s9, a3, 1596
                  slti         t4, t6, -118
                  sltiu        sp, s4, 1881
                  sltu         a6, t1, gp
                  sltu         tp, s8, a0
                  sub          t2, s8, a5
                  xori         gp, a3, 838
                  or           t4, s5, s3
                  sra          ra, t6, t5
                  ori          s5, zero, 2041
                  srai         t3, t4, 3
                  addi         gp, t5, -1124
                  xor          a0, a3, a1
                  srli         s2, s8, 11
                  and          a4, t5, t5
                  sltu         s2, a4, t5
                  and          a2, s1, t4
                  lui          t1, 1027247
                  nop
                  lui          sp, 837799
                  sra          t2, s1, t4
                  andi         t4, a2, -329
                  addi         t5, a1, 1377
                  slli         gp, a2, 9
                  xor          tp, s6, zero
                  andi         s9, s9, 680
                  sub          t4, s4, s1
                  lui          a3, 744669
                  and          a7, tp, zero
                  slti         gp, a4, -444
                  andi         s7, s7, -1487
                  sltiu        t1, a5, 959
                  sub          t1, s8, s4
                  sra          zero, s7, t0
                  xor          a0, s0, t0
                  srai         t6, a5, 12
                  slti         ra, t5, -1662
                  sll          ra, gp, s3
                  sltu         t3, t3, s11
                  add          a5, a2, s7
                  and          t4, s11, s11
                  and          a0, s2, s0
                  xor          zero, t5, a5
                  srai         s10, s5, 21
                  srai         t2, a6, 27
                  sll          a0, gp, s4
                  addi         a0, a4, -388
                  sra          a7, a3, t1
                  sltiu        t6, a4, 1825
                  nop
                  sltu         tp, s6, t1
                  xor          s6, s11, t1
                  andi         s2, s1, -801
                  auipc        a3, 285571
                  ori          a6, s3, 1721
                  lui          a3, 416540
                  add          a3, s5, s6
                  sra          s10, tp, s2
                  auipc        a6, 970056
                  lui          a4, 193263
                  add          a3, s9, s11
                  sll          a0, zero, t4
                  srli         t6, a0, 14
                  auipc        a4, 813460
                  sltiu        s8, t4, 1616
                  sll          s10, s3, sp
                  slt          s11, s6, a5
                  sub          a7, t6, sp
                  xori         ra, t0, 1627
                  slti         t2, t1, -544
                  sltiu        t1, a2, 392
                  srai         s5, s11, 18
                  auipc        a0, 837576
                  srai         a7, s1, 12
                  andi         s6, a2, 1599
                  sub          ra, s11, tp
                  addi         s8, t3, -914
                  xori         t6, s10, 125
                  xor          a3, s8, s8
                  or           gp, s1, s1
                  srai         s5, t0, 15
                  xori         s9, gp, 1892
                  or           t4, s2, zero
                  lui          t4, 455505
                  slt          zero, s6, s9
                  lui          t3, 635814
                  sra          t2, s9, t3
                  add          s6, zero, zero
                  slli         s9, s0, 3
                  or           s1, t0, s3
                  xor          a5, t4, s10
                  or           t0, s9, a0
                  sra          t2, t4, t4
                  addi         t0, s8, 801
                  add          t4, t1, s7
                  auipc        s7, 956259
                  sltiu        s11, s8, -265
                  nop
                  slli         a0, a5, 8
                  sra          a7, s10, s3
                  ori          t2, s6, 568
                  srl          t1, a0, s11
                  srai         t4, s4, 24
                  nop
                  srai         s10, tp, 25
                  auipc        zero, 798716
                  ori          t3, s1, -617
                  nop
                  sub          zero, a1, s9
                  addi         t5, t2, 488
                  sll          a0, a4, a6
                  nop
                  slti         s2, a0, 1122
                  xor          a2, a7, a3
                  sltu         gp, s11, t6
                  nop
                  sub          s10, tp, a3
                  sltiu        s5, gp, -749
                  and          s8, t4, zero
                  slt          a7, t0, s6
                  srl          s8, s2, t1
                  srl          s9, t0, t0
                  andi         a3, gp, 1410
                  auipc        ra, 957850
                  addi         s9, s11, -2030
                  slt          t2, s9, a4
                  sltu         a3, s4, s4
                  srai         t6, t2, 10
                  sltiu        s2, t6, -177
                  sub          tp, s10, t0
                  slti         tp, t0, 1943
                  srai         zero, s9, 25
                  xori         s7, s6, 100
                  slti         s8, s5, 563
                  lui          t6, 411933
                  sltu         t5, s2, sp
                  or           a5, zero, s11
                  xor          t1, t0, t5
                  add          a5, s9, s10
                  sub          a6, a0, s2
                  sra          t0, t4, tp
                  lui          zero, 813081
                  andi         s8, s10, 1705
                  auipc        s8, 876342
                  slli         a6, s0, 16
                  auipc        a6, 533795
                  slti         zero, s2, -1694
                  xori         t0, s3, 1221
                  andi         zero, a0, -1423
                  sltu         s8, s8, s5
                  xori         a0, s5, -2014
                  sll          a4, gp, ra
                  lui          s9, 68942
                  srl          s9, t6, s1
                  srli         a2, t5, 9
                  add          a6, a7, t4
                  andi         t3, a4, -104
                  sltiu        s7, s0, -1536
                  xor          ra, zero, t0
                  xor          t2, s4, s11
                  srl          t0, a3, t6
                  xori         t0, a3, -1241
                  slt          s11, a0, t2
                  slt          sp, t4, tp
                  xor          a4, t6, s8
                  sub          a5, a1, s9
                  sltu         s0, a0, tp
                  slli         t6, s10, 18
                  slt          a5, a7, s8
                  slli         s5, s2, 13
                  auipc        a0, 444769
                  srli         a5, t6, 1
                  nop
                  or           s6, t5, s8
                  srli         a6, sp, 31
                  xor          sp, zero, s11
                  and          ra, tp, a2
                  srai         s5, t2, 7
                  srli         zero, s8, 13
                  sltiu        gp, s6, 192
                  srl          a0, t3, s11
                  slti         a0, s7, -1146
                  addi         tp, s3, 303
                  ori          a4, t4, 959
                  add          s5, t2, s6
                  xori         ra, s10, -398
                  slt          s10, s11, s4
                  sltiu        tp, a0, 1627
                  sll          a7, a7, t2
                  ori          a4, a1, 1196
                  sll          s5, t3, sp
                  nop
                  and          gp, sp, t2
                  and          t6, t3, s11
                  sra          s9, s6, s5
                  andi         s1, s2, -1657
                  or           s8, a0, s5
                  sltiu        a0, t2, -1359
                  add          a7, s5, s5
                  add          t6, t3, a3
                  or           s11, a1, zero
                  auipc        sp, 66383
                  ori          s1, t3, 903
                  sll          a3, s3, a6
                  xori         a7, t4, 1827
                  slli         t0, t5, 31
                  xori         t6, t6, 767
                  srl          s7, a5, t3
                  srl          s11, s10, a7
                  addi         t6, t0, 1422
                  nop
                  slli         a7, t2, 14
                  slli         t0, a0, 9
                  or           s10, s5, a3
                  srl          a6, t2, s4
                  xor          s1, gp, s2
                  sltiu        t0, a1, 1180
                  li           a5, 0x2c28120 #start riscv_int_numeric_corner_stream_1
                  li           t2, 0xffffffff
                  li           gp, 0x80000000
                  li           s6, 0x0
                  li           s7, 0xd631446f
                  li           s5, 0x464b5461
                  li           a4, 0x0
                  li           a0, 0x80000000
                  li           s10, 0xffffffff
                  li           t0, 0xf1e0379f
                  lui          a4, 220412
                  nop
                  add          s6, a5, s6
                  lui          a4, 32625
                  sub          a4, t2, a4
                  lui          a0, 755753
                  add          gp, s6, t2
                  sub          s5, s7, a4
                  addi         a5, t0, -1555
                  lui          a4, 456320
                  addi         s10, s10, 748
                  lui          s10, 181343
                  sub          s5, t0, a0
                  addi         gp, a0, -1759
                  add          gp, s7, s10
                  nop #end riscv_int_numeric_corner_stream_1
                  ori          a2, t0, -48
                  slli         s2, a5, 18
                  srli         t0, a7, 12
                  nop
                  nop
                  srl          t1, sp, t0
                  xori         a0, t5, -1590
                  and          s9, tp, s7
                  sltu         t1, s6, t4
                  sll          t1, s10, zero
                  nop
                  addi         a4, t0, -905
                  andi         zero, s10, -141
                  sub          a2, t3, s7
                  slt          s2, t5, a1
                  nop
                  sltiu        t6, t5, -1189
                  srl          t2, t6, s9
                  srai         t6, s2, 8
                  auipc        zero, 223162
                  ori          ra, a2, -2044
                  xori         zero, zero, -467
                  andi         a7, s10, 105
                  srli         a5, s1, 25
                  srai         a7, t2, 3
                  lui          gp, 974367
                  and          s11, s5, ra
                  sub          a5, a3, tp
                  xori         s0, s11, 901
                  sll          a4, s0, s5
                  sub          s1, t6, a2
                  xori         s2, s6, -505
                  nop
                  auipc        s1, 619534
                  srai         a0, a2, 21
                  or           a0, t5, s11
                  srl          sp, s0, s0
                  xor          s0, sp, a2
                  slti         s10, s2, 1024
                  xori         a2, tp, 903
                  sra          s11, s10, t6
                  xori         s2, s7, -1649
                  addi         s6, a0, 1860
                  srl          t2, s5, a0
                  sll          s7, a3, s7
                  srl          ra, ra, t0
                  srli         s9, t4, 0
                  nop
                  sub          s8, a6, s0
                  and          t3, s7, s4
                  sll          a2, a7, s8
                  xori         s5, s6, 967
                  add          t3, s5, s10
                  sll          a3, s5, t4
                  xori         s8, t6, -1559
                  nop
                  sltu         t3, s6, t1
                  lui          sp, 83091
                  andi         t0, s1, 1389
                  or           a3, ra, a2
                  addi         ra, a2, -591
                  addi         a2, a0, -1112
                  srl          t3, t6, sp
                  auipc        s10, 739039
                  ori          sp, s5, -308
                  or           s8, a4, s6
                  nop
                  slti         t4, t1, -874
                  lui          s2, 1020179
                  addi         t6, tp, 1839
                  or           a5, a1, s11
                  or           t0, t3, a1
                  srai         s5, a2, 1
                  slt          tp, s11, t1
                  lui          ra, 301552
                  sltiu        a0, s3, -1750
                  xori         tp, s7, -1420
                  sra          a4, s11, t4
                  add          t2, t6, a6
                  srl          t5, t2, zero
                  auipc        t2, 805198
                  addi         zero, ra, 1605
                  srli         s2, a6, 16
                  sll          a7, a7, zero
                  ori          s11, s11, 267
                  sub          s7, s9, a5
                  sub          s0, s11, s7
                  add          t0, a4, s2
                  addi         t1, ra, -1353
                  andi         s7, a7, 178
                  sra          a3, t4, s2
                  sub          sp, t5, a2
                  ori          s9, s10, -497
                  and          t2, tp, s4
                  ori          a6, t2, -761
                  srli         s8, zero, 14
                  sltu         a7, s9, s4
                  or           t2, t2, t6
                  slti         s11, s4, 1272
                  sub          a4, tp, tp
                  nop
                  auipc        ra, 372544
                  auipc        t0, 338982
                  lui          a4, 642987
                  nop
                  sltiu        s5, ra, 581
                  slli         a2, s4, 18
                  add          a5, s5, t1
                  srai         s10, zero, 25
                  ori          zero, s4, -1931
                  xori         t4, s7, -710
                  slli         tp, sp, 6
                  sll          t2, s0, a1
                  srai         s1, s3, 31
                  ori          tp, gp, -1086
                  nop
                  or           s10, s0, ra
                  slli         t2, s7, 0
                  slti         sp, s1, -160
                  addi         t6, t3, -884
                  srl          s1, gp, s8
                  ori          s9, sp, 577
                  slli         s2, a6, 14
                  sra          gp, a4, gp
                  srl          s9, t5, t1
                  andi         a7, s6, 343
                  sub          a6, s9, a7
                  sub          ra, t4, a6
                  or           t5, a2, a4
                  add          t5, t5, s10
                  xori         t3, gp, -833
                  and          s6, s8, zero
                  slli         t1, s9, 25
                  add          s0, s9, tp
                  srli         s6, t3, 31
                  and          s11, s11, s4
                  nop
                  srai         a4, t6, 9
                  sll          a0, t6, s7
                  sltiu        t4, a5, 501
                  nop
                  srli         tp, a2, 4
                  lui          a3, 670339
                  srl          s9, s5, t5
                  andi         a2, a3, 1452
                  slli         s5, a2, 4
                  srai         s7, s0, 31
                  srai         a4, zero, 6
                  nop
                  nop
                  and          t0, a4, s8
                  sra          s8, a2, s6
                  slli         s0, a6, 24
                  slti         s5, a6, 1102
                  sltiu        t3, s9, -2044
                  or           a4, gp, a3
                  sra          a5, a0, s5
                  xor          s10, t3, s3
                  andi         a0, a5, -1699
                  sll          s2, tp, a2
                  xori         s8, t0, -202
                  add          a6, s9, a5
                  andi         a6, s1, 302
                  sll          t6, s10, sp
                  xor          ra, s1, t1
                  add          sp, t6, a6
                  srli         s11, s0, 3
                  auipc        t3, 645904
                  sra          sp, gp, a1
                  srai         a3, a6, 22
                  lui          t5, 856364
                  auipc        s7, 767955
                  slli         t4, s1, 0
                  add          s2, s7, t5
                  addi         s5, ra, -1902
                  sra          tp, t1, t1
                  slti         t5, a2, 1784
                  nop
                  sra          zero, s10, s4
                  andi         t2, t0, 954
                  sltiu        a6, a6, -926
                  xor          t5, s0, s8
                  nop
                  andi         t2, s11, -1702
                  ori          t2, a2, -863
                  slli         tp, t3, 11
                  srl          s6, s6, s10
                  andi         s5, s6, -931
                  sll          t2, s5, t3
                  lui          s8, 279534
                  and          t1, a4, s8
                  sltiu        ra, a2, -1078
                  slli         gp, a4, 22
                  xor          a7, s8, a6
                  srai         t1, a4, 19
                  sltu         t5, t6, s2
                  sltiu        s11, s4, -412
                  sltu         t0, s2, t4
                  add          s11, s8, a7
                  srli         s6, s1, 30
                  addi         t1, s3, -1477
                  addi         t4, a3, 704
                  sll          a2, s2, t5
                  sltu         s11, a1, zero
                  srl          t4, s8, s10
                  addi         s0, a2, 938
                  sra          a6, tp, t5
                  add          s9, s6, s9
                  sltu         a3, s2, t1
                  sltu         s7, a6, tp
                  lui          tp, 704641
                  auipc        s2, 152574
                  sltu         t1, s2, s5
                  add          a2, gp, t5
                  xor          gp, t0, s5
                  nop
                  slti         t3, t6, -1789
                  xori         s9, a5, -1699
                  xor          zero, a7, a7
                  srli         t0, a2, 20
                  addi         s6, tp, -58
                  sub          a4, s1, a5
                  slt          s10, s3, s1
                  srl          zero, a5, t0
                  slti         t2, s1, 1726
                  sll          s0, a7, s7
                  andi         s7, tp, 1141
                  sll          s5, s6, a5
                  srai         s1, t4, 2
                  slti         t3, s11, -1429
                  addi         s8, s2, 17
                  srl          s8, a1, s6
                  and          s7, tp, t5
                  lui          sp, 899786
                  xor          gp, a5, t3
                  ori          t5, t4, -23
                  xori         s11, s3, -1025
                  sra          tp, t4, a3
                  sll          t6, t5, s8
                  andi         t2, sp, 259
                  sltu         zero, a5, s5
                  lui          s1, 549499
                  srai         s8, ra, 3
                  sltiu        a7, a4, 1320
                  sll          t5, s8, s7
                  addi         a0, s8, 1469
                  srai         s2, s0, 8
                  srai         gp, ra, 21
                  slt          s10, a2, t6
                  add          t0, s1, a6
                  sltiu        s11, s9, 1787
                  sub          a3, s0, tp
                  slli         t5, sp, 28
                  slli         t2, s1, 13
                  sra          ra, a2, s5
                  sub          s1, s3, a2
                  nop
                  srli         ra, s10, 9
                  auipc        ra, 719037
                  slti         s9, ra, -1219
                  srli         ra, s10, 11
                  add          s5, s3, t3
                  xori         s5, s1, 919
                  andi         gp, t1, -1991
                  srli         zero, a5, 12
                  xor          s7, tp, s11
                  ori          a5, t0, -96
                  slli         ra, s1, 25
                  addi         s0, t6, -474
                  add          sp, a0, gp
                  srai         tp, s7, 20
                  addi         t6, a3, -572
                  xori         a5, a5, -1367
                  sltiu        s1, s0, 149
                  or           t4, s6, s6
                  addi         a6, t1, -1073
                  or           s1, t2, sp
                  nop
                  and          tp, s9, s0
                  andi         s11, sp, -262
                  sub          zero, t4, t2
                  auipc        sp, 973875
                  slti         s8, s6, -314
                  andi         t1, s8, -1174
                  sltiu        a2, t5, 2014
                  slli         a4, tp, 19
                  nop
                  xor          zero, a6, tp
                  sra          s5, a4, s2
                  sltiu        s1, sp, -1737
                  addi         a3, a2, -873
                  slt          s0, t6, s8
                  slli         zero, t2, 19
                  sltiu        s1, a2, -550
                  xori         t3, tp, -138
                  slt          zero, s11, s3
                  auipc        t2, 70450
                  srl          a2, a3, s9
                  sltiu        s8, s10, 1284
                  sub          s11, sp, gp
                  slti         t0, sp, 44
                  sltu         s7, s4, t3
                  xor          s11, s9, ra
                  xori         sp, a7, 928
                  srl          ra, s11, a3
                  lui          sp, 1007891
                  srli         a5, t5, 10
                  nop
                  srai         t3, t0, 11
                  srl          t3, s4, t3
                  sub          gp, sp, gp
                  srli         s1, a3, 31
                  sltu         t3, t1, a0
                  and          s7, s3, s4
                  srl          a5, t0, t5
                  sll          ra, s6, s9
                  and          s9, sp, s9
                  and          s1, s11, s11
                  srai         a3, s11, 7
                  addi         t1, a3, 1471
                  srli         a3, a6, 30
                  sltu         t5, a6, s11
                  sll          t5, t1, s4
                  srli         a3, a4, 8
                  sra          s9, s4, a1
                  nop
                  andi         a4, a3, 1096
                  sltu         ra, s1, s2
                  and          s6, ra, sp
                  srai         a4, zero, 16
                  srai         sp, a2, 14
                  and          s10, s11, s11
                  srl          t2, tp, gp
                  xori         a0, a0, -605
                  auipc        a5, 322973
                  addi         t2, ra, -36
                  or           t5, sp, s0
                  sra          t6, s10, s10
                  srl          s5, sp, s6
                  lui          s2, 326414
                  srl          t0, s9, t2
                  add          s5, s8, a6
                  srl          s5, s8, s7
                  sltiu        a5, t6, 1371
                  sra          s7, t0, t3
                  ori          a6, s8, 1743
                  nop
                  or           s9, t5, t6
                  auipc        s1, 376205
                  andi         t6, t5, 1
                  xori         s2, a3, 680
                  sub          gp, t3, a3
                  xor          tp, s9, t4
                  slli         s9, s6, 7
                  sltiu        gp, s8, 988
                  andi         t3, t5, 1596
                  and          t0, t5, a0
                  sltu         a3, s6, ra
                  sra          a6, a5, a5
                  and          zero, s0, a2
                  xor          s0, s9, t3
                  and          s1, t5, s3
                  auipc        t3, 964757
                  add          gp, t0, a7
                  nop
                  sltu         t0, s5, t3
                  and          t4, a5, t2
                  nop
                  nop
                  slli         s10, a2, 3
                  ori          a5, s6, 86
                  auipc        t0, 426174
                  or           sp, s7, a1
                  andi         t2, gp, -1251
                  sub          t2, a6, s3
                  auipc        t1, 258948
                  sltiu        a4, s9, 130
                  sll          t2, gp, t0
                  ori          t6, tp, -1142
                  add          a5, s6, s8
                  and          a6, s6, t1
                  sltiu        t4, t1, -1316
                  slti         s2, t0, 1588
                  add          a7, a1, a3
                  and          s7, s1, a0
                  or           s2, a3, a2
                  slti         s1, s1, -12
                  andi         s11, a0, 191
                  or           t3, a2, t1
                  andi         s8, s7, 1465
                  addi         a7, sp, -653
                  lui          tp, 1035487
                  slt          s8, a0, a4
                  andi         s0, s8, -713
                  slli         t1, a7, 24
                  sra          gp, tp, t2
                  xori         s5, a1, -1641
                  nop
                  and          s0, t0, a0
                  lui          ra, 894160
                  sltiu        a7, s0, -1778
                  nop
                  and          s6, a4, s6
                  sll          t2, s1, t6
                  ori          s7, t0, -659
                  auipc        a6, 684426
                  lui          a4, 570265
                  xor          sp, s6, s7
                  sltiu        s5, gp, 356
                  xor          tp, s6, sp
                  xori         s2, ra, 1508
                  sltiu        a4, t1, 959
                  sltu         s2, t0, s11
                  srai         sp, s1, 15
                  srai         s5, a6, 6
                  ori          t2, a3, 2040
                  slt          s5, ra, a2
                  sra          a4, s7, s1
                  ori          t3, a6, -608
                  slli         t6, a0, 29
                  srl          s2, s2, s4
                  srl          t6, s0, a3
                  sltiu        a7, s8, 571
                  nop
                  add          t2, zero, t0
                  srai         s1, s7, 21
                  sltiu        gp, s9, -893
                  nop
                  xori         t1, s8, 461
                  sub          a7, a6, s2
                  addi         gp, sp, 1358
                  slti         t0, a0, 1953
                  or           t6, s2, s3
                  auipc        s6, 584564
                  auipc        s11, 532122
                  add          s0, a3, s2
                  andi         s11, ra, -1630
                  xor          s2, sp, t1
                  sll          t1, s11, t3
                  slt          t0, a0, a7
                  slt          t6, a0, t6
                  add          a0, t0, s3
                  slli         a3, a1, 17
                  nop
                  xor          s5, s5, s1
                  srl          s10, s11, a0
                  xori         ra, gp, -858
                  andi         a6, t3, -1632
                  sltiu        s11, s2, -663
                  srl          s8, t0, gp
                  ori          t3, t5, 900
                  sltiu        s0, s6, -156
                  andi         a5, gp, 586
                  andi         t2, s4, 152
                  andi         s11, s5, 1355
                  ori          t1, s0, 1560
                  sra          s7, s3, a4
                  ori          gp, t5, -1229
                  srli         zero, a4, 12
                  lui          a0, 415398
                  sll          ra, t5, tp
                  ori          a6, a2, 1240
                  slli         s8, a0, 28
                  srai         a7, s4, 26
                  add          s2, s4, t2
                  slti         t1, s11, 149
                  sra          a4, t1, a4
                  slt          t0, s2, s3
                  slli         s5, gp, 14
                  nop
                  sll          a5, t0, s8
                  xori         t2, t4, 5
                  sltu         s6, s6, a7
                  srl          s11, s3, s3
                  ori          t2, s5, -1780
                  add          s1, a4, a0
                  xori         t3, t3, 472
                  sll          s9, t4, a3
                  sll          s2, a6, s2
                  or           s0, s11, t6
                  nop
                  lui          t1, 114655
                  nop
                  sltiu        t2, s8, -989
                  ori          a0, t3, -911
                  nop
                  add          zero, t6, a0
                  xori         t3, gp, -1021
                  andi         s10, t4, 143
                  sra          s2, gp, s9
                  sub          a0, s8, tp
                  srl          zero, s4, s3
                  xor          t2, a7, t5
                  xori         s7, a6, 1140
                  xori         s10, a4, 123
                  sub          a5, a6, s0
                  ori          zero, t4, 1467
                  add          s10, t1, s3
                  andi         t0, s9, -294
                  srli         ra, s0, 24
                  andi         t5, s1, -910
                  srl          t2, a3, a0
                  slti         tp, t5, -948
                  sra          a5, t5, t5
                  or           zero, t1, zero
                  sub          t4, t6, s7
                  addi         a2, t4, 837
                  xori         t4, s8, -1116
                  auipc        s11, 543034
                  add          s7, s1, t1
                  sltiu        s6, s0, 1794
                  sltu         s2, s11, t2
                  ori          gp, s1, 68
                  srai         s5, s2, 18
                  and          a6, tp, s11
                  auipc        gp, 647142
                  sll          t2, sp, t6
                  or           t4, s10, a3
                  srai         s6, a1, 0
                  srl          s1, s0, ra
                  slli         s5, a0, 18
                  xori         s0, a4, -941
                  slti         a7, t3, 583
                  sra          a2, t6, ra
                  slti         s8, gp, 682
                  srl          a3, s8, a5
                  srl          zero, s3, a7
                  slt          t2, s2, a6
                  sltu         sp, a4, t6
                  li           t1, 0x66259811 #start riscv_int_numeric_corner_stream_17
                  li           tp, 0x35be6617
                  li           s9, 0xffffffff
                  li           a3, 0x0
                  li           t5, 0xcee240c2
                  li           a5, 0x0
                  li           t4, 0x2a3cfcc0
                  li           s1, 0xffffffff
                  li           a4, 0xffffffff
                  li           sp, 0xffffffff
                  addi         t5, t5, 773
                  sub          s1, s1, t5
                  auipc        sp, 857042
                  addi         t5, a4, -1883
                  nop
                  add          s9, t1, tp
                  add          a5, t4, a5
                  sub          t5, a5, a4
                  addi         a3, sp, 1092
                  nop
                  nop
                  addi         tp, s9, 1754
                  sub          t4, s9, s1
                  add          s9, sp, s9
                  lui          s1, 727197
                  nop
                  lui          sp, 61985
                  add          a5, a5, t1
                  add          t4, a3, a3
                  add          s1, s1, s1
                  add          t4, sp, tp
                  lui          a5, 985813
                  nop
                  lui          t1, 6029
                  sub          tp, t5, s1
                  add          a5, sp, a5
                  lui          a4, 1037894
                  addi         t1, a3, 1950 #end riscv_int_numeric_corner_stream_17
                  andi         s10, a0, 913
                  auipc        s7, 759751
                  andi         a6, sp, -749
                  srl          t0, zero, t6
                  addi         s5, ra, -1389
                  xori         t3, a3, 545
                  addi         t5, s11, 882
                  xori         t1, a1, -1856
                  sub          tp, t5, t5
                  and          s6, t2, s1
                  slt          a2, s0, s7
                  slli         a2, gp, 17
                  andi         a3, t4, -68
                  auipc        t6, 487205
                  lui          s8, 269457
                  andi         s9, sp, 1604
                  srl          a0, s10, s1
                  add          s10, a4, t1
                  nop
                  add          tp, s3, s4
                  xor          s7, a0, t4
                  sll          a5, sp, ra
                  auipc        s8, 2361
                  add          s0, a1, s4
                  add          s0, a3, s1
                  xor          ra, a4, t3
                  slti         zero, tp, -445
                  lui          a6, 718879
                  and          s8, sp, a5
                  lui          gp, 1048328
                  and          a4, s2, t0
                  ori          s2, zero, -1406
                  sub          zero, s2, a7
                  or           s7, s6, t6
                  andi         t1, s9, 1004
                  sub          t4, s7, t0
                  xor          t3, t0, a7
                  ori          s10, a1, 1254
                  auipc        s1, 719826
                  sltiu        t6, s11, -488
                  or           s7, t0, s1
                  ori          zero, t5, 491
                  sll          a7, t4, a5
                  sltu         tp, s2, a5
                  sltiu        a0, a1, 265
                  lui          t4, 1022445
                  xori         a6, t4, 1423
                  lui          s8, 41802
                  andi         a6, s4, 47
                  nop
                  sltiu        a6, a2, -155
                  srai         a3, a7, 4
                  andi         s0, a4, 264
                  srli         t0, s9, 8
                  slti         t5, t6, -1892
                  srai         zero, s11, 19
                  add          tp, t1, tp
                  ori          a7, s4, -1464
                  slli         s8, s9, 27
                  auipc        t2, 635269
                  srl          a0, a6, a3
                  slt          ra, a7, s2
                  ori          a2, gp, -822
                  xor          t2, t2, t2
                  add          gp, a2, s3
                  sltiu        t3, t4, -498
                  sll          s7, s9, a5
                  slti         gp, gp, 1698
                  or           a0, s11, sp
                  sub          a4, t1, a4
                  slt          t4, a0, tp
                  slti         a0, s3, 1053
                  nop
                  xor          s5, t5, gp
                  sub          a6, a2, ra
                  auipc        a3, 608072
                  lui          t4, 1040506
                  xori         s9, a3, -2023
                  auipc        s8, 708021
                  xori         a6, ra, -998
                  sltu         t0, sp, tp
                  ori          s1, t0, 2019
                  srli         t1, gp, 26
                  sll          a5, a7, a7
                  auipc        a5, 205041
                  sltu         sp, s4, s10
                  sub          tp, a2, t3
                  srl          s2, a3, zero
                  auipc        s10, 747279
                  add          s1, t4, s3
                  sra          a4, a5, t6
                  ori          a5, sp, 869
                  addi         s11, s5, 1523
                  srl          gp, s10, s2
                  sll          a5, s8, tp
                  srai         s11, s1, 20
                  add          t2, a0, tp
                  sub          t5, s8, a4
                  nop
                  andi         a0, tp, 447
                  or           a3, s11, tp
                  slt          a2, a1, a3
                  or           t3, s2, a3
                  xori         s2, s6, -1239
                  sltu         s1, ra, s4
                  sll          a5, a5, a1
                  sltu         t3, t2, s4
                  slli         s10, a4, 27
                  slli         t1, t1, 26
                  xor          s0, a6, s4
                  sub          s6, s2, s8
                  nop
                  add          s2, zero, s3
                  auipc        t3, 1033553
                  slti         zero, sp, -1167
                  add          ra, s11, t6
                  sra          s8, zero, a7
                  slli         s9, t0, 1
                  slli         a4, a6, 26
                  lui          s10, 652766
                  or           s2, a0, a0
                  auipc        s9, 682426
                  slti         s10, s9, -1039
                  xori         s2, a4, -1811
                  auipc        s1, 811170
                  slli         s2, s0, 25
                  and          s7, sp, a2
                  slt          zero, t6, t2
                  slt          t2, s9, s3
                  xori         s11, s2, -1021
                  andi         s5, t2, 1132
                  nop
                  sll          s0, t2, s2
                  addi         a0, t2, -1864
                  xor          s11, zero, a4
                  add          t4, sp, a3
                  slti         s8, a1, 717
                  sll          a5, s8, t2
                  andi         t1, t5, -605
                  sltu         s10, a0, t2
                  slti         a6, s5, -1019
                  sltiu        s1, s11, -408
                  srai         s10, a0, 12
                  slli         t6, s9, 29
                  add          ra, zero, t1
                  srl          s7, s11, a0
                  or           t0, t2, s2
                  sltiu        s7, a0, 529
                  slt          t4, tp, s7
                  sltiu        zero, a7, 608
                  addi         t3, t2, -304
                  nop
                  nop
                  or           sp, a6, s10
                  sll          sp, zero, zero
                  ori          s5, a6, -1064
                  ori          a5, sp, -327
                  nop
                  xor          t4, s3, tp
                  lui          s7, 537505
                  srai         zero, s2, 18
                  srli         a2, s10, 25
                  addi         s10, t4, -1987
                  and          gp, a4, a0
                  nop
                  xori         a4, t6, 148
                  sltiu        t5, a5, -2001
                  srli         zero, a1, 4
                  or           a3, a3, s5
                  sra          t3, s0, a0
                  ori          s6, t6, 1078
                  srai         t1, a3, 20
                  sra          t1, a1, s5
                  auipc        s10, 353180
                  ori          a2, t2, 1929
                  sll          a3, a6, gp
                  add          t2, s11, s3
                  srl          t1, a2, t3
                  and          s5, s7, t3
                  addi         a0, s11, -1340
                  srl          ra, t1, a0
                  srai         s1, a1, 14
                  srl          t0, a1, a6
                  sra          a4, t2, zero
                  and          t5, a2, t6
                  and          t0, s3, s0
                  sltu         t2, s8, t1
                  sltu         s1, s4, s7
                  and          s0, s11, s6
                  srai         t1, a5, 30
                  addi         a7, sp, -761
                  sltu         a4, t5, a3
                  srl          tp, tp, s2
                  add          s1, t4, s10
                  slli         s1, t3, 5
                  auipc        gp, 881500
                  slti         tp, a5, 282
                  sll          s10, t2, s5
                  srli         a6, t5, 5
                  srli         t2, s0, 25
                  addi         s9, a7, -20
                  addi         t2, s7, -2026
                  and          ra, t6, a1
                  sll          a7, a3, s6
                  lui          a5, 962469
                  sll          a6, t4, t6
                  and          s7, ra, t5
                  addi         s6, t3, 1623
                  slti         s7, s10, -316
                  sll          a7, t5, t1
                  and          a6, ra, s3
                  or           a5, s10, t1
                  sub          s2, s2, a6
                  addi         s11, s0, -1135
                  or           gp, a3, tp
                  add          s11, t4, s2
                  auipc        s7, 50579
                  nop
                  nop
                  or           t2, a3, sp
                  nop
                  or           t6, t3, t0
                  add          tp, s4, a2
                  ori          a4, s3, -1513
                  sll          gp, a6, s6
                  slt          s5, t2, gp
                  auipc        a4, 659852
                  and          s5, a0, t2
                  nop
                  sub          zero, t2, s9
                  slli         a3, gp, 11
                  lui          s2, 823808
                  sra          s9, t4, t0
                  auipc        ra, 730407
                  srai         t1, s2, 29
                  lui          s7, 471659
                  addi         s5, gp, 550
                  xori         a0, s2, -1372
                  and          a4, s5, a4
                  or           a7, ra, t1
                  slli         a7, s3, 19
                  and          a5, s7, s4
                  sra          a7, t4, a1
                  srai         s5, t5, 0
                  sub          a6, t6, a1
                  srli         s2, s6, 8
                  slli         t5, s0, 5
                  slti         t2, s9, -701
                  slti         s11, tp, 201
                  sltu         a5, t2, t6
                  sltiu        s9, tp, -1868
                  slt          a0, s7, a7
                  xor          a5, s7, t6
                  sll          s0, s7, s7
                  andi         ra, t1, 1885
                  auipc        a4, 492349
                  nop
                  ori          t3, s9, -732
                  nop
                  sltiu        s2, t0, -1791
                  sra          t4, a5, t5
                  sll          t1, zero, s1
                  nop
                  slt          sp, s10, s4
                  or           s7, s9, s6
                  andi         a5, s11, 1257
                  sra          a3, ra, s8
                  ori          zero, a5, -1206
                  add          a6, s8, ra
                  sub          s10, a6, s7
                  srl          s11, s2, s3
                  sra          ra, t4, s2
                  srl          t4, t1, s5
                  sll          s8, a0, s0
                  srli         zero, t2, 8
                  slt          t3, s4, a0
                  auipc        a4, 762964
                  ori          s1, s6, -102
                  xori         s11, a3, 1380
                  sltu         s8, a4, s10
                  auipc        tp, 569606
                  sub          a6, ra, t3
                  auipc        t0, 683420
                  sll          a3, gp, s9
                  slt          a6, s10, s9
                  sll          s1, a2, s2
                  sra          a0, a5, tp
                  sub          s8, ra, a6
                  slti         ra, t6, 954
                  sll          a0, a0, a0
                  sub          t5, sp, gp
                  and          t4, zero, a7
                  addi         s7, a3, -1169
                  add          t3, s4, t4
                  sltu         a4, t1, sp
                  slt          zero, t1, gp
                  add          t0, tp, s3
                  andi         s9, tp, 524
                  auipc        t4, 452487
                  sltiu        s8, s9, 1922
                  addi         t4, s9, -1246
                  slli         t1, s10, 4
                  srli         a5, a7, 15
                  srl          s6, gp, a5
                  slti         t6, t0, 445
                  sltiu        a3, zero, -1773
                  lui          a7, 1028263
                  or           t6, s4, t1
                  slt          a5, a1, t2
                  lui          a0, 197764
                  and          a0, a2, s11
                  srai         sp, s2, 29
                  xor          gp, s11, t1
                  slti         a0, zero, 1101
                  xor          t0, a3, a0
                  or           s1, t0, s11
                  lui          s0, 545872
                  nop
                  sltu         s6, a2, t3
                  nop
                  lui          t5, 933565
                  auipc        s7, 217609
                  xori         a2, s3, 169
                  nop
                  auipc        sp, 765442
                  ori          t5, t5, -860
                  srli         t0, t4, 27
                  sltu         s8, a2, gp
                  slt          s10, a0, s2
                  sltu         a0, a7, s10
                  sra          s7, s10, t1
                  and          t5, zero, a2
                  sub          a0, a3, t0
                  nop
                  srai         s7, s1, 30
                  xor          zero, a1, s0
                  or           t3, t3, t2
                  auipc        tp, 1036883
                  sra          s9, ra, s6
                  auipc        t6, 205602
                  sub          a6, s0, sp
                  sltiu        a7, s0, 1682
                  slt          a4, s0, a1
                  slt          s10, ra, a1
                  slli         a2, a0, 8
                  slti         t4, t4, 1241
                  lui          s1, 218434
                  xori         s8, a0, 1354
                  sltiu        s9, s8, -613
                  and          s9, s6, s5
                  srai         ra, t4, 23
                  sub          sp, t1, a1
                  sub          s5, s6, s9
                  xori         t4, ra, -1265
                  slti         t4, t0, 1194
                  sra          t0, sp, a7
                  or           a7, a1, zero
                  auipc        s5, 646856
                  sll          a7, s3, s10
                  slt          s1, a0, a3
                  slli         a6, a1, 25
                  slt          t5, a3, a6
                  or           t4, t6, zero
                  sltu         a7, a7, zero
                  slli         a2, t3, 0
                  and          ra, s10, s3
                  sub          t2, t2, t6
                  xor          t3, a7, s6
                  lui          s2, 760175
                  addi         t0, a6, 775
                  sltu         gp, tp, sp
                  sub          s7, zero, zero
                  sltiu        s8, s11, -1926
                  sltu         sp, t3, s5
                  or           s1, s3, a2
                  slli         t1, t6, 12
                  add          a5, a4, s11
                  ori          sp, t0, 1001
                  srli         a0, t2, 2
                  srai         t1, a3, 16
                  xori         a0, s4, -913
                  slti         s7, a3, 516
                  or           s1, t3, a3
                  addi         a4, ra, 966
                  auipc        s2, 390603
                  or           s8, s11, a3
                  add          t5, a0, t4
                  sll          s8, a4, t1
                  and          a2, s1, s3
                  auipc        a4, 1013469
                  nop
                  slti         a7, a5, -1607
                  srai         a3, gp, 21
                  andi         a7, a5, -985
                  addi         sp, s11, -1129
                  and          sp, a2, a4
                  sltiu        t0, a7, -886
                  and          sp, t0, s0
                  auipc        a5, 432621
                  xor          t0, s7, a6
                  slli         t2, s4, 12
                  sub          s2, s5, t3
                  xori         ra, t4, 1079
                  sltiu        s11, s6, -1448
                  slli         a6, a2, 23
                  slli         s11, sp, 30
                  xor          s6, t6, a4
                  nop
                  sra          t0, t1, s8
                  slli         t4, t6, 18
                  sltiu        t4, s6, -767
                  ori          s11, s10, -288
                  slt          t3, t3, t0
                  sub          s5, a4, s0
                  slt          tp, s6, a1
                  sltu         gp, t1, a2
                  sltu         a4, zero, s10
                  sub          t1, s1, a0
                  addi         s7, zero, -800
                  nop
                  or           s7, a5, zero
                  sub          s6, s10, t4
                  and          s6, t5, t2
                  srl          t5, s3, s2
                  sltiu        a7, t0, -182
                  la x20, test_done
                  jalr x0, x20, 0
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
                  add x11, x19, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_2:
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
                  add x11, x19, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_3:
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
                  add x11, x19, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_4:
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
                  add x11, x19, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_5:
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
                  add x11, x19, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_6:
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
                  add x11, x19, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_7:
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
                  add x11, x19, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_8:
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
                  add x11, x19, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_9:
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
                  add x11, x19, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_10:
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
                  add x11, x19, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_11:
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
                  add x11, x19, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_12:
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
                  add x11, x19, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_13:
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
                  add x11, x19, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_14:
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
                  add x11, x19, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_15:
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
                  add x11, x19, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  add x11, x19, zero
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x5, 0x3 # BREAKPOINT
                  beq x13, x5, ebreak_handler
                  li x5, 0x8 # ECALL_UMODE
                  beq x13, x5, ecall_handler
                  li x5, 0x9 # ECALL_SMODE
                  beq x13, x5, ecall_handler
                  li x5, 0xb # ECALL_MMODE
                  beq x13, x5, ecall_handler
                  li x5, 0x1
                  beq x13, x5, instr_fault_handler
                  li x5, 0x5
                  beq x13, x5, load_fault_handler
                  li x5, 0x7
                  beq x13, x5, store_fault_handler
                  li x5, 0xc
                  beq x13, x5, pt_fault_handler
                  li x5, 0xd
                  beq x13, x5, pt_fault_handler
                  li x5, 0xf
                  beq x13, x5, pt_fault_handler
                  li x5, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x5, illegal_instr_handler
                  csrr x5, 0x343 # MTVAL
                  1: la x20, test_done
                  jalr x1, x20, 0

ecall_handler:    
                  la x13, _start
                  sw x0, 0(x13)
                  sw x1, 4(x13)
                  sw x2, 8(x13)
                  sw x3, 12(x13)
                  sw x4, 16(x13)
                  sw x5, 20(x13)
                  sw x6, 24(x13)
                  sw x7, 28(x13)
                  sw x8, 32(x13)
                  sw x9, 36(x13)
                  sw x10, 40(x13)
                  sw x11, 44(x13)
                  sw x12, 48(x13)
                  sw x13, 52(x13)
                  sw x14, 56(x13)
                  sw x15, 60(x13)
                  sw x16, 64(x13)
                  sw x17, 68(x13)
                  sw x18, 72(x13)
                  sw x19, 76(x13)
                  sw x20, 80(x13)
                  sw x21, 84(x13)
                  sw x22, 88(x13)
                  sw x23, 92(x13)
                  sw x24, 96(x13)
                  sw x25, 100(x13)
                  sw x26, 104(x13)
                  sw x27, 108(x13)
                  sw x28, 112(x13)
                  sw x29, 116(x13)
                  sw x30, 120(x13)
                  sw x31, 124(x13)
                  la x20, write_tohost
                  jalr x0, x20, 0

instr_fault_handler:
                  add x19, x11, zero
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
                  add x19, x11, zero
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
                  add x19, x11, zero
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
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x19, x11, zero
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
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x19, x11, zero
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
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  add x19, x11, zero
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
