.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x27, h0_start
jalr x0, x27, 0
h0_start:
                  li x23, 0x40000100
                  csrw 0x301, x23
kernel_sp:        
                  la x19, kernel_stack_end

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
                  li x0, 0xf026be42
                  li x1, 0xf2c23243
                  li x2, 0xaebcf273
                  li x3, 0xf6df9613
                  li x4, 0xfdc42fbe
                  li x5, 0xfef5e576
                  li x6, 0xf124653d
                  li x7, 0x4
                  li x9, 0xf8180254
                  li x10, 0xf2b1e01c
                  li x11, 0x7
                  li x12, 0x0
                  li x13, 0x80000000
                  li x14, 0x80000000
                  li x15, 0x0
                  li x16, 0xa
                  li x17, 0x1
                  li x18, 0x80000000
                  li x20, 0x2
                  li x21, 0xf0d819b3
                  li x22, 0x80000000
                  li x23, 0x0
                  li x24, 0x80000000
                  li x25, 0xff294372
                  li x26, 0x0
                  li x27, 0x0
                  li x28, 0xe
                  li x29, 0x0
                  li x30, 0x46ce81ef
                  li x31, 0xfd65cb82
                  la x8, user_stack_end
main:             li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           ra, 0xffffffff
                  li           a3, 0x0
                  li           s9, 0x80000000
                  li           s5, 0x639e21ab
                  li           a7, 0x3d7cd58d
                  li           t4, 0x0
                  li           s10, 0x0
                  li           a1, 0x0
                  li           s2, 0x80000000
                  lui          ra, 831865
                  lui          s10, 247952
                  sub          s10, ra, s2
                  add          a1, a2, s10
                  sub          a2, s2, s2
                  nop
                  auipc        a2, 955491
                  lui          s9, 1031387
                  nop
                  auipc        s9, 386946
                  add          a3, a1, a1
                  nop
                  addi         ra, s10, -1436
                  addi         a7, s5, 902
                  nop
                  add          s9, s2, s10
                  add          s10, s9, s9
                  add          ra, a3, s9
                  nop
                  addi         a7, a7, 998
                  nop
                  lui          t4, 17534
                  auipc        a7, 938160
                  sub          s2, a7, s10
                  nop
                  auipc        ra, 952904 #end riscv_int_numeric_corner_stream_14
                  li           a1, 0xb7c13caa #start riscv_int_numeric_corner_stream_12
                  li           t3, 0xc1959e9d
                  li           s9, 0x0
                  li           a7, 0xffffffff
                  li           t4, 0xffffffff
                  li           a5, 0x0
                  li           a3, 0xa3b143f6
                  li           gp, 0x232cab73
                  li           t0, 0x80000000
                  li           a4, 0x0
                  auipc        a4, 121698
                  add          a1, a1, t4
                  add          a4, a3, t4
                  sub          t3, t3, a4
                  addi         t3, a5, 947
                  sub          a1, t4, a7
                  addi         t3, a1, 1112
                  auipc        a3, 324730
                  sub          a4, gp, gp
                  sub          a5, a1, a5
                  addi         t3, t3, 570
                  sub          a1, a4, gp
                  add          a5, t0, s9
                  auipc        t3, 474544
                  auipc        a7, 975708
                  addi         t4, a3, 430
                  add          a1, a3, gp
                  auipc        a1, 482210 #end riscv_int_numeric_corner_stream_12
                  li           a4, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           a2, 0x0
                  li           s2, 0x80000000
                  li           tp, 0xcf9bd359
                  li           t3, 0x80000000
                  li           s6, 0x80000000
                  li           t1, 0xffffffff
                  li           s5, 0x80000000
                  li           a1, 0xb5064e6a
                  li           sp, 0x4fa1fa99
                  sub          t3, tp, a1
                  auipc        t3, 914670
                  auipc        a2, 48875
                  nop
                  lui          a4, 358329
                  add          s2, a4, t1
                  addi         t1, tp, -226
                  auipc        s6, 407354
                  sub          t3, sp, t3
                  lui          s5, 979659
                  sub          s6, s2, t3
                  lui          s5, 953020
                  auipc        tp, 197637
                  lui          t1, 970576
                  lui          a1, 352581 #end riscv_int_numeric_corner_stream_5
                  li           s2, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           t5, 0x0
                  li           s9, 0x0
                  li           tp, 0x2c7d44b9
                  li           ra, 0xdcec760c
                  li           a2, 0x80000000
                  li           s10, 0xa9041cea
                  li           a0, 0x2a0a6c76
                  li           s7, 0x80000000
                  li           a4, 0x80000000
                  add          a2, s7, tp
                  addi         s2, a0, 260
                  auipc        s2, 991947
                  sub          t5, t5, s7
                  lui          s2, 914513
                  auipc        s7, 674294
                  addi         s10, s2, -849
                  add          s9, a4, a4
                  addi         s7, a0, 488
                  lui          s7, 858090
                  auipc        a4, 897067
                  addi         a4, tp, 72
                  sub          ra, s9, a4
                  addi         a0, tp, -810
                  lui          a2, 437889
                  addi         a2, t5, -963
                  lui          s7, 226343
                  auipc        a2, 376585
                  auipc        a2, 888550
                  sub          s7, s7, ra
                  nop
                  auipc        t5, 1340
                  sub          a4, t5, a4
                  sub          s10, s7, tp
                  lui          a2, 353832
                  auipc        a2, 19447
                  sub          a4, s9, s10
                  addi         tp, ra, 952
                  sub          ra, a0, tp
                  nop #end riscv_int_numeric_corner_stream_11
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           gp, 0xffffffff
                  li           t4, 0x80000000
                  li           s4, 0x0
                  li           s9, 0xffffffff
                  li           a0, 0xd743047
                  li           ra, 0x0
                  li           s8, 0x0
                  li           t3, 0x80000000
                  li           t0, 0x80000000
                  addi         s9, t4, 145
                  add          s8, gp, t4
                  nop
                  addi         gp, ra, -1798
                  auipc        s9, 735130
                  nop
                  sub          t3, a0, t3
                  add          a0, s9, gp
                  auipc        s9, 69803
                  sub          t3, a0, s8
                  addi         s9, s8, -1928
                  add          t4, gp, t3
                  lui          a4, 184244
                  sub          a4, t4, s8
                  add          ra, ra, t4
                  auipc        gp, 952731
                  nop
                  nop
                  add          t3, t3, a0
                  lui          t0, 960328
                  add          s4, s9, t0
                  addi         gp, gp, 271
                  addi         s8, ra, -1284
                  addi         gp, gp, -1845
                  lui          t0, 18661
                  add          t4, a4, gp #end riscv_int_numeric_corner_stream_7
                  li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           gp, 0xffffffff
                  li           a3, 0x41ddd815
                  li           sp, 0xffffffff
                  li           t4, 0x80000000
                  li           t6, 0x80000000
                  li           s4, 0x80000000
                  li           a0, 0xffffffff
                  li           s6, 0xffffffff
                  li           t5, 0xcf175e90
                  lui          t6, 672647
                  addi         t4, gp, -1635
                  auipc        t6, 247459
                  lui          t6, 574022
                  add          a0, t4, gp
                  auipc        t4, 125319
                  auipc        s4, 228766
                  auipc        a0, 102910
                  sub          t3, t5, t5
                  nop
                  sub          t4, sp, t5
                  addi         s6, t4, 298
                  auipc        t5, 429933
                  auipc        t3, 917599
                  sub          sp, t6, a0
                  auipc        gp, 910972
                  nop
                  addi         s4, s4, 2016
                  lui          t4, 452151
                  auipc        s4, 409917
                  sub          s6, a0, t5
                  addi         t6, t3, 1427 #end riscv_int_numeric_corner_stream_8
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           a5, 0x80000000
                  li           ra, 0x0
                  li           t4, 0x80000000
                  li           a4, 0xffffffff
                  li           t6, 0x80000000
                  li           s7, 0xffffffff
                  li           s6, 0x1fa9f35b
                  li           t2, 0x80000000
                  li           s4, 0xffffffff
                  add          t6, t2, a5
                  auipc        s6, 20037
                  auipc        s9, 283680
                  sub          s7, s6, a5
                  addi         s7, ra, 1200
                  nop
                  add          t2, s4, s9
                  sub          ra, s6, t6
                  addi         a5, s4, 1196
                  lui          s7, 47418
                  add          t6, a4, t6
                  nop
                  sub          s6, t2, a4
                  lui          s7, 204997
                  sub          t6, t2, s4
                  nop
                  auipc        s9, 593108
                  add          s4, ra, s9
                  nop
                  lui          s9, 368589
                  add          s6, s7, t4
                  addi         s4, a4, 511
                  addi         t6, a5, -1182
                  sub          s9, t6, ra
                  auipc        ra, 696054
                  nop
                  nop
                  add          t4, t6, s7
                  add          ra, t6, s6 #end riscv_int_numeric_corner_stream_10
                  srai         ra, ra, 19
                  addi         zero, ra, 1685
                  nop
                  slli         a0, s11, 20
                  xor          sp, s3, s4
                  ori          gp, a7, 1588
                  sltu         a6, t1, s3
                  sra          a7, a7, gp
                  slli         t5, s3, 31
                  srli         s9, a5, 1
                  addi         a6, a6, -1935
                  srl          a0, t0, t4
                  slt          s1, t6, t6
                  sra          a0, gp, a0
                  slli         a7, s9, 30
                  auipc        s4, 26748
                  slli         s7, a4, 13
                  sra          sp, s5, s11
                  lui          t6, 832686
                  srl          t3, s7, s10
                  slli         t6, t4, 6
                  auipc        t4, 190017
                  srai         t0, t0, 30
                  auipc        a7, 881345
                  addi         t2, s0, -1515
                  slli         t3, t2, 22
                  slli         s8, t5, 29
                  sra          t5, s1, tp
                  sltu         a7, a7, gp
                  srli         zero, t2, 14
                  sub          t1, a6, s1
                  sltu         s2, t3, a2
                  addi         t0, a3, -1563
                  xori         gp, t2, 435
                  srl          t0, t2, tp
                  sub          s4, zero, a1
                  auipc        t4, 166427
                  nop
                  srl          a7, a7, a5
                  andi         gp, s6, -1998
                  and          a1, s6, s2
                  or           t2, a5, a2
                  xor          ra, ra, a7
                  nop
                  srli         t1, a7, 8
                  ori          t3, s5, -111
                  andi         t2, ra, 31
                  sll          sp, t3, gp
                  srli         t1, a6, 1
                  srl          a4, s5, a4
                  and          a4, s4, sp
                  lui          a3, 971630
                  slti         tp, a5, 932
                  sltu         s10, s5, a6
                  sub          s6, s9, s0
                  slti         tp, t1, 491
                  srai         tp, s10, 7
                  xor          gp, t2, s9
                  sltiu        a6, t1, -1515
                  addi         t4, t3, -2005
                  srai         a4, a0, 29
                  sltiu        s6, t6, 1525
                  or           a7, t4, s0
                  xori         t5, s3, -1533
                  srl          sp, t1, a0
                  andi         t1, a5, 1130
                  slli         a5, a5, 25
                  srl          s5, zero, t0
                  lui          s5, 77365
                  add          s4, s3, s10
                  addi         t6, t3, -842
                  sub          a0, s11, s5
                  addi         a3, a3, 502
                  sltiu        t5, s7, -369
                  slti         t6, s10, 378
                  sll          s1, t2, s3
                  ori          gp, s5, 495
                  andi         s9, sp, -333
                  xori         t2, ra, -1865
                  lui          a6, 527513
                  and          zero, t2, gp
                  slt          tp, gp, t1
                  sltu         t5, gp, a7
                  and          s2, s11, s0
                  slti         t4, a5, 1696
                  xori         a4, a4, -1771
                  andi         t5, a1, -953
                  sra          s6, t6, a2
                  sltiu        s4, s6, -1864
                  ori          t1, ra, -1365
                  xor          s1, a1, a3
                  sltiu        s9, s4, -289
                  slti         gp, a2, -1735
                  sll          ra, sp, a6
                  sltiu        a6, a7, 937
                  ori          t6, a4, -695
                  sra          gp, s3, zero
                  srai         t1, t0, 25
                  lui          ra, 905533
                  sra          a7, a0, t6
                  srli         s6, s9, 11
                  ori          a2, s8, 359
                  sra          t2, s10, t0
                  sltu         s9, s4, s6
                  slli         s9, a3, 11
                  slli         s6, s0, 28
                  slt          a7, zero, s1
                  sub          t5, s5, sp
                  nop
                  lui          s1, 355571
                  nop
                  lui          s1, 1003936
                  andi         s9, a6, -1279
                  lui          t4, 983644
                  slli         a7, ra, 28
                  sub          zero, a2, s7
                  xor          t2, s4, ra
                  sll          tp, s9, sp
                  sltiu        t1, gp, -1319
                  sll          t6, t6, a3
                  srl          s5, s2, gp
                  xori         t4, t0, 917
                  or           a3, s8, s1
                  srli         s10, t3, 16
                  srli         t2, s5, 14
                  xor          a2, ra, s5
                  xor          zero, a0, a3
                  slt          a1, s9, a3
                  slti         s1, a7, 1062
                  slli         s2, s7, 22
                  srl          s4, t6, a2
                  lui          t5, 193637
                  srai         a4, a2, 16
                  sll          a4, a2, t5
                  ori          ra, s11, -395
                  and          t4, a2, t0
                  andi         t1, s7, -1046
                  sltu         a7, zero, a2
                  and          s6, tp, s10
                  slt          t2, a2, s9
                  srl          zero, t3, ra
                  sra          t4, a3, s3
                  and          s2, s2, s7
                  and          gp, tp, t4
                  slti         s2, a2, 1008
                  sll          s2, a7, zero
                  slt          gp, ra, s0
                  ori          s6, s8, -94
                  slli         t5, ra, 24
                  lui          a7, 887005
                  sll          s2, gp, s6
                  sub          t2, t5, s6
                  slt          sp, tp, ra
                  and          t1, a5, a6
                  srli         s4, t2, 15
                  srai         sp, a4, 8
                  or           s5, zero, a7
                  auipc        a4, 583281
                  ori          s8, a4, -1357
                  slli         gp, s8, 19
                  add          s9, a6, a7
                  xori         tp, s0, -265
                  sll          t1, a2, s10
                  srai         gp, s3, 1
                  lui          tp, 673195
                  sra          t2, t0, s1
                  srai         t4, s10, 23
                  nop
                  sub          ra, t3, t3
                  sra          s9, s7, gp
                  nop
                  sub          t2, t5, s9
                  slli         ra, a5, 18
                  addi         s8, tp, 844
                  sra          ra, s11, s11
                  andi         s10, s8, -1743
                  slli         s9, a2, 0
                  or           t2, tp, tp
                  addi         s4, t6, -1883
                  sub          a0, a2, s5
                  lui          a7, 122584
                  xor          s1, s5, gp
                  andi         s5, s3, 1986
                  and          gp, t3, s6
                  srai         s7, t5, 29
                  slt          zero, a4, t4
                  slli         s6, t2, 22
                  sll          s6, s11, a3
                  nop
                  sltu         a1, s7, s4
                  srli         t1, s3, 6
                  xori         s4, a5, 1798
                  ori          a1, a3, 1278
                  and          ra, a0, s9
                  srl          t4, a2, a6
                  addi         a7, a0, 740
                  and          a4, t4, a7
                  slt          a6, s7, t1
                  slt          t0, s4, a4
                  srli         a7, a2, 26
                  add          a3, tp, s7
                  srli         tp, a4, 15
                  lui          tp, 577301
                  auipc        a5, 678602
                  add          t2, s7, a5
                  srl          s4, a3, s6
                  slli         a2, t5, 31
                  srai         t5, s0, 6
                  xor          t6, s9, t4
                  nop
                  add          zero, a1, a0
                  srl          s6, s5, a6
                  auipc        s8, 380216
                  andi         a0, a0, 228
                  ori          s9, s8, 978
                  lui          s4, 310114
                  sll          s8, s9, s9
                  sltiu        tp, s1, -263
                  slt          a5, t1, s7
                  nop
                  or           t1, t3, a1
                  sub          sp, s9, a1
                  auipc        s2, 1026859
                  sltu         s9, t4, s4
                  sub          t0, s5, a3
                  nop
                  add          a2, t2, s8
                  auipc        a1, 97424
                  sltiu        a4, a4, -820
                  nop
                  sll          t1, s9, s11
                  slt          tp, s10, gp
                  sra          sp, s3, sp
                  sltiu        gp, tp, 585
                  srai         gp, t0, 17
                  lui          gp, 317507
                  slli         s5, a7, 18
                  srli         s7, s3, 5
                  addi         a1, t1, 779
                  addi         t6, t6, -1055
                  addi         s10, s8, 988
                  or           s5, s10, s2
                  sll          s9, s4, s10
                  add          a0, zero, s9
                  sll          a7, t0, ra
                  addi         t1, s1, 1425
                  sltiu        a2, s10, 1978
                  andi         t3, s9, 1187
                  andi         a6, s1, 308
                  srl          t2, t5, tp
                  srli         tp, a4, 9
                  srli         s1, s4, 29
                  add          s8, tp, a7
                  ori          s9, s6, -1113
                  slli         zero, t3, 6
                  sltu         t1, s2, a1
                  lui          a3, 669928
                  lui          a4, 599648
                  and          t2, s0, s0
                  srli         s7, a7, 27
                  sltiu        s9, a0, 1780
                  sltu         s8, sp, t5
                  xor          a0, sp, zero
                  xori         s9, s2, -1194
                  slli         a5, gp, 3
                  nop
                  ori          s2, a0, -67
                  auipc        a1, 180110
                  sltu         t4, s0, s3
                  sll          a2, t0, s1
                  ori          a5, t5, 1156
                  slli         t5, t3, 24
                  sra          t5, s0, a0
                  and          s10, t4, tp
                  slt          sp, a4, a0
                  slli         a4, a2, 27
                  sltu         s4, zero, a6
                  and          sp, s1, zero
                  sra          a7, a1, s0
                  slti         a5, s6, 828
                  xori         t2, tp, -1973
                  and          s6, s2, a1
                  sll          t6, gp, t5
                  add          s10, s3, tp
                  slti         s4, a7, 724
                  addi         zero, a1, 1580
                  srl          t4, s0, a7
                  xori         t4, a3, -1378
                  srli         a6, s1, 3
                  srai         sp, t6, 24
                  slti         a6, sp, -375
                  slli         s5, a3, 8
                  slti         t4, a4, -2037
                  sra          s2, a0, t1
                  andi         s9, a6, 834
                  xor          s5, tp, s9
                  addi         a3, sp, -1405
                  xori         s2, s3, -910
                  andi         t2, t4, 2
                  slli         gp, a1, 12
                  srl          s10, s3, sp
                  ori          s7, a1, -359
                  sltiu        s4, t0, -1771
                  nop
                  andi         gp, a0, -464
                  slli         t1, a3, 9
                  sll          s9, a0, s10
                  or           t2, a2, s7
                  addi         a7, sp, 542
                  nop
                  or           t2, t3, s0
                  sltiu        zero, sp, 1986
                  or           t3, s4, t4
                  andi         s8, zero, -89
                  andi         t4, s2, -867
                  addi         t0, s8, 1945
                  andi         a5, s3, -798
                  xori         a4, s0, 138
                  xori         zero, s3, 106
                  sltiu        t5, s2, 1502
                  srai         t5, s4, 15
                  srli         t4, t3, 10
                  addi         a6, t3, -110
                  or           t2, t3, tp
                  slti         s4, s5, 1467
                  addi         a2, gp, 1132
                  andi         s10, s5, -1051
                  sll          a1, s4, s9
                  add          a4, s10, tp
                  sub          a4, ra, t6
                  nop
                  srl          s4, s7, a7
                  slt          t6, s6, s10
                  add          s6, a4, t2
                  slli         a6, a2, 21
                  nop
                  auipc        t1, 166965
                  sll          s6, gp, s9
                  addi         s5, s1, 901
                  xor          t3, sp, a3
                  xori         t6, s3, 1208
                  sltu         s10, s8, s11
                  or           t5, s11, s10
                  sll          t5, sp, a2
                  sltiu        s7, a0, 1078
                  or           s7, t6, a0
                  li           t1, 0xb542aaa8 #start riscv_int_numeric_corner_stream_4
                  li           tp, 0xffffffff
                  li           sp, 0x0
                  li           t3, 0xffffffff
                  li           s8, 0x0
                  li           a4, 0x80000000
                  li           s5, 0xb438e8f
                  li           a3, 0x0
                  li           gp, 0x80000000
                  li           a7, 0x0
                  nop
                  addi         a3, a3, 111
                  nop
                  add          tp, tp, t3
                  add          a4, a7, a7
                  auipc        t3, 622174
                  auipc        sp, 748887
                  addi         a3, tp, -159
                  add          a4, t3, tp
                  add          t1, gp, s8
                  lui          s5, 925962
                  sub          s5, a3, s8
                  lui          a4, 611844
                  sub          a7, a7, s8
                  auipc        a3, 795768
                  addi         gp, s8, -679
                  sub          t1, a3, s8
                  sub          a3, t1, tp
                  lui          t3, 267906
                  sub          sp, t3, s8
                  addi         gp, t3, 2
                  add          s5, a4, sp
                  nop
                  lui          sp, 345939 #end riscv_int_numeric_corner_stream_4
                  sra          t1, s4, s2
                  xori         s7, s0, 360
                  lui          t0, 752282
                  andi         t2, t6, 1492
                  add          s1, t0, t0
                  ori          zero, s1, -99
                  and          a1, a0, a6
                  sltu         a5, a5, t6
                  add          t2, tp, s5
                  add          t1, s7, a1
                  auipc        t2, 1026255
                  sltu         a5, s3, s0
                  xor          a6, s3, t0
                  sltu         a0, a3, tp
                  addi         s1, s7, 164
                  srl          s9, zero, a2
                  slli         s6, s1, 16
                  auipc        t0, 534697
                  auipc        s10, 830033
                  srai         s1, a0, 24
                  nop
                  lui          a5, 445488
                  sltu         ra, a2, a1
                  slt          gp, gp, t6
                  srai         t5, a6, 20
                  sll          s1, s10, s11
                  xori         s1, t2, -2010
                  xor          t5, a6, s0
                  slli         a1, sp, 17
                  add          gp, t2, s10
                  sltiu        t0, a5, -1898
                  sltiu        zero, s0, 37
                  add          s7, t0, tp
                  add          t0, s6, t3
                  srl          t5, s3, a0
                  nop
                  or           t0, t4, t2
                  srai         t4, s6, 25
                  addi         a4, t5, -1225
                  srli         tp, t2, 7
                  andi         t2, gp, -1721
                  xori         t3, t1, -342
                  sll          a6, a6, s2
                  add          zero, t5, t6
                  auipc        a4, 431482
                  srl          s9, a5, gp
                  add          s9, s8, a7
                  srl          a5, s0, s2
                  slli         s1, ra, 7
                  auipc        a1, 963596
                  srai         a2, s5, 28
                  slti         a1, zero, -1226
                  xor          t1, s0, s0
                  nop
                  srli         a2, ra, 10
                  auipc        s9, 385174
                  srli         a0, s0, 11
                  sll          a1, s6, s7
                  and          s1, t3, s10
                  andi         a0, s2, -1203
                  add          s8, gp, s3
                  slt          a1, s0, t4
                  nop
                  ori          a6, s9, 165
                  slt          ra, s4, s0
                  sra          t3, s1, a1
                  and          s8, t0, a5
                  lui          t2, 255458
                  addi         t3, a6, -1630
                  sub          zero, t3, s5
                  andi         a7, t1, -577
                  srai         a6, a4, 13
                  sra          s1, a1, a1
                  sltu         sp, s3, a6
                  xor          s4, t0, a1
                  add          a2, s3, ra
                  add          s4, s2, s1
                  sltu         s10, s7, s9
                  addi         t6, s9, -410
                  lui          s6, 542042
                  sll          a0, a1, s2
                  auipc        s6, 327406
                  li           t5, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           gp, 0x27c26ba4
                  li           a7, 0xffffffff
                  li           t3, 0x80000000
                  li           a2, 0xffffffff
                  li           a3, 0xffffffff
                  li           a6, 0x5670b0b7
                  li           s1, 0xffffffff
                  li           sp, 0xffffffff
                  li           s5, 0x80000000
                  lui          sp, 908113
                  nop
                  auipc        sp, 955840
                  addi         a3, t3, -1492
                  auipc        s5, 913183
                  addi         a2, a6, 410
                  auipc        t3, 444084
                  auipc        t5, 508962
                  nop
                  addi         t5, t3, 2031
                  nop
                  lui          t5, 870237
                  add          a7, sp, s5
                  auipc        a7, 542541
                  lui          a3, 274141
                  lui          t5, 179779
                  add          sp, sp, a2
                  lui          t3, 65661
                  auipc        s1, 267976
                  auipc        t5, 500883
                  addi         s1, a7, 363
                  auipc        t3, 412037
                  addi         a2, gp, 994
                  sub          s5, s5, s1
                  nop
                  nop
                  add          a3, gp, a7
                  nop
                  nop
                  add          gp, s1, t3 #end riscv_int_numeric_corner_stream_13
                  srl          t3, a3, sp
                  andi         t2, t6, 1661
                  sltiu        s2, s1, -511
                  and          s4, t6, t3
                  slti         a6, a3, 364
                  addi         a1, t1, 922
                  or           a5, a5, t3
                  slli         t1, a7, 14
                  slt          a5, s8, s11
                  slt          s1, s9, t2
                  sltiu        zero, t3, 1673
                  auipc        a2, 926260
                  auipc        zero, 566170
                  sub          a4, s0, s3
                  srli         a0, s5, 2
                  addi         s9, zero, 751
                  auipc        t6, 511190
                  slli         a4, s1, 27
                  xor          s6, s3, t4
                  andi         a5, a7, -2038
                  or           t6, a0, t5
                  sll          s7, a2, s11
                  lui          t4, 965656
                  ori          tp, a5, -193
                  slt          a0, s5, s5
                  andi         a5, s11, -1582
                  ori          tp, a6, 70
                  xor          t4, t4, tp
                  sltu         s1, s3, s5
                  sltiu        a7, a4, 1730
                  ori          sp, a6, -1047
                  sll          t0, s0, a3
                  ori          gp, a0, 1834
                  and          a1, a5, t1
                  xori         t6, a4, -551
                  ori          a0, zero, 1474
                  nop
                  lui          t6, 262369
                  sll          t0, zero, t5
                  sltu         ra, s4, s10
                  addi         s8, t4, -127
                  sltu         s10, t3, t6
                  sra          a1, t3, t0
                  sltiu        gp, tp, -7
                  slti         t4, a5, 1984
                  xor          t3, s9, t6
                  xori         s5, s4, 131
                  andi         a7, t6, 580
                  sltiu        s6, t0, -1792
                  xor          ra, s0, t4
                  slti         s9, t6, -1012
                  sll          a3, a3, t4
                  andi         t5, s0, 497
                  auipc        a6, 715926
                  add          t6, gp, a1
                  lui          s10, 581551
                  and          gp, a3, t5
                  xor          sp, ra, t4
                  sra          gp, s9, s11
                  slti         t6, s10, -563
                  xor          s2, s10, a4
                  lui          a0, 1048162
                  sub          s5, a7, s0
                  add          s5, t4, t5
                  srli         tp, a3, 8
                  sra          s1, s2, s1
                  xor          a2, zero, a4
                  sub          a2, s11, s8
                  sra          t6, t0, a0
                  add          t1, a0, s0
                  xori         a1, s7, 826
                  sltu         t2, zero, a5
                  sub          s10, s0, t0
                  or           a4, sp, t6
                  xori         t6, s8, 653
                  slti         a7, t5, -1681
                  srl          t5, s5, s7
                  slt          s5, t5, s7
                  slli         s8, s1, 22
                  or           s1, t1, s5
                  or           ra, gp, s5
                  xori         ra, gp, 828
                  sltiu        s8, a0, 261
                  slt          s7, t1, t4
                  sub          s5, s6, a1
                  ori          s9, t6, 721
                  lui          zero, 940155
                  slti         t4, t3, -1677
                  auipc        tp, 12810
                  addi         tp, a3, -548
                  sra          t6, s10, t5
                  addi         s5, s1, -1946
                  andi         s2, t3, 16
                  auipc        a6, 341784
                  or           a0, t5, s10
                  andi         t1, a3, 170
                  sll          a4, tp, s4
                  slti         t2, s2, 649
                  or           zero, gp, s3
                  sra          t2, s5, a3
                  slli         a2, a5, 17
                  xor          t3, s9, t1
                  srli         sp, t4, 13
                  slti         s7, zero, -1573
                  srli         s6, gp, 14
                  lui          ra, 303982
                  sra          s8, s8, zero
                  xor          s6, tp, s8
                  sra          s4, a0, ra
                  slti         s7, s2, 128
                  sltiu        s8, gp, -619
                  srai         gp, s11, 0
                  xor          t5, s3, a1
                  srl          a3, gp, s9
                  auipc        a1, 358297
                  sub          a6, ra, s9
                  auipc        a6, 80502
                  srl          t2, s2, s4
                  andi         s8, s0, -364
                  andi         s6, a6, -91
                  sub          a1, a5, a5
                  add          s7, s9, s4
                  srl          sp, a1, t1
                  sub          a0, a1, s1
                  lui          t0, 629385
                  xor          a1, s0, t0
                  slti         ra, s10, -1979
                  srli         a4, s1, 29
                  addi         s5, s5, 32
                  add          ra, t0, a6
                  slli         a1, s0, 14
                  sltiu        s6, a3, 990
                  sltiu        s7, s1, 1388
                  slli         a3, t2, 12
                  addi         gp, a5, -1544
                  slli         t3, a6, 7
                  xor          a4, s10, a6
                  slli         a1, s6, 22
                  sltiu        a7, a0, -71
                  add          ra, s5, s4
                  sltiu        s1, tp, 614
                  srl          s10, s9, sp
                  xori         a7, s6, 297
                  nop
                  srai         s5, a7, 11
                  xori         s9, s3, -1476
                  add          s1, a0, zero
                  nop
                  nop
                  sub          t6, sp, t4
                  sra          a5, gp, s7
                  lui          t6, 294999
                  auipc        tp, 644359
                  srli         s4, zero, 25
                  addi         zero, t1, 1086
                  nop
                  add          a1, t6, a0
                  sub          a2, s8, s11
                  sra          t2, a3, a3
                  or           s7, a6, s11
                  or           s1, t6, a7
                  sltiu        t3, zero, 219
                  addi         t4, a3, -1273
                  or           s2, s1, s11
                  xori         t3, s3, -1067
                  sub          s8, s0, s3
                  add          t0, s7, s11
                  sll          s7, tp, sp
                  sltiu        a1, a1, 409
                  andi         s2, zero, 648
                  sll          s5, a4, a0
                  sub          t4, a5, a1
                  or           a7, zero, a3
                  sltiu        s2, zero, -799
                  srl          s1, s10, gp
                  slli         s4, s3, 25
                  andi         a3, a4, -1143
                  sub          s1, s4, s6
                  sltiu        t2, s5, -965
                  srai         s7, t6, 0
                  sltiu        s6, a4, -1203
                  auipc        a5, 306106
                  slti         sp, a5, -1220
                  xori         a6, tp, -715
                  srli         a1, s5, 25
                  nop
                  sra          sp, t1, t4
                  slt          s8, t2, a1
                  slt          s4, s4, s2
                  and          a6, t2, s0
                  sub          t6, a6, a0
                  auipc        t1, 850311
                  srai         a1, ra, 17
                  xor          s6, s11, a1
                  xor          s1, s2, s4
                  slt          a0, t2, t6
                  srai         a3, a2, 22
                  sll          t4, a5, sp
                  addi         s6, s10, -1538
                  sltu         s4, tp, a0
                  srl          a2, s4, s0
                  and          a2, t4, t6
                  slt          t0, s3, a5
                  sll          a4, s8, t2
                  sltiu        s8, s4, 2020
                  nop
                  slt          a5, t4, a5
                  or           s8, s11, s11
                  slt          s4, a2, t3
                  auipc        s2, 125197
                  sra          t5, s8, t3
                  sll          a0, s6, a7
                  xor          a6, t0, t0
                  srli         t1, a3, 10
                  slti         ra, s7, 643
                  slli         gp, s4, 26
                  sra          sp, s9, a7
                  slli         a3, ra, 29
                  srl          t2, tp, t1
                  srli         t0, s5, 5
                  auipc        t3, 456437
                  slt          a6, tp, s0
                  add          t3, a5, s1
                  or           t6, t6, s9
                  auipc        a4, 132617
                  and          a5, ra, gp
                  sll          a3, s1, s4
                  sltiu        t5, t0, -1205
                  sra          a0, s0, a1
                  auipc        s5, 114654
                  xor          s7, s0, a0
                  sltiu        t5, t3, -1662
                  or           a2, t0, gp
                  lui          a6, 770798
                  or           t0, s1, t6
                  or           t6, a6, a5
                  slt          t0, a0, a5
                  add          t4, ra, t3
                  or           s5, s7, a6
                  add          t2, s8, tp
                  nop
                  slti         tp, a7, 724
                  ori          a7, s1, 1589
                  xor          a3, t4, gp
                  slt          t0, t4, a1
                  xor          t4, zero, ra
                  slti         a0, a4, -1104
                  xor          t5, a0, a0
                  slti         s6, t5, 1987
                  slti         s5, s1, 936
                  srai         t0, s2, 14
                  srli         a1, a0, 28
                  or           ra, a5, t4
                  lui          s2, 363880
                  ori          s1, t0, -1316
                  sra          a1, t5, s0
                  lui          s2, 595509
                  ori          s5, s4, -947
                  add          s7, ra, t6
                  add          a0, a2, ra
                  lui          t5, 367886
                  xor          s4, t3, t0
                  sra          a4, a1, s3
                  slli         t3, s0, 30
                  sra          a7, s1, t5
                  srl          gp, s4, s4
                  srl          s10, a4, t5
                  srai         s5, s3, 30
                  sltiu        a6, s0, 1456
                  srai         s5, a4, 8
                  and          s9, t4, s1
                  xor          ra, s11, t4
                  sub          t4, tp, a3
                  andi         s8, s4, -1431
                  auipc        t6, 246624
                  sra          t1, sp, a1
                  sub          s4, t2, t3
                  ori          a7, ra, 40
                  sltu         t3, s2, a3
                  addi         t3, t1, 1488
                  lui          t2, 166364
                  addi         a3, s11, 684
                  slli         s6, gp, 1
                  nop
                  or           a0, t1, t1
                  addi         a3, s0, -513
                  xor          s2, zero, t0
                  xor          sp, s11, s4
                  xor          t2, tp, t0
                  and          s8, s7, s4
                  or           a0, zero, a2
                  slti         a7, s6, 1653
                  sltu         a6, s7, a5
                  ori          a6, a7, -1649
                  nop
                  and          s1, s7, s1
                  srl          t3, s3, t2
                  sub          s4, a2, a0
                  srl          a0, a1, a4
                  add          t4, s0, sp
                  auipc        s2, 712800
                  nop
                  xori         sp, s9, -1233
                  addi         s8, s11, 736
                  lui          a5, 566900
                  srl          s8, tp, t6
                  ori          a3, a2, 1689
                  sltu         s8, s6, a7
                  sltiu        s6, s1, 640
                  slti         gp, s11, 1914
                  slti         a0, t5, -1348
                  xori         a4, a2, 1118
                  ori          s9, a0, 502
                  xori         s1, s9, -98
                  nop
                  srl          s10, sp, t3
                  lui          sp, 778256
                  xori         s6, t4, 848
                  xori         t5, s8, -1255
                  add          a5, t6, ra
                  addi         s2, s2, 261
                  sra          s9, t2, s10
                  lui          a2, 222237
                  or           s9, a6, tp
                  xor          s10, t6, s11
                  xor          ra, s3, t1
                  addi         a2, t1, 1155
                  srl          zero, s6, a2
                  andi         s10, a0, 1488
                  add          sp, zero, t1
                  and          a0, a0, s10
                  sltu         gp, sp, s5
                  sltiu        a1, a0, 1324
                  xor          s1, tp, s2
                  srli         s5, s2, 4
                  nop
                  srl          t0, s9, a0
                  sub          t1, t0, s10
                  srl          t5, gp, t3
                  ori          s8, t1, 1409
                  sra          a4, s7, a5
                  srai         a2, zero, 10
                  slli         a2, a1, 17
                  or           s7, gp, s5
                  sub          gp, a2, a3
                  or           a5, t6, tp
                  slti         a6, s7, 2020
                  srl          zero, a6, t6
                  nop
                  lui          s1, 112542
                  or           s10, s5, s2
                  and          s8, s9, s9
                  sub          ra, s3, a4
                  and          t5, t1, t2
                  ori          a3, t2, 928
                  srl          t3, a4, s11
                  slli         a4, a0, 29
                  xor          a4, a1, a1
                  sltiu        s6, t0, 1275
                  slli         tp, s7, 17
                  srai         a7, t5, 30
                  xori         t2, sp, 1962
                  xori         s2, s1, -1121
                  lui          a7, 504034
                  srl          a6, s5, gp
                  srl          s8, a7, a5
                  addi         t3, s3, -198
                  xor          s5, s6, sp
                  sll          t3, s0, sp
                  sltu         tp, t3, s7
                  sltu         sp, zero, a1
                  srl          t1, s5, s10
                  and          s1, tp, zero
                  addi         s9, a2, 1929
                  srli         a0, s11, 21
                  nop
                  andi         s9, gp, 1101
                  sltu         a0, t1, gp
                  andi         a6, s8, 265
                  sub          s5, sp, s4
                  sltiu        a5, s6, -1585
                  addi         a2, s4, -1860
                  sra          s8, gp, a1
                  srl          a7, t2, t4
                  slti         t5, s10, 983
                  sub          a0, a5, zero
                  nop
                  srli         a6, t2, 2
                  ori          a6, s5, -628
                  sra          a4, t3, s5
                  or           s9, s5, t5
                  slti         s5, t3, -770
                  sltiu        s2, t4, 805
                  srli         a2, s8, 7
                  sltiu        a2, s1, -437
                  ori          a6, a3, -1749
                  sltiu        s1, a3, 1638
                  srl          a6, a3, zero
                  or           s2, s8, a7
                  ori          s10, t1, 1378
                  xori         t2, s9, 969
                  srl          s5, t0, t5
                  sub          a7, a1, t4
                  slli         zero, t0, 9
                  sll          s5, a4, a3
                  and          s7, t4, s3
                  sltu         s7, a7, s1
                  lui          a0, 115283
                  auipc        t2, 1008358
                  auipc        t0, 717644
                  sltiu        t4, s4, 1927
                  xori         t6, a0, 689
                  nop
                  srai         tp, a2, 11
                  andi         a1, t5, 548
                  slt          a0, s7, t6
                  sub          s1, s11, t3
                  andi         ra, t6, 1932
                  and          a0, a6, s9
                  slt          t3, s6, s9
                  sltu         t6, t2, s11
                  and          tp, t2, s8
                  sltu         s8, a3, t6
                  slti         gp, t6, 1581
                  andi         t6, s2, -914
                  or           a2, t1, t6
                  and          t5, a5, a7
                  sll          s8, s0, a4
                  or           s1, s5, a7
                  slli         gp, a7, 4
                  sll          t3, ra, zero
                  srli         tp, t4, 10
                  srai         zero, t4, 25
                  or           a7, s5, t4
                  srl          a3, s3, s7
                  xor          a6, s8, s8
                  slli         t5, s0, 19
                  sll          s8, s11, s3
                  slt          a1, t5, s1
                  sltu         s8, s4, zero
                  slti         a4, a6, 715
                  sll          t1, t4, tp
                  auipc        zero, 1040063
                  slli         a2, s4, 20
                  addi         s6, a0, -1456
                  or           t4, s1, t4
                  sltiu        t0, s2, -1467
                  add          s4, tp, s0
                  sub          t1, s5, ra
                  sltiu        ra, t2, -811
                  sub          a2, t5, a0
                  nop
                  add          s8, t0, s2
                  sltiu        t0, s10, -1462
                  auipc        t6, 263762
                  slt          a4, s9, s1
                  sub          t5, t2, s9
                  sll          s6, s9, a2
                  add          a1, s0, a0
                  sub          sp, t1, s4
                  or           a0, a4, a1
                  xor          a5, a1, s11
                  andi         ra, s11, -1929
                  slt          s6, gp, s5
                  slt          s5, s6, s9
                  andi         a2, t3, -1748
                  ori          s2, a4, -1130
                  sltu         a6, a5, a6
                  xori         t6, s7, -1327
                  srl          a1, t3, t6
                  sll          a0, t4, s0
                  slti         t6, s11, -931
                  xori         zero, t1, 1315
                  srai         t2, s7, 25
                  sub          a1, s1, s5
                  srai         s8, s10, 15
                  slli         t3, t6, 11
                  slti         s2, a2, -1198
                  and          s6, sp, a2
                  sra          a0, zero, s6
                  sltiu        t1, t4, -1169
                  and          t4, s7, a4
                  or           s9, t5, a5
                  slli         t0, t5, 20
                  sll          s5, a3, a1
                  andi         s5, a4, -1648
                  slt          a6, s11, s0
                  slli         s1, t6, 17
                  sll          a2, s8, gp
                  addi         s8, sp, -1741
                  slt          t5, gp, t2
                  slt          t2, t6, t6
                  sra          a2, t4, t3
                  slti         tp, s7, 1906
                  sltu         t6, s10, t3
                  slt          t0, t0, a1
                  sltu         a3, s7, s2
                  andi         s7, s6, -322
                  slli         a7, t1, 0
                  nop
                  andi         t1, a6, 1653
                  slli         a3, s5, 2
                  and          t4, t4, zero
                  srli         s2, gp, 28
                  sra          s7, t2, t3
                  xor          zero, tp, s9
                  nop
                  slli         s10, a4, 30
                  sltiu        a7, s11, -979
                  xor          s5, a4, t1
                  sltu         a0, a7, a3
                  srli         a3, a7, 2
                  andi         a6, tp, -2037
                  slti         t3, sp, 890
                  xor          s6, s8, s8
                  add          s8, a1, s4
                  sra          s2, t4, zero
                  srli         ra, s11, 14
                  nop
                  slt          s9, tp, a6
                  slli         a7, s4, 27
                  auipc        t5, 741780
                  andi         a6, s9, 538
                  sub          a2, a5, a6
                  xori         sp, tp, -1664
                  xor          s6, gp, s6
                  and          s6, a1, tp
                  andi         s4, gp, 440
                  sltiu        gp, a4, -613
                  sra          a4, s4, t1
                  srl          a5, s2, gp
                  slti         s7, s1, 134
                  sra          s5, s5, a1
                  xori         zero, sp, 1581
                  lui          s8, 461293
                  srl          a5, s9, s7
                  srl          s5, t6, a5
                  srl          t6, s0, a5
                  slt          a2, s0, t3
                  sra          s9, a1, s6
                  srai         t4, s7, 19
                  xori         zero, a2, -1254
                  or           a2, t2, t3
                  auipc        a7, 187284
                  srli         s1, gp, 29
                  sltiu        a7, s8, 520
                  sll          t3, a0, s1
                  auipc        s10, 207578
                  sltiu        t4, a7, -1908
                  srli         a5, s11, 0
                  srl          a0, a5, t6
                  ori          a5, a1, -962
                  add          t2, a2, tp
                  sub          s1, t5, ra
                  sltu         s9, gp, zero
                  xori         t1, s6, -536
                  andi         a7, zero, -1512
                  xori         a2, s8, -953
                  srai         t4, t4, 12
                  auipc        s10, 849642
                  andi         a3, a5, -845
                  xor          s8, t3, gp
                  or           s1, a7, s8
                  add          t6, a2, s7
                  slt          s10, a5, s7
                  slli         t4, t1, 2
                  andi         t6, a0, -816
                  slti         a4, t1, -113
                  xori         t1, a3, 199
                  xori         s8, s9, 819
                  slti         a6, s10, 63
                  sll          s5, t6, a3
                  auipc        t3, 147765
                  srli         s8, ra, 17
                  nop
                  slti         gp, s4, 1099
                  sra          t0, s1, t3
                  addi         t5, t6, 911
                  lui          a6, 292895
                  or           a3, t4, t5
                  and          s9, a3, ra
                  xori         a7, s1, -852
                  slti         a3, t3, 677
                  sltiu        a5, a5, 945
                  auipc        s6, 232588
                  or           s7, s8, s4
                  ori          t2, s1, -1276
                  lui          s4, 915004
                  ori          s10, t1, -1451
                  sub          s5, a5, a3
                  srli         a3, s9, 26
                  nop
                  sra          s9, a1, t1
                  andi         a0, a6, -2029
                  slti         t5, a7, -1580
                  slli         t2, s0, 15
                  ori          s4, a5, 2046
                  srai         a6, s8, 24
                  slt          a3, s11, ra
                  andi         s5, s2, 156
                  lui          t4, 711356
                  ori          s7, t2, 1467
                  add          s10, t3, tp
                  sll          gp, gp, t3
                  add          s7, s8, s8
                  xori         a0, s11, -585
                  srai         s10, gp, 19
                  srli         s1, s1, 6
                  xor          a5, s1, t5
                  xor          t1, s1, a1
                  sltu         a5, s4, s2
                  auipc        t2, 965298
                  nop
                  sltiu        a1, ra, 1343
                  or           a3, s1, s5
                  andi         a7, a1, 1659
                  xori         t6, t5, -1369
                  xor          a4, s9, s5
                  or           zero, t3, a1
                  slli         a2, a6, 29
                  sltiu        s2, s3, -1785
                  sll          a1, sp, s3
                  ori          t5, a2, 2036
                  xori         t4, a5, -283
                  ori          t2, s8, 97
                  xor          s6, a5, tp
                  sra          a4, t1, s8
                  addi         s5, tp, 1341
                  xor          s4, a6, a4
                  or           a5, a0, s6
                  lui          t3, 914020
                  and          s9, t2, s6
                  slti         s9, s6, -1189
                  srl          zero, t4, a3
                  slt          s6, tp, s10
                  or           a3, t5, a6
                  lui          s8, 712510
                  nop
                  andi         t1, a6, -743
                  add          a3, s2, a2
                  nop
                  xor          t4, s0, a7
                  auipc        s8, 644124
                  srai         s10, gp, 0
                  sra          a3, a0, s0
                  addi         s6, t1, -1970
                  andi         s9, zero, 141
                  addi         t0, t5, 1776
                  srl          a7, a7, s10
                  nop
                  andi         s2, s7, 230
                  sltu         zero, t3, a0
                  sltu         a6, zero, s9
                  srai         gp, t3, 2
                  and          t6, s6, s1
                  nop
                  xor          s1, t4, s10
                  sra          sp, s9, a7
                  and          a4, s5, s11
                  srli         t5, zero, 15
                  sltiu        gp, t1, -632
                  auipc        t0, 515573
                  and          gp, s1, a5
                  auipc        s10, 358054
                  add          t4, s9, s3
                  srli         s7, a1, 27
                  ori          t3, ra, -802
                  sltiu        t6, t1, -298
                  or           t5, t4, s10
                  slli         s2, sp, 4
                  xor          a2, gp, a4
                  nop
                  srl          s9, s6, gp
                  add          a6, t4, a7
                  xori         sp, zero, 1074
                  sll          t1, t4, s11
                  srai         t1, t4, 11
                  nop
                  sltu         s4, t6, s7
                  sltu         a6, zero, s8
                  sll          gp, s9, t3
                  sra          a2, tp, gp
                  sub          s5, s9, t5
                  add          t5, t6, s6
                  sll          tp, tp, s3
                  sll          s10, zero, s7
                  sll          s6, s11, a7
                  sub          gp, s4, t0
                  addi         t1, s7, 742
                  srl          s10, zero, gp
                  sltu         s9, t2, s8
                  srli         t3, ra, 2
                  nop
                  or           a5, t4, a3
                  and          t3, s11, t4
                  lui          sp, 663939
                  sll          s6, t5, a6
                  andi         t2, s6, 1536
                  sll          a6, a2, t2
                  add          a1, t3, a6
                  sltiu        t2, t2, 1318
                  sub          s6, s2, s2
                  xori         s7, s4, -413
                  ori          t6, zero, -734
                  sltu         t0, s1, t6
                  or           gp, s1, a1
                  ori          s9, gp, -850
                  and          a3, t5, s9
                  sll          s6, t3, a5
                  xori         s5, a5, -937
                  auipc        a7, 433079
                  add          s7, a6, s4
                  ori          a1, t6, 531
                  nop
                  sub          ra, gp, t3
                  slti         sp, s0, 818
                  srli         zero, a4, 18
                  add          s4, s9, s5
                  slli         t3, s0, 0
                  nop
                  sra          gp, s5, t6
                  lui          a5, 635033
                  lui          a7, 238122
                  nop
                  nop
                  sltiu        a0, s6, 49
                  srai         t6, s10, 31
                  xor          a2, s6, a4
                  and          a0, s11, gp
                  add          s7, a2, s11
                  addi         a5, s0, -977
                  ori          s2, s6, -1021
                  and          a1, a2, s10
                  auipc        ra, 503480
                  addi         ra, s10, 209
                  sll          s2, t3, a3
                  slli         s1, s7, 16
                  ori          a3, s1, 1323
                  xori         a3, s3, -1029
                  slti         a4, s9, 2013
                  add          s9, a6, ra
                  srai         sp, a7, 23
                  auipc        t3, 274276
                  add          a3, s7, t4
                  sltu         a7, s5, t0
                  add          zero, s4, a6
                  xori         s1, a6, -454
                  srai         sp, tp, 8
                  srai         a7, ra, 19
                  addi         ra, t1, 75
                  addi         a5, s6, -214
                  sltu         sp, t1, t2
                  lui          a7, 748601
                  sll          s9, a4, a0
                  sub          a0, a3, a0
                  slti         a6, a2, -745
                  slli         a0, t1, 26
                  andi         a3, ra, 541
                  auipc        t2, 982346
                  andi         s7, t4, 1088
                  sltiu        t1, s1, 814
                  nop
                  addi         t4, s1, -785
                  xori         s8, a2, 120
                  ori          t4, tp, 999
                  slt          s5, s2, s6
                  sltu         a2, s2, s6
                  sltiu        s9, a0, -146
                  srl          t2, s0, gp
                  xor          sp, gp, t4
                  sltu         s1, s7, s11
                  sra          a4, a6, sp
                  sltu         t6, s5, s11
                  add          s9, s11, s11
                  andi         s6, s0, -684
                  slt          a0, s1, tp
                  slli         s7, s5, 15
                  sll          t5, s10, a3
                  xori         s5, t2, 605
                  slti         s4, a4, 1673
                  lui          a0, 831778
                  auipc        s4, 782146
                  xori         s8, s4, -1997
                  ori          zero, s1, -707
                  sltu         a3, t3, s1
                  or           sp, a3, a2
                  and          a3, zero, s0
                  slt          zero, s7, gp
                  or           t6, s7, t1
                  slt          a4, t3, t3
                  srl          t0, gp, tp
                  xori         t1, gp, 1462
                  xor          s8, sp, zero
                  add          a1, t5, s9
                  sll          a6, t6, a3
                  and          a3, s6, s10
                  nop
                  srl          s6, a6, a6
                  lui          s9, 361982
                  slli         t0, s0, 8
                  sltu         s6, a1, ra
                  srli         a3, t4, 1
                  slli         a0, s11, 21
                  sra          t1, a2, s6
                  addi         a1, ra, 281
                  srl          t0, zero, a4
                  sll          t4, t2, s9
                  and          t1, a0, gp
                  sltu         a5, t2, tp
                  slti         t6, t2, -873
                  xor          ra, t1, a5
                  srli         t1, s7, 17
                  sra          s4, t4, t0
                  auipc        s9, 914214
                  slt          a7, ra, a7
                  sll          s4, s3, s4
                  srli         gp, gp, 26
                  sltu         tp, s0, a2
                  and          t3, sp, s4
                  srli         zero, ra, 0
                  slti         t6, s3, 850
                  srl          a4, s8, s11
                  slti         a2, s8, -985
                  xor          a0, s5, a5
                  ori          ra, t3, 1401
                  slli         a3, t2, 15
                  slti         s4, s6, -1941
                  srl          a7, t5, t1
                  ori          a6, t3, 803
                  sltiu        a5, s5, 600
                  xori         a2, s9, 459
                  srai         s9, a3, 14
                  and          s4, s8, s2
                  or           s5, ra, gp
                  ori          t0, t2, 67
                  sub          t0, s5, s5
                  sltu         zero, t0, a1
                  xori         s5, t2, -685
                  sltu         a5, tp, s6
                  srl          t4, s7, s11
                  srli         t2, s7, 25
                  srai         tp, a0, 25
                  lui          t1, 471314
                  andi         s8, a5, 1205
                  lui          ra, 437930
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           t3, 0xffffffff
                  li           a3, 0xffffffff
                  li           s4, 0x7d403495
                  li           tp, 0xe7371356
                  li           s2, 0x0
                  li           a1, 0x0
                  li           t1, 0x7e63429e
                  li           t6, 0x99bad480
                  li           s8, 0xffffffff
                  sub          s2, a3, t1
                  addi         s4, t3, -1966
                  nop
                  addi         t6, a1, -302
                  lui          a3, 775817
                  add          t3, t6, s2
                  sub          a3, s8, a1
                  addi         t6, t6, 1102
                  addi         tp, s6, 1671
                  auipc        t6, 191946
                  sub          t6, t3, s8
                  add          s8, s6, s6
                  addi         tp, tp, 1849
                  nop
                  sub          tp, a3, s8
                  auipc        s2, 423454
                  addi         t3, t3, 1299
                  sub          a1, a3, a3
                  add          s2, s4, t6
                  addi         t3, t1, -303
                  lui          a3, 901423
                  addi         s6, tp, -776
                  lui          t3, 121204
                  sub          a1, tp, a1
                  auipc        t6, 886015 #end riscv_int_numeric_corner_stream_1
                  srli         t6, s4, 8
                  or           t3, sp, a4
                  or           t4, s10, a3
                  srai         t0, tp, 20
                  lui          t5, 981989
                  slti         s10, a0, -980
                  add          sp, s2, a7
                  auipc        s8, 5343
                  ori          s6, zero, 600
                  slti         sp, s0, 1165
                  sltiu        t1, a2, -1323
                  xori         sp, s6, 1314
                  sll          tp, s5, t5
                  srl          s10, s9, s3
                  add          a6, zero, s2
                  and          s4, ra, s6
                  xori         a2, s10, -1366
                  and          t2, s9, a0
                  sltiu        s10, s1, -844
                  srai         t2, s9, 12
                  xori         a5, gp, 1626
                  ori          sp, a5, -331
                  lui          a4, 665576
                  xori         s9, a5, -1427
                  lui          s9, 994207
                  slt          s7, s5, gp
                  add          a0, s9, s8
                  and          t2, tp, a2
                  and          a3, t2, zero
                  xor          t0, a2, zero
                  nop
                  xori         t1, s4, -1026
                  or           s10, sp, s0
                  xori         gp, a3, 1284
                  add          t3, s11, a4
                  sltu         a5, a7, t4
                  or           s8, s7, a3
                  ori          a4, a7, 512
                  add          sp, a6, s3
                  addi         a3, sp, -485
                  addi         t6, a6, 1278
                  auipc        a2, 563366
                  sll          s2, s2, t3
                  sra          t3, s9, a1
                  andi         s2, a6, 1592
                  andi         s6, s6, 1500
                  sll          s8, s7, t0
                  xor          t2, gp, s7
                  slti         gp, t4, 52
                  sll          gp, s0, s11
                  slti         s5, s5, 1566
                  sub          ra, a5, s11
                  slt          t3, t5, s1
                  srai         s9, t3, 21
                  srai         s1, t0, 7
                  slli         tp, s8, 21
                  sra          a3, s7, ra
                  sra          t5, sp, a1
                  andi         s10, s5, -1599
                  sra          s6, s1, a5
                  srai         s1, t0, 23
                  srl          zero, tp, zero
                  sll          s8, s9, s5
                  slli         s10, s5, 1
                  sltiu        a1, sp, 1495
                  andi         a7, s9, 56
                  nop
                  sub          t6, a4, s2
                  auipc        s10, 795249
                  lui          s6, 555412
                  add          a5, t4, t5
                  and          t5, t2, ra
                  lui          gp, 874719
                  sra          sp, s5, s5
                  srli         a3, t4, 23
                  sra          s7, s2, a7
                  add          t4, a5, a7
                  addi         a3, s4, 347
                  xor          s4, t3, t6
                  xori         a6, tp, 842
                  auipc        zero, 87835
                  sltiu        s1, s0, 1366
                  sll          s4, gp, t5
                  nop
                  slt          s4, s11, t0
                  nop
                  sll          t4, a1, s5
                  sub          s2, t4, s1
                  ori          zero, s9, -1596
                  sltu         s7, t3, s5
                  auipc        t6, 1021624
                  sra          t1, t1, s0
                  ori          a6, s11, 258
                  xori         sp, t3, -183
                  or           s8, s3, s9
                  srai         t5, t1, 30
                  xor          s5, s1, gp
                  sltu         ra, a2, s6
                  slti         t6, sp, 359
                  and          a0, s7, t0
                  sltiu        s7, t0, 573
                  ori          s4, s7, -579
                  srl          tp, s1, a4
                  srai         a7, s11, 21
                  addi         gp, t2, 1711
                  sra          t5, a5, ra
                  nop
                  xor          s4, t4, a6
                  srli         t0, t5, 6
                  srl          tp, s8, t0
                  slli         a3, t2, 27
                  sltiu        s7, a7, 1162
                  srai         s10, t3, 17
                  addi         tp, s0, 518
                  sub          s2, t0, t0
                  ori          a6, s5, 1034
                  ori          s7, a6, -776
                  xori         s6, s0, -390
                  xori         s5, t0, 151
                  add          s1, t1, a7
                  andi         s10, a2, -1180
                  sltu         a4, s1, tp
                  nop
                  sll          a4, zero, gp
                  add          s2, t6, a1
                  sub          gp, a0, t0
                  sll          sp, t4, s8
                  ori          s2, s8, -201
                  lui          t3, 69885
                  srl          a3, s1, a6
                  sra          a3, a3, s9
                  andi         a5, t2, 1623
                  or           s7, t0, a3
                  slli         s8, t3, 15
                  srai         a0, a7, 24
                  auipc        zero, 912340
                  xor          a6, s0, a1
                  srli         t0, a3, 16
                  slt          tp, t5, a0
                  auipc        s7, 87371
                  add          s1, s0, a1
                  srli         s9, t5, 15
                  andi         a5, s7, -356
                  slli         a5, s10, 17
                  sll          sp, a3, a1
                  xor          s6, t0, a2
                  add          s7, a2, a3
                  slli         a5, t4, 0
                  sltu         a4, s9, s1
                  srl          a7, tp, a2
                  nop
                  sltiu        a1, s9, 643
                  srli         zero, a2, 22
                  srl          ra, t1, s2
                  sltiu        t6, s7, -1382
                  srai         t0, a7, 31
                  andi         t2, t5, 32
                  srl          sp, a1, s11
                  srai         s6, zero, 7
                  slti         a3, s7, 758
                  srl          s9, s7, s3
                  sltu         s9, a2, t5
                  slt          a0, s8, t1
                  auipc        s10, 491081
                  add          t1, a0, s0
                  xor          zero, a4, s6
                  nop
                  sltu         t0, s4, ra
                  auipc        t6, 951240
                  ori          t0, zero, 571
                  sltu         t6, t3, s3
                  sra          a5, a6, gp
                  slti         zero, a5, 43
                  lui          t2, 295493
                  xori         t6, t1, 2022
                  add          s4, sp, s9
                  xori         t0, s7, -140
                  add          s5, s5, s2
                  srl          s7, s2, a7
                  or           t6, a4, s7
                  or           t6, s6, t2
                  lui          s9, 927783
                  srl          s10, a6, ra
                  slti         t1, s11, 320
                  xor          a3, a5, a0
                  slt          a2, s6, a6
                  slli         s8, s6, 16
                  srl          s2, s0, a0
                  slli         s4, a7, 5
                  slti         s5, t5, -1797
                  ori          gp, tp, 457
                  srai         a3, s2, 1
                  addi         a6, s7, 1381
                  srl          a7, a4, s3
                  ori          t1, s1, 1596
                  xori         s9, sp, 1659
                  slti         tp, a4, 1283
                  sltu         t6, a0, zero
                  and          t6, t1, s10
                  slt          a4, s10, a5
                  auipc        ra, 815948
                  add          s5, t3, s4
                  ori          t0, s0, -1625
                  slti         t0, t4, 679
                  nop
                  xor          tp, s7, t2
                  andi         a5, zero, -1242
                  addi         s1, s6, 322
                  or           zero, s5, s3
                  srli         s9, a5, 14
                  slt          s1, s8, a1
                  slt          t5, t5, s3
                  sub          ra, t6, s1
                  slt          tp, s8, s11
                  srli         s10, s0, 5
                  nop
                  sra          s2, s7, s5
                  and          s5, a2, a5
                  addi         s8, tp, -410
                  sub          t1, t2, a1
                  sub          t5, s6, ra
                  nop
                  ori          t5, s6, 1439
                  andi         t3, a7, 611
                  xor          t5, t5, a4
                  sub          s6, a7, a3
                  xor          t6, t2, t6
                  and          a4, s7, t4
                  slti         gp, t3, 866
                  andi         t4, a0, 1282
                  xor          gp, s8, t5
                  add          a2, s0, zero
                  slti         a2, a7, 1147
                  auipc        t3, 772311
                  srli         s10, s3, 8
                  lui          t0, 568255
                  sltu         a0, a6, s5
                  slti         a1, t1, 1597
                  slli         zero, t3, 9
                  sltu         gp, t5, s2
                  xori         s5, s6, 1396
                  slli         a5, t0, 21
                  nop
                  andi         t3, s11, 149
                  srl          s2, zero, a7
                  add          t4, zero, s1
                  srli         s5, s11, 31
                  andi         s8, a1, -1754
                  and          t2, s8, zero
                  slti         a1, t0, 1962
                  addi         a7, s0, -983
                  lui          s4, 68604
                  srli         tp, a6, 8
                  slti         s1, s4, 1624
                  srli         s6, ra, 26
                  nop
                  xor          t2, s3, a4
                  ori          a6, a1, -1408
                  lui          s4, 453356
                  addi         t3, s11, -1365
                  addi         a6, t4, 866
                  slti         a6, s5, -611
                  or           s1, a3, sp
                  xori         zero, a4, 750
                  slt          a6, a4, sp
                  andi         zero, s10, 191
                  nop
                  and          a7, a0, a0
                  srl          s2, a3, s4
                  slt          t0, a7, s7
                  sll          s10, t4, s10
                  lui          s4, 185824
                  sub          a4, a0, s0
                  srli         s9, s3, 4
                  lui          t3, 84821
                  ori          a0, a2, -1977
                  auipc        s7, 748704
                  add          a2, a3, t5
                  slt          t3, a3, s9
                  ori          s6, s1, -71
                  sltu         t1, sp, sp
                  slli         a3, a4, 25
                  ori          a5, ra, 1178
                  sltiu        zero, t6, -331
                  srl          gp, s11, t6
                  sub          t4, sp, a6
                  sltiu        a2, gp, -1229
                  nop
                  and          zero, a5, zero
                  ori          t5, s2, 458
                  andi         t1, s9, 869
                  slli         s8, s0, 25
                  addi         t3, s2, -341
                  sltu         t2, a6, tp
                  or           tp, s7, a5
                  sll          a7, t5, s8
                  xor          a6, a7, s5
                  srl          zero, a1, a7
                  and          t5, t6, sp
                  sra          a7, tp, sp
                  or           s1, s11, s5
                  slli         s10, gp, 19
                  slt          a5, gp, t2
                  add          a6, a6, ra
                  andi         s4, a7, -217
                  sll          a7, zero, t1
                  xori         t1, s1, 553
                  sltiu        t3, sp, -711
                  xor          s5, s10, t3
                  srli         t6, s5, 14
                  lui          t0, 114047
                  slti         s10, t2, -1051
                  auipc        t0, 507857
                  addi         a0, a2, -84
                  slli         t5, s8, 13
                  lui          t0, 695162
                  slt          s5, t0, a2
                  sll          a3, s11, t1
                  addi         t2, s4, -750
                  andi         t3, zero, -951
                  add          ra, a1, a1
                  slt          a1, tp, t2
                  sltu         tp, s0, a1
                  lui          a3, 50834
                  or           a1, s7, ra
                  addi         t4, s0, -1169
                  sra          s5, tp, a4
                  or           s4, a7, s10
                  nop
                  addi         t4, s1, 1529
                  srli         t4, s6, 5
                  srli         t3, gp, 15
                  nop
                  sll          t3, a3, t2
                  and          a2, s3, a6
                  and          zero, a5, a6
                  sll          gp, t2, s8
                  sub          a6, a5, a6
                  and          s1, a5, tp
                  slt          tp, s1, s2
                  lui          t6, 700818
                  addi         a5, t6, 1726
                  nop
                  add          tp, tp, s7
                  or           a2, a1, s6
                  sub          a6, t6, s5
                  slt          tp, s2, t6
                  slli         a3, s0, 23
                  ori          t0, s10, 1989
                  xor          a6, t3, ra
                  sll          a1, t4, a0
                  sll          a6, s3, a2
                  slti         a6, a7, 1044
                  nop
                  srl          s2, t1, s2
                  or           sp, gp, s11
                  slt          a3, s10, s7
                  sll          t1, t2, sp
                  or           s4, t3, t3
                  sub          a4, t1, t4
                  ori          t5, t6, -1954
                  lui          tp, 520642
                  andi         gp, a0, -992
                  slt          t1, zero, a2
                  slt          t4, sp, t3
                  sltiu        s1, t2, -1422
                  andi         gp, a4, -1942
                  ori          s8, s3, 225
                  srli         s6, ra, 14
                  sltu         t2, a2, s0
                  srai         a2, a1, 15
                  srl          a4, a3, a5
                  sltiu        t5, a1, -1775
                  sub          s10, a1, a4
                  sll          a4, ra, zero
                  sll          s1, s2, a3
                  xori         a4, t4, 1247
                  auipc        t2, 614346
                  sltiu        s2, zero, 1105
                  andi         a3, tp, 800
                  sub          t6, a3, gp
                  sra          t5, a3, sp
                  sra          t0, s4, s5
                  slti         a4, sp, -819
                  sltu         t1, s10, sp
                  sltiu        a5, t1, -1693
                  sltu         s10, s8, s10
                  xor          t0, s1, t3
                  sltiu        zero, t2, 1369
                  slti         s10, a1, -240
                  srl          s7, s10, s9
                  sll          t6, t1, s8
                  srai         a7, a4, 2
                  andi         s10, s9, 1775
                  sltu         a5, s1, s3
                  slt          s8, a0, tp
                  xor          a6, t5, a3
                  slli         zero, t4, 20
                  auipc        a0, 231829
                  srai         t6, a5, 18
                  slli         t6, t0, 9
                  addi         a6, t0, 1887
                  add          tp, s7, s5
                  sra          t0, a0, t3
                  srl          zero, a1, s8
                  addi         a5, s10, -1355
                  and          s6, zero, s11
                  slt          t5, t6, gp
                  srai         a7, a2, 12
                  sll          s6, a1, ra
                  nop
                  sll          s4, s4, s8
                  addi         s2, gp, 633
                  srai         t2, a1, 17
                  srai         t4, t4, 30
                  nop
                  auipc        a0, 602937
                  sll          tp, t3, s9
                  sll          tp, s7, tp
                  srai         a5, s11, 20
                  xor          t2, t5, a2
                  slti         t4, s7, 341
                  slti         s5, s0, 1284
                  xor          t3, t1, s9
                  nop
                  srai         s2, a6, 8
                  add          t2, s9, zero
                  andi         s5, a6, 1079
                  xor          a2, a0, s8
                  and          t5, s4, t4
                  sltiu        t4, t1, 1416
                  slli         s9, a0, 25
                  and          s5, a4, t3
                  slti         t5, t3, -1160
                  sll          a4, s5, s1
                  sub          s6, t4, s2
                  srai         s6, gp, 2
                  slti         t3, ra, -1976
                  andi         t2, s10, 2045
                  ori          s6, a7, 1723
                  sltiu        a0, s3, -1912
                  srli         a5, a7, 11
                  and          s9, a7, s7
                  sub          s10, s2, a6
                  lui          s1, 762898
                  xor          a2, t4, t3
                  and          a0, a4, s10
                  addi         t4, a7, 1000
                  xori         tp, a1, 318
                  or           a1, t4, s7
                  xori         gp, s4, -535
                  auipc        t3, 617074
                  srai         tp, t6, 24
                  srli         ra, s8, 22
                  xor          a5, a5, s6
                  addi         a4, s11, -1915
                  ori          t0, t2, 458
                  and          t3, s7, s10
                  nop
                  srl          a1, t0, a0
                  sll          t0, s5, s6
                  or           a5, s5, s7
                  sltiu        sp, a2, -1956
                  andi         t0, s2, 1782
                  andi         t3, a7, -590
                  add          s7, s7, t2
                  auipc        s5, 104303
                  lui          s6, 985819
                  andi         gp, s3, -428
                  auipc        a7, 650491
                  sll          a7, s10, a7
                  and          s5, t0, a3
                  srai         s5, gp, 8
                  sltiu        gp, s4, -162
                  sltu         t0, s4, s2
                  srli         s5, a7, 7
                  sltu         s6, a7, t6
                  sll          gp, a0, a4
                  srl          a6, tp, t4
                  nop
                  and          t2, t5, s0
                  sub          t5, a0, t4
                  ori          a6, s7, 669
                  andi         t2, gp, 853
                  xori         s1, s2, -633
                  sll          t5, t5, gp
                  sltiu        tp, s2, 1861
                  sra          sp, t1, s8
                  ori          s5, s4, 1346
                  sll          s7, s5, t6
                  slli         a5, t5, 24
                  srl          t2, a5, s10
                  andi         sp, s0, 383
                  slli         s9, a1, 1
                  srl          t4, t5, t3
                  sll          t6, sp, zero
                  sltiu        t2, t5, 501
                  sub          a3, a0, t0
                  and          sp, s9, t3
                  slt          a2, s8, gp
                  and          ra, a4, s5
                  ori          s8, a7, 979
                  sub          a6, a3, a5
                  sra          a2, t2, s8
                  sll          t6, t4, t3
                  andi         t0, t5, 1153
                  slt          s1, s7, s3
                  auipc        zero, 1027910
                  add          t0, t1, gp
                  ori          t3, s4, -2001
                  sll          s9, a7, gp
                  xori         gp, a0, 758
                  srli         s9, s8, 10
                  auipc        t5, 85310
                  auipc        a7, 735140
                  and          t0, ra, s2
                  ori          tp, ra, -785
                  srli         a5, t0, 8
                  slti         gp, s7, 518
                  sra          ra, s2, s8
                  sra          t6, tp, s9
                  sub          s4, s6, a0
                  auipc        s8, 117615
                  xori         a0, gp, 1873
                  andi         t4, a1, -675
                  xori         s6, a3, -1871
                  sra          t4, gp, a0
                  slt          a1, s11, a1
                  or           s10, t4, t0
                  nop
                  xor          s9, a4, s8
                  srai         t1, ra, 22
                  xor          s10, a1, a0
                  add          a2, t5, s0
                  xori         tp, gp, -1076
                  srl          a2, s11, t2
                  ori          sp, s4, -231
                  xori         t0, s4, 1628
                  lui          s8, 595486
                  nop
                  srai         s5, a5, 27
                  slti         ra, a0, -1693
                  addi         s6, s6, -836
                  srai         a6, gp, 4
                  lui          t1, 74269
                  add          t4, t6, s2
                  srl          s9, s0, s11
                  add          a4, tp, zero
                  add          gp, s1, s2
                  sltu         zero, zero, a6
                  slti         a3, t3, -1934
                  nop
                  and          a4, s1, t5
                  lui          a2, 1041050
                  slli         t0, t1, 10
                  xor          s8, tp, t2
                  ori          s1, s0, 454
                  addi         a5, s11, 842
                  sltu         a1, a2, tp
                  sltiu        s10, t1, 1793
                  sll          t2, s4, s5
                  add          s2, tp, ra
                  addi         s9, s2, 361
                  lui          t6, 699105
                  slti         s4, a1, -762
                  srai         t4, s2, 23
                  sltu         s1, s11, a6
                  srai         gp, a1, 21
                  sra          t4, s6, ra
                  srl          a2, a3, s3
                  sra          t5, s9, s9
                  or           t6, s8, a7
                  sub          t6, s9, t6
                  srli         t2, tp, 9
                  srai         s2, t1, 24
                  ori          ra, s4, 1548
                  and          a4, a5, s3
                  and          a2, zero, s6
                  lui          a7, 730138
                  andi         t5, s9, -340
                  ori          s8, t5, 1753
                  sra          a7, t4, s11
                  or           zero, s8, a1
                  sll          s9, s9, t2
                  ori          s1, t2, -1449
                  slt          t5, sp, s4
                  xori         s5, t0, -2025
                  sub          t6, s0, s0
                  srai         s1, a3, 16
                  ori          s9, a5, 1576
                  xor          a6, a4, s7
                  xor          gp, t4, a6
                  srl          a5, s4, a0
                  lui          t6, 989723
                  andi         tp, s10, -1162
                  sltu         a3, s11, tp
                  sltu         gp, s3, sp
                  add          s4, sp, a0
                  or           s6, a6, a0
                  slt          a2, t0, s6
                  sll          s4, t5, a1
                  xori         ra, t1, -1707
                  xor          zero, s10, s8
                  lui          t4, 586157
                  sltu         s1, a4, ra
                  auipc        s7, 606364
                  sra          t4, ra, s11
                  and          tp, s4, a1
                  nop
                  addi         a1, t0, -1719
                  sltu         s5, s5, s6
                  slti         ra, a0, 2012
                  sra          s1, a5, a7
                  sltiu        t3, a1, 744
                  addi         t4, t2, 1357
                  sll          gp, t5, t4
                  xori         a3, s3, 2024
                  andi         s4, tp, 1824
                  srl          t5, a0, t1
                  and          s6, tp, a1
                  sll          s1, s0, a6
                  xor          t6, t5, s11
                  xori         s4, t6, 1488
                  auipc        t4, 314679
                  and          a1, sp, s7
                  andi         t2, t2, -1587
                  and          t1, a2, t4
                  sub          s1, ra, a3
                  andi         a4, t3, 378
                  addi         a4, a0, -1496
                  sll          gp, zero, t2
                  sltiu        s6, a0, 1912
                  nop
                  sltu         a1, s2, t6
                  nop
                  xor          sp, t6, a0
                  auipc        t2, 511720
                  sub          s6, a6, s1
                  xor          a0, t0, s8
                  srl          a4, s5, zero
                  lui          t0, 373340
                  and          ra, s8, tp
                  srl          a0, t1, s9
                  addi         t5, s5, -1790
                  srli         gp, s5, 14
                  andi         t2, t3, 190
                  srli         zero, a5, 4
                  srl          t3, t1, s9
                  slt          t2, a4, s9
                  slti         s8, a1, -259
                  lui          sp, 627616
                  auipc        t2, 513773
                  srai         ra, t5, 3
                  sub          a7, tp, a5
                  xor          s1, s10, s7
                  ori          s8, sp, 1697
                  auipc        s7, 938057
                  add          s7, s9, s9
                  sltiu        t2, s8, 571
                  sub          a7, t6, a6
                  srai         ra, t4, 9
                  lui          a5, 953770
                  xor          s8, a1, t0
                  lui          a4, 130204
                  sll          gp, sp, s10
                  addi         t1, t3, 1068
                  ori          s7, s11, 1416
                  sltiu        a0, a4, -546
                  auipc        gp, 513709
                  ori          a1, s1, 55
                  and          t3, s9, t2
                  nop
                  slt          a2, s11, a5
                  or           s7, s4, t2
                  or           s6, s3, s11
                  auipc        s6, 385069
                  nop
                  nop
                  sub          a2, a0, t6
                  xor          ra, s2, a2
                  xori         t4, t5, -1878
                  lui          t2, 329996
                  sub          s2, t1, t0
                  srl          a2, zero, a1
                  sltu         zero, a6, t4
                  xori         t3, t4, 1268
                  lui          t5, 892062
                  slti         a7, s7, -1432
                  auipc        t0, 750632
                  sltiu        t0, s1, 1429
                  and          sp, t5, s7
                  andi         s2, s10, 527
                  sub          ra, s2, a6
                  slti         a0, tp, 598
                  andi         a6, ra, -1702
                  nop
                  or           s10, s3, a5
                  ori          a7, s0, 1699
                  slt          a3, s8, s7
                  sltiu        s1, s2, -1637
                  nop
                  srai         s7, a6, 19
                  slt          s5, a5, s9
                  slt          a4, t5, a4
                  sub          t1, s11, t1
                  lui          gp, 785645
                  xori         t6, a3, -1763
                  sll          a1, t6, s4
                  auipc        t2, 25528
                  slt          a0, tp, a4
                  srli         a2, a6, 15
                  xori         ra, s9, 198
                  srli         zero, s11, 21
                  slt          tp, t3, s6
                  xor          a3, t5, t1
                  xori         s1, a6, -136
                  addi         s9, sp, 1516
                  nop
                  xori         t1, t4, -1266
                  sltu         s10, s1, t0
                  slt          s6, a6, sp
                  xor          a5, s8, a2
                  andi         t1, s10, -1952
                  xori         t4, a4, 287
                  sltiu        a0, s7, 1794
                  addi         a2, a0, 1012
                  and          a0, s10, s0
                  auipc        sp, 740687
                  xor          t2, a3, s10
                  xori         zero, s10, -726
                  slti         s8, a3, -732
                  slti         t3, s1, -1642
                  addi         ra, t4, 723
                  slli         s7, s7, 18
                  sra          tp, s11, a7
                  srai         t6, s11, 13
                  auipc        s2, 419283
                  addi         a2, a7, 1041
                  xor          s5, a6, s11
                  slti         tp, a4, 1653
                  xori         a2, s8, 448
                  andi         s2, s7, 426
                  sub          tp, zero, s6
                  sub          s7, s9, a2
                  srli         gp, ra, 24
                  add          t6, s7, a2
                  sltiu        s5, s5, -534
                  slti         a7, a3, 151
                  ori          a4, s6, 1055
                  srl          a3, s1, t4
                  ori          sp, a3, -1226
                  ori          t3, s9, 1801
                  xori         s4, s9, 1141
                  sll          gp, a7, a3
                  srai         sp, t5, 25
                  sub          a2, sp, a6
                  ori          a3, ra, -1683
                  slt          s4, a5, t3
                  srai         a6, s1, 3
                  slti         s8, a7, -25
                  slli         t2, ra, 27
                  nop
                  or           s7, tp, zero
                  slti         ra, s8, -371
                  lui          tp, 719569
                  sltu         t2, t0, t4
                  sll          a6, a0, s5
                  and          sp, a0, s4
                  or           t0, a1, t3
                  sltu         a3, t4, s8
                  slt          t2, a0, s3
                  slti         t1, t6, -106
                  addi         a6, t6, -1882
                  slti         t6, t3, 1189
                  srl          s6, s6, s9
                  srli         gp, s2, 29
                  slt          s10, ra, t3
                  srl          a1, s5, s3
                  xori         tp, t5, 987
                  srl          s7, a1, t3
                  or           s8, s3, tp
                  andi         a6, s0, 1193
                  xor          a5, s9, zero
                  auipc        t0, 947764
                  auipc        ra, 399189
                  srai         t2, s1, 20
                  sll          s9, a2, a7
                  sra          s10, s2, s7
                  and          t2, a6, s0
                  sltu         s7, gp, a0
                  nop
                  sltu         s8, s1, a4
                  or           t4, tp, t1
                  sll          a0, s6, a0
                  slti         a7, s5, 1310
                  auipc        a7, 893388
                  sra          t3, a3, a4
                  slti         zero, a6, -1198
                  andi         s9, t4, 490
                  ori          a2, a7, -1221
                  srl          t1, a1, t4
                  xori         t5, s1, 519
                  xor          zero, a7, t1
                  auipc        s1, 102423
                  slti         a7, zero, 1094
                  sltiu        a6, s11, 873
                  xori         zero, s4, -1091
                  and          a3, s4, tp
                  srl          gp, sp, s11
                  xor          s6, s4, s9
                  slt          s1, s1, t1
                  xori         a6, s7, -457
                  srli         a5, s6, 13
                  slti         s1, s2, 1289
                  sra          s7, t2, ra
                  slli         a3, sp, 24
                  andi         a3, a2, -151
                  srl          s10, t6, sp
                  ori          s4, s6, 444
                  sll          a4, a3, t1
                  sub          s5, s2, tp
                  slt          a0, a4, a6
                  slli         ra, s0, 15
                  xori         s4, s4, 300
                  addi         a4, s6, -68
                  or           t1, a5, s0
                  sll          a3, gp, s7
                  xor          t0, a2, a0
                  andi         t1, a0, -898
                  xor          a4, a5, a6
                  sll          a0, s8, s5
                  sltiu        t5, a5, 321
                  slt          s7, s8, a2
                  slti         a3, s7, 53
                  sltiu        tp, t1, 1915
                  xor          s4, s7, t2
                  xor          s5, s6, ra
                  sltiu        s9, ra, 471
                  sltu         a5, a0, a1
                  sltu         s9, sp, zero
                  sltiu        zero, t3, -518
                  ori          s6, s11, 357
                  sltu         ra, ra, s10
                  srli         t3, ra, 5
                  sltiu        t6, t6, -1169
                  ori          s5, a2, -237
                  srai         t4, zero, 3
                  lui          t0, 760401
                  add          ra, a3, s0
                  srli         s4, ra, 9
                  add          s10, s5, t0
                  add          s1, s3, s4
                  xori         t5, s3, 291
                  nop
                  ori          s1, s7, -1790
                  lui          t3, 915870
                  sra          t5, s3, s3
                  or           s5, t1, gp
                  add          s1, s5, s5
                  nop
                  sll          t5, sp, a5
                  xor          s4, a0, s9
                  sub          s5, s5, s5
                  sltiu        t6, tp, -484
                  nop
                  ori          s5, t3, -1286
                  sra          tp, t4, t1
                  slli         a1, s4, 19
                  xor          s6, zero, tp
                  sra          t0, sp, a5
                  add          s1, a7, a6
                  slt          s6, a7, s9
                  and          t3, s2, a3
                  lui          ra, 867822
                  slti         zero, s10, 1922
                  sltiu        a2, t3, 667
                  auipc        zero, 344171
                  slli         s2, a7, 23
                  sub          t2, t3, t3
                  sltiu        t4, a4, -1106
                  sltu         a5, s11, a4
                  slli         tp, s0, 15
                  slti         s4, s9, -1626
                  sub          s10, a2, t5
                  slt          s10, a1, s10
                  sra          s10, t1, a3
                  nop
                  sra          t1, s7, s9
                  and          s10, a5, t0
                  sub          a0, s5, s8
                  sub          a6, a3, s10
                  slli         a5, s3, 20
                  add          t5, gp, t5
                  sltu         s7, a3, s4
                  xori         s6, s10, -1736
                  and          gp, s3, s4
                  slt          s2, s3, a0
                  add          t3, ra, a6
                  srl          s10, s0, t5
                  lui          t5, 943369
                  auipc        a2, 925370
                  slt          a7, a0, a6
                  ori          a6, s9, 898
                  addi         s1, s5, 193
                  sll          zero, s10, s5
                  addi         t1, t0, 252
                  add          t3, s11, a2
                  xori         t0, s9, -1560
                  srl          t1, a2, a6
                  slt          a1, a1, s5
                  sll          zero, t5, s10
                  sltiu        zero, s5, -1119
                  andi         ra, s6, 47
                  lui          tp, 697206
                  addi         a5, t6, -681
                  sltiu        a2, s11, 1568
                  xori         a2, s3, 25
                  or           tp, s0, a5
                  xori         t0, s9, 268
                  andi         t0, t0, -771
                  auipc        s1, 781714
                  auipc        s1, 550873
                  sub          sp, a6, s11
                  sll          t4, s9, s4
                  srai         s8, a4, 8
                  andi         tp, a7, -1437
                  slt          s9, s6, a4
                  addi         s4, s0, -522
                  or           s8, s11, t3
                  nop
                  sub          s6, s11, s5
                  or           s9, gp, a4
                  srl          s10, s11, a1
                  sra          s2, a1, t4
                  sltiu        s6, s6, 794
                  sltiu        a3, t2, 1457
                  srl          a5, a3, t3
                  li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           a6, 0xda4e1651
                  li           s10, 0xffa70c
                  li           a7, 0x8b1213c2
                  li           tp, 0x80000000
                  li           t4, 0xffffffff
                  li           gp, 0x0
                  li           t6, 0x80000000
                  li           t3, 0x9e57f469
                  li           s7, 0x80000000
                  addi         s7, t6, 63
                  auipc        gp, 360702
                  nop
                  addi         a7, tp, -1830
                  nop
                  auipc        t1, 546688
                  auipc        tp, 64657
                  nop
                  auipc        a7, 749300
                  add          t1, a7, t4
                  auipc        t1, 590779
                  lui          s10, 401137
                  auipc        t6, 640362
                  auipc        a7, 1040713
                  nop
                  nop
                  add          gp, a7, gp
                  sub          a7, t1, t4
                  addi         a7, t1, -1418
                  sub          t4, a6, s10
                  sub          t3, a6, t6
                  addi         s7, t3, -1952
                  nop
                  sub          tp, t6, t3
                  sub          a7, tp, a7
                  auipc        tp, 985137
                  sub          gp, a6, t6 #end riscv_int_numeric_corner_stream_19
                  xor          a6, a2, a7
                  lui          t6, 546351
                  sub          a6, s8, s4
                  add          t1, a1, t3
                  srl          s7, s0, a2
                  xori         sp, t4, -46
                  lui          s2, 492692
                  nop
                  sub          a2, t6, t6
                  slti         t2, t2, -164
                  srai         a5, s0, 0
                  sltu         a4, a1, a0
                  xori         s8, s5, 755
                  lui          a6, 359848
                  sra          s7, s8, a3
                  sll          s1, a7, s7
                  auipc        s6, 174858
                  sra          ra, t0, s10
                  srl          a2, zero, s3
                  slli         t1, s0, 9
                  auipc        s2, 505069
                  slt          a7, s4, a2
                  xor          a1, a0, s8
                  srai         s2, t1, 26
                  add          a7, t0, zero
                  sll          a6, s9, a1
                  andi         s1, a4, 12
                  srai         s5, s9, 18
                  nop
                  and          t0, s2, s6
                  slti         a5, s11, 1985
                  ori          t4, s7, -410
                  or           t0, s8, a6
                  add          s4, sp, t2
                  sltu         gp, s6, s10
                  srai         t1, a6, 8
                  auipc        t1, 861154
                  xori         a0, gp, -2005
                  srl          s5, t3, a0
                  or           s1, s10, a3
                  and          a4, a5, t5
                  slti         s10, t3, 756
                  sll          t3, s2, zero
                  lui          t5, 787464
                  srl          s7, s7, a5
                  or           s7, s8, s7
                  nop
                  sltu         s7, a5, a7
                  sra          s4, a5, a2
                  and          a4, gp, t1
                  srli         s2, t6, 3
                  li           a1, 0x5c140855 #start riscv_int_numeric_corner_stream_15
                  li           a0, 0xffffffff
                  li           s4, 0x7acbbc6e
                  li           s8, 0xffffffff
                  li           s2, 0x0
                  li           a4, 0xffffffff
                  li           t4, 0xffffffff
                  li           s6, 0x94472f03
                  li           a6, 0x80000000
                  li           s1, 0xffffffff
                  addi         a6, s8, 850
                  addi         a4, a4, -1212
                  sub          a0, s6, t4
                  sub          s6, s2, t4
                  auipc        a6, 762843
                  nop
                  add          s6, s4, s8
                  lui          s2, 462210
                  lui          s2, 844679
                  add          a4, s1, a6
                  auipc        s6, 312398
                  nop
                  nop
                  add          a0, s1, s6
                  auipc        t4, 241865
                  nop
                  addi         s2, s1, -1000
                  lui          s1, 903744
                  auipc        s8, 459671
                  lui          a0, 789874
                  lui          a6, 589681
                  nop
                  addi         a6, a4, -232
                  add          s1, s8, s6
                  sub          s8, s6, s6
                  nop
                  lui          a4, 211080
                  lui          t4, 368018
                  lui          a1, 308247 #end riscv_int_numeric_corner_stream_15
                  andi         a1, s6, -959
                  auipc        a0, 408627
                  sltiu        sp, tp, 1162
                  and          a1, s5, zero
                  sll          ra, s5, s10
                  ori          a2, s7, 1964
                  srl          a0, s9, t3
                  sltu         a1, a2, a6
                  and          a6, t5, a2
                  sll          s2, t5, s4
                  nop
                  nop
                  auipc        a7, 954467
                  sub          s8, s0, t1
                  addi         t5, a6, -975
                  add          a2, s2, t5
                  srli         t5, sp, 23
                  sltu         s1, t6, a6
                  add          zero, t5, s10
                  slti         t1, s7, 2007
                  and          t6, s8, a0
                  srai         s9, a2, 1
                  ori          a3, s4, -203
                  slt          sp, s0, s0
                  sltu         a2, a2, s8
                  slt          a7, a5, sp
                  nop
                  srai         s8, a0, 11
                  srli         t2, ra, 26
                  addi         t5, s9, -1757
                  sll          a7, a4, a6
                  srl          zero, t4, s0
                  auipc        a7, 226240
                  sltiu        ra, a0, 1633
                  nop
                  addi         s10, zero, 1669
                  xor          a6, s1, s2
                  srai         a3, t6, 24
                  and          s7, s11, a3
                  sltiu        s7, s6, 271
                  slt          a2, a1, t2
                  and          a1, a4, zero
                  auipc        t5, 903659
                  or           t6, a5, s6
                  sub          s4, zero, t4
                  sub          t4, gp, s3
                  srli         t4, s8, 23
                  or           t3, t2, s0
                  auipc        a2, 823810
                  xori         t2, a4, 1250
                  lui          a1, 1020333
                  and          t0, s0, a1
                  xor          ra, s11, s5
                  andi         t1, t6, -727
                  xor          t0, s10, s3
                  and          a2, s11, ra
                  ori          a5, t4, 1614
                  lui          sp, 565878
                  addi         a2, t1, -895
                  sltu         s1, s4, s0
                  lui          s5, 988012
                  srli         s4, gp, 15
                  ori          a2, zero, -1600
                  andi         a3, a4, 1399
                  sll          gp, t2, s0
                  add          s4, s7, ra
                  srl          s8, a4, a3
                  sltu         t6, a1, a2
                  lui          s8, 408539
                  slti         a6, ra, 27
                  sra          a3, s10, s3
                  slli         t0, s5, 7
                  srl          t2, a4, s8
                  slti         t1, t6, 1645
                  sub          s7, s6, s3
                  sra          s8, s11, a6
                  addi         a4, a0, -1393
                  slti         s2, tp, 172
                  xori         sp, s1, 1678
                  and          gp, t5, s4
                  sltu         ra, tp, s9
                  ori          a2, s5, 742
                  slt          a1, tp, gp
                  slti         a4, zero, 196
                  sll          t6, sp, s3
                  sltu         s2, a5, t1
                  ori          t3, t1, 1431
                  and          s2, s0, t2
                  sltiu        a5, zero, 800
                  lui          t2, 866963
                  sra          a6, a5, s9
                  slti         a3, t5, 2010
                  nop
                  lui          s6, 60581
                  andi         s8, s10, 1473
                  auipc        a6, 864776
                  srli         t6, s4, 3
                  srl          t2, s2, t6
                  xori         s2, a2, 355
                  xor          t4, a2, s9
                  slt          a1, s6, sp
                  xori         s5, s8, -1803
                  srai         s1, a6, 6
                  xori         s5, s10, 1427
                  sltu         s5, s8, s9
                  sltu         s6, s6, s10
                  and          s6, s1, s8
                  ori          t5, a1, -1097
                  sll          s8, s6, gp
                  lui          a1, 218114
                  andi         t2, zero, -200
                  or           gp, zero, tp
                  slli         a7, ra, 19
                  sra          s10, t5, s2
                  ori          t5, gp, 824
                  and          tp, a4, s0
                  or           a4, a5, sp
                  xor          t5, s3, s4
                  addi         s7, a1, 624
                  xori         t5, a2, -1615
                  and          a4, a1, s2
                  add          s4, a7, s9
                  srai         ra, a4, 26
                  sltiu        t6, s1, 692
                  nop
                  srai         t2, tp, 30
                  add          s4, a3, ra
                  andi         a3, t0, -860
                  srl          s9, s4, t6
                  lui          ra, 439253
                  ori          gp, t3, 854
                  auipc        t6, 451541
                  sltu         s8, a2, ra
                  addi         s5, a7, 1298
                  slt          s1, s8, t4
                  srai         a6, t5, 31
                  slt          t4, t1, s2
                  sub          t0, a6, a3
                  slti         t5, t5, -1028
                  lui          a7, 866685
                  sltu         tp, s2, tp
                  addi         t0, a5, 1927
                  slt          s4, s9, t2
                  sltiu        s9, t0, -370
                  srli         s6, s8, 1
                  srai         s1, ra, 6
                  slti         s5, a7, 548
                  nop
                  add          s7, t4, a6
                  srl          s2, s10, s5
                  srai         s10, t0, 17
                  xori         a0, a7, 617
                  ori          t4, t1, -293
                  srl          a7, a0, s2
                  nop
                  ori          t6, t1, -1937
                  nop
                  andi         s8, a1, -1715
                  sll          a2, t0, s10
                  slli         s2, a6, 31
                  slt          a3, a1, t0
                  or           t3, s7, a2
                  nop
                  xor          s9, t2, s10
                  andi         t2, ra, 1651
                  add          s1, s7, t1
                  nop
                  nop
                  srai         s6, a1, 0
                  sra          tp, s9, t6
                  andi         s4, a0, 1374
                  and          a0, s5, t2
                  sltiu        a1, sp, 741
                  slt          a3, t0, s6
                  slti         t6, t3, 827
                  lui          t4, 767527
                  slli         gp, t1, 18
                  srli         a3, s2, 9
                  or           a3, s8, s7
                  sll          tp, t6, t4
                  add          t2, s2, gp
                  or           tp, t3, s9
                  xori         t1, s8, 1561
                  lui          a7, 413368
                  auipc        t5, 287493
                  and          sp, t4, s1
                  lui          a4, 475009
                  srai         a2, t3, 1
                  slt          a6, a5, t2
                  srl          a7, tp, a3
                  srli         a3, a6, 24
                  srl          a6, gp, t2
                  auipc        s5, 104825
                  srli         s2, t4, 0
                  sub          sp, s9, sp
                  addi         a7, s1, 1804
                  lui          tp, 646397
                  slt          s2, sp, s6
                  slti         a5, t2, -2025
                  andi         a6, ra, -1092
                  sltiu        t1, t3, -1218
                  nop
                  andi         a7, zero, 1106
                  slli         a6, a7, 14
                  andi         s10, a6, -1146
                  and          sp, a2, a4
                  srai         a2, zero, 12
                  xori         s10, s10, -1806
                  sll          t6, sp, s7
                  nop
                  srl          ra, s0, t6
                  srli         t4, a6, 16
                  sra          s1, a6, sp
                  slti         s6, t1, -284
                  srai         s4, s11, 18
                  xori         t2, s7, -1560
                  xor          a4, s0, s9
                  srai         t3, s5, 31
                  xor          a3, s7, s10
                  nop
                  andi         a1, s3, -727
                  srli         gp, s3, 23
                  sra          zero, s10, t1
                  slt          s5, a5, a6
                  sub          s10, t4, s10
                  add          s4, tp, gp
                  ori          ra, s5, -1877
                  auipc        t5, 471135
                  lui          a3, 917897
                  auipc        zero, 909631
                  slli         s1, t0, 17
                  sll          a0, s5, zero
                  srli         t3, a1, 17
                  addi         a0, t0, -434
                  nop
                  and          zero, sp, s4
                  xor          s10, s7, s1
                  addi         s5, t5, 6
                  slt          s2, s6, s11
                  sra          t3, t5, s8
                  srli         zero, s1, 17
                  xori         s9, a6, 1615
                  srli         t5, s8, 4
                  xor          gp, s7, a7
                  sltiu        a3, t1, 1575
                  add          a2, t5, t4
                  or           t0, a4, s4
                  slti         t6, t3, -886
                  sra          t6, s7, s5
                  xor          s2, t4, s9
                  auipc        a7, 242435
                  sltu         s10, sp, t3
                  lui          s8, 956868
                  xor          gp, s3, a7
                  and          zero, zero, s8
                  sll          s8, a1, s8
                  srl          s1, s10, t0
                  sll          a0, a4, s10
                  lui          t1, 365856
                  srli         s2, ra, 10
                  andi         gp, a0, -701
                  sra          s2, s5, s3
                  sll          s5, a2, a7
                  sll          t3, zero, t3
                  andi         sp, s9, -438
                  addi         a6, s0, -1078
                  xori         s1, gp, -658
                  sltiu        a5, s3, 1815
                  auipc        t3, 373979
                  sub          zero, s0, a1
                  xori         s2, t4, -198
                  sra          s1, s5, a2
                  nop
                  sub          s2, s0, a1
                  sra          t5, s10, a4
                  xori         t0, tp, -119
                  and          a3, s3, t1
                  xori         t3, a5, 1581
                  nop
                  addi         t2, t3, 427
                  srli         s6, t6, 10
                  and          t5, t3, t5
                  slti         s5, a3, -1625
                  addi         t1, s7, 331
                  xor          tp, t5, s9
                  and          t4, a7, ra
                  sltiu        s2, s1, -737
                  srl          s6, s5, gp
                  sltiu        ra, t2, -788
                  sll          t0, a7, s2
                  sra          s9, a5, s11
                  ori          a1, a6, 782
                  and          s7, a5, a4
                  lui          a5, 712119
                  addi         s2, a5, -1713
                  add          a7, gp, t3
                  sra          a5, t1, sp
                  addi         s4, s2, 1138
                  and          s5, s9, t0
                  addi         s4, a0, -275
                  slti         s8, a7, 621
                  xori         a3, s11, -1623
                  sra          t6, t1, s0
                  srli         s5, s11, 28
                  nop
                  slli         t0, a2, 17
                  slt          s10, t1, a0
                  sll          s9, zero, t4
                  ori          a3, zero, -524
                  slli         t0, a5, 8
                  srai         t4, s8, 20
                  add          s4, tp, t6
                  or           s9, a7, ra
                  sltiu        a7, t5, 1921
                  slli         ra, s11, 14
                  srli         t0, a2, 26
                  xori         a2, s5, 1465
                  ori          a7, s7, -231
                  sltiu        a3, s5, -1901
                  or           t5, s9, a2
                  slt          t2, t3, s4
                  nop
                  nop
                  srai         s2, s3, 12
                  srli         s6, s11, 18
                  or           zero, s6, t5
                  slli         ra, s10, 25
                  srli         s8, sp, 16
                  addi         a5, t2, 1357
                  auipc        a1, 602003
                  and          a1, a3, s3
                  sub          t1, s7, a0
                  srai         a6, a6, 14
                  andi         a5, s8, 1877
                  sll          t5, a0, t6
                  srl          a4, s2, s7
                  slt          t6, ra, zero
                  xor          a1, t1, s10
                  andi         s5, a7, -1310
                  sltiu        s5, t4, 1476
                  or           a4, s7, s9
                  slt          s2, s8, s10
                  and          zero, s11, gp
                  sltu         zero, t0, a0
                  sra          a5, s0, s4
                  xori         t3, s0, -485
                  slti         t5, s8, -356
                  addi         sp, ra, 990
                  sltiu        t6, sp, -1058
                  slt          s7, s4, t1
                  srli         t4, s3, 29
                  auipc        sp, 304967
                  sra          t2, s6, s4
                  addi         t4, a6, 1376
                  sltiu        s5, s6, 45
                  andi         s4, sp, 884
                  add          s5, s7, s3
                  or           s4, a2, s0
                  sra          t2, s2, s7
                  xor          a7, a0, s5
                  ori          a2, a4, -1205
                  or           s1, a0, a4
                  addi         a6, a0, 393
                  srai         t5, t6, 22
                  slt          a4, zero, a2
                  sub          s6, ra, sp
                  or           s6, a6, ra
                  srli         ra, a3, 10
                  srai         t6, t6, 5
                  srli         t3, s4, 8
                  andi         t1, s6, 1643
                  srli         t4, a0, 4
                  xor          a2, s4, s3
                  add          s9, s0, sp
                  andi         a3, t6, -996
                  slti         s5, a7, -2036
                  sub          zero, t5, sp
                  sub          a4, a3, t5
                  srl          t1, ra, a2
                  slt          a7, s3, tp
                  sub          a3, s7, a6
                  addi         tp, s5, -42
                  xori         zero, s0, -1982
                  and          zero, t3, a6
                  or           a0, t5, sp
                  add          s2, zero, ra
                  sll          s1, t0, s8
                  srl          s7, t0, t1
                  lui          s5, 22921
                  slti         a5, s5, -1150
                  or           a4, a1, s7
                  sra          t0, s1, zero
                  or           t1, t3, a6
                  xor          gp, a7, a3
                  slt          ra, t3, t1
                  sll          zero, a1, a3
                  slt          s8, a2, a3
                  addi         t4, t2, 563
                  sltiu        a2, a6, 1825
                  sra          a3, gp, s11
                  addi         a5, a4, 1783
                  slti         t6, s7, -859
                  sltiu        s10, a2, -1667
                  ori          s7, gp, -22
                  srli         ra, t4, 1
                  nop
                  addi         a5, zero, -30
                  slti         s9, s0, 2018
                  srl          zero, sp, s1
                  sll          s5, t6, s0
                  andi         s10, t1, -1853
                  and          s10, a7, s8
                  ori          a6, ra, -806
                  slli         t0, t3, 1
                  sll          t1, s5, s0
                  nop
                  add          a7, s4, t5
                  nop
                  add          zero, t3, tp
                  lui          s9, 783550
                  srli         sp, s2, 3
                  and          a6, s9, s5
                  srli         t6, a7, 2
                  sll          t0, a6, gp
                  or           t1, a2, a2
                  ori          a2, s10, 2000
                  and          a5, t4, a6
                  slti         t1, t0, -109
                  addi         t5, tp, 907
                  andi         t0, sp, -883
                  sll          t1, a7, s4
                  slt          a6, s0, s4
                  srai         zero, a3, 14
                  or           s2, s10, ra
                  lui          sp, 310444
                  lui          gp, 1010367
                  nop
                  srai         s1, s8, 1
                  slti         s8, a6, 1313
                  slt          s9, t6, s2
                  sltu         zero, a2, gp
                  slt          a0, t6, ra
                  or           a4, zero, a6
                  sltu         t1, zero, s5
                  sltu         s9, a0, t3
                  xor          s7, a3, s2
                  and          a0, tp, s1
                  lui          a1, 224601
                  slti         a3, s8, -934
                  andi         zero, s2, 185
                  addi         t5, a0, 1627
                  xor          t6, gp, t5
                  lui          t0, 143660
                  xor          t4, ra, s10
                  lui          s5, 79206
                  sltu         s8, t3, t0
                  lui          ra, 412262
                  slli         t0, s5, 19
                  ori          gp, a1, -1491
                  xori         a6, s6, -1937
                  andi         s8, s6, -393
                  srai         t6, t6, 23
                  or           s5, s10, s5
                  or           a5, s10, a4
                  ori          s4, a0, 70
                  srai         a4, s9, 21
                  xor          a0, a2, s3
                  sll          s1, a7, s1
                  sll          t0, a4, ra
                  sltiu        a3, zero, -614
                  slti         zero, a3, 1328
                  lui          t1, 481973
                  add          t6, s10, s1
                  srl          t0, a0, t0
                  sll          t6, s10, s2
                  ori          s4, t1, 1446
                  or           tp, gp, s0
                  sll          sp, a1, ra
                  srli         tp, s9, 8
                  lui          a0, 745827
                  srli         t5, s4, 17
                  xori         a5, t3, 993
                  srli         t4, t4, 10
                  sll          a0, t1, t0
                  sll          t5, sp, s9
                  sltu         ra, s4, gp
                  ori          a2, t3, -753
                  addi         tp, s9, -1200
                  slti         t3, t0, 80
                  xori         t6, t6, 1778
                  sll          t1, t4, sp
                  srai         t4, a3, 21
                  sub          gp, ra, a7
                  slti         s4, s9, -1757
                  xori         s9, a3, 375
                  slli         a6, a2, 28
                  srl          s2, s2, t2
                  nop
                  add          s7, a7, a5
                  sll          tp, t5, a3
                  sltu         s6, t2, gp
                  add          gp, s7, s8
                  sltu         t3, s5, t0
                  xori         t2, s6, 1836
                  and          s1, tp, a7
                  sltiu        s6, a5, 1232
                  and          s2, a3, a0
                  lui          s10, 697861
                  andi         t5, t6, 981
                  or           s7, s2, sp
                  slti         t4, t1, 608
                  nop
                  sub          a2, s6, a1
                  addi         s9, sp, -1122
                  xor          s8, sp, a0
                  sltiu        s8, a6, -221
                  srli         t2, a2, 1
                  auipc        t0, 595560
                  and          s7, a2, t2
                  sub          t0, a4, t0
                  add          s7, gp, sp
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           a6, 0x0
                  li           sp, 0x0
                  li           s7, 0x0
                  li           s4, 0xd848133c
                  li           s1, 0x80000000
                  li           t3, 0x0
                  li           a0, 0xffffffff
                  li           tp, 0x0
                  li           a4, 0xffffffff
                  add          s4, s7, sp
                  add          a6, a6, a6
                  sub          a0, a1, tp
                  addi         s1, a4, -162
                  add          a4, a1, a4
                  addi         a6, t3, 2018
                  sub          sp, tp, t3
                  sub          tp, a6, t3
                  lui          s7, 922278
                  add          sp, s1, tp
                  add          a1, a1, a1
                  lui          s1, 61067
                  addi         s1, a4, 456
                  add          tp, s4, a1
                  addi         a6, s7, 1877 #end riscv_int_numeric_corner_stream_17
                  ori          a2, s11, -64
                  slti         t3, a4, -1600
                  and          s4, a4, s5
                  auipc        t5, 663590
                  addi         t5, s8, -401
                  or           a3, s8, s10
                  sub          sp, s4, s1
                  auipc        tp, 1042199
                  xori         s1, t5, -1571
                  addi         a3, s2, 60
                  xor          s1, t0, s0
                  sub          gp, s1, a7
                  or           s6, sp, ra
                  sltiu        tp, t3, 1900
                  andi         t2, t5, -1538
                  srl          t2, tp, t6
                  sll          a5, a3, t5
                  auipc        zero, 482435
                  and          a5, a3, a6
                  sub          a1, t3, s1
                  srl          s10, s6, s8
                  or           gp, a4, t4
                  auipc        a1, 272709
                  slt          t2, sp, t3
                  sll          ra, s6, a2
                  xori         sp, t4, -1432
                  slli         s6, s2, 30
                  xori         a1, s7, 1786
                  slli         zero, s7, 31
                  xori         sp, t6, 364
                  srai         gp, a1, 18
                  slt          sp, t1, a4
                  and          s5, a1, t2
                  xori         t2, zero, 1469
                  sra          t1, s4, s10
                  or           sp, a6, gp
                  sltiu        t2, s3, 1624
                  sub          a4, t4, a1
                  slti         a4, tp, -1554
                  add          s2, s1, ra
                  srli         s5, s1, 22
                  slt          a0, t1, s1
                  srl          s10, s10, t6
                  sltu         t6, a5, a4
                  sub          s8, sp, s6
                  andi         t2, a2, -501
                  slt          s5, s10, s8
                  xori         s7, s10, -1494
                  and          s7, a4, t1
                  sltu         s10, zero, s0
                  xor          s4, a1, s7
                  lui          a6, 413513
                  sll          a2, s2, s1
                  srli         a0, sp, 8
                  nop
                  auipc        t2, 679360
                  sub          s10, s6, a1
                  sra          a4, a3, s7
                  sra          t0, t1, gp
                  srai         sp, s11, 30
                  sltu         a1, ra, t1
                  add          t2, a2, ra
                  sltiu        s6, a5, -1785
                  slti         s6, t6, -97
                  xori         s8, gp, -1890
                  or           a4, zero, s4
                  slti         a1, s9, 828
                  srli         a7, s11, 15
                  srai         s4, sp, 20
                  auipc        t6, 280320
                  xor          t5, a6, s0
                  andi         s2, ra, 577
                  lui          t2, 86725
                  sltiu        a0, tp, -775
                  sll          t4, a5, s4
                  sll          ra, a6, a6
                  andi         s7, a2, -817
                  sltu         t6, sp, a7
                  srai         tp, s3, 8
                  sra          ra, t0, a5
                  addi         s2, s2, 854
                  and          gp, s6, t6
                  lui          t1, 515792
                  sll          a2, s5, s3
                  nop
                  lui          t4, 355912
                  ori          a6, s5, 257
                  sltiu        zero, a5, -917
                  lui          a7, 20720
                  addi         sp, t5, -1899
                  ori          a0, s9, 419
                  addi         sp, s11, 990
                  or           s4, s7, s7
                  sltu         zero, t3, a1
                  ori          s1, a1, -796
                  sll          s10, sp, t5
                  slli         t2, t1, 30
                  ori          s10, s0, 794
                  or           a4, s6, a3
                  and          a5, s1, s1
                  or           sp, a0, s0
                  nop
                  sltiu        a1, a3, 1773
                  srai         sp, s11, 2
                  srli         s7, t0, 20
                  xori         zero, ra, 1770
                  slt          s4, s0, a2
                  sub          t1, s1, s6
                  slti         s4, s8, -243
                  andi         zero, a5, 1015
                  sltu         s4, s0, s6
                  slt          t3, t3, s6
                  srai         t5, tp, 20
                  slli         a6, sp, 19
                  sltiu        a5, s9, 1814
                  sub          a0, t3, t0
                  srl          ra, a1, t1
                  auipc        s1, 1034553
                  sra          t1, t6, t4
                  srl          s7, ra, zero
                  add          s10, sp, ra
                  auipc        zero, 521387
                  auipc        sp, 856481
                  xori         s1, s3, -701
                  ori          t6, s1, 1811
                  andi         s6, s2, -2030
                  srai         s7, gp, 12
                  slti         t6, a2, -1290
                  srli         s6, s8, 17
                  sra          s8, a4, s3
                  lui          t5, 987717
                  add          s9, a2, s5
                  addi         t0, s5, -978
                  slli         s10, s8, 2
                  sub          s10, zero, s10
                  nop
                  sltiu        gp, t2, 1654
                  slt          zero, s11, s5
                  sltiu        s7, a7, 1150
                  srli         t4, s11, 22
                  nop
                  and          s2, s6, a4
                  sltiu        sp, sp, -1024
                  sra          a0, s2, t1
                  slti         t2, s5, -755
                  add          s4, s2, s0
                  li           s6, 0x75dce28b #start riscv_int_numeric_corner_stream_18
                  li           a3, 0x80000000
                  li           s1, 0x80000000
                  li           gp, 0x0
                  li           s2, 0x38645c1d
                  li           s4, 0x80000000
                  li           a6, 0xffffffff
                  li           t5, 0xffffffff
                  li           t2, 0x0
                  li           a2, 0x0
                  nop
                  nop
                  add          t5, s1, s6
                  nop
                  auipc        s4, 192869
                  lui          a2, 808216
                  auipc        a3, 321234
                  addi         t5, a2, -1163
                  sub          t2, t2, s1
                  add          gp, s1, a6
                  sub          s2, a3, a3
                  addi         t5, t2, -1194
                  lui          s1, 723921
                  sub          s4, t2, a3
                  addi         gp, s4, -323
                  sub          s6, a2, a3
                  auipc        s2, 220012
                  lui          s4, 814621 #end riscv_int_numeric_corner_stream_18
                  xori         zero, tp, -878
                  sub          ra, a6, t5
                  srai         a4, a3, 2
                  sra          s4, t3, s4
                  sltu         s7, t5, s5
                  slti         s7, t1, -1843
                  srli         t2, a6, 4
                  sltiu        s4, t4, 465
                  add          a7, gp, s10
                  sll          ra, a2, s11
                  ori          a1, ra, 213
                  xor          ra, t1, s11
                  or           t0, t4, s9
                  srai         s1, s8, 24
                  slli         s1, s5, 15
                  addi         a0, t3, 618
                  srl          tp, s11, a7
                  nop
                  and          s5, s0, s5
                  slt          t2, a1, a7
                  sltu         a5, s7, t6
                  or           s2, a1, s0
                  or           a7, a1, sp
                  sra          a1, s5, a0
                  xor          s2, s8, s1
                  lui          a2, 907873
                  sltiu        t0, s7, -362
                  slli         s9, t4, 29
                  sltiu        sp, s10, -1683
                  xor          a4, s10, t2
                  slti         s8, s4, -1840
                  slti         s7, a0, -414
                  nop
                  and          t3, zero, t2
                  or           s2, t6, tp
                  and          a3, s8, a2
                  sll          a6, s7, zero
                  and          gp, s3, t0
                  sub          t1, s0, a5
                  andi         a5, a6, -1320
                  and          t0, a5, s3
                  slti         t4, s4, 88
                  andi         t5, s2, 17
                  add          a5, s6, a3
                  and          a5, gp, t6
                  sra          s8, ra, a7
                  sll          s10, a1, gp
                  auipc        s10, 483510
                  srli         s6, s1, 26
                  sltiu        s6, s1, -1327
                  srai         s9, a0, 18
                  sub          a4, a6, sp
                  and          s8, zero, s8
                  xor          s2, s4, s4
                  sll          tp, s4, a1
                  lui          t4, 339273
                  xori         s2, t4, 1652
                  sll          a4, sp, s11
                  srli         a2, s6, 25
                  xor          s2, s6, s6
                  lui          a0, 455290
                  sltu         sp, t1, a7
                  xori         s8, s5, -434
                  slti         t2, s7, 1294
                  xor          t2, s11, s8
                  slli         s5, s4, 14
                  srli         t1, a2, 25
                  slti         s2, s3, -1422
                  sltiu        t5, s1, 1922
                  sltu         s2, sp, s10
                  sll          t0, s6, a7
                  lui          a3, 140513
                  add          a4, t1, s11
                  xori         a0, s1, 1455
                  andi         s1, a4, 667
                  li           t3, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           a7, 0x0
                  li           a3, 0x0
                  li           a4, 0x80000000
                  li           s9, 0xffffffff
                  li           t6, 0xffffffff
                  li           tp, 0x80000000
                  li           gp, 0x2e712378
                  li           s7, 0xffffffff
                  li           a2, 0x80000000
                  lui          gp, 319312
                  add          a4, t3, a2
                  nop
                  sub          a3, t6, a3
                  addi         a2, t6, 1790
                  lui          t3, 448734
                  nop
                  auipc        s7, 893928
                  addi         gp, s7, 788
                  lui          a2, 87662
                  addi         tp, a7, -875
                  addi         s7, s9, 37
                  nop
                  auipc        gp, 845421
                  addi         gp, a4, -752
                  sub          tp, a4, a4
                  sub          t3, a7, a3
                  add          tp, a2, a7
                  lui          tp, 943021
                  addi         a7, a4, -1312
                  lui          tp, 1034789 #end riscv_int_numeric_corner_stream_9
                  slt          s2, s5, s9
                  slli         a6, a5, 7
                  auipc        s8, 888041
                  or           s7, s2, gp
                  slli         s2, s10, 23
                  srai         a7, gp, 21
                  slt          t1, ra, a2
                  nop
                  and          a7, t5, t6
                  add          s4, sp, a4
                  slt          a7, gp, t1
                  addi         gp, a6, 435
                  sltu         s1, a4, sp
                  auipc        t5, 900860
                  ori          s1, t6, -630
                  slli         a7, sp, 3
                  xor          a3, t1, s7
                  srli         a1, t5, 25
                  xor          t3, s10, t2
                  or           t4, s10, a7
                  slt          a7, ra, a5
                  srli         s8, sp, 14
                  slli         t4, a2, 16
                  andi         sp, sp, -1298
                  sll          a3, zero, t5
                  srai         a7, t6, 30
                  xori         a1, t5, -1520
                  sltiu        t1, s11, 987
                  sub          t0, sp, a1
                  srli         sp, s7, 5
                  srli         a0, t5, 23
                  nop
                  addi         a4, zero, -1804
                  srl          a6, s3, gp
                  auipc        tp, 847840
                  srli         t5, a6, 3
                  ori          a3, t2, -1619
                  nop
                  nop
                  auipc        a7, 440320
                  srl          t4, s1, a2
                  or           sp, s7, ra
                  nop
                  andi         a7, a3, -1017
                  sltiu        t4, s6, -1906
                  sltu         s5, s7, sp
                  nop
                  lui          t2, 624536
                  srli         s2, s6, 21
                  slti         s8, s3, 922
                  slt          t5, s5, a6
                  lui          t0, 344434
                  sub          s1, a1, a6
                  addi         t2, sp, 1438
                  add          a5, a3, s10
                  sub          gp, t2, s9
                  sltiu        a7, t5, -1947
                  xori         s7, s0, -1621
                  or           s6, t3, t4
                  xor          a3, s3, s10
                  ori          s8, a4, -1485
                  srai         t4, s10, 22
                  sll          s8, t4, s4
                  slti         ra, sp, -679
                  add          s9, s0, s3
                  srai         t6, t4, 15
                  srl          s4, t0, s0
                  sll          sp, t1, s9
                  srli         sp, ra, 3
                  slti         t5, s1, 925
                  sll          s4, s6, s9
                  slt          tp, t6, s3
                  lui          t3, 582414
                  slt          s5, t1, t6
                  sub          a4, a2, a4
                  slt          s10, gp, a2
                  addi         s4, s8, 1041
                  and          a5, s2, s1
                  sltiu        a0, gp, 306
                  ori          t3, s5, -1456
                  andi         t3, a0, 1943
                  srai         t5, a3, 21
                  or           t3, ra, t5
                  andi         a2, a3, -1708
                  or           a2, s10, s3
                  ori          s8, t6, 1056
                  srai         a4, a1, 12
                  sll          a5, t1, s6
                  or           a6, sp, ra
                  sltu         t2, s11, s8
                  auipc        t1, 787772
                  nop
                  and          s8, a2, t5
                  xor          zero, sp, s10
                  sltu         s2, a3, a0
                  xor          s8, a3, a0
                  slt          s6, t1, s8
                  slli         a3, a7, 27
                  srli         s4, t1, 8
                  slli         ra, a2, 11
                  sltiu        t3, s1, 5
                  xori         a6, t1, 1461
                  sll          a3, s9, t0
                  ori          a3, ra, -575
                  lui          a1, 22148
                  auipc        t6, 1046001
                  srai         s5, t5, 11
                  sltiu        s1, a5, 1326
                  sra          s6, s1, zero
                  nop
                  xori         s2, a5, -1752
                  and          t1, t0, s7
                  slli         s8, sp, 10
                  and          t1, s3, s8
                  slli         t6, s1, 6
                  xor          s4, t1, s9
                  or           s7, s10, ra
                  srl          ra, s8, a1
                  sll          s5, t1, sp
                  ori          gp, tp, 1956
                  xori         zero, sp, 34
                  xor          gp, t5, s2
                  slti         s1, a0, 817
                  slti         sp, s8, -924
                  or           a4, t2, a1
                  sltu         s10, s10, s2
                  xor          s7, a7, a6
                  slli         s5, tp, 11
                  and          s4, s9, s11
                  sltiu        t2, s5, 141
                  slt          zero, a0, a6
                  ori          zero, a1, 1799
                  slt          s9, a2, a0
                  ori          t4, s10, -399
                  and          sp, tp, a4
                  and          a7, a1, ra
                  add          t0, t5, s6
                  srai         s10, zero, 14
                  xori         s2, s4, 564
                  srli         s5, s8, 24
                  lui          a2, 642034
                  slti         t6, s7, -1680
                  srli         t3, t4, 25
                  xori         a4, s8, -1190
                  xor          s1, a7, t6
                  srl          s4, zero, gp
                  slli         s4, a0, 8
                  nop
                  auipc        s7, 801746
                  sra          s2, a3, s2
                  andi         s5, sp, 477
                  sub          s5, a5, a3
                  auipc        a4, 543462
                  add          a7, sp, tp
                  or           t5, a4, gp
                  srai         s10, s8, 12
                  auipc        t1, 1033156
                  nop
                  sll          gp, a2, zero
                  slli         s1, a4, 1
                  and          s4, s0, t6
                  sub          a3, s6, a1
                  and          a4, a1, s6
                  xor          sp, s8, t5
                  sltu         t5, sp, a2
                  xori         s8, s4, 830
                  auipc        a1, 643859
                  auipc        s5, 772270
                  and          s1, a5, s10
                  xori         s7, t5, 220
                  nop
                  slt          a3, t1, tp
                  addi         t2, gp, 366
                  auipc        a6, 27076
                  auipc        s4, 705229
                  andi         t3, t3, -1953
                  lui          tp, 163687
                  sltiu        s5, a0, 539
                  sltiu        tp, t5, 1558
                  add          ra, s2, ra
                  ori          s4, a4, -613
                  addi         a5, t5, -1555
                  auipc        a4, 829570
                  auipc        s7, 736193
                  srli         ra, a0, 9
                  ori          ra, s0, 900
                  sltiu        t2, t2, -1971
                  slli         tp, a1, 30
                  slli         s4, a6, 4
                  sub          ra, s0, s3
                  auipc        s7, 1026589
                  xori         ra, a5, -1371
                  sltu         s9, gp, s7
                  add          t0, s9, t6
                  slti         s10, s8, 1995
                  auipc        zero, 404340
                  slti         s6, ra, -1991
                  srli         t5, s1, 7
                  sra          a4, gp, a0
                  addi         t6, s6, 832
                  sltiu        s10, t5, -1194
                  srl          s6, zero, a4
                  auipc        t4, 970616
                  slt          s10, t5, a0
                  and          a6, gp, a7
                  sltu         s2, a3, zero
                  li           a1, 0x305d3933 #start riscv_int_numeric_corner_stream_0
                  li           s5, 0xb69e88e2
                  li           t4, 0x80000000
                  li           a4, 0xffffffff
                  li           a6, 0xffffffff
                  li           s6, 0x80000000
                  li           s9, 0xffffffff
                  li           t1, 0x8a7831db
                  li           s7, 0xffffffff
                  li           a3, 0x0
                  nop
                  sub          t4, t1, s9
                  nop
                  auipc        a4, 681682
                  addi         s5, s7, -2044
                  sub          s5, t1, s6
                  add          t4, s7, t1
                  addi         s5, t4, -1612
                  auipc        t1, 192802
                  lui          s7, 328328
                  add          a3, s9, a6
                  auipc        t4, 993527
                  auipc        a3, 101160
                  nop
                  lui          a1, 639782
                  lui          t4, 903480
                  addi         a3, s5, 893
                  lui          t4, 791695
                  add          a6, s7, s5
                  lui          s7, 346248
                  add          t4, a4, t1
                  addi         s7, a4, -1452
                  addi         a4, t1, 1475
                  nop
                  add          a4, a3, s9
                  lui          s7, 720444
                  add          a3, a1, s7
                  nop #end riscv_int_numeric_corner_stream_0
                  addi         gp, a0, -993
                  and          t2, tp, s11
                  srl          s5, s0, s6
                  nop
                  lui          a5, 613512
                  sub          a0, s6, a1
                  sub          t3, t3, a2
                  ori          s6, s5, 1096
                  lui          s9, 669548
                  lui          s8, 745328
                  srai         a2, s11, 3
                  and          a4, tp, s11
                  sltu         t4, s1, s5
                  addi         t6, s5, 396
                  srai         a1, s9, 16
                  sltiu        t4, a1, 737
                  auipc        s2, 328599
                  xor          s10, a5, a0
                  slti         a3, t6, -160
                  xor          s8, a0, t3
                  xori         a6, a7, 417
                  or           s7, s9, a3
                  add          a0, s8, a7
                  sltu         t3, a4, t6
                  and          zero, s3, t3
                  sra          t3, t5, t6
                  xor          a3, t1, sp
                  addi         a1, s6, -659
                  slti         a1, s10, -1523
                  sub          s4, s5, s8
                  auipc        t1, 608081
                  or           t2, a7, ra
                  and          s1, a4, ra
                  sll          a7, a7, a0
                  addi         a3, t0, 1379
                  add          a6, s5, t5
                  addi         s10, gp, -1224
                  sltu         a4, t1, tp
                  sll          zero, gp, a5
                  sltiu        t6, a6, -919
                  or           t3, a5, s0
                  andi         zero, s11, 1272
                  srl          a6, t0, s3
                  ori          t2, t3, 1951
                  srli         s6, s3, 22
                  sub          a1, s6, t3
                  sll          a1, s9, tp
                  slt          s8, a6, ra
                  nop
                  add          ra, tp, s4
                  srli         s10, zero, 26
                  and          ra, s3, t2
                  slti         s9, t4, 1961
                  lui          s7, 370889
                  auipc        zero, 586206
                  add          a1, s4, s0
                  nop
                  addi         s1, t6, 4
                  sll          a7, a3, tp
                  srl          sp, t3, s4
                  sll          s6, s9, zero
                  xori         s10, a5, -719
                  lui          t5, 858508
                  add          ra, a0, a1
                  sra          a4, s8, s4
                  slli         s4, a2, 28
                  and          t0, a0, s0
                  srl          t2, s10, s5
                  srai         t4, s4, 6
                  auipc        zero, 160771
                  sll          t5, t5, t4
                  slti         t5, s1, 1387
                  nop
                  xor          t2, tp, s9
                  srai         a0, s0, 3
                  and          s2, a4, a2
                  sltiu        a1, sp, 177
                  sltiu        t1, a6, -428
                  sll          s9, t5, t4
                  lui          s1, 489756
                  slti         a0, t5, -979
                  slti         t1, a0, 1417
                  andi         s5, t0, 1303
                  srai         a7, t5, 12
                  sltiu        ra, s1, 616
                  andi         s10, s8, -1362
                  sra          a3, t3, t4
                  srai         zero, t0, 12
                  slti         s9, zero, 896
                  sltu         s10, t1, a6
                  srli         a3, a4, 26
                  slti         t3, s9, -214
                  slti         a3, a7, 380
                  ori          t1, t2, -839
                  addi         s2, s0, -1528
                  slti         t6, s10, -1163
                  sltiu        sp, s11, -1805
                  sltu         a5, a1, s10
                  slli         a5, s8, 6
                  addi         t5, tp, 1384
                  ori          a7, s5, 1098
                  lui          tp, 171210
                  ori          t2, sp, -1864
                  add          a0, s8, s2
                  srl          a4, a2, t1
                  addi         a5, t0, -1246
                  sra          s4, s5, a0
                  nop
                  auipc        s10, 244177
                  auipc        s4, 171215
                  srli         t2, a6, 12
                  and          s7, s10, gp
                  auipc        t4, 400271
                  slt          t3, a7, s6
                  slli         t1, s7, 16
                  auipc        a7, 892831
                  slli         t5, t2, 17
                  andi         a0, s9, 385
                  xori         sp, a6, 702
                  nop
                  addi         t1, s1, -1708
                  addi         s6, s6, -931
                  nop
                  sltu         sp, t6, ra
                  and          gp, a4, a2
                  sll          t3, gp, gp
                  andi         s6, s7, -1689
                  lui          a2, 427973
                  or           s1, t2, s5
                  add          s7, tp, s3
                  sll          a2, s3, ra
                  or           sp, ra, s4
                  and          a0, t5, a3
                  sltiu        s4, s4, -540
                  auipc        ra, 883704
                  addi         a2, s7, -152
                  slt          a2, zero, s2
                  nop
                  sub          zero, t4, s5
                  srai         ra, t6, 8
                  addi         s9, a2, 1234
                  xori         tp, a5, 635
                  andi         gp, sp, 311
                  sltiu        t5, a6, 32
                  or           a1, a6, a4
                  sub          s9, s2, a6
                  sltu         s2, s10, s2
                  auipc        s6, 145650
                  xor          s8, a0, sp
                  ori          s6, t0, -380
                  srl          a7, t5, a2
                  and          a2, s7, a6
                  slti         gp, s1, 1555
                  srli         sp, s11, 28
                  xor          t0, a6, a1
                  sltiu        a7, a4, -1885
                  lui          s1, 602516
                  add          gp, zero, a4
                  addi         s10, s3, 1783
                  xori         s2, t1, 2027
                  addi         s10, s8, 1528
                  sub          t5, a4, a7
                  add          a6, t4, t5
                  slt          s2, a3, a2
                  slli         a3, s5, 1
                  srl          t6, tp, sp
                  srai         t2, s10, 2
                  sra          a2, t1, s8
                  slli         sp, s6, 0
                  addi         s7, s4, 488
                  slt          s10, s2, t6
                  add          a5, gp, a5
                  sub          a4, s9, s9
                  sltu         t0, a5, t5
                  sll          t2, s0, a4
                  lui          s10, 706277
                  andi         a6, a7, -304
                  sra          s5, s3, t3
                  or           sp, t2, s5
                  slti         ra, s1, 651
                  xori         a1, a7, 1590
                  and          a0, t1, s7
                  sltiu        a3, a0, -425
                  lui          a4, 514112
                  nop
                  sltu         t6, a2, t3
                  and          s8, s11, s6
                  add          t0, tp, s5
                  slt          gp, s11, tp
                  ori          t5, s8, -1685
                  andi         s6, s0, -1301
                  nop
                  srl          a0, s9, a7
                  addi         t0, s8, -966
                  sltu         a7, s10, t4
                  srli         s10, a5, 16
                  srl          t3, t6, s0
                  srli         gp, s11, 27
                  srai         s7, ra, 20
                  sub          ra, t4, a6
                  andi         zero, s1, -481
                  sltiu        s1, s9, -398
                  sltiu        s7, ra, 1275
                  xor          sp, s5, s6
                  sltu         t3, a6, t0
                  sltu         tp, a1, a7
                  sltiu        zero, s11, 843
                  xor          s4, t4, t4
                  srl          t4, s2, t2
                  srai         s1, s7, 5
                  addi         t4, s6, -428
                  sub          s2, a2, s1
                  lui          sp, 950212
                  and          t1, s3, tp
                  auipc        a2, 43753
                  auipc        s6, 500966
                  andi         a3, s9, 345
                  auipc        a7, 200993
                  slt          t0, t1, t1
                  ori          s6, a6, -1314
                  addi         t5, ra, -1844
                  and          a2, a5, gp
                  or           t1, gp, s3
                  sltiu        a4, t6, 1199
                  sltiu        s4, t6, 825
                  nop
                  add          a5, s3, a3
                  slt          a1, s1, s8
                  auipc        t0, 154835
                  auipc        t5, 828060
                  xor          s4, t0, t0
                  ori          t1, s2, 637
                  and          s1, t1, a5
                  srli         s5, a5, 17
                  slt          a7, t3, t4
                  xori         a2, a5, -1029
                  auipc        ra, 758567
                  srai         s8, s0, 16
                  srl          gp, a0, a4
                  or           s1, s4, ra
                  auipc        a5, 658878
                  ori          gp, s10, -1236
                  add          a6, t1, tp
                  and          a2, sp, t0
                  sll          s10, s5, a4
                  srli         s2, t2, 25
                  sll          a6, t4, s4
                  lui          a6, 238461
                  andi         sp, s7, -122
                  xori         a1, t4, 440
                  xori         a1, a1, -417
                  and          a1, t6, tp
                  srl          s5, s5, t0
                  add          t3, t1, s11
                  srli         t2, sp, 26
                  auipc        a7, 896186
                  sub          t1, t3, a0
                  ori          t0, s6, 1707
                  lui          s8, 673032
                  sltu         a2, a5, sp
                  slli         t0, t2, 23
                  sll          ra, s0, a1
                  and          t3, t3, t3
                  or           t0, s6, a4
                  addi         a1, t0, 1168
                  and          s7, s6, s3
                  nop
                  andi         a1, t0, 943
                  addi         tp, s5, 1747
                  add          a0, a0, t6
                  sltu         s10, a7, t4
                  sub          t4, t6, s6
                  lui          t5, 76203
                  sltiu        gp, t5, 1470
                  sub          ra, s4, ra
                  slti         a7, a0, -109
                  xor          a1, s5, s5
                  xor          a3, zero, a0
                  slli         gp, s2, 17
                  srai         t5, s7, 9
                  add          s6, t0, s10
                  andi         a0, s0, -1401
                  addi         a4, t0, 1071
                  slti         t3, s8, -1356
                  sltiu        a7, a5, 1789
                  srai         s8, ra, 18
                  srl          s8, s4, s7
                  slti         a5, gp, -331
                  andi         a1, s10, -1467
                  ori          a1, a5, -1567
                  ori          a4, t1, -1287
                  srai         gp, ra, 27
                  sll          a3, s7, s0
                  add          a0, s6, s1
                  slli         a5, a5, 3
                  slt          zero, a7, a2
                  ori          s1, tp, -1462
                  xor          a3, s7, s5
                  and          s5, a7, a6
                  ori          s4, s6, -52
                  or           s2, s9, s6
                  xor          t2, ra, t0
                  lui          a6, 9403
                  lui          s8, 927349
                  slt          s8, s3, tp
                  auipc        gp, 771244
                  ori          t3, s0, -784
                  ori          sp, a2, 784
                  sra          a1, sp, t3
                  srli         t0, a0, 31
                  lui          a6, 543321
                  ori          a0, a4, -80
                  sll          s4, s1, sp
                  slti         a6, a6, 481
                  sltu         tp, a5, s0
                  addi         s8, s3, 1033
                  and          a1, a4, t2
                  sub          zero, a6, s5
                  srl          t1, t3, s7
                  xori         a6, a6, 920
                  sltu         t2, s3, s10
                  sll          tp, s10, s4
                  andi         t1, ra, -1837
                  sltiu        s8, s11, -256
                  slli         a3, a1, 4
                  auipc        a7, 507522
                  sltu         t1, t3, t6
                  sra          t6, s9, a6
                  srli         t0, t1, 19
                  slti         a4, t0, -1490
                  andi         t5, s11, 614
                  or           a5, s8, a6
                  xor          t5, tp, s3
                  srli         a4, zero, 12
                  slti         s7, a4, 561
                  ori          t2, s2, 1126
                  nop
                  sltu         s4, zero, s1
                  sll          t2, a3, a3
                  or           s5, s9, s5
                  sltiu        a2, t4, 1130
                  sltu         ra, s0, s11
                  slt          t5, a7, a7
                  addi         gp, a5, 832
                  srli         t5, s8, 7
                  xori         zero, t4, -1200
                  andi         t1, t0, -1963
                  sub          a3, s5, zero
                  and          a5, t0, a5
                  lui          a2, 180338
                  sra          s8, s10, a1
                  sll          s1, ra, a1
                  xori         s10, a4, -1031
                  add          t2, t1, s10
                  srai         s9, a0, 17
                  nop
                  srli         tp, t2, 28
                  add          zero, a7, s0
                  slli         ra, a0, 22
                  sltu         a4, s3, s6
                  nop
                  slt          a6, s6, a1
                  sra          s8, t0, s0
                  andi         a5, a5, -420
                  sub          tp, sp, zero
                  andi         a5, t3, -597
                  addi         s8, s5, 610
                  and          sp, s2, t4
                  or           t0, t2, t4
                  sub          a0, t2, s7
                  andi         gp, a2, -475
                  slt          zero, t2, t4
                  or           zero, ra, sp
                  or           t6, a6, a6
                  sub          s7, s1, ra
                  srli         a5, a2, 27
                  ori          a3, t5, -597
                  and          s4, a3, s5
                  srai         s5, t5, 10
                  nop
                  slli         a2, s1, 17
                  ori          s5, t0, -33
                  srli         t0, t0, 17
                  add          s6, s5, s9
                  srai         s2, s3, 29
                  ori          t5, a1, 305
                  addi         s2, s2, -794
                  xori         a1, a3, -1928
                  addi         s9, s1, 1370
                  addi         s10, t5, 739
                  sltiu        s5, s7, 1732
                  addi         zero, tp, -1591
                  srli         s2, s5, 11
                  auipc        s5, 787583
                  sra          t3, s11, a0
                  xori         s5, a6, 624
                  nop
                  sra          s5, ra, tp
                  auipc        a5, 715125
                  sltu         t0, s1, s8
                  sub          zero, t5, s7
                  addi         s6, zero, -772
                  and          a2, t2, s11
                  sltiu        s6, t1, -1404
                  sltiu        sp, t4, -1069
                  sltu         a6, a7, t0
                  add          a1, sp, sp
                  add          t5, t2, a4
                  slt          s8, a5, a3
                  srli         a7, t4, 20
                  srai         t6, gp, 4
                  xor          t0, a2, gp
                  and          s10, t1, gp
                  sltu         a7, s3, t2
                  sll          t4, tp, a0
                  sltiu        s1, a4, 237
                  addi         s9, a0, -545
                  slti         a2, s4, -102
                  andi         t4, s10, 113
                  lui          s8, 808512
                  slli         t0, gp, 18
                  slt          s10, s9, tp
                  srli         a3, t5, 2
                  sltiu        a5, t5, -35
                  add          t4, t0, a2
                  srai         gp, a4, 8
                  sra          s2, s0, t4
                  and          a0, a4, t5
                  sll          gp, t2, s5
                  sll          a3, a4, a2
                  slli         a3, s4, 23
                  andi         a2, a7, -652
                  sra          t6, t1, s2
                  srai         a0, t1, 5
                  sltu         s4, a3, s11
                  or           t0, t1, a4
                  sltu         s4, s3, t4
                  or           s8, a2, t6
                  sub          a7, t3, s10
                  slti         t3, a1, 499
                  sub          s8, a2, t1
                  srl          s4, t6, s8
                  srli         a3, s0, 31
                  slti         s10, s3, 1463
                  srai         a6, s7, 13
                  sltu         s2, a4, t0
                  srai         t0, s11, 13
                  andi         s8, a7, 1336
                  sltu         s7, tp, s4
                  xor          s9, zero, s4
                  xori         t0, a1, 1351
                  andi         s10, a0, 144
                  and          gp, t6, t6
                  andi         a3, gp, 501
                  slli         tp, t3, 2
                  sll          t2, t1, tp
                  sltiu        t4, t0, 1166
                  add          s9, s10, a4
                  sltu         t5, s8, a6
                  ori          a1, s2, -484
                  sra          a5, t6, s10
                  xori         s4, s2, -657
                  and          t6, s5, s11
                  or           s1, t1, ra
                  sub          sp, gp, a3
                  and          zero, t1, tp
                  slt          a7, gp, s11
                  auipc        s2, 758116
                  sltu         t0, s2, gp
                  or           sp, s2, s0
                  andi         s6, a3, 410
                  sltiu        ra, t6, 960
                  sra          a1, s11, s3
                  or           s6, t4, s10
                  nop
                  sub          t1, gp, s9
                  lui          t6, 1005620
                  sub          s2, a0, s1
                  auipc        s9, 454937
                  and          s6, s5, s6
                  or           a7, t2, gp
                  nop
                  nop
                  lui          a4, 408388
                  nop
                  srl          sp, s4, s6
                  slti         s1, s10, -1151
                  auipc        s4, 682222
                  sra          a4, ra, s8
                  add          a6, s10, a3
                  srl          t4, zero, t2
                  auipc        a5, 711882
                  sub          t3, s5, t1
                  srai         t4, a6, 26
                  and          s9, t0, tp
                  sll          t4, t6, a0
                  andi         t6, s9, -1119
                  ori          a5, tp, 1246
                  or           t1, t3, s6
                  slt          a4, s6, a1
                  srai         tp, s9, 22
                  xor          t3, t2, s4
                  sltu         a3, t6, s4
                  and          a5, s6, s11
                  sll          t0, s7, s5
                  add          t4, s0, s1
                  addi         sp, s8, -1830
                  lui          sp, 1016796
                  and          ra, s1, t0
                  addi         a1, a6, 730
                  slli         a6, s5, 25
                  addi         t0, s2, -1051
                  ori          t4, tp, -487
                  auipc        s10, 423972
                  and          a6, s1, tp
                  andi         zero, s1, 169
                  nop
                  sub          a2, gp, s3
                  sltu         zero, s6, t4
                  sltiu        s1, a4, 1851
                  sub          t5, ra, sp
                  slt          a5, s9, s4
                  slli         gp, a7, 21
                  srai         a4, s8, 24
                  xori         s8, s11, -1577
                  add          t0, s9, s1
                  slli         ra, s11, 15
                  sra          s6, s4, s0
                  srl          a3, a6, zero
                  sub          a4, a6, s3
                  sll          ra, ra, sp
                  nop
                  sll          zero, gp, t4
                  lui          s9, 889748
                  srli         s5, s8, 28
                  lui          sp, 631091
                  srai         s9, t6, 30
                  sll          a4, s0, s3
                  sra          t2, s7, s6
                  srai         s5, t6, 30
                  auipc        t3, 223539
                  and          s2, a7, s4
                  slti         t0, sp, -1087
                  add          s8, a6, t3
                  srl          a3, tp, t6
                  nop
                  slli         a4, s6, 6
                  sll          s6, s11, s3
                  andi         gp, s10, 276
                  xor          t4, a0, a1
                  andi         s1, a5, 1933
                  and          s2, a4, s11
                  xor          t3, ra, a7
                  sltiu        a3, a6, -646
                  ori          t4, a5, -758
                  addi         t1, a2, 1493
                  xor          s5, s10, a1
                  sll          a5, s11, t4
                  sltu         gp, a7, s10
                  andi         s2, s2, -1447
                  sltiu        s1, s3, -1668
                  xor          tp, t6, s3
                  and          t0, zero, a7
                  andi         s10, s10, -1044
                  and          a6, s11, a1
                  sub          s10, a7, a2
                  slli         t6, zero, 22
                  xori         a0, sp, -1451
                  slt          t0, t3, t1
                  sra          sp, a2, tp
                  nop
                  nop
                  ori          a3, t4, 649
                  nop
                  srai         t6, a3, 15
                  srl          t2, a6, a3
                  slti         t1, s3, -963
                  auipc        s4, 55989
                  slt          s10, a7, t6
                  srli         zero, ra, 15
                  add          a6, t6, s6
                  xori         s2, a0, -1552
                  slli         a3, a5, 26
                  andi         t4, t2, 422
                  srai         ra, a1, 4
                  slti         s10, tp, 833
                  xor          a7, s2, s3
                  sltu         t0, t4, t2
                  and          gp, t1, s3
                  ori          a2, a1, 211
                  xor          t6, s0, a2
                  srl          s10, gp, s11
                  srl          t6, t1, a5
                  slt          a0, s9, s5
                  xor          t5, s7, s7
                  auipc        sp, 379753
                  sltiu        s6, a7, 540
                  addi         t4, a4, -176
                  slt          a3, t0, a7
                  sra          a7, t3, t3
                  slli         t2, t1, 27
                  andi         a0, a3, -1804
                  srli         s6, s10, 1
                  nop
                  sltiu        sp, t3, 1597
                  sltu         gp, t3, s11
                  xori         tp, a0, 710
                  xori         a3, s1, -307
                  sll          s2, s8, s3
                  or           ra, tp, s6
                  add          t5, a4, s5
                  slti         a3, t0, -1996
                  srai         a1, s2, 24
                  nop
                  auipc        s4, 503727
                  xor          t1, s3, t6
                  srli         s5, a1, 19
                  addi         a7, s0, 1140
                  srl          a3, a3, a0
                  sltu         a5, s4, t6
                  ori          a7, a0, -647
                  xori         s7, t0, 164
                  slti         sp, s5, 1046
                  and          s1, s4, a5
                  xori         ra, s2, 1845
                  add          t0, a4, s11
                  ori          s4, s1, -830
                  andi         t2, a4, 1183
                  sltu         sp, a4, t6
                  slli         a6, s1, 16
                  sltu         s4, a1, s9
                  slli         gp, a2, 16
                  sll          a0, a3, a0
                  sll          a2, t5, s11
                  or           sp, a5, s2
                  srli         t3, s2, 8
                  srl          t2, a1, s5
                  slli         s8, t6, 3
                  andi         a6, a7, 982
                  add          t4, s4, a2
                  or           a2, a0, t3
                  sltiu        s1, s7, 88
                  slli         s2, s6, 23
                  sra          a6, a7, s5
                  sltu         s2, s11, s0
                  or           s9, a1, zero
                  nop
                  lui          a2, 768767
                  slli         s10, s1, 9
                  xor          a5, s11, a0
                  sltu         a1, zero, s9
                  slli         a2, t4, 3
                  add          t2, zero, a5
                  or           s4, s8, t6
                  srl          a1, a3, s5
                  sltu         a7, s6, t6
                  auipc        s7, 265705
                  srl          s8, t1, s4
                  sltu         s1, zero, a7
                  slti         s9, t4, 1790
                  andi         t6, a5, -829
                  slt          s1, s3, s7
                  srl          sp, tp, ra
                  sra          sp, s8, zero
                  slti         sp, gp, -1441
                  xori         sp, s11, 2038
                  nop
                  li           t3, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           tp, 0x80000000
                  li           sp, 0x80000000
                  li           a3, 0xd3137c9a
                  li           a1, 0x80000000
                  li           t4, 0x0
                  li           t0, 0x0
                  li           s7, 0x0
                  li           s10, 0xa7ff4c3e
                  li           ra, 0xffffffff
                  add          t3, s10, tp
                  add          t0, ra, ra
                  nop
                  auipc        ra, 1015968
                  addi         a3, s10, 307
                  sub          tp, t3, a1
                  add          t4, sp, s10
                  auipc        sp, 483020
                  add          t4, tp, sp
                  nop
                  lui          ra, 904317
                  add          tp, ra, t0
                  auipc        sp, 746973
                  lui          s7, 821728
                  sub          s7, sp, a3
                  addi         sp, ra, 577
                  lui          s10, 160992
                  auipc        a3, 874798
                  nop
                  add          t0, tp, a3
                  addi         t4, t3, -1507
                  auipc        t3, 724213
                  lui          s7, 684149 #end riscv_int_numeric_corner_stream_3
                  srli         s9, gp, 15
                  sll          t4, a7, a2
                  sra          a7, t2, s9
                  nop
                  auipc        t5, 907340
                  andi         a7, t2, -1036
                  sltiu        sp, zero, -933
                  nop
                  lui          t4, 215188
                  sub          t0, t3, s4
                  srai         t1, s11, 11
                  and          s2, a6, zero
                  add          a5, s0, s10
                  sra          a3, a6, a4
                  sltu         tp, s3, s8
                  slt          s2, s10, s10
                  srli         s9, a6, 18
                  slti         s2, s5, -1996
                  sltu         t3, s3, s1
                  add          s10, t5, t4
                  sra          s1, a4, a2
                  sll          a6, a4, a0
                  sll          s6, s3, s11
                  xori         s7, a4, 1153
                  sltiu        s5, t0, -995
                  xori         s6, s1, -1462
                  xor          t4, a0, a4
                  sub          a1, a0, t6
                  ori          s5, s11, -150
                  sll          a1, t3, sp
                  srai         a4, s5, 30
                  addi         t5, a0, 235
                  or           a7, a3, a4
                  addi         a2, a6, -1882
                  xor          a0, s10, sp
                  ori          s7, ra, -340
                  or           a3, t0, s5
                  nop
                  sub          s7, gp, s5
                  slli         ra, a5, 1
                  ori          a3, s8, -1950
                  srli         s1, t6, 18
                  srai         t3, tp, 12
                  slli         ra, s8, 22
                  srl          a5, s10, s7
                  xori         t0, a5, -1280
                  lui          s9, 865832
                  slli         a2, s0, 9
                  ori          t4, s8, 1538
                  slti         a1, a4, -211
                  sra          s9, ra, a1
                  sra          sp, ra, a7
                  sltu         a3, a7, t3
                  sll          sp, s3, s0
                  auipc        s1, 275208
                  and          s9, t1, a6
                  srli         s4, t2, 28
                  slt          a7, t4, a6
                  slli         t6, t1, 10
                  xor          s5, s7, t0
                  slt          s5, ra, s1
                  sll          s1, t6, s8
                  or           t2, t4, s7
                  lui          a1, 330685
                  sll          s8, s9, a1
                  srl          t6, s0, s6
                  slli         s6, ra, 23
                  srai         tp, sp, 8
                  slt          t6, sp, a7
                  lui          gp, 132973
                  and          s10, a3, t5
                  sltiu        s8, tp, -589
                  sltiu        t6, a0, 1241
                  add          s7, s5, a5
                  sltu         a5, a4, s10
                  auipc        a6, 932201
                  srai         s8, s4, 21
                  slt          sp, a0, t3
                  add          t1, t6, s8
                  sltu         t5, s6, s1
                  sra          tp, s4, a0
                  xor          s5, a3, a3
                  auipc        t0, 247477
                  and          s6, a5, a2
                  slt          ra, s2, a7
                  or           s6, a6, s4
                  addi         s9, t3, 127
                  slli         s2, a7, 26
                  srai         s8, s5, 31
                  sltiu        s8, a3, -945
                  lui          s8, 221381
                  sltiu        t2, t3, -2035
                  xori         t2, a1, -916
                  and          ra, s11, t6
                  slli         a0, s1, 4
                  xori         s8, s5, 484
                  xori         gp, a6, -169
                  sltu         a7, s8, tp
                  add          a1, s4, s2
                  sub          a2, t2, tp
                  srl          s1, t6, s2
                  sra          t3, s8, s11
                  andi         s4, t4, -339
                  lui          a1, 217428
                  xor          s9, zero, a7
                  sltiu        s2, s8, 742
                  srl          s1, ra, s5
                  slt          a5, s7, s3
                  srai         s10, a2, 30
                  sra          tp, t6, zero
                  xori         t4, ra, 1091
                  auipc        a2, 346096
                  lui          t1, 581575
                  sub          t1, t4, s2
                  lui          a3, 369471
                  srai         t0, t0, 2
                  xori         a5, t4, -371
                  srai         a3, s3, 1
                  slt          tp, zero, t4
                  and          t2, s8, a4
                  or           a3, t6, s5
                  srl          a7, a1, a1
                  slt          a0, s7, t4
                  srai         gp, a2, 24
                  slli         a6, s2, 23
                  slt          t0, a5, t3
                  srai         t5, s1, 28
                  srai         tp, a4, 19
                  sltu         s1, s11, t5
                  slt          a5, a5, t0
                  add          a7, s3, s6
                  sltiu        s5, s10, 150
                  nop
                  slti         t0, t3, 468
                  addi         a0, s6, 636
                  slt          zero, a6, t6
                  srai         a0, a3, 0
                  addi         a5, a7, -339
                  srl          tp, s8, a2
                  auipc        s7, 828874
                  ori          zero, zero, -885
                  auipc        s8, 702369
                  andi         tp, t2, 1093
                  sll          s7, tp, s9
                  srl          a1, s2, s7
                  srli         s4, t4, 24
                  slt          a1, s3, s2
                  lui          s1, 788359
                  xori         a4, s8, -2030
                  auipc        a6, 483444
                  add          s4, t3, s10
                  andi         s10, s4, 1957
                  srli         a2, t3, 7
                  slti         t2, a0, 604
                  sltu         s6, s3, s9
                  lui          a1, 756058
                  or           s8, sp, a4
                  auipc        a2, 418849
                  xor          a7, ra, gp
                  sltiu        s4, s0, -1913
                  xor          gp, t4, t1
                  srli         s1, t3, 3
                  srli         s10, s5, 23
                  sll          a2, t5, s8
                  sub          s4, a5, sp
                  srl          a1, gp, t0
                  auipc        a5, 587081
                  addi         a3, t2, -1129
                  srai         s7, s2, 1
                  lui          ra, 952763
                  sltu         t4, tp, tp
                  sltu         s2, s2, t3
                  srl          t3, s7, t5
                  srl          s10, t2, t4
                  srai         s6, a0, 3
                  xori         a0, a3, -1713
                  ori          t2, s6, -641
                  srli         t2, t5, 27
                  xor          a5, gp, a5
                  srai         a6, a1, 19
                  add          t6, a2, s5
                  sll          a7, a0, s5
                  slli         s7, a2, 26
                  add          zero, a4, s8
                  sltu         t2, s0, t6
                  and          t4, a7, tp
                  srai         t4, a1, 26
                  sltu         a5, zero, s0
                  lui          t2, 257981
                  srai         t6, sp, 20
                  auipc        a2, 185802
                  slli         gp, t4, 15
                  srl          a5, zero, s3
                  or           a0, t6, s7
                  andi         s5, t6, -1337
                  xori         s4, s3, 726
                  srai         s6, gp, 14
                  and          t6, s0, s3
                  add          a3, a5, t6
                  xor          t2, a5, s10
                  lui          ra, 53810
                  xori         t0, t1, -1717
                  sub          zero, s8, s4
                  addi         a1, t5, 1688
                  slt          a2, s2, s11
                  srl          a3, s1, a4
                  slti         zero, ra, 15
                  addi         a4, tp, 822
                  auipc        sp, 566583
                  srli         s6, s5, 15
                  slli         ra, s7, 21
                  addi         s5, t0, -1015
                  sra          s5, a3, s4
                  add          s6, t5, zero
                  xor          ra, s9, s3
                  or           t6, sp, s8
                  nop
                  andi         s2, a1, -1228
                  slti         tp, a4, 734
                  auipc        s6, 687485
                  auipc        gp, 506944
                  slli         a2, a4, 8
                  and          t4, a2, s2
                  lui          zero, 584878
                  lui          s8, 1043196
                  slt          ra, t1, a5
                  xor          t0, s2, s7
                  auipc        a6, 755529
                  sra          a5, t4, t2
                  auipc        a7, 918026
                  slti         a5, t2, 428
                  add          a1, a6, a6
                  sub          ra, a7, s2
                  lui          a2, 191410
                  slt          t4, s6, s2
                  xor          a4, ra, s11
                  auipc        s8, 3734
                  ori          s10, zero, 715
                  srli         s9, s11, 5
                  xor          a2, s6, gp
                  and          s2, s5, s0
                  and          s7, s6, s9
                  nop
                  addi         a1, gp, 1992
                  auipc        s10, 42242
                  sra          t0, s3, tp
                  sub          a7, s0, t1
                  nop
                  xori         a7, s3, -455
                  and          t2, s10, t6
                  slti         a3, s1, 1792
                  slti         a4, a5, 393
                  slti         a6, s5, -1371
                  slli         t5, a1, 10
                  andi         a7, t0, 1856
                  add          s5, s3, a4
                  xori         t2, sp, 332
                  addi         zero, zero, -152
                  and          s1, s3, s3
                  slt          tp, s10, s8
                  srai         t2, a6, 8
                  sltu         a0, s11, a0
                  srli         sp, a7, 20
                  srai         s8, gp, 16
                  slt          s5, s10, sp
                  xor          s9, t6, t4
                  ori          a0, s6, -100
                  slt          gp, s8, s0
                  or           t2, s0, s6
                  or           zero, s10, a1
                  slli         a4, s9, 20
                  slt          a3, s9, t6
                  xor          s10, a1, s3
                  auipc        tp, 1027899
                  andi         gp, t1, 1353
                  srl          s9, sp, s5
                  add          s1, t4, s5
                  srl          t4, gp, t5
                  addi         t0, ra, -681
                  ori          t3, gp, -1603
                  and          s10, tp, s0
                  andi         t3, a7, 1062
                  slt          s2, s3, a4
                  slli         t0, s8, 2
                  sra          s8, tp, s9
                  nop
                  xori         s7, t0, -930
                  auipc        a4, 622284
                  or           a2, s3, s7
                  sltiu        gp, t3, 1271
                  slt          a1, s9, s11
                  or           s8, t3, s6
                  auipc        sp, 66387
                  srai         a6, a4, 24
                  and          a6, s9, t5
                  addi         s8, t5, 750
                  xor          a4, t2, s10
                  andi         tp, s2, -366
                  xor          t1, sp, s5
                  or           a5, gp, a0
                  sltiu        t3, a4, 1246
                  or           s6, a5, t5
                  srai         t0, t1, 22
                  srli         a1, a4, 23
                  sltiu        t0, s3, -982
                  sltiu        sp, a2, -816
                  sll          s6, ra, t5
                  nop
                  xor          a3, a2, sp
                  xor          gp, a4, a0
                  xor          s5, s0, t1
                  slt          s4, s2, zero
                  lui          t0, 484243
                  slti         t5, a7, 1051
                  slti         a1, a4, -867
                  and          s5, s4, t6
                  sll          s7, a4, tp
                  and          tp, ra, s8
                  andi         a6, s10, -668
                  sub          a5, t2, a0
                  xori         a4, gp, -1459
                  and          a6, gp, t3
                  sra          a7, sp, gp
                  slti         s5, t2, -1380
                  sub          gp, ra, a6
                  addi         zero, tp, -199
                  sltiu        s4, s5, 50
                  sltu         s6, s9, gp
                  addi         s1, tp, 1266
                  andi         s6, t1, 1246
                  sltu         t5, a6, s10
                  nop
                  sltu         s1, s1, a4
                  sub          a5, a0, s10
                  addi         a6, t1, 836
                  srli         s6, t3, 31
                  slli         s5, s9, 20
                  nop
                  add          s2, s8, s2
                  sltu         a3, s6, a3
                  xori         t0, s8, -1041
                  sltiu        zero, s9, -1341
                  add          s5, s0, a2
                  slli         zero, sp, 30
                  addi         a6, s8, 427
                  addi         ra, t6, -752
                  srl          a7, gp, a6
                  sltu         t1, a4, ra
                  add          s7, t5, a1
                  slti         s9, t3, -376
                  srli         zero, a0, 8
                  slli         a4, sp, 2
                  sltiu        a4, tp, -774
                  nop
                  xor          s4, t5, s10
                  sltu         t0, a6, a6
                  auipc        a7, 358447
                  sltu         t4, t3, a5
                  ori          a1, s1, -720
                  nop
                  sltu         sp, t0, a4
                  sra          ra, zero, a4
                  xori         s1, s1, 690
                  or           s7, s4, a3
                  sra          s4, s0, tp
                  and          t5, a4, a5
                  slti         zero, s0, 1423
                  sub          t5, s8, s5
                  xori         a6, s10, -574
                  add          s9, t1, a2
                  sltiu        s2, s7, -1004
                  or           a3, a5, a1
                  ori          s7, t4, 850
                  sltu         t0, a6, s7
                  slti         a3, s4, 902
                  addi         zero, zero, 1751
                  lui          a5, 150033
                  slti         s4, t6, 1603
                  sll          t0, s7, a2
                  slt          a1, s11, t2
                  srli         t0, s8, 13
                  sub          a3, s10, a7
                  nop
                  addi         a6, a3, 1191
                  xor          s2, a5, a5
                  sub          a5, t3, t3
                  sub          a4, a1, a5
                  nop
                  slli         t1, t0, 6
                  sltu         zero, t3, s2
                  add          zero, s2, a5
                  xor          ra, a5, s10
                  slli         a3, s0, 21
                  add          s6, a2, s0
                  auipc        t1, 625066
                  sra          s7, t5, t0
                  and          s1, a1, tp
                  sltiu        s10, a5, 1945
                  slt          s7, gp, t4
                  auipc        zero, 618594
                  sra          a6, t5, ra
                  slli         sp, zero, 13
                  sra          ra, t2, s2
                  and          t2, s4, ra
                  addi         s2, s0, 1956
                  or           sp, a5, s10
                  or           t5, t0, t0
                  slti         s7, s2, -1638
                  srl          t1, t6, sp
                  sltu         zero, sp, s5
                  ori          s5, a0, 1481
                  auipc        a6, 1021208
                  sub          t3, t4, t4
                  ori          s2, a4, 1049
                  ori          s8, s10, -313
                  xor          a3, s0, ra
                  sltu         ra, a4, a6
                  sub          t3, s10, t1
                  sltiu        ra, a6, -581
                  srai         s6, a0, 19
                  slli         s7, s9, 15
                  slli         t5, gp, 30
                  sltu         s10, s7, t6
                  srai         s9, t6, 19
                  sra          s5, a2, s6
                  sltu         gp, s10, t5
                  sltu         ra, s9, s2
                  srl          a3, t3, a7
                  sltu         t2, s8, t3
                  sll          a5, a3, t5
                  add          tp, ra, t6
                  slt          t2, s9, s8
                  sll          a1, s5, a5
                  slli         t4, s9, 4
                  sra          a7, t6, s5
                  xor          a4, a2, zero
                  and          s6, a3, s8
                  slli         gp, s10, 25
                  auipc        s4, 380666
                  sll          s9, t2, s3
                  addi         t4, a2, -1627
                  sub          t1, a3, s6
                  xori         t6, s2, -1345
                  srai         s1, a3, 27
                  sll          t2, a4, gp
                  slti         a2, s11, -1713
                  sub          t3, s2, t6
                  andi         a3, s7, -1403
                  srli         t3, a1, 1
                  slt          s2, a1, t6
                  slli         gp, s7, 9
                  sra          s8, zero, s4
                  slti         s4, a2, 345
                  andi         s7, s9, -1549
                  sll          s8, s1, a0
                  slli         s1, s0, 25
                  lui          a0, 353280
                  srli         t4, a5, 28
                  sra          ra, t5, t6
                  or           s2, s2, tp
                  and          s2, s9, s0
                  srli         tp, a6, 12
                  sll          t0, t4, s4
                  srli         a6, s0, 6
                  sra          s6, a6, t1
                  sltu         s7, a5, s1
                  auipc        a4, 978262
                  xor          s8, s4, s6
                  xori         t1, t5, -156
                  srli         t4, s6, 26
                  slti         a3, s11, 1831
                  lui          a4, 332259
                  xor          t3, zero, s2
                  or           ra, a5, t1
                  add          s7, t5, s1
                  slli         ra, t6, 27
                  sub          s7, t1, s0
                  sltiu        a0, t4, -699
                  slt          a2, a5, a3
                  ori          a7, a5, -1540
                  slti         a5, s11, 56
                  sltiu        sp, a1, -13
                  addi         s7, t3, -7
                  slti         t0, a1, 174
                  or           ra, a1, s1
                  lui          ra, 499515
                  ori          zero, t0, -1392
                  slli         a7, a0, 26
                  slt          ra, ra, t0
                  sub          a4, s11, s8
                  andi         a6, t0, 1336
                  add          s1, t5, a6
                  srai         a3, s1, 5
                  srli         sp, t2, 9
                  srai         s7, t6, 11
                  ori          t5, a0, 697
                  srai         a4, s11, 24
                  sltu         s4, t3, a4
                  slti         a0, s4, -87
                  sll          s4, t3, s11
                  add          s10, s0, a4
                  ori          sp, sp, 1060
                  sltiu        s7, t4, -660
                  auipc        a5, 560160
                  add          s8, a6, a0
                  sltiu        t3, s6, 17
                  xori         sp, t2, 848
                  ori          t3, t5, 1201
                  xor          a3, s0, s5
                  sltiu        a7, a3, -1500
                  sltu         a0, t0, t2
                  srli         s7, s6, 26
                  ori          s10, s7, -1464
                  srli         s7, a6, 6
                  auipc        s7, 709763
                  srl          s9, t3, a0
                  auipc        sp, 141246
                  sub          a0, sp, s11
                  andi         t0, tp, -1331
                  sll          a0, a1, ra
                  slt          gp, s5, a1
                  andi         t6, a4, -783
                  xori         a6, tp, 1046
                  slli         t4, a1, 12
                  andi         s7, s3, 1311
                  xori         s9, s0, -91
                  sltu         s2, s11, t3
                  add          s5, t6, t0
                  sltu         t4, s10, s10
                  sra          sp, s5, s6
                  srai         a5, s3, 21
                  srai         a3, t0, 10
                  slli         s6, a7, 31
                  andi         a7, t4, 1235
                  lui          s6, 667185
                  or           t4, a4, sp
                  nop
                  srl          a0, s0, s0
                  srli         t6, t3, 3
                  addi         t6, s4, -1393
                  addi         s8, s2, -471
                  xor          a7, t4, s2
                  slt          t5, s3, t0
                  add          s5, s8, a3
                  xori         s5, s5, 1042
                  srl          s9, s3, t6
                  ori          s1, a1, 1486
                  sll          s7, s10, s7
                  srl          s6, s2, tp
                  xor          s1, a5, s2
                  sltu         s1, s10, a6
                  sra          a0, a5, a0
                  sra          a3, tp, sp
                  slt          t4, t3, zero
                  add          s2, s5, s6
                  lui          s2, 677405
                  addi         sp, t3, -546
                  sll          s2, a4, s9
                  or           s2, a7, a0
                  xor          s4, a6, s0
                  add          t2, tp, s6
                  sltiu        a3, s11, 712
                  ori          a3, t5, -1373
                  srl          a5, sp, a2
                  sltiu        a7, t4, -1089
                  xor          a1, gp, s11
                  srli         t2, s3, 1
                  sltiu        t3, zero, -1766
                  sll          a2, s8, s7
                  srl          a7, s3, s10
                  srl          s8, t1, t0
                  and          t0, t0, s11
                  xori         t1, a1, 1498
                  sra          t3, t3, a5
                  slt          t4, a2, s4
                  slt          s2, a1, s1
                  nop
                  andi         s4, s0, -1169
                  srl          s6, s10, s5
                  add          ra, a0, a4
                  slti         s2, s5, -878
                  srai         t2, t5, 19
                  slt          a2, s9, t2
                  ori          s7, s10, -221
                  nop
                  addi         t1, s4, -1248
                  auipc        t6, 360333
                  slli         s10, a6, 3
                  andi         a0, t0, -602
                  addi         s7, ra, -1476
                  add          s2, a4, t1
                  sltiu        s9, s11, -1388
                  addi         t0, t6, 503
                  or           a6, a7, a2
                  auipc        t1, 685945
                  addi         s6, t6, 1392
                  add          a0, a6, gp
                  sltiu        a3, s3, 1414
                  srli         t5, a7, 16
                  sltu         ra, a2, ra
                  sll          t4, t5, t6
                  srli         t0, t0, 24
                  add          s10, s1, s7
                  auipc        s1, 584400
                  sltu         s10, t5, s11
                  andi         zero, s11, 1180
                  ori          s1, s5, 1807
                  srl          t2, a3, t3
                  add          s5, s4, t2
                  slti         tp, t0, 1100
                  sra          s7, a3, t5
                  addi         t1, s6, -648
                  nop
                  slt          t6, t2, ra
                  srai         s10, a5, 6
                  auipc        s2, 974947
                  srli         a7, a1, 9
                  nop
                  sra          a5, a3, t6
                  srl          t1, s8, ra
                  slli         t0, t0, 10
                  and          s2, tp, a6
                  ori          a1, s6, -1250
                  xor          s6, a2, s5
                  sub          t5, gp, s6
                  sra          t2, a0, s7
                  or           a2, s4, a6
                  ori          sp, s9, 182
                  nop
                  xor          s8, a6, s3
                  sll          t0, gp, t0
                  sltu         a4, sp, a4
                  slli         s8, s8, 15
                  srl          t1, s2, s2
                  sltu         s2, s3, a1
                  srai         tp, a2, 30
                  and          t0, a3, t2
                  sll          zero, s3, t4
                  slti         a1, t6, 1041
                  auipc        a0, 34678
                  nop
                  sra          s5, a5, t3
                  xor          s6, s2, a0
                  srli         t6, t5, 6
                  slli         gp, a4, 22
                  ori          t5, t3, 1561
                  add          s2, s1, a1
                  sra          zero, a4, a3
                  sra          t5, a4, a0
                  nop
                  addi         s8, a6, -478
                  sub          ra, s6, sp
                  and          t4, a3, s11
                  slti         a1, tp, 1563
                  or           s5, t0, a2
                  and          s2, s8, s0
                  xor          s7, s2, ra
                  slti         s8, a2, -1161
                  srli         sp, s2, 20
                  xori         t2, a5, 1670
                  slli         s2, s5, 24
                  slt          t6, t2, a3
                  addi         tp, a7, 826
                  andi         a5, sp, -1770
                  srli         a5, t6, 20
                  xor          t6, s9, s8
                  lui          a7, 33992
                  slt          tp, s5, s5
                  sra          s1, a3, s6
                  and          a5, a3, tp
                  sltu         s8, ra, a0
                  srli         s7, s8, 26
                  slt          s6, a6, t2
                  andi         t4, t5, -586
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           gp, 0x0
                  li           s5, 0x80000000
                  li           s10, 0xfb6837b5
                  li           t5, 0xfd7e75d4
                  li           t0, 0x540fbc35
                  li           t6, 0x80000000
                  li           a2, 0x0
                  li           t1, 0x0
                  li           t4, 0x204356c4
                  lui          gp, 875722
                  auipc        s10, 59387
                  sub          s10, t1, t0
                  auipc        t5, 588387
                  lui          a2, 788597
                  lui          t4, 31353
                  addi         t0, s10, -1542
                  lui          t4, 119147
                  sub          t0, t0, t6
                  nop
                  add          a4, a4, t0
                  nop
                  lui          t0, 794404
                  auipc        a4, 143775
                  add          t6, s10, t5
                  sub          s10, gp, s5
                  sub          s10, s10, s5
                  sub          a2, t5, t5
                  lui          t0, 813346
                  nop
                  addi         s5, t4, 47 #end riscv_int_numeric_corner_stream_16
                  sltu         a7, sp, a6
                  slt          a1, s0, sp
                  add          a1, a0, t2
                  srli         s2, s5, 12
                  sltu         a5, s4, s2
                  slti         s5, s4, 630
                  or           gp, a5, s5
                  or           s6, s10, a4
                  sub          t1, a6, ra
                  sltiu        s8, a6, -1197
                  addi         t2, s7, -315
                  addi         s2, t3, 1189
                  andi         t2, s7, 742
                  andi         s10, s3, 1376
                  sltiu        a5, t3, -543
                  addi         a1, a6, 65
                  nop
                  slt          s8, a0, gp
                  ori          a4, s8, 913
                  srli         t6, tp, 15
                  ori          a2, t1, -1043
                  auipc        zero, 507858
                  addi         t5, a7, 987
                  sltiu        t4, t0, 869
                  ori          zero, s4, 1514
                  andi         gp, t2, -1553
                  ori          a3, a6, -88
                  sub          a5, a5, a2
                  xor          a7, t4, t5
                  slli         s2, t4, 9
                  xori         zero, t3, 897
                  sra          sp, t6, t1
                  nop
                  sll          a6, t4, a1
                  addi         ra, s5, -262
                  srl          a5, s11, s5
                  nop
                  or           t2, a6, t6
                  and          t1, tp, a5
                  add          gp, s7, ra
                  addi         s1, a3, 1709
                  srl          a0, a5, t1
                  andi         s9, s3, -1578
                  slli         a5, s2, 24
                  lui          s7, 935887
                  srl          ra, t3, a2
                  sra          tp, s2, t5
                  srai         tp, a0, 7
                  sub          gp, a5, s5
                  nop
                  or           a6, ra, a5
                  srli         s2, t4, 3
                  addi         a4, t4, 771
                  ori          t4, s1, 1786
                  srai         t4, a2, 14
                  li           ra, 0xa94fd2e1 #start riscv_int_numeric_corner_stream_2
                  li           t2, 0x80000000
                  li           t6, 0x80000000
                  li           t5, 0xffffffff
                  li           a0, 0x0
                  li           s8, 0x882e152e
                  li           s9, 0x930781f
                  li           sp, 0xffffffff
                  li           a1, 0xffffffff
                  li           a7, 0xe29cc3be
                  sub          a1, t5, s9
                  auipc        s8, 921373
                  sub          ra, a7, a0
                  auipc        a1, 157630
                  addi         t2, a0, -865
                  nop
                  auipc        t6, 346768
                  sub          a1, a1, t6
                  sub          a7, t6, ra
                  addi         s8, s9, 754
                  lui          a7, 637473
                  nop
                  sub          ra, sp, a1
                  addi         sp, t5, 481
                  sub          a1, t6, a7
                  addi         a0, s9, 1055
                  auipc        ra, 98520
                  lui          a7, 556296
                  auipc        a1, 643034
                  sub          a7, s8, a7
                  nop
                  auipc        a1, 466762 #end riscv_int_numeric_corner_stream_2
                  srai         s6, t4, 26
                  sra          t0, s3, t3
                  slti         t2, s4, 214
                  addi         s9, tp, -2043
                  auipc        ra, 127749
                  xor          s2, zero, s4
                  auipc        t4, 1024376
                  sra          a5, t1, t3
                  srli         a3, s2, 27
                  auipc        t5, 626042
                  sub          t5, s0, tp
                  sltu         a3, s6, t1
                  srli         gp, s11, 11
                  auipc        zero, 471125
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           s8, 0x3f40ceab
                  li           t3, 0x5fc8d8b0
                  li           gp, 0x80000000
                  li           a3, 0x80000000
                  li           s2, 0xffffffff
                  li           t6, 0x80000000
                  li           s7, 0x80000000
                  li           s10, 0x6681ca7b
                  li           a6, 0xffffffff
                  auipc        t6, 584568
                  addi         t3, a5, 1324
                  addi         s10, t6, 143
                  add          a3, s8, a3
                  sub          s7, a3, a3
                  sub          s8, a3, t6
                  addi         a3, a5, -1246
                  add          s8, s2, s10
                  add          gp, t3, t6
                  addi         gp, gp, 30
                  addi         s2, t3, 326
                  add          s8, s10, gp
                  add          t3, s7, gp
                  auipc        t6, 1024615
                  auipc        a5, 1030098
                  sub          t6, s8, a5
                  add          t6, a3, s7
                  addi         a5, a6, -12
                  nop
                  add          a5, gp, s2
                  sub          s10, t6, s8
                  auipc        s2, 378363 #end riscv_int_numeric_corner_stream_6
                  lui          s5, 404818
                  xor          a2, s7, ra
                  ori          ra, s11, -1597
                  xori         a4, s2, -1822
                  slti         a1, sp, 1348
                  auipc        t4, 483800
                  addi         a1, s0, -1947
                  xor          a6, a6, gp
                  add          sp, a4, t2
                  or           s10, a7, ra
                  slli         s10, s5, 9
                  slli         t4, t5, 1
                  sltiu        s5, s3, -1056
                  srai         a7, a6, 25
                  sltu         a0, s1, t1
                  ori          a2, a1, -191
                  addi         t2, s11, 374
                  slli         a3, t5, 2
                  lui          ra, 815439
                  addi         a7, s4, -655
                  and          a0, t4, a0
                  nop
                  sltiu        a3, ra, -752
                  lui          t3, 363009
                  ori          a0, s0, -136
                  sltiu        s9, s5, 1696
                  xor          s5, s9, s10
                  and          zero, s6, s0
                  xor          s8, t5, s0
                  ori          s9, s11, -1266
                  srai         s1, a7, 28
                  andi         s4, s1, -120
                  slli         ra, a3, 10
                  and          a4, t2, a0
                  slt          t3, a5, t2
                  slli         s7, sp, 6
                  slli         a6, tp, 22
                  sltiu        a5, s5, 1858
                  or           a0, s3, s3
                  srl          s6, s0, s4
                  xor          s7, s3, t2
                  or           s5, tp, t3
                  sra          a1, s0, t0
                  srli         s5, t3, 15
                  sra          s10, t5, s10
                  slti         a3, t6, 1179
                  slti         s10, s7, 819
                  or           t3, s3, s5
                  sltiu        s7, t5, 395
                  sub          t5, a7, s10
                  slt          a5, t0, a2
                  slt          a7, t4, a4
                  slt          s2, zero, gp
                  addi         sp, tp, 2022
                  srl          gp, s3, a4
                  or           t2, s0, a5
                  nop
                  xori         t5, s5, 959
                  lui          tp, 730996
                  srli         t5, t2, 28
                  addi         s4, s10, 217
                  srl          a0, a7, a7
                  andi         s6, s6, 319
                  sub          a7, t2, tp
                  sll          sp, s3, s6
                  and          t4, a6, s8
                  sub          s6, s3, s9
                  xori         t2, s10, 1134
                  sll          t4, s7, s6
                  slt          s10, t3, s2
                  sltiu        a7, a2, -811
                  srli         s7, a1, 21
                  andi         s2, sp, -1836
                  xori         a3, s3, -1540
                  slti         a5, t3, 1384
                  sltu         s10, gp, a2
                  sll          a7, a1, s8
                  srai         t6, a0, 28
                  auipc        a2, 332026
                  srai         a3, s3, 18
                  andi         s8, s6, 72
                  andi         s8, t1, -107
                  nop
                  nop
                  sltiu        t2, s3, 1757
                  sub          s4, t1, a4
                  nop
                  nop
                  srai         s1, s8, 25
                  srl          zero, s3, t5
                  srai         s2, s4, 13
                  andi         t1, t0, -100
                  slli         t3, s4, 5
                  sll          t5, zero, s11
                  srli         s9, t2, 25
                  and          gp, a5, s9
                  sll          t3, a2, t6
                  srli         s9, t2, 9
                  sra          s6, t4, s1
                  sub          s5, t1, s7
                  srai         a4, s4, 4
                  slt          s7, a1, t1
                  slli         s7, t1, 16
                  srli         t6, t1, 9
                  slti         s9, a6, -1753
                  addi         gp, a7, 446
                  sra          t5, t0, t3
                  sub          s5, a6, a3
                  srai         s10, t6, 15
                  andi         a7, t0, 151
                  slti         s5, gp, -1240
                  sltu         tp, s2, a5
                  andi         gp, sp, -1088
                  xori         t3, a5, 726
                  sub          tp, a6, zero
                  sltiu        t3, t2, -1656
                  auipc        ra, 637686
                  sltu         s9, s3, a3
                  slti         s7, t5, 355
                  andi         s5, t3, 1102
                  slt          ra, s9, t0
                  auipc        s6, 815346
                  xori         gp, tp, -841
                  srli         t3, a4, 21
                  and          t3, s3, a3
                  srai         sp, s0, 5
                  andi         t3, a5, -1343
                  andi         ra, s9, -138
                  auipc        s6, 863867
                  slti         a1, t0, 1493
                  ori          t4, a0, 1462
                  andi         s4, s5, 687
                  sltiu        s9, a4, 1799
                  slti         t1, t5, -874
                  sltu         gp, t0, a5
                  srli         t6, a7, 9
                  addi         zero, gp, 1367
                  slti         s7, s3, -415
                  srli         t0, s11, 21
                  srl          t5, s7, s4
                  add          t0, s9, a6
                  srli         s7, s0, 29
                  ori          tp, t3, -1903
                  lui          zero, 752711
                  ori          s9, s9, -661
                  ori          ra, a0, -1850
                  slt          a2, a2, a6
                  and          t0, t1, s2
                  addi         s6, gp, -1851
                  slti         s9, s9, -1259
                  xori         ra, t6, 325
                  sltiu        tp, a7, 2000
                  slti         a1, ra, -1494
                  add          t2, tp, gp
                  ori          t4, a2, 1452
                  sltiu        s7, s5, 253
                  andi         a7, t2, 36
                  andi         s1, t5, 1421
                  slti         sp, s10, -38
                  sltu         a7, a0, zero
                  slt          a4, t4, s1
                  xori         s9, t0, 1020
                  slti         a7, t6, -379
                  xor          a2, t1, t5
                  add          t6, a0, gp
                  sltu         a0, sp, t3
                  lui          a2, 665645
                  srl          s2, s10, a3
                  srai         t0, a3, 26
                  xor          t1, t4, s2
                  slti         a7, t1, 1971
                  srli         zero, sp, 27
                  sll          s2, s10, zero
                  srli         tp, s0, 22
                  sra          a4, s11, tp
                  lui          gp, 256926
                  andi         a1, s10, 1204
                  xori         a0, ra, 2039
                  sll          a1, t3, t6
                  xori         t6, t6, 401
                  add          s4, a3, a4
                  sll          t3, a5, t4
                  sltiu        s6, s2, 399
                  sll          tp, t0, t1
                  add          zero, t6, t5
                  andi         a5, s0, -1727
                  slli         a3, s2, 15
                  sltu         a6, t2, gp
                  xori         s6, s6, 281
                  slti         a0, t6, 1825
                  sra          a6, s0, s4
                  ori          a5, tp, 1349
                  or           zero, t1, s0
                  ori          s2, a0, 945
                  add          s1, gp, tp
                  sltu         sp, s7, t2
                  ori          s9, a3, -389
                  srai         t3, s4, 20
                  addi         s6, s11, -1966
                  or           t2, sp, s7
                  slli         s6, s8, 8
                  sltiu        t4, s5, 1024
                  sub          a3, s4, s2
                  andi         s2, t3, -728
                  nop
                  slli         s1, a3, 13
                  srl          t2, zero, a6
                  xor          t3, s11, t0
                  lui          a3, 432345
                  srli         a4, t6, 19
                  addi         t3, s9, 809
                  lui          s7, 752239
                  xori         t0, a4, -6
                  slt          a2, s5, t4
                  xor          t3, s6, tp
                  srli         t3, a3, 3
                  sll          s8, s9, t0
                  sltu         tp, ra, s10
                  andi         a5, a2, 2008
                  auipc        s5, 508403
                  slti         a3, s0, -1247
                  sltu         t0, s7, s7
                  srli         a5, zero, 17
                  and          a4, s9, a7
                  lui          zero, 267913
                  slti         a3, a5, 151
                  sltiu        s6, t6, -435
                  lui          s4, 707242
                  slli         t5, s11, 14
                  lui          a7, 747079
                  addi         t0, s6, 1553
                  srli         a7, t1, 23
                  nop
                  srl          s6, sp, s3
                  sltu         a5, s6, tp
                  sltu         a3, t1, t0
                  andi         s7, t4, 840
                  srl          s5, t1, a2
                  srai         s2, t5, 22
                  slt          s6, a1, sp
                  auipc        ra, 972245
                  addi         t6, s7, -1064
                  addi         a3, gp, 1106
                  slti         a3, a5, -582
                  sra          s1, t5, gp
                  sra          s8, s4, s1
                  srli         t1, tp, 14
                  lui          zero, 489765
                  srl          s5, a2, zero
                  addi         sp, sp, -1441
                  slli         zero, gp, 21
                  nop
                  xori         sp, a2, 1718
                  slti         s7, s7, 752
                  sra          s10, t6, s6
                  sltiu        t4, s9, -717
                  slti         a3, a3, 1786
                  sll          a7, s11, s5
                  srl          t5, s10, t0
                  srli         t6, a0, 20
                  xori         s10, a4, 1032
                  slt          s10, s6, tp
                  slt          t5, t3, t3
                  slti         sp, s9, 1625
                  nop
                  auipc        s8, 296313
                  xor          a7, ra, a3
                  nop
                  sub          s9, s6, ra
                  sltu         s1, a0, a4
                  add          tp, s3, s9
                  andi         a3, zero, 200
                  sub          t2, s0, s11
                  xori         t6, s6, -1221
                  and          gp, s7, s9
                  srli         a7, t0, 3
                  nop
                  sltiu        s7, s9, -1623
                  andi         t4, t4, 526
                  addi         gp, t0, -1047
                  srli         ra, t6, 10
                  andi         gp, sp, -225
                  xori         t0, a4, -444
                  lui          s8, 689368
                  addi         zero, a1, 628
                  sub          s7, t0, s3
                  slti         tp, ra, -907
                  sltu         a0, sp, s2
                  sltu         a3, t6, zero
                  ori          t1, zero, -1193
                  xori         ra, t3, 216
                  sub          s8, t5, s9
                  sra          gp, a3, s9
                  sltiu        sp, gp, -1196
                  sltu         a6, a0, a0
                  sltu         s4, s1, s10
                  srli         t5, s1, 7
                  srl          s5, t3, s0
                  add          a2, ra, t2
                  slti         a7, t3, 614
                  add          a5, s7, s7
                  andi         a1, a4, 635
                  andi         t4, a5, 863
                  sra          a2, tp, a2
                  auipc        t5, 349190
                  xori         t3, a0, 1665
                  sltiu        s6, sp, -1994
                  sub          t2, s4, t2
                  sll          t3, a2, a3
                  lui          s2, 749034
                  addi         a6, s3, 191
                  srai         a4, t3, 29
                  auipc        t5, 723905
                  xori         s8, t0, -1982
                  sra          s10, t2, sp
                  or           gp, t1, a3
                  sra          s5, s0, a0
                  slti         sp, t6, 1917
                  sra          a0, s8, t1
                  add          t1, s6, a3
                  slli         t2, s2, 6
                  addi         s4, s2, 943
                  andi         s7, a6, -537
                  xor          s5, s6, s4
                  sltiu        t3, t6, -1850
                  andi         a6, tp, -86
                  srl          zero, s10, a3
                  slli         t3, zero, 17
                  srl          s2, a4, s1
                  andi         a3, s7, 1351
                  srli         gp, t4, 1
                  slli         s7, s1, 5
                  nop
                  lui          zero, 10640
                  sll          s1, s3, s7
                  srli         s8, s11, 13
                  andi         s4, s5, 501
                  srl          s9, a3, s1
                  srai         s8, s9, 11
                  andi         s2, t2, 566
                  or           zero, a7, a6
                  add          gp, a6, a7
                  or           s9, tp, a3
                  sltu         a2, a6, a6
                  ori          t1, t2, -307
                  srl          s5, zero, s0
                  or           t0, tp, t2
                  slt          t0, a2, a6
                  nop
                  ori          gp, tp, 1085
                  sltu         a5, s9, a4
                  add          a3, zero, tp
                  sll          s1, s11, t4
                  and          a7, a2, tp
                  slli         t1, a2, 4
                  sra          s9, t6, t5
                  slti         t0, a2, -1985
                  auipc        t5, 490645
                  slli         t0, s4, 15
                  or           gp, s8, t1
                  lui          a5, 405410
                  xor          s7, a2, t4
                  and          t2, s10, gp
                  ori          s1, t0, 1897
                  srli         sp, s8, 27
                  auipc        a3, 409278
                  add          s6, a4, s5
                  ori          a4, s1, 959
                  srli         t2, s1, 6
                  xor          s8, t2, a5
                  add          t2, a1, s7
                  sra          s2, s3, a1
                  slli         a6, zero, 25
                  sll          ra, a0, a6
                  sltiu        a2, zero, -1757
                  lui          t6, 146348
                  ori          a4, gp, 582
                  addi         t2, s9, 1476
                  sltu         t6, t4, sp
                  slt          t0, a5, s10
                  slti         a5, s8, 1918
                  la x27, test_done
                  jalr x0, x27, 0
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
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_2:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_3:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_4:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_5:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_6:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_7:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_8:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_9:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_10:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_11:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_12:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_13:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_14:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_15:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

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
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x19, x8, zero
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x23, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x23, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x23, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x23, x9, ecall_handler
                  li x9, 0x1
                  beq x23, x9, instr_fault_handler
                  li x9, 0x5
                  beq x23, x9, load_fault_handler
                  li x9, 0x7
                  beq x23, x9, store_fault_handler
                  li x9, 0xc
                  beq x23, x9, pt_fault_handler
                  li x9, 0xd
                  beq x23, x9, pt_fault_handler
                  li x9, 0xf
                  beq x23, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x27, test_done
                  jalr x1, x27, 0

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
                  la x27, write_tohost
                  jalr x0, x27, 0

instr_fault_handler:
                  add x8, x19, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

load_fault_handler:
                  add x8, x19, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

store_fault_handler:
                  add x8, x19, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

ebreak_handler:   
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x8, x19, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

illegal_instr_handler:
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x8, x19, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x8, x19, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
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
