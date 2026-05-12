.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x15, h0_start
jalr x0, x15, 0
h0_start:
                  li x17, 0x40000100
                  csrw 0x301, x17
kernel_sp:        
                  la x28, kernel_stack_end

trap_vec_init:    
                  la x17, mtvec_handler
                  ori x17, x17, 0
                  csrw 0x305, x17 # MTVEC

mepc_setup:       
                  la x17, init
                  csrw 0x341, x17

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x17, 0x1800
                  csrw 0x300, x17 # MSTATUS
                  mret
init:             
                  li x0, 0xf79147b8
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0xfbb6a7bf
                  li x5, 0x0
                  li x6, 0x5
                  li x7, 0xa14b750d
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0x2
                  li x11, 0xb05868b
                  li x12, 0xf3997d97
                  li x13, 0xe
                  li x14, 0x80000000
                  li x15, 0x0
                  li x17, 0xa1060759
                  li x18, 0xc867a6da
                  li x19, 0xf4874c20
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0xf9acbcfc
                  li x23, 0xc
                  li x24, 0x411419f7
                  li x25, 0x80000000
                  li x26, 0x0
                  li x27, 0xf4f87ced
                  li x29, 0x0
                  li x30, 0x0
                  li x31, 0x80000000
                  la x16, user_stack_end
main:             li           s6, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           a0, 0x9ae26c19
                  li           s5, 0x80000000
                  li           s8, 0xffffffff
                  li           a2, 0x0
                  li           s0, 0x36fdc3
                  li           s4, 0x80000000
                  li           s1, 0xffffffff
                  li           a1, 0x80000000
                  li           a4, 0xffffffff
                  addi         a0, a1, 171
                  lui          s8, 626141
                  addi         a2, s5, 430
                  nop
                  addi         s4, a1, 1880
                  addi         a2, s6, 870
                  lui          s5, 343179
                  nop
                  auipc        s1, 806967
                  addi         s4, a2, -502
                  addi         s5, s6, -498
                  nop
                  auipc        a4, 116440
                  sub          s1, a1, s1
                  auipc        s1, 486484
                  add          a1, s4, s0
                  auipc        s8, 983314
                  nop
                  auipc        s6, 1018045
                  auipc        a2, 979599
                  auipc        s6, 837043
                  addi         a0, s1, -1992
                  nop
                  auipc        a1, 378542
                  auipc        a1, 413604
                  add          s1, s6, s0
                  auipc        s0, 85274
                  sub          a0, s0, a0 #end riscv_int_numeric_corner_stream_12
                  li           s6, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           t5, 0x80000000
                  li           a3, 0xffffffff
                  li           a4, 0x0
                  li           t2, 0x80000000
                  li           t4, 0x6bc10673
                  li           sp, 0xf9a74ecd
                  li           s1, 0x80000000
                  li           s5, 0xffffffff
                  li           tp, 0x0
                  auipc        sp, 121589
                  addi         t5, tp, -287
                  addi         a4, a3, -26
                  lui          s6, 223537
                  lui          s6, 714507
                  sub          t4, a4, t5
                  addi         a4, t5, -1242
                  auipc        t2, 9731
                  nop
                  auipc        s5, 276638
                  addi         s5, tp, -1938
                  sub          s6, s6, s6
                  sub          s1, t5, s1
                  auipc        a3, 299014
                  nop
                  lui          a3, 452017
                  sub          sp, s6, t5
                  add          sp, a3, s6
                  auipc        a3, 852845
                  auipc        sp, 590489
                  add          a4, s5, s5
                  add          t4, a4, sp
                  add          t2, s1, a3
                  auipc        s6, 294100
                  auipc        a4, 834677
                  lui          a4, 39512
                  addi         t4, t5, -1381 #end riscv_int_numeric_corner_stream_6
                  li           sp, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           s10, 0x0
                  li           t4, 0xffffffff
                  li           a1, 0x80000000
                  li           s4, 0x80000000
                  li           t6, 0x80000000
                  li           a2, 0xffffffff
                  li           s9, 0x0
                  li           s5, 0xffffffff
                  li           t5, 0x80000000
                  sub          t5, t5, sp
                  auipc        t5, 641586
                  add          a2, s9, s10
                  nop
                  lui          a1, 668804
                  nop
                  lui          a1, 73146
                  add          t6, s9, sp
                  addi         s9, s10, 1202
                  add          t4, s9, s9
                  nop
                  add          t5, t5, s4
                  sub          sp, a1, t6
                  lui          t5, 1048573
                  lui          t4, 341806
                  lui          t6, 354594
                  nop
                  nop
                  sub          s4, s10, s10
                  sub          a2, s10, t4
                  add          s4, a1, t6
                  auipc        a2, 443960
                  auipc        t5, 87627
                  add          s9, s5, s9
                  add          s10, s5, t4
                  sub          a1, s4, a1 #end riscv_int_numeric_corner_stream_11
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           a2, 0x5726a174
                  li           a7, 0x0
                  li           ra, 0xc714342f
                  li           t2, 0x0
                  li           s6, 0xffffffff
                  li           gp, 0x80000000
                  li           s9, 0xffffffff
                  li           s1, 0x7616fe32
                  li           t5, 0x80000000
                  add          t5, gp, gp
                  lui          s1, 905720
                  nop
                  addi         gp, gp, 706
                  add          ra, a7, t2
                  lui          s6, 830179
                  sub          a7, a0, s9
                  auipc        a0, 118581
                  nop
                  auipc        t5, 892061
                  addi         s1, a7, 1000
                  lui          s9, 86446
                  nop
                  auipc        s9, 1046307
                  lui          a2, 217811
                  lui          a2, 812298
                  addi         a0, t5, 1801
                  nop
                  nop
                  lui          a2, 903093
                  sub          ra, ra, a0
                  sub          ra, t2, s1
                  add          a7, a2, s9
                  auipc        t2, 842172
                  addi         gp, a0, 1703
                  sub          s6, a2, gp
                  addi         t5, s9, -1367
                  add          a0, a7, s1
                  add          s1, a2, ra #end riscv_int_numeric_corner_stream_3
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           a4, 0x892ecb10
                  li           s3, 0x1a2afc26
                  li           t0, 0x80000000
                  li           a2, 0x0
                  li           s2, 0x685fe446
                  li           s7, 0xc12c2dc8
                  li           s5, 0x80000000
                  li           a1, 0xffffffff
                  li           s6, 0xffffffff
                  addi         a0, t0, 725
                  add          a4, s7, a0
                  nop
                  addi         s3, a1, 617
                  auipc        a4, 395406
                  addi         s5, s7, -183
                  lui          s6, 709215
                  addi         a2, t0, -1548
                  add          t0, s6, a4
                  addi         s7, a4, 581
                  lui          a4, 737368
                  lui          s3, 499106
                  add          a4, a2, s2
                  addi         t0, s2, -1466
                  auipc        t0, 337420
                  add          a0, a0, s5
                  nop
                  addi         a1, a0, 165
                  auipc        a2, 725870
                  addi         t0, a1, 1588 #end riscv_int_numeric_corner_stream_19
                  li           a2, 0x51ebff84 #start riscv_int_numeric_corner_stream_5
                  li           t4, 0x80000000
                  li           tp, 0x6e03b1e9
                  li           s2, 0x72a6376
                  li           a1, 0xab1a5d4a
                  li           s9, 0x80000000
                  li           t0, 0x0
                  li           a0, 0x0
                  li           s0, 0x14270e6b
                  li           t6, 0x5fcbc6d4
                  addi         t0, a2, 1982
                  addi         a0, a1, -36
                  auipc        t4, 270065
                  nop
                  nop
                  addi         s0, s2, -707
                  add          a1, s0, a2
                  nop
                  auipc        s0, 916450
                  addi         t0, a2, 856
                  add          a0, tp, s0
                  sub          a2, a1, a1
                  auipc        t4, 487492
                  nop
                  sub          t4, a1, t4
                  addi         a1, a2, -1226
                  nop
                  auipc        s0, 746319
                  addi         a0, s2, -1748 #end riscv_int_numeric_corner_stream_5
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           a7, 0x80000000
                  li           s0, 0x80000000
                  li           s7, 0x80000000
                  li           s2, 0x0
                  li           a3, 0xffffffff
                  li           s5, 0x0
                  li           t6, 0x0
                  li           a1, 0x73459575
                  li           t4, 0x0
                  sub          s2, s2, sp
                  sub          s7, s7, s5
                  sub          sp, s7, s7
                  addi         sp, a1, -616
                  sub          a3, sp, s7
                  auipc        a3, 464894
                  lui          sp, 375344
                  lui          a3, 626013
                  addi         a1, a1, 130
                  addi         s0, a7, -1915
                  lui          t6, 776078
                  sub          a7, s5, sp
                  auipc        s2, 451695
                  add          s2, a1, s2
                  auipc        t6, 36573
                  nop
                  nop
                  nop
                  lui          s0, 62670
                  addi         a3, t4, -559
                  add          a7, s7, s5
                  sub          sp, s7, a3
                  addi         t6, a7, 2011
                  auipc        t6, 630632
                  lui          a3, 442480
                  sub          a1, s0, s0
                  sub          s2, s7, a1 #end riscv_int_numeric_corner_stream_15
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           sp, 0x5ddefe5d
                  li           s3, 0x80000000
                  li           s9, 0x80000000
                  li           gp, 0x0
                  li           s11, 0x80000000
                  li           t1, 0xffffffff
                  li           t0, 0x80000000
                  li           t4, 0x0
                  li           s6, 0xfdb45473
                  lui          t1, 78227
                  add          sp, s3, t0
                  nop
                  auipc        s9, 385611
                  auipc        s11, 794183
                  auipc        s11, 894701
                  addi         ra, gp, 355
                  addi         sp, s6, -1579
                  addi         t4, s9, 705
                  sub          s3, t1, t0
                  auipc        s9, 401423
                  auipc        gp, 531078
                  lui          sp, 31200
                  add          s9, t1, s6
                  nop
                  add          s9, s3, gp
                  add          s9, gp, gp
                  add          sp, sp, sp #end riscv_int_numeric_corner_stream_13
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           t1, 0xffffffff
                  li           gp, 0x80000000
                  li           s5, 0x0
                  li           t0, 0xffffffff
                  li           t4, 0x80000000
                  li           sp, 0x0
                  li           s6, 0xffffffff
                  li           a7, 0x80000000
                  li           s8, 0xffffffff
                  auipc        t1, 432540
                  nop
                  addi         t4, t1, -2030
                  addi         a7, sp, 149
                  nop
                  addi         t0, t1, -706
                  lui          sp, 57560
                  lui          a7, 849051
                  sub          gp, s4, s5
                  add          t4, sp, gp
                  sub          s8, gp, a7
                  lui          s6, 918675
                  add          s5, s4, t0
                  add          s6, sp, t4
                  add          gp, t4, t1
                  auipc        s6, 701998
                  add          s8, gp, gp
                  auipc        s6, 114350
                  add          gp, t0, t4 #end riscv_int_numeric_corner_stream_0
                  slli         a2, s4, 16
                  slt          t0, a6, s2
                  xori         a0, t3, -1450
                  add          sp, a6, a5
                  slti         s5, s1, 214
                  sltu         s1, s10, t0
                  ori          s4, a7, 1571
                  or           ra, s5, t6
                  sra          s4, ra, a2
                  lui          zero, 671820
                  slti         s0, s0, -1416
                  sra          sp, tp, a5
                  ori          a1, s8, -193
                  slt          s7, s7, s9
                  srai         s0, zero, 29
                  sltiu        s5, a2, -997
                  sltiu        s1, s9, -1710
                  and          a2, a3, t5
                  andi         gp, t6, -1375
                  nop
                  ori          s4, t2, 832
                  sltiu        s4, a6, -653
                  srli         t2, a7, 30
                  sra          tp, s9, a6
                  or           ra, s7, sp
                  addi         ra, s7, 1780
                  or           t2, s7, a0
                  srli         a1, a1, 26
                  nop
                  slti         s2, s0, 574
                  addi         t5, sp, -42
                  and          t5, s8, t3
                  srli         a4, t0, 26
                  xori         s1, s7, 1702
                  and          s7, s2, tp
                  auipc        a1, 795867
                  auipc        a2, 820304
                  ori          gp, a1, 1488
                  slli         s10, a4, 11
                  and          s4, a7, s11
                  and          sp, t4, s7
                  andi         s2, s10, -1125
                  nop
                  srli         s2, s5, 3
                  slli         a7, t0, 25
                  sltiu        s7, sp, -616
                  sra          t1, s9, t1
                  addi         s4, a3, -419
                  add          s2, s6, s9
                  and          t5, a2, t5
                  slli         s10, a2, 7
                  ori          s10, zero, 1958
                  slli         a4, s5, 11
                  lui          ra, 932845
                  sll          s2, t6, s8
                  srli         a1, s7, 21
                  ori          s3, s8, 1872
                  srli         s7, a7, 24
                  lui          zero, 597295
                  sub          a4, a5, a5
                  and          s9, t1, a0
                  srai         s2, s1, 13
                  and          s4, t6, t3
                  xor          s2, a6, tp
                  lui          a0, 116458
                  or           s6, tp, a7
                  and          s0, t3, s8
                  xori         a1, s5, -1453
                  sra          s9, s9, a7
                  auipc        t6, 679693
                  and          t6, s11, s9
                  srai         t2, t4, 22
                  xor          s7, a0, t0
                  lui          a7, 468507
                  sll          zero, a0, ra
                  slt          a7, s7, s3
                  lui          s0, 909050
                  auipc        s11, 129838
                  slli         a4, a3, 6
                  srai         a3, s6, 25
                  xor          s7, a1, a1
                  sltu         s3, t3, s2
                  xori         t6, a5, 102
                  slti         s5, s5, -389
                  sltu         s0, t6, s5
                  sltiu        t2, t5, -1158
                  sltu         tp, a2, a0
                  srli         s7, t2, 20
                  addi         a3, a5, 1344
                  slli         t0, s4, 15
                  srai         s1, tp, 3
                  sra          s1, sp, t4
                  srli         s0, t3, 10
                  slli         s0, tp, 10
                  sll          s9, s8, sp
                  ori          s2, s7, 642
                  slt          s2, a3, t5
                  xori         a0, t0, -197
                  sll          a3, s6, s1
                  or           s3, s2, a1
                  srli         t6, t5, 2
                  xor          t2, s9, t6
                  slti         s7, a5, -132
                  nop
                  nop
                  sltiu        tp, ra, -1334
                  auipc        a3, 900896
                  srl          s4, t5, a2
                  srai         s3, s7, 3
                  andi         s6, a7, 914
                  slt          tp, s7, s4
                  slti         t0, a2, 1655
                  sra          s4, t3, t6
                  slli         s3, a5, 19
                  sltiu        s3, t5, 1747
                  add          sp, t3, t2
                  auipc        s10, 952224
                  auipc        s10, 649869
                  or           t1, s1, s6
                  srl          s11, a6, a7
                  sltu         a0, s2, a4
                  lui          t4, 428324
                  addi         s6, gp, -1903
                  sra          ra, a5, ra
                  addi         a3, tp, -2010
                  xor          a4, a0, s4
                  sltu         s0, s0, t2
                  sub          s2, a2, sp
                  sltiu        t2, s11, -432
                  sltu         s0, s2, a4
                  sub          a4, a7, s6
                  sll          ra, t4, a4
                  andi         a0, s11, -1149
                  nop
                  xor          tp, a2, s10
                  or           s11, a6, a0
                  sltu         tp, a6, t6
                  xor          s10, s2, a4
                  sltu         zero, t2, s5
                  addi         a4, s1, -1131
                  nop
                  slt          a7, a4, s1
                  sltiu        s6, zero, 1839
                  auipc        a7, 227103
                  xor          s7, s5, ra
                  auipc        s5, 296674
                  slt          s1, gp, t2
                  srai         sp, s0, 18
                  or           s1, t0, s5
                  lui          t5, 560537
                  srl          t5, t0, a3
                  slti         s5, s3, -1630
                  sll          s9, t3, s3
                  slt          s9, t0, a3
                  srl          t2, ra, s3
                  sra          s6, s3, s10
                  sltiu        a7, t6, 1765
                  lui          zero, 150915
                  ori          t2, s9, 270
                  andi         t5, s5, -1837
                  and          s4, a6, ra
                  auipc        t0, 510920
                  xori         s3, s5, 616
                  slt          s11, ra, t1
                  ori          zero, t5, 557
                  sub          a1, a2, a3
                  ori          s9, zero, -79
                  sltiu        zero, a3, -1071
                  sltu         s6, s8, a5
                  lui          a7, 580905
                  or           gp, s0, zero
                  or           sp, a4, ra
                  xor          t4, tp, t0
                  srl          s1, s2, s10
                  addi         a2, tp, 846
                  sra          s10, s8, s1
                  ori          a4, a1, -843
                  srai         a2, a0, 14
                  sll          s4, a7, s9
                  srai         a0, tp, 24
                  sra          t0, tp, t5
                  add          s8, s4, s5
                  xori         zero, s9, 1242
                  slt          gp, s2, a0
                  add          s1, s11, a0
                  xori         s10, t0, 1589
                  sub          t1, zero, a7
                  srl          s11, a2, t5
                  sra          s11, t1, a0
                  sltu         s1, a0, gp
                  srli         sp, t6, 5
                  sltu         s11, tp, a3
                  or           a7, s8, a0
                  sub          a7, a6, gp
                  lui          s8, 930619
                  xor          s1, t1, s1
                  auipc        sp, 343330
                  or           s5, s6, t4
                  xor          a3, t5, zero
                  xori         s1, t0, -466
                  add          a2, a2, s6
                  andi         t2, t3, -873
                  andi         s8, zero, -188
                  slt          s2, a2, a4
                  sltu         t4, a2, s4
                  srai         s4, t3, 19
                  and          t0, gp, a0
                  sub          a2, t0, a0
                  andi         a2, a6, -453
                  xori         sp, t6, 991
                  add          ra, t5, s3
                  xori         a0, s1, -1739
                  and          t5, t1, t4
                  andi         a3, a0, -1989
                  ori          s11, s7, 237
                  slt          t0, a6, t5
                  srli         s5, t1, 19
                  ori          sp, s3, 445
                  or           s0, a5, a7
                  nop
                  auipc        gp, 11053
                  nop
                  sra          s7, a6, s10
                  slt          s1, a4, a5
                  auipc        s1, 624792
                  xori         zero, a1, 1337
                  slt          gp, s3, t5
                  srai         s8, t0, 7
                  srli         s9, tp, 8
                  and          s8, sp, t4
                  srl          a4, tp, t4
                  or           a7, t5, a5
                  andi         s7, s0, -1434
                  sub          t1, t1, s2
                  or           s2, a0, a5
                  srl          s1, a6, sp
                  or           s7, t1, t3
                  auipc        gp, 800555
                  add          s9, s3, a0
                  and          tp, t5, a0
                  sra          s7, a0, s11
                  xori         a7, a5, -1666
                  lui          a4, 575783
                  andi         s7, a0, 289
                  sra          a0, sp, sp
                  add          sp, a3, a0
                  add          a4, s0, s9
                  sltiu        sp, t0, -887
                  slt          s5, t6, t6
                  xori         s2, t4, 811
                  nop
                  sltiu        s6, sp, -1557
                  xori         t0, s7, 933
                  sll          s7, a6, t5
                  addi         s2, a1, 1470
                  sub          t5, s1, t0
                  sltiu        s11, a4, -1128
                  add          t5, gp, s3
                  add          a1, s2, t3
                  srli         tp, a4, 8
                  sltu         s7, a2, a3
                  sltu         s0, s2, s9
                  slli         zero, tp, 26
                  lui          a3, 611172
                  sltiu        t2, s10, 583
                  srai         s8, zero, 0
                  auipc        a4, 934651
                  ori          s4, s10, -347
                  and          s1, a6, a5
                  lui          t4, 625034
                  xori         s5, s10, -214
                  slt          ra, t6, tp
                  sll          s7, a5, s11
                  add          s9, t2, s0
                  sltiu        sp, a1, 2028
                  sltiu        s2, s6, 781
                  andi         tp, a5, 1067
                  or           gp, s3, tp
                  slli         a7, t2, 23
                  sub          gp, s2, t5
                  srli         s11, t5, 1
                  sub          t0, s10, s0
                  slti         t1, ra, 607
                  sltiu        tp, t6, 1977
                  nop
                  srl          gp, a5, t1
                  and          s8, s6, s2
                  slti         a2, a5, 1948
                  and          s6, tp, s7
                  srai         ra, s1, 27
                  auipc        ra, 375962
                  nop
                  nop
                  sra          tp, gp, s8
                  srl          a0, a4, a5
                  sltiu        s7, a3, -1505
                  xor          s11, a6, t0
                  or           s7, gp, a4
                  sll          ra, t5, s2
                  xori         t5, s2, 110
                  srai         ra, a1, 19
                  sltiu        t0, a2, -1067
                  srli         s1, s0, 28
                  xori         t6, s7, 1936
                  auipc        a1, 538151
                  nop
                  sra          t1, s9, gp
                  srl          t1, a7, a6
                  slt          s7, s5, a5
                  lui          zero, 90900
                  or           t4, a4, ra
                  add          s8, t0, a0
                  addi         s0, t5, 216
                  sub          s8, a3, s8
                  xor          a4, s10, s4
                  srli         s3, a4, 21
                  srl          ra, sp, a2
                  nop
                  addi         s9, t6, 242
                  srli         s8, ra, 26
                  auipc        t1, 611857
                  slti         t2, a3, -898
                  sltiu        t0, sp, -1884
                  lui          t1, 135182
                  xori         t2, zero, -1769
                  slt          s1, t2, s8
                  slli         a7, s5, 23
                  and          a3, s1, sp
                  auipc        a3, 563338
                  slli         tp, s3, 9
                  auipc        s5, 710715
                  slt          a7, sp, s4
                  nop
                  srli         t4, ra, 2
                  srl          t1, t1, a2
                  and          a3, s5, s1
                  add          s6, s0, a6
                  sltu         sp, s8, s0
                  srli         a3, s1, 31
                  slli         t1, a2, 26
                  sra          s3, t6, s1
                  slli         t0, s11, 9
                  andi         s8, a2, -1976
                  srl          a7, a5, a1
                  slt          s4, s5, ra
                  sltiu        ra, s9, -409
                  slt          s10, a2, tp
                  auipc        s8, 37463
                  sltu         t2, s10, t3
                  lui          zero, 220286
                  slti         s11, a2, -302
                  sub          s10, s9, gp
                  and          t2, t4, a1
                  addi         t0, s10, -1109
                  auipc        sp, 720392
                  ori          a3, t5, 1606
                  sra          tp, s6, s3
                  nop
                  and          s8, s8, s8
                  srli         s0, a7, 17
                  srl          s0, s5, sp
                  srli         a1, a7, 3
                  addi         s7, a1, 843
                  addi         a7, gp, 106
                  sra          s6, s2, gp
                  nop
                  addi         t2, s0, 1223
                  srli         s3, t6, 18
                  sltiu        zero, a7, -1856
                  andi         a2, a1, 1516
                  and          t2, a4, sp
                  lui          a7, 547769
                  srli         a2, tp, 23
                  srl          t2, a3, a4
                  sltu         s3, s11, t3
                  xor          zero, s11, t6
                  sra          s7, gp, s10
                  xori         s1, s3, -522
                  addi         s0, s9, -1569
                  add          s3, s10, s9
                  auipc        t4, 429305
                  slli         tp, s0, 16
                  add          tp, t6, ra
                  auipc        ra, 230416
                  andi         tp, t4, -415
                  sll          s1, a2, s10
                  xor          s11, s9, t5
                  xor          a0, s5, s3
                  addi         a1, tp, -677
                  sra          ra, s10, s8
                  slli         a7, s8, 23
                  slt          s2, s9, a5
                  sub          s10, t0, s4
                  srai         s5, s1, 19
                  srai         a7, a4, 21
                  andi         t4, a7, -798
                  and          s5, a4, t1
                  srli         s9, t5, 7
                  ori          s11, gp, -1950
                  srl          t6, s11, zero
                  ori          s1, s1, -613
                  lui          s6, 615543
                  sub          s9, a7, t3
                  andi         s9, a4, -1440
                  sltiu        ra, a4, -614
                  slli         a1, t5, 15
                  andi         a1, a7, 1073
                  xor          s4, a7, t3
                  sra          t0, s6, t4
                  srai         s4, t2, 31
                  auipc        s9, 15986
                  sub          s11, a0, a1
                  slli         s3, t3, 7
                  andi         s9, t3, 1163
                  andi         t0, s9, 510
                  nop
                  auipc        sp, 452067
                  nop
                  auipc        s5, 745905
                  xor          s5, zero, zero
                  sltiu        gp, t5, -1183
                  sll          a2, t1, a3
                  or           a7, t4, zero
                  xori         s9, tp, -2015
                  sll          a7, ra, a2
                  or           s6, t2, s5
                  sll          a1, t6, s0
                  srli         t4, t4, 27
                  or           t0, a6, s5
                  sltu         s7, a2, ra
                  srli         s2, s11, 5
                  and          ra, a6, s10
                  sltiu        s3, s0, 102
                  slli         s6, a3, 9
                  sll          a1, sp, a1
                  auipc        s8, 741983
                  sll          t6, a5, s1
                  sra          s7, t2, a3
                  sub          t6, ra, t1
                  add          s3, zero, s5
                  andi         a1, gp, -1582
                  add          tp, tp, s2
                  slt          s9, tp, t5
                  nop
                  slti         t2, sp, -1054
                  sll          a7, s4, zero
                  slli         s11, t0, 6
                  srli         s6, s6, 24
                  andi         s5, s4, -1128
                  srai         gp, a0, 18
                  xor          zero, t1, a7
                  slli         a0, s1, 21
                  srli         ra, a5, 4
                  slt          s11, tp, sp
                  sra          t6, s4, gp
                  or           ra, a4, t0
                  sub          zero, ra, t6
                  xori         s6, s7, -845
                  auipc        s4, 147706
                  andi         s3, s0, 1010
                  sltu         a3, t4, gp
                  addi         s7, sp, 1403
                  auipc        t5, 291730
                  lui          t4, 914795
                  andi         s11, t5, 1699
                  lui          tp, 364876
                  sltiu        s7, a3, 1379
                  sub          a4, s4, a5
                  sltiu        t4, a3, -274
                  addi         s0, s1, -1648
                  xor          t1, t1, s8
                  add          s1, a7, t1
                  slli         t2, s8, 0
                  sub          s1, ra, t1
                  ori          s11, t5, 1424
                  nop
                  slli         t1, tp, 11
                  slti         t0, s2, 1563
                  sll          t0, s10, t1
                  srai         t6, t6, 18
                  sra          ra, s0, a1
                  add          s8, a4, s7
                  xori         a4, s7, 1352
                  xori         s9, s2, 755
                  srl          s1, ra, a7
                  nop
                  srli         t4, tp, 12
                  slli         s6, sp, 4
                  sltu         s7, t3, s8
                  nop
                  and          a4, t5, a4
                  slli         gp, a2, 31
                  ori          a3, a3, -1053
                  sub          t4, zero, a5
                  slli         t5, tp, 4
                  sra          a1, a5, s0
                  addi         s6, s5, 1413
                  auipc        a3, 700446
                  andi         a2, s10, 664
                  andi         s11, t0, -48
                  andi         s2, a3, 359
                  xori         a0, a6, -1071
                  sltiu        s11, s2, 1075
                  nop
                  ori          sp, s10, -388
                  auipc        a1, 617215
                  slti         s6, s1, -1266
                  sll          sp, s9, t3
                  sll          t0, s1, s3
                  xor          s6, t5, s5
                  andi         s11, sp, -1895
                  auipc        s4, 315463
                  auipc        t2, 752303
                  slli         tp, a6, 3
                  and          s11, s6, s6
                  andi         t6, a7, 253
                  slt          a3, s2, s7
                  and          a0, tp, a1
                  auipc        a7, 323976
                  slti         zero, a3, 266
                  add          ra, s4, a2
                  nop
                  or           s4, t6, t1
                  addi         zero, s9, -1527
                  lui          t2, 395601
                  andi         s8, a2, 554
                  andi         t6, a4, -19
                  srl          s9, t2, s1
                  add          a0, ra, s8
                  nop
                  xor          s0, s3, s9
                  lui          s1, 369231
                  srl          a3, a0, s7
                  auipc        s11, 343248
                  slti         t0, gp, -357
                  ori          s8, s7, 853
                  srai         s9, t2, 25
                  lui          s2, 325774
                  slti         a4, s3, -1056
                  slti         a3, ra, 713
                  sll          t6, gp, s4
                  add          a0, a7, a3
                  xor          t5, a2, a1
                  slti         sp, a6, 1573
                  sll          ra, t0, ra
                  nop
                  slli         gp, t5, 4
                  srl          a3, t3, a5
                  add          a7, s2, s4
                  auipc        ra, 555341
                  sub          t6, t6, t4
                  lui          a7, 716804
                  or           s5, a6, tp
                  andi         ra, t4, -1030
                  xori         t5, a2, -1285
                  slli         t1, zero, 28
                  ori          a4, s7, -1046
                  srai         t5, a2, 27
                  ori          a4, t1, -54
                  slli         s9, t2, 21
                  srai         tp, t2, 17
                  addi         t4, t0, -754
                  sltu         a4, s8, s0
                  sra          s9, a0, s6
                  add          t0, s11, a5
                  srai         a0, a4, 13
                  ori          t6, ra, 530
                  add          a3, s0, a3
                  xor          s8, t1, t3
                  sra          s5, a5, t2
                  sltu         s0, a6, s1
                  add          s2, s1, s5
                  xori         s4, a4, -950
                  addi         s10, s9, -1139
                  sltu         s3, t3, s1
                  auipc        t6, 279241
                  nop
                  ori          tp, ra, -628
                  add          a0, s6, t2
                  lui          zero, 381980
                  lui          sp, 375417
                  auipc        t4, 331526
                  addi         s5, t5, 1428
                  slli         a0, s2, 5
                  srl          zero, s3, sp
                  slt          tp, s2, s4
                  srl          s0, s7, s6
                  or           ra, s2, t0
                  or           t6, a3, s7
                  sub          s3, t1, s4
                  lui          s9, 230058
                  auipc        gp, 1035098
                  add          a0, s7, a7
                  sltiu        sp, s8, -1828
                  srai         s9, t6, 25
                  sll          s10, a7, a6
                  srai         t6, t1, 14
                  sub          s0, s3, s2
                  srl          ra, t6, s1
                  or           s5, zero, a2
                  ori          t1, a7, -910
                  sltu         s8, t6, a1
                  sra          a1, a3, s8
                  lui          sp, 291738
                  addi         a2, s9, -824
                  srl          s10, a7, t6
                  sra          s3, zero, t2
                  sltiu        a4, tp, -1574
                  or           s2, s5, zero
                  addi         t4, tp, 55
                  sll          a4, a5, s8
                  srli         s11, s10, 6
                  andi         t1, s11, -121
                  addi         t6, t4, 322
                  ori          ra, a3, 1748
                  sra          a1, t0, t2
                  add          s1, s1, t1
                  sltiu        a3, s5, -607
                  xori         gp, a3, 578
                  xori         zero, t4, -1499
                  srl          a1, s10, s7
                  xor          a0, t2, s9
                  and          s5, t5, s6
                  slti         a7, t3, 1178
                  addi         s2, zero, 479
                  slt          s0, a3, s1
                  slt          s6, zero, t2
                  add          s11, a5, a0
                  nop
                  add          ra, t6, t2
                  slli         s9, t1, 30
                  slti         t6, t3, -1978
                  sltu         a1, s8, t4
                  addi         a4, s6, -1564
                  srai         s0, ra, 14
                  sltu         s11, a5, a3
                  srli         a2, a1, 27
                  ori          a7, t0, 1283
                  sra          s6, gp, tp
                  andi         a2, a4, 57
                  addi         a2, s3, 665
                  xori         a7, t0, 1791
                  slli         s0, s3, 9
                  andi         s6, t4, -1519
                  nop
                  slti         s10, a7, -1165
                  sub          a3, s11, a0
                  xor          t2, gp, a6
                  slti         s9, a7, -949
                  sub          s8, s9, s3
                  sltiu        s5, s2, 1907
                  xori         s8, t0, -1374
                  sra          s8, t0, t0
                  sltiu        a1, t4, 40
                  srli         s4, t5, 1
                  sra          s7, zero, a4
                  andi         ra, t5, 170
                  slti         zero, t5, 1127
                  srli         a3, gp, 20
                  srai         t2, a5, 16
                  sub          a0, s8, tp
                  and          gp, s0, a0
                  add          s9, a3, s0
                  xor          s0, s1, gp
                  slt          s3, s0, s11
                  slti         s5, a1, -1241
                  srl          s5, t3, zero
                  xori         a7, tp, 1613
                  sra          s7, t0, a3
                  slt          a4, s8, gp
                  andi         tp, t1, -56
                  lui          a3, 788641
                  auipc        a3, 508256
                  nop
                  or           t5, tp, s7
                  and          s7, a3, ra
                  sub          s10, s3, a5
                  srli         s4, s6, 21
                  slti         s0, a6, 1758
                  nop
                  auipc        a2, 411108
                  addi         t2, t2, 1546
                  srli         t2, s2, 23
                  add          t1, ra, a0
                  sltu         t1, a7, s2
                  sra          s0, t1, t1
                  xori         t5, s9, -1895
                  sll          a7, s10, s3
                  andi         s10, tp, 990
                  add          s0, t4, a4
                  srl          s8, s7, a4
                  auipc        s9, 224661
                  xor          t4, s11, a0
                  or           s5, a2, a1
                  lui          t0, 402145
                  slli         s11, s10, 18
                  sra          s11, s4, s7
                  nop
                  srli         s6, s9, 25
                  or           t6, a6, s5
                  andi         ra, t4, -1250
                  xor          gp, a2, ra
                  lui          t6, 186244
                  srli         zero, a5, 23
                  and          s9, a2, t6
                  xor          ra, a5, t2
                  sll          a4, t3, gp
                  xor          a3, t6, s9
                  ori          s9, s10, 156
                  auipc        ra, 741558
                  srl          t5, t0, s5
                  sltu         gp, t6, a7
                  or           s1, a2, a7
                  sltu         zero, s6, s8
                  andi         s7, s5, 784
                  sltiu        t4, a4, -922
                  addi         gp, a5, 248
                  srl          s11, t1, a2
                  sltiu        t1, a3, -898
                  add          gp, a0, a2
                  sra          t2, s11, a5
                  sub          a2, a0, s2
                  andi         s9, s2, -930
                  add          a2, zero, t0
                  sub          tp, s8, s5
                  sll          zero, s1, tp
                  sltu         s10, s0, t1
                  srl          sp, s0, t4
                  or           s10, t4, t3
                  or           a1, t1, s7
                  auipc        s10, 851887
                  add          tp, a6, t6
                  or           s10, a3, gp
                  addi         s2, tp, 1495
                  sll          s10, t4, a4
                  slt          s9, t0, a4
                  xori         t6, ra, 1792
                  slli         s7, s6, 5
                  sll          a7, s11, s5
                  li           s11, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           s4, 0x80000000
                  li           t1, 0x1fe692f
                  li           a0, 0xffffffff
                  li           s2, 0xffffffff
                  li           t2, 0x80000000
                  li           gp, 0xffffffff
                  li           t5, 0x80000000
                  li           a3, 0xffffffff
                  li           t6, 0x80000000
                  lui          a3, 894956
                  auipc        s4, 758591
                  auipc        t1, 541200
                  lui          a0, 421243
                  auipc        s2, 1035643
                  sub          s2, t5, s4
                  sub          s11, s4, gp
                  add          t5, s11, a0
                  addi         a0, s4, -1677
                  nop
                  nop
                  sub          s11, s4, t1
                  addi         s11, t1, 915
                  nop
                  sub          a3, a0, s2
                  addi         gp, a3, 914
                  auipc        gp, 948701
                  sub          a0, t5, t1
                  auipc        gp, 188378
                  lui          s2, 711870
                  sub          a0, a0, s4
                  nop
                  addi         s11, t5, -1787
                  addi         a3, a3, -1690
                  lui          t6, 86886
                  add          gp, t2, s11
                  lui          a3, 669414
                  add          s4, a0, a0
                  auipc        t6, 428173
                  auipc        t5, 739776 #end riscv_int_numeric_corner_stream_8
                  srl          s5, a3, s4
                  auipc        ra, 854058
                  slt          a4, s8, s0
                  srl          zero, sp, a6
                  sra          zero, s6, t5
                  srl          a2, a2, s11
                  srl          sp, a1, zero
                  addi         t5, a6, -586
                  srl          s6, t5, t0
                  sltu         s0, s5, a2
                  add          s2, zero, s1
                  xor          t6, s2, a4
                  andi         gp, t5, -397
                  slt          s7, a7, s10
                  nop
                  slti         tp, s3, -789
                  sll          a7, s6, s9
                  sub          a7, s5, s2
                  add          t5, a4, t0
                  slti         s0, s2, -1319
                  srl          a1, t3, s6
                  slt          a4, s2, t4
                  auipc        sp, 589432
                  and          s9, a1, t3
                  sll          t6, ra, s2
                  add          t0, s9, s0
                  srli         s8, s7, 4
                  srli         s5, zero, 25
                  srli         t0, a1, 15
                  sltiu        t1, a7, 1245
                  or           a2, s7, t6
                  srai         sp, s11, 31
                  srli         zero, a4, 18
                  sltiu        s11, ra, 716
                  ori          a1, s10, 827
                  slti         s10, t0, 1854
                  sra          zero, s7, s4
                  slli         t2, a4, 31
                  xor          tp, t2, tp
                  sltu         a0, t5, tp
                  srli         s0, s7, 22
                  auipc        a1, 803676
                  add          t0, a0, ra
                  srl          s7, a2, zero
                  and          s2, tp, s9
                  or           zero, a5, a5
                  and          t0, zero, s6
                  srl          t0, s2, a2
                  sub          s1, s3, s8
                  addi         a4, t3, -335
                  slt          s4, s10, a2
                  slti         s3, zero, 1690
                  andi         s5, s2, 1796
                  add          ra, tp, t3
                  sra          a4, t1, s11
                  and          a2, tp, ra
                  srai         s1, sp, 11
                  sub          s10, s7, s0
                  sltiu        t2, s0, -1709
                  slt          s9, s11, t4
                  lui          zero, 358898
                  slti         t4, gp, 115
                  srai         s7, s7, 13
                  or           s3, s0, a0
                  xor          s6, t4, s1
                  slti         a4, s8, -1824
                  slti         s7, s7, -1200
                  srli         s7, a5, 22
                  xor          s2, a3, a3
                  nop
                  sltu         t4, tp, t0
                  nop
                  and          a3, a5, s4
                  or           s9, s4, s8
                  add          t4, s2, gp
                  slt          s3, s1, s11
                  ori          t2, s10, 224
                  slti         tp, s8, 1597
                  slt          ra, t5, t6
                  sra          s8, a5, s6
                  sltu         a1, t0, t1
                  or           a0, s7, a6
                  add          gp, s5, a3
                  xor          t1, a6, t5
                  sra          s6, s9, ra
                  add          a3, s6, t3
                  slt          gp, s9, ra
                  nop
                  srai         s0, s2, 14
                  or           sp, s8, a6
                  and          a2, s8, s0
                  srli         s3, t4, 11
                  srai         s6, s3, 11
                  slt          s3, t5, s11
                  add          t0, s3, a5
                  sub          t5, a3, s0
                  sra          t6, sp, sp
                  sra          gp, a1, a3
                  or           s3, t5, s2
                  sub          s6, a7, s2
                  and          tp, s3, ra
                  slli         a2, s6, 21
                  nop
                  slt          s8, zero, zero
                  addi         a2, s8, -1620
                  and          s8, a3, s9
                  xor          t0, s8, t1
                  xor          s9, s2, s3
                  slt          s8, sp, a0
                  and          a7, s6, tp
                  slti         s9, s0, -962
                  slli         s8, t4, 4
                  sltu         s2, a0, s2
                  sub          a1, zero, s5
                  or           t2, t2, a2
                  sltiu        gp, s10, -390
                  nop
                  sra          zero, gp, s6
                  andi         s5, sp, -58
                  srli         gp, s11, 31
                  lui          t1, 152490
                  sll          s0, t0, t5
                  srai         a2, s11, 16
                  or           t1, a7, a7
                  lui          s3, 568042
                  slt          ra, a2, s3
                  or           s2, s6, s2
                  slt          sp, t4, s11
                  sra          s0, a6, s6
                  sub          s2, t1, s9
                  auipc        s1, 108926
                  sltiu        s9, a3, -428
                  nop
                  lui          t0, 715544
                  andi         s7, a7, -556
                  sltiu        sp, s0, -68
                  ori          a0, s2, -1342
                  auipc        t4, 144676
                  slli         t2, tp, 9
                  xor          t1, sp, s11
                  nop
                  add          s8, s8, s4
                  auipc        a3, 5042
                  auipc        a3, 578862
                  slli         s4, a1, 5
                  xori         s11, zero, -213
                  srai         a0, ra, 24
                  auipc        s0, 1023073
                  xor          a1, s9, s6
                  sra          s10, t6, t1
                  slt          s4, zero, s8
                  srl          t4, t6, s3
                  xor          s5, s7, s8
                  add          tp, s8, zero
                  andi         a0, s10, -54
                  xor          a4, s5, zero
                  sltiu        s10, a7, 444
                  sub          s2, sp, s11
                  slli         t0, t1, 13
                  xor          zero, ra, s10
                  srl          s0, t0, s5
                  srai         tp, s10, 6
                  srl          t5, a4, s5
                  sltiu        s3, s4, 38
                  nop
                  slti         s8, t1, -1386
                  srl          a1, s6, tp
                  nop
                  sll          s9, s1, s2
                  slli         s4, t0, 29
                  andi         s11, sp, -175
                  addi         a0, s0, -1357
                  auipc        s8, 472027
                  sltiu        tp, t6, -1615
                  sll          ra, t6, t6
                  lui          s5, 258585
                  and          s9, a5, a3
                  or           t2, s5, a7
                  add          t0, a4, s6
                  srai         tp, ra, 1
                  nop
                  slt          s2, a5, s5
                  slli         s7, a3, 21
                  lui          t4, 694560
                  srli         s7, t4, 22
                  auipc        s8, 934190
                  srli         zero, t3, 31
                  nop
                  lui          sp, 389270
                  ori          s8, a3, 1369
                  slli         s9, t2, 4
                  nop
                  sltu         t0, t6, sp
                  sra          t2, t4, s10
                  srai         s6, s6, 31
                  addi         s7, s9, 447
                  addi         sp, s3, 855
                  slti         s3, s1, -199
                  lui          tp, 376308
                  sub          s6, tp, s3
                  andi         s5, a1, -1237
                  slt          t6, s3, a7
                  auipc        t2, 274401
                  nop
                  slli         a1, s11, 1
                  sra          t2, s6, t4
                  lui          a1, 39716
                  sltu         s7, s3, s2
                  xor          s5, s0, s7
                  ori          s5, tp, 1342
                  sub          s10, a7, sp
                  lui          t0, 128560
                  lui          a7, 953525
                  add          s8, a1, s5
                  auipc        zero, 222680
                  srai         s11, s10, 24
                  sra          tp, zero, sp
                  or           gp, t3, s6
                  and          t2, tp, s5
                  lui          s7, 12842
                  srl          s1, s5, s11
                  srli         s5, a2, 3
                  slti         a2, a5, -2027
                  slti         a3, s10, 1040
                  add          sp, a3, a5
                  andi         a0, zero, 1009
                  ori          s0, s1, 973
                  addi         s4, t4, -32
                  slt          a4, s7, a6
                  add          t1, a5, a7
                  addi         t6, a4, -1115
                  and          t5, a5, ra
                  srli         s4, a3, 4
                  lui          s3, 540465
                  ori          ra, t6, -1378
                  sll          a7, s1, s8
                  srl          sp, a0, s3
                  slti         s10, s8, 653
                  ori          a2, ra, -814
                  ori          s11, s8, 67
                  lui          s8, 609356
                  sra          a3, s0, gp
                  sltiu        a0, t4, -1110
                  auipc        zero, 937614
                  slt          t4, s4, zero
                  ori          t4, s3, 1184
                  sub          t5, s7, t3
                  add          gp, t6, a4
                  addi         t6, a7, -1663
                  slti         a2, t3, -1585
                  sub          zero, a7, s5
                  addi         s4, t5, 1692
                  xor          a0, t5, s10
                  xori         t5, s7, -1680
                  xori         t4, s1, 420
                  addi         s3, a6, 1939
                  add          s7, s8, a4
                  sll          zero, s1, t5
                  sltu         s9, sp, t4
                  sra          a3, t5, s5
                  slti         s10, s1, 1437
                  auipc        t1, 931349
                  sltiu        t5, s9, 332
                  andi         a0, s3, 1264
                  slli         t1, a0, 25
                  slli         t6, gp, 21
                  or           t4, a0, s1
                  sltiu        a2, s8, 1953
                  slt          t4, tp, t5
                  xori         t1, a4, 213
                  srli         a4, t3, 6
                  andi         s3, s10, -1469
                  srl          s1, s9, s1
                  sll          s6, a3, a2
                  lui          s1, 93212
                  sltiu        gp, t3, 898
                  sub          tp, t5, gp
                  nop
                  addi         s4, t4, 1129
                  xori         s8, sp, -301
                  xor          t4, s9, a4
                  auipc        s8, 1022079
                  or           s0, t4, a7
                  srli         s11, zero, 7
                  slt          s5, a0, t2
                  xori         t4, s6, -2041
                  srai         s7, s10, 11
                  li           s11, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           s3, 0xa077d636
                  li           sp, 0x80000000
                  li           t0, 0x0
                  li           s7, 0x80000000
                  li           s10, 0xd76cb051
                  li           a2, 0x9a98726
                  li           t1, 0x0
                  li           a0, 0x3856598c
                  li           s8, 0xffffffff
                  auipc        t0, 777290
                  nop
                  sub          a0, s3, a0
                  addi         a2, t1, 749
                  auipc        a0, 733308
                  lui          a2, 312690
                  nop
                  auipc        t1, 284496
                  lui          s8, 73642
                  addi         s3, s8, -1001
                  addi         s8, sp, -1076
                  auipc        t0, 441052
                  nop
                  nop
                  sub          t1, t1, s7
                  add          a2, t0, t0
                  lui          s11, 711556
                  sub          t1, s11, a0
                  lui          a2, 256797
                  auipc        t1, 1040176
                  nop
                  nop
                  nop
                  auipc        s8, 314945
                  nop
                  lui          s10, 178318 #end riscv_int_numeric_corner_stream_2
                  slti         t6, t1, 2041
                  andi         s11, s3, 468
                  srli         a1, a2, 29
                  add          t4, t4, a2
                  srl          zero, a4, s2
                  srl          s8, s2, a1
                  xori         s9, a5, 1388
                  auipc        a1, 102936
                  add          a0, ra, s11
                  nop
                  slti         sp, zero, 398
                  xor          a3, s8, s10
                  addi         s3, gp, 729
                  ori          a4, s5, 507
                  srai         s8, ra, 13
                  sltu         s0, s5, a5
                  or           s11, t2, s6
                  lui          t1, 522838
                  nop
                  auipc        s10, 351233
                  xori         ra, s1, -610
                  slti         t5, s9, 1455
                  nop
                  xor          s1, s11, a4
                  andi         sp, t6, -38
                  add          s6, s3, t4
                  xor          s9, s3, s8
                  sltu         s8, t1, s7
                  nop
                  sltu         ra, a5, s0
                  sltu         a1, sp, t2
                  xori         s8, s5, -1876
                  srl          sp, a2, a5
                  srli         s8, zero, 1
                  xor          t2, sp, s7
                  addi         a4, s11, 1686
                  sltiu        a1, t2, 630
                  srli         a4, t2, 0
                  xori         s9, t2, -1534
                  lui          s10, 99487
                  slli         t4, s5, 19
                  xor          s1, gp, s7
                  slli         ra, a4, 30
                  nop
                  sll          t2, s7, s10
                  xor          s10, zero, zero
                  or           t6, s2, t3
                  and          s10, sp, t2
                  sra          s1, s7, s4
                  slti         s9, s7, -151
                  lui          s1, 513120
                  sll          s2, sp, s6
                  auipc        a4, 650480
                  sra          s0, t1, t0
                  slt          t5, t4, s7
                  and          s0, a4, ra
                  add          gp, zero, a0
                  and          s10, gp, tp
                  xori         s10, a3, -1855
                  and          sp, a5, s5
                  sra          zero, a5, ra
                  slli         t0, a5, 18
                  srli         s2, s10, 24
                  sub          a7, t1, t6
                  srl          gp, s9, a5
                  add          t1, t6, s5
                  sub          s7, s7, s2
                  andi         a7, a6, 150
                  and          s6, s4, t1
                  or           ra, a1, s3
                  nop
                  srl          a3, s7, t2
                  nop
                  sll          zero, tp, s3
                  nop
                  or           s3, s3, s3
                  xor          sp, t4, a1
                  srai         s9, a0, 0
                  nop
                  slti         t2, s0, -934
                  ori          a1, t6, 1565
                  srli         a2, s2, 10
                  srli         tp, s7, 30
                  sra          t1, s9, tp
                  srai         s6, ra, 13
                  add          s9, s7, s11
                  sltu         gp, a4, s5
                  sltiu        a1, sp, -1809
                  slti         s0, zero, -536
                  sra          a4, s4, t4
                  srli         t1, ra, 20
                  sltu         ra, t6, s5
                  slt          a4, s4, s2
                  xori         t6, s10, 450
                  slt          a0, t3, t6
                  sltiu        sp, t5, -136
                  srli         t4, s8, 5
                  auipc        s11, 355962
                  sll          t0, a4, s8
                  sltiu        s3, zero, 229
                  or           s8, s7, s9
                  srli         sp, a6, 13
                  slti         a0, a2, -1836
                  xori         s3, a6, 886
                  xori         a1, a0, -375
                  sll          a7, ra, t2
                  addi         s1, s8, 1604
                  sltiu        s9, a6, 527
                  auipc        t1, 507018
                  srli         s7, a3, 29
                  ori          ra, a2, -155
                  and          s0, t6, s1
                  srli         a2, a5, 11
                  or           tp, s4, s10
                  srli         t5, a2, 19
                  xori         a7, a0, -1710
                  or           s6, a5, s7
                  sltu         s3, t0, t6
                  sub          s8, a4, t2
                  or           t6, t1, a3
                  xor          sp, a1, gp
                  sltu         s11, sp, s7
                  or           t5, t3, a2
                  sltu         gp, s2, a3
                  slti         gp, a7, 879
                  srli         a1, t1, 7
                  and          a3, s0, zero
                  ori          a3, t3, -653
                  lui          ra, 939879
                  xori         t4, sp, -167
                  or           a4, tp, zero
                  xori         tp, gp, -1011
                  lui          gp, 604581
                  sltu         ra, t4, a5
                  sltu         s11, a4, s6
                  sub          a4, zero, s4
                  sltiu        t0, s8, -1614
                  addi         ra, ra, 1060
                  sltu         a4, a2, s8
                  add          s3, t3, a0
                  lui          s1, 786037
                  xori         s2, a0, 47
                  and          tp, tp, s7
                  nop
                  srli         a4, a7, 24
                  and          s2, t1, s6
                  srl          a1, zero, t4
                  slti         sp, a0, 128
                  slt          a0, s4, s5
                  sltu         gp, a3, a0
                  sltu         t0, gp, sp
                  srl          t5, t5, t0
                  add          ra, s1, s10
                  slti         s8, t1, -559
                  sub          s3, s10, t2
                  or           s11, t0, ra
                  xori         a0, s8, -1629
                  sub          s7, s0, t6
                  sltiu        s7, t2, -980
                  slli         ra, s1, 5
                  srl          gp, s6, a0
                  auipc        s5, 783761
                  sltu         t1, a2, s4
                  add          s11, s1, t4
                  add          t2, t2, t6
                  slt          t0, sp, zero
                  andi         a3, tp, 774
                  addi         s7, s8, 1681
                  srai         gp, t1, 26
                  sll          sp, sp, s3
                  addi         a2, a1, 1298
                  sra          s6, a2, s3
                  slt          s1, a1, t6
                  slti         t2, a4, 1125
                  or           s2, s8, t1
                  sltiu        t0, t4, 1732
                  srai         t4, s8, 28
                  xori         s2, t5, 1402
                  slt          t2, sp, s1
                  slli         a4, s3, 22
                  sltiu        s9, t1, -1974
                  slt          s6, sp, t4
                  lui          s2, 420454
                  xori         a3, a7, 1130
                  or           t2, s6, t5
                  xor          t5, s0, s0
                  slt          s2, s7, t2
                  sll          t0, ra, s1
                  sub          s9, ra, t0
                  srai         s4, t6, 13
                  or           t2, a7, sp
                  andi         a7, t5, 985
                  sra          ra, t0, s6
                  andi         tp, a0, -1074
                  srl          gp, a4, a6
                  srai         a3, tp, 15
                  srl          s4, a5, a4
                  add          s6, zero, zero
                  or           a0, sp, s10
                  srai         t5, s0, 10
                  xor          zero, sp, s1
                  sll          s9, s11, t0
                  add          t6, a0, s10
                  srai         a7, s8, 7
                  add          tp, s9, s9
                  andi         t6, a4, -575
                  xor          s5, t0, s9
                  auipc        tp, 314482
                  addi         a1, s4, 1887
                  srli         s9, t0, 31
                  srli         t5, a7, 30
                  nop
                  slli         s7, sp, 3
                  addi         zero, zero, 1389
                  srai         s2, tp, 16
                  andi         gp, s7, -1369
                  ori          s6, s6, 1489
                  nop
                  addi         t2, s6, 1161
                  addi         s9, tp, 689
                  nop
                  and          a3, t0, s0
                  addi         s7, ra, 542
                  srli         t5, s4, 25
                  auipc        ra, 15292
                  slti         s2, a7, -1815
                  nop
                  slli         gp, tp, 19
                  add          t0, s2, a7
                  ori          s5, s3, 222
                  nop
                  sll          s4, t4, t2
                  sll          ra, a0, s7
                  or           a7, s3, a0
                  slt          t0, s0, s3
                  sub          s2, a6, s6
                  xor          zero, s10, s7
                  andi         s5, tp, 1972
                  sltu         s1, s3, t4
                  auipc        t0, 57422
                  lui          a7, 45455
                  sra          s8, gp, t0
                  or           t6, sp, s0
                  nop
                  lui          zero, 967875
                  xor          s0, a2, a7
                  add          t0, t1, t4
                  sub          a4, s0, s8
                  srl          a1, sp, sp
                  sll          s3, s2, s4
                  slt          s3, gp, tp
                  xor          a4, s11, sp
                  slt          a3, tp, zero
                  xor          ra, a4, a0
                  nop
                  srai         t6, s0, 14
                  srai         zero, gp, 9
                  slli         zero, s10, 0
                  slt          t4, a6, tp
                  auipc        s6, 134135
                  andi         s4, s0, -586
                  xor          s1, t6, a1
                  nop
                  andi         s8, a7, 1332
                  xori         a7, s1, 147
                  addi         s10, s8, 718
                  slli         s7, s6, 6
                  sll          s1, s0, a3
                  sltiu        s9, t3, 483
                  andi         s9, ra, -1551
                  ori          a7, tp, 947
                  or           s10, s7, a1
                  sll          zero, zero, ra
                  addi         t4, t3, 480
                  sltiu        t0, t5, 1768
                  add          sp, s9, a1
                  slti         t6, a4, -2013
                  srl          s9, a5, a1
                  sra          s7, t4, s7
                  slt          t4, a3, t3
                  sra          s0, s2, a6
                  nop
                  sll          t6, gp, s8
                  xori         s2, t3, 1850
                  xor          sp, s1, a6
                  nop
                  ori          s9, s6, 1509
                  sltu         s3, a4, s5
                  srl          tp, s0, zero
                  ori          t2, ra, -1333
                  srli         a0, t6, 22
                  slti         t0, a5, 1657
                  xori         s4, a2, 1509
                  srl          zero, a7, s7
                  add          t0, t0, s8
                  xori         t0, t2, -37
                  sltu         a3, t4, t4
                  slt          a2, ra, t2
                  srl          s1, s6, s2
                  sra          s6, a2, a2
                  srl          t5, a1, s6
                  nop
                  srli         s9, t1, 24
                  and          s1, s11, a0
                  sltiu        s3, sp, -1256
                  slti         s4, s6, 909
                  sll          t0, a4, s5
                  sll          a0, s1, tp
                  xori         a7, s2, -1022
                  and          a7, t4, gp
                  addi         s11, sp, 175
                  sra          s5, t0, a2
                  ori          a2, t2, 1718
                  slli         s9, a7, 5
                  srai         a3, zero, 3
                  andi         s4, a1, -1247
                  sltu         s7, zero, a5
                  srai         s0, t1, 30
                  srl          t1, s9, t0
                  sltu         s4, s4, s4
                  and          s7, zero, t4
                  slti         tp, s7, 1847
                  srli         a0, t4, 26
                  sub          t1, t2, a5
                  lui          s3, 210784
                  sra          s10, a6, s6
                  srli         a0, s10, 2
                  sra          s1, gp, a6
                  sub          s3, t3, s2
                  auipc        s8, 156094
                  or           s1, t3, s1
                  slti         zero, t1, 807
                  andi         t0, t0, -1085
                  or           a4, t3, zero
                  auipc        s6, 780034
                  xori         s4, gp, -281
                  ori          s5, s3, 372
                  andi         s9, s11, 1407
                  slt          s1, s4, s4
                  sub          a1, s10, s2
                  sub          s2, s6, t2
                  add          ra, t5, a6
                  sub          s11, a0, s7
                  slli         t4, a0, 29
                  nop
                  srai         gp, t3, 7
                  slt          t4, s3, a3
                  and          s7, s2, s11
                  sub          s7, t0, t2
                  sra          s4, a7, t5
                  andi         ra, a4, 946
                  slt          a4, s2, t6
                  slti         a7, s5, 774
                  srai         a3, t4, 19
                  slti         s11, a1, 1214
                  lui          a3, 782440
                  sltiu        ra, a2, 808
                  srl          s4, a1, sp
                  add          s5, s0, s4
                  sltu         s4, a2, s4
                  xori         a3, t0, -832
                  or           t0, t2, a2
                  and          t5, a2, tp
                  or           s11, s1, s8
                  srli         t2, s4, 14
                  slt          tp, ra, a2
                  srai         a2, a7, 8
                  srai         sp, a6, 12
                  lui          a4, 626129
                  nop
                  ori          a2, a2, 1460
                  slli         t1, zero, 20
                  or           s4, s5, zero
                  add          gp, s6, t0
                  srai         gp, s4, 31
                  and          t4, gp, a6
                  auipc        s4, 209953
                  srl          zero, s6, s4
                  slti         a3, s6, 705
                  sub          sp, s7, a3
                  add          s9, a0, s2
                  srli         s0, t1, 24
                  sll          sp, s10, a3
                  sltiu        s9, a5, -660
                  auipc        s0, 64689
                  and          s11, a3, a0
                  sltu         s5, t0, t1
                  or           s5, a4, a4
                  slti         s2, t2, -1863
                  slt          s9, s1, t1
                  srl          zero, a1, s10
                  and          a1, s2, t2
                  addi         a1, a2, 101
                  xor          s2, a1, sp
                  or           s4, s5, s3
                  andi         s5, t3, -922
                  addi         s7, s6, -332
                  srli         s3, s5, 18
                  sltu         t0, t4, sp
                  sltu         sp, t4, s7
                  xori         s8, ra, -556
                  ori          s9, sp, 1279
                  sll          a3, a0, gp
                  or           t5, t1, sp
                  auipc        s3, 727685
                  andi         s8, zero, 1299
                  lui          tp, 705538
                  lui          s1, 714668
                  sra          a1, t6, a6
                  addi         s8, s5, 1823
                  sltu         s10, a2, s5
                  nop
                  addi         t0, t1, -965
                  sub          s6, s7, a3
                  auipc        s3, 342899
                  xori         zero, t1, 1057
                  andi         s5, s4, 340
                  ori          a7, gp, 171
                  add          a7, t6, t4
                  srl          s7, zero, a0
                  sltu         s7, ra, t6
                  ori          sp, a0, -363
                  auipc        tp, 435117
                  andi         a4, s10, -924
                  sll          t4, s8, sp
                  slli         t0, t2, 0
                  auipc        s4, 493883
                  and          t5, a3, s2
                  sra          s3, s7, a1
                  slt          zero, t2, t1
                  ori          a3, t5, -778
                  andi         s11, s4, -1763
                  slti         s7, a5, -1460
                  andi         s7, s5, -1641
                  lui          a1, 352946
                  sll          s1, a6, sp
                  srli         t1, a0, 29
                  nop
                  sra          sp, a3, a4
                  add          a7, s4, a6
                  sltu         t1, a4, t1
                  srl          a1, ra, a1
                  sltiu        a0, s3, 758
                  nop
                  sltu         a0, t3, t1
                  andi         zero, s11, 146
                  srli         s8, s3, 15
                  xori         a7, s10, 1342
                  sub          s7, a2, a1
                  slti         t5, s9, -1378
                  sra          sp, s11, t2
                  lui          a0, 992440
                  sltu         s6, s5, s4
                  sra          s11, gp, s1
                  sll          s7, t2, s2
                  sltu         a3, ra, s3
                  add          gp, s10, s0
                  sll          s4, gp, a6
                  srai         s6, a1, 24
                  ori          a3, s2, 1246
                  xori         t6, s10, 679
                  srli         a2, a1, 10
                  add          t2, t1, ra
                  or           s1, a4, s5
                  sltiu        s0, a0, 1301
                  slti         s9, a1, 602
                  srai         s11, gp, 20
                  and          s4, s7, s0
                  slt          s9, s7, t2
                  sub          a7, s5, t3
                  sra          ra, s11, s4
                  slli         a2, t6, 28
                  addi         t0, s0, 1154
                  auipc        s6, 1045649
                  sltu         s9, a3, zero
                  add          t5, t3, a5
                  nop
                  xori         a0, s10, -1579
                  addi         ra, s10, 319
                  andi         s1, s7, 321
                  slti         a4, a6, 141
                  lui          ra, 1000015
                  add          sp, s2, s3
                  sltiu        s10, ra, 1026
                  sub          s3, s4, t3
                  andi         sp, t6, 195
                  ori          a2, t2, -748
                  addi         s7, a2, 1754
                  nop
                  sltiu        a2, a0, 407
                  srai         s9, s1, 14
                  add          s6, s9, a4
                  srl          a2, t5, a5
                  srli         t6, zero, 15
                  addi         t0, t0, 1289
                  add          a3, zero, t4
                  srai         s11, s1, 31
                  nop
                  auipc        a1, 885061
                  auipc        t5, 154605
                  xor          tp, t2, a1
                  andi         t2, ra, -725
                  slt          s7, s8, t5
                  or           s8, tp, s11
                  sll          s8, s2, a2
                  srl          tp, s9, s8
                  auipc        s1, 212940
                  nop
                  sub          s3, sp, t1
                  or           s6, a3, s8
                  lui          s8, 790755
                  add          t1, tp, s9
                  slli         s10, s7, 28
                  and          a7, t5, zero
                  sltiu        a1, t1, -611
                  sll          s9, tp, a1
                  add          sp, a7, s2
                  srai         t2, s10, 1
                  add          s0, t2, s7
                  xori         s9, s8, 1411
                  slli         t6, gp, 1
                  sltu         t2, a3, t3
                  xor          s11, t2, ra
                  sra          tp, t6, a1
                  sll          s1, s6, a2
                  sll          s11, t5, s8
                  xor          a3, s10, a2
                  xor          s5, t0, s7
                  sub          a3, a5, s11
                  sub          s8, t6, a6
                  andi         gp, a4, 1961
                  srl          zero, s0, s1
                  andi         gp, a2, 204
                  xori         sp, s9, 1356
                  addi         s10, s11, -2029
                  sltu         tp, ra, ra
                  add          sp, a0, t0
                  xori         t0, a0, 1487
                  ori          a2, a4, -903
                  sltiu        a7, sp, 1099
                  srai         a7, s4, 25
                  andi         s6, t4, 693
                  add          s6, ra, a0
                  sltu         s3, s8, a3
                  addi         s11, t4, -1242
                  ori          s1, s3, 1555
                  srai         a2, t0, 16
                  srli         t1, s11, 27
                  srai         s0, t1, 6
                  lui          t4, 876987
                  sltu         s6, s10, a4
                  add          s11, zero, s4
                  srl          zero, t5, s3
                  sub          s10, ra, sp
                  srl          s2, a7, t5
                  xori         s10, t4, 241
                  addi         s1, s5, -1538
                  addi         t6, t2, -1923
                  sltu         s11, s1, t5
                  ori          gp, t5, -1344
                  nop
                  ori          s11, s5, 736
                  or           tp, a1, s8
                  and          tp, tp, tp
                  sub          s7, s2, a2
                  or           t1, s2, s9
                  xori         t6, s9, 1159
                  sltu         s6, t3, s6
                  sra          a2, sp, sp
                  nop
                  or           s9, a6, sp
                  sll          a0, zero, sp
                  xori         a4, a5, 1090
                  addi         s7, t2, 911
                  slti         zero, s10, 164
                  ori          a7, s11, 1927
                  nop
                  srai         s5, t0, 2
                  andi         t6, a6, 1167
                  xor          tp, s7, s10
                  slli         s5, a1, 0
                  sub          s6, t3, s2
                  addi         t1, gp, 184
                  sltu         s1, a5, s11
                  addi         s10, t0, -402
                  sltu         a7, t4, s2
                  xor          a3, a0, s3
                  sra          s3, a4, s0
                  xor          tp, s10, s0
                  or           a4, s4, s5
                  sltu         s4, a0, zero
                  add          a3, s6, t5
                  srai         t1, tp, 24
                  slti         t4, s0, 935
                  or           s4, t1, s0
                  sll          t0, s8, t5
                  sltu         t1, s9, s5
                  or           t6, zero, t6
                  slt          a2, t5, t0
                  ori          s7, a0, 1620
                  sub          s1, s2, ra
                  slli         zero, s6, 17
                  or           s11, s3, s10
                  addi         a2, tp, -640
                  and          sp, t1, tp
                  and          a2, gp, a7
                  add          s6, a2, ra
                  sll          a1, a7, tp
                  nop
                  sra          t1, s5, t4
                  andi         gp, s11, -1993
                  ori          a4, a3, -752
                  slli         a2, tp, 20
                  or           t4, a5, tp
                  add          s6, t1, s0
                  add          gp, t6, a6
                  or           sp, s11, t5
                  srl          a0, a2, t5
                  nop
                  sltu         a2, t0, t4
                  slli         zero, t0, 5
                  sll          zero, s9, a2
                  addi         t1, t6, 874
                  sltiu        s9, s7, 2037
                  srl          s5, s4, s0
                  ori          a7, a7, 737
                  or           s11, s9, a6
                  xor          s10, s5, a5
                  add          s4, s11, s2
                  and          t2, t1, zero
                  andi         t4, s2, 1724
                  nop
                  sltu         ra, sp, s2
                  sub          zero, a2, s4
                  srai         s4, a2, 31
                  xori         s4, gp, 1444
                  slt          s1, s4, a7
                  slli         t2, s6, 22
                  sll          s8, gp, s4
                  sltu         t0, s4, a2
                  andi         s0, a7, -1381
                  and          sp, t3, s2
                  srai         gp, a2, 4
                  sub          t5, s6, s0
                  sra          a1, s10, zero
                  sltu         a0, t1, zero
                  and          s6, t2, t0
                  lui          t5, 17331
                  ori          s2, t3, 1003
                  nop
                  srai         gp, s8, 1
                  andi         s4, s4, 513
                  sra          zero, a2, a5
                  slt          a2, a5, s9
                  slti         gp, s9, -42
                  xor          a7, t5, s7
                  srai         a4, t4, 8
                  sltu         a4, s7, s10
                  ori          t5, s9, 780
                  ori          s8, a7, 997
                  or           t4, sp, s11
                  lui          zero, 847764
                  or           t1, s0, s4
                  ori          gp, t1, -185
                  xor          t2, a4, s2
                  srl          a2, s3, a3
                  add          s4, a7, s4
                  or           a4, s11, zero
                  nop
                  ori          s8, t6, 1285
                  auipc        gp, 739029
                  sltiu        ra, a1, 1329
                  slt          s0, s5, t5
                  slli         zero, s9, 17
                  srl          s0, t5, s10
                  xori         s11, t5, 388
                  slli         tp, s10, 18
                  slli         s7, t1, 19
                  and          s6, a6, s5
                  sll          s7, s3, s8
                  andi         a3, a4, 1672
                  lui          s9, 437755
                  srli         s0, s9, 5
                  sltu         s8, a3, t6
                  sub          s1, s8, t3
                  srli         a4, ra, 15
                  auipc        t5, 373870
                  srli         t1, s7, 1
                  slt          s1, s2, s6
                  srl          t5, t0, t2
                  ori          t2, a2, -139
                  sltiu        t1, t4, 34
                  sll          tp, t6, s0
                  srl          a4, a4, s10
                  xor          tp, t6, a1
                  or           s1, tp, t3
                  add          a3, s6, s7
                  srl          gp, tp, a1
                  auipc        s11, 1029124
                  slt          s9, s8, t3
                  slti         a4, s0, -786
                  slti         a4, s9, 1422
                  sra          s3, t6, t4
                  or           ra, t6, gp
                  xor          s8, a0, t1
                  add          s5, gp, t0
                  slli         ra, a3, 12
                  addi         a0, s5, 1594
                  slt          a2, a4, a0
                  or           t1, a0, ra
                  addi         a7, s2, -157
                  andi         a3, s1, 1207
                  lui          s7, 815212
                  sltiu        t5, a6, -651
                  nop
                  nop
                  andi         a0, t3, 1945
                  sltiu        a2, t2, 895
                  lui          ra, 686345
                  ori          a2, a0, 1812
                  sra          a2, a7, t4
                  slt          s0, s3, t2
                  and          s3, s5, t3
                  sll          a0, s7, s1
                  andi         s0, t6, -1996
                  sra          t5, s2, a1
                  ori          s5, a0, 1252
                  sra          a4, t3, a2
                  xor          t1, t2, s9
                  sra          s8, t0, a4
                  srai         ra, s3, 7
                  slli         a1, t6, 5
                  ori          s10, s10, -956
                  sltu         s1, s2, t2
                  sltiu        t4, a0, 260
                  add          t1, a6, s2
                  sltiu        t0, a6, 1488
                  auipc        ra, 1018479
                  sll          t0, s8, t2
                  sltu         a7, a7, a6
                  ori          s10, s3, -663
                  srli         ra, sp, 7
                  xor          gp, s3, ra
                  slli         t4, s5, 27
                  lui          a2, 898357
                  ori          s6, t6, 1711
                  slli         zero, s4, 13
                  lui          s6, 512002
                  xori         t5, t5, -1792
                  andi         t0, s1, 1707
                  or           sp, a5, ra
                  xor          s7, a0, s8
                  and          s8, s11, s10
                  sll          s6, t3, a3
                  sll          a3, s7, ra
                  sltiu        t6, s6, -1435
                  nop
                  sra          s4, a0, t4
                  nop
                  slli         a7, a4, 9
                  slli         a4, s8, 22
                  srai         s7, a3, 10
                  srl          t5, gp, t1
                  andi         s5, zero, -1264
                  slli         t0, s2, 5
                  srli         s0, t3, 27
                  sra          sp, s10, t6
                  slli         t6, s7, 14
                  add          ra, a2, ra
                  xor          t1, ra, s3
                  sltu         t4, s6, s7
                  ori          zero, a5, -566
                  addi         a3, s4, 1447
                  and          sp, gp, s8
                  srai         tp, gp, 23
                  xori         s0, t2, 30
                  xor          s5, a4, s9
                  slt          s10, a7, s11
                  auipc        a2, 445584
                  nop
                  addi         a7, a4, 1439
                  srai         s4, s1, 19
                  add          s0, s3, t1
                  sub          a3, t3, gp
                  sll          a2, t1, sp
                  xor          s2, a0, a0
                  srl          s1, t0, a1
                  sltiu        a2, t1, 2019
                  srli         s1, a3, 15
                  addi         t1, a1, -813
                  xor          tp, a6, t1
                  xor          a3, a3, s4
                  sltiu        a1, s2, -1725
                  srai         gp, t3, 17
                  srl          s11, t6, t5
                  andi         a3, t6, 972
                  sll          s1, s11, s4
                  slti         a0, a5, -1131
                  sltiu        a4, s1, -1086
                  sltiu        s11, s10, -1300
                  xor          s3, s9, t0
                  ori          a7, t0, -474
                  sltiu        zero, t2, 1762
                  sub          s6, a4, s4
                  slt          t0, s6, a7
                  add          s10, t4, a0
                  srai         ra, s9, 20
                  add          ra, s2, t4
                  sra          s7, s4, s3
                  srl          gp, a4, s1
                  sub          a1, s2, ra
                  and          s9, zero, s0
                  srl          sp, t3, t5
                  sra          gp, a1, a4
                  lui          s7, 328562
                  add          zero, a5, gp
                  nop
                  sltiu        t2, t4, 892
                  sltiu        t5, a1, 587
                  sra          a3, s6, a2
                  and          s0, s7, s0
                  slli         t1, t5, 13
                  add          a3, s11, s0
                  srai         t2, s8, 25
                  addi         ra, t6, 1149
                  slt          gp, sp, s5
                  xori         a4, a5, -1194
                  sub          t2, t6, s4
                  ori          gp, s3, 110
                  andi         tp, t1, -420
                  lui          s11, 127060
                  srl          s9, sp, a4
                  or           a1, s9, t3
                  slti         t5, s5, -1066
                  sltu         a2, t0, s0
                  sra          ra, s11, t6
                  xor          zero, a6, t3
                  slti         a3, a3, -260
                  slli         zero, a0, 21
                  and          t0, t6, a3
                  sra          sp, s7, s5
                  addi         t0, t4, -716
                  srli         s7, a6, 22
                  xor          t0, t6, s8
                  slti         tp, s11, 52
                  xor          a3, a1, a1
                  lui          t6, 58580
                  lui          a1, 448537
                  ori          t4, s6, -1289
                  srl          a7, t1, zero
                  or           t0, s9, a0
                  srl          s0, s10, s11
                  auipc        s9, 39121
                  xor          zero, s7, t3
                  slti         s4, gp, 1516
                  xori         a7, s4, -417
                  srl          ra, a5, a7
                  slt          gp, s6, a4
                  add          t2, s9, s9
                  addi         zero, s7, 1976
                  nop
                  nop
                  nop
                  xor          a1, gp, s9
                  sltu         s0, a5, s3
                  srai         s11, a7, 17
                  addi         sp, a1, -170
                  xori         s7, t3, -256
                  andi         a0, sp, 983
                  lui          t5, 799684
                  sub          a0, t6, t4
                  slti         ra, zero, 352
                  slti         s3, s11, 381
                  srai         s5, s0, 9
                  sll          a4, tp, t1
                  xori         t6, s6, -691
                  sra          s6, t6, zero
                  slt          s11, t5, t1
                  add          s3, t0, a7
                  or           zero, s0, s1
                  slti         a2, ra, -534
                  ori          gp, sp, -992
                  sltu         s9, t0, s11
                  xori         a0, a2, -499
                  slt          sp, s1, s3
                  or           s2, a5, t5
                  nop
                  sltiu        a0, a4, -227
                  lui          s3, 945356
                  and          a7, s4, t5
                  xori         sp, t2, 1596
                  slt          a3, a7, s11
                  slti         t0, t4, 1495
                  auipc        sp, 505861
                  sub          sp, t1, s8
                  srl          ra, a2, t5
                  xor          t1, gp, s10
                  nop
                  xori         t5, s4, -663
                  srl          s5, s1, zero
                  slti         a0, sp, 910
                  nop
                  andi         ra, s0, 524
                  sll          s7, t1, a3
                  sra          a0, t1, t4
                  and          ra, s7, sp
                  sub          s4, t3, tp
                  ori          s1, a1, 1598
                  sltu         s6, s8, t5
                  addi         t6, a6, -241
                  slti         ra, s2, -1524
                  add          s7, t5, a5
                  srai         s6, t4, 1
                  srli         a4, s5, 23
                  add          zero, s9, s11
                  xori         t2, a6, 1007
                  and          t5, s10, ra
                  srli         t2, s1, 5
                  lui          s2, 19496
                  and          t5, zero, s10
                  or           s3, s6, s9
                  add          t2, a2, a0
                  xori         s4, tp, 386
                  sra          t1, s10, sp
                  ori          a0, t6, 194
                  nop
                  nop
                  xor          t5, ra, t4
                  slt          sp, s8, s9
                  sra          s3, s1, t6
                  and          s4, a5, gp
                  sltiu        a4, t2, 1265
                  andi         tp, t1, -727
                  srli         s8, s10, 21
                  slti         a0, s2, 1493
                  auipc        a3, 1043552
                  or           s11, a2, s6
                  ori          t5, gp, 799
                  slt          s1, ra, a6
                  addi         t5, s8, 162
                  srl          t1, s7, a2
                  slti         s10, sp, 173
                  andi         t1, s8, 482
                  sll          t4, sp, t3
                  andi         t4, t3, 1466
                  slti         s10, t3, 1319
                  xor          gp, s4, t3
                  xori         s1, s3, 393
                  or           t1, sp, gp
                  sra          s3, s3, t0
                  nop
                  xor          s10, ra, a7
                  ori          t0, s3, 1028
                  srli         s10, a2, 29
                  sltiu        a1, s6, -1248
                  andi         t6, s7, -1991
                  sra          s4, gp, s1
                  slt          s3, t6, s2
                  slli         t6, s4, 22
                  ori          s10, a4, -1545
                  srl          s9, t1, s6
                  slt          t4, s10, s1
                  sltiu        a4, t2, -1527
                  and          s11, t0, zero
                  lui          t1, 797126
                  ori          a7, s9, -923
                  andi         t4, zero, -759
                  lui          s7, 555882
                  ori          s8, a3, 1936
                  xori         t5, a7, 1513
                  ori          sp, s1, 258
                  addi         t2, a6, 1483
                  add          t2, a1, gp
                  slt          s10, t4, t3
                  or           s3, a2, t5
                  sra          a1, s5, gp
                  slti         s5, t0, 1576
                  xor          a2, sp, s8
                  srl          t0, t6, t0
                  srai         a7, t4, 27
                  xor          gp, a4, sp
                  slti         s5, s7, 1195
                  srai         s7, s3, 26
                  slli         a3, s2, 22
                  or           s3, t0, t3
                  andi         tp, a6, 195
                  addi         a1, s1, 1348
                  srai         a2, a7, 11
                  sltu         s11, t0, t4
                  lui          sp, 755642
                  ori          s2, a5, -919
                  ori          s6, gp, -1168
                  sll          gp, s1, t3
                  sltu         s2, s10, t2
                  and          t6, sp, t5
                  lui          s1, 612275
                  auipc        t0, 387122
                  xor          s5, s8, s6
                  add          ra, a6, a3
                  or           gp, a2, s3
                  sub          t1, s3, sp
                  slti         s3, s5, -1339
                  auipc        s9, 124973
                  nop
                  sub          a4, s8, t4
                  sltiu        zero, t4, 1653
                  sub          s3, s9, t0
                  nop
                  addi         t2, s8, -1084
                  srli         s8, a3, 10
                  sra          s5, zero, a3
                  sltu         s7, t6, s0
                  sltu         s3, a0, a0
                  slli         tp, a4, 30
                  srl          s11, gp, s7
                  srl          zero, ra, sp
                  lui          s10, 581125
                  nop
                  srli         a7, t6, 29
                  sra          s10, t3, s3
                  xori         t5, t1, -567
                  nop
                  xori         t5, a1, -1260
                  slti         t6, t5, 1091
                  srl          s1, s0, sp
                  srl          a0, s8, t3
                  sltu         ra, s5, a3
                  srai         a4, t5, 7
                  sltiu        a4, s2, 1230
                  srai         zero, tp, 29
                  srai         s2, sp, 30
                  lui          sp, 81490
                  xor          t4, a0, a6
                  sub          s7, t6, s0
                  slli         s2, s4, 12
                  sltiu        s0, t6, 1873
                  sltiu        sp, gp, -1672
                  slt          s0, gp, a4
                  andi         t0, ra, -869
                  sra          sp, a2, s2
                  srli         t1, a4, 31
                  sub          s9, t4, a0
                  slt          s6, t4, s7
                  addi         a2, a2, -770
                  slli         s8, s7, 17
                  srli         t6, a0, 22
                  addi         s8, a7, 1542
                  lui          s0, 142523
                  srai         s2, s0, 26
                  andi         a2, t1, 1045
                  slli         zero, ra, 29
                  srli         a2, s6, 4
                  slti         s3, s6, -470
                  sltu         s3, s4, s8
                  ori          s8, a6, 1651
                  slt          a1, t6, s0
                  srai         t0, tp, 13
                  slti         s6, a1, -1382
                  and          s2, sp, a6
                  xor          a7, zero, a2
                  add          s4, t5, s11
                  or           s11, s0, t5
                  srli         a4, tp, 19
                  nop
                  or           a4, gp, gp
                  and          sp, s11, zero
                  nop
                  sub          s5, a0, t5
                  lui          s8, 473532
                  ori          gp, s9, 262
                  nop
                  ori          t6, s10, 1922
                  sub          t1, s0, a2
                  add          t1, s3, gp
                  srai         s10, s8, 31
                  sltu         s6, a2, s4
                  xor          s3, a2, t3
                  nop
                  xori         s10, s7, -203
                  lui          tp, 53056
                  addi         s1, a7, 589
                  slt          t4, s4, a2
                  sra          t4, gp, a7
                  sltu         sp, t4, tp
                  lui          a4, 580104
                  sltiu        tp, t2, -1922
                  sltiu        s3, zero, 1025
                  xor          a7, a1, a3
                  slli         a7, s2, 1
                  or           s11, a6, a3
                  li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           s10, 0xffffffff
                  li           t6, 0xffffffff
                  li           s1, 0x80000000
                  li           t4, 0xffffffff
                  li           a2, 0x6f2bba03
                  li           a3, 0x0
                  li           a0, 0xffffffff
                  li           t5, 0x80000000
                  li           a4, 0x80000000
                  addi         a3, a3, 983
                  addi         s1, a0, -1886
                  auipc        t4, 307268
                  add          a3, s1, t4
                  nop
                  lui          a2, 762278
                  sub          t6, a0, a0
                  lui          a0, 1042784
                  lui          s1, 207238
                  nop
                  add          t4, a2, a2
                  auipc        t4, 817985
                  auipc        a3, 21647
                  addi         s1, t4, 1743
                  sub          s10, t5, a4 #end riscv_int_numeric_corner_stream_1
                  andi         a3, sp, 573
                  add          s1, sp, s8
                  lui          t6, 555801
                  sltu         s10, s4, gp
                  sll          a7, a7, s7
                  nop
                  srli         s2, zero, 18
                  addi         t2, t3, -845
                  and          gp, s1, t3
                  xori         gp, s10, -1311
                  slli         s10, s3, 11
                  xor          zero, ra, a0
                  slti         s0, tp, -1478
                  and          a7, a0, tp
                  xori         s11, s6, -2038
                  andi         s3, sp, 1018
                  xori         gp, s11, 980
                  srai         s0, s0, 18
                  slti         a1, s1, -372
                  slt          gp, t4, s8
                  srl          s1, s3, sp
                  and          a3, s6, t3
                  srai         t5, a2, 11
                  ori          t2, s5, 253
                  sra          t5, a6, a0
                  sll          tp, a7, zero
                  slli         t0, s2, 14
                  or           sp, s11, s0
                  nop
                  and          tp, t0, a1
                  srl          gp, t3, t3
                  slt          a4, a3, sp
                  slt          s7, s10, a5
                  xor          a2, t2, t2
                  slti         a7, a7, -833
                  srli         a0, a6, 29
                  srli         a2, s8, 12
                  slt          s8, t4, t2
                  sltu         t0, s9, s8
                  xori         s9, t5, 78
                  addi         a3, zero, -234
                  slt          s10, a5, s0
                  sub          s0, t1, t0
                  xor          a3, t1, a1
                  sra          s8, tp, s3
                  sll          t0, t1, s1
                  andi         s4, ra, -842
                  slt          a3, a3, s11
                  and          s0, a7, s5
                  auipc        s9, 741523
                  xori         s6, t5, -1638
                  addi         zero, a5, -1299
                  sra          ra, t3, s0
                  nop
                  srai         a7, t5, 21
                  lui          a2, 157177
                  xor          a4, sp, a0
                  slt          s3, t1, s8
                  or           s6, zero, s0
                  addi         s5, t6, -138
                  slt          s1, tp, s1
                  slli         t4, a2, 21
                  srai         s1, a3, 30
                  auipc        t0, 701650
                  add          a1, a1, a2
                  srl          t0, t6, zero
                  slt          a4, s5, s7
                  slli         s9, a1, 19
                  and          a0, s9, a2
                  srli         s3, a1, 5
                  srai         zero, t6, 0
                  xor          a7, s1, s8
                  srai         a1, t4, 8
                  and          s3, s5, t4
                  ori          s4, s9, 591
                  slli         a2, t0, 31
                  nop
                  lui          t1, 298758
                  srl          t1, t5, a7
                  sltiu        t0, a6, 856
                  slti         t5, s0, 838
                  addi         s0, s0, 474
                  srai         s11, s2, 1
                  add          t1, zero, t3
                  addi         t0, t5, 784
                  and          a2, a0, a1
                  sltu         s7, a3, a5
                  sll          s0, t1, t3
                  sub          s1, t1, sp
                  auipc        s4, 45813
                  nop
                  sll          a1, gp, s8
                  srai         s9, t2, 17
                  addi         t2, s5, -546
                  sra          a3, a0, s9
                  auipc        s5, 1015960
                  xor          s3, s5, tp
                  auipc        a0, 990670
                  srli         t6, s7, 31
                  li           s0, 0x2693c260 #start riscv_int_numeric_corner_stream_17
                  li           s10, 0xffffffff
                  li           gp, 0x80000000
                  li           sp, 0xf49b6fb0
                  li           s1, 0x0
                  li           a7, 0x59a85075
                  li           t2, 0x80000000
                  li           ra, 0xffffffff
                  li           a3, 0xfe51daac
                  li           s6, 0x61f2bcdd
                  lui          t2, 719373
                  addi         a3, sp, -1456
                  sub          t2, s10, a3
                  auipc        s1, 525542
                  sub          t2, ra, a3
                  nop
                  nop
                  lui          s6, 134949
                  addi         t2, a7, -1662
                  add          a3, s6, s1
                  lui          a3, 1012116
                  add          a7, t2, sp
                  sub          gp, a3, s10
                  add          a3, s6, s1
                  add          ra, s0, t2
                  addi         s6, t2, -1661
                  sub          sp, a7, a3
                  addi         s6, t2, -1530 #end riscv_int_numeric_corner_stream_17
                  add          tp, t2, s11
                  or           tp, sp, a6
                  auipc        gp, 168046
                  and          s3, t1, s6
                  xori         tp, ra, 1886
                  and          a1, s6, a0
                  ori          a3, a6, 719
                  sll          s5, t1, s6
                  sltu         s4, ra, s10
                  slti         t6, a5, -700
                  sltu         a2, s5, s6
                  and          s2, s8, s9
                  andi         zero, tp, -900
                  xor          gp, s5, s9
                  sub          t6, s9, s11
                  or           t5, t1, s0
                  addi         t0, a4, -512
                  auipc        a1, 763456
                  auipc        s0, 128925
                  sltiu        gp, s11, -1245
                  sra          s4, a4, a7
                  sub          a1, s7, gp
                  sra          a3, a6, zero
                  sltu         s9, ra, zero
                  slti         a7, t2, 333
                  slt          t1, t4, t1
                  srl          s10, a2, t4
                  and          a3, s6, a3
                  slt          s11, t4, t0
                  sra          a2, a7, zero
                  srl          s0, s7, t4
                  sub          s9, s2, a6
                  sll          ra, s4, a4
                  or           a7, s10, a4
                  slt          s8, a4, s3
                  sub          s6, t4, s5
                  sra          sp, s4, s1
                  sltu         t1, a1, s2
                  sub          t0, a4, s10
                  xori         s5, s10, 1759
                  lui          a2, 785033
                  slli         a0, s0, 12
                  sub          tp, a7, s11
                  slti         t2, a4, -536
                  sltiu        t0, s4, -985
                  sub          t1, a0, t0
                  srai         s9, tp, 23
                  xor          gp, s9, s0
                  auipc        t2, 877242
                  sra          t2, tp, a7
                  ori          s1, s5, -1236
                  xor          zero, tp, s0
                  or           s5, ra, a1
                  and          s6, s2, s10
                  srli         s4, a3, 23
                  and          t4, gp, t5
                  sub          s11, s1, t0
                  slti         s4, t6, 1121
                  nop
                  ori          s2, t3, 1781
                  add          s9, s8, s6
                  slt          a7, t1, tp
                  add          s4, gp, tp
                  sltiu        s11, a1, -821
                  xor          sp, s5, s5
                  xori         s5, s5, -1409
                  add          s7, sp, zero
                  addi         t4, ra, 503
                  sub          s1, s7, s9
                  addi         s10, s11, 2014
                  srl          a1, gp, s0
                  sltu         s2, s10, zero
                  xor          a2, gp, a5
                  slt          t6, a1, s7
                  add          a3, tp, s11
                  srli         s9, t2, 18
                  sll          t1, s3, t2
                  andi         s7, a4, 1586
                  sra          a1, a4, a2
                  addi         s6, s4, 1323
                  lui          s1, 706112
                  slli         tp, t6, 27
                  srli         a3, s4, 24
                  slti         a0, s10, -901
                  auipc        a1, 633318
                  add          s11, s7, s9
                  slli         s6, gp, 27
                  sltu         s5, a7, a7
                  sltiu        s9, s6, 299
                  xori         s1, gp, -722
                  sltiu        s9, sp, 121
                  slt          s11, a4, t3
                  xor          s2, s6, s2
                  lui          t6, 724931
                  andi         s0, zero, -821
                  srai         s11, t4, 29
                  slli         s10, s3, 30
                  lui          zero, 942679
                  add          ra, t2, ra
                  andi         a1, s2, 957
                  ori          a0, t3, 485
                  or           a0, tp, t0
                  sra          s4, s5, zero
                  ori          s11, a7, 1998
                  andi         a0, ra, -622
                  xor          s11, tp, s3
                  andi         s11, t0, 58
                  and          sp, zero, a3
                  sll          gp, a2, s10
                  xor          s7, a4, sp
                  sltiu        a7, a3, 728
                  sra          s5, t3, s9
                  addi         s1, s9, -452
                  slli         a0, s7, 3
                  slli         t2, a6, 14
                  xori         a7, a2, 1487
                  or           s11, s0, s3
                  and          a7, a1, gp
                  nop
                  andi         s7, s0, 871
                  auipc        gp, 64179
                  ori          tp, a1, -1608
                  srai         s11, t0, 3
                  sll          s6, s0, s11
                  xori         s7, ra, 1973
                  addi         a1, a3, 764
                  auipc        a2, 529176
                  auipc        s2, 900932
                  slt          s9, t6, sp
                  sll          s1, s7, s1
                  sltu         s8, s2, s7
                  sltiu        t6, ra, -468
                  and          t4, t5, s1
                  or           t0, a0, s9
                  addi         a0, a1, -1096
                  and          t6, t4, s5
                  or           sp, ra, sp
                  sltiu        t2, zero, -1900
                  lui          gp, 177890
                  and          sp, s5, s3
                  sra          s8, s5, a0
                  slli         s7, t4, 23
                  sltu         s0, a7, s10
                  srli         sp, s0, 13
                  lui          sp, 562369
                  add          s11, gp, s10
                  xor          a3, t6, a7
                  and          s3, ra, a3
                  ori          a7, t3, 340
                  auipc        a7, 842583
                  sll          s3, s4, a5
                  slt          a0, s7, a1
                  auipc        a3, 20337
                  xori         a7, s3, -1689
                  slt          ra, ra, s10
                  sll          s1, tp, t6
                  auipc        a3, 625266
                  srai         a7, a3, 12
                  slli         s11, a5, 12
                  add          zero, t6, a7
                  nop
                  and          t6, t6, a3
                  or           s3, t1, tp
                  sll          s1, s8, a3
                  xor          t5, a4, a7
                  sltu         t4, ra, a7
                  xor          a0, zero, a5
                  xori         a2, zero, -1021
                  srl          s11, s8, s10
                  add          s4, sp, a5
                  add          s6, s0, a5
                  sll          s8, s8, s2
                  sra          s6, a5, a3
                  xori         ra, s3, -1851
                  sub          a3, a0, tp
                  lui          t1, 880608
                  sra          s8, a2, a3
                  sra          a0, s6, t2
                  andi         s2, s2, -1533
                  sltu         t0, t5, s11
                  auipc        ra, 58882
                  xor          s9, tp, s1
                  ori          s0, s6, -1360
                  ori          zero, a7, 2029
                  sltu         t4, t1, ra
                  sub          gp, s11, zero
                  srl          s8, a0, zero
                  slli         s11, a5, 16
                  ori          t2, s10, 216
                  srl          s0, s4, t6
                  sll          s6, t5, s7
                  slti         s1, a3, 656
                  and          zero, a2, a7
                  slt          s11, t0, s1
                  ori          sp, a6, 1792
                  slli         sp, a6, 24
                  sltu         s8, t2, a5
                  sll          s7, a3, s7
                  xori         t6, sp, 95
                  srai         s5, t5, 29
                  add          tp, a7, t0
                  srli         zero, s1, 22
                  auipc        s1, 337899
                  sra          t6, s0, a2
                  li           t0, 0x7afb642b #start riscv_int_numeric_corner_stream_9
                  li           t4, 0xffffffff
                  li           t1, 0xffffffff
                  li           s7, 0x0
                  li           a7, 0x0
                  li           s9, 0x80000000
                  li           tp, 0xaf2d3248
                  li           a4, 0xffffffff
                  li           s11, 0x80000000
                  li           s4, 0x80000000
                  nop
                  auipc        t4, 848716
                  auipc        a4, 48056
                  nop
                  sub          s11, tp, s7
                  add          t0, t4, a7
                  add          a7, a4, s4
                  add          a7, s4, s7
                  sub          a4, t1, t0
                  auipc        tp, 196259
                  sub          t4, s7, s9
                  addi         a7, t1, -1228
                  nop
                  sub          s7, t1, t0
                  lui          t1, 665354
                  lui          s4, 506192
                  addi         t4, s11, -1354
                  sub          s11, s11, t0
                  auipc        t1, 24094
                  nop
                  addi         a7, t1, -150
                  addi         s4, s7, -1286
                  nop
                  addi         t1, t1, -204
                  addi         t0, a7, 2012 #end riscv_int_numeric_corner_stream_9
                  andi         s11, a1, 1451
                  ori          s8, t0, 1193
                  lui          a3, 463403
                  sltu         sp, a5, a5
                  sltu         s4, sp, tp
                  auipc        a1, 576896
                  srai         s5, s8, 1
                  ori          sp, a3, 1457
                  and          s2, t6, s4
                  sltiu        t5, a7, 32
                  srl          s8, a2, s1
                  slt          zero, t5, gp
                  sltu         t2, t1, sp
                  addi         s4, t0, 1564
                  addi         t5, gp, -1953
                  andi         s11, s10, 475
                  and          zero, s8, s9
                  slti         gp, t4, -1139
                  add          gp, a1, s10
                  or           t5, s6, a2
                  srai         a0, a6, 31
                  slli         a1, s5, 5
                  add          s9, a3, sp
                  sltiu        s5, s8, -1354
                  xor          s8, t5, t1
                  sll          a0, s6, s11
                  andi         a3, s8, -1018
                  srl          s10, t3, gp
                  srai         gp, a7, 7
                  ori          zero, t0, -55
                  and          ra, s11, s5
                  sltiu        s9, s11, -786
                  slt          tp, s9, s11
                  add          s3, s3, a2
                  sltiu        s5, s1, 1373
                  auipc        s0, 826159
                  or           s5, t3, t5
                  sltu         a2, t5, s2
                  srl          s5, a6, a7
                  sltiu        a2, s0, 1008
                  addi         s8, s11, -171
                  addi         ra, a7, 599
                  andi         a1, a4, 1664
                  andi         s0, s9, 1552
                  sltu         s4, t0, a5
                  ori          s10, t6, 138
                  auipc        s7, 488023
                  and          s2, t5, t3
                  srai         ra, zero, 2
                  and          a4, a1, t3
                  add          a0, t4, s11
                  sub          s6, s5, t4
                  addi         a2, tp, 749
                  xori         s6, s6, -113
                  xor          gp, s7, s11
                  slli         a1, s7, 12
                  xor          s5, s0, s2
                  sltiu        a0, a5, -696
                  sltiu        sp, ra, -1311
                  ori          t5, t0, -1119
                  sub          s8, s0, sp
                  sll          a0, a5, ra
                  andi         s10, s8, -76
                  xor          zero, t4, s11
                  and          s7, a5, s10
                  srai         a2, s2, 13
                  and          t2, s3, s11
                  slt          t0, t3, a7
                  sll          a2, ra, zero
                  slti         s5, tp, -771
                  and          s10, a6, t5
                  slti         a1, s11, -1576
                  sll          a3, ra, a5
                  slli         s5, a2, 28
                  sltu         s5, s1, t6
                  sra          t6, s9, t2
                  sltu         s9, t6, ra
                  nop
                  xori         t0, a2, 642
                  srl          a1, t1, sp
                  sub          s8, sp, t6
                  xor          a1, t6, a4
                  srl          s7, s5, s7
                  nop
                  sltu         s5, a1, a6
                  xor          a0, a1, s1
                  auipc        a7, 117304
                  srai         a3, tp, 5
                  srli         t6, a2, 9
                  sll          a0, zero, s1
                  slli         s11, s4, 16
                  srai         s0, s2, 30
                  and          s10, tp, s3
                  sll          s6, a7, t5
                  xor          s2, t0, a3
                  srli         tp, gp, 25
                  sltu         s9, a0, a0
                  ori          zero, a6, 280
                  add          s2, a2, s4
                  lui          s11, 952235
                  slli         s5, s3, 12
                  auipc        t5, 570031
                  ori          s0, s8, -2003
                  addi         ra, a3, 1316
                  andi         s8, a1, -1752
                  srl          s3, s3, sp
                  sll          a3, a5, t4
                  nop
                  or           s8, zero, a0
                  xori         t4, sp, 1276
                  sra          s9, sp, zero
                  xor          t6, s7, a4
                  ori          t2, s6, -1303
                  srai         t1, t0, 29
                  srli         t5, t6, 12
                  lui          s6, 12785
                  or           a4, a5, s1
                  sub          a7, s11, s6
                  slli         s2, a2, 21
                  auipc        t1, 224522
                  slt          t1, s1, s8
                  slli         zero, zero, 18
                  xor          t0, s8, s10
                  xori         s1, s3, -770
                  add          a4, s9, a0
                  andi         s1, a2, 1806
                  xori         t2, ra, 474
                  slt          zero, s0, s8
                  xori         s10, s6, -1130
                  srl          a1, s2, a2
                  slli         zero, s10, 19
                  xori         a7, t0, 174
                  add          s5, a1, sp
                  srli         zero, a4, 5
                  auipc        sp, 343352
                  xori         s3, s2, -14
                  slli         gp, s7, 16
                  srl          a7, ra, zero
                  sltiu        a7, s0, 1512
                  lui          t5, 986967
                  andi         s2, s5, 974
                  and          a4, s5, tp
                  sll          s11, ra, s2
                  addi         a2, s2, -1919
                  sltiu        s2, gp, 639
                  xori         s4, t6, -237
                  andi         s2, a0, -487
                  srl          a3, zero, s0
                  and          s5, s4, s0
                  addi         a1, t1, -153
                  sltu         s10, a6, t3
                  sub          t4, a5, s6
                  sll          t0, s10, a1
                  sll          s2, zero, tp
                  sub          tp, t6, t5
                  or           tp, t3, t0
                  xori         zero, ra, 1533
                  sub          a2, s0, t0
                  sra          t2, tp, ra
                  slti         zero, a4, -367
                  nop
                  or           sp, gp, s7
                  srli         t2, a5, 12
                  srai         sp, s7, 27
                  srli         s1, s6, 19
                  slti         s5, s8, 2
                  and          zero, s0, s11
                  lui          s3, 865003
                  xori         s4, s10, 822
                  ori          s3, t0, -558
                  addi         s9, s0, 459
                  xor          s3, ra, ra
                  srli         s2, s4, 15
                  slti         sp, t2, 64
                  andi         zero, t3, -134
                  srai         s8, t5, 6
                  auipc        ra, 709612
                  sltu         a3, gp, t2
                  sltu         t6, t5, a7
                  ori          s8, s11, -833
                  addi         a0, s2, -1014
                  slt          t2, s1, t2
                  ori          a2, sp, 376
                  slli         s6, s8, 22
                  addi         t0, a3, -243
                  lui          s4, 723343
                  srai         tp, zero, 26
                  add          s5, t4, s5
                  srai         t5, t6, 16
                  sltu         zero, t2, a7
                  xori         ra, s7, 1936
                  slti         s11, s4, -675
                  xor          t1, s9, a7
                  ori          a0, t0, 1305
                  add          a1, a7, tp
                  sub          s2, t0, s0
                  andi         t1, gp, -916
                  slti         zero, s3, 1174
                  srli         s4, s3, 31
                  addi         s1, s3, 526
                  slt          tp, s3, a7
                  or           t5, sp, ra
                  slli         tp, t4, 21
                  andi         s8, t5, 955
                  xori         t4, s6, -1870
                  nop
                  sra          a4, s1, s8
                  add          s3, s4, sp
                  slli         a3, t6, 13
                  sltiu        gp, t5, -353
                  srl          s4, s1, t1
                  sltu         s5, s8, a7
                  addi         zero, a7, 583
                  srl          t0, a7, a2
                  ori          sp, t5, -50
                  or           s9, a3, s0
                  srli         ra, s5, 8
                  xor          zero, s11, s0
                  andi         tp, t0, -1916
                  andi         sp, t5, 481
                  lui          s5, 315559
                  sra          s11, t3, a2
                  lui          t2, 581608
                  sra          tp, s6, s5
                  xori         a2, zero, 663
                  srl          t5, ra, t2
                  slti         s4, s2, -800
                  slli         ra, ra, 29
                  srli         s2, s4, 26
                  sub          a0, s6, a3
                  andi         s11, t1, -1414
                  xori         s2, gp, 692
                  or           s3, a6, a6
                  lui          t2, 296359
                  srli         a1, a6, 3
                  ori          t0, s2, -1981
                  addi         s7, t6, -1978
                  sltu         s8, t4, s4
                  sra          s2, zero, a5
                  and          t5, sp, a7
                  slti         s10, sp, 21
                  sltiu        t2, t6, 1470
                  ori          s7, a5, -965
                  add          s1, t3, a6
                  add          sp, t1, a1
                  srl          a2, s1, a4
                  addi         a7, zero, 86
                  nop
                  andi         s7, a3, -1240
                  or           s9, a4, s2
                  sll          ra, s5, s11
                  xori         a2, ra, -398
                  xor          t4, s10, s11
                  ori          t4, s2, -331
                  xori         a0, s8, 164
                  lui          s0, 261784
                  slt          ra, s2, zero
                  sra          s11, s6, a3
                  or           sp, t4, s0
                  and          s1, s11, s11
                  add          t2, a4, s11
                  xor          s11, ra, zero
                  ori          s6, a0, 1266
                  andi         s8, s0, -1357
                  ori          s8, zero, -644
                  slli         t4, tp, 21
                  or           s8, s0, zero
                  sra          ra, s10, t5
                  srli         t2, a4, 1
                  ori          s0, a7, 31
                  srai         s4, a1, 22
                  srl          a3, sp, t1
                  add          s9, s4, t1
                  sub          s9, a6, s1
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           a7, 0x80000000
                  li           s9, 0x80000000
                  li           t6, 0x4fd2dc21
                  li           a0, 0x0
                  li           t2, 0xffffffff
                  li           gp, 0x80000000
                  li           s6, 0x80000000
                  li           s10, 0x80000000
                  li           t0, 0xffffffff
                  add          a7, a0, a7
                  lui          s6, 291004
                  nop
                  auipc        s6, 812321
                  nop
                  sub          s9, s10, t0
                  auipc        gp, 441593
                  sub          s2, a0, t6
                  nop
                  nop
                  add          s9, a0, t6
                  nop
                  auipc        t2, 904868
                  nop
                  addi         a0, s2, -303
                  sub          t6, t0, t6
                  lui          a7, 333108
                  addi         t0, s9, -1883
                  nop
                  sub          a0, a7, a7
                  sub          s2, s10, s9
                  auipc        gp, 146315
                  sub          s9, t0, a7
                  nop
                  addi         s9, t6, 553
                  lui          s2, 620342
                  auipc        s2, 752833
                  add          t0, s2, gp #end riscv_int_numeric_corner_stream_16
                  slli         t4, a5, 26
                  auipc        s10, 700240
                  slt          ra, t5, a4
                  lui          s6, 591362
                  xor          zero, s5, a6
                  xori         s0, zero, 423
                  sltu         s5, zero, s8
                  xori         t2, a4, -1995
                  auipc        s11, 840385
                  add          t6, t0, zero
                  add          s10, s11, zero
                  add          a1, a7, t6
                  xori         zero, s8, -761
                  or           s0, a3, s8
                  xori         t0, t3, -194
                  srli         s10, a0, 0
                  lui          t1, 350125
                  sltu         t4, t3, t6
                  ori          s4, t1, 551
                  nop
                  srli         a0, s11, 17
                  slti         s3, a0, -135
                  slti         s11, t1, -1066
                  slt          s10, a5, t1
                  add          a1, a0, t5
                  add          t0, a1, t2
                  sll          t1, a7, zero
                  and          a0, s11, t3
                  andi         t4, t1, 257
                  sll          s5, t6, gp
                  slt          a1, s0, a2
                  xori         s8, s2, -932
                  srli         a2, a2, 11
                  lui          s3, 517494
                  auipc        t2, 53059
                  srli         ra, s11, 6
                  sll          t1, s9, s2
                  auipc        s8, 970328
                  or           s8, s8, s8
                  sltiu        tp, a0, 1114
                  or           s5, a4, t0
                  slli         t2, zero, 20
                  srl          t1, a0, s5
                  auipc        s10, 1006917
                  slti         sp, t2, -1587
                  sltiu        a7, a6, 1325
                  xori         s0, s8, 662
                  sub          t2, s11, a5
                  slli         gp, t3, 15
                  sltiu        t5, s3, -523
                  xor          s1, s2, sp
                  srli         t4, t3, 16
                  xor          s2, a0, s4
                  nop
                  sra          a3, t5, s11
                  srai         s5, tp, 15
                  slli         a3, gp, 5
                  sub          t2, a5, s6
                  or           s4, s11, t3
                  xori         s8, a2, -1716
                  add          t1, s3, t3
                  andi         s10, t6, -1579
                  srl          a7, ra, gp
                  sltiu        s7, gp, 1438
                  sra          t5, t4, s2
                  add          s5, a1, s11
                  and          a3, a4, tp
                  sra          a4, a5, s1
                  auipc        a2, 988980
                  add          t0, ra, s10
                  xor          s4, a4, s10
                  andi         t0, s6, 1206
                  nop
                  nop
                  sltiu        sp, s11, -1365
                  srl          tp, a0, ra
                  andi         sp, a2, 673
                  sltiu        t0, s8, -1718
                  sra          s10, s3, gp
                  sltu         a7, s8, t2
                  nop
                  nop
                  srli         s8, t6, 24
                  sra          t0, t3, t4
                  and          zero, a6, tp
                  slli         sp, a6, 8
                  slli         s4, zero, 19
                  addi         t2, zero, 1544
                  sltu         s11, s10, sp
                  sltu         s1, tp, s10
                  srli         t2, s9, 3
                  slli         zero, s1, 20
                  slli         s3, a5, 8
                  nop
                  or           s3, a6, s8
                  srli         a1, s7, 9
                  ori          s2, a5, 1282
                  nop
                  xori         t5, a2, -1508
                  sra          s5, t1, s7
                  sltu         zero, a6, sp
                  nop
                  sltiu        s6, t0, -1869
                  sra          s10, s1, ra
                  andi         t5, s9, -1644
                  ori          s4, a3, -621
                  slt          ra, t0, s2
                  add          s10, s7, s8
                  nop
                  and          ra, t4, a4
                  and          t1, t3, a3
                  sra          tp, s4, t4
                  sub          s3, t6, s6
                  xori         t5, a6, 1317
                  auipc        s7, 927251
                  addi         a1, s1, 1513
                  slt          zero, a6, s1
                  sub          s6, a7, t5
                  or           a2, s4, t0
                  xor          sp, s3, s6
                  slli         t5, a5, 13
                  srl          a1, t2, t0
                  sltiu        s3, s11, -1127
                  sltiu        a7, s3, -587
                  lui          s5, 965783
                  ori          s11, a1, -981
                  andi         s6, a3, 1153
                  nop
                  andi         a4, gp, -767
                  or           ra, a4, sp
                  sltu         t4, a4, a3
                  slli         t4, s1, 13
                  srli         s9, s5, 13
                  add          s1, zero, s5
                  slti         s1, a3, -757
                  slt          s4, a4, s4
                  sub          gp, s0, a2
                  addi         s9, gp, -652
                  sltu         tp, zero, t2
                  slti         s1, ra, -1472
                  srli         s3, a7, 31
                  xori         s1, s7, 1302
                  ori          s1, t5, 1372
                  andi         s11, a0, 1713
                  sra          ra, s7, sp
                  srai         s4, s6, 0
                  srl          a3, t6, s8
                  xori         a3, a0, 1301
                  addi         a3, s8, -1462
                  auipc        s11, 428706
                  add          a0, sp, s7
                  slli         s2, t0, 20
                  srl          s0, tp, tp
                  add          a3, s11, a7
                  and          t1, t2, t3
                  srai         a7, a0, 22
                  slti         s2, zero, -375
                  ori          s6, a0, -1535
                  sub          t2, a3, sp
                  lui          s7, 322050
                  add          a1, s9, s9
                  slti         s9, zero, -417
                  srl          a0, s8, t4
                  or           ra, zero, s2
                  sll          s4, t4, t2
                  sltiu        s4, a4, -1935
                  sub          tp, s9, a6
                  sltu         ra, tp, a4
                  srl          s1, a3, tp
                  srl          a2, a1, sp
                  ori          s6, t2, -448
                  srl          t1, a7, a4
                  or           a3, gp, s4
                  addi         tp, s9, 175
                  sra          a1, s0, a6
                  or           t0, t1, t0
                  addi         s8, a0, 766
                  sra          s8, a4, t3
                  slti         s0, t3, -1319
                  nop
                  srai         s4, s3, 4
                  slt          s9, s11, s1
                  slt          t4, t4, t1
                  xori         s4, a1, 139
                  slt          t5, t5, t6
                  sll          t1, a6, s6
                  auipc        zero, 949384
                  xor          a4, s3, t1
                  andi         s0, s8, 1428
                  xori         s9, s1, 600
                  xori         s10, t5, -506
                  srl          s6, a2, a3
                  xor          s9, ra, a7
                  xor          a2, a5, sp
                  slti         s7, tp, 15
                  nop
                  sra          tp, s8, s0
                  add          a7, ra, s1
                  add          tp, t1, s3
                  xori         t2, s8, -543
                  ori          t4, t2, -1426
                  slti         s8, s0, 725
                  srl          s10, s1, a3
                  slti         gp, a6, 1366
                  sll          t5, gp, a3
                  slti         t1, t1, -1363
                  lui          a3, 228657
                  nop
                  xori         s5, s3, 1043
                  srl          s6, a3, s1
                  or           t1, a5, s7
                  xor          s3, t0, a6
                  sub          a1, gp, a0
                  slti         t6, s1, -156
                  slt          s8, s1, gp
                  sltiu        s4, s0, -793
                  addi         s6, s2, 361
                  srai         s11, sp, 21
                  sltu         sp, s9, zero
                  auipc        t4, 934368
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           s6, 0x0
                  li           t2, 0xb8739c6
                  li           s10, 0xffffffff
                  li           s2, 0x80000000
                  li           s0, 0x0
                  li           a2, 0xc4c7b256
                  li           s11, 0x0
                  li           s5, 0x0
                  li           a1, 0xffffffff
                  auipc        t2, 51257
                  sub          t2, tp, t2
                  add          s2, s0, s10
                  add          t2, tp, s11
                  addi         tp, s11, 311
                  nop
                  addi         a1, t2, -394
                  auipc        tp, 218560
                  auipc        s2, 475905
                  add          s0, s5, t2
                  addi         tp, s6, 775
                  nop
                  addi         s2, s11, -1576
                  add          s11, s2, tp
                  lui          a1, 133304
                  addi         t2, a2, 83
                  auipc        t2, 402778
                  sub          s0, s2, s11
                  nop
                  lui          t2, 917798
                  addi         a1, s5, 1538
                  add          s5, s6, a2
                  addi         s11, s6, 22
                  sub          s5, s0, tp
                  sub          s0, s2, s2
                  nop #end riscv_int_numeric_corner_stream_14
                  and          s2, s11, a4
                  andi         ra, t0, 355
                  srli         a0, s0, 10
                  sub          sp, t6, s7
                  srli         t4, t1, 15
                  lui          ra, 972595
                  auipc        ra, 156556
                  lui          t6, 800005
                  sll          zero, s5, s3
                  xori         t1, s6, -4
                  srai         gp, gp, 20
                  auipc        tp, 859090
                  sltu         s1, a2, a2
                  auipc        t5, 730518
                  sub          gp, t1, t3
                  sub          a4, a0, s7
                  slli         a2, a1, 16
                  xori         s11, s5, 339
                  addi         s11, s5, 1756
                  sltiu        s10, a1, 1510
                  srl          s0, s1, s10
                  slli         s0, s3, 24
                  auipc        s0, 955983
                  sltu         ra, s2, a5
                  add          s2, t4, a0
                  slti         s9, a7, -269
                  or           s1, zero, a4
                  xor          t4, a0, s6
                  slti         t6, s4, -1213
                  andi         s11, zero, 1862
                  slli         a7, s9, 19
                  sltiu        t5, s3, -1105
                  slt          ra, zero, a1
                  or           s0, sp, ra
                  add          sp, a7, a6
                  slli         a4, t3, 23
                  nop
                  slti         a4, t1, 1775
                  andi         s4, s7, 1171
                  sll          tp, a6, a3
                  andi         sp, s4, -1029
                  sltiu        t6, s7, -724
                  addi         s2, t0, -311
                  xor          zero, t0, s2
                  srli         a7, zero, 31
                  addi         ra, t2, -1619
                  and          sp, a2, s6
                  srl          tp, t3, s3
                  xori         s5, a6, 1156
                  srai         s0, sp, 24
                  and          s10, s5, a5
                  sra          t0, s6, s0
                  slt          t6, s4, a6
                  sltu         a0, s9, zero
                  add          zero, ra, a2
                  ori          t5, gp, -40
                  slli         s6, t6, 29
                  sra          t4, s2, gp
                  slti         sp, a4, -1450
                  sltiu        t6, t4, -876
                  xori         s3, t5, -378
                  auipc        a7, 400058
                  srl          s7, s5, s4
                  auipc        t1, 473282
                  sll          a2, zero, tp
                  addi         a0, s1, 1569
                  add          t4, a7, a1
                  srai         t2, s1, 7
                  srl          t4, gp, t3
                  xori         t2, s8, 1403
                  ori          sp, s1, -1823
                  srl          ra, a0, t6
                  add          t0, t5, sp
                  add          s4, sp, t2
                  add          t6, t3, a4
                  andi         s8, gp, -1922
                  sll          a3, a6, s7
                  sub          s6, t0, s6
                  sub          ra, t5, s8
                  add          sp, s11, gp
                  sub          a0, a4, t1
                  add          s4, s5, tp
                  sltu         a3, t1, a3
                  and          a1, sp, a6
                  sll          s5, t1, s10
                  auipc        t4, 768650
                  and          a2, a0, sp
                  slli         s4, s0, 19
                  and          gp, s5, s2
                  andi         tp, ra, -1508
                  sll          t6, s6, a3
                  addi         a3, s11, -440
                  lui          t2, 881555
                  ori          t5, s10, 562
                  sra          s7, t0, t1
                  add          a2, s4, sp
                  or           s7, a1, s8
                  sltu         a4, s7, s3
                  sltu         t4, t6, a7
                  slt          a2, s9, t2
                  lui          a3, 755460
                  or           s11, a2, s8
                  sub          a7, a3, a4
                  srai         t1, s11, 17
                  lui          s9, 78144
                  ori          s1, t5, 1375
                  or           t6, a4, a1
                  sll          zero, gp, a3
                  sub          t5, a4, s8
                  or           s7, t6, sp
                  sltu         a1, s5, t3
                  xori         s4, s5, 1449
                  add          gp, s10, s7
                  ori          t4, a5, -984
                  sltu         t2, a3, t5
                  srl          t4, s4, s10
                  or           gp, a7, s2
                  or           t4, t5, a7
                  xor          ra, sp, tp
                  add          tp, a4, s8
                  sltu         s9, zero, t6
                  addi         a1, t2, 846
                  slli         a4, s2, 1
                  srl          t2, sp, s2
                  sll          a0, a3, s0
                  auipc        s6, 470837
                  slt          s2, tp, s0
                  xori         s7, s9, 789
                  sltu         s0, s1, s8
                  sub          s8, s5, s0
                  sltiu        tp, a7, -19
                  xori         ra, a0, 1410
                  and          a3, a5, s9
                  sll          t5, s0, sp
                  ori          a7, gp, 795
                  xor          ra, t1, s4
                  lui          t4, 408678
                  sltu         sp, tp, s8
                  slli         tp, a4, 13
                  srli         tp, a7, 19
                  srl          s0, t3, sp
                  xor          s3, t3, tp
                  sltiu        sp, a0, -1974
                  slt          t5, a0, s7
                  and          s6, s4, s8
                  and          t1, t5, t1
                  addi         s0, a5, -1168
                  sra          a1, gp, a0
                  slli         a4, a4, 15
                  addi         a4, s0, 1565
                  sltiu        t5, a7, 469
                  slli         s6, a6, 14
                  slt          s4, gp, zero
                  srai         ra, a5, 24
                  nop
                  srl          t6, tp, a1
                  slt          s9, a0, s10
                  srai         s11, t0, 7
                  andi         t0, s10, 229
                  sub          s10, a2, s10
                  auipc        s0, 595484
                  slti         s6, a3, -1880
                  srai         ra, s9, 30
                  addi         s8, s11, 1183
                  sll          s6, t3, zero
                  sltiu        t5, tp, 27
                  sra          s11, a4, t5
                  and          s6, gp, t6
                  li           s5, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           s7, 0xbb8f9c4d
                  li           ra, 0xffffffff
                  li           sp, 0x80000000
                  li           s9, 0xffffffff
                  li           t2, 0x0
                  li           t0, 0x0
                  li           t4, 0xffffffff
                  li           a3, 0x0
                  li           a0, 0xb4c53fc5
                  addi         t4, t0, 369
                  addi         ra, t0, -1341
                  sub          a3, s7, t4
                  sub          s5, s9, t2
                  addi         s9, a0, 970
                  add          s9, s5, sp
                  nop
                  lui          s7, 608191
                  sub          sp, s7, t4
                  addi         s9, a3, -1187
                  lui          s9, 885736
                  auipc        ra, 159749
                  lui          sp, 594533
                  auipc        a0, 852503
                  addi         t2, t4, -1326
                  auipc        t4, 898645
                  lui          ra, 309403
                  add          sp, s7, a0
                  auipc        t4, 22601
                  lui          ra, 190671
                  add          sp, sp, t2
                  auipc        a0, 973235
                  auipc        ra, 540548
                  lui          a3, 53108
                  add          ra, sp, s5
                  lui          s5, 517892
                  addi         s9, s7, -118
                  addi         t0, t0, -1712
                  addi         ra, ra, -978 #end riscv_int_numeric_corner_stream_4
                  srli         s1, a0, 3
                  nop
                  sub          a0, a6, s3
                  slti         a7, s6, -948
                  or           s2, a6, a2
                  or           s1, tp, s6
                  srli         ra, s11, 18
                  srai         t6, t6, 17
                  sub          a4, a6, s8
                  srli         t0, t3, 20
                  ori          gp, a3, -1248
                  srl          a2, s6, s10
                  slli         t6, t5, 31
                  srl          s1, s8, a3
                  sltu         s3, a1, a6
                  srl          s9, s10, a3
                  sra          t2, s4, a7
                  sub          s5, a7, a7
                  sll          s4, s5, s7
                  lui          a1, 733712
                  nop
                  ori          s10, zero, 1708
                  add          t5, s11, s9
                  add          gp, ra, s7
                  srli         sp, a1, 17
                  slli         a1, t1, 19
                  slti         tp, s4, 1801
                  nop
                  xori         s4, t0, -451
                  lui          s6, 794880
                  sll          s2, ra, a1
                  sltu         s1, t2, s2
                  addi         s11, s1, 1905
                  ori          s8, s2, -507
                  nop
                  sltu         t2, s5, a2
                  srl          a7, zero, a1
                  sub          a7, s5, sp
                  ori          tp, s10, 941
                  sltu         s3, gp, t6
                  ori          a0, tp, -798
                  lui          s9, 955918
                  nop
                  addi         s3, tp, 731
                  nop
                  slt          s4, t6, a3
                  nop
                  slt          t1, s4, s9
                  auipc        a7, 284610
                  or           tp, a7, zero
                  srli         s6, s0, 16
                  srai         s3, t1, 1
                  srli         a7, s3, 29
                  xori         t1, zero, -327
                  addi         sp, s2, -689
                  sll          a2, s1, s0
                  sub          a2, s11, a2
                  lui          s1, 99910
                  and          gp, t4, t3
                  srli         t1, s2, 29
                  sra          s6, a5, s8
                  slt          s7, s3, a5
                  slli         s0, t2, 6
                  add          t0, a2, s5
                  sltiu        s10, t1, 805
                  andi         s6, s9, -110
                  lui          a4, 478329
                  xor          zero, s8, s0
                  or           a0, t4, s9
                  andi         a4, s6, -933
                  srli         s8, zero, 26
                  addi         a0, ra, -1982
                  srl          s2, a0, s8
                  and          s0, s8, s2
                  sll          a7, tp, t4
                  xor          t6, a7, s2
                  srli         s0, a1, 1
                  srli         t1, a4, 5
                  sub          ra, s10, s2
                  sra          a4, s3, s5
                  srli         t6, a4, 0
                  srli         a2, s5, 17
                  slti         a4, sp, 1405
                  add          a3, ra, t0
                  ori          gp, t0, -372
                  lui          s8, 396933
                  slt          s2, zero, t1
                  nop
                  slt          t2, t0, a6
                  nop
                  srai         a7, s10, 24
                  sub          a3, s6, zero
                  lui          ra, 782635
                  or           s8, s7, a3
                  xori         s8, a5, -247
                  xori         t0, t1, 942
                  xor          s3, s1, t1
                  lui          t1, 40410
                  sltu         s9, t4, s1
                  sra          t5, t1, t6
                  auipc        s1, 175207
                  ori          sp, s7, 199
                  lui          t2, 71888
                  slt          t6, zero, t1
                  srai         tp, a2, 30
                  nop
                  sltiu        s1, s11, -1241
                  srli         gp, t5, 17
                  nop
                  or           s8, a6, ra
                  ori          t1, a0, -184
                  slt          gp, a7, t0
                  slti         s7, a1, -1669
                  xori         a0, tp, 505
                  lui          s7, 203168
                  sra          t5, a1, t5
                  or           s0, t1, a5
                  slti         t6, t0, 1865
                  auipc        ra, 737000
                  slti         s1, s6, 1394
                  xori         zero, zero, 764
                  srai         s11, a4, 3
                  or           a2, a2, s0
                  xori         s5, s2, -1005
                  slli         a7, ra, 3
                  xori         t5, tp, -951
                  xor          a0, s5, t4
                  and          sp, ra, gp
                  slli         sp, t4, 5
                  sltu         s9, tp, sp
                  sltu         s7, t0, s2
                  sll          t2, s0, tp
                  slti         s3, gp, 1982
                  sra          t4, s6, s8
                  slli         s11, s11, 21
                  slti         t6, t3, -888
                  srli         t4, s7, 18
                  sltiu        s3, t2, -121
                  nop
                  and          s3, s9, zero
                  sltu         t1, a6, t3
                  slli         a7, a3, 16
                  srai         sp, t0, 6
                  sltiu        s9, s4, -306
                  srli         t0, s4, 13
                  ori          a2, a5, -1528
                  nop
                  ori          a7, sp, 1827
                  ori          s9, s5, -1701
                  sll          t5, gp, t6
                  srai         s2, a5, 3
                  andi         t5, t5, -787
                  and          s0, a7, t3
                  lui          t1, 113981
                  sll          a3, s10, s4
                  srai         t4, t5, 28
                  addi         a4, a3, 1702
                  ori          s7, s5, 451
                  xor          s2, s0, s7
                  xori         a1, t5, -1560
                  and          s0, t0, t3
                  sltu         s5, a1, s0
                  sll          gp, zero, a4
                  or           t4, t4, t1
                  lui          s10, 879703
                  srai         a3, a0, 17
                  srl          s8, zero, t2
                  slt          a1, s0, t5
                  ori          a1, a5, -1737
                  sltiu        a2, s6, 1360
                  andi         t2, s5, -389
                  sra          s2, sp, a4
                  slt          s6, t6, t2
                  sltu         a4, s8, ra
                  sub          a7, tp, s9
                  auipc        sp, 789350
                  andi         s0, t6, -1190
                  xor          a4, t4, t1
                  add          sp, a1, s0
                  sltiu        s6, sp, -899
                  and          s2, s2, s2
                  addi         s1, gp, 1366
                  slti         a4, zero, 1825
                  srli         s4, s1, 22
                  slli         t2, s8, 30
                  add          a3, ra, tp
                  srl          t5, s4, t2
                  sltu         s7, s5, s2
                  add          a7, t0, t5
                  and          tp, t1, t2
                  add          a7, sp, s1
                  srl          gp, s1, s5
                  and          t6, a5, a6
                  sltiu        t1, a2, -1158
                  addi         s2, s4, -1209
                  srli         t4, t1, 14
                  slt          t4, s3, ra
                  nop
                  slti         s8, s11, -916
                  andi         a0, s1, -1287
                  addi         s4, sp, 1287
                  slli         s4, a3, 22
                  andi         zero, t6, -719
                  slt          t2, s4, sp
                  add          s3, s11, s5
                  slt          t2, s5, t5
                  sll          s4, s4, t0
                  xor          a2, t1, t2
                  xor          s9, s5, s5
                  sltiu        a3, a0, -1794
                  sub          s4, a4, tp
                  addi         a1, a5, -1840
                  or           t4, tp, s11
                  srai         s5, t3, 28
                  auipc        s11, 933237
                  sub          t1, s4, t0
                  andi         ra, s6, 624
                  xori         zero, s10, 968
                  andi         a4, tp, -362
                  srli         a2, zero, 19
                  auipc        s5, 726143
                  sltu         s3, s8, s11
                  slti         a1, a3, 1172
                  sltu         t5, s3, zero
                  slt          s0, a4, tp
                  sll          s7, a1, ra
                  ori          a2, t2, -1480
                  sll          s1, t2, t1
                  sra          t6, s6, t4
                  andi         a2, s5, 792
                  auipc        s1, 651027
                  sltu         s3, s3, s2
                  andi         s1, zero, -69
                  sltu         t1, s8, t3
                  slt          a7, sp, zero
                  slti         a2, s0, -1051
                  slt          s1, a2, a0
                  ori          s3, a3, -1029
                  addi         t1, s9, 1749
                  srai         sp, s5, 29
                  auipc        s6, 652647
                  srai         t4, s3, 22
                  xori         t6, s10, -586
                  lui          gp, 535484
                  xor          t0, t4, s9
                  xor          t1, a5, a5
                  slti         a4, s2, -239
                  sltu         tp, gp, s9
                  ori          a4, s0, 459
                  sll          a7, s11, t4
                  sltu         a3, s0, ra
                  xor          a4, gp, s0
                  ori          s10, gp, -823
                  slli         s0, tp, 26
                  and          tp, s0, t0
                  and          a2, sp, s1
                  xori         s7, s3, -1177
                  nop
                  addi         s6, s2, -187
                  slli         sp, ra, 0
                  lui          s1, 245855
                  sra          t4, t1, a2
                  srai         s11, s3, 3
                  addi         s9, s8, 414
                  sll          s1, t6, s0
                  sub          s11, s8, s7
                  srl          s2, t1, a5
                  or           s5, t1, s11
                  sra          a4, a7, s6
                  sra          s7, s0, s7
                  srl          sp, zero, t5
                  slt          a2, t3, a2
                  or           s8, t6, t0
                  srai         s1, a7, 22
                  andi         t0, a2, 1603
                  slt          a0, s2, t3
                  srai         s4, t0, 13
                  ori          s8, s0, -57
                  xori         s9, t5, -62
                  srai         tp, s2, 9
                  auipc        s2, 239170
                  lui          tp, 804895
                  addi         s11, s1, -449
                  sra          s1, a5, s0
                  sra          t0, t1, t0
                  or           t0, s4, a0
                  add          t2, a4, sp
                  xori         sp, s0, 1408
                  andi         ra, s1, 2003
                  sltu         s10, t1, t2
                  xor          s11, s8, t4
                  srl          t6, tp, s10
                  addi         a1, a1, -363
                  slt          s9, ra, s10
                  andi         a3, t3, 1328
                  sltiu        s8, t4, 605
                  lui          t1, 734336
                  slli         s10, s0, 1
                  add          s0, a5, s6
                  slt          s5, s5, t3
                  nop
                  or           a0, s6, s1
                  slli         s9, t4, 27
                  sltu         tp, a7, a1
                  ori          s11, s10, -1501
                  and          s9, t1, a5
                  sll          t2, t6, s3
                  or           a7, a3, a6
                  nop
                  sltu         a3, s6, s5
                  addi         s5, a6, 460
                  ori          a0, a1, -356
                  srai         s6, t0, 13
                  add          s2, tp, a7
                  and          s0, a6, a7
                  andi         s5, gp, -115
                  add          a4, a1, s2
                  xori         t1, s3, 1260
                  sub          sp, s7, tp
                  lui          a4, 861590
                  add          t0, a3, a6
                  sra          zero, s0, a4
                  andi         s4, t6, -1837
                  auipc        t1, 416476
                  addi         s5, s0, 1733
                  addi         gp, t4, 285
                  and          s1, t3, tp
                  ori          s3, a3, -645
                  and          a4, s4, sp
                  xor          t2, t4, a1
                  or           t5, s9, gp
                  addi         s0, s6, -466
                  sltu         s10, s11, s4
                  and          s1, s9, a3
                  sub          t6, s3, s10
                  slt          t6, s2, s4
                  slli         t1, a0, 28
                  and          s7, ra, t5
                  add          s6, a5, s5
                  sltiu        t2, s5, 251
                  nop
                  sub          tp, s4, s3
                  ori          s8, s1, 921
                  sra          s1, t6, s6
                  addi         a1, a3, 486
                  nop
                  xor          t2, s8, s4
                  srl          zero, s2, s1
                  slti         t6, s5, 1241
                  auipc        s10, 430879
                  and          gp, s4, s9
                  srai         a2, a2, 24
                  nop
                  sub          t4, t3, s7
                  slt          s6, s1, a7
                  add          s11, ra, gp
                  sra          t6, t6, t3
                  andi         s0, zero, 869
                  addi         s6, s5, 1605
                  and          s9, s11, s5
                  ori          t2, a2, 941
                  xori         a0, t6, 1154
                  srl          s0, tp, s2
                  auipc        a2, 432213
                  ori          gp, a7, -1544
                  lui          zero, 316106
                  srl          s2, a0, s4
                  sra          s2, s0, t1
                  srai         s11, a5, 21
                  ori          s7, s2, -1549
                  srli         s6, zero, 27
                  or           s4, a0, ra
                  srai         s5, s8, 8
                  xor          s1, a2, a3
                  slti         s4, sp, -867
                  sltu         s7, s5, s3
                  addi         t0, s6, 2012
                  xori         t2, a1, 1795
                  or           a4, t1, sp
                  sltu         t1, gp, tp
                  xori         s10, t1, -385
                  srl          s3, sp, zero
                  ori          s0, tp, -1775
                  sltiu        s5, s10, 1779
                  sra          a0, s8, s7
                  srli         s7, gp, 23
                  ori          zero, t1, -516
                  nop
                  sra          zero, t3, t1
                  srli         s4, tp, 9
                  srli         a1, sp, 31
                  or           a0, s3, t0
                  or           s0, a6, s4
                  slt          s1, a5, zero
                  sltiu        t1, s1, -561
                  or           s11, tp, t3
                  or           s1, s10, a6
                  sra          tp, a1, a4
                  sub          a2, s5, s7
                  slti         s2, ra, -1521
                  sll          a1, a3, t3
                  sltu         a3, t0, s8
                  ori          t6, t1, 1912
                  auipc        ra, 826630
                  and          s8, a2, s2
                  and          s0, s10, s0
                  srai         s11, sp, 28
                  slti         s6, t4, -1014
                  sltu         gp, s11, a2
                  sub          sp, a7, s10
                  andi         t5, s8, 1756
                  slti         t0, gp, -1850
                  srl          t6, a1, s3
                  add          s10, sp, a7
                  auipc        s2, 58273
                  sra          s5, s1, t6
                  addi         a0, a3, 1922
                  srl          sp, a2, a1
                  andi         s5, ra, -84
                  srai         t1, tp, 25
                  sub          s8, a2, gp
                  xori         s6, t3, -1070
                  or           s6, a7, a5
                  slli         gp, a7, 30
                  or           zero, t1, s5
                  sll          zero, t5, s10
                  lui          gp, 540006
                  sltiu        t5, zero, -384
                  slli         s9, a1, 19
                  slti         s6, s1, -207
                  srl          s7, s9, a3
                  sub          s7, tp, a5
                  sub          a1, a4, s11
                  or           s4, t2, a2
                  addi         t5, s4, -813
                  slt          t0, a5, s1
                  add          gp, zero, gp
                  and          s9, s1, tp
                  nop
                  andi         s3, t2, 569
                  xor          ra, a2, s2
                  auipc        s8, 672529
                  auipc        s10, 213370
                  sltiu        s3, t0, 270
                  or           s11, s0, gp
                  nop
                  or           a7, a0, t2
                  slt          s2, s0, s0
                  srli         t4, s6, 3
                  sltu         a0, ra, a3
                  xor          a2, s8, t0
                  xori         s8, zero, 250
                  or           a7, tp, a3
                  andi         a1, s4, 1853
                  andi         a0, a2, -1649
                  srli         s6, a6, 17
                  sltu         t1, a5, s10
                  xori         s9, a5, -568
                  lui          s7, 1010122
                  sll          t0, s1, s6
                  slli         s7, a5, 2
                  sra          t4, t3, s3
                  slt          a2, s2, t1
                  srai         s0, a4, 10
                  sra          a3, t0, a3
                  srli         t2, s7, 18
                  andi         s1, s8, 2006
                  sub          a2, s0, s0
                  srli         s8, a3, 13
                  srai         s11, s9, 11
                  xori         s8, t1, 809
                  slli         t0, a6, 18
                  lui          s10, 499331
                  auipc        s7, 579830
                  slti         tp, a6, 1475
                  slti         t5, s2, 70
                  add          gp, a7, gp
                  nop
                  sltiu        s1, s2, -110
                  sra          s8, a6, s1
                  srl          s0, tp, s4
                  srl          s10, s3, a1
                  slti         t5, t4, 464
                  xori         s5, s11, -268
                  slli         a3, s2, 24
                  xor          s5, a1, a7
                  xor          a0, gp, sp
                  slli         s3, a5, 27
                  xor          gp, a2, s8
                  sltu         s9, s9, a1
                  addi         t2, a6, 1003
                  slli         t5, s7, 25
                  sltu         s10, sp, s4
                  nop
                  and          t6, a6, t5
                  slt          sp, t1, a3
                  ori          a1, s5, 1817
                  sltu         zero, a7, s4
                  sltu         a0, s9, s5
                  lui          s11, 1018943
                  sra          a1, a2, t6
                  srl          t4, s1, s3
                  sub          s4, t4, a1
                  sub          tp, s4, s1
                  srai         s5, s7, 26
                  and          zero, s2, t4
                  sltiu        sp, tp, 1789
                  sltu         a4, s1, sp
                  srl          s4, t6, s2
                  slli         a1, s11, 22
                  ori          s11, a3, -187
                  slti         s6, a0, -1182
                  or           s4, tp, s2
                  srli         t1, a6, 3
                  slt          tp, a1, s9
                  xori         t5, a1, -454
                  auipc        s3, 106048
                  xor          s3, s8, zero
                  auipc        zero, 201344
                  slt          s2, a3, s9
                  xor          t2, sp, ra
                  auipc        a4, 589140
                  auipc        t4, 259920
                  and          s8, t6, zero
                  auipc        s10, 971696
                  sltiu        a1, t2, 1245
                  nop
                  andi         s6, a6, -1359
                  nop
                  srli         gp, a5, 1
                  or           ra, s4, s10
                  lui          a4, 864893
                  ori          s0, t4, -958
                  slti         tp, t0, -746
                  slli         t2, s9, 24
                  auipc        a0, 285600
                  lui          zero, 585188
                  andi         t5, s4, -1250
                  srl          t4, a2, s1
                  sub          s4, s5, s9
                  sub          s4, ra, s2
                  xor          gp, s0, s11
                  srl          s8, s10, s5
                  or           a4, a5, s0
                  sra          s5, t4, a3
                  ori          s7, ra, 436
                  sltiu        a2, sp, 187
                  add          t1, s7, s1
                  lui          s7, 678532
                  sll          zero, a2, sp
                  xori         a1, s7, 1515
                  auipc        a1, 398660
                  xor          zero, t5, s4
                  srl          s1, t2, t3
                  xori         a7, s11, -45
                  add          s3, s10, s1
                  sltu         s1, s0, s11
                  andi         t1, t3, -1994
                  sll          a3, s4, t3
                  lui          s3, 600021
                  nop
                  srai         s6, s2, 2
                  sub          s11, s10, t1
                  add          a0, tp, s4
                  sra          t2, s5, a0
                  srli         ra, a4, 8
                  sra          s3, t4, a4
                  srai         s4, a4, 18
                  sub          t5, a1, t1
                  add          s6, s5, s11
                  sll          s4, t5, s4
                  slli         gp, a7, 24
                  and          a0, s2, s6
                  srli         s1, t4, 15
                  sub          a2, t1, a4
                  ori          s2, s9, -1302
                  srli         s2, s11, 30
                  slt          a4, a0, gp
                  sra          s0, s4, t4
                  slt          a7, ra, a6
                  and          zero, a4, a3
                  sltiu        a0, s1, -63
                  nop
                  andi         s5, t2, -297
                  srai         s1, zero, 19
                  andi         tp, t0, -1966
                  and          s3, s9, s2
                  andi         s9, t4, 975
                  ori          gp, tp, -1106
                  slli         s1, a2, 14
                  andi         tp, a3, 708
                  slti         a7, s9, 1131
                  xor          a0, s3, a1
                  xori         s1, a5, 706
                  lui          s10, 973353
                  sub          s6, s8, t1
                  auipc        t2, 1036878
                  addi         s8, s7, -1690
                  ori          t5, a3, -1799
                  sll          a3, a4, t5
                  sub          s11, zero, s5
                  sll          a4, a2, a3
                  sltiu        s10, t4, -589
                  sltu         s11, t6, s6
                  sll          s7, s4, a6
                  nop
                  srl          s7, a1, s5
                  sll          s0, a0, t3
                  xori         s10, gp, 1764
                  and          s10, s10, s3
                  andi         sp, a3, -283
                  nop
                  sub          s6, s8, zero
                  andi         s4, s6, 697
                  or           s0, s7, t0
                  or           t1, a6, a6
                  xori         s11, ra, 1534
                  or           s4, t4, a0
                  sltiu        a4, s1, 2003
                  ori          a7, gp, 567
                  sll          s10, a7, a7
                  add          sp, a0, s0
                  or           s5, a4, zero
                  lui          a3, 691150
                  andi         t2, s9, -374
                  auipc        s3, 778355
                  srli         s6, t3, 21
                  sltiu        s6, t5, -1868
                  or           t6, a2, a0
                  xori         s8, tp, 1886
                  ori          s1, a2, -188
                  srli         tp, a6, 19
                  or           s7, a3, s10
                  auipc        a2, 547214
                  sll          s3, s0, a4
                  ori          t0, t2, 1548
                  sltiu        zero, t2, -266
                  lui          a4, 608406
                  nop
                  sltu         a3, s10, s8
                  srli         s10, s8, 24
                  andi         t0, a1, 1134
                  and          t6, t3, s10
                  sub          sp, s11, a4
                  slti         t5, a5, -1414
                  lui          ra, 134571
                  slti         a1, a4, 39
                  slli         t0, t3, 14
                  xori         s9, s10, -2027
                  xori         a4, zero, -642
                  slt          t5, s9, a5
                  slt          s6, s11, t2
                  addi         tp, zero, -192
                  slti         a2, t1, 1899
                  addi         s5, tp, 1992
                  ori          a1, gp, -2006
                  nop
                  auipc        gp, 251296
                  and          t5, a2, ra
                  sub          s10, s4, s5
                  slt          s0, s9, t6
                  sra          s3, a5, s11
                  sltu         t1, t1, s5
                  slli         t2, s9, 9
                  sltiu        a2, t6, 1456
                  srl          s1, s3, s4
                  andi         s1, t6, -392
                  andi         s8, sp, 792
                  auipc        s7, 1001852
                  add          s9, a0, a0
                  sub          s9, t1, zero
                  srli         s8, s8, 5
                  nop
                  srai         a7, t1, 26
                  slt          t6, t1, gp
                  xor          t1, t0, zero
                  add          t2, a6, gp
                  srai         s0, ra, 1
                  sra          t6, s1, a3
                  andi         s2, s9, 132
                  addi         sp, s11, -319
                  andi         sp, s11, 873
                  srli         a4, a2, 31
                  sra          a0, sp, ra
                  sltu         t0, s8, s2
                  addi         ra, t1, 1603
                  sub          ra, s4, s10
                  sltiu        s7, s6, 522
                  slt          sp, ra, s3
                  sltu         a4, s8, t1
                  or           s9, a7, t3
                  sra          s9, s0, a0
                  or           a1, s11, s3
                  addi         s5, s9, 852
                  andi         s11, a2, -1185
                  nop
                  nop
                  sra          t1, s7, a2
                  sub          s3, s7, s3
                  srli         s4, t6, 21
                  nop
                  sltiu        zero, s4, 860
                  auipc        s6, 74518
                  add          t0, t3, a1
                  ori          gp, t1, -472
                  slli         a2, t2, 30
                  lui          t4, 950475
                  lui          s11, 405528
                  addi         t2, tp, 1853
                  xor          s8, s2, t1
                  and          t5, t2, s1
                  add          s2, a7, t2
                  sltu         a4, t0, s5
                  slli         t5, s1, 2
                  srli         s3, s8, 29
                  srai         s10, s8, 5
                  srl          a3, t6, s10
                  xor          t2, s11, t3
                  sltu         a3, t2, s5
                  srl          s7, gp, s2
                  auipc        a3, 444520
                  sltiu        a2, a1, 1519
                  xori         a4, t6, -1756
                  auipc        a0, 412239
                  srai         gp, s0, 29
                  addi         gp, a5, -1371
                  add          s0, zero, a4
                  nop
                  srl          a3, t0, s8
                  srl          a2, s2, a7
                  andi         s0, gp, 1621
                  slti         t4, gp, -1640
                  slt          t2, s7, s11
                  sltiu        sp, zero, -96
                  ori          s0, t5, -929
                  sra          s10, s2, t5
                  andi         s4, s11, 1253
                  slt          sp, s8, a0
                  and          a2, s2, t4
                  sra          gp, a1, t1
                  srl          t5, s9, s0
                  sltiu        t6, t2, 674
                  andi         zero, a0, -1996
                  slti         s3, s7, -1420
                  auipc        s3, 9872
                  auipc        t6, 394836
                  sub          s10, a7, t0
                  slli         s2, s5, 23
                  nop
                  srl          t0, t5, t1
                  sub          s0, sp, zero
                  srli         s11, t6, 1
                  sltu         gp, a0, t3
                  addi         s8, a6, -1197
                  srl          t6, s6, a3
                  sub          s3, s9, s0
                  add          t1, t5, s10
                  slt          zero, s11, s2
                  srl          t2, a1, s9
                  andi         tp, s2, 1487
                  addi         t2, a2, -1982
                  or           t0, zero, t2
                  add          t5, zero, s0
                  slti         ra, a1, -954
                  srli         ra, a1, 7
                  sltu         ra, a4, s7
                  slli         a3, s3, 0
                  or           a4, s0, a2
                  slti         a7, gp, 1827
                  xori         s6, s11, -442
                  lui          s2, 748410
                  xor          s0, t0, t0
                  ori          sp, t3, -1639
                  sll          a7, t4, s7
                  add          s4, ra, a1
                  sra          a4, s2, s10
                  auipc        s11, 482544
                  sll          t0, s11, t1
                  nop
                  srl          s10, s7, s5
                  xori         t1, s4, -1944
                  srli         a2, t5, 13
                  nop
                  srai         s7, gp, 30
                  and          s2, t5, s4
                  add          s10, tp, tp
                  slti         a2, s7, 605
                  andi         s4, s7, 2003
                  slti         s5, t2, 356
                  sub          tp, s3, zero
                  slli         s4, t2, 28
                  andi         s9, a5, -1761
                  or           s7, a0, t5
                  srai         a3, s11, 4
                  sub          s9, t0, s8
                  nop
                  xor          t0, ra, s7
                  auipc        a7, 79240
                  ori          t2, s1, 1920
                  add          s1, s6, t6
                  xor          zero, s8, t2
                  sll          a0, s5, sp
                  sra          s1, ra, t6
                  add          a1, a0, s3
                  xor          s0, t3, s2
                  slli         s0, s9, 10
                  auipc        a3, 437187
                  sra          sp, a0, gp
                  srli         s1, a4, 3
                  srai         ra, s5, 4
                  sll          t0, t0, sp
                  and          ra, ra, t4
                  sra          a7, sp, tp
                  sltiu        a4, s8, -1831
                  addi         sp, s6, -26
                  nop
                  ori          s7, a4, -885
                  lui          sp, 734095
                  slt          s3, a6, t1
                  or           s7, ra, s7
                  sltu         s1, s3, a2
                  slli         s2, s8, 23
                  srai         a4, s0, 28
                  nop
                  srli         s4, t1, 8
                  addi         s11, s2, -1481
                  srli         s4, t1, 9
                  srli         t6, s9, 11
                  srli         s11, s0, 8
                  xori         sp, a3, -1908
                  lui          ra, 15153
                  slti         tp, a2, -835
                  slli         a0, s4, 28
                  nop
                  srai         s5, s10, 15
                  slli         a1, t3, 7
                  andi         a4, s6, 1236
                  xori         sp, s8, 1496
                  andi         s10, a3, -404
                  srli         zero, t5, 21
                  sll          t6, gp, t4
                  or           s4, t2, a3
                  xori         s0, s9, 53
                  auipc        gp, 296854
                  add          s1, a1, s9
                  sra          ra, t4, s6
                  sltu         t6, t0, a5
                  sra          a4, gp, s1
                  sltu         s9, a1, a3
                  srl          a4, a3, s0
                  andi         s9, gp, 529
                  slli         ra, ra, 13
                  andi         s8, t2, 1539
                  lui          gp, 833112
                  andi         a4, s6, -757
                  sltu         tp, s4, t5
                  lui          s0, 508613
                  srli         a0, zero, 26
                  xori         s3, a3, -535
                  add          s7, a6, s7
                  slli         a7, a1, 24
                  srli         gp, t2, 28
                  ori          s11, t5, -1225
                  slt          s8, s4, s10
                  sra          s6, s1, s3
                  slt          sp, t1, s5
                  sltiu        ra, t6, -88
                  auipc        a3, 626583
                  slli         s2, zero, 18
                  auipc        s5, 660853
                  sltiu        s9, a3, 92
                  xori         s7, s6, -1048
                  ori          gp, s7, 1166
                  xori         s4, a2, -2041
                  srai         s2, a4, 11
                  sub          zero, a0, t5
                  srai         t4, s2, 24
                  sll          a0, a2, gp
                  nop
                  slti         s3, s8, 371
                  sll          t0, s1, a7
                  andi         s3, a3, 917
                  and          t1, s4, t5
                  srai         s6, s7, 10
                  srl          t6, t1, s11
                  srai         zero, t5, 13
                  ori          zero, a4, 202
                  andi         gp, a0, 1569
                  xor          s8, s8, s2
                  lui          s1, 895854
                  sltu         a3, s4, s2
                  sra          t4, s3, s1
                  srl          a4, ra, a5
                  sub          a0, sp, s10
                  xor          t5, t6, t2
                  or           a3, a6, zero
                  xor          a2, a4, s10
                  sll          zero, a3, sp
                  xor          t2, a6, ra
                  xor          s5, a3, t4
                  addi         s1, a4, 452
                  sll          a7, a1, s10
                  slli         a1, s3, 1
                  slti         s6, t1, 144
                  xor          gp, s11, sp
                  addi         s2, s3, -2012
                  ori          s4, s1, 1805
                  andi         s8, a0, 1735
                  lui          s0, 289591
                  and          s3, t5, a3
                  slli         a2, a0, 13
                  slt          ra, a1, a5
                  lui          s9, 872022
                  nop
                  sub          t0, s5, a3
                  slli         ra, s0, 14
                  slt          s6, s0, a3
                  xor          s9, t4, a5
                  sub          t0, t5, tp
                  add          s8, t2, s0
                  slti         t0, s9, -897
                  addi         t1, ra, 1590
                  slti         s11, a4, -884
                  addi         s10, a4, 56
                  sltiu        a2, a1, 629
                  or           sp, a6, s5
                  slli         a2, a5, 5
                  nop
                  sra          t5, s3, s1
                  add          s9, zero, t4
                  sltiu        a1, t2, -1702
                  srl          s3, a2, zero
                  sll          tp, s5, t0
                  addi         ra, ra, 1947
                  srli         s11, a1, 6
                  sltiu        t2, t5, -128
                  addi         s1, a1, 116
                  xori         t0, s2, 938
                  addi         sp, s6, -164
                  nop
                  add          s1, s4, t2
                  slli         s9, t4, 4
                  auipc        gp, 706949
                  slt          tp, s0, a6
                  srl          t6, a7, s2
                  xori         t6, s1, -1340
                  add          s0, t3, t3
                  srl          s3, zero, s4
                  srl          t1, s8, t2
                  nop
                  slli         tp, a4, 9
                  slt          t4, t1, s5
                  and          s1, s0, ra
                  slt          s9, a0, s8
                  auipc        a2, 904780
                  addi         a7, s5, -459
                  xori         s3, s11, 97
                  sltiu        s10, t5, 1712
                  auipc        sp, 52381
                  nop
                  slli         sp, s0, 2
                  sra          s10, s5, s1
                  andi         ra, s11, 588
                  auipc        t6, 656869
                  addi         s11, a0, -761
                  and          s2, s11, t5
                  sra          s5, s3, t0
                  slti         s8, s1, -1312
                  srl          s3, a4, t4
                  slti         a7, s0, 701
                  auipc        s4, 401053
                  slti         gp, t2, -1442
                  srli         t4, t0, 29
                  lui          s4, 476916
                  add          s3, a0, t1
                  nop
                  slt          s9, a0, s1
                  sltiu        s5, t2, -912
                  xori         s4, a3, 1184
                  addi         s7, s8, 1824
                  sra          s0, t6, s6
                  slt          a1, s9, a3
                  sra          a3, s4, a0
                  and          a3, a3, s7
                  sltiu        a4, a1, -775
                  sltu         s10, a0, t1
                  sltiu        s10, a7, 1725
                  and          s0, ra, a2
                  and          a1, a6, sp
                  srl          zero, t6, t0
                  slti         tp, a0, -1089
                  ori          s9, s5, -563
                  srli         a4, s7, 4
                  andi         t5, a4, 1275
                  add          s1, s7, sp
                  srli         a2, s3, 5
                  srai         a1, s7, 2
                  srli         t6, a4, 3
                  sub          t4, a2, t3
                  add          a4, s2, s1
                  slli         a3, zero, 1
                  andi         t6, a1, 474
                  slti         sp, a6, 113
                  sub          s0, a2, s3
                  or           t6, t1, t5
                  slli         a0, sp, 2
                  add          t0, s4, a7
                  srai         a4, s6, 13
                  nop
                  sltu         sp, s0, a4
                  andi         s3, t2, -469
                  sra          s0, s1, s11
                  nop
                  xori         a7, t6, -647
                  lui          t6, 688350
                  sra          sp, t5, zero
                  lui          s2, 473869
                  slt          t4, a0, ra
                  srli         ra, a4, 3
                  sra          s8, a7, zero
                  sltiu        t2, a6, 1821
                  srl          t5, tp, s4
                  andi         t2, s0, 817
                  or           s5, a7, s3
                  and          s1, ra, s11
                  or           t4, a7, t5
                  ori          ra, a4, 231
                  xori         s8, zero, 1460
                  slli         sp, ra, 13
                  sltu         t1, t5, s6
                  sub          s9, a1, t5
                  xori         a3, a2, 319
                  nop
                  sltu         t4, s10, gp
                  sltu         s11, t6, s11
                  nop
                  andi         s11, s8, 215
                  sub          s2, tp, tp
                  addi         a0, t5, -1740
                  srl          s9, t2, t2
                  xori         a3, s8, 430
                  xor          t1, a3, t1
                  auipc        gp, 201791
                  addi         s7, s2, 77
                  xori         s3, t6, 693
                  ori          zero, a7, 627
                  sra          s8, s7, s1
                  auipc        s5, 80898
                  li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           s8, 0x0
                  li           s2, 0x0
                  li           sp, 0xffffffff
                  li           s3, 0xa9a0ff73
                  li           a3, 0x0
                  li           s4, 0x80000000
                  li           a0, 0x80000000
                  li           t2, 0x80000000
                  li           ra, 0x0
                  sub          ra, t4, ra
                  auipc        s3, 124667
                  lui          sp, 246267
                  lui          ra, 554047
                  add          t2, t4, t4
                  nop
                  lui          t2, 138169
                  lui          t2, 221157
                  lui          a0, 98777
                  lui          s4, 953881
                  sub          t2, ra, s8
                  sub          t2, sp, a3
                  lui          s3, 829481
                  add          t2, s8, s4
                  lui          t2, 1038587
                  sub          ra, a0, a0
                  add          s4, s8, sp
                  auipc        s3, 656690 #end riscv_int_numeric_corner_stream_18
                  auipc        s8, 226056
                  sub          a7, a5, s2
                  xor          s2, t2, t5
                  slt          a0, s0, s9
                  xor          s9, a2, a2
                  ori          s11, t1, -776
                  sra          gp, s1, t3
                  sub          s4, t1, s6
                  auipc        a7, 782573
                  xori         s9, t4, -1326
                  lui          ra, 927400
                  sra          s7, a5, a1
                  sub          s7, t0, ra
                  andi         s9, a6, -1751
                  srl          t2, a4, s0
                  nop
                  auipc        a4, 888172
                  xor          s5, t0, tp
                  xor          a7, a6, s4
                  nop
                  sub          s7, s5, a1
                  srli         s6, a1, 16
                  slli         a4, s8, 5
                  sll          s2, s7, t0
                  sub          t2, a0, a5
                  sltiu        s0, s9, -1208
                  slli         t4, a5, 6
                  srli         a0, s5, 1
                  or           t1, ra, s10
                  slti         a0, ra, 319
                  srl          a1, s11, s10
                  srai         a4, s11, 26
                  or           a1, a7, s4
                  slt          s1, tp, tp
                  add          a3, s2, a6
                  and          t5, t6, s0
                  slt          zero, a0, s4
                  slti         s9, a1, -578
                  slli         gp, t5, 0
                  srli         t4, s7, 31
                  srl          a1, t6, t5
                  xor          s3, t3, s5
                  nop
                  or           t6, a0, a2
                  sltu         s10, ra, t5
                  xor          s2, gp, s2
                  and          t4, a6, a4
                  ori          t2, t5, -1517
                  lui          zero, 25640
                  andi         gp, sp, 271
                  andi         t1, s0, -1482
                  sub          a2, a5, a3
                  or           t2, s9, s2
                  add          tp, s10, s0
                  slti         a7, t1, -1664
                  lui          t2, 194964
                  xori         gp, s4, 1074
                  add          ra, ra, t5
                  srai         s5, s7, 9
                  auipc        s10, 785679
                  xori         t5, s9, -1425
                  slti         s11, a0, -872
                  or           t5, a7, s1
                  addi         s0, s7, -129
                  srli         s3, t1, 3
                  srl          tp, zero, t3
                  addi         sp, a2, 615
                  and          t5, a2, a6
                  srli         s4, a0, 16
                  or           a7, t1, a7
                  ori          tp, s10, -1802
                  sltiu        sp, t4, -982
                  xor          s0, s2, s8
                  srl          s2, s8, s0
                  or           s1, s0, s3
                  xor          t1, t0, t3
                  add          s8, s2, s5
                  sra          tp, sp, sp
                  andi         s4, sp, -586
                  sltu         t2, a4, t5
                  slti         s5, s7, -1380
                  auipc        a2, 555066
                  addi         s1, t4, 297
                  slli         s10, s9, 6
                  xori         ra, s10, 1830
                  srl          s8, a5, s4
                  addi         s10, s8, 740
                  addi         sp, s2, 1749
                  xori         s11, t3, 481
                  srai         a4, t4, 9
                  slt          s9, t2, s7
                  add          t0, s2, s5
                  sub          s5, a1, t1
                  lui          s2, 380928
                  xori         t2, s2, 1925
                  and          t0, tp, s7
                  srli         t5, s2, 4
                  srli         s11, t6, 22
                  sltu         s3, s4, a0
                  sra          s1, s0, ra
                  and          a7, t0, s5
                  srl          t0, t5, s1
                  xori         s11, a6, -644
                  addi         a7, t2, 1980
                  sra          t4, a5, s5
                  sll          s11, gp, a4
                  xori         a3, s0, 296
                  and          s11, s1, s0
                  xori         s3, s7, -344
                  xor          t2, a4, s4
                  andi         s2, a4, -1050
                  sll          gp, a7, s3
                  ori          s1, s0, 1882
                  and          s0, sp, s3
                  or           a3, a4, a7
                  and          a1, s2, a3
                  slli         a1, a7, 28
                  srli         s1, t0, 20
                  and          s7, t3, gp
                  ori          s9, s5, 1117
                  nop
                  addi         a2, a0, 1835
                  xor          t5, t5, s11
                  srli         gp, t1, 16
                  nop
                  and          s1, a6, s8
                  andi         s11, s5, -78
                  sltiu        t4, s7, 1012
                  li           t5, 0x0 #start riscv_int_numeric_corner_stream_10
                  li           s0, 0x80000000
                  li           s11, 0x60d99b9c
                  li           tp, 0xffffffff
                  li           a0, 0xffffffff
                  li           ra, 0xc915d543
                  li           s7, 0xffffffff
                  li           s3, 0xffffffff
                  li           t0, 0xffffffff
                  li           t1, 0xffffffff
                  addi         s0, ra, 1819
                  lui          s3, 532384
                  add          tp, s7, s3
                  sub          ra, s3, s11
                  sub          s3, a0, t1
                  sub          s0, t1, t1
                  auipc        s11, 420399
                  add          ra, s11, tp
                  auipc        s3, 949349
                  nop
                  add          ra, s0, s11
                  addi         s0, s7, 1600
                  addi         a0, t1, -175
                  nop
                  nop
                  addi         t0, t0, 1584
                  add          tp, t0, t0
                  addi         ra, t5, -1754 #end riscv_int_numeric_corner_stream_10
                  srl          s0, t2, a2
                  sltiu        t2, s9, 529
                  sll          sp, tp, s3
                  sra          a1, a4, t4
                  ori          a7, t2, 1638
                  nop
                  xori         s3, t6, 1026
                  slti         s6, a3, 1162
                  sra          sp, gp, s10
                  srai         t6, t0, 26
                  andi         s8, s8, -498
                  sub          s10, a3, tp
                  addi         ra, a6, 91
                  xori         s11, t5, -336
                  lui          zero, 749291
                  slli         tp, a1, 14
                  add          s0, t3, a4
                  sra          s8, s3, a2
                  srl          s0, a6, zero
                  or           zero, s8, a5
                  srli         tp, tp, 12
                  andi         s8, a2, -1621
                  sll          s8, a5, s0
                  andi         s8, a3, -612
                  slli         s0, a1, 24
                  slti         s10, s7, -450
                  srai         t6, t4, 9
                  sltu         gp, a5, s10
                  srl          s7, tp, t3
                  srli         a1, ra, 18
                  xor          s3, tp, s9
                  sub          zero, t2, ra
                  srai         s0, a1, 25
                  addi         tp, s0, -1503
                  or           a2, tp, a0
                  nop
                  or           t2, t2, s6
                  slti         a0, t0, -1157
                  sll          t0, a5, s7
                  andi         s1, s4, 1520
                  sltu         a0, t4, a3
                  slli         t5, a1, 14
                  xori         a0, t0, 932
                  xor          s7, a2, s4
                  xor          s7, ra, a0
                  sltu         s2, a6, s7
                  ori          a7, t3, -1870
                  addi         tp, a2, 313
                  sll          s7, t6, s0
                  and          a4, s8, s3
                  xori         t5, s11, 1201
                  and          t4, a1, s11
                  sub          s8, t4, t2
                  or           s10, a1, t5
                  and          s10, s0, s6
                  addi         a7, sp, -470
                  slt          a7, t3, a4
                  andi         s7, t5, -1201
                  srli         s7, t4, 5
                  sll          tp, a2, sp
                  srli         s3, a7, 28
                  andi         sp, a4, 2024
                  lui          zero, 207091
                  slt          ra, a6, t4
                  srli         ra, s9, 8
                  sltiu        ra, a6, -72
                  srli         s8, s6, 18
                  nop
                  xor          t5, t0, a5
                  addi         a0, t0, -377
                  sltiu        s9, t6, -1830
                  addi         t1, a1, -837
                  xori         ra, a5, 883
                  xori         t6, s9, 2039
                  xori         t5, t2, -1789
                  xori         s0, s7, 601
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           ra, 0xffffffff
                  li           a3, 0xffffffff
                  li           s11, 0x0
                  li           s2, 0x0
                  li           s3, 0xe2537105
                  li           sp, 0x2a8e7a91
                  li           a7, 0x0
                  li           t0, 0x80000000
                  li           gp, 0x80000000
                  lui          gp, 580551
                  add          s3, s2, gp
                  add          gp, a7, s3
                  add          s2, gp, s2
                  nop
                  sub          a3, ra, s2
                  sub          sp, s3, s2
                  auipc        sp, 166596
                  lui          a7, 175395
                  lui          a7, 587364
                  lui          ra, 58662
                  add          s11, sp, s11
                  auipc        s2, 602099
                  add          t0, t0, s2
                  nop
                  nop
                  addi         s11, s11, -162
                  lui          t0, 928489
                  nop
                  auipc        t0, 446887
                  lui          s2, 1046902
                  auipc        s3, 919200
                  sub          a3, s2, ra
                  auipc        ra, 1015627
                  nop #end riscv_int_numeric_corner_stream_7
                  srli         gp, t5, 18
                  ori          t2, a7, -842
                  or           tp, t3, t4
                  slli         ra, t0, 10
                  sub          a1, s10, a0
                  srai         a3, t2, 18
                  ori          t5, t5, -1128
                  or           s3, a1, ra
                  nop
                  addi         s11, s7, -130
                  lui          t0, 895930
                  sltu         a7, s3, s1
                  srli         s10, s9, 5
                  xor          a1, ra, s5
                  add          s10, a0, tp
                  lui          a3, 879183
                  sra          s7, t1, s3
                  sub          a4, a5, s0
                  srl          tp, s1, s2
                  sltiu        gp, s7, 484
                  and          t1, a2, tp
                  or           zero, t1, s1
                  xori         tp, a7, -603
                  sll          t1, s3, s6
                  xor          s5, a2, t4
                  or           s2, zero, gp
                  or           s7, s4, s7
                  and          t2, tp, s4
                  lui          s4, 147323
                  andi         ra, a0, 29
                  or           s0, t0, tp
                  srl          t4, a0, t3
                  sltiu        a3, s9, -77
                  or           a3, gp, s11
                  sll          t1, s4, a2
                  slli         a4, s1, 24
                  lui          sp, 960411
                  sra          s4, a3, t5
                  nop
                  auipc        ra, 294601
                  andi         s4, t6, -126
                  srli         s3, a7, 31
                  sll          tp, a7, s4
                  sub          s8, a3, t1
                  lui          s1, 625685
                  srl          s6, a0, s0
                  srli         s10, s8, 19
                  auipc        s4, 546160
                  srli         a2, t0, 6
                  add          a1, a5, a6
                  andi         t5, t0, 732
                  xori         t2, s9, -1905
                  sltu         gp, tp, s5
                  slt          s6, zero, a0
                  slti         s4, a3, 1320
                  sra          s6, t6, a0
                  srl          t5, s8, s1
                  sltu         t4, t3, a7
                  ori          s8, a7, -646
                  sll          s6, gp, s0
                  slti         t4, s9, -1791
                  lui          zero, 947700
                  slli         a0, a1, 6
                  slt          s0, a0, t3
                  sltiu        s0, s11, -765
                  srai         a2, a5, 6
                  slt          s8, s6, s11
                  xor          a1, a2, s7
                  srai         s9, t1, 27
                  slti         s7, s0, 1829
                  sltiu        s2, t4, 1545
                  slli         t5, s10, 26
                  lui          s2, 1018150
                  sra          t2, t3, tp
                  sra          sp, a1, a3
                  slti         s6, a0, -1482
                  srai         s7, tp, 1
                  auipc        s5, 815386
                  and          gp, ra, a7
                  xori         a3, t0, -1949
                  add          s3, s2, s6
                  nop
                  xori         s9, a4, -991
                  add          s5, ra, tp
                  auipc        s5, 451843
                  sub          a0, s4, t2
                  sra          t1, ra, a2
                  slti         ra, s7, 628
                  sub          ra, s8, t4
                  ori          a4, s8, -1757
                  or           s5, t6, s6
                  srai         s4, zero, 26
                  add          s9, t1, s6
                  sra          s0, t5, a4
                  sub          tp, a2, t1
                  slli         s4, zero, 8
                  sltiu        a4, s5, -753
                  sltiu        zero, s4, -842
                  srl          s6, s2, s9
                  and          s10, a3, t6
                  sltiu        t4, s5, -497
                  srai         s8, gp, 24
                  xor          tp, a1, s2
                  slti         s10, a6, -256
                  srli         s11, t5, 12
                  auipc        t2, 748322
                  lui          zero, 1031348
                  slli         t6, zero, 17
                  sltiu        s2, a4, -1474
                  or           a1, a1, a3
                  lui          s7, 225707
                  sra          t5, a3, t3
                  sra          t2, a1, s6
                  srai         t1, a2, 16
                  nop
                  sra          ra, gp, s3
                  slli         sp, s6, 1
                  srli         zero, t5, 6
                  xori         ra, t5, -5
                  or           s7, t0, t5
                  srli         s6, s8, 22
                  slt          s9, ra, s5
                  addi         t2, t4, -1587
                  sll          zero, s2, ra
                  lui          a7, 852961
                  xori         a2, a2, -595
                  slti         t1, s9, 1206
                  lui          a4, 703045
                  sra          s1, t0, s10
                  xor          s4, s8, s8
                  sltu         s0, ra, ra
                  slli         tp, s5, 29
                  lui          tp, 79478
                  slli         s2, s3, 9
                  or           t5, a4, sp
                  xor          s11, s0, s10
                  srli         s0, t3, 16
                  slti         s2, s8, 1618
                  slli         ra, s0, 7
                  addi         a0, a2, -349
                  xori         s8, s8, -1931
                  auipc        t6, 387674
                  sub          s6, t6, t5
                  ori          zero, t4, -1036
                  and          s1, ra, s11
                  nop
                  srli         s5, s2, 25
                  slli         tp, s1, 13
                  sltu         a1, a3, a4
                  srl          t4, t2, a7
                  srli         s8, t5, 13
                  slli         s1, t5, 19
                  addi         s1, s2, -924
                  slti         s4, t1, -1719
                  andi         s0, tp, -1264
                  addi         s3, a4, -1620
                  slti         s11, t4, -1785
                  sra          ra, s11, t4
                  srli         a1, t2, 26
                  sll          s3, zero, s5
                  srai         s7, t3, 14
                  ori          s1, s3, 471
                  sltu         ra, t2, t1
                  or           t6, t4, t4
                  xor          s0, a1, a5
                  xori         s4, a7, 1360
                  sltiu        ra, s4, 1630
                  xori         t6, gp, 1814
                  slli         t1, zero, 19
                  sra          a2, t2, t4
                  slt          s1, a0, a6
                  srl          s8, t4, zero
                  lui          s1, 408282
                  nop
                  addi         t2, s8, 354
                  ori          s11, t3, -779
                  slt          s10, a5, s11
                  and          s5, s4, a4
                  sltu         t1, a1, t0
                  add          s7, s10, s11
                  xori         s6, t4, -1677
                  auipc        s8, 947345
                  srl          s2, t3, s8
                  or           gp, t3, s4
                  slt          s11, s7, s4
                  sub          a7, t3, a1
                  or           s10, a1, s10
                  sltu         a7, t5, s8
                  ori          t1, gp, -2000
                  ori          t5, s6, -66
                  srli         s0, ra, 7
                  sltu         t6, s2, a6
                  andi         zero, s8, -1136
                  lui          s9, 994252
                  lui          t1, 487084
                  auipc        zero, 581599
                  slt          t4, a6, s10
                  slli         t6, s10, 2
                  sra          a0, s7, s10
                  or           s7, tp, s2
                  sra          s11, t1, tp
                  sra          t6, a6, s1
                  sltiu        s10, a1, -264
                  add          t0, s4, a7
                  add          s9, s0, a4
                  sll          sp, t0, a0
                  sltu         ra, a2, s11
                  srli         a3, a6, 5
                  xor          t4, s5, s10
                  add          t2, s11, a1
                  sltu         s5, s10, a4
                  add          s1, t0, a7
                  srl          a4, s5, t6
                  auipc        t5, 404737
                  addi         a2, t6, 724
                  slli         s4, a0, 24
                  lui          s10, 1041454
                  sub          s3, tp, t0
                  xor          s3, s0, a0
                  sltiu        ra, s5, 626
                  xor          s5, s1, s5
                  andi         a2, a5, 855
                  sra          s4, a1, sp
                  slti         t5, t3, -1686
                  auipc        t4, 94531
                  xor          s11, a7, s11
                  slt          s6, s3, a2
                  xor          t6, t5, s4
                  srl          s4, s3, s2
                  addi         t5, a0, -1909
                  auipc        t5, 949286
                  sltu         a4, s7, a2
                  srai         a2, t1, 31
                  xor          a7, a3, s11
                  lui          s0, 722297
                  xori         a7, zero, 1929
                  xori         a1, s0, 567
                  add          s8, a5, tp
                  slt          s10, sp, zero
                  srai         s9, s11, 21
                  srli         t0, gp, 25
                  and          s9, sp, a0
                  andi         s10, s6, -325
                  sltu         a4, t0, t2
                  sll          gp, sp, a7
                  srli         s6, s2, 28
                  add          s3, ra, t1
                  sltu         a7, a2, s1
                  add          s0, t6, t3
                  ori          s0, a7, 1026
                  nop
                  ori          ra, t5, 1336
                  or           t0, t4, t6
                  slli         t5, zero, 10
                  srli         s8, s3, 15
                  and          t6, t1, s10
                  nop
                  sub          s5, sp, t6
                  srai         t6, a4, 19
                  slti         gp, s2, -278
                  slti         s3, t3, 1028
                  slt          t0, t5, tp
                  sltu         a0, t6, gp
                  nop
                  slt          s3, t1, a0
                  andi         t0, s9, -38
                  sub          s5, gp, a1
                  srai         ra, s3, 14
                  ori          t0, zero, -1218
                  xor          t4, s4, ra
                  sll          a4, s2, t0
                  and          s0, zero, a0
                  slti         s10, a6, -957
                  sll          s3, a7, s3
                  sll          s11, t5, a2
                  nop
                  sltiu        s10, a0, -936
                  sub          t4, s10, t3
                  sub          t6, a4, a0
                  auipc        t2, 669651
                  srli         tp, s8, 17
                  ori          s7, sp, -616
                  xori         t0, s11, -1696
                  and          t4, t3, s11
                  srl          t5, s3, a0
                  add          t1, t4, s5
                  and          s8, t5, a6
                  sra          sp, s11, s8
                  andi         a7, s1, 1162
                  sub          a2, s9, s6
                  andi         s1, ra, 1246
                  andi         t5, s1, -401
                  slli         a0, a7, 14
                  sra          s5, s0, a0
                  sra          s11, a4, a5
                  xor          a4, s0, zero
                  srl          tp, ra, t1
                  auipc        s6, 581554
                  add          a4, tp, s11
                  srai         tp, t6, 23
                  xor          a3, sp, s11
                  srai         t0, s9, 15
                  sll          s2, s1, a4
                  add          s5, a4, sp
                  auipc        s8, 925
                  addi         tp, t0, 981
                  sltu         t2, ra, tp
                  srli         tp, a7, 11
                  sll          a4, s6, t0
                  lui          s5, 317187
                  slti         a0, s2, 1952
                  sub          s6, t6, tp
                  xor          s7, s5, t4
                  or           s7, a2, s3
                  andi         ra, s10, 1642
                  or           s10, sp, s5
                  addi         a2, a7, -1956
                  sub          s10, tp, t1
                  sub          t6, a7, s8
                  auipc        gp, 778446
                  slti         s11, sp, -1001
                  sll          s3, s8, t1
                  and          s3, t3, t1
                  srli         t4, tp, 1
                  andi         s6, a2, -1124
                  srai         a3, a5, 11
                  auipc        s10, 209151
                  slt          t1, tp, ra
                  srli         s0, t6, 18
                  add          s10, s3, t2
                  sra          t1, a0, t4
                  slli         a4, s3, 7
                  xori         tp, s3, 1981
                  nop
                  sll          s11, s6, s8
                  nop
                  srli         t2, s1, 7
                  sltiu        s8, s11, 1688
                  srli         s9, a2, 19
                  slli         a3, s0, 7
                  srai         s8, s1, 13
                  and          a0, s9, gp
                  xori         t0, zero, 298
                  lui          a0, 975932
                  add          a4, s9, a1
                  nop
                  sltiu        s8, t0, 1991
                  and          s3, s8, ra
                  slli         s3, s1, 3
                  ori          s4, s0, 551
                  add          a1, s10, s6
                  sub          s0, ra, t6
                  ori          t2, s11, 1201
                  srl          a0, s1, a0
                  add          s10, zero, t3
                  xori         s5, s7, -1224
                  sltu         s11, a7, s5
                  and          a2, s8, a3
                  or           a1, a4, t6
                  andi         t2, s9, -1393
                  andi         gp, s2, 482
                  srli         s5, a6, 4
                  add          a3, a2, t4
                  andi         t4, s11, -419
                  sub          s6, t1, a4
                  xori         ra, s1, 1434
                  srai         t6, s4, 1
                  and          s3, s0, a4
                  sltiu        t5, t4, 1569
                  slt          t6, a1, t5
                  srai         s7, a5, 10
                  nop
                  andi         s1, a0, 918
                  xori         gp, tp, -462
                  or           t5, t3, t0
                  add          s5, s2, a6
                  srai         t4, s7, 11
                  auipc        s6, 153745
                  and          s2, s9, ra
                  nop
                  srli         t1, a0, 17
                  lui          gp, 269483
                  ori          s4, s6, 502
                  xori         s4, s0, -533
                  andi         gp, t2, -19
                  slti         gp, t4, -1850
                  srli         a3, a3, 2
                  sll          t6, s2, tp
                  nop
                  and          s8, a7, s10
                  sra          s2, s0, t6
                  auipc        t4, 58961
                  sltu         t4, gp, a0
                  addi         t5, a3, 462
                  lui          tp, 653613
                  srl          s6, t6, s1
                  sub          s10, zero, a5
                  slt          s7, s9, a6
                  slt          a3, ra, t0
                  sltiu        s8, s7, -272
                  andi         a3, s0, -1775
                  slti         t6, t0, -1251
                  slt          t0, a7, t6
                  sll          s8, s3, gp
                  lui          a3, 70363
                  slti         zero, s7, 1507
                  srli         s8, a6, 22
                  nop
                  sltu         t1, t6, s2
                  srli         s10, a0, 14
                  addi         zero, zero, 41
                  slli         s4, s10, 25
                  xori         a3, a4, -1312
                  auipc        ra, 392019
                  sltu         t6, a3, a7
                  sra          a1, t4, ra
                  ori          a2, t3, 1534
                  ori          a4, s10, 1649
                  auipc        tp, 890941
                  xori         t1, a1, -770
                  xori         t2, a3, -558
                  sltiu        zero, a3, 703
                  slt          s1, s0, s2
                  srli         zero, t1, 23
                  srli         t0, a0, 12
                  nop
                  sra          s7, s2, s3
                  xor          t1, gp, a6
                  xor          tp, s2, s7
                  nop
                  sltiu        sp, a0, -246
                  xor          s1, sp, tp
                  ori          s8, s9, -174
                  slli         zero, zero, 3
                  or           t2, s0, s3
                  or           s7, t6, s2
                  slli         a2, t5, 10
                  nop
                  sll          s2, zero, a2
                  sll          s6, s4, t6
                  andi         s10, s1, 1178
                  xori         s4, s6, 973
                  slli         t2, s5, 14
                  slti         s7, a6, -534
                  srli         s3, a3, 4
                  slti         s4, a1, 1925
                  xori         t5, s7, 303
                  nop
                  andi         a2, a1, 1714
                  andi         gp, a1, 2035
                  andi         s3, a4, -1251
                  sub          s0, s1, s0
                  srl          s5, s11, t5
                  addi         t5, s7, 1216
                  xor          tp, a7, t1
                  xor          t1, a0, s4
                  add          t5, t6, s2
                  sub          s11, s4, sp
                  nop
                  xori         a2, sp, -76
                  andi         a3, t6, 1872
                  sltu         tp, s4, a4
                  sll          zero, zero, a0
                  andi         s10, s11, -219
                  sra          s8, tp, s9
                  sra          s8, t3, s7
                  sra          gp, s0, a0
                  sra          s11, s6, t6
                  srl          t0, s6, zero
                  xor          s6, t5, s0
                  auipc        s11, 172465
                  andi         t6, a6, -38
                  add          s4, s9, t1
                  auipc        tp, 25899
                  xor          s7, a5, s11
                  andi         s5, t2, 1748
                  sub          s4, t5, a5
                  or           a4, s1, s9
                  add          t4, a5, s10
                  slli         s1, zero, 16
                  sra          s2, a3, s2
                  sll          gp, s6, s4
                  andi         t2, t4, -1686
                  addi         t1, t0, 1401
                  auipc        t4, 650099
                  sll          s3, a7, ra
                  sll          tp, t3, s3
                  or           sp, t1, s4
                  sra          t5, s11, t4
                  and          a2, s0, a3
                  sltu         a3, t6, t6
                  slli         s4, s7, 9
                  srai         t5, s9, 14
                  ori          a3, a2, 1768
                  sltiu        t0, a5, 295
                  add          t0, a4, t1
                  andi         a7, s6, 1336
                  nop
                  andi         a7, zero, -1907
                  srli         s0, a0, 8
                  srli         s5, tp, 21
                  xor          s0, s1, s7
                  auipc        a3, 252151
                  slli         zero, s8, 5
                  sub          s5, s5, s10
                  srli         s2, a7, 0
                  slt          tp, gp, a4
                  srai         t0, a6, 24
                  nop
                  srli         gp, s8, 26
                  slli         t6, s1, 23
                  xori         ra, a6, -1281
                  sub          s5, a5, s3
                  sltiu        s5, a0, 275
                  srl          s5, s3, gp
                  srai         gp, t6, 28
                  slli         a3, s11, 4
                  andi         zero, s0, -704
                  or           s3, s3, s3
                  and          t1, s3, t6
                  sltiu        t1, a6, -316
                  slti         s7, s2, -1987
                  ori          t5, a3, 536
                  slli         s10, gp, 30
                  srl          s5, a7, s9
                  add          tp, s3, ra
                  lui          ra, 722139
                  addi         t4, a5, 1465
                  or           s9, t0, a5
                  xor          s0, a7, s11
                  srl          s7, t2, s9
                  or           s9, s4, s11
                  slli         a2, a5, 8
                  auipc        a1, 654033
                  ori          a7, gp, 1957
                  sltu         t2, s7, s7
                  lui          a1, 666368
                  auipc        a3, 984821
                  xori         t6, a2, 1863
                  srl          s2, t2, a0
                  sll          s11, s4, a5
                  andi         zero, t0, 881
                  andi         a1, t1, 494
                  nop
                  slli         sp, a6, 12
                  auipc        sp, 217088
                  srai         a0, s2, 15
                  and          gp, s0, t3
                  auipc        t1, 525127
                  slt          t4, zero, a5
                  add          s11, s2, zero
                  srai         tp, a0, 9
                  slli         gp, s11, 16
                  srl          t4, a1, a6
                  ori          s1, s5, -583
                  addi         a7, s1, 516
                  sll          s1, s4, s10
                  slt          a0, gp, t6
                  auipc        a0, 552504
                  nop
                  ori          s2, a2, 1759
                  xor          s1, s0, ra
                  sll          s2, a3, s7
                  sub          s4, a5, s5
                  sltu         s6, s2, a7
                  xori         s3, s4, -703
                  and          s4, t2, zero
                  lui          t1, 249755
                  auipc        a1, 813694
                  add          s9, s1, s1
                  srli         a0, s10, 1
                  lui          a7, 974303
                  and          a3, a6, t4
                  or           s1, tp, s7
                  add          zero, s6, a7
                  xori         s1, t0, 231
                  xor          a1, s3, s1
                  xori         gp, s10, 1681
                  sll          s5, s7, s9
                  slli         s6, tp, 31
                  sub          tp, t2, a2
                  slti         gp, s0, 1587
                  sub          zero, a7, a6
                  add          s7, t0, s4
                  sltiu        s10, t6, 321
                  lui          ra, 610974
                  srli         t0, s3, 15
                  xori         t0, s4, 756
                  sltiu        zero, a0, 1164
                  nop
                  sltiu        s11, t4, 1589
                  andi         zero, a0, 383
                  sltu         t5, s2, s7
                  srai         t4, gp, 30
                  and          a2, s6, s3
                  add          t2, t0, t2
                  xor          s1, s2, a5
                  andi         s5, a4, 1575
                  auipc        s4, 242348
                  andi         t1, a7, -647
                  addi         s2, a5, -1327
                  sub          a3, a1, a4
                  auipc        t0, 486046
                  srl          ra, t5, s1
                  sltu         sp, a6, s2
                  xor          t2, s5, s7
                  slt          t1, ra, t5
                  srl          s7, gp, zero
                  srli         a0, t5, 14
                  ori          t6, s9, -513
                  andi         tp, a4, 1444
                  auipc        s10, 686078
                  sltu         s7, gp, s10
                  andi         s9, s1, -1141
                  xori         s1, s3, -328
                  ori          a2, s0, 1001
                  addi         s7, s10, 751
                  add          s6, a1, a4
                  add          s6, t2, s1
                  slti         t4, t2, 1050
                  srl          t6, t3, a3
                  srl          s8, t2, a1
                  sll          a3, t5, tp
                  slti         ra, s11, -515
                  andi         s8, t1, 510
                  add          s9, s5, t4
                  xori         s0, s3, 373
                  slt          s11, zero, t6
                  add          s0, t0, s10
                  or           a7, a3, t5
                  auipc        s10, 23017
                  ori          s11, ra, -1530
                  srli         sp, s10, 21
                  andi         zero, s10, 545
                  auipc        a4, 174857
                  auipc        s0, 708837
                  srli         s6, a2, 5
                  sra          s7, a0, a6
                  srli         tp, a0, 9
                  sll          a0, t5, a6
                  sltu         s2, s1, a5
                  srli         a4, s2, 14
                  ori          s8, t4, -258
                  sub          sp, s5, s3
                  xori         tp, t2, 1391
                  srli         a1, a0, 8
                  and          tp, t1, t6
                  lui          sp, 969934
                  sll          sp, t2, zero
                  srai         a7, ra, 12
                  slti         a7, t6, -1789
                  slt          s8, s11, s5
                  sub          t2, s6, t3
                  andi         s11, t2, 387
                  srl          gp, t6, t6
                  auipc        t4, 646161
                  slti         s8, s11, -1726
                  auipc        gp, 993389
                  nop
                  srai         s7, tp, 6
                  xori         s7, zero, -1909
                  slt          gp, s11, a5
                  nop
                  sll          sp, t1, s8
                  sll          a1, a3, s3
                  or           a1, s10, a6
                  xori         s7, s10, -1787
                  la x15, test_done
                  jalr x0, x15, 0
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
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x28, x16, zero
                  csrr x17, 0x300 # MSTATUS
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 31
                  bne x17, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x17, 0x341 # MEPC
                  csrr x17, 0x342 # MCAUSE
                  li x4, 0x3 # BREAKPOINT
                  beq x17, x4, ebreak_handler
                  li x4, 0x8 # ECALL_UMODE
                  beq x17, x4, ecall_handler
                  li x4, 0x9 # ECALL_SMODE
                  beq x17, x4, ecall_handler
                  li x4, 0xb # ECALL_MMODE
                  beq x17, x4, ecall_handler
                  li x4, 0x1
                  beq x17, x4, instr_fault_handler
                  li x4, 0x5
                  beq x17, x4, load_fault_handler
                  li x4, 0x7
                  beq x17, x4, store_fault_handler
                  li x4, 0xc
                  beq x17, x4, pt_fault_handler
                  li x4, 0xd
                  beq x17, x4, pt_fault_handler
                  li x4, 0xf
                  beq x17, x4, pt_fault_handler
                  li x4, 0x2 # ILLEGAL_INSTRUCTION
                  beq x17, x4, illegal_instr_handler
                  csrr x4, 0x343 # MTVAL
                  1: la x15, test_done
                  jalr x1, x15, 0

ecall_handler:    
                  la x17, _start
                  sw x0, 0(x17)
                  sw x1, 4(x17)
                  sw x2, 8(x17)
                  sw x3, 12(x17)
                  sw x4, 16(x17)
                  sw x5, 20(x17)
                  sw x6, 24(x17)
                  sw x7, 28(x17)
                  sw x8, 32(x17)
                  sw x9, 36(x17)
                  sw x10, 40(x17)
                  sw x11, 44(x17)
                  sw x12, 48(x17)
                  sw x13, 52(x17)
                  sw x14, 56(x17)
                  sw x15, 60(x17)
                  sw x16, 64(x17)
                  sw x17, 68(x17)
                  sw x18, 72(x17)
                  sw x19, 76(x17)
                  sw x20, 80(x17)
                  sw x21, 84(x17)
                  sw x22, 88(x17)
                  sw x23, 92(x17)
                  sw x24, 96(x17)
                  sw x25, 100(x17)
                  sw x26, 104(x17)
                  sw x27, 108(x17)
                  sw x28, 112(x17)
                  sw x29, 116(x17)
                  sw x30, 120(x17)
                  sw x31, 124(x17)
                  la x15, write_tohost
                  jalr x0, x15, 0

instr_fault_handler:
                  add x16, x28, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

load_fault_handler:
                  add x16, x28, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

store_fault_handler:
                  add x16, x28, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

ebreak_handler:   
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x16, x28, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

illegal_instr_handler:
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x16, x28, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x17, 0x300 # MSTATUS;
                  csrr  x17, 0x304 # MIE;
                  csrr  x17, 0x344 # MIP;
                  csrrc x17, 0x344, x17 # MIP;
                  add x16, x28, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
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
