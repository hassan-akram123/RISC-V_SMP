.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x14, h0_start
jalr x0, x14, 0
h0_start:
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x17, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 0
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
                  li x0, 0xf9afc17b
                  li x1, 0x1
                  li x2, 0x3
                  li x3, 0xfe34cbf3
                  li x4, 0x0
                  li x5, 0x29a1da62
                  li x6, 0x0
                  li x7, 0x0
                  li x8, 0x80000000
                  li x9, 0x5
                  li x10, 0xf7db0b82
                  li x11, 0xf58e9c8c
                  li x12, 0x80000000
                  li x13, 0x6
                  li x14, 0xcbb85ed5
                  li x15, 0x0
                  li x16, 0xf2f3d8cc
                  li x18, 0x7
                  li x19, 0xfd3fd0b0
                  li x20, 0x0
                  li x21, 0x8a80d761
                  li x22, 0xf59c32b3
                  li x23, 0xf
                  li x24, 0xf059224e
                  li x25, 0x80000000
                  li x26, 0x80000000
                  li x27, 0x0
                  li x29, 0xf0ffdc54
                  li x30, 0xf
                  li x31, 0x3fd4d45
                  la x28, user_stack_end
main:             li           s4, 0xe91126a5 #start riscv_int_numeric_corner_stream_6
                  li           a3, 0xfd5ded5a
                  li           s1, 0xffffffff
                  li           s0, 0x0
                  li           s10, 0x0
                  li           t0, 0xbd2c6671
                  li           gp, 0x80000000
                  li           a5, 0x80000000
                  li           a1, 0xffffffff
                  li           t1, 0x80000000
                  nop
                  nop
                  lui          s4, 530061
                  sub          a1, t0, t0
                  nop
                  nop
                  addi         a3, s0, 79
                  sub          t0, t1, gp
                  add          s4, t1, s0
                  sub          s1, s1, t0
                  auipc        t0, 306730
                  sub          s1, t1, t0
                  auipc        gp, 125197
                  nop
                  sub          t0, a3, a1
                  lui          a1, 670928
                  nop
                  lui          gp, 197258
                  lui          a5, 341629
                  sub          s4, t1, s10
                  addi         s0, a5, -882
                  auipc        a3, 245732
                  sub          a5, s1, gp
                  addi         a3, gp, 982
                  auipc        a5, 853412
                  addi         s0, s0, -1444
                  auipc        s1, 968000
                  add          s4, a1, s1
                  lui          a1, 1018643
                  sub          gp, s10, a3 #end riscv_int_numeric_corner_stream_6
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           s9, 0xffffffff
                  li           a5, 0xffffffff
                  li           ra, 0x0
                  li           t6, 0x80000000
                  li           s11, 0xaf8a6b78
                  li           s1, 0xffffffff
                  li           t2, 0x0
                  li           s3, 0xffffffff
                  li           t5, 0x9cd7714c
                  sub          t6, s3, ra
                  lui          ra, 570317
                  nop
                  nop
                  addi         t5, s1, -43
                  sub          a5, t2, s9
                  sub          s9, s3, a5
                  lui          ra, 597884
                  addi         t5, ra, 1306
                  addi         s9, t2, 1970
                  lui          s3, 898177
                  add          a1, t2, s9
                  lui          s3, 333216
                  addi         a1, t2, 940
                  addi         s3, a1, -735
                  addi         a5, t6, -1116
                  sub          a1, a1, s1
                  add          a5, s9, a1
                  add          s1, s3, ra
                  nop
                  addi         t5, a5, -524
                  sub          s9, s9, t5
                  sub          s1, s3, a1
                  sub          a1, ra, s1
                  addi         s11, t2, -1775
                  auipc        a5, 296593
                  lui          s11, 553484
                  sub          s1, ra, s1 #end riscv_int_numeric_corner_stream_19
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           s11, 0xe40c7fad
                  li           s9, 0xffffffff
                  li           t5, 0xd83f401d
                  li           s0, 0x0
                  li           tp, 0x0
                  li           s5, 0xffffffff
                  li           a0, 0x0
                  li           t2, 0x80000000
                  li           s7, 0x0
                  sub          s4, tp, t5
                  add          s4, s9, s0
                  nop
                  lui          t5, 846186
                  lui          s11, 952905
                  lui          a0, 848352
                  addi         s0, s0, -141
                  add          s11, s11, s0
                  add          s7, s11, t5
                  nop
                  auipc        s4, 104053
                  add          t2, s7, s11
                  add          s11, s0, s5
                  addi         s11, tp, -516
                  nop
                  sub          s9, s11, t5
                  sub          t5, t5, t5
                  lui          s4, 373819
                  auipc        s7, 678937
                  auipc        s0, 350932
                  auipc        s0, 220097
                  lui          a0, 202628
                  addi         s9, s4, 779 #end riscv_int_numeric_corner_stream_18
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           a3, 0x1211d473
                  li           s9, 0x0
                  li           s6, 0x80000000
                  li           s10, 0xf43c1878
                  li           t0, 0x80000000
                  li           t5, 0x0
                  li           t2, 0x0
                  li           ra, 0x80000000
                  li           s2, 0xffffffff
                  sub          a5, a5, t2
                  sub          ra, t2, s2
                  add          a5, a3, t2
                  add          s2, a5, t2
                  addi         s9, s10, 10
                  lui          t5, 946077
                  addi         s2, s9, -644
                  addi         ra, t0, -1863
                  auipc        s2, 1045127
                  addi         t2, s2, 250
                  sub          a5, t5, s6
                  nop
                  nop
                  nop
                  auipc        t0, 117354
                  lui          s2, 425815
                  sub          s10, a5, t0
                  auipc        t0, 462183
                  nop
                  sub          a5, t5, s10
                  sub          t0, s10, t5
                  auipc        a3, 185651
                  sub          ra, t2, ra
                  nop
                  auipc        t2, 293385
                  auipc        s2, 194811
                  lui          s6, 253219 #end riscv_int_numeric_corner_stream_11
                  li           t5, 0x0 #start riscv_int_numeric_corner_stream_13
                  li           s8, 0x80000000
                  li           s4, 0x0
                  li           t2, 0x0
                  li           s6, 0x80000000
                  li           a0, 0x0
                  li           t4, 0x0
                  li           t0, 0x0
                  li           t6, 0x80000000
                  li           s2, 0x450cbe35
                  addi         t2, t6, 194
                  sub          t4, s6, t6
                  sub          t4, t5, t5
                  auipc        s8, 285706
                  add          t2, a0, t6
                  auipc        t6, 723207
                  lui          t4, 41718
                  auipc        t6, 460854
                  auipc        s2, 575568
                  auipc        s4, 52389
                  auipc        s2, 958595
                  addi         t5, s2, 886
                  sub          s4, t4, s2
                  add          t5, t5, t0
                  add          t6, t4, s6
                  sub          s2, s6, s2
                  addi         t2, t6, -1193
                  sub          s4, s4, t5
                  lui          s4, 165392
                  add          a0, s2, s4
                  add          s4, t6, t4
                  addi         s8, s8, -1240
                  nop
                  add          t5, t6, t4
                  add          a0, a0, s4
                  auipc        s8, 782466
                  auipc        t4, 21293
                  add          s8, s6, t4 #end riscv_int_numeric_corner_stream_13
                  li           s9, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           s11, 0xffffffff
                  li           sp, 0x80000000
                  li           a6, 0x0
                  li           s6, 0x80000000
                  li           s7, 0x0
                  li           s10, 0xffffffff
                  li           gp, 0x0
                  li           s0, 0x80000000
                  li           t1, 0xffffffff
                  add          s10, s7, sp
                  lui          s6, 157322
                  addi         s10, gp, -1865
                  nop
                  auipc        s0, 1001125
                  auipc        t1, 537999
                  addi         s7, a6, -1147
                  lui          t1, 158087
                  sub          s0, gp, t1
                  lui          s7, 376071
                  sub          s6, s9, sp
                  add          s11, gp, s7
                  auipc        s6, 234560
                  nop
                  nop
                  lui          sp, 1027545
                  nop
                  sub          s9, s6, sp
                  addi         a6, s10, 1259
                  lui          a6, 1030656
                  sub          s10, s7, a6
                  lui          s9, 267922
                  addi         s10, gp, 2020
                  auipc        s9, 685852
                  nop
                  addi         s0, gp, 1004
                  nop
                  nop
                  add          s7, t1, sp
                  sub          t1, t1, s11 #end riscv_int_numeric_corner_stream_14
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           t1, 0x80000000
                  li           s5, 0x0
                  li           s8, 0x0
                  li           gp, 0x0
                  li           a3, 0x6a84a5db
                  li           s3, 0x80000000
                  li           ra, 0x764ae93c
                  li           t0, 0xffffffff
                  li           t5, 0x80000000
                  add          s5, a3, s3
                  addi         gp, s9, -1161
                  sub          s5, s9, ra
                  auipc        t5, 502874
                  sub          s8, t1, t1
                  add          gp, s9, s5
                  addi         s3, t5, -1527
                  add          s5, t1, s9
                  nop
                  sub          s8, gp, t1
                  sub          s3, ra, gp
                  addi         a3, s5, 1383
                  sub          t0, s5, t1
                  lui          t0, 332805
                  sub          s8, s5, gp
                  sub          ra, s8, s9
                  addi         a3, s9, 637
                  addi         s5, t0, -1356
                  sub          gp, s8, t1 #end riscv_int_numeric_corner_stream_1
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           s11, 0x80000000
                  li           gp, 0x8113683a
                  li           s7, 0xffffffff
                  li           sp, 0x80000000
                  li           s6, 0x0
                  li           t0, 0xffffffff
                  li           s2, 0xd3d2e08f
                  li           t1, 0x80000000
                  li           a3, 0x80000000
                  addi         a3, tp, 2009
                  addi         s2, t1, -1965
                  auipc        tp, 962743
                  auipc        t0, 894601
                  add          s7, t1, gp
                  sub          s11, s7, gp
                  lui          tp, 808473
                  addi         s2, gp, 975
                  addi         s6, s7, 438
                  addi         s7, sp, -97
                  lui          s6, 685693
                  nop
                  auipc        t0, 568934
                  addi         t0, t0, 415
                  auipc        s6, 253182 #end riscv_int_numeric_corner_stream_3
                  li           a2, 0x81f4c2c #start riscv_int_numeric_corner_stream_15
                  li           s5, 0x15a785de
                  li           s4, 0xf9f40924
                  li           s10, 0x0
                  li           t5, 0xc9835bfe
                  li           ra, 0xd2cdf432
                  li           s9, 0xffffffff
                  li           tp, 0x0
                  li           s3, 0x0
                  li           t6, 0x9330f7cb
                  auipc        a2, 753693
                  lui          a2, 363992
                  nop
                  sub          a2, s9, s4
                  addi         tp, s5, 383
                  add          s4, s4, s9
                  add          a2, t5, t5
                  lui          s9, 182601
                  addi         t5, t5, -265
                  nop
                  nop
                  auipc        s4, 986834
                  addi         s9, s10, 1250
                  lui          s4, 836792
                  lui          ra, 437206
                  add          s9, s9, s10
                  add          s10, t5, s9
                  auipc        s4, 489926
                  add          a2, s5, s10
                  addi         a2, t6, 992
                  addi         s4, s4, 238
                  addi         t6, tp, 437
                  addi         t6, ra, -1681
                  add          s3, ra, ra
                  sub          a2, t6, t6
                  add          s4, ra, s5
                  addi         tp, s3, -1821
                  auipc        t5, 527124
                  add          s5, a2, s10
                  sub          t5, s3, s3 #end riscv_int_numeric_corner_stream_15
                  sub          t0, s7, t3
                  srai         t2, a5, 3
                  xori         s10, s1, -872
                  slli         s1, s4, 0
                  and          s6, s2, s6
                  sll          a0, t4, a3
                  addi         s5, s2, 1146
                  nop
                  sltu         a3, a2, s11
                  sltiu        t6, a2, 1443
                  auipc        a0, 204224
                  nop
                  slt          t2, s4, s6
                  slli         s8, s8, 16
                  lui          a6, 478795
                  srli         s7, gp, 4
                  sltiu        s0, a1, 975
                  lui          t1, 422688
                  sltu         s7, t1, s8
                  or           s1, t1, tp
                  xor          s10, tp, s1
                  srai         t5, s7, 28
                  sltiu        s8, a4, -176
                  and          s8, a4, a0
                  andi         s2, t1, -397
                  sll          s8, t5, t5
                  xori         tp, s4, -878
                  slli         t2, s10, 11
                  auipc        a6, 242090
                  sra          a1, sp, t2
                  lui          a1, 372280
                  nop
                  andi         t2, sp, 1247
                  sltiu        s7, zero, 467
                  slt          s3, zero, gp
                  slti         s7, s8, 591
                  nop
                  sll          s4, s0, s11
                  nop
                  or           s8, zero, s10
                  addi         zero, s4, 187
                  slti         t1, a0, 1184
                  ori          gp, s11, 1724
                  addi         t4, t0, -541
                  and          a2, a3, t5
                  slti         s1, t5, 782
                  and          s10, s8, s3
                  ori          s8, a4, -155
                  slti         t1, a3, -1686
                  andi         s3, s7, 1176
                  auipc        t1, 673951
                  xori         sp, a0, -695
                  sll          t0, t1, s9
                  auipc        gp, 855390
                  ori          t4, s4, -726
                  slti         a2, t1, -1034
                  andi         a3, t5, 1977
                  lui          a2, 20930
                  sll          s3, s10, s11
                  xor          t0, s3, t2
                  ori          t2, s6, 936
                  sra          s5, a5, tp
                  slli         t4, s2, 11
                  lui          a1, 860051
                  auipc        t1, 105016
                  auipc        s6, 106073
                  ori          a5, t1, -476
                  slt          s2, s11, t1
                  addi         s0, a1, 251
                  add          s5, ra, s11
                  auipc        s3, 859455
                  lui          s7, 1029588
                  xor          zero, t3, t5
                  srli         zero, a4, 13
                  sltu         s1, s3, s1
                  addi         t1, sp, 1996
                  srl          s0, s1, a4
                  slti         t6, gp, 1292
                  xor          a5, t6, t4
                  sra          sp, s9, s9
                  srl          t5, s9, t0
                  lui          zero, 644146
                  slli         s8, s2, 25
                  andi         s2, s7, -671
                  xori         t5, a0, 1846
                  xori         t6, t1, 1537
                  xori         t4, a6, -973
                  or           s0, tp, gp
                  and          t2, a3, s7
                  srli         zero, t0, 31
                  slti         a3, s0, -731
                  sll          s1, s5, a7
                  addi         s3, a2, -729
                  srli         s1, s7, 15
                  sltu         a1, gp, s10
                  xor          gp, a1, t6
                  addi         s7, s0, -460
                  srli         a5, s1, 11
                  auipc        a6, 222845
                  andi         t4, a7, -1487
                  slti         t2, a5, -1401
                  nop
                  lui          s1, 461440
                  slli         a3, zero, 23
                  slli         sp, s4, 22
                  slti         t1, s8, -1110
                  srli         sp, gp, 23
                  srl          s3, t6, s7
                  xor          tp, s9, tp
                  srai         t5, s2, 8
                  slt          t6, a3, s3
                  xori         sp, zero, -374
                  slti         zero, s5, -428
                  sll          s4, s3, s9
                  sub          a6, t0, s7
                  auipc        s6, 820789
                  and          tp, s2, tp
                  xor          zero, a7, a5
                  slli         a1, a6, 13
                  srli         t6, a5, 16
                  srl          t5, s3, a7
                  xor          t5, tp, t4
                  add          a1, a4, t1
                  slt          t1, a7, zero
                  slt          a2, a1, s11
                  xor          t4, t0, ra
                  xor          s5, t1, t4
                  or           zero, s11, t1
                  sub          a6, a5, s7
                  sra          s6, a5, t4
                  sra          tp, a6, gp
                  srai         s9, t3, 29
                  sltu         a0, s0, t5
                  sll          ra, t2, s7
                  slt          t5, s4, a7
                  nop
                  sub          t4, t2, t5
                  sll          s5, s9, s3
                  sub          s11, t4, zero
                  xor          s5, t6, s2
                  ori          s1, t2, 2026
                  sll          s8, s5, t0
                  xor          s6, gp, a7
                  auipc        t2, 195889
                  or           s4, s1, s0
                  slli         tp, t0, 9
                  addi         a2, a7, -1279
                  srai         a0, a1, 11
                  sub          s6, a4, s8
                  sltu         t2, s2, t4
                  sltu         a0, s2, s6
                  slt          a0, a0, gp
                  add          s8, s6, sp
                  addi         t4, s0, -832
                  nop
                  or           s1, t3, ra
                  sltu         ra, t2, a0
                  xori         a1, a2, -940
                  nop
                  slti         s6, t0, 1152
                  slti         s4, ra, 248
                  sltu         a6, t4, a0
                  xori         gp, a6, -687
                  xor          zero, tp, s0
                  add          sp, tp, s6
                  nop
                  sub          a3, s8, a7
                  ori          t5, t2, 1322
                  slti         s7, t3, -418
                  sltiu        t1, s8, -31
                  nop
                  srli         a5, t0, 29
                  sub          t6, t3, s10
                  ori          s0, s6, 1546
                  slt          s2, t0, s10
                  auipc        tp, 179415
                  xor          a1, s10, s3
                  slti         s10, zero, 817
                  nop
                  xori         a6, sp, 22
                  sll          s5, s6, a3
                  xori         s1, s10, -222
                  slt          ra, s11, t1
                  auipc        zero, 489493
                  auipc        gp, 539856
                  srli         s0, tp, 24
                  sltu         s9, a6, s5
                  andi         t0, s0, 1859
                  sltu         a6, t5, s2
                  or           a3, s3, s0
                  srai         sp, s10, 15
                  addi         ra, t2, -1825
                  srl          sp, s6, a4
                  sll          a2, ra, a7
                  ori          a2, t1, -549
                  sra          t6, s7, s6
                  ori          t4, a3, -1071
                  srli         s2, t3, 10
                  or           s10, a1, s2
                  xor          s1, s10, s0
                  and          ra, sp, s3
                  srli         a2, a7, 14
                  add          s2, s11, tp
                  ori          s10, s11, 1972
                  nop
                  lui          s9, 724586
                  lui          a0, 45950
                  slli         a1, a5, 23
                  sub          s8, a1, t2
                  andi         t4, s9, 1335
                  or           s1, t0, a5
                  addi         tp, t5, -1799
                  sll          s3, a7, s9
                  add          s3, s2, ra
                  slt          s10, sp, s5
                  sra          s6, s7, s0
                  sub          a5, t1, tp
                  slti         gp, t2, 1947
                  andi         a1, s5, 484
                  sltu         t2, s7, s5
                  slti         a5, t5, 1058
                  srli         s5, a3, 28
                  srli         s1, sp, 19
                  ori          s7, t2, -718
                  srli         t5, a7, 25
                  lui          tp, 607462
                  lui          s4, 596208
                  andi         a5, s10, 542
                  addi         gp, zero, 186
                  srl          sp, tp, a2
                  or           s0, t3, gp
                  ori          t2, s9, 1854
                  lui          t5, 553375
                  nop
                  sll          t0, t0, s8
                  srli         a5, a0, 3
                  auipc        t0, 580904
                  sra          a0, s7, a3
                  sltu         a0, t2, tp
                  auipc        s7, 167622
                  sub          s11, s2, s5
                  slt          s7, a5, t1
                  andi         a0, a3, 192
                  nop
                  sll          t2, a7, s8
                  addi         ra, a6, -303
                  sub          t2, sp, a5
                  sub          s7, a1, t0
                  slt          zero, a6, a6
                  sltu         t2, s9, t1
                  sra          s4, ra, a4
                  add          s10, ra, gp
                  ori          s8, s4, 1955
                  slti         s1, s0, -788
                  sltu         s7, a0, t5
                  and          s1, s8, s7
                  sub          t5, s4, a5
                  andi         s6, a7, -1289
                  sub          s4, a1, t3
                  sub          s8, s8, t6
                  ori          s3, s10, -307
                  slti         s11, s2, -1507
                  sub          s10, a2, t0
                  xori         a0, a2, -74
                  xor          s11, a3, s9
                  nop
                  slli         t5, a4, 30
                  sll          s4, tp, s0
                  lui          zero, 965362
                  sll          s5, gp, s1
                  srl          t5, s11, s7
                  addi         ra, t3, 90
                  ori          t0, t6, -1980
                  lui          a5, 52762
                  xor          a1, s5, s9
                  sra          a2, a3, t1
                  and          s3, s6, s10
                  ori          gp, s7, 310
                  andi         s1, t3, -384
                  slti         s6, t0, -475
                  sra          s9, t0, s8
                  sltiu        a6, s9, -399
                  slli         s0, t5, 22
                  add          gp, t5, a7
                  auipc        a2, 868546
                  auipc        a0, 144938
                  slti         s8, t2, 1121
                  slt          a5, a7, sp
                  nop
                  srai         s11, t5, 10
                  add          s7, s4, zero
                  li           s10, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           s4, 0x80000000
                  li           a3, 0x80000000
                  li           t2, 0x4df412b5
                  li           gp, 0x80000000
                  li           s7, 0x0
                  li           a6, 0x4c8eaba0
                  li           a1, 0x0
                  li           a5, 0x80000000
                  li           a0, 0xffffffff
                  sub          s7, s7, a5
                  nop
                  nop
                  nop
                  sub          a1, a3, a5
                  sub          t2, a5, a0
                  add          a1, a3, a3
                  sub          a5, s4, t2
                  lui          a3, 264907
                  auipc        a6, 936829
                  sub          t2, a6, a3
                  auipc        gp, 898450
                  nop
                  lui          a5, 337967
                  nop
                  nop
                  add          a6, a1, s7
                  nop
                  addi         s10, a1, -1915
                  sub          a0, s10, s10 #end riscv_int_numeric_corner_stream_0
                  add          s4, s10, a0
                  sub          t6, s1, t3
                  or           s10, t3, s9
                  addi         zero, s5, 1730
                  sll          a5, s3, t1
                  auipc        s5, 1002965
                  sub          s11, s1, a6
                  or           s8, a5, s10
                  nop
                  or           t6, sp, s8
                  srai         a0, s9, 13
                  or           ra, s2, tp
                  slli         t4, s3, 30
                  srai         s2, tp, 0
                  ori          t6, s3, 585
                  srai         s0, a3, 24
                  slti         t0, t0, 37
                  sub          s1, s8, sp
                  nop
                  addi         t5, a1, 936
                  srai         t1, gp, 10
                  srli         s3, t4, 16
                  or           gp, s9, t0
                  addi         t4, s4, 512
                  srai         s5, t2, 22
                  slti         s0, a1, 769
                  sra          sp, a0, s1
                  sub          t2, a2, s11
                  slti         t6, a5, 1475
                  srai         a6, s4, 17
                  xori         s3, a4, -1982
                  add          gp, gp, s2
                  and          t4, a1, a6
                  srl          s5, a1, t6
                  sltu         s4, t6, s1
                  xor          a2, t2, a0
                  sub          sp, a2, s6
                  sll          t1, a5, tp
                  srl          s0, s11, s8
                  srl          t6, a5, s5
                  sub          s8, s9, s5
                  xor          t5, a0, t2
                  sltiu        s2, s6, 1628
                  add          ra, t4, t3
                  nop
                  xor          zero, s3, s4
                  xor          gp, sp, tp
                  sltu         t0, s1, a6
                  srl          s3, s6, t6
                  sltu         s0, t3, zero
                  auipc        s10, 315511
                  srl          s9, a6, a4
                  srli         s1, t1, 13
                  sll          zero, sp, t5
                  add          s1, tp, s2
                  sll          s1, t2, s2
                  nop
                  xori         s6, t5, 1940
                  ori          a5, a2, 1306
                  auipc        s1, 595011
                  sub          zero, t5, s6
                  slt          a6, a6, s8
                  sub          s6, s1, a7
                  andi         a1, a3, 559
                  andi         a6, t4, -651
                  srl          a2, s4, t2
                  srai         tp, t2, 18
                  nop
                  addi         s10, a3, 1098
                  andi         sp, s5, -1289
                  sra          a1, tp, s2
                  or           a1, s9, s3
                  or           a2, tp, t3
                  andi         t5, sp, 377
                  xor          t0, zero, a2
                  lui          s0, 498221
                  sltu         s10, s1, tp
                  sll          s2, tp, a0
                  xor          s1, t6, a5
                  addi         t1, gp, 24
                  srai         s4, s1, 23
                  sub          tp, s3, a2
                  nop
                  sltiu        a0, a0, 733
                  add          t1, s0, t0
                  ori          s1, a0, -41
                  srl          t4, s8, a1
                  sra          a5, s0, a2
                  slt          gp, s2, s7
                  xor          tp, s3, a2
                  andi         t6, t3, 1740
                  and          t0, s10, s11
                  srli         a2, tp, 25
                  addi         s6, s11, 725
                  sra          s7, s1, a7
                  add          s7, s3, a6
                  or           t1, s6, s10
                  slti         a6, a1, -813
                  slli         a2, t6, 6
                  sub          zero, s11, a1
                  xor          a1, s4, t4
                  auipc        a6, 671703
                  sra          s4, s2, zero
                  slti         s6, t4, -1237
                  lui          tp, 50927
                  addi         ra, a2, -936
                  lui          s4, 77870
                  or           s11, zero, s5
                  ori          s3, tp, 1364
                  slt          s5, s6, s9
                  srai         s5, s6, 15
                  auipc        zero, 86812
                  auipc        t6, 332212
                  sltiu        a1, ra, -768
                  slli         sp, s10, 18
                  or           ra, a6, s2
                  xor          s0, a2, s6
                  sltu         s3, s2, zero
                  auipc        t6, 322565
                  or           s10, a6, s10
                  and          t1, s11, gp
                  sll          s2, t4, s3
                  slti         a1, t5, -413
                  add          t6, s8, t1
                  sll          s9, sp, s6
                  xori         a3, a5, 1808
                  nop
                  add          a3, t0, ra
                  lui          s11, 610326
                  slt          s1, s0, a7
                  srai         s6, sp, 7
                  andi         s4, a1, -1321
                  sra          a3, s2, a1
                  xor          s2, s3, a4
                  xor          s4, a1, a1
                  ori          gp, s0, -1319
                  auipc        s7, 1041556
                  sra          t2, a6, s9
                  sra          a5, ra, s10
                  srl          tp, a7, sp
                  slt          s2, a7, a4
                  slt          s0, tp, t3
                  addi         a1, t2, -853
                  and          t2, gp, t1
                  sub          a0, s4, s6
                  sltu         a5, s11, tp
                  or           s1, s10, s6
                  lui          t4, 452943
                  slt          a5, a2, t6
                  sll          t0, a5, t3
                  add          s2, s9, s11
                  slt          s0, a3, s3
                  sll          a6, t3, t3
                  slli         a1, tp, 9
                  srl          zero, t2, a4
                  srl          s9, a4, a6
                  sltiu        s4, t6, -454
                  srai         a1, s4, 24
                  or           sp, a4, a6
                  srai         tp, t5, 7
                  sra          a1, s8, a2
                  lui          s0, 414188
                  srai         ra, s1, 12
                  sltu         t4, tp, s2
                  lui          t4, 388172
                  srl          sp, a2, s0
                  srli         ra, a3, 31
                  auipc        a5, 1031106
                  addi         s7, s1, 561
                  auipc        a5, 476656
                  sll          gp, a2, s11
                  slti         t1, a7, 962
                  xor          a3, s11, a2
                  nop
                  lui          a3, 141540
                  xori         a0, s7, 2006
                  srl          zero, t5, s2
                  nop
                  nop
                  addi         a6, a0, 1426
                  sll          s5, a4, a6
                  and          s3, tp, s6
                  slli         gp, a1, 14
                  sub          s0, a3, zero
                  xor          a1, s0, s7
                  xor          s2, s3, t6
                  xori         a2, a7, 1663
                  sltu         a3, s10, s8
                  sltu         a5, gp, zero
                  srl          s4, t2, a4
                  andi         a1, t4, 1737
                  or           t5, s4, t6
                  sll          s6, gp, a4
                  lui          s8, 930706
                  sra          s3, t1, s1
                  auipc        s0, 16054
                  auipc        s10, 478417
                  addi         a0, s2, 149
                  xori         s4, t0, 213
                  sub          a6, a2, s10
                  srli         s9, a2, 5
                  srai         a6, a6, 16
                  sltu         a2, t1, t2
                  andi         ra, s4, -421
                  xor          a5, t5, t5
                  add          a3, a2, zero
                  or           ra, t4, a2
                  or           t2, a5, a6
                  add          sp, gp, gp
                  auipc        sp, 148816
                  nop
                  sltu         t4, a5, s10
                  sll          a0, sp, s1
                  add          sp, t4, s3
                  and          t5, a1, t6
                  add          a2, s0, s7
                  nop
                  add          s2, t2, s7
                  ori          s8, s11, -1930
                  xor          s11, ra, s8
                  slli         a2, s6, 23
                  srl          ra, t1, t6
                  srai         s11, gp, 18
                  sltiu        s7, s6, -45
                  or           s7, t3, s3
                  ori          a3, t1, -689
                  sra          s10, tp, sp
                  slt          a2, s5, tp
                  slli         s8, t1, 28
                  nop
                  sra          s0, t1, a5
                  sra          t6, t6, a6
                  ori          t1, s10, 654
                  srl          s11, t5, a3
                  xor          t5, s3, s9
                  or           s8, t2, a5
                  sra          s9, s11, a2
                  slli         s6, t1, 6
                  lui          s10, 420504
                  slti         t2, s1, 783
                  slli         s8, a4, 3
                  srai         s11, t1, 29
                  slti         ra, a1, 53
                  xor          a2, s2, s7
                  xor          a6, a6, s8
                  add          s9, gp, t5
                  slti         a5, a4, 952
                  and          s9, s5, t6
                  srl          zero, t2, s5
                  sltiu        s9, s5, 1757
                  add          a6, t5, t0
                  lui          s3, 923282
                  sra          t4, a3, s4
                  lui          s2, 188032
                  ori          t4, s10, -252
                  slti         s2, a7, -1294
                  addi         t2, a7, -918
                  auipc        a3, 253192
                  andi         s11, t0, 844
                  sll          s2, s0, s11
                  and          a6, s2, a0
                  srai         zero, a6, 1
                  ori          a5, s0, 629
                  addi         gp, a4, 953
                  and          s7, s3, tp
                  sra          t0, s8, s0
                  or           s10, s7, s6
                  sll          s4, a0, a7
                  slli         sp, ra, 13
                  sll          a0, a3, t6
                  andi         t2, s4, -402
                  slt          t4, s3, s0
                  slli         s4, t1, 23
                  srai         a2, t2, 11
                  sltiu        tp, s2, 1706
                  srli         a2, s1, 29
                  slt          tp, s8, t0
                  and          a5, s7, a1
                  slli         s8, s6, 25
                  auipc        s11, 495682
                  auipc        t5, 151856
                  nop
                  xori         gp, s9, -1506
                  addi         s8, tp, 603
                  sub          s7, s11, t3
                  srl          t0, s11, s3
                  or           zero, s9, t0
                  slti         s10, zero, 1946
                  and          a2, a2, t0
                  or           s6, a4, s1
                  srli         gp, sp, 26
                  slli         s11, s9, 3
                  slt          a6, s1, t1
                  li           s1, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           s2, 0x80000000
                  li           a0, 0xffffffff
                  li           sp, 0xffffffff
                  li           s4, 0x80000000
                  li           gp, 0x80000000
                  li           t4, 0xa4ea9338
                  li           s11, 0x74ec919a
                  li           t2, 0x80000000
                  li           s10, 0x0
                  addi         s4, a0, 243
                  add          s10, s10, s4
                  auipc        gp, 281289
                  addi         t4, s11, 522
                  sub          s2, sp, s4
                  lui          t4, 8955
                  sub          s10, t4, a0
                  add          gp, s10, s2
                  lui          s11, 8142
                  auipc        s10, 636834
                  lui          sp, 564271
                  add          sp, s1, s11
                  lui          s2, 1019163
                  addi         s4, s1, -1121
                  nop
                  auipc        s1, 392730
                  add          s11, s10, s10
                  auipc        s10, 190434
                  addi         sp, t4, -1672
                  sub          sp, s4, sp
                  lui          s10, 583182
                  nop #end riscv_int_numeric_corner_stream_4
                  add          a0, sp, s4
                  sra          t2, a0, a0
                  lui          t6, 73719
                  add          t2, a5, s7
                  ori          a3, t4, -1076
                  sll          a3, t6, s8
                  sltu         t2, a0, s6
                  add          s10, s1, s3
                  xor          tp, s8, t5
                  sltu         gp, s0, s8
                  andi         a2, ra, -555
                  sltu         gp, tp, t4
                  sltiu        s8, s0, 847
                  xor          s4, s6, t3
                  srli         ra, tp, 1
                  auipc        s8, 144086
                  addi         a5, s6, -1587
                  sra          a3, s8, s2
                  srl          s5, s5, s9
                  xor          a3, a1, s3
                  srli         s8, a3, 4
                  or           gp, s2, s5
                  add          t5, t2, t4
                  slli         a2, s8, 12
                  srai         t0, s3, 26
                  slli         tp, a1, 4
                  auipc        zero, 728593
                  sub          s4, t3, s7
                  sub          s4, a2, s10
                  sra          t2, t5, s3
                  slti         s3, s0, -1208
                  auipc        s10, 30555
                  nop
                  auipc        s0, 275650
                  or           t6, s8, a1
                  addi         t2, s10, 1323
                  sll          t1, s6, tp
                  sltiu        t6, a0, 1796
                  sltiu        a3, t6, 995
                  ori          a0, t5, -524
                  srl          t2, a3, t4
                  sltiu        s1, s4, 510
                  slti         t6, t1, 589
                  xori         s2, tp, 681
                  slli         s3, t2, 13
                  nop
                  nop
                  lui          t0, 1019152
                  srl          a5, s2, t0
                  auipc        t6, 528186
                  lui          a5, 844484
                  add          t1, s10, a1
                  add          s1, s8, sp
                  slti         a2, a3, -1437
                  nop
                  and          s7, s5, a4
                  sll          s6, s5, s1
                  slli         t5, a4, 29
                  sltu         s8, tp, a7
                  sll          s5, s2, gp
                  ori          s9, sp, -430
                  sll          tp, s0, s10
                  and          s6, s9, t2
                  nop
                  auipc        s3, 87703
                  xori         a5, a7, -389
                  auipc        a1, 356429
                  xori         s8, t1, -1836
                  xori         tp, tp, -527
                  slti         t5, zero, 608
                  or           a3, a5, s7
                  auipc        s1, 991417
                  srai         a0, t3, 1
                  lui          zero, 171970
                  xori         s6, s11, 868
                  sra          s5, sp, t0
                  slti         t0, s3, -1256
                  sll          t1, s4, s5
                  sub          t6, t1, t0
                  srli         s7, t0, 11
                  sub          t2, s3, a5
                  lui          s5, 740657
                  slli         s4, ra, 6
                  slti         s1, t2, 8
                  sra          s9, s2, gp
                  srli         s0, a2, 16
                  srli         ra, a6, 19
                  sltiu        s5, a6, 1774
                  add          s11, t5, a4
                  and          s7, a4, a6
                  addi         t5, t2, 1509
                  xori         t4, t2, -883
                  nop
                  srli         t6, t0, 31
                  slti         s6, s5, 137
                  srli         a0, t4, 28
                  and          s4, s1, s1
                  andi         a5, ra, 972
                  sltu         s2, t0, a6
                  or           t1, gp, t0
                  sltu         t5, a3, t4
                  add          a5, a6, s9
                  xor          t0, s1, t5
                  srli         a1, t1, 9
                  slt          t0, zero, gp
                  andi         s1, a3, 977
                  xor          s10, t2, s7
                  sltu         t0, s9, s11
                  sll          ra, a4, s7
                  slli         s4, a7, 26
                  nop
                  slt          s1, s9, a3
                  lui          s8, 117190
                  slti         s2, a1, 1274
                  sltiu        t1, s7, -1963
                  slt          a3, a2, t3
                  auipc        sp, 499240
                  lui          s8, 618666
                  addi         a3, t6, -317
                  srl          s5, a2, a1
                  slti         s11, t1, 1851
                  add          s0, s10, a7
                  slli         a6, a7, 25
                  addi         t1, a3, -1822
                  nop
                  slti         s7, t5, 495
                  slt          s4, s10, s0
                  and          s3, tp, s0
                  slt          s7, a6, t2
                  srli         gp, ra, 29
                  srli         s0, a3, 25
                  sltiu        tp, t4, 1950
                  srl          gp, t5, a1
                  srai         a0, s8, 18
                  addi         sp, s5, -136
                  slt          sp, a7, s5
                  sub          zero, s0, s4
                  srl          zero, ra, t3
                  sltiu        s0, s10, -715
                  slti         ra, a0, 1507
                  slti         t4, t4, 1639
                  andi         sp, s4, 627
                  srl          t2, a1, a6
                  sub          a1, t0, zero
                  sltiu        s9, ra, 692
                  or           s1, sp, a3
                  andi         ra, a7, -110
                  sra          ra, s2, s0
                  add          a2, s6, s1
                  xor          tp, t0, s10
                  sltu         s10, a5, s6
                  srli         t1, s11, 27
                  andi         a5, s11, 2015
                  slli         t0, t0, 7
                  sltiu        a6, s2, -1779
                  or           s2, a5, a1
                  sltiu        s8, t2, -1637
                  lui          s1, 97349
                  slti         s6, s0, -168
                  srli         s8, s9, 10
                  lui          t1, 431369
                  srai         s10, s8, 26
                  srli         t4, a2, 24
                  slli         s6, a2, 0
                  slti         gp, t3, 17
                  or           sp, s7, s3
                  addi         s10, s8, -488
                  srl          s2, s2, t6
                  andi         a5, s9, 1298
                  slti         s4, s0, -170
                  add          t2, t5, s11
                  slli         s4, s9, 28
                  xori         s10, t2, 1038
                  sll          t5, a1, s5
                  add          sp, s8, tp
                  addi         sp, t6, -1769
                  slli         s6, s0, 7
                  slti         tp, zero, -1961
                  slt          t4, a2, a6
                  sltu         a1, s7, t0
                  add          sp, a2, t3
                  andi         a2, s7, 174
                  andi         s11, a1, -502
                  and          s10, s7, a4
                  andi         s8, s10, -618
                  and          ra, tp, t4
                  sltiu        t2, s1, 284
                  srl          s10, a3, s8
                  andi         a5, s2, -543
                  sll          a3, s8, a1
                  nop
                  addi         s8, a6, -36
                  sltiu        a3, s11, -854
                  xori         a5, s11, 476
                  lui          tp, 369424
                  sltu         s8, ra, s2
                  andi         s11, ra, 1978
                  xor          s0, t2, t1
                  and          t5, a3, a7
                  andi         t2, t2, -401
                  nop
                  nop
                  srli         s1, t5, 11
                  and          t0, a4, a1
                  xor          s7, s5, s11
                  or           gp, zero, a1
                  sltiu        a5, s11, 1872
                  sra          s1, a6, a3
                  addi         s1, s2, 527
                  nop
                  and          a1, s1, t6
                  slti         a2, t4, 508
                  add          gp, s2, s2
                  nop
                  slti         gp, zero, -226
                  slt          a1, a6, t1
                  srl          s6, t0, a2
                  srl          a1, t2, a5
                  sltiu        a6, a7, -1195
                  xori         s1, a1, 169
                  sub          s9, s0, a6
                  slti         s2, s0, -788
                  sll          s2, t4, t0
                  slti         t0, sp, -610
                  xor          s2, a6, t4
                  ori          s0, a5, -642
                  slti         sp, t0, -850
                  addi         sp, t3, -263
                  sra          s11, tp, s8
                  sltiu        t5, s9, 1379
                  sltiu        s0, t1, 99
                  slt          s1, a3, t5
                  auipc        s1, 123792
                  srli         s5, s11, 6
                  auipc        a2, 496298
                  nop
                  srai         s1, a5, 0
                  slt          s9, s1, s11
                  xori         a0, a7, 88
                  srl          a6, s3, s2
                  srl          sp, s1, a5
                  sra          tp, a4, tp
                  nop
                  addi         s9, a6, 1438
                  andi         zero, s10, -2005
                  srli         a6, a0, 28
                  slti         gp, a3, 809
                  slli         s0, t0, 25
                  srai         a0, tp, 5
                  slli         a5, t2, 24
                  slli         s3, s11, 15
                  slt          s6, a1, tp
                  sub          a1, a5, a2
                  ori          s0, a1, 1779
                  slli         tp, s3, 27
                  sll          s2, a7, ra
                  and          a3, a3, s11
                  srl          a3, s10, s3
                  srl          gp, s5, s6
                  srl          zero, gp, gp
                  sltu         s8, t1, a4
                  sll          s5, a6, t1
                  ori          tp, s7, -1246
                  sltiu        s10, s5, 87
                  slti         t6, a2, 1747
                  slli         s4, s10, 25
                  andi         s10, s2, -1803
                  sltu         s8, a6, t4
                  srl          t5, s9, s4
                  and          s7, a5, t4
                  xori         t5, t5, -1821
                  ori          s2, tp, -749
                  sltiu        s4, s5, 933
                  lui          s8, 1034912
                  auipc        tp, 971718
                  lui          a2, 428610
                  ori          zero, gp, -1035
                  srai         gp, t2, 3
                  slt          s3, s5, a4
                  xor          s8, a6, s3
                  lui          s11, 139343
                  or           sp, a6, t6
                  srl          s4, t3, t4
                  slt          s2, s11, a4
                  auipc        s1, 788200
                  lui          s7, 188761
                  sltu         t5, s7, a6
                  sll          ra, s3, a7
                  addi         t4, zero, -534
                  slti         t2, zero, -1833
                  srli         a2, s1, 18
                  slti         ra, t6, -1437
                  xor          s3, t6, ra
                  andi         a3, s11, -763
                  nop
                  andi         s4, ra, 646
                  sub          s0, t4, s3
                  xor          s7, ra, t5
                  slli         s2, s7, 20
                  srai         a5, s11, 5
                  slt          s8, s5, t4
                  andi         s5, t2, 695
                  sltu         s0, a4, t1
                  slti         s9, s0, 445
                  nop
                  sll          s6, t0, s10
                  srl          a0, t2, s0
                  sll          s3, a4, a4
                  srl          a1, t5, t6
                  auipc        a6, 175832
                  ori          t2, a4, -1040
                  andi         s10, s2, -57
                  xor          a0, a1, a0
                  and          t0, a1, t6
                  xori         t0, a4, 452
                  slt          t5, s4, t0
                  srai         t5, a5, 25
                  srl          zero, a5, t5
                  add          s11, t6, t4
                  or           s9, s10, s0
                  and          a2, t0, a5
                  add          s10, a6, tp
                  auipc        s10, 738258
                  srli         s6, s0, 7
                  add          a1, s3, a3
                  andi         s2, a5, -673
                  auipc        s5, 979079
                  sra          s0, s0, t5
                  sltu         t4, t3, s6
                  and          t1, s9, a5
                  sltiu        a0, a6, -485
                  xor          t6, a1, a3
                  srai         t2, t6, 21
                  sltu         zero, s11, t3
                  sltu         a1, t0, t4
                  nop
                  sra          gp, tp, t5
                  sll          s9, s8, t2
                  slti         s9, ra, -1713
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           s8, 0xffffffff
                  li           s11, 0x47b109b3
                  li           tp, 0x80000000
                  li           s2, 0x0
                  li           t5, 0x80000000
                  li           t4, 0xffffffff
                  li           a5, 0xffffffff
                  li           gp, 0x80000000
                  li           a2, 0xffffffff
                  lui          a2, 941993
                  nop
                  add          s4, s4, s4
                  sub          a2, s8, t5
                  lui          gp, 901632
                  nop
                  nop
                  auipc        a5, 964749
                  sub          s11, t5, t5
                  addi         s8, s11, 293
                  sub          a5, t4, s11
                  nop
                  lui          gp, 361875
                  sub          s4, tp, a5
                  auipc        s2, 437001
                  add          s11, t5, t4 #end riscv_int_numeric_corner_stream_8
                  andi         s1, sp, -958
                  sltu         s10, s0, tp
                  auipc        t2, 999980
                  sub          a2, gp, t1
                  slt          a0, s2, a3
                  sub          t5, tp, t1
                  slt          t4, sp, a5
                  addi         t2, s8, 1478
                  sltiu        tp, s10, 472
                  srli         sp, ra, 30
                  xor          s6, a2, a0
                  sll          t5, a4, t0
                  sll          s2, t6, a6
                  xori         gp, s6, -278
                  sra          s10, s7, ra
                  addi         a0, t6, 1654
                  sra          a3, ra, s0
                  or           t2, a3, s3
                  srl          s4, t5, s8
                  sltiu        s11, gp, -295
                  sltu         a0, sp, s3
                  sltiu        s2, t3, -40
                  ori          s0, a5, 1144
                  xori         a0, s11, -694
                  xori         t2, zero, 1240
                  xori         s0, gp, -883
                  srl          ra, t6, a4
                  xor          a2, ra, zero
                  ori          s4, a0, -435
                  sra          tp, s10, a7
                  sub          ra, t2, t6
                  addi         s7, t2, -1963
                  xor          s7, a2, a6
                  xori         s7, t5, 1984
                  xori         s4, a5, -672
                  sub          t5, a6, a4
                  srl          s2, s8, s3
                  add          t5, s4, s6
                  slt          tp, a7, t6
                  sra          zero, s4, t1
                  auipc        ra, 46371
                  andi         s9, gp, 868
                  sltiu        a5, t3, 1498
                  sra          s0, t2, a1
                  srli         t4, tp, 12
                  add          a3, s0, a7
                  sra          a1, s9, a7
                  sltu         s1, t6, s8
                  or           s11, s8, t0
                  and          a1, a3, s10
                  sltu         t4, a4, zero
                  and          ra, tp, t4
                  sltiu        s11, s1, 110
                  sltiu        t2, s4, 185
                  andi         t0, s5, 771
                  srl          s6, t0, a3
                  slli         s8, a1, 4
                  lui          s4, 38646
                  sub          a2, t5, s8
                  or           zero, s6, s1
                  add          s2, a2, zero
                  sltu         s2, a2, ra
                  nop
                  and          a1, a4, zero
                  or           s7, ra, tp
                  ori          s6, a7, -256
                  ori          t6, sp, -1267
                  sltiu        t6, sp, -1695
                  sub          s5, t6, s3
                  sltiu        gp, a3, -1121
                  sltu         a1, tp, t3
                  slli         gp, s2, 26
                  sll          s11, s4, s7
                  sltu         a5, s1, s1
                  lui          t6, 533775
                  auipc        a6, 456423
                  sll          t1, tp, t0
                  srl          s6, a7, a0
                  xor          s10, tp, s4
                  srli         t2, a7, 25
                  sub          tp, ra, a2
                  slti         tp, a4, -1862
                  sll          s11, s3, a4
                  or           a1, s7, a5
                  srai         a2, t1, 13
                  sll          s11, a3, a2
                  srli         s5, a6, 13
                  xori         s9, t6, 1299
                  ori          t1, a0, 460
                  srl          s5, sp, a5
                  sltu         a2, s1, s6
                  srl          a1, a6, a7
                  or           t1, a5, s2
                  auipc        t1, 974134
                  and          s1, s3, s9
                  slt          t0, s1, a7
                  lui          a1, 794927
                  srl          s5, s3, s4
                  srai         s2, t6, 25
                  and          s6, tp, s0
                  xori         tp, s6, -1639
                  slti         s11, sp, -712
                  auipc        s5, 640727
                  auipc        a0, 264501
                  auipc        t1, 186710
                  auipc        s10, 799059
                  slti         sp, t2, 1378
                  xor          zero, a4, a4
                  nop
                  srai         a1, t1, 6
                  lui          s11, 303715
                  srli         tp, s5, 1
                  slli         s0, t3, 22
                  or           t4, s4, s2
                  sub          t5, a1, s2
                  add          a3, s1, t2
                  or           s8, s10, a3
                  auipc        a0, 898009
                  lui          t6, 775792
                  xor          s0, a3, a5
                  srli         s1, gp, 6
                  sra          s0, s9, s2
                  slti         t1, t2, 372
                  add          a5, s11, t3
                  sub          t4, gp, s0
                  sub          s6, s3, sp
                  or           s6, s11, t2
                  add          s5, t2, s8
                  lui          s8, 424119
                  and          t1, s6, tp
                  addi         a6, a1, 1034
                  sll          a6, s2, tp
                  ori          t2, a7, 1494
                  slli         s3, s5, 4
                  andi         s10, s5, 1422
                  ori          a0, gp, -637
                  sra          t4, s7, s10
                  sltiu        s2, t0, -1941
                  or           a5, s8, gp
                  ori          gp, gp, -114
                  slt          a0, t1, s6
                  andi         t0, zero, 131
                  ori          s10, s7, 275
                  add          t1, t0, t2
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           a6, 0x0
                  li           t4, 0xffffffff
                  li           s8, 0x0
                  li           s7, 0xffffffff
                  li           s0, 0x0
                  li           sp, 0x80000000
                  li           s5, 0x0
                  li           t1, 0x80000000
                  li           s4, 0x0
                  sub          s4, sp, t1
                  sub          t4, s5, a6
                  sub          s6, sp, sp
                  lui          s8, 837042
                  add          s8, s7, t4
                  add          s4, sp, a6
                  add          s4, s0, s8
                  addi         sp, s4, -11
                  lui          s4, 577827
                  nop
                  addi         a6, sp, 1571
                  lui          s6, 1033396
                  sub          s4, s0, s4
                  sub          s8, t4, s4
                  sub          s5, s8, t4
                  addi         s7, t1, 564
                  lui          s5, 514507
                  lui          a6, 97147
                  addi         t4, s0, 1837
                  auipc        s6, 552606
                  auipc        s8, 841607
                  add          s8, s4, s4
                  add          s8, s0, s6
                  sub          s5, s4, t1 #end riscv_int_numeric_corner_stream_7
                  ori          t4, t0, -1727
                  add          t5, t0, a4
                  srl          sp, t1, t4
                  sltiu        s5, a2, -82
                  srl          t1, a0, s4
                  srli         s5, s7, 2
                  ori          t1, zero, -1732
                  slti         gp, tp, 1600
                  sll          s1, gp, a5
                  sltiu        zero, gp, 1779
                  and          s7, a3, t2
                  lui          sp, 773077
                  sra          tp, s7, ra
                  sub          s9, t3, gp
                  slt          a0, t6, tp
                  ori          s11, t6, -1810
                  nop
                  srli         t6, t6, 27
                  sltiu        s2, gp, -1400
                  srli         s1, s3, 5
                  nop
                  xor          t4, t6, t5
                  or           a6, t2, a4
                  add          tp, gp, s5
                  srai         t6, s1, 9
                  xor          s3, t0, s6
                  srl          ra, sp, tp
                  auipc        t6, 772657
                  andi         tp, a7, 1455
                  and          t2, ra, s1
                  slli         sp, a6, 25
                  slt          s3, s10, t0
                  or           a5, s9, a0
                  slt          t2, ra, t1
                  and          t1, tp, t3
                  srli         sp, a5, 26
                  nop
                  sub          t2, s1, t6
                  nop
                  and          t0, a7, a5
                  slti         s1, t6, 1665
                  srli         s9, t0, 20
                  sra          s1, a3, t4
                  addi         s5, s4, 1793
                  sll          sp, t2, s0
                  auipc        s6, 360714
                  xor          ra, s10, sp
                  sra          a5, a6, s6
                  nop
                  xor          s1, t5, a5
                  xori         s2, zero, -1239
                  slti         t1, s5, 315
                  srai         t5, s6, 14
                  srli         a3, s0, 1
                  xori         a6, t3, -613
                  addi         gp, a5, -350
                  sltu         sp, s9, t1
                  ori          s7, a1, -699
                  andi         t5, s2, -773
                  sll          a5, a5, a2
                  sub          s1, s0, a3
                  sltiu        s2, t6, 1134
                  slti         s5, a7, -1672
                  auipc        s8, 256737
                  srli         a5, ra, 6
                  sll          ra, ra, zero
                  lui          s8, 825158
                  sltu         s7, a2, s5
                  add          a2, s5, t0
                  xor          t2, sp, sp
                  srai         s0, s8, 13
                  nop
                  srli         a6, gp, 25
                  slti         s8, s5, 1036
                  slt          a6, sp, a6
                  sll          gp, a6, s0
                  sltiu        s2, s5, 1311
                  sltu         zero, s6, s7
                  nop
                  sub          s3, gp, a3
                  slti         s7, s2, -1981
                  srl          t5, tp, s11
                  sltu         zero, t1, ra
                  sll          ra, s6, sp
                  xor          s10, t2, t1
                  ori          gp, s7, 1358
                  sltu         s2, a1, t0
                  nop
                  sltiu        t4, t5, 1164
                  andi         ra, a7, 1011
                  or           tp, tp, s5
                  addi         s8, a2, 344
                  srai         s2, t2, 15
                  andi         s0, s11, 1292
                  srl          s8, t2, s8
                  srli         zero, ra, 8
                  slli         a5, ra, 15
                  srl          sp, ra, t6
                  srai         s2, s7, 11
                  srai         t2, a2, 23
                  sltiu        sp, t0, 2001
                  andi         s7, s1, 472
                  or           a6, zero, s4
                  add          a3, t6, t4
                  addi         s9, tp, -2041
                  srai         sp, s1, 2
                  and          gp, s8, s4
                  addi         sp, t5, -66
                  and          a5, t1, a2
                  ori          s8, s6, -1245
                  xori         s5, t0, 424
                  add          s1, a1, a1
                  andi         t0, a7, -2023
                  addi         s1, ra, -647
                  xor          a1, ra, a3
                  sll          t6, a1, s7
                  sltiu        s2, gp, -2021
                  slt          sp, a6, a2
                  srai         s0, s10, 29
                  sltu         tp, a3, s4
                  add          tp, a2, t6
                  auipc        t4, 460191
                  addi         a2, s9, 1132
                  lui          a3, 701254
                  sltu         a5, s7, s4
                  sltiu        a3, t2, -1930
                  auipc        ra, 812908
                  sltiu        a0, s11, -1540
                  nop
                  sltu         s7, t5, a6
                  slti         a5, s0, 1878
                  nop
                  ori          sp, a0, -899
                  srai         zero, a2, 17
                  or           s8, s7, s9
                  sll          a5, s7, ra
                  slli         t5, s7, 6
                  srli         a3, s1, 19
                  slti         a2, t3, -1378
                  andi         s9, t2, 891
                  sra          a2, t2, s10
                  xori         s5, sp, -1688
                  sub          t0, gp, a0
                  slti         s10, s6, -380
                  slti         t2, t3, -1857
                  and          t0, t3, s11
                  slti         s1, a2, -1275
                  srai         a5, s4, 10
                  sll          s4, zero, s6
                  ori          t0, gp, -575
                  sra          a0, s9, s9
                  auipc        a5, 96192
                  sub          a1, t1, t5
                  sub          t5, s7, s3
                  or           tp, t3, a7
                  lui          a0, 684613
                  sltiu        s7, t4, -152
                  xori         s6, t6, -432
                  srl          s5, t6, s1
                  and          t0, t5, a2
                  xori         s5, s10, -1740
                  add          s11, a5, s9
                  slli         t0, t6, 0
                  addi         s9, s4, 29
                  sub          tp, t6, a7
                  xor          s2, a1, s7
                  and          s3, s8, t4
                  nop
                  addi         s6, a0, -581
                  srai         a1, s6, 5
                  and          gp, ra, a1
                  slt          a0, t5, sp
                  nop
                  srli         s0, s9, 20
                  lui          a5, 506127
                  slt          ra, s8, a4
                  xori         s3, a3, 1117
                  add          s5, s0, s10
                  andi         s10, a0, 595
                  andi         ra, s10, 1640
                  add          s1, s9, a1
                  nop
                  sltu         s1, sp, a5
                  xori         s8, t4, 1359
                  slti         t1, a6, 824
                  srl          s6, a3, s9
                  lui          s6, 594491
                  nop
                  srli         t4, a2, 13
                  nop
                  ori          sp, s4, 128
                  add          a6, a7, t4
                  sltiu        t2, s7, 259
                  slti         a0, a1, -299
                  slli         tp, a6, 6
                  sra          s11, s9, a7
                  xori         s4, a3, -1598
                  xor          sp, a5, sp
                  slli         t1, gp, 27
                  slti         s2, s6, -786
                  auipc        s7, 151383
                  xori         a2, gp, 1788
                  sra          t2, sp, s9
                  slli         s0, t6, 29
                  sub          a1, t4, a3
                  srli         a0, t3, 31
                  slt          s0, a7, zero
                  nop
                  xor          s1, t5, a2
                  slti         t0, s5, -855
                  slti         s4, s5, -1742
                  sra          s2, s4, tp
                  sltiu        a0, s5, -1274
                  lui          s10, 892452
                  nop
                  srai         s1, s9, 2
                  slti         a5, zero, 272
                  andi         a0, sp, -1241
                  nop
                  srl          a6, t0, t1
                  lui          gp, 740683
                  sra          a3, s3, t5
                  xor          t6, gp, s9
                  slt          ra, t4, t2
                  nop
                  slt          a0, s1, s4
                  slli         a2, s9, 11
                  sltu         s7, s6, s3
                  xori         s10, s5, -1558
                  nop
                  xor          a5, a1, s11
                  slti         s7, gp, -91
                  slli         s10, zero, 23
                  add          t1, t6, s9
                  sub          s10, t6, a5
                  sub          s9, s3, a7
                  srli         gp, s0, 25
                  andi         s5, zero, 1913
                  xori         t0, s9, 1500
                  srai         zero, a1, 24
                  sub          gp, gp, s9
                  sra          s10, sp, s6
                  or           s8, t6, s6
                  slli         tp, gp, 7
                  add          a6, tp, t3
                  sub          s2, s2, s0
                  and          s6, zero, s1
                  srli         s2, s7, 1
                  slt          a2, a5, s7
                  srai         s7, t4, 1
                  slli         s10, a4, 14
                  srli         s4, s11, 22
                  auipc        gp, 218458
                  and          s3, a4, s6
                  srli         sp, t6, 23
                  sltiu        s3, s9, 2024
                  xor          s6, s7, a2
                  sra          s1, s10, a3
                  xori         s6, zero, 1879
                  nop
                  auipc        s9, 373035
                  sub          a2, sp, t6
                  sll          t0, s10, tp
                  nop
                  ori          tp, t6, 494
                  addi         t1, gp, -1788
                  slti         s4, a1, 1146
                  sltiu        s10, t2, -2036
                  addi         t0, s9, -35
                  srai         t4, s1, 16
                  slli         s4, s5, 10
                  lui          s5, 683622
                  andi         ra, s8, 1455
                  sra          t5, t4, tp
                  and          t6, t1, s9
                  auipc        t0, 976694
                  srai         ra, a7, 28
                  sltu         t4, t3, s8
                  andi         a0, gp, -1008
                  nop
                  sltu         s8, s1, s3
                  andi         s6, t3, 1243
                  srl          s3, sp, tp
                  sltiu        t6, t5, -1807
                  auipc        tp, 491425
                  xor          zero, s4, tp
                  andi         t1, ra, 851
                  xor          ra, s1, gp
                  ori          gp, s7, -1081
                  auipc        s7, 889086
                  slti         gp, s10, -1036
                  srai         t6, a7, 6
                  srli         gp, s9, 22
                  srai         s1, a5, 2
                  srl          t1, a2, t6
                  srai         t0, s6, 12
                  sltu         gp, t1, sp
                  sra          a3, s1, s11
                  auipc        gp, 648251
                  or           a0, s6, s5
                  nop
                  auipc        a2, 33648
                  sll          tp, s0, s0
                  sltu         a6, gp, gp
                  slli         t2, a3, 21
                  sub          ra, s0, s11
                  srai         s6, s8, 16
                  auipc        s11, 199121
                  sll          gp, s6, s11
                  ori          a1, t2, 591
                  nop
                  auipc        gp, 640936
                  srai         a6, t6, 2
                  andi         t4, s9, 337
                  addi         s9, s4, -337
                  auipc        t1, 186246
                  andi         a3, s6, 1833
                  sub          t4, zero, t3
                  xori         t4, s4, 906
                  sll          a6, a1, t5
                  or           s3, a4, s3
                  nop
                  nop
                  addi         s0, t3, -1540
                  xori         s9, s5, 1778
                  nop
                  ori          a0, t3, -1996
                  srai         s8, a6, 10
                  xor          t2, s10, s0
                  sltu         t2, s3, a1
                  srl          gp, a1, s2
                  sltiu        a0, t5, 306
                  auipc        t2, 690460
                  and          a0, t6, s0
                  srl          t1, a4, s9
                  auipc        tp, 939207
                  srai         s4, t3, 19
                  sub          t2, a0, zero
                  ori          tp, s3, 1888
                  sra          a5, sp, ra
                  slti         ra, a1, 1601
                  sll          s5, a2, t6
                  nop
                  nop
                  slti         ra, a6, -1359
                  xor          s4, s0, a6
                  slli         s1, s1, 22
                  sll          s10, t0, t2
                  add          a5, t5, a5
                  srli         s8, a7, 19
                  ori          a0, s3, -1993
                  nop
                  sltu         t6, t3, s9
                  ori          zero, zero, 588
                  xori         s1, t0, 1183
                  andi         s0, s3, 1627
                  lui          a5, 809379
                  addi         ra, t6, 1817
                  or           a3, s9, s11
                  andi         s10, t5, 1852
                  add          a2, a1, t1
                  nop
                  slli         s7, sp, 25
                  addi         s2, t5, -893
                  addi         t4, s0, 1665
                  xori         a0, s8, 257
                  sra          t4, zero, s1
                  add          s0, a2, s9
                  nop
                  lui          ra, 371096
                  andi         t6, sp, 1910
                  slli         s2, a6, 17
                  sltu         a6, s1, s4
                  addi         sp, a6, -586
                  xori         t4, t5, -113
                  sub          ra, t2, s6
                  and          t4, gp, s10
                  or           t5, s5, s10
                  slti         t2, s2, 862
                  srl          s8, t6, t0
                  sub          t2, s3, a1
                  addi         s0, a4, -1703
                  srl          t5, s6, tp
                  add          s5, s4, t5
                  srli         s11, s6, 16
                  slt          s11, tp, s6
                  sra          s10, a2, t1
                  sra          s9, sp, sp
                  auipc        s3, 208214
                  slt          t2, a7, a7
                  sltiu        s3, s10, -1374
                  srai         tp, t2, 12
                  or           s7, ra, a4
                  sll          s8, t0, a1
                  add          a2, s9, s1
                  srl          s7, a3, a1
                  addi         gp, t6, 1284
                  or           zero, t5, s2
                  slti         t1, t5, 929
                  sll          s8, t1, gp
                  sll          s7, t2, t4
                  xor          a3, t2, t5
                  slli         s9, t6, 4
                  slt          t1, gp, a5
                  sra          s8, a3, s2
                  srl          t1, a3, t6
                  slli         s1, a6, 27
                  sll          gp, s11, zero
                  and          t4, a6, a3
                  slli         t1, s3, 18
                  sltiu        a2, s5, 1025
                  lui          ra, 10465
                  sll          s6, s8, t3
                  slli         t0, s9, 20
                  slti         s9, t2, 449
                  ori          s7, t1, 1172
                  and          t2, s7, a0
                  ori          s10, s8, -233
                  and          s5, a0, t0
                  ori          s6, s11, -817
                  xor          t6, s9, t0
                  sra          s1, s11, zero
                  sll          a0, s0, a3
                  sll          s10, t5, t0
                  slli         s5, a5, 12
                  srai         s1, s5, 15
                  and          t5, s8, a1
                  sub          a5, s8, t5
                  andi         gp, s10, -176
                  ori          a3, t4, 466
                  sll          s11, a4, s0
                  andi         t0, s9, 437
                  auipc        zero, 807174
                  slli         a1, t1, 23
                  ori          s0, s8, -300
                  xor          zero, a5, zero
                  xor          tp, gp, s6
                  xori         t0, t4, 2001
                  auipc        s11, 781124
                  nop
                  sub          a5, tp, gp
                  andi         s5, tp, -1258
                  or           s3, s4, t3
                  add          s6, t6, zero
                  or           t5, a0, a2
                  sltu         t2, s8, a4
                  addi         t4, s11, 1482
                  srl          a3, s2, s9
                  add          s2, ra, t1
                  andi         s11, s5, 684
                  or           a0, t4, s5
                  lui          s10, 440951
                  nop
                  auipc        ra, 910127
                  lui          sp, 570486
                  srl          a0, t6, s1
                  sra          t0, a4, t6
                  srai         s3, t0, 6
                  slt          a0, s9, ra
                  sltu         s8, tp, s1
                  sltu         s6, t1, s2
                  lui          s10, 280040
                  sltiu        s9, a4, -1932
                  srl          gp, s9, s1
                  xor          t0, sp, s8
                  srli         t5, t1, 31
                  xori         t5, gp, -1853
                  sll          t0, s0, s9
                  xori         a2, zero, -40
                  slt          t4, t2, a1
                  xori         s11, a5, -1798
                  srai         tp, a0, 22
                  or           a6, t4, s5
                  slti         s10, s11, 1852
                  or           s7, s5, zero
                  sub          a6, a1, a2
                  sltiu        s0, t3, -258
                  xori         s9, ra, -118
                  sltu         tp, s9, a4
                  nop
                  sra          t5, s5, s5
                  addi         a2, t3, 1086
                  auipc        t0, 130592
                  nop
                  auipc        t5, 850033
                  or           a2, s0, a6
                  xori         gp, t2, 1756
                  srli         t6, t3, 12
                  lui          t0, 594127
                  xor          t0, a2, t3
                  or           a3, t3, a6
                  srl          tp, s4, s2
                  sll          s9, s1, t2
                  ori          t6, s8, 185
                  srli         t0, a3, 16
                  srai         a5, a1, 11
                  sub          s7, s6, a6
                  srl          a5, ra, a2
                  xor          s6, s10, a3
                  sub          a6, s2, s4
                  lui          s8, 893569
                  andi         s6, t3, 1747
                  sll          a1, s11, a0
                  srli         t4, t1, 6
                  add          t5, zero, a3
                  sub          s3, a3, s11
                  or           s6, t5, a1
                  nop
                  or           zero, ra, s2
                  addi         a1, t3, 1037
                  srai         a6, s3, 8
                  and          s0, a3, a4
                  xori         a3, a6, 675
                  sltiu        a2, ra, -564
                  sltiu        zero, t3, -771
                  add          s5, a7, t4
                  auipc        ra, 880355
                  or           t6, a4, a7
                  sra          s3, sp, s9
                  ori          a5, s1, 1431
                  and          s6, a3, t2
                  and          tp, s2, t2
                  nop
                  sltu         s10, t0, a1
                  sra          s1, t1, t1
                  srli         zero, s3, 27
                  ori          s8, t4, -246
                  srli         tp, s0, 18
                  srli         a3, ra, 10
                  and          gp, t4, s4
                  xori         s3, t2, -854
                  slti         sp, a4, 1500
                  sltiu        a1, t2, -293
                  slt          zero, ra, t4
                  lui          gp, 349923
                  srli         t5, s6, 21
                  sub          a1, s4, s2
                  nop
                  andi         s5, a7, 1578
                  slti         a0, gp, -1555
                  xor          t6, s10, ra
                  and          s11, gp, s8
                  slli         a1, s10, 22
                  sltu         gp, t4, s2
                  sra          s3, a4, s3
                  sll          ra, t0, a4
                  andi         a6, gp, 63
                  andi         t5, s1, -982
                  sltu         a6, a6, t4
                  xori         s1, s1, -1641
                  xori         a0, a4, 1102
                  xor          t6, a5, s9
                  slli         s9, tp, 1
                  or           s0, t6, t1
                  lui          t2, 888469
                  slli         t0, a5, 30
                  srl          s6, s0, t1
                  lui          sp, 807339
                  sltiu        a5, a2, -1337
                  andi         sp, a5, 1364
                  sltiu        t6, sp, 106
                  slli         tp, s8, 15
                  or           a6, s3, s11
                  ori          a6, s11, 925
                  sltiu        s7, s6, 1588
                  srl          s4, gp, zero
                  nop
                  nop
                  sub          s1, t0, s11
                  andi         ra, s8, -1497
                  nop
                  and          s7, t4, s4
                  addi         a2, a7, 391
                  xor          ra, a4, a1
                  slti         s2, t5, 1678
                  sltu         s9, t6, t6
                  addi         s5, a7, -2001
                  srl          t4, s11, gp
                  srl          tp, s9, a2
                  nop
                  sltiu        a1, zero, -509
                  ori          sp, a5, 489
                  sltiu        t4, s4, 1149
                  or           s9, t1, a7
                  slti         s11, s2, -1052
                  andi         s6, t0, -1986
                  srl          gp, a1, a0
                  sub          t2, s1, t4
                  srl          a3, s9, s10
                  addi         s5, a4, 1038
                  srl          s5, tp, s5
                  slti         s3, tp, -24
                  slli         tp, s2, 29
                  xori         s2, a7, 795
                  srl          s8, a5, a7
                  srai         s10, a6, 8
                  sll          t6, t3, t3
                  srl          s10, t2, t2
                  slli         ra, a1, 28
                  srai         s8, gp, 31
                  ori          s6, s4, -477
                  nop
                  xor          s0, a5, s1
                  sra          t4, t4, zero
                  srli         a1, s1, 8
                  slt          s2, s8, s1
                  sll          a3, a7, t6
                  sll          t1, a1, a4
                  sll          a1, s0, zero
                  auipc        s8, 121687
                  andi         sp, s2, -1007
                  and          s9, a3, s4
                  and          zero, s3, a6
                  sub          s5, t3, s5
                  slt          s9, a1, tp
                  slt          a2, ra, s1
                  sltu         s4, t0, t4
                  sltiu        s5, a2, -1059
                  lui          s1, 925360
                  sub          t0, a7, a5
                  srl          a0, s7, t4
                  slti         t2, s0, 1336
                  sll          t1, t4, a7
                  sll          ra, gp, s8
                  nop
                  slt          ra, s5, s3
                  addi         t5, t1, 486
                  lui          zero, 95346
                  sltiu        a6, t6, -1392
                  xor          t2, s2, tp
                  ori          ra, a7, 1722
                  add          t4, s5, s9
                  sltu         t4, gp, a4
                  or           t4, a3, t5
                  xori         s10, t2, -487
                  nop
                  ori          t6, a4, 1439
                  add          t6, zero, t4
                  add          t4, a6, t5
                  slti         a1, s11, -125
                  sra          a5, a4, a0
                  xori         a0, t3, -755
                  or           s0, t1, s0
                  nop
                  srli         s11, t6, 6
                  auipc        tp, 807714
                  add          s10, s1, s3
                  add          t5, gp, s7
                  addi         t2, ra, -194
                  auipc        t5, 530583
                  slt          s9, s10, s4
                  srli         s1, s3, 10
                  addi         t0, s3, -1377
                  slti         tp, t1, -1885
                  sltiu        t1, t3, 1584
                  slti         s1, a1, 1431
                  slt          a5, a3, gp
                  slt          s9, t5, s0
                  auipc        t2, 997979
                  andi         s3, s0, -208
                  sll          s11, s8, s11
                  slli         t2, a2, 6
                  nop
                  slt          s0, zero, ra
                  andi         a3, s4, -1872
                  sra          a5, s9, s11
                  slt          tp, s0, t6
                  ori          s11, s6, -447
                  sltiu        s11, t3, -1547
                  srai         s1, a3, 16
                  and          s7, t1, s7
                  sra          s0, ra, t6
                  srai         t0, t2, 28
                  addi         s7, gp, -275
                  lui          s0, 181959
                  sub          tp, t6, t3
                  ori          tp, a2, 1944
                  auipc        s6, 222529
                  sltiu        s5, t1, -1237
                  sltu         sp, a6, t5
                  xori         a1, t2, -158
                  slt          t1, s9, t0
                  add          a5, t2, a1
                  lui          a0, 566059
                  auipc        s9, 240878
                  sub          s2, t1, t4
                  slt          t2, a3, s9
                  lui          gp, 30893
                  sltiu        a2, a2, 1326
                  auipc        a3, 870456
                  xor          s3, sp, s5
                  xor          s7, s2, gp
                  ori          s11, t1, 247
                  sra          a1, a2, s10
                  slt          a6, zero, s2
                  srl          s11, s6, t0
                  srai         zero, t2, 30
                  slti         s5, s6, 1913
                  xori         t0, t3, 908
                  sltiu        s7, s6, 1778
                  andi         tp, t2, -1762
                  xori         s7, s11, -1178
                  slti         t5, s1, -169
                  srl          t4, t3, s9
                  srli         a0, s4, 21
                  sltiu        a2, sp, 1786
                  srai         s5, s7, 31
                  srli         t6, a7, 21
                  auipc        gp, 344173
                  slli         a6, a1, 14
                  nop
                  sll          zero, s9, s3
                  lui          s7, 122441
                  xori         s5, s10, 1609
                  lui          s10, 226479
                  xori         s6, a4, -1629
                  srai         s11, a5, 1
                  slti         s10, s9, 1467
                  andi         a2, a7, 479
                  slti         sp, a0, 1186
                  sltu         s7, t2, s0
                  or           t2, a0, s7
                  xori         t4, t4, -543
                  or           s9, s7, a2
                  srli         s10, a5, 21
                  lui          zero, 608662
                  slli         a3, a2, 0
                  ori          s4, s0, 593
                  and          gp, t6, s1
                  slt          zero, a0, a6
                  xor          a5, s6, s10
                  xori         s8, a2, 1495
                  srai         s4, s0, 23
                  sltiu        a1, s4, -1542
                  sub          s10, a1, a3
                  sra          a2, ra, a1
                  auipc        a2, 24713
                  sub          t1, a6, s10
                  slt          a5, a1, a1
                  add          s7, tp, s8
                  sltu         s11, tp, a2
                  addi         zero, a4, 791
                  srli         s5, s8, 23
                  srai         s5, gp, 12
                  sltiu        a6, a1, 910
                  add          sp, t2, a1
                  sub          s4, a5, s7
                  sltiu        ra, a4, -920
                  sra          s10, s5, gp
                  srl          s11, s5, t6
                  sra          a0, a4, t1
                  slt          s11, a7, t1
                  lui          s2, 629189
                  ori          t5, s9, -162
                  sra          s3, t6, t5
                  slt          t6, t4, a2
                  sltiu        a3, a4, -1210
                  lui          t4, 64503
                  sltu         t5, t2, s8
                  xori         t4, s1, -481
                  add          a3, t1, a0
                  slt          a2, a0, a3
                  sll          a0, s2, a4
                  xor          s10, s10, s3
                  sltu         s11, t5, a3
                  sll          gp, zero, s3
                  andi         t5, t2, 1639
                  xor          tp, a4, t6
                  lui          sp, 496830
                  srai         t4, t4, 6
                  ori          t2, t5, 1857
                  lui          s4, 800873
                  xori         s2, t1, -983
                  xori         s9, t1, 1694
                  nop
                  xori         s8, a2, 90
                  lui          a6, 906963
                  add          s11, a1, s10
                  xori         gp, a6, 723
                  xori         s6, s7, -1186
                  slt          s8, s10, a7
                  and          s10, gp, s6
                  srli         a2, a2, 28
                  sub          s7, a1, a7
                  srl          a3, s9, a6
                  lui          tp, 920415
                  addi         t4, s2, -225
                  add          a3, s7, ra
                  addi         a5, s9, -1254
                  xor          t1, a3, a5
                  sra          t1, sp, t3
                  add          s4, a0, a0
                  srl          s2, s8, t0
                  ori          a0, s11, 1625
                  ori          a5, s6, -504
                  xori         t0, ra, -596
                  add          a0, t5, s6
                  srl          s3, tp, s6
                  sub          a1, tp, s3
                  andi         gp, s0, -694
                  ori          s6, t4, 1344
                  lui          s8, 902383
                  ori          s10, s9, -1817
                  or           a1, gp, t1
                  sub          tp, s11, tp
                  slt          zero, t4, a7
                  sub          ra, t1, s11
                  sra          t5, t5, s9
                  nop
                  xor          t0, t2, s4
                  andi         s8, s2, -634
                  srl          t6, s2, a3
                  nop
                  slli         a1, gp, 7
                  xor          a0, s10, s11
                  sra          gp, s10, ra
                  sra          t1, a4, s2
                  srl          t1, s7, tp
                  and          s2, s9, a4
                  ori          a5, s8, 183
                  addi         gp, s8, 1387
                  xori         a1, s2, -1775
                  sll          tp, a0, a0
                  sll          a2, t3, zero
                  slli         s10, s6, 22
                  sub          s11, a1, t6
                  xori         gp, s3, 472
                  srli         t1, s5, 8
                  sll          a0, a4, s2
                  sll          a2, s8, t1
                  sra          s0, zero, s0
                  lui          a1, 863051
                  ori          a1, a4, -501
                  auipc        a6, 685384
                  nop
                  sltu         s10, t3, zero
                  addi         s3, a6, 1308
                  addi         ra, a2, 1784
                  xori         t2, t0, 1800
                  sltu         s4, t4, s0
                  srli         s6, s4, 31
                  lui          a5, 148621
                  xori         s10, t4, 1027
                  slli         s9, t1, 25
                  or           a5, s1, t4
                  sub          a6, a7, a6
                  ori          a2, s6, -86
                  sra          ra, sp, t6
                  auipc        s4, 210017
                  ori          s1, a2, -1254
                  sltu         a5, zero, ra
                  andi         s10, s10, -1739
                  slli         sp, a0, 10
                  sub          s9, a1, s2
                  sltu         s6, a6, a4
                  auipc        a3, 150794
                  srli         gp, s1, 2
                  ori          a1, t1, -410
                  srli         s11, s10, 19
                  srli         s6, s6, 18
                  add          ra, a7, gp
                  xori         a3, s11, -1266
                  lui          s2, 283128
                  auipc        s3, 1005475
                  sra          s8, t1, t2
                  andi         sp, s9, -252
                  slti         s1, a7, -595
                  and          a5, s1, t2
                  sra          s5, s6, t6
                  srai         t1, sp, 5
                  sra          a1, s2, s7
                  xori         gp, t6, -1104
                  srl          s11, sp, s4
                  slti         s11, a4, 1654
                  and          a6, a2, t4
                  xor          t2, a1, a3
                  auipc        t5, 445905
                  sltu         s0, t2, zero
                  sra          s9, t6, t4
                  lui          a1, 471356
                  and          s0, s0, s5
                  andi         s6, s9, -1116
                  slli         t2, ra, 31
                  xor          t1, s3, t0
                  li           t2, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           s8, 0x80000000
                  li           a1, 0x94ac01c7
                  li           a5, 0xffffffff
                  li           s7, 0x80000000
                  li           sp, 0x54f2e52f
                  li           a2, 0xf9cd27c6
                  li           s5, 0x6e168f1e
                  li           ra, 0x0
                  li           t1, 0xffffffff
                  lui          ra, 230095
                  sub          sp, t2, a1
                  add          s7, t1, t1
                  auipc        s7, 22273
                  lui          s8, 506510
                  add          ra, t2, ra
                  auipc        s5, 216020
                  nop
                  addi         a2, t1, -1436
                  auipc        a5, 254607
                  nop
                  lui          s5, 492959
                  addi         s7, a2, -1775
                  add          t1, t1, s7
                  lui          t2, 332061
                  nop
                  add          a2, t2, t1
                  add          s7, t2, a5
                  lui          a1, 763397
                  addi         t2, sp, 1328
                  nop
                  sub          s8, t1, t2
                  add          s7, t2, a2 #end riscv_int_numeric_corner_stream_17
                  sra          s8, s3, a7
                  auipc        s6, 633246
                  lui          s9, 64103
                  sra          s7, s1, t2
                  or           s9, s11, a7
                  sra          sp, s2, a3
                  ori          a1, sp, -1049
                  sltu         t6, s5, s11
                  slt          t2, t3, sp
                  xori         s11, s6, 1979
                  sra          t0, s7, s7
                  addi         a3, t6, -576
                  sltiu        s7, s1, -1916
                  srai         s6, a1, 31
                  slli         t2, s10, 11
                  slt          s9, a7, s2
                  or           s1, t5, a2
                  slt          a6, t1, a4
                  ori          s3, s6, 1920
                  sll          s8, s3, s5
                  xori         t5, a3, 851
                  sub          s6, t5, a1
                  nop
                  ori          ra, s0, -1857
                  slti         zero, a1, 1724
                  srl          a3, t6, t2
                  srl          t5, t4, s7
                  srli         s2, a0, 20
                  addi         sp, a0, -1436
                  andi         gp, a2, 2016
                  srli         sp, s2, 4
                  slti         sp, s2, -1163
                  sub          s2, a3, tp
                  and          s5, t4, s11
                  addi         tp, s1, -1457
                  andi         tp, s3, -1444
                  slli         sp, s11, 2
                  lui          s10, 744487
                  add          a5, a7, s3
                  lui          t2, 533378
                  slt          t5, a4, t2
                  sltiu        s9, s8, -1530
                  lui          s2, 400764
                  srli         gp, a1, 12
                  addi         t5, t1, -907
                  xor          t2, sp, a5
                  auipc        a1, 987668
                  slli         s4, s9, 30
                  or           tp, t4, s0
                  xori         s0, s10, -1066
                  srl          a6, tp, s2
                  slti         gp, sp, -1263
                  slli         a2, ra, 27
                  slli         a0, a5, 9
                  and          sp, s3, a2
                  sltu         s5, a3, a3
                  sltu         t1, sp, t1
                  sub          t6, a4, sp
                  nop
                  xor          s11, t6, s6
                  sra          s7, zero, gp
                  slli         s11, a1, 10
                  sra          s3, s5, s0
                  lui          zero, 477171
                  lui          a3, 92486
                  or           s0, s3, t0
                  nop
                  or           s6, s3, t3
                  or           s0, t4, a5
                  slli         s2, tp, 27
                  sub          t0, s10, s11
                  sltiu        t1, t4, 312
                  andi         a6, sp, -1733
                  xori         a3, a3, 964
                  nop
                  andi         t2, s10, 1440
                  andi         a6, gp, -270
                  srl          t4, s7, a5
                  addi         s10, zero, 1070
                  addi         t6, t6, 1065
                  slti         s9, t5, 531
                  nop
                  nop
                  and          s0, s3, ra
                  srli         s3, s7, 18
                  slti         s7, gp, -599
                  and          s11, s7, a3
                  xor          s6, t1, ra
                  sra          ra, a2, a0
                  slti         s0, t5, 1172
                  addi         t6, sp, -990
                  addi         s3, a7, 297
                  slti         s1, sp, -673
                  lui          a0, 982134
                  xor          tp, s11, t4
                  srl          a5, gp, zero
                  xori         s11, s4, -1893
                  nop
                  addi         t0, s11, -603
                  sltu         zero, a4, s9
                  and          s6, zero, t4
                  sltiu        s2, ra, 1721
                  add          gp, a2, a0
                  xori         s7, a6, 1891
                  srai         zero, s11, 2
                  slli         tp, sp, 23
                  lui          s11, 277070
                  slli         ra, a4, 10
                  slli         a3, a4, 4
                  ori          a5, s10, 1554
                  xor          a5, t0, gp
                  ori          s9, a1, -210
                  sltiu        ra, a6, 1479
                  sll          s8, s8, a0
                  sra          a5, s3, s10
                  sltu         a1, t5, s10
                  addi         s5, a5, -556
                  addi         t0, s11, -1007
                  sra          s8, a2, s7
                  slti         s8, s6, 820
                  andi         s2, s9, -133
                  nop
                  xor          s0, t3, a6
                  sltiu        a1, a1, -297
                  slli         a5, a6, 16
                  auipc        s5, 1007588
                  sll          t0, s5, a6
                  slti         t0, sp, -679
                  add          s10, zero, s7
                  srli         s10, s4, 3
                  slt          a5, s11, a6
                  lui          s3, 743203
                  slli         s3, t4, 4
                  or           a0, s8, a5
                  xori         ra, a6, -874
                  sll          s10, a0, s1
                  auipc        a0, 291681
                  sltu         zero, a1, t2
                  slti         t6, a7, 480
                  auipc        t2, 770662
                  srai         t1, s6, 8
                  slt          s3, t6, t0
                  xor          a3, gp, a3
                  sltiu        s6, s9, -1883
                  and          t6, t5, s10
                  add          s6, s5, a0
                  slli         sp, a4, 8
                  xori         sp, a1, 1603
                  sltu         t0, ra, a6
                  ori          ra, s2, -1290
                  andi         s9, zero, -1191
                  srai         t1, t3, 9
                  xori         t5, s7, 1488
                  slli         t4, s9, 26
                  xor          gp, s7, a4
                  srl          a0, t0, a2
                  ori          a2, t1, 2046
                  nop
                  ori          s11, t3, 1514
                  srli         s6, s1, 19
                  sra          zero, gp, s0
                  srl          s0, s11, t0
                  sra          s8, ra, s11
                  xori         t0, s10, 1570
                  slti         t6, a5, 1450
                  sltiu        s0, t1, 1478
                  ori          s1, s3, 319
                  srli         s8, a6, 4
                  ori          s8, s6, 203
                  nop
                  nop
                  and          t4, s9, s0
                  addi         t0, s4, 1701
                  xor          t5, s10, t4
                  sltiu        s2, t1, 938
                  xor          a0, tp, s5
                  srai         s6, a2, 7
                  ori          zero, s2, 1301
                  xori         gp, a1, -680
                  or           a2, s9, t1
                  slt          t0, a1, sp
                  sltiu        s9, t3, -865
                  sll          tp, a2, s8
                  and          a3, a6, t3
                  slli         t2, a0, 10
                  sltu         s2, zero, s2
                  slt          a1, s9, s1
                  lui          a5, 203020
                  srli         t1, a3, 3
                  lui          t2, 759527
                  srli         a3, s10, 17
                  srai         t0, a5, 13
                  addi         tp, sp, -1442
                  slli         s5, s3, 28
                  slti         a1, s11, 350
                  srl          s11, t1, s8
                  sltiu        s0, t0, 1892
                  addi         s10, s9, 1523
                  slt          s11, a1, s7
                  addi         s11, s5, -1935
                  slli         a0, a0, 13
                  andi         s11, t6, -1462
                  srli         tp, s0, 25
                  xor          s8, tp, s10
                  nop
                  srli         gp, a0, 16
                  ori          a5, s2, -1653
                  slli         s7, s0, 14
                  srli         a6, s9, 10
                  xori         s1, s9, 1809
                  sltiu        a6, sp, -166
                  srli         a1, s8, 15
                  sll          s0, t4, s9
                  slli         s10, s8, 28
                  srl          ra, a3, a5
                  andi         t2, s7, -1605
                  andi         ra, s6, -572
                  sub          a2, a0, a1
                  srai         zero, s7, 25
                  andi         a3, s3, -1950
                  xori         t4, a7, 2043
                  addi         sp, s10, -47
                  addi         s7, t0, 1792
                  xori         s5, s11, 1442
                  auipc        s5, 540870
                  slt          s0, t2, t1
                  lui          a1, 973326
                  slt          s9, a6, s8
                  srli         s8, t2, 10
                  xor          s3, s9, a0
                  ori          s8, t4, -2033
                  xori         t1, t5, -83
                  ori          t0, s1, 455
                  slti         a0, a1, 1001
                  srl          a6, s5, s2
                  auipc        sp, 631201
                  or           sp, a6, s1
                  xori         sp, s11, -1635
                  add          s10, a3, tp
                  addi         t0, a0, 1465
                  or           gp, t1, s3
                  xor          s7, s3, t6
                  addi         s10, s5, -1685
                  sra          t5, a2, sp
                  sub          s0, gp, a1
                  slt          a5, a7, t3
                  andi         s1, t6, -383
                  add          s8, s7, a7
                  srli         s3, gp, 25
                  srl          s0, a3, tp
                  srai         s9, a7, 13
                  slli         s6, sp, 30
                  slti         s8, t4, -1963
                  auipc        s2, 14145
                  srl          s4, zero, a3
                  addi         s2, a6, -1351
                  slli         s8, s11, 22
                  addi         s3, a3, 2030
                  srl          s8, a4, a2
                  xori         t1, t0, -1537
                  sltu         s2, a2, a4
                  addi         s7, s3, -1499
                  sltu         t5, s9, t4
                  xori         a1, s2, -1590
                  sub          a0, s10, tp
                  srl          s10, s0, a6
                  sra          s7, a0, s8
                  sra          t2, t3, t2
                  andi         s11, s5, 221
                  ori          a5, s5, 116
                  xori         s5, a2, 1948
                  srai         sp, sp, 7
                  sra          a0, a4, s6
                  auipc        a0, 633096
                  slli         t6, tp, 21
                  auipc        t2, 696992
                  slti         t0, s2, -1172
                  and          s0, tp, t3
                  sub          a1, a4, t3
                  slt          a0, t2, a7
                  xor          gp, tp, tp
                  slti         ra, t2, -1926
                  srai         sp, s1, 7
                  ori          t2, s9, -598
                  lui          t0, 49697
                  sra          a2, t3, s6
                  and          s5, a0, a7
                  xori         t6, s9, 1774
                  slt          a0, s6, t3
                  sltu         s11, a5, t1
                  sra          t6, a7, t4
                  and          s6, s8, sp
                  xor          t6, s2, t5
                  sll          ra, t0, t5
                  add          t1, s7, a5
                  auipc        s1, 674169
                  sub          ra, sp, s8
                  srli         s2, s5, 9
                  add          gp, s11, a2
                  auipc        gp, 1042895
                  srai         s3, s11, 5
                  sub          s5, s10, zero
                  sra          tp, t0, gp
                  srli         ra, s10, 16
                  xor          s0, a2, s4
                  ori          s10, t3, -1372
                  slli         a6, s8, 22
                  sll          s8, s0, t5
                  ori          a0, a2, -22
                  srl          a5, a5, s9
                  xori         a2, s6, -987
                  xori         t4, a0, 207
                  srli         s6, a0, 26
                  sra          t6, s10, s7
                  andi         t6, sp, -631
                  sra          zero, t0, a7
                  ori          s4, a4, 844
                  and          s6, s4, a4
                  sub          tp, t2, s0
                  add          s1, s6, a3
                  slti         s3, t0, 993
                  sltiu        s3, tp, -1071
                  slti         a5, t6, 842
                  xor          gp, s6, a6
                  slli         tp, a6, 21
                  slt          t0, t5, s10
                  slti         ra, s5, -246
                  sltu         t2, t0, t5
                  ori          t5, s3, 1591
                  srl          t4, s11, s0
                  xor          a1, s10, t3
                  sub          s3, zero, a4
                  or           s9, t6, t2
                  slt          t6, zero, gp
                  auipc        t0, 641543
                  lui          s6, 911383
                  nop
                  slli         gp, t2, 10
                  slt          sp, s5, tp
                  srl          zero, sp, gp
                  sltiu        s2, a7, 985
                  sltu         s10, a3, t2
                  srai         a5, gp, 27
                  slt          s2, gp, s7
                  lui          s9, 992346
                  sltiu        t2, s6, 1174
                  sltiu        s9, s9, -537
                  srl          s1, a7, s4
                  xori         s11, a2, -1406
                  sub          a3, gp, s8
                  lui          tp, 564867
                  srl          s3, ra, t1
                  lui          s7, 336096
                  auipc        s3, 907837
                  sltiu        sp, a5, -1599
                  xori         s4, a0, 807
                  srli         a3, s1, 11
                  slt          s4, tp, t2
                  srl          t0, tp, s2
                  addi         s11, s10, -1965
                  andi         s4, a3, -447
                  and          s2, zero, s1
                  sll          t4, tp, a4
                  lui          sp, 337414
                  auipc        s6, 518295
                  sltiu        t0, s2, -1696
                  slli         s8, sp, 15
                  auipc        s9, 871840
                  addi         s10, a1, -1963
                  lui          t6, 125203
                  slti         a0, ra, -1675
                  sltu         t0, s9, s11
                  xori         t0, s1, -236
                  addi         sp, gp, -429
                  slt          s0, tp, s2
                  slti         s3, t4, -118
                  sltu         a6, s10, t5
                  sub          s11, s10, s3
                  sll          sp, s8, t3
                  or           a2, t5, s4
                  sra          tp, t4, s3
                  sll          t1, s0, s6
                  sltiu        ra, s0, 1435
                  srai         t6, a7, 20
                  srli         s0, s5, 4
                  sltu         s2, t1, s10
                  slti         s9, a0, 1429
                  xori         s3, s4, -1565
                  xori         s10, s1, 979
                  slti         t4, t6, -530
                  sltiu        a0, t6, -1123
                  srai         a1, gp, 5
                  sra          t2, s7, t2
                  sltiu        s8, sp, -869
                  lui          s2, 762033
                  sltiu        ra, a3, 911
                  xori         s8, s4, 949
                  srl          a6, s11, s6
                  sra          t1, t5, t3
                  sltu         tp, tp, sp
                  addi         s3, a4, 813
                  xor          sp, s8, t0
                  ori          s2, tp, 184
                  sltu         t5, t6, a1
                  sra          t1, a2, s1
                  add          t6, s8, s4
                  andi         s8, s7, -396
                  slt          s9, s7, gp
                  nop
                  sub          s7, t4, tp
                  slti         s1, t2, -1114
                  sltiu        s9, s8, -1273
                  addi         s2, s10, 1596
                  slti         s0, a3, 1892
                  sll          s11, s1, s3
                  slli         t1, s11, 19
                  or           ra, t5, a0
                  addi         t4, s7, 1817
                  add          s8, s1, a3
                  sra          ra, ra, ra
                  sltu         s11, s5, a6
                  slt          s7, zero, t1
                  ori          t6, t4, 1833
                  sll          gp, s1, tp
                  addi         a5, a5, -1814
                  srli         a1, sp, 23
                  sltu         s8, t3, t6
                  addi         s3, a6, -1812
                  andi         sp, a6, 1001
                  add          a1, t5, t1
                  slli         a6, a4, 18
                  xori         s5, tp, 1678
                  sra          ra, a6, a5
                  sll          t2, ra, a0
                  nop
                  auipc        s5, 438028
                  addi         ra, t3, -1762
                  sltiu        a5, tp, 1197
                  sltiu        a5, a3, 1504
                  slti         s0, s8, -1908
                  sub          s10, s8, t6
                  add          t1, t6, t6
                  slli         s7, zero, 4
                  slti         a2, s11, 1209
                  or           a0, s10, t6
                  sltu         a2, t4, tp
                  srai         a0, ra, 29
                  srai         s10, s6, 1
                  sub          s8, s4, t3
                  addi         t0, t0, -1178
                  sub          a3, s3, t3
                  nop
                  xor          a0, t3, t1
                  sltiu        s0, s10, 940
                  add          s3, s9, a3
                  sltu         a3, s2, a7
                  slli         s4, sp, 21
                  nop
                  sub          s6, s7, a1
                  or           a5, t0, t6
                  sltiu        tp, s2, -986
                  srli         s6, s10, 24
                  srai         s3, t4, 19
                  slt          s0, t5, a2
                  lui          ra, 162627
                  nop
                  sltu         s2, t5, a0
                  slt          tp, a1, t5
                  andi         s6, a5, 1408
                  xori         a5, t4, 390
                  sub          t5, ra, t4
                  andi         s11, a0, 1852
                  sub          a6, a2, t5
                  add          a3, t6, a5
                  andi         s2, s5, -1641
                  add          s10, s6, s7
                  xori         t6, s6, -854
                  addi         t0, s6, -76
                  lui          a5, 91546
                  addi         s9, s9, -1445
                  auipc        s9, 539985
                  auipc        s5, 217792
                  and          a6, t4, a2
                  auipc        s8, 686325
                  add          s5, s3, t3
                  srai         a1, t0, 15
                  srl          zero, t6, s5
                  andi         sp, s11, -2010
                  srl          sp, t3, s1
                  sra          a1, tp, s10
                  lui          s11, 731823
                  add          a0, t6, s6
                  xori         s3, s4, 334
                  srli         s7, a5, 22
                  srli         s1, a6, 25
                  sub          s5, a1, s8
                  sra          s1, a4, s10
                  lui          t2, 993713
                  sub          s2, s1, s8
                  sltu         t5, a0, a7
                  auipc        a3, 893369
                  slt          s8, s0, s0
                  srai         a6, a1, 27
                  and          s0, sp, t5
                  slti         t6, s1, -1763
                  andi         a3, t2, 1344
                  slli         t2, a0, 21
                  slli         a2, sp, 29
                  nop
                  lui          s7, 976869
                  xori         s10, t5, -1812
                  sll          a2, t4, t0
                  slt          s8, s2, t0
                  slti         a6, t1, 2021
                  srli         t0, a1, 15
                  sub          a6, s4, s8
                  sra          a6, a2, t2
                  ori          s10, t3, 1395
                  sra          s9, s9, s10
                  sll          s3, s2, s6
                  sra          s6, t3, s5
                  and          t5, a2, a1
                  srai         a3, a6, 22
                  slt          s0, s3, gp
                  slt          s3, s7, s4
                  srai         sp, zero, 16
                  sub          t5, gp, s11
                  and          t4, a7, a4
                  sll          a5, a2, s0
                  sltiu        s9, a1, 2029
                  sub          s0, t5, s6
                  lui          tp, 543670
                  or           t1, t6, s3
                  sra          ra, sp, s2
                  nop
                  lui          a1, 130042
                  auipc        s0, 893447
                  sub          a3, zero, s9
                  lui          s2, 767164
                  ori          zero, a2, 1301
                  sltiu        gp, s10, -1963
                  sltiu        t6, a0, 1315
                  or           s9, a3, a6
                  sltu         t6, a0, s6
                  and          s9, s4, zero
                  sltiu        t2, a6, 1942
                  andi         t2, a2, 1849
                  xor          a2, sp, a5
                  sltu         s1, s3, t2
                  sll          a6, t5, t4
                  slti         t0, a2, -1913
                  addi         s11, a6, 1030
                  slli         a6, zero, 27
                  or           a6, s6, s8
                  addi         s5, a4, -1864
                  addi         s2, a5, 1117
                  nop
                  and          a0, a1, t5
                  sub          zero, gp, a1
                  srli         s6, s4, 3
                  sub          s8, s1, t4
                  xori         s6, s0, -617
                  slli         t2, a0, 0
                  lui          ra, 360687
                  or           s2, tp, t6
                  sltu         s9, s4, s3
                  addi         s11, a2, 149
                  sltiu        tp, ra, 1100
                  srai         gp, s10, 10
                  sra          ra, s2, gp
                  xor          s10, s1, tp
                  or           a0, ra, ra
                  add          s6, s1, t3
                  addi         s1, zero, -692
                  auipc        t0, 197457
                  lui          s3, 260736
                  sltiu        a6, sp, -784
                  and          s8, s9, a6
                  and          s0, s6, tp
                  slti         t5, s2, -826
                  and          a0, t5, t1
                  add          t0, s5, s4
                  sltu         s2, gp, t5
                  nop
                  sub          t0, a1, t4
                  xori         t6, a5, 1430
                  srli         t5, t1, 17
                  slti         s5, ra, -181
                  slt          s3, s2, a3
                  sub          sp, a4, zero
                  and          s4, s9, tp
                  and          tp, a6, t4
                  and          s1, s10, s10
                  sltiu        s9, s0, -1827
                  lui          tp, 837772
                  sub          s8, gp, t2
                  srl          a1, tp, s5
                  slli         s11, t1, 22
                  or           s8, a3, a3
                  andi         s7, a6, 859
                  sll          s9, t5, s8
                  sltu         zero, a4, s11
                  sltu         s1, a5, a3
                  lui          ra, 740636
                  srai         sp, s0, 26
                  sltiu        tp, a2, 1203
                  add          s11, s5, s2
                  lui          t2, 909506
                  slti         t4, a1, 871
                  or           s5, s8, a3
                  sll          a6, s4, t3
                  sub          s11, s5, s7
                  addi         s10, s2, -872
                  or           s11, s0, t3
                  sra          tp, a3, t1
                  sltu         t5, s7, s10
                  sra          s2, t1, s8
                  slt          ra, a6, s3
                  sll          sp, a5, s9
                  and          s10, a0, s0
                  sltiu        t4, s10, 131
                  ori          s9, s3, -753
                  slti         s1, tp, 1842
                  sub          a2, t4, a5
                  and          s7, a4, s11
                  lui          a3, 209247
                  srli         s7, t6, 29
                  slti         s0, s3, -1420
                  andi         s11, zero, 2023
                  andi         s0, t2, 1534
                  nop
                  srl          sp, s4, gp
                  slli         a3, s0, 12
                  ori          a5, zero, 1772
                  srl          t4, ra, a2
                  sra          s11, ra, a5
                  xor          a2, a1, t1
                  sub          s0, s11, a2
                  and          t1, s4, t5
                  sll          sp, t2, s5
                  xori         a2, s1, 223
                  ori          s8, a6, 246
                  or           sp, sp, a3
                  sra          a0, s7, t1
                  sltu         t2, a6, s8
                  srl          s10, t6, t2
                  auipc        s7, 118587
                  nop
                  srl          t5, s6, s9
                  andi         t0, s4, -1145
                  lui          s6, 115313
                  sll          s5, ra, s11
                  lui          ra, 1039002
                  ori          s0, s7, 707
                  auipc        s6, 80368
                  sub          ra, tp, t3
                  srli         s11, a3, 23
                  nop
                  andi         s2, t6, -804
                  auipc        s2, 290042
                  nop
                  sub          a0, a3, s7
                  andi         s4, t2, -1633
                  sub          sp, t6, s0
                  and          s5, a1, a6
                  addi         s4, a7, 712
                  srai         t6, a5, 2
                  srai         s8, t6, 11
                  xor          t4, s3, s1
                  srl          gp, s10, a4
                  xor          a0, s3, s10
                  xor          s3, gp, s11
                  andi         t5, a4, -921
                  srli         t2, t3, 10
                  ori          a6, s8, 751
                  sll          s5, a7, s6
                  and          t5, s10, gp
                  xori         a6, s2, 538
                  sub          zero, gp, s8
                  xori         sp, t1, 1151
                  andi         s11, sp, -1942
                  srli         a0, zero, 15
                  xori         a1, ra, -408
                  addi         ra, s0, 285
                  sra          s11, s10, zero
                  sll          zero, a0, s10
                  srli         s6, t3, 30
                  slli         s2, s2, 26
                  andi         a3, s9, 797
                  xori         a2, a4, -264
                  add          s7, t3, s0
                  auipc        s6, 987223
                  nop
                  srli         s1, s5, 8
                  srai         gp, s6, 19
                  slt          a2, s6, s5
                  or           s8, t1, s5
                  slli         zero, s7, 13
                  xor          t1, a5, zero
                  sub          s3, a5, a2
                  nop
                  lui          gp, 371091
                  andi         ra, s9, -883
                  auipc        t1, 941251
                  xori         a2, sp, 1598
                  lui          s3, 827464
                  nop
                  nop
                  srai         s7, t3, 30
                  sll          s1, a2, a6
                  nop
                  sub          gp, t0, a2
                  sll          ra, s1, a2
                  and          zero, s4, s2
                  slti         s1, t3, -1402
                  srli         tp, t4, 6
                  xor          s6, tp, t4
                  sltu         t1, a5, a4
                  ori          s11, a4, -933
                  srli         s7, s0, 15
                  slli         s6, a7, 17
                  addi         s2, a1, 526
                  ori          ra, a3, -932
                  slt          a0, a0, t0
                  sll          a5, s3, s5
                  sltiu        t1, tp, -505
                  lui          tp, 578995
                  ori          s4, s0, 1307
                  auipc        s9, 316263
                  srli         tp, a7, 8
                  lui          ra, 768851
                  add          a3, t1, s5
                  slt          s10, a5, a4
                  slti         gp, s10, 1195
                  slti         t5, s10, -1692
                  add          s7, t2, t6
                  lui          s6, 821355
                  srai         s4, ra, 25
                  srai         t5, t2, 25
                  srai         s11, t0, 28
                  sltiu        gp, s3, -1357
                  lui          a3, 840564
                  xori         a3, tp, 1276
                  sll          a6, t6, s1
                  xori         sp, t0, -1264
                  ori          zero, a5, -594
                  lui          sp, 898598
                  xori         s2, s2, 1185
                  add          tp, gp, t0
                  andi         s1, t2, -677
                  srai         s2, gp, 6
                  sub          zero, t2, s1
                  srli         s4, tp, 9
                  sra          ra, ra, s10
                  add          a3, a1, s9
                  xori         ra, a4, -1339
                  slli         s9, s2, 19
                  sltiu        s5, a5, -393
                  sub          t1, s5, t1
                  sltiu        a6, zero, 1369
                  xori         a1, s11, 34
                  srai         a5, s8, 3
                  slt          s7, ra, a7
                  sra          s11, s2, s0
                  sll          zero, s0, s6
                  auipc        s3, 209933
                  addi         gp, s10, -1524
                  auipc        s5, 370242
                  or           s11, zero, s6
                  lui          s2, 884581
                  slti         s0, s9, -1329
                  slti         t6, t6, -245
                  ori          s11, gp, -834
                  srl          s8, t6, s11
                  sltu         s3, t0, zero
                  slt          t6, a2, t0
                  sll          s11, t6, a7
                  sra          s11, sp, zero
                  andi         s5, s9, 1737
                  auipc        tp, 1029387
                  addi         ra, a1, -998
                  slti         s3, s5, 1921
                  sra          s5, s10, s1
                  sll          s6, ra, ra
                  addi         gp, s7, -10
                  sra          t4, t1, s2
                  xor          ra, zero, a0
                  sra          a5, t5, a1
                  srl          sp, t4, s5
                  addi         t4, a3, 1865
                  addi         s7, s4, 1229
                  srl          s7, s10, s1
                  xor          a5, a5, t4
                  lui          a3, 293035
                  xor          s2, a2, a2
                  xori         gp, gp, -26
                  and          s11, a3, t0
                  slti         s9, s5, 195
                  or           s0, s4, s0
                  slli         a5, a2, 7
                  srai         a2, zero, 0
                  and          s0, s6, t3
                  or           gp, s2, s8
                  xor          s4, t1, a2
                  and          t0, s6, s5
                  add          a0, a6, t6
                  sltiu        zero, a2, 1425
                  and          a6, t2, sp
                  addi         s9, s0, -2001
                  addi         tp, t0, -1056
                  and          t4, a6, s11
                  addi         a3, s8, -1015
                  sra          a6, zero, a2
                  nop
                  slli         a2, tp, 29
                  sll          a6, t5, s0
                  sltu         a6, s5, sp
                  or           a2, t4, s11
                  xor          a6, s3, a1
                  andi         gp, t1, -412
                  sll          s0, t0, t0
                  ori          s10, a4, 2014
                  xori         s11, s9, -618
                  sltiu        s10, s0, 306
                  sub          s11, s9, a5
                  or           ra, t4, tp
                  sub          zero, s7, a6
                  xor          s0, s8, t0
                  add          s9, a6, a2
                  slt          s6, s11, a7
                  slli         a6, s1, 31
                  sub          a3, s7, a7
                  slti         a5, a4, 2035
                  srai         s1, s2, 28
                  sra          a3, t3, s8
                  srli         tp, sp, 8
                  sub          a0, a1, s7
                  sub          t2, a6, s1
                  lui          t6, 67198
                  srl          zero, s6, a1
                  sll          s1, tp, t4
                  slli         zero, t6, 3
                  andi         s10, a4, 1752
                  slt          s3, s10, a0
                  srli         t1, s9, 30
                  andi         s9, t2, 320
                  and          t2, gp, s3
                  addi         a6, t4, -762
                  andi         a1, a3, 1527
                  andi         s9, t5, 992
                  andi         t5, s3, 690
                  slti         s10, s9, 1964
                  addi         s5, s10, -140
                  slli         s0, a7, 10
                  xori         t1, a4, 477
                  sltu         t1, s4, t0
                  add          s0, t0, s10
                  xori         tp, sp, -458
                  sll          tp, t3, a4
                  slti         s9, s2, -1098
                  slt          s11, a4, s8
                  and          t1, zero, gp
                  srl          s9, t6, s0
                  srl          a3, t6, a5
                  or           tp, s7, t6
                  srai         s10, a5, 18
                  srli         gp, s11, 6
                  add          t6, a4, a7
                  ori          s7, t1, 826
                  ori          zero, t5, 1031
                  addi         s4, zero, 41
                  auipc        t1, 210453
                  andi         t4, s6, -1060
                  lui          s6, 329485
                  srl          tp, s3, s4
                  ori          t5, s3, 1747
                  auipc        t5, 854763
                  sra          s9, sp, s11
                  sltu         s9, s6, s11
                  and          s10, t6, t2
                  srl          ra, t2, a2
                  addi         a3, s5, 1597
                  sltu         a6, t2, t6
                  nop
                  slti         a3, t6, 1229
                  sra          a1, t0, s11
                  sub          gp, s6, a0
                  sra          a6, s7, s10
                  nop
                  lui          s8, 162350
                  ori          a3, t2, 1554
                  nop
                  srl          a0, s9, t1
                  lui          a0, 294943
                  srli         t1, s3, 7
                  auipc        s8, 201701
                  sub          s3, a5, a3
                  lui          s5, 990374
                  srli         s4, s11, 25
                  nop
                  lui          a5, 725212
                  xori         t4, a4, 1146
                  sll          ra, s6, s2
                  slli         s8, s9, 13
                  ori          s8, t4, -277
                  sll          s9, s7, t1
                  lui          zero, 29169
                  sub          a0, a6, t0
                  sltu         s7, s6, s7
                  slt          t1, t2, tp
                  sra          s10, gp, s9
                  xor          s9, a5, s3
                  nop
                  auipc        a2, 315832
                  sll          tp, s6, a5
                  sub          s2, t3, a7
                  lui          a3, 327610
                  nop
                  sltiu        s0, a5, -1964
                  sra          a6, tp, zero
                  slti         s2, a7, -326
                  lui          a6, 467986
                  sll          t1, a4, s2
                  slt          s4, t4, a5
                  slt          s6, s1, sp
                  or           s5, a4, s5
                  sll          s9, ra, a7
                  slli         a0, t6, 9
                  add          ra, tp, ra
                  auipc        t2, 618488
                  srli         a1, a1, 6
                  slt          ra, s5, s3
                  lui          tp, 1001059
                  nop
                  xori         s10, a1, -525
                  slti         a0, t1, -1043
                  nop
                  andi         a1, s5, 1415
                  srl          t0, sp, s0
                  sll          s6, t0, tp
                  nop
                  srl          s5, t3, a4
                  slti         s10, s2, 1048
                  slt          s6, a1, t3
                  or           s6, t4, t2
                  srl          t5, zero, t0
                  srai         s10, s10, 16
                  ori          s0, s5, -15
                  sub          s11, a6, gp
                  srai         s7, t4, 29
                  nop
                  srai         t6, s11, 30
                  addi         t2, a7, 1554
                  auipc        a2, 421967
                  slli         s5, a5, 26
                  ori          s3, s6, -2016
                  sub          s2, a2, a3
                  auipc        s2, 802549
                  slt          gp, s7, tp
                  auipc        t0, 780764
                  nop
                  srli         s0, a2, 26
                  slt          s0, s9, a3
                  ori          s7, t0, -1731
                  or           s3, t4, a7
                  xori         s2, s6, 1525
                  slli         s6, ra, 18
                  lui          s8, 341175
                  add          s2, a2, a5
                  nop
                  sltiu        s0, s3, 1596
                  slti         zero, s7, -1440
                  srli         a0, s11, 9
                  or           a3, a7, gp
                  ori          sp, a1, 1167
                  sra          t2, s1, ra
                  auipc        s3, 489986
                  srai         a5, t3, 16
                  sll          t1, s5, s11
                  sll          s11, s0, s11
                  ori          s9, a2, 1128
                  addi         tp, a4, 1183
                  sll          t6, s11, t6
                  srl          s6, t4, a5
                  sltiu        s7, s9, 1409
                  srai         a0, a7, 8
                  slt          zero, t4, s10
                  sub          t4, a2, a5
                  ori          zero, s1, -198
                  slti         zero, t2, -1945
                  slli         a0, t5, 26
                  lui          s2, 165817
                  srai         s5, t3, 13
                  sra          t6, s4, a0
                  sll          a3, s1, gp
                  srai         s9, t6, 30
                  lui          s3, 18518
                  sll          a2, t6, tp
                  or           a2, t2, ra
                  sltiu        s7, s1, -1177
                  nop
                  sll          t5, t5, s6
                  andi         t1, s11, -204
                  nop
                  auipc        s0, 569252
                  or           t2, s7, a2
                  nop
                  sra          sp, s2, a4
                  sll          tp, a5, zero
                  sll          tp, s3, s3
                  sra          s2, a2, s3
                  sra          a3, s0, a6
                  andi         tp, s1, -1652
                  sltu         gp, a4, a6
                  sub          t4, a6, gp
                  sltiu        t4, s6, -257
                  and          s9, s1, s6
                  sltiu        tp, s3, 165
                  slli         ra, gp, 8
                  sub          gp, s5, s2
                  srl          zero, s4, s7
                  or           s1, t4, s11
                  nop
                  sll          t0, s9, a5
                  srl          a3, ra, zero
                  sltiu        tp, s5, -1827
                  xori         s5, t6, 1749
                  sub          a1, s1, a4
                  srli         a0, t4, 17
                  sltiu        s2, a3, -1094
                  and          t2, t0, a7
                  slt          a1, a4, t6
                  xori         s3, s0, -1088
                  sra          a5, t0, a3
                  sub          t6, s0, s1
                  sltu         a6, s10, s9
                  slti         a5, zero, 391
                  lui          a5, 560130
                  srli         s5, t6, 25
                  sltiu        sp, s0, -61
                  lui          t6, 45873
                  srai         s8, t0, 12
                  xori         t6, gp, 1747
                  and          s2, s5, s4
                  srai         s6, a1, 16
                  slli         s2, s4, 7
                  xori         a5, s3, -1577
                  srli         sp, gp, 12
                  sra          tp, s11, s1
                  srli         t2, t0, 3
                  addi         a0, s0, 292
                  ori          sp, a5, 929
                  sltu         a5, t3, s3
                  auipc        s5, 153940
                  xori         t0, a6, -824
                  xor          s10, a3, a5
                  srl          s9, t4, sp
                  andi         a5, a6, -762
                  slt          s7, s7, a1
                  ori          s10, t3, -430
                  xor          t2, ra, a1
                  slt          s2, s10, t5
                  ori          ra, gp, 1765
                  sll          gp, a6, t0
                  and          zero, gp, t4
                  sra          sp, a7, a6
                  xori         t6, s0, 314
                  xor          t5, s8, s3
                  sll          s0, s4, a4
                  sub          a5, ra, s1
                  slt          s3, s9, s9
                  and          s7, ra, t1
                  add          s2, ra, s9
                  slti         s2, a3, -1774
                  slt          t5, a4, s10
                  auipc        s0, 255839
                  xor          t2, a7, a1
                  srl          ra, t2, t5
                  auipc        a3, 624365
                  srl          s4, s5, s8
                  srli         a6, a0, 7
                  add          gp, t5, t3
                  sltiu        t5, a7, 1623
                  nop
                  slli         s11, a0, 11
                  srl          a0, a7, s9
                  ori          a6, s4, -2045
                  sll          a5, a7, t1
                  andi         a6, a0, -1206
                  addi         a0, s3, 725
                  srl          s1, tp, s10
                  xori         a6, a7, -898
                  lui          t1, 1019578
                  ori          a6, a6, -574
                  srli         a5, s10, 3
                  slli         sp, s2, 13
                  auipc        tp, 527123
                  andi         zero, a6, 1510
                  nop
                  srai         t2, s1, 26
                  andi         s2, ra, 1298
                  andi         s7, s5, 1620
                  sltu         s10, ra, t6
                  srli         a5, a3, 21
                  or           gp, s0, a1
                  auipc        s6, 777194
                  srl          zero, a2, a7
                  sltiu        s1, s11, -1850
                  nop
                  xori         t0, s7, 1406
                  srli         t2, s6, 4
                  auipc        s1, 828751
                  srl          a1, gp, ra
                  or           t6, a3, a5
                  auipc        s11, 546246
                  sub          s11, a3, t5
                  sra          s9, tp, t2
                  auipc        t6, 1002924
                  slti         s10, sp, 101
                  slti         s7, gp, 955
                  sub          t5, s9, s1
                  slli         s1, t6, 6
                  xor          zero, s6, a4
                  nop
                  sra          a1, t0, s6
                  slti         t1, s11, 453
                  sra          s3, a0, s8
                  add          s1, t4, s2
                  slli         a1, a2, 7
                  nop
                  slli         s8, s11, 4
                  andi         s7, t5, -1688
                  ori          s1, s1, 942
                  srai         a3, a6, 12
                  sra          s3, t4, s5
                  slti         t2, s2, 166
                  auipc        t5, 1020788
                  add          s1, a6, zero
                  slli         t4, zero, 9
                  lui          s5, 208901
                  xori         tp, s3, -380
                  xor          s3, t0, a4
                  srai         t4, s10, 20
                  addi         t5, s5, -904
                  auipc        t5, 753567
                  sltu         a1, a2, s9
                  xori         a2, t0, 370
                  lui          a5, 1004835
                  ori          s11, s5, 1500
                  slli         s7, t1, 5
                  ori          tp, a2, 533
                  slli         sp, s6, 22
                  xor          s11, s10, sp
                  sll          a3, a3, a7
                  srai         s1, a2, 31
                  slli         s9, t0, 18
                  sltu         t2, a1, gp
                  sub          s7, sp, t5
                  xor          s10, s11, s6
                  lui          a1, 1044142
                  andi         t6, a2, -258
                  lui          t6, 293158
                  nop
                  sra          s8, t5, a5
                  xori         t2, a6, -702
                  auipc        s11, 958664
                  sra          s3, t2, t3
                  srl          ra, t1, gp
                  and          s3, a4, t3
                  sra          gp, a7, s5
                  andi         s4, s7, 1206
                  slt          t1, a2, a5
                  srli         t0, a7, 21
                  slt          a3, ra, t5
                  ori          t0, s0, -905
                  sll          s6, s7, t4
                  and          t5, t6, s3
                  srai         t5, a6, 26
                  xori         s4, s3, -233
                  sll          s10, s2, s5
                  slti         a2, ra, 993
                  sub          s11, s9, s8
                  andi         s2, a4, 133
                  slli         s7, s10, 24
                  add          zero, s7, s9
                  ori          t6, t2, -1051
                  auipc        s4, 298433
                  nop
                  sub          s3, sp, s9
                  sub          t4, t2, t3
                  slli         s3, zero, 12
                  slti         a2, s4, -75
                  sub          s11, s7, a7
                  addi         t6, t2, -453
                  slt          a2, s6, a5
                  and          a1, t2, a6
                  addi         s2, a6, 412
                  srli         s11, a3, 31
                  ori          s3, a6, 1403
                  andi         s7, ra, 705
                  andi         a6, tp, 587
                  slli         s5, a3, 21
                  srai         a6, s6, 21
                  and          a5, ra, tp
                  nop
                  addi         t1, gp, -108
                  srli         s5, a4, 2
                  sltu         s4, zero, s0
                  add          s10, s3, s0
                  slli         s10, s7, 5
                  addi         a0, s9, 721
                  slli         s4, a0, 10
                  srl          t2, ra, s2
                  nop
                  srli         s0, t6, 12
                  xori         a5, zero, 1837
                  xori         t0, s0, -642
                  sub          t0, s9, s10
                  srai         gp, tp, 18
                  sltu         s3, s3, a2
                  sra          a0, s4, s2
                  addi         s5, a0, 842
                  add          a3, zero, zero
                  srai         s9, s5, 8
                  slti         s3, t4, 1984
                  sub          ra, s11, s1
                  sltu         t2, t0, t2
                  auipc        s7, 4354
                  srl          a3, t1, a2
                  sub          s3, tp, a0
                  nop
                  slt          t0, a6, sp
                  srli         ra, t1, 2
                  lui          gp, 247723
                  xori         ra, s8, -89
                  addi         a3, a4, 1425
                  and          a6, a2, t1
                  slli         a3, a6, 19
                  andi         t2, a3, 504
                  slt          t6, a5, s1
                  andi         a1, s0, -136
                  slti         s3, sp, 827
                  ori          s6, a6, -1760
                  slt          s0, s6, t5
                  srl          s6, a7, a7
                  srai         t5, ra, 14
                  xor          s11, s0, a7
                  sra          t0, t0, t3
                  xori         t5, s3, -537
                  and          zero, t5, a2
                  slli         s4, a7, 3
                  srai         ra, a4, 29
                  andi         s0, zero, 1399
                  or           s11, s3, s6
                  sltu         t5, s11, s2
                  lui          t4, 83735
                  lui          a3, 509631
                  slli         ra, s8, 24
                  sltiu        a1, tp, -940
                  nop
                  sll          s0, s2, s2
                  lui          s9, 156142
                  auipc        s6, 249663
                  sll          s4, s6, t0
                  srai         t6, t3, 22
                  addi         a1, s4, 951
                  ori          s6, s7, -402
                  srli         ra, a1, 2
                  slti         t0, s6, -615
                  slti         s2, s9, 1648
                  or           s8, s8, s5
                  auipc        s6, 75030
                  slli         s5, a5, 12
                  slli         t5, s9, 26
                  xori         a3, t3, -1585
                  xor          s11, a3, gp
                  or           s11, a3, t4
                  slti         a0, a6, 1256
                  add          a1, s9, a7
                  sub          s3, s9, ra
                  slt          s9, a6, a7
                  addi         s0, ra, -647
                  addi         s9, s11, 1266
                  xori         tp, s4, 1132
                  add          s8, s5, a4
                  slti         s3, a5, -1258
                  srli         ra, s6, 14
                  srli         sp, sp, 9
                  sll          a3, a7, a0
                  sltu         t6, a1, ra
                  sltu         t1, a1, s7
                  srl          a1, t4, a4
                  slt          s7, a4, t3
                  lui          a3, 484503
                  xor          t0, a7, s10
                  nop
                  slli         t5, tp, 19
                  sra          t2, s10, s11
                  auipc        s8, 732584
                  sub          a1, s1, sp
                  xor          s6, s11, t0
                  sra          zero, a2, a4
                  sll          a5, t3, s1
                  srli         s4, a5, 8
                  nop
                  sltu         s7, s3, a2
                  xor          s0, s2, gp
                  ori          s4, s8, 1575
                  sub          t0, s11, a0
                  andi         s8, t1, 1667
                  lui          s5, 939951
                  ori          t6, t2, 1048
                  srli         s5, tp, 23
                  or           s7, a5, a6
                  sll          zero, s5, s10
                  xor          s9, t1, s4
                  add          a3, s4, t0
                  nop
                  sltu         ra, s11, a1
                  srl          s6, ra, s0
                  slt          gp, zero, a6
                  andi         s6, s1, 419
                  or           s4, t5, s4
                  sra          s2, t1, t4
                  addi         s11, s4, 856
                  sltiu        t6, a2, 1994
                  lui          s2, 742538
                  slti         s1, tp, -676
                  sub          zero, a5, s1
                  add          s8, s1, s9
                  srai         a3, t4, 26
                  srai         s6, s6, 16
                  xor          s8, s1, s5
                  xori         s2, sp, -1433
                  xori         t6, t3, -1392
                  sub          s6, a5, zero
                  add          s5, a2, a7
                  auipc        t4, 26018
                  sra          s11, t4, t2
                  sub          sp, s5, t4
                  srl          a0, s1, tp
                  sltiu        s4, s2, -2023
                  add          a0, t2, a4
                  andi         s4, s10, -670
                  sltiu        t0, ra, 1915
                  auipc        s9, 582162
                  srai         s9, t0, 24
                  srai         s5, sp, 15
                  nop
                  srl          t2, a1, a7
                  addi         s2, s9, 838
                  xor          a5, tp, a5
                  sub          s0, s11, t6
                  srai         a1, t5, 18
                  and          s6, s10, a4
                  ori          ra, sp, 1914
                  andi         s11, a4, 1057
                  srl          s4, s9, t6
                  andi         a6, a3, -25
                  xor          t4, a5, a6
                  auipc        a2, 52528
                  slti         s3, a2, -808
                  slli         s4, t4, 30
                  ori          t2, a2, -1177
                  srai         s0, a7, 2
                  srli         t6, s1, 25
                  add          a2, s7, ra
                  srl          s11, t1, t0
                  slt          s9, s6, s8
                  xor          s3, zero, a2
                  xor          s3, s4, s6
                  slt          sp, s4, t5
                  slti         a0, t3, -104
                  sltiu        a2, a5, 260
                  add          a6, zero, a1
                  sltiu        s8, a3, -495
                  addi         s1, a6, -425
                  ori          s0, t2, -701
                  sra          a0, t5, s2
                  srli         t1, t2, 31
                  sub          s10, a4, s10
                  nop
                  sltiu        s9, a2, 1237
                  nop
                  srli         s11, s9, 6
                  slli         a1, s4, 23
                  sll          s3, t6, s3
                  sltu         gp, s4, s11
                  add          gp, s9, t6
                  nop
                  slti         s9, a0, 1152
                  sll          t4, s1, s3
                  slli         t0, t1, 14
                  srl          s11, tp, a0
                  ori          a0, s5, -1423
                  slti         zero, s3, 1183
                  add          gp, a0, t2
                  slti         s8, s5, -61
                  sltu         sp, s4, a1
                  andi         s7, s5, -354
                  xor          s0, a2, a0
                  addi         a6, t5, 1302
                  lui          ra, 660413
                  sra          sp, s4, a0
                  srli         t5, s3, 28
                  sltu         s7, s2, s3
                  nop
                  sltu         t4, gp, s4
                  and          t5, s10, s2
                  andi         sp, s8, -1782
                  srli         gp, a3, 7
                  or           t0, s1, gp
                  srli         s1, a7, 23
                  andi         s11, a3, 680
                  sltiu        s4, s0, 1997
                  ori          a6, s6, 558
                  slli         a5, t0, 13
                  and          s0, a1, a5
                  and          t4, s2, zero
                  or           tp, ra, s0
                  and          s0, a6, t4
                  sra          a5, t4, a3
                  auipc        t1, 665819
                  or           gp, s3, a1
                  lui          a2, 262568
                  sltu         a2, t1, s0
                  ori          s5, a2, 75
                  xori         s1, s9, 43
                  slti         s11, s6, 1252
                  and          s4, a1, t5
                  ori          s10, t5, -1307
                  srai         t2, zero, 3
                  slt          s7, t5, s6
                  sll          s5, t6, s0
                  slti         zero, s5, 1568
                  lui          s4, 757619
                  slt          s3, t0, ra
                  nop
                  sltu         s9, t3, a6
                  xori         t4, t6, -1636
                  sltu         t6, a4, a0
                  sub          s6, t1, s0
                  srl          s0, a7, t6
                  and          s8, a3, t5
                  sll          s7, t4, s7
                  slt          t4, t5, a6
                  slti         t2, t3, 1317
                  sub          t6, t0, t6
                  or           s1, s11, a0
                  slli         s11, zero, 6
                  add          t6, a2, sp
                  addi         a1, t6, 1252
                  slt          s1, a5, s2
                  srli         s11, a4, 27
                  srai         s0, t0, 0
                  lui          tp, 857644
                  auipc        t0, 333056
                  srai         sp, s8, 19
                  andi         t6, s2, 1732
                  sltu         t0, t6, sp
                  slt          t0, s4, a7
                  sll          sp, s10, t0
                  auipc        s9, 160421
                  andi         a2, s5, 1296
                  or           t4, a0, s11
                  xor          t1, gp, s1
                  nop
                  slt          t6, t2, a0
                  srai         t6, t3, 20
                  srli         s3, s9, 2
                  nop
                  sub          s5, s0, a0
                  srl          gp, s4, a6
                  and          t6, s0, s0
                  slt          a0, a4, zero
                  slt          s4, a7, sp
                  sltiu        t0, gp, 233
                  sll          gp, a1, t4
                  ori          s3, a4, -1678
                  xori         s11, t5, -1698
                  sub          t6, a3, ra
                  andi         s4, s3, 659
                  slt          t0, s8, t5
                  xor          zero, t4, s11
                  ori          a2, s3, 1747
                  or           gp, s9, zero
                  lui          t5, 680618
                  addi         s2, a6, -892
                  srli         s0, s3, 17
                  addi         s10, s1, -1348
                  andi         a6, a5, -659
                  andi         gp, a3, 1972
                  nop
                  add          s0, a1, t5
                  auipc        t6, 841339
                  sltu         s11, s8, a4
                  slti         s8, t5, 975
                  add          s5, s6, t6
                  xor          a1, s0, t6
                  srli         a1, a3, 1
                  srai         a2, t2, 0
                  lui          s5, 228558
                  addi         a5, s4, 1575
                  slli         t4, t3, 17
                  sltu         a3, s0, t0
                  slt          s7, zero, a5
                  ori          s4, sp, 2014
                  xor          s11, s9, a1
                  andi         s11, s2, 321
                  nop
                  srli         a5, s9, 10
                  sra          a2, a4, t4
                  lui          a2, 610879
                  slt          s0, s1, s11
                  srl          s4, s0, s2
                  lui          s4, 74126
                  or           t6, a0, t6
                  srl          s3, t5, t0
                  slli         s8, s9, 4
                  xori         a1, s0, -164
                  and          t4, s3, s1
                  or           a2, t6, t5
                  srl          a1, s7, s8
                  nop
                  sltiu        a1, tp, 1077
                  or           s10, a2, a0
                  slli         tp, s1, 22
                  auipc        gp, 788202
                  sltu         t5, s2, sp
                  nop
                  lui          t4, 957717
                  srl          sp, a5, s4
                  lui          s6, 69843
                  nop
                  xori         s11, zero, -388
                  srli         ra, gp, 11
                  sltu         s1, s7, s5
                  srai         tp, s3, 12
                  or           a1, s2, s6
                  xor          s4, t5, a3
                  slli         zero, a4, 17
                  or           t1, s9, a5
                  sltiu        sp, t4, -1748
                  add          s2, a6, tp
                  slt          a5, t4, sp
                  srai         a0, s10, 30
                  xori         a1, a4, 288
                  sltiu        s0, tp, -1941
                  xori         s9, s2, 1028
                  srl          a0, s0, ra
                  lui          t0, 984906
                  auipc        a3, 1024102
                  sra          t4, a1, a4
                  add          s7, t5, a1
                  slt          s3, a3, t0
                  srai         a0, s4, 14
                  addi         t1, tp, -1560
                  sub          t0, a0, s11
                  xori         zero, a1, 402
                  and          a0, t3, tp
                  sll          a2, s9, s11
                  and          a3, t5, zero
                  auipc        s9, 300117
                  sra          a6, ra, s3
                  xori         t4, t2, -1574
                  xori         s11, a4, 672
                  or           gp, s10, s5
                  add          t4, s8, s6
                  and          s5, a3, a2
                  slti         zero, s1, -206
                  sltiu        s7, a5, -553
                  sra          s2, t4, a5
                  add          a1, t3, s6
                  lui          s11, 411704
                  add          tp, t6, s4
                  addi         a2, s1, -2024
                  sltu         a1, s10, tp
                  xor          a1, s1, t4
                  sltiu        sp, a1, 1431
                  and          a0, t3, a1
                  ori          a5, s11, -670
                  srli         t0, s1, 3
                  and          a1, s8, gp
                  sll          a3, a0, s3
                  slt          gp, ra, ra
                  srli         a3, s8, 22
                  sra          s0, a3, t6
                  addi         t6, t4, 526
                  xor          s7, s7, zero
                  and          s0, s8, a7
                  slt          t5, a6, t6
                  sll          s11, a0, t0
                  lui          a6, 963865
                  sltu         t2, a1, a0
                  nop
                  and          s3, s2, a6
                  srli         t2, s5, 2
                  srl          t4, a1, t0
                  slti         s0, t0, 127
                  sll          s4, ra, t4
                  or           s3, a1, s6
                  ori          t5, s5, 1407
                  sltiu        s7, a5, 1281
                  ori          s9, t0, 1174
                  sra          s2, t0, a5
                  sltu         s1, s10, s9
                  srai         s7, a1, 8
                  srl          s11, s6, tp
                  sltu         t2, a3, s11
                  slt          a5, s1, a0
                  andi         t0, a3, -1828
                  xori         t0, s3, -1090
                  srl          s8, s7, s7
                  xori         a5, t1, -753
                  sltiu        t2, a3, -568
                  andi         s4, s1, -909
                  or           t2, s10, sp
                  addi         s10, s11, 420
                  slli         s4, ra, 7
                  or           s9, s5, s10
                  andi         s0, s1, 1932
                  sltiu        s2, s6, 1644
                  addi         t6, s9, -1548
                  xor          t0, t4, a1
                  srli         s1, a6, 18
                  ori          s6, s0, -930
                  slli         t5, a2, 13
                  srl          s7, a7, sp
                  add          t6, sp, s2
                  auipc        a0, 404687
                  slt          zero, s9, s1
                  add          t0, s10, t6
                  slt          gp, tp, a0
                  addi         s1, zero, -1245
                  sltu         a3, s9, a5
                  andi         s2, s10, 1149
                  slti         a6, tp, 302
                  xori         t5, s11, -458
                  sltu         t5, ra, ra
                  addi         s9, a3, 1900
                  slt          t5, s9, a3
                  slti         s8, a6, 55
                  srl          t0, s7, t3
                  srai         s8, a2, 27
                  slli         gp, s9, 31
                  addi         a0, s2, -1364
                  sltu         a3, zero, tp
                  xor          a3, t5, s9
                  sltu         t2, s1, gp
                  sltu         s3, s1, t0
                  nop
                  slt          a1, t1, s6
                  slt          t6, t4, t3
                  sub          a1, t1, s10
                  slt          s2, a7, a1
                  and          t0, s9, t1
                  slti         a1, tp, 1344
                  ori          s5, s8, -823
                  sll          tp, t1, sp
                  slli         s3, t1, 27
                  sra          s7, s6, t3
                  slt          ra, ra, s9
                  and          s0, t2, t3
                  slti         tp, sp, 1754
                  xori         a2, s5, -662
                  xor          s2, a4, sp
                  srli         a0, a5, 17
                  sra          s7, gp, s11
                  xori         s8, t3, 566
                  slti         s10, a0, 1542
                  srli         a1, a3, 30
                  srai         s0, s11, 25
                  sltiu        gp, s5, -1273
                  add          sp, ra, s10
                  srai         s1, t3, 26
                  xor          a2, t3, s2
                  sltiu        a5, s9, -1057
                  add          a1, s2, t2
                  xori         ra, gp, 1284
                  slli         a3, a1, 14
                  nop
                  nop
                  srai         s6, t1, 20
                  sra          s6, t4, a7
                  srai         sp, s3, 31
                  auipc        s0, 432382
                  sll          t2, t3, t4
                  slli         sp, s2, 20
                  sra          s10, zero, s11
                  nop
                  srli         t5, a6, 1
                  sltiu        a0, t0, 297
                  sub          t6, s0, s7
                  and          a2, ra, gp
                  srli         s5, t6, 3
                  xori         t4, t0, 1528
                  nop
                  auipc        a5, 632200
                  sltiu        a3, t5, -490
                  slti         tp, a2, -1747
                  srai         ra, s6, 0
                  srai         tp, t4, 30
                  slti         zero, s7, -403
                  lui          t2, 4461
                  ori          s5, s0, -1459
                  sub          t6, s3, t3
                  sub          s7, s7, s7
                  and          t1, t5, t6
                  sltiu        t0, s8, -271
                  andi         s1, s8, -493
                  slt          s4, t3, s11
                  srli         a3, t6, 26
                  sltiu        a1, a1, -761
                  addi         ra, t5, 9
                  srli         s5, t6, 17
                  srai         s10, s2, 18
                  xor          t4, t5, s3
                  andi         a5, t4, -1426
                  sub          s3, tp, t4
                  sltu         a1, s11, s5
                  slli         t5, a7, 13
                  sltu         t1, t2, s7
                  slt          a1, a1, s4
                  sra          s11, s0, t5
                  andi         t4, a7, 359
                  xor          ra, gp, a1
                  add          a1, s11, s10
                  xori         a1, s10, -1086
                  srl          s1, a5, s5
                  slti         s4, s0, -1864
                  ori          t6, a3, 710
                  slli         s7, a4, 10
                  andi         a6, s3, 1127
                  sltiu        a2, s8, -1830
                  addi         t5, s3, 347
                  slli         a3, s2, 24
                  andi         s0, s9, 1620
                  sltu         t0, t3, a5
                  add          t1, s8, a6
                  slti         a6, s2, 433
                  slli         s11, t0, 30
                  lui          s6, 853185
                  sra          t1, s1, t4
                  sra          s7, tp, gp
                  andi         s2, t3, -1489
                  add          s1, a4, a3
                  and          sp, a7, a4
                  addi         s7, s9, 1623
                  lui          a3, 819618
                  xori         t4, s4, -62
                  sra          ra, a4, a3
                  slti         a6, s6, -1220
                  srai         s6, s6, 8
                  srai         t0, t4, 12
                  srl          sp, ra, a7
                  and          t2, a5, gp
                  srl          s3, tp, s8
                  sra          s1, ra, s9
                  slt          gp, t2, t1
                  add          a2, s3, a0
                  sll          ra, s11, a6
                  lui          s2, 700768
                  andi         s10, s2, -113
                  add          zero, a1, s7
                  or           t4, a0, t6
                  sra          s10, a1, t5
                  sra          t4, s8, s8
                  add          zero, gp, s4
                  xori         tp, t1, -1246
                  srli         s2, s6, 27
                  srai         s7, ra, 7
                  ori          s11, s4, 2017
                  or           sp, tp, s8
                  srli         s1, ra, 1
                  add          s2, t6, a4
                  lui          s0, 1024266
                  ori          s3, a3, -549
                  addi         t4, sp, -888
                  lui          s6, 308423
                  add          s6, s5, ra
                  lui          s7, 27926
                  or           s10, s11, t3
                  slli         sp, s3, 25
                  lui          a2, 959553
                  slti         sp, s7, -1618
                  auipc        a0, 756284
                  add          s7, s8, s10
                  slt          s4, s9, zero
                  slli         a6, s6, 12
                  nop
                  andi         a5, s9, -541
                  sll          a3, s0, t3
                  or           a0, s9, s3
                  auipc        t4, 821117
                  nop
                  srai         zero, a4, 16
                  xor          t5, t3, a5
                  srai         a6, a6, 5
                  sltiu        a2, t0, 98
                  andi         s1, a6, -1249
                  ori          s3, t4, 889
                  slt          s9, a2, s10
                  ori          s9, gp, 1470
                  auipc        zero, 47008
                  addi         t0, a1, -936
                  sll          s0, t5, gp
                  or           s0, s8, s1
                  srl          t4, t2, a2
                  lui          a2, 758455
                  sll          t6, s5, s5
                  sltu         a1, a0, s5
                  slt          s8, s10, s9
                  and          s8, s11, a3
                  and          s2, a5, s3
                  ori          a2, t1, 1090
                  add          a5, s2, s9
                  nop
                  lui          tp, 512034
                  and          t2, s2, s8
                  xori         t2, tp, -1320
                  or           a6, s0, a6
                  sltiu        a1, t6, -1560
                  andi         t5, s9, -713
                  xori         s10, t0, -182
                  and          s5, zero, t1
                  sub          a2, s1, s2
                  srli         t1, t0, 27
                  sltu         s4, t1, s10
                  sll          s6, gp, s0
                  slt          s2, zero, sp
                  sltiu        a5, a5, -683
                  srli         tp, s1, 25
                  sltiu        t4, s9, -1995
                  lui          t5, 314859
                  sub          t0, a1, tp
                  ori          s0, tp, -1622
                  xor          t1, s11, s2
                  sra          s8, s7, s1
                  addi         s0, a3, -1297
                  and          t6, s4, s4
                  srai         s8, s6, 12
                  xori         a3, s6, 1968
                  srl          t5, s1, s6
                  srai         a0, s5, 13
                  sub          t5, s3, s4
                  slti         s6, a3, -1468
                  andi         s11, s3, -1008
                  sra          t4, a4, a7
                  xor          zero, a3, s7
                  nop
                  ori          t5, t3, -962
                  auipc        t1, 960966
                  sub          s1, a1, zero
                  xor          s0, a7, a1
                  sll          s1, a0, a6
                  andi         s3, t2, 212
                  sltiu        a6, s6, 963
                  addi         s8, t0, 454
                  auipc        tp, 23128
                  sltu         s10, a5, s2
                  sltiu        s7, a4, 220
                  slti         s1, s3, 2045
                  slti         zero, a1, 1131
                  or           s10, ra, s6
                  slt          t1, zero, gp
                  lui          s5, 471390
                  slli         t1, s0, 11
                  slti         a5, t3, 1727
                  sra          t6, t4, t6
                  slt          t6, ra, s7
                  auipc        tp, 9331
                  srai         a3, a4, 11
                  andi         tp, t1, -1321
                  sltu         s0, s9, a0
                  ori          a1, a3, 1079
                  add          s8, s5, s9
                  sltu         s4, s3, zero
                  slti         s1, s6, -332
                  sub          s7, ra, t5
                  auipc        a2, 97799
                  or           s3, t3, s8
                  sll          s3, t0, a5
                  sltu         s3, t3, s11
                  or           t4, t6, s1
                  srli         t0, gp, 9
                  srli         t6, s7, 30
                  andi         s10, t3, 242
                  sub          ra, gp, sp
                  slt          a2, sp, a7
                  ori          a6, a3, -1987
                  addi         zero, tp, -1940
                  sltu         s3, s7, s0
                  srai         s4, s9, 29
                  srai         s7, s4, 17
                  xor          t0, s6, a1
                  xori         zero, a7, 1194
                  sra          a3, s5, t2
                  or           s1, a3, s5
                  auipc        s4, 274028
                  sra          t4, t6, s1
                  sra          s4, s0, t5
                  sll          s4, s10, sp
                  sra          t4, s3, ra
                  sll          s0, a0, t6
                  lui          a2, 881464
                  auipc        sp, 423154
                  ori          s3, t3, -494
                  slti         tp, t6, 1956
                  sll          s4, a6, t4
                  and          t6, t3, s7
                  lui          s2, 687258
                  addi         t1, s11, -1274
                  slli         a5, s1, 15
                  andi         a5, t4, 848
                  andi         s3, s4, 1181
                  xori         s11, sp, -1371
                  slt          s5, t6, t0
                  srai         s4, t6, 21
                  srli         s10, s2, 15
                  srai         s8, zero, 24
                  sub          a0, t1, a6
                  slli         a3, gp, 2
                  nop
                  xori         s3, zero, -772
                  slti         t6, s8, -1362
                  lui          t5, 306663
                  auipc        s9, 107771
                  sub          s7, a2, t6
                  ori          t5, a0, -83
                  sll          a3, a2, t1
                  nop
                  slti         a2, s6, -1168
                  and          s11, t4, s4
                  auipc        t2, 1006541
                  and          a3, s3, a5
                  ori          s1, s1, 1982
                  auipc        s7, 404182
                  lui          sp, 949393
                  auipc        a0, 826092
                  andi         zero, ra, -1027
                  sra          s7, t6, t2
                  andi         s7, ra, 1155
                  nop
                  xori         s1, a0, -1232
                  sltiu        s5, t1, -25
                  slli         s3, s8, 28
                  ori          s8, a4, 1489
                  srli         zero, s10, 30
                  srli         t0, a2, 9
                  sra          t4, s1, gp
                  sltu         s3, a0, zero
                  slli         t0, a6, 15
                  slt          ra, gp, t6
                  slt          s11, s6, s9
                  sltiu        s5, t5, 460
                  slt          s10, ra, s3
                  andi         a0, zero, -1636
                  sra          ra, s1, sp
                  or           s10, s1, s11
                  srai         s0, sp, 25
                  srai         gp, s5, 0
                  slt          t4, a7, a7
                  auipc        sp, 111519
                  srli         s3, a7, 5
                  srli         a0, s6, 14
                  sra          a0, s5, a1
                  ori          ra, t6, -1572
                  xor          s8, s8, t2
                  slt          s8, a0, ra
                  nop
                  srl          s1, s10, a3
                  slli         s2, t5, 19
                  slti         t4, s10, 1652
                  or           s5, s2, s8
                  srai         s7, s1, 4
                  sltu         s11, a2, a2
                  xor          a5, a6, s2
                  nop
                  and          s4, t5, s1
                  sub          s9, gp, a2
                  sltu         a3, sp, t2
                  srli         s6, s4, 11
                  sra          s10, s3, s6
                  lui          s1, 543092
                  and          a1, t3, gp
                  addi         s3, t6, -1694
                  srl          t0, s11, zero
                  sltu         a0, a4, zero
                  add          s3, a0, s10
                  or           s5, s4, tp
                  xor          s3, s10, a3
                  andi         a6, t5, 1597
                  srli         sp, a0, 13
                  srl          t6, t6, t2
                  sltu         s11, t1, sp
                  xor          s7, s8, s1
                  slti         ra, t1, 1274
                  xor          t5, s4, t6
                  srl          sp, s4, t5
                  sltu         s3, a7, s3
                  or           zero, s7, a7
                  lui          gp, 67782
                  addi         s9, t2, -20
                  or           s0, s11, s0
                  ori          sp, t1, 1206
                  sra          s1, s3, a2
                  addi         a0, t0, 1244
                  sub          t4, s8, tp
                  auipc        zero, 1012494
                  sra          a0, s6, s4
                  slt          ra, s4, s10
                  sra          s1, t2, a1
                  sub          s2, a7, s8
                  sltiu        t0, t6, 712
                  ori          t4, ra, 2038
                  auipc        s5, 86385
                  slt          s0, a7, ra
                  sltu         a1, s0, zero
                  sra          ra, a5, a4
                  nop
                  sltiu        t0, s7, 1656
                  srai         s7, a5, 15
                  and          a6, sp, t4
                  sra          a2, s5, a1
                  add          s2, s0, sp
                  sltiu        s9, a6, -1312
                  xor          s3, t2, s3
                  slt          a1, a6, a4
                  lui          s9, 200334
                  ori          s9, t1, -1056
                  auipc        a1, 207366
                  slt          t2, ra, ra
                  srai         s9, sp, 3
                  or           t2, s2, a0
                  lui          gp, 254571
                  slti         s5, t4, 1797
                  nop
                  sub          t2, t2, a6
                  srl          s7, a6, a5
                  and          t5, s7, s1
                  slt          t2, a6, t2
                  nop
                  and          s3, a4, s10
                  sltu         ra, ra, s4
                  sll          sp, a4, s10
                  sll          sp, s5, s7
                  xori         s3, s4, 1344
                  srai         s5, a0, 3
                  and          a0, sp, a0
                  slti         a5, a4, -559
                  xori         a1, zero, -393
                  srai         ra, a7, 21
                  sll          gp, a2, t2
                  xori         t5, s8, -1518
                  sltu         a0, a0, tp
                  slti         s2, sp, -996
                  srl          a3, ra, s9
                  sll          s3, ra, a2
                  srai         t2, s10, 2
                  xori         s3, s0, -51
                  add          gp, s7, a4
                  slti         a3, s7, 1054
                  lui          s4, 613087
                  slti         gp, sp, 1168
                  sltu         s4, t3, a2
                  addi         a2, s1, 1019
                  addi         s8, s9, 322
                  sub          s7, t4, t0
                  sub          a0, s8, t2
                  lui          t2, 948079
                  addi         a0, a4, -295
                  sub          s6, t2, gp
                  auipc        a3, 687915
                  xori         s11, s10, -1044
                  sltiu        s11, t0, -1221
                  addi         a6, a1, 561
                  nop
                  xori         s2, s1, -912
                  add          a1, t5, s1
                  sltiu        s8, t0, 1045
                  sltu         t1, t0, sp
                  sub          s8, s8, s9
                  xor          s4, a4, a7
                  slti         a0, s2, -606
                  sub          a5, a3, a5
                  srl          t0, a2, sp
                  sll          s6, s11, s11
                  sll          a1, ra, t1
                  xori         gp, t5, 1043
                  and          s1, s1, ra
                  sll          a2, t1, s3
                  addi         t5, s6, -1511
                  sltiu        s6, s7, -8
                  sll          s2, ra, s11
                  slti         t4, a2, 1466
                  auipc        ra, 327125
                  addi         t2, a5, 1439
                  lui          tp, 839459
                  and          t1, t3, a6
                  nop
                  or           gp, s5, s3
                  slt          s2, s8, t2
                  sltu         t2, s1, gp
                  slt          s5, s2, a6
                  sub          gp, a7, s10
                  auipc        a1, 554643
                  xori         s1, t3, -1848
                  slti         a5, sp, 178
                  sltiu        s10, a7, 348
                  sll          t0, a7, s11
                  slt          s5, a6, s2
                  andi         s2, a4, -887
                  addi         s7, s3, 823
                  slli         a6, t0, 11
                  sltiu        s4, tp, -603
                  nop
                  slli         s0, s7, 14
                  nop
                  slti         s6, a6, -1100
                  sll          t6, s4, tp
                  li           s0, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           s9, 0x80000000
                  li           t1, 0x80000000
                  li           gp, 0xbf11bf9d
                  li           s10, 0x0
                  li           a6, 0x80000000
                  li           a2, 0x80000000
                  li           t0, 0xffffffff
                  li           a3, 0xbf78106e
                  li           s1, 0xffffffff
                  sub          a2, s0, s0
                  add          t1, a2, a2
                  add          a6, s1, s10
                  sub          s1, gp, s10
                  lui          s10, 532978
                  sub          s1, t1, s9
                  add          t0, s0, a3
                  auipc        gp, 795228
                  auipc        gp, 573699
                  nop
                  sub          gp, t0, a6
                  sub          a6, t1, a3
                  lui          s1, 1033076
                  lui          a3, 30714
                  addi         a3, t1, -1249
                  addi         s9, s10, -1663
                  addi         t0, s0, -1092
                  nop
                  lui          s1, 925900
                  auipc        a2, 1000955
                  sub          s0, t1, s10
                  nop
                  lui          t0, 15140
                  auipc        a3, 416275
                  add          s1, s0, t1
                  add          s9, a3, a2
                  sub          a3, t0, gp #end riscv_int_numeric_corner_stream_16
                  and          s6, s11, s2
                  lui          s10, 101547
                  slt          t6, a0, s10
                  lui          s2, 574800
                  xor          t5, s5, gp
                  and          s4, s10, s5
                  andi         s4, s2, -1296
                  srli         a3, zero, 17
                  lui          s3, 985852
                  nop
                  and          a3, a4, s2
                  andi         gp, a4, 1184
                  auipc        t1, 110993
                  add          t4, a0, t6
                  slti         sp, a7, -1657
                  addi         zero, ra, -172
                  and          t0, a2, t5
                  lui          t1, 470568
                  or           t0, s3, ra
                  slli         t1, a6, 11
                  srai         a1, t5, 27
                  sra          s11, s6, s10
                  auipc        s7, 562598
                  and          sp, a6, t5
                  srl          s9, sp, s6
                  sltu         gp, t5, zero
                  xor          t5, s4, a3
                  sltu         a1, a3, s1
                  lui          t5, 609929
                  nop
                  slli         s0, t1, 6
                  or           s6, s8, s5
                  sltiu        s7, s10, 1697
                  nop
                  ori          gp, gp, -1077
                  srai         a5, s10, 7
                  addi         a3, a7, 914
                  auipc        t4, 695800
                  lui          sp, 354776
                  auipc        s10, 770231
                  andi         t5, t6, 1833
                  slt          s10, t0, t2
                  sub          s11, s1, t3
                  srl          t5, s2, s2
                  srl          zero, a4, ra
                  auipc        t4, 118473
                  slli         t2, s11, 17
                  slli         a1, s1, 18
                  xor          a0, a1, zero
                  slli         t5, t4, 13
                  or           t4, a3, zero
                  or           a5, sp, t0
                  xori         a1, t3, 1968
                  auipc        a5, 427841
                  addi         a1, t4, 1763
                  xori         t6, a7, -594
                  ori          s10, a0, 1215
                  xori         s11, zero, -1860
                  sll          s1, sp, a5
                  and          s8, t6, s3
                  and          s4, a5, s8
                  slti         zero, s2, 1195
                  addi         zero, s11, 91
                  srai         sp, a4, 8
                  slti         t0, s5, 695
                  add          a3, a3, a1
                  sltiu        s6, s0, 428
                  ori          s1, a4, -220
                  lui          a0, 542210
                  add          s11, t0, s6
                  xor          s11, s4, a1
                  and          s10, s6, t2
                  sub          s5, zero, a1
                  lui          tp, 904483
                  sltu         s6, t1, t1
                  xori         a3, s1, -337
                  srl          t6, s9, s0
                  sltiu        t4, s7, -2006
                  srli         ra, s9, 3
                  slt          t5, s4, t4
                  srl          tp, t4, a5
                  sra          s9, t0, gp
                  sra          s7, s0, a0
                  add          s0, s7, s3
                  sub          a2, s8, s11
                  sll          s2, t5, gp
                  add          t1, a3, gp
                  ori          s7, t3, 1119
                  slli         sp, s11, 2
                  xor          s5, tp, t1
                  auipc        s2, 629259
                  add          s8, t6, t5
                  sltiu        s6, a5, -1535
                  sltu         s9, t1, t0
                  srli         t2, a6, 2
                  andi         a2, s9, 342
                  slli         gp, a7, 8
                  sub          a3, t5, s10
                  srli         ra, t5, 26
                  or           sp, gp, t1
                  andi         a1, a2, -1148
                  srl          t2, a4, a5
                  sub          a5, s9, s7
                  andi         a1, s5, -654
                  slli         s5, gp, 3
                  slt          s9, a4, t3
                  nop
                  srli         a5, gp, 4
                  auipc        zero, 331193
                  sltu         s3, a6, s3
                  xori         s4, s4, -570
                  sltu         s4, a7, zero
                  slt          t1, s10, a1
                  andi         tp, t2, 501
                  sra          t6, a2, sp
                  xori         s8, tp, -146
                  sub          t4, s8, s7
                  slti         a0, sp, -119
                  andi         ra, a7, 361
                  or           a5, s0, ra
                  nop
                  add          s0, a5, s1
                  srli         zero, t1, 20
                  slt          t5, sp, a3
                  sra          t5, a6, s3
                  nop
                  nop
                  nop
                  xor          s4, t3, s7
                  auipc        tp, 56425
                  and          t5, t2, a3
                  xor          tp, a2, t4
                  sra          s1, t1, s2
                  andi         t6, a2, -272
                  and          a0, s0, s11
                  nop
                  xor          s10, s2, s5
                  sll          ra, s0, s6
                  slt          s5, t4, a0
                  sll          s4, s0, s6
                  or           s9, t6, s0
                  ori          a3, t0, -348
                  srli         t0, s0, 3
                  lui          s2, 78170
                  slti         zero, a3, -693
                  srli         s3, t1, 14
                  and          a0, a4, s6
                  srli         s9, s4, 24
                  slti         s8, s5, 118
                  xori         s10, t3, -986
                  xor          s1, s7, t4
                  srli         a2, t4, 25
                  lui          s1, 18055
                  slli         s4, a6, 10
                  srl          ra, t4, ra
                  addi         t5, s10, 1948
                  xor          s7, s1, s1
                  andi         s4, a4, 1870
                  lui          ra, 508390
                  ori          s8, s7, 1916
                  srai         s3, s4, 18
                  nop
                  add          a3, a3, t5
                  xori         a0, a5, -1600
                  add          s6, a7, s5
                  and          t5, t6, zero
                  slti         t0, s5, -903
                  slli         ra, t3, 27
                  or           a6, tp, s4
                  ori          tp, ra, 1266
                  srli         s0, s0, 11
                  sltu         t5, t4, t6
                  lui          s2, 157682
                  and          ra, t0, t4
                  srli         s7, a2, 26
                  addi         s7, s9, -577
                  srli         s10, a3, 1
                  or           t5, t4, t4
                  srl          s10, t4, t6
                  srli         t4, s9, 12
                  xori         s4, s7, -710
                  sub          s4, t1, a5
                  lui          s4, 642909
                  xori         zero, t2, 1578
                  sub          sp, s6, s5
                  auipc        a2, 710004
                  or           t6, a3, s6
                  xor          a6, t4, a6
                  sll          s2, s9, t6
                  srai         a0, a7, 18
                  xori         s4, t4, 366
                  or           a6, t6, s4
                  xori         s6, s8, -972
                  sub          a1, s7, a5
                  sltu         s10, s10, t2
                  xori         s9, s9, 1867
                  nop
                  xor          tp, s5, s2
                  sub          t6, ra, s7
                  slti         s5, a5, 1479
                  nop
                  add          s8, a2, s9
                  nop
                  add          t1, a4, s4
                  xori         t4, t2, 2028
                  lui          s4, 293397
                  slli         a1, t6, 15
                  auipc        a0, 721715
                  slli         a6, s6, 3
                  and          tp, a4, s2
                  sub          t1, tp, s4
                  slt          s9, s9, s4
                  add          ra, t6, s0
                  and          t1, a0, t1
                  xor          a6, a5, s5
                  sltiu        a5, a4, 254
                  andi         s7, t0, -729
                  sra          a2, t2, s4
                  srli         a2, s2, 7
                  lui          sp, 230561
                  sub          s3, a5, a7
                  or           a1, t1, t5
                  nop
                  andi         a6, a7, 374
                  sll          a6, s0, s3
                  srai         s0, zero, 3
                  slli         t6, a6, 2
                  sltu         a6, s10, t4
                  sll          s7, a5, sp
                  slt          s4, t1, a1
                  xor          s9, t1, s10
                  sltu         s1, a7, a4
                  sub          a3, t5, s7
                  and          s7, a4, t3
                  sub          s7, t5, t5
                  and          a2, s3, s1
                  xor          t1, zero, s1
                  slt          a0, a7, s2
                  andi         a1, s4, 302
                  lui          ra, 783465
                  sub          s5, a5, t6
                  sltiu        s6, s7, 1939
                  srai         t5, s2, 15
                  slti         s0, a0, -112
                  sltu         zero, s11, t5
                  sub          s0, t6, zero
                  srai         t0, a1, 27
                  srl          s1, s2, t3
                  lui          a5, 618522
                  nop
                  slti         ra, t1, 1601
                  auipc        t6, 250397
                  sra          s7, s0, s4
                  sra          t0, t2, s2
                  addi         s0, s9, 1972
                  ori          s11, s4, -162
                  slti         a6, s5, 2040
                  auipc        s11, 576778
                  slli         zero, ra, 18
                  or           t1, a1, s5
                  nop
                  nop
                  add          s9, t5, s4
                  andi         s10, s6, 595
                  xor          s4, s9, t4
                  sltiu        s9, sp, -1146
                  slli         tp, t4, 19
                  or           s7, s9, t5
                  andi         t1, a1, -130
                  and          s6, t4, s2
                  sra          s3, s10, t2
                  add          zero, a6, s11
                  add          s0, a2, t4
                  srl          s3, s3, t5
                  xor          s8, a7, s0
                  or           s4, a5, t3
                  sub          s2, t3, ra
                  srli         a0, s7, 11
                  ori          sp, s11, 715
                  srai         s2, s11, 24
                  srli         a1, s1, 28
                  addi         a5, s2, -343
                  srai         t6, a0, 8
                  or           s11, s3, tp
                  nop
                  slli         zero, s0, 22
                  sltu         a6, s6, ra
                  nop
                  nop
                  ori          t6, t4, -1828
                  ori          s9, t4, 845
                  xor          a0, t6, s6
                  auipc        s8, 329231
                  srl          s10, s0, t3
                  ori          s7, a1, -1682
                  ori          a1, a0, -882
                  slt          s10, s4, t6
                  and          ra, t3, s4
                  srl          a0, t5, s1
                  sltiu        ra, s0, -68
                  ori          t4, s1, 978
                  sltiu        a3, a1, -216
                  addi         s8, s11, 1879
                  sltu         gp, t5, s3
                  xor          t2, a0, a6
                  sltu         t2, tp, a3
                  xor          t5, t1, ra
                  xori         t6, tp, -842
                  andi         s2, a3, 782
                  sltu         s8, t3, s1
                  xor          a5, a2, s5
                  slti         s2, zero, 467
                  and          a5, ra, s8
                  add          t1, t4, s3
                  slti         sp, t1, -1042
                  add          s8, t4, s6
                  sra          ra, gp, s10
                  slli         s7, s3, 22
                  andi         t0, t0, 1126
                  xori         s8, s6, -422
                  sub          a1, s10, s11
                  slli         a3, s9, 19
                  slt          t4, sp, s3
                  slti         s2, a2, 749
                  xor          s11, gp, a7
                  srl          s1, gp, a5
                  slti         gp, a3, -1492
                  sub          s0, ra, s8
                  lui          s9, 784574
                  ori          t5, t1, -433
                  sub          a2, t0, a2
                  slti         s9, zero, -2047
                  xor          s11, ra, s8
                  sltiu        s5, t5, 637
                  sltiu        s8, ra, -1921
                  add          t1, tp, a6
                  ori          s1, t3, 1951
                  xor          s9, s0, a7
                  sra          s10, a5, a2
                  xor          gp, s8, t0
                  lui          s4, 24634
                  srl          t0, zero, s0
                  auipc        a2, 752012
                  sra          t0, t5, a7
                  nop
                  srai         tp, s6, 5
                  slli         a0, sp, 23
                  ori          s6, a7, -683
                  add          t4, zero, t0
                  nop
                  srli         ra, s1, 9
                  nop
                  auipc        a6, 409178
                  nop
                  slt          a0, s3, s4
                  sltu         s5, tp, t1
                  sub          t4, s6, a6
                  srai         s2, t1, 21
                  xor          s10, a5, a4
                  xori         sp, s9, -593
                  xori         sp, a1, 1541
                  slt          s7, a4, s11
                  slli         s6, s10, 19
                  sltu         t4, t1, s1
                  auipc        t4, 80055
                  addi         a2, s7, 458
                  auipc        s5, 547256
                  ori          s9, a1, -1537
                  slti         s1, t0, -1464
                  slli         s2, a0, 24
                  sra          s8, s11, sp
                  srli         s7, s3, 29
                  srai         s9, s5, 25
                  sltiu        s6, t4, 1995
                  slli         s7, a6, 25
                  slti         s1, s0, -641
                  sltu         s0, a1, s1
                  nop
                  xori         s1, s2, 762
                  lui          s5, 537773
                  sub          s5, a0, s10
                  sra          a0, t6, t0
                  srl          a2, t6, a7
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           s8, 0x0
                  li           s11, 0x80000000
                  li           t6, 0x0
                  li           s1, 0xffffffff
                  li           gp, 0xffffffff
                  li           a0, 0xffffffff
                  li           a3, 0xffffffff
                  li           a5, 0x94943446
                  li           t5, 0xa3740e2c
                  auipc        a3, 359813
                  auipc        t5, 396735
                  nop
                  sub          a3, s11, t5
                  auipc        s8, 316467
                  nop
                  sub          a3, a0, s2
                  add          s1, s1, s1
                  auipc        t5, 790679
                  sub          gp, s1, t5
                  auipc        a3, 642815
                  addi         t6, s8, 1518
                  sub          s8, s1, t6
                  add          s11, s8, a0
                  add          s2, s2, s11
                  auipc        gp, 43475
                  addi         s8, t6, 884
                  lui          t6, 290748
                  addi         s8, s11, 493
                  addi         t5, a5, -1070 #end riscv_int_numeric_corner_stream_10
                  add          s10, s11, sp
                  nop
                  lui          t1, 661613
                  auipc        a3, 458388
                  sub          s1, t6, a5
                  add          s1, t0, ra
                  xori         t4, t0, 1435
                  slt          a1, s10, a2
                  slt          t5, a4, t1
                  slti         t1, a3, 295
                  slt          s0, a5, s11
                  or           a0, a4, s2
                  or           t4, t1, t1
                  xor          a1, s10, a7
                  nop
                  srl          t0, t3, s4
                  sltu         t5, t0, tp
                  add          s7, s7, t1
                  xor          t0, s4, t0
                  add          a1, t2, t1
                  ori          a1, t6, -610
                  auipc        sp, 462010
                  or           s2, s5, t5
                  srli         a1, a3, 14
                  slti         s5, s9, -533
                  andi         t0, t1, -716
                  srai         gp, t1, 3
                  or           t5, t0, a3
                  sltiu        a3, s2, -806
                  sub          a1, s5, a5
                  sra          s11, t0, a1
                  sub          s11, s2, t5
                  slli         s3, a1, 4
                  andi         s9, s1, -216
                  sub          s8, t6, a2
                  srli         a0, ra, 7
                  sll          a1, s9, s3
                  or           a6, s0, s7
                  sra          s7, s8, s3
                  srli         t4, t4, 29
                  ori          t4, s1, -108
                  li           ra, 0x422ae4b1 #start riscv_int_numeric_corner_stream_12
                  li           t1, 0xffffffff
                  li           t4, 0x2e4c7c1c
                  li           a3, 0xffffffff
                  li           a1, 0xffffffff
                  li           s10, 0x80000000
                  li           a0, 0x0
                  li           sp, 0xffffffff
                  li           s4, 0xffffffff
                  li           s7, 0x80000000
                  lui          s10, 643842
                  nop
                  nop
                  lui          sp, 35806
                  auipc        a0, 744057
                  sub          a3, a1, t1
                  lui          t1, 1018269
                  auipc        t1, 287266
                  nop
                  lui          t1, 871209
                  add          t4, s10, s10
                  auipc        sp, 686313
                  nop
                  lui          a1, 718072
                  lui          a0, 95539
                  lui          a1, 439761
                  lui          s4, 877100
                  auipc        s4, 387602
                  addi         a0, a0, -1595
                  nop
                  auipc        s4, 569734
                  lui          a0, 780044
                  lui          s4, 193027
                  auipc        a3, 25515
                  sub          s7, s7, t4 #end riscv_int_numeric_corner_stream_12
                  and          s10, sp, t4
                  slli         s7, s2, 2
                  slt          s1, a5, a5
                  sra          t2, a3, zero
                  and          a0, t3, s2
                  slti         s1, a0, 170
                  ori          t4, t0, 734
                  add          s6, s2, zero
                  nop
                  srai         a2, a3, 24
                  addi         s11, tp, -610
                  or           ra, a4, s3
                  nop
                  sub          s2, t0, s6
                  xor          s5, t2, a7
                  slti         t1, sp, -352
                  nop
                  xor          s8, a3, s2
                  sra          s2, s11, a4
                  slt          s1, s7, s11
                  sll          a6, s8, s2
                  slt          t0, t6, a7
                  slti         ra, a0, -1882
                  nop
                  add          gp, a1, a0
                  sra          t5, sp, a1
                  addi         s2, s6, 80
                  slli         a6, a6, 8
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           a6, 0x80000000
                  li           s8, 0xe296ab84
                  li           sp, 0x80000000
                  li           s0, 0xaaa4cca6
                  li           tp, 0xffffffff
                  li           s5, 0x80000000
                  li           gp, 0x0
                  li           a5, 0xffffffff
                  li           t6, 0x736d752a
                  nop
                  nop
                  sub          a6, a5, a5
                  auipc        sp, 82353
                  lui          sp, 480185
                  lui          t6, 379890
                  nop
                  auipc        s0, 77524
                  addi         s9, t6, 674
                  nop
                  addi         s8, s5, 192
                  sub          s0, s0, tp
                  nop
                  nop
                  auipc        a6, 445495
                  sub          s8, t6, gp
                  addi         a6, s8, 1103
                  lui          gp, 394917
                  auipc        a5, 658169
                  add          s5, s0, t6
                  auipc        sp, 11424
                  addi         gp, tp, 1472 #end riscv_int_numeric_corner_stream_5
                  sll          s0, gp, a0
                  and          t0, t3, s11
                  slt          s2, a2, s11
                  slli         s8, s0, 9
                  ori          s5, s11, -587
                  addi         s9, gp, -1514
                  slli         t4, a7, 27
                  or           t5, s6, t3
                  and          s9, tp, s0
                  slt          a3, a4, s7
                  srai         a0, a5, 29
                  lui          s4, 39056
                  xori         s7, s0, -529
                  xor          s3, ra, s8
                  sra          s9, ra, a0
                  addi         ra, sp, 1812
                  xori         s9, t3, -1251
                  slti         s8, t6, 1065
                  andi         tp, t4, -1543
                  sltu         s5, s4, s0
                  sub          s6, s7, s11
                  srl          s2, s4, t1
                  lui          t6, 953954
                  auipc        s11, 329865
                  srai         s8, sp, 22
                  xori         s4, gp, -862
                  nop
                  slt          t1, s9, a7
                  slt          gp, a0, s10
                  or           a3, a3, gp
                  srli         sp, a1, 0
                  slti         a0, tp, 316
                  andi         s9, t4, -1919
                  slli         s2, sp, 21
                  sub          sp, t5, a0
                  sltiu        s2, s10, -1681
                  sltiu        t0, s7, -950
                  xor          s2, s4, a7
                  sll          a5, s5, t0
                  sltu         s0, a6, a6
                  sll          a2, s4, a2
                  sll          s11, sp, tp
                  sra          zero, t4, s1
                  xori         a0, t0, 1790
                  slli         a5, t6, 5
                  srai         s6, gp, 19
                  sra          sp, a5, a3
                  ori          t2, a4, 1326
                  slti         s11, t6, -993
                  sll          ra, s7, sp
                  sra          t2, s2, t3
                  auipc        ra, 1024842
                  add          a1, t4, s6
                  slt          t2, ra, a6
                  sra          s4, gp, tp
                  ori          a2, s2, 297
                  nop
                  slli         a2, a2, 31
                  srli         s1, s4, 6
                  slt          s4, t3, t5
                  srai         t2, a6, 5
                  sltiu        a5, t6, -218
                  slti         s9, a7, -570
                  srai         s11, a7, 30
                  srai         a2, t3, 21
                  xor          s5, s0, s3
                  sltu         gp, a4, t1
                  slt          s6, a7, t2
                  slti         ra, t4, 748
                  lui          t6, 124068
                  slt          s7, a3, zero
                  auipc        a5, 100140
                  srli         s0, a2, 14
                  sub          a6, t0, a3
                  nop
                  slli         s11, s8, 7
                  addi         t4, t6, -11
                  slli         a0, s5, 10
                  srai         s1, s3, 7
                  srl          zero, t6, a7
                  sub          sp, a2, s8
                  auipc        gp, 494370
                  slt          tp, a3, tp
                  sltu         tp, t2, a4
                  xor          s8, t6, a0
                  srai         a6, s6, 13
                  ori          t1, s5, 1134
                  lui          t6, 902305
                  xori         a2, s2, 1797
                  and          s9, a5, t6
                  slti         s9, s10, -1385
                  slli         sp, zero, 29
                  and          s8, s11, s0
                  nop
                  or           tp, s10, a4
                  nop
                  sltiu        s2, s11, -1924
                  slt          zero, s2, s2
                  li           t5, 0x0 #start riscv_int_numeric_corner_stream_9
                  li           s11, 0xffffffff
                  li           tp, 0xffffffff
                  li           s6, 0xada5832f
                  li           s1, 0xffffffff
                  li           s7, 0x0
                  li           ra, 0x9593dd0e
                  li           a0, 0xfe6f947a
                  li           s8, 0x80000000
                  li           s2, 0x0
                  add          s2, s2, s2
                  lui          s6, 212677
                  nop
                  add          s8, a0, s6
                  auipc        s11, 29361
                  lui          s8, 796490
                  auipc        s11, 980525
                  lui          s1, 870560
                  addi         tp, s1, -403
                  addi         t5, s11, -790
                  addi         t5, tp, -197
                  sub          s11, t5, s7
                  lui          s1, 225665
                  nop
                  lui          t5, 675462
                  addi         s8, s6, 1510
                  nop
                  lui          a0, 566486
                  addi         s2, tp, -402
                  lui          tp, 226724
                  add          s8, a0, tp
                  lui          s8, 608593
                  addi         s1, s11, -1927 #end riscv_int_numeric_corner_stream_9
                  addi         ra, s1, 649
                  xori         tp, s6, 46
                  lui          zero, 467145
                  addi         t2, a3, 968
                  srli         t1, s1, 20
                  srai         s5, s9, 23
                  srl          s0, sp, a4
                  slti         t0, t6, 780
                  srl          s9, sp, sp
                  addi         a6, t1, -45
                  or           s0, a6, a1
                  and          s7, s2, s4
                  auipc        a1, 970852
                  lui          t1, 293341
                  sub          sp, s8, s10
                  sra          gp, zero, s3
                  and          s1, a4, a1
                  and          s1, s8, s1
                  sra          t5, t3, t5
                  auipc        t4, 791394
                  andi         s8, s5, 894
                  add          s7, s5, tp
                  ori          zero, s5, 518
                  xori         t0, a5, -649
                  nop
                  slt          s5, gp, t4
                  slli         s10, a1, 30
                  sra          s11, gp, s10
                  sub          t0, s2, s2
                  sra          s11, a6, zero
                  sll          t2, zero, s3
                  auipc        s7, 513836
                  add          a1, gp, s1
                  sll          s7, a4, s9
                  srli         s3, a6, 22
                  ori          t6, t1, 402
                  nop
                  xori         tp, s11, -1382
                  srai         t6, t6, 18
                  andi         s6, a3, -606
                  or           a3, s8, gp
                  nop
                  sub          s8, a3, s9
                  xori         s1, s3, -1875
                  slti         tp, sp, -1942
                  ori          t0, a2, 149
                  ori          t4, a2, -19
                  and          t0, zero, a2
                  slti         a1, s4, -924
                  xori         a3, a6, 891
                  auipc        t1, 158974
                  sub          s6, a5, t2
                  ori          sp, a5, -282
                  srai         a3, s7, 26
                  slt          t2, s3, t4
                  and          a2, a3, a6
                  andi         s0, s8, 982
                  add          a0, a3, a1
                  xor          a6, s10, t1
                  nop
                  sltiu        s5, s6, 1541
                  or           s4, t2, t0
                  and          ra, a1, s2
                  addi         s0, t6, -400
                  ori          s11, a5, 1248
                  add          s10, t0, gp
                  sll          t1, s2, t5
                  xori         a3, a1, 498
                  sub          s7, a7, s3
                  lui          sp, 729131
                  slli         zero, t4, 25
                  slli         s2, a1, 13
                  slt          sp, t3, t1
                  nop
                  xor          s11, s9, a3
                  lui          t0, 611082
                  sltu         s3, s9, s5
                  nop
                  sltiu        a0, t0, 487
                  lui          t6, 180459
                  sub          a0, t6, a4
                  andi         t6, t5, 1204
                  srai         t5, s5, 3
                  sll          t4, tp, a7
                  ori          s5, a3, -1399
                  sltiu        s7, zero, -468
                  sltiu        s6, a6, 798
                  slti         t2, t4, -585
                  and          t6, s8, s9
                  srl          s6, s4, s4
                  auipc        a5, 334594
                  sltu         a1, sp, t0
                  sltu         s10, sp, t3
                  xori         s10, t1, -1208
                  add          s3, s10, a2
                  sll          s6, a3, a1
                  ori          s7, t1, 21
                  or           tp, zero, s2
                  sltu         t4, s10, s2
                  slli         tp, s5, 11
                  add          a5, a3, tp
                  slli         a6, a2, 27
                  srli         ra, s0, 16
                  sub          s10, t6, t2
                  or           s6, a4, s9
                  andi         s5, ra, 1166
                  auipc        s7, 308313
                  sub          gp, a6, s2
                  andi         s10, ra, 646
                  andi         s4, a7, -846
                  lui          t1, 975833
                  add          a6, a3, s6
                  sltu         tp, a2, a4
                  srai         gp, s0, 1
                  ori          zero, s2, 1339
                  lui          ra, 1000940
                  srl          s10, zero, t1
                  srai         t6, a6, 2
                  slli         a5, a1, 31
                  srli         a2, t2, 12
                  srai         s4, s8, 24
                  slli         t6, s9, 2
                  or           t1, a2, a0
                  slli         s0, t1, 28
                  xor          a1, t4, s1
                  slti         t4, a5, 1544
                  and          s2, s10, s1
                  and          s6, s4, s3
                  ori          s5, s1, -1792
                  sra          a6, a5, s1
                  addi         s2, s8, -700
                  slt          s1, a5, a4
                  or           a1, sp, a5
                  auipc        t4, 182267
                  auipc        t6, 334049
                  srai         a3, a5, 28
                  slt          t5, t6, s3
                  srli         t6, s3, 0
                  slt          s7, s4, t5
                  srai         a2, a4, 1
                  sltu         s6, a6, s10
                  add          s4, t3, s3
                  slt          ra, s4, t3
                  sltu         a2, a6, s7
                  or           s1, gp, s10
                  xori         s7, s9, 1951
                  sltiu        a5, gp, 1472
                  ori          s6, t0, 696
                  addi         tp, gp, 703
                  srl          gp, a1, sp
                  xor          t4, s0, t5
                  add          a6, a3, s9
                  auipc        s9, 346508
                  sra          s7, t2, sp
                  srl          t2, ra, t3
                  auipc        a0, 359959
                  sra          s2, t1, t6
                  slt          ra, tp, s4
                  xori         a3, s4, -383
                  xor          s8, s10, s6
                  or           t2, t4, a7
                  srai         s1, s2, 25
                  srl          t2, a5, t2
                  nop
                  nop
                  addi         t6, s10, 1297
                  and          t2, t1, s10
                  slti         t2, s7, -846
                  addi         s8, s3, 1514
                  slli         a5, a1, 19
                  xori         ra, ra, -18
                  xori         a6, s5, 1658
                  auipc        s3, 472624
                  sltu         t6, t2, t5
                  or           t6, a6, t1
                  sra          t1, sp, s9
                  sll          s8, a1, s7
                  srli         a3, a5, 16
                  slli         a5, s10, 2
                  auipc        s7, 730349
                  slli         s11, s3, 21
                  srai         s9, a6, 25
                  slti         s6, s2, 345
                  srl          a5, gp, s8
                  srli         s5, s3, 11
                  srai         s0, s8, 3
                  slt          t5, sp, s10
                  auipc        t1, 778915
                  sll          s3, a3, s6
                  xor          a3, t5, s2
                  sltu         s10, a0, sp
                  add          s10, s10, s8
                  and          s6, sp, s7
                  addi         a1, s7, 1379
                  xor          zero, a7, s9
                  slt          a0, s9, s4
                  srai         sp, t4, 17
                  add          s7, s1, a2
                  slt          s0, a2, a3
                  slti         s10, s3, 28
                  sltu         s8, a6, s11
                  lui          t4, 936077
                  addi         s3, s9, -1639
                  or           t6, s11, s2
                  or           a1, t4, a5
                  ori          a2, t1, 1462
                  addi         t6, s11, 1313
                  sltu         s6, s9, t6
                  xori         s2, s5, 775
                  xori         ra, s5, -1531
                  srai         s4, zero, 10
                  slt          s4, s0, s5
                  andi         s10, s2, 1134
                  lui          t0, 782018
                  add          s8, t4, s2
                  slt          s8, s9, sp
                  srl          tp, t3, s8
                  sub          s9, s6, t6
                  or           s1, s9, s10
                  slli         gp, a5, 17
                  and          s1, t5, s4
                  andi         s6, a6, 1755
                  sll          s0, a7, a1
                  slli         t6, s5, 9
                  xori         s0, s3, -878
                  slti         t5, a5, -735
                  sra          s9, s0, ra
                  or           ra, t2, t4
                  srai         a2, s6, 3
                  xor          ra, a3, ra
                  and          s3, t1, s6
                  sltu         t0, a2, a7
                  slti         s9, ra, 1969
                  ori          zero, t1, -93
                  auipc        t2, 565899
                  lui          a6, 437827
                  add          s0, t1, s2
                  srli         s1, s8, 14
                  sltiu        t2, t0, 1439
                  auipc        tp, 814120
                  sll          sp, s10, a3
                  slti         a1, a2, -468
                  auipc        s1, 845417
                  xor          s10, s6, t6
                  sltu         t2, t4, t3
                  slt          s7, s8, a3
                  sltiu        a1, a2, 1192
                  sltiu        s5, a7, 1823
                  and          s11, zero, a0
                  sll          s1, sp, gp
                  srl          s5, t1, zero
                  xor          a5, a1, s10
                  slt          s6, s8, t1
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           a5, 0xffffffff
                  li           a3, 0xffffffff
                  li           s8, 0x80000000
                  li           s1, 0xffffffff
                  li           s3, 0xc7720c92
                  li           tp, 0x0
                  li           t5, 0xffffffff
                  li           t6, 0x80000000
                  li           s4, 0x80000000
                  auipc        t6, 298119
                  addi         a3, t6, 103
                  addi         a5, s9, 66
                  auipc        t6, 1000563
                  addi         t6, tp, 105
                  nop
                  nop
                  lui          t6, 39035
                  addi         s8, a3, 753
                  addi         a3, t6, 957
                  nop
                  nop
                  auipc        t6, 602847
                  nop
                  sub          t5, s9, tp
                  sub          a5, s8, tp
                  add          s3, s9, t6
                  auipc        t6, 928089 #end riscv_int_numeric_corner_stream_2
                  or           a1, gp, s10
                  andi         ra, s8, -1563
                  lui          s4, 276095
                  srl          t4, zero, s11
                  or           s0, s11, ra
                  xor          s4, t2, zero
                  xor          a6, a7, t0
                  and          s2, s7, ra
                  nop
                  srl          s8, sp, a5
                  xori         sp, t0, 1674
                  slti         s1, a2, -983
                  sra          a6, tp, s11
                  srl          s9, a0, sp
                  andi         s9, ra, -178
                  lui          t6, 450685
                  ori          t5, s10, 54
                  sub          s5, s9, a7
                  xor          t0, s3, t4
                  and          a5, a4, s11
                  or           s8, t0, sp
                  addi         s9, t6, -683
                  xor          s10, s8, gp
                  and          s6, t5, sp
                  andi         s5, sp, 1185
                  slt          t5, a4, t6
                  or           s0, t0, s8
                  slt          s11, t0, a1
                  slli         a3, s3, 6
                  sra          a6, a5, s3
                  nop
                  lui          a1, 267157
                  slt          t4, s2, s7
                  add          s5, s8, s2
                  sra          s2, sp, t2
                  srai         ra, t0, 20
                  or           a3, s0, t5
                  auipc        tp, 464832
                  lui          s0, 1023127
                  slti         tp, tp, 1342
                  sub          zero, a6, s4
                  sltu         s10, a2, s6
                  xori         t2, a2, 1720
                  srai         a6, tp, 4
                  addi         s3, t6, -1765
                  ori          s6, a2, -492
                  and          a5, t1, a5
                  auipc        s11, 198821
                  sub          s0, t1, sp
                  sll          s5, s9, t6
                  sltiu        s10, s3, -620
                  srai         a3, s9, 18
                  slti         gp, t4, 1
                  srai         s11, s4, 17
                  sll          s3, s6, s0
                  addi         a5, s0, -1859
                  sra          t5, t5, s6
                  sub          a6, t3, t3
                  add          s10, t4, s3
                  sltu         a2, s7, s6
                  slt          s1, t6, a1
                  add          gp, tp, s0
                  slti         t1, a2, 541
                  srai         t0, s4, 13
                  slti         t4, a4, -561
                  srai         s1, sp, 25
                  auipc        a3, 49884
                  sltiu        a6, a7, 2016
                  or           s5, t2, s9
                  add          gp, a6, s8
                  srli         t0, t2, 3
                  sra          s6, s4, a6
                  slti         t4, gp, -1382
                  and          s9, ra, s1
                  andi         s1, s5, 504
                  srl          zero, s7, t2
                  lui          s0, 477920
                  auipc        t4, 992657
                  sltiu        t0, s8, 910
                  add          t2, t6, s11
                  and          s3, a0, zero
                  srl          t1, s1, t0
                  slli         s1, s2, 24
                  andi         ra, a4, 1367
                  sltiu        a5, a3, -111
                  sll          s0, t4, t2
                  sra          a2, a1, s11
                  xor          sp, ra, s1
                  addi         s5, a2, -558
                  addi         t2, t3, -1877
                  auipc        a6, 142618
                  add          t0, s4, t3
                  lui          s9, 9
                  nop
                  ori          s10, tp, -850
                  srli         s3, t0, 2
                  sub          a6, a2, s7
                  srai         s6, a4, 15
                  xor          a1, s3, ra
                  slti         a6, t5, 1271
                  slli         gp, t5, 23
                  xor          ra, a5, s3
                  xor          t1, s9, s6
                  lui          a5, 259973
                  ori          t2, a4, 944
                  slt          s2, t4, t1
                  sub          sp, s0, gp
                  sub          s5, gp, t2
                  and          s8, s6, ra
                  slti         s2, s8, 143
                  nop
                  and          s1, t4, s11
                  addi         a5, a0, 16
                  addi         t2, t1, 452
                  sltu         t5, a6, a1
                  xori         s1, t3, -1394
                  nop
                  sub          s10, t5, t3
                  srl          a3, s0, s9
                  srl          a0, t4, ra
                  or           a1, s9, a2
                  add          t6, t1, a0
                  slti         a2, a7, -1945
                  srai         a1, s6, 22
                  sll          s10, a5, t2
                  or           t0, zero, a6
                  la x14, test_done
                  jalr x0, x14, 0
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
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x17, x28, zero
                  csrr x20, 0x300 # MSTATUS
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 31
                  bne x20, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x21, 0x3 # BREAKPOINT
                  beq x20, x21, ebreak_handler
                  li x21, 0x8 # ECALL_UMODE
                  beq x20, x21, ecall_handler
                  li x21, 0x9 # ECALL_SMODE
                  beq x20, x21, ecall_handler
                  li x21, 0xb # ECALL_MMODE
                  beq x20, x21, ecall_handler
                  li x21, 0x1
                  beq x20, x21, instr_fault_handler
                  li x21, 0x5
                  beq x20, x21, load_fault_handler
                  li x21, 0x7
                  beq x20, x21, store_fault_handler
                  li x21, 0xc
                  beq x20, x21, pt_fault_handler
                  li x21, 0xd
                  beq x20, x21, pt_fault_handler
                  li x21, 0xf
                  beq x20, x21, pt_fault_handler
                  li x21, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x21, illegal_instr_handler
                  csrr x21, 0x343 # MTVAL
                  1: la x14, test_done
                  jalr x1, x14, 0

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
                  la x14, write_tohost
                  jalr x0, x14, 0

instr_fault_handler:
                  add x28, x17, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

load_fault_handler:
                  add x28, x17, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

store_fault_handler:
                  add x28, x17, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x28, x17, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x28, x17, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x28, x17, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
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
