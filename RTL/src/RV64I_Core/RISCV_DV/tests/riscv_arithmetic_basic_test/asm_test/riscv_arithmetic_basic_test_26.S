.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x30, h0_start
jalr x0, x30, 0
h0_start:
                  li x9, 0x40000100
                  csrw 0x301, x9
kernel_sp:        
                  la x8, kernel_stack_end

trap_vec_init:    
                  la x9, mtvec_handler
                  ori x9, x9, 0
                  csrw 0x305, x9 # MTVEC

mepc_setup:       
                  la x9, init
                  csrw 0x341, x9

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x9, 0x1800
                  csrw 0x300, x9 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0xe
                  li x4, 0x80000000
                  li x5, 0x80000000
                  li x6, 0xfdfb64f9
                  li x7, 0x8
                  li x9, 0xc
                  li x10, 0x56306f1c
                  li x11, 0x684a8f53
                  li x12, 0x80000000
                  li x13, 0xf26d69e2
                  li x14, 0xc
                  li x15, 0x0
                  li x16, 0xf3b8d018
                  li x17, 0x34b95438
                  li x18, 0x4
                  li x19, 0x80000000
                  li x20, 0x80000000
                  li x21, 0xf7344256
                  li x22, 0xfd9449d6
                  li x23, 0x0
                  li x24, 0xfcc823a9
                  li x25, 0xc97cc637
                  li x27, 0x87e018be
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0xf7c8b3d6
                  li x31, 0xc9d4c3f5
                  la x26, user_stack_end
main:             li           t6, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           s5, 0xffffffff
                  li           s4, 0xffffffff
                  li           s2, 0xffffffff
                  li           a0, 0x80000000
                  li           s1, 0x9bcb5fa9
                  li           s9, 0x362d1cf3
                  li           a5, 0x80000000
                  li           t4, 0x80000000
                  li           a4, 0xb405a879
                  addi         s1, a4, 599
                  lui          t6, 918345
                  add          a5, s5, s9
                  auipc        t6, 549797
                  nop
                  sub          s5, a0, t4
                  addi         t4, t4, -691
                  sub          s2, s1, a4
                  addi         s9, s4, -1477
                  nop
                  lui          s5, 908541
                  add          s5, a4, t6
                  addi         t6, s4, 915
                  sub          a5, s2, s5
                  addi         t6, s2, -1981
                  nop
                  add          s2, a0, a5
                  lui          s4, 500554
                  lui          a0, 522179 #end riscv_int_numeric_corner_stream_8
                  li           s1, 0x0 #start riscv_int_numeric_corner_stream_3
                  li           t1, 0xffffffff
                  li           a6, 0x80000000
                  li           s9, 0xffffffff
                  li           a2, 0xffe2e6
                  li           t0, 0x0
                  li           s11, 0x80000000
                  li           tp, 0x0
                  li           a0, 0xffffffff
                  li           sp, 0xffffffff
                  addi         sp, a6, -311
                  nop
                  addi         sp, a2, -1088
                  nop
                  addi         s11, t1, 1558
                  lui          sp, 556234
                  addi         s9, sp, 160
                  addi         tp, sp, -1078
                  auipc        a0, 371772
                  sub          a6, a6, s1
                  addi         t1, a0, 57
                  lui          a2, 931997
                  auipc        s9, 471774
                  nop
                  add          tp, a6, s11
                  add          s11, a0, a2
                  nop
                  add          a0, a2, a2
                  auipc        s1, 631458
                  lui          s11, 55189
                  add          a6, a2, a6
                  addi         sp, a0, -1323
                  add          s1, tp, s1 #end riscv_int_numeric_corner_stream_3
                  li           s5, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           t3, 0x80000000
                  li           a1, 0x0
                  li           s11, 0x4d3a86b8
                  li           a5, 0xffffffff
                  li           t6, 0x0
                  li           tp, 0xffffffff
                  li           s3, 0xee078cd6
                  li           t0, 0x80000000
                  li           s2, 0xffffffff
                  sub          s5, s5, a1
                  sub          tp, t6, s11
                  add          a1, s3, tp
                  add          s3, t3, t6
                  lui          t3, 947765
                  sub          t6, a1, s2
                  sub          a1, tp, t6
                  sub          tp, t0, s3
                  add          tp, t3, a5
                  nop
                  sub          s3, s3, s11
                  lui          t0, 4930
                  lui          t6, 542503
                  auipc        s11, 88482
                  sub          s3, s3, a5
                  sub          s5, a5, t6
                  addi         t0, s5, 517
                  auipc        s5, 717412
                  auipc        s2, 244894
                  auipc        tp, 629533
                  sub          a1, s11, tp
                  addi         a1, a5, 1104
                  lui          a1, 66227
                  add          s3, s5, s2
                  sub          a5, t6, t3
                  lui          s5, 713461 #end riscv_int_numeric_corner_stream_14
                  li           a6, 0xfb210f3b #start riscv_int_numeric_corner_stream_19
                  li           a5, 0x0
                  li           s5, 0x80000000
                  li           s4, 0x0
                  li           s9, 0xffffffff
                  li           s11, 0x80000000
                  li           s8, 0xffffffff
                  li           s1, 0xffffffff
                  li           tp, 0xffffffff
                  li           a0, 0xb7bcf6a5
                  lui          s5, 722491
                  auipc        s5, 261634
                  auipc        s9, 511757
                  nop
                  addi         s9, s1, -613
                  addi         s11, s1, 413
                  lui          s11, 697484
                  nop
                  lui          s4, 534336
                  addi         s9, a6, 1225
                  add          tp, s11, s11
                  lui          tp, 245290
                  auipc        s1, 727614
                  addi         s11, s4, -505
                  add          a5, s4, s9
                  auipc        s5, 602609
                  addi         s11, s8, 942
                  addi         a6, s11, 1266
                  auipc        s1, 236823
                  add          s1, a0, s4
                  addi         a0, s5, -409
                  sub          a6, a0, s9
                  nop
                  add          s11, a5, s11
                  nop
                  addi         tp, s11, -856 #end riscv_int_numeric_corner_stream_19
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           s1, 0x80000000
                  li           a6, 0x80000000
                  li           t2, 0xffffffff
                  li           t0, 0x80000000
                  li           s3, 0xbaa53514
                  li           s6, 0x4fb09325
                  li           s5, 0x0
                  li           sp, 0x0
                  li           a7, 0x3b197f1f
                  addi         t0, sp, -1101
                  auipc        a7, 1727
                  auipc        t0, 825127
                  nop
                  sub          t6, t6, a6
                  nop
                  sub          s5, t6, t2
                  lui          s5, 556718
                  nop
                  add          t6, t0, a7
                  sub          sp, s3, a7
                  add          s3, t0, sp
                  add          sp, s1, t2
                  add          t6, a6, s6
                  add          t0, a6, t6
                  addi         t0, a6, -619
                  addi         sp, s1, 334
                  auipc        t6, 405671
                  auipc        t2, 803402
                  lui          t0, 89676
                  nop
                  auipc        a7, 781553
                  lui          a6, 221454
                  auipc        sp, 959106
                  addi         a6, t0, 390
                  lui          s3, 760188
                  auipc        s3, 707547
                  auipc        t0, 901113
                  lui          a6, 821936 #end riscv_int_numeric_corner_stream_2
                  li           a6, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           s8, 0x0
                  li           a5, 0xffffffff
                  li           a4, 0x0
                  li           t1, 0x80000000
                  li           sp, 0xce3bc2a0
                  li           s3, 0xffffffff
                  li           a2, 0xffffffff
                  li           a3, 0x0
                  li           s6, 0x0
                  lui          a6, 250074
                  sub          sp, s8, t1
                  addi         a5, s8, 455
                  lui          a6, 393485
                  add          s6, a6, t1
                  add          a6, a3, a4
                  lui          s8, 60673
                  nop
                  addi         t1, a6, 1660
                  add          a6, s8, sp
                  sub          a2, a5, s6
                  nop
                  auipc        a2, 48412
                  addi         a5, a2, 1166
                  addi         s3, a4, 671
                  auipc        t1, 767761
                  add          s8, a2, a6 #end riscv_int_numeric_corner_stream_7
                  sra          a4, t1, s1
                  xori         tp, s11, -2017
                  sltu         t1, s11, s11
                  add          s11, tp, t2
                  sltu         tp, t4, s6
                  nop
                  sltu         a4, s8, a3
                  ori          a1, a3, -352
                  sll          t6, s9, s9
                  srl          a6, s3, s4
                  sltu         a1, s0, s6
                  slt          t6, s0, t3
                  nop
                  sub          ra, s4, a0
                  ori          ra, s6, 130
                  srai         ra, a0, 30
                  slt          s8, t1, a3
                  sll          s2, t6, s6
                  ori          t6, t4, -270
                  add          t1, t3, a7
                  xori         s1, a3, 1264
                  srai         a1, t0, 18
                  srl          tp, sp, a0
                  lui          ra, 383958
                  xori         t2, s1, 1974
                  sltu         s5, a2, a2
                  addi         t6, a0, 539
                  and          gp, s7, s0
                  sub          s1, t0, a4
                  nop
                  sltiu        s1, zero, -66
                  sltiu        a0, a6, 703
                  xor          s1, ra, a7
                  sll          t3, t3, s11
                  sltiu        tp, tp, 1288
                  slli         t6, a6, 17
                  ori          s8, a4, -1772
                  xori         s11, zero, -1172
                  sltiu        t3, s0, 1704
                  sltiu        a3, t3, -1942
                  slt          a2, zero, s9
                  lui          tp, 455847
                  srai         s3, s1, 28
                  srl          t3, s8, s5
                  slli         s1, gp, 1
                  add          s4, a0, s0
                  srai         a7, s11, 11
                  srli         ra, s6, 23
                  sltiu        a5, a3, 1259
                  xori         s8, a2, -149
                  lui          t4, 151185
                  sltiu        s5, zero, -1650
                  andi         a5, t5, -2045
                  addi         a5, a0, -1182
                  ori          a4, a2, -2011
                  and          sp, s2, s5
                  ori          t1, s8, -496
                  slti         t4, sp, -1276
                  slt          tp, t5, s3
                  srli         tp, s11, 6
                  sub          a3, s10, s0
                  slli         a0, s11, 6
                  sub          a2, s3, s6
                  ori          a4, s11, -1066
                  sll          sp, s7, t6
                  slli         s9, tp, 10
                  addi         zero, s3, -935
                  add          s6, s8, t1
                  andi         s9, a5, -1077
                  sltiu        s2, s9, 1220
                  slti         s1, t2, 512
                  sltiu        a2, a5, 1748
                  sub          t1, s0, t2
                  slt          a6, ra, s8
                  sll          ra, s7, t6
                  sra          s3, ra, tp
                  lui          a1, 750407
                  srli         s3, t1, 8
                  slli         s3, a6, 23
                  srl          s2, a0, tp
                  slti         a4, a7, 684
                  or           zero, a3, a7
                  addi         sp, tp, 280
                  xori         s2, a4, -1271
                  sub          gp, ra, s9
                  lui          gp, 297260
                  lui          a3, 373360
                  xor          t1, zero, s6
                  auipc        tp, 240173
                  srl          s7, tp, s5
                  auipc        a0, 228687
                  auipc        a0, 637180
                  sltiu        a3, a2, 1303
                  addi         a5, s4, 258
                  lui          t1, 794930
                  slti         zero, sp, 1601
                  srai         s9, s7, 28
                  or           a5, a6, s4
                  addi         a6, ra, -1516
                  add          sp, s1, s8
                  xor          a4, a3, s4
                  sub          s6, s9, t1
                  slti         a0, ra, 1021
                  or           t4, t0, ra
                  ori          a5, a5, 175
                  nop
                  srai         s9, t2, 3
                  lui          t3, 282323
                  andi         s6, t4, -1234
                  and          a3, t4, s1
                  add          s3, t3, s5
                  slt          s11, t1, t4
                  sltiu        s3, a0, -336
                  auipc        ra, 157121
                  sltu         s3, s6, s8
                  slli         a4, s5, 30
                  slli         s1, s11, 1
                  add          a7, s4, a7
                  sub          a6, s7, s6
                  nop
                  slt          ra, t6, s11
                  or           s6, s10, t0
                  srai         gp, a0, 1
                  xori         sp, t1, -773
                  sltiu        t6, t5, 1460
                  and          s2, t3, s11
                  slti         a4, ra, 1908
                  or           a2, s10, s1
                  sll          s5, s8, t1
                  srl          a6, t3, s11
                  andi         t6, s0, 1901
                  srli         a2, t0, 18
                  addi         a3, t6, -460
                  auipc        t4, 297264
                  and          t6, s2, tp
                  xor          sp, a5, t6
                  sub          t2, a5, a1
                  sll          sp, sp, s3
                  sltiu        tp, a3, 1206
                  slli         s3, s3, 11
                  sltu         s4, a5, s7
                  nop
                  slti         t2, s11, 445
                  ori          a7, s10, 43
                  sra          a3, s10, t3
                  lui          s9, 245160
                  srli         a6, t1, 4
                  sltiu        a7, t6, 929
                  andi         s9, sp, -431
                  add          s6, s10, zero
                  ori          gp, s9, 857
                  ori          s8, t1, -1738
                  addi         t0, t3, 1174
                  xori         gp, s5, -753
                  sltiu        s6, sp, -478
                  sub          t6, s7, t3
                  slli         tp, a4, 2
                  srl          a1, tp, t6
                  auipc        gp, 330065
                  slli         zero, s8, 17
                  auipc        s5, 440483
                  xor          a2, s4, a3
                  sltu         zero, a7, a1
                  srli         gp, s0, 10
                  slti         s11, a5, 45
                  srai         s8, gp, 16
                  sub          s4, t5, t2
                  sltiu        t2, s4, -200
                  slli         a1, s2, 8
                  srl          a2, t5, a3
                  slt          t4, sp, a3
                  and          zero, s6, s9
                  auipc        t4, 485932
                  sltu         zero, t3, tp
                  sltiu        t3, a1, 705
                  sltu         a3, t3, s3
                  auipc        t4, 102499
                  srl          a4, zero, t0
                  xori         s8, a6, -1323
                  lui          s6, 637825
                  sub          t3, t5, zero
                  slti         a3, s11, 290
                  addi         t0, s1, 1268
                  and          a4, zero, s0
                  lui          a2, 32157
                  ori          a4, t6, 857
                  slt          t3, s5, s5
                  lui          a4, 862770
                  sll          s5, sp, s8
                  and          s9, t6, ra
                  xor          t2, sp, s1
                  ori          tp, zero, -1588
                  ori          t6, sp, -1537
                  auipc        a4, 105142
                  lui          tp, 772869
                  slt          s2, a2, ra
                  andi         s2, s3, 909
                  xori         t3, a1, -758
                  sll          s4, s3, t6
                  srl          a5, s0, s8
                  addi         gp, s4, -1833
                  add          a5, t5, tp
                  srl          a7, s4, a5
                  lui          a1, 26792
                  slt          s4, s5, a4
                  sra          a0, a6, zero
                  or           a5, t4, a2
                  sll          a3, zero, a3
                  add          s3, a7, s1
                  addi         t1, a4, 396
                  slli         a5, s3, 6
                  sltiu        a2, t1, 821
                  addi         s4, s3, -1886
                  addi         t1, t5, -69
                  andi         a1, a5, 150
                  sub          s8, s9, s7
                  sltiu        zero, s4, 1979
                  sltu         a7, s3, s3
                  addi         s11, s5, -450
                  srl          a5, s6, t1
                  slli         s11, s2, 4
                  slt          tp, t0, ra
                  srai         s4, tp, 29
                  andi         tp, gp, 168
                  andi         t2, s11, -1591
                  xori         a7, s9, 1278
                  sub          t6, s0, a4
                  sltu         a2, t0, sp
                  auipc        t0, 997959
                  add          s6, t1, a7
                  andi         s6, s8, 1679
                  slti         t1, a5, 1203
                  auipc        sp, 95163
                  srai         a3, s2, 25
                  xori         a2, gp, 161
                  srai         s8, s5, 26
                  slli         t1, t4, 23
                  srl          t1, a5, s5
                  add          s6, s8, zero
                  srli         s6, t6, 19
                  slli         s9, tp, 21
                  addi         a4, t0, 2002
                  add          zero, t1, s1
                  slti         t4, a2, 127
                  li           t6, 0x2d08cdab #start riscv_int_numeric_corner_stream_1
                  li           s3, 0x80000000
                  li           t0, 0xffffffff
                  li           tp, 0x0
                  li           sp, 0xffffffff
                  li           gp, 0x0
                  li           s1, 0x0
                  li           a7, 0xd1242904
                  li           s5, 0x3555e88e
                  li           a6, 0x0
                  addi         s3, a6, 1020
                  nop
                  auipc        s3, 825059
                  lui          a7, 619093
                  lui          a7, 571398
                  add          s3, s1, s5
                  addi         gp, t6, 730
                  add          s3, a7, s5
                  lui          tp, 87820
                  lui          tp, 79934
                  nop
                  sub          gp, gp, sp
                  auipc        a6, 951541
                  auipc        s3, 198357
                  sub          t6, sp, s5
                  sub          s5, s3, t0
                  auipc        gp, 156363
                  addi         gp, a6, 1591
                  lui          s5, 507515
                  addi         s3, sp, 719
                  add          s5, s5, gp
                  addi         t0, sp, 1041
                  sub          s5, tp, a6
                  nop
                  auipc        t0, 167954
                  addi         a7, gp, 938
                  auipc        s1, 275169
                  auipc        s3, 312625 #end riscv_int_numeric_corner_stream_1
                  sll          t0, a3, t6
                  add          a2, t2, s8
                  lui          a2, 868834
                  or           s2, sp, s4
                  ori          s11, s6, -1067
                  sltu         s11, tp, a2
                  and          t1, a5, s6
                  andi         ra, gp, 1017
                  nop
                  xor          s3, tp, sp
                  sltiu        s7, s1, 730
                  nop
                  srai         a0, tp, 18
                  and          s2, t5, s8
                  sltiu        sp, a7, -1519
                  xori         t2, a4, 220
                  srli         sp, a5, 28
                  or           s3, s6, s8
                  xor          t1, t2, t3
                  slli         zero, s0, 16
                  addi         s9, t0, -241
                  srai         s9, tp, 10
                  or           a4, s1, t4
                  sltu         s6, s7, a0
                  sll          t0, s11, s9
                  add          a0, s8, s0
                  or           t3, a0, s2
                  xor          a6, t1, s5
                  or           a4, tp, t2
                  addi         t1, s4, -719
                  nop
                  ori          a0, tp, 1077
                  slli         s5, s10, 14
                  lui          t3, 318327
                  slli         s7, t4, 4
                  srl          t4, tp, t5
                  srl          t3, s1, s5
                  sll          s8, s5, s7
                  ori          zero, s5, 487
                  sltiu        t1, s4, -1316
                  nop
                  sub          s8, s8, t1
                  sra          sp, s10, s1
                  ori          s2, s10, -1740
                  sltiu        s8, sp, -1078
                  nop
                  or           s6, t3, t1
                  sra          s2, s8, s11
                  nop
                  ori          a0, t5, -684
                  sub          s3, a1, t0
                  slt          s9, t6, a3
                  slli         tp, s8, 7
                  add          a5, a2, a4
                  slt          a2, t0, t0
                  srli         s4, s10, 15
                  lui          s8, 235499
                  nop
                  and          s7, t4, s11
                  li           gp, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           a5, 0xffffffff
                  li           s4, 0xffffffff
                  li           t6, 0xffffffff
                  li           s11, 0x80000000
                  li           s7, 0xffffffff
                  li           t2, 0x80000000
                  li           s1, 0x80000000
                  li           t1, 0x1e403366
                  li           s9, 0x80000000
                  nop
                  lui          s1, 1034266
                  add          s7, t1, s7
                  auipc        s1, 998090
                  auipc        t2, 486391
                  nop
                  sub          t2, t1, gp
                  nop
                  addi         s11, s11, -81
                  nop
                  add          gp, s4, s4
                  addi         s11, t1, -1613
                  auipc        s9, 676958
                  addi         a5, t2, -1221
                  add          t6, t1, s9
                  lui          s11, 384387 #end riscv_int_numeric_corner_stream_15
                  slli         s3, s2, 10
                  add          gp, tp, s8
                  slti         a0, s8, -1981
                  srai         zero, t1, 21
                  ori          zero, tp, 1692
                  or           t2, s7, zero
                  auipc        t3, 117661
                  or           tp, sp, s3
                  sltu         a5, s6, s11
                  ori          s1, s11, -1503
                  add          zero, ra, t6
                  srai         s5, zero, 21
                  srli         t3, t3, 2
                  sltiu        gp, s2, -1609
                  xor          t6, s11, tp
                  nop
                  lui          a4, 967029
                  slt          s5, a5, a6
                  xori         sp, ra, 768
                  auipc        t2, 383815
                  xor          t3, zero, t6
                  srai         a0, s10, 28
                  lui          s8, 635592
                  sll          s11, gp, t3
                  slli         tp, ra, 18
                  nop
                  andi         t4, t3, -1276
                  or           t3, s11, t0
                  sltu         s6, sp, a2
                  slli         t0, a1, 10
                  srli         s1, t1, 4
                  sll          s8, s0, s1
                  sltu         ra, a3, s0
                  sltu         a0, t6, t4
                  ori          s11, a3, -25
                  slti         s4, s4, -541
                  andi         a2, t6, 655
                  addi         ra, a4, 595
                  slt          gp, ra, t4
                  sll          a6, s5, s5
                  and          a2, a4, s1
                  add          t3, ra, t1
                  auipc        s1, 311298
                  nop
                  add          s2, a5, s7
                  sll          gp, s11, t1
                  srl          a6, a4, t2
                  nop
                  and          a4, a7, t3
                  sll          a6, tp, s11
                  and          t3, t5, t0
                  andi         s11, t4, 842
                  srli         t2, t2, 0
                  nop
                  addi         t1, s3, -1999
                  sra          s2, a2, a1
                  slti         t4, a6, 475
                  xori         s3, t5, -1137
                  nop
                  auipc        a6, 495242
                  srl          ra, a3, s11
                  addi         s11, a7, -1956
                  xor          a7, s7, sp
                  auipc        s9, 226983
                  andi         a1, s5, 400
                  ori          t1, s11, -885
                  or           sp, sp, s9
                  sll          t2, a2, t3
                  lui          zero, 929676
                  add          a7, a6, t2
                  srl          tp, s10, s11
                  auipc        s3, 4448
                  ori          s11, t6, 746
                  ori          s1, t3, -1932
                  add          a5, tp, a5
                  xor          a6, t2, t1
                  nop
                  sub          a0, a5, t4
                  slti         t4, t4, 359
                  sltiu        s8, a7, -304
                  or           s1, a3, t0
                  slti         a5, s2, -611
                  or           s1, a6, a3
                  andi         t3, sp, 767
                  sub          a2, sp, a2
                  addi         sp, a0, 9
                  srli         t4, s11, 29
                  sra          zero, a4, t1
                  or           s7, t3, a1
                  sll          t3, s5, s3
                  xor          s4, t6, tp
                  andi         s1, sp, -1346
                  auipc        t6, 217062
                  and          zero, t0, t5
                  slli         s3, s4, 28
                  or           a1, zero, s6
                  sltiu        gp, s7, 175
                  auipc        s11, 772733
                  xor          t2, a7, t0
                  and          a6, a6, s8
                  lui          s8, 925149
                  sltiu        s3, a0, 880
                  xor          s7, t3, s10
                  xori         s1, s8, -465
                  srli         t2, t5, 28
                  sub          a2, s8, s2
                  xor          a1, a7, a7
                  srli         s4, a4, 22
                  addi         a1, gp, 292
                  sltu         t1, zero, s1
                  sltu         a5, a7, t5
                  sltiu        a1, s8, 981
                  xor          a6, t4, s9
                  sra          s8, tp, s0
                  lui          a1, 552212
                  xor          s6, s8, t1
                  nop
                  xori         t6, t0, -1559
                  ori          sp, gp, -660
                  sub          t3, gp, t4
                  sll          t6, s0, s3
                  sltu         s7, s9, tp
                  add          a2, ra, a2
                  sra          t4, t3, s9
                  srai         s3, sp, 12
                  sra          s9, a2, a1
                  sra          s11, s3, s7
                  xori         s9, s9, -942
                  sltu         t4, t6, s8
                  xori         s7, gp, 140
                  lui          t0, 730690
                  addi         a5, a7, 1790
                  sll          a3, a5, s7
                  ori          s4, t3, 60
                  srl          tp, t2, a0
                  andi         s3, sp, 1235
                  addi         s9, s10, -703
                  xori         s11, sp, -1561
                  xor          s6, t6, s9
                  and          s8, s10, t2
                  sub          s1, a0, a1
                  sltu         s4, s7, t0
                  xori         sp, s4, -348
                  or           t1, ra, gp
                  sltiu        t3, s10, -1512
                  addi         a3, zero, -1547
                  lui          tp, 1014451
                  slti         a5, s3, -1871
                  andi         tp, s11, 1564
                  or           s9, s11, gp
                  ori          a4, t4, -1861
                  nop
                  srli         t3, a4, 12
                  sub          t3, s4, zero
                  sll          t6, a4, zero
                  srai         s4, zero, 17
                  sra          a0, a5, s8
                  srli         s1, s5, 4
                  sra          a6, a0, t5
                  add          s2, a7, a7
                  sll          a3, gp, s11
                  xori         s5, t1, -1849
                  add          s4, s10, s1
                  sll          zero, a3, s8
                  slti         a2, sp, 1600
                  addi         t4, t0, -1443
                  srl          a7, a3, s0
                  slt          s8, gp, gp
                  and          s11, a6, a4
                  addi         t6, tp, -487
                  xori         ra, s8, 1216
                  sub          t3, a1, a0
                  srl          zero, s1, a7
                  and          s4, s0, a3
                  xori         t0, s5, -59
                  nop
                  and          t4, tp, s4
                  srai         t3, a7, 6
                  sub          t0, ra, s6
                  slli         a2, s6, 2
                  slli         s1, s6, 19
                  srli         s5, s4, 25
                  srli         s3, s0, 24
                  xori         a2, s8, -1036
                  sltu         s2, a4, s4
                  addi         s4, a5, 1339
                  slli         a7, ra, 15
                  add          a7, a6, ra
                  and          a2, s0, s11
                  sltu         s11, s3, ra
                  add          s3, t6, a3
                  or           a4, a5, a2
                  srli         zero, s1, 1
                  xor          s5, a6, t2
                  nop
                  sub          t3, s10, t0
                  auipc        t2, 10690
                  sub          s8, t2, s4
                  xor          t4, a6, t3
                  add          a5, a4, gp
                  xor          ra, s11, t1
                  sra          gp, s1, t2
                  sltu         s11, s3, a7
                  srl          a3, a2, s3
                  sra          a2, s5, s9
                  sltiu        t1, s10, 452
                  srl          s2, s0, a2
                  sll          s9, tp, a7
                  and          tp, s2, s5
                  sltiu        t4, t3, -914
                  slti         zero, s2, 1182
                  addi         t6, t0, 1099
                  slli         s2, s0, 20
                  sll          s1, s3, s7
                  nop
                  nop
                  add          a0, s10, s4
                  slti         a2, t2, -774
                  andi         t1, sp, -1815
                  srli         s6, s7, 4
                  slt          t0, gp, s9
                  addi         t6, t6, -1762
                  addi         gp, gp, 1719
                  lui          s5, 753317
                  sra          t1, ra, s3
                  srai         ra, s8, 16
                  sll          s8, s11, t0
                  srli         gp, tp, 24
                  slti         a7, s6, 350
                  xor          t0, a1, zero
                  and          sp, a2, a7
                  or           t6, s1, zero
                  sra          t3, sp, zero
                  sra          zero, s0, s6
                  nop
                  ori          gp, gp, -1448
                  sll          t6, t2, t6
                  nop
                  srl          s3, sp, a2
                  add          zero, t2, a5
                  andi         s5, t1, -222
                  srai         ra, a2, 4
                  xor          s8, s10, a0
                  lui          ra, 400417
                  xori         a3, s5, 878
                  sltu         t6, ra, t3
                  slti         a7, s4, -673
                  slli         t3, s7, 27
                  sra          t6, t0, s5
                  xor          a1, a7, s6
                  srli         a7, sp, 25
                  auipc        a0, 686300
                  xori         t0, sp, 47
                  sra          s9, a5, s2
                  add          tp, a3, s3
                  ori          s8, gp, 767
                  sltu         a1, a3, t5
                  and          s7, a0, s8
                  andi         t6, t6, 1067
                  slti         t0, s9, 1844
                  ori          t6, a4, 1457
                  andi         t0, t5, 1250
                  sll          a5, a0, s7
                  ori          zero, t6, -517
                  xor          a4, t5, ra
                  and          a3, s10, t0
                  ori          s9, ra, 1066
                  lui          s5, 525674
                  xori         t4, a6, -1453
                  and          a3, s5, a4
                  sltu         t1, s8, ra
                  nop
                  auipc        a4, 971487
                  srli         s2, s0, 3
                  sub          s3, a4, a5
                  andi         a6, a4, 52
                  sltu         a4, sp, s4
                  slli         a0, s2, 8
                  sra          ra, s1, t4
                  or           a0, s5, s8
                  and          gp, s4, a2
                  srl          s2, t1, s11
                  lui          a2, 168558
                  slli         s2, t6, 14
                  ori          tp, gp, -1540
                  slti         a1, a2, -174
                  slli         s9, s1, 23
                  addi         sp, a7, -59
                  ori          t3, sp, 1068
                  addi         a3, s3, 1642
                  sltiu        a6, t3, -709
                  srl          gp, gp, t1
                  sra          zero, t6, t3
                  xori         s4, t2, -2034
                  sub          a2, ra, t3
                  sra          ra, t1, t5
                  sub          s6, t2, a6
                  xor          a1, s9, a1
                  ori          a5, sp, 796
                  srai         s8, tp, 19
                  nop
                  xori         t6, s10, 1403
                  addi         a3, a7, -1265
                  sub          s2, t4, t0
                  nop
                  andi         t6, a4, 98
                  xor          s5, s10, s7
                  auipc        s9, 792903
                  slli         a3, a5, 23
                  andi         a3, s2, 1293
                  auipc        s9, 568302
                  andi         s4, a5, -1591
                  srl          s8, s1, tp
                  sll          s1, t1, s7
                  slt          s4, tp, tp
                  and          a3, s2, a6
                  srl          t1, s0, a6
                  sub          t3, a0, tp
                  addi         a7, a5, 1276
                  sub          s1, s3, a0
                  srli         a5, sp, 26
                  and          t0, t1, t4
                  sltu         s1, sp, a3
                  sltu         t2, a6, s11
                  slti         s2, zero, -120
                  slt          s11, a5, s2
                  sltu         ra, t5, t0
                  srai         sp, s1, 25
                  auipc        t4, 144484
                  xori         a1, a1, -12
                  sltiu        s2, a4, -514
                  lui          tp, 748771
                  xor          tp, t4, s4
                  sll          s11, a7, s0
                  and          s1, t3, tp
                  addi         s6, s1, 737
                  slli         a4, s6, 15
                  add          s5, s1, a1
                  auipc        t1, 418593
                  lui          s3, 563599
                  sub          t6, a5, s8
                  and          a7, t1, s7
                  add          s11, s4, t6
                  auipc        s11, 929058
                  sll          a3, s1, gp
                  auipc        s6, 109360
                  xor          a6, a6, t1
                  srl          a5, a5, s10
                  xori         s3, a5, 96
                  srl          gp, s3, t1
                  sra          a2, t2, tp
                  sll          s1, ra, gp
                  or           gp, a5, t1
                  nop
                  nop
                  addi         t2, a2, -1344
                  sltu         a3, a3, t3
                  srli         a7, a2, 5
                  ori          ra, t6, -10
                  sub          gp, s11, s5
                  xori         a0, s1, 1886
                  nop
                  xor          s9, tp, s4
                  slt          zero, s7, t1
                  lui          s7, 535699
                  sltiu        s9, a3, -486
                  lui          t2, 799168
                  slli         a0, s1, 29
                  andi         a6, s2, -432
                  sltiu        a5, ra, -1468
                  and          sp, s5, t1
                  nop
                  nop
                  slti         s3, s6, -1721
                  slti         s4, a5, 1957
                  srli         s4, a1, 13
                  lui          t1, 959818
                  nop
                  srai         t2, t2, 0
                  srli         a2, s5, 25
                  srai         a1, s0, 2
                  and          t2, s8, t1
                  sltu         s7, a7, a1
                  sub          s9, s8, tp
                  slli         s8, a7, 28
                  sll          zero, t5, t0
                  xori         s5, s9, -1593
                  slli         ra, s4, 16
                  slli         a2, s5, 13
                  xor          s6, t0, tp
                  slt          s5, a7, s8
                  srai         s1, s9, 19
                  sra          a1, s7, a1
                  or           s5, t1, gp
                  addi         t0, s0, -1549
                  sub          zero, a3, s11
                  srl          s8, zero, t0
                  sltiu        ra, a1, 1633
                  slli         s5, a4, 22
                  nop
                  addi         zero, t2, 890
                  or           s3, gp, t2
                  ori          t2, s11, -1359
                  sltu         t6, s4, t3
                  auipc        s11, 39273
                  slli         t0, s2, 29
                  srai         sp, t1, 26
                  srai         s1, a2, 2
                  slti         t0, ra, -1354
                  slti         a2, ra, -157
                  srli         s6, ra, 30
                  addi         zero, s11, -633
                  srl          s1, a6, a3
                  sub          s1, s6, s3
                  or           zero, a3, s5
                  slt          a7, t0, a1
                  xori         s3, t1, -131
                  slt          s8, s9, t5
                  srli         s7, a7, 27
                  and          s3, s3, s0
                  auipc        zero, 392453
                  xor          s4, t0, tp
                  sra          tp, s2, s1
                  slti         zero, s8, -1055
                  srl          s11, s5, a4
                  ori          s5, t4, -1247
                  srl          s6, a7, s7
                  srl          a7, a3, t3
                  xori         s4, t6, -883
                  sltiu        a6, s9, 1104
                  xori         a0, s2, 1859
                  or           a3, a2, a5
                  sll          zero, t0, gp
                  lui          a1, 646895
                  ori          t4, a4, -1121
                  sll          t0, ra, s1
                  add          a5, a7, a6
                  xor          s8, a5, gp
                  or           s11, s7, t5
                  slti         s1, zero, -1298
                  slt          t0, a2, t6
                  sra          s5, s11, sp
                  sub          s2, s4, s8
                  sub          a7, ra, t1
                  sll          a3, tp, s3
                  sra          t2, s7, gp
                  slli         a4, s0, 9
                  srai         a4, s2, 25
                  sub          s4, s1, t3
                  slt          s4, a2, t1
                  nop
                  slt          a5, s7, t2
                  slti         a4, tp, 221
                  nop
                  sra          a4, a0, a4
                  sub          a0, s5, s7
                  lui          s6, 957951
                  slli         a7, s9, 7
                  sub          t0, t5, a6
                  xor          a3, a1, s10
                  andi         gp, a5, -1477
                  sll          a0, tp, t0
                  sltiu        a0, t1, -1211
                  sra          s5, a6, t6
                  xori         s11, zero, -1129
                  slt          a5, a6, a5
                  srli         s7, s4, 1
                  or           a4, s7, a0
                  andi         tp, t3, -128
                  andi         a1, a0, -936
                  addi         tp, tp, -1066
                  srl          s7, a5, a3
                  srl          t2, t0, s10
                  and          a0, s4, s5
                  xor          s6, t5, a2
                  ori          s9, a0, 1854
                  or           t0, s9, a7
                  srl          t4, s11, s7
                  and          a4, t0, zero
                  slli         a1, a7, 24
                  sll          a0, s6, a7
                  srai         ra, s10, 19
                  sltiu        t0, a7, -55
                  slli         s3, s8, 27
                  slt          s8, s6, a6
                  sub          s8, tp, a0
                  xor          zero, t0, s8
                  sltu         a6, a7, s9
                  sltiu        s3, t0, -782
                  sltiu        a4, tp, 290
                  addi         gp, s8, 1845
                  addi         sp, t1, 1099
                  nop
                  and          zero, s3, a7
                  slli         t6, tp, 9
                  srl          t0, a7, s0
                  sra          tp, ra, a6
                  sub          t1, s5, s1
                  auipc        s9, 632738
                  sltiu        gp, ra, -1364
                  sll          s7, a4, s1
                  slli         t3, a2, 24
                  add          t6, a4, a0
                  ori          s11, a6, -1449
                  auipc        t6, 881103
                  auipc        a4, 201124
                  add          gp, t0, a3
                  sub          t0, t6, t2
                  sra          s11, sp, t2
                  slli         a7, s10, 27
                  nop
                  ori          a7, gp, 1686
                  lui          a7, 985731
                  or           a7, s11, a6
                  sub          s4, s11, a3
                  srai         s7, a2, 16
                  ori          ra, gp, -660
                  sub          s5, sp, a2
                  sll          t0, t3, zero
                  nop
                  nop
                  and          t1, s1, t5
                  sll          a0, ra, t6
                  andi         t0, ra, 549
                  and          a5, s2, t0
                  addi         t0, t4, 1063
                  or           t1, gp, t2
                  or           sp, t1, s8
                  addi         s2, t1, -778
                  auipc        s8, 503740
                  slti         a1, a1, -1411
                  sltiu        a3, a6, 585
                  sub          zero, a6, s8
                  sub          a0, a2, ra
                  xori         a1, zero, 1441
                  srai         a2, a7, 6
                  xor          a0, s1, gp
                  srli         ra, s7, 30
                  xori         t2, t6, -1173
                  add          zero, s10, a4
                  srl          t1, t2, a7
                  sltu         s7, s7, t4
                  add          t6, s11, a2
                  sll          s3, s8, s11
                  sub          s4, t4, a6
                  srli         s7, a3, 24
                  auipc        tp, 633824
                  addi         s1, s8, -1665
                  or           a0, s5, t1
                  and          s3, s11, s3
                  lui          sp, 64920
                  sub          s6, a2, a4
                  srai         ra, s7, 25
                  lui          s4, 461228
                  slli         t6, t2, 31
                  sltu         t0, t6, t0
                  add          s9, sp, s9
                  nop
                  xori         a7, t0, -1708
                  xor          s1, s6, a6
                  ori          a6, a2, -314
                  srli         s6, a7, 16
                  sll          gp, s6, zero
                  slli         t3, t4, 3
                  srli         s11, s3, 23
                  srli         s1, a1, 2
                  sll          zero, s3, a5
                  srai         ra, s5, 12
                  sub          a7, s10, a3
                  lui          s6, 438153
                  lui          ra, 188318
                  or           s4, s9, t1
                  srli         s4, s4, 24
                  ori          t3, s7, -1835
                  slt          ra, a1, tp
                  xor          a0, s8, t4
                  auipc        gp, 856449
                  slli         a0, s4, 1
                  sub          t3, a1, s3
                  addi         ra, s8, -863
                  or           s4, a1, s9
                  slli         a5, a2, 26
                  andi         t6, a4, 1587
                  lui          t0, 1035965
                  sltu         s2, s8, s10
                  sll          s5, s5, a4
                  slt          a2, t4, t4
                  srai         t3, t0, 1
                  xor          t3, s3, s3
                  addi         t3, s0, 1882
                  srli         s6, s3, 29
                  ori          a2, s1, 1177
                  addi         a7, t3, 1088
                  srai         a5, s9, 9
                  and          t2, a3, a7
                  add          ra, a2, s2
                  srai         s3, t0, 10
                  xor          t1, t0, tp
                  auipc        s7, 160825
                  sll          t0, s7, s4
                  ori          a6, s5, 1843
                  slt          s11, ra, gp
                  andi         t4, s11, 36
                  sltu         s3, zero, zero
                  and          a0, t2, t3
                  sra          s8, ra, tp
                  addi         s11, t0, -492
                  sltiu        s7, s6, 6
                  sra          a4, s2, a0
                  ori          s3, a5, -720
                  srl          a3, a5, a7
                  srl          s4, t3, tp
                  sltiu        gp, a0, -1197
                  xori         s9, a2, 287
                  srl          zero, t5, a4
                  andi         a7, gp, 1822
                  xor          s3, gp, s5
                  ori          s1, ra, 1674
                  slti         zero, s6, -119
                  lui          gp, 702079
                  nop
                  nop
                  sra          s6, t1, s5
                  srli         a3, sp, 10
                  andi         t4, s2, 727
                  nop
                  sub          s8, s7, a0
                  slt          s4, s1, s1
                  sra          s8, a2, a5
                  addi         a6, gp, 591
                  slli         a0, s5, 21
                  sltu         s6, s10, ra
                  xori         t6, a4, 901
                  nop
                  sll          a4, s7, s11
                  srai         a6, a7, 22
                  nop
                  sltu         s5, s9, s3
                  sltiu        t1, t6, -1503
                  srl          a7, a6, tp
                  add          s4, sp, t1
                  nop
                  xori         s1, t2, -1211
                  or           s5, s9, t0
                  srli         a6, t1, 15
                  xori         s11, s2, 98
                  lui          t3, 76315
                  srai         gp, s3, 30
                  xor          s11, s1, s10
                  srli         gp, a4, 11
                  andi         s2, s1, 1373
                  auipc        t2, 999199
                  sltiu        a5, a3, 1044
                  sra          t4, a0, s2
                  and          a1, a3, s6
                  sll          s9, gp, s6
                  ori          t4, s11, 120
                  lui          t1, 105590
                  sll          gp, s4, s4
                  or           a3, t5, s0
                  sll          t2, a5, a7
                  or           a7, a1, a0
                  slt          tp, s3, a4
                  srl          t3, t3, s2
                  sra          s8, s7, s2
                  lui          t4, 410712
                  add          s7, tp, s2
                  nop
                  srl          t6, s5, t3
                  andi         gp, s10, 240
                  slt          a1, a0, a5
                  slt          tp, t3, a6
                  slti         a2, a0, 272
                  sll          a5, t3, t6
                  slti         gp, s1, 919
                  sra          ra, s9, a7
                  addi         a1, a7, 294
                  and          ra, gp, s9
                  xori         s4, s3, 701
                  slt          t4, s5, t2
                  srl          gp, s0, s7
                  srl          t6, zero, s4
                  sub          s9, a3, s4
                  sra          a4, s6, a2
                  auipc        a3, 734730
                  add          a4, s4, t0
                  ori          t0, a5, 1286
                  xori         t4, t5, -84
                  srli         a4, a1, 23
                  slt          s4, a0, ra
                  nop
                  andi         a7, a2, 924
                  slti         s2, s3, 1710
                  slti         a7, s10, -45
                  and          s9, s8, a2
                  nop
                  sltu         t1, t4, t4
                  sltu         s5, a3, a4
                  srl          t1, s0, tp
                  or           s8, t0, s8
                  auipc        t3, 892938
                  ori          a4, a0, -1977
                  sltiu        s7, t1, 756
                  addi         s5, tp, 1071
                  lui          s7, 574281
                  lui          a3, 45527
                  lui          s7, 705715
                  addi         gp, zero, 525
                  slti         gp, s1, -687
                  srai         a5, a5, 6
                  srli         a1, a6, 28
                  slli         a5, a1, 23
                  ori          a2, t1, 374
                  srl          gp, ra, a6
                  sub          s4, s1, s0
                  lui          s6, 182241
                  srl          s11, tp, t3
                  auipc        s5, 372796
                  or           t2, a4, s4
                  add          a5, ra, a1
                  xori         s4, t5, -1882
                  srli         t1, s4, 16
                  slti         t2, a2, 575
                  slt          zero, t3, s4
                  or           a5, a6, a6
                  lui          a0, 295856
                  slli         t3, t0, 10
                  xor          s1, s11, s9
                  or           t4, a3, a1
                  lui          t3, 90808
                  lui          zero, 29705
                  nop
                  slt          tp, t6, s0
                  sltu         s5, s2, t3
                  ori          t6, a1, -1028
                  sll          s6, t1, a5
                  and          s6, t0, s7
                  xori         s3, s0, 1168
                  slt          s1, s11, s10
                  add          a3, s8, s9
                  xori         t4, t5, -688
                  sltu         sp, t0, a3
                  slti         s5, t1, -1327
                  ori          s8, a6, 619
                  or           a4, s6, s10
                  sra          a5, tp, a0
                  slli         a2, a6, 7
                  sltu         a3, s10, s4
                  xor          s6, s9, s10
                  sub          s4, t3, t1
                  nop
                  sltiu        a4, s9, -349
                  auipc        ra, 216610
                  srai         t1, s3, 9
                  slt          s3, a7, s8
                  slti         a1, ra, 1107
                  sll          s2, a1, tp
                  slt          a1, t6, s0
                  slli         s7, a3, 6
                  ori          s4, t5, -1581
                  sub          s1, a0, a1
                  srai         s6, a3, 26
                  sltu         sp, s9, a2
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           s1, 0x80000000
                  li           t3, 0xffffffff
                  li           t4, 0xffffffff
                  li           a7, 0xffffffff
                  li           s4, 0x0
                  li           s6, 0x0
                  li           gp, 0x0
                  li           s3, 0x0
                  li           s8, 0xffffffff
                  sub          s4, s3, t3
                  addi         s3, t3, 1573
                  auipc        gp, 712907
                  auipc        t3, 132461
                  nop
                  add          a7, s4, s1
                  auipc        s8, 73993
                  sub          t4, t6, t6
                  addi         t3, t4, 1690
                  add          s1, s1, t4
                  auipc        s3, 652112
                  addi         s8, s3, -119
                  nop
                  sub          s8, t3, t3
                  sub          a7, s1, t4
                  lui          s1, 706151
                  sub          t3, t6, t6
                  add          t4, t3, gp
                  addi         s8, a7, -459 #end riscv_int_numeric_corner_stream_4
                  sltu         gp, zero, sp
                  nop
                  xor          s2, a0, zero
                  slli         t3, t5, 2
                  sltiu        tp, s9, 658
                  lui          s3, 502142
                  nop
                  addi         a5, ra, 13
                  andi         ra, zero, -553
                  add          a6, t5, s2
                  sra          zero, t2, ra
                  and          s8, a2, s6
                  sll          a4, a3, t3
                  sub          t0, s0, a3
                  sltu         ra, s1, s8
                  sra          a3, s5, s4
                  or           s6, s0, t4
                  sra          s5, s2, gp
                  lui          s1, 792679
                  sll          a2, s5, t0
                  andi         a2, tp, 654
                  slti         ra, t3, 771
                  slt          t6, t6, a2
                  sub          ra, s3, a4
                  xor          s8, s9, a3
                  srl          s5, t5, s11
                  sltiu        s8, s8, 433
                  and          a6, tp, a6
                  sub          s7, s6, a1
                  sll          s8, t2, s5
                  xor          s11, t0, a1
                  and          t1, t3, t4
                  nop
                  or           a7, a3, sp
                  ori          s11, s9, 1798
                  xori         a0, t2, 1798
                  slti         t6, t2, 325
                  slti         t6, t2, 1755
                  srli         a5, s5, 11
                  srai         s7, a6, 16
                  addi         a5, a0, 1252
                  nop
                  sll          s2, t6, t5
                  xori         s3, s9, 1077
                  srli         sp, t6, 24
                  addi         gp, t2, 692
                  or           zero, a6, sp
                  slt          s5, zero, s2
                  slti         t4, zero, 1383
                  andi         a4, sp, 33
                  sltiu        gp, s5, -1512
                  slli         s9, s10, 27
                  sltu         t3, tp, s0
                  xori         s4, a5, 466
                  nop
                  ori          s7, s3, -931
                  srl          a4, t3, s9
                  srai         a7, gp, 8
                  xor          zero, s8, t5
                  andi         ra, s10, 1514
                  sub          s8, a3, s6
                  xori         tp, sp, -948
                  sltiu        s8, zero, -644
                  nop
                  sltu         s11, s4, ra
                  andi         a4, s10, 1097
                  sra          s2, a5, a3
                  srli         tp, t5, 15
                  slti         s4, zero, -1763
                  slli         zero, s7, 27
                  add          t2, a5, s1
                  sub          s3, s11, tp
                  srli         s3, s7, 13
                  andi         sp, gp, -569
                  slli         a7, gp, 31
                  ori          s6, s2, -441
                  xor          a2, a3, t4
                  addi         a4, t5, -1208
                  xori         s2, s0, 731
                  or           tp, s0, t0
                  sll          s1, s11, t1
                  addi         a4, a2, -1369
                  srai         ra, t2, 25
                  add          s3, t5, zero
                  slli         a4, a0, 30
                  xori         a5, s2, 777
                  sll          a1, t6, s7
                  andi         t1, ra, -1771
                  sub          s9, t5, s10
                  srl          s11, a2, a5
                  xor          s8, s5, t6
                  auipc        s1, 1045912
                  sra          s7, tp, a2
                  xori         s2, s0, -381
                  srai         t3, t6, 22
                  srli         s3, s8, 11
                  srl          s6, tp, s6
                  auipc        t1, 871869
                  or           t2, a6, t6
                  sll          s4, gp, t3
                  auipc        s6, 932684
                  sub          a0, gp, gp
                  srli         s5, s5, 29
                  sltu         a0, t0, t1
                  or           a6, a7, a6
                  lui          sp, 834451
                  sra          a0, s2, s6
                  sub          a2, t1, s6
                  addi         s4, a5, -1974
                  nop
                  slt          s5, a4, s0
                  sll          ra, t6, s3
                  slli         a2, s11, 3
                  lui          s11, 1009797
                  and          t2, s2, s3
                  sra          a1, s10, t2
                  xor          s4, t5, t2
                  sll          ra, ra, t1
                  sra          a4, ra, zero
                  srai         s7, s9, 10
                  or           t4, s10, t0
                  or           a7, s7, s9
                  or           s9, a2, a4
                  sltu         a2, s10, ra
                  sltu         ra, a4, t4
                  lui          t0, 803732
                  sub          s11, t1, s3
                  addi         gp, s2, -1013
                  sltu         a7, a6, s6
                  and          t6, a2, gp
                  xori         t3, s3, 909
                  srl          s11, s2, s0
                  slti         s11, tp, -685
                  slti         t2, a0, -1229
                  slli         a6, a3, 8
                  add          a5, s2, t5
                  srli         t6, a3, 18
                  and          t3, a7, s0
                  nop
                  sltu         s6, s4, t4
                  ori          t6, s8, 752
                  addi         t6, a4, 5
                  auipc        s7, 1020169
                  slli         a4, s0, 0
                  xori         s4, s7, -235
                  sll          t1, a1, a2
                  slt          a6, t0, s7
                  slti         t6, t2, -1837
                  addi         t4, sp, 754
                  add          a2, s10, s1
                  xori         s1, s11, -1655
                  auipc        s11, 829964
                  xori         sp, a2, -1876
                  andi         t6, s2, -2036
                  or           t4, a3, gp
                  and          zero, s11, s9
                  nop
                  sll          a6, s3, s0
                  sltiu        t0, a7, 1190
                  ori          a7, s3, 1569
                  xori         a4, a2, -1711
                  sll          zero, s11, ra
                  xori         a0, t0, -559
                  auipc        t2, 362944
                  nop
                  slli         t1, tp, 24
                  addi         t6, t0, 1999
                  nop
                  slt          s4, a2, s2
                  nop
                  auipc        s1, 586918
                  or           s3, s10, s7
                  xor          s9, s9, s2
                  sltu         ra, a1, a4
                  ori          a5, a3, -525
                  lui          a7, 51674
                  sub          a1, sp, a3
                  addi         s2, s2, 1842
                  srl          a4, s11, s9
                  sltu         s9, s11, a2
                  sll          t3, a6, t3
                  srl          s11, s7, s2
                  or           t6, t1, s10
                  srl          a0, s11, t4
                  slt          a0, a2, a5
                  slli         a6, s4, 1
                  nop
                  slli         a5, s2, 14
                  srli         s2, t3, 8
                  auipc        a5, 1017589
                  auipc        a7, 1034879
                  ori          t4, s3, 346
                  sltu         a0, gp, a5
                  add          s5, sp, s4
                  sltu         s7, s0, s10
                  and          a3, s5, t6
                  and          t3, a3, s7
                  lui          a3, 50728
                  srl          a4, s6, a3
                  sltu         s6, zero, t3
                  srai         s3, a1, 13
                  auipc        s1, 530393
                  srai         a0, a1, 1
                  auipc        t1, 864221
                  slti         s5, sp, -1843
                  or           a3, a4, zero
                  srl          t3, s10, sp
                  sra          t3, a1, a2
                  add          s1, t5, a3
                  nop
                  addi         s8, zero, -978
                  sra          tp, a3, s7
                  srli         ra, ra, 28
                  slt          t0, t3, s9
                  or           a6, t6, a6
                  sub          zero, sp, s9
                  ori          a5, a4, 515
                  slti         s7, t5, -687
                  srli         a2, a0, 4
                  add          t3, s2, s1
                  xor          gp, s4, t1
                  sll          sp, a5, s10
                  sll          a6, t5, s10
                  add          a3, t2, s3
                  andi         t1, t4, -1395
                  slli         sp, s6, 11
                  xor          s5, t6, s1
                  andi         s9, s4, -1844
                  srl          t0, s8, a0
                  sltiu        a1, t2, 988
                  xori         a5, a1, -966
                  xori         a6, s3, 1254
                  slli         t4, t1, 15
                  slli         t0, a5, 18
                  slli         a1, t1, 0
                  xori         a1, s3, 1880
                  slli         s6, s4, 7
                  sra          gp, a5, zero
                  srai         t3, a4, 11
                  srai         zero, a7, 1
                  addi         s4, a7, 786
                  sltu         a1, a2, s10
                  srl          a1, t4, s5
                  xori         a7, s8, 579
                  addi         a0, s8, -839
                  srai         tp, t4, 3
                  and          s6, a6, s11
                  xori         a6, tp, -454
                  slli         s7, a0, 3
                  nop
                  add          s1, t0, t1
                  add          s2, s11, s7
                  sub          a5, s11, t1
                  slt          zero, t4, t0
                  auipc        s5, 976718
                  nop
                  sltiu        t0, s11, -2018
                  auipc        a1, 491580
                  srli         tp, s7, 5
                  sub          zero, s11, a7
                  sltu         t2, t1, t0
                  auipc        s5, 69059
                  auipc        s2, 820798
                  auipc        s7, 997387
                  srl          s5, t6, s8
                  nop
                  srl          s9, sp, s8
                  auipc        s9, 486305
                  slli         a6, s10, 5
                  sra          s5, t2, s5
                  and          gp, ra, s1
                  or           a4, t0, t1
                  xor          a2, t3, a6
                  or           s11, t3, t5
                  sra          ra, a7, a2
                  sra          t2, s7, a6
                  sub          t6, t6, s9
                  lui          s8, 254437
                  sltu         s5, s0, s6
                  addi         t6, s4, -1689
                  and          a1, s2, a5
                  srl          a2, s2, ra
                  add          s9, a7, s2
                  nop
                  sub          t0, t3, t5
                  sub          sp, a0, a5
                  slli         a5, t0, 14
                  srai         a2, t6, 28
                  sltu         sp, t0, a3
                  andi         a6, zero, 1785
                  andi         zero, s6, -1907
                  addi         a3, a3, 229
                  xor          s7, a6, a3
                  auipc        s7, 196721
                  slli         t6, a6, 22
                  srl          a7, t1, a3
                  sll          sp, sp, a3
                  or           zero, s6, t2
                  slt          gp, a4, t6
                  sub          t3, s4, tp
                  slt          t1, t3, a3
                  auipc        a3, 26612
                  sra          ra, ra, s7
                  sll          t2, a4, sp
                  slti         a3, t6, -1679
                  lui          zero, 55760
                  or           a6, a1, s6
                  auipc        a3, 42782
                  sra          a2, zero, a6
                  sltiu        t6, a3, 1730
                  andi         t0, s1, 500
                  sra          t3, t6, s9
                  sltu         a0, a4, s6
                  or           gp, ra, t0
                  add          t6, a4, a2
                  slti         t1, a3, 1052
                  srl          a5, a3, t0
                  auipc        t0, 1037634
                  nop
                  srai         a4, ra, 6
                  srai         zero, a5, 13
                  srli         gp, a4, 5
                  sltiu        s5, a1, -1530
                  srli         ra, t5, 3
                  slt          t3, s5, a3
                  nop
                  auipc        a7, 296546
                  xori         a6, sp, 1728
                  ori          s1, s8, 484
                  xori         s4, s9, -944
                  sll          a2, s0, s0
                  sltiu        t3, a4, 1896
                  sll          a5, s0, t4
                  sra          a4, sp, s3
                  slt          sp, t5, t0
                  slti         s2, s0, -1752
                  ori          s8, t6, -1609
                  ori          s1, a6, -1532
                  srl          t4, s6, t4
                  xor          s9, t6, ra
                  add          t0, s3, s10
                  slli         a6, t1, 20
                  sltiu        s6, s0, -1513
                  addi         ra, t4, -385
                  slti         ra, zero, -926
                  add          s3, a2, s6
                  and          t0, t0, s3
                  sll          s1, s7, a2
                  slli         t6, s10, 29
                  slt          t6, s5, s5
                  and          s11, t4, zero
                  sltiu        a5, t2, -587
                  auipc        t2, 409309
                  slt          t3, s9, t3
                  slti         s5, s4, 734
                  ori          zero, t3, -429
                  srl          a1, a7, a3
                  sltu         ra, s9, t0
                  xor          ra, a4, gp
                  addi         sp, gp, 1767
                  sll          s3, a4, a5
                  andi         a0, t4, -1909
                  addi         a5, a7, -1951
                  sltu         s3, s1, a3
                  or           a0, tp, s7
                  sra          a5, a4, t6
                  auipc        s8, 383117
                  sltiu        s9, a5, 460
                  slti         t1, s11, 1204
                  and          s8, s7, s4
                  sll          t0, s8, ra
                  auipc        s5, 185355
                  slt          s1, t5, s7
                  sub          zero, s5, s6
                  slli         s9, s6, 16
                  sra          a0, sp, ra
                  andi         t0, a7, 1579
                  ori          a6, tp, 1771
                  addi         t4, s8, -62
                  sltiu        s7, s4, 433
                  slti         sp, t2, 695
                  slti         t0, tp, -222
                  sra          s1, tp, s8
                  sub          t3, s5, s6
                  slti         t1, a3, 574
                  and          sp, t5, a0
                  slti         ra, s5, 607
                  sltiu        ra, t4, -313
                  add          gp, a2, t4
                  or           a5, a1, tp
                  sltu         a6, tp, a2
                  srai         a0, a0, 30
                  sll          s9, t4, s9
                  slli         a1, t5, 21
                  sub          s3, s11, tp
                  auipc        s5, 603099
                  sub          t6, s9, s1
                  sltu         gp, a3, s7
                  sub          a0, ra, s8
                  srl          a2, a6, s6
                  sltiu        gp, t5, -487
                  ori          s11, s1, -1421
                  xor          s5, a5, s1
                  andi         t1, s4, 1188
                  addi         a0, t3, -1122
                  addi         sp, a4, -1066
                  slli         t6, t2, 1
                  srli         t0, s3, 16
                  sub          t2, s5, t2
                  sub          a6, s11, a1
                  addi         s4, s2, 1060
                  addi         t0, a1, 1022
                  slli         s8, s8, 21
                  srai         t0, a4, 28
                  or           s6, tp, a2
                  slt          a0, a4, s8
                  sltu         t3, t5, a3
                  sltiu        a1, s7, -1714
                  srl          gp, s3, s6
                  sll          a5, t2, s11
                  sltiu        s7, t3, 102
                  xor          ra, sp, s7
                  and          sp, t3, ra
                  sll          s8, a5, s9
                  lui          s8, 264585
                  auipc        a6, 250725
                  xor          a2, t5, s11
                  auipc        t6, 560932
                  sltiu        t1, a0, 1737
                  auipc        s6, 174654
                  srl          s4, a5, s2
                  sll          a2, s1, s5
                  sltu         t6, s8, t3
                  andi         a2, s9, 581
                  slt          t1, ra, a4
                  srli         t0, s1, 1
                  auipc        a4, 627341
                  or           s6, s1, s9
                  and          t3, s8, s6
                  xor          t0, a5, s2
                  sll          a3, t5, a3
                  and          t6, a7, a5
                  nop
                  add          t3, s8, s11
                  slli         s7, s9, 11
                  slti         s9, a3, -111
                  sltiu        gp, s7, -1817
                  and          s11, zero, s8
                  sltiu        t6, a4, -1604
                  xori         s8, a3, 820
                  srl          s8, s0, t3
                  lui          t3, 619611
                  srli         a1, s6, 3
                  srli         s7, s5, 25
                  srli         t1, zero, 17
                  or           a7, t0, zero
                  slti         t0, s6, 885
                  srl          a5, t4, gp
                  srli         t6, s0, 11
                  sub          s3, s8, a5
                  srli         s7, a3, 15
                  slti         s8, s7, -1654
                  srai         t6, zero, 23
                  sra          t6, t4, t0
                  slli         t2, s4, 0
                  add          t1, s11, s4
                  xori         a7, s2, -109
                  sll          a5, s7, gp
                  auipc        s3, 686966
                  andi         sp, gp, -1337
                  slti         s6, s9, -1106
                  sub          t1, t0, a7
                  slli         ra, s6, 7
                  sltu         a3, s9, zero
                  sra          a1, s7, sp
                  xor          s2, a6, gp
                  auipc        a6, 718881
                  add          s8, s1, s11
                  auipc        t4, 300769
                  or           a0, a6, s5
                  li           a0, 0x5eb44fd8 #start riscv_int_numeric_corner_stream_12
                  li           t2, 0x80000000
                  li           a5, 0x0
                  li           s6, 0xe29caeb0
                  li           a3, 0x0
                  li           a7, 0x7670d198
                  li           a2, 0x70b266c0
                  li           s5, 0x4753bf20
                  li           a4, 0xb55187fb
                  li           ra, 0x0
                  nop
                  lui          t2, 805484
                  add          a4, t2, s5
                  sub          a2, a4, a5
                  add          t2, a2, a0
                  addi         t2, a0, 1535
                  sub          a4, s6, a4
                  addi         t2, a4, 1711
                  lui          a0, 204135
                  lui          a4, 935870
                  addi         a2, a2, 71
                  add          a2, s6, a5
                  auipc        a2, 130277
                  nop
                  add          a3, a0, a4
                  add          t2, a5, s5
                  nop
                  lui          a0, 307544
                  nop
                  nop
                  addi         s6, a7, -965
                  addi         a7, a3, -1199
                  lui          t2, 178633
                  add          a4, a7, s5
                  sub          s5, a7, a3
                  auipc        ra, 117725 #end riscv_int_numeric_corner_stream_12
                  slli         t0, s4, 12
                  andi         sp, a7, 1128
                  slli         gp, s3, 24
                  xor          s3, t5, t2
                  slli         s5, a3, 25
                  auipc        a2, 608568
                  addi         a2, sp, 1668
                  sll          t4, s11, s0
                  sltu         s5, a0, s7
                  slt          s1, a0, tp
                  addi         a7, a1, -1122
                  nop
                  srl          s5, tp, t1
                  slti         s3, t6, 1903
                  srli         s8, gp, 20
                  sra          s2, s6, s5
                  nop
                  slt          t3, t1, s7
                  add          s1, a2, a0
                  sltiu        s2, ra, -1242
                  srai         gp, a1, 6
                  add          s1, a0, s11
                  sltu         ra, s9, s0
                  slti         t6, a7, 999
                  sltiu        s9, t4, 1996
                  slt          s5, sp, s7
                  add          gp, s11, t0
                  sltiu        sp, s4, 1532
                  addi         s1, t4, -1916
                  xori         s4, a4, 775
                  srai         s4, s2, 4
                  addi         sp, s10, -148
                  sll          t4, sp, s4
                  addi         s11, s8, -609
                  sub          a1, t4, ra
                  sltu         s2, s8, s7
                  sra          s2, s1, s1
                  andi         gp, s10, -959
                  addi         a4, s11, 1939
                  xori         s3, a6, 1454
                  sub          t2, s1, a7
                  auipc        s9, 357188
                  sub          a3, a4, ra
                  xor          t1, s9, t6
                  srli         s11, s0, 18
                  auipc        t1, 234143
                  andi         t1, s11, 1088
                  sll          s8, t1, t0
                  ori          tp, s9, 1216
                  and          s6, s11, s0
                  andi         t3, s2, 125
                  slt          a5, a7, t6
                  slti         a0, gp, 739
                  andi         s7, zero, 581
                  nop
                  ori          s9, a2, -360
                  srl          s7, a1, a1
                  nop
                  srli         t3, s1, 21
                  andi         s2, a2, -1833
                  slt          a6, t4, t4
                  nop
                  xori         tp, s11, -663
                  or           tp, a3, s11
                  sll          s8, t0, t0
                  sltu         s1, s5, t4
                  sll          a3, s4, tp
                  and          a3, a3, sp
                  lui          s11, 447435
                  slli         a5, ra, 4
                  addi         t2, t1, 1669
                  add          s11, s2, a7
                  slli         a5, a5, 30
                  sra          a4, s0, a4
                  auipc        t6, 1000192
                  srl          s6, zero, s1
                  nop
                  ori          s9, s6, -926
                  xor          s4, sp, t1
                  xor          zero, s11, s8
                  sub          t4, t2, ra
                  nop
                  andi         sp, s1, -1396
                  ori          t1, a0, 1514
                  lui          sp, 440326
                  addi         s6, t1, 386
                  or           s7, a1, s6
                  xori         s3, s4, -1521
                  addi         s6, a6, 152
                  add          zero, zero, t6
                  or           s7, a2, t6
                  sltiu        s5, s0, 1095
                  srai         zero, s9, 26
                  auipc        s2, 178454
                  andi         t6, s4, -1516
                  sltu         tp, t1, ra
                  slli         a2, a4, 3
                  nop
                  slti         a0, s5, 1162
                  slti         a0, t0, -517
                  add          gp, t4, s3
                  lui          gp, 691587
                  sltu         tp, a2, t4
                  sltiu        s5, s0, 181
                  xor          a0, s5, s4
                  add          s4, a4, a5
                  srl          sp, sp, s11
                  sra          s3, s11, s4
                  addi         sp, t2, -539
                  addi         t2, s11, 1621
                  sll          ra, ra, ra
                  ori          a0, a7, 489
                  ori          gp, a4, -605
                  sll          ra, a7, a5
                  slli         t1, s3, 22
                  sltu         a4, s9, s11
                  addi         s5, s10, 657
                  addi         s5, s8, 136
                  sltiu        a4, s1, 746
                  slti         gp, s9, -1726
                  sltu         s4, ra, a7
                  ori          a1, t4, -696
                  slti         a2, t4, -1992
                  slti         s1, s2, 931
                  sra          t6, a0, ra
                  nop
                  sltiu        a1, a1, 1630
                  srli         a1, a7, 4
                  and          t1, zero, a1
                  sltiu        a1, s3, 1458
                  auipc        a7, 574374
                  add          t0, t5, s3
                  slt          s2, a4, s8
                  xor          t6, s4, a6
                  slti         s11, s4, -730
                  lui          s11, 947833
                  add          s1, s9, s8
                  sra          s6, s4, s5
                  sub          s3, s11, a2
                  slt          a3, t2, s6
                  nop
                  sll          t6, t3, t5
                  andi         a1, t6, -1324
                  sub          a3, a7, t3
                  sra          a1, ra, s7
                  and          a5, t2, s1
                  lui          s9, 17834
                  slli         s6, a5, 13
                  srli         a1, tp, 20
                  auipc        a5, 251365
                  slli         t1, ra, 25
                  and          s2, a5, gp
                  srl          s11, s0, s0
                  andi         s11, s8, 1532
                  and          s6, t3, tp
                  srl          gp, a1, ra
                  lui          a5, 573835
                  srl          a4, a5, tp
                  sltiu        t3, zero, 36
                  lui          a6, 948169
                  add          s1, a1, s10
                  slli         s2, s8, 16
                  srai         s6, zero, 6
                  andi         s7, s1, 1384
                  srai         t1, s3, 19
                  slt          s8, gp, s3
                  slli         s5, s0, 21
                  sll          s1, s4, s5
                  nop
                  nop
                  xor          a0, ra, ra
                  lui          s2, 344031
                  ori          a1, a7, 1017
                  srl          a3, s3, s0
                  xori         a7, t6, 1172
                  add          s5, t2, s11
                  nop
                  srli         s9, a3, 22
                  xor          t0, s2, a7
                  sltiu        a4, t3, -93
                  xori         a2, t1, 468
                  slti         t6, sp, 1757
                  addi         tp, s6, 1073
                  slli         sp, ra, 9
                  srai         s4, t0, 25
                  sltu         ra, s11, t3
                  andi         a0, t5, -805
                  auipc        a1, 307435
                  and          sp, a7, s7
                  addi         zero, a7, 377
                  auipc        a7, 1033687
                  nop
                  xori         t6, gp, -839
                  srl          s9, s11, s1
                  ori          a5, a1, -416
                  xori         t2, gp, 877
                  slt          tp, s0, ra
                  sub          t0, a4, t2
                  sltiu        a0, t6, 672
                  auipc        t3, 275936
                  xor          s2, s3, t6
                  srl          t6, t2, t3
                  srl          gp, t6, s7
                  slti         a3, s4, -37
                  slli         a0, t6, 15
                  srai         s6, t1, 28
                  andi         a2, s5, -611
                  sll          t0, t4, a7
                  or           s4, a4, t2
                  srl          s7, a0, zero
                  srl          a2, t2, ra
                  srl          zero, a7, t5
                  sra          s4, a5, s5
                  slli         s5, s6, 1
                  addi         a5, s2, 1977
                  xor          s4, s10, a1
                  slt          gp, s5, s5
                  slt          t3, s5, a6
                  sltiu        gp, s4, -1404
                  sltu         s7, t5, s2
                  addi         a7, zero, 487
                  slti         a6, gp, -917
                  slti         t2, s7, -1788
                  slt          tp, s0, t1
                  xor          s1, a3, s1
                  addi         a6, s1, -1377
                  auipc        sp, 649188
                  nop
                  srl          s7, sp, a5
                  add          t6, s0, sp
                  srai         tp, s0, 8
                  slli         s1, a4, 2
                  xori         s9, s7, 88
                  or           s9, tp, a1
                  slli         s7, s6, 30
                  sra          a1, s3, s10
                  nop
                  auipc        s2, 881354
                  sll          t6, gp, zero
                  xori         s2, s8, -135
                  xor          s5, s3, s6
                  addi         s5, s6, -280
                  slt          s9, t4, s2
                  slti         s6, s8, 785
                  srli         s11, t2, 26
                  srl          s1, t3, ra
                  and          s9, zero, a7
                  srl          a1, s0, tp
                  slt          t2, t3, s9
                  andi         a7, s10, -1896
                  addi         t2, s0, -399
                  sub          t4, zero, t4
                  slti         a7, s8, -1245
                  or           t2, t0, a3
                  auipc        s3, 412977
                  auipc        t2, 474829
                  xor          a4, a7, s6
                  slt          zero, s0, s1
                  xori         s11, s6, -320
                  nop
                  sltu         s7, a0, s7
                  slli         zero, zero, 9
                  sll          s8, t5, s0
                  lui          t0, 449414
                  addi         a2, s6, 854
                  sll          s3, t5, t5
                  ori          t3, s4, -1521
                  slli         a6, t6, 22
                  srai         sp, s8, 13
                  auipc        s6, 561775
                  slli         t0, a2, 16
                  auipc        s6, 508549
                  sltiu        t0, tp, 1258
                  nop
                  slt          a2, s6, a4
                  sltu         s2, a6, s6
                  andi         zero, t1, 831
                  sub          zero, ra, s1
                  sll          a3, s2, s3
                  srl          a4, t4, s3
                  slt          ra, s7, a2
                  srl          a3, s8, t2
                  sltu         s2, s1, a2
                  ori          a1, a4, -351
                  srli         t2, t1, 24
                  sll          s5, s1, a7
                  ori          ra, a1, -57
                  addi         gp, s2, -307
                  slli         s4, s6, 8
                  ori          t0, a1, -1091
                  lui          s1, 20759
                  sra          gp, t6, a5
                  srl          s4, s4, s2
                  andi         a1, t2, 340
                  sltiu        s1, ra, 1626
                  sltu         a3, s5, t6
                  and          s11, tp, s3
                  sll          sp, zero, s3
                  xor          t3, s9, sp
                  andi         s6, zero, 766
                  and          s5, s1, ra
                  ori          gp, t5, -1370
                  srli         zero, t1, 20
                  srai         s11, a5, 27
                  xori         a4, sp, 1832
                  slti         s9, s7, -1971
                  sll          a1, s8, a5
                  sll          a0, s7, s11
                  or           a3, s1, s5
                  andi         t2, tp, 720
                  srli         s4, s9, 7
                  nop
                  sltu         s1, s5, s11
                  li           a7, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           s8, 0xbe1443c2
                  li           t0, 0x1c2acc64
                  li           s9, 0xffffffff
                  li           s3, 0x0
                  li           a6, 0x0
                  li           t2, 0xffffffff
                  li           a2, 0xffffffff
                  li           a1, 0xc637c732
                  li           t4, 0xffffffff
                  add          a7, t0, t0
                  add          a2, a6, s8
                  add          a7, s9, a2
                  nop
                  auipc        a6, 345993
                  auipc        s8, 215207
                  addi         a2, t2, -1010
                  nop
                  lui          a7, 369745
                  nop
                  lui          a2, 3835
                  nop
                  add          a2, s8, a1
                  sub          s9, s3, a2
                  addi         a2, t0, -181
                  sub          s8, s3, t2
                  nop
                  lui          s3, 244606
                  nop
                  add          t2, t0, t0 #end riscv_int_numeric_corner_stream_11
                  slli         s9, t6, 17
                  andi         s3, tp, -1606
                  srl          s5, a2, tp
                  sub          ra, a1, a2
                  sltu         ra, sp, a7
                  sltu         a2, sp, t5
                  slli         s11, sp, 22
                  addi         a7, s11, -1275
                  slt          tp, s7, t3
                  add          s9, t2, t3
                  xor          a3, a6, t5
                  nop
                  xori         gp, t3, 1824
                  add          s9, sp, a6
                  srl          a0, a5, a7
                  slt          a1, a1, a2
                  sll          s11, gp, s1
                  auipc        a7, 895959
                  add          s4, s11, a5
                  nop
                  xori         a3, gp, -1854
                  add          sp, a6, tp
                  and          t2, a3, a1
                  srl          gp, t5, a5
                  sll          a7, s8, a0
                  sltiu        tp, zero, 1438
                  sra          gp, a2, s10
                  and          t0, a1, s9
                  and          s4, s8, ra
                  addi         a6, s10, 1632
                  ori          t1, a5, -663
                  slti         a1, s1, -1342
                  lui          s7, 185093
                  andi         a4, a0, -1452
                  slt          tp, a5, s2
                  ori          t0, s7, -557
                  srl          ra, t0, gp
                  slti         a6, s10, -1909
                  and          s7, zero, s2
                  xori         t1, s0, 1274
                  add          t4, s9, a0
                  xori         a4, a4, 1366
                  add          t2, t3, t2
                  sub          a2, a0, a0
                  or           s5, t1, a1
                  auipc        s6, 207088
                  andi         gp, t4, 92
                  slti         a4, s2, 258
                  lui          a0, 645736
                  sra          s2, a5, sp
                  sltu         a3, a4, a2
                  sltu         a6, s8, a5
                  add          gp, tp, a5
                  slti         s3, a5, 384
                  andi         t0, s8, 53
                  sltu         t4, a6, s1
                  addi         sp, s0, 553
                  srl          s5, gp, ra
                  sub          s8, s1, t0
                  sll          t0, s5, s4
                  xor          s6, s5, s9
                  xori         a5, t3, 88
                  sra          a7, t3, s11
                  slt          s7, s8, a6
                  sltu         a3, a7, tp
                  slt          s5, a7, s10
                  srli         s3, s10, 21
                  sra          t1, s11, ra
                  srli         a1, s5, 15
                  ori          t4, s5, 388
                  sll          s8, t5, zero
                  xori         ra, a5, 1802
                  slt          a0, s11, s5
                  auipc        s7, 439325
                  sub          a4, a6, s3
                  nop
                  lui          s1, 163983
                  srl          t1, s7, s3
                  ori          s8, s2, 432
                  andi         t0, a6, 534
                  ori          a3, s1, 976
                  auipc        zero, 1040621
                  srai         s9, a7, 14
                  slti         a1, gp, 1926
                  slt          t6, sp, s1
                  slti         s1, s3, -572
                  srl          a2, s6, a3
                  sra          s8, s5, t1
                  andi         a7, s8, -1962
                  add          s8, s8, a4
                  srli         a1, t4, 3
                  slt          zero, s5, zero
                  srai         s3, s7, 31
                  andi         s11, t2, 1188
                  sub          s3, a6, s11
                  slti         s11, t3, 493
                  srli         zero, ra, 20
                  sltu         t3, s2, t0
                  slt          t4, s5, t5
                  srli         t2, gp, 22
                  srai         gp, t2, 10
                  srl          a6, t3, zero
                  slti         t0, t1, 1560
                  sll          a7, s11, t0
                  srli         s2, a3, 18
                  xori         zero, s9, -1852
                  slti         a2, s2, -1030
                  ori          s1, s7, 2023
                  or           t1, t5, ra
                  sll          s8, a3, s9
                  xor          sp, t3, s11
                  or           s7, a7, s6
                  sll          s4, t1, gp
                  sltiu        s7, t3, -1921
                  slti         t3, a1, 1101
                  xor          a4, s11, gp
                  lui          t3, 434698
                  andi         s4, t0, 475
                  slli         gp, t4, 1
                  slti         s2, a7, -1555
                  nop
                  sll          s8, t6, s6
                  addi         s1, sp, 1429
                  srli         s8, t5, 8
                  srai         zero, a5, 30
                  andi         tp, a0, 563
                  srl          tp, s3, gp
                  andi         ra, s11, -513
                  xori         tp, s4, 1636
                  slti         s6, s1, 245
                  add          zero, a4, s2
                  sra          sp, s6, t6
                  nop
                  xori         a2, s4, -1204
                  ori          a2, t3, -329
                  addi         s5, t0, -212
                  sltu         s9, sp, a3
                  addi         a3, t4, -2039
                  and          s11, t0, s0
                  ori          zero, a2, -359
                  srl          s1, s6, a1
                  lui          t0, 805887
                  auipc        sp, 691684
                  sltu         a0, a1, a6
                  auipc        s5, 110868
                  auipc        t6, 506459
                  srai         s1, s10, 14
                  sltiu        a0, s10, 1390
                  slti         a5, a0, -1911
                  lui          t0, 14974
                  sltiu        sp, s9, 1664
                  xori         gp, a7, -1193
                  slti         s1, t1, -1541
                  or           s11, t5, t4
                  sltu         sp, t2, a7
                  srli         s2, s4, 22
                  slli         s7, s1, 26
                  lui          t4, 247190
                  slt          s1, a2, s10
                  xori         s11, s1, -1845
                  sltiu        a1, s10, 1844
                  lui          gp, 125029
                  srl          s3, t2, gp
                  or           s8, t6, a2
                  ori          zero, a6, -1940
                  sll          a5, ra, s8
                  sub          s6, t0, a1
                  sltu         s8, gp, a7
                  xor          a7, t0, tp
                  auipc        a7, 73917
                  slli         s4, s3, 24
                  and          s5, a3, s7
                  sltu         gp, t6, a4
                  sltu         a0, t5, t5
                  sltu         s9, s11, t1
                  slt          s11, a6, a6
                  lui          t1, 1009239
                  sub          s2, ra, t2
                  slti         s1, t2, -592
                  srli         a0, a0, 27
                  sra          gp, t3, s5
                  nop
                  slli         a5, a4, 30
                  sra          a0, tp, tp
                  slti         t0, s2, 1290
                  ori          t6, s6, 1438
                  addi         a7, t1, -1859
                  slti         a0, s9, 1287
                  sltu         a3, a2, s9
                  nop
                  xor          a6, ra, s9
                  srl          ra, s1, t2
                  slli         gp, gp, 15
                  slti         s9, a3, -99
                  srli         a6, s7, 25
                  sll          a3, s9, a4
                  srai         s8, s6, 30
                  nop
                  auipc        a5, 661328
                  ori          a3, s11, 580
                  slli         gp, t2, 9
                  sll          gp, t5, t1
                  sll          s5, t0, t5
                  auipc        a4, 72602
                  xor          s7, t4, t3
                  sra          s3, s7, t3
                  srai         t4, gp, 17
                  slli         t6, t4, 5
                  andi         t3, t1, 1188
                  sub          s5, zero, s1
                  add          a3, t0, gp
                  slt          t4, s2, a6
                  add          t4, t0, t0
                  sub          s3, t4, s3
                  sltiu        s9, gp, -968
                  lui          gp, 209734
                  slti         zero, a4, -202
                  srli         t1, zero, 18
                  add          a2, a2, t5
                  sub          ra, t0, a7
                  and          a0, t5, s9
                  and          a5, s2, t5
                  add          t6, t3, s11
                  sltu         ra, sp, s9
                  or           zero, tp, t3
                  srai         a3, s2, 19
                  sub          t2, s3, a1
                  slli         s6, a6, 27
                  sra          s7, a5, s0
                  sub          a7, s9, s3
                  nop
                  sltiu        s8, t0, -1947
                  ori          t0, t5, -415
                  xori         s6, sp, -949
                  srai         zero, gp, 29
                  sra          a2, s11, t6
                  slti         tp, a0, -943
                  xor          a4, s0, t3
                  ori          s2, t0, -473
                  sra          s2, ra, t2
                  nop
                  sltiu        a6, t6, -1280
                  auipc        a1, 949743
                  sltu         a6, ra, s0
                  sub          a5, a1, s2
                  sra          s6, a3, t5
                  auipc        a0, 326702
                  ori          s5, zero, -1815
                  slti         t3, s2, -1498
                  andi         tp, s4, -1183
                  xori         s1, a1, 205
                  srl          ra, a4, t1
                  auipc        t6, 934782
                  sltiu        a0, s11, -2045
                  slt          s8, s1, s1
                  add          tp, t1, a4
                  xor          t2, a2, s9
                  ori          s1, s9, -1487
                  xori         a3, a0, 388
                  add          t1, sp, a0
                  srai         tp, a3, 19
                  ori          t0, s8, 333
                  nop
                  andi         a0, sp, -275
                  srli         s3, sp, 21
                  or           gp, s7, a0
                  sltu         s8, t5, gp
                  slti         a3, t6, 441
                  or           t6, zero, t5
                  add          a5, s6, s8
                  slli         a1, a2, 18
                  sub          t0, a3, a0
                  sub          s8, a7, sp
                  lui          s8, 559208
                  nop
                  ori          t1, a6, 1407
                  srl          tp, s10, t4
                  sltu         s4, gp, a1
                  lui          a3, 242718
                  sll          tp, a7, tp
                  sra          zero, a6, a1
                  sltu         a7, a4, s8
                  or           t0, a0, zero
                  slti         s2, a3, -1432
                  nop
                  nop
                  slt          a7, s3, t1
                  or           t1, s11, s6
                  srai         a0, s6, 15
                  sub          a3, s10, t3
                  nop
                  and          s11, t4, t5
                  slt          tp, t3, a7
                  ori          gp, a5, -1823
                  andi         s7, a1, -724
                  ori          s11, t2, -1108
                  slli         gp, tp, 5
                  add          s1, a5, t1
                  sll          a4, s6, a4
                  andi         a2, a7, -588
                  sltiu        s3, s4, -936
                  slti         t1, s10, -1733
                  slli         t3, a7, 8
                  sltu         t0, s9, s10
                  sltiu        a4, s10, 273
                  slli         a4, a7, 11
                  sltiu        s8, a1, -1531
                  addi         s1, t6, -1032
                  andi         s11, s2, -412
                  add          a3, tp, a5
                  srli         a7, s1, 8
                  addi         s7, t6, -1473
                  slli         ra, ra, 19
                  add          s6, a3, ra
                  sltu         sp, s7, a1
                  ori          t0, s3, 990
                  auipc        s9, 471557
                  nop
                  sltiu        s11, t5, 1281
                  xori         t0, a1, 322
                  lui          zero, 747316
                  xor          s1, s8, a1
                  xori         t6, s8, -1841
                  srai         zero, s10, 12
                  lui          s11, 636278
                  sltiu        ra, s3, 1447
                  sll          tp, s8, zero
                  nop
                  srai         t1, t1, 3
                  lui          s4, 746745
                  andi         a7, zero, -1240
                  auipc        s1, 3801
                  srai         a5, t4, 5
                  slli         s8, s10, 5
                  addi         t0, a5, 975
                  ori          t6, s11, 1558
                  ori          s3, s7, 914
                  and          s2, tp, a4
                  add          s1, zero, sp
                  srli         a6, a1, 3
                  xori         zero, a2, 935
                  sltiu        ra, a7, 1369
                  sra          s9, s3, t0
                  srli         s3, s9, 26
                  srai         s3, a1, 0
                  slti         s1, a2, -1656
                  sltiu        s4, a5, 962
                  sltiu        s7, s1, 686
                  srli         t6, s11, 16
                  srli         a4, t4, 23
                  andi         a5, a1, 1998
                  sll          a6, s6, a6
                  srl          s8, sp, a2
                  sub          a2, a6, a5
                  slli         s3, t3, 0
                  and          s2, a0, s6
                  xori         s7, t2, -481
                  slli         a1, t3, 25
                  xor          s1, a3, a2
                  or           s2, a3, t0
                  andi         t2, s7, -1451
                  or           t6, a5, t3
                  nop
                  slli         a0, a1, 4
                  sltu         a4, a2, s5
                  or           ra, s4, s8
                  xori         s2, t2, 2033
                  sll          s9, t5, s7
                  ori          s1, a0, 327
                  lui          s11, 764440
                  sra          zero, t6, gp
                  nop
                  slt          s11, s10, a4
                  auipc        a6, 729001
                  slli         s2, t2, 8
                  andi         a7, a1, 1795
                  xor          zero, a1, sp
                  andi         s9, a5, -716
                  and          t6, a6, t6
                  or           t3, s0, s2
                  sll          a5, s0, s5
                  or           t3, s8, s10
                  slt          s2, s2, t3
                  auipc        s8, 110008
                  xori         a4, s6, 1066
                  ori          s4, gp, -1374
                  slt          gp, s4, t0
                  auipc        s8, 538455
                  or           a5, sp, s6
                  add          a2, t5, s6
                  sltiu        a3, t1, -213
                  auipc        t1, 276626
                  slt          s8, s10, s2
                  slt          s6, s6, s9
                  lui          t6, 218294
                  addi         a0, a6, 395
                  slli         s6, a6, 26
                  sltu         s1, zero, a4
                  ori          t4, a5, 427
                  and          a4, t5, a6
                  srli         a4, s6, 10
                  slti         t0, a2, 1632
                  xori         a6, t3, -991
                  srai         s3, s11, 2
                  sub          s11, a7, sp
                  lui          t1, 1020199
                  auipc        t6, 376646
                  sub          zero, s3, s4
                  ori          s11, a5, -181
                  add          a7, a1, ra
                  sll          t0, a6, a4
                  sltiu        ra, sp, -1712
                  sub          gp, s6, t2
                  xor          zero, s11, zero
                  add          s11, t5, t6
                  sltu         a4, gp, a5
                  add          zero, tp, t6
                  sra          a7, s6, s4
                  andi         s8, s3, -304
                  addi         a3, s1, -1775
                  xor          a6, s9, gp
                  lui          t2, 713354
                  and          t2, a4, s2
                  slli         ra, t6, 17
                  xor          t4, sp, a6
                  srli         sp, s2, 5
                  nop
                  add          a2, gp, s4
                  slti         ra, a2, 817
                  auipc        a4, 263400
                  lui          t6, 69757
                  sll          a2, a3, s3
                  slti         a3, s3, 1071
                  ori          sp, tp, -1851
                  xor          t3, gp, s6
                  auipc        s4, 914539
                  slli         s11, s9, 14
                  xori         a7, a4, -835
                  andi         ra, s11, 1481
                  nop
                  sub          t6, t2, s2
                  sltu         gp, t6, a6
                  lui          t4, 682441
                  add          a6, t4, t2
                  sub          t4, s3, s10
                  srli         t6, s8, 31
                  sra          s1, s2, a1
                  addi         t4, t2, -70
                  slli         t1, s9, 23
                  lui          a6, 895411
                  sra          a0, s8, zero
                  slt          s11, a1, t4
                  sra          s8, s4, a1
                  add          s1, s8, a3
                  slli         a3, s10, 25
                  sll          t4, zero, a5
                  srl          ra, s1, a5
                  xor          zero, a2, a7
                  sltu         s5, s0, t4
                  sll          t1, tp, t4
                  slli         a4, sp, 22
                  srli         sp, sp, 5
                  slti         t0, a2, -737
                  slt          t3, a7, s6
                  slt          s8, t3, t6
                  sub          sp, t0, a4
                  nop
                  slt          a1, a2, a0
                  srl          s2, a0, s8
                  add          s3, zero, s1
                  srli         gp, s6, 14
                  add          s8, s5, s9
                  sub          s9, t5, a3
                  andi         a7, s11, -222
                  xor          s2, a6, s10
                  slti         s4, t3, -693
                  srai         s11, s0, 4
                  xor          s3, s3, a2
                  sltu         a2, t4, a7
                  srl          t3, s2, a6
                  and          s6, a3, a6
                  sltiu        a6, s1, -986
                  auipc        t4, 198651
                  nop
                  sub          s5, a6, a3
                  sltu         a1, t6, s4
                  and          s1, a1, a0
                  nop
                  lui          s7, 107610
                  sltiu        s6, t4, -2022
                  ori          a4, a2, 890
                  sltiu        s11, a3, -1280
                  srl          t6, s10, zero
                  srai         s2, t1, 26
                  ori          s1, t2, -141
                  sub          s1, s3, s1
                  ori          t6, t5, 1565
                  ori          a6, a3, 898
                  sra          a0, s0, a0
                  add          t4, a3, s10
                  srl          s11, a0, a1
                  addi         s3, a2, 1122
                  add          t0, zero, t4
                  sltiu        s11, s11, -598
                  sub          s5, s9, t6
                  srl          zero, s8, t1
                  or           s9, a7, ra
                  slt          t4, t3, s5
                  lui          t0, 824557
                  and          s8, a4, s5
                  sltiu        t2, zero, -291
                  sltiu        t1, a3, -231
                  xori         t3, t0, 1251
                  andi         t0, s1, -894
                  sll          s11, ra, a7
                  nop
                  nop
                  xor          a6, a0, s1
                  sub          s11, a2, t0
                  auipc        s8, 45812
                  srli         a2, s7, 11
                  nop
                  srai         a5, a6, 17
                  add          s9, t1, t5
                  andi         s3, t4, -467
                  srli         t1, gp, 6
                  sra          a0, s0, ra
                  add          t0, t5, s5
                  andi         s4, s6, 589
                  slli         t1, t6, 19
                  lui          a0, 458047
                  or           s1, t2, a7
                  nop
                  sub          s9, t5, a2
                  addi         s1, a0, -1829
                  auipc        t2, 446008
                  xor          s11, s6, t3
                  sra          s11, s5, gp
                  slti         s4, t1, 1836
                  andi         tp, s5, 1210
                  srli         a5, t2, 28
                  srl          a1, t1, t1
                  slt          t0, a2, t0
                  srl          t6, s10, t1
                  sltu         t3, s8, s4
                  xori         t2, t3, -1841
                  srl          s11, s10, t2
                  sub          a1, t2, s10
                  sll          s4, s8, s0
                  sltu         t0, s1, s2
                  ori          gp, t2, 911
                  sltiu        s5, a2, -187
                  nop
                  add          a6, s4, t5
                  auipc        a4, 950101
                  sltiu        a0, t0, -382
                  lui          sp, 971975
                  xor          a5, a0, tp
                  sra          a6, sp, a6
                  xor          s9, a0, s7
                  slt          s11, sp, t5
                  slt          a0, s11, s3
                  xor          t3, gp, s6
                  add          s11, s7, s9
                  nop
                  auipc        s4, 332956
                  sll          a0, s8, s2
                  addi         t0, s8, -1721
                  sra          sp, gp, t4
                  auipc        sp, 17967
                  nop
                  nop
                  ori          t3, s7, -337
                  addi         s7, s8, 1785
                  or           zero, ra, t5
                  add          s1, s7, s3
                  sltu         a5, t2, a3
                  or           s9, s3, s4
                  nop
                  sub          a6, t3, t4
                  auipc        tp, 672627
                  slli         a3, s11, 25
                  nop
                  nop
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_18
                  li           t0, 0x80000000
                  li           s4, 0xffffffff
                  li           s1, 0x0
                  li           t2, 0xd01a6b09
                  li           tp, 0x0
                  li           s11, 0xffffffff
                  li           a0, 0x80000000
                  li           ra, 0x35e84e31
                  li           a7, 0xdeb9c26d
                  addi         t0, s4, -872
                  add          a0, tp, a0
                  auipc        s1, 694625
                  add          t0, t2, s1
                  add          t0, t2, a0
                  lui          s11, 679239
                  sub          s1, ra, a1
                  sub          t0, a1, ra
                  add          a7, t2, tp
                  lui          t2, 559374
                  sub          s1, t2, s1
                  nop
                  nop
                  lui          a1, 938377
                  nop
                  nop
                  lui          a7, 604488
                  addi         t2, s4, -418
                  sub          s1, t2, t2
                  nop
                  lui          tp, 508567
                  lui          a7, 372275
                  auipc        s11, 391138
                  lui          s11, 257329 #end riscv_int_numeric_corner_stream_18
                  lui          s4, 294955
                  sub          gp, s1, a2
                  andi         s11, s9, 1491
                  auipc        t6, 694508
                  sltiu        s6, tp, 79
                  ori          s3, s7, 1388
                  srai         s8, t4, 27
                  slt          s11, s8, a3
                  nop
                  sub          t4, s6, a0
                  sll          a0, s2, a5
                  xori         s6, a3, 1707
                  or           s2, a6, s9
                  sltu         gp, t5, a6
                  srli         s7, t6, 27
                  sub          a4, t4, s2
                  addi         s3, s11, -447
                  sub          s7, a0, s7
                  srai         s11, t0, 0
                  xor          s7, s7, s1
                  xori         t0, gp, 1877
                  sll          t0, s7, s10
                  nop
                  ori          a4, zero, -616
                  nop
                  slli         a7, s11, 14
                  sltiu        a0, a0, -853
                  andi         sp, s9, 170
                  srl          t3, s11, t4
                  nop
                  srl          a1, sp, s1
                  addi         s7, a4, -442
                  lui          s9, 1035767
                  srli         s2, ra, 6
                  srai         gp, s1, 15
                  slli         t6, s8, 17
                  lui          t4, 630241
                  xori         s2, t6, -985
                  slt          a7, a6, s11
                  li           a2, 0x0 #start riscv_int_numeric_corner_stream_10
                  li           tp, 0x4f1e884b
                  li           a1, 0xffffffff
                  li           a4, 0x29f064d2
                  li           t1, 0x0
                  li           s6, 0x5f13d824
                  li           s8, 0x0
                  li           a3, 0x0
                  li           a7, 0xffffffff
                  li           t4, 0x0
                  lui          a7, 500038
                  sub          t4, t4, a4
                  addi         a1, s6, -593
                  addi         t1, a2, -1552
                  sub          a1, a3, a1
                  add          a2, s6, tp
                  add          a1, a3, a2
                  add          t4, a4, a4
                  lui          t1, 439446
                  addi         a2, a7, 776
                  add          a1, a3, t1
                  lui          a2, 968222
                  nop
                  lui          t4, 246376
                  sub          t4, s8, s8
                  auipc        a7, 151160
                  auipc        a7, 248460
                  addi         a7, t1, 1831
                  nop
                  nop
                  nop
                  lui          t1, 487111
                  lui          a1, 522806 #end riscv_int_numeric_corner_stream_10
                  slt          a5, ra, s3
                  sub          tp, a7, a6
                  sub          s1, a3, a2
                  sll          ra, s9, tp
                  add          t0, gp, s5
                  srl          s4, t4, t0
                  sltu         sp, t1, s3
                  nop
                  srl          sp, s7, s8
                  srli         a7, t3, 9
                  sra          s7, s0, t3
                  slti         a5, s6, -1791
                  srli         zero, a6, 5
                  addi         a4, gp, 1699
                  sub          ra, ra, a1
                  andi         t3, a0, 531
                  srli         t1, ra, 29
                  and          s8, s10, zero
                  sltu         ra, sp, ra
                  srl          t1, a6, s4
                  slti         t6, s4, -466
                  srli         a4, s8, 17
                  nop
                  sltu         a1, ra, a2
                  slt          s6, a4, t4
                  srli         a5, gp, 4
                  ori          s7, t1, 664
                  ori          a4, a6, 1536
                  and          s6, a5, s9
                  slti         a6, s4, 840
                  srl          zero, a0, t5
                  ori          ra, t6, -494
                  sub          t6, s4, s6
                  add          a3, s1, s8
                  nop
                  sub          t2, t4, t2
                  lui          s3, 874766
                  srai         zero, s11, 17
                  or           gp, zero, ra
                  sub          s1, s4, t4
                  auipc        a5, 208569
                  addi         s9, gp, 1394
                  and          s7, a5, a1
                  ori          s7, t5, 86
                  slt          ra, a0, t1
                  nop
                  srl          t4, t0, t0
                  xor          a4, s4, s4
                  srl          sp, s6, s9
                  and          a4, a4, s9
                  and          zero, a1, s4
                  auipc        t0, 129560
                  slti         s7, a5, -256
                  srl          a1, a1, a2
                  sra          zero, s1, s0
                  addi         a7, s8, -66
                  add          a5, gp, s11
                  sub          gp, sp, t2
                  sub          ra, s7, t0
                  add          a3, s0, t0
                  srai         a3, s10, 15
                  sra          a6, tp, s3
                  srai         ra, a1, 2
                  add          a6, a4, t0
                  srai         t4, s11, 6
                  srl          s9, s4, a3
                  slti         a3, a2, -1584
                  nop
                  andi         a3, s2, 1469
                  and          sp, t6, ra
                  srli         zero, t6, 16
                  srli         tp, a1, 31
                  or           t3, a1, s2
                  sltu         t3, a5, a0
                  auipc        gp, 969100
                  lui          t2, 85259
                  andi         s6, t2, -1188
                  ori          a3, t6, 31
                  and          s2, s2, s8
                  and          s8, a0, ra
                  slt          gp, s9, s8
                  srli         s4, a3, 1
                  slti         a3, t1, -1796
                  xori         t0, s3, 529
                  slli         a1, t4, 24
                  srl          sp, t4, s10
                  sub          sp, s5, t2
                  srli         zero, s8, 28
                  srli         s8, sp, 25
                  add          t4, gp, t1
                  sltiu        t0, s6, 598
                  auipc        t0, 62573
                  srli         t4, s11, 15
                  xori         tp, s6, 1968
                  lui          t0, 199772
                  slli         s3, t0, 0
                  add          s4, t0, gp
                  srli         sp, tp, 19
                  srli         t6, s8, 3
                  ori          sp, a0, 315
                  srai         s3, a0, 11
                  nop
                  sltiu        s2, a4, 1322
                  slti         s6, a4, -2008
                  xori         a6, a7, 1419
                  slli         a2, a4, 20
                  ori          a4, s3, -1686
                  ori          t6, s5, -1939
                  sll          t1, ra, t4
                  sltiu        a2, a4, 931
                  ori          s8, gp, 1077
                  slt          a0, t5, t4
                  nop
                  andi         s1, gp, 1173
                  srli         s11, a7, 9
                  and          a2, sp, tp
                  and          t0, t5, s0
                  sub          s9, s7, a1
                  sltiu        a7, s6, -988
                  sra          a0, sp, a7
                  sra          s9, s11, s8
                  andi         s1, s7, -492
                  ori          tp, s4, -1652
                  nop
                  addi         zero, s0, 1065
                  auipc        a6, 1042913
                  sltu         a1, t4, s6
                  add          a3, a2, t1
                  sltiu        t3, s2, 1391
                  sltu         ra, s3, a5
                  sltiu        a2, t4, -1521
                  slt          a5, a0, a2
                  andi         ra, s11, -1628
                  sltu         a4, s1, s11
                  or           t4, t2, t6
                  srl          s1, t0, t1
                  xor          a7, s9, a7
                  slti         t3, t1, -538
                  srai         a7, gp, 17
                  srai         a3, t1, 9
                  xori         t6, sp, 1591
                  sub          t0, a7, t6
                  srai         s7, s10, 20
                  nop
                  lui          a6, 760284
                  or           t0, a2, a4
                  slti         gp, a6, -551
                  lui          t1, 838370
                  sub          a3, t6, a3
                  slli         a3, t1, 1
                  and          a0, a3, s1
                  addi         s8, s11, -517
                  srai         s4, t4, 5
                  and          a3, s0, s3
                  addi         zero, zero, 1593
                  ori          a1, s9, 1412
                  slti         s7, zero, 759
                  add          a0, s6, a6
                  ori          t1, s8, 1969
                  srai         s4, a5, 30
                  srl          a7, a7, s8
                  sll          a5, a7, s5
                  lui          a2, 24184
                  sll          a0, t0, s2
                  slt          s7, t3, a4
                  xor          gp, s7, zero
                  sll          s5, s6, t6
                  lui          a1, 298372
                  xori         s7, t4, 1370
                  ori          t0, a6, -1586
                  sltu         s4, s2, gp
                  auipc        a6, 186353
                  sltiu        a5, a7, 348
                  srl          zero, s6, t4
                  andi         s7, s7, 476
                  add          zero, a4, s3
                  andi         s11, a1, 1895
                  sra          a7, t2, s0
                  slli         a7, gp, 27
                  slli         s5, s7, 30
                  addi         s9, tp, -412
                  srai         s5, s1, 3
                  auipc        zero, 512974
                  and          gp, t1, s5
                  srl          gp, s3, a3
                  ori          s3, s6, -103
                  slti         t0, s1, 359
                  xor          zero, s9, s2
                  srai         a6, t5, 31
                  sltiu        t4, tp, -1113
                  addi         a5, t4, 1232
                  srai         t6, tp, 20
                  xor          s9, tp, s7
                  srl          a7, a1, s10
                  andi         s3, a4, -1146
                  slti         s8, t2, 1464
                  and          s11, tp, s4
                  nop
                  slt          s4, a7, t2
                  slli         s2, s9, 19
                  sub          t2, t6, s3
                  sub          gp, a7, s7
                  srl          s6, a3, t3
                  addi         s5, t4, 1440
                  srai         t4, t1, 1
                  xori         s8, s0, -1794
                  auipc        s2, 675289
                  srai         gp, a0, 0
                  and          a2, s9, s0
                  slt          s2, s2, t6
                  ori          tp, s5, 560
                  sltu         s3, t4, t6
                  nop
                  sll          gp, s0, s5
                  srli         a6, t1, 2
                  addi         a3, gp, -723
                  sub          t4, t0, t1
                  sub          t2, s5, gp
                  add          t0, s7, s6
                  slli         s4, t1, 17
                  nop
                  srai         s1, s8, 15
                  srli         sp, a1, 1
                  srai         s5, sp, 10
                  slt          ra, a0, t4
                  slli         zero, ra, 28
                  xor          gp, s0, t6
                  add          t0, a1, t5
                  xori         t0, s4, 943
                  sra          s4, s10, t3
                  add          s6, s1, tp
                  slti         t2, zero, -1102
                  addi         sp, s9, 926
                  andi         t0, t3, -1325
                  add          t6, ra, s6
                  nop
                  and          s11, s10, zero
                  add          a2, t0, s8
                  ori          s8, s2, -928
                  and          s6, a0, gp
                  srli         a3, a6, 7
                  srli         zero, s11, 23
                  add          t3, a5, s0
                  xori         t4, tp, 146
                  sltiu        t0, s8, -1606
                  slti         s4, gp, -109
                  auipc        s8, 848997
                  addi         s4, a1, -516
                  srl          a6, t2, a7
                  srai         tp, s2, 26
                  srl          s8, tp, t3
                  add          t4, t0, t6
                  slt          a6, s1, tp
                  sub          a6, ra, a1
                  xor          s7, sp, s6
                  xor          s6, s9, s5
                  ori          s1, s5, 1104
                  sltiu        ra, a6, 276
                  ori          s3, s8, -1608
                  sltiu        s4, s10, 1914
                  sub          a0, t5, s0
                  slli         t1, sp, 14
                  srli         t4, t2, 9
                  auipc        sp, 893198
                  sub          zero, a5, t2
                  sub          s11, a4, tp
                  nop
                  nop
                  add          zero, sp, a3
                  ori          s9, t4, -342
                  sltu         a1, ra, a6
                  srl          t3, a4, gp
                  sltiu        zero, s8, 786
                  sub          s9, a6, s3
                  srai         t6, s1, 29
                  sltu         s3, a1, s0
                  srli         zero, ra, 26
                  ori          s4, t5, -566
                  xori         a0, a6, 822
                  add          a5, a2, s6
                  sll          t2, ra, a1
                  slt          s7, tp, a3
                  slli         s8, sp, 24
                  sll          gp, t6, a4
                  sra          a1, s7, t5
                  andi         ra, t2, -560
                  slti         t2, a2, -695
                  li           sp, 0x64aaf0a9 #start riscv_int_numeric_corner_stream_13
                  li           a1, 0xffffffff
                  li           a7, 0x80000000
                  li           s5, 0x3fb90e73
                  li           s8, 0x80000000
                  li           t0, 0x0
                  li           a2, 0x7b6c31e
                  li           t6, 0x80000000
                  li           a4, 0x25db1a29
                  li           tp, 0x0
                  sub          s8, sp, a7
                  auipc        s5, 655879
                  nop
                  lui          t6, 384236
                  nop
                  add          a2, tp, a2
                  auipc        a1, 134139
                  add          s5, a1, t6
                  auipc        a4, 886700
                  addi         tp, a4, 1506
                  nop
                  sub          s8, a2, a4
                  auipc        tp, 839705
                  sub          s8, s8, a4
                  lui          s5, 449186
                  auipc        s5, 15892
                  add          s5, t6, a4
                  addi         a7, a7, 756
                  add          tp, a1, t6
                  addi         a1, s8, 769
                  auipc        t0, 528919
                  add          tp, t0, s5
                  addi         a2, s8, -135 #end riscv_int_numeric_corner_stream_13
                  nop
                  and          ra, t4, t4
                  sll          s4, s6, s4
                  srl          s7, s4, zero
                  andi         a7, t0, -702
                  auipc        s7, 128880
                  and          s2, a5, a6
                  add          t4, tp, t2
                  srl          a6, tp, t2
                  xori         a4, s9, -101
                  lui          s6, 879326
                  slti         gp, s6, 64
                  sra          t1, gp, t5
                  sll          zero, a2, gp
                  xor          t0, gp, a4
                  sra          gp, s5, t3
                  andi         s3, s4, 1982
                  xor          a5, a4, gp
                  andi         gp, a7, 1772
                  add          s5, a0, s11
                  srai         gp, s8, 24
                  and          t0, s8, s8
                  sltiu        t3, t2, -1038
                  xor          s2, t6, ra
                  slli         a0, s5, 2
                  ori          a0, s9, -220
                  ori          sp, s11, -1389
                  ori          a4, a4, -1410
                  lui          t6, 95612
                  lui          gp, 970158
                  lui          s2, 558080
                  lui          t6, 882223
                  auipc        s5, 599456
                  sltu         t3, s4, a1
                  add          gp, ra, s8
                  sltu         a6, a7, gp
                  sra          t1, t5, s7
                  slti         t0, t1, 1565
                  sra          gp, s3, s11
                  slti         s4, s1, 1116
                  or           ra, zero, t4
                  and          t4, gp, s6
                  sll          ra, t5, s3
                  sltu         t6, s3, a5
                  auipc        a3, 139221
                  nop
                  add          s7, t0, t6
                  sra          a7, s3, a6
                  xori         tp, a2, 250
                  and          s9, tp, a3
                  xori         s5, zero, -1974
                  xor          zero, s10, ra
                  sll          a5, t0, t2
                  sltu         t6, t0, t3
                  sltiu        ra, t3, 1269
                  sub          a0, s1, a7
                  sub          t6, t6, s1
                  sltu         s3, a4, s8
                  and          sp, t1, a6
                  slli         ra, s7, 22
                  slt          s1, t2, s11
                  slt          t6, s1, t4
                  sll          t6, s7, t0
                  srl          t2, a2, sp
                  xor          t6, a6, t1
                  ori          a4, a1, -720
                  sltu         a5, s1, t2
                  sltu         t3, ra, s9
                  or           a1, a2, ra
                  xor          t6, t6, t0
                  addi         sp, s6, -283
                  slti         t1, sp, -1658
                  sltu         s7, a6, s6
                  sltu         s3, s7, s9
                  auipc        s11, 509591
                  andi         a1, zero, -781
                  lui          a2, 419585
                  xor          sp, a1, a7
                  andi         a6, t5, 1520
                  auipc        t3, 359782
                  sltiu        a7, s1, -251
                  srli         s5, a4, 12
                  sltiu        a1, s2, -1599
                  add          a2, t1, sp
                  lui          a7, 442754
                  and          a1, s11, s1
                  srai         s11, s10, 18
                  srl          zero, s2, a3
                  sub          sp, s1, a3
                  slti         gp, s1, 1220
                  ori          t4, s10, -1110
                  slli         t4, s8, 24
                  slti         gp, t3, -1967
                  sltiu        t0, s8, -1761
                  xori         a1, t5, -672
                  andi         a4, s6, -1531
                  sltiu        t6, t0, 1589
                  andi         tp, s10, -365
                  slt          a1, a6, a4
                  ori          s2, s4, -1135
                  slt          ra, a0, a1
                  xor          a1, t4, tp
                  sltu         t2, gp, s6
                  auipc        zero, 812108
                  add          t4, s9, t2
                  nop
                  sll          a1, s11, s8
                  lui          t1, 439132
                  add          t2, a2, a3
                  and          t0, sp, zero
                  andi         sp, s10, -1204
                  srai         a4, tp, 31
                  auipc        a6, 987011
                  xor          t4, s7, t4
                  srl          t0, a4, tp
                  sltiu        tp, s0, -1566
                  and          s9, a3, s7
                  sll          s1, tp, zero
                  srli         s1, s7, 2
                  lui          s5, 204092
                  auipc        a1, 307772
                  xori         t2, ra, 879
                  sra          s6, tp, a6
                  lui          t1, 833032
                  srli         a1, a3, 3
                  slt          a3, t3, t3
                  andi         t6, s5, 982
                  srl          s11, t5, t3
                  auipc        a6, 617747
                  slli         gp, s11, 27
                  andi         a0, a5, 1061
                  lui          s1, 289032
                  slti         a4, a3, 870
                  add          t6, t6, a3
                  andi         s6, a6, -2042
                  srai         s3, gp, 18
                  sltiu        s8, s2, -1180
                  sltu         s4, ra, t5
                  sltiu        sp, s4, 850
                  ori          s3, t3, 1114
                  sll          zero, s5, s8
                  lui          t6, 387409
                  slti         t2, a6, -863
                  lui          s1, 200333
                  slti         t2, a0, -2044
                  xori         s11, s10, -1384
                  sll          zero, t4, a6
                  and          sp, sp, s1
                  slli         s7, a7, 2
                  and          s1, s9, t3
                  or           t0, s9, t1
                  slti         sp, s3, -530
                  ori          a5, s11, 579
                  nop
                  auipc        gp, 972389
                  addi         t6, a0, -1005
                  sub          s1, ra, a5
                  slt          a1, s4, a6
                  addi         a6, a7, 1486
                  or           s6, s6, s4
                  sll          a1, s1, gp
                  lui          a5, 1022766
                  sltiu        ra, s1, -982
                  sll          s9, t0, t4
                  slti         t6, a1, -750
                  slti         s7, ra, 1691
                  sltiu        s7, a2, -844
                  or           zero, t2, a3
                  xori         t2, t0, 1296
                  auipc        s11, 881747
                  sub          s1, tp, s0
                  slti         zero, a6, 1654
                  addi         t2, a7, -1204
                  lui          s11, 487636
                  lui          t1, 749031
                  sltiu        a4, t1, 640
                  srli         zero, t1, 12
                  sll          s9, a7, tp
                  andi         t6, tp, -2031
                  sltu         s5, a2, t6
                  slti         a4, sp, -1028
                  and          a3, s10, sp
                  slti         s5, a3, -445
                  nop
                  andi         s11, a3, -597
                  sub          t6, s2, t0
                  xori         t1, s3, -436
                  sll          t4, t2, tp
                  srli         tp, t1, 11
                  sll          s5, s11, gp
                  slli         a5, a5, 2
                  srai         s2, a7, 17
                  xor          a4, ra, a3
                  nop
                  sll          ra, s8, s11
                  sltu         t3, s10, s7
                  add          s9, t6, a6
                  srl          a6, s1, tp
                  sub          sp, t6, sp
                  and          a1, ra, s5
                  nop
                  sltu         s5, s4, gp
                  sltu         s5, a0, t2
                  srai         a5, sp, 29
                  and          gp, t6, s8
                  or           t6, a3, a1
                  xor          t2, s0, a5
                  srl          a0, s5, t6
                  sltiu        a2, a3, 183
                  add          tp, s8, s10
                  slti         a4, s0, 1786
                  srli         s2, s10, 30
                  sll          s4, s10, s1
                  andi         t2, a1, 1129
                  and          t0, a7, a4
                  ori          s1, t4, -15
                  or           t2, t3, a7
                  or           s9, s11, t4
                  xori         s5, s3, -1817
                  nop
                  sub          a6, tp, a6
                  srli         s11, ra, 10
                  ori          a0, s0, -633
                  slti         s4, s6, -979
                  srli         a6, s3, 12
                  add          t4, s11, s8
                  srli         s5, a6, 16
                  addi         s11, tp, 923
                  xori         a1, s1, 1209
                  sll          s7, a2, a0
                  add          a3, s3, s8
                  and          s6, s5, a2
                  lui          s8, 620476
                  xor          a5, gp, a5
                  xor          s11, s10, t0
                  xor          s9, s4, t1
                  sltiu        a0, gp, -1169
                  slti         gp, ra, -1402
                  srai         gp, tp, 4
                  and          s7, s1, s1
                  addi         t3, s9, 686
                  lui          s8, 267157
                  srli         t6, a2, 4
                  xori         sp, tp, 1201
                  slli         a4, ra, 4
                  slt          s11, s5, s10
                  addi         t6, tp, 1607
                  lui          tp, 707828
                  and          gp, s11, a4
                  slti         a2, s4, 1802
                  xori         s5, t4, 1469
                  sltu         s7, s5, s1
                  andi         a3, s8, 573
                  sra          s2, s2, s1
                  slt          t6, s4, tp
                  slli         s1, s2, 25
                  sll          a2, gp, zero
                  srl          a0, t5, s4
                  sub          tp, s10, tp
                  slli         a2, t6, 14
                  srai         a4, t2, 31
                  ori          a6, s4, -553
                  sltu         t4, s6, s5
                  xor          s2, s4, s11
                  ori          a6, a5, -1327
                  nop
                  sll          ra, s0, s10
                  xori         s1, tp, -1429
                  sra          t0, tp, s4
                  slli         s11, a4, 6
                  sll          tp, s4, s6
                  nop
                  xor          a0, s11, s8
                  sub          a0, tp, gp
                  xori         s4, s5, -1189
                  auipc        s7, 1005368
                  li           a3, 0x4a2f035 #start riscv_int_numeric_corner_stream_5
                  li           s7, 0x80000000
                  li           s6, 0x80000000
                  li           s5, 0x80000000
                  li           a2, 0x24a50cb
                  li           a7, 0x80000000
                  li           t1, 0x80000000
                  li           s3, 0x80000000
                  li           a1, 0xb2a4a992
                  li           s9, 0x0
                  auipc        a3, 713147
                  sub          a7, s3, s6
                  lui          a3, 318164
                  addi         a3, a1, -1803
                  auipc        t1, 776130
                  auipc        s9, 349116
                  add          s9, s6, a3
                  nop
                  sub          t1, s9, a1
                  add          s9, s6, s5
                  lui          a1, 823726
                  addi         a3, a1, -1862
                  add          t1, s7, s5
                  lui          a2, 639088
                  auipc        t1, 261598
                  auipc        s9, 495320
                  nop
                  addi         a2, s7, -1786
                  nop
                  nop
                  addi         t1, t1, 1150
                  lui          s3, 973904
                  add          a7, a7, s5
                  sub          s3, a2, a3 #end riscv_int_numeric_corner_stream_5
                  lui          t0, 54461
                  nop
                  slli         a5, s7, 4
                  srai         a4, a7, 7
                  sub          s8, s6, tp
                  lui          a1, 635858
                  add          zero, a6, a6
                  srl          tp, gp, s4
                  srai         s6, s8, 30
                  xor          t1, sp, s6
                  or           zero, t1, s4
                  slti         a1, s0, -457
                  nop
                  srli         t0, t5, 20
                  addi         s6, s11, 619
                  andi         s11, s9, -257
                  slli         a2, ra, 14
                  add          s11, a2, s8
                  auipc        t6, 485545
                  addi         a3, s0, -62
                  xor          s8, a5, s8
                  lui          a2, 768383
                  xori         gp, t0, 1378
                  andi         s2, tp, 1702
                  addi         s7, t0, 1405
                  ori          s6, s7, -1029
                  and          s5, t4, t0
                  xor          gp, a2, sp
                  xor          a3, sp, zero
                  addi         s6, s10, -1480
                  sltu         s2, s5, s7
                  lui          a0, 921285
                  srli         sp, s3, 26
                  sra          s6, s7, s9
                  and          t4, s0, s5
                  sra          t0, s8, a1
                  sub          s11, s2, s8
                  slti         s11, s6, -397
                  and          t6, s8, ra
                  srli         s5, s4, 9
                  or           a5, s0, tp
                  xor          a3, s5, s9
                  sra          t4, t3, a4
                  sll          sp, s3, t6
                  xor          tp, s8, t4
                  xor          a1, ra, a3
                  slt          a4, s5, t1
                  srli         a3, s9, 20
                  addi         s9, s5, -1935
                  slli         s2, s3, 26
                  sltiu        s2, a4, 414
                  add          a4, s11, s0
                  sltu         tp, a5, a2
                  ori          t4, s5, -1811
                  nop
                  srai         t2, a6, 27
                  xori         gp, t6, 1443
                  nop
                  lui          a3, 1005166
                  srli         zero, s5, 19
                  addi         a5, a3, -1742
                  xori         s11, gp, 958
                  slli         a0, t4, 22
                  lui          a4, 838182
                  sll          t6, a7, s7
                  slti         s9, a1, -834
                  addi         a4, a0, -756
                  andi         a5, s10, 819
                  sra          s9, t0, a6
                  or           a2, s10, a6
                  andi         a7, zero, -1721
                  slt          a7, s5, t1
                  or           t4, a0, a0
                  srl          a2, t3, t0
                  srl          a6, s6, tp
                  srai         s6, a5, 24
                  sll          s2, a6, a2
                  slti         tp, s2, -1835
                  slli         s8, a0, 17
                  andi         a0, t1, -400
                  and          s7, s3, a0
                  sll          a3, s7, s6
                  xori         a3, a3, 785
                  sra          s2, gp, s6
                  srai         t4, s6, 22
                  sltu         s7, s11, s11
                  sub          sp, t4, s5
                  sra          s7, s5, a2
                  sra          gp, zero, a6
                  sltiu        a6, s7, -1056
                  slli         a1, gp, 31
                  sub          t1, s10, s9
                  sll          a6, t4, s8
                  sra          t0, tp, a2
                  srli         t0, s10, 27
                  sltu         s9, a6, s8
                  slti         s9, zero, 1507
                  sub          s2, t0, a1
                  sra          t0, a2, t6
                  srai         a2, t0, 25
                  srl          s1, s6, t2
                  sll          a0, t2, s4
                  lui          s5, 823651
                  nop
                  srli         a6, s4, 23
                  nop
                  xor          t4, s8, a0
                  auipc        a3, 693529
                  add          tp, s10, s0
                  srli         a6, a5, 27
                  sltiu        s3, sp, 1078
                  sll          s2, s5, a2
                  slt          s2, gp, a1
                  slli         s5, a0, 9
                  sltiu        zero, s10, -1211
                  nop
                  slli         tp, s2, 18
                  or           s7, sp, sp
                  slti         a2, ra, 447
                  sub          s11, a4, s11
                  sub          ra, a7, a3
                  nop
                  add          s3, s1, a4
                  srli         a7, a4, 14
                  slti         gp, s10, 1591
                  addi         a7, a0, -704
                  srl          a1, a1, ra
                  or           t4, s8, s7
                  srli         s9, s7, 15
                  sub          a1, t5, s4
                  xor          s2, a5, s9
                  slti         sp, ra, 1690
                  slt          t2, s1, a5
                  or           a6, ra, a7
                  sra          s1, a4, t1
                  slti         a6, s5, 1129
                  srai         a5, zero, 3
                  srai         a3, t4, 15
                  and          t0, a3, s11
                  sra          zero, a7, t5
                  srl          a3, a6, s6
                  lui          s1, 123984
                  srli         s4, a4, 30
                  sub          s2, a7, gp
                  sub          tp, ra, a3
                  andi         a0, a7, 726
                  sll          a0, s10, s10
                  add          zero, a2, a5
                  slti         s4, s9, -927
                  addi         ra, t3, 1112
                  auipc        a7, 419090
                  sltiu        s2, s7, 1863
                  andi         a5, s9, 1209
                  xori         s7, t3, 937
                  slti         sp, t5, 378
                  slli         t0, s1, 16
                  slli         s6, s8, 18
                  sltu         s6, t6, s6
                  slli         a0, a0, 26
                  srl          a0, t4, t3
                  xori         gp, a3, 58
                  and          a5, a5, a3
                  auipc        a5, 178039
                  srl          a7, a7, s8
                  and          a2, s8, zero
                  sub          a1, t0, s7
                  or           t6, a5, s8
                  sra          s3, a4, s4
                  srli         s2, gp, 29
                  ori          ra, sp, 1184
                  sltu         a4, t3, s9
                  sub          t1, s2, a6
                  auipc        a2, 615796
                  lui          a4, 206698
                  srai         s5, s2, 3
                  and          s3, t3, s4
                  xori         a2, s8, -1295
                  ori          s1, a2, -695
                  addi         s9, s10, -238
                  srai         s11, a3, 26
                  ori          s2, s10, 838
                  srai         ra, s4, 1
                  xori         t4, a1, 167
                  xor          a6, a2, t6
                  addi         a4, a6, 818
                  andi         s4, t3, 880
                  srai         s3, s8, 9
                  andi         t4, t1, -1485
                  slt          a0, a6, t6
                  xori         s7, gp, -1103
                  slti         a1, a2, 2047
                  sltiu        tp, s9, -1179
                  sub          a2, s9, s1
                  add          a4, s1, s9
                  sll          tp, a2, s11
                  slti         t1, s10, -1222
                  slli         t1, t5, 29
                  lui          s5, 1016384
                  sltiu        a4, ra, -1922
                  xor          s8, s11, s7
                  sra          gp, sp, a6
                  sra          sp, a1, s0
                  addi         s11, t4, -701
                  sltu         t1, s2, t0
                  srl          a7, a7, s11
                  sra          sp, t3, a6
                  slt          s4, s1, t2
                  auipc        s9, 97598
                  addi         s11, s5, -995
                  slli         t2, a4, 31
                  sltu         a7, a2, s5
                  slt          t4, s1, tp
                  srai         s9, gp, 10
                  xori         tp, s9, -889
                  or           a0, s2, gp
                  andi         a3, a2, -675
                  add          t4, a6, sp
                  sll          gp, s3, t5
                  srai         s11, a2, 24
                  sltu         t2, gp, a3
                  ori          s11, s2, 388
                  srli         s9, a4, 14
                  lui          t3, 41330
                  srl          s2, a1, t4
                  slli         s11, tp, 30
                  slli         a5, a2, 29
                  slli         s5, s8, 10
                  xori         s2, t3, 736
                  sub          a6, a4, s10
                  xor          tp, a5, a2
                  lui          s9, 268611
                  and          a4, a0, gp
                  sltu         s4, t5, s6
                  auipc        sp, 797678
                  srai         a1, t4, 15
                  srai         a6, s1, 6
                  sub          s9, s6, s11
                  sra          t1, t1, a0
                  xor          a6, t3, s10
                  lui          t1, 321648
                  slt          s1, tp, s6
                  sltu         s1, s8, a7
                  andi         s9, a2, -1785
                  auipc        a7, 353649
                  srli         s4, a0, 31
                  ori          t3, tp, -1844
                  auipc        t4, 264241
                  sltu         t4, s1, s11
                  and          s4, s11, t6
                  sub          zero, t6, a2
                  ori          zero, a5, -2021
                  slti         s4, a3, -520
                  sltiu        s11, t3, -1106
                  ori          a3, t1, 797
                  nop
                  or           a5, a2, tp
                  slti         a5, t0, 886
                  slli         s5, a1, 0
                  lui          ra, 815341
                  nop
                  ori          a0, s8, -1281
                  or           a5, s6, s4
                  sltiu        a7, t6, -870
                  slt          a0, t1, t6
                  sub          s8, a1, t3
                  lui          s4, 1031722
                  slti         zero, t4, 127
                  nop
                  sll          t4, ra, a1
                  slti         s9, t4, -1300
                  sub          ra, s1, s4
                  or           a2, s11, a1
                  slti         a0, s4, 1706
                  sra          s6, s10, a1
                  slti         ra, s5, 1315
                  sltu         a2, s9, zero
                  ori          s7, a7, 660
                  sll          s8, a5, t4
                  addi         a1, a0, -1459
                  auipc        t0, 480375
                  slli         t1, zero, 21
                  srli         t2, t4, 9
                  xori         s9, s4, 818
                  sub          s6, t0, s0
                  sltiu        t2, t2, -1203
                  slli         s5, s4, 0
                  sltiu        a3, a7, -1321
                  nop
                  addi         a2, s1, 1497
                  add          s1, t4, t1
                  srl          a3, a5, t2
                  sub          a7, t6, t0
                  slli         t2, s0, 17
                  sltu         a6, a3, a7
                  or           a4, a2, s7
                  xori         t2, a0, 231
                  slti         s8, s11, -734
                  and          a5, t0, ra
                  add          a6, t3, t6
                  andi         s4, a6, 1901
                  xor          a2, a7, t6
                  xor          gp, gp, a5
                  srli         s4, t6, 13
                  lui          tp, 912522
                  srai         s11, t6, 1
                  xori         a6, s3, 438
                  srli         t6, sp, 8
                  lui          t2, 437818
                  sub          s4, t6, s1
                  sra          s11, sp, s1
                  sub          a5, s3, s0
                  ori          gp, s2, 1405
                  andi         a3, s2, -1967
                  auipc        tp, 358123
                  srai         s11, s2, 21
                  srl          s5, a6, s10
                  sltiu        s2, s3, -34
                  sll          a2, a7, s1
                  slli         a6, a6, 24
                  addi         sp, a3, 684
                  sll          sp, a1, t5
                  sll          s3, a0, t1
                  or           s4, s10, s5
                  slt          a4, t5, s7
                  slti         a2, s8, 796
                  andi         s4, s9, 1819
                  srli         tp, t2, 24
                  slli         a6, t6, 23
                  xor          s6, s6, s0
                  addi         a4, s11, 1225
                  srl          s11, t1, s10
                  sra          sp, s11, gp
                  auipc        a7, 276675
                  lui          a4, 377318
                  srai         t6, t1, 21
                  sltu         t0, t0, s9
                  srli         t0, a2, 26
                  xor          s9, t1, s2
                  slti         a6, s2, 309
                  auipc        t0, 23463
                  add          tp, s4, zero
                  slti         t6, gp, 1902
                  sll          a0, s8, s2
                  and          t3, a1, sp
                  srl          s4, a2, s8
                  xori         t6, a1, 745
                  srli         s9, s5, 23
                  or           a1, s10, t0
                  slli         s8, zero, 3
                  ori          s11, t4, 120
                  xor          s2, gp, gp
                  srai         a4, s1, 11
                  addi         a3, a3, 240
                  lui          a0, 357343
                  srl          t2, tp, gp
                  add          s6, s0, a1
                  xori         t1, t6, 1046
                  addi         tp, a0, 804
                  add          t1, zero, a3
                  sll          s1, s7, a6
                  sra          t4, s1, s3
                  slli         a4, a6, 18
                  slli         a6, a5, 4
                  ori          a1, t1, -578
                  slti         s5, a0, 1126
                  and          ra, s10, s9
                  sra          s5, a7, t4
                  nop
                  srl          tp, s0, a0
                  sub          s11, a4, s7
                  sub          tp, a6, s2
                  lui          t3, 25872
                  srai         s4, a1, 23
                  or           s4, s3, s0
                  xor          a4, t4, a2
                  sub          s7, s7, a1
                  sub          sp, s0, s4
                  srl          t6, t4, a4
                  ori          t3, a6, 1863
                  addi         a6, a5, 1177
                  sub          s2, t2, t5
                  auipc        a0, 361806
                  srl          a6, tp, t4
                  sra          s4, a4, t0
                  srl          s7, a7, zero
                  slti         t1, t1, -47
                  srli         a3, s1, 4
                  nop
                  srai         t6, a6, 23
                  add          t6, s10, t6
                  nop
                  add          t6, s0, s5
                  and          s3, s6, s6
                  or           t2, s11, s10
                  andi         a3, ra, -520
                  and          a7, s7, a1
                  nop
                  nop
                  nop
                  ori          t1, a4, 3
                  or           s3, s11, s7
                  sltu         s3, t6, s10
                  sltiu        zero, s4, -299
                  slti         a7, t3, -1663
                  sub          a4, t6, a3
                  xor          a7, a6, s11
                  ori          tp, a3, -899
                  nop
                  srli         a6, t0, 11
                  slli         s7, s7, 1
                  auipc        t1, 389036
                  srai         sp, s0, 29
                  sub          a5, a4, s0
                  srli         a0, sp, 2
                  sra          s5, s6, t3
                  sltu         ra, s6, a3
                  nop
                  sltiu        a5, a1, 13
                  srl          s2, t4, t3
                  nop
                  sll          t0, s8, s6
                  sltu         t2, s3, a1
                  srl          s7, a3, s7
                  slli         s5, t4, 29
                  sll          t3, s6, s6
                  slti         s1, s4, 1178
                  xori         a7, t1, 749
                  xor          s5, a4, s3
                  ori          a4, t2, -1775
                  addi         s11, tp, 1030
                  and          s1, t6, s7
                  slti         gp, s4, -364
                  xor          t6, t4, s7
                  nop
                  xor          t2, ra, t0
                  addi         t4, t6, -95
                  slt          sp, s3, s6
                  ori          s6, s11, 907
                  sll          a0, a0, t4
                  sub          s5, tp, s3
                  addi         t3, s8, -525
                  addi         s2, t3, -711
                  slti         t3, a0, 958
                  srai         t3, t5, 9
                  sll          a0, a0, tp
                  auipc        a0, 834252
                  slli         sp, s5, 16
                  ori          gp, s6, -692
                  srai         t3, a0, 5
                  and          a7, s2, s3
                  ori          t4, s11, -1224
                  addi         s8, t6, -51
                  slli         t6, s7, 30
                  srli         a2, t1, 15
                  auipc        a1, 795785
                  nop
                  slli         a2, tp, 23
                  addi         s7, s7, 519
                  auipc        s2, 838649
                  sltu         tp, a7, s1
                  srli         a3, s8, 2
                  xor          tp, s1, s9
                  add          s4, t6, a3
                  xor          gp, gp, tp
                  sltu         s11, t6, sp
                  ori          t1, s0, -12
                  srli         a4, a1, 30
                  slli         a1, a3, 15
                  or           tp, s9, a6
                  andi         zero, a7, 88
                  slt          s7, s3, s9
                  andi         zero, s10, -695
                  andi         a4, a3, 671
                  sltu         s7, a3, t0
                  lui          t3, 899751
                  ori          s2, sp, -986
                  and          a2, a1, a0
                  nop
                  addi         s8, t4, 524
                  srai         t6, s10, 5
                  srai         sp, ra, 8
                  auipc        s9, 598385
                  xori         a3, s5, 177
                  lui          gp, 712519
                  and          s7, gp, a1
                  srl          s1, a0, a3
                  nop
                  srai         gp, t6, 0
                  and          a4, s0, s3
                  sltu         s1, s1, s10
                  sltu         s1, s2, s8
                  srl          a4, a1, t5
                  and          t6, a1, s1
                  xori         s6, sp, -587
                  and          a0, s3, t4
                  add          ra, sp, s8
                  sll          a5, s8, s3
                  and          t2, s11, s4
                  ori          gp, a4, 1050
                  lui          a3, 105172
                  ori          a7, s9, 1033
                  addi         t0, s7, -1201
                  slt          a1, a0, t2
                  xor          a2, a6, t2
                  sll          a2, t4, a0
                  add          sp, t2, s1
                  auipc        zero, 361046
                  slli         tp, s9, 10
                  slli         a4, t2, 2
                  srli         s5, s3, 20
                  or           t3, sp, sp
                  sra          s5, t4, a2
                  andi         tp, s10, 1560
                  xori         t1, a7, -3
                  sltu         ra, tp, tp
                  slt          gp, ra, a7
                  or           gp, a7, s10
                  sll          s4, s0, a6
                  srai         t3, s2, 31
                  sll          s8, a5, t1
                  and          a0, a3, s10
                  sltiu        sp, s4, -850
                  slli         a7, a5, 15
                  or           t4, t1, t1
                  addi         a1, a2, 1476
                  xor          t1, a7, s10
                  srai         a6, t0, 18
                  and          gp, tp, s0
                  sltu         s9, s10, t1
                  srl          a2, t4, a4
                  srli         s1, s4, 17
                  andi         t6, tp, 333
                  or           t2, a4, a4
                  sll          zero, s3, s3
                  addi         s2, s2, 1326
                  srai         a0, a1, 25
                  addi         ra, s8, 43
                  srli         a1, s9, 6
                  sltiu        t2, a7, 1957
                  sltu         t4, s10, sp
                  xori         a6, a2, 151
                  slti         s4, s2, -782
                  sltiu        t1, a4, -733
                  ori          s6, s8, -2022
                  sll          a3, t1, a3
                  xori         s11, gp, -54
                  slti         t0, a0, 855
                  slti         t4, s2, -99
                  and          s7, s10, t3
                  auipc        s2, 1041085
                  sltu         s9, s4, s3
                  sltiu        a3, t5, 79
                  addi         s1, t5, -16
                  sltu         a1, a0, t0
                  xor          s3, t1, s4
                  lui          t0, 503108
                  sll          t6, s6, t5
                  xori         t0, a2, -1368
                  sltu         s11, t0, s3
                  sub          sp, a3, tp
                  srli         t0, a0, 18
                  addi         s6, a2, 322
                  add          a2, s7, ra
                  slt          t0, a4, t4
                  srai         t2, t5, 17
                  ori          a4, sp, -179
                  add          s11, s3, a3
                  and          zero, s4, a2
                  auipc        a0, 240564
                  sra          a7, tp, a3
                  slli         gp, t6, 2
                  sub          t2, t6, gp
                  and          a3, a5, s11
                  sltu         s6, zero, gp
                  lui          zero, 346534
                  slt          a1, a7, s3
                  sltu         s1, s10, a0
                  lui          s9, 414032
                  xor          t6, t5, s2
                  sra          a0, s6, t4
                  addi         t6, a7, 674
                  sub          gp, a5, t5
                  or           sp, a7, s11
                  srli         t4, s0, 28
                  auipc        t4, 365000
                  or           s3, t3, s1
                  srli         t2, s9, 0
                  and          s1, t3, t3
                  slt          sp, s7, s1
                  sltiu        s5, s3, 1589
                  addi         s2, s8, -1547
                  and          s5, s6, s2
                  slt          s6, a0, a4
                  ori          zero, t4, 377
                  add          s6, a6, tp
                  sltiu        s7, a1, -1324
                  sub          gp, t4, tp
                  xori         sp, s8, 2014
                  ori          a4, t5, 170
                  sub          t1, gp, s7
                  addi         a5, t3, 697
                  ori          t1, s10, 1722
                  andi         s8, t5, 1244
                  sll          s11, a4, s1
                  lui          a5, 937430
                  add          s4, t0, t1
                  addi         a5, t4, 1630
                  srl          zero, gp, zero
                  srai         t6, s8, 31
                  or           a0, t2, t4
                  srai         s4, tp, 16
                  sra          s8, s10, sp
                  sltiu        s2, tp, -990
                  lui          a7, 685703
                  auipc        t6, 267033
                  sra          t0, a6, s10
                  nop
                  sra          s2, t4, s9
                  andi         a5, s1, -1985
                  slti         t3, tp, 57
                  lui          a3, 469278
                  srl          s7, s11, s3
                  slli         s11, s6, 3
                  addi         tp, t0, -1438
                  or           s7, t0, a0
                  slt          t0, s5, t3
                  srai         s8, s5, 22
                  xori         ra, s5, -1877
                  sltiu        a0, s6, -387
                  srl          ra, t3, a2
                  sltiu        t0, t6, -1738
                  nop
                  lui          s4, 721471
                  slli         a1, a1, 30
                  xori         a2, s1, -330
                  slt          sp, a1, s1
                  slli         s8, s7, 8
                  add          t1, a5, a2
                  sll          a1, a5, sp
                  sll          a2, a5, t5
                  nop
                  andi         s8, a2, -627
                  and          ra, a4, a3
                  xor          a7, t6, s0
                  srl          ra, s0, t6
                  nop
                  ori          tp, s9, 1223
                  lui          zero, 288542
                  srli         tp, s1, 27
                  or           s7, s9, sp
                  sltiu        s6, s0, -1752
                  slt          a6, s7, s10
                  andi         s3, a3, -213
                  slt          t3, t4, a1
                  and          s8, a2, a3
                  sra          s1, t4, a2
                  slli         a6, s4, 1
                  srl          a2, a6, t0
                  add          t2, s2, gp
                  slt          a1, s3, a6
                  srai         a5, a2, 29
                  srli         t4, s9, 12
                  auipc        tp, 927242
                  andi         s2, s1, -1328
                  slt          t6, sp, s6
                  sltu         a3, s1, zero
                  sra          a4, t5, s1
                  addi         s3, tp, -1280
                  add          s3, t5, s5
                  and          a1, ra, s8
                  lui          a1, 834593
                  sub          a2, s5, a1
                  sltiu        zero, a1, 1651
                  sltu         t6, s4, s9
                  sltiu        s1, a1, 1357
                  addi         a4, s8, 222
                  sll          t2, s0, s10
                  ori          a4, s9, -157
                  sltu         ra, zero, t4
                  srai         a5, s5, 11
                  auipc        tp, 203715
                  or           s4, t6, t2
                  ori          a3, zero, 1797
                  addi         s5, sp, -1838
                  sltu         a7, ra, s10
                  srli         s11, a7, 24
                  auipc        sp, 718786
                  slti         t6, t2, 992
                  slti         s9, a3, -410
                  or           s4, t2, s2
                  srl          t2, a0, s1
                  slli         s2, t5, 7
                  sll          s8, sp, gp
                  and          s4, gp, s0
                  slti         t0, a6, 398
                  srai         t0, s0, 11
                  andi         s7, s3, 719
                  xor          tp, gp, s9
                  andi         a5, ra, -493
                  srli         s8, s8, 29
                  lui          a4, 443620
                  lui          s6, 676390
                  sltiu        a3, a4, 135
                  auipc        s2, 2237
                  slti         s11, s5, 1515
                  andi         s7, s2, 1696
                  sra          s1, a1, s8
                  lui          s1, 255890
                  addi         t2, a2, -784
                  or           a5, t6, t3
                  nop
                  sra          ra, zero, a3
                  sltiu        t3, s2, -1942
                  ori          s7, s8, 923
                  sll          s11, s9, sp
                  srai         a2, t3, 17
                  ori          a3, a0, 506
                  sra          s3, tp, s1
                  xor          a5, s0, s9
                  slt          tp, s8, t2
                  sltiu        a5, a7, 2021
                  sra          a0, a6, s10
                  sltiu        a1, s6, 402
                  auipc        s3, 591071
                  ori          gp, s7, -933
                  xori         a0, t6, 658
                  xori         sp, a6, -1261
                  sltiu        ra, t2, -1610
                  srai         s3, a4, 7
                  slli         s8, s11, 9
                  slti         s2, s2, -832
                  ori          s11, s2, 729
                  addi         a6, s1, -1232
                  sltiu        s2, s6, -1567
                  slli         s11, a6, 29
                  sra          t3, s10, s0
                  sll          gp, t5, s7
                  srli         a3, s10, 27
                  srai         a6, s8, 4
                  sltiu        t3, s11, -1139
                  srl          tp, s4, ra
                  addi         s1, s5, 710
                  sltiu        t6, a1, -1363
                  xori         s6, s5, 1244
                  sltu         s3, t4, zero
                  srai         t2, s9, 25
                  and          s4, t6, s11
                  andi         s7, sp, -128
                  ori          s5, s9, -1692
                  sub          sp, s8, t6
                  auipc        a3, 139743
                  srai         s3, a5, 0
                  nop
                  srl          a6, t0, s6
                  srai         t4, zero, 27
                  add          t6, a3, ra
                  xori         t6, a7, -826
                  sub          a4, s1, s1
                  andi         a1, s0, -1827
                  add          gp, t4, s1
                  sltiu        s11, zero, -1807
                  slt          s9, s3, s1
                  andi         a0, s8, 2012
                  auipc        s6, 267757
                  or           a3, ra, a6
                  sra          t6, s10, zero
                  sll          a1, s7, t6
                  and          s3, gp, a7
                  slli         a1, s9, 10
                  sll          a5, s6, s9
                  sll          s3, s7, gp
                  and          t6, ra, a7
                  srli         s2, s10, 26
                  sltu         t6, t5, s5
                  srai         a2, t4, 23
                  sltu         t1, a1, s10
                  ori          a2, gp, 788
                  xor          a6, a3, t6
                  slli         t3, s9, 25
                  and          a7, s3, a6
                  xori         a6, t3, 1847
                  lui          ra, 775168
                  sra          a1, a6, sp
                  sltiu        zero, s5, -1250
                  lui          a3, 533841
                  addi         a4, s6, 54
                  add          s6, t0, s5
                  or           a2, a7, t2
                  andi         s11, t6, -1393
                  andi         s6, tp, 1074
                  srli         a1, s3, 24
                  sltu         a6, t1, a2
                  add          a5, s5, s8
                  sltiu        t3, s9, 1517
                  slli         t0, s5, 31
                  sltu         a2, a1, s4
                  srai         ra, t0, 20
                  and          a4, s5, a7
                  sll          tp, s1, a3
                  nop
                  lui          s2, 822888
                  sub          a6, s7, s0
                  srli         s7, a7, 31
                  auipc        t4, 280249
                  addi         zero, a0, 269
                  sra          t1, s0, s6
                  add          t3, a2, a4
                  slli         zero, s6, 21
                  slti         a3, s5, -155
                  ori          sp, s7, 1784
                  add          s9, s6, ra
                  lui          s9, 257689
                  srai         t0, s0, 0
                  sll          a4, a5, t3
                  sltu         s2, a2, a7
                  sll          t0, s3, s2
                  sltiu        sp, sp, 707
                  sltu         t0, gp, s5
                  srli         s2, a0, 15
                  sltu         a1, a3, s5
                  addi         a0, s8, 1123
                  xor          a2, a4, s3
                  slti         s1, t3, 89
                  sltu         a5, ra, t6
                  slli         s1, s1, 4
                  andi         s1, a1, 1634
                  srai         ra, s1, 6
                  slti         ra, s3, -640
                  srai         a3, a4, 4
                  srli         gp, a5, 19
                  slt          t4, t6, ra
                  sra          t0, s5, a4
                  slli         a7, a2, 20
                  slt          gp, s5, t4
                  slti         s9, a7, -277
                  andi         t6, s7, -846
                  xor          t6, s9, t5
                  or           ra, t3, s10
                  andi         a5, s9, 1930
                  slt          a6, s6, s10
                  andi         t1, a0, 1133
                  slli         a5, s0, 12
                  or           a5, a3, t5
                  nop
                  srai         s7, t2, 25
                  xor          tp, a7, a1
                  srli         s5, t5, 14
                  srli         s4, s10, 25
                  add          s5, t6, s5
                  xor          gp, s9, a2
                  and          s8, t6, tp
                  xori         s6, a5, -1484
                  xori         s1, t6, -1539
                  and          t4, s8, s0
                  andi         s3, a5, 619
                  sub          s8, tp, s10
                  and          s4, a4, s7
                  xori         s8, s2, -478
                  li           s3, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           sp, 0xffffffff
                  li           t3, 0xffffffff
                  li           s1, 0x80000000
                  li           a2, 0xffffffff
                  li           tp, 0x80000000
                  li           a4, 0x0
                  li           t4, 0x80000000
                  li           t1, 0x69f70bb5
                  li           t2, 0x7230f200
                  sub          t1, tp, tp
                  add          a2, a4, t4
                  sub          t4, t4, tp
                  sub          t4, s1, sp
                  nop
                  auipc        t3, 619747
                  nop
                  addi         t2, t3, -320
                  addi         t3, s3, 1430
                  auipc        t4, 924312
                  sub          t4, t2, s3
                  lui          a4, 32584
                  sub          a4, a2, s1
                  add          sp, sp, t3
                  addi         s1, tp, 394
                  add          a2, a2, s3 #end riscv_int_numeric_corner_stream_17
                  xor          a1, a1, s8
                  auipc        ra, 974979
                  auipc        t1, 987042
                  slti         a1, a3, -30
                  slt          s5, s2, t1
                  lui          s1, 820989
                  xor          s11, t0, s9
                  ori          s2, gp, -942
                  addi         t0, zero, -1878
                  slt          s1, t5, a6
                  sra          t4, t0, t4
                  sra          t6, s9, a0
                  srl          t2, tp, t0
                  sra          a7, t4, a0
                  ori          tp, s2, 367
                  andi         a6, a7, 1967
                  slli         s4, t3, 5
                  srai         gp, tp, 5
                  srli         s4, t6, 19
                  slti         t0, gp, -577
                  xor          a7, s10, s11
                  sub          a4, t3, a7
                  andi         s6, s6, -1339
                  slt          s2, t3, tp
                  ori          tp, ra, -1998
                  lui          t0, 171044
                  xori         s1, zero, -1474
                  add          a6, a3, ra
                  srai         a0, t5, 12
                  sltu         t6, s6, t2
                  xori         zero, s2, 1970
                  slt          a3, a1, a6
                  sltiu        s2, t2, -1729
                  slli         a6, gp, 27
                  xor          a6, s11, t0
                  sltiu        ra, t0, 1060
                  slli         s1, s6, 8
                  xor          s1, zero, t3
                  and          s11, a6, a4
                  or           t4, a5, t0
                  xor          tp, zero, a1
                  sltiu        a6, s2, 1356
                  sub          s3, t3, t1
                  srai         t2, t3, 0
                  srl          t1, t0, a3
                  addi         s11, t0, -1180
                  addi         s4, s3, -404
                  srai         t1, t6, 3
                  auipc        a2, 314134
                  srl          t1, a7, t1
                  nop
                  slti         sp, tp, 913
                  srli         s5, s0, 5
                  srli         a7, gp, 21
                  ori          s1, s1, 588
                  srai         s1, t0, 7
                  ori          a6, s5, 1361
                  lui          t6, 543312
                  srli         t6, s2, 14
                  sub          a1, t5, gp
                  nop
                  and          tp, s8, t6
                  srli         zero, s0, 25
                  lui          s11, 37311
                  add          t6, s2, a7
                  lui          zero, 320100
                  srli         a1, a5, 25
                  and          a3, a5, s0
                  or           s4, s0, a2
                  srai         a0, gp, 30
                  auipc        s7, 783069
                  srai         s6, s3, 27
                  sub          s4, t2, a6
                  xor          a4, a6, s9
                  srl          s3, a0, t1
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           t4, 0xffffffff
                  li           t0, 0x34a5dd82
                  li           t6, 0xb4d3f2f8
                  li           t2, 0x80000000
                  li           s1, 0x80000000
                  li           s2, 0xcd4fd09d
                  li           a5, 0x80000000
                  li           s11, 0x0
                  li           a4, 0xffffffff
                  addi         a5, a4, -1600
                  add          a0, t0, t2
                  sub          t6, a0, t0
                  addi         a5, s1, -949
                  add          s11, t6, t4
                  auipc        t4, 594599
                  addi         t0, a5, -1525
                  add          a0, a0, s1
                  lui          t2, 116497
                  add          s11, t4, t6
                  auipc        s11, 648716
                  nop
                  sub          t4, t4, s2
                  lui          s1, 768409
                  add          t0, t6, a5
                  sub          s2, a4, s1
                  lui          s11, 471179
                  add          a5, t6, t6
                  auipc        s1, 599969
                  sub          a0, s11, s1
                  sub          a4, t0, a0
                  auipc        s1, 174402
                  lui          s2, 795609
                  nop
                  lui          a0, 288472
                  sub          t2, s2, a0 #end riscv_int_numeric_corner_stream_9
                  xori         s6, s4, 1729
                  lui          a7, 651096
                  ori          t4, a6, 168
                  sra          a6, a5, t6
                  add          a1, s4, t1
                  auipc        s4, 462245
                  sltiu        t6, a6, -1620
                  sra          a5, s5, a3
                  srl          a0, s5, a0
                  addi         s3, zero, 1686
                  srai         a1, s3, 12
                  addi         t2, s5, 1015
                  add          zero, a0, s11
                  addi         a0, s10, 155
                  sll          sp, t1, a5
                  or           s9, tp, s11
                  slti         a2, s0, 88
                  add          t4, s7, t0
                  sltu         s5, t5, t0
                  sltu         t2, t6, t6
                  sltiu        t3, a7, 812
                  xor          tp, s3, a0
                  slti         a2, zero, 1678
                  srl          a0, zero, s3
                  srl          t0, s7, s5
                  xori         a5, t4, 1468
                  xori         s11, gp, 297
                  xori         s9, a0, 631
                  slti         a4, s6, -21
                  li           s3, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           a5, 0xffffffff
                  li           a6, 0xe10359d7
                  li           s4, 0xc78581f5
                  li           s7, 0x49ff3e6
                  li           ra, 0x0
                  li           t2, 0xffffffff
                  li           s1, 0x8cb63ce3
                  li           a1, 0x80000000
                  li           t1, 0x83cde434
                  addi         s1, s1, 1233
                  add          a6, a1, s3
                  sub          s4, a5, s3
                  auipc        t2, 804459
                  add          s4, t1, ra
                  nop
                  addi         a5, s4, 973
                  nop
                  sub          s4, s3, s7
                  sub          ra, s1, s1
                  lui          t1, 317938
                  add          s1, s3, s1
                  addi         s4, a6, -680
                  nop
                  auipc        a1, 688568
                  auipc        s1, 85764
                  sub          ra, s1, a5
                  add          s7, s1, s4
                  addi         s7, a5, -310
                  add          ra, t1, s3
                  add          t1, ra, a6
                  sub          a5, a6, a5
                  nop
                  addi         a5, a1, 1079
                  nop
                  lui          s7, 990172
                  lui          t2, 339052 #end riscv_int_numeric_corner_stream_6
                  nop
                  nop
                  add          s4, s0, s11
                  sltu         a6, tp, t6
                  lui          tp, 253318
                  and          gp, s0, s3
                  slli         s9, a0, 8
                  ori          t3, s2, -1746
                  slli         s11, s10, 29
                  sltiu        tp, a5, -942
                  slli         s2, s1, 29
                  lui          a1, 496971
                  sub          t6, a1, s8
                  ori          a0, s8, -1188
                  sltiu        t2, a3, -1517
                  slti         s2, ra, 923
                  addi         a2, t0, 1041
                  nop
                  sub          s11, a4, a3
                  sra          a2, t6, s8
                  sra          s1, a7, a2
                  and          s8, sp, a0
                  xor          a4, tp, a0
                  sub          gp, zero, s5
                  srli         a4, ra, 28
                  xori         s5, a5, -2032
                  auipc        s5, 368675
                  and          a1, a4, a7
                  sra          s2, t1, s6
                  and          a3, gp, s7
                  lui          a6, 933699
                  sltu         a2, a7, s7
                  xori         s9, a4, -1755
                  slt          a2, t1, s8
                  srli         zero, zero, 13
                  srli         s5, sp, 24
                  srl          zero, a4, t2
                  slt          s8, gp, a7
                  nop
                  ori          a1, s2, -1667
                  lui          zero, 525386
                  lui          ra, 444712
                  lui          t0, 379870
                  slt          a0, tp, s8
                  auipc        a3, 259507
                  xor          s11, t6, s9
                  addi         t6, s9, 763
                  slli         a5, s10, 21
                  sub          s1, t6, a7
                  xor          s9, s9, s2
                  sll          a7, t1, t6
                  slti         a0, zero, 426
                  add          ra, s10, s8
                  add          sp, s0, a0
                  sub          s3, t2, s5
                  xor          t6, s6, t2
                  nop
                  sltiu        t1, a4, 1079
                  xor          t4, s5, a4
                  sra          a4, a3, t4
                  addi         a2, t4, 1815
                  srli         a7, s11, 16
                  sltu         a5, s5, a7
                  xori         a6, a4, 213
                  srli         ra, ra, 21
                  srl          tp, a4, a4
                  sltu         s1, s4, a3
                  slt          a0, ra, a2
                  addi         a2, tp, -1955
                  srli         s2, s1, 4
                  andi         t0, t2, 1832
                  addi         a6, a4, 675
                  or           s9, a3, a5
                  addi         s2, t0, 1466
                  add          s1, t1, s9
                  slt          s5, s2, t1
                  sltiu        s7, t6, 700
                  addi         s3, s2, -1903
                  slt          sp, t4, s1
                  ori          a6, t5, -487
                  sub          a2, a2, s9
                  slti         a2, s0, -1085
                  and          tp, s0, sp
                  add          sp, s10, ra
                  sub          t3, sp, s4
                  sra          a5, t4, t6
                  sra          t4, a4, a4
                  srl          a3, gp, gp
                  and          s3, s10, a0
                  or           a5, s1, tp
                  slt          s5, a4, s8
                  srl          s6, s8, a2
                  slt          s2, s7, s7
                  xori         a1, t6, -1684
                  or           sp, s5, t4
                  sll          a6, a1, s7
                  lui          a5, 568221
                  sltiu        s6, a0, 1673
                  sra          sp, a4, sp
                  slli         s4, s3, 16
                  ori          zero, a3, -362
                  add          a3, s11, s4
                  slt          gp, a2, a1
                  or           s7, t2, t6
                  lui          s8, 591490
                  sra          s11, a5, s5
                  sltiu        t6, t1, 716
                  xor          t1, s6, t6
                  or           s7, s5, s9
                  lui          s8, 323070
                  or           s5, sp, s0
                  sra          t2, s10, s3
                  and          t6, a6, a3
                  auipc        t4, 835437
                  slt          a0, gp, s8
                  addi         a2, t5, 993
                  srai         s1, t5, 18
                  sll          a1, a6, t6
                  sltiu        ra, a1, -1477
                  srli         a3, a0, 12
                  sub          a4, a1, a4
                  srli         s8, s1, 0
                  or           ra, t1, a0
                  lui          t1, 24724
                  addi         s11, t3, -1541
                  or           a4, s2, a4
                  srai         a2, gp, 12
                  sltiu        a5, t0, -1397
                  slli         a1, s10, 25
                  sll          s2, s2, a1
                  sra          a1, s10, a6
                  and          gp, t0, s4
                  slli         t6, s8, 24
                  slt          s3, tp, s6
                  slti         a2, t6, 729
                  srl          a5, s0, s0
                  sltiu        s8, a3, -1062
                  srl          t3, t2, gp
                  sltiu        a4, a0, 1107
                  or           t4, a4, s10
                  nop
                  add          gp, t1, a3
                  auipc        sp, 207414
                  srli         gp, s2, 25
                  sltiu        t6, a4, 809
                  xori         s6, s9, -1814
                  and          s2, t5, t2
                  nop
                  ori          sp, zero, 1786
                  slt          s1, a4, s7
                  and          t4, s0, a4
                  auipc        gp, 394220
                  sltiu        a0, a2, -1615
                  lui          s4, 399871
                  andi         s7, t3, -785
                  sub          s9, a2, tp
                  addi         s11, t4, -766
                  slli         s9, tp, 12
                  srai         s4, a2, 27
                  andi         s2, s2, 631
                  lui          gp, 932571
                  lui          s11, 525887
                  slt          a2, s0, a2
                  sll          t1, t5, s0
                  lui          s5, 570987
                  sltiu        t3, t0, 1401
                  xori         s1, s1, -894
                  andi         s1, t3, -1004
                  srai         a7, a7, 0
                  sra          zero, sp, a6
                  sub          a0, a1, s4
                  srai         t6, a3, 21
                  slt          t0, s3, a5
                  xor          zero, t3, t3
                  lui          s7, 71467
                  sltiu        t6, zero, -2004
                  sltiu        s6, a6, 854
                  sltiu        ra, s6, 106
                  lui          a4, 403784
                  add          a4, s0, sp
                  add          s1, t3, ra
                  sltiu        s5, t4, -1632
                  sub          s7, s2, a4
                  srl          a7, s8, t6
                  sltiu        s5, s3, 913
                  andi         s6, s6, 955
                  srl          ra, tp, s0
                  addi         a1, a2, -1209
                  and          s2, s5, s7
                  slti         s7, a3, 1272
                  srl          s5, t1, s2
                  add          zero, tp, s7
                  nop
                  srl          a3, t4, a7
                  srl          ra, s6, s7
                  and          a5, t0, ra
                  sltu         s1, s7, t4
                  srai         t2, s0, 13
                  and          s7, t5, t5
                  sltiu        t1, s6, 1192
                  srl          s9, gp, t2
                  sltiu        sp, t5, -1944
                  nop
                  sra          s3, sp, a7
                  xor          a1, t1, sp
                  auipc        t6, 100670
                  sll          t3, sp, s1
                  slti         s5, a2, 72
                  andi         a4, t2, -1554
                  sub          a3, gp, s11
                  xor          s9, t3, s8
                  srai         a5, a7, 15
                  add          s6, t1, a7
                  nop
                  addi         s5, s1, -140
                  ori          s1, t0, 758
                  addi         a5, gp, 255
                  sltu         s1, sp, a4
                  slt          s11, s9, a5
                  or           t6, s10, s7
                  addi         a4, s9, 1462
                  slli         s9, t3, 9
                  or           s11, t2, s11
                  slti         s4, ra, -885
                  xori         t6, t1, -1149
                  addi         a1, s4, 208
                  add          a2, tp, t5
                  sltiu        s8, sp, 1319
                  addi         ra, a3, -1680
                  slti         s9, s9, -1306
                  addi         a4, a3, 1084
                  andi         ra, t1, 1125
                  auipc        ra, 926176
                  and          s5, a0, s1
                  srli         a0, s3, 5
                  add          zero, a6, a5
                  xor          t1, s9, s0
                  nop
                  xori         s4, s11, -592
                  lui          s7, 620189
                  slti         t4, sp, -1459
                  slti         a2, a7, -477
                  sll          s8, s11, a4
                  nop
                  auipc        a2, 749477
                  sra          sp, s1, s1
                  sub          s2, s11, s6
                  ori          t2, a7, -238
                  ori          s7, s3, -1222
                  sra          s1, tp, s5
                  srai         ra, s8, 31
                  sra          s5, a2, a4
                  auipc        a4, 248523
                  xori         t4, t4, 1759
                  slti         t1, s8, -1625
                  slli         s9, s0, 14
                  addi         gp, s7, -1470
                  slli         a0, a7, 12
                  nop
                  sll          s6, a3, t1
                  xor          a1, s3, a5
                  andi         s4, gp, -1370
                  srl          a4, t6, s3
                  lui          s2, 1005808
                  xori         s7, s3, 987
                  addi         s9, a6, 955
                  add          t2, s6, s8
                  slti         t1, a6, -1873
                  slli         s3, a3, 0
                  xori         a7, s6, 1664
                  slli         a2, s0, 10
                  or           gp, a1, a3
                  xori         a6, t2, -471
                  sltu         s1, s10, gp
                  sll          a4, tp, s8
                  sub          sp, s3, s0
                  add          t1, s7, sp
                  lui          s7, 927098
                  lui          a6, 23383
                  slli         s11, s3, 13
                  srl          s1, ra, s1
                  ori          a2, zero, 560
                  srli         s9, a7, 24
                  ori          tp, s7, 231
                  srl          a7, s2, a4
                  sra          s2, s1, t4
                  lui          a3, 624996
                  addi         a1, s11, -617
                  srai         a6, s7, 28
                  srl          t3, s2, s1
                  ori          s9, s10, 844
                  and          a1, a0, a4
                  srl          s11, s4, t4
                  sll          t0, gp, a2
                  slt          sp, s0, s7
                  slt          a4, t3, s4
                  sub          s2, a5, ra
                  sltiu        a6, a7, 195
                  nop
                  srl          ra, a1, t0
                  lui          s6, 104133
                  srl          a3, t0, a2
                  ori          t1, t5, -577
                  slli         s11, sp, 13
                  slli         a7, t4, 0
                  auipc        t3, 1040394
                  or           a1, s9, gp
                  slti         s9, s6, 1294
                  xori         s4, s6, 1346
                  srai         a5, a1, 16
                  lui          s1, 757870
                  auipc        s9, 1012497
                  slti         a6, s4, -431
                  sltu         gp, t3, gp
                  lui          s11, 390843
                  slli         a2, t4, 5
                  auipc        a7, 684476
                  auipc        t0, 47472
                  sra          a0, s8, a7
                  addi         a6, s11, -1188
                  sltu         a1, a5, s5
                  xor          s5, a5, t4
                  nop
                  addi         t3, t3, -121
                  and          t1, s11, t3
                  srl          s9, s0, sp
                  sltu         s11, s2, s1
                  sll          t2, a7, t2
                  and          t6, t1, t4
                  add          a4, s2, a5
                  slt          s4, s4, t6
                  xor          s9, a7, s6
                  xor          s6, a4, a4
                  xori         s6, s3, -122
                  add          a0, s11, t0
                  srai         t1, a7, 7
                  srli         s7, s3, 24
                  slti         s8, a7, -1559
                  sltu         t3, t5, s1
                  srli         a7, s9, 31
                  srai         t1, s7, 28
                  xori         zero, a7, 1965
                  andi         s11, t3, 302
                  sll          s2, a7, tp
                  slt          s9, s4, gp
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           s2, 0x80000000
                  li           a0, 0xffffffff
                  li           a4, 0x0
                  li           s8, 0xffffffff
                  li           s3, 0x80000000
                  li           t1, 0xffffffff
                  li           s1, 0x0
                  li           t0, 0xffffffff
                  li           t4, 0x7e1fd7a8
                  auipc        t0, 772132
                  addi         t4, s1, 1939
                  sub          t0, a5, s1
                  addi         s3, s3, 742
                  sub          a5, t1, t4
                  add          a4, s3, a0
                  lui          s8, 55119
                  auipc        t1, 405752
                  nop
                  lui          a0, 787556
                  auipc        s8, 107610
                  lui          s2, 486421
                  auipc        s2, 939628
                  addi         a5, t0, -179
                  add          a5, s1, t1
                  lui          a0, 902945
                  nop
                  addi         a0, t0, 1964
                  nop
                  add          a5, s1, s3
                  addi         t4, s1, -1594 #end riscv_int_numeric_corner_stream_16
                  xor          t2, t6, s10
                  or           t6, s8, t2
                  or           zero, s2, t6
                  sub          t6, s9, s9
                  sll          s11, s9, t5
                  sra          a6, a7, s5
                  and          t4, a5, s6
                  xori         s8, s6, 1783
                  sub          t2, tp, s0
                  andi         tp, s10, 1904
                  sll          s8, s6, s7
                  srli         s6, gp, 13
                  slt          a6, a5, s11
                  sra          tp, s4, t5
                  addi         t4, s2, -963
                  slt          s2, a0, a5
                  sltiu        a1, s3, -1525
                  xori         a7, s4, 1774
                  and          a4, s8, s4
                  sltu         gp, a0, s7
                  nop
                  srl          sp, s4, a2
                  sltu         a0, a6, t4
                  srli         zero, t1, 8
                  slti         t4, t4, -45
                  xor          tp, s1, t3
                  ori          s3, s3, 2015
                  add          s3, s7, a1
                  sll          t3, s4, s8
                  li           gp, 0x4c61b81a #start riscv_int_numeric_corner_stream_0
                  li           t4, 0xffffffff
                  li           ra, 0xffffffff
                  li           t2, 0xffffffff
                  li           s4, 0xffffffff
                  li           a5, 0xffffffff
                  li           a2, 0x80000000
                  li           s1, 0xffffffff
                  li           s8, 0x80000000
                  li           t6, 0x80000000
                  add          a5, s8, t6
                  auipc        t6, 216208
                  add          t4, a2, s1
                  sub          gp, t4, t6
                  add          ra, s4, s1
                  sub          t4, a2, gp
                  nop
                  lui          a2, 930461
                  addi         s1, t6, 78
                  sub          a5, s1, a5
                  auipc        s4, 492116
                  auipc        ra, 451215
                  auipc        ra, 463897
                  add          t2, s4, s1
                  auipc        ra, 836491 #end riscv_int_numeric_corner_stream_0
                  srai         s6, s3, 18
                  andi         s4, tp, -1800
                  srli         t2, s2, 13
                  slt          s2, sp, sp
                  sltiu        s3, t5, -1125
                  add          s5, t2, s5
                  srli         a6, s11, 31
                  or           a5, a0, a5
                  srli         t4, s11, 5
                  lui          a6, 447428
                  nop
                  xor          ra, s10, tp
                  xor          s8, a0, s4
                  ori          s3, a6, -1359
                  srl          a1, s4, a7
                  slt          s5, s6, s3
                  slti         s11, t6, -1323
                  auipc        a2, 544318
                  and          ra, ra, a4
                  sra          zero, tp, a1
                  and          a0, t3, zero
                  sra          t4, zero, t2
                  slti         t0, a6, -1559
                  srai         s6, s9, 28
                  sltu         zero, t4, s2
                  ori          s11, s4, 1902
                  nop
                  slti         sp, s5, 982
                  sra          s8, a4, ra
                  nop
                  andi         tp, s5, 568
                  and          t3, a1, a5
                  sltu         sp, s1, t0
                  xori         s6, s11, 951
                  auipc        sp, 191666
                  srli         t3, t1, 4
                  or           a7, t6, s0
                  auipc        sp, 955185
                  nop
                  sll          s4, t3, s9
                  srli         a6, s1, 27
                  or           a2, s10, t0
                  add          a5, s9, t5
                  sra          t3, t2, t2
                  add          a7, t2, t0
                  slti         s6, t4, -1321
                  add          a3, a2, a1
                  xori         t0, t5, 1227
                  add          s8, s4, s3
                  add          t6, s0, gp
                  add          t0, a7, tp
                  xor          a6, tp, s6
                  addi         t2, s7, 703
                  or           t4, s6, sp
                  lui          t6, 433738
                  sll          t3, t5, s0
                  sltiu        s1, tp, 1422
                  slti         s1, t6, 430
                  srli         a4, s5, 19
                  or           s6, s8, s7
                  lui          s4, 42204
                  nop
                  xori         a5, sp, 26
                  ori          a3, t0, -927
                  slti         tp, a6, 369
                  and          a1, a0, s1
                  and          s2, t4, s11
                  sll          s3, a0, t3
                  xor          s8, s7, a5
                  ori          ra, ra, -693
                  and          a2, s3, sp
                  xori         t0, a5, -1560
                  and          sp, s4, s10
                  andi         t2, s7, -864
                  auipc        gp, 6004
                  sra          sp, t4, a4
                  slli         a2, tp, 17
                  sra          a1, s10, t2
                  slti         a1, s5, -1532
                  sll          a2, s2, a2
                  sra          a4, t1, a3
                  addi         a7, zero, -3
                  andi         gp, zero, 589
                  auipc        s9, 932834
                  srli         ra, t2, 25
                  or           a0, s0, t3
                  nop
                  nop
                  addi         a7, s4, 1855
                  addi         zero, a5, 1108
                  srli         t3, a2, 10
                  xori         zero, t4, 701
                  sltu         tp, t5, t0
                  srli         a2, t3, 12
                  sltiu        sp, s8, 187
                  sra          a7, t6, s2
                  add          t2, a6, a7
                  xor          a0, a5, t6
                  nop
                  slt          a4, sp, s7
                  sra          s5, t1, s8
                  sll          a1, s9, t6
                  xori         gp, a7, 1972
                  andi         t6, s11, 1949
                  slti         s5, a7, -801
                  add          sp, t1, s4
                  ori          tp, t4, 1763
                  xori         a7, s5, 1843
                  sub          s6, s6, t2
                  sltu         s9, s9, ra
                  xor          a5, a2, a7
                  sub          s8, s9, s11
                  slli         ra, a6, 10
                  xor          a4, a2, a0
                  sltiu        s1, a7, 1282
                  xor          s2, s3, t3
                  sll          sp, zero, s5
                  and          s6, s8, s3
                  slti         a0, tp, 610
                  srai         tp, ra, 3
                  sll          t6, t4, t2
                  andi         s1, s3, 1017
                  slt          a3, sp, t1
                  srl          t0, s6, t2
                  andi         a4, s4, 1321
                  add          t0, a2, a0
                  srai         gp, s6, 24
                  srai         s8, a4, 20
                  sll          a4, s10, gp
                  sra          a7, t2, t2
                  add          a6, s1, a5
                  or           s1, sp, a6
                  nop
                  srli         a6, s3, 0
                  sltu         s2, s10, a1
                  xor          s4, s5, tp
                  sub          s1, t3, a6
                  sra          s3, s7, s1
                  add          s1, s8, s8
                  srl          s3, a7, a7
                  slli         t1, ra, 12
                  add          a2, a3, a7
                  nop
                  slt          a2, a1, s7
                  srl          a6, s5, s0
                  srl          s2, s7, ra
                  xor          a2, a7, ra
                  ori          s6, s0, -1634
                  ori          a2, t5, -1637
                  sll          a0, s3, gp
                  sltiu        s5, tp, 1667
                  lui          s5, 681028
                  xori         gp, a6, -1853
                  sra          gp, ra, a2
                  sltiu        a2, t6, -1518
                  xor          s5, s9, gp
                  auipc        t2, 1041474
                  auipc        s7, 894849
                  srl          s7, s5, t3
                  auipc        a0, 966057
                  sltiu        t2, a1, 429
                  sltiu        a4, s5, 105
                  slli         s5, a3, 17
                  auipc        tp, 993300
                  srli         t2, t3, 24
                  sra          gp, s9, s1
                  and          tp, gp, s7
                  andi         a0, s7, -957
                  slti         a1, a6, -33
                  add          t2, sp, s7
                  andi         t0, t4, 1040
                  slt          s9, gp, a4
                  addi         a0, s6, 136
                  sltu         t4, t5, t5
                  ori          a7, a0, -665
                  slt          s8, s3, t6
                  srli         gp, t2, 23
                  slti         ra, s7, -386
                  ori          a7, a7, -263
                  nop
                  srli         a2, t4, 26
                  sub          zero, a7, s3
                  ori          gp, a7, -515
                  srl          a7, s11, s8
                  slt          a5, s11, gp
                  sltu         s11, a7, s1
                  slli         t4, ra, 27
                  sra          t2, t6, s2
                  sltiu        s5, a6, -1396
                  sub          t6, a2, a6
                  srai         a4, s4, 0
                  srli         a5, tp, 21
                  sra          a5, s1, t2
                  ori          s11, t3, -512
                  srl          t3, ra, t5
                  and          a7, t3, s2
                  auipc        a7, 227064
                  slti         s1, a0, 853
                  addi         t3, t4, -1530
                  addi         a3, s3, 1700
                  slti         t1, a0, -714
                  sltiu        s6, t1, 440
                  add          s1, t1, t2
                  nop
                  nop
                  slt          s11, s3, s7
                  sll          gp, s0, sp
                  slti         s5, t0, 1887
                  srli         a4, tp, 14
                  lui          a5, 226931
                  xor          a5, a5, a6
                  and          s6, s10, a7
                  slti         t0, s3, -1736
                  or           zero, s8, a5
                  sltu         s3, a4, a5
                  andi         t1, t1, -1286
                  add          s4, a1, s7
                  add          tp, t1, s2
                  or           ra, s5, s4
                  xor          a2, s1, s2
                  slli         a3, s10, 28
                  xor          s11, t4, a6
                  andi         zero, s7, 179
                  sltu         s4, tp, s3
                  andi         s3, a1, -799
                  xori         zero, tp, -835
                  slti         a5, a5, -457
                  srai         t0, a6, 14
                  addi         a7, ra, -231
                  sltiu        t0, s11, -1836
                  ori          a5, s0, 298
                  sub          t2, a2, a4
                  sll          a1, sp, a6
                  nop
                  srl          s3, a3, s9
                  srl          s9, s8, a7
                  slti         s9, s2, 507
                  sltu         s9, t1, s0
                  ori          s11, s6, 1980
                  xori         a0, s0, 1781
                  lui          tp, 356687
                  xor          a1, zero, t6
                  sll          ra, a1, s1
                  sra          a2, s0, a4
                  srl          a1, a3, s9
                  auipc        s2, 1003412
                  ori          a5, s5, 277
                  nop
                  add          t4, s0, s7
                  lui          s9, 945827
                  nop
                  addi         a7, t3, 938
                  lui          a4, 1028555
                  sra          a5, s0, ra
                  andi         gp, t0, -30
                  auipc        s4, 63058
                  srl          s7, tp, t2
                  sra          zero, t4, t3
                  auipc        gp, 132745
                  auipc        t3, 605261
                  lui          t0, 260316
                  addi         s4, s8, 1829
                  sra          s4, t4, a0
                  srai         s8, a4, 10
                  lui          t4, 628546
                  srl          s7, s9, s11
                  add          t2, s2, a5
                  or           gp, s10, s10
                  lui          t1, 894638
                  or           s4, t4, t4
                  xor          s6, a5, a0
                  or           t4, t6, t1
                  add          s1, a2, s2
                  addi         ra, t0, 741
                  or           t2, t1, t1
                  srai         t3, s11, 1
                  sub          a7, s4, t6
                  xori         s4, s8, -833
                  srli         sp, ra, 18
                  slli         s8, s7, 4
                  slt          zero, ra, t2
                  srl          gp, a3, t4
                  lui          a7, 577395
                  slti         s7, s11, 2028
                  sra          t3, t0, zero
                  add          s9, s7, s5
                  or           a7, a4, s3
                  sra          t0, s7, t4
                  or           gp, a5, s5
                  sltiu        s3, s7, 1360
                  addi         a1, s8, 200
                  ori          zero, tp, 349
                  sub          t1, s0, s0
                  slt          s8, a5, a6
                  slli         t6, s2, 0
                  sll          sp, s11, t6
                  and          a2, a2, a2
                  sll          t3, a0, t0
                  or           s2, s10, a0
                  sra          a7, a2, s1
                  srl          t6, a6, ra
                  xor          s9, s6, ra
                  addi         a6, a2, 503
                  sub          a7, t3, s2
                  srai         zero, t4, 0
                  and          s9, t6, a2
                  xor          t4, a5, s1
                  lui          a2, 207034
                  add          a5, a2, t4
                  nop
                  srli         s6, ra, 11
                  srai         t3, s1, 27
                  addi         s2, tp, -1829
                  slt          a3, a4, t2
                  sltiu        s8, t1, -202
                  sra          a5, a2, s10
                  slti         s7, s11, 1635
                  sltu         sp, s7, s3
                  and          a3, zero, sp
                  sll          a0, t6, a1
                  xor          s7, s9, gp
                  srl          t4, s9, tp
                  xori         zero, a5, -202
                  nop
                  and          s2, s8, s6
                  xor          t4, t6, t5
                  lui          s11, 109070
                  nop
                  slli         ra, tp, 21
                  sra          s7, a7, s11
                  or           t0, gp, s10
                  slt          a3, sp, a7
                  slt          s9, a1, t5
                  srli         s6, t3, 24
                  slli         s11, a2, 28
                  slti         a3, a1, -1546
                  srli         s3, s0, 7
                  or           ra, a4, a2
                  slti         t1, gp, 2046
                  sub          s7, t6, a6
                  sltu         gp, t3, t5
                  sub          a1, s5, t0
                  auipc        a1, 904364
                  sll          a5, s0, t6
                  add          s8, t1, s9
                  andi         a4, sp, -140
                  sltiu        s7, t2, -752
                  sub          t3, ra, zero
                  auipc        a6, 467357
                  add          a2, a2, a0
                  sra          a6, a4, s2
                  sll          s4, t4, a7
                  slt          s8, gp, t0
                  add          t4, s11, t3
                  slti         a6, a4, -1517
                  xori         a6, s7, 2025
                  sra          s7, a3, s1
                  xori         t6, t2, -1591
                  xor          a4, a5, a2
                  slt          s4, s6, s7
                  and          zero, a5, t4
                  srli         s11, s4, 6
                  and          t1, a6, a5
                  slt          s6, t4, s8
                  andi         t0, t0, -593
                  slli         a6, s6, 8
                  sltiu        a2, ra, -1195
                  or           s4, s3, t1
                  auipc        s9, 760299
                  add          a7, t6, s2
                  sra          sp, a5, a0
                  addi         a7, tp, 56
                  and          zero, s10, s4
                  nop
                  srai         s6, t6, 10
                  srai         t4, a1, 13
                  srl          s4, ra, gp
                  xori         t4, a7, 484
                  sltu         t3, zero, s10
                  xori         zero, zero, -1137
                  xor          t6, s11, gp
                  sltiu        t0, t4, -349
                  sltu         tp, a2, t5
                  nop
                  slli         a5, s4, 27
                  lui          a7, 923096
                  auipc        s2, 44709
                  sltu         a0, s2, t0
                  srli         s3, s8, 29
                  slt          a3, t1, s5
                  andi         a0, s2, 669
                  lui          s7, 424036
                  lui          t1, 879895
                  and          a3, s11, zero
                  xor          a1, t5, gp
                  sltiu        s3, s6, 1525
                  srli         a0, s2, 30
                  ori          a2, sp, -373
                  srli         a0, s0, 14
                  xor          s1, s4, s4
                  srai         s1, a2, 28
                  and          s3, t6, ra
                  ori          s6, s3, 962
                  and          gp, s8, a0
                  slti         a2, s9, -2037
                  auipc        s7, 715760
                  ori          a7, s0, -1893
                  or           t4, s8, t1
                  slli         t4, t6, 26
                  srai         a2, s9, 14
                  slt          s3, t5, tp
                  and          s3, t4, a4
                  add          a1, s5, s3
                  lui          s5, 476966
                  addi         a5, a4, -1971
                  slt          s6, sp, a6
                  sub          a4, t5, t1
                  srli         t2, s2, 18
                  lui          s8, 587716
                  slt          sp, s4, s4
                  sub          tp, a0, a6
                  xor          s5, a6, t3
                  auipc        s2, 872131
                  slti         zero, s1, -77
                  add          s3, gp, t2
                  nop
                  srli         s8, tp, 17
                  ori          s11, t0, 1400
                  sll          a0, s2, t2
                  andi         s1, tp, -201
                  or           s6, s8, t3
                  and          a5, t0, a0
                  andi         sp, t4, -455
                  srli         a4, s5, 0
                  andi         gp, ra, -2031
                  sra          s8, s8, s0
                  or           t1, a1, s4
                  xori         zero, s0, -571
                  addi         a5, t5, 1625
                  and          a3, tp, s3
                  srai         t1, a2, 31
                  xor          zero, a1, s2
                  ori          s1, s2, 430
                  and          a6, ra, gp
                  sltiu        a6, s5, -1576
                  lui          t6, 472730
                  sltiu        s9, s8, 1235
                  ori          s2, tp, -276
                  sltiu        t3, gp, -1348
                  xor          s9, s6, s9
                  auipc        s11, 237781
                  sll          s5, s11, s7
                  add          ra, s4, s10
                  sub          s11, a4, gp
                  sltu         a3, s10, a4
                  auipc        s1, 348914
                  sub          a0, ra, zero
                  ori          s5, zero, -57
                  srli         tp, zero, 12
                  slli         sp, s4, 11
                  sra          t1, s1, t5
                  add          s4, tp, s4
                  auipc        s8, 190148
                  slt          s7, s5, t4
                  srl          t3, s3, ra
                  and          a7, t6, ra
                  slti         s6, t2, 468
                  xori         t2, t2, 995
                  add          a2, s10, a7
                  andi         t6, sp, 593
                  ori          gp, a5, 1458
                  srl          s7, a0, a4
                  andi         t0, zero, -1399
                  slt          s7, s3, s3
                  lui          t4, 675362
                  slt          s8, a1, s3
                  sra          s6, a1, sp
                  sub          t4, t5, zero
                  slti         s1, s7, 1909
                  slt          s9, s3, s2
                  sltu         s8, t3, a6
                  sra          t3, s1, t4
                  sll          a2, a4, a7
                  sltiu        t2, s8, -1121
                  auipc        a6, 862473
                  nop
                  ori          s8, t6, 1039
                  slt          t2, t6, s5
                  slt          t1, a0, t0
                  srli         tp, s0, 23
                  slti         a3, s8, 1772
                  addi         a2, s8, 1277
                  slli         s2, s5, 27
                  auipc        t6, 916775
                  ori          a2, a2, -1198
                  sub          tp, a5, s3
                  srai         t2, a1, 29
                  slt          s5, a0, gp
                  xor          s11, ra, t4
                  andi         sp, a2, 224
                  srai         t6, gp, 2
                  sltu         a2, gp, s9
                  sra          s2, sp, s6
                  addi         a1, t2, -501
                  sll          t4, s10, a1
                  srli         ra, s2, 5
                  addi         s4, s10, -1615
                  sll          ra, a1, a6
                  slti         zero, a3, -1875
                  xori         t3, tp, 1258
                  sll          a7, s9, t3
                  sub          a2, a1, s3
                  xori         a5, sp, -1298
                  srai         sp, t4, 24
                  or           t6, a7, tp
                  xori         a2, t6, 1483
                  srai         a5, s7, 29
                  ori          a5, a6, -562
                  sub          tp, t6, s4
                  srli         s9, t0, 11
                  srai         tp, t1, 5
                  sub          s6, tp, ra
                  srli         t3, a5, 22
                  add          gp, s4, gp
                  sub          sp, a4, a7
                  and          s1, a4, s8
                  nop
                  sll          s5, s0, a0
                  srl          a1, s3, s3
                  sra          t0, t5, s8
                  sltiu        s6, ra, -888
                  srl          gp, t1, s11
                  sltiu        tp, t6, 923
                  lui          s4, 239758
                  auipc        a2, 251701
                  add          t2, s3, ra
                  lui          t0, 405305
                  srli         a4, t5, 30
                  xor          tp, s11, ra
                  auipc        a6, 516260
                  srli         s8, t5, 30
                  ori          zero, s5, -1794
                  or           s4, s8, zero
                  nop
                  lui          a2, 655790
                  or           a0, gp, s9
                  xor          s1, t6, t2
                  slli         tp, t2, 13
                  slt          gp, s10, s0
                  xori         gp, t4, -1101
                  ori          a3, t1, 1429
                  srai         s6, s1, 31
                  srl          t4, s11, t1
                  slt          a0, s11, t3
                  srl          a7, s9, s6
                  sll          a4, t2, s7
                  sra          s6, a7, a2
                  sltu         t4, t3, a6
                  slt          a2, s5, a3
                  xor          tp, t0, s10
                  xor          sp, s8, a7
                  sltiu        a3, a6, 100
                  nop
                  xor          s1, a0, s5
                  add          s6, s6, s11
                  lui          zero, 979550
                  add          s7, s0, s1
                  xor          a0, a1, s2
                  andi         zero, s1, 240
                  slti         s5, a7, 1108
                  xori         s8, s6, -176
                  auipc        t6, 964618
                  sub          a7, t5, s10
                  lui          t2, 782111
                  addi         gp, t3, -577
                  nop
                  sltiu        t0, a1, 360
                  sub          zero, s11, a4
                  sltu         s5, s3, t2
                  add          gp, s3, a4
                  slli         s8, a2, 13
                  add          ra, s11, ra
                  lui          t0, 33075
                  srl          gp, s1, a3
                  slli         s5, a2, 20
                  nop
                  xor          s5, t5, s0
                  sra          t0, ra, a5
                  slt          a5, zero, t0
                  nop
                  sll          s8, gp, s6
                  srl          t0, ra, s10
                  sltu         t3, t2, s5
                  srl          a2, s8, tp
                  srai         s3, a2, 22
                  and          gp, s7, s2
                  nop
                  slt          t6, s0, t5
                  andi         sp, s2, 1646
                  sltu         s1, a3, s1
                  sub          s7, a6, a1
                  srai         sp, tp, 6
                  slli         a3, t2, 9
                  andi         a6, a4, -1846
                  and          a4, s1, a1
                  srai         sp, s4, 30
                  or           s11, t6, tp
                  sll          s6, s9, s8
                  slt          t2, s10, s0
                  sll          s9, tp, s0
                  sll          ra, s9, s9
                  andi         a1, s9, -1831
                  or           s4, a4, a6
                  sra          s7, s3, s11
                  srl          s1, a7, s9
                  andi         s1, s7, 450
                  andi         s6, t0, -887
                  ori          s2, t4, 1974
                  lui          s3, 506700
                  la x30, test_done
                  jalr x0, x30, 0
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
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x8, x26, zero
                  csrr x9, 0x300 # MSTATUS
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 31
                  bne x9, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x9, 0x341 # MEPC
                  csrr x9, 0x342 # MCAUSE
                  li x15, 0x3 # BREAKPOINT
                  beq x9, x15, ebreak_handler
                  li x15, 0x8 # ECALL_UMODE
                  beq x9, x15, ecall_handler
                  li x15, 0x9 # ECALL_SMODE
                  beq x9, x15, ecall_handler
                  li x15, 0xb # ECALL_MMODE
                  beq x9, x15, ecall_handler
                  li x15, 0x1
                  beq x9, x15, instr_fault_handler
                  li x15, 0x5
                  beq x9, x15, load_fault_handler
                  li x15, 0x7
                  beq x9, x15, store_fault_handler
                  li x15, 0xc
                  beq x9, x15, pt_fault_handler
                  li x15, 0xd
                  beq x9, x15, pt_fault_handler
                  li x15, 0xf
                  beq x9, x15, pt_fault_handler
                  li x15, 0x2 # ILLEGAL_INSTRUCTION
                  beq x9, x15, illegal_instr_handler
                  csrr x15, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

ecall_handler:    
                  la x9, _start
                  sw x0, 0(x9)
                  sw x1, 4(x9)
                  sw x2, 8(x9)
                  sw x3, 12(x9)
                  sw x4, 16(x9)
                  sw x5, 20(x9)
                  sw x6, 24(x9)
                  sw x7, 28(x9)
                  sw x8, 32(x9)
                  sw x9, 36(x9)
                  sw x10, 40(x9)
                  sw x11, 44(x9)
                  sw x12, 48(x9)
                  sw x13, 52(x9)
                  sw x14, 56(x9)
                  sw x15, 60(x9)
                  sw x16, 64(x9)
                  sw x17, 68(x9)
                  sw x18, 72(x9)
                  sw x19, 76(x9)
                  sw x20, 80(x9)
                  sw x21, 84(x9)
                  sw x22, 88(x9)
                  sw x23, 92(x9)
                  sw x24, 96(x9)
                  sw x25, 100(x9)
                  sw x26, 104(x9)
                  sw x27, 108(x9)
                  sw x28, 112(x9)
                  sw x29, 116(x9)
                  sw x30, 120(x9)
                  sw x31, 124(x9)
                  la x30, write_tohost
                  jalr x0, x30, 0

instr_fault_handler:
                  add x26, x8, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

load_fault_handler:
                  add x26, x8, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

store_fault_handler:
                  add x26, x8, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

ebreak_handler:   
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x26, x8, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

illegal_instr_handler:
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x26, x8, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x9, 0x300 # MSTATUS;
                  csrr  x9, 0x304 # MIE;
                  csrr  x9, 0x344 # MIP;
                  csrrc x9, 0x344, x9 # MIP;
                  add x26, x8, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
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
