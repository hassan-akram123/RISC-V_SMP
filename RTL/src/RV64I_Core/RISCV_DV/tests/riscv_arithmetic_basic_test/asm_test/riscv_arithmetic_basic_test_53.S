.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x12, h0_start
jalr x0, x12, 0
h0_start:
                  li x23, 0x40000100
                  csrw 0x301, x23
kernel_sp:        
                  la x8, kernel_stack_end

trap_vec_init:    
                  la x23, mtvec_handler
                  ori x23, x23, 1
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
                  li x0, 0x3ce6fcbd
                  li x1, 0x1ca0dfee
                  li x2, 0xb
                  li x3, 0xc
                  li x4, 0xf0e3a8c5
                  li x5, 0x3
                  li x6, 0xa
                  li x9, 0x80000000
                  li x10, 0x5f0ea775
                  li x11, 0xfac49666
                  li x12, 0x0
                  li x13, 0x4
                  li x14, 0x80000000
                  li x15, 0x0
                  li x16, 0x80000000
                  li x17, 0x0
                  li x18, 0xf759167a
                  li x19, 0xf9c9f7ea
                  li x20, 0x8
                  li x21, 0xf4785858
                  li x22, 0xd71a7cb7
                  li x23, 0x0
                  li x24, 0x658f0033
                  li x25, 0x0
                  li x26, 0x80000000
                  li x27, 0x80000000
                  li x28, 0x80000000
                  li x29, 0xc
                  li x30, 0xf3256d38
                  li x31, 0x80000000
                  la x7, user_stack_end
main:             li           s11, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           s4, 0x80000000
                  li           a6, 0xffffffff
                  li           s7, 0xffffffff
                  li           t5, 0x0
                  li           s10, 0x0
                  li           ra, 0x80000000
                  li           sp, 0xffffffff
                  li           s3, 0xffffffff
                  li           s8, 0x20b721da
                  lui          s3, 725739
                  auipc        a6, 414506
                  lui          s8, 844488
                  lui          s8, 860842
                  nop
                  addi         t5, s8, 115
                  addi         sp, s8, 401
                  add          s11, ra, a6
                  addi         s10, s11, -518
                  lui          s3, 371515
                  lui          t5, 896825
                  sub          sp, s8, s8
                  add          a6, s11, t5
                  addi         s8, s7, -298
                  lui          s7, 892327
                  sub          a6, a6, t5
                  lui          a6, 733215
                  addi         s8, ra, -1657
                  auipc        s11, 939009
                  sub          t5, s8, s11
                  lui          s3, 914138
                  lui          s4, 983399
                  sub          s7, s8, s4
                  auipc        t5, 139720
                  nop
                  addi         s4, a6, 1951 #end riscv_int_numeric_corner_stream_3
                  li           t5, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           s11, 0xffffffff
                  li           a5, 0x6fdbe460
                  li           s1, 0x48da97c4
                  li           a0, 0xffffffff
                  li           ra, 0x0
                  li           a6, 0xd2e9b94b
                  li           t4, 0xffffffff
                  li           a3, 0x80000000
                  li           s8, 0x80000000
                  addi         a0, t5, 1373
                  add          ra, a5, a3
                  add          s11, a3, a0
                  sub          s1, a6, a0
                  nop
                  add          s11, t5, a0
                  add          s11, a3, ra
                  sub          t4, ra, s11
                  auipc        t5, 1000968
                  lui          t4, 509562
                  lui          s8, 140124
                  nop
                  addi         a6, a6, 368
                  sub          a5, s8, ra
                  addi         s1, s1, -1337
                  sub          t4, a5, a0
                  addi         a6, a5, 1103
                  auipc        ra, 1007798
                  addi         a6, t5, 878
                  nop #end riscv_int_numeric_corner_stream_8
                  li           tp, 0xb8de847b #start riscv_int_numeric_corner_stream_10
                  li           sp, 0x8ccf86ec
                  li           a4, 0x80000000
                  li           s5, 0xf8875f00
                  li           a0, 0xffffffff
                  li           s2, 0xffffffff
                  li           s1, 0xffffffff
                  li           a1, 0x7d7fdd5f
                  li           a3, 0xffffffff
                  li           s11, 0x80000000
                  lui          s5, 851910
                  addi         sp, a4, -1738
                  add          sp, a3, sp
                  sub          a3, s1, s11
                  add          s11, s5, a3
                  nop
                  addi         tp, a4, 772
                  auipc        a4, 571826
                  addi         s2, sp, -1704
                  add          a4, s2, a3
                  nop
                  auipc        tp, 827825
                  add          s5, a4, a1
                  auipc        a3, 500359
                  addi         a0, sp, 511
                  lui          a4, 502646
                  addi         a0, s1, -1770
                  lui          s5, 48439
                  lui          a3, 200944 #end riscv_int_numeric_corner_stream_10
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           s1, 0x0
                  li           a4, 0xc130ed65
                  li           sp, 0x0
                  li           a5, 0x0
                  li           a1, 0x80000000
                  li           t1, 0x149ffd9
                  li           s3, 0x80000000
                  li           s7, 0x0
                  li           t3, 0x80000000
                  sub          s3, a4, a1
                  add          s1, t3, t1
                  auipc        a5, 8997
                  sub          sp, s1, s1
                  auipc        a0, 518240
                  auipc        a5, 785313
                  add          s7, sp, s7
                  add          t1, t3, s7
                  addi         a4, s3, -1908
                  add          a1, s3, sp
                  nop
                  addi         s7, s1, -1787
                  addi         a0, s7, 996
                  auipc        t3, 771833
                  addi         t3, t3, -911
                  add          t1, a5, s3
                  auipc        t3, 714605
                  add          a5, s3, a1
                  addi         a1, s7, 1590
                  nop
                  lui          t3, 192726
                  nop
                  nop
                  addi         sp, a1, 839
                  nop
                  addi         s1, s3, -1703
                  add          t1, a0, a4
                  nop
                  lui          a1, 865920 #end riscv_int_numeric_corner_stream_6
                  li           s3, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           a7, 0x80000000
                  li           t4, 0x80000000
                  li           a3, 0x3acf41a1
                  li           s7, 0x80000000
                  li           ra, 0x234f7ae1
                  li           s1, 0x8a93ef72
                  li           a1, 0xb0f2ed94
                  li           t5, 0x80000000
                  li           s10, 0xffffffff
                  addi         s3, t5, 718
                  sub          ra, s1, a3
                  lui          s3, 976199
                  nop
                  add          s1, s1, s3
                  lui          s1, 361762
                  auipc        a7, 18962
                  nop
                  sub          s1, a7, s3
                  add          s10, s7, s3
                  auipc        s1, 230224
                  add          s1, s3, a3
                  nop
                  sub          ra, a3, s10
                  lui          s7, 740848
                  add          s10, a3, a1
                  add          a3, t5, a7
                  auipc        a3, 541518
                  sub          a7, a1, ra
                  lui          ra, 568752
                  auipc        t5, 927615
                  auipc        s1, 452916
                  addi         t5, a1, 1750
                  add          t4, s1, s1
                  addi         s7, s3, -1378
                  auipc        a1, 550070 #end riscv_int_numeric_corner_stream_15
                  li           s5, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           s2, 0x0
                  li           s3, 0xffffffff
                  li           t1, 0x0
                  li           t0, 0xffffffff
                  li           a5, 0x0
                  li           t3, 0x38a0f18c
                  li           a7, 0xffffffff
                  li           s9, 0x0
                  li           a1, 0x0
                  sub          a1, a5, s9
                  sub          t0, s5, t0
                  sub          t0, t1, s2
                  add          s9, a5, s2
                  lui          s5, 577378
                  add          s5, a1, t0
                  sub          t1, a7, t3
                  addi         a1, s3, 1117
                  addi         s2, s5, -1348
                  addi         s9, s9, -358
                  lui          a7, 2977
                  auipc        t3, 447992
                  sub          t0, t0, s3
                  sub          s3, s2, t0
                  nop #end riscv_int_numeric_corner_stream_4
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           s4, 0xb2b796bd
                  li           s10, 0x0
                  li           s8, 0xffffffff
                  li           a7, 0xffffffff
                  li           t0, 0x0
                  li           t1, 0x0
                  li           sp, 0x0
                  li           s9, 0x0
                  li           t5, 0x1608b6fb
                  sub          t1, s9, s8
                  sub          s9, t0, s8
                  add          t0, t5, a7
                  auipc        t0, 817071
                  auipc        t0, 704306
                  auipc        t1, 332349
                  auipc        sp, 643669
                  sub          a7, t0, a0
                  addi         s8, sp, 444
                  sub          s10, sp, s8
                  addi         t0, s8, 598
                  lui          t5, 681355
                  lui          t1, 749945
                  nop
                  auipc        t1, 339335
                  addi         t0, t0, -1497
                  nop #end riscv_int_numeric_corner_stream_12
                  li           gp, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           s4, 0x13fe3d40
                  li           tp, 0x0
                  li           s2, 0x9dda6fd9
                  li           t3, 0x80000000
                  li           a0, 0xffffffff
                  li           t6, 0x80000000
                  li           s10, 0xe494f5d2
                  li           s7, 0xffffffff
                  li           s3, 0x7211f36b
                  nop
                  sub          s4, a0, t6
                  add          s10, a0, gp
                  nop
                  lui          a0, 545619
                  sub          s4, s3, s10
                  nop
                  addi         t6, gp, -892
                  auipc        s2, 698399
                  nop
                  add          t3, s2, tp
                  addi         s10, s10, -673
                  auipc        t6, 569754
                  nop
                  sub          gp, s4, t3 #end riscv_int_numeric_corner_stream_7
                  auipc        t6, 827638
                  srai         t5, a1, 2
                  srl          ra, t4, a7
                  sltiu        zero, s9, 357
                  sltiu        s1, a1, 1668
                  xor          t4, s3, zero
                  sltu         zero, t2, t0
                  andi         a4, a3, -1776
                  andi         s2, s10, -812
                  sltu         t6, s5, s7
                  ori          a1, a2, 603
                  auipc        t0, 347419
                  ori          s11, s9, 2028
                  ori          ra, a3, -640
                  srl          s3, t1, s1
                  sll          s6, a2, t6
                  addi         s5, s4, -1641
                  add          t1, s7, s11
                  sltu         gp, t2, ra
                  xor          a3, a2, s10
                  sll          a0, t4, a4
                  ori          gp, s4, 1550
                  slli         a1, a6, 11
                  slli         sp, s5, 12
                  sll          gp, s6, s0
                  andi         zero, a5, 1543
                  add          a6, gp, gp
                  srli         t3, s5, 26
                  auipc        a3, 546341
                  auipc        s7, 600614
                  sltu         s10, t0, s7
                  ori          a7, a1, -1297
                  or           t3, t2, a0
                  nop
                  andi         t1, t4, 1790
                  sltiu        t6, t6, -1246
                  ori          t1, t0, -1533
                  slt          s8, t5, t1
                  andi         ra, s7, 1411
                  lui          t5, 642840
                  srli         s4, s0, 14
                  sll          ra, a2, sp
                  sub          s3, t3, ra
                  sltiu        a1, t6, 1766
                  and          s5, a3, t0
                  andi         t6, s3, -1084
                  sltiu        s7, a4, 1388
                  andi         a1, t5, 661
                  slt          s1, s2, t2
                  andi         s2, a2, -484
                  srai         t3, t5, 22
                  sltu         s4, t5, s11
                  lui          t5, 228178
                  or           s9, s4, s10
                  srli         s5, a7, 6
                  or           a3, s4, t6
                  add          s7, s9, a7
                  auipc        a6, 860392
                  sltiu        s4, t1, -2045
                  addi         a3, t3, -398
                  sra          t1, a5, tp
                  srai         a7, a4, 31
                  or           a1, sp, s4
                  xor          a4, s9, sp
                  slt          a1, t4, a5
                  sub          s5, s5, ra
                  auipc        s8, 263184
                  add          s8, t1, s10
                  and          t6, s5, a1
                  xor          a0, a3, t5
                  or           a5, t5, tp
                  nop
                  and          t3, t4, t6
                  add          a0, a3, a5
                  slli         ra, s2, 4
                  ori          s9, t5, 100
                  add          t6, s2, t0
                  sltu         ra, gp, s2
                  auipc        a0, 758884
                  slt          s7, sp, t0
                  srl          t0, a0, gp
                  andi         a7, tp, -2019
                  sltu         t6, s2, t0
                  auipc        s11, 64139
                  lui          ra, 1010343
                  xor          a4, s9, t4
                  ori          t1, s4, 1744
                  slli         a7, a1, 17
                  srai         s1, t0, 31
                  xori         gp, a5, 1844
                  and          t0, s2, t2
                  xor          t3, t2, s4
                  add          t5, a1, t1
                  auipc        s2, 746831
                  lui          s4, 210882
                  xor          s3, t4, s9
                  xor          s2, s6, s1
                  auipc        s1, 409069
                  andi         t0, a2, -1529
                  xori         s3, tp, -910
                  sra          s6, s3, a7
                  sltu         s6, s0, s11
                  sll          s6, a5, t1
                  auipc        t4, 157670
                  xori         t0, tp, 549
                  xori         t4, a3, 159
                  nop
                  ori          s3, t0, -697
                  xori         ra, t3, 1950
                  andi         t4, s8, -1230
                  or           ra, a7, a0
                  sra          t3, gp, s8
                  slt          s5, a6, s10
                  srl          a3, s3, s0
                  sub          s4, a2, s11
                  sltu         a6, t1, sp
                  sll          s6, s3, tp
                  slti         s8, s9, -1070
                  slli         gp, s6, 10
                  sltiu        s4, ra, 36
                  sll          a4, s3, t1
                  slti         s8, a2, -340
                  ori          zero, a0, -863
                  sltiu        s3, t0, -1164
                  and          t1, a5, a4
                  add          tp, s6, s11
                  slli         a4, a6, 30
                  lui          t4, 500323
                  xor          a5, s10, t5
                  ori          s1, t5, 49
                  addi         zero, s11, -2046
                  slli         ra, a0, 13
                  xori         t1, s11, 1497
                  xor          s7, a6, a5
                  slli         ra, zero, 24
                  lui          s3, 1013166
                  sltu         s6, s0, tp
                  sub          s11, ra, a7
                  sltiu        a4, s3, 1206
                  nop
                  add          t3, t4, s5
                  xori         a6, a2, -820
                  slli         sp, s5, 0
                  and          t3, sp, gp
                  ori          s5, zero, 1183
                  sub          a6, t0, s2
                  and          s1, a7, a6
                  srli         a6, tp, 16
                  sll          s1, s3, s6
                  srli         a7, t4, 2
                  sll          s3, s2, t5
                  addi         a0, sp, -1870
                  sra          s6, tp, s3
                  slti         t6, a4, 253
                  xor          s10, ra, a0
                  srli         t4, ra, 24
                  nop
                  addi         gp, a6, -1397
                  slti         s3, a3, -1990
                  srli         a7, s3, 0
                  auipc        ra, 996949
                  slti         s3, a3, -971
                  andi         a7, a2, -1218
                  sll          a3, a7, t1
                  sltu         s4, s2, s7
                  ori          s6, s2, -1690
                  sll          a5, tp, ra
                  addi         s8, zero, -610
                  add          ra, a0, s1
                  slli         zero, t4, 0
                  andi         s1, s6, 1347
                  ori          t5, s0, -1387
                  xor          s8, s4, zero
                  lui          s7, 1007784
                  sra          ra, t2, s8
                  sra          t6, t5, t2
                  sltiu        a5, a1, -1016
                  xori         t6, s7, 608
                  slli         s11, s2, 25
                  sra          tp, a7, s10
                  sltu         s4, s9, s4
                  srl          a4, s5, t2
                  xori         a4, a6, -814
                  slt          t1, s6, t3
                  or           a4, s9, t6
                  srai         s9, s9, 3
                  xori         sp, s5, -1976
                  sra          a1, a7, a5
                  srai         tp, a7, 16
                  slti         a3, s11, -958
                  xor          a0, s2, t5
                  slli         a7, t1, 23
                  slti         a1, gp, 713
                  slli         t4, ra, 2
                  sltu         a5, a7, t6
                  or           ra, s0, a3
                  slti         t1, a7, -648
                  auipc        s6, 46094
                  sra          t4, a3, t1
                  xori         a5, t4, -1983
                  lui          t1, 284847
                  lui          a5, 992049
                  sll          s10, gp, t5
                  slt          s1, sp, s8
                  slt          tp, s7, a1
                  srai         s3, s5, 28
                  add          ra, t2, a5
                  slt          tp, a7, t6
                  nop
                  sub          s10, s9, s8
                  srai         t4, ra, 11
                  slli         gp, zero, 6
                  sll          a5, a4, a5
                  sltu         s1, t5, a5
                  nop
                  andi         a6, t1, -941
                  sub          s4, a7, a2
                  ori          a6, a3, -889
                  addi         a4, s9, -1438
                  xori         t0, a5, -48
                  slli         a3, t1, 16
                  xori         gp, s8, -1692
                  auipc        s2, 469592
                  sll          a7, a4, s7
                  slti         zero, sp, 1936
                  sub          t0, s10, s7
                  sra          s3, a7, s2
                  add          a5, s11, a5
                  and          s1, s10, t1
                  sltiu        s3, a6, 1781
                  sra          t0, a6, a4
                  sra          a5, tp, s9
                  and          s9, a0, gp
                  auipc        s1, 237509
                  srli         gp, a7, 0
                  srli         a5, s5, 28
                  sltu         tp, a2, t2
                  andi         s10, a0, 1155
                  sra          a7, ra, gp
                  or           s1, a4, a7
                  sltu         zero, t1, s5
                  srl          a5, t0, t6
                  andi         a4, s5, 929
                  sub          gp, t2, s7
                  xori         s8, s1, 406
                  ori          ra, s6, -1470
                  nop
                  auipc        t1, 631951
                  or           s7, s4, s9
                  sltiu        s5, ra, 1611
                  ori          a3, t5, 1158
                  addi         t0, s10, 953
                  xori         s5, zero, -1694
                  xor          s10, zero, a6
                  srl          tp, a1, s6
                  sltu         tp, s1, t4
                  slt          s1, s0, sp
                  auipc        s3, 772944
                  or           s8, s8, s2
                  or           a0, sp, a3
                  sub          t1, s1, zero
                  lui          s4, 773306
                  lui          a5, 246841
                  sra          s3, a6, s6
                  auipc        s2, 899247
                  nop
                  sub          s2, a5, s0
                  slli         sp, a7, 26
                  add          t0, a2, a7
                  addi         gp, ra, -593
                  sltu         t5, s8, a0
                  srai         s1, t1, 0
                  xori         zero, a7, -432
                  lui          s8, 848289
                  slti         s4, a0, 1790
                  srli         s7, t3, 11
                  srl          s10, s2, s2
                  sra          s6, t6, t5
                  srl          gp, t4, s10
                  sll          s1, a4, sp
                  srl          s7, s8, t0
                  andi         a3, sp, -1043
                  or           a7, a2, t1
                  srl          s11, t0, s7
                  sltiu        a1, gp, 26
                  ori          s9, sp, -660
                  auipc        a7, 783913
                  sub          a6, a3, a5
                  sltiu        a7, tp, 950
                  xor          t1, s3, tp
                  nop
                  slt          a6, s4, a6
                  srl          s11, a4, t0
                  srai         tp, s0, 9
                  sltiu        s4, s0, 1763
                  sub          a3, a1, t3
                  slt          a4, t5, t3
                  sub          zero, s4, s4
                  or           t6, s5, s4
                  nop
                  srl          t0, a5, s3
                  srl          s9, t4, s10
                  nop
                  slli         t1, a3, 3
                  addi         t4, a4, 1352
                  andi         t4, a4, 1854
                  sltiu        a5, t0, 1760
                  sll          ra, t4, a4
                  sll          a6, t6, s2
                  sltu         s9, a1, t1
                  sltu         a1, t1, s1
                  sltiu        a1, s1, -12
                  andi         t3, zero, 883
                  lui          s2, 897460
                  and          t4, ra, a0
                  sub          gp, ra, s3
                  xori         a1, s4, 441
                  andi         t3, s1, -722
                  andi         t0, a2, -606
                  xor          a4, t3, s11
                  addi         tp, a7, -231
                  srl          s9, s5, a3
                  srl          t3, s9, t2
                  xor          a4, a2, t5
                  add          s5, s4, t6
                  lui          a0, 129360
                  sll          t3, a6, t5
                  srl          a3, sp, a7
                  xori         s2, s7, 1537
                  lui          s10, 707331
                  slt          a3, s11, t2
                  sra          gp, a3, s8
                  add          a7, tp, a4
                  sra          s3, ra, t2
                  addi         a1, a4, -711
                  sll          s5, s2, zero
                  nop
                  sltiu        s6, a7, -316
                  auipc        s1, 48694
                  xor          gp, a3, t3
                  sltiu        gp, s10, 247
                  slt          s4, a4, s4
                  srli         a3, zero, 7
                  andi         s1, sp, -243
                  nop
                  lui          gp, 262058
                  or           s8, s7, s9
                  lui          s7, 102660
                  slti         s3, s6, 860
                  sltu         s5, s0, a7
                  srai         t0, s2, 24
                  addi         s10, s10, 62
                  srl          t1, s4, s10
                  ori          t4, s8, 1911
                  sll          t6, s5, s8
                  nop
                  slti         t5, a7, -1890
                  auipc        s2, 917927
                  or           s2, s5, t3
                  or           s3, s0, s1
                  add          s2, a5, a3
                  slti         s2, a2, 1283
                  andi         a6, a7, 1600
                  and          a3, s1, s7
                  srl          s1, a4, gp
                  auipc        a1, 753425
                  sra          ra, s0, s1
                  auipc        s3, 95087
                  sra          t3, s3, s4
                  auipc        t3, 425339
                  slli         a4, tp, 0
                  or           a5, a7, a4
                  xori         s6, s3, -664
                  addi         a3, s0, 1987
                  xori         a4, tp, -1935
                  lui          s8, 1015442
                  sub          s3, s9, s7
                  addi         s8, t4, -1128
                  lui          t4, 922151
                  slti         a0, s1, 252
                  srai         s7, tp, 8
                  sub          t1, tp, s0
                  xori         ra, a5, 1338
                  lui          s11, 587256
                  slli         s8, a2, 11
                  srl          s1, t3, t3
                  addi         s1, tp, -385
                  xori         s10, t2, -1785
                  auipc        a4, 515104
                  xori         s6, a5, -1827
                  slt          t3, t5, t0
                  sltiu        s10, s10, -1007
                  or           s1, s11, t4
                  slti         t3, s8, 1709
                  lui          s5, 971336
                  slt          s2, t2, s3
                  xor          s3, a4, s5
                  ori          tp, a5, 1070
                  sltiu        a3, a4, -788
                  sll          s8, t3, s6
                  slt          s6, zero, s3
                  sltu         a1, s7, a3
                  srai         t5, t2, 22
                  or           s6, a3, ra
                  ori          s7, a6, 721
                  srli         gp, ra, 5
                  slt          t5, s0, t2
                  sll          s1, a5, t5
                  slti         a1, t3, -1960
                  slt          a6, s10, t0
                  xori         s4, s1, -833
                  and          t5, t6, s11
                  lui          t3, 24011
                  auipc        s1, 615319
                  xor          tp, a1, tp
                  add          a4, s11, a6
                  sub          a4, a6, s5
                  sub          sp, t5, s11
                  sra          s2, a7, tp
                  nop
                  lui          s9, 124614
                  add          tp, t2, t3
                  sltu         a0, s3, tp
                  xor          s10, s10, t2
                  addi         zero, sp, 647
                  sltiu        s6, tp, -282
                  ori          a7, s0, 1047
                  sll          t1, gp, s10
                  slt          a1, t1, s6
                  sra          s7, s2, t2
                  sll          t5, a1, sp
                  sub          t0, t3, s5
                  sltiu        a1, s4, -30
                  auipc        a1, 347760
                  srli         s10, s6, 25
                  srai         gp, s9, 14
                  sub          s5, s10, s2
                  andi         s7, sp, 1895
                  sub          s4, s4, t0
                  sltu         a5, tp, a1
                  ori          s6, a6, -1481
                  sltu         s5, a0, a2
                  nop
                  sra          a1, s5, a3
                  add          a6, tp, a6
                  slt          s11, t6, t0
                  add          s5, s0, s2
                  sub          gp, s6, t5
                  sltu         s10, s6, s10
                  sll          a6, zero, a3
                  srai         s4, sp, 8
                  ori          a0, s5, -919
                  nop
                  nop
                  sll          t6, a0, s6
                  addi         s8, a4, 1106
                  or           s8, a5, a6
                  and          s7, ra, s6
                  sub          sp, s4, t2
                  xori         gp, s1, -631
                  slti         a3, s6, -1510
                  sub          t1, s6, s5
                  slt          a0, s1, t5
                  xori         a5, a5, 1569
                  srl          t5, ra, tp
                  srl          s2, t4, sp
                  slti         gp, t5, -1423
                  sll          a4, s6, t6
                  slti         t6, tp, -377
                  ori          tp, t2, -427
                  slti         s8, s0, 570
                  sltiu        ra, s3, -1826
                  nop
                  sltiu        t4, a3, -1490
                  nop
                  slt          t1, a7, a5
                  srli         tp, t5, 5
                  lui          sp, 826759
                  xor          t3, t0, s2
                  or           sp, s4, a1
                  sub          t6, t4, zero
                  srl          a6, s0, zero
                  sll          a5, a4, a6
                  add          s5, s4, zero
                  xori         a5, a0, 2016
                  xor          a5, t1, a2
                  slt          tp, t4, s0
                  andi         s11, t5, 1622
                  sltu         t1, t6, s11
                  addi         s8, tp, 1411
                  nop
                  xori         a1, a1, -704
                  sra          zero, s3, gp
                  xor          s2, sp, s9
                  add          sp, s8, a6
                  andi         a3, s6, 1137
                  ori          zero, s5, 794
                  nop
                  sltiu        s6, a0, 602
                  andi         t5, t0, -949
                  auipc        s2, 727774
                  or           s8, s6, a2
                  add          a4, t3, s4
                  xori         a4, tp, 1646
                  auipc        s8, 307805
                  sltiu        a5, s3, 1575
                  sra          s10, a1, t2
                  or           s1, s7, s11
                  sra          t3, s2, t6
                  andi         t6, t2, 1203
                  slt          s10, s0, s4
                  nop
                  srl          s8, t6, t3
                  slli         zero, s0, 24
                  ori          a3, s5, 1158
                  nop
                  srl          a5, a5, s3
                  slli         zero, s0, 22
                  srli         s9, s5, 13
                  slti         zero, zero, -5
                  slt          t4, s0, s11
                  srl          ra, t6, t5
                  sub          s7, s1, s0
                  add          a7, s5, t4
                  sra          ra, t5, sp
                  sltiu        tp, t1, -1022
                  sll          t4, a1, ra
                  slli         a3, s11, 27
                  srai         t1, a6, 29
                  xori         t4, gp, 703
                  sub          gp, sp, a4
                  xor          a0, s3, t3
                  nop
                  and          t6, a1, t0
                  auipc        t1, 983310
                  auipc        tp, 556462
                  andi         s11, a1, 1302
                  sll          t0, s11, a1
                  add          t0, s7, gp
                  srai         s2, tp, 30
                  srli         s8, t1, 2
                  sll          zero, s0, s8
                  sltu         s3, s4, t2
                  slli         tp, zero, 0
                  sub          t3, a5, zero
                  slt          s10, a4, s9
                  slti         t4, a4, 245
                  or           s1, t3, s2
                  slt          sp, a7, s0
                  slli         t0, s3, 12
                  slti         gp, a5, 1666
                  andi         s5, a5, -90
                  andi         s5, a3, 72
                  auipc        tp, 609954
                  or           s11, t5, a0
                  ori          a4, tp, -1939
                  xor          a0, s0, t0
                  slli         a0, s3, 0
                  sub          t1, s8, a1
                  sub          gp, s3, a3
                  ori          a1, a1, 162
                  or           a5, s0, a6
                  slli         s9, t1, 19
                  slti         a6, t5, 544
                  sltiu        s10, s5, 1475
                  slti         t0, t3, -977
                  srli         s4, tp, 16
                  srli         s6, s9, 0
                  lui          t4, 838189
                  slti         s7, s9, 486
                  or           s2, sp, s6
                  and          gp, t1, t1
                  slti         gp, s5, 72
                  ori          t3, s11, -45
                  srai         t3, s6, 18
                  ori          s11, gp, -1060
                  sltiu        tp, s4, 1125
                  srai         a1, t4, 26
                  add          s7, s6, sp
                  sub          s6, a7, t3
                  srl          s7, a6, t3
                  xori         s5, t2, 1420
                  sub          s1, a4, s1
                  and          t6, a7, sp
                  slti         t0, ra, -792
                  nop
                  xor          gp, s11, s10
                  srai         ra, s11, 2
                  or           s7, a1, t6
                  srli         t6, s7, 0
                  sub          s7, s1, s11
                  srl          s5, s5, zero
                  srli         s9, s3, 5
                  srli         ra, s2, 1
                  and          a4, t4, t6
                  srai         t0, s11, 12
                  slti         s6, t1, 946
                  ori          a5, a7, 376
                  srl          s3, t0, t3
                  sub          sp, t4, a6
                  slt          s8, s10, a7
                  srli         s5, t0, 10
                  lui          t4, 37732
                  sltu         s10, gp, gp
                  lui          t1, 839523
                  sra          zero, s5, s0
                  add          gp, t2, t1
                  slti         gp, s11, 774
                  sra          sp, t1, a7
                  ori          a1, a4, 1930
                  sll          a4, a3, t6
                  add          s10, s8, s4
                  srli         a3, gp, 11
                  srl          s11, tp, t6
                  slti         s2, s4, 1674
                  sll          s8, a3, s8
                  sra          sp, t4, s10
                  xori         s6, t6, -238
                  slti         s4, s3, 813
                  slli         t0, a5, 9
                  add          s2, s4, s6
                  srai         tp, t3, 18
                  slti         sp, s2, -84
                  sra          s11, ra, t5
                  slli         tp, a6, 3
                  li           s4, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           a6, 0x83cc465f
                  li           a5, 0x0
                  li           s7, 0xe8503cd9
                  li           s3, 0xdd6d1672
                  li           a1, 0xffffffff
                  li           a0, 0xe6b141ea
                  li           s2, 0xffffffff
                  li           a3, 0x80000000
                  li           s8, 0x0
                  nop
                  add          s4, s8, a5
                  auipc        s3, 568604
                  add          a0, s7, a5
                  add          a1, s2, a5
                  add          s2, a6, s8
                  sub          s3, s8, a0
                  add          a5, s8, s7
                  auipc        a5, 1026558
                  sub          a3, s2, a3
                  lui          s7, 778238
                  lui          a1, 918457
                  auipc        a1, 118807
                  addi         a3, s7, -1315
                  sub          a1, a1, a5
                  lui          s2, 133281
                  lui          a3, 401390
                  nop
                  lui          s3, 490022 #end riscv_int_numeric_corner_stream_0
                  sltiu        s9, a6, 257
                  sra          s9, s4, s10
                  lui          tp, 891324
                  srai         a6, s9, 7
                  slt          a5, t0, s3
                  nop
                  sll          t0, s4, a4
                  srli         a5, s0, 19
                  sra          ra, ra, t1
                  auipc        a7, 224448
                  or           s6, t0, s10
                  sub          s7, t0, t6
                  srai         a7, a7, 20
                  nop
                  or           a3, t4, a1
                  sltu         a7, s3, a2
                  sll          gp, a4, ra
                  srl          s2, t6, a5
                  andi         s6, t4, 971
                  xor          a7, s6, a7
                  andi         ra, s9, -723
                  srli         tp, a0, 23
                  auipc        s4, 700795
                  xori         ra, t0, 9
                  srl          s10, t2, t2
                  xor          s8, t1, a0
                  slt          s4, s7, t6
                  slli         gp, a2, 18
                  sltiu        a4, s0, 1510
                  sll          t3, zero, s7
                  addi         s8, s10, 1873
                  srl          s5, a1, s4
                  sltiu        s9, tp, 1545
                  sll          s1, ra, ra
                  auipc        s1, 151730
                  andi         a7, t5, 1185
                  srai         a1, s2, 21
                  sra          t3, t5, tp
                  add          s1, zero, s11
                  sll          t5, s0, a1
                  srli         a6, s1, 10
                  srai         s11, a3, 13
                  srl          s11, ra, s8
                  nop
                  srai         s2, t3, 23
                  nop
                  srl          t1, a1, s6
                  addi         a5, gp, -1126
                  andi         t1, t5, 1763
                  auipc        gp, 1026928
                  addi         t6, gp, 364
                  auipc        a5, 797226
                  xori         t1, s4, 1067
                  or           a4, s6, a3
                  and          s1, tp, s3
                  or           s2, gp, a0
                  and          s7, s0, t6
                  srai         gp, gp, 13
                  or           s9, gp, s7
                  sltiu        s9, tp, -25
                  add          t0, t4, s10
                  srl          a5, s9, s8
                  xori         s1, a3, -1973
                  sltiu        s11, a6, 1924
                  auipc        tp, 76360
                  sub          a6, s3, sp
                  nop
                  sltu         t6, t2, tp
                  nop
                  sll          a1, a6, s7
                  or           s5, a4, a5
                  srli         s11, s4, 28
                  lui          tp, 660378
                  ori          a0, s7, 570
                  xori         s4, t5, -2026
                  slti         a7, t1, 272
                  auipc        a5, 429632
                  lui          t5, 1022702
                  addi         a4, a6, 239
                  srli         a7, t4, 28
                  addi         t1, t3, 1428
                  xori         zero, s11, -434
                  sub          s8, sp, t0
                  sra          s3, s10, ra
                  add          gp, s8, s5
                  srai         a7, s6, 31
                  slti         t5, t5, -468
                  ori          t3, s1, 1281
                  lui          a5, 738518
                  andi         s1, t5, -52
                  srli         s6, t1, 3
                  auipc        s4, 468736
                  auipc        s4, 966349
                  slli         a6, a5, 28
                  and          t1, s5, a1
                  slli         gp, s2, 6
                  srai         t5, a4, 10
                  slli         t4, s8, 16
                  sltu         s5, t4, a4
                  and          t6, s8, t4
                  lui          s6, 518891
                  slli         zero, gp, 13
                  sub          a1, s2, a7
                  sub          s2, s11, sp
                  srli         t5, a7, 12
                  sll          gp, a0, ra
                  xor          a1, a5, t0
                  addi         ra, s7, -1650
                  add          a5, t6, t2
                  and          t4, a6, s9
                  slli         a4, zero, 15
                  sltiu        a6, a1, 40
                  add          s11, t6, t3
                  srai         s5, s8, 20
                  srli         t3, t3, 27
                  addi         s4, s0, -1265
                  and          ra, a1, a3
                  nop
                  slti         s4, s10, 1901
                  sltiu        gp, a2, -439
                  andi         s6, s6, -1296
                  ori          a4, s9, 233
                  sub          s7, s4, a4
                  xor          s6, s1, zero
                  xori         a4, a2, 949
                  xor          a5, a0, s6
                  xori         t6, s8, 1366
                  nop
                  slli         sp, t5, 4
                  addi         s1, a0, -1787
                  and          s11, t1, s5
                  xor          s2, s9, s2
                  ori          a6, a1, -186
                  srai         a0, a1, 11
                  slti         t5, s9, 715
                  add          s5, zero, t2
                  sltu         tp, s0, s4
                  nop
                  slt          sp, s5, sp
                  xori         t4, t0, 382
                  sll          s3, t0, t2
                  slli         t0, s3, 22
                  andi         a6, t6, 387
                  addi         a4, tp, -2000
                  sra          s9, a4, s0
                  add          t1, s1, s11
                  or           s10, s6, zero
                  nop
                  slli         a6, t6, 8
                  sub          a0, t2, a3
                  sub          zero, t4, ra
                  ori          t0, s2, -717
                  sltiu        a6, ra, -2032
                  auipc        t5, 682315
                  srli         t4, s6, 6
                  srl          a1, a5, ra
                  sltiu        a7, s4, 2
                  slli         t6, t4, 23
                  addi         t6, t4, -1301
                  add          s10, t1, a5
                  lui          s6, 880132
                  srli         s7, s7, 15
                  sll          s5, sp, t1
                  slt          s3, t5, tp
                  and          t3, s1, t2
                  sltiu        s8, a7, -944
                  add          s2, t5, t0
                  sltu         s8, t5, s11
                  sra          t3, t6, s6
                  add          s9, s5, tp
                  xor          tp, s6, s8
                  slti         s6, t6, -1622
                  add          a7, s7, t3
                  sra          s2, s2, s10
                  lui          zero, 294442
                  nop
                  xor          sp, t2, s8
                  addi         zero, s4, -1075
                  nop
                  sub          s7, sp, s7
                  ori          s9, sp, 1349
                  andi         s4, s3, 713
                  srl          s1, t3, t2
                  nop
                  addi         zero, a3, 406
                  addi         a3, s2, 142
                  sra          s8, s11, s8
                  xor          s7, s2, s7
                  srl          ra, sp, t6
                  sll          s7, a1, s2
                  auipc        t4, 83441
                  sub          t1, t5, a0
                  addi         a7, gp, -1178
                  andi         a7, s5, 1533
                  xori         t6, s3, 1376
                  sll          a4, s8, t5
                  xori         a4, s4, -222
                  xori         sp, s8, 1712
                  sltu         gp, t3, t1
                  lui          gp, 995185
                  or           t5, a2, s3
                  or           t6, s3, sp
                  addi         ra, t5, 608
                  sll          s9, s5, a4
                  slli         s6, s5, 6
                  sll          a6, s11, t1
                  xor          t6, s6, s1
                  ori          s8, t0, -2039
                  ori          a3, s6, 2040
                  addi         a4, s5, 1515
                  sltiu        t1, t5, -1488
                  slli         s2, a3, 24
                  slli         tp, a3, 1
                  andi         tp, s3, 498
                  addi         s9, a4, -1817
                  xori         a6, s6, 1837
                  and          ra, s10, s7
                  add          t6, zero, s0
                  or           s5, s3, sp
                  or           t3, t1, a1
                  andi         t5, t4, 969
                  sll          a4, s4, t3
                  ori          a4, t5, 1523
                  slt          sp, t0, a6
                  xor          a7, a3, s1
                  xor          a7, a7, t0
                  andi         s1, a0, -1392
                  auipc        s2, 554031
                  lui          a0, 959144
                  or           gp, a4, a3
                  addi         sp, zero, 1924
                  sub          s10, a1, sp
                  ori          s4, s9, 1162
                  srl          a5, t1, s0
                  sub          ra, t2, gp
                  or           t6, s1, a0
                  sub          s8, s4, zero
                  add          a5, s11, tp
                  xori         a0, t5, 1122
                  auipc        a1, 18996
                  sub          t0, a2, t1
                  xor          ra, t1, tp
                  slti         sp, a2, 589
                  andi         a0, t0, 1373
                  sll          s11, tp, t0
                  and          gp, a1, t3
                  xor          a3, a1, t6
                  auipc        a3, 607699
                  lui          t6, 933488
                  and          s9, a0, tp
                  andi         t3, s8, 383
                  add          s7, a4, a6
                  sub          s5, a0, s0
                  sltu         tp, tp, a7
                  add          sp, t0, t4
                  sltiu        s4, t0, -1350
                  srai         s6, t1, 28
                  sltiu        t3, s11, -1249
                  nop
                  nop
                  sra          s6, s9, gp
                  xori         s7, ra, -1261
                  lui          s9, 361609
                  sub          t3, a7, s4
                  and          s4, s4, tp
                  add          t4, ra, a2
                  ori          t1, a4, -958
                  sll          a3, t5, s4
                  srai         s8, a6, 4
                  andi         t4, a6, -837
                  andi         s6, a3, -515
                  or           tp, a4, s6
                  xori         a1, s3, 1794
                  xori         t1, a3, 72
                  slt          a6, zero, gp
                  slt          t6, s9, tp
                  srl          s5, t2, s0
                  lui          t5, 300182
                  lui          sp, 644343
                  or           t4, t3, sp
                  srl          s10, s11, a2
                  slt          a5, a4, s4
                  sub          t1, t0, ra
                  nop
                  auipc        s3, 52334
                  addi         a0, sp, -224
                  sltu         zero, a1, s1
                  xor          s8, s8, ra
                  add          zero, s1, s3
                  srli         s1, tp, 17
                  add          a3, zero, s8
                  sltu         a6, s5, s9
                  srl          t1, tp, tp
                  auipc        a5, 409957
                  sltu         s5, s4, gp
                  xori         gp, a3, 510
                  andi         gp, s6, 294
                  srli         a5, t1, 8
                  xor          s3, s3, s9
                  slli         a1, sp, 9
                  slli         sp, a3, 23
                  nop
                  sltiu        gp, a7, -205
                  andi         s2, t4, 762
                  nop
                  slli         s7, s9, 30
                  andi         t3, a3, 1662
                  srl          sp, s4, s7
                  srai         t1, t1, 1
                  and          a6, s6, tp
                  or           a0, s1, t5
                  srai         s9, tp, 10
                  sra          a7, a1, s2
                  or           s10, s5, a5
                  xori         t3, a2, -830
                  srai         t1, s10, 15
                  and          tp, s8, a3
                  addi         t4, gp, -351
                  srl          a1, a5, a4
                  sub          t3, gp, a2
                  srai         tp, zero, 7
                  ori          t0, t6, -414
                  sll          a7, s6, a4
                  sltu         t3, t5, t0
                  sltu         s11, s4, t5
                  sltiu        s5, s10, 1442
                  sll          s6, tp, t0
                  sltu         a1, gp, a3
                  addi         zero, s9, 648
                  and          s2, a6, s7
                  srli         s5, gp, 10
                  slli         s9, s6, 24
                  sltu         s5, s10, t5
                  or           s5, a4, t6
                  slli         a1, t5, 20
                  auipc        s1, 630093
                  lui          a7, 837576
                  xor          s3, a5, s6
                  xor          s2, t3, s0
                  sltu         a0, a6, a1
                  sltiu        a4, sp, 902
                  srai         a4, s8, 16
                  slt          ra, a1, gp
                  and          gp, t3, t3
                  sll          a0, a2, t5
                  xor          a5, a3, a1
                  or           zero, a1, a3
                  srai         t0, t0, 7
                  slli         s7, s10, 10
                  ori          sp, a0, 323
                  andi         s2, ra, 1853
                  sll          a0, t6, t2
                  srli         ra, t2, 22
                  addi         s11, a2, -101
                  lui          a7, 1034300
                  lui          s4, 590634
                  sll          a6, t2, a1
                  sll          a6, s1, a0
                  lui          sp, 974116
                  sltu         a1, t3, s0
                  ori          a1, s4, 1164
                  addi         s7, s4, -986
                  andi         t4, s0, -124
                  sll          s7, t6, t2
                  or           s10, a1, a2
                  srl          s9, gp, s2
                  ori          a0, sp, -932
                  srli         a7, t1, 23
                  sltu         a1, t1, s11
                  sra          a0, s5, s11
                  and          a7, s8, tp
                  lui          sp, 139929
                  sra          s8, s9, s5
                  add          sp, s1, tp
                  ori          t4, a6, -2045
                  addi         zero, a2, -1154
                  srli         s2, gp, 9
                  nop
                  srl          a4, t1, a0
                  addi         a6, tp, 1553
                  slli         tp, s0, 26
                  sra          t5, s8, ra
                  srl          s8, a5, gp
                  nop
                  auipc        t1, 526520
                  sll          t3, s3, t3
                  srai         sp, s2, 31
                  xori         a0, t0, -393
                  ori          s8, a1, 1063
                  andi         gp, s2, 773
                  sltu         gp, a7, s1
                  srai         s11, a2, 16
                  nop
                  sltu         s2, s6, s6
                  sll          a3, t6, s4
                  addi         s8, tp, -504
                  sra          a1, a6, s0
                  or           zero, a0, s4
                  sltiu        s4, a7, -884
                  ori          gp, a3, -195
                  nop
                  sll          t3, s1, a2
                  andi         s7, ra, -608
                  addi         a3, s5, -1411
                  srai         tp, zero, 11
                  srl          sp, s4, t1
                  add          t5, zero, zero
                  and          a5, zero, s3
                  sltu         t1, a7, s2
                  sll          t5, a2, sp
                  ori          s11, gp, -1765
                  auipc        a7, 1032819
                  slli         s6, a1, 6
                  nop
                  auipc        s8, 606754
                  slli         a1, sp, 6
                  addi         s8, t3, -708
                  slli         s2, sp, 26
                  slt          t3, s2, tp
                  add          sp, a7, t6
                  srl          s6, s2, zero
                  sll          t0, s7, s0
                  sra          t3, a7, s7
                  srli         t4, a2, 2
                  addi         t3, t3, 1562
                  xori         sp, t3, -646
                  slli         a3, t3, 28
                  slli         t1, s10, 7
                  nop
                  andi         s1, s8, -1717
                  lui          t4, 398473
                  or           s4, t4, a7
                  slt          s10, t5, zero
                  sltu         gp, a1, t5
                  nop
                  or           t4, s1, ra
                  srl          t6, gp, t2
                  or           a0, zero, s10
                  ori          a4, s5, 280
                  or           a0, t2, ra
                  addi         gp, s9, -562
                  srai         a1, a0, 10
                  srli         s5, t3, 3
                  ori          s3, t4, 2001
                  sltu         t6, a0, s8
                  sltiu        t0, s7, 1906
                  ori          a1, t3, 147
                  sltiu        s8, s0, -861
                  andi         s6, a0, -134
                  nop
                  sltiu        a0, tp, -759
                  addi         s5, s3, 389
                  srli         a4, s6, 31
                  or           s1, t3, s10
                  xori         s8, s11, 1368
                  sltu         t5, t2, a5
                  addi         s3, t2, -5
                  or           s1, t0, s10
                  sltiu        s9, zero, -1185
                  srai         a3, a0, 19
                  add          a1, s1, a5
                  or           s6, s7, a1
                  srl          s5, zero, a4
                  li           a7, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           s6, 0xffffffff
                  li           t0, 0x80000000
                  li           t1, 0xdbd49f2f
                  li           s3, 0x0
                  li           s9, 0xfabefd6f
                  li           s4, 0x80000000
                  li           ra, 0x80000000
                  li           s2, 0x80000000
                  li           tp, 0xffffffff
                  addi         s3, ra, 186
                  sub          s4, s4, s6
                  addi         s2, s6, 1059
                  add          s6, s9, t1
                  nop
                  lui          s9, 886019
                  auipc        ra, 787566
                  lui          s4, 190453
                  add          s4, tp, s2
                  auipc        s3, 662131
                  lui          s9, 994209
                  lui          s4, 425711
                  auipc        s2, 473346
                  auipc        ra, 284332
                  add          a7, s6, s2
                  auipc        s4, 266566
                  auipc        ra, 622488
                  lui          a7, 636708
                  auipc        t0, 995484
                  nop
                  sub          s9, s4, t1
                  sub          t0, t0, t1 #end riscv_int_numeric_corner_stream_16
                  lui          s6, 5700
                  addi         t0, ra, 656
                  ori          s4, a2, -1012
                  xor          s6, s11, a0
                  slt          a5, zero, s10
                  auipc        s11, 899832
                  xori         t1, zero, 91
                  srli         s5, s11, 24
                  sltu         zero, t6, tp
                  lui          s1, 530681
                  and          a5, s9, s6
                  sub          s7, t5, t4
                  srl          s2, s7, a3
                  xori         t0, s1, -333
                  nop
                  andi         s8, s4, 1851
                  xor          t3, t0, a5
                  or           gp, s11, t0
                  andi         s4, t1, -696
                  slti         s10, t2, 85
                  addi         a7, sp, 1261
                  sll          s8, t1, a1
                  auipc        sp, 773876
                  srai         a7, s10, 29
                  or           s9, s5, s3
                  sltiu        t5, s6, -1472
                  addi         s4, t0, 1633
                  add          s7, a4, a3
                  nop
                  sub          a5, s3, a5
                  addi         gp, s7, 1057
                  slt          sp, t1, a6
                  sltu         s3, s9, s4
                  or           s5, t3, a7
                  andi         zero, zero, -238
                  sltiu        s10, s11, 114
                  andi         a1, s1, -492
                  and          s4, s6, t5
                  slt          t5, t5, s10
                  slti         s7, a3, 291
                  sub          s9, s0, a3
                  slti         gp, s0, 87
                  sltiu        a3, t6, 914
                  addi         s3, s4, -1841
                  xor          s5, a5, sp
                  slti         s11, a2, 200
                  nop
                  andi         s10, zero, -1564
                  slli         s7, a6, 2
                  sll          s1, a7, s1
                  srli         a4, t6, 16
                  slt          s9, t0, s4
                  and          a4, sp, sp
                  srl          s10, s4, s0
                  srli         t4, a7, 6
                  sub          t0, t5, s7
                  sltu         s3, a5, s8
                  andi         s3, s0, -1259
                  addi         t5, s6, 246
                  lui          t4, 954748
                  add          s1, s7, s11
                  slti         ra, s7, -1875
                  slt          tp, t5, s11
                  auipc        gp, 905148
                  sub          sp, a2, ra
                  slti         s6, zero, -659
                  add          a7, s7, s9
                  xori         s4, s6, 2039
                  xori         a1, a7, 1769
                  srli         a3, t6, 1
                  addi         s6, t0, -1329
                  ori          s11, s7, -959
                  xori         t6, t3, -1634
                  sltu         s8, s0, s1
                  add          a6, t1, sp
                  srai         a5, a0, 18
                  add          a3, s2, a5
                  slti         s1, ra, 1846
                  sra          a3, s0, ra
                  sltiu        s1, a2, 1822
                  or           t0, s6, s10
                  sll          s2, t3, t5
                  auipc        gp, 1013791
                  srli         a3, a6, 12
                  sltiu        t6, s3, 646
                  auipc        t4, 340841
                  nop
                  slli         sp, a1, 28
                  sltiu        sp, zero, 162
                  slt          ra, t4, zero
                  slti         gp, a1, 152
                  srl          t4, s2, gp
                  addi         a6, s3, 1608
                  slti         a6, t2, 676
                  or           a3, s1, s9
                  and          zero, s9, zero
                  andi         s5, ra, -429
                  slti         s8, zero, -1852
                  srli         s10, s9, 9
                  auipc        s5, 24142
                  lui          ra, 668636
                  sra          a1, a5, s9
                  srli         a4, a3, 26
                  sll          t3, ra, s1
                  andi         s8, a6, 790
                  srl          tp, t3, a6
                  or           s4, s8, t0
                  sltiu        a7, t6, -633
                  or           s11, a6, s5
                  auipc        a3, 622716
                  sll          s2, s9, s10
                  xor          s5, s9, a0
                  lui          t1, 698823
                  srl          s8, tp, a6
                  nop
                  xor          s10, s8, t4
                  xor          a3, s7, s1
                  slli         gp, s11, 0
                  sltu         s1, s10, s7
                  and          t0, a4, a5
                  add          gp, s11, t3
                  slt          t5, t4, a3
                  nop
                  lui          ra, 129768
                  addi         s3, ra, 1656
                  srl          zero, a2, s6
                  lui          t4, 736285
                  lui          s11, 366253
                  sll          a3, a7, t3
                  sltu         sp, a0, t3
                  auipc        s2, 436449
                  srai         t1, s0, 2
                  nop
                  andi         ra, ra, -1675
                  srl          sp, s4, zero
                  xori         zero, t6, 1906
                  slt          t6, s7, t1
                  add          gp, a3, s9
                  slti         s1, s4, 1292
                  xori         s10, s10, -877
                  slli         s4, s9, 24
                  and          tp, t6, gp
                  auipc        s10, 780611
                  ori          t5, a1, 1184
                  lui          t6, 340003
                  ori          s6, a7, 1954
                  and          a1, t3, s8
                  lui          a6, 644170
                  sra          tp, a3, s10
                  xor          a6, t6, s7
                  slt          t3, t3, t2
                  or           t0, t5, a3
                  srli         zero, t5, 21
                  xori         s8, a2, -1483
                  slli         s3, s3, 8
                  add          sp, a5, tp
                  addi         s5, s6, -235
                  sltu         s9, a1, a6
                  slt          s8, t5, s2
                  srli         a5, a7, 21
                  xor          t3, sp, s8
                  srl          a7, s3, a1
                  and          s4, s3, s0
                  auipc        s5, 658419
                  andi         tp, a1, -1629
                  sll          s8, t4, s9
                  slt          gp, zero, s11
                  slt          s4, a6, s1
                  or           t4, a5, a4
                  sra          s5, s3, s11
                  srai         t1, s10, 30
                  add          s3, ra, t1
                  and          a1, a4, t1
                  auipc        s7, 644882
                  or           s7, s6, sp
                  srai         s9, t1, 29
                  srli         tp, t3, 29
                  sll          s3, s10, a0
                  auipc        s1, 796208
                  andi         t4, a4, 1163
                  lui          tp, 798032
                  sub          s6, gp, ra
                  srl          a1, sp, s6
                  and          t0, s3, ra
                  xori         t1, s11, -1405
                  sub          t3, a0, s0
                  sll          a3, tp, t4
                  slli         s10, s7, 15
                  xor          t3, s11, s8
                  slt          t1, t6, s8
                  sra          s3, s7, t1
                  srai         a3, tp, 11
                  slt          s11, a4, s4
                  xori         t3, s9, -215
                  ori          t1, s0, 1519
                  srl          gp, a1, gp
                  add          t5, s4, a6
                  slti         a5, s6, -1136
                  slti         a3, ra, 1562
                  andi         s4, t5, -1375
                  slti         gp, ra, -215
                  auipc        s5, 728960
                  srli         a7, a0, 18
                  srli         gp, t3, 3
                  slli         t1, s3, 12
                  sltu         t1, s10, t3
                  slti         s4, t5, 1238
                  sra          s3, gp, zero
                  addi         t3, t4, 137
                  nop
                  lui          zero, 752019
                  srl          s3, a6, s3
                  xori         s1, s1, -1386
                  lui          t5, 696194
                  sra          a5, s11, sp
                  sltiu        gp, a4, 1274
                  or           a6, a5, s3
                  srai         a4, tp, 1
                  xor          s7, t2, gp
                  addi         a0, gp, -667
                  and          s5, s6, s9
                  sltiu        a1, a5, -1306
                  addi         t6, a3, -1449
                  or           s3, t3, tp
                  xori         t0, s11, -1894
                  srai         ra, s2, 16
                  slli         t5, t3, 22
                  sltu         a6, s11, gp
                  addi         s6, s6, -1803
                  slti         t5, s8, 360
                  xor          t0, s9, s6
                  slti         zero, t0, 1250
                  srli         s4, t5, 24
                  sub          t0, tp, s0
                  srli         s8, gp, 1
                  sub          a7, s8, t3
                  ori          ra, a0, 142
                  lui          t4, 788843
                  andi         zero, sp, -250
                  or           a1, s11, s1
                  ori          zero, t4, 1956
                  srli         tp, t1, 23
                  or           t4, t5, sp
                  auipc        a3, 440387
                  xor          s11, s9, zero
                  xor          s1, s10, sp
                  auipc        zero, 688797
                  and          s2, t6, s11
                  nop
                  auipc        t6, 905163
                  sltiu        ra, zero, 219
                  or           ra, a7, a4
                  sra          s11, ra, tp
                  nop
                  sub          s6, s4, s7
                  auipc        t3, 340804
                  sra          gp, s6, a3
                  add          a7, t5, s0
                  and          t1, ra, a7
                  andi         t4, sp, -690
                  add          a7, s1, gp
                  xori         s11, t2, -782
                  auipc        s11, 45397
                  sub          s3, s8, sp
                  srli         s1, t3, 16
                  srli         gp, sp, 4
                  sub          s10, a4, t0
                  auipc        a5, 878080
                  slti         s6, a2, -1813
                  addi         gp, s11, 1958
                  xor          a6, a7, s9
                  srai         s6, t2, 16
                  andi         s10, a0, -1504
                  sll          zero, a4, a2
                  andi         s6, s10, -760
                  srai         s11, s0, 10
                  slli         s7, s7, 13
                  xor          s1, s9, a1
                  srli         s6, t2, 17
                  sra          tp, a4, s10
                  and          a4, tp, s1
                  and          t1, s7, tp
                  auipc        gp, 663064
                  sltiu        a3, t0, 1354
                  or           tp, s1, gp
                  or           s5, t4, ra
                  sra          a3, gp, a0
                  sub          t1, s4, gp
                  srli         t5, s0, 11
                  xori         t6, sp, 807
                  sll          s10, a2, ra
                  and          tp, t4, ra
                  nop
                  li           a3, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           s10, 0xffffffff
                  li           s4, 0x0
                  li           s2, 0x80000000
                  li           tp, 0x0
                  li           a1, 0xb18b462b
                  li           t3, 0x80000000
                  li           s5, 0x4348ea3d
                  li           sp, 0xffffffff
                  li           a6, 0xffffffff
                  auipc        s5, 926373
                  add          s4, tp, sp
                  add          s5, a3, a1
                  nop
                  lui          tp, 781905
                  add          a3, s4, s2
                  nop
                  addi         t3, s5, 1926
                  add          a3, tp, a1
                  add          a6, s4, t3
                  addi         s2, s10, 1146
                  add          a6, s10, s2
                  lui          a6, 551683
                  nop
                  nop
                  nop
                  nop
                  add          s2, sp, s5 #end riscv_int_numeric_corner_stream_9
                  sll          s2, a3, t6
                  addi         a5, s9, 742
                  slli         a1, t0, 9
                  slt          t1, a7, s3
                  sra          s7, s8, a6
                  sll          s7, s9, s10
                  slt          s4, t2, a0
                  srai         s11, s4, 29
                  nop
                  sltu         s10, t2, a3
                  xori         t6, s9, -1506
                  lui          t5, 1033505
                  ori          s6, t0, -627
                  or           a4, gp, s5
                  slt          a7, t5, t5
                  srai         s7, a6, 5
                  slt          a1, s10, tp
                  add          s9, a0, a6
                  slti         s5, t0, -2013
                  or           s11, t6, tp
                  slt          gp, s6, a5
                  srli         zero, zero, 19
                  slli         s3, t0, 25
                  sll          s10, a1, a6
                  sltu         t3, s9, a5
                  lui          a5, 198519
                  sltiu        zero, s5, 51
                  srli         ra, a4, 25
                  sltiu        a6, a0, 1338
                  srai         zero, s3, 29
                  addi         ra, t4, 689
                  srl          tp, t1, a5
                  sra          s10, a1, s3
                  srai         a5, s6, 14
                  addi         tp, a2, -1830
                  add          t4, s9, a1
                  lui          s10, 787792
                  sra          t6, s7, a0
                  slti         s9, s7, 1969
                  xori         s3, s5, 474
                  slti         s5, s5, -1168
                  slli         a1, zero, 31
                  addi         s8, a6, 445
                  andi         s11, s7, 904
                  srli         ra, a7, 22
                  srl          t4, a7, sp
                  sltu         a3, s10, s6
                  srai         a1, t0, 25
                  or           t6, t6, t1
                  nop
                  srli         t1, t6, 26
                  ori          s5, zero, 1284
                  slti         t6, t3, -523
                  sll          gp, t5, s11
                  slti         s11, t3, 886
                  srl          tp, s2, s3
                  sltu         s6, a5, s4
                  sll          s11, zero, s11
                  slli         a6, a0, 12
                  add          t0, t3, t5
                  srli         t5, t1, 20
                  slt          zero, s9, s8
                  xori         a5, s10, 1067
                  and          t0, s6, sp
                  andi         s11, s8, 1792
                  slli         tp, a2, 20
                  and          s5, s10, t3
                  nop
                  srai         a4, a0, 17
                  nop
                  sub          sp, s9, t3
                  andi         s3, gp, 1209
                  srl          s10, t3, s6
                  addi         t1, s7, -1944
                  sll          a3, s7, a6
                  sltiu        ra, a2, 1240
                  sra          a5, a3, a2
                  xori         t1, gp, -847
                  ori          tp, s1, -1994
                  xori         s5, s10, -1714
                  xori         gp, t2, 749
                  andi         s8, t0, 1003
                  srli         a5, t1, 5
                  sltu         s1, a2, sp
                  srl          a6, a4, s10
                  srai         s6, s7, 8
                  and          t0, t5, ra
                  slti         ra, t1, -77
                  lui          a6, 417654
                  nop
                  lui          t0, 410357
                  sll          sp, a5, t0
                  sltu         s11, a2, s5
                  srli         sp, t4, 13
                  lui          s4, 1003348
                  slt          s1, sp, s3
                  srl          t6, t3, s4
                  and          a7, a4, zero
                  auipc        t4, 31625
                  or           a4, s0, a0
                  addi         tp, t6, 1948
                  slt          s9, s6, s8
                  slt          a4, a5, a6
                  xor          t3, a1, s2
                  srai         t4, t5, 0
                  sra          s11, t3, s7
                  lui          t0, 980263
                  andi         t6, s8, -1997
                  ori          t6, t5, 938
                  or           t3, a6, t1
                  srli         a4, s8, 6
                  addi         sp, s6, -32
                  or           t5, a1, sp
                  addi         t4, s8, -1050
                  xori         s5, a4, -405
                  srai         s8, s4, 23
                  slti         s10, a0, -1064
                  sll          sp, ra, a4
                  xor          a5, s0, a4
                  andi         s8, s9, -566
                  sub          s2, t6, t3
                  sltiu        s6, sp, 1611
                  addi         a3, a4, 1161
                  andi         ra, a3, -417
                  lui          zero, 745178
                  sltu         t5, t3, s11
                  sltu         s9, sp, s5
                  slt          s8, s8, t4
                  sub          s4, s6, t5
                  and          a7, t4, ra
                  srl          tp, s9, gp
                  ori          t5, sp, -1857
                  lui          t1, 633485
                  sltiu        s1, s8, 1298
                  add          t4, t0, t4
                  ori          s11, a5, -600
                  srli         a1, a4, 13
                  ori          a5, a2, -797
                  srai         t6, s11, 14
                  and          t4, s9, s2
                  add          a5, s9, t3
                  ori          s10, a2, 173
                  sub          s8, s1, s0
                  add          s1, t6, a2
                  sltiu        s3, a7, 1710
                  and          sp, sp, t5
                  addi         a7, s7, 1748
                  sltu         t4, t0, a6
                  andi         sp, s1, -1469
                  auipc        s9, 154229
                  sll          s8, a7, a4
                  ori          s4, t3, 1894
                  xor          t4, a4, t4
                  sll          s10, tp, a7
                  sltu         t6, a3, a6
                  or           a6, zero, s1
                  lui          a7, 251449
                  srl          zero, a0, a7
                  andi         a6, s0, 269
                  addi         t4, a6, 738
                  sub          s4, tp, t1
                  xor          s2, ra, s8
                  slti         a5, s10, 265
                  and          s8, s8, s0
                  and          s8, a0, a6
                  slt          ra, a6, s3
                  lui          s2, 173818
                  srai         a1, s3, 3
                  srai         a3, zero, 22
                  srli         s3, s11, 11
                  srl          s3, s8, t0
                  xori         ra, s10, -103
                  slti         s10, s9, -246
                  or           a4, t4, a4
                  xori         zero, s8, -745
                  ori          t3, s9, 1081
                  andi         gp, a1, 1423
                  sltu         s1, t1, s6
                  add          a4, a3, s10
                  sub          a5, gp, s0
                  slt          a0, zero, s7
                  xor          a3, a2, a0
                  or           s5, t1, s6
                  srli         t3, a6, 16
                  ori          a1, a1, 320
                  or           s2, s8, s4
                  add          sp, a3, t2
                  sll          a1, s10, a7
                  andi         s3, t0, -840
                  or           a6, a1, sp
                  srai         s5, t4, 16
                  slt          s7, s4, a2
                  ori          gp, t1, -1561
                  slt          s2, t2, a7
                  sll          a4, gp, s1
                  add          ra, zero, sp
                  sll          s11, a1, a0
                  srai         s8, a3, 25
                  nop
                  sll          a5, s0, s6
                  sra          s9, tp, s6
                  add          t6, tp, t4
                  add          a0, a7, a1
                  nop
                  slti         t1, s9, 1096
                  sra          s1, t1, s2
                  and          s9, a5, ra
                  srai         s1, a0, 8
                  srl          a3, a4, s8
                  sll          a0, a0, s5
                  sltiu        tp, t5, -599
                  sub          a4, t5, gp
                  slt          s8, s0, s3
                  or           a3, a2, t6
                  lui          s2, 439294
                  slt          s3, s8, a3
                  addi         sp, a5, -971
                  or           tp, s7, s10
                  sra          s7, s10, s7
                  sltiu        gp, s5, 326
                  nop
                  lui          s6, 429839
                  auipc        s11, 329337
                  srl          t5, t1, a6
                  slli         a7, t3, 10
                  andi         s3, gp, -1980
                  add          a1, a0, a4
                  and          s6, t2, s6
                  add          s10, s9, s9
                  andi         t1, s1, 1586
                  sltiu        s11, s3, 1589
                  auipc        a5, 772273
                  slti         t0, t3, -1923
                  ori          t1, s8, -1056
                  sll          s6, s10, s6
                  add          s6, s5, tp
                  auipc        s8, 960282
                  xori         t4, a3, -357
                  auipc        s3, 892020
                  srai         ra, a3, 29
                  srl          s11, s9, t4
                  xori         t5, ra, -1395
                  sll          a3, t2, sp
                  sll          t4, s9, a5
                  add          t0, s10, t0
                  lui          ra, 389576
                  nop
                  and          sp, t5, a5
                  ori          s2, s8, 835
                  lui          a4, 944064
                  ori          s4, a1, -1483
                  srl          s10, s2, t6
                  srl          gp, a2, a4
                  slli         gp, s8, 28
                  andi         a6, sp, 1948
                  slt          ra, tp, s11
                  srai         s11, a5, 24
                  xori         sp, s0, 1054
                  slli         a7, a3, 18
                  lui          s2, 257631
                  and          t5, s11, a7
                  sub          s3, a6, a2
                  slti         t5, s4, 1828
                  slli         a4, s5, 27
                  ori          a3, a3, 647
                  ori          s3, a6, -2022
                  srl          s8, a5, s9
                  or           s1, sp, s2
                  sub          a6, s3, t1
                  xor          a3, t6, t1
                  lui          s6, 700573
                  ori          s9, s10, -213
                  and          a5, a7, t6
                  and          s6, s3, s3
                  lui          t0, 441298
                  add          s5, zero, s8
                  xori         a6, a6, 938
                  xor          s10, a6, t2
                  sltiu        a6, tp, -676
                  srai         tp, a2, 22
                  srai         a6, s4, 10
                  slti         a4, s9, 1283
                  addi         ra, t3, 480
                  slt          s3, s8, s11
                  slli         a7, t1, 9
                  srli         t5, gp, 10
                  nop
                  slt          s8, t4, s11
                  sra          s6, s0, t4
                  andi         s5, zero, 1641
                  sra          zero, tp, t3
                  xor          a0, s10, s4
                  or           s6, a0, ra
                  slli         s3, t1, 12
                  sll          s1, a2, t1
                  sltu         t4, a7, zero
                  sltu         s1, sp, a3
                  srai         s9, zero, 30
                  srli         s4, tp, 11
                  slt          ra, s6, s8
                  and          s2, a0, t0
                  srli         s9, s8, 4
                  sll          s11, a7, s10
                  addi         s11, t4, -1142
                  xori         s3, s6, -837
                  sltiu        s5, a7, 1718
                  add          a7, s10, s7
                  add          s3, s3, t5
                  srli         t3, s11, 6
                  or           a1, a6, a3
                  andi         tp, tp, -226
                  slti         s5, t5, -931
                  sltiu        a3, s3, 1644
                  sltu         s9, s2, s9
                  sll          s3, a7, a7
                  add          t6, s6, sp
                  slt          gp, s3, gp
                  sltiu        a6, s7, 1200
                  slt          s5, t0, s8
                  andi         s6, t3, -1842
                  xori         s3, s11, -587
                  xori         s8, zero, -1669
                  andi         s10, s11, -1191
                  slt          t1, s0, a3
                  ori          sp, t2, 1106
                  sltiu        s3, ra, 675
                  sra          s1, s2, s4
                  and          t5, s8, s2
                  andi         t5, s3, 1433
                  lui          s3, 724472
                  auipc        t1, 89996
                  slti         s6, s8, 1536
                  ori          t0, a3, 920
                  lui          tp, 404291
                  slli         ra, t6, 5
                  and          s1, s10, s0
                  sra          s10, t4, s1
                  auipc        t6, 177134
                  lui          s11, 736422
                  slt          a6, tp, t0
                  or           a5, zero, a0
                  auipc        s8, 824688
                  or           s11, t6, t5
                  ori          t0, s7, -977
                  andi         t6, a0, -35
                  lui          t5, 799357
                  xori         a1, s4, 14
                  sltiu        sp, s11, -612
                  slti         a3, s9, 799
                  srai         t6, t6, 29
                  sub          s8, t2, zero
                  srl          s8, t6, t4
                  lui          s1, 277765
                  add          s2, gp, s6
                  addi         t6, a3, -1765
                  auipc        a5, 484022
                  slt          a7, s5, t4
                  li           s11, 0x6e252a3f #start riscv_int_numeric_corner_stream_13
                  li           t6, 0xffffffff
                  li           s9, 0x0
                  li           a0, 0xffffffff
                  li           s6, 0xffffffff
                  li           t5, 0xffffffff
                  li           t1, 0xaab5388c
                  li           t0, 0xffffffff
                  li           s10, 0xffffffff
                  li           a6, 0x0
                  sub          s11, s9, s11
                  add          a0, s9, s11
                  nop
                  nop
                  add          s11, t1, s11
                  lui          t5, 983381
                  sub          s6, t0, s9
                  auipc        s11, 430418
                  addi         t6, t1, -146
                  sub          t5, t6, s6
                  nop
                  sub          s6, t5, s6
                  addi         s10, t1, -543
                  nop
                  sub          t0, s10, t1
                  nop
                  lui          s10, 877321
                  sub          t6, a0, t5
                  addi         t0, s10, -1665
                  addi         s6, s11, -1128
                  add          t0, a0, a6
                  addi         t0, t5, -2018
                  lui          s11, 597720
                  add          t6, t1, s11
                  nop
                  addi         s10, t5, 560
                  nop #end riscv_int_numeric_corner_stream_13
                  add          t4, s9, a2
                  sltiu        a6, s1, -1886
                  lui          t5, 840489
                  sll          t1, tp, s4
                  slti         a0, t6, 237
                  slli         s9, s4, 27
                  ori          tp, t2, 1116
                  auipc        s8, 136508
                  sra          s9, s6, a1
                  lui          tp, 381162
                  slti         t4, t5, 858
                  lui          a0, 990221
                  srli         zero, s11, 2
                  sltu         ra, gp, sp
                  and          s7, a5, s7
                  add          s3, t6, s1
                  sltu         s5, sp, tp
                  nop
                  srl          s4, t4, t6
                  nop
                  ori          s7, sp, -217
                  sll          a6, zero, a5
                  xori         s6, t2, -1887
                  auipc        t6, 24878
                  addi         t6, s9, -682
                  ori          s5, s7, -898
                  sltiu        t5, t2, 2002
                  addi         a6, s11, -888
                  srli         s7, a0, 10
                  sltu         t5, a5, t6
                  slli         t3, s11, 28
                  sltiu        ra, a0, -1199
                  auipc        s6, 899799
                  lui          s6, 43929
                  nop
                  srli         a7, a0, 9
                  auipc        s4, 476511
                  sltiu        s10, s9, -2022
                  srl          a4, a1, a2
                  srai         a1, sp, 29
                  addi         s5, s8, 342
                  add          t6, t2, s2
                  auipc        t5, 732568
                  slti         t1, t6, 1841
                  sltiu        zero, s6, 841
                  srli         zero, t3, 15
                  ori          t3, sp, -1961
                  addi         gp, tp, -104
                  nop
                  and          t3, a2, s4
                  srai         sp, t4, 19
                  nop
                  ori          t0, s6, 1039
                  lui          a6, 832385
                  slti         sp, s4, -72
                  and          s10, tp, a1
                  slli         tp, sp, 4
                  andi         ra, s5, 1532
                  andi         ra, t3, 1142
                  srai         t0, a4, 5
                  srl          ra, sp, s5
                  sltiu        a1, s4, 1823
                  auipc        zero, 80221
                  slt          s5, s0, a2
                  sltiu        a4, t0, 1408
                  xori         s1, s6, -862
                  slt          a5, s3, s5
                  sub          s9, a5, t5
                  srli         t4, s4, 30
                  xor          t5, t0, s8
                  addi         s3, sp, -774
                  sll          s8, t6, s7
                  sub          s8, a4, t4
                  srai         s1, tp, 28
                  slt          t4, s5, s8
                  srai         zero, a7, 24
                  addi         s2, a0, -1003
                  sll          s7, gp, s2
                  or           gp, s6, a7
                  xori         t6, a7, -1009
                  nop
                  srli         s3, a4, 19
                  auipc        a7, 569239
                  sub          s8, s5, sp
                  addi         s7, sp, 1341
                  slti         t6, s7, 1878
                  sltiu        t6, tp, -2001
                  nop
                  sra          s3, a4, zero
                  srli         a6, s11, 23
                  andi         s10, a7, 1460
                  sltiu        t3, s6, -126
                  xori         s6, sp, -1361
                  srli         ra, s8, 11
                  slt          s3, s7, s6
                  sub          a4, a4, a5
                  nop
                  sll          s6, s6, s9
                  slti         s1, t2, -213
                  sll          gp, s2, a1
                  addi         a0, s7, 1368
                  lui          gp, 515523
                  addi         s8, t3, 806
                  slt          sp, s5, ra
                  nop
                  and          t5, t0, a3
                  slli         s11, s4, 28
                  slt          s9, t5, s6
                  slt          t6, zero, t0
                  srai         s5, a5, 28
                  ori          a0, t2, -1928
                  slt          a5, ra, s2
                  or           s1, t4, t0
                  andi         a7, s11, 1877
                  sltiu        s3, a5, 425
                  slli         s2, a0, 23
                  srli         s6, a4, 19
                  sra          t0, t5, t6
                  xor          a1, a3, a5
                  auipc        a7, 841209
                  addi         t6, gp, -1698
                  slti         s7, a6, 1846
                  auipc        t4, 172327
                  ori          a1, t4, -382
                  srli         s3, s7, 8
                  ori          t1, s7, -1730
                  add          s8, a1, a5
                  slt          s1, t4, t5
                  nop
                  lui          s8, 830368
                  lui          t5, 827472
                  auipc        t1, 461947
                  slli         a0, a5, 23
                  sltiu        s10, s0, -1714
                  xori         zero, a6, -1838
                  ori          a7, t4, -1727
                  andi         s6, s4, -253
                  sltiu        zero, s9, -150
                  sra          a1, t4, t5
                  addi         s11, gp, -1722
                  xor          a7, a5, a5
                  and          s11, s7, t6
                  sub          a5, t2, t5
                  xor          a6, a0, a0
                  sub          t1, t1, s11
                  nop
                  or           t1, zero, a4
                  sltu         a0, ra, a1
                  sub          s9, a1, a7
                  srli         a3, s5, 16
                  sub          a3, t4, t3
                  srai         s4, s2, 30
                  nop
                  sll          sp, s1, s2
                  sll          sp, zero, t2
                  sub          sp, t3, s8
                  addi         a6, s0, 723
                  sra          tp, a6, t0
                  nop
                  auipc        s9, 336325
                  srli         s10, sp, 31
                  slli         s4, gp, 14
                  nop
                  sltiu        s5, s1, -1235
                  nop
                  or           s4, a0, a0
                  add          a5, s3, zero
                  andi         s3, s8, -1910
                  or           s3, t3, s0
                  sltu         a5, t5, t4
                  ori          s4, t4, 837
                  slti         s4, a1, 1268
                  andi         a5, t2, -1999
                  ori          s8, t6, -250
                  sub          t3, gp, s7
                  lui          tp, 781194
                  nop
                  slli         s1, s8, 18
                  add          tp, s10, ra
                  or           s7, s4, tp
                  add          s9, s10, s7
                  sra          s8, zero, a1
                  slti         s5, s7, 1073
                  or           t4, s1, a3
                  or           a3, s8, t2
                  nop
                  slt          gp, s0, a2
                  ori          s3, s1, 1705
                  xori         s4, s8, -1033
                  sub          tp, s2, s9
                  slti         zero, t0, -199
                  and          a5, s1, s6
                  slti         t1, t0, 1586
                  or           gp, s11, s8
                  sra          a7, tp, s3
                  and          a0, s9, s9
                  xori         t3, t5, -1867
                  srai         s10, t3, 10
                  ori          ra, t1, 782
                  xor          t6, s1, s1
                  xori         t5, t1, 355
                  add          s4, tp, a6
                  and          a3, t6, a2
                  slt          s2, s4, s2
                  slti         zero, a2, -1497
                  sltu         s10, s0, s9
                  auipc        sp, 1024856
                  sll          a7, s8, a6
                  slli         ra, s9, 2
                  srli         a6, s0, 11
                  auipc        a1, 655497
                  sltu         a5, s5, t3
                  and          ra, a6, s0
                  or           t5, s11, ra
                  slti         a1, s4, -1744
                  or           ra, s1, a4
                  sub          s11, t6, a7
                  srl          s11, t5, s11
                  sltu         s3, s1, zero
                  or           s9, a2, t1
                  or           t3, t0, a5
                  srli         a1, zero, 22
                  sra          a1, s9, s3
                  andi         zero, a7, 11
                  sltiu        a5, t1, 671
                  auipc        t3, 188552
                  lui          s2, 834928
                  sra          s7, s6, s11
                  xori         t4, a2, 582
                  slti         s1, a5, 1012
                  andi         zero, a5, -1221
                  or           t1, a6, s4
                  ori          s4, a1, 1298
                  auipc        t3, 490535
                  sltu         s7, s9, s5
                  slli         s7, t0, 18
                  lui          s7, 103686
                  sub          t1, sp, s5
                  nop
                  and          s10, zero, ra
                  sll          s2, s6, ra
                  slli         t5, sp, 7
                  lui          s10, 100194
                  sltiu        s8, s3, 1219
                  nop
                  srl          tp, a3, s1
                  sltu         s10, s11, s2
                  or           t0, ra, s6
                  lui          a1, 857125
                  add          a5, t6, a6
                  slt          s3, t1, s9
                  slti         s2, s0, -1782
                  sltu         s3, ra, a0
                  slli         s1, t0, 3
                  srl          s5, t0, s9
                  add          a6, t1, t5
                  srai         s3, t5, 20
                  auipc        a5, 594790
                  sub          t0, gp, s9
                  sra          a3, t6, t5
                  nop
                  addi         s7, a1, -1558
                  sltiu        t3, t5, 1699
                  lui          a7, 3776
                  ori          s1, t6, -639
                  slli         a6, s11, 22
                  xori         a3, t2, -275
                  sll          s8, a2, s8
                  xor          tp, s0, s11
                  sltu         s1, t1, s8
                  addi         t4, s5, 1836
                  sub          ra, s4, s4
                  sltu         t3, sp, s6
                  auipc        s1, 105551
                  sltu         zero, s0, a3
                  srl          a5, s2, s2
                  sub          s4, ra, gp
                  and          s11, t0, s6
                  sltu         a7, t0, zero
                  auipc        s9, 765128
                  sll          ra, t5, t6
                  and          a1, ra, gp
                  sll          t0, s6, s7
                  andi         s11, s9, -2028
                  sll          s8, sp, s9
                  sll          s11, s6, t4
                  xor          t4, s3, s11
                  nop
                  sub          s9, s0, s9
                  add          t6, a4, a3
                  andi         ra, a6, 1572
                  ori          a3, s1, -812
                  srli         a7, s8, 19
                  srl          a4, ra, a0
                  slti         t3, t2, 598
                  sra          t4, s11, t5
                  slti         s6, s2, -1489
                  srl          a7, t2, s8
                  and          s11, sp, s0
                  add          s3, s3, t6
                  sltu         t1, a4, s11
                  or           s3, t6, a0
                  sltiu        s10, s10, -772
                  xor          s2, t1, a6
                  slli         s1, gp, 31
                  auipc        s8, 1014351
                  lui          a4, 866373
                  and          s8, tp, a3
                  slt          s11, t5, s0
                  slli         sp, t4, 8
                  auipc        s1, 644715
                  sltiu        t4, s4, -1867
                  slt          s11, s10, zero
                  addi         s4, t1, -967
                  addi         gp, s4, -637
                  andi         a5, tp, -313
                  slli         a1, t0, 17
                  andi         a1, s8, 1667
                  sll          s3, s1, a6
                  addi         t1, a6, 462
                  nop
                  srai         s9, t4, 18
                  nop
                  nop
                  and          s1, s6, s6
                  srli         a3, t5, 11
                  sub          s5, t1, ra
                  auipc        a4, 862301
                  xori         t4, s3, 414
                  xori         a3, t4, 596
                  sltu         sp, t4, a3
                  andi         s6, a7, 318
                  and          a4, zero, t4
                  sltu         s1, s4, s7
                  sltiu        t0, s4, -610
                  addi         a5, s5, -1044
                  sltu         s3, s3, s5
                  xori         t1, a5, -381
                  or           s7, s0, a1
                  xor          a5, a5, t3
                  add          s4, s8, t0
                  xor          s11, t5, t3
                  ori          s5, a5, -1755
                  srli         zero, t1, 27
                  xor          a1, s3, s11
                  sub          t1, a1, s0
                  addi         s2, t4, 1463
                  slt          sp, s7, s7
                  sub          a1, tp, a2
                  sub          s9, a1, t2
                  auipc        t1, 764369
                  sra          zero, a6, t0
                  sub          zero, a1, t4
                  slli         s4, t4, 19
                  sll          t6, t5, s11
                  ori          t3, ra, 803
                  nop
                  sltiu        a1, t5, 1627
                  slt          a4, a5, sp
                  srai         a1, s11, 20
                  sra          gp, tp, zero
                  sltiu        s8, s0, 735
                  lui          s1, 760171
                  slt          s4, s4, t2
                  srai         t6, s5, 15
                  sltiu        zero, a3, -1048
                  and          a1, s1, a3
                  auipc        s4, 344089
                  srl          sp, t6, a1
                  add          tp, tp, t6
                  srli         a3, a1, 11
                  sll          sp, a6, t1
                  and          gp, t4, t4
                  auipc        s5, 1016008
                  slt          a7, gp, a5
                  add          ra, s8, s5
                  ori          t3, sp, 1727
                  nop
                  addi         s11, a3, 1274
                  slli         t5, gp, 25
                  add          gp, a3, s2
                  add          sp, tp, s0
                  sltu         s1, a7, t3
                  slli         t4, a2, 14
                  or           s6, a6, s8
                  sltu         a5, a4, s1
                  sub          a7, t1, zero
                  sra          tp, tp, gp
                  srli         s8, t0, 23
                  slt          t4, t4, a1
                  add          t0, a2, ra
                  andi         a1, a0, -875
                  nop
                  xori         s4, a2, 882
                  nop
                  auipc        s7, 482452
                  srai         a6, s4, 29
                  slli         s7, s11, 8
                  ori          s4, a0, 1193
                  slli         s3, s4, 29
                  srl          a6, sp, s11
                  srai         a0, sp, 0
                  or           s5, a4, s8
                  srai         a5, a0, 4
                  slti         s5, s0, -2035
                  srl          t0, ra, t6
                  add          s2, ra, t3
                  slt          t4, sp, t0
                  sll          t5, s9, sp
                  sub          s1, a5, a5
                  sub          t5, t3, a2
                  slli         t1, t5, 3
                  sltu         s6, t2, s11
                  auipc        t0, 284280
                  slt          a4, a5, t6
                  or           s4, a1, t3
                  srli         t6, a2, 31
                  srai         ra, t4, 15
                  andi         s9, zero, 1952
                  srli         s3, tp, 11
                  sra          s1, sp, ra
                  lui          a7, 903530
                  xori         t6, s1, 551
                  nop
                  addi         a4, gp, -1346
                  and          t5, t0, s3
                  sll          a4, t0, a6
                  xori         s2, a4, -1439
                  sltu         s11, a7, a4
                  addi         a3, s4, 683
                  xori         s11, t0, 41
                  sub          s11, zero, s6
                  srl          s7, gp, t1
                  ori          a3, zero, -878
                  auipc        a3, 689702
                  slti         t0, t6, -2015
                  lui          t5, 44104
                  slli         t5, t2, 23
                  lui          a1, 1043723
                  andi         s11, s10, 1456
                  sub          s9, a5, zero
                  srai         gp, a5, 22
                  slli         t6, s5, 19
                  slt          a1, s10, a2
                  srai         s7, s8, 22
                  sltu         s1, a7, ra
                  sltu         t5, t2, a6
                  add          s10, a2, sp
                  sltu         t6, a6, t3
                  slli         gp, s3, 13
                  nop
                  slti         a0, a5, -1264
                  add          a3, t1, a7
                  lui          s10, 64479
                  srli         s11, ra, 17
                  addi         s7, a6, 1190
                  xor          t5, s3, zero
                  and          t1, s7, s8
                  sltiu        s4, s4, 1607
                  and          t4, t6, a7
                  sll          a1, s6, a4
                  slt          t1, s5, t0
                  addi         t1, t5, -1636
                  nop
                  add          s2, t2, s1
                  srli         a4, t2, 22
                  nop
                  srai         tp, s4, 17
                  nop
                  xor          a0, t4, s1
                  slli         ra, s4, 20
                  sll          ra, t5, t5
                  xor          sp, a1, gp
                  nop
                  ori          s3, s11, 1084
                  ori          zero, s2, 1561
                  srl          t4, s9, ra
                  sra          tp, s10, t1
                  sra          a1, zero, gp
                  sll          t1, t5, s4
                  slti         a4, s1, 1558
                  sub          s6, t1, s4
                  srai         s8, zero, 13
                  slli         t5, sp, 18
                  sltiu        t3, s1, -1575
                  addi         s7, t6, 505
                  add          s1, t1, tp
                  sll          s10, s6, a3
                  sub          s3, s3, s8
                  or           s5, s8, s4
                  srl          t5, t6, a3
                  andi         s6, a5, 1749
                  sub          s7, t3, gp
                  srli         s6, a4, 4
                  sltiu        a1, tp, 995
                  xori         sp, s4, -1156
                  and          a1, sp, s2
                  andi         a6, s6, 438
                  and          s7, s11, zero
                  xori         s8, t2, -1414
                  sltiu        a3, gp, -1089
                  slli         ra, t6, 15
                  sll          s8, a5, a1
                  addi         s7, a1, 372
                  xor          t5, s7, tp
                  sll          s1, a6, zero
                  sra          s8, s2, tp
                  add          sp, s6, s1
                  sll          a4, a1, t3
                  and          a1, t2, s10
                  auipc        a1, 714182
                  auipc        sp, 796677
                  and          ra, s11, s1
                  srli         a0, a1, 8
                  sltiu        ra, t0, 1871
                  ori          a6, a3, 862
                  srai         a0, a5, 6
                  andi         zero, a6, -1883
                  sltiu        t3, s2, 1565
                  slt          gp, s0, s0
                  sltiu        s4, a2, -1453
                  and          s5, a7, s6
                  slt          s7, s8, t6
                  sub          s7, t3, t2
                  slli         s4, s9, 27
                  xor          s9, t4, t6
                  xori         zero, t2, 2
                  srai         t4, s8, 17
                  slti         a0, s9, -228
                  xor          t0, ra, a5
                  srl          ra, s9, a5
                  addi         s3, a0, -1608
                  srai         a6, t0, 23
                  slli         s6, a7, 4
                  ori          a1, a3, -130
                  sltu         s9, t1, s7
                  auipc        tp, 117724
                  auipc        a0, 558323
                  lui          s1, 613530
                  sub          t1, t3, s0
                  lui          s6, 761988
                  sra          t3, a7, s2
                  xori         zero, t1, -168
                  nop
                  srl          s2, ra, s4
                  and          s10, s6, s7
                  xori         t6, s7, 1405
                  srli         s10, s0, 17
                  sub          t6, t6, s6
                  addi         s10, sp, -1977
                  slti         s8, t2, 314
                  slli         s1, sp, 8
                  sll          a5, t3, a0
                  addi         a1, zero, -1044
                  sltu         s4, s11, s8
                  auipc        s11, 287133
                  sltiu        s8, t5, -1584
                  sltu         zero, s6, t3
                  sll          t0, s9, s4
                  sltiu        t1, a0, -714
                  sub          s3, a3, tp
                  xori         a7, ra, -988
                  and          s4, s0, s3
                  srli         s1, s2, 12
                  lui          t3, 981326
                  lui          s1, 228128
                  or           a6, a4, s11
                  sltiu        s4, a2, 1010
                  ori          t1, a1, -857
                  sub          s9, ra, s10
                  srl          s8, s9, a7
                  sltu         t1, a4, a1
                  sra          t3, a3, s11
                  add          s5, t4, a2
                  addi         t5, t5, -1704
                  srl          s1, s3, a4
                  xori         ra, a5, 1628
                  slt          t4, sp, t5
                  srli         a3, a7, 28
                  andi         s7, a3, -1599
                  sltiu        a7, t6, 1637
                  xor          sp, sp, a3
                  sra          sp, s6, s6
                  slt          s10, a6, s8
                  slt          s9, s9, s10
                  sra          a1, a7, a2
                  and          t5, s2, a7
                  xor          a7, s3, a1
                  or           a3, a3, a5
                  sll          s10, a4, s2
                  addi         s8, sp, -1281
                  sltu         s11, a1, s10
                  andi         s4, zero, 1821
                  or           ra, s11, s3
                  srai         sp, s2, 28
                  srl          ra, s11, gp
                  lui          t4, 239959
                  and          t5, s6, tp
                  srli         s4, t2, 14
                  auipc        zero, 901900
                  andi         zero, s7, 179
                  addi         gp, t2, 953
                  xori         gp, a0, -45
                  and          s1, a5, t0
                  xori         s5, s9, -1642
                  addi         a5, sp, -1538
                  srai         t5, tp, 5
                  sll          a0, s4, a3
                  nop
                  sub          s10, sp, t3
                  srai         a0, a0, 0
                  srl          s7, t4, t0
                  sub          t1, t3, s9
                  sll          s3, s11, s8
                  add          t3, a1, s7
                  sltu         s7, a3, s2
                  lui          gp, 276071
                  xor          tp, a4, s4
                  srli         t6, t4, 2
                  or           s2, s1, gp
                  sra          t5, a1, t2
                  sltu         s11, a4, s3
                  auipc        s3, 808598
                  or           s4, s8, s2
                  auipc        s9, 981387
                  lui          gp, 595339
                  slli         t3, s0, 30
                  slt          a1, a0, s3
                  srli         s8, s6, 0
                  nop
                  sltu         t1, t1, a4
                  lui          a0, 887385
                  slli         s2, s5, 18
                  xor          s4, s11, tp
                  sltiu        s1, a1, 156
                  ori          gp, ra, -1815
                  xor          tp, t3, s3
                  slli         gp, t0, 13
                  slt          a1, s3, s9
                  sltu         s11, a6, sp
                  slli         s11, a1, 7
                  ori          s2, a7, -1256
                  andi         a7, tp, -966
                  srl          s8, t0, zero
                  sra          s6, a2, a0
                  srai         s4, s11, 25
                  add          a1, a5, s7
                  auipc        s6, 179848
                  andi         a4, a7, -1033
                  sub          sp, tp, s10
                  add          a1, s2, s6
                  andi         s10, zero, -606
                  ori          s7, sp, 1101
                  and          ra, s8, a7
                  xori         s9, a2, 548
                  xor          t3, s4, s8
                  and          s3, s7, t5
                  lui          t1, 353269
                  sltu         tp, a4, t1
                  srai         s11, s8, 28
                  add          s9, s4, tp
                  xor          t6, s2, s8
                  sltiu        t0, s8, -195
                  auipc        s2, 49308
                  lui          s8, 530739
                  and          s3, zero, a7
                  xori         t0, zero, -1548
                  sll          s8, s4, s4
                  slti         s4, s3, -624
                  srli         t0, s9, 5
                  slti         s9, gp, -1709
                  nop
                  ori          t3, a0, -678
                  srai         sp, gp, 19
                  xori         t4, ra, 142
                  srl          a6, s7, s1
                  sra          a1, a1, s4
                  addi         s4, t2, -354
                  nop
                  sra          s7, a3, s9
                  ori          ra, s9, 1693
                  nop
                  ori          a6, a6, -1074
                  xori         t5, t2, -1069
                  andi         s5, sp, -1953
                  srai         a5, t5, 4
                  sltiu        s7, s1, -1466
                  sltiu        sp, zero, -1451
                  ori          t3, t0, 986
                  auipc        a0, 246219
                  and          t3, s7, s0
                  srli         tp, t0, 26
                  or           sp, t5, sp
                  auipc        zero, 275744
                  srli         ra, t1, 24
                  xor          s6, s0, ra
                  slti         t0, t6, -1249
                  sltu         t6, s3, s4
                  srai         tp, zero, 22
                  add          s4, t6, s9
                  sll          a3, a7, s4
                  slli         s5, s2, 11
                  andi         zero, t1, -857
                  lui          s10, 497892
                  srl          a7, t2, s1
                  slli         zero, a3, 28
                  slt          s7, s6, s8
                  sra          a3, s0, t4
                  sra          a7, s6, s1
                  ori          t6, s5, -193
                  ori          a5, a6, -436
                  sll          a5, t0, ra
                  sltiu        ra, zero, 622
                  sub          t4, s1, s4
                  or           s2, a1, s10
                  lui          ra, 580273
                  xor          s11, t1, s9
                  xor          zero, a3, s3
                  nop
                  nop
                  addi         gp, s11, -1020
                  or           sp, sp, t0
                  slti         t1, s3, -228
                  xor          t4, t6, s3
                  andi         tp, s11, -1213
                  xor          t3, s8, t1
                  andi         s8, zero, 378
                  ori          gp, zero, 507
                  andi         s10, a3, 844
                  srl          t3, s10, s3
                  xor          a1, s2, a0
                  or           ra, t2, tp
                  srai         a5, ra, 18
                  addi         s9, t0, 1753
                  add          s7, s8, s11
                  add          t4, s8, a4
                  ori          t0, ra, 155
                  srli         t0, s6, 16
                  srai         t1, a6, 15
                  sub          zero, a0, a4
                  srai         sp, a1, 3
                  slli         t5, s2, 14
                  xori         a5, t4, -1276
                  srai         t1, s11, 25
                  sll          s7, s7, s6
                  addi         s6, s3, -1067
                  slti         a1, s3, 476
                  xor          a0, a7, a0
                  lui          s7, 1041833
                  auipc        s11, 984488
                  slt          s8, s9, t2
                  ori          a7, a7, 1227
                  xor          s7, a6, s5
                  lui          a4, 775130
                  slli         tp, s7, 31
                  sra          a1, a0, a4
                  sra          t6, t0, zero
                  sltu         t4, s6, s0
                  addi         a6, s5, 1438
                  and          a0, s2, a1
                  andi         s5, t5, -2013
                  sra          s4, sp, s3
                  sltu         s7, ra, tp
                  srai         t6, s4, 3
                  add          sp, t6, a0
                  nop
                  ori          s11, t3, -1207
                  lui          s3, 982128
                  srli         a3, t0, 2
                  slli         s5, tp, 9
                  slt          a3, s3, t0
                  sra          a4, a0, a3
                  sltu         a5, gp, s1
                  srl          a6, t5, gp
                  auipc        s10, 364127
                  srl          t1, a7, s5
                  auipc        ra, 18357
                  slli         a6, a6, 5
                  slt          a4, a1, a0
                  andi         a6, a4, -596
                  slti         gp, sp, -832
                  ori          s5, a7, 1717
                  xor          s5, s6, t4
                  srli         gp, a2, 24
                  xori         a6, s5, -1878
                  sub          a4, s5, t1
                  andi         tp, a3, 1874
                  sll          ra, tp, t2
                  nop
                  srl          s8, t1, s1
                  slti         s10, t5, 608
                  auipc        s2, 421716
                  xor          a1, t1, t4
                  sra          s3, s0, t4
                  and          s7, sp, s9
                  srli         t6, zero, 16
                  sltu         s6, tp, t4
                  sltu         gp, zero, s7
                  srai         s3, t3, 27
                  sltiu        zero, gp, 1765
                  slli         s4, s5, 31
                  srli         gp, s9, 19
                  srli         a5, ra, 11
                  nop
                  sltu         a3, s5, a1
                  slti         s6, t1, 1044
                  lui          t6, 915058
                  sll          a1, tp, a4
                  sltu         s8, a0, t4
                  sra          a5, a0, t5
                  srai         zero, s7, 15
                  srli         s8, t3, 27
                  sll          t5, s6, s9
                  xori         s2, a2, -573
                  slti         a0, s10, 1052
                  ori          t1, s11, 1251
                  srl          a5, s4, sp
                  or           s5, a3, t4
                  srl          s9, s1, s1
                  addi         tp, s11, -65
                  or           s3, s7, a6
                  sra          ra, a2, t2
                  sltiu        s6, s8, 730
                  sltiu        t6, s2, -1011
                  sll          s10, s2, t3
                  xori         a4, a1, -1482
                  sll          s10, t0, ra
                  srai         a4, tp, 28
                  add          s5, t5, t5
                  srl          a1, s11, s11
                  xori         s8, s5, 845
                  nop
                  lui          zero, 675531
                  srai         tp, s4, 6
                  slli         s4, gp, 17
                  srai         t6, s6, 18
                  lui          s9, 461440
                  addi         t3, ra, -961
                  slli         gp, a4, 23
                  ori          a3, a5, 983
                  sub          zero, t1, s7
                  srai         ra, t1, 0
                  srl          zero, s8, t5
                  lui          ra, 529714
                  sltiu        a5, a0, -1185
                  lui          s1, 452640
                  addi         s4, tp, -29
                  add          s9, s6, a6
                  sltu         sp, s2, s7
                  nop
                  sltiu        a6, a1, -310
                  lui          a5, 317214
                  sub          s3, sp, a1
                  sltu         s5, s2, s6
                  or           sp, t2, s4
                  slti         zero, t5, 1688
                  xor          s8, a1, a0
                  slli         s1, gp, 10
                  ori          gp, t0, 1308
                  or           s11, s6, a1
                  sra          s7, a3, t0
                  auipc        s8, 621212
                  slt          sp, s6, a3
                  sra          a0, s4, ra
                  auipc        a0, 135256
                  xori         a1, t1, 872
                  andi         t0, s1, -1669
                  sltiu        s11, gp, -1137
                  sltiu        s1, a3, 1226
                  xori         zero, s8, -636
                  xor          s10, a2, a0
                  slti         t1, s9, -1324
                  sra          t1, s8, t6
                  srai         s6, s5, 4
                  lui          t3, 435135
                  sltiu        s11, zero, -574
                  lui          s9, 30377
                  add          a1, t4, a1
                  slli         t5, s8, 25
                  sltiu        s6, s7, -883
                  addi         a7, t4, 1466
                  andi         t0, s10, -232
                  srai         sp, s0, 4
                  slt          s9, s6, s5
                  srli         s11, s1, 20
                  xori         s9, a7, -348
                  sltu         t6, ra, a2
                  xori         a5, a3, 649
                  sub          a4, a5, ra
                  slti         ra, gp, 1221
                  sra          t1, s1, s2
                  nop
                  lui          t5, 553709
                  xori         s6, t2, 691
                  srai         s5, a6, 15
                  nop
                  slti         a7, s0, -1308
                  xori         zero, a7, -1977
                  xor          s9, a5, s6
                  xor          s9, a3, s10
                  add          t0, s10, s5
                  srl          a4, t4, a7
                  sub          t4, a1, t0
                  slti         tp, s6, 1344
                  sltu         s6, s4, a2
                  slli         gp, s6, 5
                  or           s4, ra, gp
                  and          s1, a2, s8
                  xori         s9, a6, -1334
                  sra          a4, a6, s10
                  sra          t5, a0, a7
                  sub          s2, a5, gp
                  srai         t3, s1, 23
                  sra          t0, a4, a4
                  srl          t3, t0, t3
                  sll          sp, s11, s2
                  xori         gp, zero, -893
                  and          t1, a0, s3
                  lui          a5, 866603
                  lui          t5, 9090
                  slli         s3, s9, 3
                  sll          s3, s0, a2
                  sll          a3, a4, t5
                  add          ra, a6, a3
                  lui          s9, 1019219
                  srli         s2, s5, 14
                  nop
                  slli         a0, s6, 6
                  xor          t4, sp, s0
                  sub          a7, ra, a6
                  sub          s2, s7, s7
                  and          t1, t1, t0
                  slti         s9, s9, -667
                  auipc        t1, 471336
                  slti         s7, s3, -215
                  or           s8, a5, t4
                  add          s8, s0, s11
                  and          s9, s7, s8
                  add          tp, s11, t6
                  nop
                  and          s9, s3, a3
                  slt          a5, t5, t6
                  sltiu        t5, t1, 817
                  or           t6, a3, a2
                  auipc        a1, 650209
                  or           s8, s5, t5
                  nop
                  add          s5, t4, ra
                  sltu         a0, s1, a2
                  xori         s1, t5, -1773
                  slli         s2, t4, 10
                  add          s2, s2, s6
                  add          ra, s8, a0
                  addi         s8, s10, -735
                  sltu         s11, a2, zero
                  slt          gp, zero, t2
                  ori          a4, gp, 248
                  or           s4, a1, s3
                  xori         t3, gp, -881
                  and          t4, t0, a5
                  sll          s10, s11, a0
                  srai         s2, a1, 28
                  sltu         t3, a5, a4
                  auipc        s10, 1013179
                  slti         s2, t3, 399
                  nop
                  add          a6, a5, zero
                  addi         a4, ra, -1780
                  sltiu        s11, s1, -1011
                  xori         a3, t6, 775
                  ori          gp, ra, 640
                  srli         a6, t5, 1
                  and          s1, a2, t2
                  sub          a4, a0, s6
                  sll          t6, s7, t1
                  srai         a0, s11, 6
                  slli         t1, sp, 14
                  auipc        t4, 941446
                  ori          a1, a3, -1427
                  slt          t5, t0, t1
                  srli         s11, s0, 7
                  or           a6, t0, s7
                  and          gp, sp, t3
                  srl          s4, s1, s8
                  srli         s7, a2, 14
                  slli         zero, t6, 2
                  ori          a4, t1, 1698
                  ori          a5, s9, -1379
                  sltu         zero, s10, t4
                  andi         a4, t0, 2038
                  slti         t4, zero, 520
                  auipc        a6, 3657
                  slli         s10, t0, 12
                  sub          s5, s8, s7
                  and          t3, a7, t0
                  lui          t6, 189725
                  sltiu        zero, sp, 1743
                  srai         ra, t3, 8
                  nop
                  andi         s11, s8, 1357
                  addi         s2, s5, 1518
                  andi         t6, s2, -140
                  ori          s10, s3, 533
                  lui          a4, 191252
                  sll          a7, ra, t6
                  nop
                  srai         s9, tp, 30
                  slli         s8, a1, 23
                  addi         t0, t0, -1562
                  xori         s4, zero, 1020
                  addi         t3, t4, -1260
                  or           a0, t2, t1
                  addi         s2, a0, -786
                  nop
                  slli         tp, a7, 2
                  slli         s7, sp, 6
                  addi         a5, t1, -831
                  sll          s6, a7, t5
                  nop
                  xor          s2, zero, s8
                  sub          a6, a7, a1
                  srli         s1, zero, 12
                  slli         s1, s6, 21
                  slt          t6, s8, s3
                  sll          t4, s3, s11
                  srli         t1, sp, 5
                  slli         s8, sp, 1
                  andi         t6, t6, -443
                  andi         s7, gp, -1685
                  slli         a0, a6, 11
                  slti         t3, a7, 582
                  sra          s9, s11, t1
                  slt          a7, s3, gp
                  lui          a1, 190344
                  addi         s10, ra, 1994
                  sub          sp, s4, a4
                  addi         t4, gp, -2009
                  or           s1, s4, s6
                  slti         s7, s4, 1461
                  xori         s11, s3, -853
                  srl          a0, a5, t4
                  lui          t6, 968329
                  slti         t1, a0, 246
                  andi         zero, a3, 503
                  srli         t0, s7, 19
                  or           s9, s1, s6
                  xor          t5, s1, a2
                  srl          t6, s9, a5
                  sltiu        s8, s7, 1353
                  slli         s9, sp, 12
                  add          t1, t5, sp
                  and          a6, a6, s9
                  slt          zero, s3, t2
                  srai         t3, s8, 2
                  addi         t3, a3, -1046
                  sra          t4, zero, t3
                  andi         tp, s10, -297
                  srai         s11, s10, 11
                  sra          s3, t0, t6
                  xor          s3, t3, s6
                  sll          a4, s4, s7
                  slti         t1, a1, 500
                  ori          s1, t4, 1545
                  sra          s10, t3, a3
                  or           sp, s8, a2
                  sltu         t4, a6, s1
                  slti         sp, t4, 234
                  ori          a1, t5, 717
                  andi         t5, s2, -1657
                  sll          s11, a2, gp
                  xori         s6, t4, 480
                  sll          a1, a5, s10
                  ori          sp, a3, 428
                  srl          s8, zero, a0
                  srli         t1, t3, 7
                  addi         a3, s7, -1831
                  and          a7, a7, s6
                  lui          s3, 907366
                  sll          t3, s3, s6
                  nop
                  slt          tp, s11, s1
                  sltu         a4, s4, t5
                  add          ra, s7, s4
                  xori         s10, a0, -6
                  lui          ra, 139671
                  or           zero, a5, a2
                  srli         ra, tp, 3
                  sra          s2, a0, a0
                  srli         s3, s10, 24
                  andi         s5, sp, 924
                  nop
                  ori          s7, s3, -507
                  add          s5, a0, t3
                  slli         a1, t6, 4
                  sltu         s5, t1, a1
                  slli         a5, ra, 30
                  andi         a0, sp, 1990
                  xori         zero, a3, -1356
                  srai         a3, t0, 1
                  sltu         s7, t2, s9
                  or           s11, s7, s1
                  srl          s6, s5, s4
                  addi         s8, gp, -1159
                  slt          s3, s7, s3
                  and          zero, ra, s7
                  and          t5, t0, t5
                  sltiu        s3, t3, 1920
                  and          s10, a7, a2
                  sra          s9, a5, t2
                  and          a6, a4, s8
                  nop
                  add          s3, t2, a4
                  srl          t1, t6, zero
                  ori          s6, a5, 546
                  addi         a1, s11, -1163
                  xori         gp, s8, -763
                  slti         s2, a3, 1167
                  addi         a4, t0, -1719
                  srli         ra, t5, 25
                  and          s3, a3, s8
                  or           s4, s10, s11
                  sll          s10, s10, t4
                  sra          s10, s3, a6
                  auipc        t5, 820341
                  sltiu        s11, a5, 604
                  sll          s5, s10, s2
                  and          s2, a6, a7
                  lui          tp, 233375
                  slt          a1, t4, gp
                  auipc        a5, 266896
                  slt          t4, s4, t5
                  ori          a6, s7, -288
                  slli         t6, t3, 18
                  andi         a1, s5, 716
                  sub          zero, a4, s7
                  sll          s9, a3, s1
                  ori          s9, s10, -581
                  or           gp, s8, t0
                  slli         s7, s6, 7
                  slli         a1, s9, 27
                  or           t0, t6, a4
                  andi         zero, a6, -3
                  srl          a5, s8, s2
                  slti         t3, s10, -1115
                  xori         s1, s1, 969
                  addi         a4, a4, 1266
                  xori         s11, a2, 1648
                  auipc        tp, 53295
                  srl          s6, t4, t4
                  andi         s6, s5, -71
                  sub          a1, s2, t5
                  xori         s2, t4, -681
                  ori          t6, s9, -388
                  sll          s11, s10, s8
                  or           s6, t6, s2
                  ori          s9, s2, -1429
                  sltiu        s1, s4, 612
                  srl          s11, gp, s6
                  sltiu        a7, gp, -736
                  sltiu        a1, s7, -919
                  and          s7, sp, a6
                  add          s3, s7, t0
                  ori          t5, s11, 869
                  srli         a1, t5, 1
                  sltiu        t5, t4, -1279
                  xor          a4, s0, a7
                  sub          zero, tp, a5
                  or           t1, ra, t0
                  ori          sp, s1, 1114
                  srli         a1, s0, 1
                  or           t6, t1, t0
                  srai         s4, s9, 18
                  ori          a0, t3, -1553
                  auipc        t0, 498757
                  ori          s8, a3, -422
                  add          s4, a7, zero
                  sll          s7, tp, sp
                  slti         t0, s1, -1344
                  nop
                  addi         s10, s10, -425
                  slt          a0, gp, a1
                  xori         a0, s0, -1739
                  srl          sp, t2, s2
                  sltu         s3, s5, a2
                  slti         s3, zero, 633
                  srli         s3, sp, 29
                  lui          s7, 840885
                  addi         s9, tp, -161
                  sll          zero, zero, t5
                  or           a6, s8, ra
                  andi         ra, tp, -1817
                  slli         s2, t2, 27
                  xori         s8, s7, 1289
                  xori         t1, s1, 1807
                  or           s2, s6, s10
                  lui          s3, 788159
                  srai         s5, s10, 15
                  add          s11, gp, a5
                  xori         a6, a1, -637
                  ori          s10, zero, -1808
                  slti         s2, tp, -1229
                  andi         s8, s1, 1597
                  xor          t0, tp, a4
                  xori         tp, sp, 924
                  sltu         a0, t6, a2
                  add          sp, t5, s7
                  nop
                  sra          gp, s2, ra
                  xor          ra, s3, t1
                  sll          a7, s1, s4
                  nop
                  srli         s8, s5, 28
                  xori         s7, s0, -1063
                  sltu         s4, s0, s6
                  srai         t6, t1, 18
                  sra          t6, ra, a3
                  andi         zero, t2, 1041
                  sub          s7, s10, a6
                  slt          s9, a1, t3
                  add          t1, s0, s9
                  srl          zero, t4, s5
                  or           s9, s0, tp
                  xori         s6, t6, 235
                  or           t0, tp, s3
                  srai         t0, s7, 28
                  sra          s1, t0, t5
                  auipc        a7, 10515
                  auipc        t6, 1020235
                  sub          zero, tp, s7
                  slli         s7, t0, 14
                  slli         s8, s0, 12
                  or           a4, a6, a4
                  sll          s6, t5, a2
                  srai         s6, t2, 29
                  auipc        t0, 118473
                  slt          gp, tp, a7
                  nop
                  andi         s1, s8, 516
                  ori          t6, a2, -458
                  addi         zero, s7, 598
                  sub          a6, a1, t1
                  and          s11, s9, t6
                  sra          sp, s2, a7
                  sltu         t5, s5, s2
                  sltu         a5, gp, s11
                  slli         s9, s5, 27
                  or           a6, s10, s10
                  ori          t0, s7, 1032
                  add          s5, s7, zero
                  ori          tp, t3, -1102
                  srai         ra, a7, 16
                  sltiu        a5, s10, -1462
                  ori          s9, t3, 1594
                  and          zero, a4, tp
                  sltu         s2, t5, gp
                  xor          zero, a4, a1
                  srli         a1, s5, 0
                  sltiu        gp, a6, 922
                  ori          s3, a7, -1820
                  sra          s6, s5, ra
                  andi         t6, a2, -58
                  sltiu        a0, zero, -1827
                  andi         a0, s8, -1367
                  sltu         s3, s5, s11
                  addi         s8, tp, -1665
                  srli         t3, t1, 23
                  add          ra, s5, a5
                  slli         s10, s7, 15
                  xor          t1, a5, s10
                  srli         t6, a7, 16
                  sll          a4, zero, gp
                  srli         t4, a6, 19
                  sra          t6, s8, s0
                  and          ra, a0, s4
                  nop
                  sub          s1, ra, t3
                  sra          zero, ra, s8
                  sub          s7, t0, ra
                  lui          a1, 975457
                  srl          a7, s5, zero
                  slt          gp, a3, gp
                  auipc        s1, 122075
                  xori         t0, t4, -1928
                  addi         t6, t4, 1795
                  add          s3, a2, zero
                  srli         t3, a7, 11
                  srli         t3, tp, 31
                  srl          t3, a4, a5
                  xori         a3, s4, 1723
                  sll          ra, s11, a5
                  xor          s10, t0, s2
                  sltu         s3, s0, s10
                  xor          a1, t3, s2
                  xori         s3, a3, 1717
                  xor          a5, s6, s6
                  srl          s2, s4, sp
                  addi         t5, s10, -1721
                  and          s4, s1, t2
                  ori          s6, s2, -1107
                  lui          gp, 743353
                  lui          t0, 259810
                  nop
                  auipc        a4, 88728
                  or           s2, s1, t4
                  or           zero, s1, tp
                  or           a6, t5, a4
                  add          ra, a6, a7
                  or           s2, s9, t6
                  addi         t6, t1, 1748
                  or           a3, s9, s11
                  sub          sp, gp, s2
                  and          s7, s2, a4
                  sub          gp, tp, s11
                  sltiu        s7, s1, 1968
                  and          a1, zero, s3
                  addi         t1, t2, 1254
                  sltu         sp, a0, t5
                  and          sp, t6, t6
                  slli         a0, a3, 19
                  add          s6, t5, a5
                  add          s11, ra, s10
                  ori          a1, a1, -201
                  slt          s3, gp, s3
                  and          t5, t5, t2
                  slli         ra, s6, 23
                  add          a3, s7, s2
                  auipc        t3, 111018
                  ori          a0, a2, -328
                  sub          zero, t1, t5
                  slli         a1, t6, 23
                  srl          s9, s3, s11
                  andi         a7, t1, 1628
                  add          t5, t2, s4
                  lui          s8, 471659
                  xori         t3, ra, -1416
                  andi         s5, s6, 199
                  sltiu        s9, a4, -1008
                  sub          s3, s8, s11
                  sltiu        ra, gp, -571
                  ori          a6, s5, -1935
                  slti         a6, a4, 1759
                  sra          ra, t0, a7
                  sltiu        tp, s10, 657
                  srli         a4, s6, 23
                  nop
                  slt          s9, s0, t3
                  xor          sp, s1, s3
                  nop
                  nop
                  srai         t1, s9, 30
                  sltu         tp, s6, s8
                  xori         t1, a6, 680
                  srai         zero, s10, 21
                  nop
                  ori          s2, s0, -1351
                  sub          a6, s9, t0
                  sltu         ra, s2, s7
                  xor          t4, t4, s3
                  slti         a7, tp, -868
                  sub          t1, a0, s6
                  andi         s8, gp, 1164
                  auipc        s7, 884730
                  slti         t6, s7, 1955
                  sub          a5, s8, t6
                  auipc        ra, 657305
                  srl          a7, a7, s11
                  slli         a4, t2, 10
                  sra          t6, s5, t3
                  sra          s3, a4, a5
                  srli         s2, t4, 3
                  lui          a4, 505999
                  xori         a0, a6, 1457
                  sub          t6, t3, a1
                  srai         s6, s8, 25
                  xori         s8, s10, -369
                  sra          s9, gp, s9
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           sp, 0x0
                  li           t3, 0x0
                  li           s6, 0x80000000
                  li           t4, 0xffffffff
                  li           a7, 0xffffffff
                  li           a1, 0x0
                  li           gp, 0xffffffff
                  li           s11, 0x0
                  li           ra, 0x999e3ebb
                  add          gp, s11, a1
                  auipc        a6, 265581
                  addi         ra, t4, 1811
                  addi         gp, a1, -167
                  nop
                  lui          ra, 378877
                  add          t4, a1, gp
                  auipc        sp, 1040157
                  auipc        a1, 224142
                  auipc        t3, 901152
                  auipc        a6, 686469
                  auipc        a6, 609531
                  addi         a7, ra, -378
                  add          ra, sp, a7
                  add          ra, t3, s6 #end riscv_int_numeric_corner_stream_14
                  addi         s7, ra, -843
                  sra          tp, s6, a0
                  addi         s7, s0, 1181
                  andi         gp, s8, 1931
                  or           a5, t3, a1
                  sll          t5, s11, s3
                  slt          a4, s7, gp
                  slti         zero, s3, 2016
                  srl          s1, a6, t6
                  auipc        s4, 671322
                  sll          t6, s6, s9
                  or           s5, ra, s3
                  sltiu        a6, t6, -806
                  sra          s8, a1, a0
                  ori          s6, a4, -689
                  ori          a4, t2, 1549
                  sltiu        t5, a1, -377
                  slti         s11, s9, -1921
                  srai         s6, tp, 23
                  sra          s2, a5, t2
                  sltiu        s8, zero, 34
                  addi         a6, s5, 3
                  sltiu        sp, tp, 695
                  sltiu        sp, s3, -1326
                  lui          s3, 620805
                  srl          s6, s4, s6
                  srl          s8, s4, t2
                  ori          tp, s7, 1078
                  sltu         s9, s9, s2
                  and          a6, a7, s1
                  srai         s2, a1, 9
                  sub          tp, a3, a2
                  slt          s3, tp, t5
                  add          s9, s4, a0
                  xor          t4, a2, sp
                  srl          a7, s3, t5
                  nop
                  xor          a1, sp, s8
                  sub          s1, s1, t5
                  ori          s4, t4, 612
                  slli         sp, t1, 24
                  sll          a6, a1, s3
                  slli         a1, s10, 26
                  sltu         s9, t3, t2
                  nop
                  srai         s11, ra, 22
                  addi         s9, s2, 1076
                  srai         a3, s8, 21
                  slti         s3, t1, 1070
                  sltu         ra, s4, gp
                  nop
                  sub          tp, s7, t2
                  xor          a1, a6, t5
                  sll          tp, s11, t2
                  or           gp, a2, a2
                  srli         a6, a1, 24
                  sub          t1, a6, t4
                  srl          ra, s10, t3
                  xor          s4, ra, zero
                  xori         a0, a5, 505
                  slti         t6, s1, 508
                  sltu         zero, a7, s7
                  addi         s8, s4, -18
                  addi         a0, sp, -1552
                  slli         tp, s10, 24
                  xor          a6, a5, zero
                  and          t0, a7, s1
                  lui          a3, 704495
                  sra          s8, a7, gp
                  srl          s3, a6, t3
                  xor          gp, t2, t0
                  ori          t6, a1, 1371
                  lui          t3, 95909
                  and          s6, tp, a0
                  auipc        a6, 1045500
                  slli         a0, s2, 25
                  sra          a1, gp, s2
                  addi         s7, s3, 1888
                  sub          t3, t2, gp
                  sll          a5, t0, s3
                  sll          s5, t4, a3
                  auipc        a0, 159363
                  lui          t1, 117696
                  srai         s2, sp, 28
                  nop
                  sll          s4, s1, t5
                  slt          t1, a3, t5
                  andi         zero, s11, 1153
                  addi         s1, ra, -383
                  addi         s2, s4, 1592
                  slli         tp, s11, 21
                  add          ra, s7, ra
                  addi         s7, a1, 1483
                  slli         s3, s6, 30
                  andi         s1, s1, 454
                  srai         s10, a4, 28
                  or           a7, t4, a7
                  sll          t1, a4, t1
                  sll          s2, s5, s6
                  addi         s9, s6, -323
                  add          t6, s11, tp
                  sltiu        sp, s8, -1543
                  lui          s4, 187121
                  srai         s3, s1, 12
                  slli         s4, s3, 21
                  sltiu        s4, s1, -2007
                  auipc        a1, 245661
                  addi         a3, t3, -587
                  srai         zero, s6, 11
                  add          s9, tp, a7
                  slti         t6, zero, 478
                  slti         s11, s4, 1635
                  sltu         s5, a3, s7
                  and          t4, t5, tp
                  or           t4, a2, s5
                  auipc        s7, 261708
                  nop
                  and          a4, a5, a4
                  addi         tp, s6, 1117
                  slli         t3, s10, 23
                  sra          ra, a1, a4
                  slt          t5, s4, t1
                  andi         t1, s3, -1067
                  srai         gp, s4, 7
                  add          ra, ra, s4
                  slt          gp, zero, s0
                  xor          t3, t0, s10
                  andi         a6, sp, 85
                  sltu         t1, a7, s7
                  sll          a3, s9, tp
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           ra, 0x65734cc0
                  li           s3, 0x80000000
                  li           t3, 0x80000000
                  li           s1, 0xffffffff
                  li           sp, 0x0
                  li           s4, 0x80000000
                  li           a7, 0x0
                  li           s6, 0x0
                  li           t4, 0x80000000
                  add          sp, sp, s1
                  lui          s4, 1002576
                  addi         s8, s1, -1315
                  addi         ra, t4, 1492
                  sub          ra, s3, sp
                  add          a7, t3, s3
                  add          s8, s3, s4
                  nop
                  addi         s1, s3, -438
                  add          sp, s8, a7
                  auipc        s6, 132199
                  auipc        s1, 160946
                  sub          s3, ra, s6
                  nop
                  nop
                  add          ra, a7, s8
                  lui          a7, 801058
                  addi         sp, s1, 850 #end riscv_int_numeric_corner_stream_19
                  slti         zero, s7, 1307
                  addi         s3, s5, 65
                  sltu         t5, a7, t0
                  auipc        s9, 796645
                  sra          s2, t0, a5
                  sltiu        s7, a0, 1048
                  slti         s4, t4, 1204
                  sltu         gp, a5, tp
                  srai         zero, t2, 1
                  srli         s2, zero, 30
                  andi         a0, a3, 783
                  srli         s6, t5, 30
                  srl          tp, t2, s3
                  sltiu        s6, t5, -1361
                  srli         tp, s6, 11
                  slt          sp, a1, t1
                  or           a0, a1, s9
                  lui          a4, 307334
                  andi         s6, sp, -148
                  auipc        s7, 307655
                  auipc        s7, 518580
                  ori          a1, tp, 1314
                  ori          t3, s10, -625
                  srli         t1, t2, 28
                  slli         s11, t4, 12
                  sll          sp, sp, s9
                  or           t4, s7, a4
                  slt          s11, a0, s6
                  slli         s10, t4, 11
                  slt          gp, s2, s5
                  slti         s2, t5, 351
                  auipc        a5, 402810
                  nop
                  sub          s10, t2, a2
                  sra          s6, s3, t3
                  nop
                  lui          a1, 613310
                  sltiu        a6, s8, 1138
                  ori          a7, a1, 1654
                  auipc        t1, 851294
                  srl          s4, s11, s8
                  nop
                  slt          t5, gp, a2
                  sltu         s4, s6, t0
                  auipc        s2, 324650
                  xori         s10, t1, 1305
                  ori          s6, t2, -1294
                  sltiu        s3, s2, -1294
                  add          a5, s5, s6
                  lui          t3, 308941
                  add          s7, sp, t6
                  sll          a6, t1, s2
                  add          a6, s6, a1
                  slti         a7, s3, -1922
                  slli         t0, s0, 8
                  sra          gp, s2, t4
                  and          s8, t6, s1
                  nop
                  slt          a1, a7, s1
                  and          a3, a4, ra
                  andi         s6, s2, -121
                  ori          a3, t2, -1615
                  andi         s3, a3, 319
                  or           a1, s3, a4
                  sltiu        ra, a1, -1731
                  srai         sp, t3, 15
                  srli         sp, t6, 10
                  ori          t3, tp, 237
                  sra          s3, t2, a7
                  nop
                  and          s8, s10, a0
                  auipc        s5, 234157
                  nop
                  add          a6, s8, a2
                  andi         a5, s5, -235
                  andi         zero, zero, -679
                  auipc        s5, 1028976
                  add          s11, a6, s10
                  auipc        s1, 306489
                  sll          sp, a1, t1
                  ori          a1, a3, 1994
                  slti         a4, s3, -997
                  srli         a5, t0, 17
                  sra          s1, a3, zero
                  sltu         s6, a1, t5
                  slti         s10, a4, 1239
                  sra          t0, t0, s2
                  auipc        a4, 638333
                  ori          s3, s6, 1275
                  srli         s1, s5, 27
                  add          s1, s1, t0
                  srl          s3, s8, t6
                  addi         s6, a0, -1040
                  xori         gp, s3, -993
                  addi         t3, a2, 1679
                  or           s5, t3, ra
                  lui          t3, 306296
                  sltiu        a6, ra, -385
                  slti         a4, a5, 1976
                  or           s2, a1, s8
                  srai         a6, a6, 14
                  slt          gp, s9, s3
                  srli         a5, t5, 6
                  sltu         t6, a3, s9
                  ori          tp, s5, -2027
                  andi         s11, a1, -73
                  auipc        gp, 194746
                  ori          tp, s10, -1580
                  srl          t0, s3, a0
                  srai         s1, s11, 14
                  auipc        tp, 303331
                  sub          s9, s11, zero
                  sra          s6, a3, s0
                  sltu         t4, a2, s8
                  sll          t6, s11, t3
                  lui          s4, 797835
                  slti         t1, t4, -1810
                  sltu         a6, gp, tp
                  slti         zero, s9, 1471
                  slti         t6, s7, 505
                  slt          s6, t3, ra
                  xori         a1, s1, -1033
                  nop
                  addi         sp, sp, 836
                  slli         s11, s11, 18
                  srl          t5, t6, t5
                  slti         s8, a0, 481
                  lui          s4, 470375
                  srai         t0, a3, 28
                  ori          s5, a3, -1536
                  slti         s4, s10, -223
                  xori         t5, a5, -1329
                  sll          a4, s1, a2
                  andi         a1, s11, -1569
                  andi         s3, a7, -311
                  srl          s9, a2, s0
                  andi         a5, s6, -398
                  xori         a6, t6, 373
                  sltiu        a3, a6, -1709
                  andi         s10, s4, -1956
                  xor          tp, t4, gp
                  andi         s4, tp, -21
                  slt          s1, ra, sp
                  xori         s5, s10, -925
                  ori          t1, a1, 427
                  srl          ra, gp, s1
                  nop
                  srl          t0, s5, s10
                  slli         s9, s6, 12
                  srli         tp, s3, 24
                  srl          t0, s5, a6
                  slt          s11, t4, s1
                  add          a6, a6, s7
                  nop
                  srai         s9, s7, 16
                  slti         s2, s3, -615
                  ori          s5, s1, 993
                  srl          a0, gp, s1
                  xor          zero, s6, s6
                  sll          t5, a4, tp
                  sltu         a3, a3, tp
                  sub          zero, s2, a0
                  sra          gp, a1, s3
                  or           s1, s1, s9
                  auipc        s10, 8776
                  and          a6, t3, tp
                  auipc        zero, 319459
                  ori          s11, t4, 1177
                  and          a0, s1, t1
                  sltu         s10, s10, t2
                  xor          a7, s2, s9
                  ori          s1, a3, -741
                  addi         sp, tp, -880
                  sltiu        s1, s2, -430
                  andi         a5, a0, 1555
                  andi         zero, a3, -1240
                  sll          t1, t2, a3
                  lui          s6, 401198
                  lui          t1, 762439
                  xori         sp, ra, -1818
                  or           sp, s8, s2
                  nop
                  andi         s9, zero, 779
                  sll          a3, a4, a7
                  slli         s10, a5, 23
                  ori          s4, s7, 110
                  ori          t3, s8, -977
                  lui          s8, 260504
                  sub          zero, a6, ra
                  slli         s10, s1, 20
                  xori         s8, t4, -1820
                  sub          s6, s8, zero
                  sltu         s11, s2, s5
                  slli         t5, s9, 1
                  slti         s9, a2, -2038
                  or           s2, s8, a0
                  srai         s6, tp, 21
                  srli         t0, t2, 22
                  sltu         t3, t6, t1
                  nop
                  sub          s5, t3, gp
                  srli         a4, gp, 5
                  xori         s5, a5, 1225
                  sltiu        s10, s4, 1388
                  srai         a1, t5, 2
                  srli         a4, a3, 19
                  slli         s6, s4, 6
                  xori         t1, t3, -370
                  ori          a3, s2, -2017
                  or           s3, s9, gp
                  add          s3, ra, t0
                  sub          t0, s0, t1
                  lui          zero, 361446
                  sra          s3, s9, t2
                  xori         s9, s0, 93
                  sra          t5, a0, s3
                  nop
                  auipc        a1, 505911
                  sltu         a4, s8, s1
                  sltiu        zero, gp, 736
                  sltiu        a6, tp, -191
                  srai         s2, a1, 24
                  or           t1, a1, t6
                  slt          s4, tp, a5
                  srl          a5, ra, s0
                  sltu         s4, a7, t1
                  lui          s8, 988713
                  ori          t6, gp, -1603
                  sra          a4, s3, a1
                  slt          a4, t6, s5
                  lui          s3, 388492
                  xori         t6, s6, 213
                  sll          s4, a7, s8
                  sra          s7, s0, t2
                  lui          t1, 949317
                  sltiu        s6, s7, 1900
                  sub          s6, a2, t6
                  addi         a5, s5, 630
                  sll          s5, a2, t3
                  sub          a1, a7, t5
                  xori         s11, t1, -1407
                  add          s8, ra, a0
                  lui          s1, 87168
                  or           tp, a3, a1
                  srli         s8, zero, 12
                  srai         t1, s5, 4
                  addi         a1, s3, -2048
                  auipc        a5, 320331
                  srai         t1, t0, 10
                  srl          t5, a4, s11
                  andi         a5, a4, 1302
                  addi         a6, s3, 1656
                  slli         s11, t5, 13
                  srli         s1, a1, 10
                  and          s3, a7, t5
                  ori          s10, a2, 200
                  andi         s2, s2, 1799
                  andi         s11, tp, 1055
                  sltu         t4, s3, t1
                  xor          s9, a5, tp
                  addi         t4, t6, 1614
                  srl          s3, s1, t1
                  slt          ra, tp, t5
                  lui          s10, 795211
                  add          a7, t4, tp
                  sra          t1, s9, gp
                  or           t3, zero, gp
                  sltu         a6, s5, t6
                  srl          sp, s3, a6
                  sll          s7, a2, a2
                  xori         s10, tp, -604
                  srai         s8, s5, 6
                  xori         t3, s5, 888
                  srl          t5, s9, a4
                  ori          s5, t4, -155
                  sra          a5, zero, t5
                  add          tp, a1, t4
                  srai         t5, a6, 26
                  lui          ra, 878601
                  sltiu        a7, a1, 1989
                  srli         t6, t4, 2
                  sltiu        t6, t5, 839
                  lui          t1, 1027143
                  ori          sp, s7, 1194
                  slli         s6, t3, 29
                  srli         t3, a7, 10
                  add          s11, t4, s1
                  xori         a4, zero, -1544
                  slli         s6, s0, 1
                  nop
                  nop
                  or           a4, s3, a1
                  auipc        gp, 916898
                  lui          a7, 896562
                  ori          tp, s9, -1697
                  sltiu        s3, tp, 601
                  ori          t6, s2, -1504
                  ori          s5, t3, -2044
                  slt          s1, t4, t4
                  or           tp, s2, s0
                  sll          s8, a2, s9
                  srl          a7, s11, s0
                  nop
                  nop
                  xori         s11, a1, -1672
                  andi         s2, s3, 275
                  lui          ra, 502657
                  and          a7, a5, t1
                  or           t1, s2, s1
                  addi         t6, a2, 1197
                  and          a4, s11, sp
                  sll          s5, sp, t6
                  andi         t5, a0, -204
                  xori         a4, gp, -1397
                  ori          zero, a5, 562
                  srai         a3, a3, 26
                  and          t3, a2, tp
                  sub          s2, s6, t3
                  sll          s9, a6, s1
                  andi         sp, s7, -298
                  auipc        t1, 855392
                  and          s5, a0, a6
                  nop
                  addi         s11, a6, 1606
                  ori          s1, t6, 1048
                  slli         s6, t3, 18
                  or           ra, a2, a3
                  andi         s11, s11, 906
                  ori          a6, tp, -1719
                  sltu         s7, s11, a2
                  andi         a3, s4, 354
                  slli         t6, t6, 1
                  sra          a6, s1, s4
                  xor          t0, gp, s6
                  ori          s10, s4, 1144
                  srli         gp, a0, 13
                  sub          s4, t3, a3
                  sll          gp, a6, s0
                  sub          s4, gp, a5
                  sra          a7, a3, t4
                  sltu         gp, s8, s5
                  sltu         s6, s10, s0
                  slt          s8, a1, s7
                  andi         t1, s6, 211
                  addi         gp, a4, -282
                  sltiu        t3, a6, -105
                  sra          a7, gp, zero
                  ori          sp, a7, -54
                  sll          a1, t6, a2
                  slti         t3, t5, -1234
                  andi         a1, a2, 343
                  sltu         a7, s11, t5
                  add          s10, t3, s4
                  sll          t1, a0, a1
                  slli         a0, a4, 18
                  lui          a7, 507698
                  srl          a1, gp, t3
                  sltiu        s1, t5, -1553
                  xori         s11, a1, -1811
                  nop
                  slti         t0, a7, -1259
                  sltu         a7, s10, sp
                  slli         a3, s8, 20
                  xor          s5, a4, s0
                  sltiu        t6, t3, 1434
                  slti         t4, s3, -497
                  sltu         s5, s10, a4
                  sll          s1, t2, s6
                  slti         s1, a2, -735
                  slli         gp, a6, 31
                  li           s2, 0xd068050c #start riscv_int_numeric_corner_stream_11
                  li           a6, 0xffffffff
                  li           a0, 0x0
                  li           s1, 0xffffffff
                  li           s8, 0x0
                  li           s5, 0x0
                  li           s10, 0x0
                  li           s7, 0xffffffff
                  li           a7, 0x5f2d81ed
                  li           s3, 0xffffffff
                  lui          s5, 653531
                  addi         s7, s2, -1940
                  auipc        a7, 790457
                  lui          s7, 171938
                  addi         s5, a6, -755
                  auipc        s5, 135816
                  lui          s2, 614141
                  addi         s8, a6, 1104
                  sub          a6, s8, s5
                  nop
                  sub          a0, a6, s2
                  auipc        s5, 677325
                  addi         a0, s3, -1877
                  auipc        s2, 738769
                  addi         s1, s8, 1679
                  auipc        s3, 783817
                  auipc        a6, 508144
                  nop
                  lui          a6, 681900
                  addi         s3, a7, 325
                  lui          s2, 209609
                  auipc        a6, 798087
                  sub          a6, a6, s10
                  addi         s3, a6, -1844
                  addi         s10, s7, -1572
                  nop
                  sub          a7, a7, a7
                  lui          s10, 260286 #end riscv_int_numeric_corner_stream_11
                  slti         s8, t3, 927
                  lui          a0, 608528
                  slt          gp, s8, s8
                  slli         t1, t6, 2
                  sra          s3, a3, s6
                  nop
                  ori          s7, a2, 1033
                  slli         s11, zero, 0
                  xor          a4, s0, tp
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           s4, 0xacd5f585
                  li           t4, 0xffffffff
                  li           a0, 0x0
                  li           s2, 0x0
                  li           s3, 0x0
                  li           t5, 0xffffffff
                  li           t3, 0x0
                  li           a5, 0xffffffff
                  li           s8, 0x0
                  sub          t0, s8, s2
                  auipc        s2, 30258
                  auipc        a0, 306353
                  addi         s4, t4, 1599
                  addi         s3, t4, 2020
                  lui          s3, 125666
                  sub          a5, t4, s4
                  add          t0, a5, a5
                  addi         a0, a5, 583
                  sub          s3, a0, a5
                  lui          s2, 586351
                  addi         t3, s3, -1192
                  lui          s2, 473570
                  addi         a0, s4, -973
                  nop
                  auipc        t0, 26209
                  nop
                  nop #end riscv_int_numeric_corner_stream_5
                  srli         a1, t0, 15
                  addi         a1, t1, 1543
                  and          ra, s5, t2
                  ori          s10, t4, 1683
                  slti         a5, s11, 1273
                  xori         s5, gp, -1769
                  srl          t5, s8, s1
                  add          t4, a4, s2
                  nop
                  ori          s11, a2, -791
                  or           s7, a0, t5
                  sltiu        t0, t4, -1712
                  srli         s6, s10, 24
                  srai         a5, s9, 9
                  and          a4, t3, a0
                  xor          t5, t4, a6
                  xor          s5, a0, t0
                  srai         s2, s4, 26
                  add          s7, a2, s3
                  sub          a3, t5, s5
                  sub          s6, a3, s11
                  slti         zero, s3, -1557
                  slti         a5, s5, -957
                  ori          t3, t2, 677
                  srai         t0, zero, 1
                  nop
                  sub          s2, s6, s9
                  auipc        t1, 507184
                  auipc        a1, 240293
                  xor          a1, t3, s1
                  nop
                  xor          s9, s4, sp
                  addi         zero, a7, 612
                  lui          s10, 169245
                  nop
                  andi         s2, s10, -37
                  slli         s6, tp, 2
                  auipc        t3, 679502
                  sltiu        t1, a7, -255
                  andi         zero, t0, 1481
                  srl          gp, ra, ra
                  addi         s9, t3, 7
                  xor          s3, s3, a3
                  xor          sp, t1, t0
                  srli         ra, t5, 0
                  srli         a1, s3, 15
                  and          s3, a1, s0
                  srai         tp, t2, 24
                  sltu         s3, t6, a0
                  or           s7, s3, s4
                  xor          s5, a7, s4
                  slti         zero, s5, 1897
                  srl          s11, t2, s0
                  andi         t0, t3, 1030
                  auipc        t5, 811507
                  sltiu        t5, a2, 594
                  sltu         s10, t2, gp
                  srli         s6, s11, 23
                  or           a3, s5, a0
                  addi         t0, s4, -917
                  nop
                  andi         s7, s0, 53
                  sll          t3, t3, a6
                  srli         s6, s9, 21
                  xori         s3, ra, -995
                  sub          t5, s8, s1
                  srai         s10, t1, 31
                  slli         s9, t5, 16
                  add          a7, a7, t2
                  ori          s6, a3, 792
                  add          a5, a4, a0
                  add          s9, s3, t3
                  auipc        s9, 452310
                  slli         t1, s5, 12
                  xor          sp, t1, t0
                  sub          s5, a6, gp
                  xori         s10, s1, 202
                  srl          tp, a6, s2
                  slli         s3, tp, 29
                  ori          s3, s6, 1402
                  auipc        s7, 54428
                  srai         s5, s0, 9
                  slti         tp, s5, 1240
                  addi         a1, zero, 871
                  and          a4, t5, t3
                  sll          t4, t1, tp
                  or           tp, s2, t4
                  ori          s2, s10, -251
                  slti         sp, s6, -1779
                  lui          a7, 590032
                  auipc        a3, 543738
                  nop
                  xori         a6, s1, -1223
                  add          a7, a7, gp
                  or           t3, t5, a5
                  lui          a6, 860725
                  auipc        t5, 226439
                  or           s10, a7, a2
                  and          gp, s0, ra
                  slt          s7, t1, s3
                  srl          s3, s1, tp
                  andi         t6, s7, 1193
                  andi         s4, zero, 194
                  sll          t3, a6, a3
                  sltu         sp, tp, s6
                  andi         t5, sp, -1634
                  slt          a1, t3, tp
                  auipc        s3, 560635
                  srl          a5, a4, a6
                  slt          t5, tp, t0
                  ori          t1, s11, 857
                  srli         t4, s5, 1
                  add          a4, t0, s7
                  xor          s11, a4, tp
                  xori         t0, s6, 1652
                  lui          t5, 148298
                  sub          s3, a2, t0
                  sll          s10, s9, a2
                  srl          a0, t2, a0
                  slli         t0, s6, 10
                  sltiu        s8, s9, 1109
                  srai         s6, t1, 29
                  nop
                  srl          t5, a1, a0
                  and          s11, s3, t3
                  sra          t5, a4, a3
                  and          t1, t3, t0
                  slti         t0, s2, 1869
                  xor          tp, a4, s0
                  slti         t4, a3, 1082
                  nop
                  srli         ra, t4, 31
                  srli         t6, s8, 24
                  slti         gp, t0, 785
                  nop
                  slti         t0, zero, 1188
                  sub          a0, zero, t2
                  srai         t0, s11, 21
                  sub          ra, s4, t5
                  sll          s1, s3, s1
                  add          t3, s6, s7
                  xor          s4, t4, s10
                  xori         a4, s2, -1072
                  add          a5, t2, t1
                  nop
                  lui          s8, 600038
                  addi         s4, s8, 1244
                  sltiu        s7, t2, -884
                  sll          s6, gp, a2
                  andi         t0, gp, 431
                  slti         s6, t6, -1277
                  slt          s11, s6, gp
                  xori         a3, s7, -1917
                  slli         sp, gp, 6
                  srli         t4, s5, 9
                  auipc        s5, 238671
                  srl          a1, a4, t3
                  add          a5, a3, a0
                  andi         s5, s10, -1636
                  slti         s3, gp, 181
                  slli         s1, a6, 24
                  srl          s8, s2, ra
                  andi         ra, s11, 2025
                  sltu         s5, a7, s4
                  sltiu        a3, t2, 850
                  addi         tp, s3, 943
                  sltu         t3, s3, t3
                  sll          a0, s7, t0
                  sltiu        a0, t4, 2046
                  slti         s8, sp, 1622
                  srl          s9, zero, a2
                  srl          ra, a7, s1
                  xori         zero, s2, -1491
                  sra          t6, s9, t6
                  slt          t5, t3, s2
                  ori          t0, tp, 1819
                  sll          s1, s1, t4
                  slti         a3, s0, -839
                  nop
                  sltiu        tp, a7, 1533
                  sltu         s7, s1, gp
                  or           t6, s6, s11
                  andi         t6, t3, -542
                  nop
                  srl          gp, s5, s2
                  slli         sp, a6, 26
                  srli         s10, a5, 18
                  lui          s1, 947280
                  sll          s8, s2, a1
                  auipc        s1, 816062
                  xor          s6, a5, t5
                  xor          t1, t2, tp
                  sub          s7, s8, s9
                  srai         a7, ra, 10
                  srai         t1, t6, 28
                  sll          t3, t5, t4
                  slt          s9, s7, s7
                  srai         a0, a2, 14
                  srai         sp, s4, 26
                  add          tp, t4, s4
                  nop
                  sltiu        a3, zero, -1307
                  sub          t5, a1, s10
                  slt          t5, a7, a4
                  srl          s6, t1, t5
                  sltiu        a5, s1, -1455
                  srli         t3, a5, 31
                  auipc        s7, 697360
                  srl          a7, a5, s4
                  srli         t5, s5, 18
                  add          s2, t4, zero
                  sub          a0, a3, t3
                  sra          a3, tp, t6
                  auipc        a4, 109675
                  sra          t1, t6, s0
                  srli         s4, tp, 12
                  or           tp, zero, s11
                  nop
                  addi         s10, s4, 327
                  and          s1, s11, t4
                  lui          a0, 853735
                  auipc        tp, 383698
                  lui          a0, 935602
                  xor          tp, a1, t3
                  andi         t5, ra, -1837
                  xor          gp, s9, gp
                  xor          a4, gp, a5
                  and          s11, t4, s6
                  or           s6, a2, s2
                  slt          s2, s10, s3
                  andi         a7, t4, -668
                  and          t6, a6, a2
                  slti         t4, t3, 1234
                  ori          t0, ra, -927
                  sll          s9, s0, a5
                  or           ra, s8, a0
                  add          a3, t5, a5
                  auipc        s4, 760666
                  or           s2, t5, zero
                  slli         s3, t1, 13
                  slt          tp, s7, s11
                  xor          tp, zero, t4
                  add          a0, s6, s0
                  slli         a4, s5, 25
                  sltiu        gp, t4, 1198
                  xori         t1, s4, -577
                  ori          s3, s5, 1242
                  sra          s10, a6, t3
                  auipc        a3, 778410
                  slli         s11, s0, 9
                  xor          sp, zero, a5
                  srl          s1, a0, s3
                  xori         s2, s8, 1331
                  and          s4, s8, s5
                  slt          zero, s9, a5
                  auipc        s10, 21569
                  lui          tp, 432634
                  slti         sp, sp, -1568
                  srli         s9, a4, 25
                  ori          t5, s0, 1385
                  srl          a4, t6, s2
                  lui          t5, 435191
                  slli         a7, a1, 28
                  nop
                  ori          s3, sp, -1278
                  slti         s8, t3, 1661
                  xori         gp, s11, -1155
                  slt          s10, tp, s5
                  sltiu        t4, sp, 1122
                  nop
                  slti         ra, s4, 1764
                  sra          a4, s0, a7
                  srai         s7, s7, 20
                  add          gp, s9, t6
                  add          s5, t2, sp
                  xori         s1, s6, -141
                  andi         ra, s8, 99
                  nop
                  srai         sp, gp, 2
                  and          t0, s11, a1
                  nop
                  sub          s5, s5, s6
                  srai         s11, ra, 16
                  srai         t0, t6, 24
                  and          s7, tp, t5
                  xor          s3, t6, s7
                  xor          t6, zero, a1
                  slti         gp, a6, 447
                  add          sp, a7, s2
                  sll          a3, a0, s9
                  add          s6, s10, s0
                  and          t5, t1, s8
                  lui          t1, 398353
                  andi         t6, zero, 990
                  slti         t4, s10, 1628
                  sra          s5, a1, t0
                  sra          t5, s9, s6
                  lui          t1, 35573
                  srai         t3, s4, 10
                  slt          a5, s8, tp
                  sltiu        zero, t5, 664
                  nop
                  sltiu        s7, tp, 608
                  srli         a7, t2, 11
                  srai         t0, s3, 23
                  sll          s1, s7, a7
                  slli         s8, a1, 3
                  xori         a3, t6, -1664
                  and          ra, s3, a6
                  sub          a6, s10, zero
                  andi         a0, a5, 346
                  slti         s3, a2, -119
                  nop
                  slt          a0, t0, s6
                  srli         a0, s11, 6
                  sub          a1, s6, sp
                  slt          a4, t5, s2
                  add          ra, s9, a1
                  xori         a6, s3, 1679
                  slli         t3, t5, 1
                  li           s6, 0xccc01c72 #start riscv_int_numeric_corner_stream_18
                  li           a6, 0x80000000
                  li           a7, 0xcceb2d6b
                  li           t4, 0xe4bc9d0d
                  li           t5, 0x80000000
                  li           t3, 0xffffffff
                  li           t6, 0xffffffff
                  li           a5, 0x0
                  li           s4, 0xffffffff
                  li           s10, 0xfa43a4a6
                  auipc        t3, 625944
                  addi         t6, s6, -2011
                  auipc        t3, 415449
                  sub          t5, t4, s10
                  auipc        t5, 256324
                  add          t6, s6, s10
                  nop
                  nop
                  nop
                  auipc        s10, 707142
                  lui          a5, 325266
                  sub          s10, a6, t5
                  auipc        a6, 431453
                  auipc        t5, 971323
                  add          t4, a7, t3
                  nop
                  lui          a6, 758395
                  nop #end riscv_int_numeric_corner_stream_18
                  andi         s4, s5, 1526
                  andi         a6, ra, 348
                  addi         a1, s11, -1906
                  xori         tp, a7, 267
                  sub          t0, s7, a3
                  and          sp, s9, t6
                  nop
                  lui          s4, 420435
                  and          a4, a1, s7
                  sra          t5, t0, s0
                  slt          zero, s5, a5
                  srl          t6, a3, t5
                  sll          a1, s8, s6
                  addi         s3, t5, -1839
                  slli         s5, s3, 11
                  sll          tp, zero, s10
                  ori          s11, a6, -1233
                  slti         s5, a3, 1693
                  addi         t1, s4, 263
                  srai         t1, a6, 8
                  srl          s5, t2, t1
                  srli         a3, zero, 9
                  lui          a5, 644974
                  slli         a3, s9, 31
                  slli         gp, gp, 15
                  sltu         s1, zero, s8
                  or           a5, s5, a0
                  sll          s6, t4, s11
                  xori         s8, a0, -533
                  slti         a6, s1, -210
                  lui          ra, 713132
                  auipc        a3, 797516
                  srli         s11, s3, 21
                  nop
                  srli         s11, s7, 24
                  slti         s2, t2, 906
                  andi         gp, s7, 1184
                  slt          a0, a1, s6
                  or           s4, a0, s3
                  sra          zero, t0, tp
                  srli         t1, a0, 19
                  sub          s3, t0, a4
                  auipc        t5, 95652
                  sll          a6, a0, t2
                  sltiu        a3, a2, -730
                  andi         s9, s1, -388
                  auipc        a4, 543923
                  srli         t4, s4, 23
                  sll          t1, t2, t4
                  lui          s10, 340558
                  auipc        s8, 387315
                  add          sp, s9, t1
                  slti         s7, s8, 1600
                  nop
                  srai         s2, s10, 17
                  sltu         t5, a5, s8
                  sltiu        zero, a4, 1398
                  xor          s6, tp, a1
                  sll          t4, t1, zero
                  addi         ra, ra, 59
                  sub          t6, t0, a3
                  and          s9, s7, a3
                  lui          t4, 526996
                  or           a7, sp, zero
                  andi         t5, s4, -1561
                  sltiu        a6, a0, 1099
                  addi         a6, s9, 735
                  or           s4, a3, sp
                  ori          t1, a1, -348
                  nop
                  srai         a7, a0, 17
                  srl          tp, s6, t5
                  slt          s4, a7, a0
                  xori         s2, t2, -202
                  addi         gp, ra, -24
                  xori         a0, s9, -963
                  sltu         a4, s3, a4
                  and          a6, a5, s0
                  sub          gp, s11, a2
                  and          a5, gp, a1
                  sub          s2, t3, tp
                  and          a6, s9, t0
                  or           t6, s3, t2
                  slt          a1, zero, a7
                  nop
                  slti         s1, a7, 381
                  sll          a0, s1, s2
                  slli         gp, a6, 2
                  and          a5, s5, s6
                  srai         t4, t5, 6
                  and          s9, s8, a7
                  auipc        s8, 613537
                  sltiu        s7, s7, -1557
                  xor          t4, t6, a7
                  sltiu        a3, a0, 820
                  slti         s3, t0, -265
                  addi         t3, s6, 1123
                  nop
                  srai         a7, tp, 15
                  nop
                  add          t3, s11, a3
                  xor          a4, a3, a5
                  slli         t3, s3, 9
                  xor          a6, t1, a2
                  or           s6, a1, s7
                  sll          s3, a7, s3
                  or           a1, t5, a4
                  and          s3, a2, t6
                  ori          a3, s2, 1277
                  xori         t3, t4, 54
                  srli         s7, s9, 19
                  srai         s4, s0, 10
                  and          s1, t2, s0
                  auipc        sp, 193927
                  srli         s1, a4, 11
                  and          t5, a3, s7
                  add          a3, t0, gp
                  sub          s11, a6, ra
                  sltu         s9, t4, a2
                  xor          s11, s9, tp
                  sub          gp, s10, s0
                  srai         s11, s6, 31
                  addi         s1, t4, -175
                  xori         t5, s1, -216
                  and          zero, a0, s8
                  srai         zero, s1, 8
                  srl          ra, s9, s4
                  sltu         s11, s8, s10
                  xor          a3, s1, tp
                  slli         s8, t1, 3
                  sltiu        sp, t4, -1351
                  and          s7, a7, s3
                  add          tp, t1, t1
                  slli         s4, s2, 9
                  xor          t6, a7, a0
                  slt          zero, a1, a0
                  srai         s3, s0, 29
                  andi         s10, s7, 439
                  sll          t5, s0, zero
                  srl          t3, s8, s11
                  slti         t3, a7, 1192
                  and          a6, a1, a5
                  nop
                  nop
                  slli         s7, a5, 2
                  slti         s8, s5, -1495
                  sltu         s5, ra, a7
                  or           s10, a7, a0
                  sll          a1, s8, ra
                  slli         a3, ra, 25
                  srai         a6, s0, 27
                  auipc        t4, 693834
                  xori         a5, a2, -1217
                  xor          a1, s1, ra
                  auipc        a1, 311514
                  or           s11, ra, a4
                  nop
                  sltiu        s10, a1, 936
                  ori          tp, t1, -1794
                  sll          s1, a4, t2
                  srai         s8, a5, 10
                  sll          a6, zero, a3
                  sub          s2, t4, s2
                  slt          t5, s10, t4
                  sub          t1, t3, t3
                  slti         s3, s8, 957
                  sltu         s5, s5, s1
                  xori         s7, a4, -1417
                  sll          a6, s1, s10
                  slli         s7, t3, 23
                  srli         t6, s0, 26
                  sub          zero, a7, t5
                  sltiu        s1, a0, 593
                  sltu         a5, s6, t1
                  sra          a5, t5, t6
                  ori          a5, t1, -1544
                  nop
                  sltiu        a0, t6, 1598
                  add          s4, a2, t1
                  sub          t3, t4, s11
                  add          t5, s8, s3
                  auipc        s8, 916091
                  srl          s7, a1, s5
                  addi         zero, s9, 1586
                  nop
                  sltu         t4, s11, s6
                  ori          s6, a3, -630
                  sub          gp, s6, t5
                  sub          t1, a0, a1
                  sltu         sp, tp, a3
                  sltiu        s4, s6, 1841
                  srl          s10, tp, s9
                  ori          s7, ra, 1119
                  slt          s11, s1, s9
                  slt          s7, s9, a3
                  sll          s4, t5, s10
                  sub          t5, ra, s1
                  sll          a1, t4, s8
                  add          gp, s1, a0
                  and          zero, t1, t6
                  slli         t5, a6, 4
                  slti         s9, ra, 25
                  slli         s11, a0, 18
                  auipc        s8, 203200
                  slli         a4, t4, 0
                  sltiu        gp, s0, -1824
                  slti         a0, s1, -1665
                  sub          s1, a4, a6
                  sra          zero, s1, s3
                  sltiu        t3, a1, 1896
                  srli         a6, ra, 18
                  sra          t5, s0, gp
                  or           t5, a6, t3
                  slt          s8, a2, t4
                  srai         s7, s1, 25
                  srl          a6, s2, a6
                  nop
                  slti         zero, s6, 676
                  addi         t3, s9, -782
                  nop
                  srli         s7, a6, 7
                  slti         s5, a4, -1426
                  srl          a1, s2, s11
                  xor          t1, t0, tp
                  sub          t3, a1, gp
                  ori          s3, s5, 1328
                  addi         a3, a0, 1104
                  xor          s3, t6, a1
                  sltiu        gp, sp, -1285
                  sll          t0, s3, a0
                  srai         s10, t3, 0
                  andi         a3, s4, 830
                  addi         s4, a2, 1766
                  add          a1, ra, zero
                  add          s4, sp, s8
                  sll          a4, a3, a1
                  sll          a4, s11, s1
                  srai         s10, t1, 19
                  sub          t1, a3, a2
                  srl          s4, s5, ra
                  sltiu        s2, tp, -1137
                  xori         s10, a4, -1733
                  srai         zero, tp, 7
                  sub          s11, a5, t5
                  or           a3, a6, a5
                  srli         a1, s6, 2
                  add          a6, a3, s10
                  srai         a0, gp, 23
                  xori         gp, a5, -1933
                  auipc        s3, 582471
                  sltiu        t0, t3, 1893
                  and          gp, t0, sp
                  and          s2, t6, t3
                  srl          a6, a7, s1
                  ori          sp, s3, -1841
                  ori          t0, s11, 843
                  andi         s11, s10, 102
                  sra          t0, ra, zero
                  slt          s3, a0, s1
                  sltu         a4, gp, a6
                  ori          t1, tp, 1819
                  sra          s11, t0, s3
                  slli         t5, t6, 3
                  lui          a1, 670066
                  srai         t3, a1, 18
                  andi         s10, a3, 768
                  slt          t4, s9, t3
                  ori          a6, a3, 905
                  sra          t4, s5, s9
                  li           a7, 0x69e18ae7 #start riscv_int_numeric_corner_stream_2
                  li           t1, 0xffffffff
                  li           s4, 0x0
                  li           s5, 0x0
                  li           t0, 0x494a4a1d
                  li           a4, 0xffffffff
                  li           s8, 0xffffffff
                  li           tp, 0x68130e76
                  li           s2, 0xffffffff
                  li           gp, 0x0
                  add          s8, gp, a7
                  lui          gp, 269130
                  auipc        s4, 797628
                  auipc        s5, 146369
                  add          a7, tp, s4
                  add          tp, s4, a7
                  addi         t0, a7, 1900
                  addi         s2, s4, -771
                  auipc        tp, 111522
                  sub          a4, a4, gp
                  addi         s5, s5, -1868
                  nop
                  addi         s4, tp, -1413
                  auipc        t0, 123325
                  nop #end riscv_int_numeric_corner_stream_2
                  srli         t1, tp, 3
                  add          a0, s7, t5
                  and          s6, a1, a5
                  xori         a5, t3, -625
                  add          ra, t6, a5
                  add          ra, s9, sp
                  sub          ra, tp, s9
                  sll          a5, t3, s3
                  sub          a4, a2, t5
                  slt          s5, s11, s8
                  or           a3, tp, t0
                  xori         ra, s5, 1564
                  sltiu        a4, gp, 1135
                  xori         s2, t3, -1611
                  lui          s5, 278442
                  sra          t3, tp, t1
                  srai         a5, gp, 11
                  xor          s7, s3, s2
                  xori         tp, a2, 1436
                  sltu         s6, a6, t4
                  slt          tp, s9, s9
                  sltiu        a6, t1, 896
                  auipc        a4, 629971
                  sra          a5, s11, a7
                  add          s8, a4, a3
                  addi         s8, t0, -792
                  lui          t3, 695945
                  srai         zero, s9, 2
                  add          sp, t6, a6
                  addi         t5, s9, 1155
                  xor          s8, a4, zero
                  auipc        a0, 126430
                  srai         s5, s4, 26
                  or           a6, t5, t4
                  sub          zero, s6, a7
                  sltu         a1, s1, gp
                  andi         s11, s6, 1562
                  andi         s7, t6, 1732
                  srai         a7, t4, 18
                  sra          t5, a3, t1
                  andi         t3, s2, 652
                  nop
                  lui          a3, 85477
                  xor          a5, s10, s11
                  or           a5, s5, s0
                  nop
                  auipc        a0, 424715
                  sll          s10, a0, t4
                  lui          a6, 612492
                  or           s11, s7, s3
                  auipc        tp, 586649
                  nop
                  lui          a4, 785341
                  and          s9, t3, t0
                  andi         a1, a3, -1984
                  andi         ra, sp, -1620
                  and          s5, s11, t6
                  auipc        s10, 68412
                  sll          a0, t1, s3
                  or           tp, a0, s10
                  xori         a7, s7, -1438
                  sub          t6, t6, a1
                  lui          t6, 334510
                  auipc        a4, 486203
                  lui          s2, 581467
                  xori         gp, t0, 954
                  srli         t4, t3, 17
                  xori         s7, s0, -2002
                  addi         s6, a1, 1008
                  sra          s6, sp, a2
                  nop
                  slti         s1, s5, -1645
                  srai         a1, a3, 6
                  sltu         a5, tp, a3
                  srl          sp, s4, s5
                  slti         ra, s8, -1155
                  sra          s5, s1, a6
                  sll          t1, a7, s4
                  auipc        a0, 255639
                  slli         t4, sp, 20
                  add          zero, t0, a0
                  xor          a5, s3, t0
                  auipc        gp, 18678
                  xori         a0, a1, -655
                  slli         sp, t4, 26
                  add          t1, s4, s6
                  srli         s1, a2, 4
                  sltu         s10, a4, t6
                  sltu         a7, a0, t1
                  sltiu        t0, t5, -1097
                  add          tp, t4, a5
                  slti         gp, a3, 118
                  sll          a7, s7, t6
                  slli         t0, s10, 7
                  xori         t1, t5, -23
                  srl          zero, ra, a4
                  slli         sp, a3, 20
                  addi         gp, gp, 1452
                  slli         sp, a3, 5
                  ori          t0, t6, 1394
                  add          t5, tp, a4
                  srai         s7, t1, 14
                  slti         s6, s3, 1784
                  srli         tp, s4, 25
                  or           t5, a6, s10
                  slt          a1, a2, a1
                  or           a6, s8, s10
                  nop
                  slti         s4, s0, 639
                  srai         s3, sp, 26
                  xor          t0, a1, a3
                  slti         s11, s5, -381
                  slli         a4, a4, 31
                  andi         t6, t6, 1597
                  sra          a3, s5, s1
                  ori          a4, zero, -1080
                  nop
                  add          s2, t3, a4
                  sltiu        a6, a2, 1285
                  sub          t1, t6, a0
                  sra          s1, s9, s10
                  add          s1, s9, s10
                  xori         s7, t4, -419
                  nop
                  srai         s2, a3, 18
                  andi         s10, a3, 285
                  srai         t1, a3, 17
                  sra          s11, s10, s9
                  xori         s7, a0, -838
                  lui          s8, 1022352
                  srl          s10, s0, a4
                  or           t3, s10, a5
                  and          sp, zero, t5
                  sll          tp, s3, s7
                  sra          s5, s1, tp
                  lui          s11, 28604
                  sll          t4, ra, a3
                  andi         a5, s6, 275
                  andi         t0, t3, 126
                  srli         a4, t0, 31
                  slli         t6, s0, 2
                  add          s11, s7, sp
                  xor          a1, s4, s3
                  auipc        s2, 123675
                  slti         t0, s6, 319
                  nop
                  or           a5, t3, a6
                  sltu         a1, a7, t2
                  srl          s9, t4, t5
                  srai         s1, s3, 17
                  xor          a0, s10, s7
                  add          s7, s1, tp
                  sltiu        zero, a5, 726
                  xori         s1, s10, 1841
                  slt          ra, s11, s4
                  slli         s8, a6, 11
                  slti         s1, t2, -375
                  andi         s5, s1, -1646
                  or           t1, a0, tp
                  slt          a6, t6, s5
                  slli         a6, a1, 27
                  and          a7, ra, gp
                  and          a3, a0, a0
                  xor          tp, t5, s8
                  sltiu        s8, a4, -996
                  srl          s4, s1, zero
                  slti         t1, s7, -1112
                  slli         ra, ra, 1
                  srai         t6, tp, 14
                  or           a4, s4, a3
                  lui          s7, 247499
                  sltu         ra, s5, gp
                  sltu         s5, a2, t5
                  andi         s8, a4, 1947
                  andi         s7, a7, -1213
                  andi         s4, s0, 1133
                  sltu         s5, s9, a0
                  lui          s2, 105614
                  lui          s6, 62825
                  auipc        a0, 283423
                  sltiu        tp, s6, -984
                  or           t3, s8, s11
                  xor          gp, s5, ra
                  add          s3, s0, ra
                  or           t0, t3, tp
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           s3, 0xffffffff
                  li           s5, 0xffffffff
                  li           s9, 0xfee03235
                  li           s2, 0xffffffff
                  li           s4, 0x89e05dde
                  li           t4, 0x80000000
                  li           s11, 0x87f7a5a
                  li           t0, 0xffffffff
                  li           a1, 0xffffffff
                  auipc        t0, 883709
                  nop
                  sub          s9, s9, s4
                  add          s6, s6, s6
                  add          s6, s5, s11
                  sub          s2, a1, s3
                  auipc        s5, 916405
                  nop
                  addi         s5, t4, 1894
                  addi         s6, s4, -977
                  addi         t4, s5, -1715
                  lui          s11, 686322
                  auipc        t0, 466355
                  add          s9, s5, t4
                  sub          s5, t0, s5
                  addi         s2, s6, -934
                  add          s11, s2, s5
                  lui          s9, 361536
                  nop
                  nop
                  lui          t0, 854390
                  auipc        s5, 2168
                  sub          s4, t0, s2
                  add          s9, s11, a1
                  sub          s3, s9, t4
                  sub          t4, t0, s6 #end riscv_int_numeric_corner_stream_1
                  add          s9, t3, s11
                  sub          a4, s2, t2
                  sra          a6, a2, s7
                  nop
                  sltu         s4, ra, s10
                  xor          t3, s11, a7
                  sub          a0, t2, a4
                  lui          a5, 44536
                  xori         t3, tp, 109
                  or           s11, s7, sp
                  andi         zero, a7, -1705
                  xori         a3, s3, 825
                  add          t6, a1, zero
                  xori         a5, t5, -61
                  slt          t6, s5, a0
                  andi         s6, s1, 586
                  or           a4, s11, s11
                  ori          zero, zero, -974
                  slt          s4, s9, s9
                  or           t5, s0, s2
                  sub          ra, s7, a0
                  addi         a7, t3, -1841
                  addi         t4, s8, 1578
                  sub          gp, a4, t0
                  slli         tp, s1, 6
                  andi         a1, s6, 866
                  sub          s5, t2, t5
                  sub          a7, ra, a0
                  addi         s10, a4, 11
                  sltiu        s8, s0, 1343
                  lui          s11, 1025769
                  sltu         ra, t5, s8
                  srli         t3, tp, 18
                  srl          a5, a1, s6
                  sll          s11, t2, s4
                  srli         s5, s9, 9
                  sltu         t4, a5, s7
                  slti         s9, t3, -1121
                  andi         tp, s0, -1115
                  nop
                  sra          a7, t3, gp
                  xor          gp, a1, gp
                  ori          a3, t3, 262
                  add          s6, s3, t6
                  lui          s4, 987646
                  and          a3, a0, t3
                  add          a5, sp, sp
                  auipc        s9, 177120
                  xori         zero, s8, -552
                  xor          t1, a3, s9
                  addi         s2, gp, 2
                  xori         t6, s1, 1800
                  sll          gp, s10, s7
                  andi         t0, a0, 634
                  xori         a7, a1, 261
                  auipc        a0, 463971
                  lui          tp, 770846
                  add          s2, t3, s2
                  sub          s4, t6, s2
                  xor          t5, s9, s4
                  xor          a0, s8, t0
                  srl          a6, s0, s10
                  xori         ra, a2, -259
                  add          s8, a5, a1
                  slti         s4, s7, 565
                  srai         tp, a5, 0
                  andi         a5, sp, 101
                  or           t5, s0, t3
                  srl          s3, gp, s4
                  sltiu        s6, s8, 428
                  sltiu        a6, s10, 766
                  ori          a0, s7, -1687
                  sltiu        t4, a2, 1366
                  or           gp, t2, s10
                  srli         s9, t1, 12
                  xori         t6, a7, -243
                  srli         s6, s1, 28
                  or           sp, s11, t2
                  srl          s5, ra, a2
                  xori         s5, a1, 53
                  add          s2, zero, s2
                  sll          tp, a4, sp
                  xor          t4, a7, t4
                  xor          sp, s1, t5
                  slti         t3, a1, -741
                  auipc        s3, 112646
                  slt          s2, s6, s10
                  lui          s1, 905930
                  slt          t0, s9, gp
                  sll          zero, sp, t4
                  sltiu        t4, t6, 1741
                  auipc        a7, 525848
                  andi         s10, a4, 288
                  slt          s5, s7, a4
                  slt          a6, a0, t5
                  sub          t4, s1, s10
                  add          a3, a1, s5
                  slt          s10, a3, s4
                  ori          s11, t0, -856
                  srai         s7, s9, 13
                  slti         s3, a5, 64
                  andi         a1, t3, -376
                  slti         t4, s11, -1274
                  and          a7, ra, a7
                  and          t4, a6, t1
                  srl          a4, a1, t2
                  add          s11, sp, sp
                  srli         a4, s2, 29
                  srl          s4, t5, t4
                  srai         ra, s1, 7
                  ori          s11, a6, -978
                  slt          sp, s3, s10
                  nop
                  sltiu        s9, s0, 39
                  slti         s8, t0, 292
                  add          a5, a5, a4
                  auipc        a1, 337306
                  sra          gp, a5, s5
                  sltu         s10, tp, s2
                  slti         a5, s10, 1247
                  ori          t5, a5, 762
                  or           s6, a6, s3
                  andi         a5, s11, 1410
                  sltu         gp, a5, a4
                  nop
                  srli         t5, t3, 24
                  slli         t1, a2, 30
                  xori         ra, a3, 860
                  sra          t3, a5, s10
                  or           tp, a4, tp
                  slti         a6, s8, -1426
                  srai         t5, a2, 12
                  xor          a6, s8, gp
                  srai         t3, s1, 15
                  auipc        s2, 372248
                  addi         s10, s6, -898
                  andi         sp, zero, 422
                  addi         s3, a7, -1889
                  srl          a6, s11, a0
                  slli         a5, t2, 6
                  slti         a7, s4, -1048
                  sltiu        a1, a3, 1859
                  addi         s10, s1, -1418
                  auipc        a7, 291666
                  sll          t1, t4, a3
                  sub          zero, s3, a1
                  sltu         t5, ra, s3
                  sll          s6, s2, a1
                  nop
                  and          s1, tp, a3
                  lui          s5, 528241
                  auipc        ra, 982495
                  sra          s4, s10, s6
                  srl          a4, s4, s0
                  slli         s6, s6, 31
                  nop
                  and          ra, t1, s5
                  ori          gp, s7, -1027
                  sub          s5, s11, s8
                  sra          s7, a7, t6
                  andi         s4, t6, 1553
                  xori         a5, a4, 785
                  slt          t0, s8, s11
                  sub          s11, a5, t2
                  srl          s8, s8, s0
                  xori         t0, t3, 575
                  ori          sp, t2, 470
                  slli         a5, t5, 6
                  ori          s1, t6, -508
                  srai         a7, a2, 28
                  or           a7, s4, s9
                  sra          s6, t2, gp
                  auipc        a5, 32979
                  srai         t1, s6, 5
                  add          s11, ra, s0
                  andi         s8, s4, -1003
                  srai         a4, s4, 23
                  sltu         s2, a3, a4
                  addi         s4, a5, -1110
                  sltiu        s5, a6, -1879
                  sll          s4, zero, t5
                  andi         s8, s3, -932
                  slti         s5, s5, 512
                  slli         s4, s0, 20
                  slli         s3, s9, 15
                  srl          ra, t4, s4
                  or           t1, t2, s8
                  srai         s6, s5, 9
                  sltu         s9, s0, s6
                  and          a4, t0, s7
                  srai         zero, t0, 15
                  xori         t5, s11, -1484
                  lui          s1, 412119
                  add          a4, a5, a2
                  sltu         a7, gp, s8
                  slt          s4, s6, s8
                  sra          a5, a4, s2
                  andi         sp, t5, -237
                  srl          t0, sp, a5
                  add          a0, s5, sp
                  sub          s10, gp, t3
                  slt          t4, t6, a5
                  addi         a5, ra, -1039
                  sll          t6, t1, s4
                  srl          t1, s5, t2
                  sra          zero, t5, a3
                  or           a7, t6, t3
                  slli         s4, t1, 13
                  sll          s8, s7, s10
                  auipc        t1, 496928
                  andi         a1, a2, -1630
                  sltiu        s5, s0, -552
                  add          a5, sp, s3
                  addi         t4, s1, 956
                  and          s11, s7, t6
                  sll          s4, s4, t5
                  ori          t1, sp, 782
                  or           s9, a3, a7
                  srl          tp, a0, s9
                  andi         a5, t0, 1744
                  srli         tp, a0, 6
                  ori          s1, s10, -52
                  add          s5, a5, s0
                  srli         s7, s9, 29
                  nop
                  slti         s6, s3, -981
                  sltu         s8, t3, a0
                  andi         s10, sp, -1655
                  ori          a4, s5, 1198
                  andi         tp, s1, 1262
                  ori          a5, t4, 1205
                  slli         t0, s2, 30
                  sltiu        s5, a3, -1474
                  srli         s8, s6, 12
                  sll          s5, s2, s11
                  xor          a7, zero, s8
                  xor          a6, t2, gp
                  slti         t5, tp, -2004
                  add          a5, sp, s11
                  xor          gp, s0, a0
                  xori         ra, a2, -799
                  slti         s8, a4, -1140
                  addi         a3, ra, 1948
                  li           t4, 0xc7fb8383 #start riscv_int_numeric_corner_stream_17
                  li           a6, 0xc97c64b8
                  li           s9, 0x80000000
                  li           gp, 0x0
                  li           t5, 0x0
                  li           s4, 0x30beb84
                  li           t6, 0xffffffff
                  li           tp, 0xffffffff
                  li           sp, 0x80000000
                  li           ra, 0x80000000
                  auipc        tp, 448205
                  addi         s9, t6, 1118
                  addi         a6, ra, 320
                  sub          t4, t5, s4
                  add          t6, gp, gp
                  sub          gp, tp, t4
                  add          sp, t4, gp
                  add          a6, a6, t6
                  sub          t5, a6, gp
                  lui          s9, 992485
                  lui          tp, 578266
                  add          tp, sp, tp
                  addi         s4, ra, 77
                  sub          gp, t4, gp
                  sub          gp, t4, tp
                  sub          t6, t6, a6
                  nop
                  auipc        t6, 268228
                  sub          gp, a6, s4
                  add          t4, t4, s9
                  nop #end riscv_int_numeric_corner_stream_17
                  srai         gp, t0, 14
                  sub          s11, s9, t3
                  and          s8, a3, sp
                  srl          gp, gp, a0
                  xori         a6, t2, 1484
                  andi         zero, t0, -502
                  nop
                  sll          a0, s6, zero
                  sltu         s2, s1, t3
                  srli         ra, s10, 23
                  andi         s9, a4, 243
                  slti         s8, t0, -95
                  ori          s5, a3, -30
                  ori          s10, sp, -894
                  slt          a6, ra, t4
                  nop
                  and          s11, a1, t5
                  lui          t3, 629174
                  auipc        tp, 134769
                  sub          a1, s10, gp
                  srli         s4, s4, 31
                  srli         zero, zero, 11
                  sra          tp, s8, s11
                  sub          t1, s11, s2
                  slt          s5, s1, s9
                  ori          a6, s7, -1324
                  xor          t4, s2, tp
                  add          s8, s8, a3
                  sra          sp, s11, t6
                  add          s1, t3, s1
                  or           s2, t4, zero
                  srl          t3, s5, s11
                  and          tp, t1, t4
                  srli         a5, s8, 9
                  srai         t0, a3, 18
                  srl          s3, s11, t1
                  sra          sp, t3, ra
                  lui          gp, 707701
                  sltiu        zero, s7, 2011
                  ori          a0, s11, 473
                  sltu         t5, s10, ra
                  and          t5, t1, s9
                  srli         s1, s1, 19
                  sra          ra, s11, s3
                  srl          t6, s8, t5
                  ori          a0, t1, 1823
                  and          s6, s2, ra
                  srl          gp, s5, sp
                  sra          s11, s11, s9
                  sll          s9, a3, a6
                  srli         a6, s1, 17
                  add          t6, s11, s5
                  nop
                  andi         s11, s10, -788
                  sltiu        t6, s7, 1106
                  xor          zero, tp, ra
                  srli         gp, s2, 26
                  xor          t1, t1, zero
                  ori          a3, s9, 1456
                  addi         s8, gp, -768
                  slli         t3, t5, 15
                  sub          tp, a4, a5
                  srai         t3, tp, 14
                  slti         s11, s6, 1981
                  sub          t6, s2, s9
                  ori          t0, t6, -682
                  xori         ra, tp, 1122
                  addi         sp, s9, -1605
                  sra          t1, s10, a5
                  srli         a4, s1, 19
                  andi         gp, tp, 625
                  srai         s3, a5, 1
                  add          s10, sp, s3
                  srl          s7, a2, a6
                  sra          a6, t6, s2
                  or           s2, s10, tp
                  slli         t4, t2, 18
                  sltu         sp, tp, zero
                  sub          s10, a7, a4
                  xori         t4, s5, -739
                  xori         s1, s5, 631
                  xori         a4, a3, -37
                  slli         t4, a0, 2
                  srli         s3, ra, 3
                  xori         t4, tp, 1144
                  srai         sp, sp, 18
                  xor          t4, s8, a2
                  add          s1, zero, t3
                  nop
                  sll          a5, t5, a7
                  addi         t4, s5, -597
                  xor          s7, t6, a6
                  xori         gp, s0, -123
                  nop
                  xori         a1, a7, 80
                  and          s2, a7, s5
                  andi         a1, a2, -1308
                  auipc        s4, 401070
                  add          t3, s2, s0
                  sltu         t1, s11, t6
                  srl          s1, gp, s8
                  ori          a0, s11, 1597
                  xori         t1, a0, 30
                  srl          s9, a3, t5
                  add          s9, t3, t2
                  andi         a7, t2, 65
                  add          a5, t3, a7
                  slli         s2, ra, 29
                  lui          sp, 963499
                  srai         s10, sp, 20
                  lui          s6, 477385
                  auipc        tp, 651628
                  nop
                  slli         gp, s9, 1
                  srli         t4, a0, 19
                  sltu         s5, a1, t0
                  and          s8, a4, gp
                  ori          a7, a7, -1388
                  ori          t3, a3, -87
                  slt          t0, t2, a4
                  slti         s2, s11, 1344
                  nop
                  xori         s6, t0, -379
                  addi         s6, s2, -1215
                  srai         t1, s4, 13
                  xori         s9, tp, -973
                  sll          t4, a7, a6
                  nop
                  srli         s11, t2, 21
                  nop
                  add          s2, a0, zero
                  add          gp, s3, a3
                  nop
                  sra          s3, a5, t6
                  andi         a5, t6, 206
                  sll          t6, s3, t2
                  sltiu        a3, t5, 1706
                  slt          a0, s1, a4
                  sub          a4, a2, s6
                  srai         s3, a1, 2
                  andi         s6, a4, -1984
                  sra          a6, a5, s3
                  slli         a3, s1, 17
                  slt          a4, a5, t0
                  srl          s3, a0, s7
                  slt          t6, t5, a6
                  ori          a6, t0, 1858
                  slti         zero, a7, 454
                  slt          t3, a7, tp
                  slt          t1, s11, s1
                  srai         sp, s4, 13
                  nop
                  add          gp, s9, t5
                  slli         t0, sp, 21
                  ori          s10, tp, -750
                  srl          t0, t3, zero
                  xori         s7, s5, -1584
                  srl          s10, ra, zero
                  srl          a7, t0, gp
                  ori          a5, ra, 862
                  andi         ra, s10, 742
                  slt          s2, s3, t2
                  sub          s3, t2, a0
                  slli         tp, s0, 15
                  ori          zero, t5, 577
                  slli         s10, a4, 0
                  slt          s6, s7, t5
                  addi         gp, t4, 581
                  slli         s9, s2, 20
                  slti         s10, a6, 1158
                  auipc        t4, 135640
                  xori         gp, a2, -1028
                  and          t4, a4, a0
                  add          gp, s5, t4
                  andi         a7, t5, 401
                  sub          s7, s0, t4
                  xor          s11, a3, ra
                  sltu         s4, s5, s1
                  nop
                  sltiu        s10, t1, -1322
                  addi         a1, a1, -1847
                  sltiu        a1, s6, -499
                  sll          tp, s5, sp
                  sltiu        a0, t4, -1872
                  slt          s10, sp, tp
                  sub          gp, s8, t0
                  addi         s2, s3, 428
                  sub          t3, s4, s9
                  slli         gp, s7, 2
                  slli         s5, a3, 3
                  slti         s2, a1, 781
                  srli         a3, t1, 15
                  slti         s10, s3, 1957
                  sub          s2, s11, ra
                  slti         s1, a1, -1919
                  add          t3, t1, t0
                  sltu         a7, s0, s3
                  andi         zero, s4, -829
                  sub          t3, a5, a5
                  sra          gp, t2, s4
                  lui          t3, 292097
                  lui          t6, 900673
                  sltu         s8, a3, t6
                  sltiu        s8, a2, 150
                  srai         a5, s2, 26
                  and          sp, a7, a3
                  srai         a6, sp, 13
                  xori         a7, a1, -960
                  or           s6, a3, a7
                  slli         s4, ra, 20
                  ori          a0, a5, 1359
                  sll          s10, s2, tp
                  slt          sp, t3, a4
                  ori          s11, t2, -1918
                  xori         s4, a7, -1275
                  sra          t5, tp, t0
                  sub          s10, s2, s1
                  srl          a0, t3, t4
                  add          t4, a5, ra
                  sra          t3, t6, s3
                  sltu         s8, a5, a2
                  slti         a3, s5, 1661
                  slt          s11, s9, t5
                  sub          tp, gp, t6
                  sltu         zero, a0, s6
                  sub          tp, s7, s9
                  slti         a5, s10, -1046
                  slt          a7, s4, sp
                  slti         t3, t5, -1620
                  slt          tp, a2, a1
                  addi         a6, s6, -441
                  add          s6, t3, s7
                  srli         zero, s9, 18
                  addi         s2, t5, -1651
                  sll          s10, zero, a2
                  addi         s2, t3, -180
                  slt          tp, a0, t4
                  sub          t6, zero, a6
                  ori          a4, a6, 1246
                  add          gp, t3, t2
                  addi         s11, t6, 426
                  slt          t3, a4, tp
                  sub          ra, a0, s1
                  sltu         s11, a1, zero
                  addi         t5, ra, -836
                  nop
                  xori         ra, t3, 1397
                  or           s5, a3, a0
                  slti         s10, a7, 1830
                  srai         t6, a6, 27
                  nop
                  sra          sp, a4, s1
                  srl          a4, t4, zero
                  or           a3, tp, t6
                  srai         a0, s11, 25
                  sra          s1, s11, t4
                  srai         tp, tp, 15
                  slt          s2, s11, s6
                  lui          a6, 892583
                  nop
                  nop
                  sll          s5, t2, t3
                  xor          zero, t6, s3
                  nop
                  ori          a0, t0, -34
                  sll          t1, a4, t1
                  srai         t0, s11, 12
                  slt          tp, a4, a4
                  slli         s8, a5, 27
                  nop
                  xor          zero, a2, tp
                  xori         s3, t2, -517
                  sll          a6, t3, s3
                  slli         t1, ra, 17
                  ori          a4, a4, -691
                  srli         t3, sp, 19
                  andi         gp, a3, -314
                  auipc        s7, 95043
                  sra          s7, t2, s11
                  or           t6, ra, a3
                  lui          s4, 748475
                  nop
                  slti         a0, s6, 1541
                  or           s4, t5, a6
                  sltiu        gp, t5, 1237
                  sltu         a5, t3, a7
                  sltu         a6, s5, s4
                  and          s4, s10, t4
                  xor          sp, a2, s2
                  add          t0, s3, t1
                  sltu         a0, t4, tp
                  slt          t0, tp, s6
                  slti         a7, s4, -1409
                  slti         s7, a7, 365
                  sll          t3, s0, s10
                  xor          ra, ra, s8
                  slti         s11, a4, 1304
                  auipc        t3, 74912
                  slli         s3, t3, 27
                  slt          a1, t5, a1
                  sub          gp, s4, s5
                  slli         a1, s4, 5
                  addi         t6, t0, -514
                  slti         ra, s6, -1674
                  xor          a7, s5, a1
                  andi         ra, a6, -1829
                  sub          s6, t0, a0
                  sra          t3, t1, s4
                  slti         t1, t4, -607
                  add          a1, t0, a1
                  xori         t3, s11, 1609
                  srli         s11, t4, 1
                  sub          t1, s3, a1
                  ori          ra, t4, -2041
                  auipc        ra, 976302
                  addi         s10, a6, -703
                  slti         t4, t3, -1648
                  xori         s6, tp, -137
                  addi         t0, t0, -94
                  sll          a6, t0, zero
                  addi         sp, s5, -957
                  or           s9, t5, s6
                  ori          s2, a4, -1185
                  srl          s9, a4, s10
                  xori         gp, t0, -273
                  lui          a1, 783821
                  srai         a4, gp, 20
                  srl          s4, t0, a5
                  sub          gp, s9, a1
                  add          t1, a1, a7
                  sll          gp, tp, s11
                  addi         t5, ra, -553
                  add          s8, gp, zero
                  lui          sp, 324588
                  add          a6, a7, s8
                  sltu         tp, s7, t2
                  sll          t6, a3, t1
                  sra          tp, s3, s5
                  sltu         s1, s10, t0
                  sub          s3, s2, t0
                  sltu         tp, a1, gp
                  auipc        gp, 776856
                  lui          s5, 717839
                  slti         a5, tp, 214
                  slli         tp, s11, 18
                  lui          a5, 713906
                  lui          s9, 567637
                  slti         a6, t4, -1875
                  sra          t3, s6, t2
                  sra          t1, s9, s5
                  and          sp, a6, tp
                  nop
                  nop
                  sltiu        s1, a1, -881
                  andi         s5, a3, -452
                  slli         s2, s4, 8
                  and          zero, s8, a2
                  srl          s6, s3, s0
                  and          s4, s8, s8
                  andi         a4, sp, -757
                  la x12, test_done
                  jalr x0, x12, 0
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
                  add x8, x7, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_2:
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
                  add x8, x7, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_3:
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
                  add x8, x7, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_4:
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
                  add x8, x7, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_5:
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
                  add x8, x7, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_6:
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
                  add x8, x7, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_7:
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
                  add x8, x7, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_8:
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
                  add x8, x7, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_9:
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
                  add x8, x7, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_10:
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
                  add x8, x7, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_11:
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
                  add x8, x7, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_12:
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
                  add x8, x7, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_13:
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
                  add x8, x7, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_14:
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
                  add x8, x7, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_15:
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
                  add x8, x7, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

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
                  add x8, x7, zero
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x27, 0x3 # BREAKPOINT
                  beq x23, x27, ebreak_handler
                  li x27, 0x8 # ECALL_UMODE
                  beq x23, x27, ecall_handler
                  li x27, 0x9 # ECALL_SMODE
                  beq x23, x27, ecall_handler
                  li x27, 0xb # ECALL_MMODE
                  beq x23, x27, ecall_handler
                  li x27, 0x1
                  beq x23, x27, instr_fault_handler
                  li x27, 0x5
                  beq x23, x27, load_fault_handler
                  li x27, 0x7
                  beq x23, x27, store_fault_handler
                  li x27, 0xc
                  beq x23, x27, pt_fault_handler
                  li x27, 0xd
                  beq x23, x27, pt_fault_handler
                  li x27, 0xf
                  beq x23, x27, pt_fault_handler
                  li x27, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x27, illegal_instr_handler
                  csrr x27, 0x343 # MTVAL
                  1: la x12, test_done
                  jalr x1, x12, 0

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
                  la x12, write_tohost
                  jalr x0, x12, 0

instr_fault_handler:
                  add x7, x8, zero
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
                  add x7, x8, zero
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
                  add x7, x8, zero
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
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x7, x8, zero
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
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x7, x8, zero
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
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x7, x8, zero
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
