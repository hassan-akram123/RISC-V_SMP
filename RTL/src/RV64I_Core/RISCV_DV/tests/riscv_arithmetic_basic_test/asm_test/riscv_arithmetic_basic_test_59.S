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
                  li x27, 0x40000100
                  csrw 0x301, x27
kernel_sp:        
                  la x2, kernel_stack_end

trap_vec_init:    
                  la x27, mtvec_handler
                  ori x27, x27, 1
                  csrw 0x305, x27 # MTVEC

mepc_setup:       
                  la x27, init
                  csrw 0x341, x27

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x27, 0x1800
                  csrw 0x300, x27 # MSTATUS
                  mret
init:             
                  li x0, 0xd6123ce2
                  li x1, 0xf8dd44a6
                  li x3, 0x80000000
                  li x4, 0xe
                  li x5, 0x23f1600b
                  li x6, 0x8
                  li x7, 0x7
                  li x9, 0x9
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x12, 0xc1f45d5b
                  li x13, 0x0
                  li x14, 0xfc792ee2
                  li x15, 0xe
                  li x16, 0xc328f0
                  li x17, 0x0
                  li x18, 0x8
                  li x19, 0x0
                  li x20, 0x7
                  li x21, 0x80000000
                  li x22, 0x80000000
                  li x23, 0x5c210a4
                  li x24, 0xfece03fd
                  li x25, 0x8
                  li x26, 0x0
                  li x27, 0xd
                  li x28, 0x525bbc37
                  li x29, 0x80000000
                  li x30, 0x7
                  li x31, 0xc
                  la x8, user_stack_end
main:             li           t5, 0xa247dd89 #start riscv_int_numeric_corner_stream_17
                  li           s3, 0x80000000
                  li           a4, 0x80000000
                  li           t1, 0x0
                  li           a6, 0x0
                  li           s1, 0xffffffff
                  li           gp, 0x0
                  li           tp, 0x80000000
                  li           a0, 0xffffffff
                  li           s10, 0x80000000
                  sub          t1, s1, t5
                  lui          s3, 337734
                  addi         a0, t5, 362
                  auipc        tp, 68976
                  lui          s10, 648169
                  addi         gp, s3, 1736
                  add          s10, a4, s10
                  add          s3, s1, a4
                  add          t1, a0, a4
                  add          s3, s10, s1
                  add          a4, tp, tp
                  lui          gp, 423672
                  addi         a0, tp, 1123
                  nop
                  auipc        s3, 890091
                  sub          s1, a0, a4
                  lui          t5, 99869
                  sub          t1, a4, t5 #end riscv_int_numeric_corner_stream_17
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           s1, 0xffffffff
                  li           s4, 0xc3f081d6
                  li           t2, 0x172e2893
                  li           a3, 0x80000000
                  li           s3, 0x80000000
                  li           a0, 0xcf0ee5f6
                  li           s7, 0xeac248e3
                  li           a1, 0xffffffff
                  li           ra, 0x0
                  addi         s4, s3, 1284
                  addi         s7, ra, 1349
                  sub          s3, t2, a3
                  auipc        s7, 2697
                  nop
                  nop
                  addi         s3, t2, -205
                  lui          s4, 835778
                  sub          s4, s3, s4
                  nop
                  nop
                  nop
                  addi         s3, s4, -1254
                  addi         ra, ra, 585
                  nop
                  add          a1, s7, s1
                  nop
                  addi         t2, a3, 27
                  sub          s4, s4, s1
                  sub          s4, a3, a0
                  nop
                  lui          a1, 998959
                  auipc        s1, 779451
                  lui          s8, 773277
                  addi         a3, s7, 1321
                  lui          a0, 586019 #end riscv_int_numeric_corner_stream_4
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           t4, 0x80000000
                  li           ra, 0x80000000
                  li           s7, 0xf571373f
                  li           a4, 0xffffffff
                  li           tp, 0x80000000
                  li           t1, 0x0
                  li           s4, 0xffffffff
                  li           t2, 0xffffffff
                  li           a7, 0x80000000
                  add          ra, a4, s4
                  sub          t2, s7, a4
                  lui          tp, 228709
                  lui          tp, 717707
                  lui          a7, 220353
                  lui          t1, 876558
                  add          t0, t2, a4
                  lui          a4, 20175
                  nop
                  nop
                  nop
                  lui          a7, 267782
                  add          tp, t4, t0
                  add          tp, s7, a4
                  nop
                  nop
                  sub          s7, s7, t2
                  sub          a4, a4, s7
                  addi         t2, t0, -1046
                  add          a7, t4, s4
                  nop
                  nop
                  sub          s7, ra, t0
                  addi         tp, t2, -136 #end riscv_int_numeric_corner_stream_19
                  li           a4, 0x0 #start riscv_int_numeric_corner_stream_14
                  li           t4, 0xffffffff
                  li           s8, 0xffffffff
                  li           s4, 0xc3c9b25f
                  li           s2, 0x80000000
                  li           gp, 0xffffffff
                  li           t0, 0x0
                  li           t3, 0x0
                  li           tp, 0xffffffff
                  li           a1, 0xccbc510c
                  addi         s4, t4, -122
                  addi         t0, t4, 742
                  auipc        t3, 56616
                  lui          s4, 247688
                  auipc        t3, 41206
                  sub          a4, tp, a1
                  nop
                  sub          t3, a1, a1
                  auipc        t0, 740905
                  sub          a1, t0, a1
                  sub          t4, s2, a1
                  nop
                  sub          s2, gp, t3
                  addi         tp, gp, -1553
                  sub          gp, t4, s8
                  addi         t4, t3, -837
                  lui          s2, 421136
                  lui          t4, 280588
                  sub          a4, a1, t0 #end riscv_int_numeric_corner_stream_14
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           a1, 0x5803d85a
                  li           s5, 0xffffffff
                  li           s7, 0x80000000
                  li           t2, 0x80000000
                  li           t5, 0x80000000
                  li           s10, 0x624dd033
                  li           gp, 0x0
                  li           s3, 0x0
                  li           a5, 0xffffffff
                  lui          t5, 428432
                  add          a1, s3, ra
                  auipc        gp, 263613
                  nop
                  auipc        s10, 689598
                  sub          t5, s7, gp
                  lui          t2, 652890
                  nop
                  addi         s5, gp, -324
                  sub          s7, a5, s5
                  lui          s7, 120202
                  auipc        s7, 221328
                  sub          s3, s3, a5
                  nop
                  auipc        s5, 265727
                  lui          a1, 1000040
                  nop
                  nop
                  auipc        t5, 472828
                  sub          a1, t2, s7
                  nop
                  nop
                  sub          s3, ra, t2
                  auipc        s7, 603982
                  auipc        s10, 628090
                  add          s7, t2, ra
                  addi         a5, gp, -151
                  add          t2, t5, s7
                  lui          s5, 908959
                  nop #end riscv_int_numeric_corner_stream_6
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           s8, 0x80000000
                  li           a5, 0xfbea6eeb
                  li           ra, 0x80000000
                  li           s11, 0xa8a20bb2
                  li           a3, 0xffffffff
                  li           a2, 0x0
                  li           s9, 0x0
                  li           t1, 0xffffffff
                  li           gp, 0x0
                  nop
                  auipc        t1, 1027126
                  sub          s9, a3, s8
                  auipc        a3, 358942
                  nop
                  nop
                  add          s11, gp, a3
                  auipc        t1, 511373
                  auipc        ra, 234633
                  add          a5, t2, t1
                  nop
                  nop
                  add          a5, gp, s8
                  nop
                  lui          ra, 558589
                  nop
                  sub          a2, s9, s11
                  auipc        a2, 606512 #end riscv_int_numeric_corner_stream_5
                  and          s3, s8, a6
                  srai         t0, t5, 6
                  xor          s11, a1, s10
                  xor          zero, a7, t0
                  add          gp, a2, s9
                  sltiu        a1, s0, -1251
                  sll          a5, s3, ra
                  sll          a4, s6, s11
                  slli         s7, t1, 27
                  slti         s10, s11, 1928
                  xori         s1, a4, 1269
                  srli         a5, a5, 25
                  addi         a0, a6, -1556
                  nop
                  srai         a4, zero, 25
                  xori         a5, t2, 565
                  srl          t3, s9, s2
                  sra          s11, s11, t6
                  sltiu        a3, t3, 309
                  sll          t6, t3, s3
                  and          a5, a1, gp
                  srl          a4, a3, s7
                  andi         s9, ra, 1414
                  ori          s3, t6, -1489
                  sub          tp, t6, a4
                  sltiu        tp, a2, -1745
                  srl          s2, s5, t0
                  andi         zero, s7, 1641
                  slt          s11, sp, t6
                  and          t5, a3, s3
                  addi         a2, t1, -2040
                  srl          t5, a7, s6
                  andi         s10, t2, -1066
                  auipc        zero, 512937
                  ori          a5, a0, 1081
                  or           t6, s0, a4
                  sll          s2, s3, s7
                  andi         a4, s1, -8
                  sub          s8, t2, a2
                  nop
                  slli         a7, s4, 10
                  sub          s10, t6, s0
                  addi         s5, t1, 1020
                  sltiu        gp, s9, -1914
                  xor          t2, a3, t6
                  xor          t1, a5, tp
                  sub          gp, t4, a0
                  srli         ra, s3, 0
                  sra          a7, s5, t3
                  ori          s2, sp, -1794
                  xori         s5, s9, -1279
                  nop
                  srai         a6, a7, 24
                  sra          gp, s2, s1
                  srl          s8, t2, a4
                  sub          t3, a5, ra
                  sub          zero, t1, a2
                  andi         s1, t3, 354
                  andi         s11, a1, 34
                  ori          s11, a4, -142
                  auipc        zero, 326908
                  sltiu        zero, a0, 1813
                  addi         a0, tp, -1570
                  add          a7, s8, a6
                  sub          s8, a1, t1
                  xori         t1, s8, 425
                  xori         ra, s3, 1883
                  sra          a2, s3, sp
                  addi         s11, ra, 1836
                  slt          ra, s9, t6
                  addi         s9, gp, -265
                  srai         s9, s1, 18
                  lui          t1, 669896
                  slt          tp, a2, a7
                  addi         a4, s0, -1459
                  auipc        s9, 505952
                  and          s8, s5, t1
                  srli         s5, s8, 27
                  lui          a7, 251611
                  xori         a1, t6, 601
                  xori         s2, t4, -1153
                  sra          s4, s9, s3
                  add          tp, a4, s2
                  ori          t4, a4, -1862
                  xori         t6, sp, -1918
                  slli         zero, t5, 29
                  slti         t5, s8, -9
                  sltu         tp, ra, s2
                  addi         t6, a0, 1875
                  addi         t0, s2, -1376
                  sub          a2, sp, s9
                  add          s2, a5, s7
                  addi         s5, s10, -1098
                  xori         a0, gp, -1853
                  srl          a1, t0, a0
                  sll          a2, s10, s3
                  add          s8, s4, a7
                  or           s11, a5, t2
                  srli         t0, s7, 6
                  and          a2, gp, a7
                  addi         s7, t0, 1860
                  srl          s11, a3, gp
                  sltiu        s11, tp, -1353
                  nop
                  ori          t5, a3, 1542
                  or           a7, s2, a3
                  slt          s5, a3, s2
                  sll          zero, a3, tp
                  addi         a1, s7, 1657
                  slli         t0, zero, 29
                  sltu         ra, a0, s10
                  slt          s2, sp, s6
                  lui          s9, 441889
                  sll          a7, t4, s11
                  sll          s4, a1, tp
                  sra          gp, ra, ra
                  sltu         s11, t4, s7
                  sltiu        t5, t4, -1943
                  andi         t2, t2, 291
                  ori          t1, t4, 933
                  sltiu        a1, s0, 268
                  sltiu        a2, s3, 1281
                  ori          t3, s1, -1586
                  or           t0, t5, a6
                  ori          s10, t4, 674
                  add          a4, zero, a5
                  srl          s10, s0, s5
                  sltiu        s8, s11, -92
                  slt          a7, s4, s4
                  lui          t4, 235587
                  lui          a3, 794975
                  srli         s8, t5, 27
                  slti         s2, s3, 1663
                  and          s5, s2, t4
                  lui          a5, 359405
                  sltiu        a6, s2, -458
                  sll          ra, tp, a5
                  or           s7, s7, s11
                  addi         a4, t2, 680
                  add          a6, s4, s2
                  sub          s1, a5, t3
                  slt          a0, s8, a2
                  nop
                  nop
                  auipc        t3, 1007828
                  slt          s8, s7, a6
                  auipc        a5, 786790
                  add          s1, a1, t1
                  or           zero, a1, t0
                  and          s5, a7, a3
                  sltu         t5, t4, s3
                  slt          t6, a0, t1
                  slli         t0, tp, 20
                  sll          a1, s11, t6
                  srl          a4, sp, a6
                  add          a2, a0, a5
                  add          a1, t5, s7
                  srli         t3, a7, 13
                  srli         t0, a7, 25
                  srli         s3, t4, 28
                  sltu         t2, s4, s2
                  slt          s5, t0, s3
                  sltu         s5, a5, t2
                  ori          t4, s9, 1222
                  xor          s5, t3, s3
                  slli         s3, t3, 18
                  slti         t2, a5, -822
                  andi         zero, a3, 458
                  slti         a7, s10, 1495
                  xor          s4, a2, a0
                  lui          s3, 655740
                  sltu         zero, t5, tp
                  sltu         t6, a2, tp
                  lui          s7, 941842
                  sub          a3, a1, s3
                  xori         tp, s4, 283
                  sll          t1, a5, s6
                  slli         t0, s8, 14
                  sltiu        s9, t4, -1488
                  and          tp, a4, s11
                  ori          a7, t3, 731
                  sltu         a5, t4, a0
                  sltu         s8, s2, s11
                  lui          t0, 628249
                  andi         s10, a2, 44
                  srai         t2, s0, 26
                  srli         s3, a4, 29
                  xor          s8, zero, gp
                  auipc        t2, 585037
                  auipc        a5, 330139
                  srli         a3, zero, 4
                  add          t1, s5, a2
                  slli         s7, s3, 8
                  srli         s1, ra, 5
                  li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_7
                  li           t6, 0xffffffff
                  li           a2, 0x0
                  li           s1, 0xffffffff
                  li           a0, 0x616a3f77
                  li           s2, 0xffffffff
                  li           gp, 0x0
                  li           t4, 0x80000000
                  li           s8, 0xffffffff
                  li           a1, 0x9996952b
                  add          a5, t6, t4
                  auipc        s1, 498507
                  add          a0, a5, s1
                  add          t6, s1, t6
                  add          a2, s1, t6
                  lui          t6, 777545
                  auipc        gp, 906611
                  auipc        gp, 1020731
                  add          s8, a1, a5
                  sub          s8, s1, s8
                  lui          a1, 912203
                  add          a0, s2, a2
                  auipc        gp, 436004
                  lui          s8, 278549
                  sub          t6, a2, a5
                  nop
                  add          a5, a2, s2
                  auipc        a0, 202920
                  auipc        a0, 756192
                  lui          a2, 262776
                  lui          t4, 430716
                  addi         s1, t4, 868 #end riscv_int_numeric_corner_stream_7
                  srli         s2, tp, 4
                  and          t1, t3, t3
                  ori          a2, t6, 53
                  sltu         tp, s5, t4
                  sub          s2, sp, s6
                  srai         s1, a2, 26
                  sll          t4, s5, s11
                  sub          t1, s6, t2
                  slti         s3, gp, 865
                  or           s5, s9, s10
                  ori          s3, a0, 45
                  ori          a6, t5, 1203
                  ori          gp, t0, -610
                  sra          gp, s7, a5
                  slli         zero, s2, 17
                  sra          ra, ra, s9
                  xori         s1, a0, -1172
                  srai         s9, a0, 20
                  add          gp, a2, s11
                  or           a5, s5, t5
                  slt          t3, s11, zero
                  ori          s8, ra, 26
                  srai         a4, a4, 20
                  srai         gp, sp, 31
                  xor          s5, a1, t1
                  addi         a6, t2, 186
                  and          a6, zero, tp
                  sltiu        t2, zero, 1573
                  slti         s11, s3, 538
                  auipc        a3, 547020
                  sub          a5, t0, s10
                  ori          s8, a7, 1624
                  sub          s5, t4, a4
                  andi         s2, a5, 660
                  xor          a0, a7, s9
                  slti         t2, a0, 1753
                  andi         a5, t4, 162
                  sltiu        s4, t3, -1267
                  nop
                  sub          a4, gp, t4
                  srl          s9, s4, a5
                  addi         a0, s2, -1938
                  sra          a4, t4, s7
                  xor          a3, s5, s1
                  ori          a6, s7, -1907
                  xori         a4, t2, 946
                  sub          a6, s11, tp
                  slti         s7, t5, 795
                  andi         a5, s3, -1540
                  addi         a0, a5, 732
                  andi         a5, t1, -786
                  ori          a0, s3, 1895
                  xori         s5, s11, -1063
                  xori         a4, t3, 1079
                  slt          tp, gp, t3
                  xor          t2, a3, s5
                  slt          t4, a7, s1
                  ori          s8, t2, 1012
                  lui          gp, 10288
                  slti         tp, s4, 1679
                  sltu         a2, t3, a0
                  srai         ra, s0, 3
                  xori         s7, a1, -1937
                  sltiu        a4, gp, 660
                  or           t2, t4, s2
                  xor          zero, s5, a4
                  sra          s9, s5, s10
                  srl          a5, sp, t0
                  sltu         t2, s5, sp
                  addi         s11, a3, 363
                  srai         t3, t6, 31
                  srl          ra, s0, s8
                  slti         ra, s9, 883
                  srl          a0, s8, s4
                  addi         a6, s9, 1175
                  add          tp, a1, s3
                  or           ra, t2, s10
                  ori          t0, t4, 211
                  auipc        s5, 514994
                  sltiu        s8, a3, 793
                  xori         t1, t4, 66
                  or           a6, s2, s9
                  srai         a2, a4, 3
                  add          s3, gp, t0
                  xor          s8, gp, s6
                  slli         s5, s11, 16
                  or           a7, s1, s6
                  add          ra, t5, t2
                  sltiu        a4, zero, 1484
                  andi         s1, s8, 797
                  srai         a4, s3, 31
                  slti         a0, t3, -1880
                  andi         a1, s4, 273
                  ori          s9, sp, -722
                  nop
                  sltu         a6, s8, sp
                  sltu         t1, s9, t4
                  sra          a3, a3, a7
                  ori          a3, t6, 1988
                  srli         s11, a0, 30
                  sltiu        t0, tp, -1649
                  xori         s4, zero, -1124
                  sltiu        t5, s8, -551
                  add          a4, s7, s2
                  sra          s3, s5, t0
                  slli         gp, s0, 27
                  sll          t5, t0, a1
                  slti         tp, s0, -637
                  sltu         s3, t6, a4
                  slli         t1, s2, 7
                  srl          t3, s8, sp
                  nop
                  addi         ra, s8, 106
                  xori         s5, sp, -270
                  slti         s11, a4, -1868
                  sll          t3, s10, t1
                  sltu         s1, a5, s6
                  srai         a7, a4, 21
                  sra          t0, s10, t1
                  sub          zero, t6, a1
                  ori          s10, s9, 967
                  addi         ra, a0, -1542
                  srli         tp, s10, 22
                  srl          s9, a5, t6
                  nop
                  add          s10, t2, s5
                  sltu         a1, a4, a6
                  andi         a5, a0, 392
                  sra          s10, a4, a5
                  xor          t6, a1, sp
                  and          gp, s1, tp
                  sltu         s5, t1, ra
                  sll          s2, s4, s5
                  or           s11, ra, s7
                  ori          gp, a5, -1392
                  srai         s10, t2, 20
                  srl          t3, s10, s5
                  nop
                  sltiu        s10, s10, -793
                  xori         a1, s4, -2027
                  xor          a3, a5, s2
                  xor          s10, s3, t2
                  addi         t3, gp, -1204
                  add          t3, t2, a3
                  add          a6, s4, a4
                  sub          t1, s2, t1
                  lui          s7, 713721
                  andi         ra, s4, 1092
                  xori         a3, a7, 219
                  sra          s2, t5, s3
                  sra          ra, t4, a6
                  auipc        a7, 291228
                  slt          a7, t2, t2
                  sltu         gp, s2, s10
                  addi         tp, s5, 1464
                  slt          t1, s10, s3
                  nop
                  sra          ra, s11, s4
                  srai         s3, s3, 17
                  and          s11, t4, s4
                  sub          t1, t4, a3
                  srl          a6, a5, s10
                  xori         a2, a3, -1102
                  xor          s11, s4, t2
                  or           gp, ra, s4
                  slli         s7, a1, 29
                  and          a0, s2, a6
                  slti         t2, s3, -1594
                  or           a1, t4, s4
                  addi         a1, a4, 709
                  lui          s5, 930342
                  lui          s11, 914323
                  or           s4, a4, a7
                  sltiu        t3, s9, -1448
                  sra          a1, s10, t5
                  sll          a0, a3, a3
                  slt          s3, t0, s5
                  add          t0, s9, s8
                  srai         t1, s8, 18
                  xor          t3, s0, sp
                  xor          s9, a3, tp
                  ori          s1, t4, -55
                  add          a1, t2, s4
                  xor          tp, a5, s1
                  slli         tp, a3, 28
                  slti         t3, sp, 321
                  addi         ra, s10, -1602
                  sltiu        s3, s1, -1427
                  sub          s10, s4, ra
                  sra          t2, t0, s5
                  srl          s10, s1, s5
                  lui          s8, 968542
                  sub          s7, a4, zero
                  add          a7, s4, ra
                  sltu         t5, s3, t0
                  slti         a0, a2, -579
                  and          zero, t0, s9
                  auipc        gp, 557043
                  add          gp, a3, s9
                  slti         s2, gp, 1246
                  auipc        s9, 71745
                  andi         s5, sp, -1428
                  auipc        t0, 417711
                  and          ra, a5, tp
                  and          t5, s10, ra
                  auipc        t1, 896187
                  andi         t2, sp, 409
                  andi         t4, t2, -1975
                  xor          a3, a4, t4
                  nop
                  srli         s9, t2, 14
                  sltiu        s9, s0, 1408
                  srai         t3, t2, 14
                  srli         s11, s9, 11
                  srl          s8, a6, s2
                  srl          a5, ra, s8
                  sra          s10, s11, s11
                  slti         a5, s11, -330
                  auipc        s11, 946243
                  andi         s8, a5, -710
                  slt          s8, s5, s0
                  auipc        t1, 126716
                  ori          s4, s9, 671
                  sub          s8, s1, a0
                  andi         t5, t6, 1875
                  addi         zero, s4, -1034
                  or           s10, tp, ra
                  ori          a5, s5, 980
                  nop
                  and          s11, s6, s9
                  xor          s3, a3, s11
                  slli         ra, s3, 30
                  and          s1, tp, t5
                  or           s4, a7, t4
                  lui          s4, 228939
                  sra          t3, s7, t0
                  nop
                  sll          t2, sp, sp
                  andi         s4, a2, -962
                  srai         t1, s9, 31
                  sll          a7, s0, t5
                  slt          s10, a2, s3
                  nop
                  xor          t0, gp, s4
                  and          zero, s9, s7
                  auipc        s11, 883159
                  nop
                  sra          s4, sp, a3
                  srli         t3, s11, 0
                  sll          s3, a4, t6
                  slli         a7, t0, 18
                  sltiu        t3, zero, -1203
                  andi         t5, gp, 629
                  srl          t5, s4, s8
                  nop
                  sltiu        a6, s7, -646
                  ori          t6, s3, -836
                  sub          a1, a6, t0
                  srai         t4, s3, 25
                  slli         tp, ra, 6
                  auipc        s9, 337417
                  ori          s1, t1, 856
                  ori          zero, s11, -896
                  xori         ra, t2, 2047
                  sltiu        s2, a4, -721
                  sltu         s2, a5, s0
                  or           a7, s7, t4
                  or           a4, s4, s8
                  addi         t0, a2, 95
                  add          s11, ra, sp
                  or           s10, a4, zero
                  or           t3, a1, t0
                  addi         s11, a1, 869
                  srl          zero, t3, a1
                  srai         t6, s5, 8
                  sltiu        t0, s1, -857
                  slt          t1, t5, a3
                  auipc        ra, 673128
                  addi         a5, ra, -1806
                  xori         s5, a2, -1114
                  srl          a7, t6, s10
                  or           t0, tp, s7
                  sltiu        t6, a5, -200
                  add          t5, s11, s11
                  xor          a1, ra, sp
                  addi         s10, s2, 1990
                  xor          a1, tp, s5
                  srai         t3, a7, 11
                  andi         t3, s11, -300
                  lui          a0, 854098
                  sub          a7, t2, t0
                  sltiu        t6, a0, 846
                  xor          t1, a2, a4
                  addi         s9, a2, 622
                  srl          s8, a2, t0
                  sltu         tp, a7, t6
                  sub          t1, sp, s10
                  xor          a7, s6, a1
                  ori          t6, s5, 1375
                  and          a0, a4, t3
                  sltiu        s10, s9, -686
                  xor          a7, sp, a0
                  and          t2, a4, s5
                  slt          ra, a7, a4
                  add          t2, sp, ra
                  xor          t1, s5, t6
                  sll          s5, s1, s10
                  sra          t4, a3, ra
                  addi         s3, t3, -1997
                  add          gp, ra, t4
                  nop
                  sltiu        t6, a1, 1740
                  lui          a0, 715509
                  and          s9, s8, a7
                  addi         s10, ra, -61
                  lui          ra, 167387
                  or           t0, s0, a3
                  ori          a2, s0, 558
                  addi         s11, t0, -1919
                  srli         gp, s2, 11
                  add          a1, s0, s5
                  nop
                  xor          t4, t5, a0
                  xor          t6, s1, t6
                  andi         s1, s9, 69
                  andi         t6, a7, -99
                  sll          a2, s1, s10
                  addi         t0, s2, -481
                  sra          s10, s3, a6
                  srl          a5, s2, t6
                  add          a5, tp, s6
                  add          s10, s2, a5
                  lui          a1, 151952
                  and          s4, a3, a5
                  slli         t1, s5, 7
                  ori          t0, s5, -976
                  nop
                  and          a2, a1, s10
                  auipc        s3, 776051
                  auipc        t5, 533232
                  slt          t3, a7, t1
                  nop
                  srl          a3, s2, a7
                  or           s2, s4, a7
                  andi         t4, t3, -1959
                  sra          t3, s0, ra
                  lui          t4, 149954
                  sltu         a4, s8, t3
                  auipc        t1, 542163
                  auipc        s9, 76436
                  srl          gp, gp, s7
                  sra          a7, s7, a1
                  slli         gp, s0, 19
                  add          t2, a4, a2
                  xor          t6, gp, t3
                  lui          t4, 472559
                  srl          a3, s6, s5
                  sltiu        zero, t6, -1388
                  sra          a7, s8, a7
                  sub          s11, zero, t6
                  xor          t5, s8, s2
                  andi         a0, s3, -1494
                  slli         t3, a1, 18
                  xori         ra, a5, -1377
                  sll          a0, a6, a6
                  slt          s9, s1, s1
                  srai         t4, t4, 18
                  sra          s1, s4, s4
                  add          s2, s4, a3
                  slti         s10, t3, -304
                  sra          s1, t2, s9
                  lui          a0, 203771
                  sll          s2, t2, s8
                  addi         a3, s7, 977
                  lui          t0, 214095
                  and          t0, a6, s5
                  sltiu        s5, a6, 1888
                  xor          s4, s10, t4
                  srli         gp, a4, 7
                  sll          a0, tp, t3
                  and          ra, t3, a0
                  srai         s9, a6, 1
                  slli         a5, t3, 16
                  lui          t1, 970287
                  srl          a2, s10, a7
                  slli         ra, zero, 23
                  ori          a6, a6, 76
                  slt          t0, s8, s8
                  xor          s5, t0, t5
                  ori          a7, t0, 918
                  and          t0, t1, a7
                  add          zero, zero, s1
                  lui          s4, 701475
                  slti         gp, a4, -1384
                  ori          t3, t6, -1078
                  sltiu        zero, s5, -490
                  xor          tp, t6, s8
                  srl          s9, t0, a3
                  slli         gp, s2, 16
                  xori         a7, s3, 1408
                  srl          s3, s6, s11
                  lui          s9, 613704
                  auipc        s10, 447959
                  sll          gp, s3, t6
                  srai         t4, a2, 14
                  slti         t0, s3, -951
                  sub          a4, tp, t2
                  sltu         s1, a0, a4
                  addi         s8, zero, -1348
                  srai         t2, s9, 21
                  slti         t1, t5, 1866
                  andi         a4, s7, 1622
                  sltiu        gp, a7, -627
                  slti         s9, a5, -2014
                  slli         s5, t1, 10
                  slli         a2, t5, 11
                  srl          a2, a0, a6
                  add          a6, a6, t0
                  srli         a3, t4, 14
                  sltiu        a2, s6, 253
                  srai         a1, s5, 31
                  xori         t0, tp, -504
                  srai         a1, t2, 30
                  xori         s11, t5, 2044
                  srai         a3, s11, 6
                  lui          s9, 475116
                  xori         s1, s9, -2004
                  lui          ra, 463605
                  or           t0, s9, s0
                  srl          s8, sp, t5
                  srli         a3, sp, 0
                  and          gp, s5, a2
                  srai         s5, t1, 10
                  add          zero, s4, s4
                  srl          s5, a5, s10
                  and          s7, s1, s9
                  ori          a7, s4, 1998
                  slti         s7, t6, 2047
                  slli         t2, s5, 0
                  addi         t2, s1, 1415
                  slti         a4, a7, -1591
                  addi         zero, t1, -1932
                  slt          a2, t0, t1
                  sll          zero, a0, s1
                  slt          t6, t3, s11
                  lui          s4, 110511
                  sll          a6, a6, t2
                  sltu         a4, t4, s11
                  nop
                  sra          t0, t6, s0
                  addi         t5, s4, -1091
                  srai         a5, a4, 22
                  slli         a5, sp, 2
                  and          s7, a4, s6
                  sltu         s3, t5, s9
                  srl          a6, s1, zero
                  slt          a6, t0, s6
                  sltu         s11, s3, t3
                  nop
                  srl          s9, gp, t6
                  andi         s11, a6, 1560
                  addi         a4, t1, 1242
                  srai         s1, a4, 0
                  sltiu        tp, s11, -825
                  and          gp, s8, t2
                  slt          a6, a3, a5
                  lui          a4, 369025
                  or           a1, zero, ra
                  and          s8, a4, s3
                  slti         ra, gp, 194
                  and          a1, tp, t1
                  sub          t3, sp, t3
                  slt          a7, a1, a2
                  xor          t1, s0, a2
                  sra          t5, s7, a1
                  lui          t1, 624612
                  srli         s7, gp, 7
                  srli         t6, a2, 29
                  srl          a6, s6, tp
                  sub          s2, s11, s2
                  sltiu        a7, t2, -1608
                  lui          t2, 8383
                  andi         t6, a4, 1592
                  addi         s4, a5, -557
                  sll          ra, a3, s6
                  slt          t0, s2, a5
                  srai         t2, t3, 9
                  srai         zero, t5, 5
                  slli         a3, t3, 6
                  add          t1, zero, ra
                  xori         tp, a5, -684
                  nop
                  ori          s3, t0, 686
                  sra          t5, sp, t0
                  sltu         a7, tp, t4
                  lui          a5, 1030034
                  srli         t3, t2, 12
                  nop
                  sltiu        a1, t5, 586
                  andi         a7, t2, -946
                  srai         tp, s6, 19
                  auipc        s4, 962148
                  sub          s4, t2, a3
                  xor          t3, tp, sp
                  slt          tp, ra, tp
                  or           a5, t3, s4
                  srli         a4, s3, 0
                  and          s5, t5, a2
                  ori          t2, t4, 1980
                  or           a5, s0, s3
                  sltiu        a1, s4, -1702
                  addi         a7, t5, 1288
                  srli         s10, t2, 30
                  sra          t6, a5, a3
                  or           s5, tp, a2
                  xori         s10, ra, 288
                  sra          s11, zero, t6
                  addi         t3, t4, -1882
                  sll          s4, s0, ra
                  xor          s10, a7, zero
                  sra          zero, a1, ra
                  slt          ra, s10, s0
                  xori         s4, s0, -342
                  or           a7, sp, t2
                  sltu         a6, a4, s0
                  addi         a1, a4, -740
                  sll          s4, t6, a1
                  andi         a1, t6, -959
                  xor          a2, ra, a6
                  srli         ra, s0, 19
                  addi         s8, s4, -1151
                  lui          t1, 216030
                  addi         s5, a5, 854
                  sltiu        tp, a6, 587
                  lui          s10, 682723
                  nop
                  sub          t3, a7, a7
                  sltiu        t5, a6, 575
                  slli         s5, s5, 22
                  slli         a1, s1, 16
                  add          s9, a4, s7
                  auipc        t1, 743510
                  srl          s7, s7, s5
                  xori         t5, ra, -1749
                  xor          s5, t2, s4
                  xor          a0, t3, s11
                  slli         a7, s1, 7
                  srai         t2, a3, 14
                  lui          s3, 1021223
                  nop
                  xori         a2, t4, -1194
                  slti         t6, t6, -310
                  sltu         s5, s2, a2
                  slt          a1, t1, t6
                  sltiu        a2, t6, 1701
                  sltu         a6, s4, s10
                  andi         s11, s10, 171
                  xor          s8, s11, s7
                  lui          a0, 897818
                  auipc        t0, 246272
                  add          t3, a3, a3
                  auipc        a7, 946033
                  ori          a5, a3, -1340
                  sltu         a6, sp, s1
                  sltu         s9, s1, a6
                  sra          tp, sp, tp
                  andi         s2, s4, -250
                  slli         t6, t2, 10
                  slli         t0, a2, 11
                  auipc        s11, 84079
                  slti         s8, t6, -417
                  sltu         s3, s7, t2
                  nop
                  add          a4, s5, ra
                  xori         gp, s11, 977
                  sll          t3, s3, t2
                  and          t1, s5, a5
                  add          s4, a7, s9
                  xori         tp, t5, -757
                  or           s10, a5, s9
                  sra          t4, s5, s2
                  srai         t4, t0, 8
                  nop
                  nop
                  slli         a6, a3, 4
                  slti         s2, t0, 120
                  or           t2, t5, s9
                  slti         a0, t4, -202
                  srl          t2, s7, zero
                  andi         a1, t6, 633
                  auipc        t5, 139187
                  nop
                  xori         s2, s9, 1348
                  srl          a4, t6, t6
                  and          t0, s4, a6
                  srli         s9, t3, 16
                  nop
                  sub          t4, a1, s5
                  sll          t3, s7, t3
                  sra          s8, s8, a4
                  sra          gp, s7, tp
                  nop
                  srli         a4, s11, 8
                  srai         s7, ra, 13
                  sll          s2, a4, a4
                  slti         zero, a5, -1660
                  slli         t3, t2, 6
                  xori         tp, s6, 1163
                  sltu         t4, s11, a0
                  nop
                  and          t6, t3, s10
                  slli         s9, t1, 2
                  slt          a7, sp, a5
                  srli         t1, a1, 10
                  auipc        s10, 160729
                  sltiu        t1, t3, 604
                  slti         s9, sp, -1279
                  sra          a3, t6, a7
                  add          t3, zero, t5
                  andi         t3, s2, -912
                  addi         ra, a1, -694
                  slli         t0, t1, 30
                  sltu         a4, a4, t5
                  and          a7, a4, t2
                  auipc        s7, 855757
                  sll          a1, s6, a6
                  or           s7, a0, a2
                  or           a4, a2, s5
                  andi         s7, a5, 291
                  sra          a1, a3, tp
                  srli         t1, gp, 24
                  auipc        a1, 53906
                  add          t3, s7, sp
                  ori          s4, a2, -1458
                  or           t0, tp, s0
                  nop
                  ori          zero, s10, 1561
                  nop
                  srl          s11, s7, tp
                  srli         s10, a2, 9
                  ori          t3, t6, -540
                  srli         s9, s11, 6
                  add          t2, s6, s7
                  srli         s3, s10, 22
                  nop
                  sra          t1, a2, a6
                  slti         t1, a5, -1746
                  slt          s9, a4, t2
                  add          a7, s0, s11
                  slli         a5, t1, 23
                  srli         t2, tp, 18
                  srli         t0, t2, 1
                  srli         t6, a1, 13
                  auipc        tp, 393841
                  andi         t2, sp, -1932
                  slli         a3, s7, 4
                  add          a4, s9, a3
                  sll          s11, s10, ra
                  sra          a1, s5, s4
                  sll          a0, s7, a2
                  lui          t4, 424170
                  nop
                  sll          t4, s0, tp
                  slt          a1, s3, a6
                  srai         a3, t1, 30
                  sub          s2, s7, s2
                  sll          t1, t6, t3
                  and          ra, t5, s9
                  srl          s11, t3, s1
                  and          t3, gp, t0
                  sltu         s1, s6, t2
                  sltu         t1, a3, t3
                  or           s1, t1, a4
                  auipc        t0, 27983
                  auipc        ra, 104479
                  nop
                  sltu         t0, a1, a0
                  lui          gp, 424269
                  sra          s9, t6, s1
                  sra          a1, s5, s7
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           t0, 0x80000000
                  li           a0, 0x0
                  li           tp, 0x80000000
                  li           s10, 0x0
                  li           s7, 0x80000000
                  li           s1, 0xffffffff
                  li           t2, 0x0
                  li           a3, 0x80000000
                  li           s8, 0x0
                  auipc        tp, 962076
                  add          t0, s10, s8
                  nop
                  addi         t2, t0, -1193
                  nop
                  add          s10, tp, s7
                  add          t2, s8, s10
                  auipc        t2, 229952
                  auipc        s10, 581323
                  auipc        s10, 839645
                  addi         s8, s8, -839
                  nop
                  add          a6, t0, t2
                  nop
                  addi         s10, s8, 563
                  nop
                  auipc        t2, 984406
                  lui          t2, 460071
                  addi         s7, t2, 1067
                  addi         a0, t0, 271
                  addi         s10, a6, 216
                  sub          a3, a3, s1
                  lui          s10, 360000
                  sub          tp, a0, a6
                  add          s8, a0, a3
                  sub          a6, s10, s10
                  nop #end riscv_int_numeric_corner_stream_2
                  sll          t1, t4, a4
                  slti         a1, s1, -641
                  ori          s9, a0, 1592
                  slt          s9, s3, tp
                  sltiu        a5, s5, -542
                  slti         s10, s4, -546
                  ori          zero, a6, -1540
                  slti         t5, t4, -920
                  srl          s4, s5, s0
                  andi         a4, a1, -1355
                  auipc        a1, 290487
                  or           a2, a6, t0
                  sra          zero, t4, s2
                  nop
                  sltu         t0, t3, t3
                  add          s10, a3, t2
                  srai         a3, s11, 5
                  sra          gp, a4, tp
                  slt          s1, t5, s7
                  li           tp, 0x961c14b7 #start riscv_int_numeric_corner_stream_13
                  li           gp, 0xc1ff7255
                  li           t5, 0x8ab15b8a
                  li           s10, 0x80000000
                  li           a3, 0x80000000
                  li           a1, 0xffffffff
                  li           s4, 0x80000000
                  li           s9, 0x1307b97
                  li           t4, 0x0
                  li           a5, 0xe6491f63
                  lui          tp, 751882
                  add          s9, t5, a1
                  addi         tp, a5, -353
                  auipc        a3, 328014
                  lui          s4, 735430
                  nop
                  add          a5, t4, s10
                  sub          gp, s4, s9
                  nop
                  lui          tp, 101901
                  sub          s10, s9, a5
                  auipc        tp, 817458
                  sub          t5, a1, gp
                  nop
                  nop
                  lui          s10, 80402
                  lui          a3, 277329
                  nop
                  lui          gp, 486777
                  sub          s9, s10, gp
                  sub          a5, a5, a3
                  lui          a5, 522246 #end riscv_int_numeric_corner_stream_13
                  or           t6, t4, t5
                  slli         a7, s11, 21
                  slti         t3, a5, 644
                  sll          a3, zero, a2
                  ori          s7, tp, -1942
                  srai         a6, t4, 26
                  slti         s5, gp, -1491
                  slti         t5, s3, 463
                  xor          s3, ra, s8
                  auipc        s5, 716996
                  ori          a5, a7, -1554
                  srli         s9, t5, 27
                  sltu         ra, s11, a1
                  xori         a5, a0, 1143
                  slli         t1, a0, 16
                  slt          s11, t2, s1
                  nop
                  slti         gp, s3, -1057
                  sltu         t6, s9, ra
                  srl          s1, gp, a7
                  addi         s9, a0, 1748
                  slti         s7, s2, -1092
                  ori          t1, s6, 732
                  addi         a7, s6, -125
                  sra          a2, a3, t4
                  srli         t3, s2, 16
                  or           a5, t2, s7
                  slt          t4, a4, t3
                  srl          a5, s8, s4
                  andi         t3, s0, -1019
                  srl          tp, ra, a2
                  slti         s11, s2, 594
                  addi         a7, s0, -594
                  slti         a7, t4, -34
                  sltu         t0, a1, t6
                  addi         t1, s6, -959
                  srl          s9, a6, a2
                  nop
                  sll          a5, s7, s7
                  lui          gp, 129774
                  slli         s1, sp, 20
                  srai         ra, t1, 16
                  andi         a0, a4, 129
                  srai         a4, zero, 26
                  sltiu        a6, zero, -1142
                  srli         s3, t2, 14
                  lui          a0, 202933
                  and          a7, s1, a4
                  slt          s4, t5, s11
                  sub          a0, t1, ra
                  slli         a7, sp, 27
                  srl          s4, s6, t6
                  and          a5, a7, a4
                  ori          a4, t0, 1026
                  sltu         a3, s1, t5
                  srli         s10, s8, 17
                  or           s3, s3, a2
                  srai         tp, s1, 19
                  add          s3, a5, tp
                  addi         ra, tp, 806
                  srl          t2, t0, t4
                  sltiu        a0, a3, -1684
                  sub          ra, ra, s6
                  sltiu        s1, s7, -323
                  ori          t5, t2, -853
                  auipc        t2, 30433
                  slt          t0, gp, s6
                  lui          s8, 981981
                  srl          t4, ra, t6
                  andi         t5, a1, 134
                  or           a2, s3, s10
                  or           a4, s5, zero
                  srli         zero, t6, 25
                  srli         a2, s10, 23
                  sub          s8, a4, s7
                  addi         a1, a0, -1881
                  sll          a1, s3, a0
                  sltiu        t2, t2, 547
                  nop
                  andi         t0, s2, -1457
                  and          a7, t4, s8
                  sub          s3, s11, s0
                  or           s4, s2, sp
                  sltiu        a6, t0, -177
                  sub          t2, s10, t6
                  addi         s4, gp, -1650
                  slli         a7, a5, 14
                  sub          a0, ra, s9
                  srli         s7, t3, 10
                  sra          tp, t2, a2
                  nop
                  andi         a2, s6, -1417
                  nop
                  sltu         t2, a7, s6
                  xori         s5, s6, 880
                  sll          t5, t0, sp
                  slti         a6, s9, -507
                  srl          a0, sp, tp
                  auipc        a2, 785477
                  srai         t6, a7, 21
                  srai         s7, s2, 0
                  srli         a0, t2, 10
                  sltiu        s7, a3, 394
                  add          a6, s9, s10
                  addi         tp, t4, 269
                  sll          s5, s7, s0
                  sub          t0, a1, s5
                  ori          a1, s6, 1281
                  sub          t2, zero, a0
                  sll          t6, a2, ra
                  add          a7, t0, sp
                  lui          a6, 222719
                  sltiu        a5, t1, 910
                  sub          ra, s7, s5
                  sll          a2, zero, t5
                  ori          s11, a6, -1975
                  xori         zero, s0, -1402
                  add          t5, s0, s4
                  sltu         t6, zero, s11
                  sra          t0, a7, s0
                  slli         t5, a6, 20
                  or           s1, t1, s3
                  sltiu        t3, s5, -491
                  srli         t4, s6, 21
                  auipc        s9, 419337
                  lui          a0, 754445
                  lui          s5, 908411
                  sll          gp, s8, t6
                  sra          gp, s11, t0
                  slt          s5, a5, t6
                  add          s7, sp, s9
                  xori         s1, t2, -836
                  sltu         t6, s1, s9
                  xori         s11, s10, -966
                  andi         s4, a4, 1547
                  sltiu        gp, s0, 473
                  nop
                  sra          t0, a6, zero
                  sltiu        a5, gp, -1826
                  slti         tp, a4, -1085
                  slli         s7, a3, 25
                  ori          t4, zero, -563
                  or           s5, t4, s9
                  ori          t0, s4, -919
                  auipc        s1, 430383
                  and          s11, s7, ra
                  ori          t4, a0, 589
                  sltiu        s7, s7, 1843
                  srli         a6, s2, 3
                  srai         t1, a1, 6
                  slti         zero, a6, -1730
                  slti         a2, a0, -724
                  nop
                  addi         s8, t0, -762
                  and          a0, t0, a0
                  andi         ra, t1, -902
                  xor          a5, s5, a1
                  srl          s5, a3, t3
                  srai         s11, t2, 21
                  srl          t2, gp, t6
                  slli         a7, tp, 2
                  sltu         t1, s9, gp
                  xor          a1, zero, a0
                  slti         s10, t1, -465
                  slli         t0, s4, 10
                  addi         t4, a5, 929
                  srai         s7, s8, 14
                  srl          a7, s2, s0
                  lui          s3, 779266
                  nop
                  slt          a6, t4, t0
                  addi         gp, t2, -132
                  or           s1, s1, a0
                  add          a6, t3, s10
                  srli         s10, sp, 19
                  sub          s10, s10, sp
                  addi         a2, a1, 1677
                  srai         s1, s9, 19
                  or           a2, a3, s1
                  xori         t6, t3, -1910
                  ori          t1, a5, -1000
                  slli         s9, s9, 29
                  addi         s11, s8, 1665
                  xor          t6, zero, sp
                  slt          t3, a3, s11
                  ori          t3, t4, -475
                  slti         a5, t2, 204
                  and          a5, s0, tp
                  srai         a7, s11, 19
                  slli         a6, tp, 19
                  slli         t3, s2, 16
                  nop
                  sub          a3, t3, a1
                  sltiu        s2, a4, 1740
                  addi         t1, a1, 888
                  add          a0, t1, t5
                  sll          s4, tp, s4
                  lui          zero, 826108
                  srl          t3, s8, s5
                  srli         t1, s2, 0
                  or           zero, a3, s9
                  ori          s9, t2, -689
                  srli         t3, s0, 26
                  slli         a7, s0, 6
                  and          s9, a3, s8
                  addi         t2, a7, -2020
                  slli         ra, a2, 1
                  and          a0, a1, t3
                  sltu         tp, a1, s8
                  sub          a5, a7, a6
                  andi         s10, a0, -230
                  srli         t4, t2, 29
                  addi         ra, a3, -2014
                  srl          a3, zero, a2
                  ori          t0, a6, 269
                  ori          zero, s7, 1775
                  xor          a5, s9, s7
                  addi         t0, s1, 2001
                  nop
                  slli         zero, gp, 19
                  auipc        gp, 700699
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           s3, 0x0
                  li           gp, 0xf46b8ad2
                  li           t5, 0x2786a2d0
                  li           s5, 0x66dbc04d
                  li           s9, 0x80000000
                  li           a2, 0x80000000
                  li           t2, 0x80000000
                  li           a1, 0x7ddb6918
                  li           s4, 0x80000000
                  addi         s5, s8, 713
                  nop
                  sub          t2, s4, s8
                  addi         s8, t2, 201
                  lui          s5, 589335
                  addi         a2, s3, -400
                  lui          s5, 349742
                  auipc        a2, 886431
                  add          gp, gp, a1
                  addi         a1, t5, -1324
                  auipc        t5, 122147
                  lui          s8, 962552
                  lui          t2, 582830
                  add          s4, a1, s3
                  sub          a2, gp, a2 #end riscv_int_numeric_corner_stream_18
                  ori          a6, t5, -517
                  add          a7, s5, a5
                  sub          t6, t2, tp
                  or           t4, a6, a3
                  or           s5, zero, s10
                  sltu         s8, s2, t5
                  ori          s1, t4, 806
                  and          a6, s2, s8
                  add          t0, s4, s1
                  xori         ra, t2, 371
                  sra          s4, tp, s7
                  sltiu        a6, a1, 608
                  ori          s10, t1, 1407
                  slt          a7, s5, s10
                  sltiu        s4, a5, -310
                  srai         s2, s5, 22
                  xor          s11, a3, s4
                  sll          t0, t2, t6
                  and          a4, a4, ra
                  sub          t1, t0, t0
                  slt          a2, s5, s5
                  addi         t1, t1, 1269
                  srli         a5, tp, 9
                  auipc        t2, 153682
                  auipc        s2, 774707
                  slt          a2, t3, s0
                  slti         a7, s2, 44
                  addi         s1, t6, 925
                  sll          s3, s9, a7
                  xori         a4, s10, 1717
                  xor          a3, s3, t1
                  sra          s2, s2, s11
                  ori          a5, s5, 1085
                  or           t6, s8, s1
                  slli         a1, a2, 12
                  addi         a6, sp, 1141
                  sltu         ra, t4, zero
                  sltu         gp, ra, a6
                  auipc        a6, 976509
                  andi         a5, s11, -704
                  or           a5, zero, a4
                  slli         s8, s0, 15
                  sra          t0, s2, gp
                  sltiu        s9, a3, 767
                  nop
                  xor          t6, s1, a5
                  slli         a6, a5, 31
                  sltu         gp, t2, s8
                  ori          s3, s4, 1311
                  addi         s7, s6, 771
                  sub          s10, a1, s3
                  srli         ra, s7, 17
                  add          a3, sp, t5
                  srl          a1, t1, t3
                  and          t1, s0, s10
                  sra          a2, t0, t5
                  nop
                  auipc        t3, 413545
                  sub          s11, s1, a4
                  srli         gp, a4, 31
                  sra          a1, s1, s3
                  xori         s7, a6, -343
                  xori         a4, a0, 1156
                  ori          ra, ra, 1818
                  srl          a4, s4, s0
                  sll          s8, a3, zero
                  xor          s5, s2, s9
                  or           t6, a2, s4
                  srl          s4, tp, a1
                  slt          t0, t1, t2
                  lui          tp, 964659
                  xor          s3, s0, t1
                  andi         s1, t1, 741
                  srli         gp, a4, 20
                  sltiu        tp, t2, -912
                  nop
                  xor          t6, s3, a2
                  addi         gp, s6, 60
                  srai         t1, s6, 25
                  add          a4, s2, a4
                  nop
                  andi         a7, t6, -1842
                  srl          s5, s3, a2
                  sltiu        s7, s10, -705
                  andi         t4, t4, -750
                  xor          a6, s7, a7
                  xori         a3, ra, -1297
                  sltu         s9, gp, s11
                  addi         s9, t3, -1513
                  ori          gp, s10, 630
                  slti         a4, ra, -967
                  xori         zero, t1, 1269
                  srli         gp, zero, 26
                  sltiu        a1, t6, 1069
                  slti         zero, s2, 766
                  sll          s8, a7, gp
                  or           t0, a5, t5
                  sub          s5, t4, zero
                  sub          t5, s7, t6
                  add          a3, a6, s2
                  slli         s7, t0, 7
                  xor          s7, s1, gp
                  or           t0, s8, t4
                  xori         t5, a6, -1634
                  or           a0, a0, sp
                  andi         tp, s0, 1890
                  nop
                  nop
                  slti         a0, s1, 769
                  xor          s1, t2, t5
                  srai         a1, t2, 18
                  or           a1, t5, s9
                  srl          t4, sp, s1
                  srli         s5, a7, 8
                  auipc        gp, 102153
                  xori         s5, tp, 1874
                  srl          a1, tp, s9
                  andi         t0, s2, 1669
                  sltu         s11, a7, s2
                  xori         a7, a1, 1994
                  auipc        s8, 923598
                  srli         s8, a5, 14
                  srli         a2, t4, 11
                  xori         t1, t4, -1064
                  sltiu        s11, t1, -1446
                  slti         t3, t3, 449
                  slli         s1, s7, 27
                  sltu         a7, ra, t2
                  sltiu        t5, t3, 1302
                  srli         a7, t5, 17
                  ori          s1, a5, 1428
                  srl          s5, a7, s2
                  srli         t6, tp, 9
                  or           t5, sp, t4
                  nop
                  addi         gp, a1, 1438
                  auipc        a4, 516433
                  srl          a7, sp, s0
                  or           a4, a2, s7
                  xor          t3, tp, s2
                  nop
                  sll          a4, s4, tp
                  and          s2, t5, a5
                  add          s1, a0, s9
                  slt          gp, a3, t1
                  addi         s2, a2, -1919
                  or           a1, a6, a0
                  or           t0, tp, t3
                  addi         ra, s0, 532
                  sub          ra, a0, a5
                  xori         ra, a7, -518
                  sub          a0, t1, s1
                  add          t5, s8, s8
                  srli         a3, s2, 5
                  ori          a7, a6, 377
                  xori         a3, a1, -1091
                  and          s2, s11, t2
                  sll          s2, s0, gp
                  andi         a6, a6, -1833
                  slt          t6, a4, tp
                  sltu         s3, a7, t6
                  slli         a7, s11, 9
                  slt          tp, zero, t2
                  andi         t0, s4, -1978
                  sll          s2, s6, s11
                  andi         a2, s5, 1789
                  xor          ra, t2, s3
                  xori         zero, s5, -1445
                  xor          a7, a2, s7
                  srli         t1, s7, 23
                  andi         a3, sp, 1852
                  add          t2, s4, a3
                  ori          s9, zero, -61
                  sra          a2, s1, a3
                  sra          t0, zero, t5
                  slt          t4, s11, s3
                  xori         s9, sp, 592
                  slt          gp, s8, s0
                  and          a2, s0, t3
                  slti         gp, s6, 265
                  and          zero, t1, a4
                  slt          s11, a1, sp
                  and          ra, s4, s3
                  slli         t6, t4, 26
                  nop
                  srli         gp, a3, 25
                  and          a5, s3, a6
                  sltu         s1, t2, s6
                  and          s2, s7, a7
                  nop
                  xor          tp, t3, a2
                  auipc        a7, 487399
                  slt          s11, s2, a4
                  and          t5, a0, a5
                  xor          a7, a4, s2
                  slti         a3, s2, -1833
                  nop
                  nop
                  ori          t0, t2, -504
                  auipc        a0, 399732
                  sub          t0, a6, a7
                  srli         a2, t3, 9
                  xor          a6, a1, s8
                  xor          s2, a7, s9
                  sltu         a0, t0, s1
                  addi         t1, gp, 100
                  sra          s10, a1, s8
                  slli         t5, ra, 19
                  andi         t1, s7, 874
                  nop
                  sltu         t6, s6, gp
                  auipc        s5, 928519
                  ori          zero, s11, -888
                  or           s10, s9, a5
                  auipc        s9, 164289
                  ori          zero, ra, 153
                  sub          ra, s4, t3
                  srai         s2, tp, 26
                  srli         zero, a6, 4
                  slti         t4, t6, -285
                  addi         t4, zero, 719
                  sltiu        ra, s1, 1288
                  xor          ra, gp, sp
                  or           t4, t2, s1
                  and          s3, a5, t6
                  add          a6, sp, a1
                  sll          tp, zero, s5
                  andi         s5, t1, 1900
                  ori          s7, t6, 754
                  slti         s10, s9, 1548
                  sltiu        a4, zero, -350
                  auipc        a5, 538919
                  or           t6, a7, gp
                  addi         s11, a7, 580
                  slt          t1, sp, s2
                  auipc        s5, 372071
                  sltu         a5, t0, s5
                  or           a3, s3, s11
                  addi         t6, a5, 1971
                  sltiu        s10, gp, -1599
                  auipc        s4, 242514
                  slti         t3, s2, -1920
                  sub          s3, s8, tp
                  srl          t6, s3, a3
                  xori         a7, s1, 1729
                  add          s11, gp, t1
                  lui          a1, 667176
                  slli         s7, s1, 1
                  srai         t0, t1, 11
                  slt          a3, s0, tp
                  slt          s7, s0, s11
                  xori         t2, a1, 556
                  srl          s2, a7, zero
                  srai         ra, s10, 31
                  and          a4, s8, t5
                  srl          a2, gp, t3
                  xori         t4, s8, 837
                  slli         t2, t1, 12
                  slti         zero, s2, -1679
                  addi         t3, s10, 908
                  add          s3, s3, t1
                  add          s5, a2, s10
                  or           a7, s11, s2
                  slti         a3, zero, -488
                  srl          tp, a2, t5
                  and          s11, s9, ra
                  sltiu        s7, s3, -516
                  xor          s9, tp, a2
                  sra          t5, s11, t4
                  auipc        ra, 370890
                  addi         ra, t6, -413
                  slti         a7, tp, 1000
                  slt          s8, a1, s1
                  auipc        s1, 944105
                  sll          t1, s10, a5
                  lui          a3, 718129
                  sll          t4, t5, a6
                  nop
                  xori         t0, a1, -182
                  srli         s4, t3, 1
                  auipc        s4, 132635
                  or           t2, a0, s11
                  sub          t2, gp, t0
                  ori          s7, sp, -117
                  xor          t4, s11, s11
                  sll          s2, s9, t1
                  sra          s10, s10, a1
                  slli         a2, s0, 29
                  nop
                  srai         t1, sp, 6
                  srl          s4, s1, sp
                  slt          t1, gp, t4
                  ori          s8, t5, 1664
                  lui          a2, 152400
                  add          t0, a3, s5
                  srli         s8, a0, 5
                  nop
                  sub          t6, s2, t2
                  and          t4, s6, tp
                  slt          ra, t6, a4
                  sltiu        t2, s10, 1148
                  slt          s1, a3, s1
                  srai         s4, a1, 21
                  or           s11, a0, gp
                  add          s8, a2, a1
                  ori          a6, a5, 934
                  slli         zero, s4, 28
                  lui          s10, 594774
                  addi         zero, t3, -889
                  sll          zero, s0, ra
                  addi         tp, a4, 1539
                  srl          s1, a1, s0
                  add          t2, t1, t6
                  xori         a2, t1, 2003
                  ori          gp, a3, 57
                  xori         s9, s11, 898
                  sll          ra, t5, a1
                  ori          s3, t4, 51
                  xori         a7, s3, 1525
                  srai         a3, s5, 30
                  ori          t1, ra, 1780
                  sll          t2, a3, t4
                  add          s3, a6, s10
                  ori          t1, t4, 589
                  andi         a7, s10, 169
                  and          t1, t4, s2
                  slti         t4, s7, -248
                  nop
                  xori         t6, s7, 783
                  slli         t3, a0, 17
                  lui          s5, 680482
                  srai         s7, t4, 3
                  slli         a7, t6, 21
                  slli         ra, s5, 4
                  auipc        t5, 56087
                  sltu         s5, a5, a0
                  sltiu        s5, zero, 63
                  auipc        a7, 242050
                  xori         gp, a6, 149
                  auipc        s11, 726862
                  slli         a3, s6, 29
                  nop
                  xor          a7, s5, t3
                  andi         s10, s4, 692
                  xori         tp, s11, -1947
                  slt          t0, s6, t4
                  srl          a2, a1, a5
                  sub          a5, a5, s9
                  ori          a2, a5, 790
                  andi         s4, s11, 349
                  sltiu        a2, a0, 1210
                  sub          a0, t5, a6
                  sll          a1, t0, s0
                  sra          gp, a7, s6
                  nop
                  or           a3, a2, s0
                  nop
                  slt          t3, s4, a2
                  slti         gp, a3, 1034
                  xori         t2, t3, 1053
                  sub          a6, a5, s8
                  slli         t5, a0, 6
                  srli         t1, s6, 11
                  slt          t1, a7, gp
                  slti         s5, s7, -1245
                  slli         t5, s5, 24
                  addi         a5, a7, 2006
                  ori          s8, t5, -2027
                  srli         t1, s3, 20
                  sub          a2, s7, t2
                  add          a3, t6, a5
                  xor          t5, a4, s8
                  ori          t6, a6, 382
                  slli         t5, t0, 29
                  sra          s1, t4, s5
                  ori          t0, a0, -1796
                  nop
                  srli         a4, s3, 3
                  xor          s11, sp, a4
                  xori         a3, t5, -325
                  xori         t1, t4, -1159
                  lui          a4, 11371
                  slt          t1, a1, a1
                  or           s7, s6, t6
                  or           a7, s2, s2
                  slt          s11, t2, s5
                  lui          t2, 756794
                  sub          s2, s5, sp
                  sll          s9, t2, a5
                  ori          a4, a4, -763
                  sltiu        t2, s4, -1699
                  add          s7, a0, a7
                  sub          s7, a1, t2
                  xor          t1, s6, t1
                  srl          a4, s4, gp
                  or           s11, s7, s11
                  xori         t0, s9, -1054
                  add          a3, a3, tp
                  srai         a0, t2, 6
                  or           zero, zero, zero
                  ori          a7, s11, 1356
                  auipc        s5, 748896
                  add          s3, t2, a7
                  add          zero, s6, gp
                  sra          s8, s11, s3
                  lui          s8, 554741
                  sub          tp, t0, s5
                  sltu         s8, t1, a6
                  slti         s11, a2, 1050
                  sra          s10, tp, s10
                  slti         s9, a4, 504
                  ori          tp, s0, 1847
                  andi         a7, t3, -394
                  and          s3, s4, a5
                  srai         t5, gp, 14
                  slt          a2, s6, t0
                  auipc        t3, 11540
                  xori         s9, a5, 1881
                  xor          t0, a5, t1
                  lui          a7, 689821
                  slti         t0, s0, -272
                  srli         s1, t0, 21
                  ori          ra, a6, 1659
                  srli         s2, t2, 7
                  nop
                  andi         s2, sp, -1741
                  sll          t4, s2, a7
                  sll          t3, a3, a5
                  sll          s8, t5, sp
                  nop
                  ori          t3, a7, -1615
                  xori         s7, t5, 1133
                  auipc        a0, 879820
                  srl          s1, s11, s6
                  addi         ra, t0, 216
                  xori         a4, a1, -1557
                  xor          t5, ra, s9
                  srli         s9, a4, 22
                  slli         a0, tp, 17
                  or           t5, s2, s3
                  slti         a7, t5, -989
                  lui          t2, 779992
                  add          a1, s3, t3
                  lui          a0, 161911
                  nop
                  slli         t3, a7, 30
                  slti         s10, t5, 81
                  srai         a5, a3, 3
                  srl          ra, s1, t4
                  andi         s1, tp, -1096
                  srli         t4, t0, 29
                  sltu         s8, s11, s6
                  sra          a2, s10, t3
                  add          s10, s10, s3
                  sltu         a0, t1, t4
                  lui          t5, 877629
                  nop
                  srl          a2, sp, t1
                  auipc        a0, 634629
                  sltu         s11, s4, a6
                  slt          s8, s9, s4
                  nop
                  slli         a3, s9, 0
                  auipc        t5, 418869
                  slt          ra, a7, t4
                  sltu         s2, zero, tp
                  and          zero, s0, s11
                  add          s1, t0, t3
                  slti         ra, s0, 796
                  andi         t2, s6, 1582
                  sltu         a1, t2, ra
                  sltiu        ra, t5, 610
                  xori         s9, s1, -479
                  sub          s7, a6, a6
                  ori          a5, zero, -149
                  auipc        s9, 133499
                  xor          t0, s10, a7
                  sltiu        s8, a5, 1427
                  auipc        t6, 145418
                  add          s11, s9, s6
                  srl          a4, t3, a5
                  slli         a5, a1, 27
                  srl          t0, sp, a6
                  xor          a6, a5, a7
                  sub          t6, zero, s0
                  or           t5, ra, s3
                  srai         t2, t1, 17
                  xori         a0, s4, 15
                  srli         gp, s2, 25
                  lui          t1, 863277
                  andi         t3, t5, 516
                  xori         gp, s3, -1582
                  andi         t5, t4, -1352
                  or           t4, a4, a7
                  xor          t1, a7, a0
                  addi         t6, a1, -1867
                  xori         s9, a5, -1276
                  srl          s2, ra, s9
                  sub          a6, s10, s4
                  addi         s7, s3, 959
                  srai         t1, s4, 21
                  ori          tp, t3, -1383
                  sltu         t1, a4, a6
                  lui          tp, 257027
                  and          a3, s6, s6
                  or           a7, zero, s11
                  xor          a1, gp, a2
                  ori          t0, t0, -1411
                  slt          t3, a1, s10
                  nop
                  srl          t6, a6, zero
                  sub          s2, a4, t5
                  srai         ra, s3, 30
                  srai         a0, s1, 1
                  andi         s2, sp, -1635
                  andi         a4, s5, 707
                  sltiu        a5, s3, -2017
                  slli         s8, s5, 18
                  sra          s11, t5, t5
                  srai         a0, tp, 31
                  or           a7, a2, gp
                  auipc        s3, 452710
                  sub          s3, s9, a2
                  sltu         zero, t5, s3
                  sltiu        a6, a4, 101
                  slli         gp, s7, 24
                  slt          tp, s4, t1
                  addi         a0, s4, -1490
                  sra          a2, t4, t0
                  sub          t2, sp, s9
                  srli         a4, t2, 20
                  lui          a7, 609562
                  xori         t4, a5, -778
                  srli         s5, t2, 24
                  sll          t6, sp, t0
                  addi         s2, s4, 268
                  sll          s11, s8, a5
                  sltu         t6, t1, tp
                  lui          a2, 474891
                  slt          ra, s8, t1
                  srl          s5, a1, s9
                  slti         a0, s1, 339
                  auipc        tp, 974449
                  and          t2, a1, a0
                  sra          zero, s2, ra
                  sra          zero, s0, s0
                  sltu         s3, t0, a3
                  xori         s10, s5, 1872
                  and          a0, s7, a0
                  xori         a1, s6, -1796
                  sll          tp, s11, s0
                  sll          zero, t1, sp
                  slli         s7, s2, 6
                  auipc        t2, 888443
                  srl          a4, a5, zero
                  ori          a3, s1, -140
                  nop
                  srli         a6, s8, 13
                  nop
                  or           s3, s5, s8
                  lui          t2, 734903
                  add          s10, s4, s8
                  slli         s1, a4, 25
                  sub          s11, s6, tp
                  sll          gp, s1, zero
                  slti         s7, t6, -1329
                  srl          t4, a2, s10
                  ori          s2, s11, -1502
                  srli         zero, a6, 10
                  slli         s3, t0, 16
                  sltu         a2, tp, ra
                  xori         t0, t3, 148
                  xor          s5, s9, a2
                  srai         a7, tp, 15
                  srl          s11, s3, a6
                  auipc        a6, 86868
                  sltiu        a1, a4, -383
                  auipc        gp, 135995
                  addi         t0, a1, 587
                  xor          a7, s5, a6
                  srai         a2, sp, 5
                  srai         s1, t6, 14
                  srai         a1, s11, 28
                  and          s7, t2, s4
                  li           s3, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           s5, 0x80000000
                  li           t1, 0x0
                  li           s4, 0xce722de1
                  li           s1, 0x80000000
                  li           a1, 0x0
                  li           a3, 0xfdd4cb54
                  li           t4, 0xffffffff
                  li           a5, 0x80000000
                  li           a4, 0x2e094f57
                  add          a1, a5, s3
                  nop
                  nop
                  auipc        a1, 868363
                  add          a5, s1, a5
                  nop
                  nop
                  lui          t1, 135997
                  nop
                  sub          s1, a1, s3
                  nop
                  addi         t4, s4, 911
                  lui          a1, 227650
                  lui          t1, 671413
                  sub          a5, t1, a4
                  add          a5, a5, a4
                  auipc        t1, 10626
                  add          t4, s4, s4
                  auipc        t1, 829632
                  sub          s3, s1, s1
                  auipc        s3, 158208 #end riscv_int_numeric_corner_stream_8
                  sll          s8, s4, s11
                  xori         s3, sp, -1394
                  sub          s5, a2, s1
                  slli         t1, sp, 12
                  lui          t4, 85521
                  sub          a0, zero, s1
                  auipc        t4, 307571
                  slt          zero, t0, sp
                  sra          zero, a0, a2
                  xori         t0, zero, -1160
                  srli         s7, a7, 1
                  sltiu        a4, t4, 991
                  slti         t5, s3, -1616
                  xor          t1, s4, s1
                  srai         s2, s8, 24
                  nop
                  lui          a1, 745303
                  lui          a3, 798218
                  srli         t3, s0, 15
                  srli         s3, s8, 11
                  slt          s1, t3, s7
                  slti         a4, s0, 1691
                  sll          s3, s0, a6
                  srli         t0, a6, 28
                  sll          gp, a7, s5
                  srli         s8, s6, 9
                  and          s8, a0, t2
                  sll          tp, t3, s10
                  and          t3, s3, s7
                  or           s8, s2, a0
                  andi         t0, a5, 809
                  auipc        s1, 319274
                  xor          t1, s0, a4
                  xori         s5, t4, 492
                  slt          ra, ra, s6
                  andi         a7, t0, -394
                  addi         s9, s6, -1659
                  ori          s10, a2, 1765
                  sub          t6, s0, a5
                  add          s5, s11, t3
                  xor          t6, s9, tp
                  sub          ra, s7, t6
                  lui          ra, 670363
                  slli         a7, t5, 30
                  nop
                  sltiu        s7, a3, -1034
                  auipc        a1, 395434
                  andi         s2, ra, 1365
                  sltiu        s3, a4, -726
                  nop
                  slti         gp, s0, -314
                  srli         a1, a0, 14
                  srl          s9, t6, s0
                  slli         a2, t5, 12
                  andi         s8, a6, -818
                  sra          t0, s9, sp
                  xori         ra, s7, 322
                  slli         t4, s2, 21
                  ori          t3, a5, -1721
                  xori         s8, gp, 1260
                  slli         s5, a6, 15
                  sll          a1, t4, t0
                  slli         t4, a6, 16
                  ori          s11, t4, -1035
                  auipc        s5, 39444
                  andi         s11, t3, 263
                  and          s9, tp, t1
                  addi         t2, s9, -1759
                  andi         t1, tp, 1009
                  srl          a0, tp, s1
                  sll          s1, a7, t0
                  lui          t4, 143760
                  sll          s10, a3, t6
                  sll          t2, s5, s1
                  xor          t0, ra, s5
                  or           s8, gp, a2
                  sltiu        s4, s5, 134
                  slti         s2, s10, -249
                  ori          a2, ra, -365
                  xor          s1, a0, t3
                  sub          s1, tp, s6
                  li           a0, 0x6f3ee4d6 #start riscv_int_numeric_corner_stream_16
                  li           s9, 0x80000000
                  li           a7, 0xffffffff
                  li           s4, 0xe8a68590
                  li           s5, 0x80000000
                  li           t5, 0x0
                  li           s10, 0x80000000
                  li           t2, 0x80000000
                  li           a2, 0xffffffff
                  li           a4, 0x4b8f839e
                  lui          a2, 774501
                  sub          s10, s4, a2
                  addi         t2, s5, -1847
                  add          s10, s9, s4
                  auipc        a7, 57176
                  sub          t2, a4, s4
                  sub          s4, a2, t2
                  auipc        a4, 191818
                  auipc        a0, 407245
                  nop
                  add          a0, a7, a4
                  lui          a4, 786090
                  auipc        a0, 839274
                  nop
                  auipc        s4, 463321
                  addi         s4, s9, 1886
                  sub          s4, s5, a0
                  sub          a0, a4, s4
                  addi         a4, a7, 1178
                  lui          s5, 988326
                  add          s9, s10, a0 #end riscv_int_numeric_corner_stream_16
                  xor          a6, t3, a7
                  andi         t5, s2, -732
                  or           a2, a2, s1
                  auipc        s4, 31090
                  sltiu        s5, s7, -651
                  andi         s9, s8, 1771
                  auipc        t3, 602317
                  and          a0, s6, t2
                  lui          ra, 594524
                  sltu         s1, t1, s7
                  slt          tp, a2, s5
                  add          s2, s0, s0
                  addi         a2, s2, -65
                  sll          t1, t0, t2
                  ori          s2, s9, 11
                  sltiu        s11, t3, 426
                  auipc        t1, 811115
                  addi         ra, a2, -76
                  slti         t0, t5, -2
                  lui          s5, 435123
                  nop
                  slti         t6, a0, 1480
                  nop
                  auipc        tp, 198026
                  add          a7, a1, s11
                  srai         ra, tp, 26
                  sll          s7, a6, s6
                  and          t5, ra, s4
                  or           t2, s0, s4
                  lui          s7, 47901
                  sltiu        ra, t3, -1221
                  or           a7, t3, a1
                  xori         s3, a2, -1938
                  slt          s10, s1, gp
                  srli         tp, s10, 23
                  sll          t6, s10, a0
                  srl          a2, t4, a0
                  or           t4, t0, a2
                  sltiu        a2, a4, 1212
                  and          zero, s2, s8
                  sltu         t3, a1, s9
                  slli         tp, zero, 15
                  and          t6, t6, a2
                  addi         t0, a6, 566
                  srli         a6, a3, 9
                  sra          t0, a7, t4
                  sra          a6, t0, t2
                  slt          s10, s9, a0
                  slti         s4, t4, 684
                  srai         a2, a6, 30
                  addi         s10, a7, -559
                  add          s8, s7, t4
                  slt          s7, s7, a2
                  slti         s2, a5, -1407
                  sltu         a6, s6, s3
                  srli         s1, s1, 4
                  xor          s10, t4, tp
                  srai         s2, a7, 17
                  sra          a3, s1, s1
                  auipc        t6, 288812
                  slli         s3, s1, 6
                  xor          a7, t2, s7
                  slli         t0, s8, 9
                  ori          zero, s3, 1413
                  or           tp, s10, s9
                  sltiu        a2, a1, -1458
                  sltu         t4, s1, s3
                  srli         s8, s11, 29
                  lui          ra, 510116
                  addi         t3, s3, 138
                  nop
                  addi         s8, a2, -1240
                  slt          ra, t6, s4
                  and          s8, t3, t6
                  slt          s10, a4, s8
                  addi         a7, s8, -649
                  sub          a7, s2, a7
                  addi         s1, gp, -641
                  srai         gp, s9, 27
                  add          s11, a3, s2
                  xor          tp, s11, t4
                  nop
                  and          s3, a4, s4
                  sll          s3, a7, t6
                  sltu         a3, a7, s11
                  add          s9, zero, a6
                  or           s9, zero, a7
                  and          s11, s10, s7
                  auipc        s2, 103720
                  add          gp, tp, s8
                  addi         s7, t4, 1024
                  auipc        a2, 252191
                  sltiu        s9, s10, 1873
                  slti         t5, t6, -118
                  ori          s3, a3, 930
                  xor          s4, t2, a6
                  add          a3, a4, s11
                  sub          t2, t2, s2
                  slti         a1, s1, -1738
                  and          s5, t6, ra
                  srl          s2, ra, t3
                  andi         zero, a6, 803
                  slti         a7, s7, 587
                  srai         a4, s6, 12
                  sra          s10, s6, gp
                  add          a2, s11, s5
                  srl          a3, t3, s0
                  slli         t2, a3, 23
                  slti         a6, t2, -1917
                  add          s10, tp, t4
                  auipc        a1, 898462
                  nop
                  sra          t0, t6, a5
                  andi         t4, t1, -939
                  and          s8, s9, s10
                  sra          t6, t0, a5
                  ori          t6, t5, 88
                  slt          t0, a0, a0
                  slt          t3, s4, t5
                  sub          s10, a7, s9
                  sltu         t2, a3, ra
                  nop
                  sra          t6, a2, a2
                  add          a7, a2, s2
                  xor          t0, zero, t3
                  sll          a6, sp, sp
                  add          gp, a4, a4
                  sra          s10, s3, a0
                  add          s1, t1, s5
                  auipc        a5, 508346
                  srai         s9, s7, 26
                  add          a7, zero, s3
                  slti         a1, tp, -1327
                  lui          t2, 68018
                  auipc        t3, 739467
                  xori         a3, s2, 1419
                  xor          gp, s10, s4
                  srli         t4, t2, 1
                  and          t4, s6, t3
                  sll          gp, ra, s6
                  sub          s2, s0, s6
                  srli         s5, a5, 2
                  srai         s8, s6, 27
                  sra          s2, a4, s4
                  addi         a4, zero, 717
                  sll          t0, a6, sp
                  srli         tp, t4, 21
                  or           s2, s7, a6
                  xor          s4, tp, t1
                  srli         a4, gp, 13
                  sub          s7, a3, s6
                  sra          a1, gp, s10
                  andi         s2, gp, 87
                  slti         gp, a4, 408
                  slli         t1, t4, 21
                  li           t3, 0x0 #start riscv_int_numeric_corner_stream_1
                  li           a5, 0x0
                  li           s3, 0x80000000
                  li           t0, 0xcd326a9e
                  li           a1, 0xffffffff
                  li           a7, 0x0
                  li           s1, 0x0
                  li           a2, 0xffffffff
                  li           s5, 0x0
                  li           a3, 0x80000000
                  lui          s5, 95350
                  addi         s5, a1, 57
                  nop
                  lui          a2, 637336
                  nop
                  add          a1, a5, a5
                  add          t0, a5, s1
                  sub          s3, t0, s5
                  nop
                  addi         t0, t3, -40
                  nop
                  nop
                  auipc        a7, 63640
                  lui          t3, 969420
                  addi         t3, t0, -1030
                  nop
                  addi         a3, s5, -771
                  nop
                  lui          a3, 498338
                  lui          s3, 533269 #end riscv_int_numeric_corner_stream_1
                  add          s10, gp, a5
                  andi         t0, s6, -1276
                  sltiu        s4, t4, 1692
                  sltu         a6, s11, a4
                  sltiu        s5, zero, 45
                  or           t3, sp, a7
                  srl          a0, t1, t3
                  srai         s5, a6, 6
                  and          a7, s11, s0
                  or           gp, a7, ra
                  add          t6, s4, gp
                  slti         s9, a7, 1327
                  xori         zero, s5, -1548
                  ori          zero, s7, -831
                  sll          s3, t3, t5
                  sra          s3, t1, a3
                  andi         s4, s7, -862
                  sub          t1, s9, a6
                  or           t0, t0, s6
                  slti         s8, s10, 830
                  addi         s11, a7, 752
                  sub          s11, ra, s4
                  xor          a4, s4, a1
                  sll          s8, s7, a5
                  sltiu        s7, t3, -424
                  slti         t2, t4, -679
                  andi         s9, t1, -1852
                  addi         a5, a6, -1021
                  xori         a2, s4, -490
                  srai         s5, s5, 7
                  slli         s1, tp, 23
                  nop
                  slli         s10, sp, 28
                  and          s9, s11, a3
                  srl          s11, a1, t0
                  auipc        s7, 668374
                  sltiu        t3, s10, -729
                  srai         s3, a4, 6
                  andi         zero, t3, -1970
                  sltu         a0, zero, a2
                  srli         s3, tp, 4
                  sub          s4, t3, s2
                  sll          gp, s5, gp
                  sra          tp, a4, t1
                  slti         a4, a4, -352
                  add          s2, a7, a7
                  srli         gp, a4, 30
                  slti         s4, a2, 108
                  srl          t3, s11, s1
                  slt          a3, a7, s10
                  addi         a7, gp, 199
                  andi         t6, s11, -1734
                  nop
                  or           a7, t1, t4
                  ori          t5, s10, -1354
                  slli         tp, t4, 23
                  slli         a5, a0, 30
                  slt          t5, a6, tp
                  and          s7, tp, t2
                  or           s4, a7, s2
                  sltiu        s9, a1, 870
                  ori          a3, t4, 927
                  srai         t0, t1, 29
                  nop
                  slli         a2, s9, 13
                  ori          a4, s9, 1974
                  slti         t3, sp, -533
                  andi         a1, a7, -1566
                  xor          a4, t5, s7
                  addi         t6, t6, -819
                  ori          s2, tp, 965
                  or           s9, tp, t1
                  sub          s9, s5, a0
                  sll          t0, tp, s8
                  andi         t5, s0, 303
                  slli         ra, s2, 22
                  sub          a1, a4, t6
                  sra          zero, ra, a4
                  srl          s5, s4, a7
                  srl          s3, s3, a4
                  sll          zero, s3, s7
                  srai         s2, s5, 17
                  sltu         a6, a4, a2
                  xor          s7, ra, s3
                  nop
                  add          t0, s5, s11
                  sub          t5, s3, s9
                  auipc        zero, 578115
                  sra          ra, a4, a2
                  ori          s5, t4, 1084
                  sltu         s1, t6, s11
                  or           s5, t4, t2
                  srl          a6, s3, ra
                  andi         a4, s2, -1642
                  srai         gp, a3, 10
                  sltu         a6, t6, gp
                  and          s2, a1, s2
                  slti         s2, s1, 806
                  li           t0, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           s3, 0xffffffff
                  li           s4, 0x0
                  li           gp, 0x87b907a0
                  li           a7, 0x0
                  li           a6, 0xffffffff
                  li           s8, 0x146fce90
                  li           t3, 0xffffffff
                  li           a3, 0xffffffff
                  li           s5, 0x8fb2c9a7
                  addi         s8, a6, 1009
                  add          s5, a3, s8
                  sub          s5, gp, t0
                  auipc        s8, 423814
                  auipc        a3, 968271
                  lui          t3, 912418
                  add          t0, s8, s8
                  nop
                  nop
                  add          a6, s4, s3
                  nop
                  add          a3, s3, a7
                  lui          s3, 199972
                  lui          a6, 718256
                  lui          a6, 1042444
                  lui          a7, 469553
                  auipc        a7, 155695
                  auipc        s5, 1021339
                  nop
                  nop
                  add          s4, a7, a6
                  sub          s8, a3, s8
                  lui          s5, 797135
                  sub          s8, t0, t3
                  add          t0, s5, s4
                  addi         s4, gp, -15
                  sub          t0, a3, s8
                  auipc        a3, 883946
                  auipc        s4, 636409 #end riscv_int_numeric_corner_stream_10
                  srai         gp, s10, 15
                  sltu         ra, t4, a0
                  sra          a2, s9, sp
                  xori         gp, s9, -17
                  sll          a6, zero, ra
                  nop
                  slt          t4, a1, a5
                  xori         a3, t3, -1340
                  slli         s10, a0, 0
                  addi         a6, s6, 788
                  srl          a4, s10, a7
                  auipc        t5, 781644
                  sltiu        s10, s6, -797
                  nop
                  slli         a6, t4, 19
                  auipc        a2, 666360
                  sltu         tp, a2, t6
                  add          tp, s3, a3
                  xor          t2, a4, s2
                  sra          gp, s7, t4
                  nop
                  slti         tp, a5, 925
                  li           a1, 0x19ef483e #start riscv_int_numeric_corner_stream_3
                  li           t6, 0x0
                  li           s8, 0x1930971d
                  li           a6, 0x80000000
                  li           t4, 0x0
                  li           a2, 0xffffffff
                  li           s5, 0x0
                  li           gp, 0x80000000
                  li           a3, 0x0
                  li           t1, 0x80000000
                  add          s5, a1, a2
                  sub          a6, t6, s5
                  nop
                  add          s8, t1, a3
                  auipc        a6, 416744
                  lui          a6, 295621
                  nop
                  sub          gp, a6, t6
                  auipc        a1, 359126
                  nop
                  addi         t1, s8, -195
                  add          t1, a2, t4
                  lui          a2, 1044406
                  lui          s5, 933812
                  sub          s5, s5, a1
                  nop
                  addi         s5, a2, -982 #end riscv_int_numeric_corner_stream_3
                  ori          s3, s9, -527
                  and          t5, a5, s11
                  andi         s9, a5, -1110
                  srli         t5, s5, 23
                  sll          t4, a4, s11
                  and          s5, s7, a0
                  slti         s1, a7, -750
                  slt          t4, a3, s6
                  xor          s5, t4, s6
                  lui          s4, 688487
                  addi         a1, a3, -1319
                  sra          s10, ra, s2
                  xor          tp, s1, s4
                  add          t1, t3, s5
                  slli         s9, t0, 26
                  slti         a6, a7, -1741
                  srl          ra, a5, t0
                  and          a4, t5, gp
                  andi         t2, ra, 1046
                  xor          a0, s1, a0
                  nop
                  and          zero, t2, t2
                  slti         s8, t4, 141
                  addi         t0, s8, 944
                  slli         s9, s4, 14
                  xori         a2, s1, -836
                  andi         s1, t0, 634
                  lui          s5, 136538
                  and          a1, t4, t2
                  addi         a4, ra, 1772
                  slt          s11, s5, s0
                  andi         s4, t5, 1723
                  sltu         a3, t1, a0
                  auipc        a6, 85823
                  add          s9, s1, a4
                  srl          s9, gp, t6
                  sltiu        zero, gp, -590
                  slli         s5, s0, 22
                  auipc        a0, 711621
                  srli         s9, a2, 27
                  ori          s10, t4, -1970
                  slti         a2, a1, 334
                  xor          a1, s6, t2
                  ori          s10, a4, 87
                  slti         a5, s5, -805
                  sltu         s9, s3, a0
                  lui          s2, 280425
                  and          a2, sp, s3
                  sll          a5, a4, zero
                  srl          s2, s6, gp
                  srl          t1, a4, a3
                  slli         s2, t2, 23
                  addi         s1, s0, -588
                  srai         t0, a1, 26
                  sltiu        s2, t5, -1517
                  lui          a3, 801301
                  nop
                  sub          t2, a1, s10
                  nop
                  slt          a1, a6, a3
                  sll          t4, s9, ra
                  xor          tp, s7, s10
                  sra          t1, sp, a5
                  ori          a3, s11, -1947
                  slt          s10, s6, t3
                  or           s8, a3, a5
                  add          a7, s1, s8
                  xori         t2, t3, 754
                  xori         tp, s8, 1960
                  srai         t4, a3, 5
                  sub          s2, a2, a0
                  auipc        a3, 251236
                  nop
                  srai         a6, a3, 12
                  addi         zero, s3, -32
                  sltu         t5, s10, ra
                  sltiu        s5, t2, -1286
                  slli         a1, t6, 18
                  auipc        tp, 225936
                  addi         a6, tp, -29
                  or           t1, a0, a2
                  lui          s7, 918609
                  xori         t4, s8, 1435
                  sll          a2, sp, gp
                  and          t0, a5, s6
                  addi         ra, gp, -77
                  sll          s7, ra, a4
                  sll          t0, a1, gp
                  sra          t5, a0, s7
                  or           a0, s3, sp
                  sltu         t3, s2, zero
                  srli         a2, s1, 27
                  nop
                  xor          s9, t1, a1
                  sltiu        a0, t5, 623
                  addi         s7, s7, 1
                  auipc        s3, 977596
                  nop
                  sll          zero, s10, s8
                  xori         tp, s2, -2011
                  sltiu        a3, a4, 644
                  auipc        s10, 347787
                  ori          s7, t2, -1560
                  srli         a6, gp, 16
                  srai         s9, zero, 24
                  addi         t3, gp, 54
                  or           a4, t4, zero
                  sll          gp, t0, s3
                  slli         gp, t0, 12
                  auipc        s9, 835353
                  andi         s11, ra, 488
                  xor          t2, s9, tp
                  add          s4, s3, s10
                  sra          a7, tp, s4
                  sra          t2, t3, a3
                  and          s2, s0, a0
                  add          t0, s8, tp
                  ori          t6, t6, -681
                  slt          a6, gp, t5
                  nop
                  addi         t5, t1, 801
                  li           tp, 0x9c0735b7 #start riscv_int_numeric_corner_stream_11
                  li           s5, 0x80000000
                  li           a0, 0xe608b840
                  li           t2, 0x0
                  li           a6, 0x80000000
                  li           s8, 0x0
                  li           a2, 0xb48ddb61
                  li           t3, 0x0
                  li           a5, 0xbc8bd686
                  li           s11, 0x80000000
                  add          s5, a5, s11
                  lui          s5, 1003853
                  nop
                  nop
                  lui          s11, 505630
                  sub          s5, t2, t3
                  auipc        s8, 712470
                  add          t3, a6, a2
                  nop
                  nop
                  add          tp, s11, a5
                  sub          t3, s11, s5
                  auipc        a6, 145626
                  lui          a2, 14638
                  addi         a5, s8, -1562
                  lui          s11, 213514
                  addi         a0, t3, -1081
                  auipc        a6, 731992
                  sub          s11, s11, t3 #end riscv_int_numeric_corner_stream_11
                  srai         s2, t5, 3
                  xori         a4, t2, 1849
                  add          a0, ra, t4
                  sll          t2, s9, s10
                  add          a7, s10, ra
                  xori         s9, t5, 1519
                  or           t3, s7, s1
                  sll          t3, s9, zero
                  and          s3, s8, t2
                  or           t2, a3, a7
                  lui          t6, 637084
                  slti         a3, s3, 688
                  sra          t6, t6, s9
                  add          ra, a2, tp
                  xor          s2, a5, sp
                  addi         gp, a4, -898
                  sltu         t5, s7, a0
                  addi         s8, s7, -1269
                  add          a0, s4, t4
                  or           t3, s11, s2
                  lui          s9, 1047535
                  nop
                  sra          s11, t4, s3
                  auipc        t0, 495067
                  slt          t0, s9, s5
                  auipc        a4, 55378
                  srai         zero, t3, 26
                  nop
                  andi         a1, a1, -1
                  auipc        t4, 1045076
                  srli         a6, s11, 6
                  xor          a2, a7, s4
                  sltiu        s10, t2, -44
                  auipc        a7, 625608
                  ori          t5, s3, 1362
                  sltiu        a4, t5, 575
                  and          s10, a6, a4
                  andi         t0, a3, 1569
                  ori          s7, t0, -1882
                  srli         s3, s4, 11
                  sub          s11, t0, a0
                  srli         t3, s5, 14
                  sub          a3, s10, t4
                  srl          t2, t2, t5
                  andi         t1, t6, 1783
                  ori          s7, s8, -280
                  srai         s9, t3, 10
                  ori          s5, s1, 1253
                  sll          ra, t3, zero
                  lui          s10, 235754
                  ori          gp, s4, -1342
                  xor          t6, a3, s11
                  sub          s10, a2, s9
                  and          a3, s9, s3
                  add          t0, s3, ra
                  xori         zero, s9, -2031
                  sll          t6, a6, s5
                  sra          a0, t2, a6
                  sltu         a3, t0, s10
                  slli         s5, t1, 23
                  addi         s2, t2, -1215
                  lui          a2, 21212
                  auipc        a5, 293111
                  ori          t4, s8, 9
                  addi         t3, s1, -1329
                  srl          a3, a6, s6
                  or           a5, t3, s10
                  addi         a1, t3, 1363
                  sub          a3, s5, s1
                  and          s1, a1, s10
                  slti         a6, zero, 1516
                  srli         s1, ra, 17
                  nop
                  sltiu        a6, s2, -852
                  add          s11, zero, t2
                  srai         t4, t3, 9
                  slt          a7, s3, a5
                  and          a4, a2, s6
                  ori          s10, t6, -1302
                  srl          s5, a0, s1
                  xori         zero, a1, -824
                  sll          a6, sp, s0
                  nop
                  sll          t2, s1, a3
                  add          tp, s10, gp
                  addi         s11, a5, -1892
                  xori         t3, t2, 106
                  auipc        t5, 876268
                  sll          a6, s10, s1
                  srl          t4, t0, ra
                  ori          t4, a3, -853
                  add          s11, zero, s11
                  ori          a5, a0, -590
                  slt          a6, a5, s1
                  add          a6, s8, a4
                  xori         gp, s10, -278
                  slti         s1, t1, 918
                  slt          s7, a2, a7
                  slti         s2, t0, 731
                  sltu         s1, sp, s4
                  slli         a1, s7, 6
                  slli         t2, zero, 0
                  srl          a4, t4, s11
                  addi         gp, s10, 1694
                  nop
                  auipc        a0, 737631
                  lui          a3, 262865
                  andi         t1, gp, 1542
                  nop
                  auipc        s3, 919452
                  srl          t4, s0, t6
                  xori         zero, t4, 1928
                  or           s4, s4, s1
                  and          t2, tp, s7
                  ori          gp, t2, -1095
                  or           t4, a7, s6
                  auipc        t5, 661700
                  sltu         t4, tp, t4
                  ori          s1, s7, -1154
                  srl          t5, s0, a6
                  and          zero, t3, s0
                  slti         s4, a1, -1211
                  addi         s5, ra, -973
                  xori         s3, a6, -1566
                  sltiu        s5, t3, 1497
                  ori          t3, t2, 802
                  slli         a1, sp, 13
                  srl          s8, s4, sp
                  add          tp, a4, ra
                  xori         a3, s6, 1114
                  xori         s4, a0, 407
                  andi         gp, t1, 1844
                  sltu         a0, a6, a1
                  ori          t4, sp, 1622
                  srl          t1, s10, tp
                  xor          t6, t4, gp
                  slt          t4, s3, a2
                  sub          a1, sp, t4
                  xor          tp, s6, s7
                  and          s11, s2, s11
                  slti         a1, s0, 2014
                  sub          zero, a0, s2
                  slt          a5, s1, tp
                  srl          s2, t3, s7
                  srai         t4, t4, 8
                  ori          t2, a3, -920
                  sltu         t1, a2, t4
                  lui          t6, 47074
                  auipc        t2, 396808
                  xori         s10, a7, -642
                  xori         a0, s0, 1757
                  nop
                  nop
                  add          s3, t0, a0
                  xor          ra, tp, s4
                  sll          s1, s1, a1
                  ori          a7, gp, 1844
                  srl          a4, a5, a6
                  srl          gp, a5, t1
                  xori         s11, s6, -1082
                  sub          a4, s7, a0
                  andi         t0, a2, 971
                  slt          a6, gp, ra
                  andi         s10, a7, 423
                  or           s2, s5, t4
                  nop
                  xor          a0, a5, zero
                  srli         a0, tp, 1
                  slli         s1, a0, 11
                  sub          s11, a0, s10
                  sltiu        a3, zero, -205
                  xor          zero, s2, sp
                  addi         a3, zero, -1974
                  slt          a1, ra, s2
                  xor          t2, s4, s8
                  auipc        t1, 971469
                  xor          zero, s1, s6
                  sltu         s4, t0, s9
                  and          s8, t0, s1
                  and          a3, zero, s8
                  srl          s11, s7, s8
                  slt          a7, a0, zero
                  sltiu        s5, s11, 1277
                  slli         s3, t4, 1
                  sub          s4, zero, a6
                  sll          s9, t4, t3
                  slt          s5, sp, t3
                  andi         t5, t4, -89
                  slt          gp, gp, s3
                  sltiu        s9, t1, -1062
                  or           t6, a6, zero
                  xor          s3, a3, zero
                  xor          s10, a4, a0
                  nop
                  andi         tp, t2, 1991
                  sra          tp, t5, s5
                  sra          zero, s1, t0
                  srli         a0, tp, 4
                  srai         t6, a4, 20
                  slti         t4, s3, -1162
                  slli         a3, a4, 14
                  nop
                  add          s11, ra, a7
                  sll          s1, sp, s3
                  srl          a4, zero, a0
                  addi         t1, t1, 2044
                  sll          s4, s1, t6
                  slt          a0, a2, sp
                  srl          t4, s7, t2
                  or           a7, s0, s11
                  ori          s7, s2, -916
                  add          zero, t2, t4
                  lui          a2, 976801
                  sltiu        s8, t3, -404
                  sll          t2, s0, t3
                  srli         s1, s8, 5
                  sltu         t6, t5, s11
                  slti         s1, a6, -218
                  and          a5, a4, s8
                  ori          s10, a7, -1541
                  sll          a5, sp, s8
                  and          zero, ra, t4
                  xori         s1, t3, -1822
                  srai         zero, t5, 24
                  sltu         s9, a5, s2
                  xor          t0, s0, t1
                  slt          s4, t6, t2
                  sll          t0, s1, s8
                  sltiu        s9, sp, -1755
                  slt          a2, a0, zero
                  srai         a1, t2, 6
                  srli         s10, s0, 10
                  slti         a0, t6, 1138
                  nop
                  sub          a5, t4, t3
                  addi         gp, sp, 16
                  ori          s1, s8, -1757
                  sltiu        a3, t1, 1303
                  sub          zero, t6, tp
                  xor          a0, t5, s9
                  ori          s9, a4, 1322
                  xor          t1, t5, s9
                  auipc        t4, 277409
                  sltu         s3, t2, t6
                  srai         s9, s3, 31
                  nop
                  sltiu        t1, s8, 500
                  auipc        s9, 666124
                  nop
                  add          a6, s10, t0
                  xori         t1, s7, -1512
                  or           a4, s7, t0
                  sub          a2, a2, a0
                  sltu         t3, t3, s1
                  sra          t6, tp, ra
                  or           t3, ra, s11
                  slli         s11, s6, 26
                  sub          s1, t6, a7
                  add          t4, s10, tp
                  slt          t1, s7, tp
                  slt          t2, s9, t2
                  ori          s11, t5, 1418
                  or           t2, a5, s4
                  srl          a4, a1, s3
                  slli         s5, t4, 15
                  ori          t0, s0, -1405
                  sub          t3, s0, t2
                  add          t1, t4, ra
                  nop
                  srl          t6, gp, a2
                  sll          a5, tp, s5
                  xori         s11, t3, -1805
                  srai         a2, tp, 21
                  sltu         a0, a0, a5
                  sub          a0, s10, s5
                  nop
                  sra          s4, s11, s9
                  addi         a4, a1, 1262
                  add          t3, s7, s7
                  sub          t0, a5, t4
                  sltiu        s1, a3, -1970
                  slti         t6, a2, -372
                  and          a3, s10, s3
                  xor          s2, a6, t5
                  sltu         t5, ra, s7
                  nop
                  xori         a0, s7, -1517
                  add          s4, s8, a6
                  and          s7, t6, a3
                  srai         t0, s10, 0
                  lui          gp, 352325
                  sltiu        t4, s1, 1766
                  sltu         s11, s6, a2
                  sltiu        s11, s7, -1368
                  addi         t0, s2, -933
                  xor          s2, t3, t3
                  xor          a4, s1, ra
                  xori         tp, s4, 1980
                  and          zero, t6, s1
                  xor          a6, t0, gp
                  or           tp, a5, a6
                  and          s5, tp, s7
                  slli         gp, s0, 2
                  or           s8, t4, s7
                  ori          t3, t6, 962
                  xor          a5, a0, t6
                  sra          s5, s2, ra
                  and          t3, a5, s0
                  xor          s1, s1, t0
                  or           t5, a5, ra
                  sub          s5, s4, t6
                  slt          tp, zero, a2
                  srli         t3, t0, 22
                  xor          a1, a3, a1
                  sll          a6, s7, a4
                  ori          s3, t6, 329
                  slt          a6, t6, s10
                  xor          a0, ra, s10
                  sub          s3, t3, a7
                  addi         s3, zero, 562
                  lui          s4, 429391
                  slt          s4, s3, a5
                  lui          s10, 660411
                  sltu         s7, s5, a5
                  andi         a6, a3, 971
                  auipc        a6, 377555
                  xori         s1, gp, 114
                  xori         t6, zero, -1082
                  xori         a4, a2, 1206
                  nop
                  lui          tp, 266533
                  sltiu        a4, a1, -1366
                  xor          t2, s8, s10
                  srai         t5, s1, 12
                  xori         t2, a2, 1578
                  sub          gp, a3, t0
                  or           s5, s11, s11
                  lui          s9, 959995
                  sltu         a1, t2, t4
                  andi         zero, s4, -1346
                  ori          s1, gp, 1984
                  ori          s5, s1, 571
                  slli         t2, a3, 6
                  and          t5, a5, s2
                  lui          t2, 32903
                  or           a1, a4, ra
                  srai         zero, t4, 31
                  or           s11, a1, tp
                  and          t3, t1, a3
                  srli         s11, s7, 17
                  slt          s1, s9, s0
                  sra          t6, t5, t6
                  sltu         s3, sp, s1
                  slli         s8, s6, 24
                  sra          t0, s1, a1
                  addi         tp, a5, 1901
                  sltiu        gp, a4, 1006
                  slli         t5, t6, 4
                  lui          gp, 683166
                  sub          t0, a1, s5
                  sltu         a6, t5, s1
                  slti         t5, a1, -1331
                  srai         tp, s6, 22
                  nop
                  sll          a1, a6, a6
                  srl          t4, a5, a7
                  xor          t1, a0, s3
                  auipc        a5, 198306
                  sll          a0, t3, s9
                  slli         s8, a1, 17
                  andi         s5, t3, 29
                  xori         s2, sp, -37
                  sub          s4, s5, s10
                  sll          t0, ra, zero
                  sra          t1, t6, s1
                  ori          a7, gp, -1675
                  slt          s10, s11, s0
                  sltiu        a6, a7, 1974
                  auipc        s10, 799452
                  srli         a7, t0, 17
                  sra          t4, t1, s10
                  sltiu        t1, a3, 730
                  srai         tp, s0, 7
                  srai         gp, t5, 2
                  srai         a3, t2, 21
                  slli         t6, s6, 9
                  lui          t4, 456727
                  ori          gp, ra, -1220
                  auipc        s3, 15120
                  lui          t2, 817908
                  xor          t1, s3, a3
                  sra          s10, a0, a0
                  xor          s9, s3, a6
                  srli         a2, a6, 4
                  srl          tp, t6, s9
                  xor          s3, s10, s4
                  add          t5, s7, t5
                  srl          tp, s1, t2
                  and          t4, s4, t0
                  sll          s10, s1, s4
                  srl          t0, ra, t4
                  slt          s3, t6, t5
                  or           ra, t2, s3
                  ori          s1, s5, -1844
                  xor          t2, a5, s10
                  srli         tp, a0, 22
                  srli         a4, s3, 8
                  andi         s3, s10, 1264
                  nop
                  andi         a3, s0, -676
                  andi         s11, gp, -2038
                  lui          s10, 213082
                  slti         t5, t5, -1661
                  lui          gp, 452144
                  and          ra, ra, a4
                  sra          t6, s6, s9
                  lui          a3, 104933
                  sub          a5, zero, s8
                  xori         s2, s3, 268
                  andi         s11, s8, -1200
                  and          t3, ra, zero
                  ori          t0, t3, -1908
                  sltu         s11, t3, s9
                  and          t1, t3, t2
                  sub          a2, a7, a4
                  sra          s1, t4, ra
                  andi         s1, s0, 1905
                  add          a2, gp, t4
                  and          t6, s4, s5
                  and          a5, a1, a0
                  sub          t0, t0, s5
                  slli         s8, zero, 22
                  srai         a2, s1, 27
                  ori          a7, a7, -2046
                  lui          a7, 481701
                  xori         s1, a7, -2003
                  sltu         t5, sp, s3
                  srai         s8, gp, 29
                  add          s2, sp, s5
                  nop
                  and          t6, s0, s3
                  auipc        t6, 206829
                  slti         s9, s3, 1654
                  sltu         t6, s9, a2
                  ori          s9, a1, -814
                  srli         t4, t2, 22
                  xor          t4, s8, sp
                  addi         t0, s6, 1854
                  srl          a7, t1, a1
                  lui          a2, 947243
                  sll          zero, ra, s7
                  slti         s5, s11, 131
                  nop
                  slt          t2, a6, s7
                  slt          s1, s7, a2
                  add          s4, s4, a2
                  andi         s10, s5, -51
                  add          t5, s8, s11
                  sltu         t0, t6, t4
                  lui          s3, 674608
                  lui          t6, 697898
                  and          s7, s4, s1
                  sra          ra, t2, t1
                  sltu         t4, t5, t5
                  srli         t0, a0, 4
                  or           a7, a4, s9
                  slli         t4, s10, 31
                  srli         t6, t4, 8
                  and          t1, a2, s4
                  ori          t5, a0, -81
                  sltiu        s3, s3, 1133
                  xori         a1, ra, 722
                  and          t2, t6, tp
                  srl          t3, t3, s9
                  add          tp, t2, a1
                  andi         s11, t0, 1704
                  auipc        t6, 455601
                  slli         a2, s8, 23
                  andi         s8, t0, 1310
                  and          t5, s3, s1
                  nop
                  sltu         a1, s8, t4
                  sra          s1, a5, s4
                  andi         s11, tp, -478
                  sltiu        s9, t2, 1689
                  srl          a0, s8, s2
                  xori         t5, t4, 1617
                  nop
                  and          a5, t6, s3
                  srai         t1, a6, 7
                  sll          tp, s4, t1
                  sra          a4, t4, t1
                  sub          s9, s10, s6
                  sltiu        s5, t6, -157
                  slti         s1, a5, -1899
                  sll          tp, s2, t4
                  srl          s4, t0, zero
                  slli         t4, s5, 2
                  add          ra, t1, s11
                  srli         a6, zero, 25
                  sltu         s8, s2, s2
                  lui          a2, 696857
                  srai         a2, s1, 27
                  and          s1, a0, s1
                  sll          t6, s0, s9
                  xori         a2, sp, -377
                  srli         t3, s9, 5
                  andi         a6, s9, 214
                  sltu         t3, s8, a7
                  slli         s2, a4, 9
                  srai         t0, s6, 3
                  srai         s8, tp, 17
                  andi         t0, t5, -1045
                  sltiu        a7, s9, 631
                  sub          s2, s6, s3
                  auipc        t1, 233719
                  srl          t1, s3, a6
                  sra          s10, s2, s8
                  and          a7, t6, s6
                  auipc        s8, 164497
                  add          s4, a5, tp
                  auipc        s1, 277273
                  sll          t2, t2, tp
                  or           a3, a7, a4
                  and          gp, a1, t2
                  ori          a0, s9, 104
                  slt          s8, sp, a5
                  srli         tp, zero, 29
                  add          t2, tp, t1
                  srli         a2, a3, 12
                  sltu         t1, s10, t4
                  sltu         a6, s11, s1
                  srai         a5, s8, 17
                  xor          s10, a1, s1
                  slli         tp, t0, 14
                  nop
                  srai         a2, t2, 3
                  srl          a3, s2, s1
                  sub          a7, a4, t5
                  ori          s9, s9, 1711
                  ori          s1, s1, -490
                  slt          tp, t4, s3
                  andi         t2, s10, 951
                  sltiu        s5, s9, 1237
                  sll          a2, t4, s6
                  and          a2, s9, t6
                  auipc        t3, 176699
                  sra          s8, t5, s9
                  xor          t4, s7, s9
                  sub          t0, t5, t1
                  nop
                  or           s7, tp, s1
                  or           tp, a4, s3
                  ori          s9, ra, 891
                  slti         a1, s6, 824
                  and          a0, a2, s1
                  srl          gp, s10, t2
                  lui          t6, 78363
                  ori          t4, s2, -850
                  andi         a7, a0, -180
                  srl          zero, a7, s1
                  sra          a5, a0, a5
                  auipc        s7, 402113
                  auipc        t4, 5768
                  slli         a1, s5, 31
                  sltiu        tp, s5, 1311
                  sltiu        s3, ra, -2002
                  srai         s4, gp, 20
                  srl          a3, s8, gp
                  srli         s11, gp, 27
                  slli         a1, t4, 16
                  xor          a7, a2, t4
                  sra          ra, a5, s4
                  srl          s11, s2, sp
                  sltiu        a4, s1, 1686
                  addi         a4, a6, -787
                  sra          t5, s0, a3
                  lui          a2, 953785
                  auipc        a2, 327477
                  srai         t1, s9, 16
                  slti         a7, t0, -429
                  addi         s11, a0, 1367
                  sra          a1, s8, s4
                  srl          s9, a4, tp
                  slt          a0, zero, s8
                  slti         s7, s7, 840
                  sra          a5, s6, t5
                  sltiu        s11, gp, -1586
                  lui          a5, 526682
                  sltu         s1, a6, t6
                  lui          s7, 910016
                  andi         zero, s10, 810
                  auipc        s2, 692215
                  srl          s2, s1, ra
                  addi         a4, a6, -1891
                  slti         a0, a4, 547
                  sltiu        a2, t5, -960
                  addi         t2, s9, 73
                  sub          t1, t3, s4
                  slt          t0, a7, a3
                  and          s10, s11, s2
                  auipc        s8, 157529
                  srli         a4, t0, 0
                  sll          s10, s8, a3
                  add          s9, a5, t4
                  sub          s10, s5, t2
                  or           t6, t4, ra
                  and          s9, zero, a1
                  addi         t6, sp, 1909
                  or           gp, s5, a6
                  sub          s7, a0, sp
                  auipc        s5, 1019427
                  slli         t2, zero, 3
                  sll          a1, t5, a7
                  sll          a3, a2, t1
                  sub          s4, s0, a1
                  andi         s9, tp, -177
                  add          a1, t0, a3
                  sra          a2, s2, a0
                  andi         s7, t1, 843
                  ori          t2, a3, -1719
                  or           s3, s9, s0
                  slti         zero, t5, 1233
                  xori         ra, t3, 1414
                  or           s7, t6, a7
                  slti         s4, s11, 416
                  sub          t0, s8, t1
                  addi         gp, t5, 224
                  sub          s2, a0, ra
                  or           a2, s5, gp
                  sltiu        gp, a0, -863
                  srl          t6, s6, s9
                  and          t2, t3, sp
                  add          s8, s2, a6
                  andi         s1, s3, -1588
                  sub          a1, a3, ra
                  add          t5, a0, a5
                  slt          s2, a1, s9
                  andi         t2, s4, 383
                  xor          t3, a3, a4
                  sltiu        a7, s8, -357
                  ori          t1, t6, -1368
                  srl          s9, t3, s0
                  slli         s4, s1, 7
                  slt          t4, t5, t4
                  sltu         s7, t3, s9
                  sll          s8, a5, t0
                  nop
                  add          a6, a7, t3
                  or           s10, a0, s1
                  sra          s5, tp, t4
                  sltu         s11, ra, a3
                  sub          a2, s11, t5
                  add          a4, s4, a1
                  nop
                  nop
                  add          a7, a6, s9
                  addi         a1, s2, 1403
                  sltiu        t4, a0, -1165
                  and          s5, tp, gp
                  xori         a6, s6, -923
                  srl          zero, ra, t1
                  sra          a6, s8, s11
                  ori          a1, a7, 1136
                  andi         t6, t1, 1329
                  andi         a2, ra, -1283
                  andi         a4, s6, 2047
                  or           gp, s5, t0
                  and          a1, a5, s8
                  srl          s4, t3, a5
                  or           s7, zero, a1
                  addi         s8, tp, -1417
                  srli         t4, t4, 12
                  and          a5, t5, s6
                  sra          tp, a3, s8
                  slli         a7, a3, 12
                  sltu         s5, s11, sp
                  sra          a1, t2, s0
                  add          s3, s10, a2
                  xor          a4, s9, s7
                  xor          gp, t4, s8
                  slt          t0, s4, a7
                  nop
                  sub          tp, t6, s6
                  or           tp, s11, tp
                  auipc        t2, 811725
                  add          s8, gp, a6
                  sll          t3, ra, t6
                  slli         s2, a1, 0
                  slt          s11, sp, s9
                  xori         s4, t5, 1867
                  sll          a7, t6, a2
                  srli         zero, ra, 5
                  slli         zero, a6, 26
                  auipc        a4, 1010726
                  srai         a3, t1, 26
                  ori          s4, s9, -1184
                  or           a1, s2, tp
                  srl          t4, s10, s6
                  nop
                  slti         s7, s5, 1024
                  auipc        a1, 873661
                  addi         tp, gp, -1373
                  srli         s4, sp, 28
                  srl          s4, gp, t0
                  slt          t4, a6, s7
                  sub          t4, s8, tp
                  slti         s9, s7, -273
                  add          s4, a7, s10
                  slti         gp, s1, -1615
                  andi         gp, s10, 1503
                  srl          s10, s0, s10
                  xori         s10, s0, -1492
                  add          s2, gp, a4
                  slti         s1, t0, -574
                  sll          ra, t2, t6
                  slti         s10, gp, 1195
                  slt          a3, t0, s2
                  ori          s5, t2, -1301
                  xori         s1, s5, -1122
                  lui          s1, 886235
                  add          tp, t5, s7
                  sltiu        a2, s11, 823
                  sltu         s1, s2, a3
                  sltiu        s4, t6, 2002
                  or           t0, a5, ra
                  slt          a3, t1, a7
                  sltiu        t4, sp, 457
                  slli         ra, a3, 27
                  sltu         a7, s8, s2
                  slt          t0, ra, s4
                  slt          a0, s0, a0
                  slti         t0, s10, -271
                  sltu         a5, a4, tp
                  srai         a7, a5, 19
                  srli         a4, s11, 4
                  or           a0, s7, a5
                  slt          s11, a7, a0
                  srai         t4, a7, 5
                  addi         s10, a5, -411
                  sra          a6, a0, gp
                  srli         t2, tp, 26
                  slti         t4, t3, 1275
                  andi         a4, a4, 233
                  nop
                  andi         ra, ra, 873
                  slti         t1, a0, -1316
                  xori         s11, s7, 149
                  xor          a1, t6, s6
                  auipc        s7, 242160
                  add          t6, t0, t5
                  slli         s2, ra, 18
                  xori         s3, s6, -1847
                  and          a0, s9, t2
                  sra          a3, gp, a3
                  and          s3, a0, ra
                  sll          s8, a0, t0
                  slli         a4, s9, 12
                  srli         t3, s11, 30
                  addi         t0, a3, -19
                  srl          t1, s4, s7
                  sltu         a7, s3, s6
                  sra          t1, a1, s8
                  sltu         t4, t2, s0
                  add          s8, a7, t2
                  addi         s8, s11, 787
                  slti         s10, s6, 1307
                  sra          a5, a0, a0
                  slti         t6, a5, -1360
                  sll          t1, a3, a7
                  sltiu        s3, a2, -1573
                  sra          t6, t5, ra
                  add          a5, t4, a7
                  sll          s3, s8, s5
                  nop
                  slli         zero, s10, 24
                  sub          t2, ra, s4
                  lui          a7, 259041
                  and          t0, s4, sp
                  sra          a3, t5, tp
                  nop
                  sll          a4, a6, s10
                  sltiu        s5, s6, 312
                  srl          s1, a3, s4
                  lui          tp, 315911
                  srli         s3, zero, 21
                  slli         t6, a4, 13
                  sub          s11, tp, tp
                  add          t5, s1, a1
                  auipc        s10, 128625
                  lui          t1, 697570
                  srai         a1, a2, 5
                  andi         s7, t1, -1279
                  xori         t1, a1, -620
                  auipc        a2, 793905
                  auipc        s10, 2579
                  sub          a7, s8, s5
                  slti         s1, s4, 1848
                  slti         ra, t0, -1519
                  slli         t5, a1, 7
                  addi         s10, t1, -241
                  nop
                  lui          s5, 319393
                  slli         ra, t4, 24
                  and          t6, s10, a7
                  sltu         a1, s9, s8
                  or           s3, t1, gp
                  slti         a4, t5, 1754
                  slti         ra, t4, 250
                  sll          tp, s7, s7
                  xori         s10, s9, -601
                  addi         t1, a6, -1339
                  srai         a2, t6, 11
                  lui          ra, 483786
                  nop
                  xori         s10, s8, 969
                  and          tp, t0, a4
                  xor          s1, a3, s1
                  srai         t4, s10, 16
                  srai         t6, a4, 10
                  nop
                  sra          t1, a1, s8
                  slt          gp, tp, s11
                  lui          t2, 1030920
                  add          s2, a0, a4
                  srl          t2, s9, a2
                  sltiu        a3, s2, -867
                  srl          a7, zero, sp
                  or           a0, s0, s3
                  nop
                  andi         a7, s6, 1839
                  xor          ra, sp, zero
                  slt          a6, zero, s0
                  auipc        t3, 25974
                  auipc        ra, 187952
                  srl          s10, a1, s7
                  sltu         s5, s7, a3
                  auipc        a3, 50351
                  sltiu        t2, a5, 1559
                  srai         s5, a3, 29
                  and          a4, s8, s0
                  andi         a7, s2, -501
                  slli         zero, a3, 25
                  and          a5, t5, gp
                  lui          a1, 985231
                  srli         a0, a2, 8
                  nop
                  andi         s2, s8, -1604
                  slli         gp, t1, 2
                  sltiu        a1, gp, 1098
                  sltu         zero, a1, ra
                  or           s7, a6, ra
                  slli         s4, t5, 11
                  xori         a2, s3, -523
                  srl          a2, a6, a7
                  sltu         s5, s5, tp
                  auipc        s3, 827367
                  or           t4, s6, a7
                  slt          s7, sp, s11
                  nop
                  slti         s7, t5, 414
                  add          a4, s1, tp
                  and          t4, s4, a5
                  sll          s3, s0, s3
                  addi         s2, s9, -1249
                  addi         zero, ra, -1285
                  xor          gp, tp, gp
                  slli         t5, a2, 2
                  sltu         t3, a4, t6
                  sra          s3, a4, s5
                  slt          s3, zero, t1
                  xori         gp, a5, 522
                  ori          tp, s6, 1360
                  xor          a7, s7, t6
                  addi         t6, t5, -734
                  slti         t0, tp, 1482
                  sltu         a4, a5, a0
                  or           s9, s9, s10
                  slli         t4, t1, 8
                  and          zero, a2, t4
                  sub          s5, sp, s9
                  slti         zero, sp, 1547
                  add          s10, a1, a1
                  sra          t3, s1, a3
                  sltiu        s9, s6, 960
                  xori         a4, a6, -218
                  srli         s2, a1, 14
                  slti         tp, t4, 2035
                  slt          s1, a4, t4
                  or           s9, ra, t1
                  add          a4, s5, t4
                  and          t3, a2, ra
                  auipc        zero, 971221
                  add          s7, s0, a5
                  sra          t1, s6, zero
                  or           ra, a2, s7
                  sll          t1, a6, t6
                  add          tp, sp, a3
                  auipc        s2, 163453
                  add          s9, a6, ra
                  sltiu        s3, s2, -376
                  sltu         gp, a4, zero
                  nop
                  or           s3, t1, s2
                  sra          t1, t5, a6
                  add          t3, a2, s8
                  and          a3, s8, s9
                  sra          s3, s0, a1
                  sub          s9, a7, a7
                  sltiu        a0, a1, -2030
                  add          t1, s2, s11
                  ori          tp, zero, -933
                  srai         s11, s6, 13
                  sltiu        a1, s7, -1268
                  addi         t4, t4, 1323
                  slli         a5, s5, 12
                  nop
                  and          s3, s4, s2
                  ori          s9, s7, 1160
                  sra          t6, s1, a5
                  srl          a6, a5, zero
                  andi         t0, tp, -1108
                  xor          a0, s5, a0
                  srl          gp, zero, t2
                  sltu         s7, a7, t3
                  sra          a5, s4, s7
                  add          a1, s10, a3
                  andi         s2, t6, 2000
                  auipc        s2, 564344
                  or           a6, a3, s2
                  nop
                  srai         s8, s6, 1
                  srli         t4, s4, 3
                  andi         a2, t1, 901
                  sub          s10, s5, a5
                  sll          a5, a2, s1
                  sltu         t4, s7, a7
                  srai         a5, a4, 19
                  or           s7, gp, s3
                  srli         s2, s10, 26
                  slt          t0, s5, gp
                  xor          s11, s4, zero
                  slti         t6, s4, 0
                  slli         t0, s4, 28
                  lui          a6, 723337
                  srai         a7, ra, 22
                  lui          a6, 389353
                  andi         t6, t0, -1788
                  or           s7, a0, ra
                  andi         t3, s11, 592
                  lui          s10, 141135
                  xori         s5, t5, -2037
                  lui          a0, 234937
                  srai         a7, t4, 27
                  srli         a6, a6, 17
                  or           a5, s0, a5
                  sltiu        a1, s5, 851
                  add          a0, gp, s3
                  slt          a5, t3, s1
                  or           s11, t6, t5
                  srl          a5, t3, t1
                  srai         s2, s11, 19
                  sltiu        s3, a2, -1251
                  addi         t3, tp, 1713
                  sll          a1, zero, a4
                  sll          s7, tp, a3
                  sltu         a6, s1, s1
                  slti         t6, s8, 934
                  lui          gp, 761195
                  srli         s9, a5, 17
                  slti         s1, a1, 1452
                  lui          s3, 536798
                  sltu         t4, s9, s5
                  xori         a7, a6, 405
                  auipc        t3, 429254
                  slti         s2, s4, 230
                  andi         t1, sp, 839
                  xori         tp, a5, 415
                  sub          t2, a5, s9
                  lui          a1, 933552
                  and          s8, t4, sp
                  srli         s1, s2, 14
                  sltu         t4, a7, t6
                  xori         t6, s8, -781
                  xor          s1, a3, a3
                  andi         s7, a4, 1967
                  sll          a1, s0, sp
                  lui          t1, 1045044
                  lui          ra, 754496
                  xor          ra, a6, s5
                  xori         t0, s1, 1319
                  xor          t2, s4, sp
                  auipc        a3, 59790
                  ori          s8, t0, 1262
                  sll          t2, a2, t3
                  sll          s7, s11, a0
                  sltu         s10, s10, a4
                  sltu         s10, a6, s2
                  srl          s4, a0, s11
                  and          s8, t0, t3
                  sltu         s9, s2, ra
                  srl          a0, a6, a2
                  or           t3, zero, s5
                  nop
                  lui          a0, 142534
                  sltiu        s9, a4, 466
                  add          a6, a5, t5
                  addi         tp, s7, -398
                  sltiu        a2, s2, 1693
                  or           t5, s3, sp
                  srai         tp, s2, 27
                  and          t0, s9, a3
                  sltu         a0, s8, a4
                  ori          s5, t2, 1430
                  addi         a5, ra, 719
                  add          s2, a3, a2
                  slt          t5, a3, zero
                  sra          s2, s7, s10
                  slli         t5, s0, 26
                  nop
                  slli         tp, a4, 13
                  sltu         s9, a1, ra
                  ori          s7, t1, 1912
                  sub          s3, sp, tp
                  sltiu        s9, a7, -318
                  ori          a2, a5, -869
                  sra          t3, s5, s5
                  xori         s1, t4, 390
                  lui          s2, 527003
                  srl          a0, gp, a6
                  sltu         tp, tp, s5
                  addi         a3, a2, 1063
                  sra          ra, a4, a3
                  and          a4, s7, t3
                  or           s2, t6, s9
                  sra          a2, s2, t2
                  srai         s9, s11, 5
                  nop
                  auipc        a7, 420552
                  sltu         t2, t3, s11
                  slt          s4, gp, a0
                  xor          t4, s7, t5
                  and          ra, t4, s5
                  srl          a5, t5, a2
                  andi         t4, a1, 959
                  slt          zero, a5, s10
                  slt          zero, s8, s11
                  and          a3, s11, a6
                  srl          a4, t6, s0
                  li           a6, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           a0, 0xffffffff
                  li           a7, 0x7676c6c2
                  li           a2, 0x0
                  li           a5, 0xffffffff
                  li           s1, 0xf022dfef
                  li           t2, 0xffffffff
                  li           s2, 0x0
                  li           a1, 0x80000000
                  li           t4, 0x80000000
                  lui          a6, 309726
                  addi         a5, s2, 1508
                  auipc        a6, 807697
                  nop
                  auipc        a6, 470935
                  lui          s2, 514634
                  auipc        a0, 533299
                  nop
                  addi         t2, t4, -1593
                  lui          a2, 534279
                  sub          t2, a0, t4
                  nop
                  add          a5, t4, a0
                  addi         a6, a2, -766
                  addi         a0, s2, -1919
                  sub          s2, s2, a0
                  add          a7, a5, a1
                  nop #end riscv_int_numeric_corner_stream_12
                  xori         zero, gp, 212
                  addi         a3, s8, 1321
                  ori          a3, s11, 746
                  sra          s3, a3, t0
                  slli         a1, t4, 4
                  srl          ra, a1, s1
                  nop
                  slt          a5, s11, a3
                  srai         a1, a1, 26
                  or           s4, a1, s3
                  and          t3, t2, gp
                  srai         a3, s11, 28
                  auipc        t6, 903272
                  srli         ra, tp, 23
                  auipc        s4, 311298
                  add          s5, s2, a4
                  slt          a1, a7, t2
                  or           t5, a3, t5
                  ori          t1, gp, -87
                  andi         s8, t0, 831
                  and          a6, a5, a6
                  xor          t4, a6, a4
                  sltiu        t4, t2, 392
                  xori         a2, a3, 1517
                  or           t2, s6, s0
                  sltu         a6, a1, s9
                  xor          gp, s0, ra
                  srl          s2, ra, s0
                  srai         s4, zero, 16
                  addi         a7, a6, 1916
                  addi         s5, a4, 241
                  xor          a3, s4, s2
                  srai         gp, a5, 27
                  add          a4, s11, sp
                  sra          s1, s5, s9
                  xori         s10, t1, 1691
                  sra          a5, t4, s10
                  lui          a3, 457635
                  addi         s1, s1, -1955
                  ori          t1, a0, -413
                  add          a3, a5, zero
                  sll          s9, t0, s7
                  srl          s2, a3, t1
                  slt          s2, s2, t3
                  slt          ra, s4, t0
                  srai         s8, zero, 17
                  slt          t0, a0, t5
                  ori          s5, s8, 1341
                  lui          a5, 950281
                  ori          ra, t2, -1595
                  sltiu        a6, t4, 530
                  add          a3, a1, a6
                  sll          t6, gp, ra
                  addi         s2, s7, -1961
                  srl          s3, ra, s1
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           t3, 0xa1af05a3
                  li           gp, 0x0
                  li           s3, 0x0
                  li           s9, 0x0
                  li           t4, 0x80000000
                  li           s2, 0x0
                  li           t6, 0x80000000
                  li           t5, 0x0
                  li           a0, 0x0
                  addi         gp, t5, -1444
                  lui          t4, 242508
                  sub          t6, s3, s9
                  addi         s2, s4, -1896
                  add          t6, s3, t4
                  add          gp, t3, t4
                  lui          t5, 225625
                  addi         a0, s9, 1365
                  nop
                  lui          t6, 33633
                  add          s4, a0, t3
                  nop
                  add          t3, t5, gp
                  nop
                  nop
                  sub          t3, t6, s3
                  sub          t6, t5, s4
                  addi         t6, gp, 261
                  addi         t5, s3, 1473
                  add          t5, s9, s4
                  sub          gp, s9, t3
                  addi         s4, t6, 1129
                  nop
                  auipc        a0, 538833 #end riscv_int_numeric_corner_stream_9
                  ori          tp, s4, -1181
                  srli         a2, s4, 22
                  slli         a5, a2, 26
                  slt          a5, s9, s8
                  sub          s2, a4, a7
                  xori         t5, zero, 976
                  sltiu        t4, s9, 754
                  xori         a6, s7, -1472
                  sub          a5, a3, tp
                  ori          tp, a5, 1975
                  srli         s10, a1, 4
                  srli         a3, s10, 2
                  slt          t6, s9, t0
                  and          t2, t5, s3
                  slt          t0, s10, s0
                  srl          zero, s3, t6
                  and          t1, s7, a3
                  slt          t2, tp, s3
                  and          s2, s2, a6
                  sll          s2, a4, s11
                  sub          s2, zero, a3
                  add          s5, s1, a2
                  slt          a5, s9, t1
                  sll          t1, a6, s5
                  and          a6, s6, t4
                  sltu         s8, t3, gp
                  sll          s1, t0, sp
                  auipc        t2, 176495
                  ori          s4, t1, 879
                  srl          ra, s9, s7
                  sub          a1, a7, gp
                  lui          a0, 4871
                  slli         t6, a6, 4
                  srl          zero, s7, s2
                  slt          t5, t0, s8
                  andi         s8, zero, -1460
                  srli         t5, s2, 1
                  srl          zero, a7, s2
                  and          s3, a1, s1
                  srai         a6, a1, 9
                  sra          t1, s10, a4
                  slti         t1, tp, 1626
                  lui          tp, 569780
                  and          s11, a7, t2
                  slt          s4, s10, a3
                  sltiu        t1, t4, -1883
                  lui          s1, 74630
                  sll          s11, s5, t0
                  slti         t6, s7, 770
                  xori         tp, tp, 31
                  add          s10, t2, s8
                  sll          zero, a1, a7
                  add          zero, t4, s0
                  andi         a0, a7, -1604
                  srli         t0, sp, 20
                  srai         s7, t4, 28
                  andi         a1, a1, 242
                  sra          s4, s1, ra
                  srli         a3, t2, 14
                  xor          s1, ra, s10
                  slli         s7, s4, 30
                  lui          a7, 723290
                  slt          s7, s4, a3
                  sub          a7, a7, a6
                  xori         tp, s7, 271
                  slti         s5, a5, 254
                  lui          a0, 908857
                  xor          a2, t6, t1
                  sra          a6, a7, a1
                  addi         s10, s2, 1371
                  sltiu        s4, ra, 1685
                  nop
                  addi         t3, s8, 1579
                  sll          t0, t2, a6
                  srl          zero, a6, t0
                  add          s2, s6, s4
                  slti         s9, s6, 1504
                  sltu         t3, a6, a4
                  slli         s10, a2, 11
                  xori         a5, t4, 1277
                  addi         s10, a3, 863
                  sltiu        a7, t0, -1063
                  sll          s11, t1, t0
                  slti         t5, s5, -1157
                  ori          s1, a7, -804
                  slt          t1, s3, s4
                  sltiu        s4, t3, 548
                  srli         a1, tp, 28
                  sltiu        a0, a6, 936
                  nop
                  andi         s4, s6, -1829
                  srai         t5, s10, 20
                  lui          s4, 152188
                  srli         a4, s5, 23
                  add          t0, s0, sp
                  sub          a5, t6, t0
                  sltu         t3, a3, s7
                  auipc        s7, 462825
                  ori          s3, a1, -181
                  slt          a3, tp, a5
                  or           s11, sp, s4
                  auipc        t6, 939166
                  slli         gp, ra, 30
                  andi         gp, t5, 1708
                  ori          s3, s10, -566
                  and          t3, gp, s5
                  sub          t2, s10, tp
                  add          s5, s9, s0
                  lui          t1, 218874
                  xor          ra, sp, a7
                  xor          a4, s1, s3
                  ori          s9, s2, 1620
                  sra          gp, t5, s8
                  sltiu        a0, t0, 123
                  or           s2, a2, t5
                  andi         t6, s10, -151
                  lui          t3, 34522
                  sll          a2, tp, s11
                  srai         s10, s5, 18
                  xori         t3, s1, 604
                  ori          s4, s8, 1374
                  xori         gp, t6, 766
                  add          t4, zero, t2
                  sll          ra, s7, gp
                  add          t5, a4, s7
                  xor          a6, s1, s3
                  nop
                  slli         s5, s0, 25
                  and          s9, s0, t4
                  slti         ra, s9, 1891
                  lui          a1, 679628
                  and          zero, s0, s2
                  lui          t0, 27834
                  xor          t0, s4, s11
                  slli         a6, s11, 29
                  sltiu        a4, a3, -721
                  sub          s7, a5, a0
                  xori         s8, s1, -467
                  ori          t2, s1, -1560
                  sra          a7, a1, a1
                  or           s5, t5, a1
                  xor          gp, a5, s10
                  srli         s10, a4, 19
                  sll          s10, a2, s2
                  add          s7, t6, s2
                  and          a0, t0, a1
                  xor          t6, t2, s0
                  andi         a4, t2, 929
                  add          t6, t3, s9
                  lui          s10, 839194
                  sltiu        gp, a5, -1973
                  ori          a1, t3, -400
                  xori         t0, t1, -375
                  srli         tp, t5, 14
                  xori         t4, t1, 1457
                  addi         s11, t6, -443
                  sub          s2, a7, s10
                  xor          a4, s8, s3
                  andi         s3, s11, -477
                  auipc        s4, 730763
                  ori          a1, s2, -1491
                  andi         t4, s4, 757
                  srl          t2, s9, s0
                  add          s4, a3, t5
                  srl          ra, t2, s10
                  or           a5, gp, tp
                  slli         t5, s7, 15
                  sra          a5, t2, ra
                  srli         s3, a1, 6
                  ori          t0, t2, -186
                  sltiu        s9, sp, 489
                  srai         t0, ra, 9
                  andi         s9, s10, 1067
                  slti         t0, s9, -861
                  add          a6, s11, s3
                  lui          zero, 176390
                  sltiu        s7, sp, -1911
                  xori         a1, t5, -1187
                  and          gp, s0, s10
                  xori         s9, t5, -849
                  or           s2, a7, a3
                  srai         s11, gp, 6
                  andi         zero, t6, -679
                  slt          t4, tp, a2
                  andi         s10, a6, -834
                  sltiu        ra, t1, -227
                  ori          s1, t0, -1453
                  slli         a2, s10, 18
                  sub          t5, a4, tp
                  sra          t5, s2, s6
                  sltiu        t5, gp, 1307
                  and          s4, s5, gp
                  sra          a0, t2, s8
                  xori         s2, t5, 1127
                  srl          ra, a0, s11
                  slti         t5, s0, 1533
                  slli         s3, a6, 28
                  srai         t3, a6, 9
                  xori         t5, s0, -563
                  slt          t1, sp, s1
                  or           t6, a5, s1
                  srli         t0, gp, 22
                  sltiu        a7, t2, -884
                  nop
                  add          s1, a5, s10
                  srai         s10, a2, 16
                  srai         tp, s5, 10
                  lui          s3, 530851
                  srai         zero, a1, 6
                  sltiu        a5, a4, 808
                  sll          s8, s0, s6
                  sll          s10, sp, a3
                  sll          t0, t2, s9
                  sltu         tp, t5, zero
                  lui          s8, 203667
                  or           s3, ra, t2
                  ori          s5, s6, -860
                  slli         s3, gp, 6
                  slli         s7, t0, 18
                  sra          s5, gp, a5
                  slli         t1, t0, 11
                  srli         a7, s10, 13
                  add          t2, s11, a5
                  andi         a6, t6, -351
                  li           s8, 0x8ab625ad #start riscv_int_numeric_corner_stream_0
                  li           s2, 0x4b2b6db5
                  li           t6, 0xffffffff
                  li           s9, 0xffffffff
                  li           a3, 0x80000000
                  li           s10, 0x5148c50d
                  li           a4, 0x0
                  li           s3, 0xffffffff
                  li           tp, 0x80000000
                  li           a1, 0xffffffff
                  lui          a1, 515098
                  sub          s8, a3, s2
                  nop
                  sub          s8, a4, a1
                  lui          s10, 286270
                  nop
                  nop
                  nop
                  sub          tp, s9, s3
                  sub          a3, tp, a3
                  lui          a4, 406840
                  nop
                  nop
                  auipc        s10, 715763
                  auipc        s10, 240131
                  auipc        s9, 33550
                  add          tp, s8, s2 #end riscv_int_numeric_corner_stream_0
                  srai         a7, a0, 28
                  sltiu        t0, s10, -1642
                  sll          a0, t4, a2
                  sll          a3, a7, s11
                  srli         t1, a2, 19
                  auipc        t1, 17130
                  and          s9, s9, t1
                  srli         a5, sp, 15
                  and          s1, a7, s5
                  and          a3, a4, s0
                  srl          s1, ra, t0
                  and          a7, t2, a0
                  srai         zero, a3, 11
                  xor          s3, s3, s2
                  xor          a0, ra, s8
                  slt          tp, a5, s7
                  nop
                  slti         s3, t5, -507
                  add          s4, t5, zero
                  or           a4, s10, s8
                  add          a4, s0, s11
                  sra          a3, t0, t4
                  sltu         s1, a0, sp
                  addi         s8, s4, 1211
                  sra          ra, a1, s0
                  sll          a4, s11, s3
                  or           s10, t0, gp
                  slti         s3, t4, -1509
                  sub          zero, a1, a2
                  sltiu        s8, s5, 729
                  sltiu        a2, s9, -1005
                  sub          s5, t1, a4
                  slli         s2, t1, 6
                  xori         a4, t5, 1608
                  srl          t0, a4, a1
                  nop
                  srl          a7, s2, a1
                  ori          s8, sp, 1994
                  ori          a7, t0, 1864
                  sll          s5, s3, t1
                  lui          ra, 1011123
                  xori         s7, a7, 1399
                  xor          ra, a4, s6
                  xor          s9, t5, t1
                  lui          s4, 778319
                  srli         a7, s6, 17
                  auipc        s9, 196205
                  srai         s3, a2, 21
                  xor          a1, tp, s7
                  ori          a3, gp, 188
                  srl          s9, a4, a3
                  and          a4, s8, s10
                  addi         a4, t1, -1496
                  lui          t4, 598429
                  add          s11, zero, a5
                  slt          a3, s6, tp
                  srli         s3, t0, 0
                  xor          t5, s4, a4
                  slt          s8, tp, t0
                  srl          s10, a6, zero
                  auipc        s1, 244911
                  slli         t3, s11, 21
                  srl          t4, s5, a3
                  andi         a7, s6, -391
                  sltu         s8, a2, s9
                  and          s2, tp, a5
                  srli         t5, a2, 22
                  slti         t4, a1, 137
                  or           s1, a4, ra
                  srl          a5, tp, s11
                  sub          t2, s3, t6
                  or           s7, sp, a2
                  sltiu        s1, s7, -958
                  srai         t2, s4, 31
                  slt          t3, a1, sp
                  slli         a7, t1, 17
                  srai         t4, a3, 26
                  sra          gp, s7, s10
                  add          t5, t0, t2
                  ori          s2, a5, 559
                  slli         ra, t5, 25
                  slt          s3, s2, gp
                  sra          a0, s1, t4
                  add          t3, s9, t4
                  add          ra, t5, s8
                  add          zero, sp, t1
                  xor          t2, a1, t0
                  addi         s11, a0, -1127
                  andi         t3, a3, -1235
                  ori          s5, a0, 923
                  srl          a5, a4, s8
                  nop
                  srai         zero, a5, 17
                  ori          t6, a2, -859
                  slti         s8, a1, 351
                  nop
                  sra          t1, s10, a1
                  and          t3, s4, s11
                  ori          t0, s1, 46
                  lui          t1, 847296
                  srai         a7, gp, 19
                  slt          t3, s1, a4
                  srai         s8, t6, 30
                  auipc        s11, 720125
                  sltu         a6, s10, s2
                  add          s11, s9, t3
                  addi         a7, s11, -476
                  sltu         a0, ra, s0
                  sltiu        t1, a4, 1365
                  srai         zero, t0, 30
                  srli         t1, t3, 20
                  slti         s1, t1, 106
                  lui          tp, 74166
                  lui          s1, 661555
                  xori         s9, s4, 1947
                  srli         s4, s0, 0
                  srl          s9, s1, a4
                  srl          a4, t0, s7
                  sll          gp, a4, s7
                  srli         a1, s6, 26
                  srli         a7, s0, 26
                  srai         s1, s5, 13
                  auipc        a3, 509357
                  add          t5, t5, s0
                  xor          s9, t3, t3
                  sltu         a6, s3, s2
                  lui          s4, 267942
                  auipc        s8, 712118
                  srli         a6, s1, 20
                  slti         a1, s2, 747
                  nop
                  addi         t4, s3, 2011
                  srl          a6, sp, s11
                  xor          a5, t3, a0
                  sltiu        tp, s11, 1422
                  add          a3, a4, s8
                  nop
                  add          s2, s7, s9
                  lui          s1, 967061
                  or           a0, t6, t5
                  slti         gp, tp, 1816
                  auipc        s8, 147394
                  slli         t2, s11, 3
                  or           zero, a7, a5
                  lui          t1, 603825
                  addi         t1, s10, -1786
                  slli         a4, t0, 1
                  slt          t0, a5, a6
                  or           t2, s11, a3
                  li           a6, 0x85a5168f #start riscv_int_numeric_corner_stream_15
                  li           t3, 0x812ccdd0
                  li           s9, 0x0
                  li           t0, 0x0
                  li           t4, 0x80000000
                  li           s2, 0x80000000
                  li           a4, 0x0
                  li           t5, 0xd15e9dff
                  li           ra, 0x80000000
                  li           a7, 0x0
                  auipc        a6, 183916
                  add          a6, t4, t4
                  addi         s2, t0, 1257
                  nop
                  addi         a7, ra, 1823
                  addi         ra, a6, 1626
                  add          t5, a4, a6
                  addi         t0, ra, -2002
                  auipc        a6, 709767
                  nop
                  lui          t3, 704694
                  add          t3, a7, s2
                  sub          s2, t4, s2
                  addi         a4, t0, -1406
                  add          a7, t4, t5
                  lui          t3, 681025
                  sub          ra, a4, t0
                  lui          a6, 976631
                  sub          t4, t3, s9
                  lui          a7, 353970
                  sub          t3, s2, s2
                  nop
                  nop
                  auipc        s9, 578074
                  auipc        t5, 458982
                  add          a6, t4, a6
                  sub          t3, t5, a6 #end riscv_int_numeric_corner_stream_15
                  add          gp, s4, t0
                  srai         t2, a5, 1
                  slti         t4, s7, -126
                  add          s5, a2, a2
                  auipc        tp, 1014552
                  add          s5, t3, tp
                  or           gp, ra, s9
                  slti         a7, a4, 225
                  sltiu        s9, a4, -98
                  sltiu        a0, t5, 690
                  addi         s2, gp, -1265
                  slt          a1, s7, s3
                  add          t3, s8, gp
                  sltiu        a1, tp, 1378
                  slt          t3, s3, s8
                  srai         s5, t1, 29
                  nop
                  srl          t0, t2, s4
                  xori         s10, a7, 306
                  and          s7, a3, s0
                  slt          t0, t3, t6
                  or           s10, s7, a0
                  or           a5, s6, s2
                  or           t0, s6, tp
                  sltiu        t4, gp, 2043
                  lui          a7, 414412
                  or           t6, s8, s8
                  addi         a1, t0, -1546
                  sra          s2, sp, s5
                  slti         a1, s2, 1625
                  srli         s11, tp, 4
                  xori         s7, a0, -550
                  xor          a7, sp, t3
                  nop
                  srli         s1, a2, 16
                  srl          s2, a4, s10
                  srai         a4, t0, 1
                  xori         s3, gp, 1037
                  nop
                  auipc        s1, 354430
                  srl          t2, sp, s4
                  srai         a2, t2, 10
                  or           a7, a6, a4
                  xori         s5, s0, -889
                  sltu         t1, s5, s3
                  add          s5, a2, t2
                  ori          s7, a1, -1486
                  srl          t1, t5, t1
                  sub          ra, t5, a3
                  srl          zero, s0, a1
                  sltu         t2, s10, t6
                  or           ra, s11, t2
                  sra          a4, s4, a3
                  and          a6, s7, gp
                  nop
                  srl          s8, s3, a2
                  slti         t1, s1, -104
                  sll          a6, gp, t5
                  sra          s11, tp, s2
                  sltu         s9, t4, s1
                  sltu         a3, s8, s0
                  slt          a0, a5, t4
                  xor          a7, s6, s11
                  srai         s2, s2, 4
                  ori          a5, a4, -1678
                  xor          a3, s0, s2
                  xori         a2, a1, 1562
                  nop
                  slt          a1, t5, gp
                  slli         a1, t0, 9
                  srl          t2, s1, a6
                  xor          a6, gp, a0
                  xori         a1, a7, 614
                  xori         a4, s11, 1709
                  slt          s10, s3, a7
                  andi         a4, gp, 1766
                  add          t5, tp, s5
                  ori          a2, s6, 808
                  sll          t2, s2, s11
                  sll          tp, s7, t4
                  sra          s7, s3, ra
                  ori          s5, ra, -1564
                  nop
                  ori          ra, a4, -538
                  sll          gp, s10, a0
                  addi         a5, t4, -328
                  add          s8, t4, s9
                  sltiu        s8, s0, -1521
                  auipc        s2, 78720
                  andi         s8, t1, -1230
                  sll          t4, ra, s11
                  srl          s5, s9, zero
                  slt          t6, s5, t2
                  srl          zero, tp, tp
                  srli         t0, a0, 0
                  andi         zero, s8, 1747
                  add          ra, tp, s10
                  and          t0, a2, t1
                  add          a2, s0, s0
                  lui          t5, 283192
                  xor          a5, a6, t4
                  slt          t5, t4, s10
                  srl          gp, a2, s3
                  slti         a5, s6, 1557
                  auipc        gp, 688262
                  srli         a4, s11, 26
                  sra          s1, a7, s2
                  sra          t0, a2, s11
                  xor          t6, s1, s4
                  sub          gp, a1, t1
                  slti         s2, ra, -749
                  or           a0, s2, a5
                  or           s7, t0, s7
                  or           t4, t1, a2
                  slti         ra, a3, -1103
                  addi         a2, t2, -1464
                  or           t2, s3, s4
                  auipc        s7, 771178
                  slt          t2, sp, sp
                  nop
                  srai         a2, t2, 24
                  nop
                  lui          a7, 105899
                  andi         s2, a5, -437
                  add          s5, s10, a6
                  slti         a2, s0, -1433
                  or           zero, a2, t2
                  lui          gp, 40857
                  andi         s8, t0, -689
                  sltu         a4, s3, a6
                  auipc        s5, 949678
                  or           a2, s10, ra
                  sltu         s5, s3, s7
                  sltiu        s4, a2, -1341
                  auipc        s1, 93017
                  nop
                  lui          s10, 477120
                  auipc        tp, 234255
                  slt          t2, t1, s10
                  sub          t2, a3, s9
                  sll          ra, a6, t5
                  add          s5, a7, t3
                  add          a7, t3, s8
                  lui          s2, 272536
                  xor          a1, gp, a0
                  sra          s2, a5, t6
                  srli         gp, zero, 10
                  sll          ra, s5, ra
                  xori         a6, gp, -1997
                  slli         a3, t1, 13
                  sub          s1, s5, s0
                  auipc        s11, 138470
                  slli         t1, s10, 20
                  srl          a7, a2, tp
                  slli         t4, s4, 27
                  andi         s8, s5, 1922
                  and          s2, zero, a0
                  and          ra, a2, a0
                  sra          a5, t4, s11
                  or           a4, s2, t3
                  sub          t3, zero, ra
                  or           a7, a5, s10
                  srai         zero, a4, 16
                  lui          s9, 670561
                  sra          t2, sp, a0
                  nop
                  lui          a7, 289070
                  auipc        ra, 587762
                  slli         s1, s5, 17
                  slli         s3, s4, 0
                  slti         a2, zero, 1002
                  nop
                  xor          s1, t4, zero
                  addi         s10, t0, 894
                  sra          s2, t1, t4
                  sltu         s9, a3, s0
                  sltu         t2, sp, t4
                  nop
                  auipc        a2, 85404
                  lui          s7, 13322
                  slti         s1, t0, -6
                  and          t4, t0, s9
                  auipc        a1, 252718
                  add          s11, s10, t6
                  lui          t2, 760310
                  slli         s1, s10, 1
                  sltu         t1, a4, s3
                  srl          s11, zero, t4
                  slti         s5, t5, -2021
                  auipc        t1, 658146
                  auipc        t3, 734500
                  auipc        t4, 794519
                  sll          t4, t0, s10
                  or           gp, t3, ra
                  sll          ra, s0, s5
                  sub          a5, a5, a3
                  sra          a5, t6, s2
                  add          gp, t4, t6
                  xor          s1, s4, a4
                  xori         a3, t4, -1462
                  xor          t2, s9, ra
                  auipc        t0, 148199
                  sra          zero, s1, a2
                  nop
                  ori          s11, s7, -66
                  sra          s8, s2, a6
                  srl          t0, gp, t6
                  slt          t5, a1, a1
                  and          s9, sp, a5
                  addi         s10, t6, -550
                  nop
                  srli         t0, t4, 8
                  and          s10, tp, s7
                  add          t4, gp, sp
                  slti         t3, s11, -1829
                  sltu         t0, sp, s8
                  add          t5, t4, a5
                  sltiu        a7, a5, -1175
                  slli         a6, t1, 7
                  add          s3, sp, zero
                  ori          a4, a3, 1492
                  srai         zero, a1, 30
                  xor          a1, t6, a7
                  sra          t2, gp, gp
                  srai         a6, a1, 3
                  sltu         t0, s10, s11
                  auipc        a6, 204083
                  lui          s7, 643676
                  auipc        ra, 199616
                  sub          a4, t2, s10
                  xor          a5, a0, t5
                  slti         zero, a1, 1167
                  slli         a4, s10, 15
                  or           a1, t3, s2
                  slt          t1, s9, a3
                  andi         s10, a0, 1689
                  srl          t6, a0, s2
                  srai         t1, a5, 11
                  addi         t5, gp, 1933
                  xori         a5, a2, 1982
                  and          tp, zero, s5
                  andi         s11, s4, 1066
                  ori          a4, sp, 1659
                  xor          s1, zero, s4
                  sll          a4, s1, s8
                  slti         t4, a4, 1665
                  add          s8, a2, gp
                  xor          a6, s10, zero
                  sltiu        a5, t6, -1361
                  auipc        t5, 599770
                  xori         t2, s4, -403
                  sltu         s2, s0, s0
                  srl          s10, s5, t6
                  and          s4, s8, s0
                  andi         t4, tp, 103
                  lui          a2, 183932
                  addi         t0, t1, 1938
                  auipc        s3, 320148
                  and          t3, s10, t6
                  or           s9, t2, a4
                  srl          s3, s4, s8
                  srai         gp, gp, 16
                  addi         s8, a2, 77
                  srli         s9, t2, 0
                  or           a0, s5, s4
                  ori          t3, a0, 2004
                  sub          t6, t5, t6
                  nop
                  xor          t0, a2, t1
                  nop
                  srai         s5, t6, 30
                  sll          t5, s4, s1
                  srai         s11, t4, 16
                  add          s10, a4, t5
                  xor          a6, a5, a0
                  slt          t5, t6, a6
                  lui          s8, 79299
                  slt          gp, s6, t1
                  slt          s8, gp, tp
                  add          a5, a3, a4
                  addi         zero, s3, 823
                  sltiu        tp, a1, -869
                  srli         a6, s5, 29
                  ori          a6, t1, 1970
                  sub          a1, a4, t6
                  andi         s9, a4, 487
                  nop
                  add          s2, a0, t2
                  srl          s5, t2, t1
                  addi         a6, t1, -1440
                  xor          t3, s9, s5
                  lui          a7, 349098
                  and          s10, t4, gp
                  xori         s7, a6, 603
                  slli         t6, s6, 1
                  andi         t3, ra, 540
                  sub          t2, a3, t1
                  sll          t5, t4, s3
                  add          t0, t2, zero
                  srli         t5, t2, 30
                  auipc        a5, 500921
                  srli         ra, s3, 6
                  andi         a0, t2, 1152
                  slti         gp, s8, -126
                  or           a2, gp, s0
                  srli         a0, s1, 10
                  xor          a3, a5, a1
                  add          a3, s5, a6
                  auipc        a2, 321414
                  sub          s7, a5, tp
                  slt          t5, gp, s0
                  sltiu        t5, t0, -1438
                  srl          t4, s10, a4
                  sra          s2, s7, s9
                  xori         t6, t6, -1976
                  sltiu        a4, s3, 1397
                  or           tp, t1, t1
                  srai         t0, s6, 26
                  xori         a0, t6, -1766
                  slti         s9, t2, 101
                  sltiu        a2, a0, 1221
                  sub          t3, s2, sp
                  slti         t2, s5, -2048
                  add          a3, s8, a1
                  or           a0, s2, s4
                  ori          s11, a1, 263
                  srai         a5, s8, 1
                  srli         s10, s2, 14
                  sltu         s7, t2, t5
                  slt          a4, t6, s7
                  sltiu        zero, s4, -1753
                  add          t5, s2, t4
                  add          t0, t6, s9
                  slli         tp, a3, 0
                  auipc        ra, 495462
                  xori         s2, t2, 30
                  sub          a7, a3, t0
                  and          s3, s3, a1
                  sltiu        a7, a3, -629
                  sll          s3, s11, t2
                  lui          a1, 583802
                  or           s9, s10, a7
                  add          a0, a4, t5
                  andi         s7, s0, 118
                  xori         tp, a0, -1774
                  sltu         a3, gp, s10
                  slti         ra, t2, 382
                  add          a1, s4, a6
                  sltu         a1, a7, s1
                  slt          a5, a0, t6
                  slti         ra, s5, -1807
                  srai         s2, t2, 11
                  slt          a4, tp, a2
                  srl          a6, a4, zero
                  sra          s10, a7, t3
                  sub          s10, a1, a7
                  addi         t1, a2, -1944
                  add          a3, s9, t2
                  sub          ra, s4, a6
                  sll          t1, a6, s1
                  lui          s8, 516724
                  addi         a4, t4, 617
                  srai         a2, a1, 22
                  sltu         s4, a0, a0
                  srli         a7, t1, 3
                  ori          s5, s9, 974
                  sra          s7, s1, s5
                  auipc        ra, 541610
                  sltu         a0, sp, s0
                  xori         s1, t2, -1831
                  srli         s9, a7, 7
                  sub          s9, s5, a3
                  add          a5, gp, s9
                  nop
                  sll          s1, a1, a1
                  srl          s7, s9, s1
                  lui          t0, 290599
                  nop
                  sub          s8, s4, s11
                  nop
                  xor          a3, a7, a6
                  ori          a5, a1, 1262
                  srai         a4, gp, 24
                  slli         a4, sp, 14
                  or           zero, t3, tp
                  auipc        zero, 796397
                  sltu         s8, ra, t4
                  srli         t1, a5, 22
                  slti         a6, t3, -1816
                  slti         a7, t3, -1861
                  sra          s11, s3, a7
                  slti         s9, a3, -579
                  nop
                  addi         a7, sp, 311
                  xor          t3, t6, s0
                  addi         t3, s7, 909
                  xor          s4, s1, s8
                  addi         t4, s11, 2018
                  sub          s7, t0, s9
                  xor          s9, s0, s2
                  ori          s9, t6, -1060
                  xor          a7, a1, s10
                  xori         t5, a5, 1327
                  srl          a1, s0, a5
                  andi         s5, gp, 306
                  ori          s2, tp, -748
                  srl          t1, a3, s1
                  sub          s4, a0, s3
                  sltu         t3, s3, t6
                  sra          a7, t6, tp
                  slti         s4, s0, -2024
                  sub          t0, t4, s6
                  nop
                  auipc        s1, 465228
                  slti         t3, s6, -734
                  slt          t6, t4, s2
                  sub          gp, t2, t5
                  xor          s8, a3, s9
                  sra          s5, s6, tp
                  add          s9, sp, t4
                  addi         a7, s7, -1006
                  slt          a5, zero, s9
                  srl          a1, a1, a1
                  ori          tp, a5, -592
                  sltiu        gp, s6, -204
                  srli         a1, s7, 31
                  add          s7, s9, a3
                  xor          s9, a4, s7
                  or           s7, ra, a3
                  sub          t0, gp, a0
                  srl          s2, t0, s9
                  ori          a7, t1, 1048
                  and          s7, s3, a3
                  sltu         a7, s3, gp
                  srai         tp, s7, 12
                  xori         t5, s5, 1057
                  xori         tp, t0, -1925
                  add          a7, a2, s0
                  nop
                  add          a3, s1, s0
                  slt          t0, a5, t6
                  sltu         a0, sp, t5
                  auipc        t0, 873010
                  srl          t0, t5, s4
                  ori          a5, a5, -1086
                  srai         a4, a4, 5
                  srl          a6, t5, s1
                  slti         a1, s8, 1480
                  and          t6, s4, ra
                  ori          s5, a0, -1987
                  srai         a1, s7, 15
                  slli         a6, s0, 5
                  sltiu        t1, zero, -525
                  auipc        zero, 728090
                  addi         zero, a4, 610
                  xor          t0, t6, s11
                  and          s7, t2, s6
                  srli         s7, zero, 5
                  slt          s5, a4, a3
                  andi         s10, a4, -1195
                  sll          a5, ra, a0
                  sltiu        t3, s1, 852
                  ori          t3, gp, 161
                  srl          zero, s1, s2
                  srli         t3, a7, 11
                  sltu         s11, s11, a4
                  or           a0, s0, t4
                  srai         a0, ra, 4
                  slti         t2, s1, -1875
                  lui          tp, 182560
                  auipc        a5, 235934
                  sltiu        s7, s0, -512
                  andi         s10, s0, 1984
                  andi         s4, t2, 1468
                  xori         a6, a6, 207
                  srai         t2, s10, 9
                  add          s3, tp, a2
                  sll          a6, a4, s5
                  slti         t3, tp, -1152
                  addi         s5, t1, -990
                  srl          s3, t4, a7
                  slt          s10, tp, s2
                  slti         ra, s8, 54
                  and          zero, zero, a5
                  nop
                  xor          tp, s10, s9
                  andi         t2, a1, 931
                  srai         s8, s11, 28
                  nop
                  sra          s10, s8, ra
                  ori          s10, zero, -1235
                  addi         t1, gp, -145
                  xori         s5, s7, 1970
                  and          a6, s5, t2
                  sll          s10, s2, a4
                  ori          s7, s3, -1004
                  auipc        tp, 90271
                  or           t0, t3, a4
                  addi         a0, s5, -379
                  auipc        s10, 1004920
                  addi         s7, a3, 462
                  addi         t0, s2, 686
                  sll          s1, s10, a2
                  sub          ra, s10, s6
                  and          s8, s8, t6
                  or           zero, a4, a2
                  auipc        t6, 238523
                  xori         s7, a3, 1124
                  sra          a1, s6, t6
                  srai         s3, a2, 10
                  srl          s8, s3, t5
                  srli         t5, ra, 10
                  sub          a2, sp, s0
                  sra          t4, t0, a2
                  lui          zero, 215607
                  nop
                  sub          s4, t3, s0
                  slli         a2, s2, 13
                  sra          t0, a4, a0
                  srli         a6, s4, 21
                  ori          t3, s10, -1893
                  sra          t3, a3, s4
                  or           tp, s5, a7
                  sra          ra, zero, a4
                  auipc        t6, 822531
                  xori         s1, t5, 795
                  or           s5, a3, s0
                  auipc        s10, 960995
                  or           s3, s8, ra
                  sub          a2, s6, a1
                  or           t6, a5, s11
                  slli         s9, s7, 16
                  and          t3, t3, a5
                  sll          a6, t6, a0
                  sra          t3, t3, t4
                  slt          s5, a3, s0
                  auipc        t3, 703327
                  auipc        t5, 399533
                  xori         tp, a0, -845
                  sltu         a2, s1, s6
                  addi         t1, s3, -524
                  slti         a6, s0, 1941
                  srai         s3, s0, 22
                  and          tp, s5, s7
                  nop
                  sra          a4, a2, a7
                  lui          a7, 852335
                  slti         s4, s1, 785
                  sra          gp, t2, a5
                  srl          a4, s7, ra
                  sra          zero, zero, s1
                  sltu         s2, s11, s0
                  srli         s8, s7, 3
                  slt          a7, a3, t3
                  andi         s5, a4, -556
                  lui          a0, 487646
                  ori          tp, a3, -9
                  andi         gp, s3, -40
                  auipc        s4, 280009
                  andi         ra, s3, 38
                  sra          tp, a4, t3
                  and          a3, t5, sp
                  sra          t5, a4, s7
                  slti         ra, a7, 1033
                  ori          t3, a5, 13
                  and          s11, a4, s0
                  and          s3, gp, a2
                  sub          a4, a6, sp
                  srli         a0, a0, 22
                  addi         t4, s8, 1265
                  ori          s11, s3, 1179
                  nop
                  srli         s10, gp, 13
                  srai         t3, zero, 23
                  srli         s1, s7, 0
                  auipc        a7, 607249
                  sltiu        s7, a3, -55
                  add          s4, s5, a2
                  lui          ra, 438848
                  auipc        a2, 444772
                  and          a7, s3, a0
                  srai         s4, t2, 23
                  sltu         tp, a6, t4
                  andi         a4, a4, 771
                  auipc        a7, 91785
                  ori          s1, s7, 1030
                  xor          t4, s9, s0
                  sub          a3, a1, t1
                  slt          s2, s8, a2
                  slli         t3, s7, 10
                  sub          s2, s7, a2
                  lui          s1, 477476
                  sub          a5, tp, t4
                  slt          t4, gp, t2
                  sub          s7, zero, s1
                  srai         s10, a7, 9
                  lui          a1, 1035415
                  srai         s9, s9, 27
                  addi         t5, a0, -35
                  nop
                  and          s3, t0, a5
                  xor          ra, s7, s6
                  ori          gp, a6, -59
                  srli         s3, s3, 2
                  srli         s10, s8, 21
                  addi         zero, t4, 1519
                  xor          s1, a6, tp
                  addi         s2, a0, -149
                  nop
                  slt          a5, s7, t4
                  slt          t6, t0, t0
                  add          s7, a1, a2
                  sltu         a2, s2, s1
                  sltiu        ra, s8, -1633
                  ori          t4, zero, -699
                  andi         ra, t4, 1707
                  or           t6, s3, s4
                  auipc        s11, 634134
                  or           tp, s1, zero
                  slli         s2, s0, 5
                  auipc        s11, 1041232
                  and          t1, ra, s7
                  sll          a3, zero, s5
                  xori         s5, t0, 1863
                  nop
                  ori          s10, t4, 37
                  srl          t3, gp, s1
                  add          t4, s7, zero
                  xori         s1, s9, 1139
                  xor          t0, s6, t1
                  sra          tp, s11, s11
                  slli         t0, s10, 14
                  srl          s7, s5, a4
                  nop
                  slli         s10, s9, 3
                  lui          s8, 87691
                  sltiu        s9, t6, 79
                  nop
                  sltiu        a3, gp, 1637
                  sra          a2, s8, gp
                  add          s10, s2, t4
                  xori         t4, a3, -1706
                  srli         tp, a2, 22
                  srl          t2, s11, a2
                  add          a7, t4, s10
                  slti         zero, s11, 707
                  xori         t4, ra, 1301
                  xor          ra, a3, a5
                  sltiu        s9, a2, -1040
                  addi         tp, tp, -358
                  srli         t6, a7, 17
                  and          s5, a0, s7
                  xor          t1, s1, s9
                  srli         s2, a0, 5
                  and          a3, s10, a0
                  sub          a1, gp, a4
                  sll          s1, tp, a3
                  andi         a7, s9, -1166
                  add          s11, a6, a6
                  slt          t5, s11, t2
                  slti         s3, t5, 371
                  and          s1, sp, gp
                  sub          s5, t2, t5
                  andi         a6, t6, -1122
                  srl          t1, s1, zero
                  sra          s1, t6, t3
                  srl          a6, a5, s0
                  sra          t3, a0, s11
                  slt          tp, gp, ra
                  srli         a3, s3, 19
                  xori         t1, t3, 792
                  xor          zero, s4, t2
                  addi         s10, a2, 1246
                  and          gp, tp, t3
                  slli         a4, s10, 22
                  slti         s1, a6, 1026
                  and          a5, t1, gp
                  nop
                  slti         a3, a7, -1707
                  auipc        ra, 521019
                  slti         s1, s5, 260
                  addi         t1, a5, -1322
                  sra          t4, a2, zero
                  slt          s7, s3, s1
                  slti         t1, s6, -802
                  sll          a0, ra, tp
                  andi         ra, a2, -1390
                  ori          zero, s11, 298
                  nop
                  add          s3, a2, s10
                  nop
                  lui          a0, 429987
                  srai         t5, t6, 16
                  sub          a1, s1, s1
                  ori          t4, a4, 242
                  ori          t6, a7, -1824
                  andi         s8, s0, -1828
                  addi         s11, tp, 124
                  add          t1, t1, t3
                  xori         t1, a7, 76
                  slt          t3, s5, s7
                  auipc        t0, 807393
                  add          t1, s10, s1
                  sub          s7, a7, t4
                  srl          s3, t1, s11
                  sll          s3, t0, s10
                  sub          s11, tp, s5
                  addi         ra, s2, -1681
                  auipc        s1, 421534
                  srl          s7, t1, s2
                  lui          tp, 397296
                  sltiu        s9, t1, -206
                  srli         zero, t3, 20
                  srai         a5, t4, 6
                  slli         s10, s2, 19
                  sltu         s11, s5, s3
                  xori         a7, s4, 920
                  slt          s8, t1, a5
                  srli         a3, a7, 18
                  nop
                  slli         s5, s11, 9
                  xori         a1, s3, -1833
                  srai         s3, s4, 2
                  srli         t3, t0, 28
                  addi         t1, s4, -8
                  slti         s9, s1, -286
                  nop
                  add          gp, t1, a7
                  nop
                  slt          s7, ra, s7
                  sll          s3, zero, a2
                  xor          a5, a2, s11
                  andi         a1, t6, 748
                  sll          s2, t5, ra
                  ori          a5, s6, 1038
                  sltu         a2, s0, a0
                  sra          t1, s11, t2
                  sltu         ra, zero, a4
                  sra          a3, a5, t1
                  and          zero, t0, ra
                  add          s8, s2, sp
                  sub          a7, t0, zero
                  srli         t4, s9, 17
                  auipc        a4, 665254
                  sra          t1, t4, a7
                  srli         a3, s0, 9
                  xor          s9, a3, s4
                  lui          zero, 111273
                  or           t6, s4, s8
                  or           a3, a2, s9
                  slli         a2, s6, 17
                  srli         t2, a1, 19
                  sra          t3, a2, s2
                  slli         s11, s5, 30
                  add          t6, t3, zero
                  andi         s10, s3, 204
                  addi         s4, s11, -582
                  sltiu        t0, s8, 468
                  sltu         s11, t3, s9
                  xor          a6, s2, s4
                  slti         s3, a7, 741
                  srl          s1, tp, s3
                  slli         t5, a7, 14
                  slt          s1, a3, t3
                  slti         s5, a2, 771
                  srai         t4, a4, 10
                  slt          t6, s5, s9
                  ori          a3, s4, 2031
                  xori         gp, s4, 1108
                  sra          t3, s7, a2
                  sltu         a1, a3, a4
                  add          s4, s7, s10
                  srl          s3, a7, a6
                  sltiu        s11, s6, -909
                  xori         s9, t3, -718
                  srli         t0, t6, 27
                  srli         s1, a4, 10
                  andi         t1, t0, 2029
                  xor          zero, s11, t3
                  slli         a3, s1, 13
                  slti         s4, ra, -380
                  ori          t1, zero, -647
                  xor          s9, t2, s8
                  slli         s8, s8, 28
                  addi         a7, tp, -71
                  ori          s8, t5, -1591
                  and          t4, t1, s6
                  nop
                  srai         s1, s5, 10
                  xori         a5, a0, 101
                  slti         tp, a6, 1670
                  sub          t2, s6, a7
                  srli         s3, a7, 22
                  or           a5, a3, a3
                  xori         s4, s9, -1918
                  sltu         s7, s2, s0
                  sub          s10, s3, s0
                  lui          a0, 263284
                  andi         s1, t6, -1773
                  xor          s7, a4, tp
                  sub          s2, a1, t1
                  sltiu        a4, gp, -310
                  andi         ra, a1, -992
                  sub          a4, t0, ra
                  andi         s2, t6, -2014
                  sll          t4, a5, t1
                  sltu         gp, s6, a2
                  ori          s10, a5, 548
                  xor          gp, a5, s1
                  srli         s5, s5, 6
                  nop
                  nop
                  sll          gp, a0, s6
                  ori          t2, a6, -283
                  srl          a4, s7, sp
                  nop
                  and          s8, zero, a6
                  srli         a1, s0, 18
                  sub          t1, t4, s3
                  sub          t1, s1, s11
                  sub          s5, s10, a1
                  lui          a5, 41374
                  slt          a4, t2, a1
                  xori         s2, s4, 1923
                  and          s1, t4, a4
                  sltu         a5, s11, s3
                  and          a0, s10, a3
                  slti         s5, s2, 761
                  nop
                  andi         a0, t3, 250
                  srli         s3, s9, 15
                  lui          s5, 532440
                  sltiu        s7, t6, 265
                  ori          a4, s11, -1361
                  sltu         t2, sp, s5
                  sltu         s4, t6, gp
                  slti         a6, a5, -1000
                  or           zero, s8, s0
                  lui          a6, 26548
                  xori         t0, t5, 1161
                  xor          a3, zero, s0
                  nop
                  add          gp, t1, a2
                  or           t2, a3, a7
                  sll          s4, s3, t2
                  sll          zero, t6, t0
                  sltiu        a0, t3, -1139
                  sltu         a3, s6, t6
                  srai         zero, s10, 20
                  xor          s8, t6, a5
                  or           a5, s10, s7
                  xor          s1, t2, a1
                  auipc        gp, 718103
                  srl          t6, a5, t1
                  nop
                  xori         tp, s8, -1153
                  nop
                  ori          s9, s1, -384
                  srli         a3, tp, 14
                  slli         s7, s11, 24
                  sll          s1, s8, s11
                  lui          s5, 259188
                  add          gp, s10, s9
                  and          t3, t2, s8
                  sltu         a6, gp, s6
                  sltu         a3, a7, gp
                  and          s10, s8, s2
                  or           s2, a0, s1
                  nop
                  sll          s7, a7, s3
                  addi         s4, s0, -1574
                  sra          zero, a7, t1
                  or           a6, a2, s0
                  and          a1, t1, s6
                  or           t4, a3, s0
                  xori         s2, s8, -116
                  slt          s3, t4, a4
                  ori          a0, s0, 1148
                  sra          s9, t4, a6
                  sltu         a0, t6, ra
                  slti         ra, a0, 635
                  sltu         s10, s8, gp
                  addi         t5, s6, -1222
                  srai         a0, ra, 29
                  add          zero, s8, a2
                  andi         s4, s7, -1928
                  add          a7, t1, s5
                  slti         s7, s8, 199
                  sll          a7, a5, s7
                  srli         a4, tp, 27
                  ori          zero, s1, 534
                  xor          t5, a2, sp
                  sltu         t5, s11, zero
                  and          s3, gp, s0
                  auipc        a6, 310913
                  add          s4, zero, ra
                  add          tp, s9, t0
                  sltiu        t6, t5, 343
                  lui          gp, 223201
                  xori         s1, t4, -650
                  slt          t0, a4, a1
                  and          s10, t0, s7
                  sll          a2, a6, s4
                  srli         zero, s0, 17
                  andi         t0, t2, -1181
                  slli         s10, s11, 25
                  ori          s7, ra, 1606
                  slti         t4, s0, 1453
                  xor          a5, t6, s11
                  xor          s3, ra, gp
                  slli         gp, s5, 3
                  slt          a1, s1, a0
                  sub          s1, zero, tp
                  sra          a3, gp, t4
                  xori         s7, a2, 386
                  andi         a7, a4, 282
                  auipc        a7, 970643
                  nop
                  sltu         zero, s9, sp
                  addi         ra, t2, 404
                  or           s3, s8, a4
                  srai         s4, a4, 0
                  andi         a1, s3, 300
                  addi         ra, s3, -1892
                  auipc        s7, 114584
                  lui          t1, 1032809
                  and          a0, a3, s3
                  xor          s11, s3, t5
                  addi         s11, s11, 370
                  sra          a7, a3, s6
                  lui          s1, 498442
                  srai         s9, a5, 12
                  srl          t6, s9, t5
                  or           a4, s10, a2
                  srl          t3, s10, s11
                  xor          a7, t1, t0
                  sra          a6, t4, s10
                  xori         s8, a0, 2035
                  sltu         a3, t6, tp
                  sub          s8, s5, s1
                  sll          s9, t5, s1
                  add          s10, t4, s5
                  slti         gp, s6, 1408
                  srl          s7, a6, a3
                  andi         s5, t0, 1259
                  nop
                  xori         tp, s10, 1140
                  xori         ra, t4, 542
                  ori          a0, a3, 125
                  slti         s10, sp, -1618
                  lui          a4, 761574
                  lui          t6, 284908
                  sub          t0, a1, a1
                  xori         s7, ra, -646
                  lui          a3, 129627
                  or           s2, gp, s2
                  add          s10, s5, s6
                  auipc        t4, 79668
                  addi         t6, s8, 1757
                  nop
                  slt          a1, s2, s1
                  andi         zero, s5, -870
                  sra          a0, s2, a3
                  xor          a5, t5, s8
                  srai         t5, s4, 6
                  xor          s8, s3, zero
                  sub          t1, a4, t0
                  add          s2, s7, sp
                  sltu         t0, s9, s8
                  and          s9, a4, t5
                  sll          t3, tp, a0
                  xori         s9, s4, 657
                  auipc        t2, 804055
                  slti         s10, a3, -1571
                  sltu         t6, s8, ra
                  andi         t0, s5, 419
                  srai         s1, a2, 7
                  sra          s4, gp, t2
                  srli         s7, s2, 0
                  lui          s11, 564772
                  srli         tp, t2, 0
                  xor          ra, s10, t3
                  addi         a0, a3, -1865
                  add          s1, a2, s10
                  sub          s10, a5, a2
                  addi         t0, s4, -563
                  xori         s7, a3, 1563
                  addi         a6, a0, -555
                  ori          t3, a5, -415
                  xor          s4, t6, s5
                  andi         s1, s3, -485
                  slt          s8, s0, s7
                  sub          s4, s9, a7
                  xori         s5, s0, -1055
                  slti         a4, ra, 395
                  andi         s7, t5, -1029
                  add          t5, a3, s1
                  addi         t4, a1, 371
                  ori          gp, a5, -1982
                  sltiu        s4, t2, -1595
                  lui          s5, 279941
                  andi         s2, a4, -112
                  sltu         t0, t2, s10
                  slli         s7, t3, 7
                  nop
                  sub          gp, gp, gp
                  sltu         t0, a5, sp
                  addi         t2, gp, 470
                  xor          s4, s9, s0
                  and          t1, a5, s6
                  or           s3, a6, t5
                  sra          s8, zero, s4
                  sub          s11, t3, t2
                  and          a2, t4, sp
                  sltiu        t4, a4, 1275
                  srai         a0, zero, 22
                  addi         a7, a4, -1078
                  andi         t4, t3, 1188
                  and          a1, s7, s4
                  slt          s5, s0, t3
                  slt          t5, t2, a3
                  sltiu        s10, a5, 1031
                  xori         a3, s6, -1006
                  ori          t2, zero, -800
                  sltiu        s11, s7, 725
                  lui          s2, 356027
                  sra          gp, s11, t5
                  srli         t5, a3, 8
                  andi         gp, a4, -1033
                  addi         ra, a1, 1968
                  xor          t3, s3, a7
                  sra          s11, a7, s3
                  slti         s10, t5, -1757
                  xori         a0, s7, 29
                  sll          a7, t3, a6
                  or           s5, gp, a0
                  slli         zero, s11, 21
                  andi         s3, s6, 41
                  slli         t2, s11, 9
                  sltu         a4, a4, gp
                  sltu         t4, t3, zero
                  sltiu        a5, t1, 1862
                  ori          t1, a0, -1041
                  srai         s11, sp, 19
                  sub          t2, t0, s3
                  xor          s9, t6, t5
                  srli         s10, t6, 26
                  xor          a3, s2, s7
                  srli         a2, sp, 27
                  sub          a1, t1, s10
                  and          s10, t2, zero
                  nop
                  andi         t5, s5, 253
                  auipc        a1, 971482
                  ori          a2, a4, 1875
                  xor          a0, s6, tp
                  sll          tp, t1, ra
                  ori          s10, ra, 213
                  or           t3, s6, s0
                  slli         a7, s9, 10
                  nop
                  addi         t5, s3, -1631
                  xor          gp, sp, s4
                  lui          t3, 978896
                  sltu         a5, t6, t1
                  srai         a4, a2, 22
                  slt          t0, a7, t2
                  xor          s5, gp, s4
                  srai         s7, s1, 5
                  sra          t2, s11, tp
                  sra          s10, s8, ra
                  xori         t6, s4, -1803
                  sra          s7, s9, t0
                  sltiu        zero, a4, -1520
                  slt          s9, ra, t5
                  addi         a5, s0, 1208
                  sll          a6, gp, t2
                  or           a4, tp, a1
                  xori         a4, a0, 920
                  xor          a2, s9, t1
                  srli         s2, s0, 17
                  slli         gp, s0, 30
                  sra          a6, a3, zero
                  srai         s4, s5, 31
                  srli         a7, s3, 28
                  auipc        t5, 1000191
                  xor          a5, a0, zero
                  ori          s4, a5, -2008
                  addi         t5, t5, -1497
                  addi         a3, a1, -1145
                  srli         t3, s0, 2
                  slli         s5, a6, 4
                  sra          zero, a2, a3
                  or           s2, s2, t0
                  slti         s1, a2, 903
                  srli         a7, s1, 16
                  slli         a2, s8, 6
                  srai         t2, s1, 8
                  srai         a0, sp, 30
                  auipc        a5, 215061
                  xor          s7, s5, s5
                  ori          a4, t1, -1440
                  sll          a0, zero, s8
                  slti         s11, t0, 651
                  xor          s2, s3, s6
                  add          s9, t1, t2
                  slli         s5, a1, 31
                  nop
                  xori         a3, s2, -1792
                  auipc        t6, 970100
                  slti         s11, s9, -1519
                  slti         s3, a6, 668
                  and          t0, t5, s2
                  lui          s8, 713029
                  sltu         a2, s9, a3
                  sub          a2, s10, t1
                  srli         s4, a3, 1
                  srli         a1, t4, 31
                  slti         s4, s6, 432
                  sra          s11, t3, s10
                  lui          t4, 748892
                  sra          a2, a0, s1
                  srl          s1, a7, sp
                  sll          t6, s9, a6
                  and          tp, t6, s8
                  srai         a2, t3, 18
                  sub          s1, t1, s10
                  xori         s5, a7, 1752
                  slt          t3, t2, zero
                  add          s11, s8, sp
                  sll          a1, t5, s4
                  xor          s1, s2, t1
                  lui          s1, 982019
                  srli         s8, t5, 4
                  auipc        s8, 124392
                  lui          t3, 231659
                  nop
                  ori          ra, s4, -1215
                  and          t5, a0, s8
                  slt          s1, a1, s1
                  sra          s1, s8, a7
                  or           zero, s11, s3
                  xori         tp, t4, -258
                  sltiu        a0, s3, -629
                  nop
                  srai         a4, a3, 25
                  slti         t6, ra, 962
                  addi         zero, s9, -1001
                  nop
                  sltiu        s5, a5, 214
                  slt          a1, s7, t4
                  sltiu        zero, s1, 1181
                  sub          tp, t2, t5
                  sll          s9, s7, s9
                  srl          a2, s6, a0
                  sub          a1, tp, ra
                  sll          s11, a0, gp
                  srl          s4, s6, a2
                  slli         s7, s10, 4
                  srl          zero, t1, s7
                  nop
                  xori         s5, zero, -1718
                  addi         s5, s11, -418
                  sub          t5, s8, gp
                  xori         a1, s9, 906
                  add          s2, a7, s6
                  slti         a0, s10, -1210
                  auipc        a7, 1017344
                  add          s4, gp, sp
                  sub          a2, s10, sp
                  sltu         a3, s6, t3
                  add          s2, zero, s9
                  slt          s7, a3, s0
                  sltu         s3, t0, tp
                  slt          s8, s3, t5
                  srli         t3, a0, 14
                  xor          t6, t3, sp
                  and          s1, a3, t2
                  sltiu        a1, tp, -1861
                  sltu         t4, s3, a3
                  slti         s8, t6, -998
                  srai         s11, s7, 30
                  addi         a0, s4, -1275
                  sll          a4, t6, t0
                  sll          a0, tp, s6
                  addi         t5, t4, 1616
                  sltiu        s3, t5, 834
                  auipc        t2, 260012
                  slti         a0, a6, -1379
                  sra          s2, s5, zero
                  xori         s9, s4, 1612
                  sll          gp, s3, a1
                  sltiu        s4, ra, -1801
                  slt          s2, t3, s4
                  srl          t0, a3, t0
                  sra          s7, s3, s3
                  and          s7, ra, t4
                  addi         t3, s2, -390
                  srai         s2, a2, 27
                  sra          a6, a2, t2
                  slli         s7, t0, 18
                  and          tp, s8, s7
                  sub          ra, s3, a1
                  srai         t2, t0, 9
                  slli         a3, s5, 0
                  auipc        gp, 682864
                  nop
                  add          s11, a4, s3
                  sub          s7, t3, t5
                  lui          a0, 655308
                  addi         t4, t5, 852
                  and          ra, t6, gp
                  or           s7, ra, s11
                  addi         s8, zero, -778
                  add          t0, gp, a6
                  srl          a2, a1, s2
                  sub          t5, s5, gp
                  or           t5, ra, a2
                  addi         t6, s3, -1346
                  sra          a6, sp, a1
                  lui          tp, 898082
                  srli         s10, a6, 5
                  sra          t4, a7, s9
                  sub          s11, t2, tp
                  or           s1, a2, s8
                  lui          a7, 956035
                  auipc        s4, 101905
                  xor          t4, ra, a1
                  srl          t1, s10, s7
                  sll          a0, s6, s0
                  sll          s4, s9, ra
                  or           s8, s1, a5
                  add          zero, a3, t4
                  sltu         t6, s4, t6
                  slli         a4, a1, 10
                  nop
                  add          s9, a3, a5
                  or           s4, a0, s2
                  and          s7, zero, a0
                  and          s8, a5, a3
                  add          a7, sp, a6
                  and          s8, a7, t3
                  sra          gp, s3, gp
                  auipc        a2, 305054
                  sltiu        s9, s5, -881
                  xori         s4, a6, 1310
                  sub          t2, t0, s10
                  lui          t0, 297233
                  srli         t0, s11, 20
                  add          s1, s6, ra
                  sra          s2, t1, a3
                  srl          a4, s8, s3
                  nop
                  add          t1, t5, t4
                  addi         s4, zero, 1659
                  lui          tp, 28865
                  lui          t6, 116618
                  sra          s5, t6, s5
                  or           zero, t4, s7
                  or           s3, a7, s0
                  lui          ra, 903760
                  sra          s3, tp, a4
                  ori          t5, s1, 585
                  sra          s9, a0, a1
                  auipc        s11, 1002060
                  xori         ra, tp, -226
                  sltu         a7, s1, t0
                  andi         t3, s4, -1027
                  xori         a2, s9, 1480
                  or           s8, s0, s9
                  auipc        s2, 146502
                  lui          t4, 440916
                  xor          s9, t5, s7
                  auipc        t0, 338604
                  add          s10, a1, a2
                  slti         t2, sp, -18
                  nop
                  sub          ra, s4, s4
                  nop
                  xor          s1, s4, sp
                  or           t2, zero, a7
                  andi         a1, s0, 1035
                  and          t5, s5, s8
                  sll          a6, s10, a6
                  ori          s3, ra, 110
                  addi         s10, s4, -1179
                  auipc        s10, 409189
                  xori         a5, ra, -9
                  srl          a0, s0, a1
                  nop
                  sltiu        s10, tp, 329
                  lui          s1, 575411
                  sltiu        s11, a6, 260
                  ori          a7, s1, -1813
                  or           a1, gp, a7
                  or           t4, t5, gp
                  sub          s7, s11, a6
                  and          a1, t6, t0
                  or           zero, s2, ra
                  sltu         s4, a5, t4
                  sll          zero, s4, a7
                  srai         a5, s11, 3
                  srli         t4, s5, 3
                  and          s4, a2, s9
                  nop
                  and          s2, a1, s6
                  xor          s7, t5, s0
                  addi         t4, tp, 1176
                  and          s7, s3, a4
                  andi         a5, a1, 21
                  xor          zero, a7, zero
                  srl          tp, a1, t5
                  srl          a3, t1, s4
                  lui          t2, 1038443
                  xori         a0, a5, 1925
                  srai         zero, t2, 21
                  addi         a2, ra, 1454
                  slti         t6, t4, -1980
                  srai         t1, t5, 16
                  slli         s10, s1, 8
                  slt          s10, s3, s4
                  xori         a6, a1, -905
                  addi         a0, ra, -1242
                  srl          t5, s9, a2
                  sra          s10, a5, s3
                  add          t3, zero, t2
                  lui          a4, 411922
                  sub          a4, t3, s3
                  sra          a2, t3, a3
                  slt          a6, s8, a7
                  xori         a5, tp, -1790
                  ori          s4, t0, 1561
                  ori          t6, a0, 140
                  sub          t0, s0, s2
                  nop
                  sll          a4, tp, t5
                  addi         a2, sp, 1008
                  srai         s10, a0, 25
                  nop
                  sltu         a4, t6, t1
                  srai         ra, s11, 21
                  andi         t0, a5, -1699
                  nop
                  addi         t4, a0, -1149
                  xori         t2, s8, -1596
                  slt          gp, zero, s7
                  auipc        s11, 872472
                  xori         a4, s7, 1878
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
                  add x2, x8, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

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
                  add x2, x8, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

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
                  add x2, x8, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

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
                  add x2, x8, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

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
                  add x2, x8, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

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
                  add x2, x8, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

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
                  add x2, x8, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

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
                  add x2, x8, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

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
                  add x2, x8, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

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
                  add x2, x8, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

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
                  add x2, x8, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

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
                  add x2, x8, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

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
                  add x2, x8, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

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
                  add x2, x8, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

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
                  add x2, x8, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
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
                  add x2, x8, zero
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x11, 0x3 # BREAKPOINT
                  beq x27, x11, ebreak_handler
                  li x11, 0x8 # ECALL_UMODE
                  beq x27, x11, ecall_handler
                  li x11, 0x9 # ECALL_SMODE
                  beq x27, x11, ecall_handler
                  li x11, 0xb # ECALL_MMODE
                  beq x27, x11, ecall_handler
                  li x11, 0x1
                  beq x27, x11, instr_fault_handler
                  li x11, 0x5
                  beq x27, x11, load_fault_handler
                  li x11, 0x7
                  beq x27, x11, store_fault_handler
                  li x11, 0xc
                  beq x27, x11, pt_fault_handler
                  li x11, 0xd
                  beq x27, x11, pt_fault_handler
                  li x11, 0xf
                  beq x27, x11, pt_fault_handler
                  li x11, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x11, illegal_instr_handler
                  csrr x11, 0x343 # MTVAL
                  1: la x22, test_done
                  jalr x1, x22, 0

ecall_handler:    
                  la x27, _start
                  sw x0, 0(x27)
                  sw x1, 4(x27)
                  sw x2, 8(x27)
                  sw x3, 12(x27)
                  sw x4, 16(x27)
                  sw x5, 20(x27)
                  sw x6, 24(x27)
                  sw x7, 28(x27)
                  sw x8, 32(x27)
                  sw x9, 36(x27)
                  sw x10, 40(x27)
                  sw x11, 44(x27)
                  sw x12, 48(x27)
                  sw x13, 52(x27)
                  sw x14, 56(x27)
                  sw x15, 60(x27)
                  sw x16, 64(x27)
                  sw x17, 68(x27)
                  sw x18, 72(x27)
                  sw x19, 76(x27)
                  sw x20, 80(x27)
                  sw x21, 84(x27)
                  sw x22, 88(x27)
                  sw x23, 92(x27)
                  sw x24, 96(x27)
                  sw x25, 100(x27)
                  sw x26, 104(x27)
                  sw x27, 108(x27)
                  sw x28, 112(x27)
                  sw x29, 116(x27)
                  sw x30, 120(x27)
                  sw x31, 124(x27)
                  la x22, write_tohost
                  jalr x0, x22, 0

instr_fault_handler:
                  add x8, x2, zero
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
                  add x8, x2, zero
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
                  add x8, x2, zero
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
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x8, x2, zero
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
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x8, x2, zero
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
                  csrr  x27, 0x300 # MSTATUS;
                  csrr  x27, 0x304 # MIE;
                  csrr  x27, 0x344 # MIP;
                  csrrc x27, 0x344, x27 # MIP;
                  add x8, x2, zero
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
