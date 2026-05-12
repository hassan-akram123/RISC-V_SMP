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
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x13, kernel_stack_end

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
                  li x0, 0x9
                  li x1, 0x3
                  li x2, 0x6231ead6
                  li x3, 0x826d34e4
                  li x5, 0xf6d9c1ee
                  li x6, 0x80000000
                  li x7, 0x8f041217
                  li x8, 0xe3da863b
                  li x9, 0xf9386048
                  li x10, 0x80000000
                  li x11, 0x0
                  li x12, 0x0
                  li x14, 0x0
                  li x15, 0x0
                  li x16, 0x80000000
                  li x17, 0x5
                  li x18, 0xe
                  li x19, 0x0
                  li x20, 0x4
                  li x21, 0x3
                  li x22, 0x0
                  li x23, 0xec7356d3
                  li x24, 0xf
                  li x25, 0x80000000
                  li x26, 0x6dd98fe9
                  li x27, 0xf
                  li x28, 0x0
                  li x29, 0xb
                  li x30, 0x0
                  li x31, 0xf13b807e
                  la x4, user_stack_end
main:             li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           s8, 0xb21fd870
                  li           t4, 0xff01270d
                  li           s11, 0x80000000
                  li           s1, 0x80000000
                  li           a6, 0x7f6dd55c
                  li           s10, 0x0
                  li           a0, 0x0
                  li           a7, 0xffffffff
                  li           a2, 0x80000000
                  auipc        s8, 264858
                  auipc        s8, 187627
                  addi         a2, a2, -1252
                  lui          a6, 282347
                  sub          s10, a0, a7
                  add          a0, gp, a2
                  addi         gp, s11, -1079
                  sub          gp, a7, s8
                  addi         a0, a6, 1472
                  lui          t4, 795207
                  nop
                  lui          s10, 482312
                  nop
                  add          gp, s1, s8
                  auipc        s11, 9197
                  sub          a0, a2, s10
                  add          a7, a2, s1 #end riscv_int_numeric_corner_stream_14
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           a7, 0x0
                  li           sp, 0xffffffff
                  li           s5, 0xa0d99f66
                  li           s3, 0x80000000
                  li           s0, 0x80000000
                  li           s11, 0x0
                  li           a1, 0x80000000
                  li           t6, 0x0
                  li           s2, 0x0
                  lui          s11, 93015
                  nop
                  nop
                  add          t6, a7, s5
                  addi         sp, s8, 1234
                  add          sp, a7, t6
                  addi         sp, s5, -579
                  sub          t6, s2, s2
                  auipc        t6, 181711
                  sub          s8, s0, s0
                  addi         a7, sp, -1444
                  auipc        t6, 916736
                  lui          s0, 481167
                  add          s8, sp, s3
                  nop
                  sub          s0, a7, a1
                  nop
                  add          s0, s0, a7
                  lui          t6, 912207
                  nop
                  add          s2, t6, sp
                  addi         s3, s2, 994
                  nop
                  sub          sp, s0, sp
                  addi         a7, s8, -889
                  add          s5, s5, sp
                  nop
                  lui          s3, 828577
                  addi         t6, t6, 1299
                  lui          s3, 18731 #end riscv_int_numeric_corner_stream_10
                  li           a6, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           t1, 0x8aae8ee8
                  li           a2, 0xffffffff
                  li           ra, 0xffffffff
                  li           s0, 0x0
                  li           s8, 0x80000000
                  li           t3, 0xffffffff
                  li           s10, 0x0
                  li           gp, 0xffffffff
                  li           a4, 0x0
                  auipc        a4, 988142
                  auipc        s0, 140760
                  nop
                  sub          a2, t3, s8
                  add          t1, t3, t1
                  auipc        a2, 589895
                  auipc        t3, 628037
                  nop
                  add          a4, t1, gp
                  add          a4, gp, s0
                  lui          s0, 836493
                  nop
                  add          gp, s0, s10
                  addi         t3, s8, 1586
                  nop
                  lui          gp, 334022
                  addi         a4, t3, -1040
                  sub          ra, s0, s10
                  nop
                  nop
                  nop
                  add          gp, t3, a2
                  auipc        s0, 534252
                  add          a6, s10, a4
                  nop
                  add          t3, a4, s0
                  sub          s0, a4, a2
                  addi         a4, a2, -1446 #end riscv_int_numeric_corner_stream_11
                  li           s11, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           t6, 0xffffffff
                  li           a5, 0x0
                  li           s0, 0xffffffff
                  li           a6, 0x0
                  li           t4, 0x69dae1d1
                  li           t3, 0xffffffff
                  li           s5, 0x366ba5c4
                  li           a2, 0xffffffff
                  li           s3, 0xc373010
                  lui          t3, 1023804
                  auipc        t4, 295564
                  lui          a6, 1005034
                  sub          a6, s3, s0
                  auipc        a6, 61126
                  add          s0, s3, s3
                  sub          a2, s5, s3
                  auipc        t3, 89814
                  add          s5, t3, s0
                  add          a5, a2, s0
                  lui          a6, 217570
                  addi         t3, t6, -419
                  addi         t3, s3, 1398
                  nop
                  sub          a2, s11, s0
                  sub          a2, s11, a5
                  nop
                  lui          s5, 37115
                  addi         t4, a2, -149
                  sub          t4, a6, a2
                  nop
                  addi         a5, t3, 1368
                  auipc        t4, 742594
                  sub          a2, a5, s3
                  sub          s3, t3, a6
                  auipc        s3, 992913 #end riscv_int_numeric_corner_stream_5
                  li           s3, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           a5, 0x80000000
                  li           s0, 0xb10ba3ba
                  li           s7, 0xffffffff
                  li           s11, 0xffffffff
                  li           s4, 0x3afde3e5
                  li           a1, 0x0
                  li           s10, 0x0
                  li           gp, 0xffffffff
                  li           a2, 0xffffffff
                  addi         gp, s4, 34
                  addi         s11, a2, 1837
                  lui          s10, 446721
                  add          a5, a2, s4
                  addi         s3, s0, 1614
                  auipc        s0, 982821
                  nop
                  sub          s11, s7, a5
                  sub          s3, a2, s3
                  auipc        s0, 53005
                  nop
                  sub          a2, gp, s7
                  sub          s0, s0, s3
                  lui          s0, 451206
                  sub          s4, s0, s11
                  auipc        a5, 163849
                  auipc        a5, 523083
                  add          a1, s0, a5
                  lui          s3, 803712
                  lui          s4, 119991
                  auipc        a2, 163250
                  sub          a2, s0, s0
                  addi         s10, gp, 685
                  auipc        s3, 942656
                  lui          s7, 321435
                  lui          s10, 62529
                  nop
                  addi         s3, s10, -845 #end riscv_int_numeric_corner_stream_4
                  li           t2, 0xf8ad1c97 #start riscv_int_numeric_corner_stream_16
                  li           a2, 0x80000000
                  li           s9, 0xffffffff
                  li           t0, 0x0
                  li           s0, 0x80000000
                  li           t3, 0x0
                  li           a4, 0x0
                  li           a0, 0x80000000
                  li           s1, 0xffffffff
                  li           s8, 0xffffffff
                  add          s9, s0, a2
                  nop
                  add          a0, t3, s9
                  auipc        t3, 617658
                  sub          s0, t0, s8
                  add          t3, a4, s1
                  add          a2, s1, s8
                  sub          a0, t0, s1
                  addi         t2, s8, 389
                  addi         a0, s8, 555
                  sub          s9, s0, s1
                  sub          s8, s9, s8
                  auipc        s1, 25823
                  nop
                  add          s1, a4, s1
                  sub          t2, t3, t2
                  add          s1, t3, s0 #end riscv_int_numeric_corner_stream_16
                  srli         sp, t4, 30
                  nop
                  addi         t6, s6, 1049
                  srli         t5, a1, 15
                  lui          s5, 906366
                  sub          t5, a0, sp
                  sltiu        t0, s7, 1113
                  sra          s10, t3, s11
                  slt          t2, zero, a3
                  sub          t6, t1, t5
                  auipc        s7, 996681
                  slt          s2, s9, t6
                  andi         a2, s6, -621
                  sra          t0, s5, a0
                  xor          t0, sp, a4
                  slt          ra, a1, s6
                  ori          t0, s10, 897
                  auipc        s10, 933530
                  slt          a1, s10, s0
                  lui          a1, 689068
                  lui          sp, 796330
                  sltu         a6, a3, ra
                  lui          t4, 670001
                  sra          a2, tp, s3
                  sltu         t6, a7, a2
                  sra          ra, s5, s0
                  and          s5, t2, t4
                  slli         s8, t0, 6
                  andi         a5, s0, -48
                  slt          s0, ra, s8
                  sll          s0, a7, a1
                  slli         a6, s2, 3
                  add          zero, a7, a3
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           a4, 0x80000000
                  li           t2, 0x80000000
                  li           s8, 0x0
                  li           a7, 0x80000000
                  li           a5, 0x0
                  li           t1, 0xffffffff
                  li           s7, 0x80000000
                  li           a0, 0xffffffff
                  li           s0, 0xffffffff
                  addi         t1, s8, -1771
                  auipc        a7, 62501
                  add          a0, s0, s8
                  add          t2, s0, a0
                  nop
                  nop
                  lui          a4, 129
                  nop
                  add          s7, s8, a0
                  sub          s4, s8, s4
                  addi         a7, t2, 2002
                  addi         s4, a5, -60
                  auipc        s7, 682387
                  add          a0, s4, a0
                  auipc        a7, 353466
                  addi         t1, a0, 985
                  auipc        s4, 741246 #end riscv_int_numeric_corner_stream_7
                  sltiu        a4, t4, 1387
                  sll          s11, t2, a4
                  lui          a4, 280085
                  slti         sp, t2, 99
                  or           t6, s4, s0
                  sltu         sp, gp, t3
                  slti         t1, a4, -245
                  slti         s9, a5, 129
                  sub          a0, sp, t6
                  auipc        s5, 40547
                  sltu         a5, a6, t6
                  sltu         s11, s2, a3
                  slti         a0, t1, 574
                  auipc        a7, 371628
                  slt          s1, s7, a0
                  sll          s3, zero, zero
                  andi         a7, s11, 1929
                  srli         a6, s10, 4
                  slti         s5, s2, 1725
                  slli         s3, s0, 30
                  or           s0, s10, a0
                  or           t2, s0, t5
                  xori         s9, s11, -386
                  srai         s7, a7, 18
                  auipc        a5, 512873
                  auipc        t4, 124773
                  nop
                  srl          t0, s5, s9
                  slti         s10, s0, -1962
                  srli         a4, t3, 0
                  sltu         s1, t5, t3
                  srli         t0, s9, 13
                  ori          s9, t4, -1381
                  srli         t1, a2, 3
                  sltu         t6, s6, s3
                  addi         t6, s3, 1866
                  andi         s5, t6, -1557
                  or           s9, s8, t5
                  sll          t3, a6, ra
                  andi         t3, a3, 495
                  andi         a2, s11, 152
                  ori          a2, t2, 324
                  srai         s5, t5, 20
                  add          a1, a5, a3
                  ori          t2, a4, 1756
                  srai         t1, a2, 9
                  and          s5, a3, a4
                  sltu         t2, t3, gp
                  srli         a0, a1, 10
                  slti         s9, zero, 1968
                  and          t5, a1, s6
                  slli         s7, s2, 12
                  slt          sp, s9, a0
                  add          gp, t6, zero
                  andi         s8, t0, 320
                  and          a0, a6, s2
                  sltu         t6, s10, a2
                  sll          s9, s1, a6
                  slt          a5, t1, t0
                  ori          s4, t0, 853
                  lui          a7, 806257
                  srl          s11, s8, s5
                  srl          zero, s8, a3
                  or           a5, a0, a2
                  sltiu        t5, t2, 810
                  slli         zero, tp, 5
                  sltiu        t4, s0, -1089
                  andi         s5, s7, 522
                  add          s2, t1, zero
                  addi         a6, s7, 1814
                  sra          zero, t1, t0
                  sub          gp, t3, a6
                  slli         s4, t2, 10
                  ori          s10, t1, 538
                  sltiu        t5, a3, -1671
                  slli         gp, s8, 16
                  nop
                  ori          sp, s2, 994
                  sltu         s7, a7, a0
                  slt          t5, s5, s3
                  srl          s5, t1, a7
                  add          gp, ra, s11
                  and          a6, a5, t5
                  srli         t0, s8, 0
                  ori          s11, t1, 201
                  xori         ra, t3, 1196
                  slt          a5, sp, s8
                  sltiu        ra, a6, -794
                  slli         zero, sp, 23
                  xori         t0, s8, 1174
                  nop
                  addi         ra, s7, 1480
                  or           a1, a7, s2
                  sll          s2, s1, s9
                  slt          s3, a4, t0
                  sra          a4, zero, t0
                  lui          s8, 73001
                  sub          t0, t1, t1
                  add          gp, a1, s2
                  lui          a5, 554394
                  sltiu        zero, t5, 1787
                  srl          s0, zero, zero
                  auipc        s11, 718575
                  sub          a5, a2, t0
                  auipc        s7, 859459
                  nop
                  srai         t4, sp, 19
                  and          t1, t3, ra
                  sub          t6, s10, t4
                  xori         s0, a0, 393
                  sra          t6, a1, s8
                  xori         s5, t2, -1589
                  sra          t6, sp, s5
                  srai         zero, s5, 25
                  add          a5, s7, a6
                  xori         t1, s2, 1919
                  xor          s1, a7, s2
                  andi         a5, s2, 720
                  nop
                  slt          a7, t3, t1
                  slti         s9, t6, 1597
                  sub          t1, a0, a1
                  lui          t6, 118360
                  add          s1, a4, t5
                  srai         s4, zero, 28
                  slli         a4, a7, 28
                  xor          t1, a7, s4
                  sll          s4, a2, s9
                  auipc        a0, 868756
                  ori          gp, a0, 669
                  or           t3, ra, s6
                  slli         s5, s6, 15
                  add          a6, a4, t0
                  and          s11, a0, a6
                  slli         s8, t3, 5
                  or           t4, t3, a1
                  srl          t2, s11, t5
                  ori          t6, t1, -387
                  and          a2, a7, s3
                  auipc        ra, 91742
                  ori          s4, a7, -290
                  and          s11, gp, t5
                  auipc        s2, 115902
                  auipc        a4, 420160
                  or           s10, a5, a4
                  srai         t2, gp, 29
                  slt          s9, s6, s2
                  addi         t2, a7, 6
                  slli         s1, tp, 30
                  srai         t6, t1, 21
                  nop
                  lui          s11, 280108
                  sll          s9, a4, t3
                  sra          t5, t4, a7
                  auipc        sp, 907667
                  ori          t5, s5, 1042
                  nop
                  sltiu        s0, zero, -18
                  addi         zero, t0, 1335
                  srli         sp, s7, 18
                  srli         a5, s10, 15
                  srl          s9, s2, s8
                  xori         a2, s7, 2011
                  sll          t6, a7, a2
                  sub          gp, zero, gp
                  sll          s0, t2, a5
                  sll          a2, s2, t2
                  or           a1, s9, zero
                  srai         a2, s0, 17
                  andi         t5, a5, -1020
                  sll          ra, s9, t0
                  add          t4, s11, s0
                  sra          t4, t6, s11
                  or           t4, ra, a4
                  sra          zero, s5, a2
                  sra          a0, s5, s0
                  nop
                  xor          t6, a1, s10
                  lui          zero, 622757
                  andi         s0, s5, 810
                  sltiu        a2, t4, -572
                  or           a6, a4, a6
                  srli         a7, tp, 4
                  srl          s0, t5, s7
                  auipc        s1, 731783
                  srl          sp, t4, ra
                  srli         s8, tp, 13
                  sub          t6, tp, t2
                  auipc        a5, 677505
                  andi         t0, t1, 195
                  srai         a7, s2, 16
                  xor          t5, s8, s1
                  slt          a6, s5, s0
                  sltiu        s4, a3, 1239
                  slti         s0, tp, 1627
                  slli         t5, a3, 12
                  ori          t4, gp, 226
                  lui          s2, 567353
                  nop
                  srli         s7, t4, 17
                  slli         a5, s11, 11
                  sltiu        t3, s9, -1613
                  srli         a0, ra, 20
                  ori          a7, t6, -1816
                  sltu         t1, s8, a0
                  xori         gp, a1, -666
                  srli         t1, s1, 28
                  sltu         t1, s1, s9
                  or           a2, s2, sp
                  nop
                  slt          t5, t0, s2
                  addi         t1, s10, -426
                  addi         t6, gp, -903
                  ori          s11, s8, -463
                  xor          s10, s1, s3
                  srl          s9, a7, s1
                  lui          a1, 919240
                  and          sp, a6, s11
                  sltu         t0, s7, t3
                  sll          ra, a7, t1
                  xori         t1, t3, 1364
                  srli         s7, t3, 24
                  ori          a7, a6, -696
                  sltiu        s8, a4, 2045
                  slli         s9, a3, 12
                  sub          s7, s3, t4
                  lui          gp, 353604
                  auipc        gp, 803025
                  auipc        a2, 639405
                  and          s0, s7, s8
                  or           a1, s2, t5
                  srl          gp, s3, ra
                  slt          a4, ra, s1
                  xor          a2, a1, t1
                  srai         s9, t1, 27
                  add          s1, a1, t0
                  ori          s0, s0, -1306
                  and          a6, t4, s0
                  lui          t1, 697267
                  xor          sp, s6, s11
                  sub          s5, a4, s5
                  slli         s5, a6, 18
                  lui          t6, 1036824
                  lui          a7, 954503
                  and          s8, s11, s9
                  srli         s11, a2, 15
                  slti         s4, a3, -625
                  slt          sp, a0, s4
                  auipc        a0, 404820
                  sltiu        s9, t2, 1477
                  srl          s5, tp, s7
                  sltu         s1, s3, s2
                  slt          s5, t5, s1
                  lui          t2, 286764
                  xor          s10, sp, s9
                  xori         s4, s6, 797
                  slt          a6, s2, t2
                  slti         s9, a1, 1123
                  ori          t0, s4, -861
                  sll          s9, s4, s2
                  srl          t6, t3, sp
                  slti         t1, a1, -1711
                  xor          s11, t3, s6
                  add          t5, t4, gp
                  addi         s0, t2, -1502
                  sll          s3, a5, t1
                  add          s9, a5, s4
                  auipc        s0, 353010
                  xor          a1, t6, a7
                  srli         t6, t3, 8
                  and          a2, s8, t1
                  nop
                  srli         a4, ra, 30
                  ori          s9, t1, -1464
                  ori          s3, t5, -1876
                  and          s1, s5, s3
                  xor          t5, gp, zero
                  srl          s1, s10, a7
                  sltu         gp, gp, a2
                  andi         s0, t1, 1754
                  ori          t2, s7, -780
                  srai         s5, sp, 8
                  and          gp, s0, s8
                  lui          sp, 591910
                  or           sp, a1, t0
                  ori          a1, s5, -700
                  andi         a2, s4, -1197
                  sltu         a4, s10, gp
                  xori         s11, s9, 739
                  li           t6, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           s8, 0x0
                  li           s4, 0xb8a1e08a
                  li           a2, 0x420a13ad
                  li           t2, 0x75970ada
                  li           s0, 0x80000000
                  li           t0, 0x7824c2ce
                  li           s11, 0xffffffff
                  li           s9, 0x4e4e60bc
                  li           t3, 0x116c59de
                  add          s11, a2, s9
                  addi         t3, a2, 1267
                  nop
                  auipc        t3, 144616
                  addi         s8, t3, 1441
                  lui          t6, 655590
                  add          s11, s11, s11
                  auipc        t2, 684761
                  sub          s0, t6, s0
                  addi         s9, s8, 819
                  nop
                  auipc        t3, 801960
                  sub          t3, s8, s9
                  addi         s8, s11, -1181
                  add          s11, t2, s8
                  sub          s0, t3, t6
                  nop
                  addi         s0, s11, -129
                  auipc        s11, 356252
                  addi         s9, t6, -812
                  sub          t2, s9, t6
                  sub          t3, t6, t3
                  lui          s0, 162784
                  lui          a2, 630980 #end riscv_int_numeric_corner_stream_1
                  xori         t4, sp, 938
                  srai         a7, a5, 23
                  srli         t0, sp, 22
                  srli         s10, s0, 9
                  addi         t3, s7, -1747
                  srai         s7, s1, 13
                  nop
                  sll          s5, a3, a3
                  sll          t3, s7, a4
                  slti         a5, a3, -162
                  or           s2, s9, tp
                  addi         ra, t3, -601
                  andi         a7, a6, -1188
                  nop
                  ori          s3, a2, -937
                  srl          t5, sp, a4
                  srl          s11, a3, t3
                  sll          s4, a2, t2
                  srl          a5, a7, s7
                  sltu         gp, t5, s4
                  andi         s8, s6, -180
                  sltiu        t0, zero, 187
                  sltiu        a1, ra, -1274
                  lui          s11, 654415
                  nop
                  sll          t6, zero, tp
                  nop
                  sra          s7, s8, a7
                  xor          gp, t5, s3
                  sltiu        s4, zero, -1665
                  and          s1, a4, t6
                  srli         s8, s7, 31
                  ori          s10, t0, 2031
                  and          a0, t4, s4
                  slt          t0, s8, t4
                  and          gp, s5, s0
                  xor          a0, s3, s6
                  sub          s3, tp, s2
                  lui          s1, 569794
                  slti         s0, s3, 768
                  nop
                  srli         s4, t2, 8
                  nop
                  or           t4, tp, s0
                  sra          s1, s8, gp
                  nop
                  andi         s0, a5, 1020
                  srli         s7, t4, 7
                  add          s0, zero, s8
                  and          gp, s9, t4
                  addi         a6, s10, -424
                  sll          s0, a3, s3
                  sra          s0, s10, s0
                  xori         a6, s3, -1810
                  xori         ra, s1, -1155
                  and          a7, s2, ra
                  slt          s0, ra, s4
                  add          s0, zero, a7
                  lui          s4, 171278
                  or           s10, zero, s9
                  srl          s1, gp, sp
                  sltiu        a5, s9, -913
                  sltu         s4, s5, s11
                  slli         t4, sp, 12
                  addi         s8, s4, 379
                  slt          a1, t1, gp
                  lui          a7, 158514
                  sra          a4, s11, a6
                  srli         s1, a2, 5
                  sll          t4, t0, s3
                  sra          s8, a2, a2
                  lui          s4, 253345
                  addi         s1, ra, -2041
                  lui          zero, 98645
                  andi         s1, s9, 468
                  xor          t6, s11, s1
                  slli         a7, a4, 17
                  slti         s9, a2, -674
                  xor          a0, s8, a6
                  nop
                  lui          s3, 832007
                  xor          t4, s7, gp
                  or           sp, t3, zero
                  xor          t2, a4, s2
                  xori         t4, gp, 781
                  lui          s8, 599661
                  xor          t4, s9, s0
                  srli         a6, sp, 15
                  addi         t1, s9, -1883
                  sltu         s10, t2, s6
                  slli         s3, a2, 5
                  add          s11, s8, t2
                  andi         t5, s4, 721
                  or           ra, a4, a1
                  and          t5, a3, ra
                  add          t2, t1, a5
                  sltiu        s8, a5, -1725
                  sub          zero, a6, s4
                  sltiu        s0, gp, -874
                  srl          s0, a1, t1
                  slli         a2, s3, 28
                  sub          t4, a3, t0
                  addi         t4, s9, -99
                  addi         t5, sp, 1949
                  slt          gp, t0, t6
                  slli         gp, s6, 28
                  sub          s11, a5, s6
                  slt          s5, a1, t2
                  xori         s11, s1, -1470
                  lui          s11, 416674
                  sub          t6, zero, a2
                  srl          zero, t1, s8
                  lui          s1, 541449
                  and          a2, s7, s3
                  sltu         a2, s8, a7
                  xor          s3, s10, s3
                  sltu         a7, t0, s8
                  srli         t2, a3, 30
                  srli         t2, s7, 28
                  andi         a4, a3, 134
                  slt          t3, a1, s3
                  auipc        t5, 497988
                  sll          s2, t0, a6
                  xori         t5, a5, 1033
                  ori          t3, t3, -718
                  sltu         a1, t1, sp
                  sltu         ra, s10, s5
                  nop
                  slti         s0, s7, -801
                  ori          a2, s3, -1549
                  sll          s10, ra, s4
                  or           s10, a5, s3
                  lui          a1, 328967
                  nop
                  sll          s0, tp, t1
                  slli         t5, s10, 5
                  xor          sp, s10, t6
                  srai         t4, a1, 10
                  and          s3, tp, a7
                  or           t6, s1, zero
                  sra          a2, s8, t0
                  add          a7, a6, t6
                  slli         t6, zero, 23
                  xori         s0, t0, 825
                  srl          s1, t1, sp
                  sra          a0, a1, a4
                  xori         s2, gp, -858
                  or           ra, s1, s11
                  lui          s11, 876436
                  sll          t4, t5, a2
                  addi         a1, a2, -1234
                  srl          s10, s1, s2
                  and          s11, s5, gp
                  addi         s10, a1, -1092
                  addi         s11, t6, 1981
                  lui          s1, 1004324
                  addi         t2, t4, -637
                  sub          s9, s3, a5
                  sll          s10, s8, a4
                  or           s5, s8, s10
                  add          a5, t2, t1
                  srli         s1, t1, 13
                  slti         a5, s7, 445
                  lui          s8, 453468
                  lui          a0, 646375
                  and          a7, t6, a7
                  addi         s9, s1, 1275
                  and          s7, a5, a6
                  xori         ra, tp, 1407
                  addi         a5, t1, -1961
                  srai         a7, ra, 9
                  and          t0, t1, a0
                  sub          a4, s9, s6
                  and          t2, s0, s1
                  add          t4, tp, a5
                  and          s10, zero, a1
                  srl          s7, ra, a4
                  sll          sp, s6, s0
                  and          s11, s6, t3
                  addi         s2, s0, 1513
                  sll          s2, s10, a4
                  slt          s3, t2, s10
                  sltu         t2, s8, t2
                  lui          t2, 252285
                  and          gp, t5, a1
                  srl          a4, t2, gp
                  slti         a0, gp, -2011
                  sll          t1, t0, t0
                  add          sp, a6, t0
                  ori          t2, t3, -547
                  xor          a6, s5, a3
                  lui          s10, 334731
                  lui          s0, 129084
                  andi         t5, s8, -1910
                  xori         t0, a2, -791
                  srai         t5, s8, 23
                  ori          s8, s10, -897
                  auipc        t0, 618839
                  sll          s1, t6, s11
                  slti         zero, sp, -1361
                  xori         t5, t3, 1899
                  nop
                  srai         ra, sp, 14
                  add          s1, s10, a2
                  sltiu        s11, s9, -1091
                  srli         s3, s11, 18
                  and          ra, sp, a0
                  sltu         t5, s10, s1
                  sll          sp, tp, t0
                  slti         a6, s0, -1066
                  srli         t0, t4, 22
                  xori         s5, s4, 1147
                  slti         gp, a4, 546
                  srl          t0, sp, s6
                  slti         s10, a7, 1716
                  auipc        a0, 435147
                  slti         t3, s8, -985
                  and          s7, a5, tp
                  add          s7, tp, a4
                  auipc        s4, 564639
                  lui          s3, 207363
                  srai         t3, s10, 24
                  and          s4, t3, s0
                  srli         t4, a0, 24
                  sub          s10, s5, t3
                  ori          s9, t1, 1077
                  lui          s7, 798647
                  ori          gp, t4, -691
                  and          t6, tp, t2
                  nop
                  ori          a6, gp, 475
                  slli         a2, t6, 20
                  slli         s3, s4, 23
                  slli         s9, s8, 20
                  slli         t0, t0, 16
                  xor          t4, a0, ra
                  slli         a5, s1, 23
                  slti         t1, t0, -779
                  addi         t5, s10, 923
                  sltu         t4, t1, t1
                  ori          t5, tp, -1501
                  andi         a4, s1, 971
                  slti         t1, s11, -840
                  andi         s2, t1, -527
                  sltu         t3, t0, a5
                  ori          t5, a7, -140
                  slt          s2, s6, s7
                  and          t0, a2, s2
                  andi         s2, t1, 444
                  nop
                  lui          t6, 939972
                  xor          t5, s11, t2
                  addi         s4, s7, 906
                  or           t0, gp, s5
                  slt          t5, s6, tp
                  xori         a0, a0, 500
                  auipc        a5, 829238
                  xori         sp, t6, -1731
                  auipc        a1, 322602
                  slt          s11, a1, s5
                  sll          t0, tp, a7
                  xori         t3, s3, 149
                  and          s11, gp, a7
                  lui          t0, 423431
                  or           t4, sp, t1
                  lui          gp, 453156
                  andi         a7, s10, 825
                  sll          a5, s10, t4
                  or           t5, s10, t4
                  slli         ra, s1, 26
                  add          s0, s2, a7
                  ori          s0, zero, -313
                  sltiu        s4, s0, 1489
                  sub          t6, t4, ra
                  add          s3, t0, s11
                  nop
                  srl          a2, s5, zero
                  lui          t2, 763670
                  auipc        s10, 716375
                  sll          t0, s3, a4
                  srli         s0, a0, 20
                  sltu         a7, t5, s9
                  and          a4, t5, a1
                  add          s11, a1, s0
                  addi         t1, s7, -1288
                  sll          a2, a2, s6
                  xor          s4, a7, t2
                  ori          a5, a2, -912
                  nop
                  srl          sp, tp, s11
                  sltu         s5, t1, s9
                  slti         a2, a3, -1578
                  sll          s11, t4, s8
                  and          a7, zero, s9
                  slli         t2, s11, 30
                  xor          s0, a7, t3
                  addi         s4, s8, 182
                  xor          a6, t6, a4
                  lui          a6, 835505
                  sra          s10, s3, tp
                  sltiu        s3, t3, 1536
                  addi         s3, a7, -266
                  slli         s11, t4, 23
                  lui          a2, 499182
                  and          t0, t4, a6
                  srli         a5, s8, 2
                  srai         a5, a2, 26
                  sll          a5, a3, s6
                  andi         s4, a4, -213
                  and          t4, a6, s9
                  or           t1, s10, t3
                  andi         gp, a3, -656
                  srai         s10, tp, 26
                  sll          s1, s4, ra
                  addi         gp, t6, -113
                  auipc        a2, 199646
                  sltu         s11, a4, t0
                  auipc        s10, 456590
                  ori          s8, s3, 1654
                  srl          a4, ra, s0
                  add          s4, a3, zero
                  srli         a5, s2, 0
                  srli         a6, a4, 3
                  slt          a0, t4, a1
                  or           s4, a0, s10
                  sra          a6, a7, s9
                  xor          s0, t2, a6
                  sltu         sp, t2, gp
                  lui          s7, 762814
                  or           a1, sp, a3
                  srli         t0, s6, 6
                  srai         t6, sp, 4
                  slli         s3, s7, 26
                  addi         s3, s7, 210
                  nop
                  auipc        s4, 738253
                  and          t6, a5, gp
                  sltu         zero, s11, t0
                  sub          s8, s5, s7
                  sub          a2, s5, t3
                  sltiu        s7, a1, 470
                  srl          t6, s5, a6
                  slli         s2, t5, 25
                  slli         t0, t3, 5
                  lui          s4, 77626
                  sltiu        s7, a2, 1514
                  sra          t0, s10, t5
                  addi         sp, s7, -1191
                  xor          s11, t0, s11
                  sub          s1, s8, s9
                  xori         s5, t3, -1926
                  and          a2, t1, s8
                  slli         a6, s10, 5
                  andi         s10, a0, -1660
                  lui          s10, 594817
                  sra          a7, t4, s3
                  sltu         s4, a5, s10
                  slli         s7, a7, 21
                  addi         ra, gp, -920
                  xor          gp, s5, ra
                  sra          a4, a3, s4
                  nop
                  srl          s11, tp, s1
                  andi         a4, gp, -310
                  and          a2, a4, a3
                  srl          s7, s11, a4
                  sra          a4, s4, s8
                  sltiu        s8, a5, -1657
                  sltu         t5, s8, s6
                  sub          s3, t1, tp
                  lui          a4, 518757
                  lui          a0, 953279
                  sra          t3, ra, t0
                  lui          s3, 500727
                  xor          t6, t5, a7
                  add          zero, a5, t0
                  sltu         s8, s0, s4
                  and          t0, a0, s1
                  srai         s1, a6, 29
                  or           s1, s2, a7
                  slli         ra, t2, 16
                  and          a2, t0, s0
                  sltiu        t1, a2, 1810
                  slli         s3, a3, 25
                  lui          a2, 956896
                  andi         sp, s10, 149
                  srl          t2, a4, s10
                  srli         a5, t3, 26
                  sltiu        a6, a2, 1257
                  sra          a7, a7, t5
                  sltu         s11, s11, s3
                  sra          t4, t5, t5
                  sltiu        sp, a4, -904
                  slt          t2, s6, t3
                  xor          s10, s2, zero
                  slli         s1, tp, 25
                  nop
                  sltu         t5, s5, s3
                  sltiu        s10, a4, -367
                  slli         s5, a1, 16
                  sub          s1, ra, a5
                  xori         s0, a4, 443
                  addi         a7, s3, 273
                  srl          t2, t1, a3
                  xor          s0, s9, gp
                  sltu         gp, s4, tp
                  srl          a7, a4, s5
                  srl          ra, s6, a6
                  sra          gp, ra, s8
                  srli         a1, a5, 0
                  srl          s5, t1, a0
                  sltu         s5, a6, t3
                  lui          a7, 772302
                  or           a5, t6, a5
                  sll          s9, s3, t3
                  slti         s2, s4, -1833
                  add          t4, t6, ra
                  nop
                  nop
                  sltu         s7, t0, a7
                  nop
                  slt          s8, ra, s7
                  sltu         s8, a0, s0
                  sltu         s0, a7, a2
                  srai         t2, t1, 18
                  addi         t4, a0, -1430
                  xor          zero, a6, tp
                  xor          s9, t6, t3
                  andi         zero, gp, -1660
                  sra          a5, s8, ra
                  slti         s2, t6, -1230
                  srli         zero, a6, 30
                  slti         s0, s4, -878
                  lui          t5, 893791
                  lui          t5, 304523
                  nop
                  sltu         ra, s7, a1
                  xori         a7, a1, -947
                  ori          s2, t0, -1324
                  sltiu        s10, t1, -1150
                  add          a7, zero, t1
                  sltiu        s2, s11, -518
                  srli         s4, s2, 2
                  sll          s8, s1, s0
                  xori         s10, a5, 119
                  slti         s9, s7, -735
                  andi         s2, a5, 325
                  sltu         s3, ra, s11
                  sltu         s10, t6, s2
                  srl          s4, t0, s7
                  srli         s0, s4, 6
                  slt          t2, a7, a1
                  sll          ra, s6, ra
                  srai         a0, ra, 3
                  slt          t3, s0, a2
                  sll          a5, s7, sp
                  sltu         sp, t5, a0
                  ori          s7, s9, -25
                  ori          ra, t2, -1975
                  and          a6, a7, s11
                  sra          a2, a4, zero
                  auipc        t2, 796851
                  ori          s10, ra, 1105
                  slt          a4, a3, a1
                  andi         gp, a3, -196
                  srli         s5, s1, 7
                  sltu         a0, zero, tp
                  slli         t0, s7, 15
                  and          t1, t6, s4
                  xor          s11, s7, s4
                  auipc        t1, 908655
                  or           t6, s0, t4
                  or           a1, s7, s5
                  add          a6, t5, a7
                  lui          s9, 851068
                  sra          s2, s8, a4
                  xor          s0, s3, s4
                  and          a4, s11, s10
                  nop
                  xori         s0, a5, 1333
                  xori         s10, a0, 1492
                  slli         a1, zero, 27
                  nop
                  or           a6, s1, s7
                  sub          t3, a6, t2
                  add          s9, ra, zero
                  ori          gp, t1, -1516
                  addi         s2, a1, -761
                  srai         s8, gp, 16
                  sub          sp, s11, a1
                  or           s5, zero, s8
                  sltiu        gp, s5, 1167
                  srl          gp, gp, s8
                  and          s10, gp, s4
                  sub          a5, s0, s11
                  and          a5, s2, s6
                  addi         a6, sp, 1804
                  addi         s10, t3, -1341
                  sltiu        zero, a3, -1765
                  li           t1, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           ra, 0x80000000
                  li           t6, 0xd56ceb0d
                  li           t4, 0xffffffff
                  li           s11, 0x80000000
                  li           a2, 0xffffffff
                  li           a1, 0x0
                  li           sp, 0x0
                  li           gp, 0xffffffff
                  li           a6, 0x46ac410d
                  auipc        a2, 667475
                  addi         sp, t4, -276
                  auipc        a2, 312181
                  addi         t6, t4, 558
                  addi         a2, sp, 324
                  add          t1, t6, s11
                  sub          ra, gp, a2
                  auipc        a6, 130083
                  nop
                  add          a1, a2, t4
                  addi         s11, a2, -505
                  nop
                  sub          t6, a1, gp
                  sub          ra, t1, a2
                  addi         ra, a1, 1843
                  lui          t6, 294950
                  auipc        sp, 361520
                  addi         a2, t1, 903
                  auipc        a2, 21591
                  lui          s11, 583858
                  sub          gp, sp, s11
                  auipc        t6, 180528
                  nop
                  nop
                  nop
                  lui          a1, 420460
                  nop
                  nop #end riscv_int_numeric_corner_stream_8
                  srai         t5, ra, 11
                  lui          s0, 854198
                  nop
                  andi         t3, t4, 257
                  srl          s1, s0, tp
                  sub          s2, t3, zero
                  sra          s8, gp, s2
                  or           t3, s10, s10
                  sub          t1, zero, t6
                  sltiu        s4, t4, -1411
                  sra          a2, a5, s2
                  sub          t3, a0, a5
                  slli         t4, s11, 24
                  srl          s5, s2, s10
                  sltiu        s10, t2, 2029
                  sra          a7, t5, t4
                  lui          s11, 601428
                  addi         t4, s3, 1530
                  add          s4, ra, a6
                  or           s11, s4, s0
                  andi         s1, t4, 1748
                  srl          gp, a3, gp
                  srai         s7, s7, 9
                  auipc        t4, 837309
                  sltiu        s1, a3, 117
                  xor          t0, gp, s3
                  sll          t0, s11, s11
                  addi         a1, s6, -1463
                  xori         a2, t4, -94
                  or           sp, t3, a2
                  srli         s3, s4, 20
                  li           a2, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           s4, 0x80000000
                  li           ra, 0x80000000
                  li           a4, 0x5019cb3f
                  li           t5, 0x80000000
                  li           a5, 0xffffffff
                  li           a7, 0xffffffff
                  li           s1, 0xffffffff
                  li           t1, 0xb8187e5c
                  li           t3, 0x0
                  nop
                  add          t1, a7, t5
                  nop
                  nop
                  lui          t5, 928971
                  sub          a5, t1, t3
                  auipc        a2, 614080
                  add          a7, s1, a2
                  sub          a5, t3, t3
                  auipc        t3, 139549
                  sub          t3, a2, s1
                  auipc        s4, 893607
                  nop
                  nop
                  sub          a2, s4, t1
                  addi         s1, a4, 422
                  lui          ra, 643897
                  add          t1, t1, t1
                  sub          t1, t1, t5
                  lui          a5, 605492
                  nop
                  nop
                  lui          a2, 883412
                  lui          t5, 676120
                  add          s1, a4, a2
                  sub          t5, a7, s1
                  auipc        t3, 973784 #end riscv_int_numeric_corner_stream_17
                  slli         a1, s6, 11
                  nop
                  sll          a0, s10, a1
                  addi         s10, t2, -1519
                  srli         s0, ra, 10
                  slt          a2, a6, t5
                  and          t5, a1, s2
                  srl          s11, t0, a0
                  lui          zero, 867602
                  add          a6, tp, zero
                  nop
                  slti         a6, s5, 175
                  srl          t2, a5, a5
                  xori         ra, t4, -126
                  slli         t5, t5, 10
                  add          zero, a6, s2
                  sltiu        sp, a5, 1918
                  sra          t3, t2, s6
                  andi         s5, s0, 122
                  slt          a5, a1, t1
                  or           a2, t1, zero
                  srai         t4, t3, 30
                  andi         s8, s8, -680
                  add          t4, s1, s11
                  srai         s11, s0, 19
                  addi         t1, zero, -1653
                  slt          s5, a1, a4
                  xor          s3, tp, a3
                  nop
                  andi         t6, a3, 531
                  lui          a4, 221354
                  nop
                  sub          a1, t6, s0
                  slli         a7, a4, 13
                  srli         s8, s10, 30
                  lui          s2, 729625
                  sltiu        s11, tp, -2026
                  lui          a1, 193441
                  srl          gp, t6, s4
                  and          s4, s2, s3
                  sltu         a0, s6, a2
                  slti         s4, s0, 1154
                  slt          t5, a2, a0
                  srli         s4, zero, 7
                  addi         s11, a4, 1895
                  add          t4, zero, s1
                  addi         a2, t4, -649
                  nop
                  addi         t1, tp, 1560
                  xor          s4, sp, a4
                  slti         s0, s4, 865
                  sub          s1, a7, s8
                  sltu         s5, t6, t6
                  srai         t5, t2, 16
                  sub          a5, sp, s4
                  xori         t6, zero, 339
                  and          a4, t3, tp
                  slt          s10, ra, t3
                  and          a1, s5, a3
                  addi         s8, gp, 1201
                  or           t3, t4, s2
                  slti         s2, t4, -1085
                  sltiu        a4, a3, 1783
                  sll          gp, s8, t1
                  sub          s2, a5, a4
                  auipc        t1, 16796
                  sub          sp, t5, s9
                  slti         a5, a3, 1725
                  srli         s4, t5, 31
                  sltu         t6, s10, s3
                  lui          a1, 372364
                  slti         s0, gp, 227
                  nop
                  ori          a7, s10, -738
                  srli         a0, s0, 30
                  nop
                  auipc        t3, 772084
                  or           t2, zero, a5
                  slt          s8, t1, s8
                  sltu         s8, s5, s3
                  slt          t2, a2, s11
                  xori         gp, a5, 271
                  srl          s7, tp, s9
                  add          s4, t6, s7
                  xori         gp, s8, 132
                  and          s11, sp, a6
                  or           t3, s1, sp
                  srai         ra, t4, 2
                  srai         s9, s3, 25
                  sra          s4, t5, s11
                  sub          s1, a6, s4
                  or           s5, a6, t1
                  sra          ra, a0, t1
                  srli         ra, s2, 3
                  xor          s0, s8, ra
                  or           t3, tp, a4
                  slt          a7, t2, t2
                  srl          a1, s4, s0
                  and          a7, t5, s5
                  and          a7, a3, t4
                  lui          s3, 464806
                  srl          t3, zero, s0
                  slt          a7, s11, s10
                  srli         s5, zero, 7
                  nop
                  slt          s11, a3, zero
                  ori          zero, sp, -334
                  srl          gp, zero, a1
                  auipc        s10, 838119
                  xori         zero, a3, 1519
                  sub          t6, s9, t6
                  lui          s2, 574519
                  sltu         a1, a6, a5
                  sra          s0, gp, a2
                  slli         zero, a4, 12
                  xor          a4, s10, a7
                  or           t3, s6, s3
                  andi         s11, tp, -530
                  nop
                  add          s8, s5, sp
                  srl          zero, a1, a0
                  nop
                  xori         a6, a4, 1996
                  sra          t3, s11, a7
                  srli         t1, sp, 3
                  and          t2, a4, s6
                  auipc        a2, 432686
                  nop
                  lui          s4, 883854
                  sll          a7, a4, s4
                  xori         a4, s7, -1462
                  sltiu        s5, s6, -1124
                  lui          t1, 341708
                  srai         s7, a3, 20
                  xor          a2, t2, sp
                  slti         t3, t2, 183
                  lui          s0, 469408
                  nop
                  sra          a5, sp, t2
                  srl          t0, a6, s5
                  auipc        s7, 691094
                  nop
                  srl          t3, s0, t6
                  or           a0, a4, s3
                  and          s4, s8, t6
                  li           a5, 0x1401847b #start riscv_int_numeric_corner_stream_2
                  li           sp, 0x80000000
                  li           s7, 0xffffffff
                  li           t4, 0x28341358
                  li           s11, 0xffffffff
                  li           t2, 0x80000000
                  li           t6, 0x0
                  li           gp, 0x0
                  li           a4, 0xffffffff
                  li           a6, 0xffffffff
                  add          a6, t6, t6
                  auipc        gp, 765623
                  add          t2, s11, a5
                  nop
                  addi         a6, a4, 146
                  addi         a4, a6, 746
                  nop
                  lui          s7, 748267
                  addi         s7, t4, -234
                  lui          s7, 524258
                  lui          gp, 60674
                  sub          a5, a6, t4
                  addi         a4, t4, -1298
                  sub          s11, a5, a6
                  addi         a6, a4, 881
                  sub          t4, a5, sp
                  addi         s7, gp, 1879
                  nop
                  add          sp, a5, a4
                  auipc        a4, 948540
                  auipc        gp, 675096
                  nop
                  addi         t2, a5, -204
                  add          t4, s7, s11
                  add          sp, t6, a6 #end riscv_int_numeric_corner_stream_2
                  sltu         zero, t6, s8
                  slt          t4, t2, a2
                  srli         t3, sp, 12
                  slli         s2, a1, 14
                  auipc        a7, 680301
                  xori         s1, tp, 859
                  lui          t6, 145800
                  auipc        t6, 851674
                  ori          a7, t1, -1856
                  sub          s1, a6, a3
                  ori          a0, a4, 2040
                  addi         t6, t0, -2
                  sltu         s3, s0, s11
                  sra          s3, s7, a4
                  srai         sp, gp, 7
                  srl          a0, zero, s8
                  nop
                  srl          s10, a3, zero
                  lui          a0, 722378
                  sll          s1, s6, t4
                  lui          t5, 929030
                  add          zero, t6, s6
                  srl          s5, a6, tp
                  srai         t3, s7, 14
                  or           t4, t0, s6
                  sra          a1, a7, tp
                  lui          s1, 820365
                  ori          sp, s5, -305
                  andi         a1, a2, 1353
                  sll          s8, a5, s9
                  sll          t6, s5, t3
                  slli         t4, s11, 14
                  slti         a1, a7, 1863
                  addi         s2, s11, -183
                  xor          a5, s1, s9
                  andi         gp, a3, 699
                  srl          a5, zero, s5
                  ori          s5, a7, -1074
                  slti         s11, s0, 418
                  and          s0, s8, t3
                  slli         s2, a6, 9
                  sra          a2, t5, a4
                  and          s1, t0, s5
                  sltiu        s0, t4, 54
                  slli         a0, a0, 22
                  add          t1, s4, t0
                  sub          s1, t1, a1
                  lui          s0, 222216
                  auipc        sp, 297736
                  srai         ra, s7, 8
                  addi         a0, a2, 1909
                  addi         a1, s9, 651
                  sll          s0, sp, zero
                  sub          a1, s6, zero
                  sra          t1, t5, s4
                  xori         a5, a1, -1219
                  add          a7, t2, s11
                  add          a2, t4, s10
                  or           a1, s8, s0
                  add          t6, s9, tp
                  slli         t4, a2, 20
                  xor          s11, a6, a0
                  sra          t3, s1, a3
                  slli         a2, a6, 2
                  ori          s4, s10, -286
                  and          ra, a1, a1
                  add          t3, s7, s10
                  sra          s11, ra, s10
                  and          a0, a0, a1
                  srl          a4, a4, a2
                  addi         a5, s8, -1340
                  add          gp, a0, a3
                  slt          a0, ra, s4
                  srl          a7, s3, s11
                  slti         gp, t1, -540
                  and          s10, t1, t4
                  sltu         s0, a1, s9
                  srli         a0, t6, 24
                  sll          s2, s9, a5
                  srli         sp, t1, 25
                  and          s7, a6, s1
                  ori          ra, zero, 2021
                  or           sp, s5, sp
                  slli         s11, t0, 24
                  xor          s4, t5, t1
                  andi         t1, t0, 1347
                  auipc        sp, 597390
                  sltu         s2, ra, t0
                  srai         t6, s1, 2
                  nop
                  slt          ra, t5, a0
                  srli         s4, s8, 19
                  addi         s4, a1, -6
                  slli         s7, zero, 18
                  sltu         t6, t0, a1
                  srl          a4, gp, a2
                  add          t3, s2, sp
                  sltiu        a1, s7, -75
                  srl          t4, ra, s7
                  sra          a7, a7, s11
                  sll          t1, t3, ra
                  xor          a4, s6, sp
                  slt          t3, s10, a5
                  sra          zero, s1, s4
                  sltu         s11, a6, s5
                  srai         a5, s11, 16
                  addi         a6, t0, -1350
                  addi         s4, a4, 528
                  sltu         sp, s6, s2
                  addi         t6, s4, -1501
                  sll          a7, s8, ra
                  sub          s1, s7, s7
                  slti         t1, t6, -51
                  nop
                  or           a5, a5, t2
                  andi         gp, s0, -1024
                  auipc        s5, 1000474
                  slli         gp, t0, 19
                  xor          s10, t2, sp
                  nop
                  slt          s7, a1, a5
                  slli         a6, a3, 13
                  srl          s10, a1, a6
                  andi         sp, s11, 780
                  xori         s5, s1, -163
                  lui          s4, 774662
                  xor          s1, s3, t4
                  xori         a4, s11, -1421
                  and          a5, a3, a2
                  sltiu        t5, gp, 348
                  sltu         s7, s11, s10
                  lui          a1, 815333
                  and          a0, s4, t1
                  sra          a4, a0, a7
                  sltu         ra, s10, a5
                  sub          s8, s8, a3
                  and          s9, a1, t4
                  srl          t6, a7, sp
                  sll          s4, s0, tp
                  nop
                  andi         s11, s11, -1018
                  addi         sp, s0, -1830
                  srli         t3, t1, 21
                  sll          s5, t2, a4
                  sltiu        a0, ra, -929
                  sltu         a0, s11, t5
                  srai         gp, t6, 3
                  auipc        s5, 698839
                  sub          t2, a7, s10
                  srli         sp, s10, 25
                  sltiu        t1, ra, -1134
                  ori          gp, t3, -1695
                  and          t5, t0, s9
                  sub          s4, gp, t2
                  xori         t4, t0, -1529
                  slti         zero, s3, -978
                  addi         s10, sp, -1972
                  srai         s1, s5, 0
                  auipc        t1, 385875
                  sra          s10, a5, t3
                  sub          s3, tp, gp
                  auipc        s0, 1022582
                  sltiu        a7, gp, -104
                  sltu         s7, t4, s8
                  slt          s4, s5, a5
                  nop
                  addi         s11, t1, 819
                  sltiu        t3, zero, -460
                  or           a1, t3, s11
                  sltu         t5, a3, t5
                  addi         a4, t0, 1894
                  srli         a5, t5, 26
                  slt          a5, a2, s7
                  nop
                  sra          s5, s0, ra
                  sub          ra, s9, tp
                  xori         s9, s2, -2017
                  sub          zero, s2, s2
                  srl          t0, s6, a3
                  xori         s2, s7, 786
                  sub          t0, a5, a7
                  sll          s0, s10, s2
                  srli         s4, t3, 12
                  nop
                  xori         s2, s1, 1582
                  lui          s7, 719769
                  slti         s8, t2, -1519
                  addi         t0, t2, -854
                  xori         s11, t1, -654
                  andi         s9, ra, -5
                  sltu         a2, t2, a0
                  sltiu        t3, t4, 1736
                  srli         t3, t4, 23
                  sltiu        s9, a0, -1949
                  srl          s9, gp, a4
                  xori         s0, s6, 249
                  srli         zero, s0, 27
                  slt          s3, tp, s11
                  sltiu        t6, a4, -1481
                  sll          a6, t0, a4
                  ori          a5, a7, 467
                  srli         a4, ra, 22
                  andi         s0, a7, -400
                  sltiu        s2, s2, -1006
                  sll          a6, s3, tp
                  or           s7, ra, a2
                  lui          t5, 568278
                  xori         s4, s7, 1603
                  xori         s7, s3, 489
                  ori          gp, s1, -1277
                  srli         gp, t6, 20
                  addi         a2, a7, -59
                  slli         t6, a2, 21
                  auipc        s1, 304386
                  or           s4, t0, a5
                  sltiu        a0, sp, 1569
                  addi         s0, s11, 675
                  srai         t1, t5, 5
                  add          gp, a0, a3
                  slli         t5, t6, 17
                  lui          gp, 182262
                  srli         a0, gp, 9
                  slli         t1, s9, 0
                  xori         t2, s4, -1118
                  nop
                  srli         a5, s0, 27
                  ori          sp, gp, -1852
                  xori         s0, t6, -554
                  srl          zero, a2, tp
                  slt          s7, s4, a0
                  sltiu        a1, s9, 9
                  srli         ra, s3, 9
                  or           a5, t5, s6
                  auipc        gp, 310224
                  nop
                  srai         t0, s11, 8
                  nop
                  lui          s4, 230319
                  slli         a4, gp, 4
                  sltiu        a5, sp, -972
                  slli         s11, s5, 13
                  lui          ra, 186731
                  xor          s2, s1, a7
                  xori         s4, s1, 741
                  auipc        s1, 763324
                  addi         s5, a6, 1403
                  lui          a2, 27665
                  srli         a0, a2, 10
                  or           s11, a1, t6
                  slli         s4, s11, 15
                  srai         s3, s11, 29
                  add          s11, s1, s6
                  slt          t3, s2, tp
                  slt          a5, tp, zero
                  lui          s9, 480821
                  or           s4, s1, zero
                  auipc        s4, 1026602
                  or           t6, t6, t1
                  andi         a6, s7, 1519
                  sll          a7, s3, s7
                  srl          t1, t6, t2
                  sll          s9, s4, t5
                  xori         a7, tp, 1977
                  ori          a0, s0, -1432
                  sll          s8, s11, t2
                  srli         zero, sp, 5
                  slti         a4, ra, -1121
                  slli         s3, a6, 7
                  srl          s7, s7, t4
                  slli         t1, s7, 1
                  lui          s8, 984286
                  xori         s7, t1, -156
                  sub          s0, s1, ra
                  auipc        gp, 585950
                  lui          t0, 94057
                  slli         t6, a4, 2
                  nop
                  add          s10, s11, tp
                  srli         ra, s2, 10
                  sub          t0, t4, s11
                  xori         t1, a7, -1461
                  add          a0, a7, a4
                  ori          t4, s7, -2002
                  srli         a1, a6, 10
                  or           a5, a5, s9
                  xori         t6, zero, 1034
                  sub          a1, t1, a2
                  sltiu        t2, t0, -1589
                  slti         t4, t0, -800
                  auipc        s2, 644865
                  slli         s1, zero, 26
                  sll          s0, t1, sp
                  or           a0, s5, t5
                  slt          s4, ra, a1
                  addi         t5, ra, -1289
                  lui          a4, 610306
                  srl          a7, a4, t3
                  xor          a6, a2, t3
                  and          a5, s5, t4
                  xor          a5, a1, t4
                  xori         sp, tp, -545
                  ori          s1, s9, 553
                  slti         t4, t3, 1745
                  addi         t2, s9, -1113
                  xor          t4, tp, s7
                  srai         zero, s3, 1
                  nop
                  xor          a6, s7, s0
                  nop
                  slli         t1, t5, 14
                  sltiu        a4, t4, 1637
                  andi         s9, t5, -1912
                  and          s8, a0, t3
                  sltu         s7, s10, s10
                  or           ra, t0, s3
                  slt          s11, tp, s3
                  sll          zero, zero, a1
                  or           s11, s4, a4
                  xori         a1, a2, -1776
                  auipc        zero, 714152
                  slti         sp, zero, -1849
                  srl          a5, s6, a4
                  sub          t4, t5, s3
                  sltiu        s8, a3, -138
                  sll          s8, t0, s2
                  srl          gp, s10, s2
                  srl          a2, s0, t2
                  sltu         ra, a2, s10
                  sub          a6, s6, s3
                  slt          a1, t3, s2
                  slti         s0, t6, 1275
                  andi         s0, a5, -1505
                  sub          s9, s3, s9
                  srli         t6, t2, 24
                  nop
                  ori          t5, t3, -1331
                  sll          t5, a2, t6
                  sltu         sp, a6, t6
                  auipc        t3, 577099
                  andi         s11, a0, -774
                  sltu         s7, s11, t6
                  srli         s8, tp, 11
                  sltiu        s0, s5, -286
                  srli         ra, s0, 25
                  xori         a1, s11, 49
                  addi         s4, t5, 1977
                  auipc        s1, 740393
                  sltiu        gp, s0, -1001
                  add          a1, a4, ra
                  sltiu        s5, s7, -1024
                  srai         t0, s11, 20
                  xori         t6, s9, 1266
                  slti         t5, s3, 115
                  and          s5, a7, s6
                  sltiu        a7, t3, -721
                  slli         t2, a1, 11
                  sltu         t4, tp, t6
                  add          gp, t6, t1
                  srli         a2, a7, 25
                  ori          s8, a2, 964
                  slli         a7, s2, 11
                  xor          s11, sp, s9
                  and          s1, s4, zero
                  xori         t2, a0, -1880
                  srli         s8, a1, 26
                  add          s4, sp, sp
                  sltu         s2, s2, s10
                  srli         t0, t6, 18
                  andi         s2, sp, 1905
                  srai         a0, s4, 9
                  sltu         s4, tp, a5
                  slli         a5, t0, 17
                  slti         s10, s6, -2025
                  sra          s9, t5, t0
                  sltiu        a6, t6, -1354
                  xori         a6, a4, -1458
                  add          s11, s9, a6
                  sub          a2, s10, zero
                  srai         zero, s5, 6
                  sra          s2, a1, s3
                  nop
                  sub          a5, ra, s9
                  slti         ra, zero, 211
                  or           t1, s7, s9
                  lui          t4, 594810
                  andi         t1, s5, -1443
                  slt          t3, s4, s8
                  slt          s7, sp, s11
                  xori         s5, s0, -1871
                  andi         s1, t5, -909
                  xor          s7, s4, t4
                  lui          s1, 220107
                  sltiu        s4, a7, -1181
                  xor          s10, s11, tp
                  slt          s5, sp, gp
                  sltiu        a6, s3, 1457
                  nop
                  nop
                  addi         s0, s9, -207
                  andi         s2, t4, 1201
                  andi         s0, sp, 751
                  or           s3, a1, zero
                  slt          s9, t1, a0
                  slti         a1, t2, -750
                  slti         ra, sp, 2
                  addi         t3, gp, 544
                  xori         a5, a0, 553
                  ori          a1, a6, 1060
                  sra          t1, a6, a3
                  add          s8, s6, a2
                  slti         a7, s9, -1615
                  lui          t4, 283235
                  slt          ra, s2, a4
                  sub          s8, t5, s0
                  xor          t2, s7, s3
                  srli         t3, s3, 22
                  sltu         t0, s0, a2
                  and          s2, s2, s2
                  xori         s9, t0, 1214
                  srai         gp, gp, 27
                  slt          s1, a2, sp
                  andi         a7, s4, -1704
                  nop
                  slli         t6, a0, 15
                  sltiu        a1, t0, -249
                  xor          s9, gp, tp
                  sltiu        s1, t5, -1921
                  addi         s0, t0, -1051
                  andi         sp, a7, 1697
                  sra          zero, t5, tp
                  xor          s5, a4, s1
                  sub          t3, s6, s6
                  lui          t0, 1041132
                  lui          s10, 545525
                  slt          s9, a7, s10
                  sra          zero, a0, sp
                  or           s1, s6, s5
                  sltu         a5, a7, s0
                  xor          t2, s7, a1
                  srli         s3, t3, 6
                  li           t3, 0x80000000 #start riscv_int_numeric_corner_stream_13
                  li           a4, 0x0
                  li           a5, 0xffffffff
                  li           t6, 0xc83ba038
                  li           t5, 0x80000000
                  li           t4, 0x0
                  li           s10, 0x80000000
                  li           s1, 0x80000000
                  li           s9, 0x0
                  li           t1, 0x5db4f40
                  sub          a5, t6, s9
                  addi         t5, t6, 735
                  sub          t3, t3, a5
                  lui          a4, 743415
                  lui          t4, 590544
                  nop
                  nop
                  add          t4, s9, a4
                  auipc        s9, 330551
                  nop
                  nop
                  nop
                  auipc        s9, 310654
                  nop
                  sub          s10, s1, s9
                  lui          a4, 209202
                  auipc        t5, 705388
                  addi         s9, t5, -611 #end riscv_int_numeric_corner_stream_13
                  and          gp, s11, a6
                  sll          t5, t6, ra
                  auipc        t3, 517115
                  xori         gp, zero, -627
                  and          a6, a1, t5
                  srli         s3, s11, 14
                  lui          s8, 39638
                  slti         s3, sp, -95
                  auipc        ra, 402549
                  slli         a7, a7, 18
                  slti         gp, a4, -262
                  sltu         s9, t1, s4
                  addi         a4, a3, -61
                  xori         s7, s5, -1153
                  nop
                  add          s11, a5, s7
                  slti         t0, a5, -1001
                  slli         sp, s0, 29
                  slli         s9, t0, 26
                  lui          t0, 1036887
                  sltiu        s7, a5, -792
                  slli         t5, a1, 12
                  nop
                  lui          a7, 115883
                  sll          t2, s10, s11
                  slli         a6, t5, 11
                  sltu         s8, s9, t4
                  or           t1, s1, zero
                  sltiu        s10, s0, 297
                  add          a7, s3, sp
                  ori          t6, t2, -510
                  andi         t5, t2, 1011
                  addi         a6, a4, 1489
                  add          gp, s10, tp
                  sub          t5, s0, s3
                  xor          zero, a7, t1
                  or           zero, t3, a2
                  sra          s0, t1, s6
                  auipc        a7, 714359
                  nop
                  slt          a2, a1, s9
                  sll          s8, a1, a4
                  sltiu        s8, s7, 1578
                  xor          a4, t0, t4
                  nop
                  ori          a5, t6, 790
                  slt          t0, a1, a5
                  srl          sp, t6, t4
                  xor          t3, a3, s0
                  andi         s7, t6, 279
                  lui          t2, 154108
                  xor          gp, a1, s2
                  lui          gp, 101127
                  auipc        a6, 201477
                  xor          t5, t1, t0
                  srli         a1, a6, 7
                  xori         s2, t4, -1671
                  sll          s4, a0, a7
                  and          a4, t2, a1
                  sra          a4, sp, a3
                  slli         a5, tp, 17
                  slti         ra, s0, 1163
                  slli         s11, s4, 15
                  addi         a4, s3, 733
                  sub          s8, t1, gp
                  andi         t5, a3, -2025
                  srl          s11, s4, s4
                  add          a2, s8, s6
                  xori         s2, a0, 1672
                  slli         s4, zero, 19
                  srl          s4, s6, s8
                  add          s1, t4, zero
                  addi         t4, s10, 1179
                  slti         s2, a7, 1737
                  auipc        a2, 67047
                  addi         a4, s11, 1941
                  sll          t5, s0, zero
                  auipc        s5, 712661
                  and          s2, t6, t3
                  xor          s9, s0, s7
                  lui          a4, 283666
                  slti         s3, a4, 485
                  xori         s5, a7, 1624
                  slli         t5, t3, 11
                  xori         ra, t5, -1013
                  lui          a6, 161282
                  ori          s10, sp, -1437
                  slli         t1, s4, 4
                  andi         sp, s9, 970
                  slti         s4, t0, -1010
                  slt          s0, t5, s4
                  srai         a6, s10, 2
                  slt          t3, ra, s4
                  sltiu        t2, ra, 1734
                  addi         a6, t4, -407
                  add          s1, ra, t3
                  and          s7, a7, s8
                  and          s1, s5, a5
                  or           s2, a6, sp
                  slti         s8, s4, 571
                  and          t4, a3, zero
                  xori         a6, a0, -206
                  srli         sp, a2, 5
                  srai         a1, t3, 26
                  sra          a6, s0, s1
                  andi         s11, t5, -762
                  sltu         s7, sp, a6
                  xori         t2, s3, -1374
                  sll          t4, s9, t3
                  sll          gp, t1, a1
                  slti         a7, s1, 927
                  ori          zero, s5, 543
                  andi         s11, s6, -788
                  addi         t4, a6, -641
                  slli         s9, sp, 13
                  slli         s8, s11, 5
                  slti         t6, s0, -79
                  xori         a5, t5, -865
                  srli         gp, a3, 8
                  srl          s3, a1, s4
                  lui          sp, 981804
                  andi         s7, s9, -94
                  add          s7, t6, t0
                  sltu         s4, gp, s3
                  slli         a4, sp, 26
                  slli         s3, t4, 7
                  sub          s7, a6, t1
                  srai         s2, s10, 11
                  slli         s5, tp, 30
                  sltu         s2, t6, t4
                  addi         s1, t2, -1564
                  sub          s11, gp, zero
                  ori          t4, s10, -1207
                  sltu         s5, a4, s10
                  sub          t2, t1, t1
                  srl          a1, s0, s6
                  slt          ra, a5, t0
                  and          gp, t6, s5
                  srli         zero, t1, 6
                  slli         s0, s1, 12
                  sltiu        ra, s7, -42
                  slli         gp, s8, 4
                  slt          zero, a5, s10
                  sltiu        a7, t0, -970
                  or           ra, t6, tp
                  slt          t0, a7, gp
                  slti         s7, a4, 1081
                  slt          t0, a6, t5
                  slti         zero, a4, 1595
                  auipc        s4, 399278
                  slti         t4, t2, -1803
                  xori         s2, t0, 1353
                  srli         t6, gp, 20
                  lui          ra, 606759
                  nop
                  add          a7, s5, s0
                  addi         s7, a2, -1853
                  xor          gp, t5, t5
                  slt          a4, s1, s1
                  ori          s11, s5, 71
                  slti         a7, s3, 88
                  srl          t5, gp, zero
                  srl          s8, s8, a0
                  sll          s8, a7, ra
                  xor          s10, a0, s2
                  addi         s3, t5, 1515
                  lui          sp, 584451
                  sltu         a1, s7, a2
                  xori         s2, a7, 742
                  and          a1, a5, gp
                  slti         s9, a1, 408
                  auipc        t4, 1033409
                  sll          s9, t6, a4
                  sltu         a6, a5, a0
                  add          s4, zero, a7
                  sltu         a4, s5, a6
                  add          ra, sp, s5
                  srli         s1, a4, 7
                  lui          s1, 47404
                  ori          s11, a4, -547
                  auipc        t5, 788497
                  sll          s4, s11, s0
                  andi         s3, a0, 1006
                  addi         s4, a1, 1098
                  slt          a4, s0, s1
                  lui          s9, 933161
                  lui          gp, 663688
                  auipc        a1, 130447
                  nop
                  slti         a7, t1, 1374
                  xor          t1, a7, s5
                  sltiu        t0, a7, -551
                  or           s10, s10, a5
                  xor          s2, t0, t4
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           t3, 0xffffffff
                  li           a1, 0x80000000
                  li           t2, 0xffffffff
                  li           a5, 0x6d454388
                  li           t4, 0x80000000
                  li           a2, 0x9cb6e4a2
                  li           s8, 0x80000000
                  li           s9, 0x80000000
                  li           t5, 0x7049bc1d
                  auipc        s9, 344243
                  sub          t5, a5, a2
                  auipc        a2, 856542
                  nop
                  add          t5, s8, s8
                  nop
                  lui          s8, 952016
                  nop
                  sub          a5, s9, t5
                  lui          a1, 302989
                  sub          s8, s8, t3
                  add          t4, t5, t5
                  nop
                  lui          a0, 69655
                  sub          t5, t3, t4
                  sub          t5, t4, a2
                  auipc        a2, 929699 #end riscv_int_numeric_corner_stream_6
                  xori         a5, gp, -922
                  sll          a5, a2, t1
                  slli         s2, t5, 5
                  slt          t5, t4, s5
                  sra          s3, s4, a4
                  nop
                  nop
                  slli         t4, tp, 14
                  slli         a7, t0, 11
                  auipc        ra, 922875
                  addi         t2, a2, 1387
                  sltiu        a2, a3, 1873
                  sltiu        t6, t4, -1861
                  sub          a0, t5, s4
                  ori          s8, t0, -1413
                  slti         s1, a7, -1390
                  lui          t0, 91773
                  sra          a7, a7, s2
                  ori          sp, a1, 1984
                  nop
                  sra          s4, s2, s6
                  nop
                  ori          a1, tp, 55
                  srli         t3, t3, 26
                  srl          s5, a5, a5
                  ori          ra, tp, 62
                  sltu         t5, a4, sp
                  slti         gp, t5, 1435
                  addi         a5, s8, 1755
                  slt          s5, s6, s2
                  sltu         t6, tp, s2
                  slti         s8, s4, -68
                  ori          a5, s0, -455
                  add          s4, s11, s3
                  andi         t6, s9, 1311
                  slli         a7, s8, 20
                  andi         t0, a0, 973
                  nop
                  xori         t6, a1, 215
                  slti         t0, s2, 1166
                  xori         s7, a3, -674
                  sltiu        t5, t4, 1519
                  auipc        s4, 400463
                  srai         t0, t1, 20
                  auipc        a1, 752944
                  andi         s0, a7, -920
                  xori         a4, tp, 1686
                  srai         t1, t0, 20
                  xori         t4, t4, 1319
                  slti         t2, gp, 1057
                  auipc        t0, 10291
                  xori         s5, a0, 517
                  srli         t3, s1, 11
                  sub          ra, a1, s6
                  add          s8, s6, s9
                  slt          t1, ra, a7
                  add          s5, t0, s6
                  ori          zero, a0, 27
                  add          s11, a6, a2
                  xor          t1, t6, s9
                  andi         t2, zero, 488
                  slt          gp, gp, s6
                  sltiu        ra, s10, 267
                  andi         t3, s8, -331
                  srli         zero, t2, 8
                  sra          t3, s0, a1
                  srai         a6, a3, 19
                  nop
                  slti         a6, t5, -37
                  sra          s5, a1, s6
                  xor          a7, a4, a6
                  xori         t1, a2, 1305
                  andi         a6, s9, 885
                  sra          s0, a6, t4
                  ori          gp, zero, -233
                  ori          t3, s0, 1252
                  nop
                  srli         ra, t6, 1
                  nop
                  auipc        s3, 576522
                  and          t2, s11, a6
                  or           a4, s10, t6
                  nop
                  lui          s9, 351951
                  ori          s10, s9, -1245
                  and          a1, t6, t3
                  andi         a1, s7, -669
                  ori          s0, s0, 1765
                  slli         s3, t2, 4
                  and          s7, s4, s5
                  xori         a0, s11, 1920
                  or           a0, a2, t4
                  lui          a1, 717102
                  srai         t2, s1, 9
                  slt          ra, t4, s5
                  slti         a5, ra, 1566
                  sltiu        s0, a5, 146
                  lui          s7, 149185
                  slti         s10, s5, 1213
                  srai         s8, s8, 15
                  ori          a0, s2, 500
                  xor          a7, zero, t2
                  srai         a2, gp, 24
                  xori         a4, zero, -762
                  sll          a7, tp, t4
                  sltu         s4, gp, tp
                  slti         a5, a7, 334
                  and          t6, t0, s4
                  ori          a5, t4, -1881
                  ori          a7, s8, 277
                  sll          s2, a3, zero
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           t1, 0x80000000
                  li           a7, 0xfef41a09
                  li           ra, 0xffffffff
                  li           a6, 0xffffffff
                  li           s3, 0xffffffff
                  li           s4, 0x7221943c
                  li           s1, 0xffffffff
                  li           a0, 0xacf78ce5
                  li           t4, 0xffffffff
                  sub          t1, s8, s3
                  sub          s3, a0, ra
                  nop
                  sub          s8, a0, s3
                  lui          s1, 545601
                  nop
                  lui          s8, 777027
                  addi         a7, t1, -1653
                  lui          ra, 385151
                  add          s4, t1, s1
                  addi         a7, t1, 374
                  add          s1, ra, s4
                  auipc        a6, 1043176
                  add          a7, ra, s3
                  addi         s8, a0, 1301
                  sub          a0, ra, a6
                  lui          s1, 809472
                  auipc        s4, 25174
                  lui          t1, 856371
                  add          a0, t1, a6
                  addi         ra, s3, 1833 #end riscv_int_numeric_corner_stream_0
                  auipc        s11, 222266
                  slt          s8, t4, a2
                  addi         a1, s2, -922
                  lui          s8, 803987
                  ori          a4, s7, 1911
                  sll          s3, s8, t0
                  sub          a5, t0, s9
                  slli         a0, sp, 8
                  sltu         gp, s11, s5
                  or           s10, s6, s8
                  and          a6, a0, s5
                  auipc        a1, 860227
                  sra          a4, t6, s3
                  sra          a5, s2, sp
                  slti         t1, t2, -1352
                  sltiu        t6, t6, -2034
                  xori         t4, s0, 1883
                  and          ra, s7, s7
                  sub          a2, gp, s5
                  ori          a6, s11, 1137
                  slt          gp, tp, gp
                  add          t4, t5, t4
                  xor          t6, s6, a2
                  lui          a5, 553387
                  sub          t4, a3, ra
                  sltiu        gp, t3, 1275
                  slt          s10, s4, t3
                  srai         t3, s7, 18
                  sra          t4, t4, a4
                  srai         a4, s8, 6
                  xori         s10, a1, -821
                  nop
                  addi         a2, a0, -128
                  sltu         t5, s6, s4
                  slt          s9, sp, s1
                  sltu         zero, s6, zero
                  add          s2, gp, a0
                  auipc        t1, 969309
                  srai         s11, s0, 24
                  slti         s8, s8, -1780
                  sll          s10, t5, s10
                  sub          s0, sp, t2
                  and          t2, a0, s5
                  lui          t2, 683391
                  andi         a6, ra, -1520
                  nop
                  srl          t5, t5, a3
                  slt          zero, sp, s10
                  slt          s7, t6, s11
                  andi         t2, a5, 998
                  auipc        s7, 54434
                  sll          s7, a7, a1
                  xori         a5, t1, 358
                  sltu         t0, a3, sp
                  lui          t3, 821007
                  or           s9, a7, a4
                  ori          s3, t5, 1113
                  sra          t2, a5, ra
                  slt          zero, a3, a4
                  sll          s4, s11, t0
                  sltiu        sp, a5, 347
                  sub          a6, t3, s9
                  sll          ra, t3, t4
                  lui          t2, 197044
                  sub          sp, s2, t1
                  sra          s4, a0, s8
                  or           t3, a4, t0
                  srl          s9, s7, t0
                  slli         s4, s5, 16
                  add          s7, a0, s5
                  or           t2, ra, ra
                  auipc        t2, 1012924
                  srli         a5, a6, 4
                  addi         t3, s5, 1075
                  nop
                  slti         t3, a7, 1098
                  xori         s1, gp, -390
                  sltiu        ra, s10, 194
                  sll          t4, s4, a7
                  andi         t4, ra, -599
                  srli         a0, s10, 7
                  addi         sp, t6, 1004
                  sltiu        t3, a6, -464
                  nop
                  add          s2, a5, tp
                  and          t4, t6, s8
                  addi         zero, gp, -1147
                  lui          s0, 21392
                  andi         sp, a6, 865
                  or           t5, a4, s0
                  lui          s1, 755768
                  srli         t5, a4, 24
                  srai         s11, a1, 13
                  xori         zero, tp, 1452
                  andi         zero, a5, -1686
                  and          a5, s9, s10
                  xori         s8, s2, 1056
                  ori          s8, tp, 445
                  srl          s7, a1, a1
                  xor          a2, a1, s10
                  xori         s2, t1, 1529
                  auipc        s11, 576785
                  andi         t2, t2, -1721
                  or           a4, ra, t5
                  sltu         a2, s1, s3
                  andi         t5, s10, -191
                  slli         s4, t2, 16
                  xor          a1, t6, a4
                  sll          a5, s10, s2
                  srai         ra, s0, 14
                  nop
                  xor          t5, a7, a7
                  sltu         t1, t0, s2
                  slti         t2, s9, -1704
                  srai         gp, t4, 27
                  slli         s8, a5, 21
                  srli         s0, t2, 19
                  sub          a4, t2, s1
                  andi         s11, s2, 322
                  lui          gp, 130737
                  ori          t6, ra, -1869
                  sub          a4, a6, s5
                  auipc        s10, 736765
                  sll          s5, s10, tp
                  addi         s0, s3, -637
                  srai         a7, s9, 9
                  sll          s11, zero, s3
                  lui          a2, 128993
                  xor          a2, a1, a2
                  sra          t2, s4, t3
                  addi         a7, a6, -213
                  xor          a7, a4, gp
                  sll          sp, a3, zero
                  sll          a1, gp, tp
                  auipc        s1, 584302
                  slt          s1, s1, a0
                  ori          a2, a0, -1862
                  srl          s4, tp, t0
                  srai         a6, t6, 25
                  xori         a7, s1, 1843
                  sll          a6, s10, sp
                  and          s2, tp, t6
                  slti         a4, ra, 156
                  ori          s3, tp, -83
                  srl          s11, s5, s0
                  srli         t4, t2, 7
                  sltu         t4, s2, t0
                  slli         a1, t1, 18
                  lui          t4, 204527
                  xori         zero, t1, 76
                  addi         s7, a3, -255
                  sub          a5, t4, sp
                  sltu         t2, a7, t5
                  slti         a1, t6, 1123
                  srli         s11, s0, 20
                  slt          s7, t6, t5
                  andi         s7, t6, 758
                  and          a7, tp, s6
                  sub          a2, s7, s3
                  and          t1, s1, a4
                  srl          s1, s3, a0
                  slt          sp, t2, gp
                  or           s7, s4, a0
                  slti         a7, t2, -1030
                  auipc        ra, 1024977
                  add          s3, a1, a0
                  slt          s11, a1, a4
                  sra          a1, a0, s9
                  addi         gp, a0, 1056
                  slti         t1, s10, 1963
                  slli         s11, a5, 25
                  auipc        t5, 433843
                  or           a5, s6, t0
                  and          t2, t3, s5
                  auipc        s2, 667588
                  sub          s5, s1, tp
                  sra          ra, a3, t0
                  andi         s3, s3, -1507
                  sub          a5, a3, a7
                  sltu         ra, zero, s9
                  srl          a5, zero, s2
                  srai         s11, s11, 28
                  srli         s10, s4, 16
                  nop
                  xori         s7, a0, -1442
                  xori         s4, a5, -1123
                  sra          s3, s5, s8
                  srli         a0, t1, 13
                  nop
                  sra          a1, s6, s2
                  slli         t3, t3, 29
                  nop
                  srai         s4, a3, 13
                  sub          zero, t4, tp
                  ori          s3, t1, -1913
                  xori         t4, ra, -1304
                  add          t5, a6, t3
                  srl          s9, t1, s9
                  andi         ra, s11, 205
                  srai         a7, s9, 23
                  xori         gp, t2, 680
                  slti         t3, s0, 1049
                  slti         t6, s10, -1043
                  auipc        s2, 113639
                  slt          s3, gp, t3
                  sub          a1, s7, a5
                  sra          s7, t4, s2
                  lui          a6, 614567
                  sra          sp, t0, ra
                  sll          t5, a7, zero
                  add          t3, gp, zero
                  andi         gp, a3, -359
                  lui          s8, 143231
                  xor          a7, t5, t3
                  nop
                  nop
                  xor          t5, gp, tp
                  xor          t4, tp, a3
                  srl          a5, a0, a4
                  sltiu        t5, sp, 283
                  ori          t4, t2, -1750
                  nop
                  sltiu        s10, t4, -1519
                  addi         ra, tp, -1499
                  andi         s10, s6, 354
                  slti         a6, tp, -5
                  srl          a2, a2, a4
                  srl          a4, s5, t4
                  ori          gp, s5, 1817
                  lui          s5, 605306
                  sltiu        zero, s7, 392
                  sltiu        t6, s2, -1895
                  srl          a2, a7, s5
                  srai         s8, a3, 1
                  slt          t1, a2, zero
                  xor          s3, s3, s0
                  or           s5, s2, s11
                  and          t0, gp, t1
                  addi         t1, t3, -1903
                  ori          s2, ra, 152
                  sll          zero, a2, zero
                  srl          s1, s1, s2
                  slt          s7, t5, s8
                  slli         t3, s9, 29
                  sltiu        a2, s0, 1493
                  xor          a2, a2, s7
                  add          s4, s6, s3
                  nop
                  srli         s1, t1, 24
                  sll          s4, a0, s5
                  sub          a5, s2, a3
                  and          a2, s0, s11
                  or           s8, tp, a6
                  sltu         s4, s9, a4
                  li           t0, 0x948a4055 #start riscv_int_numeric_corner_stream_18
                  li           t3, 0x80000000
                  li           gp, 0x80000000
                  li           s7, 0x0
                  li           s2, 0x0
                  li           s9, 0x0
                  li           t5, 0x0
                  li           s11, 0x0
                  li           t1, 0x80000000
                  li           s5, 0xffffffff
                  auipc        s9, 567600
                  addi         t5, s7, -688
                  lui          s5, 623827
                  sub          t3, s9, t0
                  nop
                  addi         t5, t5, -1367
                  addi         t5, t1, -627
                  addi         s2, s11, -1352
                  auipc        s5, 377317
                  auipc        s9, 266117
                  auipc        s11, 301687
                  auipc        s5, 114436
                  addi         t0, t5, 1840
                  addi         t1, t0, 1958
                  nop
                  addi         s5, t3, -1741
                  auipc        s11, 86406
                  add          t0, s9, gp
                  addi         t0, t1, 1028 #end riscv_int_numeric_corner_stream_18
                  srl          s9, ra, a6
                  srl          a1, s3, a7
                  sra          t3, t6, t4
                  auipc        s7, 949446
                  sltiu        s3, t4, -1448
                  xori         s5, t6, -1096
                  slti         s2, gp, 1408
                  auipc        s1, 565697
                  andi         t2, a1, 795
                  lui          s9, 377271
                  or           t1, ra, s10
                  sub          a2, zero, a7
                  or           t2, ra, s11
                  srl          s5, t2, t6
                  auipc        s5, 815735
                  andi         gp, a6, -867
                  xor          t0, zero, a2
                  srl          a7, s4, t3
                  srl          s0, sp, s8
                  sub          a5, t2, gp
                  sltu         t4, zero, a5
                  auipc        t2, 257681
                  nop
                  ori          s3, s2, 280
                  sltiu        s9, t1, -284
                  addi         t3, s7, 1676
                  xori         a4, a3, -477
                  srli         t6, ra, 7
                  or           a2, tp, t5
                  sll          a0, t4, t4
                  xori         s9, a5, -1101
                  srli         s5, s11, 17
                  sra          s1, a2, t3
                  addi         a0, t2, -1713
                  slti         a0, s6, 1964
                  addi         t0, a2, -935
                  and          a6, t4, s8
                  or           ra, t6, t6
                  addi         sp, t5, -788
                  andi         s11, s9, 23
                  sll          s7, t3, a3
                  sltu         s3, sp, a0
                  slt          t3, s1, tp
                  or           s11, s2, t5
                  xor          s4, t6, t0
                  xori         s1, a1, 174
                  sub          s7, a7, ra
                  srl          zero, a0, sp
                  sra          s7, t1, t1
                  slt          s2, t3, t3
                  xori         s10, a1, -1859
                  sub          s11, a7, t2
                  or           sp, a5, t0
                  sub          t1, t3, t3
                  sub          gp, a6, zero
                  sltu         t5, s3, a5
                  sra          a4, s8, a2
                  sll          s5, gp, a0
                  nop
                  sltiu        a4, a4, -1710
                  sltu         ra, tp, t3
                  xor          s8, s10, tp
                  or           s2, s10, t3
                  auipc        t3, 853122
                  srli         a6, t4, 22
                  or           s3, s1, a6
                  sub          a6, s8, s9
                  xori         a2, zero, 386
                  srli         sp, s0, 14
                  sltu         a5, t0, a3
                  xori         s0, t3, -1328
                  xor          s5, a5, s3
                  slli         a0, t4, 17
                  xor          a0, s10, s2
                  auipc        s10, 677629
                  and          s1, tp, a5
                  ori          t2, tp, 501
                  xori         sp, a4, -282
                  ori          a7, s6, -376
                  slli         t0, s0, 5
                  xor          a4, t2, zero
                  slli         t3, t4, 25
                  addi         s3, t6, 1665
                  sra          a1, a4, t3
                  lui          t4, 789633
                  xori         ra, s6, 1907
                  ori          s1, t5, 926
                  sra          s9, s7, t5
                  slti         t1, tp, -1582
                  xor          sp, a4, s1
                  srli         s4, t5, 16
                  sltu         s10, s3, t0
                  and          sp, a0, s3
                  or           s0, s9, s10
                  slt          t6, a5, s11
                  sub          s2, t1, a4
                  nop
                  sltu         a7, a4, s2
                  sra          t2, s6, a6
                  sltiu        ra, t1, 722
                  slti         s10, s3, -1663
                  srli         a1, t6, 16
                  srl          t5, zero, a1
                  nop
                  lui          a1, 221012
                  srai         s2, t3, 25
                  sra          t6, a7, t5
                  slli         s3, t2, 30
                  sltu         s0, a6, a7
                  lui          s5, 757166
                  sltiu        t2, s8, -465
                  or           a1, s3, ra
                  slti         t0, s9, -433
                  xor          a7, t3, ra
                  srli         t1, zero, 25
                  andi         gp, t5, -1246
                  srli         a4, t4, 15
                  ori          s5, a0, 1568
                  auipc        s0, 853418
                  slli         a5, s11, 3
                  sltiu        a7, t0, -1255
                  srai         s2, a1, 21
                  srli         s11, s4, 10
                  sll          a7, s0, ra
                  ori          t1, t0, -2041
                  sra          s9, s9, s5
                  andi         s2, s10, 836
                  add          s8, s9, t1
                  and          s2, a6, s3
                  lui          a2, 1029669
                  sltiu        zero, t2, -524
                  andi         a0, s9, 1790
                  sltu         a2, t2, s7
                  sub          zero, a3, s6
                  sub          s2, gp, a5
                  sll          s11, s11, s3
                  add          s2, t3, t0
                  slli         a7, t0, 24
                  xor          s7, a1, t6
                  srl          s10, s6, s6
                  srl          a6, tp, t6
                  add          s5, s8, t2
                  and          a7, s7, a0
                  srli         zero, a0, 10
                  srl          t5, sp, a5
                  sltiu        t3, s11, -787
                  slt          a2, a2, gp
                  slti         s0, s8, 827
                  slt          s11, s7, a6
                  sra          a5, a6, a5
                  sra          s1, t0, t1
                  sltu         ra, a3, a4
                  slt          gp, t0, a5
                  sra          t6, a0, gp
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           t4, 0xffffffff
                  li           a2, 0xffffffff
                  li           t0, 0xffffffff
                  li           t3, 0xc27c30f1
                  li           a6, 0xffffffff
                  li           t5, 0xffffffff
                  li           t1, 0xffffffff
                  li           a4, 0xe45685ec
                  li           sp, 0xcb96f0c2
                  add          t0, t5, a6
                  add          sp, t0, t4
                  auipc        a2, 611972
                  addi         t4, a2, -1736
                  lui          a4, 848810
                  add          t1, sp, a6
                  auipc        t4, 718962
                  sub          a4, t3, t5
                  add          t3, t0, a6
                  nop
                  auipc        t4, 343612
                  auipc        t5, 275388
                  add          a6, t3, t3
                  sub          t1, a4, t3
                  addi         a6, t0, 1396 #end riscv_int_numeric_corner_stream_15
                  and          s2, a4, s4
                  or           a2, ra, t4
                  sra          gp, s0, t4
                  sltiu        a1, a0, -1707
                  sub          t4, s8, t2
                  lui          a4, 342457
                  add          t3, a4, s6
                  xor          a5, s1, t2
                  slt          a2, s11, s11
                  lui          t5, 262768
                  slli         ra, a2, 5
                  srli         t5, s1, 8
                  slti         s7, a0, -1332
                  sub          s10, a3, s10
                  sltiu        t5, a1, -800
                  srl          s0, s4, a5
                  nop
                  slti         ra, ra, -1081
                  srli         t2, ra, 22
                  sra          t6, s4, t5
                  sltu         s8, t4, a4
                  sra          gp, s2, zero
                  add          t2, s6, s6
                  nop
                  slti         ra, t4, -1181
                  or           t0, sp, a2
                  andi         zero, s9, 1678
                  addi         a6, gp, 142
                  sltu         s2, sp, t5
                  lui          zero, 346236
                  lui          t5, 803608
                  srl          a5, a1, s5
                  sltiu        s4, tp, -35
                  xori         t2, s0, 1053
                  sub          t1, s2, sp
                  sra          s0, a7, s9
                  sll          gp, s3, s5
                  xor          t3, zero, sp
                  sll          sp, s0, a5
                  auipc        t1, 647517
                  nop
                  srai         a4, a4, 17
                  srai         s8, t6, 28
                  slti         a7, s0, 1286
                  add          s11, t2, s10
                  sub          sp, s3, a4
                  slt          s4, a5, s2
                  ori          gp, t0, 807
                  xor          sp, a1, s10
                  srl          s8, s9, a2
                  or           s4, t2, sp
                  xor          gp, s8, ra
                  nop
                  slli         t1, t2, 2
                  add          s10, a3, tp
                  andi         s9, a0, 1174
                  andi         t1, s9, 578
                  lui          s1, 637270
                  srl          s1, t3, t0
                  xori         s4, a6, -1151
                  srli         s2, s0, 12
                  addi         a5, t5, 465
                  sub          s0, a6, a3
                  sub          a7, ra, a1
                  andi         gp, s5, -1434
                  or           s2, a2, s4
                  andi         s0, t5, 1339
                  sltu         a7, t4, a1
                  srai         s8, a5, 13
                  slt          s11, s9, a3
                  srai         a7, tp, 24
                  or           a5, a6, s0
                  xor          s3, a5, t2
                  srli         s11, a6, 30
                  srli         t3, t2, 28
                  sltiu        s9, a4, 822
                  xori         s11, s5, 340
                  sra          a0, s4, tp
                  sra          a7, s11, a0
                  xori         a6, s0, -2005
                  sra          t1, a0, t0
                  srli         a0, s5, 17
                  xori         a0, ra, 1749
                  auipc        t6, 460633
                  sltiu        ra, s5, 231
                  srli         t2, a0, 14
                  sltu         s7, a0, s8
                  slt          s4, a6, t5
                  srli         zero, s3, 28
                  lui          t5, 525835
                  sub          a2, s8, s0
                  sltu         s3, a4, s9
                  sra          t4, t6, s4
                  sltu         t4, zero, s4
                  sub          s0, s3, a4
                  sub          s9, ra, t3
                  add          gp, s2, a4
                  addi         a2, s6, -1354
                  srli         a7, s10, 21
                  sltu         s11, a7, t6
                  srli         s2, s0, 15
                  sra          a6, s4, a4
                  srl          a7, s7, a1
                  sll          a2, s5, s4
                  slti         s10, a6, -47
                  xori         s7, t6, 1699
                  slti         s11, s10, -1803
                  slli         a2, a2, 26
                  ori          t4, a4, -933
                  and          t5, s7, a7
                  sltiu        s8, s7, 1256
                  andi         s2, s4, -617
                  sll          t2, a6, s6
                  xori         s4, t4, -1511
                  sra          s3, a2, sp
                  srai         ra, a6, 23
                  sub          t4, a2, s10
                  sub          s0, s3, s3
                  xor          a7, a1, s8
                  ori          a4, a1, 1794
                  slt          s3, t4, t0
                  lui          s3, 263949
                  sub          s0, s2, a5
                  addi         t0, s9, 680
                  slt          t2, gp, s2
                  addi         a7, s6, -1544
                  nop
                  sll          t6, t2, tp
                  slli         s9, a2, 12
                  slli         a1, t0, 25
                  or           a7, a5, s1
                  or           s11, zero, a5
                  sll          s5, a7, ra
                  xor          a0, s4, s4
                  sll          s9, t1, t6
                  sltiu        a6, sp, -943
                  srl          a2, s1, s10
                  xor          s2, a1, zero
                  slt          t1, t4, t2
                  srli         s11, t6, 7
                  lui          gp, 213564
                  add          s0, a3, s8
                  and          s7, zero, a2
                  srli         s8, s4, 20
                  srl          zero, s3, t1
                  sltu         a0, t0, t4
                  slti         s9, s4, -1676
                  xori         t3, s3, -221
                  ori          t2, t0, 1542
                  sltu         s11, t3, s9
                  sll          gp, s2, a2
                  or           sp, s7, s0
                  ori          s2, s5, -281
                  lui          s2, 106702
                  sltiu        t0, a5, 1258
                  or           zero, s6, sp
                  sltiu        s4, gp, 1928
                  srai         s0, s3, 24
                  slt          a2, s10, ra
                  lui          a7, 943855
                  slti         a6, s6, -616
                  nop
                  xori         a0, s1, -1014
                  nop
                  slt          ra, s11, t3
                  srai         ra, t4, 17
                  or           a0, tp, a5
                  andi         ra, ra, -105
                  sra          s0, t1, t6
                  andi         s10, t6, -1545
                  srl          a0, t6, gp
                  xor          t4, s6, a2
                  slt          ra, s0, s7
                  slli         t4, t1, 13
                  srl          a5, s6, s9
                  auipc        a7, 903675
                  srl          t0, a0, s2
                  slli         t3, t2, 10
                  slti         t4, a0, 1432
                  xori         t2, a4, -178
                  auipc        s7, 711462
                  slti         s10, a4, 748
                  srai         a5, a0, 12
                  sltu         gp, s0, a7
                  sltiu        a4, s8, 1832
                  slli         a2, a3, 17
                  ori          zero, s4, 1979
                  nop
                  xor          a7, s9, a7
                  nop
                  auipc        s11, 228027
                  lui          s11, 270577
                  slli         s0, ra, 3
                  add          s4, s4, s6
                  auipc        s3, 891555
                  sll          t2, s9, t1
                  andi         t0, s4, -1590
                  auipc        t1, 966108
                  nop
                  addi         t2, a4, -1318
                  xori         a7, s3, 1403
                  srai         a5, gp, 27
                  sltiu        s8, s7, -1357
                  add          a1, zero, ra
                  slt          s9, gp, s7
                  or           s11, a6, t1
                  xori         a4, s6, 834
                  srl          gp, t0, t2
                  sra          t4, a0, s9
                  sltu         s7, s10, t3
                  slti         s1, a5, -935
                  sll          s8, a3, t6
                  sub          s8, a4, t6
                  sra          zero, a6, t1
                  srl          a6, t3, gp
                  xori         s5, s1, 1761
                  sll          t6, a6, gp
                  xori         s1, s10, 189
                  and          s9, s9, a3
                  sltiu        s10, s5, -17
                  xor          sp, a4, a5
                  srli         s11, tp, 28
                  sltiu        s3, s8, 1433
                  srai         s2, s7, 2
                  sltu         s3, a1, a7
                  addi         s5, s9, -1740
                  sltu         s8, t2, s9
                  and          t0, t1, t6
                  slt          t5, a3, a6
                  addi         a6, s2, -1830
                  and          s2, a1, s9
                  sltiu        t6, ra, 17
                  lui          a2, 56311
                  lui          s9, 532700
                  srai         a4, s3, 26
                  slti         t2, s4, -411
                  xor          zero, a3, a4
                  ori          a0, a3, 183
                  and          t1, t0, a2
                  lui          zero, 504429
                  sra          t6, t5, t0
                  sll          s9, zero, t0
                  srli         s3, a7, 20
                  slti         a5, s8, -1594
                  xor          t3, s7, s8
                  add          t5, t5, s6
                  add          sp, tp, s11
                  auipc        t3, 867212
                  add          a4, s2, s3
                  srli         a5, t2, 10
                  srli         a2, a7, 28
                  sltu         zero, tp, a7
                  slt          a6, s6, s3
                  xor          sp, s6, tp
                  xor          s8, s7, t0
                  sltu         a4, t4, s1
                  slti         t1, t1, 1258
                  xor          t0, s0, a0
                  lui          s4, 180963
                  auipc        t1, 429625
                  nop
                  andi         s11, a0, 2018
                  slli         a0, s7, 18
                  ori          t4, a7, -725
                  nop
                  nop
                  slti         a2, zero, 907
                  slti         s8, t3, 244
                  addi         t4, s6, -1966
                  srli         t6, a5, 7
                  lui          t2, 324038
                  srl          t1, a3, a4
                  lui          a7, 321782
                  xori         sp, t5, 579
                  lui          a4, 241663
                  sra          s10, t2, s2
                  andi         sp, a7, 1119
                  slt          a1, t0, sp
                  and          s5, s1, a6
                  srl          a7, t6, t4
                  sltiu        s11, s6, -1782
                  lui          s7, 566531
                  add          s8, a3, s7
                  or           s1, t0, t4
                  andi         gp, s11, 852
                  sra          s5, s10, s2
                  sra          s2, s9, t6
                  slli         a7, a6, 0
                  sra          s1, t2, s0
                  sltu         s3, a0, s6
                  slti         zero, sp, -230
                  sra          s7, s8, s4
                  add          s9, gp, t6
                  or           a6, a4, t1
                  sltu         s2, a7, a1
                  andi         a1, t3, -1145
                  ori          sp, a2, -1213
                  sub          a2, t4, a7
                  or           t5, s9, sp
                  slli         t6, t3, 15
                  ori          s3, a3, 422
                  slt          t1, t2, zero
                  xori         a2, s7, 59
                  andi         s1, sp, -1881
                  or           zero, t0, t6
                  nop
                  lui          a5, 566172
                  sub          a6, zero, a2
                  srl          s11, t6, a0
                  add          s7, t4, a2
                  xor          a0, s3, t5
                  sltiu        a1, s4, -1936
                  sltu         a6, a6, s9
                  srli         s11, s7, 8
                  srl          s0, s6, a2
                  slt          a4, t4, t1
                  sltiu        s2, a0, 865
                  srl          a0, a0, a1
                  slti         t0, zero, 1580
                  srl          s7, gp, tp
                  srai         s5, a4, 2
                  add          t2, a1, a2
                  sll          zero, s4, t2
                  lui          a5, 306815
                  slti         t5, s3, -979
                  sra          a5, a7, tp
                  auipc        gp, 524142
                  andi         a0, s8, -1966
                  xori         a0, tp, -781
                  srl          s0, a4, t0
                  slti         t5, t5, 1969
                  add          t5, t3, a1
                  andi         a4, a2, 1214
                  auipc        zero, 93431
                  andi         t4, a4, 512
                  slt          sp, a6, s11
                  ori          t2, s8, -811
                  sltu         a7, s6, s1
                  sltu         a6, t3, t3
                  ori          gp, a5, -1967
                  ori          a2, s2, 1155
                  srai         s11, t5, 11
                  or           a5, s2, sp
                  sltu         s3, s4, a6
                  slt          a7, s0, s6
                  slti         sp, t3, -126
                  slti         a6, gp, 112
                  ori          a4, ra, 1947
                  add          t6, a2, s10
                  or           a5, t6, a0
                  lui          s9, 89341
                  sll          s4, s10, s6
                  xor          t2, s10, a6
                  slli         s7, a4, 30
                  auipc        gp, 992647
                  sub          a1, s1, s8
                  srl          s8, s0, s9
                  add          a6, a2, s8
                  auipc        t6, 390975
                  sltiu        zero, s4, 1015
                  sltiu        a1, s3, -795
                  add          s1, s5, s5
                  sub          s4, a3, s5
                  sra          s5, a3, a3
                  xor          s3, s3, gp
                  xori         ra, a4, 1376
                  and          s10, a6, s3
                  srli         s3, t6, 26
                  sltiu        s10, s2, 86
                  andi         s7, a2, -1191
                  sll          s7, a7, a0
                  auipc        s2, 630168
                  srli         a2, zero, 3
                  sll          sp, s1, t4
                  sra          t2, s8, gp
                  andi         t6, gp, -1871
                  sub          t6, sp, t1
                  srli         t5, s11, 8
                  sltiu        a1, gp, 1735
                  auipc        a0, 425656
                  and          a2, s9, t2
                  srl          s3, s11, s6
                  addi         gp, ra, 1574
                  slli         t0, s0, 28
                  or           a2, t6, s5
                  srli         s11, a4, 29
                  lui          a0, 1039188
                  sra          t1, a7, sp
                  srl          a0, s9, t5
                  sra          t1, s5, ra
                  ori          a0, t4, -1143
                  srl          a4, s9, a0
                  nop
                  lui          s2, 1046792
                  sll          t1, sp, a2
                  sltiu        t1, t1, -199
                  xor          s2, s6, a7
                  slt          a4, s7, s1
                  sub          t4, s3, t2
                  xori         s2, t3, 1961
                  andi         s9, t5, 515
                  nop
                  slti         sp, s9, -1183
                  xori         t6, s4, 948
                  nop
                  srl          t1, s7, s2
                  nop
                  auipc        s7, 237376
                  sll          s7, s7, sp
                  slt          a4, a4, t3
                  srl          s1, a1, t2
                  lui          zero, 843200
                  xor          t3, zero, sp
                  slt          a1, s2, a1
                  srli         a0, sp, 18
                  srl          s9, ra, s7
                  or           s2, ra, s5
                  auipc        a4, 554134
                  slt          t1, zero, s8
                  srli         a0, t4, 16
                  lui          a0, 94907
                  auipc        s7, 337406
                  nop
                  sra          gp, s8, s2
                  sltu         gp, s6, s10
                  xori         s10, s6, 1010
                  sll          t5, s9, a0
                  srl          a2, a6, gp
                  xori         t3, a5, 312
                  addi         s1, s3, 942
                  srli         s3, a4, 3
                  sltu         t6, s7, t6
                  slli         s2, s3, 0
                  sll          s1, tp, tp
                  sll          t2, s8, t6
                  sll          a0, t6, s6
                  or           s4, t4, s9
                  srli         zero, s4, 9
                  srli         s11, a5, 16
                  addi         s5, s1, -1407
                  auipc        s2, 466841
                  sll          t1, s7, zero
                  auipc        t6, 781893
                  srai         s11, a2, 24
                  sra          t2, s10, s7
                  ori          a0, s1, 627
                  andi         t6, t4, -395
                  sltu         a6, a4, a0
                  ori          s2, zero, -1685
                  slt          s5, a5, a1
                  srli         a1, t4, 10
                  xori         s11, a0, -879
                  srli         t2, s2, 26
                  srl          t6, ra, s5
                  sra          a0, s3, a0
                  andi         t5, t1, 638
                  sra          s4, s9, t2
                  and          t6, tp, s11
                  and          s4, gp, a6
                  nop
                  slti         a4, s5, 1587
                  auipc        s10, 487153
                  slli         s11, a6, 1
                  sll          t1, t6, s1
                  sltu         a7, a2, s5
                  srli         t6, s3, 21
                  xor          ra, ra, a3
                  or           a6, t0, s0
                  addi         t5, a0, -245
                  sub          a6, a4, a7
                  nop
                  and          s10, s10, a5
                  xor          t6, t1, t5
                  addi         s5, s2, 829
                  xori         s3, a7, -1120
                  xor          t2, s1, t4
                  srli         gp, s3, 3
                  srli         t4, t6, 3
                  sll          s9, zero, ra
                  xor          s2, s6, s5
                  sltu         s5, t3, a7
                  lui          s1, 205897
                  slli         a6, s7, 25
                  srai         t0, sp, 0
                  sub          a6, s8, s6
                  sltiu        s4, tp, 53
                  slt          s0, a7, t4
                  sltu         t1, a1, sp
                  slt          a2, t5, s11
                  xori         s7, s0, 160
                  srl          a2, a1, ra
                  sll          zero, a3, t4
                  addi         a2, a7, 311
                  ori          a2, t5, -558
                  sltu         t5, ra, t1
                  lui          s0, 960423
                  sltu         s2, tp, ra
                  slti         t4, t1, -2027
                  nop
                  srai         a0, s9, 4
                  srli         t3, gp, 15
                  sll          t1, t4, s7
                  or           s8, t5, s0
                  and          a6, a6, t5
                  srli         a7, t2, 9
                  srl          s8, s4, gp
                  ori          s10, s5, 1227
                  lui          t5, 132496
                  srli         a7, t6, 10
                  slli         s2, t3, 14
                  lui          a7, 766248
                  auipc        a2, 543505
                  and          gp, t4, a7
                  xori         a1, t1, 465
                  add          a1, a7, a3
                  sll          ra, s3, a0
                  nop
                  addi         s8, s9, -574
                  lui          t3, 492649
                  slt          gp, a6, a6
                  lui          ra, 851168
                  srl          t3, tp, t4
                  xor          s1, s11, s3
                  lui          t0, 21190
                  lui          s7, 265388
                  srl          t0, a2, a5
                  add          t2, t4, s7
                  or           s4, s5, a0
                  xori         s0, s5, -1656
                  auipc        s2, 8438
                  xori         s8, gp, 770
                  srai         s9, a0, 29
                  xori         ra, a5, 1129
                  ori          a0, s11, -1508
                  auipc        t0, 355334
                  xori         a2, tp, -1428
                  sll          s0, s1, t3
                  xori         s10, s2, -2
                  slli         a6, a4, 11
                  srl          gp, a0, s1
                  auipc        a0, 456349
                  xori         a1, t0, -1701
                  slt          s3, ra, s11
                  srai         s11, a0, 22
                  srai         s1, s1, 14
                  sra          s3, s1, t4
                  sra          s5, sp, tp
                  slt          s5, tp, s4
                  ori          gp, s5, 999
                  srl          s9, s2, t4
                  sub          s8, s9, s0
                  add          s10, s6, s10
                  sltu         a5, a4, a1
                  auipc        s8, 48836
                  nop
                  add          s9, a6, s4
                  ori          s7, s7, -217
                  or           t1, ra, s2
                  srli         s10, t2, 20
                  auipc        s7, 3178
                  xori         a1, a7, 1582
                  srai         t1, t1, 10
                  add          t6, s8, s11
                  or           a4, a5, s5
                  andi         t2, s0, 615
                  srl          a1, a5, a1
                  andi         s11, t0, 318
                  sll          sp, a0, a7
                  andi         t0, s1, 1855
                  andi         a6, a2, 131
                  auipc        t0, 132042
                  xor          t3, t2, s8
                  sltiu        a5, t2, -1471
                  addi         a5, s8, -227
                  xori         t4, t4, 1215
                  srli         s9, a2, 20
                  slt          t0, t1, t5
                  slli         t2, s7, 19
                  add          s8, t5, t3
                  xor          s7, a4, s2
                  xori         zero, ra, -663
                  sll          a4, s3, s7
                  andi         a4, a0, 267
                  sll          s11, gp, s3
                  nop
                  sub          a5, s7, sp
                  sltu         t3, zero, tp
                  andi         a0, sp, -498
                  andi         t5, s10, 489
                  andi         s1, t0, 1659
                  auipc        s2, 517100
                  xor          a6, s8, s11
                  srai         sp, s4, 26
                  and          t5, s4, s4
                  sltu         a2, a6, a5
                  xor          a7, zero, a6
                  auipc        t2, 685956
                  auipc        a4, 434411
                  andi         s7, s3, 1483
                  xor          ra, s8, s5
                  add          t1, s1, sp
                  slti         t3, s7, -248
                  andi         s10, s9, -699
                  add          t1, s2, s10
                  xori         a1, s6, 1655
                  sltiu        t5, t2, 277
                  sll          s8, tp, a1
                  ori          s4, s5, 1123
                  slli         a5, s7, 15
                  or           t1, ra, t6
                  sub          a6, t4, a2
                  sltu         a4, a3, t6
                  sub          a0, s1, t2
                  or           a7, s5, a0
                  add          a1, t2, gp
                  lui          a7, 872184
                  srl          s11, a7, s0
                  srai         s0, sp, 14
                  sll          s5, s9, a3
                  xori         a7, s11, 728
                  xori         t2, s10, 145
                  srl          a6, s6, t2
                  andi         a4, s4, -1980
                  slt          a4, t2, s10
                  addi         s8, s11, 1700
                  sltu         s1, t5, s0
                  andi         a0, s9, -1888
                  sll          a0, s7, t1
                  srai         sp, s6, 23
                  srai         s0, t1, 24
                  srli         s1, a6, 12
                  ori          a6, a3, -1742
                  and          s8, a4, s8
                  srai         s3, t5, 25
                  addi         s4, a1, 427
                  add          s4, s7, t1
                  sra          s8, s10, a0
                  sltu         s11, s0, s2
                  auipc        t4, 702478
                  andi         s5, a6, 772
                  srli         ra, a3, 16
                  or           t4, t5, t4
                  xor          t0, t5, t1
                  slti         t2, s0, -1926
                  lui          s11, 9785
                  sltu         s10, t2, tp
                  or           s11, t6, s5
                  slti         t4, s3, -73
                  auipc        zero, 325227
                  xori         a2, zero, -337
                  srli         t6, sp, 25
                  nop
                  slt          s10, t3, s7
                  sub          ra, t4, s10
                  sra          a5, s11, s2
                  andi         s3, t1, -301
                  srli         t6, gp, 24
                  sra          t5, a0, a2
                  andi         gp, s9, -1092
                  sub          t5, t2, s0
                  srli         s5, zero, 27
                  add          t0, t0, s4
                  sltiu        t5, gp, -1492
                  slli         t4, s2, 4
                  and          s10, a6, s10
                  andi         s2, a6, 749
                  srl          t1, s10, ra
                  lui          s10, 631619
                  nop
                  ori          s9, t4, -1385
                  auipc        a0, 69769
                  slli         t6, a3, 13
                  li           a4, 0xb6107554 #start riscv_int_numeric_corner_stream_3
                  li           a0, 0xffffffff
                  li           t4, 0xffffffff
                  li           s4, 0x0
                  li           s3, 0x80000000
                  li           t1, 0x80000000
                  li           gp, 0xffffffff
                  li           a7, 0xffffffff
                  li           s2, 0x0
                  li           s7, 0xffffffff
                  add          a0, gp, s4
                  nop
                  sub          t1, s4, s3
                  add          t1, s4, a0
                  add          a4, a0, t1
                  addi         s7, s3, 1712
                  nop
                  auipc        t1, 286228
                  sub          s3, s2, t1
                  lui          a4, 227509
                  lui          t1, 601406
                  sub          s2, s2, t1
                  sub          s7, s3, a4
                  add          t4, a7, a4
                  add          t4, gp, a7 #end riscv_int_numeric_corner_stream_3
                  ori          t1, zero, -419
                  sll          a7, t3, s0
                  sltiu        s3, sp, 646
                  lui          a5, 309308
                  srai         a0, a2, 21
                  nop
                  srli         a0, s7, 29
                  andi         a4, t1, -1943
                  auipc        a6, 642247
                  addi         s11, t3, -973
                  lui          a4, 102135
                  auipc        s0, 1029315
                  sra          t4, sp, a1
                  xor          ra, t6, zero
                  nop
                  add          s0, s10, gp
                  sub          a1, ra, zero
                  auipc        t3, 954114
                  slli         a4, a0, 31
                  andi         a0, s8, -1550
                  and          a5, t1, s8
                  srai         t6, s1, 12
                  sltu         s0, tp, a2
                  ori          t6, a0, 640
                  srai         t2, a2, 17
                  and          a2, s10, t0
                  srai         t4, s2, 28
                  sra          s5, a3, a6
                  ori          s0, zero, -1604
                  xori         t4, a1, -1801
                  ori          a6, s5, 472
                  srl          gp, t5, s4
                  add          s2, a7, s6
                  xori         a7, a1, 1141
                  ori          t5, t3, -1571
                  sra          gp, a5, s7
                  lui          t5, 454792
                  nop
                  xori         t4, gp, 865
                  lui          ra, 600517
                  addi         sp, a3, -700
                  slti         a7, s2, 1181
                  auipc        s7, 914599
                  sltiu        s11, s5, 992
                  nop
                  addi         gp, s11, -212
                  srl          a4, s7, a3
                  nop
                  sll          t5, s5, t6
                  andi         t3, a6, 1204
                  lui          s3, 941274
                  slli         t5, t2, 27
                  xor          t3, s2, gp
                  slli         sp, a0, 19
                  slt          t1, s5, a2
                  slti         t6, s1, 1125
                  nop
                  lui          t1, 772924
                  slli         zero, a3, 17
                  srai         s9, t0, 17
                  srli         sp, a2, 11
                  lui          s5, 77130
                  add          t6, t4, t4
                  srl          s2, sp, a4
                  addi         a2, t3, 1631
                  sltu         s7, t6, s7
                  addi         s1, s2, 1381
                  xor          s5, zero, s3
                  sll          s0, t1, a4
                  or           t6, s4, s9
                  or           a7, gp, t0
                  slt          sp, a7, s3
                  sltu         t2, s9, t3
                  add          t0, a4, s9
                  auipc        a6, 504755
                  sub          s8, s2, zero
                  xori         s3, gp, -1043
                  add          t4, s7, s3
                  slt          t1, t5, sp
                  slli         t2, s0, 0
                  ori          ra, s10, 71
                  lui          s1, 774501
                  slli         t4, a7, 12
                  sltu         t0, s3, s5
                  sll          t4, gp, s10
                  addi         t2, a0, -1505
                  srl          s0, t6, t3
                  andi         s2, a7, 1828
                  srl          s5, t1, t3
                  sltiu        a4, a2, -1280
                  srai         gp, a7, 21
                  sll          zero, gp, ra
                  ori          gp, ra, -1762
                  andi         s9, s2, 421
                  sub          s2, a4, a2
                  slli         s11, a0, 20
                  add          t1, a1, s0
                  sltiu        t1, a0, 674
                  slli         s7, s1, 19
                  srai         s4, a1, 1
                  xori         a6, a1, -306
                  xor          s4, t3, s4
                  slt          sp, t1, ra
                  xori         sp, a1, 443
                  srai         t2, tp, 26
                  sub          a5, zero, s2
                  slti         t4, a1, 1535
                  or           sp, a5, t2
                  sra          s8, s1, s9
                  slt          gp, t6, s5
                  auipc        t1, 12037
                  xor          t6, s0, s0
                  slti         a0, t0, 207
                  add          t2, s10, t3
                  sll          s3, s7, a0
                  xor          s10, t2, a5
                  slli         a0, s6, 22
                  lui          s1, 219621
                  sub          t0, t3, sp
                  sll          sp, a2, a3
                  xor          t4, ra, t1
                  nop
                  and          t2, t1, s4
                  xor          s8, s5, a6
                  and          s4, a7, s6
                  srai         a1, s1, 28
                  auipc        s2, 536593
                  or           gp, s9, sp
                  and          gp, a2, a7
                  ori          s2, s11, 1270
                  srai         a6, t4, 13
                  sltu         s0, sp, s11
                  sra          t6, a4, a7
                  or           sp, s9, s4
                  addi         t6, a4, -2
                  sub          a6, t0, t1
                  srai         s5, t3, 29
                  lui          t0, 940061
                  lui          s2, 375556
                  srai         zero, s8, 7
                  slli         t6, a1, 28
                  sll          s4, a5, a7
                  xori         s2, zero, 50
                  and          a0, zero, s9
                  srl          t5, s2, a5
                  lui          a7, 433027
                  and          zero, a2, a0
                  slli         t1, t0, 24
                  xori         t6, t1, -844
                  sll          t3, t6, s7
                  andi         gp, s10, -792
                  xor          t3, gp, a5
                  srli         a0, t1, 23
                  auipc        t0, 1030428
                  sltu         s0, t6, s9
                  xor          a7, a4, s6
                  and          s2, s0, a3
                  addi         s8, t4, -873
                  auipc        a1, 977251
                  ori          t0, t3, 771
                  slti         t6, s9, 1592
                  ori          t0, s10, 1899
                  srai         sp, s4, 14
                  sub          s4, s9, s2
                  auipc        a4, 664938
                  slli         a5, s9, 28
                  sltu         a1, t2, ra
                  or           s2, t2, s8
                  addi         s3, s2, 189
                  sub          t2, a1, s11
                  slt          t6, s3, s10
                  sltiu        sp, s7, -1596
                  sub          a5, t1, a6
                  slli         a1, a5, 1
                  srai         a7, s4, 4
                  ori          s3, s8, 920
                  srai         s7, s2, 23
                  xori         t3, s5, 1838
                  slt          gp, a0, s2
                  sltiu        s8, a3, 1583
                  ori          t1, s2, 728
                  slti         a1, t0, 699
                  srl          a5, a2, s9
                  srai         t3, s3, 13
                  srai         s10, s8, 5
                  xor          s2, s11, zero
                  ori          s7, a7, 1842
                  sltiu        t5, a1, -2005
                  srli         t6, zero, 17
                  slti         s4, a5, -1608
                  or           a1, t1, s6
                  lui          t4, 545620
                  sll          gp, t6, t3
                  xor          t3, a5, s4
                  and          ra, s10, t2
                  srli         sp, s6, 2
                  sltu         gp, s11, s7
                  xor          t2, a0, ra
                  nop
                  add          a5, t2, a7
                  sltiu        a1, s11, -2005
                  xor          gp, s1, s4
                  srai         zero, t0, 21
                  slti         s0, s3, -470
                  sll          a4, a5, s1
                  slt          sp, a2, t0
                  ori          s0, s10, 1195
                  addi         s0, s5, -121
                  ori          a6, s0, 468
                  xor          sp, s4, t6
                  or           s8, a5, sp
                  slli         s7, sp, 25
                  sltu         ra, zero, zero
                  xor          s11, a1, s2
                  srl          t0, s7, s8
                  xor          t6, s5, ra
                  sub          s10, ra, gp
                  add          t4, t2, s8
                  slt          s10, a3, s10
                  nop
                  auipc        t4, 135944
                  nop
                  xor          gp, s6, a4
                  srli         a2, t4, 23
                  xori         a4, t2, 410
                  srli         t3, t4, 17
                  xori         t4, a4, -773
                  slli         s7, s9, 4
                  sub          s3, s11, t0
                  andi         sp, a1, -901
                  xori         s3, t3, 1741
                  sub          a4, s4, a5
                  sll          a0, a1, t2
                  sub          a5, s8, t6
                  andi         zero, a6, -1935
                  sltu         a6, a2, t1
                  srli         a1, s8, 12
                  srli         t1, t0, 27
                  lui          s10, 73241
                  xori         a7, s3, -483
                  slt          s1, gp, a6
                  add          s9, s3, gp
                  sltiu        t4, gp, 1655
                  srai         s1, a4, 12
                  xori         s10, s7, -1469
                  slt          t1, s3, t6
                  slli         s8, t0, 14
                  lui          ra, 556306
                  sll          a0, s9, s7
                  srl          s3, s1, a4
                  sltu         a0, t4, t3
                  nop
                  add          s7, s2, t5
                  ori          s1, t3, -847
                  slti         t5, s3, 1776
                  srai         s1, a3, 7
                  slti         sp, t4, 291
                  sll          s7, a2, gp
                  andi         s1, a4, -793
                  ori          a4, t3, -1563
                  or           s5, t5, zero
                  lui          s11, 744688
                  lui          t4, 136824
                  add          s7, t1, sp
                  slti         s11, a0, 1524
                  srli         a0, gp, 5
                  ori          s11, a6, 1249
                  auipc        a2, 1013786
                  sub          s11, t5, s6
                  or           t1, tp, s6
                  xori         s8, a7, -1449
                  or           s0, t0, zero
                  slli         gp, a1, 0
                  addi         t4, zero, -1600
                  slt          a4, t0, a4
                  addi         a1, a3, 1060
                  srai         zero, s1, 3
                  sll          a1, s0, a7
                  slti         a2, t5, -1010
                  sltiu        s0, a4, 1611
                  andi         s10, a6, -677
                  slti         s1, s5, -1675
                  srli         zero, a6, 12
                  add          a6, t0, t1
                  ori          s3, s4, -825
                  sll          s8, t5, s5
                  xor          t5, t2, t2
                  sub          s3, a6, a0
                  srli         s1, s11, 28
                  srai         s7, s8, 2
                  sub          s4, s8, a5
                  or           t5, a6, s2
                  srli         s8, s3, 30
                  xori         t2, s2, -1237
                  sra          t6, sp, s6
                  sll          s5, s8, s4
                  sltiu        a2, tp, 152
                  xori         s9, tp, -1907
                  sll          s10, s3, s7
                  sltiu        s1, zero, 1764
                  sll          s4, s4, zero
                  srl          a4, gp, s0
                  or           a1, a1, ra
                  srl          t5, a7, sp
                  srl          t5, s4, s6
                  sll          ra, a0, ra
                  sltu         s4, a1, s9
                  srli         sp, t2, 26
                  addi         t2, a5, -373
                  slti         a1, a6, -1902
                  sra          gp, s11, a2
                  add          s8, a4, tp
                  ori          t0, s1, -975
                  xor          a0, gp, t3
                  and          s9, a4, s11
                  sra          s3, t5, s10
                  ori          s8, a0, 598
                  srai         s5, s4, 27
                  sra          t5, ra, a4
                  sll          s5, a3, a4
                  or           ra, s8, gp
                  srai         ra, s1, 0
                  ori          a1, a7, 1987
                  srai         s3, s6, 20
                  sll          s11, s5, s6
                  auipc        s4, 901966
                  add          t0, a2, s0
                  xor          s11, a2, t6
                  sra          t4, t2, a7
                  auipc        s0, 837006
                  xori         a0, tp, -1699
                  xori         s11, s7, 1168
                  sra          ra, s11, t5
                  nop
                  srl          s0, zero, a0
                  srai         s2, s1, 8
                  sltiu        s10, s2, -952
                  addi         t0, tp, -781
                  lui          s1, 911877
                  auipc        s2, 469323
                  sra          t0, t6, sp
                  nop
                  and          s0, s8, a0
                  sltu         s1, s4, gp
                  andi         t5, s10, 315
                  srai         s5, s5, 11
                  slli         a2, a5, 13
                  ori          a6, a3, 1490
                  sltu         t2, tp, t3
                  add          s4, s8, s0
                  and          a2, gp, sp
                  sltiu        a2, a0, 802
                  lui          s1, 416268
                  srli         a0, ra, 9
                  slli         a2, a2, 13
                  slt          a2, s0, s10
                  sltiu        t5, s6, -914
                  add          s1, t2, s4
                  slt          a0, s0, sp
                  addi         a6, t4, 177
                  addi         t4, t0, -554
                  xori         sp, t1, 170
                  sltiu        a7, t6, -1281
                  xor          s9, a1, s10
                  addi         t5, s0, -1851
                  xor          s8, t5, sp
                  sll          a4, s4, s6
                  nop
                  sub          t1, s3, s1
                  slti         t5, t0, -430
                  sub          a2, a1, s9
                  and          t0, a5, a1
                  srl          a6, s6, s10
                  auipc        s5, 697594
                  slli         sp, s5, 8
                  slt          t5, t0, s6
                  andi         t2, ra, 87
                  sll          t3, a7, s4
                  and          t2, t3, s10
                  sltu         s1, s7, tp
                  auipc        t3, 644844
                  xor          s4, t6, s0
                  auipc        s0, 84991
                  sltu         a5, s11, t0
                  sub          t0, a1, s6
                  slt          t6, tp, s11
                  sub          a6, s3, s1
                  srai         ra, zero, 27
                  sub          zero, a4, t0
                  sra          t3, a6, a2
                  auipc        s4, 144769
                  srl          s7, s5, zero
                  sra          s2, tp, a2
                  sltu         s11, s10, s8
                  lui          s4, 952555
                  andi         t2, s10, -1006
                  auipc        t3, 1018022
                  nop
                  srli         s0, t4, 30
                  auipc        a4, 107681
                  xor          s11, a6, a3
                  addi         a1, a5, -420
                  and          s8, s11, s0
                  srai         sp, a6, 0
                  lui          t1, 12834
                  andi         zero, s7, -1464
                  nop
                  sub          t0, s9, s3
                  addi         sp, s10, -614
                  sll          s3, sp, s11
                  lui          s5, 473509
                  addi         t1, s5, -1941
                  srli         s0, ra, 28
                  xori         s7, s3, -1252
                  slt          t2, a7, s5
                  sltu         a2, s3, s7
                  addi         a5, t3, -559
                  srai         a5, t6, 22
                  sltu         a7, tp, gp
                  or           s5, s11, s8
                  auipc        ra, 492606
                  and          sp, a7, a2
                  ori          s3, s5, -435
                  slti         a4, t0, -1995
                  lui          sp, 933240
                  srli         a0, gp, 29
                  sll          s5, s3, t3
                  xori         gp, t3, 1516
                  auipc        t1, 295429
                  slti         a7, s3, -1226
                  sltiu        a1, t2, -253
                  auipc        sp, 526460
                  srai         s7, sp, 18
                  srai         t3, a3, 14
                  auipc        zero, 1025880
                  xori         s9, zero, 365
                  sra          sp, ra, t5
                  and          s10, ra, s0
                  sra          s4, s6, s1
                  sltiu        a6, s6, -1069
                  ori          t4, t1, -559
                  slli         t1, a0, 25
                  auipc        zero, 316875
                  srl          ra, a1, s8
                  lui          a7, 860959
                  srl          sp, a6, t4
                  xori         gp, s9, -1018
                  srai         s8, s6, 18
                  srai         t1, a5, 12
                  sll          a2, s0, s1
                  slt          s11, s6, t6
                  and          a1, t5, s10
                  sub          s3, t3, s10
                  andi         t4, s10, 528
                  add          ra, t3, s11
                  lui          s3, 78013
                  or           a2, s3, s8
                  sra          a0, t1, s5
                  andi         t0, t1, 258
                  sra          s7, t0, s8
                  slli         s2, s2, 27
                  and          s2, t6, s8
                  xori         a0, t3, 149
                  slt          t2, a6, t1
                  srli         s5, s1, 3
                  xori         ra, s4, 911
                  andi         s2, s7, -710
                  addi         a7, t4, -184
                  lui          s9, 85588
                  ori          gp, a4, -1693
                  srl          t1, t5, s9
                  sub          t6, ra, s2
                  andi         gp, s10, 466
                  lui          gp, 750143
                  sltiu        s3, s4, 29
                  slli         s5, s2, 28
                  srl          a1, zero, t3
                  andi         sp, t3, 1295
                  sltiu        t3, s9, -220
                  sra          s11, a6, s8
                  sltu         s3, zero, a0
                  srli         ra, sp, 18
                  and          a0, s10, a0
                  xori         s8, s2, 1188
                  andi         s4, zero, -1099
                  xori         s2, s10, 1468
                  add          s1, a2, s1
                  sub          s1, a7, a6
                  srai         s3, a3, 23
                  andi         t0, a3, 962
                  lui          a5, 850183
                  sra          a1, a0, s8
                  xori         t5, a6, 1909
                  srli         s9, s1, 15
                  sltiu        gp, s11, 2023
                  ori          s0, a1, 285
                  nop
                  sub          s1, a2, t6
                  auipc        a0, 751199
                  slti         a2, s9, 788
                  srl          zero, t6, s11
                  srl          a2, sp, a6
                  andi         s9, s5, 997
                  srl          a6, s2, a1
                  add          s7, s1, s9
                  srai         t5, ra, 19
                  andi         t6, gp, 1433
                  sub          s4, s11, a3
                  auipc        ra, 897952
                  srl          a4, a3, s7
                  xor          a7, s7, s4
                  sltu         gp, sp, s8
                  addi         a6, s3, 767
                  add          s5, a6, s7
                  addi         t2, s3, -62
                  srai         t2, t2, 6
                  sltiu        a4, s2, 296
                  andi         a2, s11, 353
                  slli         s10, a0, 10
                  or           s2, a1, t6
                  slt          s2, a6, s1
                  sll          a5, s2, s8
                  slti         a5, a7, 1843
                  slti         ra, ra, 1330
                  xori         t5, t6, 1538
                  slt          s3, t4, s8
                  srli         s5, s8, 23
                  add          s9, a6, a5
                  sub          s4, sp, s6
                  sra          s5, t0, a1
                  auipc        t5, 359643
                  slti         a6, t1, -179
                  slti         t4, ra, -1353
                  sltu         sp, t6, ra
                  ori          a0, s1, -184
                  add          s0, a2, s0
                  xori         t3, a4, -661
                  slt          s3, s1, s0
                  sltu         s3, s6, s8
                  srai         a4, a0, 17
                  nop
                  auipc        s9, 132685
                  lui          s8, 634989
                  sltu         s0, tp, gp
                  nop
                  srli         s5, t2, 13
                  slti         a1, ra, -860
                  sltu         sp, a0, sp
                  sltu         t1, s7, t4
                  slli         sp, s2, 13
                  nop
                  srl          a4, a6, zero
                  lui          a4, 772386
                  slti         t1, s7, 1664
                  and          a1, s1, a7
                  andi         a6, a1, -617
                  slt          s1, ra, s11
                  andi         t6, tp, 591
                  sll          s9, s9, s6
                  srli         s7, t1, 26
                  auipc        t5, 339552
                  lui          s11, 592045
                  and          t1, t5, s0
                  or           zero, gp, s10
                  lui          s2, 741272
                  and          sp, s9, a1
                  xor          s1, t1, s6
                  add          t5, s9, s7
                  srai         a1, s9, 15
                  add          s7, s7, t3
                  ori          a4, s5, 819
                  and          t6, t6, s8
                  add          s2, s9, s1
                  srli         s4, s0, 11
                  andi         s1, a7, -1012
                  or           a2, s1, s1
                  nop
                  addi         a1, t4, 217
                  slti         ra, s8, 965
                  or           a6, s5, zero
                  slt          s1, a1, ra
                  lui          a5, 427288
                  or           s11, a2, t3
                  sltu         t1, ra, s8
                  slti         ra, s3, 36
                  nop
                  sub          s3, a7, gp
                  auipc        zero, 972494
                  sra          s3, t4, t3
                  srai         t6, a7, 28
                  ori          s1, s1, 719
                  auipc        a1, 937455
                  sltu         s1, a2, s9
                  or           sp, tp, s4
                  xori         t6, s11, 1012
                  addi         s4, t1, -1960
                  sub          a7, a2, t2
                  xor          a4, s5, gp
                  xor          s10, s0, a0
                  slli         t3, a0, 16
                  slti         a1, t1, -1866
                  andi         a7, s3, 927
                  xor          t2, s7, s1
                  srli         s0, sp, 28
                  and          t4, s8, t5
                  srli         a7, a5, 13
                  xor          s7, a1, s6
                  auipc        a6, 335988
                  slt          sp, a0, a1
                  srl          a2, tp, s4
                  slli         a5, s7, 28
                  sltu         s4, s1, s1
                  srai         s2, s7, 6
                  sltu         a0, a4, a0
                  lui          t5, 741754
                  ori          t0, t4, 316
                  auipc        s2, 432967
                  and          t0, s10, a6
                  andi         s3, a4, 1005
                  slti         t6, a0, 1471
                  sll          s0, sp, s6
                  addi         a6, a7, -1659
                  sltu         t0, s6, a0
                  or           s8, s7, s2
                  xor          s0, s8, a1
                  xori         ra, a4, 723
                  srli         a4, t0, 3
                  srai         a0, t0, 29
                  or           zero, tp, a1
                  addi         a2, t5, 1453
                  sll          s2, s8, t5
                  sltu         a4, a3, s8
                  srl          t2, t0, s9
                  addi         s7, t3, 375
                  lui          s2, 585454
                  nop
                  nop
                  andi         a0, t1, -883
                  or           ra, s7, s7
                  sra          t4, s11, s2
                  xori         s4, sp, 1352
                  sub          a2, sp, gp
                  sltiu        s0, s11, -25
                  and          t0, sp, s10
                  sll          s7, t0, s1
                  addi         a2, a0, -586
                  sll          zero, t2, t3
                  sltu         sp, s5, a4
                  slli         s5, gp, 26
                  or           zero, t3, s6
                  xori         t2, gp, -456
                  add          s9, ra, s10
                  sub          t0, t1, s6
                  srl          gp, s8, t1
                  nop
                  srai         s11, t4, 9
                  or           a4, s5, zero
                  sll          t0, a2, tp
                  srai         s7, s6, 12
                  slt          s2, a6, s1
                  and          s1, t2, t4
                  ori          zero, s5, -249
                  lui          a6, 444788
                  and          s4, s1, s6
                  sltu         sp, tp, s0
                  srl          s7, t3, a3
                  nop
                  sll          s11, a6, a5
                  slt          t6, t6, a6
                  sub          a4, t6, s1
                  srai         a2, a6, 12
                  or           t5, zero, t0
                  sltiu        t1, s11, 1337
                  sra          s2, t0, s0
                  sltu         zero, a2, s9
                  xor          gp, tp, s10
                  slti         ra, a5, -618
                  addi         t0, sp, 971
                  sra          s4, a0, t0
                  xori         s2, s6, -1397
                  slt          a2, s8, s11
                  sub          s10, ra, sp
                  sll          t3, t4, a2
                  lui          a4, 482448
                  or           a1, s7, s6
                  lui          s9, 31826
                  xor          a5, s3, s5
                  xori         t6, t6, -194
                  sra          s9, s2, s5
                  slt          s3, a6, a4
                  srai         zero, s7, 29
                  srl          t4, s10, s10
                  lui          t4, 481265
                  or           zero, a1, t1
                  sltiu        sp, t2, 2010
                  nop
                  srl          a7, s1, s4
                  nop
                  xori         a5, s9, 1763
                  sll          a4, t4, s4
                  lui          a7, 837127
                  add          s11, sp, s1
                  slt          s1, s6, a6
                  ori          t5, t5, 615
                  lui          sp, 299240
                  and          ra, a4, a7
                  nop
                  and          s0, a0, s10
                  xori         t4, zero, 945
                  lui          t2, 262360
                  sltu         t5, s11, a7
                  srai         a7, a6, 16
                  sra          s1, t6, t3
                  slt          ra, t3, s8
                  or           s7, a1, s6
                  add          s10, a0, a1
                  xori         s4, s11, -657
                  and          a4, s2, tp
                  and          sp, s6, s8
                  xor          a7, sp, t5
                  sltu         a1, tp, s3
                  slti         zero, t5, -355
                  ori          t6, a3, -686
                  srl          s11, t0, a1
                  sltiu        s11, s10, -229
                  sll          s2, a1, s6
                  nop
                  xori         s4, s3, -1433
                  sub          t3, s4, t6
                  xor          s0, zero, ra
                  auipc        t0, 589606
                  add          a6, t5, sp
                  xor          t6, t3, zero
                  ori          a4, zero, -1164
                  sltu         t5, s6, ra
                  srl          a4, a3, a2
                  srli         zero, a2, 30
                  and          a1, t4, gp
                  ori          s9, s4, -723
                  slti         zero, zero, -1371
                  addi         s0, s4, 496
                  xori         t0, a6, -1889
                  sra          s8, t1, t0
                  xori         s0, zero, -716
                  sub          s8, s9, s0
                  srai         s11, s6, 4
                  slt          s2, s8, t6
                  xori         s8, a4, -1977
                  sltu         t1, s4, t0
                  addi         s2, gp, -1371
                  srli         s1, a1, 1
                  srai         ra, t2, 27
                  srli         t2, t0, 17
                  auipc        s5, 648722
                  add          s9, a0, t6
                  slli         t5, t5, 30
                  xor          sp, gp, s6
                  sltiu        s0, t0, 1240
                  ori          s1, a2, 1674
                  andi         a1, s6, 964
                  lui          t0, 462306
                  slti         s4, a7, -672
                  slt          s9, a5, s7
                  nop
                  sub          sp, a5, zero
                  sltiu        t2, t6, 1443
                  auipc        a1, 705148
                  srli         ra, s11, 0
                  srai         gp, sp, 30
                  and          s9, a3, t4
                  xor          t6, s1, sp
                  nop
                  srai         t2, t0, 24
                  srai         a7, s11, 12
                  sltu         a7, a0, a4
                  andi         s8, a0, -1613
                  slli         a5, s5, 24
                  srl          s1, t0, t0
                  sll          a0, s1, t3
                  lui          s3, 618302
                  xor          gp, a1, a1
                  xori         s3, a5, -523
                  sltu         a0, a7, tp
                  and          s7, ra, zero
                  srl          s10, t6, zero
                  lui          s8, 721572
                  sll          a7, gp, t1
                  sra          gp, a6, sp
                  sll          t1, s11, t3
                  sltu         s9, sp, s1
                  or           t1, a6, a5
                  xor          s11, s10, zero
                  sltu         s8, a2, s11
                  sub          s2, s8, t1
                  nop
                  xor          gp, s11, a1
                  srli         a1, s1, 29
                  xori         s0, s3, -1536
                  addi         gp, s11, 1383
                  slti         s0, s11, 595
                  or           gp, a5, s2
                  slt          s9, zero, s9
                  slli         s8, a7, 16
                  or           s4, s5, sp
                  sra          s2, s9, t3
                  sub          t4, a2, a3
                  sltiu        a7, t6, 797
                  srli         a0, s3, 22
                  slti         gp, a0, -528
                  srli         t1, sp, 26
                  andi         a0, zero, 294
                  xor          t1, zero, a3
                  sll          s10, s10, t6
                  srl          s3, a6, gp
                  addi         t2, s2, 1534
                  andi         s7, a0, -1805
                  andi         a1, zero, 1717
                  add          s0, a6, s5
                  slti         a6, ra, 849
                  or           gp, s0, s3
                  andi         a7, a7, -492
                  sltiu        t6, s9, 1486
                  slti         s8, s11, 1448
                  nop
                  auipc        a1, 516935
                  andi         ra, a7, 807
                  sltiu        a0, a5, -1870
                  xori         a7, zero, -1111
                  srli         t5, t4, 13
                  srli         s5, s5, 4
                  srai         t2, s6, 29
                  andi         s7, a1, -1825
                  sub          s0, ra, a4
                  slti         t5, s6, -1417
                  sltu         gp, a4, s4
                  add          t0, ra, a5
                  nop
                  auipc        ra, 787559
                  sll          t5, tp, s11
                  auipc        t1, 258649
                  srl          a4, s0, a5
                  slli         s2, s11, 12
                  ori          t5, s1, 531
                  xori         a7, t0, -1422
                  auipc        a6, 505717
                  slli         t6, s6, 6
                  xor          s9, t2, s7
                  sltu         s5, a6, gp
                  xori         s2, t2, 1506
                  sra          sp, tp, t0
                  srli         s1, s0, 25
                  srl          s11, zero, s7
                  nop
                  slli         ra, t3, 13
                  add          a6, gp, t5
                  nop
                  andi         s11, s8, -974
                  addi         a0, a1, 628
                  nop
                  sra          gp, zero, s2
                  or           t0, t5, gp
                  srli         a4, a3, 8
                  sll          t1, a1, a0
                  sltu         t2, sp, t6
                  auipc        gp, 902880
                  add          t6, t4, a0
                  sra          s10, ra, t4
                  sltu         gp, a4, t0
                  slti         s4, s0, -462
                  sll          t5, s3, a1
                  auipc        t6, 475037
                  xor          t5, s5, t4
                  xori         s3, a2, 1087
                  addi         s4, s8, 339
                  add          gp, t2, s11
                  srli         ra, s2, 12
                  srli         s5, a5, 29
                  srai         t2, s1, 5
                  srli         a0, ra, 11
                  ori          a5, sp, 1216
                  xor          a1, sp, t2
                  srai         s10, s0, 15
                  slti         ra, t0, -1925
                  auipc        a0, 813246
                  sra          a1, t1, s7
                  or           s10, sp, t5
                  xori         gp, a1, -501
                  auipc        a7, 255293
                  auipc        t6, 221799
                  andi         t0, tp, 1994
                  sll          s11, a3, s8
                  nop
                  xori         t0, a3, -314
                  sltu         t0, s11, s7
                  add          s11, s1, t2
                  and          a1, s6, a1
                  sltiu        s0, t6, 459
                  lui          a7, 30315
                  or           a0, sp, ra
                  sub          t5, sp, a6
                  add          t4, t1, s7
                  srai         s10, a7, 15
                  slli         t4, a4, 28
                  ori          s8, s7, 1519
                  sltiu        a6, s9, -1229
                  xor          sp, a3, s4
                  auipc        a5, 793320
                  or           s7, t0, a2
                  sra          a7, a5, s9
                  slti         s9, ra, 1365
                  ori          s7, t3, 248
                  andi         ra, a1, 578
                  xor          s1, s0, a1
                  andi         a4, t6, 397
                  slti         a2, s10, 1647
                  and          t3, t2, a3
                  srli         s8, s5, 8
                  sra          gp, t0, a4
                  slti         t6, t2, 1161
                  addi         zero, zero, -814
                  sltiu        t4, tp, -180
                  xori         s10, s8, 1132
                  sub          gp, s3, s11
                  xori         s7, a3, 1933
                  slti         s10, gp, 2032
                  nop
                  slti         a4, tp, -1276
                  sub          a4, t5, t1
                  sra          s9, t6, t6
                  sra          t2, s6, t6
                  or           a6, s7, a2
                  add          s8, s11, t1
                  addi         a2, ra, 853
                  nop
                  xor          a0, s0, s5
                  srli         s3, t6, 26
                  xori         a4, t0, -1725
                  add          a1, ra, s7
                  lui          s2, 54253
                  sltiu        t2, a6, 1259
                  ori          a5, s11, 949
                  nop
                  slt          gp, s2, s2
                  and          s2, t3, t4
                  slt          t0, s0, s9
                  or           s5, s11, t1
                  srli         gp, t5, 24
                  ori          s11, a7, -1326
                  xor          s4, zero, s2
                  xor          s10, a1, a1
                  slti         s5, s1, -1825
                  srl          zero, a5, s5
                  slti         s3, a1, 1056
                  lui          sp, 24161
                  xor          s2, s7, a1
                  srl          s5, a3, s2
                  and          s3, a7, s9
                  and          s11, gp, s6
                  sll          s10, s0, s1
                  auipc        t6, 246519
                  srli         a6, ra, 29
                  xori         s9, s0, 35
                  sra          a4, s2, s5
                  xor          a0, s2, s7
                  slti         s0, s4, 1027
                  ori          s0, zero, 63
                  sltu         s3, zero, s2
                  xor          s0, s6, ra
                  lui          a5, 111132
                  addi         s1, sp, -1472
                  sltu         gp, s4, a0
                  sub          s1, s11, s8
                  slt          t0, tp, s1
                  sub          t0, gp, a1
                  sra          s11, t2, t2
                  lui          ra, 15307
                  sra          sp, s1, zero
                  or           s11, zero, a4
                  xor          a2, s3, t2
                  nop
                  slli         a7, a7, 17
                  slt          ra, s3, s1
                  slli         a2, t3, 15
                  sltu         t6, s10, a6
                  xori         t5, tp, 224
                  andi         a2, t6, 847
                  slli         zero, t5, 31
                  and          ra, s3, t4
                  or           t4, tp, t1
                  srli         s10, t5, 10
                  sub          s1, a7, zero
                  slt          s7, s9, a3
                  sll          a1, zero, a3
                  xori         gp, s4, 971
                  srl          s9, a0, a3
                  xori         s10, t6, -1417
                  or           t5, a6, s1
                  xor          s11, s5, s10
                  lui          s8, 262042
                  add          a5, t6, s3
                  add          s11, tp, s10
                  sltu         s2, s6, a6
                  sll          s5, t0, ra
                  and          s7, s5, t4
                  srai         a2, s3, 14
                  sltiu        s1, t5, 1653
                  lui          t3, 543353
                  and          s9, s9, s9
                  xor          s10, s3, a0
                  lui          a2, 235102
                  ori          a0, a7, -1156
                  and          t1, s4, a4
                  ori          s3, a4, -1966
                  or           a6, s7, tp
                  sub          s0, s5, s5
                  ori          s0, s3, -315
                  sltu         t6, s10, a4
                  lui          s11, 829073
                  xor          t6, a3, t4
                  slt          a4, s10, s6
                  addi         a1, t4, -389
                  xor          s9, s7, t6
                  srai         a1, t2, 25
                  nop
                  sltiu        ra, a2, -530
                  slli         t1, t6, 11
                  lui          t1, 178805
                  sltu         s5, t4, a4
                  sll          s9, a0, a7
                  li           a5, 0xca68a985 #start riscv_int_numeric_corner_stream_12
                  li           s0, 0xffffffff
                  li           t0, 0xa549a03b
                  li           s7, 0x80000000
                  li           ra, 0xcde213b4
                  li           a6, 0x0
                  li           s2, 0x0
                  li           s11, 0xffffffff
                  li           a0, 0xffffffff
                  li           a2, 0xba761420
                  add          s2, s7, s0
                  nop
                  lui          a5, 172426
                  sub          s7, a5, s2
                  auipc        s11, 545410
                  addi         ra, a0, -145
                  lui          s11, 78381
                  auipc        s11, 700781
                  add          s7, s0, s2
                  nop
                  lui          a5, 795116
                  auipc        s0, 470354
                  addi         s0, a2, 1976
                  add          a5, s0, s0
                  add          a5, a0, s0
                  sub          a5, a0, a5
                  add          s11, a2, a6
                  addi         ra, ra, 979
                  nop
                  addi         s2, s11, 1911
                  sub          s2, a2, a2
                  lui          a6, 473191
                  lui          a2, 266763
                  add          s11, ra, a6
                  nop
                  add          t0, a2, a2
                  nop #end riscv_int_numeric_corner_stream_12
                  or           t2, t5, s8
                  xor          s11, t4, a1
                  auipc        t3, 570845
                  addi         t0, a6, 881
                  auipc        zero, 789245
                  addi         s0, s5, -1348
                  slt          s4, t3, a5
                  slli         a5, a3, 20
                  sra          s0, gp, t4
                  srl          gp, s1, a1
                  add          t1, s8, gp
                  sltu         s1, s2, ra
                  sub          a2, s4, a3
                  ori          s10, a5, -182
                  sra          t2, s10, a7
                  ori          zero, t1, -437
                  add          a0, t6, s4
                  xor          s5, t2, s0
                  sra          s9, s11, a7
                  or           s9, a6, zero
                  and          a1, t6, t6
                  slti         a2, s4, 814
                  sltiu        a0, t4, 787
                  lui          t2, 269883
                  sltu         a6, ra, t1
                  sub          a1, t3, s10
                  sra          s9, t3, a7
                  sltiu        s11, ra, 836
                  or           a4, s11, s8
                  add          t3, a6, gp
                  and          a7, s10, ra
                  slt          zero, s0, s5
                  sub          t2, s8, s3
                  sltiu        ra, s9, -829
                  slt          t3, a5, t6
                  sltiu        t3, s7, -1946
                  xor          a4, s1, t3
                  andi         a7, s4, -687
                  sub          s3, a2, s2
                  xori         t2, zero, -633
                  nop
                  xori         t3, a3, -516
                  add          gp, s0, t5
                  slli         t0, s1, 15
                  sltu         s1, s4, a1
                  slt          s10, t5, s11
                  sltiu        s7, a7, 1552
                  xor          a7, sp, t1
                  srl          s7, s1, sp
                  srli         s5, sp, 28
                  srl          t4, s2, t6
                  ori          t4, s7, 474
                  srl          s10, zero, zero
                  slt          s2, a0, a6
                  srli         s2, t0, 3
                  sra          a7, s7, a0
                  xor          s11, t2, a0
                  sub          a4, ra, a5
                  or           s3, t6, ra
                  and          s8, s3, a4
                  srl          gp, a2, ra
                  lui          s8, 327779
                  and          gp, s9, gp
                  srli         a5, s2, 13
                  ori          t4, s8, 1694
                  addi         t5, t1, 1183
                  srai         s1, s4, 27
                  ori          t2, t1, 1139
                  andi         t4, sp, 54
                  or           t0, s1, a6
                  nop
                  addi         a0, s4, 1310
                  xor          s1, s4, s4
                  lui          a1, 273621
                  slt          a4, tp, s8
                  slti         t4, t3, -1329
                  andi         s5, s4, 1879
                  sltu         sp, t5, a0
                  srl          s5, a1, a1
                  slti         zero, t3, 826
                  srli         t0, s10, 24
                  sra          s11, t3, s9
                  slt          s4, gp, a2
                  andi         t1, zero, -1825
                  srl          a2, tp, s9
                  slt          s10, sp, gp
                  srai         s8, zero, 30
                  add          s5, s0, s4
                  lui          s2, 53422
                  nop
                  sltu         a0, s11, a6
                  slli         t1, a6, 0
                  slli         a0, a7, 15
                  sltu         gp, ra, t1
                  sub          gp, zero, ra
                  ori          gp, s8, 709
                  or           a4, a4, gp
                  add          s11, s5, a1
                  xori         t3, t6, -976
                  lui          t1, 1015766
                  sra          a0, a6, t6
                  sub          s8, gp, a0
                  sltu         sp, zero, s5
                  xori         t3, gp, 1306
                  slti         s8, a7, -123
                  sltu         t2, t2, a3
                  addi         t4, t2, -1920
                  sub          ra, a2, ra
                  xori         s8, t2, -1904
                  srai         sp, a5, 9
                  add          s2, s5, a4
                  andi         s4, s0, -1435
                  xor          a2, s7, s10
                  srai         ra, s5, 21
                  lui          s7, 166442
                  or           a0, t5, zero
                  auipc        a5, 710260
                  auipc        s1, 391172
                  sll          a6, a7, a5
                  sltu         t6, zero, a7
                  slt          t6, t2, t0
                  addi         s7, t4, 1050
                  andi         a6, zero, -744
                  xor          s8, s0, s2
                  auipc        s7, 402889
                  slli         s8, t2, 20
                  sltu         s9, s7, a1
                  nop
                  slli         ra, tp, 15
                  xori         s10, t0, 197
                  auipc        t4, 646981
                  sll          t1, a3, tp
                  srai         zero, t2, 3
                  sltiu        a7, a0, 1690
                  add          s7, s11, a4
                  nop
                  xor          s0, t4, s1
                  sll          s10, a3, a6
                  auipc        a0, 798787
                  li           s10, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           t5, 0xffffffff
                  li           s3, 0x80000000
                  li           a5, 0xffffffff
                  li           s7, 0x0
                  li           a7, 0x0
                  li           t1, 0x80000000
                  li           s4, 0xffffffff
                  li           s5, 0x0
                  li           a0, 0xffffffff
                  add          s7, t1, t5
                  lui          a5, 525390
                  auipc        a0, 361307
                  auipc        s3, 312763
                  auipc        t1, 132911
                  nop
                  sub          a5, s10, t1
                  addi         t5, s3, 1392
                  add          t1, s7, a5
                  auipc        a5, 347036
                  sub          s7, t5, t5
                  auipc        s10, 551530
                  auipc        t1, 257058
                  auipc        t5, 942071
                  addi         s10, a0, 1392
                  addi         t1, s3, 837
                  auipc        s7, 606663
                  lui          a7, 677779
                  nop
                  nop #end riscv_int_numeric_corner_stream_9
                  lui          gp, 644038
                  sra          t0, s3, t3
                  slti         a0, t5, 957
                  sltiu        s2, a6, -732
                  auipc        a4, 990468
                  sltiu        ra, a0, 1152
                  auipc        ra, 938819
                  slli         t4, a2, 16
                  addi         sp, t5, -1206
                  sub          t4, gp, t4
                  lui          a6, 970211
                  srli         gp, s1, 9
                  slli         a2, s8, 15
                  add          s9, a2, a6
                  sub          t1, a4, s3
                  srl          t1, a6, s5
                  slli         s9, s11, 23
                  srl          s5, a2, a3
                  ori          t0, s3, -1956
                  andi         a4, s7, 1784
                  slli         s4, a6, 16
                  xor          s4, s7, a1
                  srl          s4, t5, tp
                  srl          t3, a3, s0
                  xor          sp, s10, tp
                  srai         t3, s10, 8
                  andi         s1, a6, 2021
                  sltiu        s5, t5, 763
                  andi         s7, t0, 1445
                  slti         t5, t3, 821
                  and          s3, a3, s11
                  slli         zero, a6, 29
                  sltiu        t6, t2, 1726
                  sltu         gp, a0, a1
                  sub          t5, s3, t6
                  and          s4, t2, s5
                  slti         a0, t0, 165
                  sll          t4, s6, a7
                  srai         s8, t6, 29
                  xori         s8, t5, -2013
                  add          a7, s10, zero
                  xor          s11, a4, a2
                  slti         s1, s3, -1649
                  xor          sp, tp, s2
                  andi         t5, t0, -926
                  sltiu        sp, s2, -613
                  andi         a5, a3, 1886
                  srl          a2, t5, a4
                  sra          a6, a5, s1
                  and          a4, a3, s6
                  ori          ra, t3, -409
                  sll          s4, s1, a3
                  sltu         s5, t5, s10
                  ori          a7, s1, 1066
                  sra          zero, t5, t6
                  sll          t5, a5, a7
                  srai         s11, s3, 0
                  add          t4, ra, s1
                  auipc        s5, 979455
                  andi         t4, gp, -94
                  and          s0, s4, t0
                  and          s3, tp, a3
                  sltiu        t4, tp, -700
                  add          s3, s4, tp
                  auipc        t3, 336318
                  and          s11, s10, t2
                  addi         t6, a7, -1047
                  and          t0, t2, t5
                  lui          s10, 121627
                  nop
                  sub          s5, a0, s5
                  slt          t0, zero, t6
                  srl          zero, t6, t2
                  xori         s8, s2, -2045
                  srl          a6, s0, t6
                  sra          s2, s11, a7
                  xori         s5, s4, 227
                  sltiu        s7, a6, -433
                  srai         sp, t0, 14
                  slli         sp, a2, 31
                  slti         s0, s0, -1954
                  addi         a4, s11, -819
                  andi         s4, a1, 719
                  add          t1, sp, ra
                  sll          sp, s4, s7
                  slti         t2, t5, -1634
                  srli         s10, t3, 26
                  add          t0, a1, a5
                  auipc        s4, 712183
                  sll          a5, gp, s1
                  lui          s5, 1028193
                  sltiu        gp, tp, 1984
                  slt          ra, a3, a4
                  sltu         s8, a7, t1
                  sltu         s1, s8, a6
                  sltiu        a6, zero, 927
                  or           a6, t4, a3
                  addi         zero, s3, -2034
                  and          t5, t3, t2
                  sltu         t3, s11, a6
                  slt          a7, a0, zero
                  srl          s7, s1, s7
                  sll          t6, a3, t4
                  addi         s7, zero, 1742
                  slli         gp, a0, 17
                  slli         s10, s11, 15
                  and          ra, a2, t0
                  sra          s2, a4, s6
                  lui          s10, 609444
                  srl          t0, t6, s5
                  or           t0, s9, a7
                  or           sp, s8, a1
                  slt          s4, s9, s9
                  srai         s9, s0, 27
                  srl          a4, s0, a2
                  srai         s0, a1, 18
                  or           sp, a3, t0
                  addi         t0, a3, -1509
                  xor          t2, a4, a2
                  sub          a6, t0, s4
                  andi         zero, a6, 1884
                  lui          t6, 166894
                  addi         t6, s7, -348
                  sll          s4, s3, s3
                  nop
                  xor          a4, s11, a1
                  auipc        s2, 993342
                  or           a6, a4, t5
                  ori          zero, a6, -1541
                  andi         zero, t1, 1029
                  srli         s2, a4, 14
                  and          t0, t5, s7
                  andi         s1, a5, 1534
                  lui          t2, 24900
                  add          t2, a3, sp
                  srl          a2, a7, s2
                  ori          a0, a1, -1982
                  srl          s1, s1, s4
                  nop
                  sll          zero, tp, sp
                  lui          a5, 168388
                  add          a1, s0, s2
                  xori         a5, s7, -152
                  slt          a2, a3, s11
                  xor          s7, s3, s5
                  sub          s8, t1, gp
                  sll          a5, zero, s8
                  sltu         s5, s8, gp
                  xor          t5, t2, a2
                  or           t6, t1, t3
                  sra          s7, gp, zero
                  slli         t4, a4, 11
                  add          a7, s10, a2
                  lui          t3, 377327
                  sll          s5, t6, s2
                  sra          t6, t0, s3
                  lui          a4, 501622
                  xori         t3, a7, 951
                  nop
                  add          a2, sp, ra
                  sra          s1, t5, t2
                  lui          s0, 533207
                  slli         s11, t2, 3
                  addi         a2, a7, 471
                  ori          t1, a4, -730
                  andi         s2, a2, 1993
                  slli         t1, s2, 21
                  add          s5, a5, t1
                  sll          s11, s6, s4
                  ori          t3, s3, 1870
                  sub          s8, t5, s0
                  add          t6, s2, sp
                  ori          s2, a7, 1629
                  nop
                  ori          t4, s4, 1539
                  sltu         gp, t0, t3
                  and          s1, s10, tp
                  sltu         s4, s10, a2
                  addi         s5, a5, 1614
                  srai         s3, a5, 29
                  auipc        t1, 517439
                  srl          a7, s0, t3
                  slt          t3, s8, a6
                  srli         a0, sp, 19
                  sltiu        s7, t4, 1784
                  xor          t0, zero, a5
                  add          t3, s7, a7
                  or           t0, a0, tp
                  sra          s0, t1, t2
                  slt          a0, t6, s9
                  sltiu        a5, s4, -196
                  sltiu        gp, a4, 1639
                  srli         t5, s2, 31
                  slt          s3, s11, t1
                  slt          ra, t5, t2
                  nop
                  srai         gp, s11, 17
                  sltu         s2, a4, zero
                  xori         s0, gp, 1415
                  slli         s11, a4, 21
                  and          t0, a6, s3
                  sltiu        t1, tp, -1886
                  lui          a2, 1036714
                  xori         s9, s0, -41
                  sra          zero, t4, t2
                  slti         t1, s2, 1527
                  andi         a2, t2, -1057
                  slli         t1, a0, 3
                  andi         t6, a4, 666
                  srli         a7, t4, 18
                  lui          t1, 745516
                  or           t4, t1, s7
                  sra          t1, t6, zero
                  or           t4, s11, s3
                  auipc        s7, 49191
                  nop
                  sub          s11, s0, t3
                  srl          t2, a7, ra
                  slt          t5, s5, zero
                  srai         a7, s2, 5
                  ori          sp, ra, 1650
                  slli         s0, t6, 30
                  slt          a5, s6, s9
                  srai         zero, gp, 5
                  addi         t5, s7, -1719
                  or           s7, s7, a6
                  addi         a0, s5, 1291
                  auipc        t4, 573315
                  xori         a4, s2, -1962
                  srl          s9, gp, s9
                  sltu         t4, a2, t2
                  ori          s9, a3, 736
                  sra          s2, t6, s1
                  add          a2, s9, s9
                  srl          t3, t4, s0
                  or           a6, t2, a4
                  addi         s9, a2, 1751
                  add          t0, s6, s4
                  auipc        s9, 968856
                  sra          s9, s2, t4
                  and          a5, a4, s1
                  andi         a2, s4, 1341
                  srl          s3, s9, t3
                  sub          t5, a4, s8
                  slti         zero, zero, 1414
                  add          t0, a2, s6
                  sub          s4, t1, s8
                  sub          s0, a7, t1
                  slti         a0, a2, 1574
                  or           sp, a4, tp
                  addi         s5, t5, -1490
                  addi         t3, a3, 135
                  srai         a5, s8, 8
                  auipc        s7, 596357
                  add          s8, s11, s7
                  sra          s7, gp, a7
                  slli         gp, s4, 6
                  or           a7, a0, a5
                  sra          a7, s10, s11
                  sra          s7, s2, t0
                  sub          t3, a3, s3
                  nop
                  slli         s3, s3, 21
                  srli         t1, a6, 23
                  lui          s0, 1008014
                  ori          s9, a3, 445
                  ori          t2, a5, -919
                  nop
                  sltiu        s3, t3, -56
                  sll          t1, a0, a2
                  sub          gp, sp, a3
                  sltu         a5, a5, gp
                  sll          s11, s3, s10
                  nop
                  nop
                  sub          s5, s6, s9
                  add          t5, s6, t5
                  slti         s8, s5, -1258
                  xori         gp, t4, 1399
                  sll          s5, s11, a7
                  nop
                  slli         a4, s4, 16
                  srai         t2, s4, 13
                  sltiu        s5, ra, -407
                  nop
                  slt          a4, t5, a0
                  sltu         t3, a6, s4
                  slt          t4, a0, s3
                  srli         t3, s5, 1
                  or           a0, s0, s1
                  auipc        s4, 490776
                  ori          ra, t6, 1556
                  srl          t4, t0, a4
                  sltu         gp, s5, a1
                  srai         s5, a0, 9
                  sltu         s9, s4, sp
                  slli         zero, a2, 11
                  srl          a5, a3, s1
                  srl          s8, tp, s1
                  slt          s9, s0, t6
                  lui          s2, 510035
                  andi         gp, a0, -422
                  sll          s3, a2, t5
                  sltiu        s0, t0, 666
                  ori          sp, gp, -93
                  sub          s1, t0, a0
                  sltu         s1, s6, s3
                  slt          a2, s5, a3
                  lui          gp, 1041479
                  nop
                  xor          s7, tp, s0
                  sltu         a1, gp, s10
                  sltu         t3, t6, t2
                  auipc        s7, 921368
                  add          a7, t4, t5
                  nop
                  sltiu        s10, a6, 1156
                  sra          t3, s6, t0
                  slti         a5, s4, 825
                  and          s2, gp, t3
                  srai         sp, s2, 8
                  ori          s10, s3, 1120
                  sll          t0, sp, a2
                  sltiu        a7, s4, 697
                  lui          t3, 123382
                  slti         s10, s2, 1780
                  sra          zero, a2, s7
                  srli         a1, sp, 14
                  sub          t0, s11, a3
                  addi         ra, s5, -1461
                  srai         t4, a4, 17
                  srli         a5, s1, 16
                  ori          t5, s2, -503
                  lui          zero, 926097
                  andi         a0, a2, 977
                  sltiu        a1, t6, 595
                  sltiu        t3, s8, 315
                  and          a4, a0, s1
                  and          a4, a5, s10
                  sub          a5, s0, s7
                  sll          s0, s1, a5
                  or           s10, s10, t6
                  sub          sp, s6, t1
                  srl          s0, s11, s5
                  slli         s8, a5, 28
                  sub          s0, a1, t1
                  sra          a7, a6, zero
                  or           t6, s6, s1
                  sll          a2, a2, a5
                  srl          s5, t0, s0
                  slt          s5, s7, a3
                  sub          a5, s3, a3
                  addi         a0, s6, 1433
                  sll          t6, t1, a2
                  xor          a2, s0, s8
                  sltiu        s8, tp, -1722
                  and          a7, t4, t4
                  srai         s7, t5, 18
                  sub          s2, a4, a1
                  xor          s8, s7, gp
                  or           s1, a4, t0
                  srai         s8, s5, 21
                  and          a1, sp, s0
                  and          t2, t1, tp
                  sra          a7, a2, gp
                  addi         sp, a6, -498
                  srl          a7, s2, t6
                  xor          zero, s4, t4
                  slli         a4, s10, 18
                  slt          a0, s2, s9
                  srai         t5, s10, 8
                  xor          a2, s8, s7
                  addi         s5, a6, -40
                  sra          s11, zero, a7
                  sll          s7, sp, a5
                  nop
                  and          s9, s1, t4
                  xor          s10, sp, ra
                  andi         t1, s10, 1371
                  addi         s0, a3, 1803
                  sll          s3, t1, s7
                  slli         t3, s2, 25
                  sll          gp, a0, a3
                  sltu         t3, zero, s9
                  slti         s11, s10, 593
                  addi         a2, a6, 81
                  sra          a6, t0, a3
                  nop
                  xori         a1, ra, 1314
                  srai         s1, s11, 15
                  add          s4, ra, a1
                  addi         ra, s0, 499
                  slt          a0, a1, s10
                  sltu         t1, ra, s5
                  slti         s9, t3, -128
                  add          a5, s4, a0
                  auipc        t0, 853857
                  srl          s8, tp, a4
                  srl          a6, s6, a0
                  nop
                  nop
                  sra          zero, t0, a7
                  slt          s0, zero, t4
                  srai         a0, a6, 7
                  add          t0, t0, s1
                  sub          a7, a3, s8
                  addi         zero, s5, 406
                  srl          zero, s2, s11
                  lui          t5, 837602
                  auipc        a2, 198752
                  srai         s7, s3, 9
                  xori         t1, a3, 1112
                  xori         ra, t0, 1204
                  sltiu        s10, t2, 1046
                  andi         t1, tp, -400
                  ori          s10, zero, 569
                  and          t4, s9, s2
                  slli         s8, t1, 22
                  srl          gp, t3, s4
                  sub          ra, s5, a6
                  sltu         zero, t4, t5
                  slli         s10, s2, 13
                  lui          a6, 233908
                  slt          zero, ra, zero
                  auipc        a1, 283822
                  slli         s7, a5, 13
                  slli         ra, s1, 19
                  add          t6, s6, t3
                  auipc        s11, 771564
                  add          t1, s0, s11
                  ori          a7, t3, -578
                  srl          sp, s6, ra
                  nop
                  xori         a6, a1, 1910
                  andi         s9, s0, 1810
                  xori         s5, s4, 415
                  srli         gp, t6, 26
                  add          s2, ra, a1
                  ori          s8, s4, 1110
                  xor          a7, a6, t3
                  xor          s3, s4, t0
                  sub          s1, t0, a1
                  sub          s7, a3, a3
                  slti         s5, s1, -1868
                  srli         a4, t3, 3
                  andi         s5, ra, -1418
                  xor          s0, s1, s5
                  srl          s7, a1, a1
                  xor          s4, t4, zero
                  sra          s0, s4, s5
                  lui          sp, 414116
                  sll          s7, s5, t0
                  sltu         s0, t4, a6
                  nop
                  add          s2, s6, sp
                  auipc        s9, 333555
                  add          s8, t3, s0
                  sltiu        s8, t2, -950
                  addi         a5, s3, -402
                  sra          s1, s6, s8
                  add          a2, s6, a1
                  srai         t1, s1, 2
                  lui          a7, 440827
                  ori          a7, sp, -494
                  andi         a5, s0, -1498
                  ori          a1, s8, 676
                  sub          zero, s2, t4
                  slti         a2, s6, -867
                  sub          s3, gp, s7
                  slt          s7, tp, zero
                  slti         a1, a4, -520
                  auipc        s11, 825078
                  andi         a0, s5, 1529
                  or           t1, a4, a3
                  slt          s9, sp, s11
                  addi         s8, t0, -1683
                  sltu         s7, s7, s0
                  and          zero, a0, s4
                  sra          gp, t0, s0
                  slli         s0, t5, 23
                  sll          a1, s3, s3
                  srai         s5, s10, 1
                  sltu         a6, t0, t2
                  slli         s8, s7, 23
                  slt          a7, a5, t0
                  xori         a7, s4, -247
                  sltu         zero, tp, t5
                  slti         s8, a5, -1873
                  or           s1, s11, tp
                  add          s5, s1, s8
                  srl          sp, t4, t2
                  nop
                  srai         s2, gp, 31
                  ori          t6, t4, 88
                  nop
                  addi         a4, a6, -987
                  sra          t6, s8, s1
                  andi         a5, s10, -713
                  sub          a0, t1, a2
                  or           s2, t3, a4
                  xor          t0, a5, s7
                  sub          t4, t1, a0
                  srli         zero, t5, 20
                  slli         t3, sp, 7
                  xori         a0, a1, 1382
                  sub          ra, tp, t3
                  srl          ra, sp, s1
                  xori         s10, s1, -1392
                  xori         sp, t0, 576
                  slti         t4, a4, -50
                  or           zero, s7, s1
                  xori         t5, t0, 1119
                  add          a4, tp, ra
                  addi         t0, s10, -422
                  sltu         sp, a0, a3
                  srl          s9, s10, a4
                  sub          s1, a7, a6
                  srai         s5, a5, 19
                  and          a5, a2, s1
                  nop
                  andi         a2, s11, 1368
                  sra          s1, gp, a7
                  nop
                  slli         s10, s7, 25
                  addi         zero, gp, -651
                  or           gp, s3, gp
                  sll          sp, s0, gp
                  ori          s7, s9, 1651
                  sub          a7, s4, a4
                  srli         sp, t1, 30
                  sltu         t2, t6, a4
                  srli         s8, t1, 14
                  lui          t1, 289139
                  xor          t2, tp, sp
                  sltiu        s5, t3, 1434
                  nop
                  slli         t3, a4, 16
                  ori          s9, t1, 315
                  srai         s5, s8, 30
                  and          t4, t5, s6
                  sra          s0, zero, t2
                  or           s5, s1, t5
                  lui          s3, 332888
                  lui          s5, 331435
                  xor          s7, s8, s10
                  slli         t6, t4, 14
                  lui          s0, 111398
                  sll          s1, s10, a3
                  slti         sp, s7, 317
                  andi         t5, a7, -1850
                  add          a1, s5, s8
                  sub          s0, a3, s8
                  addi         s3, t1, -36
                  sltiu        gp, a1, 609
                  or           t4, a0, t1
                  srai         t3, t0, 9
                  nop
                  lui          t5, 621512
                  srl          a2, a6, s4
                  sll          t0, t6, s1
                  sra          s5, s3, a4
                  xori         a1, a3, -898
                  sub          a4, t5, s10
                  xor          sp, s8, s10
                  lui          a0, 7502
                  addi         gp, t1, 54
                  nop
                  slti         a4, ra, -1267
                  nop
                  xori         a7, t5, 722
                  sltiu        t1, t6, -841
                  nop
                  srai         t0, ra, 11
                  nop
                  xor          a2, t2, s2
                  ori          s9, s10, -2048
                  slti         s8, ra, 1241
                  addi         t4, s2, -1429
                  slt          t0, a2, s7
                  lui          zero, 27890
                  xori         t6, a2, -1074
                  and          s5, a5, t6
                  srl          s0, a0, t2
                  slti         a2, a7, -113
                  srl          s9, a4, t5
                  srai         t1, t4, 23
                  sub          s4, s6, s6
                  sll          s2, tp, s6
                  nop
                  and          gp, s8, a1
                  sll          ra, t5, t0
                  sltu         t6, s6, a7
                  sltu         t4, s7, a5
                  xori         s7, tp, -1276
                  andi         a2, a3, -1974
                  nop
                  or           s2, t0, t0
                  addi         a1, zero, -1861
                  xori         a1, s10, 379
                  nop
                  sltiu        t3, a4, 1768
                  slt          s10, a0, s11
                  sltu         t0, s8, s0
                  and          t1, s10, t6
                  srai         s2, s7, 18
                  xor          t2, a2, a2
                  slli         t4, t5, 20
                  sra          sp, s0, t1
                  sltu         s0, zero, s6
                  srl          a1, a0, s6
                  slti         s11, t6, -1190
                  xor          s11, s10, a2
                  slli         t0, s8, 15
                  andi         s10, s1, 1877
                  and          t5, s3, s9
                  xori         a2, s8, -61
                  slt          t6, s7, gp
                  slt          s8, t5, gp
                  ori          s8, t2, 314
                  auipc        s3, 868815
                  xori         a6, a5, -1226
                  or           a7, t4, a7
                  and          s3, ra, a1
                  srli         s0, s2, 0
                  and          a4, s5, ra
                  add          a0, s9, t2
                  sll          a4, s3, ra
                  srli         s8, t0, 12
                  nop
                  or           a5, s10, gp
                  slli         t4, s7, 25
                  srai         a6, ra, 29
                  srli         s3, t3, 16
                  and          s9, s11, a3
                  auipc        a7, 860598
                  slti         sp, s6, 227
                  sub          s11, s9, a0
                  slti         a4, a5, -973
                  or           t5, t2, gp
                  slli         s4, a2, 16
                  xor          s1, s5, a5
                  nop
                  sra          sp, s11, a5
                  auipc        t4, 608121
                  xor          a5, s7, s5
                  sltiu        s8, a3, 342
                  add          t5, ra, s0
                  sltu         t5, a5, s4
                  and          a4, s11, a0
                  slt          a6, a6, zero
                  slt          s7, s11, t5
                  xori         zero, s11, -1497
                  srli         s5, t1, 19
                  xori         s10, s1, -1751
                  and          s3, s6, s9
                  lui          ra, 258349
                  slti         a0, s8, -1845
                  xori         s4, s4, 499
                  sll          t1, t2, a1
                  nop
                  srli         s0, s9, 4
                  sra          s4, t1, s10
                  add          sp, s7, t5
                  andi         t4, s9, -1774
                  andi         s7, t4, -1016
                  slti         sp, s4, 1803
                  or           ra, a3, t6
                  and          ra, t6, s8
                  slli         t5, t1, 17
                  addi         s5, s6, -1652
                  srai         s4, s6, 13
                  srli         s11, s6, 14
                  addi         t0, t4, 1588
                  srl          t6, a4, t4
                  or           a5, s9, a2
                  slti         ra, a2, -1083
                  add          a0, a0, s1
                  lui          zero, 774934
                  auipc        a4, 525177
                  sra          t5, s9, s4
                  lui          a2, 331851
                  slli         t5, a6, 11
                  nop
                  slli         a2, t3, 17
                  sub          t3, t3, a7
                  sll          a7, a0, a2
                  auipc        a2, 363501
                  slti         t1, t6, 960
                  ori          s9, s11, -1754
                  auipc        t1, 42645
                  xori         s11, s6, 253
                  addi         zero, a0, 312
                  srai         s11, zero, 2
                  sub          a6, zero, zero
                  slti         s10, zero, -947
                  xori         a2, s5, -1809
                  add          a0, a2, s6
                  xor          t1, t3, t6
                  slli         a2, t5, 13
                  xori         a7, gp, 2038
                  ori          ra, a4, -568
                  srli         gp, s5, 28
                  srai         sp, s0, 27
                  ori          a5, a1, 1421
                  andi         s5, t4, 1055
                  xor          s0, a2, s3
                  xor          ra, s5, s7
                  slt          t1, t3, s3
                  ori          a2, t1, -1598
                  sra          gp, a1, t3
                  sub          s5, s11, s0
                  nop
                  add          s9, s8, s7
                  add          t2, s1, a3
                  slti         a0, tp, -2013
                  srl          t0, s4, s10
                  auipc        a5, 759174
                  andi         t3, s9, 1422
                  andi         a0, a3, 340
                  slti         ra, s9, 1987
                  srl          t4, t4, a5
                  srli         zero, a5, 14
                  slti         s0, s5, -1522
                  and          a6, a6, s2
                  add          t1, s11, a3
                  sub          t2, tp, zero
                  or           s10, gp, s5
                  addi         s11, s0, -1507
                  sub          s8, a5, s7
                  li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_19
                  li           gp, 0xffffffff
                  li           s11, 0x0
                  li           a1, 0x80000000
                  li           s4, 0x80000000
                  li           a0, 0xffffffff
                  li           s0, 0x80000000
                  li           a6, 0x80000000
                  li           a7, 0xffffffff
                  li           t0, 0x80000000
                  auipc        s4, 975357
                  nop
                  lui          gp, 684650
                  nop
                  auipc        a0, 63129
                  nop
                  sub          t0, a7, s4
                  nop
                  addi         a2, t0, -740
                  add          s11, a2, gp
                  addi         s4, gp, 333
                  auipc        s4, 135972
                  add          a7, t0, a7
                  add          s4, t0, s11
                  lui          gp, 114628
                  nop
                  nop
                  sub          gp, a0, s11
                  auipc        s0, 1024466
                  addi         a6, a2, 1100
                  sub          a1, gp, t0
                  sub          a2, a7, s11
                  auipc        a2, 300862
                  add          a2, a1, a2 #end riscv_int_numeric_corner_stream_19
                  and          ra, a3, s7
                  srli         t2, s8, 7
                  slli         t1, s1, 20
                  xor          s2, t6, a7
                  sltiu        s3, s10, 669
                  or           s1, t0, t4
                  ori          s10, s1, -412
                  xori         s8, gp, 1144
                  srai         t2, t3, 21
                  slli         s3, a3, 29
                  srli         gp, t3, 11
                  sltu         t2, a5, s6
                  srai         a5, sp, 22
                  xori         s8, s2, -23
                  addi         zero, a5, -1837
                  ori          s2, t5, 773
                  andi         s7, s4, 1501
                  auipc        s2, 116808
                  lui          t3, 277167
                  xori         t0, t3, -920
                  ori          gp, t6, 573
                  sll          s9, a5, s5
                  slli         t0, a0, 27
                  sltiu        a6, s7, 595
                  srl          s3, t3, s7
                  sra          gp, t3, s10
                  srli         sp, gp, 5
                  or           t6, s2, gp
                  sra          a7, s9, a5
                  lui          sp, 775578
                  lui          ra, 878622
                  or           s1, s7, t4
                  slti         s11, a6, 1581
                  sub          zero, s7, tp
                  andi         s10, s0, -1824
                  srai         s11, a7, 4
                  srai         t0, a4, 18
                  xor          s3, a4, a2
                  nop
                  sub          t5, gp, sp
                  slti         t3, a1, -678
                  nop
                  sll          zero, a5, t5
                  srl          s7, s4, zero
                  sll          t5, a5, a2
                  or           a7, a5, sp
                  addi         t4, s8, 1827
                  addi         a4, s10, 858
                  or           a6, s10, s9
                  andi         s1, s4, -1522
                  srli         ra, t4, 1
                  xor          t6, t6, zero
                  addi         s10, t6, -255
                  srli         sp, s9, 22
                  xor          s9, gp, t5
                  auipc        a1, 304104
                  nop
                  sra          t1, t1, gp
                  addi         t3, s7, -1769
                  srl          s3, a1, ra
                  ori          a2, t5, 712
                  xori         t0, a4, 897
                  lui          a4, 986470
                  sltu         t0, s3, s5
                  nop
                  slli         s7, t1, 5
                  auipc        a4, 166334
                  ori          s9, s1, -351
                  xor          t6, a6, a5
                  add          t4, s11, a1
                  add          t1, a5, a4
                  sltu         a6, a0, a5
                  or           t2, t3, a7
                  xori         t4, s9, -936
                  andi         s1, s5, 1050
                  andi         sp, sp, 1373
                  slti         zero, zero, -1635
                  xor          t2, a7, a5
                  xor          s9, a6, t6
                  or           sp, s7, s4
                  sub          a7, t4, s3
                  srl          a6, a0, s11
                  slli         t5, a3, 29
                  sra          a4, t6, t1
                  sra          s2, tp, s3
                  auipc        t5, 736431
                  srl          s4, a2, s4
                  or           s3, a1, a0
                  slli         t0, a6, 16
                  sltu         t3, a5, t2
                  andi         t0, s3, 190
                  sub          gp, t0, tp
                  sll          s8, a0, gp
                  slti         a5, ra, 772
                  and          s9, a1, t5
                  sltu         t2, a4, s1
                  slti         a0, ra, 1597
                  auipc        a2, 560445
                  srai         ra, a2, 26
                  srli         t5, s6, 0
                  lui          a7, 555976
                  srli         t1, a0, 7
                  srli         t5, gp, 8
                  lui          s2, 100073
                  sltiu        zero, t3, -721
                  slt          s8, t2, t3
                  xori         t4, t2, 1161
                  sll          zero, a2, s9
                  srai         s3, t2, 14
                  sll          ra, a0, sp
                  srli         sp, a1, 14
                  sltiu        a1, s11, -1151
                  sltu         s10, s1, s4
                  add          s8, s1, a0
                  srai         sp, t1, 13
                  sltiu        s7, t2, 954
                  sll          t3, t5, s2
                  and          s8, t4, s9
                  sra          s10, t2, t0
                  slti         s9, t3, 1360
                  and          s10, a2, t6
                  srli         t3, t5, 6
                  sub          a6, s10, sp
                  slti         a4, t6, 253
                  sra          a1, a6, ra
                  slt          a1, t4, tp
                  xor          t2, a6, a7
                  andi         zero, s0, 1296
                  and          s3, a7, s7
                  xori         a4, s10, 117
                  andi         s10, t4, -1987
                  slli         a4, a0, 6
                  sltiu        t4, t6, -1534
                  auipc        t0, 737904
                  addi         s5, a1, 1630
                  and          t5, a7, s11
                  ori          ra, ra, -418
                  sltiu        s9, s11, -1696
                  srl          t5, sp, s9
                  slt          a0, a5, t0
                  nop
                  slti         a4, s6, -733
                  and          t3, a0, s6
                  sltu         sp, a0, zero
                  xor          s4, a6, t6
                  and          a5, s6, a5
                  sll          a7, t2, ra
                  sltu         t3, a6, s11
                  sltu         a2, t5, s11
                  lui          s1, 1008226
                  xor          a1, t5, t5
                  sll          a5, s8, a7
                  srli         a2, s1, 23
                  sltiu        s0, t3, 967
                  xor          s10, t1, t2
                  add          s3, s4, t5
                  sub          s3, zero, a7
                  add          s10, gp, t6
                  srli         s10, s2, 21
                  lui          sp, 372818
                  slt          t3, a2, s5
                  srai         gp, a1, 22
                  slti         a2, t6, 487
                  sll          s10, s3, t5
                  srl          a1, a6, s2
                  sll          a6, sp, s0
                  sll          a6, t3, tp
                  add          s3, s3, ra
                  srli         s8, s8, 8
                  slli         sp, a7, 4
                  sltiu        s8, a6, -99
                  xori         t6, t4, 736
                  sub          ra, s9, s8
                  auipc        a5, 802316
                  sltu         t2, s5, s2
                  andi         zero, s9, -1247
                  add          ra, gp, zero
                  andi         s0, a6, 700
                  or           s7, s10, gp
                  auipc        t3, 137035
                  xor          sp, s5, s0
                  addi         t0, t1, 1330
                  lui          s1, 284388
                  srli         s2, t1, 2
                  xor          s8, a5, a7
                  srl          a5, a6, s5
                  ori          s4, t6, 1864
                  slli         a4, a0, 26
                  nop
                  auipc        gp, 216717
                  add          s8, s10, s7
                  addi         a4, s6, -1782
                  or           a1, s5, sp
                  xori         t2, s7, -1507
                  auipc        t3, 366782
                  xor          s2, a4, s6
                  sub          a6, s7, a2
                  slti         ra, s2, 641
                  sltiu        t4, t3, -1652
                  srai         s9, s0, 17
                  nop
                  sll          s0, a4, sp
                  sltiu        gp, s2, -1874
                  lui          t0, 756649
                  slt          ra, t6, ra
                  ori          t3, s0, -808
                  srai         a6, s4, 22
                  sltiu        t6, s6, 459
                  or           s11, a1, t0
                  slli         sp, s1, 26
                  slt          a5, t5, a6
                  nop
                  sll          t2, s3, s1
                  srli         t5, t4, 6
                  srl          t2, t3, s8
                  nop
                  sll          a2, zero, t5
                  sll          s8, sp, s8
                  andi         t3, ra, 756
                  and          s3, ra, sp
                  slti         s2, t4, 1604
                  srl          s0, s4, gp
                  sub          s11, a7, s4
                  add          a0, a6, t5
                  slt          a1, s5, a4
                  ori          t5, s5, -1615
                  xor          a5, a1, a7
                  srl          a2, ra, t1
                  xor          t6, s10, a3
                  sub          a5, a6, t5
                  sltiu        t1, s1, -1874
                  add          s8, s3, s10
                  or           a4, t3, s4
                  srl          s5, s10, t6
                  auipc        a0, 137851
                  sltiu        ra, a7, -850
                  and          a1, a6, gp
                  srai         gp, t4, 29
                  sltiu        t5, t5, -475
                  and          t0, t4, s3
                  srl          s11, s9, t5
                  auipc        s3, 18200
                  sltu         a0, a4, zero
                  auipc        ra, 56206
                  auipc        a4, 758899
                  slt          a5, zero, a2
                  sltiu        t5, t2, 741
                  lui          t3, 772102
                  ori          a5, t2, -739
                  add          t2, t5, s1
                  xori         t2, s6, -1139
                  or           t2, t3, a6
                  sltiu        t5, t2, 312
                  sra          a4, t1, a6
                  andi         t5, s5, -1637
                  sra          s7, s1, a1
                  xori         t6, s9, 497
                  slti         a4, a0, -847
                  xor          s7, s3, s5
                  srli         t0, a5, 0
                  sra          a2, gp, t1
                  slt          a5, s11, s2
                  lui          s2, 33912
                  srli         t0, a6, 7
                  or           s4, a0, t0
                  andi         s4, t1, -381
                  nop
                  nop
                  andi         s3, a1, -1697
                  xori         ra, t3, 566
                  or           a7, s6, a6
                  xor          gp, t0, a1
                  sltiu        a7, sp, 2040
                  add          s10, ra, t1
                  xor          gp, a2, ra
                  and          gp, a7, a2
                  slti         s10, t3, 1749
                  slti         sp, s4, -456
                  sub          a6, tp, s3
                  add          a7, gp, s5
                  srl          s10, s0, s1
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
.align           2
mtvec_handler:    
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x13, x4, zero
                  csrr x19, 0x300 # MSTATUS
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 31
                  bne x19, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x28, 0x3 # BREAKPOINT
                  beq x19, x28, ebreak_handler
                  li x28, 0x8 # ECALL_UMODE
                  beq x19, x28, ecall_handler
                  li x28, 0x9 # ECALL_SMODE
                  beq x19, x28, ecall_handler
                  li x28, 0xb # ECALL_MMODE
                  beq x19, x28, ecall_handler
                  li x28, 0x1
                  beq x19, x28, instr_fault_handler
                  li x28, 0x5
                  beq x19, x28, load_fault_handler
                  li x28, 0x7
                  beq x19, x28, store_fault_handler
                  li x28, 0xc
                  beq x19, x28, pt_fault_handler
                  li x28, 0xd
                  beq x19, x28, pt_fault_handler
                  li x28, 0xf
                  beq x19, x28, pt_fault_handler
                  li x28, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x28, illegal_instr_handler
                  csrr x28, 0x343 # MTVAL
                  1: la x22, test_done
                  jalr x1, x22, 0

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
                  la x22, write_tohost
                  jalr x0, x22, 0

instr_fault_handler:
                  add x4, x13, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

load_fault_handler:
                  add x4, x13, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

store_fault_handler:
                  add x4, x13, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

ebreak_handler:   
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x4, x13, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

illegal_instr_handler:
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x4, x13, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x4, x13, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
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
