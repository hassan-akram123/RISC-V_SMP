.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x28, h0_start
jalr x0, x28, 0
h0_start:
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x9, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 1
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
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0xd600d99f
                  li x3, 0xdfd0212d
                  li x4, 0x9
                  li x5, 0x0
                  li x6, 0xa
                  li x7, 0x0
                  li x8, 0x80000000
                  li x10, 0x34c10189
                  li x11, 0xd2a63ac3
                  li x12, 0x0
                  li x13, 0x5
                  li x14, 0x1
                  li x15, 0x0
                  li x16, 0x6
                  li x17, 0x8
                  li x18, 0x80000000
                  li x19, 0x93786cd4
                  li x20, 0x80000000
                  li x21, 0x0
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0xf3f50387
                  li x25, 0x0
                  li x26, 0xfabca2bc
                  li x27, 0x80000000
                  li x28, 0x81e4e5c1
                  li x30, 0x1
                  li x31, 0x7
                  la x29, user_stack_end
main:             li           t2, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           a2, 0x3e07d3e8
                  li           ra, 0x80000000
                  li           s11, 0x80000000
                  li           a7, 0x80000000
                  li           a6, 0x0
                  li           s9, 0xd933cd8b
                  li           sp, 0x0
                  li           s10, 0x80000000
                  li           s5, 0x7f14a962
                  lui          a2, 96487
                  nop
                  nop
                  sub          a2, t2, s5
                  add          s9, a7, t2
                  add          s5, a6, s11
                  lui          ra, 882140
                  sub          a6, s10, sp
                  lui          a6, 201130
                  addi         s11, sp, -139
                  sub          a7, s5, a2
                  sub          a2, s5, s5
                  addi         sp, s10, -781
                  sub          a6, t2, a6
                  sub          a2, ra, s5
                  sub          s5, a2, s9
                  addi         s11, a6, 1959
                  sub          ra, t2, s11
                  sub          ra, a6, a6
                  lui          s9, 23288
                  lui          s9, 64105
                  lui          s10, 258546
                  auipc        a2, 742394 #end riscv_int_numeric_corner_stream_8
                  li           s10, 0x90e75be5 #start riscv_int_numeric_corner_stream_9
                  li           a2, 0x8d8d96d8
                  li           s6, 0x0
                  li           gp, 0x80000000
                  li           a6, 0x21dbc1b
                  li           t5, 0xc490d04b
                  li           a7, 0x80000000
                  li           s4, 0x53a16db3
                  li           s3, 0x80000000
                  li           s8, 0x80000000
                  auipc        s6, 316396
                  sub          s10, a7, a2
                  sub          t5, s10, a6
                  auipc        a6, 898393
                  addi         gp, a7, 353
                  auipc        a2, 921688
                  auipc        s6, 750882
                  add          a2, s8, a2
                  lui          s6, 876024
                  add          a2, s8, s4
                  auipc        a2, 357592
                  add          s8, s6, t5
                  sub          s6, s6, a2
                  sub          t5, gp, s3
                  addi         s6, s6, 129
                  auipc        t5, 496891
                  nop
                  addi         a7, s3, 957
                  add          s10, gp, t5
                  addi         s10, a7, 293
                  sub          s3, t5, s4 #end riscv_int_numeric_corner_stream_9
                  li           t5, 0x80000000 #start riscv_int_numeric_corner_stream_13
                  li           gp, 0x6e0504f8
                  li           a6, 0x80000000
                  li           t0, 0x0
                  li           s11, 0x80000000
                  li           s5, 0x3a07c363
                  li           t6, 0x6a857d71
                  li           s3, 0x7599d3c6
                  li           s4, 0x0
                  li           s2, 0x917559db
                  sub          s5, s4, s5
                  lui          t0, 310142
                  nop
                  addi         s2, t6, -1755
                  addi         s3, t5, -694
                  nop
                  add          s5, s5, gp
                  auipc        t0, 498915
                  addi         s2, s4, -1492
                  lui          s4, 868171
                  nop
                  add          t5, gp, t0
                  add          s3, s4, s4
                  auipc        t6, 1520
                  auipc        s4, 138360
                  nop
                  auipc        s4, 90630
                  addi         gp, s2, -286
                  lui          a6, 44092
                  sub          a6, s3, s2
                  lui          s4, 787704
                  addi         s4, t6, 1517
                  lui          gp, 872011
                  add          a6, a6, s3
                  sub          t5, s4, s11
                  nop
                  lui          t6, 226834
                  nop #end riscv_int_numeric_corner_stream_13
                  li           s4, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           s10, 0x80000000
                  li           t0, 0x4216a126
                  li           t6, 0xffffffff
                  li           s6, 0x80000000
                  li           s2, 0x0
                  li           ra, 0x80000000
                  li           s3, 0xed07508a
                  li           a2, 0xcb74934
                  li           s5, 0x0
                  auipc        s3, 446131
                  sub          s2, s10, s5
                  addi         a2, s10, -1399
                  nop
                  addi         s2, a2, -929
                  sub          s5, a2, s3
                  addi         a2, a2, 980
                  sub          t6, s5, s4
                  lui          t0, 1009019
                  sub          a2, s5, t6
                  sub          s10, s10, s6
                  nop
                  sub          s10, t6, t6
                  lui          s2, 555260
                  lui          t6, 27532
                  add          s4, s3, s10
                  add          a2, t6, s10
                  auipc        a2, 957114
                  addi         a2, s3, 825
                  auipc        t0, 969730
                  lui          t0, 416057
                  add          a2, s10, ra
                  auipc        s2, 138880
                  auipc        s10, 285532
                  add          s6, t0, s5
                  sub          a2, s6, s5
                  addi         a2, a2, -381
                  addi         s5, s3, 861 #end riscv_int_numeric_corner_stream_1
                  li           a4, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           s3, 0x80000000
                  li           a3, 0x0
                  li           s8, 0x80000000
                  li           s6, 0xa93a892a
                  li           a5, 0xc9c19ec3
                  li           t6, 0xffffffff
                  li           s2, 0x80000000
                  li           a7, 0xffffffff
                  li           s4, 0x80000000
                  sub          s2, a5, s8
                  sub          a7, s2, a3
                  lui          s4, 63906
                  nop
                  sub          s8, t6, a4
                  lui          s3, 913508
                  auipc        t6, 86915
                  addi         s2, s4, 1598
                  addi         t6, s3, -1080
                  lui          a3, 377008
                  nop
                  sub          a3, a3, s2
                  auipc        a7, 465053
                  addi         a4, t6, 66
                  addi         s2, s6, 532
                  addi         a5, s2, -1302 #end riscv_int_numeric_corner_stream_15
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           sp, 0x80000000
                  li           t6, 0xffffffff
                  li           s10, 0x80000000
                  li           t5, 0xffffffff
                  li           s2, 0x0
                  li           s8, 0x80000000
                  li           s7, 0x0
                  li           a0, 0xdcb65bbb
                  li           a7, 0x0
                  nop
                  auipc        a7, 996182
                  auipc        sp, 315050
                  lui          tp, 477006
                  auipc        a7, 685681
                  nop
                  auipc        s10, 343490
                  sub          t5, t5, a7
                  add          a7, s7, a7
                  add          sp, a0, t5
                  nop
                  nop
                  nop
                  lui          a0, 958603
                  auipc        tp, 695247
                  auipc        a0, 835822
                  nop
                  lui          sp, 977032 #end riscv_int_numeric_corner_stream_16
                  li           s3, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           a7, 0x0
                  li           ra, 0xffffffff
                  li           s0, 0xabb06919
                  li           a3, 0xffffffff
                  li           tp, 0x6538645e
                  li           a6, 0x84462fa6
                  li           t2, 0x80000000
                  li           a5, 0x80000000
                  li           sp, 0x0
                  addi         t2, ra, 1380
                  lui          a3, 459011
                  nop
                  sub          a3, ra, a5
                  sub          s0, a6, t2
                  nop
                  add          a7, a5, ra
                  sub          s3, tp, s3
                  add          a5, a7, ra
                  auipc        a7, 315259
                  lui          a7, 531804
                  add          a3, sp, ra
                  auipc        a5, 933602
                  lui          a6, 85681
                  sub          ra, ra, ra
                  auipc        ra, 804869
                  nop
                  auipc        a3, 945066
                  add          a5, a5, a5
                  add          tp, ra, t2
                  auipc        a3, 646639
                  sub          a7, s3, ra
                  nop
                  addi         s0, s0, -395
                  addi         tp, a7, -1164
                  auipc        sp, 257753
                  add          sp, s3, a6
                  sub          ra, sp, s0
                  nop
                  nop #end riscv_int_numeric_corner_stream_11
                  li           a5, 0xd26a20eb #start riscv_int_numeric_corner_stream_18
                  li           s10, 0x8019f5dd
                  li           s3, 0x0
                  li           s0, 0x80000000
                  li           a7, 0x0
                  li           tp, 0x80000000
                  li           gp, 0xffffffff
                  li           t1, 0x0
                  li           s7, 0xffffffff
                  li           a6, 0x0
                  nop
                  nop
                  nop
                  sub          tp, s10, s10
                  lui          s0, 607057
                  add          t1, a6, tp
                  addi         a5, t1, 645
                  nop
                  auipc        a6, 942404
                  add          a6, t1, s3
                  addi         tp, a7, -454
                  nop
                  addi         t1, s0, -1819
                  addi         tp, s0, 1544
                  sub          s0, s7, s3
                  auipc        a6, 609854
                  addi         s0, s10, -1044
                  addi         s10, a5, -883 #end riscv_int_numeric_corner_stream_18
                  li           s3, 0x0 #start riscv_int_numeric_corner_stream_7
                  li           t1, 0xe66a9f5b
                  li           s11, 0xb0791096
                  li           s0, 0x5a0839a9
                  li           ra, 0x80000000
                  li           sp, 0xffffffff
                  li           t2, 0x80000000
                  li           s8, 0x80000000
                  li           s9, 0xffffffff
                  li           t0, 0xcf687965
                  sub          sp, s9, s8
                  addi         s3, t2, -1240
                  nop
                  addi         ra, s8, 1539
                  auipc        sp, 216054
                  add          t0, t0, t0
                  nop
                  add          s0, s9, s11
                  auipc        s11, 280759
                  lui          t2, 427440
                  add          ra, t1, s3
                  sub          sp, t2, s3
                  addi         s9, s8, -1733
                  addi         sp, t2, -513
                  add          t1, s11, s8
                  lui          s0, 138312
                  auipc        s3, 777879
                  addi         ra, t2, -863
                  add          s0, s0, ra #end riscv_int_numeric_corner_stream_7
                  addi         a5, s4, -1212
                  slli         a1, s1, 20
                  sltiu        a5, s5, 1885
                  slti         t2, t6, -1916
                  andi         s11, sp, -1681
                  andi         a2, s9, 1378
                  sltu         t1, s1, ra
                  and          a0, a5, zero
                  auipc        zero, 497641
                  sra          s8, gp, t0
                  slli         s10, ra, 6
                  lui          a4, 478635
                  or           s7, s1, a0
                  xor          a1, a0, s0
                  xori         s5, s1, -1522
                  or           t5, s7, s5
                  add          t1, s1, s5
                  slt          t0, a6, t1
                  sub          tp, gp, s1
                  slt          s11, a1, ra
                  or           zero, s6, zero
                  slli         s2, s10, 1
                  sltiu        s6, sp, 1608
                  nop
                  ori          a5, a6, 1171
                  sra          s6, t1, ra
                  andi         sp, s11, -740
                  slti         s4, ra, 124
                  sltu         t5, s8, t6
                  auipc        s2, 605047
                  and          s10, s6, a2
                  or           a4, t6, a0
                  slli         t5, s8, 19
                  sll          zero, gp, s4
                  sra          zero, s2, s6
                  sll          zero, s9, a0
                  lui          a4, 834479
                  or           t6, s9, t3
                  slt          t6, s11, t1
                  slti         s0, s0, 1734
                  slt          s11, t3, s7
                  slt          zero, s5, s0
                  slti         gp, s7, 1491
                  auipc        s9, 491708
                  sll          a1, s3, tp
                  add          zero, a3, s6
                  slti         ra, a2, 1813
                  srl          t1, a5, t1
                  ori          s9, a2, 558
                  and          zero, s5, gp
                  add          a2, a3, s7
                  slt          s8, t1, t0
                  sll          t0, s10, t5
                  srl          s10, s4, s5
                  srl          a4, a0, s10
                  ori          a2, t2, 1442
                  sltu         s9, t4, a4
                  or           s7, t3, s1
                  auipc        s11, 708673
                  ori          zero, t2, 400
                  sltu         a1, s6, t3
                  slti         a3, t4, 602
                  sub          s4, t5, s7
                  xori         t0, zero, -470
                  add          s4, s10, s1
                  andi         t5, s2, 1105
                  srli         s3, t6, 17
                  slti         t2, s10, -914
                  and          zero, zero, s10
                  srl          t2, t4, a3
                  slti         a2, a0, 1419
                  nop
                  sll          s2, s11, t6
                  xor          s5, s6, tp
                  auipc        s0, 319497
                  sltu         s5, s8, t2
                  sltiu        s4, s2, 1122
                  sra          a5, sp, t5
                  xor          t0, s1, a0
                  sltiu        a6, zero, 1547
                  xori         s5, t1, -220
                  nop
                  slt          s5, ra, s1
                  sra          a6, t2, t1
                  xor          zero, s0, s6
                  ori          t0, t0, -1334
                  sltu         a1, s8, a2
                  andi         a7, a3, -599
                  srli         s9, s1, 6
                  sll          a5, s0, t3
                  auipc        a0, 962795
                  xori         s8, a0, 1613
                  xori         s8, a1, 1700
                  slti         zero, s4, 1326
                  addi         a3, s7, -159
                  ori          s11, a0, 1984
                  sra          t0, sp, ra
                  sltiu        a6, ra, -1785
                  srai         t2, a5, 25
                  addi         a2, s9, 1661
                  and          t2, t6, t0
                  auipc        s5, 971297
                  sra          s6, a1, t3
                  xor          gp, a4, t1
                  sltiu        t6, s1, 269
                  sltu         a0, t6, t4
                  sub          a5, ra, a0
                  addi         s4, zero, -304
                  andi         a3, tp, 2042
                  srai         a4, t6, 8
                  xor          a1, gp, t6
                  srai         a0, a4, 14
                  or           t0, s4, s0
                  srli         s4, a7, 1
                  xor          tp, gp, s2
                  addi         zero, t5, -48
                  addi         s5, a7, -488
                  nop
                  slt          sp, s3, s11
                  sll          s11, sp, s7
                  addi         t0, t4, -797
                  srli         a5, a6, 13
                  add          s0, s9, tp
                  ori          a1, a1, -115
                  nop
                  srl          a3, a1, s5
                  addi         t1, ra, -1806
                  srl          a7, tp, t2
                  xor          s7, s4, a3
                  xori         s2, sp, 71
                  srli         sp, a3, 27
                  srai         a7, s11, 6
                  auipc        s0, 946434
                  srai         s0, ra, 31
                  sra          t5, a5, a1
                  addi         a6, tp, 817
                  addi         ra, s8, 1631
                  slt          ra, s1, ra
                  lui          zero, 101589
                  srli         s9, t3, 27
                  lui          s0, 491264
                  xori         a6, s4, -1017
                  or           t0, t6, a0
                  auipc        s4, 899358
                  sltu         sp, t2, a7
                  ori          s11, s2, 97
                  srli         t2, s9, 10
                  sra          ra, gp, gp
                  slti         a7, a3, 1510
                  srli         t0, tp, 10
                  xori         a4, zero, -1462
                  and          a1, t4, a6
                  addi         t2, s11, 179
                  slt          t1, a1, a7
                  andi         s2, tp, 606
                  lui          t5, 281105
                  nop
                  auipc        s11, 29262
                  sub          s5, t1, a6
                  srl          s10, a0, t4
                  ori          gp, a1, 837
                  ori          s9, t4, 896
                  add          s7, sp, zero
                  li           s5, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           s10, 0x6082ede6
                  li           sp, 0xffffffff
                  li           a5, 0xffffffff
                  li           s11, 0xffffffff
                  li           t2, 0x80000000
                  li           a2, 0x0
                  li           s2, 0xffffffff
                  li           s9, 0x0
                  li           s4, 0x325c6424
                  nop
                  auipc        s9, 985340
                  addi         s2, s4, 993
                  addi         s11, s9, 1610
                  add          a5, a5, a2
                  nop
                  lui          t2, 950477
                  sub          s5, s11, s5
                  nop
                  auipc        s2, 206012
                  nop
                  nop
                  sub          s2, s2, s5
                  addi         a5, s4, -1936
                  sub          sp, s11, sp
                  lui          s10, 377948
                  add          s4, s11, a2
                  auipc        s2, 646998
                  nop
                  addi         t2, a5, 1079
                  auipc        s2, 860764
                  lui          s9, 473094
                  nop #end riscv_int_numeric_corner_stream_3
                  auipc        ra, 673607
                  sub          ra, s3, a5
                  lui          t1, 725760
                  srl          ra, sp, s1
                  add          a3, s0, a5
                  slli         s11, sp, 5
                  srli         t6, s3, 21
                  and          t6, a5, s9
                  sra          s2, a1, s0
                  nop
                  slt          a5, a4, s11
                  add          s11, s8, zero
                  sll          s6, s4, t2
                  sub          t2, s2, s9
                  sltu         t5, s10, sp
                  andi         a4, ra, 225
                  sll          s2, s9, a3
                  srl          ra, t1, s9
                  xor          ra, s11, s8
                  srl          a1, s7, s0
                  or           s0, s9, s2
                  sltu         s2, s7, s0
                  xori         a0, sp, 1084
                  sra          t0, a5, t2
                  srl          a5, gp, s8
                  slt          t1, s10, a7
                  srl          s2, s0, t4
                  sltiu        s3, s0, -1546
                  or           s5, s4, sp
                  sra          t6, a2, zero
                  slli         t2, gp, 9
                  slli         t0, s2, 11
                  sll          s9, zero, a0
                  slli         s0, tp, 11
                  or           s3, s8, t6
                  add          s2, s10, s6
                  ori          a0, t5, -1210
                  and          a4, sp, s9
                  addi         s7, a4, -1313
                  xor          s2, s2, ra
                  sltu         a2, s6, s8
                  andi         s10, t2, -1113
                  xor          a5, s9, s9
                  srl          t5, s6, s1
                  slli         tp, tp, 23
                  xori         t6, t1, -43
                  nop
                  andi         a5, zero, 579
                  slli         s9, a2, 30
                  sll          s8, t1, t0
                  srai         s7, t4, 25
                  xor          a0, zero, t3
                  sra          a6, a6, a3
                  and          zero, t0, t3
                  nop
                  addi         s4, s5, 520
                  andi         s8, s11, 1975
                  auipc        t5, 678927
                  xori         s6, s3, -739
                  sub          a5, t5, s3
                  add          s5, s1, sp
                  lui          s4, 261065
                  andi         s5, ra, -1056
                  sll          s5, s4, sp
                  sub          s9, gp, s2
                  slti         s0, ra, 799
                  ori          a3, t2, -410
                  slt          s9, s7, t5
                  xori         t6, s3, -1486
                  xori         s7, a4, -365
                  sub          a0, s2, sp
                  or           s2, t5, s8
                  addi         ra, a4, 346
                  srl          s9, ra, a5
                  sll          zero, s8, gp
                  nop
                  sltiu        a2, s11, -1265
                  sll          ra, s2, t3
                  xor          t6, s10, a5
                  add          a4, s11, a4
                  slti         t2, ra, 893
                  sra          a6, s2, a5
                  and          s8, t1, tp
                  slt          gp, zero, t3
                  xor          t5, s5, a0
                  srl          t2, a1, a1
                  sltiu        t6, s9, 1261
                  xor          s0, s8, t1
                  slt          a3, s8, s7
                  xor          tp, s5, s7
                  or           t0, s10, a4
                  add          s0, tp, s6
                  sub          s2, t1, s7
                  srli         s6, a5, 12
                  srai         a2, a6, 11
                  srli         s3, a0, 8
                  sub          s6, s1, gp
                  sra          s3, s2, s3
                  and          t2, a1, ra
                  add          s8, s0, s2
                  sltu         a3, t1, t4
                  sltu         s8, a2, gp
                  lui          a7, 37210
                  auipc        a4, 516033
                  srai         s5, s10, 3
                  sub          zero, ra, a4
                  sll          s11, tp, a5
                  and          t6, s5, t6
                  auipc        tp, 319317
                  addi         s2, t0, 2011
                  slt          zero, s1, gp
                  or           s9, a1, a5
                  srli         sp, a1, 0
                  srai         t6, s5, 0
                  sra          gp, s1, t1
                  ori          a1, t1, -1887
                  sra          a3, s10, a7
                  ori          t6, a5, 186
                  lui          t6, 632366
                  addi         s0, s10, 687
                  auipc        t5, 766735
                  sll          s11, s1, ra
                  nop
                  sra          s5, t1, s9
                  slli         s10, a3, 11
                  add          t0, t3, s9
                  add          a1, t3, a3
                  add          s4, t1, zero
                  and          a4, t3, gp
                  nop
                  srai         t2, a4, 26
                  srli         s11, t4, 8
                  add          t1, a5, t5
                  auipc        s5, 109063
                  sub          s9, s1, tp
                  sltiu        a7, zero, 739
                  sll          t6, tp, a1
                  slt          ra, t2, s5
                  ori          s11, sp, 505
                  lui          sp, 983068
                  sll          sp, a3, s4
                  nop
                  addi         a3, s3, -1588
                  or           a5, zero, tp
                  sltu         tp, s3, t2
                  nop
                  lui          a0, 345959
                  srli         a4, a6, 13
                  sub          a5, s1, s11
                  srai         t0, s10, 15
                  slti         t1, s5, -434
                  slli         a3, s3, 26
                  slti         ra, s11, -1623
                  lui          s2, 408006
                  ori          s8, t3, 566
                  srli         a6, s11, 1
                  sltiu        t0, t1, 448
                  slt          s4, s2, a4
                  slli         a4, t6, 2
                  slti         t1, s5, 1958
                  xor          a4, t4, a2
                  or           a1, a2, s1
                  srl          s2, zero, s11
                  slti         s0, a4, -1413
                  ori          s2, tp, -1431
                  xori         s9, t1, 348
                  sub          sp, ra, sp
                  sll          ra, a1, a6
                  slli         t6, gp, 22
                  sltiu        t2, s9, -1902
                  sll          a3, a2, a4
                  sltu         t1, t0, t4
                  and          s10, s7, a4
                  addi         tp, t1, -1053
                  sub          a1, tp, s3
                  sub          ra, s6, t3
                  add          s6, s4, s4
                  nop
                  slli         a6, gp, 24
                  auipc        s6, 69736
                  srli         gp, t6, 0
                  auipc        s0, 21565
                  lui          s11, 175808
                  and          t5, s11, t6
                  slt          t6, ra, a2
                  srai         s11, s6, 16
                  auipc        tp, 804520
                  xor          s4, s3, s5
                  lui          a2, 585659
                  srai         a1, t0, 23
                  xori         s10, s1, -771
                  sra          s6, s5, a1
                  slt          s0, a0, t5
                  andi         a3, s2, -104
                  ori          s8, s11, 1443
                  xor          s7, sp, s4
                  xor          a3, a3, zero
                  sra          s10, s3, s0
                  add          a3, a2, ra
                  addi         zero, a1, -843
                  srli         t2, tp, 8
                  addi         tp, s6, -1617
                  sltiu        t0, s7, 1296
                  or           s4, t6, t2
                  xor          t6, gp, a4
                  slli         s9, t0, 6
                  nop
                  srl          s5, t3, t4
                  sltiu        s3, a0, -1117
                  sltu         gp, s2, s7
                  slti         t1, a1, 1510
                  addi         s5, s6, 1528
                  ori          a6, sp, 159
                  slli         gp, t2, 8
                  sra          t0, a7, s5
                  ori          s2, a2, -841
                  auipc        a2, 226067
                  srl          t0, a2, t5
                  slt          s10, s0, a7
                  srli         t6, a3, 25
                  or           t0, s11, t1
                  or           t2, s10, s4
                  srai         a4, s2, 8
                  slti         gp, t4, -452
                  add          a1, t6, a7
                  ori          a6, tp, 1802
                  and          s8, s3, sp
                  srai         tp, a5, 11
                  lui          s5, 757430
                  auipc        t1, 481832
                  xor          s10, s3, t0
                  ori          s4, ra, 327
                  add          s10, gp, gp
                  andi         a4, s10, 1895
                  sub          t2, s1, t3
                  ori          a0, s2, 943
                  nop
                  slti         a5, a5, -1981
                  slli         a4, s7, 5
                  sub          tp, zero, a0
                  auipc        a6, 564207
                  sltu         s4, a4, s5
                  and          a7, a4, t6
                  sll          t5, a1, s6
                  addi         s0, a1, 1074
                  srai         a7, t2, 15
                  or           s10, a3, t2
                  andi         tp, ra, -359
                  andi         ra, t3, 542
                  nop
                  addi         a6, t3, 476
                  slti         s7, s7, -2033
                  or           t0, gp, s0
                  srl          s4, sp, t0
                  slli         t2, a0, 22
                  nop
                  nop
                  slt          s5, s10, s2
                  sra          a0, a5, zero
                  srli         a3, a0, 12
                  ori          a4, s3, -1918
                  sll          sp, t5, gp
                  slt          s3, gp, t4
                  srli         s3, t1, 4
                  addi         t2, zero, -1308
                  srl          a1, a6, gp
                  auipc        t0, 1043761
                  srl          a4, t6, a2
                  sll          s0, s0, a3
                  srli         s11, s0, 4
                  add          s5, gp, zero
                  lui          s2, 342213
                  xori         a1, s7, -1285
                  slli         a5, s1, 11
                  sll          t5, s2, t5
                  auipc        zero, 222827
                  sra          a7, t3, t3
                  sltu         s8, zero, s7
                  or           ra, s0, t5
                  add          s11, a3, s6
                  srai         a1, a5, 23
                  sll          tp, s2, t3
                  and          a1, t0, ra
                  slt          a3, s1, t1
                  sltiu        t6, a7, -2015
                  srli         s3, tp, 4
                  or           a0, s6, s0
                  and          a3, t2, a1
                  xor          s4, a2, a1
                  srai         s11, s10, 8
                  srli         t1, a5, 23
                  srai         a7, a1, 14
                  srl          s3, t5, s4
                  xori         t0, s1, 1682
                  auipc        zero, 143405
                  sra          t0, t2, a1
                  slti         a5, sp, 1944
                  andi         s0, t0, 1474
                  addi         s5, s5, -1424
                  nop
                  sltu         ra, s11, t4
                  sub          s6, s2, tp
                  or           a4, t4, s1
                  or           a0, s10, t4
                  srai         t6, s7, 11
                  sra          s7, s2, t5
                  srai         s2, a1, 18
                  xor          a4, tp, t2
                  addi         s9, s8, 985
                  add          a0, s6, a0
                  ori          a1, s6, 8
                  xori         t5, a7, 1709
                  sltiu        a6, s4, -273
                  add          s0, s8, s9
                  xori         gp, s2, -349
                  ori          a0, s8, -1474
                  auipc        a0, 492892
                  slti         t1, s7, -316
                  slti         gp, t5, -1285
                  srl          s3, a7, s2
                  srai         s5, sp, 11
                  add          s8, a2, t2
                  slli         sp, a2, 18
                  add          a1, zero, s3
                  sra          t1, t2, t2
                  and          ra, s10, a1
                  srl          t5, a4, tp
                  auipc        s3, 320161
                  slli         s10, t4, 23
                  nop
                  sltiu        zero, t1, -106
                  srli         s4, t6, 29
                  slli         s6, s2, 18
                  sltu         a6, s4, a6
                  sub          s3, gp, a2
                  srl          s9, a4, s6
                  lui          t5, 47281
                  srl          t2, s11, s11
                  srli         tp, a7, 6
                  sra          t0, t3, s0
                  srai         t5, s8, 24
                  srli         s6, zero, 6
                  xor          s5, t0, s5
                  lui          s11, 14235
                  srl          a1, a3, s6
                  srl          t1, a4, s1
                  slt          sp, gp, a3
                  auipc        a3, 663198
                  srai         s2, ra, 22
                  srai         gp, s0, 25
                  slli         s9, s7, 15
                  slli         s7, t0, 8
                  xori         s11, s8, 694
                  slt          sp, t6, tp
                  slt          s3, sp, s9
                  lui          a7, 314363
                  or           s10, a4, s11
                  ori          ra, gp, -925
                  srai         s10, a3, 30
                  srai         a5, t4, 24
                  srl          t2, a4, t5
                  or           sp, t4, s0
                  xori         t5, a1, 1104
                  srli         a7, t2, 5
                  lui          s3, 338470
                  nop
                  ori          a0, sp, -1443
                  sub          s9, s11, a4
                  or           t2, t1, a0
                  srai         a3, s7, 29
                  slt          s10, s11, s7
                  nop
                  ori          s5, a6, 220
                  and          t0, s10, a6
                  sltiu        t1, a1, 1124
                  sub          sp, a5, a1
                  andi         s4, a1, 1189
                  sltu         s2, t2, a0
                  slti         sp, t5, -162
                  add          tp, gp, s8
                  auipc        a1, 829745
                  or           s3, t5, a4
                  ori          s6, t5, -1136
                  xori         s8, a6, 400
                  and          s11, a6, s7
                  andi         t5, s11, -940
                  srl          s2, sp, s9
                  ori          a6, s6, -1415
                  slti         s9, a2, 601
                  add          s8, s9, a1
                  sll          t2, s3, t5
                  srl          a7, s10, a2
                  sub          s6, s11, t5
                  ori          t5, s6, -772
                  andi         t5, a0, -1134
                  slti         a7, ra, 1312
                  srli         a6, t0, 9
                  andi         tp, t1, 1250
                  srl          a2, a7, s6
                  ori          a5, t3, -1397
                  nop
                  slli         a2, s10, 2
                  sltu         s9, s0, t5
                  slti         t0, a4, 741
                  slti         s5, ra, 1207
                  nop
                  sltiu        a5, s3, 817
                  xori         t2, s10, -583
                  sltiu        a3, t4, 197
                  nop
                  slt          sp, a7, s7
                  sltu         a1, a1, s9
                  ori          ra, sp, -78
                  or           t0, s2, a1
                  add          s2, s5, t1
                  sll          s10, s0, s6
                  and          gp, t2, a7
                  sll          t6, t5, s3
                  andi         a4, t4, -319
                  add          a4, a5, a4
                  sltu         s10, s2, a6
                  ori          s7, t2, -1049
                  lui          a1, 145048
                  sub          t1, s4, a3
                  srli         s6, a7, 1
                  slli         s8, t4, 3
                  sltu         a7, a1, t3
                  sra          s11, ra, t6
                  slli         tp, sp, 17
                  xori         s5, a6, -1973
                  add          sp, s2, s9
                  xori         ra, s2, -1129
                  nop
                  srli         a4, s0, 18
                  andi         s0, ra, 1436
                  lui          ra, 493697
                  lui          zero, 16262
                  or           s8, a0, a4
                  xor          sp, t4, t2
                  sltiu        s8, a5, -1634
                  slti         a0, a0, -968
                  sra          a0, a1, t0
                  xori         a0, a3, -275
                  addi         s3, s4, 933
                  xori         t6, s1, 459
                  sub          t1, zero, s8
                  sll          s6, a5, s8
                  sll          gp, s4, s3
                  slli         s8, gp, 3
                  xor          a0, s9, a6
                  sltu         s2, a1, t4
                  auipc        s11, 356294
                  sltu         ra, s4, t1
                  srli         a2, s6, 28
                  nop
                  srl          s10, s1, a4
                  slti         a1, sp, 358
                  addi         a2, s10, -796
                  sll          t6, s4, s7
                  sltiu        s9, s3, -1766
                  addi         s4, a4, -1274
                  srl          s7, s8, s2
                  sra          a1, s2, s6
                  slt          s11, ra, s7
                  srai         s4, s4, 15
                  and          s7, s8, s2
                  xori         t5, a5, 1343
                  slti         t6, s0, 577
                  ori          s11, s10, 1486
                  or           a6, ra, t2
                  slti         s3, s8, 1643
                  add          s7, a5, a7
                  xor          a5, s4, s4
                  andi         s11, a2, 859
                  addi         s6, s6, 1575
                  slt          t5, t3, s8
                  xori         a5, t0, -1232
                  lui          t6, 71454
                  sub          zero, a6, s11
                  sltiu        s11, a4, 702
                  nop
                  andi         a6, s9, -461
                  andi         gp, sp, 620
                  and          s11, gp, a0
                  sltu         s10, s10, a1
                  andi         t6, a1, 168
                  nop
                  xori         sp, s5, -1757
                  ori          s11, ra, 1478
                  auipc        s7, 688927
                  sltu         a7, s8, s3
                  sltu         s2, a4, zero
                  add          t2, tp, sp
                  sltu         s2, a4, t1
                  andi         a5, s9, -498
                  or           a7, a2, s1
                  xori         a6, sp, 468
                  auipc        ra, 99450
                  sltiu        a1, a1, 1382
                  slt          s10, s9, s11
                  sra          a3, tp, a4
                  sub          a5, gp, s7
                  xori         t1, zero, -433
                  srli         a6, a5, 30
                  srai         t0, s6, 22
                  slli         gp, a0, 13
                  sll          s8, a3, tp
                  sra          s11, s2, a6
                  srl          zero, s11, t6
                  sltu         t6, s7, t0
                  srl          ra, s3, ra
                  xori         s8, t3, 1143
                  ori          s3, s6, -133
                  sltiu        a5, s11, -26
                  xori         a4, ra, -270
                  srl          t2, a7, t0
                  sra          t5, t4, a6
                  sub          t2, s11, s8
                  xori         s0, s10, 839
                  xori         t0, sp, -1372
                  sub          t5, s8, s1
                  sltiu        zero, s1, -833
                  sltiu        s5, a0, 202
                  sll          s0, zero, a0
                  sltiu        s4, a4, -1204
                  auipc        sp, 1035681
                  andi         gp, t6, -1796
                  add          a5, a4, a3
                  sll          sp, sp, zero
                  srl          s8, gp, s0
                  slt          a5, s0, a3
                  srai         s10, s0, 19
                  ori          a4, a0, -1374
                  slti         a5, tp, -1068
                  srl          s11, s11, t2
                  add          s0, gp, t1
                  li           t0, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           s7, 0xc006afc8
                  li           s9, 0x0
                  li           ra, 0xffffffff
                  li           s5, 0x18af9c20
                  li           s6, 0x21bd5eee
                  li           t5, 0xac51b785
                  li           s10, 0xb12e630
                  li           t2, 0x80000000
                  li           tp, 0xffffffff
                  addi         s9, ra, 913
                  sub          ra, s9, s10
                  add          s10, s5, ra
                  addi         t0, s7, 57
                  add          t0, t5, s7
                  lui          s9, 740814
                  auipc        ra, 478914
                  nop
                  add          t5, tp, s7
                  nop
                  sub          t5, s5, tp
                  addi         s9, t0, 1187
                  nop
                  sub          t5, t5, s10
                  nop
                  sub          s5, ra, ra
                  addi         s6, tp, 1694
                  addi         t5, t5, 1981
                  addi         t2, s10, 1767
                  lui          s6, 1029402 #end riscv_int_numeric_corner_stream_17
                  sltiu        a4, t0, -1043
                  slt          a2, s4, a3
                  slt          s11, a0, a2
                  xori         s4, t1, 1951
                  xori         t1, a1, -1186
                  slti         s7, t6, 1376
                  srli         t5, s11, 26
                  sra          a3, s3, t0
                  sltiu        s6, a6, -1227
                  sltu         t2, s1, s9
                  slti         t0, t1, -1618
                  sra          tp, s4, a0
                  xori         tp, ra, -1369
                  xor          t5, s2, ra
                  srai         a6, a6, 26
                  sub          s2, t6, t3
                  slli         a3, a3, 23
                  sll          s0, a0, ra
                  or           s8, t2, t0
                  add          t6, s3, s7
                  and          t5, a1, t2
                  srli         sp, s9, 28
                  srli         s6, s5, 17
                  slti         t2, a1, -1838
                  xor          a4, gp, s3
                  sltu         s7, a5, ra
                  addi         gp, a0, -1904
                  add          sp, a5, s8
                  auipc        s5, 8177
                  ori          tp, t3, 580
                  srl          s9, a5, a2
                  nop
                  slli         s4, ra, 25
                  sltiu        s6, a4, -18
                  xor          s0, s9, a7
                  slt          s9, s11, s2
                  xori         t2, s8, -592
                  addi         a6, sp, 203
                  sll          s4, t5, s4
                  andi         a1, a7, 712
                  xor          s2, s5, gp
                  slti         a1, s11, -868
                  sub          t1, s7, s5
                  slli         s0, t5, 27
                  srl          t6, s5, a2
                  srli         s0, s10, 25
                  addi         s5, s5, -700
                  or           t1, t5, s7
                  sll          t0, s2, s11
                  nop
                  sltu         s6, t3, t3
                  sll          s4, s11, s10
                  srai         a1, a6, 18
                  or           gp, t4, s7
                  andi         a0, s0, -1355
                  nop
                  add          a7, t4, a1
                  srli         s9, a6, 17
                  ori          a0, t4, 1154
                  xor          s8, t6, a2
                  xori         t1, a4, 143
                  and          tp, a7, a7
                  nop
                  sub          s7, a7, ra
                  sra          a5, s2, tp
                  srli         a1, a3, 11
                  or           s3, tp, t2
                  auipc        a1, 939779
                  srl          s7, a3, t0
                  andi         a5, t1, -514
                  auipc        t1, 905901
                  or           s2, t5, t0
                  slli         s7, s9, 6
                  nop
                  lui          s0, 389479
                  ori          sp, a3, 1906
                  xor          a6, t0, s5
                  slti         s10, a0, 269
                  add          a3, s3, zero
                  nop
                  andi         s3, a4, 899
                  slli         s11, s8, 25
                  sub          s9, a3, s0
                  srl          s3, a0, sp
                  sra          ra, s7, a7
                  or           a0, zero, a2
                  andi         s6, s6, 1299
                  addi         a0, a3, -446
                  andi         s9, ra, 837
                  sra          s2, a5, t6
                  xor          s10, t3, a4
                  sra          s4, s0, tp
                  addi         s5, s9, 1832
                  addi         a0, s1, 1989
                  slli         a2, a3, 23
                  lui          a4, 233064
                  sub          ra, a0, s2
                  srai         sp, a7, 22
                  srli         s8, s8, 13
                  lui          a4, 81864
                  and          s0, a5, gp
                  srl          a0, s7, s1
                  xori         t5, sp, 1116
                  sub          sp, a2, s1
                  or           s5, s11, ra
                  srai         gp, a4, 12
                  nop
                  ori          s5, t6, 1140
                  srai         s0, s1, 27
                  slti         s3, a4, 298
                  nop
                  or           a5, zero, s6
                  sub          t2, a4, a3
                  ori          a2, t3, -874
                  ori          s2, s9, 101
                  sub          a5, a0, s11
                  srai         a3, s1, 17
                  xor          s8, a3, sp
                  sltu         a6, sp, s2
                  sltiu        a3, gp, 1342
                  srai         a4, zero, 27
                  auipc        a2, 316378
                  slli         s3, t1, 17
                  slt          s8, s8, a5
                  srai         t5, a3, 4
                  slti         a7, a2, 542
                  sltiu        a7, t6, -848
                  ori          a4, s5, -901
                  xori         a4, t5, -1641
                  andi         a4, s11, 1891
                  slli         a2, s11, 0
                  xor          tp, sp, t6
                  nop
                  sltu         t5, ra, a0
                  or           a4, s0, t0
                  slt          s11, a1, s9
                  xori         s6, s2, -1770
                  auipc        a2, 807809
                  srl          a3, t5, a3
                  andi         t2, s8, -957
                  nop
                  xor          a1, t3, a5
                  sltu         s6, s4, t5
                  slli         tp, s6, 23
                  addi         s6, s2, 1664
                  sltu         t2, t6, s10
                  slt          s11, a6, s8
                  or           zero, t1, ra
                  and          t1, s0, t4
                  lui          s7, 726599
                  srai         t5, t5, 26
                  slti         a7, t4, -1709
                  slli         t5, s3, 11
                  sltiu        s9, s4, -375
                  or           s5, a4, a7
                  or           a4, s2, a7
                  auipc        s6, 205970
                  slt          s4, a2, a0
                  add          t5, s6, s10
                  lui          a7, 339966
                  sll          t1, a0, s6
                  andi         a1, s11, 1383
                  slti         s10, t3, 888
                  auipc        a1, 944337
                  sltiu        a0, a0, 662
                  sltu         sp, s2, a2
                  sltiu        s11, s10, -532
                  slti         a5, tp, -1073
                  sra          s8, t3, a5
                  addi         s5, s4, 985
                  sltu         t6, zero, s8
                  addi         a0, sp, 1642
                  lui          s6, 848281
                  slti         a4, a7, 1562
                  and          s0, t0, s3
                  sltu         s2, s1, a2
                  sltu         a3, s10, s10
                  auipc        t2, 1041653
                  slti         t0, zero, -215
                  addi         s0, a4, 1839
                  slli         s0, s6, 1
                  and          tp, t5, a5
                  add          s4, a7, sp
                  nop
                  sltu         s9, s4, t5
                  xori         ra, a0, 1452
                  addi         ra, t4, -2014
                  sra          s6, t0, t1
                  srl          t0, a1, s7
                  andi         s3, a5, 1497
                  xori         s9, a1, -2033
                  srl          t0, s10, t3
                  ori          a0, a6, -1288
                  sra          sp, a3, a4
                  sll          s8, s0, gp
                  andi         a1, t6, -1931
                  lui          a0, 515508
                  or           t6, t2, s0
                  and          a3, t2, s2
                  and          s3, t2, sp
                  sltiu        s9, tp, 456
                  and          ra, t4, a4
                  andi         a2, a7, -1096
                  srai         s5, s1, 12
                  sltu         gp, s4, s1
                  sra          s2, s4, s8
                  srli         a0, a1, 24
                  srai         gp, s3, 6
                  auipc        a2, 10821
                  nop
                  auipc        a5, 857120
                  sra          s0, a7, t3
                  xor          s4, a7, sp
                  ori          ra, a1, 806
                  xori         s3, s1, -165
                  addi         s4, t4, 1802
                  sltiu        t5, s7, -421
                  slt          t6, t0, s10
                  lui          gp, 759157
                  lui          s4, 404867
                  addi         a3, s1, 387
                  addi         s5, tp, 1343
                  slt          s3, s6, t2
                  lui          a1, 390756
                  srai         sp, s3, 4
                  slli         s8, s6, 12
                  slt          a1, t1, s6
                  slti         s10, a4, -1595
                  add          a4, zero, a5
                  slti         a2, t3, 583
                  nop
                  srai         s4, s1, 14
                  nop
                  slli         s9, t0, 1
                  or           a5, a5, a7
                  sltiu        s2, a0, 225
                  srli         ra, s2, 3
                  srl          a7, zero, a1
                  auipc        tp, 359570
                  ori          t1, a7, 685
                  slti         a4, tp, -139
                  sra          a7, a3, t1
                  addi         a4, t6, 508
                  slli         s6, s8, 21
                  lui          s3, 15986
                  slt          a0, a7, t0
                  sra          a7, tp, t0
                  andi         a4, gp, -261
                  sltiu        t5, a2, -1173
                  and          s6, s0, t5
                  ori          a0, s11, -1590
                  or           ra, s3, t6
                  sltiu        s8, t6, 1267
                  lui          a6, 939959
                  srl          a0, s4, a7
                  or           s7, a6, t0
                  xori         sp, sp, -351
                  srl          a2, a5, t4
                  ori          a4, a0, 1405
                  sub          t6, a4, s8
                  slti         s6, s3, -1657
                  xor          s9, a7, s6
                  andi         ra, s7, 99
                  or           gp, a3, t5
                  and          s7, zero, t4
                  slti         gp, s0, 975
                  and          t5, s5, t2
                  srli         s6, t1, 28
                  sltiu        t0, t0, -794
                  xor          a5, a1, a0
                  sltu         s9, a6, t1
                  auipc        a1, 282810
                  add          s11, s8, s2
                  sltiu        ra, s8, 1952
                  srli         a6, t2, 30
                  and          t2, tp, s4
                  slt          tp, t0, a0
                  add          a4, sp, a0
                  srl          s7, ra, s7
                  auipc        sp, 508864
                  sra          s3, a7, ra
                  xor          gp, s11, t6
                  sub          s6, t1, a3
                  xori         s11, s11, -1221
                  addi         s6, s1, -34
                  nop
                  xor          t6, t4, s8
                  auipc        s4, 512824
                  sltu         t5, t3, s6
                  or           s11, t6, t5
                  add          a6, a4, s0
                  andi         s2, a5, -72
                  srl          t0, sp, t2
                  slt          t0, ra, s5
                  sltiu        a7, s10, 12
                  addi         t0, a7, 669
                  slli         a3, t1, 27
                  sub          s6, s0, a6
                  sub          s2, a7, a2
                  ori          s3, s10, -633
                  srli         zero, t2, 12
                  sll          a6, t6, t6
                  sll          a1, a3, s11
                  sra          a6, s2, s0
                  sltiu        a5, s3, 781
                  add          a0, a3, a7
                  auipc        s10, 404293
                  auipc        s11, 458164
                  add          a4, t3, s4
                  nop
                  slt          s3, a5, t5
                  sltiu        t2, a6, 86
                  sll          t1, a4, zero
                  ori          a5, sp, 387
                  sltiu        s0, a2, 1495
                  sub          gp, a0, a3
                  and          t5, s5, a0
                  sra          a2, s0, a2
                  add          tp, s7, s0
                  sub          a6, a6, s3
                  ori          a6, a0, 75
                  ori          s3, s0, 1090
                  nop
                  sll          s5, s8, a2
                  sltiu        t2, a4, 1241
                  slt          t2, a5, t1
                  srai         s8, s9, 29
                  sll          a0, a6, s10
                  srli         a3, a3, 2
                  slli         s9, s4, 8
                  srai         s3, s10, 22
                  or           t0, a2, s5
                  or           s3, s6, s7
                  lui          s8, 239878
                  srl          s7, t2, s8
                  sub          s0, t3, a6
                  add          a3, a2, s0
                  ori          t1, s8, 140
                  ori          a7, s9, -1892
                  ori          t0, a3, 671
                  sub          a3, a6, t5
                  xor          gp, a0, a6
                  li           t2, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           t6, 0x0
                  li           a7, 0x477c5e
                  li           a5, 0x80000000
                  li           t5, 0x0
                  li           gp, 0xffffffff
                  li           tp, 0xffffffff
                  li           a0, 0xca77cd53
                  li           a1, 0xffffffff
                  li           t1, 0x5210ff67
                  sub          t1, t5, a5
                  sub          a0, gp, t2
                  lui          t5, 69158
                  addi         t6, t2, -560
                  lui          t1, 711067
                  lui          tp, 579268
                  sub          t6, tp, tp
                  lui          tp, 864859
                  sub          a7, t5, t5
                  add          t5, a0, tp
                  lui          a1, 202789
                  sub          a7, t2, t2
                  sub          a1, a7, t6
                  auipc        a7, 228212
                  auipc        gp, 71081
                  add          t1, tp, a7
                  nop
                  addi         a7, t2, -1835
                  add          t6, t6, a0
                  add          t6, t5, a1
                  auipc        t6, 654727
                  add          gp, a5, a7
                  nop
                  lui          tp, 61648
                  lui          tp, 740132
                  auipc        gp, 660635
                  nop
                  lui          t2, 519795
                  add          t1, t5, a5 #end riscv_int_numeric_corner_stream_10
                  andi         s10, tp, -746
                  srai         t6, a3, 7
                  add          ra, t2, s3
                  and          tp, s4, tp
                  lui          s7, 57538
                  sltiu        a4, a2, 820
                  ori          s7, a1, -680
                  andi         s2, a0, 770
                  or           a7, a4, s10
                  slt          a2, s4, t5
                  sll          t2, s0, s8
                  srl          s10, t2, a5
                  srl          s2, a2, t2
                  andi         t1, sp, -967
                  srli         t5, s7, 22
                  sltu         s8, t0, t4
                  srai         a5, ra, 0
                  or           s6, a3, s2
                  lui          t6, 351066
                  sltiu        ra, s11, -1535
                  sltu         ra, s8, t4
                  srli         zero, s5, 18
                  srl          s6, t6, a4
                  andi         sp, t0, -1898
                  and          s7, s10, a2
                  sltu         a1, ra, gp
                  auipc        s11, 699064
                  srli         s10, s1, 7
                  srl          a2, a3, t6
                  srli         s3, s6, 20
                  slti         t1, s5, -821
                  slti         a0, t5, -341
                  nop
                  andi         t6, s4, 1096
                  add          s2, s7, t0
                  sub          s10, zero, s6
                  srai         s9, gp, 9
                  slt          s7, a4, t6
                  sltiu        tp, s11, 948
                  sltiu        a5, s8, -543
                  srli         a2, t4, 19
                  lui          tp, 59644
                  andi         t5, s9, 1520
                  srai         tp, s9, 19
                  srl          t5, s2, tp
                  addi         zero, s8, 1509
                  addi         t1, s3, -4
                  slli         a0, t4, 16
                  andi         s9, gp, 742
                  and          s6, s3, s7
                  slt          t2, sp, s2
                  sub          a4, a2, gp
                  srai         s5, a4, 22
                  li           a2, 0x80000000 #start riscv_int_numeric_corner_stream_12
                  li           t0, 0x0
                  li           a1, 0x80000000
                  li           t6, 0xffffffff
                  li           t5, 0xffffffff
                  li           s3, 0x0
                  li           s2, 0xdbd0afff
                  li           a4, 0x0
                  li           s4, 0x93086388
                  li           s10, 0xffffffff
                  lui          t6, 309725
                  addi         a1, t0, -1554
                  auipc        s10, 708494
                  addi         a2, s2, -1489
                  addi         t6, s2, 980
                  lui          t5, 769030
                  nop
                  auipc        s2, 204362
                  addi         t6, s2, -1147
                  auipc        t0, 80213
                  lui          s3, 719977
                  add          s2, s3, s4
                  auipc        a4, 890873
                  sub          t6, a2, a1
                  nop
                  lui          s3, 398891
                  sub          t5, s4, s2
                  add          s3, a4, t6
                  add          t6, s4, s3
                  addi         a2, t5, -525
                  nop
                  sub          s2, a4, a2
                  lui          s3, 180706 #end riscv_int_numeric_corner_stream_12
                  sll          s8, t4, s10
                  lui          a5, 538620
                  srl          a4, s9, s0
                  sltiu        t1, a4, -1722
                  lui          ra, 349349
                  xori         a3, s10, -1548
                  ori          s3, a7, 1318
                  slt          gp, t4, t4
                  slli         s8, t6, 26
                  sub          a5, s7, s6
                  sll          s2, sp, t1
                  addi         t6, a6, 723
                  slli         tp, t6, 8
                  sll          s10, a6, t0
                  srai         s9, s0, 3
                  sltu         s10, t6, s11
                  or           a5, s6, a7
                  add          a3, t0, s11
                  srai         s8, s3, 10
                  ori          s3, t5, 817
                  sll          sp, s8, gp
                  xor          s2, s8, a7
                  auipc        a6, 513936
                  auipc        s9, 513264
                  sltiu        s2, ra, 1217
                  lui          t2, 1013557
                  andi         s9, a7, 1835
                  lui          zero, 121505
                  lui          gp, 747775
                  xori         s5, a6, 302
                  sltu         a6, t5, t2
                  sub          s6, a0, a5
                  auipc        t1, 474372
                  nop
                  srai         a4, a1, 1
                  sltiu        a0, a1, -742
                  sub          a4, s10, a2
                  srai         gp, gp, 6
                  srli         a0, t4, 8
                  or           s6, a7, s4
                  sltiu        ra, a6, 202
                  sll          s0, t3, a2
                  sltu         t0, s7, s2
                  sltu         s0, a1, s0
                  xor          zero, s8, sp
                  xori         t5, t3, -694
                  sra          tp, a3, a2
                  srli         s2, s11, 27
                  andi         a7, a3, 1571
                  srai         gp, ra, 24
                  andi         t5, s10, -2005
                  sltu         a2, s5, a4
                  srl          t1, t4, t6
                  auipc        s3, 834841
                  xor          a0, a2, ra
                  andi         a0, ra, -1236
                  sub          a0, a1, t1
                  andi         s9, s3, -1617
                  or           s0, s5, s0
                  sll          gp, a5, t0
                  slti         a5, s3, -1796
                  slt          t0, sp, a6
                  ori          a0, s1, -1461
                  add          s3, s1, tp
                  add          s5, s8, s0
                  addi         s0, s10, -1309
                  ori          s10, a2, 1059
                  slli         zero, a3, 27
                  xori         t6, zero, -282
                  lui          a5, 280866
                  addi         a2, s4, 933
                  slt          s6, a5, t1
                  ori          t0, sp, 1275
                  add          a6, tp, a6
                  slti         t6, s5, -414
                  sub          t1, s8, s5
                  sub          a2, s0, a2
                  or           t6, s5, t4
                  sltu         s10, s1, s6
                  srl          ra, s0, a7
                  sll          s2, t1, t5
                  xor          a3, t0, s3
                  xori         a3, t1, 552
                  slti         s7, t4, 264
                  sll          a7, t6, sp
                  sub          s3, t1, s2
                  slli         s2, s8, 10
                  srai         a6, sp, 0
                  auipc        a2, 488607
                  srli         t6, a7, 24
                  srli         a1, s8, 14
                  lui          a3, 829957
                  addi         a7, sp, -1049
                  ori          t0, a0, -1824
                  and          t5, a5, a4
                  or           s10, t5, a5
                  sra          a1, s7, tp
                  srai         tp, t1, 1
                  sltiu        a5, s6, -1423
                  addi         a6, a3, -210
                  addi         gp, s3, -1192
                  srai         s5, ra, 22
                  and          s3, a2, t3
                  srai         ra, t4, 20
                  ori          a2, zero, -875
                  and          s11, a0, s11
                  or           t0, a2, s6
                  srl          sp, s4, gp
                  sub          a7, gp, s2
                  sltiu        tp, s4, 543
                  andi         zero, a6, 1605
                  slti         s7, s9, -1580
                  xor          s8, t0, t4
                  lui          s9, 94308
                  srli         a3, t6, 3
                  srl          s11, s4, s5
                  li           s0, 0xbb5a0419 #start riscv_int_numeric_corner_stream_19
                  li           a4, 0xae8cbf5e
                  li           s3, 0xffffffff
                  li           s6, 0x0
                  li           a6, 0x95e3bfac
                  li           s7, 0xbb65ea36
                  li           t2, 0xffffffff
                  li           s4, 0x59fa2102
                  li           t5, 0xffffffff
                  li           s5, 0x80000000
                  nop
                  sub          t5, s7, a6
                  auipc        s5, 1036614
                  lui          s0, 560592
                  addi         s3, t2, -449
                  sub          s3, t2, t5
                  add          t2, a6, s7
                  auipc        s0, 404836
                  addi         t5, s7, -688
                  nop
                  sub          a4, a4, a6
                  add          a4, s7, t2
                  auipc        a6, 540394
                  sub          t2, t2, s0
                  add          s7, s7, t5
                  nop #end riscv_int_numeric_corner_stream_19
                  auipc        t5, 122003
                  xori         t5, gp, -375
                  sll          s5, s9, sp
                  sll          t1, s6, s4
                  sll          a1, s10, gp
                  srl          s11, t5, a4
                  auipc        tp, 440876
                  slt          s3, a4, tp
                  nop
                  lui          s3, 295096
                  xor          s7, s8, a1
                  addi         t5, s9, -698
                  slt          gp, zero, a2
                  sltu         s10, a7, a0
                  sltu         t5, sp, s5
                  or           ra, a6, s8
                  sltu         s7, s8, a3
                  nop
                  andi         s11, t0, -1767
                  slti         s3, s0, 856
                  sll          t0, a7, s10
                  xor          t6, a3, a0
                  lui          s10, 98545
                  slt          a6, t6, t5
                  or           a1, t2, s7
                  andi         s0, s1, -1499
                  sra          t0, a1, a7
                  ori          zero, s3, 1398
                  slti         t2, a4, -818
                  addi         t6, sp, 943
                  xori         s7, a6, -481
                  srli         sp, ra, 11
                  sll          s11, s4, a7
                  srl          t0, s4, t3
                  andi         a6, s0, 1026
                  and          a5, tp, s8
                  ori          s9, t4, -772
                  sltu         t0, s10, s8
                  addi         t1, s7, 138
                  slt          a1, t6, s1
                  ori          a7, s9, -1854
                  srl          tp, tp, t1
                  sll          s5, s10, s9
                  srai         a1, t2, 20
                  slti         sp, s7, -871
                  xori         s9, s1, 1216
                  srli         t6, s7, 18
                  ori          s6, zero, -71
                  or           t1, s6, a7
                  slt          t1, s8, t5
                  srli         a0, s5, 21
                  xor          s5, s8, s11
                  srli         t6, zero, 0
                  srai         s8, t0, 6
                  slti         a5, sp, -1531
                  srli         a5, a7, 22
                  xor          s9, t5, s9
                  sltiu        s8, a2, 1295
                  auipc        s5, 22430
                  add          s4, s2, a1
                  srli         sp, s10, 31
                  srli         a2, s1, 1
                  srl          a1, a4, t2
                  slt          s6, t4, s6
                  sub          a4, a7, t5
                  srai         t5, t3, 29
                  slli         a4, sp, 0
                  sltu         sp, s6, s7
                  lui          a2, 285964
                  nop
                  sltiu        t0, gp, 1200
                  slli         s2, a6, 4
                  or           zero, t3, s10
                  ori          t1, s5, 307
                  andi         t0, a6, -1953
                  sll          s8, a5, s6
                  andi         a0, a6, -47
                  sltu         gp, s2, t1
                  slti         a0, s9, 376
                  srai         s10, s8, 11
                  andi         a2, a7, -1485
                  slt          t2, t2, a3
                  srai         s9, sp, 11
                  ori          t2, s3, 412
                  srl          t2, t1, s3
                  addi         s7, a5, 2029
                  auipc        a6, 273649
                  addi         a2, t0, -478
                  sltiu        t5, a7, -1572
                  add          ra, a3, a4
                  nop
                  srai         tp, t2, 8
                  slli         a7, t5, 15
                  srai         a7, a3, 26
                  srl          s7, a4, s9
                  add          a6, zero, s11
                  addi         s6, a5, -1820
                  andi         a2, tp, -712
                  lui          t6, 596134
                  and          s4, t6, t2
                  sltu         s8, s2, gp
                  lui          t0, 621792
                  andi         sp, a3, -1438
                  slli         tp, a1, 28
                  or           s11, t5, a0
                  nop
                  sll          t6, a7, s1
                  addi         t2, t0, -1932
                  and          gp, s3, t1
                  lui          s8, 477982
                  sltu         s11, s4, s10
                  lui          a0, 1014429
                  ori          a6, s5, 1412
                  xor          s9, t0, s0
                  addi         a5, t1, -671
                  xori         t6, s3, 36
                  add          s0, a1, ra
                  sra          s8, a6, a7
                  sll          s10, t0, s5
                  add          a4, s6, s0
                  andi         a5, s6, -1448
                  and          ra, s2, s4
                  sub          s0, a3, t1
                  srai         t0, t5, 18
                  sll          sp, t4, t6
                  nop
                  sra          a3, tp, t5
                  sub          tp, a3, s6
                  add          s3, t6, t4
                  slli         a3, a0, 5
                  nop
                  addi         a2, t6, 324
                  sll          a5, a6, a2
                  sltu         s4, t3, t5
                  and          s11, s8, s5
                  xor          a7, s5, t1
                  sll          a5, s8, s0
                  ori          s7, s5, 2042
                  slt          ra, gp, a4
                  sll          zero, a2, s1
                  srli         s9, s2, 13
                  add          s4, s1, t5
                  auipc        s8, 970789
                  sub          a4, a3, s0
                  addi         t2, s1, -1721
                  srli         t2, gp, 8
                  xor          s2, t3, s9
                  xor          a2, t0, ra
                  ori          a6, t2, -1552
                  sub          gp, a0, a7
                  sltu         a7, s4, gp
                  auipc        t1, 414320
                  srl          s9, a3, a7
                  slti         s5, s3, 1896
                  srli         a0, t3, 27
                  or           a0, a5, a7
                  xor          t0, t4, a3
                  and          t1, a6, s8
                  ori          s9, s5, -112
                  slli         a6, a5, 20
                  sll          s9, a0, zero
                  auipc        s5, 16684
                  slt          t1, t6, t5
                  addi         a2, zero, 1751
                  ori          a7, s3, -306
                  ori          sp, t6, -1626
                  sltiu        ra, s10, -1677
                  ori          a3, s8, -1613
                  auipc        zero, 75692
                  lui          s9, 142591
                  slt          s4, ra, a7
                  or           sp, ra, t3
                  slti         s4, s7, -1406
                  add          a5, a4, s9
                  and          a4, ra, zero
                  add          s2, sp, ra
                  sub          t6, s3, ra
                  auipc        s8, 735874
                  nop
                  or           s3, ra, s6
                  xori         s6, s11, 326
                  sltiu        a4, t4, 415
                  slti         s11, sp, 772
                  slli         t6, a3, 21
                  srai         s8, s5, 12
                  sltiu        a1, s4, -1079
                  xor          ra, t3, t3
                  add          a4, s10, t5
                  ori          a3, a7, -427
                  slli         ra, a6, 18
                  and          a0, a6, s9
                  or           a4, ra, t2
                  srli         t1, t5, 13
                  srai         s10, t6, 1
                  auipc        s2, 21029
                  slti         t2, t1, 888
                  sra          tp, s3, s8
                  slti         s2, s7, 118
                  slli         zero, a3, 29
                  sub          tp, t5, s8
                  srai         a1, t2, 29
                  xori         t5, t4, -1799
                  srli         s8, s1, 11
                  sra          t1, s2, zero
                  sub          a1, a0, s2
                  slt          t5, t5, t0
                  slt          t5, t5, t0
                  ori          gp, s1, 658
                  add          a1, s0, a4
                  sltiu        s5, s10, 698
                  srai         a5, s10, 20
                  sub          s0, s0, s8
                  xori         zero, t5, -1243
                  sltiu        a7, s10, 964
                  sra          s0, s10, a7
                  srai         tp, s9, 1
                  slti         a2, t0, 1137
                  srai         a6, s2, 5
                  add          gp, s4, s3
                  slli         s4, s9, 11
                  srli         s11, a5, 29
                  nop
                  ori          tp, t3, -1576
                  xori         t6, s5, -781
                  or           a2, s6, t0
                  xor          t2, s8, t2
                  nop
                  slti         t1, tp, 955
                  slli         a2, s2, 30
                  ori          sp, s5, -1419
                  sra          s9, t5, a0
                  addi         s4, s5, 1612
                  or           s3, s9, tp
                  slt          a6, a6, s1
                  ori          s8, s0, -659
                  nop
                  sltiu        s2, t2, 493
                  slli         a3, zero, 18
                  add          s11, s6, s9
                  xori         t0, a4, -689
                  sra          s3, a3, t4
                  or           a1, s2, a7
                  ori          zero, a4, 358
                  xor          s6, t5, t2
                  slt          a1, ra, s9
                  srli         t0, t4, 26
                  nop
                  lui          a3, 142707
                  slt          a5, a7, t3
                  sltiu        a6, a4, 473
                  add          ra, s9, a3
                  add          t6, s8, t4
                  xor          t5, t2, s4
                  auipc        a1, 911649
                  sub          s2, t0, a3
                  xori         s6, s8, -2014
                  lui          s4, 249542
                  srli         a0, t3, 6
                  auipc        t0, 790937
                  auipc        a7, 621663
                  srai         s3, t2, 3
                  add          tp, a7, a3
                  sub          a1, s5, a5
                  srl          a5, s9, t4
                  auipc        a2, 42923
                  sltiu        t6, s0, 504
                  xor          s0, a3, ra
                  sra          gp, s10, t5
                  sub          zero, gp, s5
                  andi         a6, tp, 229
                  auipc        a4, 948136
                  nop
                  slti         s10, a1, 1716
                  or           a4, s3, a7
                  xor          a4, ra, s10
                  lui          s0, 804999
                  add          zero, t4, sp
                  sltiu        s2, s4, -1450
                  sub          s7, s0, s2
                  or           s11, gp, a1
                  add          a4, t3, t5
                  slli         a6, t3, 28
                  add          ra, tp, s1
                  sub          a3, a1, sp
                  andi         s0, s10, 47
                  slti         zero, a5, -823
                  srli         ra, s1, 28
                  srai         s6, s0, 19
                  sll          s7, s10, tp
                  xor          a4, t1, s1
                  xori         a4, tp, 401
                  auipc        s0, 658251
                  and          a3, zero, s8
                  ori          zero, a0, 1847
                  sltu         a6, a6, t5
                  srl          zero, s1, tp
                  slt          s8, a1, a6
                  xor          s9, t5, t4
                  andi         a4, s6, -169
                  addi         t0, s5, -1821
                  nop
                  or           a0, a1, s4
                  slt          zero, t0, s8
                  ori          a5, ra, 201
                  lui          t1, 528124
                  xor          t2, tp, s5
                  or           a7, s7, s9
                  andi         t0, t1, -38
                  sra          s9, t2, t2
                  andi         t6, s2, -977
                  addi         a2, s7, 853
                  sll          s2, a3, s10
                  sltu         s5, s6, a5
                  srl          s2, t5, a6
                  sltu         a0, a7, sp
                  auipc        s7, 570577
                  sub          a5, a2, zero
                  sll          s4, t4, s4
                  slti         s7, s4, 915
                  lui          s8, 880656
                  addi         t6, s1, 1195
                  nop
                  sll          s6, a6, s1
                  slli         s5, s2, 11
                  add          ra, a7, sp
                  srli         s7, s6, 13
                  sll          t0, s11, a1
                  srl          zero, ra, s0
                  srl          s10, a1, s11
                  nop
                  and          sp, s5, a7
                  ori          s11, tp, 1479
                  add          a0, t3, s7
                  li           a2, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           s8, 0x80000000
                  li           s4, 0xbc8f7f2d
                  li           s5, 0x80000000
                  li           a0, 0x0
                  li           s10, 0x0
                  li           ra, 0xffffffff
                  li           t5, 0xee3f8ec1
                  li           s2, 0x0
                  li           a4, 0x0
                  lui          s8, 941433
                  addi         t5, s5, -2006
                  sub          a4, a2, s4
                  lui          a0, 939575
                  add          ra, a2, ra
                  auipc        s5, 411483
                  lui          s2, 246320
                  add          s10, s4, s10
                  sub          a4, s8, s8
                  sub          t5, a2, a2
                  nop
                  sub          t5, a0, s2
                  auipc        s10, 97716
                  nop
                  auipc        s4, 311396
                  add          s5, s8, t5
                  auipc        a2, 319731
                  add          s2, s5, s4
                  sub          a2, s10, a0
                  addi         ra, a2, 1175
                  addi         s4, s10, -1751
                  add          s2, s10, a4
                  lui          s8, 315722
                  auipc        a0, 603217
                  auipc        t5, 812784 #end riscv_int_numeric_corner_stream_5
                  srli         s5, a2, 13
                  nop
                  srl          s9, t3, s8
                  or           s3, sp, a6
                  sub          t0, s11, s0
                  nop
                  add          s11, t4, a2
                  srl          a7, t2, s9
                  srli         t2, s6, 14
                  lui          a1, 21066
                  xor          t1, t2, s3
                  addi         a3, s4, 665
                  srli         t6, a0, 20
                  xor          a4, a1, a6
                  xor          s6, ra, s10
                  nop
                  srl          t1, a0, a1
                  xor          s4, a2, s3
                  sltiu        s2, gp, 86
                  srl          t6, s6, s4
                  lui          gp, 244069
                  and          a0, s5, t1
                  srli         gp, sp, 2
                  sll          a3, t3, gp
                  slt          t5, a4, s4
                  xori         s9, s3, 220
                  xor          s10, a2, t0
                  slti         zero, s3, -118
                  xori         s6, t1, 1723
                  sltu         s8, a6, gp
                  sltiu        s6, a3, 1010
                  auipc        s3, 888315
                  sltu         a2, s4, zero
                  nop
                  xor          s10, a5, t6
                  ori          tp, s4, 1506
                  sltu         tp, a7, t5
                  lui          gp, 204187
                  xor          tp, t5, a6
                  xor          a2, s3, s8
                  ori          s10, s10, 1127
                  andi         s2, s7, 564
                  lui          s0, 394407
                  sra          a0, s11, ra
                  sub          t6, a1, a5
                  and          s3, s8, a7
                  or           s5, ra, a4
                  auipc        tp, 287460
                  xor          a0, t0, s2
                  lui          s0, 1007088
                  slti         t1, s1, -1773
                  srli         zero, gp, 13
                  ori          t1, s2, -34
                  and          t0, a0, a7
                  sub          t1, a0, s6
                  sra          sp, s5, zero
                  or           t0, tp, s3
                  and          gp, a2, s6
                  sll          tp, s0, ra
                  sub          t6, t1, t3
                  slli         a5, t3, 15
                  and          s11, a3, s2
                  andi         a7, s1, 1598
                  slli         t5, a4, 19
                  or           t1, gp, s5
                  auipc        a3, 615967
                  sltiu        s0, s10, -877
                  slt          a2, t0, a4
                  or           t6, t6, t1
                  xori         s6, tp, 401
                  or           s11, s3, t6
                  sub          s0, a6, a5
                  srai         t6, s8, 25
                  srl          a5, gp, s5
                  auipc        t0, 171814
                  sub          t5, s9, s1
                  sltu         s11, t2, s4
                  addi         t6, t5, 34
                  ori          s2, a3, 1637
                  xori         s0, s8, -1881
                  sra          sp, s10, t3
                  andi         s7, s2, 241
                  srl          s9, t1, t2
                  slti         a4, a3, 1354
                  auipc        a2, 394337
                  ori          a1, s6, -1878
                  ori          tp, s11, -417
                  srai         gp, a1, 18
                  srl          t5, a1, t6
                  slt          a3, t5, tp
                  slti         t6, a4, 1716
                  addi         tp, s5, -508
                  auipc        s9, 838612
                  srai         a0, s3, 24
                  andi         a1, t3, -921
                  slt          a1, t3, zero
                  auipc        zero, 199057
                  or           t2, t6, s5
                  sll          a6, a0, a2
                  xori         t5, a6, -865
                  srl          s5, t3, ra
                  andi         tp, a0, -314
                  srl          s5, a0, t0
                  addi         gp, a3, -1386
                  sra          a6, t5, sp
                  sub          s4, tp, a2
                  sltiu        t1, s4, 449
                  sub          s2, a5, s9
                  lui          a4, 615951
                  slli         t5, a0, 4
                  slti         s6, t0, 2024
                  srli         t1, t0, 19
                  or           a6, t3, a0
                  andi         gp, s3, 1583
                  xori         t1, tp, -197
                  srai         a4, t4, 15
                  srl          t0, sp, s10
                  slli         a1, s1, 0
                  sltiu        a2, a6, 622
                  slli         sp, s11, 12
                  sltiu        s7, tp, 1248
                  sltu         s7, tp, t4
                  or           s11, s9, s8
                  srai         t2, s1, 19
                  lui          ra, 607427
                  slli         s6, s7, 16
                  srli         a0, s10, 1
                  or           s10, s4, zero
                  xor          t2, s6, s3
                  sra          gp, t0, s10
                  ori          a6, s1, -774
                  sltu         ra, t4, s1
                  xori         a5, s5, -1929
                  srl          s4, s10, s2
                  sra          a3, s2, s0
                  nop
                  and          a5, t2, s7
                  slti         t5, a7, 1035
                  add          s0, a6, t6
                  xori         s6, s3, -939
                  xori         s3, t0, -1253
                  sll          s2, a5, s10
                  lui          a4, 901404
                  or           t1, s3, t3
                  nop
                  srai         s8, s1, 1
                  auipc        a0, 894695
                  nop
                  srai         a5, t6, 8
                  slti         s9, s2, -1278
                  nop
                  slti         s3, s6, -591
                  sltiu        gp, zero, -1858
                  andi         s2, t2, -427
                  nop
                  xori         s6, t3, -1255
                  slti         s2, a7, 1561
                  srl          tp, s0, t3
                  srl          s7, s3, ra
                  srli         s10, zero, 11
                  xori         t6, s6, 1564
                  slli         a5, gp, 11
                  ori          a1, a6, 982
                  slli         a5, a4, 2
                  slti         gp, zero, -849
                  xori         a7, zero, -796
                  add          t1, t0, s8
                  and          ra, s10, a4
                  sltu         s4, a1, t0
                  sll          s8, s2, t6
                  slt          s2, a0, a0
                  sltiu        t1, s0, -1474
                  addi         gp, s5, 405
                  addi         sp, sp, 1320
                  and          s7, tp, a4
                  addi         s9, s5, -1096
                  andi         a3, s0, 1439
                  sltiu        t0, a0, 472
                  add          a2, a2, s7
                  addi         s0, s7, 1465
                  lui          a7, 370426
                  sll          s0, t3, t6
                  sub          s0, a6, a0
                  sll          s7, s11, a4
                  and          t2, a6, t5
                  slt          s8, s5, s8
                  sltu         a1, t5, tp
                  srai         s11, a3, 23
                  ori          s11, s1, 1232
                  slti         t5, s7, 1221
                  sll          s2, s9, gp
                  slt          s5, s7, a1
                  and          t5, s0, a4
                  add          s3, s0, s9
                  and          a4, s11, s7
                  lui          s4, 993653
                  srl          zero, t4, t4
                  sltu         s5, s0, t1
                  addi         s8, t0, -729
                  or           a0, gp, t0
                  xori         s10, t2, -1974
                  sll          s0, s3, s5
                  slt          s2, a2, t5
                  srai         t1, a4, 16
                  sra          s4, t3, tp
                  addi         s8, a2, 757
                  ori          t2, s4, -873
                  slti         s10, tp, 525
                  ori          a5, t0, -1216
                  ori          tp, zero, -1117
                  andi         ra, s11, -382
                  lui          a0, 674082
                  srai         ra, t1, 22
                  add          ra, a7, t0
                  sra          t0, a6, zero
                  slt          s9, a1, a1
                  and          s2, gp, s4
                  xori         s2, t6, -1867
                  andi         ra, s8, 414
                  sra          t2, a7, s5
                  or           ra, a6, sp
                  srl          t0, s7, s4
                  xori         gp, a5, 1500
                  xor          s4, a0, s8
                  slti         t0, s4, -1010
                  sub          a7, gp, a7
                  auipc        a4, 840988
                  sll          s8, s8, t6
                  lui          t0, 36937
                  nop
                  ori          sp, s5, 1296
                  auipc        s7, 542343
                  and          t0, a0, tp
                  sra          a4, t1, a3
                  slt          gp, s0, s8
                  srl          s2, zero, a1
                  andi         a7, t0, 904
                  or           s10, s2, s3
                  srli         a5, a6, 15
                  sll          s10, t1, zero
                  srli         sp, a6, 4
                  andi         t1, t1, -1841
                  slti         a3, s2, 2040
                  addi         a5, a4, 1845
                  add          t6, t1, gp
                  or           a6, s9, a5
                  sub          s5, tp, tp
                  srli         s9, t6, 27
                  srl          t2, a7, s5
                  xor          s7, s2, s3
                  sltiu        sp, t3, -1684
                  slt          sp, s8, s1
                  xor          s3, s2, tp
                  srai         a0, s11, 22
                  xori         s4, a7, -323
                  sll          s8, a7, s0
                  sll          s11, a1, zero
                  sll          s7, tp, t0
                  slt          t2, s5, zero
                  auipc        a5, 88369
                  sltu         s11, a5, t6
                  andi         a2, s0, 1135
                  srl          a1, s7, t1
                  nop
                  lui          s11, 764152
                  auipc        sp, 952571
                  sltiu        zero, t5, -871
                  and          s8, a1, s11
                  sub          a5, s0, t0
                  srl          s7, a5, s8
                  lui          t1, 1003083
                  addi         s11, sp, 719
                  sltiu        s6, s7, 1356
                  ori          a1, t4, -1359
                  lui          a6, 656682
                  slli         t2, tp, 26
                  sltu         gp, gp, s1
                  lui          a1, 323288
                  slti         a1, s1, 197
                  auipc        s8, 234007
                  srai         gp, s0, 19
                  sltiu        a5, s3, -890
                  auipc        s3, 430587
                  lui          ra, 214122
                  sltu         a5, t4, a1
                  sltu         a7, t4, tp
                  nop
                  addi         s6, t6, -834
                  sub          a0, s1, s3
                  slt          a5, a2, s3
                  add          s11, s5, s8
                  sltu         s7, s1, t1
                  lui          s4, 1043381
                  sll          s2, s1, a6
                  slt          s6, tp, a7
                  sub          t1, a6, s1
                  srai         a3, t3, 9
                  sltu         ra, a6, a0
                  sub          a2, a7, a6
                  lui          a3, 871757
                  srli         gp, s1, 31
                  andi         a2, s3, -1366
                  ori          a2, a7, 1523
                  sub          tp, a7, a3
                  andi         a0, t2, 1801
                  xor          a2, t6, zero
                  add          t2, s10, a4
                  addi         s8, s3, -589
                  and          tp, s5, s6
                  ori          s0, s3, 764
                  sra          a7, s11, t6
                  ori          a7, a1, -1394
                  xor          sp, s2, t6
                  auipc        s9, 770570
                  xori         s11, t6, -74
                  sltu         s7, s11, gp
                  xor          t6, t4, s7
                  lui          a7, 436939
                  xor          a1, s5, s5
                  slt          a7, a3, s9
                  srl          s7, a5, s10
                  sll          zero, s11, tp
                  slli         sp, s4, 5
                  sltu         a1, s2, s2
                  xor          t1, s1, s4
                  nop
                  sub          a6, t1, a6
                  srl          a0, t6, s3
                  xor          t6, gp, ra
                  sltu         a0, a4, s11
                  add          a2, s10, t4
                  or           a6, t1, a3
                  srl          t1, a4, zero
                  sub          s9, s6, ra
                  slli         s0, a6, 26
                  andi         tp, zero, 218
                  or           a0, t1, s7
                  slli         tp, a3, 3
                  sub          zero, t6, tp
                  nop
                  xor          t1, zero, s4
                  sra          s6, s8, t2
                  slt          t2, t2, s11
                  srli         a1, s11, 1
                  ori          gp, a1, 735
                  srai         zero, a7, 1
                  slti         t2, a1, -1833
                  xori         t6, s5, 496
                  srai         s0, t6, 17
                  ori          s5, t4, 1721
                  srl          a4, s7, s2
                  sltiu        s9, a4, 1648
                  srl          t1, gp, t0
                  srai         t2, t3, 23
                  lui          a4, 330935
                  slti         gp, sp, 765
                  xori         s6, tp, -390
                  or           t1, s4, s10
                  sra          s11, s11, a3
                  lui          a0, 134045
                  srli         t5, a5, 1
                  add          s5, t4, gp
                  lui          t0, 802125
                  srai         s3, s8, 6
                  sltiu        a7, s6, 1787
                  addi         ra, s1, -13
                  srai         s6, t3, 28
                  xor          a1, t4, s6
                  sltiu        sp, s1, -1817
                  sra          t2, t6, s9
                  sll          s3, a1, s2
                  or           a5, s2, s5
                  srl          a4, s4, s7
                  srai         ra, s5, 18
                  nop
                  slli         a5, a5, 24
                  slti         zero, tp, -833
                  sltiu        s4, a7, -484
                  slti         s7, a1, -226
                  sltiu        t2, a3, 108
                  ori          t0, gp, -2022
                  xor          s9, s7, a0
                  slli         s6, a2, 16
                  slti         a4, s9, 754
                  slt          tp, a0, s5
                  sll          a2, s1, a7
                  nop
                  lui          a3, 652209
                  slli         t0, sp, 22
                  slli         zero, a4, 24
                  sll          s10, tp, t5
                  xori         a1, s1, 1425
                  or           a4, s7, t0
                  sltiu        s7, t5, 1225
                  lui          a7, 679324
                  auipc        s5, 878184
                  auipc        a5, 365439
                  sltiu        s4, sp, -1199
                  slt          s0, ra, s8
                  lui          tp, 850536
                  sll          a7, a4, sp
                  xor          t6, s1, s11
                  and          s3, a3, ra
                  li           a5, 0x476265ed #start riscv_int_numeric_corner_stream_4
                  li           s5, 0x3f204465
                  li           tp, 0xffffffff
                  li           gp, 0x80000000
                  li           a2, 0x80000000
                  li           s2, 0x80625771
                  li           a3, 0xbf53afb
                  li           a7, 0x0
                  li           s11, 0x0
                  li           t2, 0x0
                  addi         s5, s2, -232
                  lui          a3, 481620
                  sub          a5, gp, t2
                  nop
                  auipc        a7, 515296
                  addi         a2, s5, 195
                  auipc        s5, 48781
                  sub          a5, s11, gp
                  addi         a7, s11, -1202
                  sub          tp, a5, a5
                  add          t2, a3, gp
                  nop
                  add          tp, a7, t2
                  lui          a7, 342835
                  addi         s2, s2, -1916
                  auipc        s2, 979433
                  nop
                  sub          a5, tp, gp
                  nop
                  auipc        t2, 761244
                  add          s2, tp, a5 #end riscv_int_numeric_corner_stream_4
                  add          t1, s11, t6
                  slti         s7, t0, -1945
                  auipc        s3, 933324
                  xor          t0, sp, s6
                  nop
                  sltu         t1, zero, s4
                  nop
                  slli         a3, tp, 5
                  add          s11, s6, a5
                  sltiu        t1, t6, 776
                  srl          zero, gp, a4
                  slti         s0, a1, 291
                  sra          a0, t2, s6
                  add          zero, gp, s6
                  nop
                  sll          s10, t0, a7
                  sll          s9, a5, s3
                  lui          a3, 413417
                  sll          a5, a1, gp
                  auipc        t0, 816893
                  srli         gp, s5, 26
                  andi         gp, t2, 327
                  lui          a3, 732172
                  xor          a7, s9, s11
                  sll          tp, tp, t3
                  sltiu        a7, s5, -719
                  xori         a0, a2, -1636
                  auipc        a5, 570318
                  addi         s8, a3, -1295
                  add          s7, a3, a2
                  or           a3, a2, t0
                  slli         s11, s11, 5
                  slti         s6, t6, -1220
                  or           a5, s2, ra
                  sll          t0, sp, s10
                  add          t1, a2, a1
                  sltu         a7, t4, t0
                  ori          a6, s2, -496
                  lui          a2, 438072
                  and          s10, a7, zero
                  srli         s3, t0, 10
                  or           sp, t1, t2
                  ori          a2, s3, -1395
                  xori         a0, t2, 731
                  lui          s4, 650611
                  xori         s8, a5, -2019
                  ori          a2, gp, 1037
                  sra          a4, tp, t3
                  nop
                  add          a7, zero, s5
                  slti         s5, s6, 90
                  sra          sp, a5, gp
                  slti         a7, ra, -470
                  slti         a3, a7, -420
                  andi         a2, s8, 970
                  sll          tp, gp, s3
                  and          t6, t5, s9
                  li           t2, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           t0, 0x0
                  li           tp, 0x0
                  li           a1, 0xb8466857
                  li           a0, 0x0
                  li           a2, 0x80000000
                  li           s0, 0xffffffff
                  li           s5, 0xffffffff
                  li           ra, 0x0
                  li           s7, 0x0
                  nop
                  add          a2, ra, s7
                  addi         s5, ra, -1265
                  nop
                  add          t0, s7, a1
                  addi         t2, s5, -1308
                  addi         s5, t2, 248
                  add          tp, t2, t0
                  nop
                  addi         s5, s5, 1207
                  add          t2, a1, t0
                  sub          a2, t2, tp
                  nop
                  addi         a1, t0, -1699
                  addi         t2, a2, 357
                  auipc        t2, 222128
                  addi         a2, a2, -79
                  lui          a0, 274614 #end riscv_int_numeric_corner_stream_6
                  srli         s0, s7, 20
                  sltu         s8, a4, t5
                  srl          s8, t3, s7
                  slli         ra, ra, 18
                  xor          s11, a0, t4
                  and          t6, gp, s7
                  slt          a4, a6, s5
                  ori          a1, a5, -381
                  slt          t5, t5, t4
                  slli         a0, s4, 12
                  slli         t2, t0, 27
                  ori          a6, gp, -1176
                  srai         s6, s5, 12
                  and          gp, s8, sp
                  srli         a2, s7, 11
                  ori          t2, s11, -1085
                  andi         s7, s6, -375
                  or           s11, a1, gp
                  slt          t0, s9, s0
                  ori          s4, s3, 313
                  auipc        s8, 767741
                  auipc        sp, 498818
                  sra          ra, s4, gp
                  or           zero, t1, t6
                  srli         t2, a5, 10
                  sra          s2, s3, a5
                  add          sp, s3, s11
                  sltu         s9, t0, t4
                  addi         s10, s6, 1106
                  sltu         s5, t5, a1
                  lui          t0, 1027733
                  xor          a5, a7, ra
                  sltu         s9, a0, s7
                  andi         tp, t6, 1969
                  and          t0, s5, a3
                  slti         t5, ra, 412
                  sll          t5, a1, ra
                  xori         s11, a0, -1071
                  sra          s2, t6, s1
                  xori         gp, zero, -870
                  andi         ra, t3, -906
                  ori          s2, s8, -776
                  ori          sp, a4, -1646
                  sub          s9, t3, t0
                  srai         a6, s11, 1
                  sltiu        s5, t1, -1702
                  auipc        a5, 539707
                  srli         s10, s7, 5
                  slli         a7, a0, 25
                  andi         a0, ra, 308
                  and          tp, s6, s7
                  nop
                  xor          a3, t1, s8
                  xor          s6, a1, gp
                  and          tp, a1, t5
                  srli         zero, t3, 12
                  auipc        s0, 953243
                  ori          t6, a1, 250
                  ori          a6, a4, 1144
                  slli         t0, t1, 11
                  sltu         s0, a0, a4
                  srl          tp, s6, t3
                  addi         t5, t2, 118
                  sll          s10, a4, t5
                  sltu         a0, t4, t2
                  nop
                  sub          t5, a6, s10
                  sll          a4, s6, t4
                  add          a7, s7, a2
                  sll          tp, s8, s8
                  auipc        s10, 412209
                  auipc        a6, 117310
                  slt          s4, s10, t0
                  sltu         s6, s7, s4
                  xori         t2, t4, 1406
                  add          s9, t2, a1
                  and          gp, s7, a0
                  andi         t0, s6, -1993
                  sltiu        s2, ra, 1887
                  sltu         gp, s6, s11
                  sll          s9, t0, zero
                  addi         t5, s7, 1479
                  slt          gp, sp, a2
                  xor          s6, s9, t1
                  andi         a5, a5, 1160
                  sub          a2, s1, s2
                  and          a7, s4, t2
                  slli         zero, zero, 29
                  add          s8, a3, s3
                  sltiu        gp, s9, -877
                  or           s2, s5, a1
                  auipc        gp, 658867
                  lui          s5, 45515
                  sltiu        t1, s11, 1276
                  xori         gp, s3, 802
                  slti         s8, a1, 1470
                  nop
                  srai         s4, a5, 26
                  srl          a1, s3, t0
                  add          a5, s7, a5
                  slli         s10, s11, 15
                  ori          a7, a6, 745
                  srli         s6, s5, 8
                  slli         sp, s2, 15
                  slli         zero, gp, 12
                  and          sp, s9, t5
                  lui          s4, 760549
                  add          t1, a0, t0
                  or           s4, a0, s4
                  xor          t6, t4, t5
                  lui          a2, 49986
                  or           s10, s7, ra
                  slt          zero, s5, a1
                  sltiu        ra, a3, 983
                  slt          a1, s0, s4
                  xor          t0, a0, t3
                  lui          s10, 401510
                  auipc        a7, 141235
                  sltu         a7, t1, a6
                  xori         s5, s10, -1972
                  srli         s10, s4, 14
                  srai         zero, tp, 20
                  srai         s2, s8, 5
                  srli         s6, ra, 8
                  xor          sp, t0, a4
                  andi         s7, s3, -75
                  add          s8, ra, s7
                  srai         s11, a7, 3
                  lui          t6, 171571
                  sra          s9, s4, t5
                  auipc        a2, 783478
                  srli         t2, s7, 0
                  srli         a1, tp, 4
                  xori         tp, sp, 680
                  srl          ra, s7, gp
                  and          a7, a2, t4
                  xor          s10, t3, s0
                  sub          t6, zero, a4
                  auipc        a1, 511930
                  sll          tp, zero, t2
                  slli         a6, t4, 13
                  slli         t2, s6, 8
                  lui          s6, 897126
                  add          tp, a2, t5
                  sltu         s2, t4, s8
                  xor          s11, s4, tp
                  add          s10, s7, a0
                  and          s6, a4, t6
                  sltiu        s4, t6, 1740
                  or           a0, t2, s0
                  nop
                  nop
                  slti         s5, s5, -797
                  sub          s11, tp, a2
                  srai         a4, a2, 24
                  srai         a4, s9, 22
                  lui          s8, 40732
                  slt          s11, t6, a0
                  andi         s4, s2, -609
                  addi         a7, s11, 671
                  xor          s9, a5, a7
                  srl          a0, s8, s0
                  srli         a0, a2, 5
                  andi         a1, t5, -1522
                  srli         s3, s6, 6
                  srl          s7, s4, t5
                  sltiu        s6, t0, -410
                  srl          t5, s11, t0
                  sra          a1, a1, s1
                  sra          a0, a2, a6
                  slti         a2, s9, 85
                  sltiu        a3, s1, 1608
                  addi         s6, sp, -1155
                  xor          a3, s6, a6
                  xor          t6, s1, tp
                  sltu         t2, a6, s11
                  sra          a1, s11, s5
                  slli         s6, s8, 10
                  sltiu        s2, s8, 305
                  slt          s11, t6, s6
                  xori         t1, t6, -1051
                  slt          ra, s6, s9
                  andi         s8, a0, -163
                  slt          s5, s7, a2
                  srai         t2, s7, 26
                  sub          s10, s7, t3
                  xor          gp, sp, s4
                  or           s8, t5, a5
                  addi         sp, a2, 213
                  srl          tp, a6, a7
                  sltu         s2, zero, t1
                  ori          a0, a4, -1298
                  auipc        a2, 600291
                  nop
                  and          a7, t3, t5
                  lui          a4, 19305
                  srli         s6, a3, 21
                  sltu         a1, s10, s1
                  or           a6, s7, zero
                  srai         s2, a5, 8
                  and          gp, tp, s11
                  xori         s8, a0, 636
                  slti         t6, s6, 777
                  srli         ra, t3, 22
                  slli         s7, s1, 22
                  sub          s0, t2, gp
                  add          s8, s3, t2
                  auipc        s5, 30417
                  sltiu        a3, zero, -671
                  sll          ra, s7, s5
                  andi         gp, a1, 990
                  srli         a5, sp, 23
                  slli         t0, a7, 6
                  lui          s7, 531073
                  addi         s8, a6, -55
                  srl          s9, s2, s10
                  xor          a6, a0, s1
                  ori          a5, a6, 1240
                  xori         gp, t2, -586
                  sltu         a5, s5, s9
                  srl          t2, t3, s7
                  slli         a5, sp, 28
                  andi         sp, t6, 2028
                  slti         a2, ra, -1550
                  lui          zero, 408592
                  lui          a3, 279404
                  slli         a7, t3, 6
                  xor          t5, a6, a3
                  add          s7, s3, s5
                  nop
                  sra          s8, s1, t0
                  auipc        a2, 580235
                  nop
                  add          a3, s9, s8
                  and          t0, a7, s4
                  sub          a5, a6, a2
                  add          zero, a3, gp
                  and          s8, s7, a3
                  srli         a7, gp, 18
                  slli         s0, a4, 6
                  sra          t6, t5, a7
                  auipc        s11, 149639
                  or           t2, a5, tp
                  slli         a6, s9, 23
                  lui          ra, 224008
                  addi         sp, s0, -311
                  slli         s7, a3, 31
                  auipc        s5, 266712
                  sra          s9, s2, s0
                  slli         s10, s4, 29
                  xori         a4, s6, -904
                  auipc        t6, 1008112
                  and          s5, t5, s3
                  srl          a4, t4, a3
                  srl          sp, a5, s0
                  slti         s9, t1, -807
                  slli         t0, s10, 0
                  sub          a0, a3, a1
                  sltu         s2, s6, s0
                  xori         s4, t3, -831
                  xor          s4, a7, t1
                  srl          a7, s11, tp
                  add          gp, a1, s4
                  srli         a1, s4, 12
                  or           a6, t2, t2
                  xor          s5, s9, s4
                  and          t2, s0, s5
                  andi         a0, a2, 591
                  lui          t2, 638142
                  andi         a4, s5, 525
                  xori         zero, ra, 610
                  sltiu        gp, s11, -1427
                  auipc        zero, 1012846
                  sub          s11, a6, a7
                  lui          zero, 423077
                  slt          gp, s0, t2
                  slti         zero, s10, -633
                  xor          a3, tp, zero
                  sub          sp, a7, a6
                  slti         t1, tp, -109
                  nop
                  srl          s2, tp, t6
                  sub          s5, a4, s1
                  slti         a7, a1, 1335
                  add          s10, t0, s10
                  andi         tp, sp, 433
                  addi         tp, a3, -1663
                  sub          s11, t0, s2
                  xori         s11, ra, 119
                  nop
                  sll          s10, s0, s1
                  srl          s8, s2, t4
                  ori          a4, a6, -281
                  srli         s5, t4, 20
                  xor          s8, a0, s4
                  xori         s11, a6, -1860
                  srl          a2, zero, s3
                  addi         s10, a4, 988
                  add          s2, a5, a5
                  add          t6, t5, s9
                  srli         s8, a6, 9
                  xor          s3, tp, tp
                  sub          a3, s4, s8
                  sltu         s11, s0, t6
                  addi         a0, s8, -668
                  sra          s4, s3, a1
                  auipc        a5, 914154
                  sll          t0, a2, a4
                  add          s4, t0, s4
                  slti         sp, a5, -273
                  sll          t1, s7, s11
                  slt          t0, s3, a1
                  xori         a0, zero, -1461
                  slli         ra, s11, 14
                  sltiu        t5, s2, 794
                  sub          sp, s6, t0
                  xor          a6, t2, s5
                  sltiu        tp, a5, -1762
                  sll          s4, t0, s6
                  ori          s8, s1, 875
                  ori          t5, s8, -1690
                  or           a3, s4, s7
                  nop
                  sltiu        s4, a1, 1512
                  xori         s0, a1, 1923
                  srai         s11, a4, 17
                  ori          t2, a7, 29
                  nop
                  andi         s6, s11, -251
                  slti         t2, s9, -1015
                  srl          a5, t5, t6
                  srl          t6, s11, t6
                  lui          zero, 661872
                  sra          ra, sp, s2
                  ori          s7, a5, 1971
                  sra          t1, gp, a5
                  sra          tp, t2, sp
                  slti         t6, a7, 1201
                  srl          s8, a1, a4
                  sltiu        s7, s2, 1759
                  or           zero, s4, s0
                  nop
                  auipc        a3, 348249
                  addi         s8, s9, 841
                  srl          a1, s11, a1
                  slti         a7, s8, 1351
                  sll          a6, s9, t6
                  sltu         s4, s11, a6
                  sra          t6, a6, a4
                  auipc        t2, 301960
                  xori         ra, s3, 756
                  auipc        a7, 604386
                  sub          s10, s1, a7
                  ori          gp, s8, 996
                  slti         t6, t1, 345
                  xor          a7, s9, s2
                  xori         t5, a5, -936
                  srl          a6, a2, a5
                  slti         a6, t1, -1518
                  slti         s4, t0, 698
                  lui          s9, 538213
                  and          t0, s11, s7
                  sll          s0, s8, t1
                  slt          a6, s8, sp
                  ori          s0, s9, 758
                  addi         s6, s11, -234
                  ori          s0, sp, -2018
                  xori         gp, sp, -156
                  sltu         a4, sp, s4
                  xor          t0, s9, s8
                  andi         s0, s4, -656
                  nop
                  srai         a7, s5, 19
                  ori          t5, t2, 1390
                  ori          a6, a0, 1422
                  sra          s2, s11, a7
                  lui          zero, 272255
                  addi         t2, tp, -1363
                  or           gp, s2, s0
                  xori         s4, a4, -1932
                  srl          t1, t0, t1
                  slt          t5, a1, t4
                  auipc        s9, 15807
                  andi         a4, a5, 1738
                  addi         gp, s7, -658
                  add          a4, a6, a3
                  sra          s6, t3, t4
                  sra          a2, tp, t5
                  sltiu        a2, ra, -1673
                  sra          zero, t6, s5
                  or           s2, s9, t1
                  lui          a5, 742267
                  add          t5, s9, s3
                  or           a6, a7, a4
                  slli         s6, a1, 1
                  nop
                  srl          s3, a1, a0
                  xori         s7, t6, 868
                  nop
                  or           t5, s8, s2
                  or           s2, t0, s2
                  xori         s6, s2, -77
                  sub          s11, t4, t3
                  sltu         a5, s5, t6
                  srl          a0, a6, tp
                  andi         a2, a4, -1625
                  xori         s0, t2, 1368
                  add          s6, t0, t2
                  xor          a4, s0, t0
                  and          a4, a5, s3
                  add          zero, s2, t4
                  sll          s3, tp, gp
                  ori          zero, s11, 130
                  or           a6, s3, s11
                  sll          s3, s6, t1
                  sltu         tp, a5, s1
                  or           s11, s8, s1
                  andi         a0, a4, -205
                  add          s9, s1, s9
                  srai         sp, s6, 25
                  auipc        a4, 682303
                  lui          zero, 827861
                  and          a4, t2, t0
                  addi         ra, a3, -1797
                  slt          a4, t6, a1
                  srli         s0, a1, 28
                  add          s11, ra, s1
                  andi         s10, a6, 1494
                  srl          tp, a7, a0
                  srai         a7, s9, 29
                  add          t6, s0, s10
                  slli         s9, a0, 6
                  and          a3, zero, gp
                  srl          t2, t5, s9
                  xor          s4, t4, a3
                  slt          ra, zero, s8
                  sub          s3, s9, a3
                  sltiu        s8, s10, 1977
                  srai         s11, t3, 2
                  or           t5, s5, s3
                  xori         s10, s8, 75
                  and          t5, zero, s6
                  addi         gp, a4, -934
                  sll          a4, tp, t3
                  sra          ra, a3, tp
                  and          s10, s4, t0
                  lui          gp, 140811
                  addi         a1, s11, -1309
                  ori          a3, tp, -1161
                  slt          a2, s9, t6
                  ori          s5, s6, -667
                  sltu         ra, s1, s7
                  and          s8, s11, s9
                  slti         t5, s10, -311
                  sltiu        a4, s0, -1094
                  auipc        t0, 336665
                  lui          sp, 937190
                  srli         a4, t4, 6
                  add          t1, t6, s11
                  sra          t5, s0, a1
                  slti         a2, s3, -611
                  slt          a3, t3, ra
                  addi         a1, a6, 561
                  andi         s3, s4, 1990
                  xor          a2, tp, a6
                  addi         tp, a2, -926
                  xor          t2, a5, sp
                  sra          zero, a1, a0
                  auipc        gp, 335755
                  or           a4, s0, a5
                  slt          a1, a2, a7
                  xor          a4, s5, sp
                  sra          a2, s11, s7
                  add          s2, t6, t5
                  xor          s6, s2, a5
                  srli         a1, s1, 31
                  xori         s8, t5, 1346
                  sra          a6, tp, sp
                  xori         s10, t2, -492
                  slli         s6, a6, 26
                  slti         a6, t6, -1257
                  auipc        t1, 666716
                  xori         s8, s10, 1915
                  ori          a3, s6, -1734
                  ori          s3, s7, -1149
                  add          t5, sp, a5
                  andi         t1, a4, -1655
                  andi         a5, a7, 1408
                  lui          a3, 234238
                  xori         s5, s1, 1479
                  auipc        gp, 232135
                  srli         a2, a7, 16
                  slt          t6, a7, s7
                  ori          s0, a1, -1581
                  add          s4, t2, a7
                  lui          s3, 725922
                  slt          s8, zero, sp
                  add          s0, s4, s7
                  sll          s3, a6, a5
                  lui          tp, 185695
                  sub          a2, s0, s1
                  sltiu        ra, t4, 1699
                  addi         s7, s5, -694
                  srl          s5, s0, a6
                  ori          t1, t5, -1735
                  nop
                  lui          s7, 121905
                  srli         s2, s1, 13
                  sub          a4, a7, a6
                  andi         t1, s9, 204
                  sltu         s3, gp, t6
                  srai         gp, t6, 11
                  addi         t1, a5, -1499
                  andi         s3, s6, 1021
                  andi         s11, s2, -1154
                  lui          t6, 750604
                  xori         a2, s3, 495
                  srli         a6, a0, 28
                  srai         s5, s2, 19
                  lui          s10, 400312
                  auipc        s11, 90654
                  sll          s4, s9, s11
                  srl          s11, sp, t6
                  srai         a7, gp, 8
                  sub          s6, s4, a1
                  sra          tp, a6, s3
                  xor          t1, s10, t2
                  xori         a7, a3, 1385
                  addi         s4, s9, -1213
                  sll          a4, a3, s1
                  andi         gp, a6, 1599
                  srai         t6, a1, 21
                  slti         s8, t6, 460
                  sltiu        s0, s6, -1325
                  srli         s2, tp, 23
                  lui          s2, 704167
                  sub          s11, s11, ra
                  srl          t0, s2, s4
                  andi         a6, gp, 1158
                  addi         s11, s4, -1395
                  lui          a4, 808157
                  addi         sp, s11, -1699
                  addi         a7, t0, -544
                  srli         a4, s5, 19
                  addi         t6, a7, -729
                  lui          s11, 328427
                  slli         t0, s8, 29
                  slli         t6, s5, 19
                  srli         zero, s5, 14
                  sub          s11, gp, s2
                  sra          s11, a3, sp
                  sltiu        s6, s8, 403
                  auipc        t0, 287131
                  ori          t5, s10, 170
                  addi         s3, ra, -1220
                  sltiu        s3, t1, -1396
                  ori          ra, tp, -1061
                  sub          s2, t2, tp
                  sub          t2, s6, s8
                  auipc        a6, 52529
                  auipc        s9, 24802
                  slt          a2, s2, t0
                  sub          s2, s6, a4
                  auipc        a1, 309033
                  srli         s3, a0, 2
                  addi         tp, ra, 1514
                  and          s10, t2, s7
                  slti         s8, tp, -875
                  ori          a0, s5, -1654
                  xor          s11, a6, s0
                  nop
                  xor          tp, s1, a4
                  lui          s2, 598076
                  and          a6, zero, zero
                  sltiu        tp, t3, -1236
                  ori          sp, tp, 1603
                  srl          gp, a0, s11
                  srl          s0, a2, s4
                  lui          t5, 423297
                  slli         t2, s1, 25
                  srl          s5, s5, s6
                  sltu         sp, t0, a2
                  auipc        t5, 568847
                  slti         s0, t4, -170
                  slt          s0, t6, t6
                  addi         a5, t3, 1512
                  auipc        zero, 772559
                  nop
                  and          t6, a7, sp
                  or           a2, t0, s7
                  srl          s3, s2, ra
                  xor          s0, s5, zero
                  auipc        s10, 748155
                  sltiu        t0, t3, -1237
                  auipc        s4, 971394
                  sll          s11, s11, sp
                  lui          s8, 577713
                  xori         a4, a0, -201
                  srai         a4, s2, 13
                  sra          a2, a5, zero
                  andi         a1, a1, -2031
                  addi         tp, a7, 1784
                  auipc        a0, 832882
                  xor          a2, sp, zero
                  ori          zero, s3, -459
                  srl          a2, s7, s1
                  and          t1, s3, a7
                  slt          s3, s0, a3
                  srl          t0, s1, s8
                  and          a0, s2, a0
                  sub          s0, s7, a3
                  and          gp, gp, s9
                  or           sp, t0, t4
                  srl          s5, s9, s5
                  slli         zero, t3, 10
                  add          s7, s9, t2
                  slli         s4, t5, 16
                  sub          s0, t6, zero
                  sub          s6, a6, a2
                  lui          s9, 499788
                  or           a0, a1, a2
                  nop
                  or           s0, a1, s7
                  xori         s9, s7, 77
                  srai         s5, s11, 5
                  ori          s0, t1, 1487
                  ori          zero, a0, 1607
                  xor          a5, t4, t3
                  or           s10, a3, a1
                  ori          s6, a6, -304
                  addi         t1, a1, -1651
                  slli         a3, sp, 26
                  sltiu        a0, s9, 205
                  xori         t5, s4, -123
                  sltu         s10, s2, zero
                  srai         sp, zero, 3
                  nop
                  addi         tp, gp, -647
                  srai         a7, t5, 16
                  slti         s8, t5, -468
                  xor          s9, zero, t1
                  srli         zero, a6, 28
                  sltiu        s9, t1, 649
                  ori          t2, a7, -1861
                  sltu         s9, gp, s9
                  xori         tp, sp, 20
                  sltu         zero, t4, s9
                  add          gp, t1, t0
                  andi         t0, a6, 833
                  nop
                  and          a4, s3, a1
                  sltiu        s6, s10, -1774
                  slli         tp, a7, 10
                  slti         s6, t1, -1491
                  sra          t2, tp, tp
                  sltiu        a6, t6, 971
                  auipc        t0, 105953
                  srai         s6, t4, 30
                  nop
                  srl          s4, s3, s2
                  slli         t2, ra, 21
                  slt          s10, sp, ra
                  add          s3, s3, t0
                  sll          s6, s0, s3
                  slli         s2, t5, 15
                  xori         t5, t4, -1803
                  and          a4, a0, a1
                  srl          t6, s10, t0
                  auipc        a0, 324154
                  sltu         s9, t3, t1
                  sub          tp, t5, tp
                  sltu         s7, tp, s10
                  nop
                  or           sp, s9, s2
                  sub          ra, tp, s3
                  slli         s10, s5, 7
                  srai         s11, gp, 26
                  sltu         a3, s4, s2
                  srli         a4, s9, 10
                  lui          a4, 831146
                  xori         a6, s0, 1489
                  xori         t1, s10, 535
                  andi         a4, t6, -329
                  xori         a6, t4, -558
                  slli         s10, a6, 1
                  addi         ra, s8, 818
                  andi         s7, tp, -995
                  slt          t0, s6, t2
                  xori         t2, s0, -7
                  slli         t0, s8, 30
                  sra          gp, s3, sp
                  addi         zero, s3, 1247
                  sub          s10, s0, s0
                  add          ra, s4, s5
                  slli         s11, t0, 13
                  or           a4, s9, t2
                  sltiu        gp, s5, 1071
                  add          s0, a2, a5
                  slli         a7, a3, 3
                  sub          t6, gp, s4
                  add          ra, s3, a0
                  sll          t5, s10, t1
                  lui          a4, 62786
                  lui          a5, 717290
                  add          a1, s1, gp
                  srli         t0, a5, 16
                  or           a3, a6, t1
                  sub          t2, s5, ra
                  sltu         a1, s2, s1
                  xori         s5, tp, 1647
                  or           s0, a0, s5
                  sra          a2, s8, s5
                  sltiu        s2, t6, 1795
                  xor          t1, a6, a5
                  sra          a5, s5, s8
                  and          s3, a6, s8
                  sra          s11, s9, tp
                  xori         a7, ra, 1743
                  xor          s5, s7, a2
                  or           t6, a0, t6
                  lui          a5, 156663
                  sltiu        t6, s9, -1807
                  xori         a2, t6, 1861
                  slti         s7, gp, 51
                  sltiu        s5, s2, 821
                  and          s7, s4, s1
                  slti         s4, tp, -1021
                  sll          a2, ra, t6
                  srl          a5, t6, a1
                  sltiu        s10, a4, -2033
                  slli         a2, gp, 12
                  auipc        s4, 928368
                  or           sp, ra, s7
                  slli         sp, a7, 20
                  xori         s8, a6, 1596
                  and          s0, t5, s4
                  xor          s7, s9, s3
                  srai         s8, s2, 8
                  lui          a7, 550613
                  slli         a4, a2, 18
                  slli         sp, s9, 25
                  sltu         s3, t2, s5
                  srl          sp, s10, s2
                  slt          a4, s0, t3
                  sra          a2, s8, t4
                  lui          a7, 517748
                  auipc        s0, 160118
                  sra          t6, s0, t2
                  slti         s5, ra, 1318
                  srai         t5, s9, 27
                  sll          s9, a5, t2
                  lui          a4, 719027
                  xor          a0, a3, s9
                  srli         t5, s7, 1
                  auipc        t2, 670019
                  sltiu        zero, a1, 572
                  addi         s0, t3, -428
                  xori         s9, s1, 2004
                  sll          gp, a7, s11
                  sll          ra, s8, a0
                  auipc        t6, 635282
                  xori         s11, t4, 1087
                  lui          s0, 995743
                  andi         ra, a3, 534
                  and          a1, s7, t5
                  xor          zero, ra, s5
                  sra          s0, a7, s7
                  auipc        a5, 45728
                  srl          s6, zero, s0
                  slli         s6, t5, 19
                  srl          t2, t6, a0
                  or           a4, tp, s7
                  slti         s4, ra, -1796
                  ori          s9, s7, -222
                  slt          t0, s1, t1
                  nop
                  slti         s9, zero, 233
                  xor          a7, a0, a1
                  lui          a2, 815251
                  sltiu        zero, s5, 1450
                  srai         ra, s4, 5
                  add          t1, t4, a7
                  slti         s8, t5, 1137
                  xori         s3, a0, 6
                  sub          s6, s3, zero
                  slt          s3, t2, a7
                  xori         s8, tp, 644
                  xor          s0, t5, a7
                  add          s6, t3, s4
                  auipc        s10, 916504
                  srli         a4, a1, 22
                  lui          t1, 298695
                  srli         t5, zero, 20
                  and          s5, s6, a3
                  srai         s0, s5, 18
                  srli         s4, s1, 26
                  lui          s9, 531257
                  slt          t0, t5, gp
                  ori          ra, s4, -1706
                  sll          s11, ra, a1
                  srli         s7, t4, 24
                  auipc        s5, 764328
                  addi         t6, a7, -1858
                  sub          a6, t5, a0
                  slti         s9, s11, -1679
                  add          a0, a6, s5
                  sub          s2, zero, s8
                  or           t2, t6, s3
                  sll          gp, sp, a7
                  lui          zero, 547841
                  addi         a2, s3, 654
                  sll          a3, sp, a2
                  ori          zero, t0, 1296
                  srl          a3, s6, gp
                  srl          a6, a2, t4
                  sra          t6, t2, s9
                  sra          ra, s2, a4
                  lui          s10, 461968
                  srai         a1, a7, 10
                  slt          sp, s4, a7
                  nop
                  and          s8, t2, t6
                  addi         t6, s7, -1366
                  srl          a6, s2, zero
                  and          s2, s3, zero
                  srai         t1, zero, 23
                  or           s11, s11, t2
                  or           t5, sp, s9
                  nop
                  sltu         s11, sp, s11
                  sra          s7, a4, s1
                  srai         s6, a6, 31
                  andi         s9, t2, -875
                  slli         t1, s8, 0
                  sra          s11, sp, s4
                  ori          s4, a4, -1801
                  slt          s7, s7, t4
                  sltu         t6, gp, s0
                  sra          a7, a6, zero
                  sub          a4, tp, s10
                  xor          s6, s2, t0
                  sra          s0, t5, s0
                  or           sp, t4, s8
                  addi         s2, gp, 1214
                  slt          s2, s1, gp
                  sll          s6, s10, s1
                  lui          a0, 746027
                  srai         s4, t4, 30
                  lui          gp, 706930
                  andi         s6, s10, 520
                  auipc        s10, 376207
                  and          a3, s4, s0
                  srai         s10, gp, 29
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           ra, 0x80000000
                  li           s5, 0xffffffff
                  li           s10, 0x80000000
                  li           s4, 0x0
                  li           s7, 0x4ae29e58
                  li           a2, 0x0
                  li           a5, 0x0
                  li           s0, 0x80000000
                  li           s3, 0x80000000
                  lui          s5, 910754
                  add          a4, a2, ra
                  nop
                  add          s7, ra, s5
                  lui          ra, 303045
                  lui          s5, 285173
                  lui          s3, 613064
                  sub          ra, s3, s7
                  nop
                  lui          a2, 1019494
                  lui          s7, 344355
                  sub          s7, s7, s4
                  addi         s0, s7, -1557
                  nop
                  lui          s10, 159929
                  add          ra, a2, a2
                  nop
                  addi         ra, s10, 132
                  sub          a2, s0, a4
                  auipc        s3, 579903
                  add          s10, s7, s3
                  lui          a5, 192121
                  addi         a5, a4, 914
                  auipc        s3, 793874
                  nop
                  nop
                  nop
                  add          s5, s3, s0 #end riscv_int_numeric_corner_stream_14
                  slli         s5, sp, 23
                  slti         s2, s4, 1655
                  slt          s0, t4, s7
                  srli         zero, s1, 6
                  xor          s11, a1, a3
                  slti         zero, t3, -1842
                  srai         t0, s10, 18
                  xori         s8, ra, 200
                  ori          t2, s7, -383
                  and          a0, zero, gp
                  ori          s3, a7, -769
                  slt          gp, a6, s4
                  srli         t5, s4, 23
                  add          zero, s11, t2
                  sltiu        t1, a7, -1567
                  slli         ra, s6, 8
                  auipc        a2, 264888
                  srl          s5, s1, t0
                  nop
                  lui          t2, 1013270
                  and          a2, t2, s11
                  sltu         t0, sp, t4
                  sltiu        s2, s3, -1642
                  andi         a4, t4, 604
                  sll          s11, a6, s3
                  sub          s9, t1, a7
                  or           t0, s5, s1
                  nop
                  ori          gp, s7, -722
                  sra          zero, s5, s0
                  srli         s2, a2, 20
                  auipc        s6, 810614
                  auipc        sp, 319683
                  andi         s3, s3, 1162
                  sltu         t0, a4, tp
                  or           s8, s8, a2
                  xori         t1, t3, -762
                  xori         s2, t4, -1916
                  sll          t2, s4, t5
                  or           s11, a2, a1
                  srai         s8, a5, 25
                  srl          a1, t3, t4
                  auipc        s8, 671231
                  xori         zero, a3, 500
                  ori          a4, a1, -1752
                  and          s7, s1, s5
                  add          s10, s2, t1
                  nop
                  nop
                  add          s11, t2, s2
                  xori         s8, s11, -1600
                  sub          t5, t6, s2
                  srli         a2, a0, 0
                  sltu         s3, a4, s1
                  sub          s0, s9, a2
                  xor          t2, s7, s9
                  and          s7, s9, s7
                  sub          s8, s9, zero
                  sltiu        s8, t4, 661
                  slti         s10, t2, 1689
                  or           a5, s9, s2
                  addi         t5, s4, 1609
                  slli         s4, a3, 10
                  sltu         a4, t3, a6
                  sll          sp, tp, a7
                  sltu         tp, a5, s9
                  auipc        t5, 203818
                  xori         s7, t2, 1697
                  add          a2, t5, a1
                  sltu         a7, t5, a2
                  addi         s0, a7, 212
                  sltu         a5, t4, t3
                  add          t5, a3, s10
                  slti         t5, s5, -1883
                  xor          zero, a2, a0
                  sub          t1, a4, t0
                  sltiu        s0, s4, -1237
                  srli         a6, t2, 20
                  srl          a5, s5, a1
                  nop
                  add          t2, t1, a0
                  or           s11, s11, a7
                  sll          a3, a3, s4
                  slt          a6, t1, a3
                  sub          s7, a2, t3
                  sltiu        s10, a7, -1384
                  srl          ra, s10, t1
                  or           s2, s0, a4
                  srai         t0, t4, 30
                  srl          zero, s8, s3
                  xori         a0, t6, -212
                  and          s4, t3, s3
                  and          ra, tp, s7
                  lui          s10, 477362
                  add          s0, a5, a5
                  add          a4, tp, t2
                  sub          s2, ra, gp
                  sra          s6, s10, a1
                  auipc        s2, 204460
                  sll          a5, s3, s11
                  andi         s10, s4, 1329
                  ori          tp, t2, -318
                  srl          s6, t1, t3
                  lui          a4, 489063
                  sub          s10, s5, zero
                  sltiu        a5, t1, 1267
                  andi         a5, a6, 324
                  add          t6, a4, a4
                  add          s0, s9, t3
                  srli         s8, s6, 25
                  xori         a4, s3, -588
                  auipc        tp, 346127
                  sltu         s6, zero, s1
                  xor          a6, a1, s5
                  sub          a0, s1, a3
                  auipc        a2, 774913
                  xor          a3, t5, t2
                  srli         a3, s11, 11
                  srli         t6, tp, 12
                  andi         s0, t5, -1802
                  auipc        zero, 785635
                  sra          sp, s0, a0
                  srai         a0, a2, 5
                  slti         s9, tp, 1760
                  srl          s8, sp, t4
                  add          a5, a4, a6
                  srli         s7, s0, 11
                  xori         a3, s8, -1492
                  srai         t6, a5, 1
                  srai         s2, t2, 2
                  srl          tp, s11, s9
                  sll          tp, a4, sp
                  ori          a0, s0, -408
                  sra          t1, t5, t4
                  andi         a3, s0, -599
                  sra          s3, s3, t3
                  and          sp, sp, t6
                  slt          s4, t3, s9
                  nop
                  slli         t0, s9, 17
                  ori          s3, zero, 2047
                  add          a3, sp, t0
                  slli         s9, a3, 15
                  sltiu        s6, s5, -1225
                  xor          s0, zero, s8
                  srai         a5, a6, 7
                  slti         s4, s2, -1889
                  slti         s2, a3, 1286
                  nop
                  slti         s9, a3, -891
                  xori         s8, a7, 834
                  andi         s2, a5, -699
                  or           s0, t3, t0
                  auipc        s6, 497127
                  sltu         a4, s1, a6
                  lui          a3, 28167
                  sll          a6, gp, a6
                  sltu         a3, t1, t0
                  slli         s7, t0, 24
                  sltiu        a5, s6, -593
                  or           sp, t4, t1
                  slt          t6, t3, s2
                  lui          s3, 563010
                  sltu         s2, s5, t2
                  slli         s5, s9, 11
                  sltu         zero, s8, t1
                  xori         gp, t2, -1278
                  auipc        s10, 1025579
                  slli         zero, s11, 18
                  or           s3, a3, a1
                  srai         ra, t6, 15
                  sll          t1, a3, s0
                  andi         s5, a1, 1212
                  or           tp, s10, a6
                  sltu         s4, ra, a7
                  and          s2, a0, s10
                  sra          a0, s7, t1
                  srai         a2, a4, 29
                  auipc        a3, 788384
                  ori          s9, s3, 1776
                  srl          sp, t0, sp
                  sltu         zero, t1, t1
                  xori         s3, zero, 765
                  sltu         s4, s6, s4
                  xor          zero, a3, s3
                  xori         a1, s6, 800
                  slli         t1, ra, 11
                  srai         t0, a2, 8
                  sltiu        a3, t5, 1759
                  srli         s3, tp, 11
                  srli         s3, a0, 4
                  auipc        s6, 864653
                  sub          s0, t1, t3
                  or           a0, a7, t5
                  and          s3, gp, a4
                  slt          s10, a5, a5
                  sub          s9, t1, a7
                  ori          s6, ra, -621
                  nop
                  or           s8, a0, t0
                  srl          s3, a4, t6
                  sltu         s10, s10, s3
                  sll          t1, s0, t1
                  xori         t6, t6, -1891
                  slt          a5, t5, ra
                  sra          sp, s3, a3
                  sub          s2, t2, a3
                  or           s8, sp, a4
                  srai         gp, t2, 25
                  srai         zero, gp, 4
                  lui          a5, 448371
                  lui          t6, 902611
                  sub          t0, s3, a0
                  srli         a6, a0, 17
                  xor          t6, a1, s11
                  slt          s0, s1, s9
                  andi         a0, t2, 922
                  auipc        a2, 958563
                  sltu         zero, s10, s10
                  slli         s7, s5, 29
                  xor          a0, s6, s8
                  slt          t2, s7, sp
                  srli         a4, ra, 13
                  sll          s8, t3, t0
                  ori          s6, a0, 669
                  srai         a6, t0, 7
                  sltiu        a4, s3, -1542
                  ori          a0, s11, 1385
                  auipc        s3, 147772
                  srai         s0, a3, 31
                  srli         s10, sp, 8
                  srai         a4, s2, 21
                  addi         a2, s8, -1137
                  nop
                  xor          gp, gp, s0
                  slti         s3, t1, 1733
                  lui          sp, 896384
                  xor          s11, t6, s9
                  sltu         s3, sp, a2
                  ori          s6, a0, -1773
                  add          tp, a4, ra
                  xor          a4, s5, s4
                  or           s7, t6, t3
                  andi         s6, s11, 1542
                  sltiu        s2, s5, 1620
                  li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           s2, 0x0
                  li           s0, 0x0
                  li           s4, 0xffffffff
                  li           a4, 0x4f0746ea
                  li           t6, 0x80000000
                  li           s9, 0xffffffff
                  li           a7, 0xb477e26e
                  li           s10, 0x0
                  li           a1, 0x80000000
                  add          a4, a7, s9
                  sub          s10, t1, s9
                  nop
                  add          s9, a1, a7
                  addi         a7, a7, 1979
                  addi         t6, a7, -529
                  nop
                  add          t6, t1, a7
                  sub          a1, t6, s4
                  auipc        s4, 156821
                  lui          a1, 310684
                  nop
                  nop
                  nop
                  lui          t6, 123180 #end riscv_int_numeric_corner_stream_2
                  add          s6, t3, a0
                  ori          s0, a3, -190
                  andi         s7, a4, -321
                  add          s3, s10, s3
                  and          s8, s1, zero
                  ori          a0, gp, -20
                  or           a1, t2, a1
                  slti         t6, t6, -1380
                  sll          a7, s8, s11
                  sll          t0, s4, a0
                  slt          sp, a7, a7
                  ori          s7, s0, 870
                  slli         s6, a7, 15
                  auipc        tp, 818328
                  lui          gp, 131661
                  and          t1, tp, a6
                  srli         a0, tp, 13
                  add          ra, sp, t4
                  lui          sp, 904252
                  srai         s2, s4, 13
                  sltiu        a5, a7, 807
                  sll          a0, s6, t3
                  add          s3, s8, a4
                  sra          t6, s7, t2
                  lui          s11, 158866
                  srai         sp, a0, 18
                  srli         s4, t3, 2
                  slt          s7, s4, a5
                  sra          s11, s3, t2
                  srai         sp, s0, 17
                  lui          a4, 3518
                  srl          a3, t3, s2
                  and          s2, s10, a7
                  slti         a3, t2, -947
                  slti         a0, s6, -1404
                  xor          a5, s11, s8
                  add          a5, ra, a0
                  lui          a6, 735238
                  xori         sp, t6, 799
                  lui          t0, 1019270
                  sub          s5, s10, s7
                  srai         s0, t5, 27
                  and          a0, s0, ra
                  and          a2, s3, t4
                  srl          s7, s5, s8
                  sll          a2, s6, s7
                  and          gp, s10, t3
                  andi         t0, s11, -960
                  srli         s3, t1, 21
                  add          a6, t0, a1
                  sll          t0, s11, s0
                  sub          s0, s3, tp
                  ori          a1, t3, 1419
                  sltu         ra, a4, s9
                  or           a6, s1, s1
                  xor          s7, a0, sp
                  ori          s7, s0, 271
                  and          a2, sp, sp
                  sub          a5, t4, s5
                  or           s0, a3, gp
                  add          a5, sp, s11
                  slli         a4, a1, 30
                  xor          t5, s7, s5
                  srl          a5, sp, t4
                  addi         s7, a4, 834
                  srli         s8, t4, 28
                  addi         s4, tp, -1346
                  andi         s4, a1, -1189
                  slt          a6, s3, t2
                  sltu         sp, t6, t0
                  add          ra, sp, t2
                  srli         a3, s11, 9
                  sra          s4, t5, a3
                  sub          s7, t0, s8
                  auipc        ra, 966433
                  auipc        t0, 947312
                  srai         gp, a4, 3
                  srl          s9, t4, a2
                  add          a0, s1, s2
                  auipc        a0, 471150
                  slli         s4, a3, 11
                  xor          a3, a6, s9
                  and          ra, zero, a6
                  ori          s5, t0, -1407
                  srli         a0, a0, 14
                  nop
                  srl          ra, s5, t6
                  sll          a1, s10, s0
                  add          gp, s3, a2
                  auipc        s7, 37329
                  sltiu        t0, t6, -1750
                  addi         s9, a4, 1698
                  srai         t1, s3, 25
                  auipc        a1, 441453
                  slt          s9, s11, s11
                  lui          t5, 202246
                  xori         t0, t4, -774
                  sltu         a3, s8, a4
                  sra          gp, s10, s3
                  ori          s2, s3, 281
                  sra          s3, a7, s10
                  auipc        s2, 241224
                  ori          t1, t6, 81
                  sll          a0, zero, a1
                  slli         t5, a7, 30
                  sltiu        tp, s3, 393
                  sltu         s4, tp, s10
                  add          s9, a6, zero
                  sra          s9, s3, a6
                  xor          a2, a3, t5
                  and          a3, s8, sp
                  xor          ra, a2, t1
                  auipc        a0, 116438
                  sll          zero, a6, s2
                  sub          a1, s10, a4
                  slti         a7, s3, 412
                  slli         s3, a2, 20
                  auipc        zero, 351093
                  slt          s0, s10, gp
                  and          t6, a5, a2
                  nop
                  srli         s0, tp, 19
                  sll          s7, a1, a4
                  addi         a0, s8, 1963
                  and          a7, a7, tp
                  srli         ra, t0, 20
                  xori         s10, a7, 745
                  slti         s0, t5, -1603
                  sltu         t1, gp, s2
                  xori         t5, t1, 1214
                  ori          s9, t0, 1515
                  andi         t2, zero, 1914
                  sltu         s9, s8, t4
                  nop
                  addi         t5, s2, -265
                  or           a0, t5, ra
                  sra          s7, t4, sp
                  sub          t0, a2, a7
                  addi         t0, sp, 768
                  xori         s4, a5, 1760
                  sra          s0, zero, s3
                  or           ra, t4, s1
                  srai         s2, a4, 1
                  add          a2, a6, t3
                  addi         s2, s5, -1996
                  or           s5, tp, s3
                  slt          a2, zero, s11
                  and          a4, a0, a6
                  andi         tp, t4, 843
                  slti         t1, a4, -1898
                  sltiu        a5, a2, -485
                  sra          s6, s6, t0
                  andi         t2, t3, 628
                  auipc        t6, 598857
                  srli         gp, t3, 2
                  addi         a3, s9, 812
                  slli         a0, a2, 7
                  lui          t6, 488813
                  sltu         t0, a7, s6
                  sub          s0, a5, s7
                  nop
                  sltiu        sp, s7, 1208
                  sltu         a1, s2, gp
                  slti         s10, a3, -1693
                  sltiu        t6, a1, 1279
                  addi         a2, s6, 1051
                  srli         zero, a2, 30
                  slli         s2, t3, 9
                  sltiu        t6, s7, 1558
                  add          a7, s0, s6
                  sltu         a0, gp, a3
                  lui          gp, 664859
                  sra          a2, t6, a1
                  sra          t6, a0, s5
                  slli         s9, ra, 29
                  slti         s6, s0, 642
                  srai         s11, t2, 9
                  lui          t6, 640035
                  slt          ra, a6, t0
                  or           t1, t1, a7
                  sltu         s8, t6, a4
                  auipc        s4, 356174
                  lui          t0, 924001
                  xori         s4, s7, 510
                  sra          tp, a3, s0
                  xori         s5, t3, 1839
                  sll          a2, s3, s11
                  lui          a7, 393870
                  sub          tp, s4, a3
                  srli         a6, a5, 29
                  slli         a0, a0, 20
                  sltiu        tp, t1, 782
                  srl          a5, ra, a2
                  nop
                  xori         a3, t0, -1818
                  or           t5, t5, s5
                  or           s10, sp, t1
                  slti         s2, a7, -572
                  xor          s4, a4, t1
                  ori          a3, s0, 223
                  srai         gp, s10, 10
                  srai         a2, t6, 18
                  nop
                  sltiu        a7, s0, 1263
                  or           s9, ra, ra
                  add          s0, s4, s2
                  auipc        s11, 778618
                  andi         s5, s2, 1739
                  slli         a2, a6, 19
                  srli         s11, t5, 30
                  sltiu        ra, t5, -759
                  slti         zero, t5, 888
                  srl          s5, s2, a0
                  andi         s8, a5, -95
                  sltu         t6, s7, t6
                  auipc        a4, 139654
                  slti         t2, s5, -906
                  nop
                  slti         tp, gp, -408
                  srli         t6, s9, 15
                  or           zero, a0, a3
                  ori          t2, s10, -1140
                  slti         s11, a2, 2035
                  sub          s3, t4, a0
                  xor          s8, s9, s9
                  xori         a2, a5, 1228
                  addi         s2, a6, -683
                  xor          sp, s11, t0
                  and          t6, ra, tp
                  xor          tp, a4, tp
                  srai         a7, t2, 10
                  slt          zero, s10, s8
                  xor          tp, s8, s10
                  slti         t2, s3, -1236
                  sltu         s0, s9, tp
                  and          s11, t3, s0
                  slli         a3, ra, 14
                  ori          s5, a3, -546
                  xori         s2, s1, 1328
                  addi         s3, s9, 892
                  srl          s9, s2, s3
                  slli         tp, t0, 1
                  or           zero, s5, s7
                  lui          a7, 626373
                  lui          s10, 85019
                  sra          sp, t5, t2
                  srai         s7, t5, 23
                  slt          a3, t4, s8
                  or           s5, a7, t6
                  xori         sp, t4, 288
                  addi         s3, tp, -261
                  sll          a7, s8, t4
                  auipc        gp, 422823
                  slti         a5, a2, -1629
                  lui          t6, 307164
                  slli         s3, t6, 9
                  addi         a2, s0, -33
                  sub          ra, s4, t0
                  srl          a5, s11, s4
                  nop
                  or           s11, s1, ra
                  xor          a5, s5, s8
                  addi         s6, a7, 2009
                  and          a5, s10, a7
                  and          a6, t2, a2
                  nop
                  ori          s6, tp, -190
                  xor          t5, t0, s6
                  slti         s11, s9, -1074
                  srli         a3, ra, 4
                  xori         s2, s2, -81
                  sltu         a2, a5, t5
                  sub          zero, a2, gp
                  ori          a7, a5, 397
                  sltu         sp, a7, s6
                  sltiu        a7, zero, -2017
                  addi         s4, t3, 289
                  add          a5, a2, a5
                  add          t5, s0, t1
                  slli         a6, a6, 30
                  srli         s4, s7, 21
                  and          s8, t0, s2
                  andi         s2, s9, 518
                  or           s9, ra, s4
                  lui          s7, 751224
                  sltu         tp, s3, t0
                  srli         a3, ra, 15
                  srai         s6, a2, 26
                  xori         a1, t5, 841
                  slli         t1, s3, 18
                  sll          a3, a1, s8
                  ori          a2, gp, -1723
                  add          a1, s5, t0
                  andi         zero, s3, -1780
                  slt          t1, gp, a7
                  srai         s8, a5, 24
                  xor          tp, t6, a7
                  srai         s7, s9, 15
                  srl          s10, a7, a1
                  slt          s11, s7, t6
                  ori          t5, a1, 391
                  addi         ra, s0, -1160
                  lui          a3, 377885
                  andi         s7, t5, -410
                  addi         s8, s10, 1143
                  lui          t5, 985221
                  xori         t6, sp, 1910
                  sll          gp, s1, s5
                  slli         t5, a0, 5
                  sltu         a6, t6, a0
                  srl          s10, ra, t5
                  sltu         a3, s9, s11
                  ori          a0, a2, 1763
                  srli         t5, a5, 15
                  srli         t1, s1, 18
                  xor          a6, s0, zero
                  add          a2, a2, gp
                  and          a7, a6, t5
                  add          a5, a5, tp
                  ori          a6, a0, 416
                  srai         t6, a4, 2
                  srli         t0, a5, 30
                  xor          a0, a0, s6
                  sltu         s3, s2, a4
                  srai         s6, s6, 13
                  srl          s2, s8, t0
                  nop
                  or           t6, a6, s8
                  and          gp, tp, ra
                  xor          s6, a2, t6
                  xor          s3, a5, sp
                  ori          a0, a7, -940
                  lui          a6, 503402
                  andi         s4, s2, 1987
                  slt          s9, a0, a5
                  xori         a2, tp, -1486
                  srli         s10, s11, 18
                  slt          s9, a1, zero
                  srai         s2, s0, 12
                  nop
                  xori         a3, s5, -1914
                  andi         a6, s2, -1979
                  srli         zero, a0, 9
                  ori          a3, s11, -1368
                  srli         s5, s3, 21
                  slt          s9, a5, s11
                  sub          s9, s4, a4
                  sra          t1, s5, s6
                  srai         t0, a0, 4
                  srl          gp, ra, s7
                  sll          gp, s1, s8
                  srai         s2, s4, 0
                  nop
                  srai         a2, s10, 20
                  slli         t1, t1, 12
                  sltu         s10, gp, t6
                  slli         t0, s1, 3
                  sltiu        t6, a4, -1514
                  auipc        a1, 942621
                  sub          s7, ra, s10
                  srli         sp, a4, 3
                  srl          s4, sp, s8
                  lui          t5, 115647
                  srai         a1, s8, 2
                  srl          a5, ra, s7
                  srai         a5, t0, 1
                  sltu         a6, s1, gp
                  slti         s4, s0, -1486
                  xor          a7, a7, t2
                  sub          t2, s5, a7
                  sltu         s9, sp, a0
                  sll          t5, t4, s10
                  ori          t1, s8, 766
                  sltu         s9, s2, s8
                  nop
                  srli         a0, a5, 24
                  slti         ra, t5, 1069
                  ori          t0, s8, -737
                  lui          t6, 629008
                  sub          s8, sp, t0
                  srl          a5, s6, a5
                  and          zero, ra, s1
                  addi         a4, s1, 1737
                  sltu         sp, s5, a1
                  sltu         ra, t5, s4
                  addi         s2, a3, 1720
                  srl          s3, s9, s4
                  slli         gp, s10, 25
                  addi         a3, s11, -1110
                  lui          s4, 857485
                  slti         tp, t3, -53
                  slti         a7, s2, 1527
                  sra          a5, s0, ra
                  or           s7, gp, a6
                  nop
                  or           zero, ra, s11
                  slli         s9, s7, 2
                  sltu         s4, gp, a7
                  xor          t5, t1, a5
                  and          s10, tp, tp
                  sltiu        s8, a0, -1046
                  sra          s10, a7, s0
                  sltiu        tp, s10, 376
                  slli         s2, gp, 16
                  srl          gp, a4, t2
                  xori         a6, a3, 1834
                  srl          s6, a3, t5
                  sll          s9, a6, s7
                  sll          s7, zero, a3
                  auipc        a3, 966091
                  sltu         t1, t6, t1
                  slti         sp, t5, -1493
                  sll          s9, a2, a4
                  ori          s10, t4, -1440
                  ori          s3, t2, -732
                  xori         t6, a6, 1915
                  sra          a7, zero, t2
                  add          a0, tp, s11
                  sra          s8, s3, sp
                  slt          t2, t0, a1
                  addi         s7, a4, 13
                  ori          a3, s2, -1376
                  ori          tp, ra, -421
                  nop
                  ori          t1, t5, 1338
                  sub          a3, s7, a0
                  andi         a5, a5, -1305
                  addi         ra, s1, 313
                  auipc        s10, 822785
                  xori         t0, s11, 762
                  xori         a4, s1, -43
                  andi         s5, zero, 853
                  xori         zero, a3, -1854
                  nop
                  xor          t0, s9, a0
                  and          a4, s8, a4
                  nop
                  sltu         s9, a1, s9
                  slli         t1, s5, 16
                  sll          a3, s10, s11
                  lui          tp, 231477
                  auipc        a4, 162834
                  auipc        t6, 329582
                  andi         gp, a7, -1905
                  nop
                  srli         s6, s7, 11
                  and          s9, zero, t2
                  sll          t0, t3, t6
                  andi         gp, t6, 932
                  lui          gp, 756237
                  sltu         s2, t1, s6
                  sltiu        a1, t6, -238
                  or           a2, a7, t0
                  add          s4, gp, s7
                  or           a3, s2, t3
                  andi         ra, s1, -36
                  slt          s4, s5, s8
                  sra          gp, s0, s8
                  and          a2, t2, a3
                  add          t6, sp, t6
                  slt          a0, a7, s2
                  sra          a0, s9, s3
                  nop
                  or           t6, zero, t1
                  srli         t1, t0, 23
                  auipc        t2, 46381
                  auipc        ra, 669218
                  ori          s2, s5, -650
                  ori          zero, t3, 541
                  auipc        gp, 495958
                  ori          sp, s10, -905
                  nop
                  xori         a3, sp, -607
                  andi         s6, s7, -1346
                  xori         s5, s10, -1081
                  srli         a5, s2, 9
                  sll          t1, t3, a6
                  sra          a2, s2, s9
                  sub          s9, t4, t3
                  lui          a1, 481589
                  srl          s5, a1, s5
                  slli         a1, a0, 13
                  addi         s7, s2, -1594
                  sra          zero, zero, a0
                  slli         s9, s10, 11
                  srl          s3, a1, t4
                  xori         s10, gp, -1657
                  lui          s3, 534898
                  slli         s11, tp, 24
                  andi         s11, a2, 1190
                  sll          t2, s7, s3
                  xor          s11, sp, s11
                  and          sp, s4, t6
                  lui          a7, 935764
                  slli         tp, t5, 31
                  andi         a5, a0, -1047
                  sub          s11, t2, ra
                  auipc        a0, 231782
                  sltiu        sp, s4, -1595
                  srai         t5, tp, 31
                  slt          a0, t2, tp
                  srai         t2, s11, 7
                  nop
                  sub          s11, s3, t3
                  sra          s4, sp, s4
                  slt          t1, zero, t2
                  add          a2, a1, s9
                  slli         t5, s3, 29
                  slli         s6, t0, 17
                  sltu         a4, t2, a5
                  auipc        tp, 759147
                  addi         tp, t1, 1942
                  slti         s9, s10, -1142
                  sltiu        a7, s4, 1463
                  slli         a2, s1, 6
                  srli         t5, s2, 18
                  or           s9, s0, s10
                  addi         t5, s1, -519
                  sltiu        s8, s10, 1771
                  and          a6, sp, s2
                  lui          s11, 962294
                  sub          s11, ra, a0
                  add          s6, tp, s6
                  sra          tp, s11, a5
                  sra          s2, s4, gp
                  srli         a0, a3, 10
                  xori         gp, zero, -249
                  xori         s8, zero, -119
                  xor          s6, a6, t0
                  srai         a7, s1, 1
                  srai         a0, zero, 13
                  srli         s4, a5, 9
                  sltu         s7, s4, a4
                  srl          s11, t2, zero
                  sll          s10, gp, t1
                  sltiu        a7, t4, -1594
                  lui          sp, 1032264
                  sltu         t2, t6, t6
                  slt          t2, s9, t1
                  slt          t0, s5, a2
                  ori          a2, t2, 448
                  sltiu        a7, s11, 402
                  xori         ra, t2, 0
                  addi         ra, s5, 829
                  sll          s4, a5, ra
                  sub          s4, s8, a6
                  or           t5, s6, a1
                  slli         s9, a7, 19
                  andi         s4, ra, 1838
                  or           a0, s3, t2
                  or           a7, t0, a7
                  slli         s9, a5, 12
                  or           s2, s6, zero
                  or           a4, a2, t5
                  srl          a6, a1, t6
                  slli         t2, s4, 7
                  sltiu        a0, a4, -1882
                  ori          a3, a6, -720
                  sltu         s8, s4, a0
                  srai         gp, s8, 13
                  srl          a1, t6, s11
                  slli         t6, s11, 1
                  ori          sp, s3, -909
                  slt          t1, tp, a5
                  sub          s5, t0, s5
                  srl          s7, s1, s5
                  nop
                  nop
                  srl          s3, s4, s10
                  srli         gp, sp, 5
                  srai         s10, t3, 12
                  and          a5, t4, a6
                  slli         s8, s0, 26
                  sub          t6, t4, s7
                  or           t0, s8, s8
                  slti         s6, s1, -1916
                  sub          s4, s0, a1
                  xori         zero, s9, 834
                  add          s8, s5, s2
                  srai         a0, t2, 21
                  and          s7, a3, s1
                  nop
                  srai         s11, s0, 10
                  ori          s2, sp, 188
                  slli         a3, t3, 14
                  nop
                  auipc        a1, 779751
                  srai         t6, t0, 24
                  sll          a6, a4, zero
                  srl          sp, sp, s9
                  lui          s7, 526870
                  xor          tp, t3, ra
                  srli         s8, a2, 14
                  add          ra, s4, s10
                  srl          s10, t1, a3
                  or           s5, t1, s2
                  slti         s5, ra, -1142
                  sltu         s8, zero, a1
                  sll          ra, s10, a4
                  slli         s9, t5, 2
                  or           a1, s8, s10
                  sltiu        tp, gp, 569
                  sltu         s0, a4, t3
                  slti         s4, s10, 109
                  and          tp, a5, t0
                  and          s2, a2, a4
                  xor          t1, tp, s7
                  sll          t1, t0, t0
                  add          tp, s5, t3
                  and          s8, s1, s1
                  sll          a5, gp, t4
                  xori         s11, a5, 1285
                  or           s6, s4, s4
                  slti         s8, s7, -334
                  sra          a2, s3, a6
                  and          t6, s6, sp
                  and          s4, tp, s1
                  auipc        s9, 351534
                  ori          a7, sp, 152
                  srl          a0, a1, a3
                  srli         s11, a1, 31
                  xori         a2, s10, 183
                  add          s9, s1, s3
                  slti         tp, s0, -887
                  or           a5, t5, sp
                  add          tp, t6, ra
                  xor          t2, a5, a4
                  lui          s5, 584514
                  sll          s2, s9, a0
                  xori         sp, s3, 727
                  auipc        t1, 755334
                  add          s4, s8, a4
                  srl          s9, t5, a2
                  sub          s0, a4, t5
                  srl          t0, s0, a5
                  xor          s4, s7, s2
                  and          a5, a7, a5
                  sltiu        sp, t2, -477
                  add          s4, a6, s3
                  sltu         a6, t3, t0
                  and          a2, t4, s3
                  auipc        s9, 190617
                  or           s0, s3, s3
                  srli         tp, t4, 21
                  and          s9, s4, zero
                  sll          sp, s11, s10
                  ori          t2, a4, 845
                  sra          s2, sp, a3
                  nop
                  sll          s7, t1, s2
                  add          s7, s8, s7
                  sltiu        sp, ra, 1385
                  sub          s3, s8, s2
                  auipc        s2, 1002501
                  andi         a4, a4, 815
                  slli         s11, tp, 8
                  sra          a7, s3, s2
                  sll          a4, t1, a1
                  auipc        a3, 48259
                  ori          gp, t2, 974
                  sub          a0, s8, s10
                  addi         s4, t2, -1699
                  andi         a3, gp, 70
                  srai         s4, a0, 23
                  sltu         s2, t1, t6
                  sltiu        a3, s9, -1602
                  auipc        s5, 318001
                  slli         s9, a2, 27
                  sub          t6, s7, t4
                  xor          s3, a5, a4
                  ori          a0, s9, -1454
                  sll          a3, tp, t6
                  srli         s11, a2, 22
                  slti         s10, t6, -408
                  addi         a4, s11, -56
                  srli         t1, s10, 14
                  sra          gp, t6, a6
                  sub          s11, a4, s9
                  auipc        a7, 522180
                  sub          a1, s1, t2
                  sra          tp, a0, a0
                  addi         s9, t5, 1030
                  xor          s7, sp, s3
                  or           a1, s10, zero
                  sub          a6, zero, ra
                  sltiu        s10, t0, -1064
                  ori          a0, s7, -311
                  auipc        s11, 240892
                  sll          t1, t2, a2
                  ori          s11, gp, -1243
                  or           s4, a6, a7
                  ori          sp, sp, 348
                  slt          t1, s10, zero
                  srai         t0, s4, 12
                  sltu         s4, t0, t1
                  srl          s4, t2, zero
                  xor          gp, s10, s6
                  sltiu        s9, t3, -943
                  auipc        t0, 737132
                  sub          a5, t4, s1
                  sll          s3, a4, tp
                  sub          a6, a7, tp
                  slt          t2, s2, a6
                  sltiu        t1, s2, -355
                  auipc        gp, 967892
                  sra          s9, s5, a7
                  addi         s5, a6, 704
                  or           s2, s10, zero
                  slti         a0, s10, -113
                  sra          s11, a7, s4
                  xor          s5, a5, gp
                  auipc        a2, 384583
                  xor          a7, s9, s7
                  xor          s8, s10, s8
                  nop
                  srai         a1, a1, 3
                  sltiu        t6, s5, 936
                  andi         s9, gp, -1222
                  slt          s2, t3, t3
                  xori         t1, s9, 1699
                  srli         sp, s3, 26
                  sub          gp, s7, t4
                  nop
                  sltu         a7, s0, t3
                  nop
                  srl          t1, ra, s1
                  and          t1, ra, a0
                  sltiu        s5, a4, 699
                  sub          t5, a6, gp
                  sll          gp, s1, s3
                  lui          s0, 558635
                  auipc        sp, 726371
                  addi         s6, t3, -1654
                  andi         a6, s8, 670
                  ori          tp, s10, -1582
                  slli         s9, t2, 28
                  srai         s5, a0, 14
                  auipc        a6, 902238
                  add          sp, s5, s0
                  add          s7, zero, a5
                  slti         s4, t1, 1124
                  sltu         t0, t1, s10
                  sra          sp, t4, s3
                  xori         s11, t4, 1498
                  srli         sp, gp, 17
                  slli         t1, a3, 20
                  srl          s6, a1, t6
                  or           t6, a0, s0
                  addi         ra, a5, -381
                  xor          tp, t1, s5
                  or           sp, a7, t1
                  auipc        t2, 196788
                  and          a7, sp, s11
                  srli         s0, gp, 15
                  sub          s3, t1, s3
                  sra          s0, s0, t6
                  xori         tp, a1, 1803
                  and          t1, a1, s7
                  or           a0, s9, s11
                  lui          t1, 336345
                  srli         a7, s8, 7
                  srli         s7, t5, 13
                  slti         a4, a0, -46
                  lui          a2, 803183
                  and          a7, a1, a1
                  srli         gp, s0, 27
                  xor          s6, a4, s3
                  auipc        s5, 238871
                  slti         s9, t1, 1801
                  srai         t1, t3, 0
                  slt          zero, s9, t4
                  ori          sp, t6, 1449
                  sll          s3, s5, s0
                  sltu         t2, t3, ra
                  addi         a4, s8, -1267
                  lui          t5, 778223
                  sll          ra, s1, s1
                  and          s6, s0, s3
                  andi         s9, a5, 581
                  ori          a0, s5, 1754
                  slt          t5, a5, s2
                  srai         a3, s9, 29
                  sll          s10, a6, s10
                  lui          tp, 94951
                  addi         a6, t6, -1887
                  sltu         a4, a1, t3
                  sll          a1, t1, s1
                  xori         s9, t2, 1698
                  auipc        zero, 256104
                  lui          t2, 326930
                  slli         t6, t2, 15
                  sub          s9, a0, s11
                  addi         t0, a2, 1876
                  slli         t6, tp, 15
                  addi         s9, tp, 2017
                  srl          t2, a0, s11
                  ori          a2, tp, 243
                  xori         tp, sp, -1916
                  sltu         t5, s0, s2
                  andi         s3, s8, 590
                  lui          a3, 577241
                  andi         gp, a3, -1096
                  slti         s4, s2, -826
                  lui          t2, 139838
                  add          s5, t4, a1
                  sll          s7, a4, t3
                  lui          sp, 550904
                  sltiu        t0, zero, 949
                  auipc        zero, 35193
                  ori          s8, s5, -1050
                  xor          t6, s9, s3
                  sll          zero, t5, a5
                  ori          a1, s8, 301
                  or           s3, t3, a5
                  lui          t0, 630648
                  andi         tp, t4, -1758
                  addi         a1, a4, -106
                  andi         s5, a0, 1850
                  srli         s6, t5, 13
                  sltu         sp, sp, s11
                  xori         s4, a3, -90
                  srli         zero, s10, 28
                  nop
                  sltiu        a0, t0, 428
                  lui          a5, 954575
                  slt          s0, s1, s10
                  sltiu        s5, gp, 1381
                  srl          a1, s4, a6
                  xori         s4, a0, -1581
                  srai         s9, t2, 2
                  nop
                  or           a0, sp, a7
                  srai         a6, t3, 29
                  slti         a5, t6, 609
                  or           s11, a3, s6
                  addi         s8, s2, -904
                  sltiu        tp, a6, 1717
                  ori          a5, a0, 1620
                  addi         s3, t0, -1236
                  slt          s0, t0, a1
                  srli         t6, s3, 10
                  addi         s0, a1, -612
                  slti         s10, t3, 778
                  srai         t5, t5, 18
                  slti         zero, s1, -945
                  srai         a0, sp, 28
                  sltu         s9, t4, s4
                  add          s6, tp, t6
                  nop
                  andi         tp, t1, 890
                  andi         a4, s7, 1788
                  slt          t0, s0, t5
                  add          a2, s1, t1
                  slt          t5, a0, tp
                  slti         t2, s2, -1748
                  auipc        s6, 189016
                  sltu         zero, a4, a4
                  slti         a4, s2, -1677
                  slt          s9, s0, a4
                  or           s2, t1, s5
                  xor          tp, s10, s4
                  and          a5, s4, s8
                  xor          tp, a3, a3
                  ori          gp, t6, 1588
                  slli         s9, t6, 22
                  slt          s5, zero, a0
                  andi         t0, s4, -1120
                  xori         a2, s7, -572
                  srli         t0, s8, 2
                  sub          s5, t0, a0
                  sll          s2, s3, s9
                  xor          t6, t0, t4
                  slti         s10, s7, -1160
                  srli         a5, a0, 11
                  slti         s8, t1, 348
                  add          t0, sp, s6
                  nop
                  nop
                  srl          s5, t1, t1
                  slli         t2, s3, 23
                  or           a3, zero, t4
                  or           gp, a3, t1
                  sub          s5, gp, a0
                  sra          tp, s6, zero
                  slt          a3, sp, t5
                  andi         tp, sp, 1472
                  srl          a4, s9, a3
                  srli         a2, gp, 24
                  and          zero, s5, sp
                  ori          tp, s10, 1628
                  nop
                  srl          s2, zero, tp
                  srai         a6, s11, 14
                  slli         t6, zero, 28
                  slt          a5, t3, s0
                  sub          s11, a7, t1
                  slt          a1, t5, s2
                  ori          s3, tp, -1501
                  xori         s4, t3, -1263
                  add          s3, a5, ra
                  sub          s3, sp, t6
                  srai         a6, s5, 28
                  sll          s11, s3, a4
                  nop
                  srli         s11, a0, 10
                  srl          a4, s9, s11
                  addi         a5, s7, 1923
                  xor          a6, gp, a6
                  sra          t1, tp, a1
                  srai         ra, s9, 26
                  auipc        t0, 731719
                  xori         a3, s9, 1450
                  xori         s7, s2, -1793
                  ori          a2, s1, -455
                  addi         a7, ra, 1128
                  nop
                  srli         s3, zero, 23
                  nop
                  sub          a5, t5, a1
                  slli         a6, a0, 14
                  sub          a1, s0, a2
                  ori          a1, tp, -1217
                  srl          sp, s10, t2
                  sltiu        s11, s0, 1712
                  and          t5, s1, tp
                  slti         s10, t4, -1069
                  sltiu        t6, t3, 103
                  slt          a7, a4, t3
                  xor          zero, s11, a1
                  slti         s9, zero, -1562
                  sra          a1, s11, s0
                  srli         s3, t2, 19
                  ori          t6, s1, 613
                  lui          t2, 455169
                  xor          ra, a1, t5
                  xori         a0, a2, -394
                  nop
                  sll          s5, s4, s9
                  ori          ra, s7, 586
                  andi         ra, a1, 1315
                  xor          s5, s5, s1
                  slt          s6, s1, ra
                  srl          a5, a2, t6
                  auipc        tp, 558422
                  sra          s5, a0, s4
                  sltiu        s0, s1, 951
                  srli         s11, zero, 14
                  slli         gp, t2, 27
                  slt          a3, s7, gp
                  and          s5, s6, t5
                  xor          a2, tp, t1
                  addi         t5, s1, -1599
                  nop
                  sra          a6, s1, gp
                  auipc        s5, 840178
                  sub          t5, zero, t2
                  sltiu        s0, t4, 1894
                  nop
                  andi         a5, a2, 521
                  sltiu        a6, s2, 1920
                  srli         a3, s4, 10
                  sra          s2, a1, t6
                  lui          a1, 116412
                  lui          a5, 879672
                  ori          t0, sp, -813
                  sub          sp, a4, s11
                  slt          t1, s5, s3
                  slli         tp, tp, 24
                  xori         a2, a4, 1102
                  srl          s3, t4, s10
                  ori          s9, a6, -1791
                  nop
                  slti         gp, a7, 1971
                  auipc        s11, 597012
                  sltu         t6, a0, s5
                  ori          s3, a0, -1231
                  and          s9, s2, sp
                  sra          s6, a3, zero
                  srai         a2, tp, 5
                  xori         t2, sp, 20
                  nop
                  xor          s11, t0, tp
                  lui          s0, 56537
                  srai         s11, a1, 31
                  andi         sp, zero, -1064
                  sub          a4, tp, a5
                  sll          t5, tp, sp
                  andi         t5, t1, 701
                  srai         s10, a2, 19
                  sub          s10, gp, s5
                  xori         ra, t0, -1132
                  addi         a1, zero, -94
                  sltu         a2, s9, s0
                  xori         s10, a6, -1914
                  sra          zero, a2, s9
                  sra          a3, t4, s6
                  lui          sp, 282294
                  xor          zero, s3, gp
                  srai         t2, zero, 2
                  srai         s9, t5, 22
                  sub          t6, a4, s5
                  sltu         sp, t3, t1
                  srai         t5, s3, 20
                  add          ra, s4, s1
                  add          gp, t1, a7
                  sll          s7, zero, gp
                  addi         t0, s10, -1622
                  andi         a2, s3, 688
                  auipc        t1, 688714
                  auipc        s4, 697550
                  auipc        a3, 976402
                  xor          s4, a2, s3
                  sltu         a6, s4, s7
                  srai         t1, a1, 30
                  auipc        s2, 708624
                  addi         t2, s8, -164
                  slt          s7, ra, s8
                  xor          s0, t2, s1
                  slli         s4, tp, 27
                  srl          a0, tp, s9
                  xor          sp, a7, tp
                  addi         t0, t6, -1473
                  srli         s11, a5, 11
                  sltiu        a0, t0, -951
                  and          ra, sp, s6
                  slli         t2, s7, 21
                  nop
                  lui          ra, 556083
                  srl          a6, a1, t5
                  slti         gp, a4, -833
                  slt          ra, t5, t6
                  lui          s3, 843280
                  add          s10, s9, s1
                  srl          t5, sp, t0
                  srl          s2, s9, s8
                  nop
                  sra          t6, a7, s9
                  ori          s10, s2, -526
                  andi         sp, sp, -1108
                  sltu         a6, t1, s0
                  sltiu        s3, a2, -810
                  and          a3, t0, s6
                  nop
                  slt          a5, a3, s3
                  slt          a6, a4, t0
                  slt          sp, s8, s10
                  addi         a4, sp, -1727
                  srl          t6, a5, a5
                  xori         a0, a7, -910
                  sltiu        a7, s2, 1008
                  xor          s5, a5, t5
                  slti         s2, s9, -1049
                  srai         zero, s4, 15
                  sltiu        s5, gp, 919
                  slt          a1, s4, s11
                  sub          s6, s1, s2
                  sra          s0, a7, a2
                  sll          sp, sp, t3
                  xori         a2, t2, -553
                  add          s6, s4, t2
                  addi         s6, s1, 89
                  and          ra, a4, s7
                  and          gp, t5, a5
                  sra          s5, a5, s0
                  ori          a2, a7, 1741
                  slt          s4, ra, gp
                  auipc        t2, 605951
                  srli         s10, gp, 9
                  sll          s10, zero, s9
                  and          s6, t1, a1
                  xor          s7, gp, a0
                  sra          s5, t5, t3
                  andi         a4, a3, 874
                  and          s4, s3, s2
                  ori          gp, s5, -190
                  sltu         a5, s3, s1
                  srli         zero, s11, 19
                  slti         s2, s3, -1314
                  nop
                  sll          t6, a4, a3
                  slli         t0, s6, 18
                  xori         t1, a3, -1237
                  sltu         s7, ra, t6
                  sltu         s4, t4, s1
                  or           s11, s2, s5
                  slti         s8, t1, -883
                  auipc        gp, 695486
                  slli         a2, t1, 21
                  sltu         s9, t1, s7
                  lui          gp, 205690
                  srli         a4, s11, 27
                  sll          a2, ra, t5
                  xori         s11, t2, 1998
                  andi         zero, s9, 1172
                  slli         t2, s4, 25
                  and          ra, s11, s9
                  nop
                  slti         sp, s5, 463
                  ori          a5, a0, -1249
                  sll          s0, s6, a1
                  srai         zero, s4, 16
                  sll          zero, t5, gp
                  slti         s8, s6, -1440
                  sltiu        s5, ra, -125
                  ori          s4, s7, -1209
                  sra          a7, a3, t4
                  sltu         s5, a0, zero
                  sll          s0, s11, sp
                  srli         s2, t2, 14
                  andi         a1, s1, 362
                  auipc        t0, 1044730
                  srl          a7, s8, t6
                  and          t2, s9, s11
                  slti         a0, a2, -1058
                  nop
                  andi         t2, a5, 270
                  addi         t1, s6, -989
                  sll          t2, a1, a6
                  slti         sp, s4, -368
                  srl          s8, s7, a7
                  sub          zero, t4, s2
                  andi         a5, tp, 1086
                  slli         sp, a4, 26
                  sll          t1, s0, zero
                  add          gp, a5, ra
                  srai         tp, zero, 12
                  srli         s6, s7, 20
                  sltiu        a5, s7, -978
                  and          s5, t1, a6
                  sll          s6, s9, s7
                  slt          zero, t6, a5
                  srl          s2, s9, t1
                  ori          s5, a0, -2032
                  auipc        a1, 556735
                  add          s5, a7, s11
                  auipc        s2, 310249
                  ori          s4, s11, -441
                  sltiu        s11, a2, 1632
                  srli         t0, s4, 14
                  and          a5, s9, a4
                  slli         a0, t0, 26
                  xori         ra, sp, 182
                  srli         s11, a0, 10
                  sll          a5, t6, t4
                  slt          s2, s6, t0
                  slti         s2, a1, 1768
                  slli         s3, s5, 29
                  xori         s10, s5, -51
                  auipc        a0, 996752
                  nop
                  auipc        a6, 259739
                  or           t0, t3, zero
                  srai         gp, a6, 5
                  sra          a5, s4, s7
                  slli         a4, t3, 15
                  or           gp, a0, t0
                  slt          a3, t3, t0
                  srai         t1, t2, 21
                  auipc        zero, 208858
                  slli         t6, s1, 7
                  slli         a4, t3, 29
                  auipc        s3, 934591
                  slli         t6, t2, 31
                  sll          a5, s9, s9
                  andi         gp, s10, -247
                  andi         a5, s7, 1855
                  or           s10, t2, t3
                  nop
                  sll          s9, s7, s7
                  xori         a5, a5, 1082
                  slli         s8, zero, 29
                  sra          t5, zero, s0
                  andi         t2, s1, 1059
                  andi         a1, s7, -539
                  andi         a0, s10, -1971
                  slti         a5, tp, -1340
                  add          s7, s6, s4
                  xori         t0, t2, 955
                  andi         t1, t1, -602
                  slti         s2, zero, -852
                  and          s6, s9, t3
                  slt          s5, a4, t1
                  slt          zero, s1, s4
                  xor          s4, a1, a7
                  xor          t5, s0, a6
                  slt          s0, s7, tp
                  srl          t1, s10, s1
                  andi         s0, t5, 1690
                  lui          s4, 364707
                  sll          s6, s6, ra
                  lui          s8, 769202
                  lui          s6, 95251
                  srl          a7, gp, s8
                  nop
                  slti         s8, ra, -717
                  srai         gp, s0, 13
                  slt          t1, s11, s10
                  add          s8, s2, s6
                  andi         s9, sp, -1790
                  sltu         t0, s2, zero
                  and          s8, a6, s5
                  sra          sp, s4, s3
                  srai         a1, a5, 26
                  add          s4, a7, a4
                  ori          t0, zero, -643
                  or           a0, a7, s6
                  xori         a1, s5, 33
                  sll          t0, s5, tp
                  auipc        a6, 160992
                  slti         a5, a0, 1260
                  auipc        gp, 228271
                  srai         t5, t1, 7
                  nop
                  and          a0, a6, sp
                  sra          t0, a7, gp
                  andi         s2, a1, -1034
                  slti         a5, a6, 646
                  slt          s10, a6, s8
                  nop
                  xori         ra, s6, -220
                  addi         a0, a5, 1927
                  xori         s10, a7, 920
                  or           s8, gp, gp
                  andi         s0, a1, 466
                  srai         sp, s2, 21
                  or           a0, s11, t3
                  or           s11, s2, ra
                  lui          tp, 166146
                  or           a0, sp, a4
                  sltiu        s9, a0, -1132
                  slli         s11, a2, 26
                  and          tp, a1, s3
                  auipc        t5, 472230
                  addi         a5, a2, 117
                  xori         tp, ra, -1652
                  slli         s5, s4, 30
                  and          a3, a3, t3
                  add          s6, t4, s8
                  nop
                  or           s0, t6, t5
                  slt          gp, s10, a3
                  or           tp, a1, ra
                  sub          t0, s11, a5
                  slt          s4, a2, s10
                  and          a1, a5, a5
                  sltiu        s8, a1, 1879
                  ori          s9, gp, -208
                  srli         s9, zero, 14
                  xor          s4, zero, s10
                  sll          t0, a5, a1
                  slti         s11, s3, -507
                  and          s0, s9, a6
                  srli         s7, zero, 7
                  add          s7, a6, s10
                  nop
                  addi         a0, zero, -1540
                  sll          a2, t6, s4
                  xori         s7, ra, -1986
                  auipc        sp, 128201
                  slti         t5, s5, -1450
                  nop
                  srai         zero, a6, 6
                  srai         s2, a5, 6
                  slt          s5, s0, sp
                  srl          s2, s11, s1
                  srl          t1, tp, t1
                  auipc        s6, 607850
                  srl          tp, t4, a3
                  or           s10, a3, a0
                  ori          s5, a7, 107
                  sra          a7, a5, t5
                  srli         tp, s1, 3
                  srli         t6, s9, 15
                  slli         s3, a6, 21
                  sll          s0, s7, t3
                  and          sp, a4, a4
                  sub          a3, a0, a2
                  srai         s0, ra, 12
                  lui          s5, 804184
                  ori          s8, s5, -1496
                  srli         s2, a1, 1
                  srl          a4, s5, s0
                  srai         t1, t0, 8
                  sll          ra, gp, tp
                  lui          s9, 923818
                  ori          a6, s11, 2026
                  sltu         tp, tp, t2
                  xori         s10, s4, -867
                  xor          s6, gp, s4
                  srai         s5, s1, 20
                  ori          t1, a0, 415
                  xor          s5, ra, gp
                  lui          a6, 547685
                  lui          gp, 80416
                  slti         s11, t1, 1947
                  or           s7, t2, a3
                  srl          sp, zero, a6
                  ori          t2, s0, 1639
                  lui          a1, 698538
                  sltiu        sp, a7, 1467
                  sltu         s9, zero, s3
                  ori          s11, a0, -673
                  and          a1, t1, s3
                  nop
                  sub          t1, t6, s1
                  xori         a5, a4, 30
                  srl          gp, a1, a3
                  add          t1, t3, t3
                  sub          s10, s4, a5
                  srli         s2, s5, 17
                  addi         a4, a1, -697
                  addi         s6, s4, 1251
                  sra          s5, a1, sp
                  xori         s11, s11, -261
                  slt          zero, a7, a1
                  sra          a7, a3, s6
                  lui          t2, 193745
                  xori         t1, a6, 705
                  sltiu        s11, a6, -402
                  and          t5, s5, zero
                  andi         s9, a2, 777
                  add          t2, a3, t2
                  nop
                  xori         s2, t3, -682
                  lui          s4, 367661
                  lui          s7, 964913
                  srai         s2, a0, 20
                  addi         t6, t6, -1379
                  sub          s2, t0, ra
                  slt          s7, zero, tp
                  addi         a6, a0, -162
                  xor          sp, zero, t1
                  srl          zero, s4, s9
                  sltu         tp, s7, s0
                  auipc        a1, 1006351
                  and          s7, tp, tp
                  xor          sp, ra, s3
                  auipc        s2, 38441
                  xor          a3, t1, gp
                  xori         t2, t2, -1037
                  auipc        a4, 444364
                  xor          a5, sp, s11
                  sll          a2, s0, t5
                  nop
                  srl          s0, gp, t1
                  auipc        t6, 868508
                  slt          gp, sp, sp
                  xori         a6, sp, 1184
                  sra          s6, t4, s1
                  xor          s8, t6, s9
                  sltiu        zero, gp, -1083
                  sra          s8, s0, a6
                  and          t0, s2, t0
                  lui          sp, 939182
                  srli         zero, s5, 0
                  sub          a4, s7, a5
                  auipc        a3, 527574
                  auipc        sp, 252309
                  slt          s5, s8, t5
                  sub          t5, t0, s5
                  slti         s10, t2, 278
                  andi         s5, t1, 50
                  lui          s4, 787911
                  sltiu        s5, s1, 777
                  sltu         s11, a1, sp
                  lui          zero, 238426
                  xor          a1, t5, s0
                  add          t6, a7, s5
                  xor          s10, s11, s2
                  addi         a3, a2, 733
                  xori         t5, s9, 1167
                  srai         s0, s4, 19
                  slli         a7, a2, 27
                  add          t0, s2, s5
                  srl          s3, t3, s2
                  add          s0, t3, ra
                  sll          s2, a0, a6
                  sltiu        sp, a4, 1161
                  srai         t1, s6, 0
                  srai         tp, a5, 1
                  or           s5, t0, a1
                  lui          a3, 124245
                  srai         s2, tp, 19
                  or           s10, tp, s9
                  or           s0, s9, s10
                  sll          s2, a1, s9
                  andi         t0, t0, 1155
                  nop
                  sltiu        s9, t3, 643
                  add          s2, tp, sp
                  auipc        s9, 411834
                  addi         a1, s8, 891
                  auipc        a0, 309693
                  xori         gp, a3, -1279
                  sub          a7, s7, t3
                  and          s6, a0, a2
                  sub          s6, zero, a2
                  andi         s0, s7, 1905
                  lui          s3, 917125
                  sll          t2, s10, sp
                  slli         sp, zero, 15
                  sub          t5, t4, tp
                  ori          a5, s11, 775
                  srai         a5, t6, 18
                  srai         t2, zero, 30
                  sll          a0, s4, a1
                  xori         t1, s5, 669
                  sltu         s8, a2, s8
                  xor          s10, t0, gp
                  sub          s3, s1, t6
                  auipc        t1, 285197
                  or           tp, tp, s8
                  add          t0, a1, s4
                  slli         a2, a4, 4
                  srl          zero, a2, a2
                  or           a7, a0, a2
                  xor          s4, ra, s11
                  srl          s4, s4, a2
                  xori         t6, t0, 1593
                  ori          a1, gp, 509
                  add          gp, s11, sp
                  sra          a5, a3, gp
                  sra          a1, sp, t5
                  ori          gp, tp, 825
                  lui          ra, 75574
                  slt          s11, a0, s5
                  srl          a4, a2, a4
                  add          tp, tp, s9
                  slt          t0, t6, t6
                  srai         s11, s6, 5
                  srai         a6, s3, 27
                  sltu         s4, t4, zero
                  slti         zero, s11, -296
                  and          t6, s6, tp
                  srli         s10, t4, 4
                  slt          s4, t5, t5
                  andi         s11, s8, 556
                  slti         s8, s11, -1511
                  addi         a3, a3, -597
                  and          a2, s2, ra
                  slt          gp, t0, s2
                  sltu         sp, s4, t1
                  srai         sp, t1, 10
                  slli         s10, s9, 30
                  nop
                  sll          t1, s4, t0
                  slt          a0, s11, s9
                  sub          a2, t6, t6
                  srli         s11, a2, 8
                  andi         t5, t4, 1651
                  ori          zero, a2, -543
                  xori         a0, t3, 1066
                  sltu         a1, gp, s5
                  or           s2, t5, gp
                  lui          a6, 838512
                  add          a3, s2, a4
                  slt          ra, a4, tp
                  andi         t1, a7, -419
                  nop
                  xori         a2, s1, -934
                  sll          ra, s6, s8
                  slti         t5, a0, -1985
                  addi         a4, t6, -1006
                  and          t1, sp, t2
                  slti         a5, zero, -106
                  slt          t6, s0, s8
                  slli         s7, t3, 17
                  auipc        tp, 977386
                  andi         s5, s10, -895
                  andi         t1, s10, 244
                  addi         gp, t5, 633
                  sra          t6, a1, a2
                  xori         t2, s0, -2037
                  slli         tp, s4, 25
                  slt          a5, t2, t1
                  slli         s9, a5, 19
                  and          a7, a4, s0
                  or           a0, a3, a5
                  andi         sp, s11, -230
                  or           s7, a5, zero
                  slli         a5, t3, 7
                  addi         zero, t5, 1506
                  ori          s9, s7, 1774
                  and          ra, a4, s10
                  sltiu        a6, a0, 996
                  and          a6, a4, t6
                  xor          s2, sp, s3
                  and          t5, a6, gp
                  andi         a6, s7, 1591
                  auipc        s10, 92931
                  ori          s11, a4, 1461
                  sll          a1, t1, s3
                  and          s4, a3, s1
                  slt          t1, a5, t0
                  addi         s9, s7, 760
                  and          s3, zero, t4
                  slt          s2, s6, zero
                  andi         t6, t4, -730
                  nop
                  or           a6, s6, t6
                  sltiu        s6, t3, -916
                  srl          tp, sp, s4
                  addi         t6, t3, 368
                  slti         sp, s3, -1482
                  xor          s9, a4, s7
                  auipc        t0, 614533
                  srli         s2, s9, 0
                  sltu         s8, a0, s4
                  sll          a1, t6, gp
                  lui          a7, 839832
                  srl          a4, s0, ra
                  slt          ra, t4, t5
                  sltiu        s4, s7, 167
                  add          t2, zero, ra
                  xor          a2, a2, a5
                  sub          t0, t0, s4
                  srai         s10, s9, 16
                  nop
                  add          a7, t5, tp
                  add          ra, zero, ra
                  auipc        a0, 188165
                  lui          s8, 71268
                  and          s8, t4, s3
                  sltu         gp, t4, s0
                  add          s9, tp, a4
                  slt          zero, t6, s2
                  sltu         t2, t3, a5
                  add          a4, a0, s2
                  lui          s0, 260490
                  lui          t2, 368688
                  xori         s11, t2, -180
                  and          s0, t6, a3
                  sub          s9, a4, t4
                  srli         t2, s11, 19
                  auipc        a7, 140806
                  sltiu        a7, a6, 332
                  sra          a0, tp, s10
                  add          t6, a0, a4
                  addi         t5, a3, -903
                  slti         zero, s5, 256
                  xor          sp, zero, a6
                  slti         ra, s6, -160
                  srai         tp, a7, 2
                  sll          a1, a2, s4
                  and          s5, a2, s7
                  sll          t1, s9, s1
                  add          a7, t1, s4
                  nop
                  xori         s9, a4, -140
                  xor          t1, s1, t1
                  or           s0, a6, s9
                  addi         zero, a1, -1688
                  sltiu        a7, s11, 387
                  sub          sp, t4, s0
                  srli         s10, t2, 4
                  sll          t6, a1, s1
                  sltiu        t6, t3, -203
                  sll          tp, ra, t1
                  or           t5, t6, s9
                  sra          zero, t3, a7
                  and          s3, s2, s0
                  slti         a4, a0, -1165
                  xori         s8, s10, -1230
                  sra          a6, ra, a2
                  sltiu        s0, t1, 1147
                  ori          s2, s2, 1420
                  andi         s2, s1, -1036
                  sra          s3, a7, t6
                  srl          s2, s4, s8
                  srl          zero, s0, s7
                  slti         s4, s2, 919
                  xor          zero, a6, a2
                  lui          s0, 752856
                  ori          t2, s11, 233
                  xori         s6, s9, 1513
                  addi         a0, s8, -198
                  sub          a1, ra, tp
                  sltu         s6, s6, zero
                  or           s5, zero, a7
                  sra          s9, s7, gp
                  or           t6, a7, s6
                  sltiu        s11, tp, 1021
                  slli         zero, a6, 3
                  sltu         a7, t0, s3
                  slti         s0, s8, -878
                  auipc        t0, 629929
                  slt          s8, s4, s8
                  slti         s9, s1, -626
                  slt          a3, a1, s0
                  andi         s2, a3, -1161
                  nop
                  sltu         t6, tp, t5
                  sll          t1, a4, s9
                  sltiu        s3, a3, -734
                  slt          s7, s10, ra
                  srai         a6, a0, 17
                  xor          a1, t0, a6
                  srai         a5, s1, 25
                  andi         a5, gp, 1900
                  srl          t1, t4, zero
                  xori         gp, t1, 886
                  srl          a0, s2, a5
                  nop
                  addi         a5, a5, 717
                  or           t2, s10, t3
                  slli         a5, s8, 22
                  slt          a1, a4, t6
                  sltu         s4, s2, a5
                  lui          t5, 311337
                  slti         gp, t4, 1844
                  ori          a2, a0, -838
                  sltu         s3, sp, zero
                  xor          s0, ra, a6
                  slli         a2, s9, 20
                  add          t6, s1, tp
                  andi         t1, t1, -484
                  sltiu        sp, t1, 1070
                  sra          a6, a3, zero
                  addi         sp, s2, 1901
                  and          s10, t1, t3
                  lui          s2, 869257
                  srl          gp, a3, s5
                  slti         s10, a0, -298
                  sra          a4, a0, s7
                  sub          sp, s0, a3
                  srai         t1, a3, 27
                  addi         s7, a2, -81
                  slli         t1, s6, 3
                  or           a0, s1, s1
                  xor          a0, s5, a4
                  sltu         s9, s11, a4
                  nop
                  and          t2, tp, s8
                  sltu         s10, t1, s4
                  srli         tp, a5, 5
                  sra          s0, t0, sp
                  ori          a5, ra, 1967
                  sltu         s3, s6, t6
                  andi         a6, a7, -1170
                  andi         s9, t1, -2041
                  sltu         ra, a4, s10
                  slt          a5, a3, s8
                  sra          s5, a0, a0
                  andi         s3, a5, 698
                  sll          s10, s4, a1
                  sra          t5, s10, a2
                  slt          s3, zero, tp
                  or           t5, t2, t5
                  add          a5, t1, s9
                  sll          t1, s8, s6
                  sll          a1, s1, t0
                  nop
                  xori         a1, zero, -268
                  sll          s2, gp, s2
                  slli         s3, t0, 1
                  lui          s2, 1016723
                  xor          a5, a3, t6
                  nop
                  sltiu        a2, s8, 377
                  slli         s6, a2, 31
                  lui          a6, 139033
                  xor          s6, t4, s6
                  sub          s8, t3, s8
                  slti         a7, t2, 271
                  nop
                  srl          s9, s1, s1
                  sra          sp, s11, s9
                  srai         a2, a5, 16
                  slti         t2, a0, -1693
                  sra          t6, tp, a1
                  xori         ra, zero, -1630
                  sll          tp, t6, zero
                  sltu         s2, sp, sp
                  nop
                  andi         s9, gp, -522
                  srai         gp, s10, 15
                  srai         s11, s1, 16
                  xor          s5, gp, a7
                  and          a5, s2, gp
                  srli         sp, t4, 19
                  auipc        t1, 661774
                  sub          ra, a6, s8
                  xori         ra, zero, -1520
                  lui          t1, 828233
                  add          a2, s3, t5
                  add          sp, s8, sp
                  ori          a4, s8, 542
                  ori          a6, a0, 1562
                  nop
                  xori         a3, t6, 1724
                  and          a7, s9, s2
                  add          s11, t2, s3
                  srl          t6, a5, s5
                  addi         s2, ra, -1468
                  srl          a3, ra, s8
                  nop
                  andi         a2, a7, -626
                  sltu         zero, s2, t1
                  slt          t2, a3, t2
                  slt          s5, sp, s3
                  add          s10, a6, t1
                  sltiu        s0, s6, -1287
                  add          s2, s1, s4
                  andi         a7, a0, 1667
                  slti         zero, a0, 93
                  xori         sp, t4, 1941
                  slli         ra, t1, 7
                  andi         zero, ra, 222
                  lui          a7, 723382
                  auipc        t2, 552333
                  srl          s9, ra, s4
                  auipc        a0, 61571
                  nop
                  add          s10, s3, t2
                  srli         a4, a3, 3
                  slt          t5, s10, ra
                  and          a1, s4, s8
                  slli         s10, a2, 24
                  sltiu        a0, t4, -1475
                  add          ra, s8, s3
                  sltu         t6, s0, gp
                  sra          s4, a1, a4
                  xori         s11, a0, 627
                  slt          t6, tp, s6
                  or           a7, ra, s11
                  auipc        a5, 166933
                  srai         s6, t4, 8
                  nop
                  xor          t1, t2, t5
                  ori          t5, a1, 1080
                  andi         s5, ra, 1150
                  slti         t5, a6, -673
                  sub          tp, a2, s6
                  slt          a4, a5, a1
                  sll          s3, t3, s4
                  ori          a7, s3, 929
                  andi         s2, t0, 1333
                  add          s5, s3, t2
                  srl          t5, s1, s6
                  lui          a6, 734833
                  sub          gp, s9, s6
                  sltu         a1, a7, s10
                  sltiu        tp, a1, -976
                  xori         s8, tp, 1181
                  sltiu        a1, s5, -592
                  add          a4, a1, s2
                  sra          s4, s3, a1
                  addi         s0, a4, -1632
                  xor          sp, t0, t0
                  auipc        a6, 886254
                  sltiu        s2, s10, 1902
                  and          sp, a4, s6
                  nop
                  sll          t0, a0, s6
                  andi         s6, a4, 1660
                  sll          s6, tp, s5
                  slli         s11, s7, 3
                  ori          t0, s6, -1486
                  sltu         s2, zero, t5
                  srl          s8, t2, s9
                  slt          s3, zero, s10
                  add          a0, a7, a3
                  sltu         zero, s11, s2
                  and          s5, s10, t0
                  sub          s0, a6, t6
                  addi         a2, a0, -795
                  lui          s7, 575152
                  xori         s5, t1, -2039
                  sub          tp, s11, t5
                  auipc        a3, 582621
                  or           s11, t4, s1
                  slti         s6, s2, -237
                  slli         t0, zero, 22
                  sltiu        s2, a1, 1407
                  sra          a6, a5, a1
                  srai         a3, gp, 5
                  add          t0, a5, a5
                  and          a3, s11, s9
                  xor          s7, a2, s6
                  sll          t6, t6, s5
                  and          s3, s1, s8
                  auipc        a7, 710793
                  sltiu        a6, a3, 1710
                  sltu         a4, a4, s5
                  srai         s11, s2, 28
                  addi         gp, t2, 1016
                  add          a0, tp, t5
                  srli         ra, t2, 31
                  add          gp, a1, s0
                  sll          a1, t3, s8
                  nop
                  sltiu        s0, s4, 1186
                  slt          a1, t0, t5
                  slti         a7, t5, -454
                  nop
                  sra          a6, a0, s9
                  add          a4, t6, s11
                  sub          ra, a2, s1
                  or           t0, t6, t5
                  slli         a5, t4, 31
                  sra          a7, s11, t5
                  slt          s0, s0, a5
                  sltiu        t0, a6, 402
                  xor          a5, s2, s6
                  sra          s3, sp, a2
                  slli         s3, t4, 6
                  andi         gp, a4, -905
                  addi         t6, sp, -1300
                  sll          t0, s2, s10
                  slt          a7, zero, s6
                  srli         a0, sp, 5
                  srli         s4, t6, 23
                  sltu         s3, s2, a6
                  xor          s7, a4, gp
                  slti         s0, s1, -536
                  sub          s6, s6, t2
                  and          a6, s10, t4
                  srl          s0, sp, s6
                  srli         ra, s8, 12
                  srl          s5, a1, s7
                  sltu         gp, a5, s9
                  slli         gp, ra, 22
                  nop
                  srl          s0, a4, s10
                  sra          s10, s5, t4
                  slli         t5, t0, 1
                  sub          s8, t1, a2
                  sub          t2, ra, s1
                  andi         a6, ra, -1439
                  sltiu        a1, a7, -916
                  sra          sp, a2, s10
                  srai         s3, s9, 28
                  xori         s6, s5, -884
                  sltu         s10, t0, t6
                  or           s0, s10, t1
                  nop
                  ori          s11, a3, 1598
                  sll          tp, s11, s5
                  nop
                  add          s6, t4, s9
                  lui          s4, 693055
                  srai         s3, ra, 23
                  addi         sp, s4, -1931
                  xor          gp, t6, gp
                  andi         s8, s1, 793
                  srli         ra, a6, 14
                  sltiu        s4, a6, -1541
                  slt          s0, t0, a2
                  sltu         t1, sp, a4
                  sub          s8, zero, t1
                  sll          zero, t5, t6
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_0
                  li           s8, 0x80000000
                  li           s4, 0x80000000
                  li           tp, 0x80000000
                  li           a6, 0x0
                  li           s2, 0x0
                  li           a1, 0xe68edf
                  li           a5, 0x7a40245c
                  li           s5, 0xffffffff
                  li           s7, 0x0
                  lui          tp, 891613
                  add          a6, a1, s5
                  auipc        a1, 759636
                  add          a6, s10, s5
                  auipc        s2, 965417
                  add          s2, a5, tp
                  auipc        tp, 325652
                  lui          a6, 670959
                  lui          s4, 918636
                  add          a1, a6, s7
                  nop
                  auipc        s5, 473241
                  add          s10, tp, s7
                  lui          s4, 227328
                  auipc        s8, 972295
                  add          s7, s5, s10
                  auipc        a5, 820655
                  add          s7, s2, a6
                  sub          s2, s10, a5
                  add          s4, s2, a5
                  add          s10, s5, s4
                  nop
                  sub          a1, s2, s7
                  add          s2, tp, a5
                  auipc        s10, 1028159
                  add          s10, a1, s2
                  addi         s7, s4, 1339
                  lui          a5, 1044805
                  add          s7, a6, s5
                  sub          s5, s10, a1 #end riscv_int_numeric_corner_stream_0
                  xori         s6, t1, 1016
                  slli         s4, a3, 3
                  sll          t6, s9, s8
                  srai         a5, s10, 20
                  auipc        ra, 561086
                  or           t6, s11, s4
                  sub          a6, gp, ra
                  addi         s4, t4, -1692
                  and          t2, s3, s3
                  or           s4, a1, s2
                  andi         a0, sp, -1299
                  xor          s4, s8, a6
                  slli         ra, a3, 21
                  and          s4, a7, s7
                  srl          a7, s8, a2
                  slt          a3, s5, a4
                  sra          s4, a4, s6
                  sra          s5, s0, a1
                  auipc        t2, 673617
                  add          a3, sp, s6
                  srai         s4, gp, 20
                  sltiu        a2, s6, 1115
                  ori          t0, a0, 743
                  srli         s5, s8, 25
                  sltu         s8, gp, t4
                  auipc        tp, 181853
                  sltiu        s0, a4, 993
                  srl          s0, a6, t4
                  srli         t0, s9, 21
                  lui          s4, 151022
                  sltu         s8, t1, s6
                  srli         a0, a6, 18
                  or           s0, ra, s6
                  or           a1, t3, a0
                  ori          a2, a0, 1461
                  srl          s8, a1, s9
                  slt          s4, t3, s8
                  and          t1, s11, t3
                  sll          s7, a5, s0
                  sll          s10, a4, t1
                  srai         a3, a5, 5
                  ori          s9, gp, -1047
                  xor          s5, s0, t3
                  ori          t2, a6, 1491
                  nop
                  xor          s3, zero, a2
                  xori         s7, zero, 167
                  srli         t5, sp, 23
                  la x28, test_done
                  jalr x0, x28, 0
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
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_2:
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
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_3:
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
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_4:
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
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_5:
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
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_6:
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
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_7:
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
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_8:
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
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_9:
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
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_10:
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
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_11:
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
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_12:
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
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_13:
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
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_14:
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
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

mmode_intr_vector_15:
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
                  add x9, x29, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x28, test_done
                  jalr x0, x28, 0

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
                  add x9, x29, zero
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x6, 0x3 # BREAKPOINT
                  beq x20, x6, ebreak_handler
                  li x6, 0x8 # ECALL_UMODE
                  beq x20, x6, ecall_handler
                  li x6, 0x9 # ECALL_SMODE
                  beq x20, x6, ecall_handler
                  li x6, 0xb # ECALL_MMODE
                  beq x20, x6, ecall_handler
                  li x6, 0x1
                  beq x20, x6, instr_fault_handler
                  li x6, 0x5
                  beq x20, x6, load_fault_handler
                  li x6, 0x7
                  beq x20, x6, store_fault_handler
                  li x6, 0xc
                  beq x20, x6, pt_fault_handler
                  li x6, 0xd
                  beq x20, x6, pt_fault_handler
                  li x6, 0xf
                  beq x20, x6, pt_fault_handler
                  li x6, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x6, illegal_instr_handler
                  csrr x6, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

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
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x29, x9, zero
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
                  add x29, x9, zero
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
                  add x29, x9, zero
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
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x29, x9, zero
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
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x29, x9, zero
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
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x29, x9, zero
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
