.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x22, h0_start
jalr x0, x22, 0
h0_start:
                  li x15, 0x40000100
                  csrw 0x301, x15
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x15, mtvec_handler
                  ori x15, x15, 1
                  csrw 0x305, x15 # MTVEC

mepc_setup:       
                  la x15, init
                  csrw 0x341, x15

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x15, 0x1800
                  csrw 0x300, x15 # MSTATUS
                  mret
init:             
                  li x0, 0xf27028ce
                  li x1, 0x0
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0xf187036b
                  li x5, 0x801c2241
                  li x6, 0x0
                  li x7, 0x80000000
                  li x8, 0xf7e3dd9f
                  li x9, 0x80000000
                  li x10, 0x80000000
                  li x11, 0x7
                  li x12, 0x97a858bf
                  li x13, 0x0
                  li x14, 0x0
                  li x15, 0xfeaf9438
                  li x17, 0x80000000
                  li x18, 0x9
                  li x19, 0xf8d5ec26
                  li x20, 0xfb801f13
                  li x21, 0x80000000
                  li x22, 0xf497fa61
                  li x23, 0x70b2b397
                  li x24, 0xf25a4642
                  li x25, 0xcfa21123
                  li x26, 0x0
                  li x27, 0xa
                  li x28, 0xfbe8a40a
                  li x29, 0x0
                  li x30, 0x0
                  la x16, user_stack_end
main:             li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           a1, 0xffffffff
                  li           t0, 0xffffffff
                  li           tp, 0x80000000
                  li           t3, 0xffffffff
                  li           s11, 0x80000000
                  li           t1, 0x80000000
                  li           s8, 0xffffffff
                  li           s2, 0xffffffff
                  li           a0, 0xa521cf87
                  add          a1, a1, t1
                  add          t3, t0, a1
                  sub          a1, s2, a1
                  sub          gp, t3, t0
                  add          s11, tp, s11
                  add          a1, s11, s11
                  sub          tp, a0, t1
                  add          a0, s2, a1
                  auipc        s8, 921390
                  addi         s2, s11, 1378
                  add          tp, a0, s2
                  sub          a0, s2, t3
                  auipc        s11, 36659
                  sub          s11, s2, s11
                  add          a1, s8, gp
                  add          t0, s8, a1
                  sub          s11, a0, a0
                  lui          s11, 565420
                  auipc        tp, 237967
                  addi         gp, t3, 804
                  addi         a1, t3, -1043
                  sub          a0, gp, t1 #end riscv_int_numeric_corner_stream_4
                  li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           t3, 0x0
                  li           a2, 0xffffffff
                  li           t4, 0x0
                  li           t1, 0xf6832f58
                  li           tp, 0x80000000
                  li           t0, 0x4d648996
                  li           s8, 0x0
                  li           s2, 0xffffffff
                  li           a0, 0x0
                  sub          t1, gp, s8
                  sub          a2, a0, gp
                  addi         gp, a2, -802
                  nop
                  addi         a2, t0, 1589
                  add          a0, s8, t4
                  nop
                  addi         t4, s8, -2002
                  sub          t3, a2, tp
                  add          t0, t3, t4
                  lui          s8, 789392
                  add          t3, gp, t3
                  nop
                  auipc        t1, 370305
                  lui          t3, 297265
                  add          a2, gp, tp
                  sub          t1, s8, a0
                  nop
                  addi         t4, a0, -1652
                  auipc        a0, 926622
                  addi         tp, t1, 180
                  nop
                  add          t3, a0, tp
                  auipc        a2, 567921 #end riscv_int_numeric_corner_stream_8
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           a4, 0x0
                  li           s7, 0x0
                  li           s11, 0x80000000
                  li           s0, 0x80000000
                  li           ra, 0xffffffff
                  li           a1, 0x6365bdf
                  li           t2, 0xffffffff
                  li           a0, 0x9ec70bf2
                  li           s2, 0x80000000
                  sub          s11, t2, a1
                  sub          t2, t2, s2
                  lui          a5, 931345
                  sub          a4, s2, ra
                  nop
                  sub          a0, a0, a5
                  add          s11, a0, s11
                  nop
                  lui          s7, 681606
                  auipc        a4, 336572
                  sub          t2, s11, s0
                  add          s2, s0, s7
                  addi         t2, a1, -1970
                  add          s7, ra, s0
                  nop
                  lui          t2, 93384
                  lui          t2, 560011
                  add          a5, ra, a1
                  auipc        s0, 832521
                  lui          t2, 311256
                  sub          a5, t2, s2
                  auipc        a1, 337653
                  addi         s7, s7, 914
                  lui          a0, 524598
                  sub          a4, a1, a5 #end riscv_int_numeric_corner_stream_16
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           ra, 0x80000000
                  li           s5, 0xffffffff
                  li           s9, 0x3288386f
                  li           a1, 0x80000000
                  li           t3, 0xb6123e04
                  li           s3, 0x0
                  li           s10, 0xffffffff
                  li           a3, 0x80000000
                  li           a5, 0x2e35311
                  nop
                  sub          a3, s3, s5
                  nop
                  lui          s5, 545689
                  auipc        t3, 291636
                  addi         s9, ra, -1511
                  add          s5, s3, a3
                  nop
                  sub          s10, a5, s10
                  auipc        a5, 199703
                  sub          a1, ra, t3
                  add          a1, ra, a3
                  nop
                  addi         s10, a1, -929
                  lui          s3, 273111
                  lui          s3, 40683
                  nop
                  nop
                  add          s10, t3, t3
                  auipc        s9, 410889
                  sub          s3, a1, ra
                  sub          a3, a1, s3
                  sub          s9, t3, ra
                  nop
                  nop
                  auipc        s9, 908297
                  nop
                  add          s3, a0, a1
                  add          t3, s3, a1 #end riscv_int_numeric_corner_stream_12
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           s5, 0x80000000
                  li           s11, 0x1b4f760b
                  li           a4, 0xffffffff
                  li           s8, 0xad5f340a
                  li           a5, 0xffffffff
                  li           t2, 0x8e68d658
                  li           s0, 0x0
                  li           s4, 0x9158e904
                  li           tp, 0xffffffff
                  lui          s11, 427572
                  add          s0, tp, a4
                  sub          ra, s0, tp
                  lui          s5, 525188
                  add          a5, tp, s11
                  lui          a4, 202416
                  auipc        s5, 325803
                  addi         s4, s4, -1326
                  nop
                  nop
                  addi         a4, s8, -1365
                  nop
                  auipc        s5, 412180
                  nop
                  lui          s8, 750053
                  add          s0, a4, tp
                  nop
                  nop
                  auipc        a5, 616600
                  nop
                  auipc        a4, 180905
                  addi         s5, s8, 1909
                  add          tp, s4, s0
                  add          a5, s11, s4
                  nop
                  sub          a4, s5, tp
                  sub          a5, s8, s5
                  auipc        s8, 519103
                  nop #end riscv_int_numeric_corner_stream_1
                  li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           gp, 0x0
                  li           t2, 0x51481cda
                  li           s2, 0x80000000
                  li           a2, 0xffffffff
                  li           a4, 0xffffffff
                  li           s5, 0x0
                  li           s11, 0x0
                  li           a0, 0x0
                  li           ra, 0x79c9b6a0
                  lui          a4, 546592
                  add          a4, a4, a0
                  auipc        a0, 118675
                  auipc        a3, 707719
                  sub          a0, t2, s11
                  addi         a4, t2, 593
                  lui          a4, 300749
                  add          a3, s5, s11
                  lui          a3, 385536
                  auipc        s2, 780524
                  lui          a0, 313997
                  lui          a3, 92021
                  sub          a2, s11, gp
                  add          a2, ra, gp
                  auipc        s11, 279390
                  auipc        ra, 705285
                  nop #end riscv_int_numeric_corner_stream_18
                  li           sp, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           s7, 0xffffffff
                  li           s11, 0x877a66e8
                  li           a7, 0x80000000
                  li           s9, 0x66911156
                  li           s0, 0xffffffff
                  li           a3, 0x80000000
                  li           s4, 0x80000000
                  li           a4, 0xffffffff
                  li           ra, 0x4f4b4101
                  add          s7, ra, s11
                  addi         a7, sp, 1596
                  sub          a4, s11, sp
                  nop
                  addi         a3, s4, -1283
                  auipc        s4, 384096
                  addi         a4, ra, -1600
                  nop
                  auipc        s7, 348211
                  sub          s11, a3, s4
                  sub          s4, s11, sp
                  lui          ra, 258907
                  nop
                  add          a7, s9, a4
                  add          s9, a3, s11
                  add          s7, a7, s0
                  auipc        a3, 996420
                  nop
                  add          sp, s11, s4
                  sub          s9, a7, a7
                  addi         sp, s7, -325
                  auipc        sp, 766515
                  lui          a4, 283451
                  nop
                  lui          s11, 670746
                  addi         a3, s4, 1445
                  add          a4, s7, s9
                  sub          s4, s7, sp
                  auipc        a7, 590148 #end riscv_int_numeric_corner_stream_14
                  add          t4, t1, tp
                  or           s5, t6, t0
                  slti         t5, s6, 1776
                  slti         s2, zero, 116
                  sll          gp, t5, s2
                  srai         t3, a7, 13
                  srai         t3, t5, 8
                  slti         a7, t3, 1627
                  or           sp, t2, gp
                  auipc        s0, 103286
                  andi         tp, t2, -528
                  sra          a1, a7, a1
                  add          t1, s4, s10
                  lui          gp, 730545
                  srl          t0, t1, s9
                  srl          zero, t6, a0
                  srai         s3, t5, 7
                  sltiu        s7, a2, 793
                  sub          a3, a0, t5
                  srai         ra, zero, 24
                  ori          ra, s8, 1249
                  and          s8, a1, s6
                  sll          t3, s3, s11
                  srai         a7, t5, 29
                  lui          t4, 801667
                  auipc        s8, 78169
                  slli         s3, a2, 16
                  andi         a4, t1, -1849
                  srai         sp, t4, 27
                  slti         s9, t3, 2047
                  ori          t5, s10, -641
                  slt          sp, a2, gp
                  and          a7, s4, a3
                  ori          s0, t4, 249
                  xori         s7, sp, -445
                  xori         t3, gp, 1650
                  slt          zero, t6, tp
                  ori          t5, a5, 1474
                  xor          s1, t2, s3
                  slt          s2, a7, s9
                  slti         zero, t1, -1635
                  ori          a0, s8, -27
                  xor          s3, a0, s6
                  srai         t2, zero, 21
                  slli         s11, s11, 31
                  ori          s9, s3, -409
                  sltu         t4, s10, a6
                  srai         sp, a5, 3
                  add          a4, a4, zero
                  sra          a1, a0, s6
                  xori         tp, a1, -1164
                  xori         t4, t2, 1936
                  slti         t5, t2, -376
                  srl          gp, a1, s0
                  sltu         s11, a2, s4
                  sll          t1, s4, t3
                  sra          t0, s8, s5
                  addi         zero, a5, -1277
                  sra          t3, sp, sp
                  auipc        t0, 841240
                  sll          s8, t6, s3
                  andi         s10, a0, 520
                  srl          a2, zero, s9
                  add          a2, t0, a2
                  ori          t1, t6, -1003
                  slt          gp, t0, s3
                  addi         s3, s10, -404
                  srai         s8, a7, 17
                  slli         a0, a1, 16
                  sra          gp, t6, s1
                  sltu         zero, s6, tp
                  or           s7, t2, t3
                  or           t5, s6, gp
                  and          s10, t2, t3
                  sll          a3, t3, s3
                  slt          a2, a5, tp
                  slli         t5, t0, 21
                  ori          t3, a0, 362
                  sll          a0, tp, a3
                  xor          t5, s1, s4
                  ori          s1, t1, -93
                  and          t2, a1, s8
                  auipc        s4, 628169
                  slli         t5, s7, 20
                  and          a0, s7, t1
                  sltu         t5, s9, sp
                  or           a0, tp, t0
                  slti         a5, a1, -627
                  slli         t1, t3, 26
                  add          a0, a5, t6
                  lui          s1, 213407
                  sltiu        tp, a2, -1770
                  slti         s10, s3, -682
                  slli         s5, s8, 29
                  slt          ra, tp, a4
                  sltu         a3, a7, s7
                  slt          ra, s9, s7
                  sra          s5, a2, a6
                  auipc        s2, 421881
                  nop
                  addi         tp, gp, 1792
                  slti         t5, a7, 1202
                  and          gp, t1, gp
                  auipc        gp, 817243
                  nop
                  xori         s9, a0, 1636
                  sub          a5, sp, t1
                  sra          gp, gp, tp
                  andi         a4, s6, -923
                  ori          a7, s8, -1310
                  addi         s10, s6, 350
                  lui          s9, 289265
                  ori          a4, s1, -1722
                  sltu         s5, s11, s0
                  addi         a1, t2, -1139
                  nop
                  slli         a7, s10, 13
                  nop
                  srai         s1, s6, 14
                  or           t5, s5, a7
                  and          a4, t1, s6
                  auipc        s1, 252438
                  sltu         s5, t1, a4
                  srli         t0, a3, 11
                  nop
                  nop
                  srai         a2, s2, 0
                  add          t3, s2, a6
                  add          tp, s6, a5
                  and          s7, s2, t1
                  or           a4, a0, a2
                  sltiu        t4, t2, -1243
                  add          a5, a2, t6
                  xor          s3, t0, a6
                  slli         a1, s8, 9
                  or           a7, a4, gp
                  and          t2, s8, s4
                  srli         s0, t3, 29
                  xori         s11, a5, 1994
                  ori          sp, a6, -1506
                  auipc        s4, 851248
                  or           gp, s0, ra
                  srai         t5, gp, 17
                  sltu         s7, sp, a1
                  slt          sp, a5, a3
                  or           t0, s2, s0
                  add          a7, a0, s11
                  add          s7, zero, t3
                  or           a1, tp, a6
                  sra          s11, a4, t5
                  slti         a0, s2, 1174
                  srai         a1, s6, 27
                  srli         s3, s4, 28
                  add          sp, s2, t2
                  srl          s9, s4, t3
                  ori          sp, a4, -1030
                  srli         a4, t5, 4
                  and          s5, ra, tp
                  slti         zero, s4, -1721
                  slt          tp, t0, tp
                  sub          a0, s0, s8
                  andi         t2, a0, 251
                  sltiu        t5, tp, -353
                  srl          s2, sp, s2
                  add          a3, ra, t0
                  sra          s11, s2, s4
                  srl          a2, s5, s5
                  sub          s1, a3, a7
                  srai         s3, a4, 0
                  sub          gp, s10, a7
                  sub          s0, t6, a0
                  or           a3, s3, s3
                  lui          ra, 154667
                  andi         t1, t0, 427
                  slt          sp, a2, zero
                  auipc        s10, 302605
                  nop
                  ori          t4, s10, 63
                  xor          a4, zero, s0
                  srli         a1, t2, 19
                  srli         s9, s9, 5
                  srl          a5, s5, s4
                  slli         gp, zero, 8
                  srl          sp, t5, a1
                  nop
                  sra          t1, s10, s0
                  srl          gp, tp, s4
                  sltu         s5, s3, t6
                  ori          tp, s4, -1727
                  slt          s8, t6, a5
                  xori         s7, s0, 1168
                  sll          a4, s11, a2
                  slt          s9, tp, t4
                  slt          s5, s7, s3
                  srli         sp, a2, 7
                  sub          a1, t5, t5
                  add          s4, a1, s2
                  sltiu        s11, s1, 576
                  andi         s3, a6, -444
                  andi         t4, t0, -1165
                  slt          s4, a5, s7
                  auipc        s0, 664805
                  xori         s8, s3, 460
                  andi         s9, s4, 68
                  sltiu        s7, s5, -1229
                  or           t1, t1, s4
                  auipc        t1, 918842
                  sltiu        t0, t1, -632
                  ori          a1, tp, -680
                  sltiu        tp, s10, 1796
                  and          s5, gp, a0
                  xori         s2, s1, 148
                  slt          t1, s4, s1
                  xori         s11, a7, 1950
                  ori          ra, zero, -1284
                  slti         s1, a0, -626
                  slt          t5, s2, a2
                  xori         gp, a5, -1053
                  srai         t4, t6, 5
                  srl          tp, t0, a6
                  xor          a7, s10, t0
                  or           t3, t1, ra
                  srli         tp, t5, 16
                  slli         a1, ra, 20
                  addi         s0, s3, 609
                  ori          a3, a4, 1341
                  slti         ra, t1, -696
                  and          s4, sp, a7
                  andi         a2, ra, 1747
                  slt          a1, a5, t2
                  lui          t2, 858992
                  sll          t3, a1, tp
                  sub          a7, sp, s6
                  ori          t3, t5, -1217
                  nop
                  slli         s7, t6, 9
                  or           ra, s4, tp
                  sra          s11, t1, s6
                  xori         t0, zero, -1590
                  srai         a0, a2, 30
                  ori          a0, s9, -1747
                  auipc        a4, 274456
                  sra          zero, gp, a5
                  addi         a1, s7, 1709
                  sltu         t2, s0, a1
                  nop
                  srai         t2, s3, 28
                  srl          s4, sp, t4
                  lui          a1, 37492
                  sub          s2, sp, s6
                  auipc        tp, 707495
                  srl          s3, a4, ra
                  slli         zero, s5, 3
                  and          ra, s4, t2
                  and          zero, s10, s11
                  sll          t1, s10, t6
                  add          ra, t1, s5
                  xori         t1, s9, 1473
                  xori         gp, a6, -1210
                  sra          s1, a1, s3
                  sra          t5, a0, s6
                  sub          t1, tp, s9
                  sltiu        a4, s10, 733
                  sub          sp, t1, a5
                  slli         s10, zero, 14
                  sll          s5, t4, a2
                  addi         t3, a4, -1164
                  add          s10, t3, s8
                  sltiu        s3, tp, 1958
                  sra          s4, t3, tp
                  andi         s7, a2, -1027
                  xori         sp, t0, 415
                  sll          s11, s11, gp
                  sll          a5, zero, s0
                  slli         t3, s7, 22
                  sltu         t4, sp, a4
                  auipc        tp, 989095
                  andi         s2, a7, -1849
                  or           t0, a2, a4
                  add          a4, s10, a6
                  ori          s4, s11, 712
                  srai         a2, s9, 19
                  and          s2, zero, s7
                  sltiu        a5, t5, 266
                  sub          a4, s6, t1
                  slt          s10, a6, s2
                  slt          s5, a3, a0
                  addi         tp, s5, 1171
                  or           s8, t6, s8
                  xor          a3, s6, zero
                  slli         sp, s0, 1
                  sll          a1, s5, s10
                  slt          a4, sp, t5
                  srl          t2, sp, t1
                  lui          a5, 90224
                  ori          s0, zero, 751
                  srai         s1, t1, 31
                  sll          t3, s10, a1
                  sub          sp, a2, t5
                  sltu         s10, s8, ra
                  srli         a5, s11, 23
                  ori          a7, a7, -1034
                  addi         s10, s3, -342
                  sltu         t4, a4, s7
                  srl          t1, a0, s11
                  srl          a0, t4, a4
                  lui          a3, 87253
                  and          s2, s10, s1
                  srli         t3, t5, 25
                  lui          t1, 590925
                  sll          zero, a6, s2
                  sll          s7, zero, tp
                  ori          a1, s0, 1202
                  and          t0, tp, s10
                  sltu         s1, t0, s0
                  slli         s9, t6, 11
                  ori          s0, sp, -669
                  andi         s5, s9, 146
                  sltu         a2, s0, s1
                  add          s0, s7, t2
                  slti         s2, t4, 988
                  lui          s2, 506364
                  addi         gp, s11, 630
                  slli         s11, s8, 7
                  sltu         t2, t5, a2
                  and          s3, s1, a2
                  ori          a0, s4, -232
                  slt          a5, s9, s8
                  addi         a5, zero, -1372
                  slt          s0, zero, s4
                  slt          t0, s10, zero
                  addi         t0, s10, -1452
                  sltiu        a3, s0, -51
                  auipc        a4, 431907
                  slli         s1, s11, 30
                  or           t5, t6, s10
                  or           a7, t3, s0
                  nop
                  andi         tp, s5, 1521
                  sltu         ra, t1, t0
                  slt          a7, a6, s10
                  add          gp, t4, t6
                  and          a1, zero, t2
                  addi         gp, a1, -407
                  add          a1, a6, t0
                  andi         s0, t2, -642
                  sltu         t0, s6, a6
                  sltiu        sp, s1, -732
                  slti         a7, a6, -1434
                  xori         t2, s1, 1073
                  srli         a7, a5, 0
                  li           t4, 0x4caadc0d #start riscv_int_numeric_corner_stream_17
                  li           tp, 0x9bae453
                  li           s3, 0x80000000
                  li           s2, 0x0
                  li           t0, 0xdb2b6d7e
                  li           t3, 0x80000000
                  li           a4, 0x1643a4da
                  li           s10, 0x80000000
                  li           gp, 0xffffffff
                  li           a3, 0x16700beb
                  lui          s2, 29748
                  sub          gp, s10, tp
                  sub          t4, s10, a4
                  add          a4, a4, t4
                  nop
                  sub          s2, s3, a4
                  sub          s10, t3, s2
                  nop
                  lui          s3, 657092
                  nop
                  add          a4, t0, s10
                  lui          s2, 461909
                  lui          gp, 659443
                  sub          a4, tp, t3
                  auipc        tp, 12678
                  add          gp, s2, s10
                  addi         gp, t3, 93
                  add          a4, s10, a4
                  sub          a4, t0, t4
                  addi         s2, s2, 200
                  add          t0, t4, s3
                  sub          t4, tp, t0
                  nop
                  auipc        s10, 166367
                  lui          s3, 486224
                  addi         a4, t4, 1352
                  add          s2, a4, a3 #end riscv_int_numeric_corner_stream_17
                  add          s4, tp, s1
                  add          zero, a2, t2
                  srl          gp, s9, a6
                  sltiu        t2, zero, 258
                  add          a2, s10, a5
                  or           s4, t0, t1
                  nop
                  xor          a0, ra, s4
                  sltiu        a1, s3, 1775
                  andi         t1, s7, 1260
                  addi         s3, s5, 2030
                  and          s2, s7, t4
                  srli         a5, t4, 12
                  xori         a4, tp, 477
                  slli         a0, a7, 27
                  nop
                  lui          t2, 771159
                  nop
                  srl          a2, t0, s2
                  lui          s11, 72402
                  sltu         ra, a6, a3
                  add          s7, s2, tp
                  sltu         t5, t1, s8
                  srl          a5, s0, t5
                  nop
                  slli         s8, s0, 5
                  and          s2, zero, t5
                  xori         s11, s6, 1755
                  srl          t3, t4, t5
                  add          sp, a1, a6
                  slli         s5, s5, 18
                  slti         s8, s10, -408
                  sltu         t0, a4, s6
                  ori          s11, s5, -10
                  auipc        s5, 302544
                  nop
                  add          t4, sp, s9
                  andi         t2, zero, -1636
                  sub          a0, s9, s11
                  slti         s11, a6, -1968
                  andi         s8, a5, 758
                  xori         s9, a1, 1421
                  slli         s5, s7, 18
                  addi         s11, a4, -1663
                  or           s1, s2, s0
                  sub          a0, s0, s4
                  and          t1, s10, a1
                  sub          s1, s0, a3
                  or           sp, tp, t5
                  slli         t5, s1, 22
                  srai         t1, a1, 19
                  add          s1, s1, s8
                  ori          t4, a2, 423
                  or           sp, s9, t0
                  andi         sp, a6, 648
                  ori          a1, s2, 1386
                  slti         a2, s11, -1536
                  auipc        t0, 831490
                  sll          s1, ra, a0
                  sltu         a3, s2, s10
                  slt          t4, s9, t2
                  sra          sp, t1, a4
                  andi         a0, a4, 1446
                  and          s5, s7, s3
                  xor          s8, t2, a1
                  sltiu        a7, s11, -121
                  addi         a0, ra, 23
                  slti         a4, gp, -1115
                  sub          ra, s1, t4
                  ori          s1, t5, -540
                  xori         s8, a7, 762
                  or           tp, s0, s8
                  sll          s0, s2, sp
                  sra          s0, s9, t4
                  sll          a3, a0, s6
                  xori         a4, s7, -1663
                  srli         s7, s0, 11
                  nop
                  xori         a2, t1, 1096
                  slti         s3, a4, 1484
                  slli         t5, sp, 3
                  xor          s11, a6, t0
                  andi         a1, t2, -530
                  andi         s4, t6, -656
                  slti         t2, gp, -1178
                  srai         a4, s8, 25
                  sltu         s0, s4, a3
                  nop
                  sltu         s0, s2, a0
                  addi         s3, a2, 654
                  slli         s7, sp, 1
                  add          t5, zero, s4
                  xor          a0, a4, s11
                  and          s1, t5, ra
                  slt          t0, ra, s7
                  srl          s2, a7, a1
                  ori          a0, a5, -905
                  nop
                  srai         zero, t2, 19
                  slt          tp, tp, t5
                  or           s11, a0, t1
                  and          tp, sp, zero
                  andi         tp, sp, -497
                  xori         ra, tp, 192
                  sltu         s5, a1, t3
                  add          a7, a5, s9
                  sub          tp, ra, s5
                  sll          gp, gp, s4
                  andi         gp, s3, 1572
                  or           a1, s2, sp
                  add          a1, s4, ra
                  sra          t1, a7, s11
                  xor          gp, a7, t4
                  slli         ra, tp, 15
                  nop
                  andi         t1, a5, -1434
                  nop
                  srai         s8, s10, 30
                  auipc        tp, 840305
                  nop
                  slli         t1, a6, 28
                  srl          s10, a5, t4
                  sra          a7, ra, t5
                  slt          a0, a7, ra
                  ori          t0, t6, 1710
                  srli         s10, s10, 11
                  auipc        a1, 6321
                  xor          sp, s10, s3
                  slti         ra, gp, 521
                  sub          a4, s5, zero
                  sll          a1, t0, t2
                  slli         zero, t3, 25
                  sll          t5, t6, t1
                  slti         t0, s6, -1367
                  nop
                  nop
                  slli         t3, t2, 30
                  slt          t0, s8, t5
                  srai         a4, a3, 25
                  sll          s4, a1, ra
                  lui          s0, 638106
                  slli         sp, s8, 14
                  sltiu        s0, zero, 486
                  slt          t2, s6, t4
                  addi         s9, s6, 322
                  nop
                  or           a1, t2, t6
                  sltu         s0, s11, a2
                  srai         s1, a0, 29
                  nop
                  sltiu        s11, a2, -395
                  and          a0, s11, t2
                  slti         t3, s4, -415
                  slt          s8, s2, s0
                  slti         a5, s9, 129
                  slti         a5, a7, 505
                  or           t5, s7, a0
                  andi         tp, sp, -217
                  srai         sp, s5, 26
                  sra          t4, zero, s11
                  slli         s10, a7, 6
                  sub          sp, s0, sp
                  or           s5, ra, t5
                  xor          t5, s7, a1
                  or           s9, ra, a6
                  xor          tp, a0, s10
                  srli         tp, s10, 13
                  and          s8, s7, t5
                  andi         gp, a4, -1246
                  sltiu        s1, t1, -1573
                  slt          t4, a4, s3
                  lui          sp, 240508
                  sub          t2, a5, a2
                  xori         s1, s10, 418
                  xori         s11, t6, -2016
                  and          zero, t1, s9
                  xor          a3, a7, a5
                  sra          t3, s11, t5
                  auipc        a1, 935058
                  ori          sp, a0, 1527
                  srai         gp, s2, 28
                  slli         s8, a0, 15
                  addi         t4, s1, -1594
                  slt          t5, s8, a0
                  slt          s11, zero, t5
                  slli         s7, t1, 28
                  sltu         a4, s10, s4
                  auipc        sp, 679748
                  nop
                  xori         a0, a4, 1506
                  sra          s9, s7, t1
                  srai         s9, gp, 7
                  add          s4, a2, t1
                  nop
                  ori          a5, s8, -333
                  srl          s3, a6, s6
                  srl          sp, sp, ra
                  xor          t1, a6, s8
                  or           t0, t3, s0
                  lui          t5, 644836
                  xori         s2, s10, 1354
                  sltu         a7, a5, gp
                  sltu         tp, s7, s10
                  auipc        t1, 81202
                  srl          gp, zero, t3
                  srl          s4, a0, a0
                  xor          a3, zero, t0
                  ori          a1, gp, -1625
                  ori          s0, t1, 1607
                  add          s1, t3, sp
                  srli         gp, ra, 29
                  slli         a1, t3, 11
                  xor          t0, gp, a2
                  sra          s7, s9, ra
                  slt          s11, s8, s10
                  xor          a4, zero, s7
                  andi         a0, s3, 180
                  addi         s11, s3, 1874
                  sll          t3, a7, ra
                  nop
                  lui          a4, 829573
                  auipc        t4, 397339
                  srli         a3, s3, 11
                  auipc        s3, 753380
                  or           s9, s6, ra
                  addi         a7, a7, 412
                  addi         s4, ra, 1079
                  addi         a0, s4, 1470
                  add          t0, s2, a7
                  sltiu        s0, sp, -1610
                  xor          tp, s7, t6
                  sll          s5, tp, s3
                  and          tp, s2, ra
                  ori          t2, tp, -151
                  slli         ra, s11, 11
                  nop
                  andi         s0, s1, 1521
                  xor          s4, a7, s0
                  srl          s1, s5, s7
                  nop
                  sra          s5, s2, s1
                  xor          t3, zero, zero
                  addi         a5, s6, 378
                  slti         a3, s0, 55
                  addi         s0, tp, -287
                  addi         a1, a6, -1168
                  auipc        tp, 97524
                  ori          s11, t0, 211
                  slti         s3, t2, 821
                  and          s1, s3, s5
                  nop
                  nop
                  slli         t4, a7, 28
                  slli         a4, zero, 4
                  sub          a2, a4, s10
                  auipc        s2, 247808
                  srai         t0, a2, 26
                  srl          a5, s1, a5
                  add          a3, a5, s9
                  nop
                  auipc        s3, 293275
                  xori         gp, a1, -813
                  sub          t3, a2, s8
                  slti         s8, a5, -1163
                  lui          a4, 272832
                  xori         zero, s8, -129
                  add          t4, s2, s2
                  sll          t1, ra, tp
                  srli         sp, t3, 0
                  add          s10, t0, s7
                  lui          s1, 458382
                  sltiu        a2, ra, 215
                  sra          t3, s8, a6
                  sra          a2, s10, a3
                  lui          s5, 273186
                  or           a5, sp, t2
                  srli         t0, s4, 28
                  sll          s11, s10, s10
                  slli         s11, a0, 25
                  srl          ra, tp, s3
                  and          tp, a7, gp
                  addi         s9, t4, 53
                  nop
                  add          tp, s8, t4
                  add          t2, a2, s1
                  sltiu        s2, a6, -510
                  nop
                  sltu         a1, t2, t4
                  sltu         s1, gp, sp
                  sltu         tp, a4, a7
                  andi         s4, a3, -712
                  sra          s5, a5, s5
                  lui          s7, 759917
                  slti         t3, s7, 863
                  srli         a1, a2, 30
                  srl          s11, t6, s9
                  srli         s2, a3, 21
                  or           s11, a2, t3
                  ori          s10, s0, -1773
                  sub          a3, t3, t2
                  xori         s10, zero, 1625
                  xor          gp, s3, t6
                  sra          a5, a7, t4
                  add          a4, gp, a5
                  or           s10, a5, a0
                  sll          s0, a0, s2
                  xor          s1, a3, t1
                  ori          a2, a2, -1331
                  xor          a3, t6, a5
                  sra          s4, s3, s5
                  nop
                  add          zero, gp, a2
                  nop
                  lui          a2, 331953
                  slti         s5, sp, 1751
                  lui          s9, 500419
                  add          s10, a4, t6
                  ori          s3, a2, 401
                  slli         s7, s5, 15
                  sltiu        a5, s10, -1256
                  addi         s10, s9, 492
                  sub          s2, t2, a5
                  add          tp, zero, a4
                  srai         t4, s9, 24
                  lui          s7, 825657
                  slli         a7, a6, 31
                  auipc        a0, 671044
                  sltu         s9, s11, gp
                  slti         a3, s10, 1445
                  sltiu        s8, s10, -281
                  lui          t5, 880953
                  sltu         a4, s4, a7
                  sub          s8, a7, a3
                  slt          a3, s4, a0
                  and          a4, s6, s6
                  auipc        sp, 1042329
                  slti         tp, s0, 1161
                  xori         t1, s5, 506
                  sll          s7, t6, s3
                  lui          s4, 892835
                  srli         t1, t0, 7
                  sll          s10, a6, a1
                  addi         a2, s5, -1541
                  sll          a5, s2, a7
                  sltiu        a7, s11, 622
                  and          a3, t2, sp
                  sltiu        s2, a6, 833
                  add          s8, t3, s7
                  auipc        sp, 817384
                  nop
                  addi         s7, gp, 75
                  xori         t2, a4, -721
                  addi         s4, a1, 321
                  xori         t1, s7, 1047
                  xor          gp, a3, t2
                  sra          zero, t5, a1
                  slli         zero, s9, 8
                  auipc        zero, 369922
                  sltiu        s7, a1, -964
                  ori          a0, a2, 1094
                  sll          t5, s2, gp
                  slli         gp, t2, 18
                  add          t3, sp, s6
                  lui          s8, 41382
                  srli         s4, zero, 0
                  sltu         s4, s11, sp
                  andi         s8, a5, 155
                  addi         s8, tp, 1172
                  sltu         a3, a4, a7
                  slli         a4, t5, 24
                  addi         s2, s6, -853
                  xori         s11, s10, 1849
                  andi         t5, s9, 378
                  add          s0, s8, sp
                  srli         zero, s11, 9
                  sll          ra, sp, a1
                  srl          zero, s8, a1
                  addi         s11, tp, -1146
                  sub          a1, a0, tp
                  xor          t4, s8, zero
                  auipc        s3, 538202
                  sltu         ra, a6, t4
                  auipc        a5, 384508
                  auipc        s0, 782560
                  and          tp, zero, s4
                  slt          tp, s7, s3
                  slt          t2, s3, s5
                  slti         s2, a4, 182
                  lui          s5, 129404
                  sra          s7, t2, s0
                  xori         s2, s0, 2005
                  nop
                  nop
                  srai         t1, ra, 31
                  or           tp, s11, t0
                  srl          zero, a5, t0
                  or           s4, zero, s11
                  andi         a5, a1, 474
                  or           s11, t3, s2
                  sltu         sp, gp, zero
                  or           sp, s9, a0
                  xor          s7, s10, zero
                  add          a7, t2, a5
                  sltu         t2, s5, t6
                  slti         gp, t5, -1733
                  slti         s4, t2, 483
                  slti         a1, sp, -956
                  sra          a7, a4, sp
                  srli         t0, t4, 4
                  andi         a4, ra, -555
                  addi         a1, s7, 459
                  srl          t2, a6, a3
                  xori         s7, sp, -1851
                  sra          s5, t4, a7
                  add          sp, a4, tp
                  nop
                  lui          sp, 989120
                  srli         a3, sp, 2
                  sltu         s7, t1, s1
                  sltiu        sp, a5, 922
                  andi         s0, a2, -665
                  xor          a2, s4, gp
                  auipc        tp, 417247
                  srli         s4, s11, 17
                  xori         a3, zero, -757
                  slt          s4, a5, t4
                  auipc        t0, 379376
                  sub          gp, s7, a3
                  lui          a1, 39130
                  sra          s1, t2, a6
                  srl          a5, s3, s0
                  sub          a3, t4, s9
                  ori          a0, s0, 258
                  and          s3, t2, s2
                  nop
                  slli         zero, t5, 25
                  and          a7, a6, zero
                  or           a2, t5, s1
                  slli         t4, sp, 29
                  addi         t3, t6, -795
                  sll          a0, t0, a7
                  sra          a7, a1, s2
                  srai         t5, t5, 15
                  srai         s3, sp, 31
                  add          s5, t3, s4
                  ori          s11, s10, -1543
                  or           a3, gp, a5
                  addi         a4, s4, 1705
                  slt          t5, s7, s8
                  or           a4, s7, t2
                  sub          sp, s6, t6
                  ori          t1, sp, -409
                  sltiu        a5, t0, -611
                  sra          a3, s10, s1
                  sll          a7, t2, a3
                  slti         a7, t0, -1911
                  slli         s1, s8, 0
                  nop
                  sll          a0, s7, s9
                  ori          a1, a7, 190
                  sra          s7, t1, tp
                  auipc        t5, 230527
                  andi         sp, a1, -280
                  slt          s10, a6, a6
                  sra          a1, s0, a1
                  auipc        a1, 887685
                  lui          s4, 173030
                  sll          s10, a5, s8
                  ori          s10, s1, 519
                  ori          s8, a7, 918
                  or           a5, t0, t2
                  sltiu        zero, s11, -1470
                  sub          s9, s10, s10
                  slti         a2, t5, -1608
                  srli         t3, s5, 12
                  sltu         sp, s4, t6
                  and          sp, t1, a5
                  xor          t4, s6, a3
                  ori          s3, t4, 1796
                  slt          s11, t0, s4
                  slt          a2, s5, t3
                  sltu         s4, s6, s11
                  srai         a0, s5, 2
                  nop
                  ori          a5, t6, 796
                  add          sp, a2, a2
                  slt          t4, a1, s9
                  lui          s1, 517832
                  sltiu        s8, zero, 396
                  auipc        a7, 485378
                  srai         a5, t2, 31
                  xor          s2, s11, s10
                  sub          s0, a7, zero
                  srli         s2, s1, 0
                  srl          gp, a0, a1
                  sll          s2, t5, t2
                  lui          s2, 397697
                  xori         a7, t2, -786
                  srl          a5, gp, s6
                  andi         ra, sp, 1245
                  and          t3, s2, s6
                  addi         zero, s6, -355
                  lui          sp, 764558
                  sub          s3, a7, t4
                  addi         s7, s10, -1209
                  addi         sp, s4, -1515
                  slli         s9, t1, 12
                  auipc        s0, 582912
                  add          t0, a6, s9
                  andi         s8, s7, -234
                  addi         s9, s0, 1289
                  sra          a7, ra, t3
                  sra          s3, s2, a3
                  or           s9, a5, s8
                  srl          t2, s5, s5
                  lui          t3, 701069
                  slli         gp, t5, 21
                  sltu         zero, a3, s8
                  ori          a2, a3, -1336
                  nop
                  auipc        zero, 355918
                  sltiu        ra, s6, -512
                  xor          a1, s2, a2
                  auipc        s7, 907352
                  auipc        a2, 384504
                  add          t2, s8, a3
                  auipc        t1, 879303
                  xor          a7, s11, t6
                  lui          s8, 903244
                  xor          t0, gp, a6
                  sltu         t5, s3, ra
                  slt          a0, t4, t0
                  addi         s0, a5, 482
                  xori         a5, s8, 1715
                  slt          t3, s0, sp
                  or           sp, s11, t3
                  lui          t5, 620384
                  nop
                  ori          s5, t3, 1685
                  and          a1, s2, s4
                  sltu         ra, t6, a7
                  and          t0, t4, a0
                  slti         a5, a5, 2027
                  sll          t3, tp, ra
                  sub          a3, a7, a2
                  xor          s2, gp, t3
                  xor          s7, s4, s10
                  sll          a0, a3, t0
                  srli         a5, s4, 9
                  srai         s4, t4, 26
                  sltu         s3, s10, sp
                  sltu         s11, t0, a3
                  sra          s0, ra, s3
                  sra          a7, s0, t4
                  sll          s10, t5, s4
                  slt          s2, a4, a7
                  addi         a1, ra, -1339
                  xor          a7, s2, s4
                  addi         a0, s1, -1992
                  slti         s5, t3, -196
                  srl          s2, s9, t2
                  auipc        t5, 970525
                  andi         s0, t3, 1137
                  sub          zero, gp, s5
                  xor          s11, t4, s10
                  slti         zero, sp, 1990
                  ori          s5, a7, -269
                  add          t4, t1, ra
                  sltu         a0, gp, s10
                  xor          s4, a1, sp
                  srai         t4, s0, 4
                  add          s10, t6, a3
                  andi         a0, a3, 645
                  or           sp, t5, t5
                  sll          tp, t0, zero
                  lui          a4, 312408
                  sra          s11, s0, s10
                  lui          t1, 286496
                  sll          s0, gp, t1
                  slli         gp, a5, 0
                  sub          t5, t1, s1
                  andi         s1, a6, 1567
                  sltu         t5, t5, s1
                  xor          a7, t6, t5
                  xor          tp, s4, s6
                  sra          s3, s2, a3
                  xor          s10, sp, a6
                  add          ra, t3, s6
                  xor          s11, s5, t3
                  sra          tp, s0, s4
                  ori          s5, s9, -1439
                  nop
                  sub          a4, a4, s11
                  slt          t2, s10, t0
                  ori          s8, gp, -1954
                  sub          t1, gp, a3
                  slti         t4, s2, 645
                  or           t4, t1, gp
                  srl          s5, a0, a7
                  or           s1, a6, s6
                  srl          a0, tp, s9
                  xori         s5, s9, -1858
                  sltiu        a5, s0, 360
                  auipc        sp, 190532
                  slli         s9, s5, 29
                  ori          t5, s5, 709
                  add          tp, a6, tp
                  srl          s5, a1, s4
                  sltu         t0, s4, s6
                  and          a3, t0, a1
                  add          a4, s5, ra
                  nop
                  slt          s7, s6, a7
                  xori         t5, tp, 157
                  sra          sp, s11, s5
                  lui          s8, 451263
                  srl          s2, s8, ra
                  nop
                  sll          a5, s4, a3
                  auipc        s0, 329447
                  xori         a5, a5, -1472
                  sub          a1, t3, zero
                  addi         s4, s7, -1113
                  add          s0, s3, a5
                  slt          s10, ra, tp
                  auipc        t5, 83368
                  sll          t5, a6, ra
                  slti         s4, a1, -1794
                  slt          t2, zero, t2
                  slli         a3, a2, 26
                  nop
                  lui          a5, 863780
                  or           t1, a7, tp
                  xori         zero, zero, 1296
                  slli         a2, s3, 3
                  slti         gp, a7, -1846
                  lui          gp, 334501
                  xori         s5, s9, -109
                  nop
                  slli         zero, s5, 27
                  andi         zero, s4, 1656
                  slti         sp, t1, 572
                  sltiu        a1, s10, 238
                  sltiu        s3, t5, -396
                  srai         s11, a5, 4
                  sra          t4, a4, t5
                  addi         a5, a1, 1173
                  and          s0, a7, a6
                  lui          a0, 464480
                  slt          a2, t6, ra
                  ori          s9, a2, 1438
                  sltu         a4, a6, zero
                  srli         gp, a5, 6
                  sltiu        s3, s2, 646
                  srl          a3, s7, t2
                  srl          t0, a4, s6
                  add          t1, tp, a6
                  nop
                  andi         a5, ra, 292
                  nop
                  sltu         a4, s3, t3
                  srli         zero, t5, 16
                  sltu         s0, t1, s2
                  add          tp, s1, a0
                  or           a1, a7, t4
                  sra          a1, gp, ra
                  and          ra, s11, t6
                  xori         s0, s10, -1772
                  srl          s2, a5, a0
                  or           s11, t3, s6
                  andi         s9, t6, 1368
                  sra          a3, a3, a1
                  or           t4, t1, sp
                  and          t4, s2, t2
                  sll          s8, tp, a5
                  and          s7, a3, a0
                  add          s11, s4, s7
                  nop
                  slli         s4, s9, 17
                  sra          a4, s3, s8
                  srl          sp, t1, t1
                  srl          s9, ra, s5
                  sll          ra, a7, s11
                  nop
                  andi         s0, s10, -225
                  srai         a7, s5, 13
                  addi         a7, s3, -1648
                  slti         a0, gp, 1823
                  srai         s4, t3, 3
                  ori          s5, s2, 1101
                  srl          t0, s4, a3
                  slli         t4, s1, 23
                  xori         s7, s4, -1463
                  addi         t4, tp, 400
                  sltiu        s5, a6, 425
                  nop
                  auipc        t3, 727073
                  xori         t4, zero, -1489
                  sub          sp, s4, s6
                  sltiu        s4, s11, -1670
                  srl          s3, t2, s2
                  sub          a3, t4, s0
                  addi         gp, s10, 302
                  xor          s7, a6, gp
                  slt          s7, a5, a5
                  srl          s1, a3, sp
                  slt          s5, s2, t1
                  sltu         t3, t1, t6
                  slt          s7, a4, ra
                  slt          s9, t4, s4
                  auipc        t4, 404399
                  nop
                  sll          a1, a3, t6
                  addi         t4, tp, 1223
                  slti         gp, ra, 1149
                  xor          a4, zero, a7
                  ori          s10, s7, 900
                  slt          a7, a1, t5
                  add          s10, s1, s7
                  and          sp, s0, sp
                  slli         s3, a1, 19
                  srli         s3, a6, 2
                  slt          s8, t5, t1
                  xor          a4, s1, a1
                  sltiu        a3, a5, -1025
                  ori          zero, s5, 519
                  lui          t0, 550295
                  slti         s9, t5, 54
                  slt          s8, gp, s4
                  srli         a4, zero, 28
                  slt          t4, a0, a1
                  sltu         s4, a0, s6
                  add          a4, s3, s2
                  sltiu        a7, s10, 1821
                  sll          s8, a3, s9
                  lui          t5, 470958
                  or           t2, t4, t3
                  sra          s8, t1, s3
                  andi         s3, t3, 104
                  andi         t4, a4, -236
                  xori         a1, a0, 2009
                  srai         s10, a7, 13
                  xor          s10, s9, t2
                  srli         s9, s10, 8
                  ori          a2, a5, 665
                  auipc        a0, 78903
                  ori          a1, s4, -1394
                  sll          ra, tp, t6
                  andi         s7, t1, 332
                  addi         zero, s3, 644
                  slli         s1, t6, 27
                  sra          s8, sp, gp
                  or           t4, s5, t4
                  xori         gp, a3, -1637
                  add          a2, t2, s9
                  sltiu        t3, sp, -1306
                  sra          a3, a3, s8
                  srl          a4, t6, s11
                  ori          a1, s11, -1011
                  sltu         s3, zero, s0
                  srai         s4, a2, 2
                  sltu         s7, t3, s0
                  xori         zero, zero, 390
                  nop
                  slti         s11, tp, -1396
                  lui          a4, 388496
                  sltiu        a0, t2, -1824
                  xori         a5, s3, 1548
                  add          s1, t2, s9
                  slli         a5, s0, 5
                  srai         s1, sp, 6
                  nop
                  auipc        t2, 444066
                  sll          a4, s2, zero
                  sltiu        t2, t2, -1721
                  add          sp, a2, a7
                  lui          ra, 569052
                  srai         t1, t5, 7
                  addi         zero, a2, 846
                  srli         t5, t2, 7
                  srai         s3, t0, 28
                  xori         a3, a1, -1268
                  add          s0, a2, t6
                  lui          a1, 304525
                  sltiu        s4, t3, 868
                  xori         a5, a5, 630
                  sra          t3, a5, a4
                  sub          s9, a7, s9
                  srai         a2, a1, 11
                  sub          s1, t3, s3
                  lui          t2, 435902
                  srl          s5, t3, t6
                  sub          sp, t0, a6
                  srai         a2, s0, 27
                  add          s7, a7, t3
                  srli         a1, sp, 25
                  sub          sp, s4, a4
                  srl          a7, s6, sp
                  sra          a2, a4, s2
                  srli         s5, a2, 8
                  or           a4, s0, s2
                  xor          s3, a5, t6
                  nop
                  and          t4, s5, s5
                  or           s3, t1, s11
                  lui          a0, 977778
                  add          s7, t5, s2
                  or           zero, s3, s0
                  xori         a3, a7, -1493
                  srli         a3, a1, 11
                  addi         a7, s5, -634
                  xor          t4, s0, s1
                  add          a3, s11, t2
                  slli         t3, s1, 14
                  xor          t4, tp, a4
                  add          a0, s3, sp
                  sra          s8, s2, a1
                  nop
                  auipc        t4, 738799
                  srai         s10, a7, 30
                  ori          t0, a6, -928
                  xori         s8, s10, -1580
                  xori         s9, s11, 666
                  sltiu        s3, s4, 2033
                  srai         tp, s3, 8
                  xor          s11, s6, tp
                  addi         s7, a4, 967
                  srai         a1, a3, 22
                  nop
                  andi         t1, a1, -540
                  addi         a7, a7, -945
                  sltiu        a2, a3, 483
                  nop
                  srli         s10, t3, 23
                  slt          s8, t0, s9
                  srai         ra, a7, 21
                  and          s0, s1, s9
                  sltu         a3, s9, a5
                  addi         a4, s2, -442
                  and          a4, s3, t3
                  add          t4, s9, t5
                  srai         gp, gp, 25
                  andi         gp, s2, -920
                  or           s0, s7, a5
                  or           a1, a0, s2
                  sra          t2, a0, t1
                  lui          sp, 769003
                  srli         s10, t2, 20
                  addi         s3, t2, -2006
                  sra          s5, s2, t1
                  sltu         a3, t0, zero
                  srai         t2, a2, 7
                  srl          zero, a2, t1
                  andi         s9, s8, -168
                  sll          gp, zero, s0
                  sra          zero, s7, t6
                  xor          sp, zero, tp
                  andi         a3, a3, -1533
                  xori         t5, a2, -206
                  xori         tp, t5, -1727
                  or           a5, t1, s1
                  srli         s11, a6, 15
                  addi         t3, zero, -506
                  lui          a4, 771257
                  xori         s10, s2, 761
                  sltu         s2, t5, a2
                  lui          s8, 950152
                  xor          ra, t4, t5
                  and          a4, gp, a7
                  srl          gp, s10, t1
                  auipc        s5, 227132
                  slti         s5, s2, 1941
                  xor          tp, a2, s1
                  add          s11, s0, a0
                  slt          t0, t0, t0
                  and          gp, a6, sp
                  and          s10, sp, a7
                  and          s9, s7, a4
                  ori          s9, s11, -1648
                  slli         t4, s0, 29
                  auipc        s4, 784197
                  slli         a5, t6, 22
                  slli         a3, a4, 3
                  sra          a7, a1, a0
                  addi         a4, a1, -1425
                  sltu         s2, s11, a4
                  srai         s0, zero, 12
                  slti         t3, a7, 1786
                  andi         s1, s5, 204
                  sltiu        zero, s8, -1021
                  sll          s10, t1, ra
                  andi         t2, zero, -339
                  xori         a2, gp, 836
                  slti         t1, sp, -1278
                  xor          t1, s7, a0
                  addi         gp, a0, -924
                  srli         sp, s7, 17
                  xori         s3, s10, 1800
                  sltu         a1, s0, tp
                  slt          s0, s2, t4
                  and          s1, s3, t5
                  slt          zero, a2, s1
                  nop
                  nop
                  sll          a7, s7, gp
                  nop
                  ori          t5, s2, -264
                  xori         s4, ra, 718
                  ori          s5, a0, 1168
                  sra          gp, a3, t4
                  xori         a4, a5, -506
                  sltu         tp, s9, a0
                  sll          s3, s1, s1
                  andi         tp, t0, -1490
                  slt          s0, sp, sp
                  add          s4, a7, s3
                  lui          gp, 593583
                  srl          a7, s8, t5
                  sra          s2, zero, s2
                  nop
                  auipc        a3, 402452
                  auipc        s4, 231706
                  slti         t0, tp, 1507
                  andi         ra, t0, 570
                  xor          zero, a6, t1
                  xori         t3, zero, 418
                  or           t2, s9, s1
                  xor          s7, s2, a7
                  and          s0, t0, s2
                  sltiu        s4, a4, -1394
                  srli         a4, tp, 29
                  or           s7, s8, s10
                  andi         s8, t0, -1044
                  sll          a5, s0, s8
                  ori          s3, s3, -744
                  auipc        s9, 427393
                  xor          s9, s6, s4
                  xori         s2, t5, 1059
                  xori         t5, a7, -1391
                  srli         t5, s5, 2
                  ori          s0, a6, -2044
                  add          sp, gp, s6
                  sltu         t2, s6, s7
                  sltu         t1, s4, t6
                  add          s3, a5, zero
                  ori          tp, a7, 450
                  or           t1, s8, gp
                  sltu         s0, s3, t5
                  xor          t2, s7, zero
                  srl          sp, s10, s4
                  or           s9, s8, gp
                  addi         a4, a2, -1966
                  xori         a3, s3, 531
                  slli         gp, a7, 20
                  add          sp, a1, s8
                  add          t2, s8, t6
                  nop
                  slli         zero, gp, 23
                  ori          s8, t4, -1077
                  andi         s8, a0, -640
                  nop
                  and          a7, s9, s1
                  and          a3, t3, a3
                  sub          s0, t3, s10
                  andi         gp, s0, -1988
                  sub          s8, tp, s10
                  slti         t4, a6, 131
                  auipc        t3, 24211
                  xor          t4, tp, s1
                  addi         t5, t5, 239
                  andi         s9, t0, 516
                  xor          t0, s7, s11
                  sra          s11, a1, s11
                  add          a7, s1, s0
                  andi         t1, s1, 637
                  lui          s4, 811022
                  sll          s0, s3, zero
                  sra          s9, s1, s6
                  slli         a2, t5, 19
                  lui          t5, 1043163
                  slt          ra, zero, t2
                  and          gp, a6, a5
                  sltu         s9, zero, sp
                  sub          ra, s4, t4
                  and          s9, s4, t4
                  srl          s5, s5, a6
                  srl          gp, a0, s6
                  srai         a5, t5, 6
                  add          gp, s10, s7
                  sra          a5, s7, ra
                  sltiu        a2, a6, -1286
                  slti         a0, a0, 648
                  srli         s5, s2, 5
                  nop
                  sltu         s8, sp, s5
                  slti         s11, gp, 1932
                  auipc        a2, 717976
                  or           a2, s9, a5
                  sltu         s8, tp, a5
                  slli         a7, s9, 31
                  and          t0, a4, zero
                  sltiu        a5, a6, -433
                  sra          a4, a7, s3
                  and          s4, a3, s1
                  and          s10, s5, t0
                  auipc        tp, 985455
                  sltiu        s8, a3, 1909
                  auipc        a4, 979772
                  slti         s0, sp, 639
                  srl          s5, t0, t1
                  slti         sp, zero, 1846
                  and          s4, t3, t3
                  sra          s11, a2, t0
                  slli         s9, a5, 26
                  sll          s9, s9, a0
                  sltu         a4, a2, a7
                  slt          t3, s5, a7
                  xori         s11, t2, 1088
                  add          t1, t0, s7
                  addi         s2, s4, -942
                  and          s1, sp, s8
                  and          sp, t3, s5
                  auipc        t0, 735992
                  sltu         a7, t2, s3
                  andi         tp, a3, -531
                  xor          gp, ra, t3
                  li           a2, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           a3, 0x80000000
                  li           a5, 0x80000000
                  li           s7, 0x718f44fc
                  li           t2, 0xb7ba689a
                  li           a7, 0x7a0901a6
                  li           ra, 0x9c005890
                  li           t0, 0x80000000
                  li           a1, 0x0
                  li           s1, 0x80000000
                  lui          a5, 85178
                  auipc        t0, 589791
                  nop
                  lui          a7, 840631
                  nop
                  nop
                  nop
                  addi         s7, t2, 355
                  addi         s1, a3, -1188
                  add          a2, a1, a1
                  sub          a7, s1, s1
                  sub          a3, a3, a2
                  addi         a2, a2, 1420
                  sub          s1, t0, ra
                  lui          s1, 329818
                  add          a2, a7, a1
                  sub          ra, a7, a3
                  nop
                  auipc        a1, 901837
                  nop
                  add          a5, ra, s1
                  sub          a5, a1, ra
                  sub          s7, a5, s7
                  lui          a3, 766110
                  lui          a7, 760145
                  nop
                  sub          a5, a3, t0
                  add          a5, a7, a5 #end riscv_int_numeric_corner_stream_15
                  xori         s9, zero, 98
                  and          s8, ra, t5
                  sltu         t5, t3, a6
                  sra          s2, s10, a5
                  nop
                  or           a7, s5, s3
                  sub          t3, s8, tp
                  and          s2, a6, s10
                  sra          t5, s8, a0
                  slti         a0, ra, -76
                  sltiu        gp, t3, 485
                  xor          a3, zero, a7
                  sra          s5, a6, a2
                  lui          t2, 38443
                  auipc        s8, 697603
                  srli         t2, t3, 17
                  sra          zero, s4, a4
                  sltiu        a3, zero, 1097
                  auipc        a3, 439877
                  lui          a7, 253146
                  ori          t1, s8, -303
                  and          a5, s10, s4
                  sltiu        ra, a3, -1655
                  slli         a7, t0, 27
                  sub          t2, s4, s3
                  sub          s9, ra, t5
                  sltiu        s9, t5, -1319
                  sra          s8, a7, s8
                  sltiu        ra, s2, 715
                  ori          s10, s11, 1382
                  slt          a3, s8, s10
                  andi         a3, s3, -1032
                  nop
                  slti         s0, zero, 121
                  sub          s11, zero, t6
                  slti         s7, s9, -1806
                  srl          a1, a5, s11
                  xori         s4, a6, -1861
                  lui          t0, 77989
                  slti         a0, tp, -1817
                  srai         s1, t6, 2
                  xor          s9, sp, s7
                  andi         s1, t5, -1037
                  slt          a1, s9, t4
                  xor          gp, s7, s3
                  slli         a1, tp, 23
                  ori          a4, t1, -1001
                  slt          a7, sp, t4
                  slt          ra, a5, a7
                  sub          s9, a3, a1
                  xori         s2, s11, 159
                  or           a2, s2, s2
                  sub          sp, s4, t0
                  add          s3, s10, t1
                  srai         s8, a3, 19
                  srli         a7, s8, 14
                  addi         t1, t0, -542
                  xor          a1, s3, s4
                  andi         a7, t4, -1267
                  xori         a7, ra, 1526
                  nop
                  addi         a7, a6, 1782
                  auipc        s5, 805614
                  lui          s1, 345604
                  slt          tp, a1, s1
                  andi         s2, t5, 1183
                  xori         gp, tp, -244
                  ori          s5, t0, 1163
                  xor          s9, t1, t5
                  sltu         s5, t1, a4
                  slt          s0, a6, gp
                  lui          a7, 190181
                  sll          t1, s0, s10
                  lui          s4, 1024033
                  xori         s11, s1, 240
                  srai         t0, s6, 2
                  lui          t0, 833422
                  srl          tp, a1, a7
                  andi         s5, t4, 380
                  slt          zero, t0, s7
                  sub          tp, t1, s4
                  lui          gp, 881593
                  slti         s8, sp, -880
                  srai         s3, a4, 27
                  srl          s0, s7, a4
                  and          t4, s3, ra
                  add          t1, s10, a0
                  sltiu        a0, a5, -740
                  srli         gp, s11, 1
                  slli         tp, s0, 17
                  auipc        s0, 913402
                  xor          a5, s11, t3
                  srai         tp, t1, 0
                  auipc        zero, 829383
                  or           t2, a4, a0
                  xor          a7, a3, s8
                  sltiu        s3, a0, 254
                  add          s5, a0, a2
                  sub          a4, s1, a4
                  xori         a3, s9, -1661
                  xor          t5, s0, s11
                  srai         a4, zero, 18
                  slt          a1, t4, t6
                  lui          a4, 880743
                  sll          s8, t3, s6
                  or           s7, a3, tp
                  srl          a5, a1, gp
                  srli         s1, t5, 17
                  auipc        a1, 563836
                  xori         s5, a7, -1794
                  add          t0, s11, t6
                  sub          s3, s11, t5
                  srli         s3, s0, 9
                  and          a7, s5, s9
                  slt          s1, a6, s0
                  sub          gp, s7, a2
                  sltiu        tp, t5, 2037
                  or           s2, t3, s9
                  srai         s3, t4, 24
                  slli         s0, t4, 20
                  andi         s10, t2, -196
                  xori         sp, s8, -1130
                  addi         tp, a2, 1953
                  srl          t0, t5, s10
                  srli         s2, s3, 11
                  and          a2, s7, a4
                  ori          a1, t4, 1193
                  and          a0, s7, sp
                  addi         t3, t0, 1728
                  auipc        t4, 804650
                  xor          t4, gp, sp
                  xori         t0, s4, 435
                  addi         s1, t0, -229
                  srli         s2, s3, 13
                  ori          t5, s10, 332
                  add          s9, s2, t3
                  xori         sp, a0, 1644
                  addi         s4, s1, 1209
                  sll          t1, s10, s10
                  sub          a5, ra, a4
                  sll          ra, s6, s2
                  lui          gp, 646626
                  andi         a4, t3, -426
                  sub          a3, s9, s2
                  sll          sp, t2, s8
                  srai         a1, t1, 5
                  slli         s10, t3, 11
                  xor          s2, s6, s6
                  nop
                  lui          tp, 385263
                  sra          gp, s11, tp
                  sltu         t3, a4, t4
                  lui          ra, 117143
                  slti         ra, t2, 651
                  srli         s8, ra, 1
                  slli         s3, ra, 9
                  sub          a3, s8, s5
                  and          t5, s10, s9
                  srli         t5, sp, 16
                  auipc        s5, 956889
                  sltiu        s10, s7, 530
                  xori         s1, s11, -1886
                  srli         a5, s2, 25
                  lui          a3, 458980
                  and          s4, t4, gp
                  slli         s1, s2, 5
                  sltu         s5, a6, s5
                  lui          t3, 20975
                  xori         sp, a6, -745
                  srl          t0, t5, s6
                  slli         tp, a2, 0
                  xori         s8, a1, -1851
                  slt          s8, ra, s2
                  nop
                  slli         gp, t2, 4
                  addi         t5, s1, 378
                  srai         s0, s9, 17
                  slti         s5, a6, -774
                  srl          t0, a0, s8
                  sub          s3, ra, t6
                  xor          a2, a3, sp
                  xor          ra, t3, s6
                  or           zero, s0, s3
                  srai         s10, t5, 24
                  nop
                  xori         sp, s9, -1006
                  slti         a3, a6, 1220
                  and          gp, s1, s0
                  slt          ra, ra, a3
                  sra          a1, a1, t3
                  lui          a4, 510886
                  sltu         s3, a2, t2
                  sub          s8, a1, a3
                  and          s5, s0, s3
                  auipc        zero, 878643
                  lui          s3, 884895
                  sltiu        s5, t3, -894
                  sll          tp, ra, s8
                  lui          t1, 525055
                  srli         s11, a2, 11
                  srli         t1, a1, 10
                  sub          s1, a7, s7
                  lui          s10, 325700
                  addi         a0, t0, -1857
                  nop
                  sltiu        s5, t0, -1249
                  slti         s7, t1, 1633
                  sra          s10, s3, t4
                  or           s8, s5, t5
                  srai         t3, tp, 13
                  andi         t5, a2, 940
                  andi         s2, sp, 525
                  slli         a3, s4, 10
                  sltu         t2, a2, a5
                  xori         s3, s9, 1825
                  sra          s5, a3, t1
                  lui          t4, 152903
                  slt          zero, a5, s8
                  srai         s0, t5, 8
                  xor          a7, s3, tp
                  ori          a7, s11, -1987
                  lui          a4, 725883
                  sltu         s5, a3, s6
                  add          sp, gp, a7
                  slli         s11, a0, 9
                  add          s3, t3, t5
                  sltu         s9, sp, t2
                  slli         s9, ra, 19
                  slli         t3, a6, 20
                  slti         s2, a3, 1903
                  sll          a7, t1, tp
                  sll          s10, s7, a4
                  add          zero, s0, t2
                  add          t0, zero, t5
                  sll          s9, a2, s2
                  ori          t0, s1, -668
                  sub          a4, a2, t3
                  srli         s4, a4, 11
                  add          a7, a4, s8
                  xori         t5, s4, -1691
                  srai         gp, t1, 15
                  and          s5, s2, zero
                  srai         a0, a2, 14
                  srli         s7, t1, 5
                  addi         s1, a0, -511
                  sra          a1, s10, s9
                  and          s9, s10, s6
                  slti         s4, t4, -1944
                  add          s7, t3, zero
                  sra          zero, a5, s6
                  add          s1, t4, s10
                  sra          t3, s11, s0
                  slt          t0, a4, s1
                  or           zero, gp, a1
                  sltiu        a4, a4, 1315
                  sll          t3, s7, a3
                  srli         a1, s11, 24
                  addi         s5, tp, 604
                  auipc        a2, 653393
                  xor          t4, t6, s8
                  srai         gp, t2, 25
                  xori         t4, t6, -997
                  or           a5, t4, s11
                  addi         s1, a3, -65
                  xori         a5, t1, -510
                  andi         a3, s10, 1355
                  slt          tp, t2, t3
                  sub          t2, s2, s4
                  srl          s7, a3, t1
                  nop
                  xori         s11, a0, -477
                  auipc        s4, 458029
                  auipc        gp, 146575
                  andi         s7, a2, -1628
                  srl          t3, s8, s1
                  and          s4, sp, a1
                  srl          zero, zero, sp
                  sll          zero, a1, s8
                  sra          s5, s7, sp
                  addi         t0, t3, -1929
                  xor          a1, a0, t5
                  auipc        t4, 476506
                  xori         a4, s10, -1739
                  add          a1, s8, t2
                  auipc        s9, 285946
                  and          s10, a3, s7
                  sltiu        a2, s6, 1622
                  and          a4, ra, s8
                  srai         a0, s0, 17
                  sub          a5, ra, a0
                  srl          t5, s6, a7
                  lui          s10, 424219
                  xori         s8, gp, -1001
                  srli         s0, t5, 9
                  nop
                  add          a5, a4, t3
                  lui          t4, 913590
                  and          s9, s11, s8
                  ori          t3, ra, -1657
                  slti         a2, t2, -1401
                  slti         a7, a7, -196
                  sll          tp, t1, tp
                  andi         sp, s6, -1734
                  slt          s8, s7, ra
                  sll          a5, s5, a4
                  addi         a1, s10, 536
                  lui          a3, 470385
                  and          s3, gp, a7
                  or           t2, t6, a2
                  srai         s9, s3, 20
                  auipc        zero, 30310
                  sll          s9, t1, sp
                  slti         t1, zero, 913
                  sltu         a3, a7, s4
                  slt          a2, s6, t6
                  auipc        tp, 1035767
                  or           sp, s8, a2
                  sra          a4, t5, s3
                  andi         a0, s2, 978
                  lui          a2, 29524
                  or           a4, a4, t1
                  nop
                  add          a3, a1, s10
                  nop
                  sra          ra, a5, a0
                  addi         s7, a7, -701
                  sra          s8, tp, a3
                  nop
                  and          s1, s8, s0
                  srl          a1, t1, ra
                  srli         s9, s3, 15
                  srai         a1, sp, 13
                  andi         a1, t2, 1288
                  slt          t1, s1, s4
                  slt          tp, s1, a2
                  sltiu        sp, s0, -1476
                  or           t3, ra, sp
                  sub          t0, a1, s4
                  slti         ra, a0, -632
                  and          t3, s11, zero
                  slti         s3, a6, -1440
                  xor          s11, a0, t4
                  andi         t3, s8, 457
                  ori          s1, t5, -596
                  andi         a5, a0, -1301
                  nop
                  xori         s4, t2, 4
                  slt          s1, t4, a7
                  or           a3, t2, t6
                  sra          tp, tp, t3
                  lui          t1, 838676
                  slli         s11, s8, 17
                  sltiu        s9, zero, 1874
                  sll          gp, s9, t6
                  auipc        s7, 303188
                  srli         s10, gp, 10
                  addi         s10, gp, -708
                  andi         ra, zero, 158
                  slt          a7, a7, ra
                  sltu         a3, t6, s7
                  slti         a4, a6, -355
                  lui          s7, 35668
                  slt          s1, tp, s9
                  nop
                  srl          s1, a7, s1
                  xor          s1, s0, t5
                  xori         a2, t3, 1355
                  or           t4, ra, s8
                  xori         s4, t6, 678
                  or           a2, a4, s3
                  auipc        t3, 332247
                  lui          a5, 688245
                  sub          t3, s5, a4
                  and          s3, tp, a3
                  slli         gp, a2, 26
                  sub          a3, s4, a5
                  sll          ra, a7, s9
                  add          s11, a2, t5
                  slt          ra, t5, s7
                  nop
                  xor          t3, a7, tp
                  nop
                  srl          zero, s3, zero
                  xori         s1, s0, -1278
                  nop
                  sub          s10, zero, s10
                  add          s8, s9, sp
                  sll          s11, a4, a3
                  sltu         zero, s7, t3
                  srai         s10, s2, 22
                  add          t3, gp, a4
                  auipc        t2, 443526
                  slt          t5, s11, a3
                  ori          s10, s0, -25
                  sltu         gp, s8, a3
                  nop
                  or           s7, a7, a1
                  slli         s2, t5, 22
                  srli         a4, s3, 27
                  and          t3, s4, s4
                  add          t5, a3, a7
                  sltu         s5, a5, gp
                  sub          t2, s0, a7
                  add          tp, a7, t0
                  slti         a2, a2, -427
                  ori          s11, s11, -1045
                  sltiu        s3, a4, 339
                  lui          t4, 599888
                  addi         a2, t2, -1981
                  slti         ra, s1, -1529
                  ori          a1, s5, 27
                  srai         s11, s1, 16
                  srli         a5, sp, 15
                  xori         t1, s11, 179
                  sub          s7, gp, a0
                  slti         s1, a7, 430
                  auipc        s10, 263845
                  sltu         s4, s6, s0
                  sub          zero, a1, a1
                  xori         s7, a0, -264
                  and          s1, a0, s7
                  lui          t5, 598344
                  lui          s4, 339102
                  slti         ra, a1, 542
                  xori         gp, a4, 1176
                  srl          s3, s3, t0
                  srli         t2, s5, 8
                  srai         s10, s8, 25
                  slt          a7, sp, s5
                  addi         a1, t1, -845
                  srl          s7, t6, s4
                  andi         ra, a1, 510
                  nop
                  sltiu        s8, s11, -1994
                  sra          t0, s1, t5
                  auipc        s2, 212236
                  ori          s1, t1, -967
                  sra          s4, s9, s10
                  slli         a4, a6, 19
                  or           s9, s10, t5
                  xori         a4, s9, -1215
                  addi         a5, a6, -1825
                  sltiu        s11, s11, 621
                  add          a7, sp, t4
                  slli         t5, a0, 2
                  andi         a7, gp, 1094
                  srli         s11, t0, 27
                  slt          s1, s9, s6
                  nop
                  srli         s8, t6, 19
                  add          s9, a6, tp
                  slli         s9, t4, 31
                  sub          gp, ra, sp
                  slt          s9, t0, s11
                  xor          s0, t3, s6
                  li           a1, 0xe722d547 #start riscv_int_numeric_corner_stream_13
                  li           a4, 0x5e48c3b3
                  li           tp, 0x0
                  li           s3, 0xdf605a5a
                  li           a7, 0x80000000
                  li           s11, 0x0
                  li           s7, 0x80000000
                  li           a5, 0x0
                  li           t2, 0xffffffff
                  li           s0, 0x56d8d5ae
                  nop
                  lui          s0, 689015
                  nop
                  lui          tp, 173433
                  auipc        a4, 594096
                  nop
                  auipc        s7, 986166
                  sub          s11, s0, s7
                  auipc        a1, 583629
                  sub          t2, a5, s11
                  add          s11, t2, s11
                  lui          a4, 440216
                  auipc        s7, 774275
                  auipc        s3, 167469
                  auipc        s3, 386743
                  lui          a1, 197142
                  sub          s0, s11, s7
                  auipc        s0, 213187
                  add          tp, s7, tp #end riscv_int_numeric_corner_stream_13
                  sll          gp, t1, a2
                  xor          a2, a4, s6
                  sltiu        s0, a3, -1939
                  nop
                  andi         s4, s0, 664
                  sub          t2, a2, s4
                  xor          s2, t3, s9
                  srai         s2, a2, 27
                  addi         s8, a6, 449
                  srl          s2, a2, s9
                  or           s3, a4, s4
                  nop
                  sra          a3, t6, s1
                  lui          gp, 248056
                  slt          t4, s1, tp
                  lui          t0, 163067
                  sltiu        t2, s8, 598
                  srai         a7, s2, 31
                  xor          s10, tp, t5
                  sltiu        s9, a0, -1392
                  nop
                  sub          s2, s11, a4
                  ori          gp, a5, -1712
                  andi         s7, ra, 1936
                  slti         s4, t6, -1082
                  addi         s11, s5, -287
                  auipc        a3, 440339
                  lui          a5, 262404
                  auipc        t1, 308289
                  slt          s9, t1, a5
                  slti         a7, a3, 415
                  sub          gp, a5, s8
                  xori         s3, a0, 799
                  xori         gp, a3, -1664
                  add          t4, s11, t1
                  or           s9, a2, a5
                  xor          a2, a5, s9
                  slti         s10, ra, -932
                  sub          s9, s2, t5
                  or           s9, t5, t5
                  sra          s0, t6, s8
                  ori          a3, s11, 1421
                  and          s4, t1, tp
                  addi         s3, a4, 617
                  ori          a2, a5, -34
                  addi         a3, s11, 150
                  lui          s11, 241772
                  srl          s11, t6, sp
                  addi         s1, ra, -1201
                  sub          t1, a7, t5
                  sltu         gp, t1, s2
                  and          t1, s5, s2
                  slli         tp, s1, 13
                  auipc        t5, 499964
                  sub          s1, a6, s0
                  sll          t2, s3, sp
                  or           s1, s6, t5
                  andi         s3, a7, -795
                  sra          t0, s0, s2
                  srli         t0, s4, 22
                  lui          a4, 474266
                  addi         s11, a2, -158
                  srai         s10, a3, 30
                  sltu         t5, t2, t0
                  or           a3, a3, t3
                  srli         s7, s8, 28
                  sltiu        tp, a1, 1768
                  andi         s1, a7, 676
                  nop
                  addi         t0, a2, -442
                  sltu         a5, s5, t1
                  slt          s2, sp, ra
                  or           s10, a6, s0
                  sub          t1, s5, s8
                  sra          s4, t0, t0
                  slti         gp, s7, -88
                  nop
                  ori          s8, zero, 1712
                  srai         a4, s1, 5
                  xor          s8, t2, s1
                  sra          a5, a5, s10
                  and          s7, s1, t4
                  srl          t1, t6, t5
                  xori         a5, t3, -1170
                  sub          t2, s10, a2
                  sltu         s0, s10, a6
                  slti         s3, s0, -1093
                  auipc        tp, 761291
                  and          s8, s5, s10
                  srli         a5, a1, 18
                  sra          s11, a3, s0
                  slli         sp, t0, 21
                  srli         zero, s7, 14
                  nop
                  sub          a4, gp, t6
                  sra          t5, gp, gp
                  nop
                  addi         a3, a6, 736
                  ori          s10, t6, -1585
                  addi         s1, t3, -790
                  xori         a4, t3, -391
                  add          zero, a4, a1
                  sll          a5, t5, a7
                  sltu         tp, a6, s9
                  lui          s11, 151076
                  sra          s8, s6, s2
                  nop
                  srli         a1, t6, 8
                  sra          a2, t3, a3
                  slti         a0, tp, -1551
                  addi         s1, tp, -534
                  xori         a0, s0, 471
                  auipc        s5, 92336
                  slli         s4, s5, 13
                  andi         ra, a3, 203
                  slli         s11, s3, 15
                  ori          s4, s2, -699
                  slli         s4, t1, 11
                  add          s2, a0, t4
                  add          a4, t2, a6
                  srl          t1, s0, t4
                  xor          sp, s8, s2
                  xori         t5, s6, -1838
                  or           s10, t6, zero
                  andi         s2, s0, -1938
                  slti         t0, s11, -1394
                  andi         s11, s9, 1638
                  xori         a1, s10, 363
                  auipc        s2, 219795
                  xor          zero, t5, s5
                  srai         ra, a0, 8
                  srli         s2, gp, 0
                  addi         s4, s0, 151
                  add          a5, s7, s5
                  addi         s3, t5, -108
                  nop
                  sll          s2, t2, s6
                  sll          t5, tp, tp
                  add          s4, s10, t1
                  and          a4, s4, s11
                  lui          s7, 439124
                  sra          s9, a7, s8
                  or           a5, t2, t2
                  or           s7, a5, sp
                  srl          a0, tp, s7
                  addi         s0, t3, 602
                  addi         s10, s8, -325
                  and          a3, s2, a4
                  and          t2, a5, a2
                  ori          t4, s1, -969
                  lui          s11, 143206
                  xor          t1, ra, s3
                  slt          s10, s1, s9
                  sub          a1, zero, s6
                  slli         t1, s10, 5
                  sra          t4, s1, s7
                  slt          s10, s11, a6
                  auipc        s11, 308442
                  xor          ra, t2, s2
                  nop
                  xori         a5, s1, -142
                  auipc        s5, 755666
                  slt          t5, a0, ra
                  sll          tp, s7, a2
                  lui          a2, 338090
                  sra          gp, s7, t6
                  sltu         sp, a3, t0
                  xori         t1, a3, 92
                  nop
                  srl          s8, a3, a6
                  slti         s8, zero, 1161
                  ori          a1, a1, -98
                  or           a4, t5, a3
                  addi         sp, s5, 2004
                  auipc        t2, 707529
                  and          s3, t1, a6
                  nop
                  lui          ra, 112070
                  ori          a3, s2, 870
                  slt          a1, tp, s2
                  slli         a7, s1, 20
                  sub          s5, s2, zero
                  slli         t3, a4, 19
                  auipc        s2, 833259
                  srli         tp, gp, 22
                  or           s10, s11, ra
                  sltu         a0, tp, s9
                  srl          t5, a4, a3
                  lui          a2, 249890
                  srai         t2, s4, 18
                  xori         a5, a1, 1509
                  addi         s2, a7, 850
                  slt          s0, tp, tp
                  sll          tp, a4, s8
                  slli         t4, gp, 20
                  andi         gp, t3, 1631
                  addi         ra, a7, 121
                  sll          gp, s9, s0
                  and          s2, a5, t6
                  ori          s9, ra, 1324
                  sub          s1, a3, a4
                  slt          t2, t1, s2
                  xori         s3, t6, -434
                  slti         a0, a1, 1770
                  add          t5, a3, s6
                  xori         a2, t5, 1096
                  sll          s3, t6, t4
                  xori         a4, t4, -1343
                  lui          s7, 27394
                  sltiu        t5, s9, 1512
                  slli         s2, a5, 27
                  srl          s8, s4, a7
                  sra          t2, a2, s11
                  or           a1, s9, s3
                  slti         s4, s10, 173
                  srl          s11, s11, t4
                  and          s8, s0, s2
                  andi         gp, s1, 1939
                  auipc        t5, 124955
                  srai         t3, t5, 28
                  slli         ra, s11, 5
                  or           ra, s0, t6
                  sltu         sp, s0, zero
                  add          a1, t3, t3
                  sltiu        s5, a1, 1347
                  sltu         t4, s3, s3
                  or           s9, a4, a0
                  sra          a0, s9, t6
                  srai         s9, t1, 12
                  sub          t4, a7, t2
                  slt          s8, t1, t1
                  sll          s2, tp, t3
                  andi         a7, ra, -1820
                  ori          t2, s9, -2013
                  ori          t4, s1, 384
                  sra          s2, s0, a2
                  srl          t4, ra, a1
                  lui          a0, 134094
                  nop
                  sltiu        a3, tp, 1058
                  slt          t4, t2, t0
                  ori          s1, s11, -822
                  srl          t3, s9, t6
                  addi         a0, s10, 496
                  srli         s3, zero, 11
                  sll          t5, t2, sp
                  xor          a5, s3, s1
                  sra          s2, s10, t6
                  sra          s4, a5, s6
                  sltiu        t5, a6, -1553
                  add          t2, ra, sp
                  lui          sp, 792041
                  slt          a1, gp, s0
                  andi         gp, s10, -1285
                  srai         t3, t3, 7
                  lui          s1, 270241
                  sltiu        t5, s11, -267
                  sltu         sp, a4, a3
                  nop
                  sltiu        zero, a0, -906
                  ori          a5, a7, -1787
                  sltiu        s4, a1, 1870
                  srli         ra, t4, 23
                  add          t1, a1, a4
                  and          a4, ra, s5
                  srli         a0, a4, 2
                  sltiu        gp, s7, -564
                  andi         s8, a0, -1027
                  srai         a5, gp, 25
                  sll          t0, s11, t0
                  lui          a7, 814142
                  srl          a4, ra, s9
                  addi         s9, ra, 1769
                  srai         a3, s5, 16
                  sltiu        s5, s11, -1980
                  lui          t5, 398647
                  auipc        t0, 78699
                  ori          t4, s4, 718
                  sra          a0, s8, a1
                  xor          s1, zero, a1
                  or           a1, t6, t3
                  ori          t1, gp, -1295
                  srai         sp, a0, 9
                  and          s10, t0, t2
                  add          t1, a0, t3
                  lui          a1, 421009
                  slt          a3, gp, s0
                  add          a5, zero, s6
                  auipc        a7, 935248
                  auipc        ra, 234279
                  slti         t0, ra, -1659
                  sll          a2, s1, t0
                  auipc        s10, 737226
                  sll          gp, s7, ra
                  srl          a1, s0, zero
                  sub          s8, s3, t4
                  srli         a0, s4, 30
                  andi         zero, s5, -1929
                  ori          s1, t2, 1505
                  srli         t3, a4, 16
                  sltu         a2, s8, a0
                  auipc        t2, 195112
                  andi         t1, t1, -1750
                  sltiu        s4, a1, -964
                  srli         a2, a7, 14
                  xori         a1, t0, -55
                  sltiu        s3, s2, -790
                  sltu         sp, s10, s4
                  srl          ra, sp, ra
                  nop
                  andi         s0, s5, 1463
                  li           s4, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           s8, 0x80000000
                  li           sp, 0x80000000
                  li           t3, 0xffffffff
                  li           a0, 0xffffffff
                  li           a5, 0x5b0562cc
                  li           s3, 0xffffffff
                  li           s2, 0xffffffff
                  li           s1, 0x80000000
                  li           a1, 0x0
                  nop
                  nop
                  nop
                  addi         a5, t3, -1604
                  sub          a0, t3, s1
                  sub          s1, s1, t3
                  auipc        sp, 506254
                  auipc        sp, 778704
                  sub          s1, a1, s3
                  lui          s1, 46694
                  auipc        s3, 936662
                  add          a0, s1, s4
                  lui          a0, 677269
                  add          t3, s4, t3
                  sub          s8, a1, s4
                  lui          s1, 770088
                  auipc        a5, 864075
                  addi         s1, s2, -254 #end riscv_int_numeric_corner_stream_19
                  xor          t5, sp, t6
                  lui          t1, 574060
                  sra          s4, s5, a1
                  sll          a0, t3, tp
                  or           gp, t2, a0
                  sll          zero, s10, a5
                  or           a0, a3, t4
                  lui          zero, 574717
                  nop
                  andi         tp, t3, 893
                  sltu         a4, t3, ra
                  sub          a4, a7, a7
                  srai         ra, t0, 21
                  slt          s2, a5, a1
                  slti         s1, a7, 1306
                  sll          s8, s1, a6
                  lui          s4, 1032817
                  add          tp, a1, a7
                  ori          a1, s1, -581
                  addi         t0, a1, 1157
                  auipc        a7, 854184
                  xor          t0, t2, s11
                  sltiu        s11, s2, 1432
                  or           t3, tp, a7
                  or           a0, s11, zero
                  srai         s1, s8, 0
                  srl          a4, s11, ra
                  slt          a3, s6, gp
                  srli         s11, a7, 0
                  srl          sp, s2, s11
                  nop
                  ori          s9, a5, 247
                  srli         s5, s1, 2
                  srl          tp, s6, s11
                  sra          s7, sp, t3
                  srl          a7, s0, s8
                  sra          t3, t5, s3
                  ori          s2, ra, -1422
                  sltu         s5, a1, s0
                  or           s0, a0, s9
                  xor          tp, a6, s4
                  sltiu        t5, ra, 430
                  slli         s5, s6, 10
                  lui          a5, 343152
                  srli         s5, s6, 16
                  andi         a0, a6, -1360
                  srli         t5, s11, 24
                  srli         a2, s7, 25
                  srai         a0, ra, 9
                  and          a1, gp, a7
                  ori          sp, s4, 1575
                  slti         a0, t1, -16
                  auipc        a0, 898872
                  slt          a7, s10, a5
                  nop
                  and          s11, s9, a7
                  sra          s3, s9, s6
                  add          t1, t5, s3
                  sub          s8, s9, s1
                  auipc        s7, 813172
                  srl          t2, s0, ra
                  slli         s1, zero, 15
                  sub          a7, t2, s5
                  auipc        s0, 826234
                  sll          a5, s0, s7
                  auipc        s5, 581216
                  sll          s0, a0, a4
                  xor          t4, a6, s7
                  slli         a2, s7, 30
                  and          s10, a5, s6
                  slli         t1, a0, 21
                  sltu         a7, s1, sp
                  auipc        t2, 552622
                  nop
                  sltu         gp, s9, s4
                  srai         t0, t6, 12
                  sub          s3, t6, t0
                  slt          gp, a0, t5
                  addi         zero, s0, 2000
                  auipc        s3, 274777
                  sltu         s11, a1, tp
                  slti         t0, a1, -187
                  sll          tp, sp, a0
                  add          s0, t3, s0
                  xori         s11, s6, -1374
                  xori         a0, a2, -278
                  srli         a2, a1, 23
                  sll          s11, ra, s3
                  sltu         ra, s0, s1
                  sll          s2, tp, s2
                  xor          t3, s6, gp
                  add          t5, s1, ra
                  add          s11, ra, sp
                  auipc        t0, 539150
                  slli         s4, t2, 27
                  slt          a3, s3, s2
                  or           s1, tp, sp
                  andi         a2, tp, 388
                  xor          gp, t5, zero
                  ori          a0, a7, -1289
                  xor          a4, a3, a0
                  srl          t5, s5, s4
                  srli         s5, s9, 31
                  srl          s4, s7, a7
                  sra          s7, ra, a2
                  nop
                  sltu         t3, s5, s6
                  xori         s0, s11, -443
                  lui          s3, 94882
                  srli         t2, s5, 14
                  addi         s5, t3, -1751
                  sra          t4, a3, a7
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_10
                  li           a4, 0x80000000
                  li           s3, 0x80000000
                  li           sp, 0xb2a29f62
                  li           s0, 0xffffffff
                  li           s5, 0x1eb12b11
                  li           s4, 0x0
                  li           s10, 0x2f0df183
                  li           t1, 0x80000000
                  li           a0, 0xffffffff
                  sub          s4, t1, s10
                  addi         s4, s3, 518
                  lui          sp, 926662
                  addi         s4, s0, -468
                  lui          t1, 172255
                  addi         t1, t1, 715
                  addi         ra, ra, 1989
                  add          s3, a0, a0
                  add          s4, s10, ra
                  add          s3, sp, sp
                  addi         s10, a0, 143
                  lui          s5, 865543
                  auipc        sp, 987517
                  addi         sp, s5, 896
                  add          a4, s0, s10
                  sub          s3, s0, s3
                  sub          s10, a4, a4
                  addi         s4, s4, 1356
                  sub          s10, s10, t1
                  lui          s10, 972242
                  nop
                  sub          ra, s0, sp
                  lui          s10, 444701
                  auipc        a4, 145946
                  auipc        s4, 894269 #end riscv_int_numeric_corner_stream_10
                  srl          gp, s4, s5
                  sltiu        gp, t5, 326
                  xor          sp, sp, s8
                  addi         t3, t3, 1520
                  srl          t3, s11, tp
                  sll          a5, s10, tp
                  lui          t3, 70636
                  slt          a2, s1, t6
                  sub          s4, s4, s11
                  sra          t2, t6, a0
                  slt          s10, a5, a0
                  xori         s5, s5, -1498
                  sltu         a1, t5, s9
                  slt          t4, s5, a0
                  sltu         a2, a7, ra
                  nop
                  or           a4, t5, s3
                  and          s4, zero, s11
                  sub          t0, gp, a1
                  sra          t0, t5, t5
                  slt          s7, a7, a3
                  sub          a1, t0, t0
                  xori         a5, a5, -1775
                  addi         s0, s0, 1491
                  and          s5, s11, s7
                  sra          a7, sp, s4
                  slli         t3, a5, 28
                  sra          s9, t2, a0
                  lui          a4, 206652
                  slli         s4, sp, 18
                  ori          t4, zero, 1696
                  or           a2, sp, s8
                  srli         s2, s1, 16
                  addi         a4, a1, -1521
                  xori         a3, s10, -1538
                  sub          sp, s7, a3
                  lui          a1, 532845
                  slt          sp, s9, s7
                  addi         s4, gp, 2030
                  xori         t3, s4, -1256
                  sll          zero, s11, s1
                  sltu         s9, a4, t0
                  sub          a2, a2, ra
                  slli         t1, s2, 0
                  sub          t5, zero, s3
                  slt          gp, s4, t6
                  sra          s10, s1, gp
                  sll          t3, gp, t5
                  slli         s10, t5, 7
                  xori         t0, s11, 1151
                  sll          s2, s10, s9
                  and          s10, s10, t6
                  sll          tp, s1, a1
                  sltu         tp, a5, t3
                  and          a3, a7, s11
                  andi         t0, a5, -1445
                  ori          t1, s8, 1711
                  auipc        s0, 603191
                  andi         s10, s4, -67
                  lui          s9, 1018828
                  sltu         s8, t4, s2
                  xor          s3, zero, a4
                  xori         s0, s7, 369
                  sll          s4, t0, a5
                  ori          a5, t2, -1235
                  ori          t3, s2, 887
                  ori          s5, s10, 609
                  ori          tp, a5, -1300
                  sub          s0, t4, t6
                  srl          a1, a7, t2
                  addi         s3, gp, -1057
                  and          tp, t5, t6
                  slti         t4, t2, 803
                  srl          a4, a1, t6
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           sp, 0xffffffff
                  li           a7, 0x80000000
                  li           s7, 0x9a455c17
                  li           t0, 0x80000000
                  li           t4, 0xffffffff
                  li           s11, 0xffffffff
                  li           s9, 0xffffffff
                  li           a4, 0x80000000
                  li           t3, 0x0
                  addi         s11, a4, 1488
                  addi         t0, t3, -992
                  sub          a4, a4, s7
                  auipc        t4, 547966
                  auipc        t4, 742543
                  auipc        a7, 753068
                  lui          a7, 631886
                  nop
                  sub          a4, s8, a4
                  sub          s11, t0, s7
                  auipc        a4, 249407
                  auipc        t0, 937378
                  lui          t4, 630789
                  sub          s7, t4, a7
                  sub          t0, s8, t4
                  add          a7, t3, s9
                  sub          t0, s7, sp #end riscv_int_numeric_corner_stream_11
                  lui          s11, 111510
                  slti         s10, t6, -1705
                  auipc        s3, 52213
                  slt          ra, a0, s6
                  srai         t1, s8, 30
                  sltiu        t1, s0, 1715
                  srli         t1, s0, 0
                  auipc        sp, 709526
                  sll          s4, t0, t1
                  slt          t3, a2, t4
                  ori          t3, a3, 1241
                  auipc        s9, 869671
                  lui          a1, 486918
                  or           a0, t2, s3
                  add          s5, t1, s1
                  xori         sp, t3, -314
                  slti         s11, s5, 1729
                  slti         zero, a5, -1123
                  sltu         s9, t4, s9
                  srai         a4, s10, 16
                  auipc        a4, 1005664
                  srli         a0, ra, 20
                  addi         s3, s7, 1595
                  xori         a2, zero, -213
                  srl          s8, tp, t6
                  srl          a3, a4, a7
                  addi         t5, gp, 585
                  and          t0, a3, s10
                  sub          zero, a1, s2
                  srai         sp, s11, 2
                  srli         t4, s9, 31
                  and          a0, a6, ra
                  srai         a3, sp, 13
                  andi         a2, s2, -42
                  slti         t0, a7, -514
                  xor          t1, sp, sp
                  slli         ra, t2, 30
                  xori         t0, s2, -1663
                  lui          t2, 108964
                  addi         ra, zero, 1752
                  addi         t3, t4, -1181
                  srai         s11, a4, 9
                  slli         t0, s10, 30
                  srl          t3, a2, s0
                  xor          a5, t6, a4
                  slli         s8, zero, 20
                  sltu         t0, s8, gp
                  auipc        t0, 804220
                  slti         a1, zero, -483
                  slti         a3, a3, 629
                  and          tp, s1, t6
                  andi         a2, s6, -1855
                  nop
                  sub          sp, ra, t4
                  andi         a0, zero, -178
                  srl          s8, s1, a0
                  srli         s8, s6, 28
                  auipc        zero, 15818
                  nop
                  srai         s10, s3, 7
                  sltu         t3, a0, a5
                  or           a2, s3, s1
                  addi         t5, s9, -253
                  srai         zero, t6, 26
                  slli         gp, s8, 13
                  xori         s11, s11, -1077
                  addi         a7, a3, -1436
                  add          ra, ra, a1
                  ori          t4, a6, 223
                  addi         a0, a5, -403
                  sltiu        a5, tp, 124
                  sub          s5, a0, tp
                  srl          zero, a0, t6
                  xor          s8, sp, t1
                  srl          a7, a3, s9
                  srai         s9, s7, 4
                  auipc        s8, 749153
                  auipc        t3, 871450
                  lui          s2, 309983
                  sltiu        zero, a3, 603
                  xori         s10, s10, -1636
                  slti         tp, ra, 406
                  ori          s0, ra, -1754
                  andi         a5, s11, 1052
                  lui          t1, 349993
                  xor          s4, sp, zero
                  srai         t0, a0, 28
                  auipc        s2, 14894
                  srli         s7, a2, 1
                  srl          s9, a0, s1
                  xor          a0, a2, t3
                  sll          a1, s7, t3
                  add          t2, t4, a4
                  slli         s1, s2, 16
                  or           a7, s8, s9
                  slt          t2, s9, t2
                  xori         s4, s1, -734
                  andi         s5, gp, -904
                  add          zero, a6, s8
                  sra          s11, s10, s10
                  or           gp, zero, s5
                  sll          a1, t5, t6
                  nop
                  and          s0, s4, a6
                  auipc        a1, 877678
                  ori          a7, a4, -648
                  sub          a7, s1, s4
                  sub          ra, a7, a4
                  xor          s7, s0, s9
                  srl          s1, zero, a0
                  sltiu        s3, t0, 1163
                  xor          gp, t4, t2
                  auipc        a1, 965911
                  xori         a0, s11, 1977
                  sub          t0, a6, zero
                  nop
                  slti         a0, sp, -309
                  slli         t1, zero, 20
                  sra          a2, s0, a4
                  sltu         a0, s9, s8
                  add          ra, s2, s10
                  slli         s9, s8, 30
                  sltu         s2, s0, a7
                  srai         gp, ra, 2
                  sltu         ra, s9, zero
                  xor          t2, t6, t3
                  srli         s5, a7, 18
                  xori         a3, a4, 1186
                  sltiu        t0, zero, -1366
                  nop
                  nop
                  sub          s0, a4, s7
                  nop
                  slt          tp, s8, a7
                  srli         s5, tp, 15
                  addi         s8, t3, -1593
                  ori          a4, t1, -1399
                  sltu         s11, t3, s4
                  srl          a2, t6, tp
                  sll          s0, s9, t6
                  sub          s2, s8, ra
                  slli         s8, t1, 31
                  xor          s1, t2, t4
                  xori         a2, s0, -1916
                  and          t5, s0, t2
                  srl          t5, s2, zero
                  andi         gp, t0, -697
                  lui          a3, 1039024
                  and          s8, t0, s7
                  sltiu        s9, gp, 2027
                  sltu         ra, s10, s10
                  xori         s5, a7, 1245
                  sra          ra, s8, tp
                  ori          s3, s4, -390
                  srli         s8, t3, 10
                  srli         t5, s11, 1
                  slt          s7, gp, t0
                  ori          t5, s8, 1979
                  sltu         t0, s6, ra
                  add          ra, s11, gp
                  sltiu        s3, a0, -1140
                  srl          a4, t3, t3
                  add          s7, s7, t4
                  sltu         a5, t2, a3
                  sra          a2, tp, s0
                  andi         s2, t6, 1701
                  srai         s7, t5, 18
                  lui          s9, 781987
                  nop
                  add          s2, zero, s5
                  sll          sp, t3, t1
                  add          t5, s8, a6
                  slt          tp, gp, s10
                  andi         a2, t2, -1890
                  nop
                  srl          sp, a3, t0
                  addi         a1, s11, 261
                  srl          t1, t0, s2
                  srl          ra, t1, s2
                  srli         a4, s4, 8
                  ori          a0, s6, 859
                  or           s8, a0, t2
                  srai         a3, sp, 13
                  lui          a3, 271486
                  and          s10, a7, a0
                  srl          s5, s8, a3
                  xori         s10, s5, -1609
                  addi         tp, a6, -827
                  auipc        s8, 812781
                  xor          gp, zero, t5
                  srli         s3, zero, 18
                  sra          a1, s0, t1
                  addi         a3, s10, 1141
                  sltiu        s4, t6, 1020
                  sltiu        t3, t5, -939
                  srai         zero, a0, 10
                  slti         s2, s10, -130
                  andi         t5, a0, 699
                  and          t3, s3, t5
                  addi         s0, gp, -2024
                  slli         a2, a3, 0
                  addi         a5, s8, -1657
                  srli         t1, t6, 15
                  srai         s4, s4, 28
                  lui          a0, 511093
                  sra          zero, s5, ra
                  andi         s9, s3, 1994
                  auipc        tp, 279769
                  and          s1, t1, sp
                  slli         t0, s5, 12
                  sltu         s9, t2, t0
                  srai         a0, s1, 3
                  sra          s2, a1, s9
                  srl          zero, sp, s4
                  srl          a1, zero, tp
                  xori         s2, s2, 629
                  sub          t5, t1, t3
                  sub          t1, t2, s8
                  sll          s10, a0, a2
                  srli         a1, s9, 31
                  ori          s9, a0, -1536
                  ori          t5, s5, 1607
                  auipc        s4, 595670
                  and          s3, s4, t2
                  xori         a5, a4, 1864
                  nop
                  lui          s1, 919780
                  slli         t0, s5, 13
                  srl          s7, s3, s0
                  or           s3, a2, a5
                  and          t3, s0, s2
                  slti         s5, s7, -184
                  sra          t5, gp, t2
                  slt          t5, a7, t1
                  andi         t5, a7, 44
                  li           t4, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           a3, 0x80000000
                  li           t5, 0x80000000
                  li           s10, 0xffffffff
                  li           t1, 0x9a7f7e52
                  li           s7, 0xdc787d86
                  li           s1, 0x0
                  li           s5, 0x0
                  li           s8, 0xcd16b628
                  li           a4, 0x0
                  addi         s7, t4, -1496
                  lui          t4, 431921
                  sub          t5, a4, s5
                  addi         s7, s1, -1378
                  sub          s7, t5, s7
                  add          s8, s7, t1
                  nop
                  addi         a4, a4, -59
                  sub          a4, t5, s7
                  lui          t5, 499631
                  sub          s10, a3, a3
                  lui          s5, 973338
                  lui          t4, 46124
                  sub          s7, a4, a3
                  add          s1, t4, t4
                  lui          s8, 824780
                  nop
                  nop
                  add          a3, s1, a4
                  addi         s1, s5, 323
                  add          s7, s8, a4
                  sub          s5, s1, s7
                  nop #end riscv_int_numeric_corner_stream_0
                  srai         a3, t5, 8
                  add          s3, t0, s1
                  addi         t4, a2, -498
                  addi         ra, t5, 818
                  slli         s2, ra, 18
                  srli         s1, t4, 7
                  addi         a7, s1, 825
                  ori          s8, tp, -1802
                  addi         s9, a5, 140
                  or           s1, sp, gp
                  sub          s4, tp, s10
                  sltu         a2, s6, s0
                  add          tp, t0, ra
                  addi         t4, t0, 213
                  or           s4, t4, s10
                  ori          s5, s9, -534
                  slt          t2, a4, s10
                  srli         s9, s2, 5
                  addi         s5, s7, 703
                  slli         s9, s0, 20
                  addi         t4, sp, -1789
                  slli         s7, s6, 14
                  sltu         tp, t4, t3
                  slti         sp, s4, 662
                  auipc        a7, 779471
                  sltu         s10, a3, a4
                  sub          a3, t1, s5
                  lui          s4, 478876
                  sra          s3, a5, t5
                  sltiu        s4, s4, -904
                  srai         sp, s6, 18
                  or           s2, tp, t5
                  srai         ra, sp, 11
                  addi         s2, s4, -1660
                  sub          t4, s11, s10
                  auipc        gp, 107905
                  srai         s3, ra, 13
                  auipc        s3, 876034
                  sub          s7, a2, s0
                  xor          a2, sp, zero
                  sltiu        t5, a0, 717
                  xori         t2, a2, -735
                  xori         s0, s0, 1164
                  xori         s4, t1, -457
                  sub          a2, tp, s9
                  sub          s2, gp, s7
                  auipc        s2, 379551
                  slti         sp, a4, 926
                  xor          s3, a2, zero
                  slt          s7, a5, s8
                  srai         s3, a3, 23
                  addi         a4, s2, -587
                  sltu         t2, s2, s1
                  slti         s11, a0, 1024
                  sll          gp, s2, s4
                  xori         t3, ra, 1418
                  and          t3, t0, a5
                  auipc        t2, 778727
                  auipc        t4, 260451
                  slt          t2, a2, a7
                  sll          a1, a6, t1
                  or           t0, a6, t0
                  xori         a3, a1, 1837
                  sub          a7, t3, t5
                  srai         a3, s0, 4
                  auipc        s8, 20214
                  ori          s7, t2, -1762
                  auipc        t4, 841411
                  xor          a2, a5, s5
                  slti         t0, t1, -1664
                  slli         s4, s8, 28
                  lui          a4, 131678
                  ori          s1, a6, 899
                  sltu         gp, a0, s2
                  add          s2, s0, zero
                  sltu         s3, a1, zero
                  sltu         a3, a2, t0
                  lui          s8, 820669
                  lui          s3, 1025912
                  xori         tp, s4, -1433
                  andi         s1, ra, -138
                  srl          sp, t2, a5
                  xor          s2, s11, s4
                  slli         a0, s5, 15
                  srli         a1, s1, 29
                  sltiu        a3, t6, 1175
                  slli         s1, s0, 28
                  slt          tp, t3, t1
                  slti         ra, gp, -999
                  slli         t4, s0, 18
                  lui          a3, 70830
                  sub          a3, t4, s5
                  sub          t1, sp, t6
                  slti         gp, a1, 329
                  srli         ra, a6, 18
                  sll          gp, s1, s11
                  add          ra, s6, s0
                  addi         a2, s8, 168
                  slli         s3, zero, 13
                  or           t2, tp, s4
                  srl          s4, t5, a2
                  auipc        s8, 419737
                  nop
                  ori          s4, a6, -635
                  sltu         s8, s5, t4
                  slli         t3, a2, 25
                  addi         s0, t1, 1074
                  lui          s1, 439431
                  or           s7, s10, a4
                  xori         s4, a3, 1209
                  xor          gp, tp, t3
                  sub          s0, sp, t5
                  slt          a2, s7, s8
                  auipc        a5, 61199
                  slti         a1, t1, 1034
                  xor          a2, t4, t1
                  auipc        s0, 773426
                  sltu         t1, a3, s11
                  sll          s4, tp, s3
                  add          s11, s3, ra
                  and          s4, gp, s1
                  nop
                  srl          s5, s6, s8
                  auipc        sp, 928061
                  auipc        s10, 126031
                  xor          a0, a6, s2
                  and          a4, s0, t1
                  xor          s10, a1, t3
                  andi         t1, a3, 1728
                  sltu         t0, t0, sp
                  sub          s1, s2, a1
                  and          a7, tp, gp
                  slti         s11, s0, -64
                  sll          s11, t6, s3
                  xor          t3, t2, a7
                  sra          t4, tp, zero
                  or           a0, s7, a1
                  addi         gp, t2, 1800
                  srai         t4, s2, 1
                  sltiu        s0, a7, -547
                  sub          s1, t6, s4
                  slt          s1, ra, s7
                  andi         s0, s11, -817
                  xor          s2, a6, t3
                  slti         s0, t3, 147
                  xor          gp, zero, s10
                  nop
                  xori         s5, gp, 770
                  srl          s2, s10, a0
                  or           t2, ra, ra
                  and          s10, a0, a5
                  slti         a1, s2, -2011
                  andi         s7, s0, 132
                  add          ra, a5, a4
                  slli         tp, s11, 8
                  sub          s3, s9, s3
                  andi         a2, t6, -559
                  nop
                  xori         a2, s10, 1362
                  srl          t0, a1, t6
                  auipc        a1, 1031364
                  slti         zero, t3, 487
                  xor          zero, s6, s5
                  srli         s0, t0, 15
                  or           s1, s8, a7
                  xor          s8, gp, s11
                  ori          s3, a6, -220
                  ori          s10, s1, -1748
                  auipc        s0, 682342
                  sub          a0, s10, t6
                  slt          zero, s10, t4
                  srai         s9, t2, 9
                  sltu         tp, s2, s7
                  addi         s5, a2, -1571
                  lui          a5, 423886
                  nop
                  and          t5, s11, t1
                  xor          s10, s5, s5
                  andi         a5, t3, -235
                  and          a2, zero, a4
                  srai         s11, s5, 27
                  sltu         t5, t4, t5
                  sll          s7, a5, tp
                  xor          a1, s8, t5
                  lui          zero, 46565
                  sltiu        s0, t6, 2019
                  and          zero, zero, s9
                  sltiu        s1, a3, -1349
                  nop
                  sll          t1, s6, s7
                  nop
                  srli         t3, t6, 6
                  slt          s10, t6, a2
                  xori         s2, s6, -991
                  srai         sp, s4, 1
                  ori          a3, a1, -1212
                  srli         t4, a4, 31
                  sltiu        sp, s11, -820
                  slti         s4, t3, 944
                  auipc        zero, 714590
                  slt          ra, t1, s5
                  lui          gp, 544347
                  sltu         a5, a1, a7
                  andi         s0, s0, -1403
                  ori          s0, s0, 1753
                  slt          s10, tp, gp
                  slti         t0, a3, -1932
                  sub          a2, s11, t0
                  andi         s2, s6, -1132
                  xori         ra, s1, 1695
                  slti         a3, a5, -35
                  sltu         t2, a4, ra
                  slt          gp, a0, s10
                  xori         t0, a1, 900
                  xori         t4, zero, -650
                  or           a0, sp, a0
                  sll          a3, a4, a4
                  addi         s10, s9, -1814
                  andi         a5, zero, 1568
                  slt          t1, t4, s4
                  sll          a2, a7, s8
                  slt          s2, s6, gp
                  sltu         s9, s1, s9
                  xori         s9, a6, -1158
                  andi         sp, t2, -1063
                  xor          t1, t6, a3
                  slt          a4, a2, t4
                  sub          gp, a5, s11
                  auipc        s0, 110547
                  srli         tp, tp, 16
                  xori         s7, gp, -431
                  sra          s3, s5, sp
                  andi         a7, s11, -1986
                  lui          s5, 696202
                  and          a2, t5, s0
                  xor          t4, t6, s7
                  ori          tp, a1, -2032
                  andi         s2, tp, 774
                  li           a2, 0x3ad16acf #start riscv_int_numeric_corner_stream_6
                  li           s4, 0x80000000
                  li           s7, 0x80000000
                  li           a7, 0xa28734a3
                  li           ra, 0xffffffff
                  li           a4, 0x0
                  li           s5, 0x0
                  li           gp, 0x1c1ea190
                  li           t0, 0x60e3809e
                  li           a5, 0xffffffff
                  nop
                  nop
                  add          s5, ra, ra
                  add          a4, s7, a2
                  addi         s7, a2, 688
                  add          s7, s5, a7
                  nop
                  addi         a7, ra, 280
                  addi         ra, gp, 745
                  addi         a2, gp, 688
                  nop
                  auipc        s7, 460479
                  lui          s4, 9839
                  add          a2, a4, ra
                  addi         s7, ra, -985
                  addi         s7, t0, -388
                  auipc        gp, 543538
                  addi         ra, a4, 1649
                  addi         t0, s5, -104
                  nop
                  lui          t0, 107224 #end riscv_int_numeric_corner_stream_6
                  xori         a2, s0, -1656
                  nop
                  xor          t4, t1, t0
                  sra          a0, a5, s5
                  sra          t2, gp, t2
                  srl          s1, s9, sp
                  auipc        a5, 284270
                  srl          s10, t3, tp
                  slti         s4, t1, -273
                  sll          zero, a4, s0
                  nop
                  lui          t2, 790444
                  auipc        a4, 150124
                  xori         s7, s2, 852
                  and          s7, a6, s3
                  sltiu        a1, tp, -343
                  sltiu        t2, s1, 1752
                  nop
                  slt          a3, t3, s10
                  ori          t2, a4, 1142
                  srai         a1, a5, 9
                  srai         s0, a2, 20
                  srai         a4, s0, 17
                  lui          a1, 1007815
                  addi         s5, gp, -1260
                  srli         s2, s4, 15
                  or           s8, sp, s1
                  sltiu        a3, t1, 513
                  and          s3, ra, tp
                  xor          s7, s8, t0
                  lui          s5, 703727
                  and          gp, a7, a3
                  srai         gp, a3, 9
                  xori         s2, t3, 362
                  slli         t1, a1, 0
                  ori          t0, s5, 2030
                  or           a7, a0, a2
                  auipc        t1, 899235
                  li           t3, 0xfd08b7c9 #start riscv_int_numeric_corner_stream_2
                  li           s1, 0x80000000
                  li           t4, 0xffffffff
                  li           a1, 0x0
                  li           s2, 0x8a5cf870
                  li           s3, 0x0
                  li           s5, 0xffffffff
                  li           tp, 0x0
                  li           a3, 0xffffffff
                  li           a2, 0xbc02ed81
                  nop
                  auipc        s5, 933470
                  addi         a1, tp, -114
                  addi         t4, s3, 783
                  nop
                  auipc        a2, 1027455
                  add          s5, s2, a1
                  sub          s3, s1, s2
                  lui          s3, 461437
                  lui          s1, 51926
                  nop
                  addi         tp, tp, 712
                  add          t3, s1, a3
                  add          a1, t4, t3
                  auipc        a3, 151035
                  sub          t4, a3, t3
                  sub          a2, s1, t3
                  lui          s5, 559928
                  sub          tp, a2, s2
                  nop
                  nop
                  addi         tp, t3, 1369
                  sub          s5, a2, t4
                  addi         a1, s2, 1842 #end riscv_int_numeric_corner_stream_2
                  or           s0, s11, a2
                  slt          a3, ra, s0
                  srai         s9, t2, 14
                  xor          s2, s11, s9
                  ori          s0, s4, -125
                  or           t1, t0, t1
                  sra          a4, s8, s4
                  xori         a4, a6, 1270
                  and          s0, s7, a1
                  slli         s1, ra, 10
                  sltiu        s11, s11, -1249
                  andi         a4, sp, 63
                  addi         a5, s9, -804
                  xori         s5, s1, -1314
                  slti         s3, a3, -603
                  srl          sp, s10, t1
                  xor          a1, s7, sp
                  srl          a4, s2, a7
                  srai         t0, a3, 19
                  slt          zero, t1, s3
                  or           s7, t3, t3
                  addi         ra, t1, -526
                  sll          s10, t0, s8
                  srli         tp, gp, 25
                  sll          s9, t2, s0
                  sub          zero, s10, tp
                  add          s10, a6, s6
                  lui          s5, 369602
                  auipc        a0, 484290
                  nop
                  or           s11, t0, gp
                  lui          t4, 505872
                  lui          zero, 564955
                  xor          t0, a1, t6
                  slli         s1, a3, 3
                  sll          ra, s3, sp
                  lui          t4, 546351
                  sub          gp, a0, a5
                  xori         s11, s6, -171
                  andi         s3, t0, -1257
                  srl          t4, t2, s2
                  auipc        s3, 923973
                  andi         s3, t5, -2023
                  ori          s9, t0, 394
                  add          tp, a5, s8
                  srli         s8, t5, 23
                  sltu         s2, a1, s11
                  slti         a5, t4, 1453
                  sltiu        t2, s1, 562
                  addi         s2, a2, -1226
                  xori         a1, s1, 280
                  sltu         s4, s8, s9
                  or           a1, s0, s2
                  sll          ra, s4, a0
                  or           s10, t5, a4
                  sra          t0, s8, s6
                  srli         a0, ra, 26
                  slt          zero, t2, s3
                  sub          s4, s11, gp
                  li           s0, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           t2, 0x444524a3
                  li           a1, 0x80000000
                  li           s9, 0x80000000
                  li           s7, 0x80000000
                  li           s2, 0x80000000
                  li           s3, 0xffffffff
                  li           gp, 0x80000000
                  li           ra, 0x2186696f
                  li           t5, 0x0
                  nop
                  add          s0, ra, s7
                  lui          s9, 464396
                  addi         t2, s7, -1618
                  sub          t5, t2, t5
                  addi         s9, s2, 45
                  auipc        s3, 37759
                  auipc        a1, 290026
                  sub          t5, s0, gp
                  addi         ra, s3, 370
                  auipc        s0, 840189
                  sub          s3, s0, a1
                  add          s9, t2, t2
                  add          t5, a1, gp
                  sub          s2, s0, s2
                  addi         t2, s0, 983
                  lui          t5, 608597
                  auipc        s7, 179298
                  sub          gp, s7, s9
                  add          s2, ra, s3
                  sub          t5, s2, t2
                  lui          t5, 426537
                  add          a1, s3, ra
                  auipc        t5, 371343 #end riscv_int_numeric_corner_stream_3
                  auipc        t4, 900803
                  sll          s8, s6, s10
                  lui          s8, 139122
                  srai         s4, s7, 31
                  srl          s10, s5, s1
                  or           s10, s3, gp
                  nop
                  srai         s7, a0, 3
                  slti         s3, zero, -365
                  srl          a1, a5, s9
                  or           t2, s2, s2
                  andi         s3, t4, -447
                  or           t5, s9, t5
                  srl          a1, t3, ra
                  addi         s9, s1, -533
                  auipc        t3, 399384
                  auipc        gp, 150926
                  srli         a1, s3, 30
                  lui          s2, 357422
                  ori          tp, s10, -246
                  srai         a5, s10, 26
                  srl          s0, t1, a6
                  lui          a5, 977006
                  srli         zero, s0, 26
                  srl          a0, s8, s7
                  sltiu        s7, a1, -996
                  addi         tp, s1, 1182
                  ori          a1, a7, -193
                  slti         s0, a4, 323
                  sra          zero, t1, s11
                  sltiu        s3, a6, 183
                  sltu         s0, t5, t0
                  sub          s5, a2, s1
                  sltiu        gp, s11, 1184
                  xor          t5, t0, a1
                  sra          ra, a3, a3
                  slli         a0, gp, 11
                  add          s9, a5, t3
                  sub          sp, t3, s1
                  srl          s8, s10, zero
                  sra          a3, t5, t1
                  sltiu        s2, s3, 311
                  slti         t1, t1, 1571
                  slti         a2, s7, -1795
                  slt          s9, a2, t5
                  slli         s10, tp, 10
                  add          s8, a5, s2
                  xor          ra, gp, s10
                  lui          t1, 692952
                  and          zero, a1, s1
                  sll          a1, s4, sp
                  sll          t1, a6, s10
                  srai         t5, t1, 12
                  andi         s2, a0, -816
                  slli         t2, zero, 4
                  sra          t4, t0, a0
                  srai         a0, s5, 1
                  srl          a5, s2, gp
                  srli         s8, a0, 11
                  sltiu        s9, a0, -1585
                  ori          a1, t1, 1650
                  xor          a2, s5, t0
                  srl          s2, s10, sp
                  add          s9, s0, s3
                  add          t1, s0, sp
                  addi         s5, a6, 1807
                  sltu         a2, t3, s8
                  and          tp, s2, zero
                  sub          t0, s0, a0
                  xor          sp, s10, t6
                  auipc        a3, 872667
                  slli         a0, a1, 31
                  srai         s9, t3, 11
                  slti         t4, a5, 1689
                  slti         s5, t0, 475
                  srai         s5, s8, 2
                  sra          s2, s7, t5
                  add          a4, sp, t3
                  slli         a3, ra, 14
                  sltiu        s5, s1, -1745
                  srl          a7, ra, a2
                  xori         t5, ra, 1667
                  xor          s4, s2, a5
                  slt          zero, s7, a4
                  srai         t4, zero, 15
                  srai         zero, a2, 12
                  sra          a7, zero, t5
                  sltu         s8, gp, s4
                  lui          t3, 1038637
                  lui          t2, 474404
                  sltiu        t1, ra, -1771
                  sltu         t3, sp, a0
                  andi         gp, ra, 1773
                  add          zero, s9, s5
                  sltiu        a5, s9, -1523
                  auipc        t5, 584193
                  lui          t1, 175692
                  or           a3, s0, t3
                  sub          s4, s0, a2
                  sltiu        t3, tp, -618
                  xor          a5, a3, tp
                  srli         a7, s10, 23
                  sltiu        a5, a5, -104
                  and          a0, t6, s2
                  ori          s2, ra, 1087
                  sltu         s8, tp, t3
                  auipc        tp, 629624
                  sltu         t5, a2, t1
                  ori          a4, a3, -312
                  and          a7, a3, t5
                  xori         s7, t0, -505
                  sra          s5, a4, t0
                  nop
                  ori          t2, t5, 1176
                  srai         s4, zero, 22
                  nop
                  xor          t2, t0, gp
                  addi         s3, s9, 930
                  lui          s0, 454714
                  and          s5, t1, a5
                  slt          t2, t0, s8
                  sra          t3, a1, t1
                  andi         tp, s2, 1371
                  slli         a4, a7, 4
                  and          s1, t4, a7
                  addi         a2, ra, 13
                  addi         t1, s9, 469
                  xori         sp, t0, 175
                  and          a4, t1, t0
                  srai         t0, a2, 27
                  xori         a7, t4, 1120
                  slli         t5, s9, 20
                  sltu         a1, s7, tp
                  slt          t1, s4, a0
                  srli         a1, a7, 28
                  or           a4, s9, t0
                  sltu         gp, a1, a6
                  xori         s4, t2, -160
                  sub          s4, s4, a4
                  srl          gp, s11, t2
                  nop
                  ori          s7, t6, 288
                  auipc        s8, 520889
                  nop
                  and          s1, a1, gp
                  lui          s1, 855562
                  auipc        s8, 579734
                  slt          t2, ra, zero
                  and          ra, s9, zero
                  slti         sp, a1, -951
                  srl          a2, a1, zero
                  andi         a1, a0, 1994
                  addi         zero, t1, 1510
                  sltu         gp, sp, a3
                  or           t3, a5, t0
                  auipc        a1, 145950
                  sltu         tp, s5, a5
                  srl          s11, ra, t1
                  ori          a0, tp, 1223
                  nop
                  sub          s5, a5, t0
                  xori         s10, s6, -2031
                  addi         ra, s5, 1221
                  srai         s7, a7, 10
                  add          a4, t1, s3
                  ori          t2, s6, -1036
                  or           s4, t5, s11
                  andi         t3, s4, 1788
                  sra          a4, a7, gp
                  xor          sp, s1, t1
                  xor          s5, t3, a5
                  sra          a4, a2, t2
                  and          t5, t4, t5
                  addi         t1, a1, -973
                  auipc        tp, 306404
                  srai         s8, s3, 8
                  auipc        t0, 96565
                  sra          s7, sp, a0
                  or           zero, t6, t2
                  slti         s9, a1, -632
                  xor          a7, s7, s7
                  add          s10, s11, a5
                  slt          s10, s0, a6
                  sub          s11, t1, s6
                  srai         s3, zero, 30
                  srl          t3, a0, s11
                  sll          tp, t0, t0
                  or           s7, a7, a4
                  lui          a1, 262482
                  and          s1, s1, s9
                  auipc        zero, 100052
                  add          s1, a7, t0
                  andi         zero, s9, 419
                  ori          s10, t2, 1296
                  nop
                  or           s1, t6, a7
                  auipc        a3, 347405
                  and          sp, s0, zero
                  and          t2, a5, gp
                  xor          s0, s9, s7
                  sll          a4, t2, t6
                  sll          s10, a1, s2
                  and          s0, a0, s4
                  lui          t5, 409377
                  sra          s9, a1, a4
                  sub          a7, a1, s3
                  or           s10, s9, t4
                  addi         s8, t3, 643
                  sll          s11, t2, a0
                  add          t3, s6, s3
                  srl          t0, a6, s10
                  sll          t4, s3, ra
                  sll          a0, t0, ra
                  nop
                  add          ra, a5, ra
                  lui          gp, 331621
                  srl          t0, s6, a5
                  srli         s10, t6, 6
                  sltu         ra, t0, s10
                  and          a1, a0, a2
                  add          t2, a4, zero
                  sltiu        sp, a7, 1674
                  sra          t4, a7, t2
                  sra          s9, t1, tp
                  and          s8, s7, s3
                  sub          t0, a3, s8
                  sub          s3, a6, ra
                  lui          s1, 1031349
                  xori         t1, s7, -1059
                  srl          t4, s6, s10
                  xor          a3, t5, s0
                  nop
                  sra          a4, a5, t2
                  add          a3, a5, a2
                  xor          gp, s8, tp
                  sltu         a7, s5, t6
                  addi         zero, gp, 415
                  sltu         gp, t3, t6
                  srai         s7, t3, 2
                  addi         s0, t2, -879
                  sltiu        a5, a6, -234
                  slli         t2, t5, 21
                  sltu         gp, s7, t2
                  sra          s3, gp, s10
                  nop
                  xor          s0, a7, s1
                  or           a5, s7, t3
                  lui          t4, 377661
                  auipc        a2, 991303
                  add          s0, tp, a1
                  sra          a7, t5, t5
                  sub          ra, ra, t4
                  xori         s0, t2, -1804
                  and          a0, s11, t0
                  nop
                  srl          gp, a2, s6
                  slt          a3, a6, s3
                  srai         t3, s8, 31
                  add          s8, a4, t6
                  andi         s2, a2, -991
                  srai         s10, gp, 31
                  nop
                  srli         s7, a2, 22
                  addi         a5, s3, -351
                  slt          a7, zero, s7
                  srli         t1, sp, 28
                  slt          ra, s4, s4
                  ori          s9, s4, -1540
                  addi         s4, t5, 1401
                  sll          s10, a4, a0
                  add          s1, s7, a0
                  auipc        ra, 362034
                  slt          sp, a3, t4
                  lui          s3, 598039
                  add          a2, s5, t6
                  srli         s7, s10, 11
                  sltiu        s10, s3, -1437
                  sll          sp, a7, s6
                  addi         t4, s9, -886
                  ori          s7, s10, -1781
                  and          a0, a3, s0
                  srli         s7, s2, 8
                  sltu         sp, s4, s2
                  xor          s1, t1, s9
                  and          t3, a1, a0
                  lui          tp, 68445
                  xor          t3, t3, s2
                  ori          s5, s6, 648
                  sub          s8, tp, t1
                  ori          tp, ra, -320
                  srai         s7, zero, 31
                  srai         t2, s8, 4
                  nop
                  add          t2, s11, a0
                  sub          t5, a4, t3
                  xori         sp, s10, 530
                  sub          sp, a1, s4
                  slt          a0, ra, s4
                  nop
                  or           a5, s7, a1
                  sltiu        a2, a1, 1184
                  srai         t3, a7, 16
                  slt          ra, t4, gp
                  lui          ra, 498661
                  nop
                  sub          s3, a0, a5
                  slli         s3, t6, 26
                  ori          a0, a0, -691
                  lui          s5, 98448
                  srli         a4, gp, 10
                  ori          t0, s0, 1056
                  srli         s2, s1, 27
                  sltu         a1, s9, s8
                  ori          s7, s2, 1583
                  srai         s9, s10, 24
                  nop
                  sltu         t2, s6, t6
                  srai         t5, s10, 22
                  sub          a3, a4, t1
                  sltu         s5, t2, a1
                  xor          zero, t0, s0
                  srli         a1, sp, 23
                  add          s2, s2, t6
                  lui          a4, 303399
                  sub          a2, t1, zero
                  sltu         t1, gp, t5
                  srai         a4, t4, 9
                  srli         s7, s11, 30
                  li           t3, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           s4, 0x0
                  li           t0, 0x80000000
                  li           s10, 0x80000000
                  li           tp, 0x0
                  li           s11, 0x0
                  li           s8, 0x33c82fdc
                  li           a4, 0x80000000
                  li           a3, 0x0
                  li           a2, 0x80000000
                  auipc        t3, 868677
                  sub          s8, s8, s10
                  nop
                  nop
                  addi         a4, s11, 369
                  addi         tp, t0, -354
                  auipc        s11, 184953
                  sub          a4, t3, s11
                  nop
                  lui          a3, 673832
                  lui          s4, 791311
                  sub          s4, tp, a4
                  lui          a4, 696012
                  auipc        t0, 613428
                  nop
                  nop
                  auipc        s4, 462283
                  auipc        t0, 560135
                  sub          a3, s8, a3
                  nop
                  sub          s10, s4, a4 #end riscv_int_numeric_corner_stream_5
                  slli         s4, s6, 20
                  or           a3, s6, tp
                  sltu         ra, s5, gp
                  lui          a2, 600730
                  xori         a3, s3, -1022
                  ori          a4, s0, 1758
                  slli         t3, s1, 25
                  add          t4, zero, s10
                  ori          t1, s9, 477
                  slti         a5, a6, -2027
                  slli         s3, s3, 19
                  addi         a3, s2, -192
                  sltu         zero, s3, gp
                  sltiu        t5, s3, 1236
                  xor          t5, s2, a4
                  sll          a1, s2, s9
                  ori          s7, a4, -616
                  addi         a5, gp, -720
                  srl          a0, s0, s10
                  nop
                  xor          a2, a6, s9
                  andi         s7, s8, -55
                  sra          s0, s5, t1
                  xori         sp, s11, -1720
                  srai         s8, s0, 0
                  slti         s1, tp, 658
                  sub          s5, s2, t2
                  srli         t2, t0, 4
                  sltu         s4, s10, s2
                  sub          s3, a4, t1
                  sltiu        tp, a0, -1976
                  xor          t4, a7, s10
                  sltu         s11, t0, a2
                  slt          a1, t1, s9
                  srli         t2, t6, 29
                  sub          zero, a0, a3
                  nop
                  sub          a5, t1, t0
                  sll          gp, zero, a0
                  xor          s2, a1, s11
                  sub          t0, ra, zero
                  slt          a1, sp, a6
                  and          s7, s9, t6
                  addi         ra, s4, -1172
                  slli         t4, s8, 7
                  sll          a0, a7, sp
                  srli         t1, a4, 21
                  ori          ra, a0, -960
                  srai         a3, s8, 21
                  addi         s0, s0, -907
                  srli         s1, t5, 24
                  andi         t3, a0, -698
                  sra          a5, t0, a5
                  slti         s7, t4, -367
                  and          tp, s10, s7
                  srai         t2, s0, 16
                  lui          a3, 80776
                  srli         a4, zero, 15
                  slti         s0, s1, -1454
                  slti         a7, s2, -397
                  auipc        a1, 262533
                  sltiu        s9, gp, 483
                  srai         s4, t3, 20
                  sra          a2, t4, a4
                  auipc        t2, 837780
                  sub          s3, s7, t5
                  slli         tp, a7, 11
                  srai         s4, a2, 11
                  slt          t1, s3, zero
                  nop
                  sub          a5, t4, s3
                  sra          s8, s5, tp
                  slti         t3, s11, -652
                  sra          t1, s2, a3
                  srl          t4, s7, a5
                  sra          a5, t1, t1
                  addi         gp, s9, 1267
                  sll          s4, s11, a4
                  lui          a4, 875844
                  addi         sp, t6, 1097
                  auipc        a2, 911177
                  lui          a1, 403570
                  sra          ra, tp, gp
                  xori         t3, t1, -980
                  xor          t4, a0, a0
                  sll          a3, a1, s4
                  lui          t3, 617520
                  slt          ra, a7, t5
                  sltu         s3, a6, sp
                  sltu         s4, t1, s5
                  and          tp, a2, a7
                  add          s7, t1, a3
                  sltu         gp, s10, gp
                  slti         t3, a6, 1372
                  sll          t4, tp, s11
                  slli         s3, t2, 13
                  xori         a3, a7, -21
                  srai         t4, s11, 12
                  add          s5, tp, t1
                  sra          sp, a7, a6
                  slli         s4, s8, 29
                  andi         t5, t4, -1489
                  slti         t2, gp, -1759
                  lui          s3, 704371
                  sra          s9, s11, a4
                  srli         t5, tp, 12
                  add          t0, s11, t4
                  xor          a2, sp, tp
                  lui          s9, 252377
                  srli         s2, t3, 2
                  sltu         a4, a7, s0
                  xori         tp, ra, -1014
                  add          s2, s4, s11
                  xor          s3, s6, s7
                  slti         t4, a6, 1966
                  slti         t2, s2, -367
                  andi         s8, sp, 1183
                  auipc        sp, 588822
                  xori         t0, s11, 1977
                  addi         a3, a3, -131
                  sra          t4, s9, t5
                  xor          s9, ra, t6
                  slt          a5, zero, t4
                  srli         gp, ra, 31
                  and          zero, a6, sp
                  or           ra, s10, s11
                  auipc        s3, 32721
                  lui          s10, 416056
                  sltiu        s10, a2, 1497
                  andi         s10, s3, -1711
                  srl          s10, s10, s10
                  slli         a0, s11, 26
                  sra          a5, s0, t1
                  addi         s8, a2, -1480
                  and          t1, ra, a3
                  sra          t1, s1, s4
                  slt          s10, a4, s9
                  sub          a5, sp, t1
                  auipc        a0, 398117
                  add          s2, t0, gp
                  srl          t2, s5, s10
                  srli         tp, zero, 31
                  andi         s11, a1, -729
                  srli         s3, s0, 14
                  srai         t3, t1, 10
                  srai         s0, t6, 0
                  srl          sp, s6, s8
                  add          a2, s2, t5
                  or           a3, ra, a6
                  or           s4, t5, a5
                  xori         s1, s3, -666
                  sltiu        t2, t4, 629
                  sll          s1, a5, t2
                  sltu         tp, a2, s1
                  addi         t5, t1, -1591
                  slti         t2, t0, 888
                  srai         a3, a6, 29
                  andi         a2, s0, 67
                  xori         s11, s0, 123
                  xor          a1, sp, a1
                  xor          s1, a1, zero
                  or           tp, t5, s1
                  srai         s9, tp, 19
                  sub          a7, s2, s8
                  xor          gp, s5, gp
                  auipc        a2, 549216
                  slli         ra, s3, 20
                  andi         t1, a3, -1718
                  srli         t1, tp, 24
                  or           tp, a6, s10
                  auipc        sp, 383281
                  sra          a0, t3, sp
                  ori          s3, a2, -1358
                  sltiu        a4, s3, 571
                  nop
                  and          t5, s9, gp
                  addi         ra, tp, -438
                  xor          s11, a4, t2
                  andi         a7, s8, 785
                  slt          t4, a7, t6
                  srl          s8, a5, t3
                  slti         a3, ra, 1733
                  sltu         s10, t3, a6
                  srl          a3, s3, s7
                  nop
                  or           s9, a6, tp
                  slt          a4, t2, a6
                  sltu         a1, a5, t0
                  or           a7, s4, t5
                  auipc        s2, 36323
                  srli         t2, a2, 0
                  srl          t4, gp, s8
                  sub          gp, a5, sp
                  nop
                  sub          tp, t0, t5
                  andi         s1, t6, 1115
                  sub          s1, s8, a4
                  andi         zero, s5, -1943
                  add          s11, t0, s10
                  lui          s3, 629802
                  addi         s4, a1, 1828
                  sub          s7, sp, a7
                  sra          a2, s8, s6
                  nop
                  srli         ra, a4, 11
                  sra          zero, t5, a2
                  ori          a5, s4, 1150
                  slli         a4, s7, 26
                  xori         a2, s1, 446
                  sub          a4, a7, tp
                  ori          s5, t3, 1753
                  srai         zero, a7, 12
                  slt          s10, s3, a1
                  sra          t2, t6, s9
                  srli         s10, s4, 26
                  andi         t0, t4, 774
                  slti         tp, a7, -1640
                  auipc        s4, 65458
                  srl          a5, a5, a7
                  srl          t4, a3, t0
                  ori          a5, a3, -1073
                  srl          s11, a5, s2
                  xor          a1, a7, t0
                  srai         a1, t3, 18
                  or           s11, s11, s1
                  lui          t1, 528168
                  or           t5, s3, zero
                  or           t5, s6, t3
                  xor          s9, a3, s8
                  add          s7, a1, s11
                  srai         t5, t1, 29
                  sub          s7, s5, sp
                  andi         a5, s2, 1443
                  srl          s3, t6, t4
                  xori         sp, a7, -1847
                  auipc        s10, 357497
                  sub          s5, zero, s11
                  nop
                  add          t3, s10, a7
                  xori         a4, t4, 1537
                  sra          s10, ra, a3
                  auipc        t5, 380062
                  ori          t4, s0, -1752
                  or           a4, a5, s8
                  srai         a3, s6, 15
                  lui          gp, 1003894
                  srli         s7, a5, 21
                  sltu         s7, t6, s2
                  add          a5, t2, a3
                  sub          s1, sp, a1
                  nop
                  sltu         a5, s2, s2
                  sub          tp, zero, s6
                  xori         t4, a0, 422
                  addi         s4, a3, 827
                  auipc        s2, 370731
                  lui          s1, 459205
                  nop
                  lui          a7, 5676
                  or           gp, s5, a6
                  sltu         tp, t1, tp
                  add          s4, ra, s9
                  add          a7, t2, gp
                  auipc        s5, 1041796
                  slt          s4, gp, t4
                  sub          s7, a6, s2
                  lui          s0, 950650
                  ori          a7, a2, 850
                  lui          sp, 655281
                  and          s2, a5, a4
                  addi         s9, s2, -146
                  sra          a1, s10, a7
                  lui          s8, 427147
                  sra          s3, t1, t4
                  addi         s5, tp, 1718
                  xor          ra, s3, sp
                  xori         tp, a6, 1728
                  lui          s0, 223095
                  lui          s3, 724081
                  nop
                  add          t5, a5, gp
                  xori         s5, zero, -798
                  srli         gp, a1, 1
                  ori          s8, s0, 1214
                  sltu         s8, a0, s7
                  srli         s2, a2, 18
                  auipc        s10, 334776
                  slli         s2, t3, 19
                  nop
                  srl          t3, t4, s7
                  and          a1, s11, t6
                  sltiu        a5, s5, -1566
                  auipc        a0, 536082
                  ori          s8, gp, 2022
                  sltiu        t2, s2, 558
                  sra          t5, s10, s4
                  addi         t4, t0, 1362
                  or           t4, t0, s11
                  ori          t3, s11, -1396
                  slli         s0, a1, 28
                  xori         zero, t1, 639
                  sub          t5, s6, s0
                  slti         a5, s5, 12
                  andi         tp, a1, -392
                  lui          t4, 1014061
                  sll          s3, s7, a3
                  and          s5, s11, tp
                  srai         s11, s7, 5
                  sub          t1, s0, s6
                  nop
                  srl          t5, s10, s11
                  srai         s2, a3, 9
                  srli         s3, s9, 6
                  sll          s9, t5, s1
                  add          s2, t3, zero
                  sltu         t5, s6, s9
                  sll          sp, t1, t5
                  sra          s11, t5, a6
                  srli         sp, s6, 5
                  sub          t1, t4, s0
                  slti         s10, t0, 1035
                  slt          a5, s0, s3
                  auipc        s9, 554052
                  srl          sp, s3, a4
                  sltiu        t1, s6, 1119
                  auipc        s7, 343901
                  slt          a4, t1, t3
                  andi         s4, s3, -960
                  lui          a1, 272196
                  slt          t3, a5, tp
                  nop
                  auipc        a2, 233155
                  lui          s1, 715915
                  sub          tp, a7, s9
                  lui          a1, 904384
                  auipc        t1, 946570
                  andi         zero, a3, 61
                  xori         t0, a7, 2015
                  slli         a5, s0, 27
                  add          a3, s3, gp
                  xori         s8, a2, 844
                  srai         s4, s8, 25
                  slti         a3, s1, 334
                  slti         t1, s3, 665
                  or           a5, t3, t3
                  xori         t1, a0, 1848
                  xori         t1, s7, 2002
                  xor          s0, a7, a6
                  lui          t4, 345360
                  srli         s2, a4, 19
                  slti         a5, t6, 1500
                  sltiu        s2, s4, -856
                  xor          s4, s8, t2
                  slt          a3, s6, tp
                  sltiu        tp, a2, -1373
                  sltu         t4, a0, tp
                  sltu         ra, a2, a4
                  slti         sp, sp, 1559
                  sltu         t4, a2, t2
                  lui          a2, 629494
                  nop
                  slti         a0, t6, 1734
                  srl          a1, zero, a3
                  sltu         a3, s9, t3
                  srli         s8, s8, 21
                  xor          zero, a5, t5
                  xor          a0, a3, t0
                  srli         a0, zero, 8
                  lui          ra, 906229
                  auipc        t0, 424441
                  sll          a7, a4, s9
                  sll          s4, t2, a6
                  sub          t0, t2, zero
                  srai         gp, s8, 16
                  srli         s11, a5, 11
                  or           gp, s3, s4
                  slt          a0, t5, s4
                  andi         s2, a4, 150
                  sra          t4, t5, t6
                  slti         zero, t4, -1387
                  or           s10, s7, s0
                  nop
                  sra          ra, s9, t3
                  xori         a1, t4, -741
                  sltu         s1, t5, s2
                  sra          zero, t0, t2
                  srai         zero, a7, 7
                  lui          s4, 11674
                  sltiu        t3, s11, 1759
                  sltu         s10, t5, zero
                  addi         gp, a0, 24
                  xori         s8, sp, 2040
                  and          s0, tp, a0
                  sltiu        s1, a5, -574
                  auipc        a7, 5575
                  add          a2, a4, t3
                  addi         a4, a0, 1749
                  sra          s0, s5, s3
                  sltu         s0, s10, a3
                  slli         s2, t5, 25
                  slti         ra, tp, 245
                  slti         tp, s6, -371
                  or           a1, a1, t5
                  sll          a0, a4, t2
                  add          s0, s8, s6
                  add          s9, s5, a4
                  sltu         t5, a5, t0
                  add          s5, s6, a2
                  slti         t5, s6, 1963
                  and          s1, t3, s8
                  slli         tp, a4, 30
                  auipc        t1, 142030
                  and          t1, s4, s2
                  nop
                  xori         a7, t6, 1963
                  nop
                  slti         zero, t2, -608
                  slti         ra, t0, 314
                  srli         a7, a5, 30
                  srai         s8, s1, 7
                  and          a0, t2, t3
                  slli         s4, s8, 24
                  and          a7, s9, a3
                  xori         s11, t0, 1855
                  srl          t3, s1, a1
                  andi         s0, t1, 850
                  slti         a5, s11, 1519
                  or           s3, a5, sp
                  xori         s8, a1, -1637
                  sltu         a1, s8, t6
                  srai         s1, s1, 24
                  lui          s0, 59764
                  sub          ra, gp, s11
                  and          t1, a3, a4
                  xor          s0, s8, s8
                  nop
                  xori         s2, a2, 1048
                  sltu         sp, s0, gp
                  sll          gp, a0, t1
                  nop
                  add          ra, tp, s5
                  xor          a1, s1, ra
                  sltu         s10, s10, s0
                  srai         gp, a3, 27
                  ori          tp, s11, -1434
                  or           s3, a2, t5
                  sra          a3, t3, a4
                  srli         a5, t2, 29
                  sltiu        t0, s5, 1576
                  sub          s1, a4, a7
                  nop
                  srai         a7, s2, 28
                  and          tp, s11, s4
                  ori          a1, s3, -357
                  lui          t4, 900703
                  andi         t3, ra, 596
                  srl          t4, s9, s1
                  nop
                  xor          t1, gp, t1
                  auipc        ra, 527968
                  sltiu        t1, a1, -162
                  slli         a3, a1, 2
                  add          s4, t2, zero
                  srai         s0, s6, 24
                  srl          a5, s3, s9
                  and          s1, a7, s7
                  sll          s7, a1, a5
                  add          s10, t6, a3
                  ori          t5, a4, 245
                  sltu         t3, t3, s11
                  sub          s4, sp, a1
                  sra          s5, a2, t3
                  srl          s0, ra, s7
                  andi         ra, a6, -1706
                  nop
                  auipc        a0, 217763
                  xori         s2, t4, -404
                  xori         t1, s1, -1790
                  lui          a3, 610480
                  nop
                  lui          t0, 361755
                  srai         a4, s8, 17
                  xor          s8, t4, s0
                  auipc        s9, 282129
                  nop
                  lui          a5, 946945
                  add          s0, t6, a2
                  or           s5, zero, s11
                  andi         s3, a7, 217
                  xor          a4, tp, t3
                  addi         s5, t6, -848
                  add          a4, s10, a5
                  sub          s0, s6, a1
                  sltiu        a5, t6, 223
                  srl          t4, zero, t4
                  auipc        s2, 449261
                  lui          a5, 137031
                  nop
                  addi         t2, s2, 962
                  or           a2, t1, a7
                  ori          a7, sp, -306
                  xor          s9, t4, s4
                  lui          gp, 487366
                  srli         a5, a2, 16
                  srl          zero, t4, zero
                  or           ra, sp, s6
                  or           s3, a3, a1
                  andi         t1, s3, -1369
                  srli         zero, s7, 0
                  ori          s7, t0, -1984
                  and          ra, a1, s2
                  slli         tp, t6, 25
                  auipc        s3, 607879
                  srl          a0, s7, s10
                  nop
                  and          s7, s0, s4
                  auipc        t0, 933274
                  lui          ra, 846630
                  sub          s10, s9, s5
                  auipc        t1, 1045880
                  sra          a7, t5, s8
                  srli         t3, s1, 18
                  or           s7, s0, t6
                  nop
                  andi         s8, a4, -1189
                  ori          ra, sp, -397
                  xori         a0, sp, 1267
                  srl          sp, t4, a3
                  srli         t4, gp, 22
                  and          t1, gp, tp
                  slti         a1, t3, -466
                  xor          a5, sp, s3
                  andi         a0, a2, 1592
                  lui          tp, 34167
                  srli         sp, tp, 0
                  sltiu        s1, t5, 1119
                  addi         a3, a0, 363
                  sub          s10, t4, a1
                  ori          a5, t1, 1078
                  nop
                  or           zero, s3, tp
                  lui          s5, 3827
                  andi         sp, s8, 1124
                  slli         s0, a0, 19
                  sll          s11, gp, a0
                  xor          s9, s9, a5
                  srl          s3, a4, s4
                  add          a5, gp, t6
                  slti         a0, t5, 639
                  srai         t5, a3, 20
                  andi         gp, s10, -293
                  srai         a7, t0, 17
                  nop
                  addi         a0, t2, -530
                  sub          sp, zero, a7
                  lui          t3, 907340
                  lui          a1, 809657
                  slli         t0, t4, 14
                  xor          a7, s8, s3
                  or           s11, gp, t6
                  and          zero, ra, gp
                  xori         a1, a0, -1845
                  andi         sp, s11, 1231
                  slti         t5, t4, -809
                  srli         t0, gp, 15
                  slti         s3, gp, -477
                  addi         a2, s2, -1220
                  slti         t3, s3, 1962
                  sra          s8, gp, t5
                  nop
                  sub          t4, a4, t4
                  andi         s1, t2, -1521
                  ori          s2, a1, -2035
                  slti         zero, a4, -1198
                  slt          zero, t6, a3
                  sub          t2, zero, s1
                  andi         t4, s5, -1711
                  addi         t4, t6, -1170
                  sll          gp, t0, sp
                  xor          t0, s11, s6
                  ori          gp, t0, 155
                  xor          t4, t4, s1
                  add          s7, t5, t2
                  or           a5, t6, s5
                  nop
                  nop
                  auipc        t1, 979984
                  sra          t4, t1, s11
                  sll          a4, s1, gp
                  srl          t3, sp, a2
                  andi         a2, sp, 1095
                  addi         t1, tp, 230
                  xori         t3, tp, -1924
                  nop
                  sll          sp, s1, a5
                  sll          t1, s4, gp
                  slti         t4, s1, -1183
                  srl          s10, t5, a6
                  xori         tp, a6, -392
                  nop
                  auipc        s2, 846868
                  sltu         s11, s9, s9
                  add          t4, gp, s6
                  sra          sp, zero, s3
                  or           tp, s7, a3
                  add          t4, a3, a1
                  slt          s1, s8, s7
                  addi         a1, t3, 394
                  andi         t5, a6, 12
                  srl          zero, t5, s8
                  slti         s3, a5, -1503
                  sub          s1, s8, s1
                  sra          a1, t3, t5
                  slt          t3, zero, a5
                  andi         a4, a2, -300
                  sltiu        t0, a2, 1127
                  lui          ra, 758110
                  xor          tp, sp, s10
                  or           s7, s11, gp
                  sub          s9, a4, t2
                  add          s1, s3, zero
                  sltiu        t1, s1, 622
                  xor          t0, s6, s5
                  slli         s0, t0, 31
                  and          t5, t5, a4
                  auipc        a5, 832701
                  srai         s10, s10, 12
                  lui          s9, 443843
                  slti         s10, a5, -1319
                  slli         s9, s10, 30
                  xor          s8, t3, sp
                  sra          a4, s1, tp
                  addi         s7, a2, 497
                  slt          t2, gp, s8
                  sltiu        s5, a5, -371
                  sltu         s5, a3, t6
                  xor          t5, s1, t5
                  sll          a0, a0, sp
                  sltu         t3, t1, a7
                  add          s10, ra, a4
                  slt          s11, s6, zero
                  slti         s2, a2, 232
                  nop
                  nop
                  srli         ra, t1, 14
                  sra          tp, s6, s6
                  or           t0, t1, a6
                  srai         s5, s1, 0
                  lui          s2, 71798
                  slti         t4, t5, -868
                  ori          s5, s5, 31
                  xor          t1, gp, s3
                  sra          a5, gp, tp
                  srl          s3, a2, s3
                  sltiu        t3, a3, 1471
                  srli         a1, a4, 28
                  andi         s7, t3, 232
                  srl          t5, s7, a6
                  sltu         s4, s5, s6
                  slt          s4, s3, s11
                  lui          s7, 928018
                  sra          s9, s0, t5
                  add          s0, t1, t3
                  addi         a0, a5, -1350
                  xori         a0, a4, -1164
                  srai         sp, s7, 25
                  slli         a3, gp, 10
                  or           a0, s9, s0
                  srli         a1, s1, 11
                  ori          s11, t1, -1178
                  ori          a2, sp, -1578
                  sltu         t5, s5, a3
                  or           ra, a6, ra
                  srli         t0, s1, 1
                  sub          t4, s2, tp
                  srl          ra, sp, gp
                  addi         t2, s8, 1143
                  xor          s5, zero, zero
                  sra          s10, a5, t3
                  sra          a1, a0, s2
                  sltu         s4, s2, t6
                  auipc        a3, 53926
                  srli         a4, s5, 11
                  sltu         s8, s7, t6
                  andi         s1, a2, -849
                  andi         t4, a0, -1099
                  andi         t0, t0, 355
                  sltu         tp, s3, s6
                  sra          s0, a4, a0
                  and          s8, t1, s4
                  srai         a5, a3, 7
                  andi         t5, t0, -200
                  sltiu        gp, a1, 837
                  sra          t2, s9, s0
                  add          t0, s7, t3
                  and          a1, a1, a7
                  slti         zero, s0, 1863
                  sra          s7, zero, a4
                  sltu         a7, t0, s9
                  or           s11, t5, t2
                  addi         s3, s8, 1907
                  sltiu        a7, t0, 1885
                  sra          s11, gp, a0
                  lui          s3, 513913
                  slti         t2, t2, -625
                  ori          a2, ra, -1357
                  srl          a2, s6, a5
                  add          gp, t3, s11
                  and          s9, s4, s6
                  slt          s5, s9, s5
                  sll          s0, a0, a7
                  addi         t4, s10, 1673
                  sltu         s2, a7, a6
                  ori          a4, s11, -1755
                  nop
                  slt          s9, t4, s2
                  srai         t3, s3, 15
                  slti         s0, s9, -649
                  sltiu        t2, a2, -876
                  and          s2, t0, t6
                  li           t5, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           ra, 0x0
                  li           sp, 0x833c341f
                  li           a1, 0xffffffff
                  li           gp, 0xffffffff
                  li           a4, 0xffffffff
                  li           s7, 0xffffffff
                  li           a0, 0xa7e1e45d
                  li           t2, 0x0
                  li           s0, 0x2b49f9f8
                  addi         sp, a4, -851
                  auipc        a1, 291804
                  nop
                  sub          ra, s7, sp
                  auipc        ra, 601560
                  lui          t2, 34900
                  lui          s0, 220904
                  addi         s0, a0, 1557
                  lui          s0, 601035
                  sub          gp, a0, ra
                  lui          a0, 509661
                  lui          ra, 118646
                  add          t5, a4, t5
                  add          t5, sp, s7
                  auipc        gp, 195698
                  lui          a1, 682312 #end riscv_int_numeric_corner_stream_9
                  sltiu        sp, s4, 1226
                  srli         s10, s10, 30
                  sltiu        gp, a2, -1996
                  slli         sp, a0, 7
                  srl          ra, t1, t2
                  xor          gp, t6, a0
                  srl          t1, t6, t2
                  and          a0, s11, s6
                  add          sp, tp, tp
                  xori         s11, sp, 1592
                  addi         t3, a3, 1152
                  sltiu        gp, s7, -1343
                  addi         a2, s5, -7
                  slti         tp, t6, 1703
                  sltu         t4, gp, ra
                  sra          t4, a6, a4
                  ori          a3, s9, -1664
                  srli         a4, t5, 17
                  sltu         ra, a5, s0
                  add          a3, t3, a1
                  sltu         s7, a1, t3
                  slli         a4, a4, 9
                  srai         s7, a6, 14
                  ori          ra, a3, 446
                  andi         s10, s0, 1408
                  addi         gp, s4, 1767
                  srl          sp, a4, a5
                  srl          a2, s4, a7
                  slti         t2, s0, 586
                  lui          a3, 621251
                  srl          a4, t4, t3
                  slli         sp, t1, 29
                  sra          a0, s4, s7
                  addi         s9, a4, -959
                  sub          t3, a6, a1
                  ori          t4, s5, 73
                  and          s10, a2, t4
                  sll          t4, s7, a5
                  slt          t1, a3, sp
                  or           a4, t2, t1
                  srl          s2, t3, t2
                  lui          t5, 475101
                  sra          s8, t3, s2
                  add          s8, a1, a4
                  add          s1, a3, s11
                  addi         s10, t3, -367
                  sltiu        a2, sp, -1465
                  sra          t2, sp, t2
                  srl          a3, s4, a5
                  sll          gp, s5, s1
                  and          t5, a7, a4
                  sub          s7, s8, s5
                  lui          tp, 859705
                  lui          zero, 256851
                  xori         a0, a6, -2040
                  add          s0, sp, s10
                  auipc        a2, 211680
                  sltiu        t0, a7, -1851
                  and          sp, s9, s11
                  add          t2, a5, t0
                  nop
                  xor          s0, sp, a4
                  andi         s0, s0, -550
                  ori          a3, ra, 593
                  sra          a2, s2, s0
                  sra          a1, s7, t5
                  auipc        s7, 662650
                  auipc        s1, 774478
                  add          t3, a0, s0
                  sub          s10, s0, s2
                  slli         t0, s3, 28
                  slt          zero, t4, s8
                  or           s11, a5, t3
                  slti         a5, t6, 981
                  sra          t4, a6, s5
                  and          t0, s9, t4
                  srl          s4, s4, s2
                  auipc        zero, 448789
                  srli         s3, s6, 23
                  sra          s0, s2, s0
                  sub          s1, s0, a5
                  add          s1, ra, a5
                  or           a1, t2, t0
                  srli         t2, t4, 9
                  sra          s2, s3, s9
                  lui          a0, 642104
                  slt          s11, t1, a4
                  slt          t4, t5, s6
                  andi         a1, a5, -1702
                  sra          t4, a2, tp
                  srai         t3, zero, 26
                  xor          a3, a1, t1
                  sltiu        a7, s10, -2029
                  auipc        t5, 1037514
                  auipc        t4, 986183
                  or           s8, t1, a3
                  xori         s4, a4, -477
                  lui          t0, 85306
                  sltu         a0, s3, s8
                  slt          s1, a3, t4
                  lui          a1, 687025
                  sltu         s11, s3, s8
                  andi         tp, s1, -736
                  sub          a3, s0, a6
                  srai         s5, a7, 2
                  sub          s2, t1, s7
                  sub          tp, sp, a5
                  add          sp, a7, sp
                  sltu         gp, sp, t4
                  sltu         gp, a6, a5
                  sltu         a0, s3, s2
                  srl          t3, t2, s0
                  and          s10, a3, a5
                  sltiu        t1, zero, 968
                  or           s8, s3, a1
                  andi         a1, t5, 300
                  sltu         a0, s6, a3
                  ori          a2, a1, 794
                  or           gp, a5, t4
                  xori         zero, t6, -1778
                  andi         s0, a3, -1570
                  slli         s11, gp, 19
                  sltiu        t5, t1, 83
                  xor          a1, a0, a1
                  sra          s10, t1, a5
                  srai         s9, s3, 11
                  and          s3, t2, t2
                  lui          a3, 943817
                  or           s8, s4, s5
                  or           a2, s5, a2
                  slti         s11, s7, 1059
                  ori          a1, s10, 382
                  sll          s5, s0, a6
                  sltu         zero, s11, a0
                  add          a1, s6, gp
                  sltiu        tp, s9, -1826
                  nop
                  sll          a7, s8, t0
                  or           t0, t2, t3
                  andi         a4, s8, 790
                  addi         s8, s6, -336
                  add          sp, s6, s6
                  lui          t2, 914269
                  srl          t0, sp, t2
                  auipc        s3, 640250
                  slti         a1, s10, -1699
                  xori         t0, zero, -1018
                  srli         s10, a5, 1
                  ori          zero, gp, -622
                  andi         s3, a3, -1812
                  auipc        a2, 82823
                  andi         s0, a7, -147
                  slli         a4, a1, 1
                  and          zero, s0, s7
                  add          t5, s10, t2
                  sltu         sp, s8, t6
                  srli         a7, zero, 22
                  and          zero, s1, zero
                  sltu         gp, s10, s10
                  sub          tp, s9, s3
                  and          t5, t4, s5
                  xor          s2, gp, s7
                  srai         a3, a7, 24
                  sltiu        s9, ra, -1567
                  sltu         a4, sp, gp
                  srli         tp, t0, 7
                  xori         t1, s6, 1723
                  xori         s2, s3, 1559
                  srai         a4, s7, 24
                  and          s1, s9, a1
                  ori          a1, a0, -1427
                  slti         s11, gp, 1472
                  sltiu        t2, gp, 782
                  srai         s0, sp, 23
                  auipc        t1, 1041450
                  nop
                  sltu         zero, a0, a4
                  add          ra, a1, s11
                  sra          s4, s9, s10
                  srl          a4, t5, s4
                  ori          s5, a2, 1685
                  sltiu        t4, s7, -1394
                  sub          t1, sp, s6
                  xori         gp, a7, -1845
                  add          t2, s10, a5
                  srl          s4, ra, s0
                  sltiu        t4, s3, -1843
                  auipc        tp, 51155
                  nop
                  sra          s11, s11, s9
                  or           t4, a4, s4
                  srl          a3, zero, sp
                  xori         a4, a5, 1944
                  slti         tp, s6, -1924
                  sll          t3, s7, s11
                  nop
                  sltu         tp, a6, t2
                  slt          a5, t1, zero
                  or           s3, a3, a0
                  add          a2, s1, s11
                  lui          s10, 356914
                  slli         a2, zero, 20
                  ori          s0, t0, -1750
                  slt          t1, s11, t4
                  srl          t2, t3, t3
                  and          a2, a7, s9
                  xor          gp, t1, t0
                  ori          a0, a0, 1342
                  srl          a0, s2, a7
                  nop
                  xor          s1, t0, t5
                  add          t5, s5, s5
                  or           s7, a1, zero
                  auipc        ra, 485874
                  add          s4, t0, t4
                  sll          t4, s6, t3
                  srli         zero, ra, 10
                  nop
                  nop
                  slli         t1, s3, 10
                  xor          s11, sp, t6
                  slli         s10, s11, 29
                  slti         a1, t5, -89
                  xor          s9, zero, a6
                  slli         s2, s9, 29
                  slt          s0, s1, t5
                  nop
                  slli         a7, t1, 29
                  ori          zero, a4, -1923
                  ori          sp, s2, 643
                  sub          sp, gp, s5
                  srl          s5, ra, s1
                  add          gp, tp, t0
                  addi         a2, gp, 1919
                  srl          s0, zero, s7
                  or           s7, s11, s1
                  sub          t0, ra, a1
                  xori         t4, tp, 1825
                  srl          s5, ra, s3
                  ori          sp, s8, -2003
                  andi         s0, a1, -467
                  sltiu        a3, s5, 1730
                  slti         s0, s4, 1325
                  sltiu        t5, t3, 1155
                  srl          gp, t5, s8
                  xori         t2, s0, 1642
                  or           t1, gp, t4
                  xori         zero, tp, -768
                  slt          zero, a5, s4
                  andi         a4, a2, -1611
                  xor          t2, a5, s9
                  nop
                  auipc        a7, 1043861
                  sltiu        s2, sp, 1638
                  srli         a3, a2, 24
                  srai         t1, a3, 28
                  auipc        a5, 388832
                  or           s8, t0, s0
                  slli         zero, tp, 9
                  lui          a5, 890770
                  srai         t3, sp, 31
                  sll          s3, s8, s1
                  add          ra, t2, a2
                  srai         a3, s7, 10
                  srl          t5, tp, a0
                  sra          gp, sp, a1
                  sll          t4, s6, t6
                  nop
                  sltu         s7, a2, s4
                  andi         s9, a5, -580
                  srli         s3, a3, 6
                  slt          s8, a3, t5
                  or           s1, s4, s5
                  sll          a7, s6, a0
                  srl          s8, t1, a2
                  srl          s7, t2, s4
                  sltiu        a0, s3, -1938
                  slt          t5, t5, t3
                  srl          s1, sp, s3
                  sub          s0, a5, s6
                  xor          a2, t2, t0
                  auipc        s2, 437751
                  xor          t2, a1, s7
                  srli         s1, t6, 26
                  xor          a2, a0, a3
                  addi         gp, a1, -1490
                  srai         a1, t6, 30
                  srai         zero, t5, 24
                  sub          s7, s10, a4
                  srl          a1, a3, a6
                  lui          a2, 221396
                  addi         t2, s0, 1120
                  srai         gp, zero, 14
                  ori          t3, s3, 142
                  addi         s3, s10, 207
                  xor          s0, s8, s6
                  srli         zero, s11, 8
                  lui          s8, 715007
                  xor          a7, t4, t1
                  addi         a7, t1, 1162
                  sra          s10, s10, a2
                  andi         s0, a4, -6
                  sll          tp, a0, a2
                  sltiu        zero, s3, 1731
                  slt          s5, ra, t4
                  or           t4, sp, s11
                  xor          t1, s10, s7
                  slli         a5, a6, 20
                  ori          s8, a4, 1314
                  slt          t0, t1, t0
                  add          zero, t4, s6
                  add          a4, t2, s10
                  srl          t4, t2, a5
                  srli         s2, t6, 15
                  srl          ra, s0, a6
                  lui          s0, 378793
                  srl          zero, t5, s6
                  lui          a0, 533910
                  slt          s10, a7, s6
                  sub          s0, t3, s5
                  slti         s4, a3, 1706
                  srli         a5, s3, 20
                  slli         ra, a2, 22
                  and          a1, s5, a7
                  auipc        s10, 170718
                  auipc        s0, 781013
                  slti         t3, ra, -314
                  or           a3, gp, t1
                  slt          t2, ra, a6
                  auipc        sp, 356099
                  addi         s4, s7, 1550
                  sltiu        t4, s8, 1830
                  srai         t5, s11, 24
                  add          t1, s2, t3
                  xor          t1, s7, s2
                  auipc        gp, 701830
                  sub          s9, a3, t1
                  sltu         s7, s7, a0
                  nop
                  addi         s1, a3, 1904
                  sltiu        s10, s8, -349
                  slli         s9, t1, 12
                  add          s9, tp, a0
                  sra          s0, a6, s4
                  or           s10, a7, s6
                  sltu         tp, s8, s1
                  xor          a0, a6, a3
                  and          a7, a5, gp
                  add          t4, sp, s9
                  srl          a1, t4, s7
                  andi         a5, s0, 1783
                  srai         t4, s2, 30
                  slt          tp, a5, s5
                  sltiu        t4, sp, -951
                  slli         s2, a1, 27
                  auipc        s2, 465395
                  or           s8, t5, gp
                  xori         s8, t1, -49
                  srli         s0, a2, 7
                  sltiu        tp, t6, 1470
                  and          a1, t5, a0
                  ori          t4, sp, -817
                  andi         t2, a3, 1940
                  and          sp, t5, a3
                  ori          t1, t4, -709
                  ori          t2, tp, 1921
                  lui          a7, 316541
                  lui          s8, 107959
                  or           s10, s10, t2
                  srl          s7, a3, t5
                  slt          t2, s9, s1
                  xor          tp, a4, s9
                  srai         s7, sp, 12
                  or           ra, tp, s2
                  add          tp, a0, a1
                  auipc        gp, 373152
                  srl          s8, s2, s2
                  sra          s8, t6, a2
                  slti         tp, gp, -187
                  sub          t2, t5, s3
                  or           a3, t5, t1
                  slt          s0, s4, s6
                  ori          s4, s6, -1752
                  srli         s4, a2, 6
                  xor          t5, s2, s11
                  or           t0, tp, s2
                  nop
                  sll          s11, t4, a0
                  slli         s8, s10, 0
                  sltu         zero, s2, s1
                  sltiu        gp, t6, 217
                  auipc        s7, 155404
                  or           s11, t4, s9
                  slli         s0, a0, 4
                  ori          tp, t1, -1087
                  srli         a1, t2, 20
                  addi         a0, a2, 1793
                  sltu         a2, a5, t6
                  slti         zero, ra, -1098
                  xori         s3, s8, 631
                  xor          s5, s1, sp
                  ori          s10, t6, -331
                  sll          sp, a4, sp
                  sltiu        a5, a5, -86
                  xori         t0, t0, 1647
                  sltiu        t1, a6, 1729
                  sll          a3, t6, a1
                  sltiu        zero, tp, 1417
                  xori         s0, ra, -1133
                  nop
                  lui          s5, 945877
                  nop
                  and          t3, s4, a7
                  slli         tp, a5, 1
                  andi         s3, a1, 272
                  auipc        s9, 431004
                  srai         s0, s6, 23
                  sra          a3, s0, s9
                  sub          zero, a3, a1
                  slt          s0, s3, s1
                  addi         t0, a4, 335
                  slti         s8, s3, -872
                  auipc        s5, 868357
                  slt          sp, a2, t1
                  slli         s5, a4, 30
                  slti         s7, sp, -861
                  xor          a4, s1, s8
                  add          s3, s3, t3
                  xor          a2, s1, a6
                  add          s2, t1, a7
                  sub          ra, t4, s0
                  sltu         gp, a5, s10
                  xor          s1, tp, t6
                  auipc        s2, 822194
                  add          a0, s9, s2
                  srli         t1, a3, 2
                  auipc        s0, 59328
                  and          s0, a7, a5
                  andi         t2, a4, 1567
                  addi         a4, t0, 1608
                  srli         t4, a7, 17
                  sltiu        s8, sp, 132
                  nop
                  add          ra, a4, t6
                  srli         a7, a7, 26
                  andi         a0, t0, 627
                  sltiu        a2, t3, -149
                  or           a3, tp, zero
                  slti         t0, a1, 1607
                  sll          a0, a4, a1
                  sltiu        a7, a1, 411
                  slli         t0, a5, 26
                  auipc        a0, 1048573
                  sub          s2, t0, s11
                  srai         s5, zero, 18
                  add          s7, t1, t2
                  or           s3, t3, a0
                  sll          ra, a1, t0
                  sltiu        s11, t1, 146
                  lui          a7, 622095
                  xor          ra, t2, a7
                  and          t0, s2, t0
                  addi         s3, s11, -1471
                  lui          sp, 929538
                  sltiu        t1, s6, 475
                  slt          sp, a6, s6
                  nop
                  andi         a5, s4, 255
                  slt          a4, s0, t1
                  ori          ra, s9, -1128
                  nop
                  or           t1, a7, a6
                  sll          a2, tp, s1
                  add          a4, s3, s10
                  slt          t4, zero, s11
                  slti         s1, s3, -1311
                  sra          ra, tp, t1
                  or           sp, a2, t3
                  xor          t2, t3, a0
                  srli         s8, a4, 30
                  sra          t2, t3, a0
                  srl          t0, s8, a4
                  or           s3, s6, a4
                  slti         a5, s3, -702
                  sltu         s10, a3, s3
                  add          t1, s9, sp
                  srl          s4, tp, s8
                  srl          t0, s3, a5
                  and          s3, t1, s2
                  srl          s5, s9, a0
                  sub          t0, s9, t1
                  auipc        s3, 17089
                  srl          ra, t0, s1
                  srli         zero, ra, 23
                  addi         s5, t6, -1121
                  srai         a2, s2, 10
                  sub          t1, t2, a4
                  xori         a5, tp, 622
                  slli         s0, zero, 15
                  sub          a4, s0, t0
                  slti         s9, s4, -159
                  and          zero, s8, a4
                  xor          s2, t2, a4
                  xori         a4, s9, -1117
                  srli         s11, a6, 4
                  slli         s0, t6, 15
                  li           t2, 0x33f4f028 #start riscv_int_numeric_corner_stream_7
                  li           a1, 0x33c0c7b7
                  li           s8, 0xc4a1b992
                  li           s1, 0xffffffff
                  li           ra, 0xffffffff
                  li           gp, 0xc1e15e63
                  li           t0, 0x80000000
                  li           s2, 0x80000000
                  li           s0, 0xffffffff
                  li           s10, 0x80000000
                  nop
                  nop
                  sub          t0, a1, s0
                  lui          s8, 276734
                  sub          t2, a1, t2
                  sub          t2, gp, s2
                  lui          gp, 40019
                  sub          ra, s0, s8
                  addi         s10, a1, 1808
                  addi         gp, gp, 563
                  lui          t0, 353873
                  auipc        s10, 1036563
                  addi         s0, s1, 1552
                  auipc        a1, 166510
                  sub          s1, t0, s10
                  sub          gp, s0, ra
                  add          gp, t2, gp
                  auipc        gp, 914876
                  addi         s1, s8, -1595
                  addi         t0, s0, 339 #end riscv_int_numeric_corner_stream_7
                  srli         t3, tp, 19
                  xori         s5, s10, -82
                  auipc        gp, 158578
                  nop
                  srai         a3, ra, 15
                  lui          sp, 758740
                  sub          a2, t6, t2
                  auipc        s9, 162449
                  srai         s2, a4, 8
                  sll          t2, gp, s11
                  addi         a5, a6, 1857
                  slti         ra, s6, 226
                  or           t2, zero, t2
                  addi         tp, t5, 1814
                  sub          a4, t0, s5
                  sltu         a3, t0, sp
                  and          s3, a4, a3
                  sub          s1, t5, s1
                  sra          a3, a2, t1
                  srli         s11, t4, 12
                  sltiu        s1, ra, -977
                  auipc        s11, 821357
                  sra          s7, t2, a2
                  sll          a1, s3, sp
                  or           a4, t4, t4
                  add          t5, s7, t1
                  xori         t1, s0, 1476
                  srli         a1, s0, 24
                  sltiu        s4, a6, -1137
                  srl          s1, ra, ra
                  slt          t4, s6, zero
                  xori         s1, s3, 1896
                  srli         s3, gp, 1
                  or           t0, s10, a7
                  auipc        s11, 425067
                  xori         t2, s8, -962
                  slti         sp, a4, 1290
                  and          a4, s10, s9
                  auipc        a5, 954051
                  xor          a0, t1, gp
                  srai         a1, a3, 27
                  srli         a4, sp, 12
                  xori         a0, s10, -1475
                  slti         a5, s8, 1254
                  xori         s3, t6, 1612
                  xori         s7, a4, -1815
                  and          s8, t0, a2
                  sra          s8, s11, s1
                  addi         gp, s2, 103
                  addi         t1, s2, 596
                  sltu         s5, a5, t2
                  slli         t2, s10, 24
                  auipc        t3, 193603
                  srli         s3, s11, 6
                  slt          s0, ra, s7
                  xori         a7, t5, -757
                  sub          a4, s11, gp
                  andi         s4, t2, 1920
                  srli         tp, a2, 8
                  sll          s5, s4, t5
                  srli         t0, tp, 22
                  lui          tp, 697306
                  srai         a5, a0, 24
                  lui          sp, 755580
                  slti         s0, a7, 1346
                  add          t5, a6, s3
                  sltu         s8, a1, t1
                  nop
                  and          s7, a7, t6
                  andi         a5, sp, 1513
                  slt          t4, a0, a6
                  srai         a7, a0, 16
                  slt          s7, gp, t2
                  auipc        t4, 809020
                  lui          a3, 330879
                  srl          a7, s8, s1
                  addi         s3, a2, -1293
                  xor          a4, t2, s7
                  add          s2, s7, s6
                  sub          s10, s8, s3
                  andi         a5, a1, -832
                  sub          s0, gp, a0
                  slt          ra, tp, zero
                  addi         s11, s6, 752
                  sll          t3, a0, s2
                  sltiu        s1, a1, -883
                  srl          t5, a2, tp
                  srli         gp, s2, 4
                  ori          s9, a5, -260
                  or           sp, a5, a0
                  srl          t1, t3, a2
                  srli         tp, a2, 1
                  lui          t5, 9515
                  slti         a1, zero, -164
                  srai         t3, t4, 18
                  sra          t2, s1, t6
                  srl          s0, t3, ra
                  srli         s1, t0, 20
                  or           s1, s0, gp
                  lui          t1, 748055
                  or           a3, zero, s0
                  lui          ra, 276477
                  slt          s2, t2, ra
                  srl          s4, ra, a2
                  slti         ra, ra, -993
                  xori         s0, s11, 45
                  sltu         s2, a1, a6
                  xori         s4, zero, 1393
                  xor          t3, a1, s4
                  and          zero, t2, t6
                  srl          s9, a7, a0
                  slt          sp, t6, s0
                  add          sp, s1, t4
                  sll          s0, ra, a4
                  sltiu        tp, s11, -810
                  auipc        s1, 775146
                  auipc        s4, 694635
                  srli         sp, s8, 11
                  sltiu        s7, sp, 151
                  srai         s10, t4, 24
                  slti         s3, s8, 1105
                  nop
                  xori         gp, s5, 417
                  srl          t2, a0, t4
                  sll          a5, t4, t2
                  ori          s4, s8, 1165
                  xor          t1, s7, a0
                  xor          ra, s1, s6
                  add          s8, t3, zero
                  slt          s8, t0, t5
                  addi         s3, ra, 868
                  and          t0, s7, t1
                  xor          s2, t2, a2
                  add          t2, a4, t4
                  slti         t3, a7, 1619
                  auipc        t0, 502503
                  srli         t1, a4, 24
                  nop
                  addi         s5, a1, -1485
                  add          s10, a4, s1
                  srli         zero, s9, 10
                  and          a0, t5, t6
                  lui          s10, 822642
                  auipc        a0, 937255
                  and          sp, t6, s5
                  sltiu        a1, t0, 176
                  andi         s2, s11, -1253
                  or           s11, a0, s9
                  andi         ra, a5, -283
                  ori          a0, s7, 128
                  sltiu        a0, a3, -1149
                  sltu         a7, a7, a7
                  srl          t4, s3, a5
                  auipc        a0, 747433
                  sra          sp, a6, a0
                  srli         a3, zero, 13
                  sll          s0, s6, s2
                  lui          s11, 28334
                  ori          t0, t0, -2000
                  sra          tp, t3, t3
                  xor          a3, s9, a7
                  slli         t4, gp, 16
                  slti         s10, t3, -249
                  sra          t4, a3, t0
                  srai         t1, s8, 8
                  and          s4, a3, ra
                  srai         s11, s2, 25
                  xor          a7, sp, gp
                  sra          t5, zero, s10
                  and          ra, s7, a5
                  nop
                  lui          s8, 492433
                  sltu         s10, s0, zero
                  sltiu        a0, t0, 1951
                  slti         s3, a7, 1190
                  slti         s11, tp, 1994
                  slti         sp, s4, -523
                  lui          t1, 21343
                  sll          t0, a0, s9
                  sltiu        t4, ra, -1890
                  xori         s9, s2, -325
                  sll          s4, s0, a0
                  sub          sp, a1, s3
                  xor          a1, s1, s10
                  andi         s9, t5, 1835
                  slt          tp, a4, t3
                  lui          a4, 955363
                  xori         a1, a6, 895
                  add          t4, ra, s9
                  slti         s1, t1, 328
                  slli         s7, zero, 12
                  sll          t4, s3, t6
                  and          a5, s4, s4
                  xor          t4, t6, s9
                  xori         a5, t1, 112
                  sub          ra, tp, s11
                  slli         s9, a4, 20
                  srai         s1, a6, 19
                  sub          a4, a4, a4
                  sra          t2, s0, t3
                  slti         t0, s9, -1529
                  sltu         s7, t0, a0
                  auipc        ra, 582900
                  nop
                  xor          s3, s5, s5
                  addi         s4, t5, 208
                  slti         a0, s6, 1333
                  andi         a5, sp, 1457
                  sltu         s3, ra, s8
                  srai         a1, a6, 31
                  auipc        s8, 1043569
                  slli         t1, s0, 16
                  andi         s11, a1, -288
                  or           t2, t1, s4
                  auipc        a0, 1040057
                  slli         t0, t3, 4
                  and          a1, a7, tp
                  slt          s2, s5, a4
                  andi         s0, a3, 1446
                  slli         t1, s8, 24
                  slt          s2, tp, s7
                  andi         s9, s5, 1824
                  sltu         s1, s8, a1
                  sltu         s10, gp, t4
                  lui          s9, 869912
                  andi         ra, t0, 319
                  lui          ra, 820537
                  srai         t4, t6, 10
                  sub          gp, sp, s6
                  ori          s10, a2, -900
                  srai         s5, s6, 22
                  nop
                  lui          s11, 830561
                  xor          a0, t5, s3
                  add          s11, a4, s0
                  sltu         s10, t1, a5
                  xor          a5, s10, gp
                  and          s7, tp, zero
                  slti         s3, s0, -1868
                  srai         t5, a4, 16
                  sub          zero, a5, s1
                  or           t1, a0, t3
                  ori          sp, s2, 53
                  sra          s7, s10, a7
                  slli         t2, a1, 28
                  sltu         s4, a6, s8
                  addi         tp, s1, -985
                  srai         s9, ra, 22
                  add          s4, t4, s2
                  srli         s2, zero, 23
                  andi         s0, a1, 476
                  srli         a1, t6, 13
                  add          t3, a4, t1
                  slt          s4, a5, s8
                  sub          a0, sp, s1
                  lui          s7, 105602
                  or           a0, t6, a5
                  and          gp, t2, t6
                  slt          a1, s6, a6
                  sll          a3, a2, s1
                  nop
                  or           zero, s1, t2
                  sub          s2, ra, t3
                  slt          s8, s7, a4
                  add          s11, a0, a2
                  nop
                  xori         t4, s6, -1434
                  srl          t3, a6, gp
                  slli         s10, t3, 7
                  add          t3, a2, a2
                  lui          s10, 880583
                  and          ra, s3, t4
                  slti         s10, s5, 890
                  or           s1, s7, t3
                  ori          t5, a3, 1416
                  srl          zero, sp, s11
                  srli         s0, s11, 4
                  addi         s2, s0, -1684
                  slt          s7, s5, s8
                  sltu         a0, t5, s10
                  andi         a1, t2, 1469
                  sltu         t4, t3, s0
                  sra          s4, s4, sp
                  slti         t0, a2, -1118
                  sra          s9, s8, ra
                  ori          s5, s11, 920
                  slt          s8, s6, s11
                  sra          s8, t0, s0
                  srai         a1, t1, 12
                  nop
                  sra          a7, a0, a1
                  ori          a0, s1, -348
                  add          zero, s11, a0
                  xor          t2, a6, sp
                  add          s11, t6, gp
                  sll          a4, a2, a6
                  ori          s10, ra, -527
                  sltiu        tp, s7, -536
                  or           s0, a3, a4
                  xori         a1, s3, 131
                  srai         sp, s4, 24
                  srl          a1, s11, t0
                  sra          t2, t1, zero
                  auipc        zero, 679377
                  xori         t5, t0, 1485
                  addi         s11, s11, -1653
                  auipc        s8, 612546
                  auipc        gp, 789090
                  add          t2, zero, t3
                  slti         s10, zero, -319
                  sub          a0, s8, t3
                  sltiu        t1, s10, 2029
                  or           t2, s8, a6
                  slt          s10, a3, a7
                  andi         t0, t6, -1175
                  sll          s2, s0, a3
                  xori         a7, s6, 1720
                  xori         t5, a3, 1605
                  slti         a5, a5, 1244
                  xor          a1, gp, s0
                  sltiu        s4, s10, -1055
                  auipc        s7, 58755
                  sltu         s2, a6, t0
                  sltiu        sp, a1, -1538
                  sub          s7, s10, s1
                  slti         s10, a7, 162
                  auipc        s2, 336608
                  srl          s2, gp, t3
                  sltu         s4, s9, t3
                  xor          s2, s5, a0
                  slti         t3, t5, 1501
                  sltiu        a7, gp, -34
                  slti         s3, a2, 943
                  srli         t4, s10, 2
                  auipc        s5, 63790
                  nop
                  addi         s3, t4, -478
                  xori         s5, gp, -424
                  ori          ra, a0, 1190
                  and          a0, t0, s2
                  srai         zero, s9, 27
                  slli         a2, s8, 10
                  sltu         t3, sp, t1
                  sltiu        s1, s5, 1550
                  add          t2, s7, tp
                  slti         s8, a3, 1072
                  or           s2, s1, s11
                  addi         s2, a7, -682
                  slti         t3, s1, -623
                  sll          t1, t5, a4
                  srli         s3, s0, 1
                  lui          s9, 999451
                  slli         sp, t4, 24
                  xor          t5, s1, gp
                  or           s11, a7, s7
                  srai         t5, t2, 6
                  lui          s0, 690852
                  xori         s9, a6, -107
                  srl          t3, t1, a3
                  slli         s2, s0, 21
                  sltu         t5, gp, a7
                  sub          ra, a7, a1
                  slt          a2, t1, t4
                  addi         s11, t5, -653
                  xori         a4, a5, 1473
                  ori          ra, s3, 888
                  and          s1, t6, s11
                  srli         s4, s11, 26
                  or           s1, s7, t6
                  ori          s4, sp, 896
                  addi         a1, s2, -1859
                  or           t3, a5, a7
                  add          s0, s1, a4
                  or           a7, t0, zero
                  nop
                  and          s8, a7, s7
                  add          s10, a4, t6
                  slt          a4, s1, tp
                  or           s7, s3, t3
                  slt          a0, s4, zero
                  nop
                  auipc        s11, 294231
                  lui          a4, 293762
                  srli         a1, t5, 20
                  sll          s7, s2, s7
                  sub          a2, a3, a7
                  slli         ra, s9, 8
                  sll          s8, s5, zero
                  addi         a5, gp, 807
                  slt          s10, t6, tp
                  slli         tp, s10, 22
                  nop
                  ori          s7, a7, 648
                  slt          a3, t3, t1
                  add          a5, t4, t5
                  auipc        a2, 811446
                  srl          s4, a5, a2
                  srai         t3, s10, 17
                  auipc        s0, 815690
                  andi         s0, t2, -1419
                  xor          a7, s3, t6
                  sll          s0, t2, t2
                  auipc        a4, 711338
                  slti         a1, gp, 1747
                  sltu         a2, s1, gp
                  xor          t4, t3, s8
                  auipc        s10, 17289
                  slti         s9, s4, -140
                  slti         s3, a6, -968
                  slt          s5, a7, tp
                  slli         a4, a4, 2
                  xori         a3, a3, 1881
                  andi         s9, s9, -766
                  xor          zero, a5, ra
                  add          tp, a2, sp
                  nop
                  slli         a1, t5, 11
                  sub          ra, t0, s3
                  srli         t5, a6, 3
                  srai         s11, a6, 11
                  or           gp, t5, s7
                  or           t0, a1, a3
                  sra          s1, ra, a7
                  sltu         s3, a3, s11
                  slti         t1, a4, -492
                  sll          s9, s5, a0
                  addi         zero, a6, 1676
                  and          a3, t4, a6
                  xori         sp, ra, -208
                  xori         s3, s9, 1106
                  srli         sp, sp, 25
                  slt          t2, a4, t5
                  srai         s0, zero, 9
                  and          sp, t1, s6
                  slt          sp, s7, t6
                  auipc        zero, 132240
                  sll          t0, a5, t3
                  sll          a7, a5, zero
                  sltu         t1, zero, t6
                  slt          s8, t0, a2
                  sll          a4, t6, a3
                  srai         s3, a7, 17
                  and          s10, ra, a7
                  xor          s11, t4, t5
                  xor          t3, s2, a6
                  and          tp, s7, t3
                  sll          a5, s2, zero
                  and          a1, s4, t4
                  xor          a5, t1, a4
                  sltu         s2, gp, ra
                  xor          a2, zero, ra
                  srai         gp, s6, 30
                  sll          s0, s5, tp
                  xori         t4, a1, 1096
                  srai         s3, gp, 20
                  srli         a0, t3, 26
                  srl          t5, a0, s1
                  slti         s9, t0, -1113
                  addi         t1, gp, 689
                  auipc        s8, 854209
                  sra          s1, gp, ra
                  andi         ra, t4, 590
                  ori          s9, t4, 450
                  sll          zero, a5, t3
                  nop
                  andi         zero, s7, -983
                  sll          s11, zero, s6
                  sltiu        t4, ra, -837
                  xori         a3, s3, 1376
                  addi         t4, s1, -1445
                  slli         t2, zero, 25
                  auipc        t3, 420513
                  nop
                  srai         t0, a3, 14
                  slti         t5, s11, -1858
                  and          s5, s1, s7
                  lui          gp, 847251
                  andi         tp, s11, 1967
                  lui          t0, 644703
                  nop
                  slti         sp, s4, 737
                  sll          s3, s6, tp
                  or           t5, t6, s11
                  sra          t1, s11, a0
                  xor          s8, s0, s5
                  srai         s10, s8, 23
                  andi         s0, tp, 1058
                  lui          s11, 754012
                  xori         a0, s9, 120
                  nop
                  sltiu        s8, t3, -607
                  nop
                  slt          sp, t6, s2
                  sub          t2, zero, a0
                  xori         s8, s6, 888
                  addi         s3, t0, 640
                  sra          sp, t4, zero
                  xor          t5, a0, a7
                  sll          s11, a2, t6
                  sra          t5, t2, s0
                  sub          tp, t2, s2
                  xori         s2, a0, -1977
                  sll          t2, ra, s7
                  add          a1, ra, a5
                  nop
                  and          s3, s1, a1
                  sltu         t2, gp, a1
                  sltiu        t0, s8, -1028
                  lui          s7, 859976
                  and          s2, t4, t2
                  sltiu        a3, a0, 1363
                  sll          t0, tp, gp
                  sltiu        s0, s2, -1640
                  xor          gp, zero, t6
                  srl          s5, a3, s9
                  xori         s0, s1, 183
                  sub          a4, a4, s8
                  sra          t4, a1, ra
                  and          tp, t5, a1
                  and          s10, t3, t5
                  sltu         a7, s8, sp
                  slti         s10, sp, 670
                  xori         s3, s11, 1522
                  lui          s3, 471328
                  addi         a3, a4, 304
                  xor          a1, a2, a5
                  or           a5, s10, s11
                  sub          s11, t0, s0
                  slt          gp, s4, a1
                  or           s11, a6, a6
                  and          a5, t6, s11
                  srl          sp, a5, t6
                  nop
                  sltu         t0, t1, t6
                  sub          a4, s3, gp
                  sra          s11, s8, a5
                  xor          tp, gp, a3
                  sltiu        ra, a4, -1857
                  nop
                  sltiu        ra, a7, 3
                  slti         s9, a2, -205
                  sltu         s1, t1, s1
                  nop
                  xor          s0, a2, sp
                  srli         a5, a2, 8
                  andi         a2, t2, -1718
                  slli         s0, t5, 29
                  la x22, test_done
                  jalr x0, x22, 0
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
                  add x31, x16, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_2:
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
                  add x31, x16, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_3:
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
                  add x31, x16, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_4:
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
                  add x31, x16, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_5:
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
                  add x31, x16, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_6:
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
                  add x31, x16, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_7:
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
                  add x31, x16, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_8:
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
                  add x31, x16, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_9:
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
                  add x31, x16, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_10:
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
                  add x31, x16, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_11:
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
                  add x31, x16, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_12:
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
                  add x31, x16, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_13:
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
                  add x31, x16, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_14:
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
                  add x31, x16, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_15:
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
                  add x31, x16, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

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
                  add x31, x16, zero
                  csrr x15, 0x341 # MEPC
                  csrr x15, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x15, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x15, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x15, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x15, x18, ecall_handler
                  li x18, 0x1
                  beq x15, x18, instr_fault_handler
                  li x18, 0x5
                  beq x15, x18, load_fault_handler
                  li x18, 0x7
                  beq x15, x18, store_fault_handler
                  li x18, 0xc
                  beq x15, x18, pt_fault_handler
                  li x18, 0xd
                  beq x15, x18, pt_fault_handler
                  li x18, 0xf
                  beq x15, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x15, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x22, test_done
                  jalr x1, x22, 0

ecall_handler:    
                  la x15, _start
                  sw x0, 0(x15)
                  sw x1, 4(x15)
                  sw x2, 8(x15)
                  sw x3, 12(x15)
                  sw x4, 16(x15)
                  sw x5, 20(x15)
                  sw x6, 24(x15)
                  sw x7, 28(x15)
                  sw x8, 32(x15)
                  sw x9, 36(x15)
                  sw x10, 40(x15)
                  sw x11, 44(x15)
                  sw x12, 48(x15)
                  sw x13, 52(x15)
                  sw x14, 56(x15)
                  sw x15, 60(x15)
                  sw x16, 64(x15)
                  sw x17, 68(x15)
                  sw x18, 72(x15)
                  sw x19, 76(x15)
                  sw x20, 80(x15)
                  sw x21, 84(x15)
                  sw x22, 88(x15)
                  sw x23, 92(x15)
                  sw x24, 96(x15)
                  sw x25, 100(x15)
                  sw x26, 104(x15)
                  sw x27, 108(x15)
                  sw x28, 112(x15)
                  sw x29, 116(x15)
                  sw x30, 120(x15)
                  sw x31, 124(x15)
                  la x22, write_tohost
                  jalr x0, x22, 0

instr_fault_handler:
                  add x16, x31, zero
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
                  add x16, x31, zero
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
                  add x16, x31, zero
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
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x16, x31, zero
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
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x16, x31, zero
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
                  csrr  x15, 0x300 # MSTATUS;
                  csrr  x15, 0x304 # MIE;
                  csrr  x15, 0x344 # MIP;
                  csrrc x15, 0x344, x15 # MIP;
                  add x16, x31, zero
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
