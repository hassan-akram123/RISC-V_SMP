.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x31, h0_start
jalr x0, x31, 0
h0_start:
                  li x22, 0x40000100
                  csrw 0x301, x22
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x22, mtvec_handler
                  ori x22, x22, 0
                  csrw 0x305, x22 # MTVEC

mepc_setup:       
                  la x22, init
                  csrw 0x341, x22

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x22, 0x1800
                  csrw 0x300, x22 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x8
                  li x2, 0xdb9f6890
                  li x3, 0x0
                  li x4, 0x2
                  li x5, 0x0
                  li x6, 0xc8359974
                  li x7, 0x1
                  li x8, 0x9
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0xf1d59dc7
                  li x12, 0xc
                  li x13, 0x0
                  li x14, 0x0
                  li x15, 0x46f72e88
                  li x16, 0xdef2a795
                  li x17, 0xf265091e
                  li x18, 0x80000000
                  li x19, 0x80000000
                  li x20, 0xf59e9b4b
                  li x21, 0x80000000
                  li x22, 0x0
                  li x23, 0xf89ae248
                  li x25, 0x0
                  li x26, 0xf93bc28e
                  li x28, 0x3
                  li x29, 0xf535c392
                  li x30, 0xf
                  li x31, 0x0
                  la x24, user_stack_end
main:             li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_1
                  li           a7, 0x2ae5207f
                  li           t1, 0x0
                  li           s7, 0x80000000
                  li           s2, 0x0
                  li           ra, 0x0
                  li           s10, 0x80000000
                  li           s3, 0x3053a93c
                  li           s6, 0x0
                  li           tp, 0x0
                  sub          s2, s6, a1
                  add          ra, a7, s6
                  auipc        s7, 649110
                  addi         ra, a7, -58
                  nop
                  addi         s2, s7, 1912
                  addi         ra, t1, 718
                  addi         s3, s10, -1633
                  addi         a1, s7, -2007
                  lui          s6, 51483
                  sub          a1, s6, a1
                  nop
                  nop
                  add          t1, s6, s3
                  sub          a7, tp, s3
                  nop
                  add          tp, t1, t1
                  add          tp, s10, s7
                  lui          tp, 816045
                  auipc        tp, 712158
                  add          t1, s10, a7
                  lui          a7, 389273
                  auipc        a1, 738918
                  sub          t1, s10, s6
                  sub          s2, s6, a1
                  addi         a1, s3, -106
                  sub          s10, s7, a1 #end riscv_int_numeric_corner_stream_1
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_6
                  li           sp, 0xffffffff
                  li           gp, 0x0
                  li           t3, 0xffffffff
                  li           s10, 0xffffffff
                  li           a5, 0xd27d1ec5
                  li           t2, 0xffffffff
                  li           a4, 0x80000000
                  li           t5, 0xd331fa82
                  li           t0, 0xffffffff
                  auipc        t3, 893250
                  addi         s2, t2, -424
                  sub          t5, t2, gp
                  nop
                  sub          s10, s2, s10
                  add          s10, a5, sp
                  add          sp, t0, t5
                  auipc        gp, 106761
                  auipc        sp, 207217
                  sub          sp, t3, a5
                  addi         t0, s10, 1513
                  lui          sp, 612990
                  nop
                  lui          t5, 855436
                  add          s2, t2, a5
                  sub          gp, t0, s10
                  nop
                  lui          t5, 1012946
                  sub          a5, s2, s2 #end riscv_int_numeric_corner_stream_6
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           a7, 0x0
                  li           a5, 0x0
                  li           s6, 0x80000000
                  li           tp, 0x69acfc35
                  li           s10, 0x3f66b53c
                  li           a6, 0xffffffff
                  li           a1, 0x80000000
                  li           a4, 0x80000000
                  li           s9, 0xffffffff
                  addi         tp, s10, 450
                  lui          tp, 521905
                  auipc        s6, 498506
                  nop
                  addi         s7, a1, -1480
                  add          a7, a1, a1
                  addi         s10, a5, -683
                  add          a4, s7, s10
                  addi         a5, a7, -1720
                  addi         s10, s6, 1702
                  addi         a4, a6, -533
                  add          s7, tp, a7
                  lui          s7, 160251
                  nop
                  nop
                  auipc        s7, 829633
                  nop
                  sub          a7, a1, s9
                  add          a6, a6, s9
                  nop
                  add          s6, s6, a5
                  nop
                  addi         a6, s6, 904 #end riscv_int_numeric_corner_stream_9
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_0
                  li           a6, 0x80000000
                  li           tp, 0x80000000
                  li           s6, 0x80000000
                  li           t4, 0x80000000
                  li           a3, 0xf0031cf0
                  li           a1, 0xffffffff
                  li           t1, 0xffffffff
                  li           s7, 0xffffffff
                  li           a4, 0xa9854d0
                  sub          s7, a3, a4
                  sub          a1, a0, a3
                  lui          s6, 661201
                  nop
                  addi         t4, a4, -260
                  sub          a3, a6, t4
                  nop
                  add          a4, tp, a6
                  add          tp, a1, a0
                  addi         s7, a0, -7
                  auipc        a1, 939050
                  sub          a6, s7, a3
                  add          a1, s6, a4
                  nop
                  auipc        a6, 266789
                  lui          a4, 898362
                  sub          a6, s6, a6
                  add          a4, s7, tp
                  sub          a1, a1, a1
                  sub          a1, tp, s7
                  add          a6, a4, t1
                  lui          a6, 933058
                  nop
                  lui          a3, 470082
                  sub          tp, a0, a0
                  lui          a0, 924204
                  lui          t1, 860103
                  lui          tp, 460036 #end riscv_int_numeric_corner_stream_0
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_3
                  li           a3, 0x80000000
                  li           gp, 0x80000000
                  li           ra, 0xffffffff
                  li           t0, 0xc75a3935
                  li           t5, 0x80000000
                  li           t1, 0xffffffff
                  li           a5, 0x80000000
                  li           tp, 0xffffffff
                  li           a6, 0x80000000
                  lui          a6, 525863
                  add          ra, gp, gp
                  sub          a6, s9, a3
                  add          a5, tp, s9
                  auipc        s9, 740362
                  add          tp, t1, a6
                  addi         s9, t1, -183
                  add          a5, tp, t5
                  addi         t5, s9, 682
                  add          s9, t1, t5
                  lui          ra, 421720
                  auipc        t5, 431337
                  addi         t1, a5, 84
                  nop
                  add          a6, s9, t5
                  addi         gp, a3, -1705
                  nop
                  sub          t0, ra, a5
                  lui          t0, 509640
                  auipc        t5, 726984
                  auipc        a5, 499134
                  lui          ra, 280574 #end riscv_int_numeric_corner_stream_3
                  li           a3, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           t3, 0x80000000
                  li           tp, 0x6fd896b
                  li           a6, 0x0
                  li           s0, 0x0
                  li           a7, 0xffffffff
                  li           s7, 0x80000000
                  li           a5, 0x80000000
                  li           s4, 0x80000000
                  li           a1, 0xffffffff
                  nop
                  add          a1, a7, a7
                  auipc        s7, 878265
                  lui          a6, 745504
                  sub          a1, s7, a3
                  add          s7, a5, s0
                  addi         a3, a1, 1265
                  nop
                  sub          t3, s4, a7
                  sub          t3, a7, t3
                  sub          a1, a3, t3
                  auipc        a1, 750667
                  lui          a5, 563389
                  addi         t3, s4, -592
                  auipc        a7, 884690
                  add          t3, a7, t3
                  addi         s0, a7, 1620 #end riscv_int_numeric_corner_stream_2
                  sll          s3, s11, a4
                  sltu         t3, tp, a1
                  and          sp, s8, a2
                  auipc        a3, 956692
                  srai         s10, t1, 28
                  srai         s1, s10, 13
                  sltu         t5, s4, a2
                  auipc        t2, 314262
                  slt          t5, zero, s7
                  addi         t2, t3, -1452
                  andi         s4, s9, -1712
                  srai         s0, s1, 2
                  xor          t4, s10, s9
                  srl          s0, t3, tp
                  sub          s3, t1, a2
                  xor          s9, s6, t2
                  andi         a6, s10, 772
                  andi         t3, t1, 1338
                  auipc        a2, 855357
                  add          a6, t1, a7
                  lui          s4, 775307
                  and          a6, s5, s8
                  and          a4, t2, s2
                  lui          tp, 535144
                  slli         t0, ra, 12
                  addi         a2, t2, -996
                  sra          a4, a3, a7
                  nop
                  sra          gp, a7, s7
                  sra          t2, a5, ra
                  auipc        tp, 134349
                  lui          s2, 295420
                  slt          s0, a1, s5
                  srai         a3, s3, 2
                  auipc        a6, 67685
                  sltu         s0, s9, sp
                  and          zero, s7, s0
                  sub          s9, s10, s7
                  andi         a2, t0, 634
                  slli         a2, t5, 14
                  sltu         sp, s2, sp
                  slti         t3, s8, -1318
                  sltu         sp, a0, t4
                  sltiu        s4, a2, 1599
                  nop
                  andi         s5, s6, -656
                  slli         s1, s1, 9
                  or           a4, s6, s7
                  srl          s7, s3, t0
                  ori          t5, s6, 1508
                  slti         a7, t3, 1354
                  sltiu        s2, a0, -1542
                  sltiu        s10, t5, -1534
                  slt          a1, s5, a5
                  and          s1, gp, s8
                  sltu         t1, s7, t4
                  lui          t0, 963492
                  andi         a7, s7, -1466
                  ori          s9, t0, 30
                  sltiu        gp, a0, 2010
                  addi         s5, t3, -436
                  srai         sp, t5, 9
                  slt          a1, t3, s0
                  or           a3, s7, s2
                  sltu         s0, a4, s2
                  slt          t1, s8, t6
                  lui          zero, 551717
                  sll          a4, t5, a0
                  ori          t0, zero, 293
                  sra          a2, t6, a3
                  slti         t1, t4, -1357
                  andi         a7, t4, -222
                  andi         tp, s1, -1045
                  andi         t2, a6, -493
                  srl          s10, s5, s6
                  srl          ra, ra, t6
                  sra          a2, zero, ra
                  slli         s1, s11, 8
                  or           t4, a6, s11
                  andi         tp, s8, 774
                  lui          t2, 923860
                  srl          s4, ra, a3
                  nop
                  srli         a2, sp, 0
                  add          a2, s8, t5
                  lui          ra, 271542
                  slti         zero, a3, 1107
                  srli         gp, s3, 5
                  sltu         s4, a2, a0
                  sltu         t5, s1, s8
                  addi         sp, t2, -562
                  xor          s9, s6, a7
                  sltiu        t1, s2, -1409
                  lui          s1, 856987
                  lui          a2, 102326
                  slti         s7, s6, 1008
                  nop
                  xori         tp, s7, 532
                  andi         a6, ra, 587
                  srli         s10, t1, 7
                  xori         s6, t5, -961
                  addi         t3, t4, -1758
                  ori          tp, s4, 999
                  xori         a1, s10, -642
                  sltu         tp, gp, a2
                  and          s0, s4, s9
                  srl          s0, a4, a2
                  sltiu        sp, tp, 165
                  nop
                  add          a0, sp, s0
                  auipc        tp, 61944
                  auipc        s2, 981478
                  srli         a6, a4, 26
                  lui          t3, 616085
                  and          a7, s9, s6
                  sltu         t3, s6, s5
                  srl          t3, a7, a0
                  slt          sp, t0, s4
                  sub          s4, a5, s5
                  sltu         t3, s6, ra
                  slti         a3, ra, -2043
                  and          s4, t2, a7
                  and          s0, zero, s8
                  slli         sp, t3, 16
                  or           t5, a0, ra
                  slt          a0, a1, t3
                  slli         t2, tp, 19
                  add          gp, t5, ra
                  xori         s0, s6, -1053
                  and          t2, a4, a3
                  nop
                  srai         s6, s11, 0
                  andi         a4, t1, 1066
                  srai         a2, s8, 15
                  lui          t0, 553598
                  auipc        t5, 674800
                  ori          a7, s9, -1054
                  xori         ra, s2, 1610
                  sra          a7, a1, t5
                  sltu         sp, a7, a0
                  sra          a6, tp, s4
                  auipc        a3, 1028947
                  srai         t2, a0, 3
                  auipc        a3, 392313
                  sub          ra, t1, t5
                  sltiu        tp, a7, 188
                  slti         a2, ra, 1274
                  addi         s0, t2, 743
                  srl          zero, zero, s0
                  xori         s7, gp, -1088
                  or           a2, zero, s0
                  xor          a4, t1, a3
                  srai         s7, t0, 3
                  ori          t4, a5, -1648
                  nop
                  addi         a0, sp, 1763
                  auipc        a1, 375331
                  ori          t1, t4, -169
                  nop
                  add          gp, s11, t0
                  sra          a2, t3, s7
                  andi         a7, sp, -589
                  nop
                  addi         a3, s11, -891
                  slti         t2, s2, -1305
                  sltiu        t4, s4, 203
                  and          s2, tp, gp
                  sra          s3, tp, a1
                  sub          s10, t1, s5
                  ori          a7, s5, 403
                  lui          t2, 1011715
                  srl          t0, s6, s4
                  sra          zero, a1, t0
                  slt          a7, a1, t5
                  addi         t3, zero, -1163
                  srli         s2, s5, 7
                  sra          sp, t3, s7
                  xori         a6, a0, 904
                  and          sp, s8, t3
                  add          a7, a0, sp
                  xor          t3, a1, t2
                  srl          a3, t0, s8
                  sra          a6, gp, s5
                  lui          a2, 444560
                  andi         tp, a2, -1568
                  srai         t2, t6, 3
                  or           a6, s0, s7
                  slli         t5, a5, 19
                  xori         s1, s4, -581
                  add          a4, t6, t3
                  sltiu        a0, a2, -244
                  slt          s6, t2, s2
                  ori          t2, sp, 267
                  xor          t2, s5, s0
                  nop
                  srli         s1, s1, 26
                  srli         s3, a0, 27
                  srli         s7, a3, 28
                  slli         t3, a1, 31
                  ori          s4, s3, -1055
                  and          a5, a5, s5
                  xori         t3, s1, 798
                  sll          s2, s6, s8
                  slt          a0, s2, s4
                  slti         s1, sp, -1311
                  lui          a7, 438268
                  srai         a2, a3, 7
                  ori          tp, t0, 286
                  lui          a6, 827709
                  sll          ra, a7, t2
                  slli         a1, t2, 20
                  sltu         a1, a5, s5
                  slti         ra, s2, 1299
                  slt          s9, s7, s9
                  andi         t1, t1, 1150
                  srai         a1, zero, 14
                  sltu         s6, tp, s6
                  andi         s1, a2, -447
                  xori         a0, s1, 416
                  srai         sp, t0, 10
                  slli         s10, s0, 19
                  xori         a7, tp, 1167
                  auipc        t3, 638134
                  sra          a7, t6, s10
                  sltiu        s0, t0, 493
                  andi         s1, t3, 1125
                  xori         a1, t1, 764
                  xor          s3, s4, s7
                  ori          gp, s9, 884
                  xori         sp, s10, 957
                  slti         s6, a7, 1083
                  srai         t3, a2, 25
                  slli         a2, s10, 21
                  slli         a7, a3, 3
                  add          s0, s1, a7
                  srli         zero, sp, 8
                  srli         t1, a3, 23
                  sub          a2, s5, zero
                  or           ra, t3, t4
                  andi         a4, s9, -1110
                  auipc        t1, 905858
                  sltu         s5, a4, t4
                  sra          a6, s10, s11
                  srli         s4, t4, 24
                  li           s3, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           s10, 0x29ca776a
                  li           s6, 0xffffffff
                  li           a7, 0x80000000
                  li           a3, 0x80000000
                  li           s7, 0x36432249
                  li           a1, 0xffffffff
                  li           s1, 0x80000000
                  li           t2, 0xffffffff
                  li           s2, 0x80000000
                  auipc        s3, 259913
                  addi         s6, t2, -238
                  nop
                  addi         a1, a1, -3
                  auipc        s7, 601017
                  add          s6, s1, a7
                  auipc        a1, 323186
                  sub          s10, t2, t2
                  add          s3, a7, a7
                  sub          s2, s1, t2
                  lui          s10, 694691
                  add          s1, s7, s7
                  lui          a3, 197738
                  nop
                  add          s7, a7, s7
                  add          s6, a7, s6
                  auipc        s7, 911769
                  addi         s2, s7, 86
                  lui          s7, 250837
                  sub          s2, a7, s3
                  addi         a1, s3, 705
                  add          s10, s2, s2
                  auipc        t2, 518658
                  sub          a3, s6, t2
                  nop
                  addi         a7, a7, 834
                  auipc        t2, 972938 #end riscv_int_numeric_corner_stream_17
                  addi         t3, zero, -1946
                  nop
                  sll          s3, s5, a6
                  xori         s3, s3, -2023
                  ori          a7, a0, 304
                  nop
                  auipc        s1, 1046012
                  or           s4, ra, a7
                  and          s10, s2, tp
                  sra          s2, a4, s6
                  or           zero, t6, a4
                  andi         t1, a1, 1229
                  ori          s10, tp, -971
                  sltu         s3, t6, tp
                  srl          t0, a2, s5
                  nop
                  sll          t2, sp, s6
                  and          t5, a1, s6
                  or           s1, a4, s5
                  addi         gp, s11, -124
                  srai         t4, ra, 30
                  srli         a7, t0, 16
                  slti         s0, t0, -1587
                  sltiu        gp, a2, 233
                  slli         t4, tp, 7
                  sub          a4, t1, t5
                  xori         s6, s11, -1125
                  nop
                  lui          s4, 832574
                  slti         a3, t5, 1810
                  slti         s10, s1, -1893
                  and          t1, zero, gp
                  or           zero, tp, s3
                  sub          s3, s8, s4
                  andi         s2, s5, 1821
                  sra          gp, a7, a1
                  srai         zero, a5, 10
                  sub          zero, s3, t6
                  nop
                  sll          s1, a3, s10
                  srli         a1, s8, 6
                  srai         s4, sp, 23
                  lui          t5, 132700
                  slli         s6, sp, 13
                  lui          t0, 241118
                  sra          s1, t0, t1
                  srai         a6, a4, 28
                  srai         a0, t4, 1
                  slt          a6, t5, s11
                  srl          s2, a7, a4
                  or           tp, s0, t1
                  srl          t5, t3, sp
                  sltu         gp, t4, s11
                  lui          t4, 526761
                  add          tp, sp, sp
                  srai         t4, tp, 24
                  and          sp, s2, a2
                  andi         s0, zero, -1303
                  srai         t2, s7, 13
                  sll          t4, ra, a7
                  and          a5, a0, a4
                  xori         s7, a0, -1742
                  ori          a6, s6, 1929
                  sltu         s4, gp, a0
                  xori         s1, a6, -821
                  sltu         gp, a1, a0
                  and          s0, s11, s6
                  nop
                  nop
                  auipc        s7, 341123
                  slli         t4, t0, 11
                  addi         ra, s9, -2003
                  sltu         s3, s1, s2
                  sub          a0, s2, s7
                  addi         s1, t3, -871
                  or           s5, s11, s9
                  and          s2, t5, t1
                  lui          a3, 1047652
                  lui          a6, 793872
                  auipc        t3, 29724
                  nop
                  srl          sp, a1, t2
                  slt          s1, s8, t5
                  xori         a5, a1, 799
                  srl          s0, a2, t2
                  srl          s10, a2, s9
                  ori          s7, t5, 494
                  slt          a2, gp, a2
                  andi         gp, s11, 1141
                  slti         s3, s8, 919
                  ori          s1, a2, 1281
                  addi         t4, gp, -70
                  srai         t4, t0, 17
                  srli         s3, s9, 5
                  addi         sp, zero, 1265
                  and          a5, ra, s0
                  ori          t5, s5, 1574
                  srli         a5, s10, 30
                  sub          s5, s3, t2
                  andi         s9, t2, 1080
                  ori          sp, a3, -1820
                  sub          s1, a6, t2
                  slti         t0, a0, -1905
                  ori          s4, tp, -759
                  ori          tp, t4, 15
                  ori          a6, a6, -77
                  ori          s7, a2, 1215
                  nop
                  srli         s5, t1, 9
                  andi         s9, s3, -1203
                  or           ra, s2, a2
                  addi         s10, ra, -463
                  or           s6, s10, t2
                  auipc        a0, 534561
                  or           s1, t5, s9
                  auipc        sp, 936485
                  xori         s9, a1, 1736
                  andi         s1, gp, 324
                  add          gp, s9, s6
                  xori         s4, ra, -1161
                  add          s7, s3, t5
                  sra          gp, t0, s0
                  xori         a0, t6, 11
                  slli         a2, s3, 22
                  ori          s4, s4, -29
                  srl          s2, t0, a6
                  sll          s4, t4, ra
                  sll          s5, s1, s2
                  sltiu        a2, t6, -1392
                  auipc        a5, 475114
                  sltu         sp, s1, ra
                  slti         t0, zero, -1814
                  sub          t3, sp, t6
                  ori          s0, a4, -761
                  sub          s5, s7, zero
                  add          a7, gp, tp
                  xor          s7, s10, zero
                  srli         s3, s2, 6
                  lui          a2, 92241
                  or           t3, s10, s6
                  ori          s1, s0, 657
                  sub          s9, tp, s1
                  xori         t1, a7, -1767
                  sll          s2, t2, zero
                  xor          ra, zero, s1
                  sub          t2, s10, a5
                  andi         s3, t5, 722
                  or           a2, s10, s7
                  sltiu        a7, s5, -997
                  srli         a3, zero, 7
                  auipc        s1, 566153
                  slt          s10, a5, a4
                  addi         a7, t6, 1335
                  srl          sp, s4, gp
                  add          t3, s3, a5
                  slti         a7, t5, -1970
                  lui          gp, 1000678
                  srai         a3, t0, 14
                  nop
                  nop
                  add          a4, s8, a5
                  and          s4, t1, ra
                  slti         t3, s4, 968
                  nop
                  srli         s4, t4, 2
                  ori          t1, s2, 301
                  slli         t4, t3, 15
                  slli         t2, gp, 17
                  add          a7, s1, s0
                  andi         a4, s6, 787
                  slt          tp, t5, t5
                  addi         sp, s7, 1578
                  ori          s0, a3, 675
                  add          s7, t1, s9
                  auipc        tp, 520529
                  ori          tp, s7, -387
                  lui          s4, 184100
                  sub          s9, s5, s9
                  slti         t2, s6, 240
                  auipc        a0, 643958
                  slt          s7, a4, s10
                  ori          s4, s2, 1015
                  xor          s2, a3, zero
                  srl          t4, a2, t4
                  sll          t4, t1, s5
                  ori          t5, t6, -227
                  andi         s10, t4, 1011
                  addi         zero, t5, -1294
                  srl          a7, s4, t3
                  slti         zero, s1, 138
                  auipc        a0, 482081
                  xori         zero, s2, 1163
                  add          a5, a1, a1
                  slli         s6, s7, 0
                  srli         s9, s8, 2
                  slli         a4, s11, 3
                  or           s1, s6, s5
                  auipc        t1, 455599
                  and          gp, sp, t6
                  xori         t0, gp, -1124
                  xori         gp, t3, -707
                  ori          t3, t5, 1314
                  auipc        s4, 740887
                  sll          s3, sp, zero
                  xori         a7, t3, 374
                  andi         a0, s4, 1241
                  xori         t0, t3, 1015
                  nop
                  sub          s0, s5, s0
                  sll          a1, t1, a5
                  slt          t3, tp, s7
                  add          s3, zero, s0
                  sub          a2, a3, tp
                  xori         t5, s8, -1220
                  sub          s9, a2, s5
                  and          tp, t2, s11
                  sll          ra, a6, sp
                  nop
                  sll          s0, ra, t1
                  lui          s4, 239824
                  sra          sp, t0, s6
                  sra          sp, s6, a0
                  addi         a7, t5, 509
                  sltu         tp, t3, tp
                  sra          s2, a6, s4
                  xor          s2, zero, t3
                  xori         a4, gp, -1443
                  sll          a1, t2, t6
                  sll          ra, s10, a0
                  nop
                  slti         s3, t2, -656
                  xori         s7, a3, -429
                  xor          tp, s9, gp
                  slli         a3, sp, 24
                  sub          gp, s5, ra
                  andi         t2, s6, -49
                  nop
                  auipc        s7, 634313
                  ori          zero, s7, 756
                  xor          s6, gp, a1
                  nop
                  slti         gp, s5, 1100
                  add          t0, s5, a5
                  sltu         a3, s11, a5
                  sltu         zero, s2, a1
                  xori         t2, ra, 32
                  sra          a0, a7, s1
                  auipc        a7, 93502
                  sll          gp, ra, s5
                  sll          s10, s6, s1
                  srl          s9, ra, a2
                  add          a6, zero, a2
                  and          t2, s0, s3
                  srli         a7, sp, 7
                  add          a6, t0, tp
                  sltiu        t5, t2, -1513
                  sra          s1, s1, s7
                  sub          s4, t5, t2
                  xori         a6, gp, -746
                  nop
                  ori          t2, t2, 563
                  srai         zero, s7, 7
                  add          a0, a4, s7
                  srl          t2, t1, s9
                  srli         s10, t1, 22
                  nop
                  xori         t3, tp, -1809
                  add          a3, a6, a5
                  ori          a0, s7, 1043
                  andi         s5, zero, 1184
                  ori          gp, s10, 1163
                  addi         s6, tp, 916
                  sra          s3, a0, a0
                  xori         t3, t3, 454
                  add          s4, s4, tp
                  srai         tp, a7, 10
                  slti         sp, ra, -748
                  nop
                  andi         s1, s4, 1802
                  addi         s3, a4, -185
                  andi         s4, t2, 304
                  add          s0, s6, t1
                  srai         a6, s11, 8
                  xor          s3, s8, t1
                  srli         t4, s6, 31
                  slli         s7, t4, 14
                  sltiu        a6, t1, 1640
                  xori         a2, s4, 1939
                  addi         t1, a4, 1560
                  sltu         t4, zero, s9
                  or           ra, s7, a2
                  andi         gp, gp, 1301
                  srl          a4, s11, a7
                  slti         zero, s9, 266
                  andi         a1, s1, 1259
                  srli         sp, gp, 23
                  nop
                  xori         s9, sp, 794
                  sra          zero, t3, a2
                  sll          t4, tp, a7
                  nop
                  slti         s10, a2, -1672
                  xor          t5, t6, zero
                  slt          a6, t4, sp
                  lui          t3, 580089
                  auipc        s4, 775912
                  andi         a1, gp, 1981
                  sltiu        t2, t6, 1307
                  sub          t5, a1, gp
                  or           t0, t2, s1
                  xori         s7, a6, 1978
                  andi         a2, s4, 949
                  xor          s0, s9, t1
                  nop
                  and          t2, t4, t2
                  add          t4, ra, zero
                  or           s2, s10, a4
                  sltu         s5, t0, ra
                  slli         ra, t1, 13
                  nop
                  sll          t1, s10, t0
                  nop
                  or           t3, s3, s10
                  and          a5, s5, s2
                  srli         s3, zero, 10
                  lui          t2, 679591
                  and          ra, s8, t0
                  sltu         s9, s4, zero
                  slt          t2, t0, s8
                  xor          t2, t4, s9
                  sltu         t4, a4, s0
                  addi         s7, s0, -1616
                  sra          s4, s0, s11
                  sra          tp, s1, s11
                  slli         a3, s9, 7
                  srli         s9, s6, 13
                  xor          t5, s7, s6
                  auipc        sp, 833681
                  sll          s5, a5, t6
                  sub          s1, a6, t3
                  lui          t4, 966544
                  add          a3, t1, t6
                  slti         a7, s7, 832
                  sub          tp, t3, s7
                  or           a0, a5, s2
                  slti         t4, zero, -1637
                  nop
                  srli         s7, s10, 12
                  sltiu        s2, s4, -128
                  sltiu        t5, s3, -340
                  lui          ra, 369157
                  addi         gp, s9, 769
                  srai         gp, a1, 9
                  xori         s3, gp, 1013
                  and          s10, a5, t5
                  auipc        a6, 604317
                  sltiu        s4, s5, -171
                  xori         s4, t1, 520
                  or           t0, s3, s10
                  sll          a6, s10, s11
                  slti         s1, a7, 653
                  sra          zero, s6, s3
                  sra          t3, s9, a2
                  addi         t1, t0, 78
                  sra          sp, s9, s2
                  ori          s1, t3, -193
                  srai         t2, t1, 24
                  sra          a7, tp, t0
                  add          s3, a4, a0
                  slt          a7, t6, a6
                  addi         t5, a3, -1346
                  sra          s2, s5, s4
                  nop
                  ori          a4, a7, 1275
                  ori          s5, a5, 520
                  slti         a5, s8, -1380
                  sra          t0, s1, s9
                  sub          tp, t4, t3
                  srl          gp, a5, s6
                  srl          ra, t6, s2
                  srai         ra, a2, 22
                  nop
                  add          s4, s4, t5
                  xori         a3, tp, 530
                  auipc        s6, 183228
                  srai         a2, a4, 9
                  lui          s1, 294955
                  srl          a3, a7, a7
                  auipc        a5, 579581
                  sra          s5, t0, gp
                  srl          t3, t0, a5
                  srl          s6, a0, s0
                  sltiu        a0, t0, 917
                  and          s7, s2, a3
                  slti         sp, tp, 201
                  sltiu        s7, a0, -1026
                  sltu         t3, t1, a6
                  srl          s5, gp, s8
                  sltu         a5, s3, t3
                  srli         s1, s4, 23
                  andi         t0, gp, 252
                  srli         zero, tp, 18
                  sra          gp, t0, a5
                  addi         zero, t6, -935
                  slli         zero, tp, 12
                  lui          s5, 275030
                  slti         t2, a3, -1563
                  sltu         a6, t5, t5
                  slt          t4, s2, s1
                  and          gp, t1, a6
                  and          s1, s7, s11
                  xor          t5, s8, t1
                  and          ra, s9, t4
                  xor          t3, s7, a7
                  ori          s3, s6, -118
                  addi         a1, a0, -1641
                  sltiu        a1, a6, -1149
                  nop
                  sub          ra, t2, a3
                  xor          s5, a2, s8
                  and          ra, a3, t0
                  xori         s4, sp, 162
                  nop
                  sltu         ra, t1, s2
                  lui          t1, 320772
                  sll          t2, tp, t1
                  srai         t0, zero, 6
                  ori          s2, sp, 1350
                  sltu         s1, s11, t2
                  sub          tp, s3, tp
                  auipc        s4, 455751
                  xori         s1, a7, -497
                  srai         t3, t2, 7
                  srli         t5, a4, 13
                  addi         zero, a5, 2033
                  slli         s0, s8, 5
                  slti         s7, a4, -44
                  lui          s10, 667273
                  slli         s10, sp, 29
                  sub          s7, tp, s11
                  auipc        a1, 884592
                  srai         a4, sp, 22
                  and          gp, a4, t5
                  sll          t2, zero, t2
                  slt          ra, s10, t0
                  slt          tp, s3, s5
                  addi         t2, s6, -738
                  and          a3, a1, t2
                  ori          a5, t0, 939
                  nop
                  sltu         a3, sp, t5
                  and          t5, a5, a7
                  addi         s5, s1, -1997
                  xor          t1, a4, a5
                  auipc        s5, 284456
                  or           s1, gp, s2
                  sll          tp, a0, sp
                  add          t4, sp, zero
                  srai         s3, a7, 31
                  addi         ra, s9, 1368
                  xori         a1, a4, 1820
                  addi         t1, s0, 124
                  add          a3, a7, s5
                  srli         gp, t4, 5
                  xori         a2, s11, -1722
                  add          t1, ra, t6
                  auipc        s5, 350119
                  sll          s6, s5, t1
                  slt          s2, s7, s2
                  ori          t0, tp, 618
                  sub          a4, t3, tp
                  slt          s5, a3, a7
                  srl          a5, s1, t2
                  slli         a6, t2, 12
                  lui          s9, 1019983
                  ori          s4, ra, 1696
                  sub          a3, t5, s5
                  xori         s7, t1, -1543
                  srli         t0, t1, 10
                  sltu         a5, s9, s0
                  lui          s4, 93620
                  or           t3, s2, t3
                  sra          tp, a3, t0
                  sll          t5, ra, s5
                  lui          t4, 165817
                  slti         a2, sp, 267
                  srl          a4, s1, a7
                  and          a4, a4, zero
                  auipc        a7, 759163
                  and          s4, s9, t2
                  sra          a5, t1, s4
                  xori         s7, t2, -429
                  add          t0, a4, s4
                  sltu         a6, a2, a2
                  auipc        t5, 716507
                  and          t1, t4, a0
                  andi         a0, a0, -1972
                  sub          t1, sp, a5
                  andi         s1, a7, -535
                  andi         a1, zero, 407
                  srl          t2, s1, t1
                  addi         t5, s3, -977
                  xori         a1, zero, -76
                  sltu         t5, s4, gp
                  slti         s10, t2, -575
                  sltu         gp, t1, zero
                  addi         a2, s9, 1792
                  or           t5, a4, a4
                  auipc        t3, 943263
                  srai         gp, s11, 17
                  and          s6, a0, s1
                  slt          s7, s9, s9
                  or           a2, tp, tp
                  ori          s6, s3, -2041
                  sll          ra, a2, s10
                  sub          s0, s6, s3
                  lui          ra, 327284
                  add          s1, s4, a1
                  lui          s9, 1028043
                  add          s7, s11, a2
                  sra          t3, s0, s0
                  nop
                  sra          a6, ra, t5
                  srai         s3, s1, 14
                  sra          a1, t3, s9
                  slti         gp, a3, -965
                  addi         s4, a4, -610
                  srli         a6, a4, 26
                  lui          s0, 30937
                  addi         a7, a6, 317
                  slti         a6, s3, -1176
                  add          t4, s5, s6
                  and          t1, s7, gp
                  or           a3, tp, s1
                  slli         s6, a1, 16
                  xor          s4, s8, s4
                  ori          a0, a6, 1986
                  srai         s2, s0, 16
                  sra          t2, s5, s7
                  sltu         t0, s6, t1
                  srai         a5, ra, 31
                  srl          a5, s3, t5
                  srli         a4, s9, 22
                  add          s3, a1, a6
                  slt          t2, t4, s3
                  slt          a0, sp, a6
                  slti         s4, s4, 1763
                  or           ra, sp, s8
                  slti         s1, s6, 1733
                  lui          a2, 557526
                  or           a6, t5, s3
                  addi         a0, a3, -1399
                  sub          tp, sp, t6
                  slli         sp, a4, 10
                  add          t5, a3, s6
                  lui          sp, 995568
                  slli         s5, zero, 17
                  sltu         a2, a1, sp
                  and          t5, s9, a2
                  srai         a2, t1, 29
                  xori         s3, a4, -1171
                  sll          zero, t1, ra
                  srai         s1, a3, 23
                  add          sp, s5, s4
                  sltu         t4, a2, a4
                  andi         t5, s8, 1678
                  sltu         t5, s11, a5
                  xori         t2, a2, 1808
                  sub          t0, a0, s10
                  slt          a5, gp, ra
                  sll          s5, t4, s1
                  addi         s5, a5, 1693
                  andi         a4, zero, -541
                  ori          s0, s4, 843
                  nop
                  nop
                  lui          sp, 249821
                  srl          t1, s4, tp
                  sll          sp, a1, gp
                  nop
                  slti         t3, a5, -547
                  srli         tp, t2, 0
                  sra          gp, s4, a7
                  nop
                  srl          s9, s8, zero
                  xor          tp, zero, a7
                  nop
                  sltiu        s0, s3, -1121
                  srli         tp, s3, 30
                  nop
                  addi         s10, s1, 1837
                  slli         s1, t4, 2
                  srl          a0, t6, s2
                  or           t5, a7, a2
                  sll          s10, tp, s10
                  slt          s5, ra, a3
                  xor          a2, s9, s6
                  srai         a3, a5, 9
                  lui          ra, 541556
                  xor          zero, a7, s2
                  and          a3, a6, t3
                  auipc        s4, 23693
                  slti         t3, a5, 719
                  addi         s6, a6, 1353
                  sltu         s1, t2, s4
                  add          a1, t1, t5
                  addi         a0, a2, 777
                  slli         s4, s8, 16
                  lui          t3, 284264
                  srai         t2, t1, 2
                  srai         gp, a0, 19
                  add          sp, tp, ra
                  andi         sp, s6, -889
                  srl          tp, t1, tp
                  sra          s10, s6, s7
                  slti         a2, s11, 1793
                  slti         a1, t2, 1923
                  sub          t1, a0, a2
                  auipc        s2, 862753
                  sltiu        tp, t6, 719
                  auipc        t4, 300385
                  sub          zero, s10, s7
                  sltu         a6, sp, t5
                  andi         a1, t4, 14
                  xor          a5, t5, gp
                  ori          a6, s11, -1846
                  add          sp, s3, s6
                  nop
                  sll          a2, gp, s1
                  sltu         gp, t5, gp
                  lui          a5, 618845
                  andi         ra, s5, -1043
                  and          s2, s1, a0
                  addi         s2, s4, -770
                  lui          ra, 453929
                  srli         a0, s0, 5
                  sltu         a5, s2, a3
                  add          t3, s8, t3
                  srai         a7, s2, 31
                  srl          t4, t0, s7
                  srli         a1, t1, 3
                  srai         t5, sp, 4
                  auipc        gp, 970742
                  xori         s3, s3, -1972
                  addi         t3, s5, 1866
                  or           s6, a5, t1
                  sltiu        s9, s0, -1259
                  srli         s0, a6, 4
                  srli         ra, sp, 0
                  srai         s4, gp, 9
                  sltiu        tp, a3, -194
                  addi         a5, a6, -633
                  lui          a2, 933150
                  sltu         t2, t0, a6
                  srai         a1, s8, 24
                  xor          a4, s1, t0
                  slli         s6, t2, 19
                  slt          a0, s11, tp
                  lui          t5, 742049
                  ori          s2, a3, -847
                  sra          t0, a5, a0
                  addi         s2, s7, -1096
                  sltiu        gp, t6, -376
                  add          zero, a0, sp
                  ori          a5, s3, 1655
                  and          s5, s0, zero
                  sltiu        s9, s2, 1167
                  slt          sp, s11, t2
                  slli         tp, a1, 14
                  sltiu        t4, t4, 537
                  sltiu        s6, s3, -793
                  andi         a4, a7, -1106
                  srl          s9, zero, s2
                  xori         gp, s10, -322
                  sra          t4, a2, a4
                  sub          s9, s2, a0
                  slti         s2, a0, 1918
                  slti         s9, s2, -1848
                  ori          t4, a1, 2001
                  or           t3, t0, s4
                  srli         s1, s5, 3
                  and          a3, s2, a6
                  xor          t4, tp, a0
                  srl          t3, ra, s9
                  or           a1, zero, s5
                  sll          s1, a5, s9
                  srl          t2, a1, s3
                  slt          tp, ra, t4
                  lui          t3, 377508
                  lui          t5, 516629
                  or           s0, s6, s11
                  andi         s4, s10, 11
                  sub          s9, s2, t5
                  slli         a5, s1, 17
                  auipc        t4, 167881
                  addi         s4, t2, -1193
                  sll          t3, s1, t0
                  slt          zero, t6, t2
                  xori         zero, s1, -1874
                  ori          gp, a4, 880
                  sub          gp, s2, t2
                  and          t2, ra, ra
                  sll          s0, s8, a1
                  andi         s7, a5, -841
                  srli         s1, a7, 21
                  lui          s2, 880681
                  addi         s0, a0, 258
                  addi         s5, t5, 1439
                  and          s9, gp, s8
                  sra          gp, sp, s3
                  sltiu        t1, tp, 962
                  addi         s0, s6, 956
                  xor          t5, s1, t2
                  sll          s1, s11, a3
                  srli         s2, s3, 11
                  addi         t1, a3, 1018
                  xori         a2, zero, -1968
                  slli         a2, s10, 24
                  sub          s5, a6, a3
                  lui          ra, 321122
                  srli         sp, gp, 5
                  slti         s2, a2, 125
                  slli         s3, a2, 25
                  nop
                  slt          gp, gp, a7
                  slti         s7, s6, -1933
                  sll          a4, a7, t0
                  and          t1, s4, s6
                  slli         s6, a0, 24
                  sra          t0, gp, t1
                  srli         t0, a0, 26
                  add          s3, sp, s11
                  xor          a2, s10, a7
                  sll          t0, s11, t5
                  sltu         a0, a2, s3
                  sll          a5, a6, s8
                  and          s0, s4, s3
                  slli         zero, s7, 4
                  nop
                  addi         s3, a4, 233
                  srai         t3, t0, 9
                  sll          s2, t5, t5
                  srai         zero, a2, 17
                  sltu         t1, s1, s0
                  add          sp, a3, a4
                  nop
                  auipc        s4, 677162
                  add          t2, s4, a5
                  nop
                  and          s3, s5, s4
                  xor          a6, gp, a6
                  xori         s5, s2, -1587
                  xori         s1, t1, 1877
                  xor          a1, s2, t0
                  srli         s4, t2, 29
                  sub          ra, t1, s2
                  xor          t5, zero, s11
                  slti         zero, t2, -756
                  sltu         sp, t4, s3
                  slt          s5, t5, t6
                  or           s10, a5, t5
                  addi         s9, s6, -139
                  or           tp, s4, gp
                  sltiu        t4, tp, 562
                  slti         a2, a2, 107
                  srl          gp, a4, t2
                  nop
                  or           a5, t6, ra
                  lui          tp, 306988
                  xori         sp, s1, 515
                  sra          s9, a1, tp
                  add          a6, s9, a7
                  slli         t3, s10, 10
                  srl          gp, t6, t0
                  slli         a2, t1, 9
                  sll          a2, s2, a4
                  ori          s0, zero, 1055
                  and          t1, s2, t2
                  srai         a7, a0, 31
                  sub          s0, s5, t2
                  addi         a3, a0, 187
                  nop
                  srl          t3, sp, s8
                  srai         t0, s6, 30
                  xori         a0, t2, 1375
                  addi         t2, zero, -1658
                  slt          t1, s11, s9
                  or           s4, sp, t0
                  sub          t0, t1, s9
                  auipc        s4, 938292
                  ori          s2, s9, -1430
                  and          ra, a7, s3
                  sra          t1, a7, s3
                  sra          s10, a6, a0
                  andi         s9, a4, 1740
                  slti         tp, s3, -1810
                  ori          t4, s1, 797
                  add          tp, t3, ra
                  sltiu        t5, ra, -1708
                  auipc        s1, 674731
                  andi         sp, s7, -189
                  lui          s9, 199231
                  or           s6, s6, gp
                  and          s3, s10, a0
                  xor          t3, s10, a5
                  srai         a2, s9, 6
                  andi         s0, s3, 1763
                  slt          s1, sp, s5
                  srli         t2, t0, 4
                  sll          s4, a5, a1
                  xori         ra, sp, 261
                  or           ra, a0, s5
                  or           ra, s3, s3
                  or           s5, a0, t6
                  sra          s4, s0, s11
                  xor          t1, t5, a3
                  nop
                  sra          zero, t0, t6
                  srli         s3, sp, 17
                  srai         a0, s3, 11
                  auipc        s2, 522305
                  lui          gp, 436595
                  lui          gp, 940627
                  lui          s6, 170447
                  sub          s10, a4, t4
                  srl          s4, a0, t1
                  sltiu        a2, t6, -581
                  andi         s4, a7, 1852
                  srli         tp, sp, 30
                  xor          t4, s7, s9
                  sra          s1, s0, s5
                  auipc        a7, 338052
                  slt          s10, s9, a5
                  xori         t0, s0, -1295
                  ori          a1, a3, -1778
                  nop
                  sub          s3, t0, s10
                  srl          t2, gp, s5
                  lui          tp, 686312
                  slli         t3, a0, 27
                  srl          s1, a7, a5
                  lui          t5, 168361
                  addi         gp, s0, -234
                  nop
                  lui          sp, 475487
                  ori          t2, a7, 1004
                  sltu         s9, zero, s6
                  auipc        s0, 21317
                  andi         a4, a5, 1050
                  srli         s9, s8, 25
                  xori         s4, t5, 1736
                  slli         t0, a3, 30
                  sltiu        zero, a7, -803
                  slti         zero, ra, -1561
                  xor          t0, a3, ra
                  auipc        s6, 417340
                  addi         t5, t6, -1114
                  andi         s3, tp, -9
                  andi         s7, s3, -268
                  or           gp, a6, s0
                  add          a1, t6, s0
                  sltiu        s2, a2, -1369
                  or           a0, a6, tp
                  sltiu        sp, s8, -1733
                  lui          s5, 474441
                  srl          tp, zero, s5
                  ori          s0, t3, -1849
                  nop
                  and          a0, s9, sp
                  ori          tp, s11, -1434
                  xori         sp, s6, 570
                  sub          s0, a0, t6
                  add          t0, a6, t5
                  srai         gp, s11, 14
                  addi         a0, a0, -1898
                  ori          t3, a2, -1532
                  sra          gp, t4, t5
                  sra          s10, s7, zero
                  ori          a3, zero, 606
                  srli         s7, ra, 12
                  slt          s1, sp, a0
                  srl          a7, s6, s9
                  srai         s7, gp, 27
                  or           t3, s9, a0
                  sltiu        t4, t2, 335
                  nop
                  sra          s6, a5, s9
                  srai         s0, sp, 23
                  ori          s6, s2, -1696
                  srai         s6, s9, 23
                  or           s6, s3, gp
                  sra          tp, s1, zero
                  nop
                  lui          zero, 982465
                  and          s0, a4, s7
                  slli         s5, a2, 18
                  slli         t0, s6, 10
                  andi         t0, s5, 729
                  srai         t3, a2, 29
                  sltiu        s1, a7, -1782
                  auipc        zero, 634339
                  sub          t0, zero, s7
                  auipc        a4, 559299
                  sll          t4, s6, t4
                  sra          s0, s4, s5
                  ori          t4, a0, 141
                  srai         s7, a0, 7
                  xor          s1, t3, a5
                  xor          t3, s3, s6
                  add          a3, t2, a3
                  addi         s3, a0, -1956
                  sll          gp, t4, a4
                  srai         s6, t5, 9
                  addi         a2, t3, -1439
                  add          a5, a6, a3
                  srai         s4, a4, 14
                  srl          s9, s4, s7
                  add          a5, t1, a4
                  lui          s0, 337072
                  srl          a2, s4, s0
                  srai         a1, s2, 30
                  slti         a5, gp, -1800
                  slli         a4, zero, 27
                  add          t3, t3, t3
                  lui          sp, 870122
                  srl          a1, t5, a5
                  add          s5, s9, s6
                  add          t0, a6, tp
                  xori         t1, ra, 1316
                  sltiu        ra, gp, 1339
                  lui          s3, 729968
                  nop
                  xor          s10, s10, a1
                  srli         t0, zero, 21
                  or           s1, t1, a2
                  add          s9, s0, ra
                  or           a2, a6, s1
                  xori         s4, a1, -1528
                  add          a7, t0, sp
                  slti         t1, a4, 1605
                  slti         a1, ra, 1691
                  xori         s1, sp, -1005
                  and          s0, s2, gp
                  sltiu        a3, gp, 331
                  xori         s4, t4, 461
                  and          tp, t6, s5
                  slt          s5, s5, s2
                  srli         t3, s11, 26
                  sub          s3, a2, s6
                  srli         s6, s4, 0
                  sltiu        ra, a3, 284
                  sltu         t4, s5, a0
                  add          t1, a0, a2
                  or           s1, a3, a5
                  sltiu        zero, a3, -166
                  srl          a1, t4, a3
                  auipc        s9, 19122
                  slt          t5, tp, a3
                  addi         gp, t2, -386
                  add          s7, s8, s9
                  nop
                  xori         a0, s5, 1519
                  or           a4, s10, t5
                  and          tp, t2, a1
                  srl          s0, a7, t0
                  auipc        s9, 839395
                  srai         a6, s1, 16
                  xor          s10, s3, a0
                  or           s6, s8, s7
                  sub          a3, a2, s10
                  srl          t4, zero, a5
                  add          gp, a4, a4
                  andi         a4, a5, -1703
                  auipc        a5, 537871
                  and          s6, s4, tp
                  sltu         t5, a4, t0
                  sub          s4, a5, t6
                  xor          s3, s2, s5
                  xori         gp, gp, -851
                  sub          gp, a6, s7
                  xor          s9, s1, t6
                  lui          t1, 880349
                  slti         a6, t0, 1997
                  auipc        t2, 569838
                  slti         a7, s11, 487
                  nop
                  ori          t4, a3, 184
                  or           a0, a4, t5
                  slli         t0, s0, 9
                  xori         tp, t3, 1099
                  slti         s0, t2, -1391
                  or           a2, a5, zero
                  srl          zero, a2, a1
                  sltu         t0, t2, s7
                  sltiu        s10, a0, -1643
                  srli         s7, t4, 13
                  andi         tp, t1, -1875
                  add          t2, s6, zero
                  xor          a5, a2, t1
                  sra          s10, t0, a7
                  srai         sp, gp, 19
                  srl          t2, s7, t1
                  addi         s10, t4, -1306
                  sra          t0, a7, ra
                  slti         a4, ra, -513
                  ori          t4, t1, 967
                  li           a0, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           ra, 0x45cbb9a9
                  li           a3, 0xa428024a
                  li           s10, 0x80000000
                  li           a5, 0x0
                  li           t1, 0x0
                  li           s2, 0xaedefc32
                  li           a6, 0xffffffff
                  li           sp, 0x80000000
                  li           a2, 0x0
                  addi         a2, a0, 979
                  add          a2, a6, s2
                  lui          s10, 963212
                  sub          ra, a3, a0
                  sub          a0, ra, a0
                  auipc        ra, 301457
                  lui          a6, 83083
                  nop
                  nop
                  auipc        a3, 1008209
                  sub          s2, a3, a6
                  nop
                  add          s2, s10, s2
                  add          a3, s10, ra
                  lui          s10, 334787
                  lui          a3, 379836
                  addi         t1, a5, -436
                  auipc        a5, 778509
                  lui          a3, 139275 #end riscv_int_numeric_corner_stream_5
                  slli         s0, t5, 26
                  xori         gp, s8, -1938
                  auipc        s4, 71709
                  addi         a0, s11, 865
                  xor          a5, s1, a5
                  sra          t5, t4, s0
                  xori         sp, s2, 253
                  nop
                  ori          t2, zero, -523
                  srli         zero, sp, 6
                  srl          a1, t3, ra
                  slli         s7, a4, 20
                  slli         a3, s2, 22
                  slli         s2, t1, 2
                  lui          a4, 196082
                  ori          s3, sp, -23
                  auipc        s4, 736702
                  sltu         t2, a1, s5
                  addi         tp, t5, 1825
                  or           s7, t0, s1
                  sltu         zero, t0, a2
                  sll          s5, s6, s5
                  auipc        t3, 843947
                  and          s2, t4, s6
                  srli         s1, s7, 20
                  andi         t5, a7, 97
                  srai         s9, s2, 6
                  slli         t3, t1, 9
                  addi         ra, zero, 1778
                  srli         a4, s7, 24
                  slti         a5, t0, -1944
                  sll          a2, a7, s2
                  sll          a4, s8, a5
                  addi         a7, t3, 720
                  sub          t2, t2, s5
                  addi         gp, a2, 1146
                  sltu         t2, a1, s4
                  sltiu        s4, t3, 653
                  addi         t4, t5, -452
                  slli         a3, t0, 25
                  slti         s2, s4, 1194
                  sll          s7, a6, s11
                  ori          a2, tp, 1323
                  slt          t2, tp, ra
                  xor          a7, t5, zero
                  slli         s5, a0, 28
                  sra          s7, s5, ra
                  andi         zero, s2, 1500
                  and          t5, s5, s2
                  sltu         t2, s9, t2
                  addi         s7, zero, -919
                  srai         t2, s6, 24
                  add          a7, a5, sp
                  slti         a6, s1, 2031
                  sltu         a3, t1, sp
                  addi         t5, t3, -184
                  add          t3, t6, s1
                  sra          s5, s10, t0
                  sll          a2, s5, ra
                  sll          zero, s0, gp
                  auipc        a0, 360313
                  srl          s4, t3, a0
                  xori         gp, a2, 163
                  sltiu        t5, t6, -1746
                  auipc        s2, 5406
                  srai         t4, a4, 9
                  xori         a3, a4, -567
                  sub          s5, s11, s10
                  sra          s7, t4, s7
                  auipc        s9, 284754
                  lui          s5, 192680
                  srli         t5, a1, 28
                  srli         s9, t2, 11
                  auipc        s10, 536628
                  slli         s10, a0, 2
                  srli         s0, t3, 14
                  sltu         a0, a1, a5
                  lui          t3, 498351
                  slt          s7, a4, s1
                  sltiu        a1, ra, -229
                  auipc        a6, 28809
                  srli         s2, a0, 30
                  or           s3, s4, t6
                  and          t2, s4, tp
                  sltiu        t1, a4, 1913
                  andi         t0, t5, 521
                  sub          a3, a4, t0
                  andi         t1, s1, -1871
                  and          t1, t5, a5
                  add          gp, gp, a5
                  li           s10, 0x80000000 #start riscv_int_numeric_corner_stream_4
                  li           ra, 0xcc33d9eb
                  li           s4, 0xffffffff
                  li           a1, 0x0
                  li           a6, 0x0
                  li           s0, 0xffffffff
                  li           t5, 0x80000000
                  li           s7, 0xffffffff
                  li           a2, 0xffffffff
                  li           s9, 0x85dadd90
                  auipc        s0, 488268
                  auipc        s7, 1005822
                  auipc        ra, 322747
                  nop
                  nop
                  lui          s0, 473235
                  auipc        s10, 255782
                  lui          s4, 533991
                  auipc        a1, 37620
                  lui          s0, 976978
                  lui          s9, 990306
                  nop
                  add          ra, s7, s0
                  auipc        s0, 915112
                  auipc        a1, 907783
                  add          s4, a1, a6
                  sub          t5, t5, s4
                  auipc        a1, 1034204
                  add          s9, ra, a1 #end riscv_int_numeric_corner_stream_4
                  sra          zero, t1, s6
                  add          s6, t1, s7
                  xori         gp, s4, -663
                  slti         t3, a4, -1955
                  xori         t2, a4, 1390
                  and          t0, t4, tp
                  sll          tp, s3, a2
                  sll          s2, a0, s5
                  nop
                  xor          s1, t0, a7
                  or           t1, zero, s0
                  slt          s7, a2, s5
                  xori         s0, s10, 1715
                  sra          t3, t0, t2
                  sltiu        s4, a5, 1438
                  srai         s2, t2, 3
                  sub          a2, a2, t5
                  andi         t0, a5, 703
                  andi         s6, s6, 915
                  xori         t4, t1, -351
                  sub          s6, t1, t5
                  addi         a3, a2, -785
                  andi         t2, s3, 644
                  srai         s4, a7, 21
                  ori          s9, t6, -261
                  slli         s0, s11, 6
                  sltiu        s1, s3, 363
                  addi         a0, t1, 1876
                  sub          t5, s10, tp
                  nop
                  sltu         a1, t1, a1
                  slti         a5, s11, 616
                  srl          a4, s4, a4
                  sub          t5, a3, s1
                  lui          a3, 170429
                  xori         a0, s11, 706
                  addi         a7, a2, 1337
                  srai         s0, t0, 31
                  auipc        a7, 129495
                  slti         t5, a0, 918
                  xor          s1, a4, zero
                  xori         s6, s3, -1854
                  nop
                  auipc        a6, 514116
                  addi         s1, s7, 467
                  nop
                  nop
                  sra          s5, t1, zero
                  sltiu        a3, s10, 200
                  xor          t3, gp, a7
                  xori         s4, s11, -1717
                  andi         s4, s9, 543
                  srl          a5, s10, s2
                  sltiu        t4, a7, -201
                  srai         ra, s0, 19
                  slt          s6, t1, s7
                  andi         a5, a6, -512
                  srli         t1, s10, 2
                  sltiu        s3, s1, -131
                  addi         s6, t3, 1983
                  srai         a0, s4, 7
                  sub          t3, ra, s6
                  auipc        s10, 455445
                  ori          s3, t4, 1552
                  lui          s1, 918350
                  or           a5, t0, s2
                  slt          gp, gp, gp
                  andi         t0, s6, -1957
                  slti         t4, a7, -1586
                  ori          s10, t4, 1064
                  lui          s1, 962162
                  lui          sp, 552050
                  sra          s4, t6, s1
                  sltu         s5, t1, t1
                  addi         s3, s5, -1759
                  lui          a6, 53000
                  srl          t0, s8, gp
                  andi         zero, a0, 1160
                  auipc        a0, 992935
                  sra          s9, a0, ra
                  sltiu        s2, a7, 87
                  sub          t1, s8, t0
                  slti         t0, t5, 178
                  and          zero, a5, s8
                  slt          s2, zero, t3
                  sltiu        a0, t3, 122
                  srli         zero, s4, 10
                  srai         s5, t6, 10
                  slti         ra, tp, -837
                  lui          s2, 563745
                  sub          s3, ra, t3
                  srai         s2, a5, 26
                  sll          a7, a1, s0
                  ori          t3, a7, 1466
                  andi         s10, s8, -812
                  srl          s0, s4, s9
                  slli         a0, t0, 9
                  and          t5, a6, sp
                  sra          t1, a0, s9
                  srai         t0, a7, 30
                  add          a2, t2, s0
                  nop
                  slti         s10, a3, -160
                  sltiu        a3, s9, 715
                  lui          a1, 840313
                  addi         s3, s8, -1643
                  nop
                  ori          gp, t3, 573
                  or           s10, s8, s0
                  lui          a7, 722962
                  sub          t0, s6, s7
                  ori          t0, t2, 509
                  sltiu        a4, s1, 2024
                  xor          s10, t4, s2
                  add          a6, t2, a7
                  ori          a3, s11, -148
                  sltiu        tp, sp, 235
                  addi         t2, a3, 151
                  ori          zero, a6, -1287
                  sub          t2, s1, a7
                  srai         s10, s10, 25
                  sltu         zero, t6, zero
                  xor          s1, a3, t1
                  or           s7, t1, a4
                  slt          s5, t4, t2
                  andi         t5, t4, 1512
                  lui          a1, 586786
                  slli         zero, s3, 12
                  lui          t3, 73791
                  andi         a1, a2, 560
                  auipc        s9, 753842
                  slt          a5, a7, s7
                  sub          s2, t0, t2
                  lui          t0, 133211
                  addi         a5, a5, -520
                  sltiu        s4, s10, 1339
                  lui          a3, 262013
                  slli         gp, a6, 30
                  auipc        s5, 13948
                  sra          s4, t2, sp
                  or           ra, s5, t5
                  slt          sp, a7, s7
                  auipc        t5, 574094
                  addi         t1, s6, 164
                  auipc        t3, 975773
                  andi         tp, a6, 1631
                  nop
                  xor          t3, a7, s3
                  srai         sp, s6, 18
                  add          s9, a0, s8
                  srai         a7, a2, 13
                  sltu         a1, a1, a5
                  slt          a0, s8, t3
                  andi         s9, t4, -637
                  xor          t2, ra, s8
                  lui          s0, 433677
                  slti         s10, s4, -670
                  sltiu        s4, s6, 1130
                  sltiu        a0, a4, -1812
                  srl          s7, t6, a1
                  sub          s10, a0, s4
                  slt          s5, a7, s8
                  xor          a1, a0, sp
                  xori         a5, s6, 1191
                  slt          a0, s3, s1
                  andi         s4, t1, -499
                  lui          s0, 761512
                  sll          t1, s2, sp
                  slt          s5, s3, t4
                  sra          s6, t4, a1
                  slt          sp, s1, s3
                  srai         s2, a6, 28
                  addi         a4, s3, -1639
                  slt          s0, s9, s0
                  sll          a0, t6, a5
                  slti         t1, t0, 1947
                  addi         a7, sp, -1614
                  lui          gp, 19612
                  lui          a1, 124245
                  andi         s6, sp, 1859
                  sltiu        s10, s6, -401
                  srli         tp, a6, 14
                  sra          gp, a1, tp
                  sltu         s4, s10, ra
                  slt          t1, sp, gp
                  srai         a5, t3, 19
                  lui          s1, 145641
                  ori          zero, s4, 719
                  sra          a4, t6, s5
                  auipc        s2, 958684
                  lui          s7, 430367
                  slti         s10, a1, 594
                  slli         zero, s11, 30
                  sll          ra, s2, a2
                  sltiu        s3, t5, 1001
                  sub          a5, s8, s2
                  srai         tp, t1, 13
                  xor          s0, a4, a7
                  or           t2, t4, a1
                  sra          t2, t4, s7
                  auipc        s0, 286149
                  srai         t3, t0, 29
                  nop
                  slt          a5, zero, s6
                  and          t1, a2, s0
                  xori         t0, t2, -913
                  addi         t0, gp, 514
                  or           s5, s2, zero
                  sub          zero, s0, t2
                  slli         a5, s3, 22
                  sltiu        s9, zero, 1398
                  srai         s10, gp, 9
                  add          s1, s4, t5
                  ori          s9, s6, 1124
                  slti         t5, a1, 44
                  andi         a3, a2, -861
                  xori         a5, s3, -166
                  sub          a2, a4, a4
                  sltu         s3, zero, s4
                  srli         sp, t3, 27
                  or           ra, tp, s7
                  sll          s10, a4, s6
                  slti         t2, s1, 1845
                  slt          t0, a1, ra
                  sra          t0, t4, s5
                  add          s10, s8, ra
                  slti         a0, a3, 438
                  xor          sp, t4, gp
                  slt          a6, s8, s2
                  andi         sp, a2, -1455
                  slti         s1, t2, -1584
                  ori          t4, sp, -1191
                  srli         tp, s6, 31
                  sra          s5, t4, t6
                  sltu         s0, tp, s3
                  add          s3, a2, a2
                  sub          a1, s10, t4
                  addi         s1, s0, -70
                  slt          t4, gp, a2
                  add          a1, t1, t2
                  xor          t5, t1, a2
                  xor          s2, s1, a2
                  sltu         s10, t5, a7
                  sra          t3, t4, s0
                  slli         ra, s7, 21
                  addi         a7, s11, 1123
                  slti         a2, a5, 778
                  lui          a4, 282671
                  or           s1, t3, a0
                  auipc        a1, 648117
                  srli         s7, s9, 1
                  sltiu        a6, s3, 715
                  addi         s4, s7, 174
                  slti         a1, a3, -884
                  lui          a7, 284227
                  slti         t2, t5, 275
                  srl          t0, a0, t5
                  lui          sp, 173373
                  lui          s0, 353036
                  sltu         zero, s11, sp
                  nop
                  slt          t1, s1, a1
                  srai         s6, s8, 5
                  lui          a3, 810254
                  or           a7, a1, a2
                  srai         s6, ra, 7
                  srai         t3, s3, 13
                  ori          s1, gp, 365
                  srai         gp, t5, 1
                  sltiu        gp, sp, 152
                  auipc        a7, 500169
                  sll          a6, a2, s2
                  slt          s9, s6, s10
                  auipc        s6, 581837
                  xori         s9, zero, -119
                  sltu         a5, s5, ra
                  srai         s9, gp, 9
                  ori          a7, s1, -1630
                  slti         a6, a7, -1094
                  sub          a2, s1, s5
                  slli         t0, t0, 27
                  lui          t1, 369190
                  sltiu        s4, s4, -556
                  srl          s3, t4, s10
                  xor          t4, s6, s10
                  srai         a5, t6, 13
                  sltiu        a3, s1, 1107
                  sll          s7, s11, s6
                  or           s0, gp, a0
                  slt          sp, a3, tp
                  slt          s9, s6, t1
                  auipc        tp, 64999
                  addi         a6, ra, 862
                  sltu         a3, a0, s9
                  slli         sp, s1, 23
                  sra          s6, t2, s4
                  srli         s10, s1, 31
                  andi         tp, tp, 280
                  slli         s7, t4, 28
                  sltu         s10, s9, s11
                  and          t1, s0, a3
                  srai         sp, t3, 23
                  slti         a5, a7, 199
                  addi         t3, s9, 1050
                  slt          s5, sp, a5
                  or           ra, a5, ra
                  xor          gp, a1, a4
                  slti         s0, a3, -1368
                  sltu         a6, a2, s2
                  xori         sp, t6, 71
                  slt          a4, a1, t1
                  xori         s7, gp, -650
                  andi         s9, s2, 880
                  xori         t2, a3, -881
                  lui          a6, 135880
                  slti         gp, s7, -413
                  srai         s1, t1, 13
                  addi         a3, t0, 544
                  nop
                  sub          gp, tp, s7
                  srli         s3, t5, 21
                  andi         s9, a5, -912
                  or           s1, a6, a3
                  sra          s5, t6, t1
                  slti         s1, a2, 237
                  slti         a3, s5, -900
                  sltiu        a6, s8, -1209
                  auipc        zero, 929324
                  auipc        sp, 790995
                  xor          t0, s7, zero
                  lui          sp, 654874
                  slli         a5, s5, 21
                  sra          t1, s2, s11
                  xori         a5, t0, -2047
                  srli         t1, a4, 14
                  auipc        t0, 843815
                  srli         sp, tp, 26
                  or           sp, zero, a0
                  sltu         gp, s11, s6
                  sub          s1, t2, a1
                  auipc        t5, 33341
                  nop
                  srai         s6, gp, 19
                  auipc        s7, 769346
                  sub          t2, s3, a2
                  lui          t3, 948282
                  sltu         tp, s5, a6
                  xor          a2, gp, t3
                  xor          t5, gp, s9
                  lui          s5, 339882
                  xori         t5, t3, -711
                  add          a3, s3, a1
                  sll          s10, s7, t0
                  add          a5, t4, t1
                  addi         ra, zero, -1662
                  slti         a3, t2, -1522
                  auipc        s6, 604124
                  add          s2, a3, a7
                  xori         s2, t0, 1851
                  srl          t3, t3, s9
                  slli         s6, a7, 20
                  lui          s4, 171341
                  lui          s4, 519772
                  and          s9, s3, a1
                  slti         t5, s3, 1828
                  sltu         a1, s8, a7
                  sub          s0, ra, ra
                  lui          t4, 962891
                  ori          t4, s6, -1506
                  sub          a7, s10, s9
                  sltu         a3, t2, a3
                  xor          tp, s6, t3
                  srai         t2, ra, 0
                  add          s1, ra, t2
                  or           t0, t6, ra
                  sltu         t2, t6, t3
                  addi         s5, t0, 806
                  xor          t5, a3, t3
                  lui          a3, 623343
                  xori         t5, a1, -1170
                  nop
                  add          t3, a6, s9
                  lui          s7, 259351
                  srl          sp, a6, a2
                  slt          a1, t0, a6
                  sub          t5, t2, s7
                  sltiu        s3, s11, 1278
                  and          s9, a0, s4
                  nop
                  and          s5, a5, t3
                  sra          ra, a2, a6
                  auipc        t5, 17655
                  srli         ra, ra, 4
                  slti         t2, ra, 1732
                  srl          gp, t3, s2
                  sll          a2, s7, gp
                  srli         s0, sp, 27
                  slti         sp, a5, -887
                  nop
                  sub          s6, t3, s6
                  srli         t0, a1, 21
                  sll          a3, t6, t0
                  auipc        ra, 1016302
                  addi         s5, sp, 730
                  auipc        a2, 652044
                  slli         ra, s11, 22
                  addi         gp, a6, 831
                  auipc        t4, 579042
                  srli         t0, t6, 2
                  sltu         t5, t4, t1
                  auipc        ra, 292867
                  slti         a7, ra, 1930
                  andi         s9, s10, 746
                  sltu         s0, a1, s5
                  xor          s10, a7, s5
                  sub          a2, a6, t4
                  sll          s9, ra, a3
                  add          ra, tp, zero
                  addi         s5, s5, 907
                  slt          ra, s3, a7
                  nop
                  xori         t5, t1, 1912
                  sll          a0, ra, t5
                  add          zero, a1, a7
                  xori         s7, a7, 741
                  srai         t1, t3, 27
                  xori         s9, s0, 452
                  srl          gp, zero, t2
                  sra          s1, t2, t6
                  sltiu        sp, a7, -41
                  srai         t3, t4, 25
                  lui          a7, 979267
                  slti         a5, s4, 1633
                  srli         gp, s2, 17
                  sltiu        a5, s1, -145
                  add          zero, a4, sp
                  srl          s9, ra, a3
                  xori         sp, gp, 1053
                  auipc        s2, 987916
                  xori         s5, t6, -645
                  srli         a5, a4, 21
                  sll          a2, s1, a5
                  addi         a7, a1, 1761
                  auipc        s3, 901639
                  slt          a7, s8, a5
                  sub          s0, tp, s3
                  srai         a4, s11, 12
                  and          s3, t5, gp
                  sra          tp, t0, s4
                  sll          t2, s7, s5
                  lui          t1, 62461
                  ori          a1, t3, 1835
                  and          s10, a5, a6
                  slt          t3, t1, a7
                  lui          s7, 50218
                  sll          t1, s10, a7
                  andi         gp, zero, -1370
                  srl          s7, a7, s2
                  slli         s2, s8, 14
                  and          a3, s6, s2
                  srai         s7, t3, 3
                  or           ra, s4, s4
                  sub          t2, s0, sp
                  addi         a7, s1, 410
                  lui          s1, 873509
                  and          a5, sp, t6
                  sub          a6, s0, a2
                  add          t0, t0, sp
                  xor          s0, s1, s6
                  sra          sp, t4, t5
                  add          sp, t0, t2
                  lui          zero, 894009
                  slti         t2, a5, -1142
                  andi         a5, s3, -1985
                  sltiu        ra, a2, -961
                  nop
                  sltiu        a7, ra, -686
                  sub          s9, gp, a4
                  xor          a5, t0, a0
                  sltu         t4, a0, tp
                  srai         t4, a3, 20
                  nop
                  sra          s9, ra, s2
                  slli         a4, t1, 26
                  and          a5, t0, s0
                  srai         a0, s5, 16
                  srai         s3, t3, 6
                  slt          a5, s9, t5
                  nop
                  lui          s2, 446358
                  or           s10, t0, a1
                  sub          a2, sp, a7
                  addi         s6, s2, 1730
                  and          t4, s0, sp
                  srli         t2, t5, 16
                  srli         a3, t6, 30
                  slli         sp, s9, 20
                  slli         zero, a0, 15
                  nop
                  sltiu        s3, a5, -403
                  andi         s6, tp, 644
                  and          a3, t3, a1
                  srli         a7, a4, 6
                  srli         a3, s7, 27
                  add          t5, t3, s6
                  auipc        s9, 522104
                  sra          a1, s0, s6
                  sltu         sp, t0, t3
                  add          t0, a3, t4
                  andi         a4, s9, -731
                  and          s6, t6, s7
                  nop
                  sub          t3, s10, s10
                  or           a5, a6, s2
                  addi         zero, s8, -772
                  sra          s3, a7, ra
                  add          a3, s5, sp
                  sra          a6, s4, a3
                  xori         t1, s8, 2008
                  xor          sp, a1, a1
                  auipc        s0, 915925
                  sub          s2, s5, ra
                  slli         a3, t5, 10
                  or           a6, t3, gp
                  slti         gp, zero, 243
                  slli         ra, s11, 12
                  xori         zero, a6, 663
                  srai         ra, s7, 14
                  sltu         a6, ra, s2
                  sra          s1, t4, s4
                  sub          a4, t5, s4
                  andi         s5, t3, -190
                  slli         t2, gp, 7
                  sltiu        t0, t2, 207
                  slli         a4, a2, 24
                  sltiu        t3, t2, -843
                  slti         s0, gp, 619
                  addi         tp, s6, 126
                  slt          a4, s5, t5
                  addi         zero, a4, 466
                  slti         s2, ra, 876
                  srai         a2, s3, 17
                  addi         s4, s1, 463
                  sltiu        s1, s1, -645
                  add          s7, a3, s7
                  slli         t4, zero, 16
                  add          s0, a7, t5
                  add          zero, t4, s2
                  sll          sp, a2, a7
                  srl          a7, s8, a6
                  slli         a7, t2, 26
                  ori          a7, t0, 1403
                  addi         t2, zero, -1154
                  addi         a6, a1, 823
                  sub          a7, s9, ra
                  ori          t3, a5, 1066
                  slti         a6, a5, 59
                  ori          t0, s2, 1794
                  srai         ra, s11, 7
                  lui          t0, 279064
                  xor          sp, t6, ra
                  sll          s3, t5, a5
                  nop
                  and          zero, gp, t3
                  sub          t2, a4, gp
                  sra          a2, s6, s10
                  xor          ra, a7, a4
                  addi         s1, a6, 1472
                  nop
                  nop
                  xori         s5, a6, -468
                  xor          s10, zero, s10
                  add          s6, s4, s9
                  xori         s0, s3, 2033
                  nop
                  auipc        s6, 63439
                  andi         t3, t5, 577
                  add          tp, s0, a4
                  or           s7, s11, ra
                  addi         t2, a1, -512
                  andi         a2, ra, 1391
                  addi         a3, a7, 400
                  add          a5, a2, t5
                  or           sp, a4, sp
                  srl          a6, t3, s7
                  nop
                  add          a7, ra, a6
                  xor          a4, a1, s2
                  srli         s6, s5, 7
                  slti         t4, t4, -1364
                  srli         a6, a1, 22
                  srai         a7, t4, 11
                  sra          tp, gp, s1
                  slti         a0, s4, -930
                  xor          s6, s2, s8
                  or           zero, s8, zero
                  sltu         a7, ra, sp
                  sub          s3, s11, s11
                  sltu         a0, a3, s8
                  sll          t2, ra, s5
                  or           s3, a3, t5
                  sll          a2, a0, s0
                  addi         t3, s6, -1414
                  sltu         s10, t3, tp
                  slti         zero, s10, 260
                  slt          s6, a1, sp
                  lui          t0, 83800
                  slt          t0, s10, t3
                  or           t3, s11, s1
                  ori          zero, a1, 2039
                  slli         zero, s7, 20
                  addi         s0, s1, -797
                  sll          s6, a5, a5
                  xor          s7, s8, a1
                  lui          s0, 480691
                  sll          s4, s1, tp
                  addi         s10, s3, 274
                  and          s6, ra, s10
                  add          s0, zero, t1
                  add          a6, s4, a0
                  slli         s9, tp, 17
                  sub          gp, s5, s7
                  srl          s5, gp, s0
                  sltu         s2, t0, t5
                  xori         zero, a2, -526
                  xori         s5, s5, -917
                  sra          a6, t6, s2
                  sll          a4, a6, t2
                  slt          ra, s7, t0
                  srli         a0, s4, 11
                  slli         a7, t0, 22
                  xor          t3, s1, zero
                  addi         t3, s7, -1460
                  andi         a0, s8, 323
                  nop
                  slti         s9, s10, 1137
                  sltiu        s2, a1, 937
                  andi         t2, s4, 458
                  srl          t0, s4, t4
                  sltu         tp, t5, a6
                  sra          s9, s4, s4
                  srai         s6, s0, 24
                  sltiu        a6, a2, 1060
                  srai         s5, gp, 18
                  slti         s4, a7, 1370
                  addi         s5, t5, -1867
                  sll          a7, a6, t2
                  sll          gp, sp, a2
                  sltiu        s9, a0, -1610
                  sltiu        a0, gp, 182
                  slt          t2, s3, a6
                  srai         s5, s1, 13
                  srl          a1, a1, s2
                  sra          t0, sp, s3
                  srai         s5, s10, 31
                  and          s1, s0, tp
                  sra          s4, ra, a5
                  xor          t4, zero, s6
                  slti         s5, a4, 1538
                  nop
                  slt          s3, s3, a1
                  andi         s3, s3, -79
                  ori          s0, a4, -1476
                  sltiu        a5, s6, -1513
                  nop
                  addi         s10, a1, 37
                  li           s0, 0x7ea99fb6 #start riscv_int_numeric_corner_stream_15
                  li           t0, 0xa7d2be85
                  li           s9, 0xffffffff
                  li           a2, 0x378d1aba
                  li           t2, 0x2414b276
                  li           a6, 0xffffffff
                  li           a4, 0xffffffff
                  li           s4, 0x0
                  li           s5, 0x80000000
                  li           tp, 0x80000000
                  add          a4, s4, s9
                  add          s0, s9, a2
                  add          t2, s9, t0
                  auipc        a6, 192253
                  auipc        s9, 585066
                  lui          tp, 304815
                  auipc        t0, 956750
                  add          a4, s0, t0
                  sub          tp, s9, a4
                  auipc        t0, 173641
                  addi         t2, tp, 810
                  auipc        s0, 135227
                  nop
                  add          a4, tp, t2
                  auipc        a4, 331154
                  addi         tp, tp, 955
                  auipc        t2, 620951
                  sub          t0, t0, t0
                  auipc        t2, 693169
                  add          a6, t2, a4
                  add          s5, t0, tp
                  sub          a2, t2, s9
                  addi         s0, s0, 341
                  sub          a2, s4, s9
                  lui          s0, 334263
                  auipc        a6, 1020777
                  lui          s0, 796313
                  nop
                  lui          s5, 650517
                  add          t0, a4, t2 #end riscv_int_numeric_corner_stream_15
                  and          tp, t4, s3
                  srl          t2, a4, t0
                  addi         a5, a1, -1754
                  sub          a0, a4, t3
                  sub          t2, t0, s0
                  srl          a1, s5, sp
                  sub          a7, a1, t5
                  sll          sp, t6, t3
                  sltu         t1, a1, t0
                  andi         s5, t4, -1308
                  srai         gp, s8, 28
                  sub          a1, t5, t2
                  andi         a3, s7, 476
                  ori          gp, t3, -217
                  andi         s9, a6, -1952
                  srai         a3, a7, 6
                  sra          tp, s11, tp
                  sltu         s2, s10, t5
                  srai         s0, gp, 6
                  ori          a1, t6, 736
                  xor          s10, sp, a0
                  slt          s1, a1, s5
                  sltiu        s7, a6, -383
                  srl          t3, s2, t6
                  slli         a4, a0, 7
                  ori          a7, t0, -703
                  andi         t0, s4, 95
                  sltiu        s4, t2, 834
                  sltu         gp, s5, s11
                  slli         s6, s5, 31
                  sra          t3, zero, tp
                  or           tp, t3, s7
                  sra          s5, s2, sp
                  xori         a1, a3, 808
                  xori         a7, s0, 1680
                  slti         a3, s11, 1921
                  add          s10, s7, tp
                  slti         sp, sp, -1053
                  addi         tp, s4, -948
                  sltiu        s2, s9, 1228
                  srl          a2, t0, ra
                  lui          t0, 657144
                  andi         a4, a7, 43
                  xor          a7, t2, tp
                  sltiu        s5, s9, 1779
                  or           s9, a5, s5
                  nop
                  slt          zero, zero, a7
                  andi         a2, s4, 769
                  sra          a6, s2, a6
                  slt          s4, s11, a4
                  srai         a2, sp, 15
                  andi         gp, s2, -1081
                  sra          sp, t0, a6
                  slt          a6, a2, s11
                  sra          a6, s3, s4
                  andi         s10, a4, 238
                  andi         a2, a3, -558
                  and          a5, ra, s11
                  add          a2, s11, s3
                  auipc        s5, 657037
                  srl          t5, a6, zero
                  sub          s7, a7, s8
                  srli         sp, a0, 1
                  sra          t1, a6, a7
                  andi         a6, s8, 1606
                  sltu         a6, a6, ra
                  auipc        s1, 818506
                  ori          s10, t3, 34
                  add          a2, t2, s1
                  andi         a6, s11, 623
                  ori          ra, s0, 100
                  srli         a0, a5, 4
                  sub          sp, s8, ra
                  add          s1, a6, s5
                  srai         sp, tp, 28
                  addi         t5, t2, 1679
                  sltu         t3, s3, a7
                  nop
                  srl          t2, t3, tp
                  lui          s0, 309116
                  nop
                  srl          s3, s11, s11
                  nop
                  addi         s9, s4, 1030
                  slti         t0, t6, 260
                  srl          s9, s8, t4
                  or           s2, a1, a2
                  sub          gp, s3, s3
                  auipc        gp, 408319
                  addi         a0, s5, 123
                  slt          sp, sp, s0
                  addi         sp, tp, -1256
                  sll          t4, a4, s9
                  nop
                  sltu         t5, s2, s4
                  andi         a4, a5, 1721
                  and          s3, a0, s9
                  slli         s0, zero, 0
                  andi         t3, s0, -1437
                  srl          a5, t1, zero
                  sltiu        s1, a2, 755
                  sll          a5, s3, s2
                  sub          zero, s5, t3
                  sub          zero, s1, zero
                  xori         a4, s9, -1663
                  srl          a3, s6, a3
                  sub          s5, a5, sp
                  slt          s7, s8, s9
                  slt          s9, a4, s9
                  ori          s4, a5, 1620
                  nop
                  slti         tp, tp, -1809
                  slli         gp, a3, 31
                  ori          s9, sp, -635
                  sltiu        s10, a7, 1144
                  slti         s10, zero, -148
                  nop
                  sll          a4, t2, a5
                  xori         t3, ra, -1038
                  sltu         s10, t0, a3
                  xor          s2, s11, ra
                  add          s2, a7, a7
                  xori         s1, s6, -1663
                  sltu         a2, t4, s9
                  xori         s2, t6, -1307
                  sra          s0, s2, tp
                  srl          a6, s8, a0
                  add          a4, t6, t6
                  and          s6, a1, s11
                  auipc        s9, 550438
                  srli         a2, a7, 30
                  nop
                  slli         a6, gp, 5
                  srai         t1, t6, 31
                  or           s7, ra, zero
                  srl          a1, t0, t4
                  sra          a0, a4, s10
                  sra          tp, a7, sp
                  auipc        s4, 653325
                  slti         s0, s1, -570
                  addi         t1, s4, 135
                  and          t1, t6, s2
                  addi         s10, s1, 1942
                  srli         s7, a4, 27
                  srli         a1, a5, 9
                  sll          gp, sp, ra
                  srl          s6, s1, gp
                  xori         zero, t3, 636
                  auipc        s10, 113987
                  slt          a1, s11, ra
                  srai         a4, tp, 3
                  sltiu        s9, s6, 345
                  srli         s6, s9, 5
                  sub          gp, a6, zero
                  xor          t1, gp, t5
                  xori         s2, a1, -2009
                  add          s10, t6, a3
                  sra          s5, ra, t0
                  sll          t2, s7, ra
                  nop
                  sll          s3, a1, a6
                  slli         a6, s8, 24
                  nop
                  xor          a2, t2, a5
                  srl          s1, a2, s1
                  slt          a7, t6, t6
                  slt          t4, s6, s4
                  sub          t2, t5, s2
                  auipc        a7, 367898
                  lui          s5, 806201
                  auipc        zero, 823849
                  slti         t2, a3, -572
                  sll          tp, t6, zero
                  srl          t0, t5, sp
                  srli         s6, s4, 9
                  sltiu        a1, s10, 114
                  srai         ra, ra, 23
                  slt          t2, a4, t1
                  add          s0, gp, t1
                  or           s0, a7, s11
                  addi         a3, a1, 689
                  li           t5, 0x1a5278b9 #start riscv_int_numeric_corner_stream_7
                  li           ra, 0x0
                  li           a3, 0xffffffff
                  li           a7, 0x80000000
                  li           tp, 0x80000000
                  li           t1, 0xffffffff
                  li           a4, 0x80000000
                  li           a6, 0xccc4b507
                  li           sp, 0x0
                  li           s1, 0x82bc959
                  lui          a7, 530741
                  lui          sp, 149545
                  auipc        ra, 247151
                  addi         s1, tp, 585
                  auipc        a4, 197060
                  auipc        s1, 844954
                  add          tp, a6, t5
                  addi         a6, a7, 1412
                  auipc        a4, 649142
                  auipc        a6, 917350
                  nop
                  add          t1, ra, t1
                  sub          t1, sp, ra
                  addi         a3, a4, -171
                  nop
                  sub          s1, a3, a4
                  nop
                  nop
                  nop
                  auipc        a7, 564732
                  lui          a7, 212556 #end riscv_int_numeric_corner_stream_7
                  ori          sp, s6, -1069
                  sltiu        s3, a0, -520
                  ori          s9, t6, -987
                  srli         a5, t6, 11
                  sltu         t1, s6, t2
                  ori          a6, s11, 1289
                  sltiu        s3, a6, 1955
                  and          sp, s7, zero
                  srai         s4, sp, 18
                  nop
                  sub          a1, a7, t3
                  xor          s5, a3, a3
                  and          s9, ra, s7
                  or           a5, s11, a4
                  xor          t4, s6, s4
                  and          t3, t2, a3
                  sub          a1, s4, ra
                  and          a7, s6, gp
                  slli         s10, s7, 30
                  or           s5, a7, s4
                  slti         s4, s8, 335
                  andi         s10, t2, 250
                  srl          ra, a0, t5
                  srl          a7, a0, t6
                  sra          a5, a6, s8
                  sll          a7, a5, ra
                  add          t5, a7, a2
                  nop
                  ori          a1, sp, -1851
                  slti         t5, s5, -1039
                  slli         s5, a5, 28
                  auipc        ra, 838437
                  sra          s0, s8, s8
                  sub          gp, s0, ra
                  sltiu        a6, a2, -959
                  and          a5, t3, t6
                  sra          s2, a2, zero
                  slli         s3, s11, 30
                  ori          t3, t3, -568
                  and          s0, s8, a2
                  sll          t0, s6, s5
                  sll          a0, t5, s1
                  or           a5, s6, t5
                  andi         ra, t3, -1620
                  sll          t2, a5, s5
                  srai         s2, t5, 3
                  slti         s4, s11, 1349
                  srli         t4, s2, 26
                  slti         s0, a7, 1808
                  xor          tp, t1, s7
                  sra          a4, a0, s1
                  andi         a5, s2, -1349
                  auipc        a1, 128028
                  addi         s1, zero, 653
                  xor          ra, t5, sp
                  xori         t4, a5, 1008
                  slli         a1, t1, 22
                  ori          gp, a1, -795
                  srl          s9, s7, s8
                  sltiu        t3, ra, 2029
                  lui          s2, 448630
                  sra          a1, t6, s3
                  srl          a7, s5, a5
                  slti         a5, t3, -278
                  srli         t5, a1, 26
                  andi         t5, s7, 888
                  slli         s6, s1, 9
                  sll          a1, s9, t4
                  sll          sp, ra, t1
                  srai         t5, t1, 28
                  sra          a6, s1, a1
                  addi         s5, s4, -1276
                  auipc        tp, 68184
                  srai         a6, a6, 7
                  sra          a7, s4, s5
                  sra          t0, t6, a6
                  ori          tp, tp, -817
                  sll          s6, t1, s7
                  srai         a5, s7, 13
                  xor          t3, s4, t0
                  sltu         s4, s1, s2
                  srli         a2, sp, 18
                  sltu         s9, t6, t0
                  slti         t5, s3, -1367
                  and          a3, a2, t6
                  ori          a4, a0, -1407
                  xor          s4, t4, t0
                  slti         s5, s2, 686
                  sra          a0, t4, t4
                  sub          s2, a5, t2
                  xor          s2, a2, a7
                  srli         s6, ra, 17
                  ori          s0, s2, 1424
                  slli         a5, s10, 0
                  srai         a7, s9, 29
                  srli         s1, ra, 7
                  addi         s4, s5, -831
                  slli         a4, gp, 15
                  or           s4, a4, t0
                  or           s0, t4, a4
                  xor          s6, s4, t2
                  and          t3, sp, t3
                  add          t3, t0, s11
                  sll          s3, a1, t6
                  li           gp, 0xe628cb89 #start riscv_int_numeric_corner_stream_10
                  li           t1, 0x0
                  li           t4, 0x0
                  li           a3, 0x0
                  li           a7, 0xffffffff
                  li           sp, 0x0
                  li           s0, 0x80000000
                  li           s6, 0x80000000
                  li           ra, 0x0
                  li           s2, 0x80000000
                  add          a3, t4, t4
                  auipc        a3, 937079
                  sub          a7, t1, t1
                  sub          t1, a7, s2
                  lui          s6, 760962
                  lui          t1, 559628
                  lui          t1, 791891
                  nop
                  lui          t4, 85963
                  auipc        s0, 331195
                  add          gp, t1, s2
                  add          a7, a3, ra
                  auipc        a3, 864225
                  auipc        ra, 530564
                  addi         s2, t1, -99
                  addi         s2, t4, 1054
                  addi         ra, s6, -315
                  lui          a7, 436561
                  lui          s6, 221364
                  auipc        gp, 435725 #end riscv_int_numeric_corner_stream_10
                  auipc        zero, 874893
                  or           a0, gp, a3
                  xor          a3, a2, sp
                  slli         tp, t5, 15
                  addi         tp, s1, 1086
                  lui          a1, 66665
                  srl          s10, a1, zero
                  sra          s7, a6, t6
                  add          s0, a5, s7
                  nop
                  sltiu        ra, t0, -1016
                  addi         zero, s7, -1929
                  srl          s6, t0, s0
                  slli         gp, tp, 7
                  ori          zero, t2, -624
                  auipc        s9, 390777
                  sll          a7, s6, t3
                  addi         a0, sp, -1796
                  and          s0, a5, tp
                  srli         ra, s0, 15
                  srl          a2, s7, t2
                  or           s7, s10, tp
                  lui          zero, 206187
                  sra          a6, a0, ra
                  slt          a4, s9, gp
                  xor          s7, s3, t5
                  sub          a7, a1, t3
                  and          a5, gp, t3
                  auipc        a6, 240177
                  nop
                  sra          zero, s10, tp
                  sltu         sp, s10, t6
                  nop
                  xori         s10, tp, -1093
                  or           ra, a2, t2
                  sra          s1, t3, s4
                  srl          a6, gp, s10
                  addi         s5, gp, 1978
                  lui          t3, 666159
                  and          s1, tp, s10
                  sltu         s6, t5, a2
                  ori          gp, s7, -11
                  srai         s1, t2, 26
                  sra          t2, s10, a4
                  andi         ra, a5, 1287
                  auipc        t3, 230160
                  srai         s2, t1, 26
                  sltu         s3, s11, s4
                  sltiu        a6, ra, 1873
                  sltiu        a5, s3, -450
                  xor          s4, gp, s8
                  auipc        a4, 773845
                  and          a3, s11, t6
                  sub          t5, gp, s9
                  add          a4, s0, t1
                  and          a7, tp, a1
                  sra          tp, sp, a1
                  xor          t0, s2, sp
                  and          a6, s10, a7
                  xor          t1, t1, t5
                  sub          a3, t2, a3
                  sltiu        s0, t4, -1924
                  sltu         t1, tp, a7
                  andi         sp, t2, 37
                  srai         a7, s9, 0
                  slli         t2, s0, 19
                  add          a5, t1, a7
                  slli         a6, a2, 11
                  andi         t2, tp, -281
                  sll          gp, s4, s10
                  sra          t3, sp, s8
                  nop
                  or           t3, t6, a4
                  andi         sp, a7, 183
                  sub          a7, t6, a1
                  nop
                  add          s1, t1, t4
                  add          a0, s0, t3
                  slt          s1, ra, a5
                  add          s4, s2, ra
                  andi         a5, s8, 1451
                  sra          t1, s8, s3
                  srl          zero, t4, s10
                  sll          s7, ra, s9
                  srli         sp, t6, 6
                  sub          a0, s9, s11
                  sub          t2, gp, t5
                  slt          t5, a1, t5
                  slt          a3, s4, t0
                  nop
                  auipc        s9, 653798
                  slli         a5, s1, 20
                  slti         s4, s10, 56
                  nop
                  sltiu        s5, s9, -590
                  xori         gp, gp, 895
                  nop
                  nop
                  sltu         a4, t1, sp
                  andi         t5, gp, 1946
                  ori          a3, a4, -691
                  auipc        ra, 512175
                  slli         t3, s0, 26
                  and          a7, s9, a4
                  srl          s5, zero, s10
                  srli         sp, a7, 5
                  srl          s1, t3, tp
                  sltu         s0, zero, s8
                  and          zero, t1, s1
                  and          t5, s6, s10
                  sll          t4, a0, s3
                  nop
                  sltiu        s4, t0, 876
                  or           t3, s5, zero
                  sll          t4, s4, t5
                  sub          a6, s11, a2
                  add          tp, t1, s0
                  lui          ra, 846368
                  lui          a4, 607667
                  ori          s10, s6, -1984
                  sub          s5, s11, s11
                  and          sp, s7, s11
                  add          t4, s9, gp
                  add          t4, a7, s10
                  slti         s5, s5, 965
                  sltu         a5, ra, gp
                  sra          zero, t4, s10
                  xor          a4, gp, t5
                  and          a5, s3, tp
                  slli         sp, t2, 16
                  sub          s4, t2, s6
                  sltu         ra, a4, a5
                  srai         t1, a1, 24
                  add          s5, t3, s11
                  sll          zero, s5, t6
                  slt          t2, s4, s4
                  addi         t2, t2, -530
                  sub          s10, a3, sp
                  slt          s6, gp, t0
                  xor          ra, s2, a1
                  slli         t2, t4, 5
                  sra          s10, s8, a7
                  li           s4, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           s2, 0xffffffff
                  li           t3, 0x80000000
                  li           t4, 0x534a505e
                  li           a6, 0xffffffff
                  li           s7, 0xffffffff
                  li           a2, 0x767bb11b
                  li           a7, 0xffffffff
                  li           t2, 0xffffffff
                  li           tp, 0x5e776c6b
                  lui          s7, 645554
                  lui          tp, 465372
                  auipc        t4, 833285
                  nop
                  auipc        a2, 609512
                  auipc        t4, 548712
                  sub          t2, s2, t3
                  addi         a2, s2, -1688
                  auipc        a2, 785769
                  nop
                  auipc        s2, 94542
                  add          s7, t3, t2
                  auipc        t2, 874413
                  lui          t2, 34281
                  add          a6, s7, t2 #end riscv_int_numeric_corner_stream_8
                  auipc        gp, 433665
                  slt          t1, s7, a7
                  sub          ra, t3, gp
                  addi         t5, zero, -770
                  srl          t5, a0, s3
                  andi         s1, s2, -1027
                  and          t4, t0, s2
                  andi         s5, s1, -397
                  and          s2, t4, t6
                  srli         gp, a5, 6
                  or           gp, a3, s6
                  sra          s2, a1, s2
                  sll          a7, tp, s8
                  srai         s1, a7, 0
                  ori          t3, zero, -1616
                  lui          s2, 361230
                  add          s4, sp, s7
                  andi         s6, t6, -826
                  andi         t1, tp, 1451
                  or           t4, ra, a4
                  and          s5, t3, s4
                  srli         s3, s10, 8
                  nop
                  li           a3, 0xb53e5f43 #start riscv_int_numeric_corner_stream_12
                  li           sp, 0x49586dbe
                  li           t5, 0x80000000
                  li           a4, 0xffffffff
                  li           s0, 0x0
                  li           gp, 0xffffffff
                  li           ra, 0xffffffff
                  li           t4, 0x80000000
                  li           a6, 0xffffffff
                  li           t3, 0xffffffff
                  add          a6, a4, ra
                  nop
                  nop
                  add          a4, ra, t4
                  auipc        ra, 1009506
                  auipc        a4, 769529
                  add          ra, a6, a6
                  nop
                  lui          t5, 997496
                  addi         t3, gp, -695
                  sub          a4, t4, ra
                  addi         gp, t4, -970
                  lui          t4, 866902
                  auipc        t4, 374422
                  sub          a6, s0, a4
                  addi         a3, sp, 1013
                  sub          a3, a6, t3
                  nop #end riscv_int_numeric_corner_stream_12
                  srl          s4, s0, s7
                  srli         s0, gp, 17
                  slti         s3, t6, -1671
                  or           s4, s9, zero
                  or           tp, s9, s5
                  sll          a0, t0, a7
                  andi         s10, t4, 1564
                  sltiu        a2, gp, -1877
                  slti         tp, zero, 1724
                  nop
                  ori          s2, t2, 2038
                  srl          t1, t6, t1
                  slt          s3, a5, a6
                  sltu         a5, gp, s5
                  xori         zero, s2, 853
                  xori         s1, a3, -1025
                  or           a5, gp, t1
                  slti         s7, a2, 439
                  sub          a0, a7, s10
                  addi         a7, ra, -1831
                  slli         s9, t5, 14
                  slti         t5, s6, 1590
                  and          s1, zero, a3
                  or           a7, tp, s11
                  lui          t1, 1010848
                  slli         a2, a3, 0
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_19
                  li           sp, 0x80000000
                  li           s1, 0xaa8be2e
                  li           t0, 0xffffffff
                  li           a5, 0x80000000
                  li           t5, 0xffffffff
                  li           tp, 0x80000000
                  li           a2, 0x7eaf1ab2
                  li           a1, 0xaca2051
                  li           s5, 0x8015a240
                  nop
                  nop
                  lui          a2, 613438
                  lui          t5, 325962
                  nop
                  sub          tp, a0, a2
                  auipc        a5, 967561
                  add          tp, a5, t5
                  lui          sp, 876799
                  nop
                  sub          t5, s1, t0
                  auipc        t5, 883078
                  lui          t0, 717739
                  auipc        s5, 579436
                  add          a1, a2, t0
                  add          sp, a1, a1
                  sub          t5, tp, t0
                  lui          s1, 606873
                  addi         s5, a2, -315
                  nop
                  sub          a2, a0, s1
                  sub          tp, sp, a5
                  auipc        t0, 629862 #end riscv_int_numeric_corner_stream_19
                  xori         t3, t0, 1670
                  nop
                  addi         t3, a6, 624
                  andi         a4, a4, -1218
                  nop
                  nop
                  slt          s9, a2, a5
                  sra          a1, s3, s0
                  lui          t2, 411946
                  andi         a7, a3, 1258
                  sll          s5, s1, t4
                  slt          a1, s9, t3
                  srai         a7, t6, 7
                  and          t2, s9, a3
                  ori          a0, t4, 966
                  andi         s10, a6, -1209
                  and          tp, t2, s11
                  slt          a0, a0, a2
                  sltiu        s10, ra, 1062
                  srl          s7, t4, s6
                  lui          s3, 240884
                  or           a0, sp, t6
                  sub          a3, ra, a0
                  slt          s3, a2, s2
                  sll          a2, ra, zero
                  sltu         t0, a0, t0
                  slt          t4, ra, a7
                  sra          zero, s10, a3
                  slli         t3, zero, 14
                  slt          t4, s3, zero
                  lui          a1, 812251
                  addi         ra, s4, -779
                  and          s10, s7, s7
                  addi         zero, tp, 189
                  xori         a6, ra, -1888
                  srai         ra, s11, 15
                  sll          a1, t1, s4
                  lui          a6, 579324
                  slt          a4, gp, sp
                  xori         s7, a6, 1295
                  lui          zero, 980166
                  lui          a6, 536106
                  slt          s2, s1, s0
                  sltu         s9, ra, a2
                  ori          t5, t0, -460
                  nop
                  or           s3, s6, s1
                  nop
                  sltiu        s4, t1, 422
                  srli         a0, t4, 30
                  sll          t2, s7, gp
                  srl          a1, a5, t1
                  and          a2, a1, a1
                  ori          a7, ra, -1655
                  ori          s5, a5, 723
                  and          a3, t3, s9
                  slt          a2, t5, s5
                  xor          ra, t4, a6
                  sltu         s7, a0, tp
                  srl          t1, s7, a6
                  or           a7, t2, t4
                  nop
                  auipc        a4, 833789
                  and          tp, a4, ra
                  srai         sp, s7, 16
                  sra          s10, zero, s9
                  xori         s6, tp, 1600
                  ori          zero, s1, 1862
                  srl          s3, s8, a4
                  andi         tp, gp, 1889
                  sll          s9, s3, s2
                  slti         t0, a7, 5
                  addi         a3, s6, 1556
                  sltiu        a2, a6, 1729
                  sltu         t1, a7, t5
                  and          gp, t4, t5
                  nop
                  andi         s4, a6, 600
                  and          ra, s9, a0
                  nop
                  srl          t0, gp, sp
                  slti         a2, s10, -1123
                  srai         tp, t0, 10
                  xor          t0, ra, s6
                  srai         gp, ra, 19
                  sll          zero, t5, tp
                  sltu         s7, s10, gp
                  slt          s5, s2, s8
                  srli         a6, a1, 11
                  sra          t0, a3, s9
                  sra          s4, s1, zero
                  auipc        s0, 274736
                  slli         ra, t4, 19
                  sltu         ra, a6, s9
                  xor          t2, s10, s7
                  srli         s5, s9, 21
                  auipc        a2, 16179
                  ori          s5, t4, -1219
                  sltiu        a5, s11, -871
                  sltiu        a1, s10, 35
                  auipc        t2, 370305
                  lui          s1, 469517
                  auipc        s4, 484125
                  sub          t3, t5, t1
                  addi         gp, sp, 1632
                  lui          a4, 974561
                  andi         t1, tp, 470
                  srli         s0, t4, 19
                  sra          s7, gp, s2
                  or           zero, s2, a3
                  lui          a0, 608689
                  sltu         t5, a1, s5
                  auipc        t4, 283980
                  slti         a3, s0, 1215
                  add          zero, s1, ra
                  add          a2, t4, a1
                  xori         a2, s1, 398
                  add          ra, t1, a1
                  srai         t2, t5, 5
                  lui          s1, 92701
                  xori         s9, tp, 224
                  sra          a3, s5, s9
                  lui          tp, 19648
                  xori         gp, s6, -791
                  sra          t2, s1, a0
                  srai         a1, s2, 13
                  srli         a7, t6, 8
                  auipc        a5, 1006823
                  sll          t1, s11, a4
                  nop
                  or           sp, s11, t5
                  slti         t1, s11, -1802
                  and          a7, sp, s3
                  add          gp, a2, a0
                  addi         a7, s10, 96
                  add          a5, s2, t3
                  srl          gp, s9, a5
                  addi         s9, s1, 330
                  nop
                  addi         a7, s3, -250
                  xori         a6, a2, -1216
                  srai         s0, tp, 22
                  sll          t2, a0, s1
                  andi         sp, tp, -1470
                  lui          s3, 127648
                  slli         s6, ra, 17
                  nop
                  sra          t5, t1, a0
                  sltu         t4, a3, t4
                  andi         t2, a0, 405
                  ori          a4, t2, 1238
                  auipc        s6, 319887
                  add          t0, a3, s2
                  slti         a0, t6, -908
                  srai         ra, s11, 8
                  slti         a2, zero, -1990
                  auipc        s9, 535533
                  ori          s10, s2, 206
                  or           t5, s3, ra
                  andi         a5, gp, -1216
                  slt          s6, s3, s8
                  sltu         s3, a6, a3
                  auipc        a2, 250864
                  andi         t1, zero, -1364
                  sltiu        a4, a2, 1025
                  slti         s5, sp, -709
                  add          t5, s0, s4
                  auipc        s1, 728743
                  andi         a6, ra, -1588
                  sll          a5, s11, s1
                  xori         t4, s1, -1777
                  addi         t3, a1, 1044
                  xori         a1, t0, 786
                  sltu         ra, s8, t0
                  srl          s6, a6, t1
                  slt          t5, s1, sp
                  xori         s1, s5, -1491
                  srli         s5, sp, 0
                  auipc        a0, 925469
                  srli         s4, s0, 1
                  sra          a3, s1, s7
                  xori         t0, s11, -1122
                  srl          gp, t0, t3
                  auipc        a4, 238955
                  sltu         sp, t0, zero
                  nop
                  srai         gp, a1, 27
                  sll          t2, s4, s10
                  slli         t5, s6, 10
                  sll          sp, a2, t4
                  xori         t1, t4, 954
                  addi         s2, s0, -1354
                  or           s9, ra, s1
                  sra          t0, a1, t2
                  auipc        sp, 715376
                  andi         zero, zero, 683
                  andi         s2, s11, -66
                  sra          s0, a7, s3
                  sub          s5, s3, a6
                  slt          a6, tp, t2
                  auipc        a7, 267257
                  slti         t4, a6, -318
                  sll          s6, a7, a6
                  and          s1, s8, a2
                  srl          gp, tp, a2
                  slt          s1, t0, s4
                  add          a7, a6, t0
                  sub          a5, zero, s11
                  slli         t3, t1, 8
                  sltu         s6, a6, s8
                  add          s5, a6, s6
                  auipc        a7, 517685
                  addi         s0, gp, 1990
                  srli         a0, a5, 0
                  sll          ra, tp, s9
                  xori         sp, t2, -1337
                  slt          s4, t6, s10
                  or           ra, s1, sp
                  srai         tp, s9, 12
                  srli         s2, a3, 10
                  sltu         a3, s10, ra
                  xori         a3, t5, -1352
                  sub          t4, s9, t0
                  add          t0, gp, a6
                  slli         s1, tp, 26
                  slli         s2, sp, 8
                  srli         zero, s5, 7
                  auipc        ra, 525513
                  srai         s9, s5, 29
                  xori         a5, zero, -1529
                  xori         tp, s1, 1235
                  slt          tp, s5, s8
                  slli         s4, t3, 21
                  sll          a2, a0, s0
                  addi         a3, t5, 443
                  sll          a3, zero, ra
                  xor          t4, s0, s8
                  auipc        a0, 908040
                  andi         s9, s9, 1716
                  add          a4, gp, t1
                  slti         a3, t2, 87
                  slli         a6, a5, 16
                  add          a3, s6, t4
                  sub          s1, a4, a6
                  sltiu        sp, s9, 1611
                  sll          s2, t0, a4
                  srl          a1, gp, t6
                  slli         tp, zero, 29
                  nop
                  nop
                  xor          a1, sp, s4
                  xori         s7, a1, -1619
                  add          a1, gp, t1
                  sub          t0, s6, s4
                  slti         t0, t6, 1839
                  sltiu        a3, s5, 468
                  slli         a1, t3, 14
                  sltu         t0, s6, s6
                  sltu         a0, s8, s7
                  auipc        t2, 679996
                  slli         t1, a3, 31
                  addi         t0, t6, 1656
                  auipc        a4, 32461
                  srl          t1, a4, s9
                  auipc        a0, 280389
                  sltiu        a3, s10, 1467
                  sub          a4, t0, s1
                  xor          gp, s10, zero
                  andi         gp, s1, 48
                  add          a2, t6, s5
                  srli         s6, t0, 14
                  srl          s3, a0, a0
                  auipc        a6, 747965
                  ori          s1, s1, 1222
                  nop
                  sll          s10, s8, s9
                  srli         tp, t4, 3
                  srai         sp, gp, 13
                  slt          zero, a5, zero
                  sra          t2, s5, tp
                  lui          t4, 677180
                  sltu         a7, t6, s6
                  srai         a4, ra, 19
                  nop
                  andi         ra, a3, -1965
                  srai         s2, s4, 27
                  ori          t5, s2, -1001
                  slli         s5, t0, 1
                  slti         ra, a6, -1590
                  andi         gp, t6, 1451
                  xor          a4, t1, a5
                  and          s6, gp, s8
                  add          s10, zero, sp
                  addi         a4, gp, 553
                  srli         t0, s0, 15
                  add          t2, ra, s1
                  xori         s9, t6, -558
                  slt          s0, t6, s3
                  and          s4, a4, s8
                  srai         s1, t1, 18
                  ori          s2, s6, -975
                  sra          t1, t5, s2
                  and          a6, s4, s3
                  slt          t1, t3, t3
                  sltiu        t1, s9, -752
                  sltu         s3, t2, t1
                  or           s7, a7, a4
                  andi         s0, gp, -440
                  andi         s7, t0, 688
                  or           zero, zero, a2
                  xor          a7, s6, ra
                  and          t1, a6, a5
                  auipc        t1, 986484
                  slt          t0, t2, s3
                  or           t0, s1, tp
                  srli         ra, ra, 3
                  xor          s2, a5, tp
                  slli         s2, t4, 31
                  xor          s3, s11, s11
                  slt          zero, s6, a3
                  xori         zero, s7, -1874
                  slli         s10, s8, 18
                  auipc        t1, 695168
                  andi         tp, s2, -1130
                  lui          s9, 507155
                  slt          t0, a2, t5
                  sll          ra, sp, s2
                  or           s9, a3, a1
                  srl          a2, t6, s5
                  srli         t1, tp, 15
                  sub          a4, s10, s11
                  sra          tp, s2, s8
                  xori         t2, a0, -392
                  sltiu        a2, a7, 311
                  and          s1, s11, s11
                  add          a3, t2, t3
                  addi         a5, a5, -1138
                  auipc        s2, 154798
                  xor          ra, sp, s5
                  sra          a3, t3, s3
                  auipc        s9, 629212
                  sltu         a5, s0, t2
                  srl          tp, s0, zero
                  sltu         s10, s0, a2
                  or           a3, gp, tp
                  sra          s0, a4, a3
                  slli         s2, t2, 21
                  nop
                  srli         a3, s7, 18
                  xori         a2, t3, 1829
                  sltu         sp, s10, s7
                  addi         s6, zero, -1412
                  auipc        s5, 308590
                  sll          a3, a0, gp
                  sub          s6, t2, s11
                  slti         s5, s8, 1956
                  srli         t2, a4, 9
                  xor          s4, zero, t0
                  slti         s0, tp, 1248
                  sub          zero, s1, s1
                  ori          a0, a1, 1421
                  slt          a4, tp, ra
                  srai         s10, a7, 25
                  addi         a2, s11, -510
                  andi         t0, s0, -1511
                  andi         zero, t6, -1866
                  sub          a3, t5, a2
                  ori          t4, s10, 1231
                  xor          s3, a3, ra
                  add          t4, gp, t4
                  add          t4, s6, s3
                  srli         a7, t6, 29
                  ori          t0, a1, -75
                  xori         s2, s11, 1637
                  or           a2, s10, t4
                  srli         sp, tp, 6
                  slti         t0, s0, -379
                  sltiu        s4, s1, -1882
                  andi         a7, t5, -785
                  slti         s7, s9, 234
                  xor          s9, t4, s6
                  xor          tp, a0, a7
                  srli         t1, t1, 15
                  sll          s10, s1, s2
                  slli         t5, s11, 18
                  add          a5, s3, a2
                  add          s4, t3, a0
                  auipc        s2, 773844
                  slli         s6, sp, 0
                  sub          ra, sp, t3
                  srli         a0, t1, 9
                  or           s1, zero, s8
                  lui          t1, 608334
                  srli         s4, s7, 19
                  srli         ra, t1, 28
                  xor          a3, s8, s8
                  slti         a0, s1, -1055
                  srl          tp, s6, t4
                  ori          s2, a7, -1965
                  xori         t0, gp, -759
                  xori         s2, s3, -495
                  sll          t0, sp, t1
                  lui          s6, 960233
                  xori         s1, s1, -7
                  andi         s0, s11, -809
                  sltu         t1, s10, a2
                  andi         t5, t2, -2
                  srai         s5, s1, 23
                  sub          ra, t2, sp
                  sltu         gp, t3, s3
                  srli         a1, s11, 16
                  and          sp, ra, s7
                  slli         gp, zero, 28
                  nop
                  add          a6, s6, t0
                  sra          s5, t5, a7
                  xori         t3, s10, 74
                  or           s9, t6, s2
                  sra          s9, a5, s1
                  slli         sp, s11, 14
                  srl          s0, a1, a0
                  sub          a2, t4, a4
                  auipc        t4, 953931
                  xori         a1, s10, -711
                  or           zero, t0, a7
                  slt          s1, tp, a6
                  xori         a4, a5, 1811
                  and          t0, gp, ra
                  andi         sp, zero, -385
                  ori          s0, s5, -1025
                  sra          a5, t5, s1
                  xor          t1, a1, a4
                  slti         a2, t2, 952
                  sll          s1, ra, s11
                  sll          a1, t1, a6
                  addi         t2, zero, -845
                  slli         a7, a2, 30
                  auipc        s5, 976875
                  and          s5, s0, a5
                  slti         s6, s9, -1946
                  lui          s9, 563144
                  slt          t2, a2, a6
                  slli         gp, sp, 27
                  slti         s5, t3, -209
                  sll          s7, sp, a1
                  srl          a4, s11, a7
                  slli         a3, a6, 7
                  srai         tp, s4, 27
                  sra          s9, a6, zero
                  sltiu        s7, a0, 1617
                  slt          a3, ra, a2
                  andi         s10, gp, 390
                  xori         a6, a6, 877
                  srl          s10, a1, s6
                  and          s1, tp, s3
                  addi         a0, s4, -1945
                  xori         a2, a1, 1173
                  slt          s4, a3, s0
                  lui          s5, 884454
                  srli         s9, s9, 9
                  srli         zero, s7, 3
                  srai         t2, sp, 2
                  sll          tp, t5, s3
                  xor          gp, a2, t1
                  sll          gp, s11, t3
                  andi         s1, s1, 344
                  slti         s10, a2, 1468
                  nop
                  add          s2, a5, zero
                  or           a4, s0, s9
                  slti         s10, zero, 1927
                  slli         sp, s9, 25
                  sll          a2, s10, s2
                  auipc        t2, 531190
                  srl          sp, s11, a5
                  xori         a0, a0, 28
                  srl          s10, s2, s5
                  srai         s6, a2, 10
                  xori         t3, s1, -178
                  or           tp, ra, s6
                  sll          a5, sp, zero
                  xori         a7, t1, 370
                  nop
                  nop
                  srli         a2, a0, 18
                  addi         sp, s1, 1337
                  srl          t1, sp, s4
                  sra          s2, t4, tp
                  sra          a2, s4, zero
                  xori         a5, t6, 1908
                  xori         s3, a4, -406
                  or           s5, s10, s6
                  xori         a1, a5, -1506
                  nop
                  sltu         t3, a0, s11
                  lui          a6, 58661
                  xor          s10, a3, s4
                  xor          a5, a6, s6
                  sra          s9, a1, sp
                  ori          a2, s5, -920
                  and          s6, a2, s4
                  and          s9, s8, s10
                  xori         tp, t6, 1993
                  sll          s5, s6, t5
                  sra          s5, s3, a2
                  xori         s7, a0, 348
                  srl          s9, ra, a7
                  srl          a1, s0, s7
                  ori          s2, a3, 1676
                  nop
                  addi         a3, s11, 333
                  slti         t3, s1, -1585
                  slti         a5, s9, -1902
                  nop
                  slt          s2, s11, t3
                  slti         a6, s2, -63
                  sltiu        a3, tp, 1776
                  srl          tp, sp, s4
                  addi         sp, t1, 1597
                  nop
                  nop
                  sltu         gp, tp, a2
                  slli         zero, t1, 22
                  and          t4, s7, s3
                  sra          t5, a1, s11
                  ori          a7, t4, -1088
                  srl          t5, s9, a3
                  nop
                  slti         a6, s7, 683
                  sub          a0, t6, t5
                  auipc        s4, 26290
                  srli         a6, t6, 12
                  slti         s5, s11, 1510
                  add          t2, s11, t1
                  ori          t2, t4, 921
                  nop
                  andi         s5, t4, 1681
                  nop
                  or           s0, t5, a6
                  andi         s3, s5, -1778
                  addi         a1, tp, 1750
                  sub          t3, s10, t0
                  addi         a2, a2, -818
                  li           s5, 0x0 #start riscv_int_numeric_corner_stream_18
                  li           a5, 0x4b96ca6d
                  li           sp, 0xffffffff
                  li           a2, 0xbc798840
                  li           s10, 0x0
                  li           tp, 0x80000000
                  li           gp, 0xffffffff
                  li           t0, 0x0
                  li           s0, 0x0
                  li           t3, 0x0
                  add          gp, a5, s10
                  auipc        a5, 505096
                  addi         s5, sp, -1886
                  add          t3, gp, t3
                  auipc        s10, 676428
                  sub          gp, t0, t3
                  lui          a5, 33874
                  lui          s0, 33517
                  lui          sp, 861290
                  add          t3, s5, a5
                  lui          gp, 458545
                  addi         a5, s10, 2032
                  lui          tp, 97090
                  sub          gp, gp, tp
                  addi         s10, a2, 1639
                  sub          a2, t0, s10
                  nop
                  add          sp, a5, t0
                  nop #end riscv_int_numeric_corner_stream_18
                  slt          a5, a3, zero
                  auipc        a7, 5897
                  nop
                  srai         s10, s11, 13
                  slt          a1, s0, t4
                  srl          a6, a2, ra
                  slli         s7, t6, 27
                  lui          s7, 291123
                  sll          s3, a0, s7
                  sll          s7, a0, s7
                  sra          t0, s11, a1
                  srai         s5, t0, 4
                  addi         a3, a4, -151
                  xor          t5, s8, s7
                  slt          t4, t4, s11
                  or           tp, s6, ra
                  sltu         s5, a0, ra
                  add          a2, s9, sp
                  slti         s0, t4, 1881
                  auipc        t1, 867421
                  slt          gp, ra, s3
                  xor          s9, s0, s6
                  add          s10, s3, s8
                  slt          a1, a6, s0
                  andi         a3, sp, 1621
                  and          a2, s2, t5
                  add          t4, s10, zero
                  nop
                  srai         s0, a2, 20
                  auipc        a2, 24432
                  slli         a2, s7, 0
                  ori          s4, s4, 1959
                  srli         t1, a1, 31
                  or           s10, a5, a4
                  lui          a1, 720320
                  slli         t4, a4, 31
                  xor          a1, s11, t2
                  auipc        s10, 14525
                  sra          t2, ra, sp
                  add          a6, s10, s11
                  sub          a1, a1, sp
                  srai         s2, zero, 7
                  auipc        s10, 499304
                  srl          s9, tp, s10
                  sltiu        a0, a4, -917
                  sra          s10, gp, s11
                  and          a4, a0, t2
                  sub          t4, a5, s1
                  sltiu        s5, s9, -1454
                  sll          t4, t1, zero
                  sra          a4, s11, t6
                  sltiu        t1, ra, -1750
                  slt          s4, s11, a3
                  srl          a1, a3, s9
                  auipc        s3, 947309
                  andi         gp, a4, 853
                  slt          t1, a6, a1
                  slt          a7, t5, t2
                  srli         a6, a5, 16
                  sll          a0, s9, t1
                  or           s10, a0, a7
                  nop
                  srai         a6, t5, 21
                  srai         a6, ra, 18
                  and          t3, a3, t3
                  nop
                  srli         gp, t1, 27
                  sll          t0, a1, t6
                  or           a7, s3, s0
                  lui          s1, 87454
                  or           t0, a3, a4
                  or           t2, s11, s4
                  nop
                  sll          a0, t5, s4
                  ori          s0, a4, -823
                  or           t5, t2, s9
                  ori          s3, t4, 541
                  add          s10, a0, tp
                  slti         s7, ra, -1159
                  and          s1, t5, s7
                  xor          a4, s9, gp
                  and          zero, tp, s8
                  lui          a5, 533346
                  sll          t0, s10, s4
                  slti         a6, sp, 1697
                  srl          t5, a7, s7
                  or           zero, s10, s9
                  slti         s10, s5, -1746
                  sll          s4, t6, a4
                  slt          tp, a0, t4
                  slti         s6, s6, -289
                  slti         t3, s8, -1038
                  xori         a4, s1, 1538
                  srai         t4, a5, 7
                  sra          s6, a1, a0
                  ori          s9, a1, -1404
                  slli         s9, t1, 7
                  ori          s5, s9, 1984
                  andi         a1, s7, -537
                  andi         gp, t2, 1666
                  sll          s3, sp, a6
                  xori         s4, tp, -2012
                  sll          s6, a5, s7
                  sltiu        a4, s8, 1671
                  sub          a5, sp, zero
                  or           t2, a1, s10
                  srai         s7, s7, 27
                  xori         t3, s8, 362
                  sltiu        t5, s1, -1170
                  sll          sp, s10, gp
                  sltu         s3, a7, s0
                  sltiu        s5, gp, 1918
                  srai         s7, a5, 20
                  ori          t4, s2, 880
                  lui          s2, 566031
                  sll          s2, t3, sp
                  or           s4, a1, t2
                  ori          a7, t2, -147
                  sra          s7, a5, s1
                  xori         t2, a5, 32
                  addi         a3, sp, 1727
                  addi         ra, s8, 1491
                  add          a7, a2, t4
                  sra          a3, s8, t4
                  auipc        ra, 790330
                  nop
                  auipc        s3, 556863
                  andi         a2, a4, -1809
                  srli         s5, ra, 3
                  lui          a1, 860840
                  slli         a3, a7, 29
                  srai         s4, sp, 0
                  lui          t5, 940860
                  or           t3, t1, s2
                  srl          a3, t4, zero
                  slti         t5, s5, 670
                  andi         s6, t0, 1439
                  slti         s7, a0, 122
                  nop
                  srli         t4, t6, 3
                  or           t0, tp, ra
                  slti         a2, a0, -1628
                  add          a4, s1, t6
                  sltu         s9, s11, a5
                  xor          s10, gp, ra
                  srl          a4, a6, a2
                  auipc        zero, 669496
                  slt          s1, ra, t2
                  sltu         t0, t3, a6
                  lui          s10, 744418
                  sltiu        ra, zero, -1707
                  srli         s10, t5, 26
                  addi         s5, zero, 1805
                  auipc        s9, 307654
                  sltiu        s2, gp, 1001
                  slti         s6, t4, -634
                  add          t3, s2, ra
                  sub          s6, a0, t3
                  sltu         a1, a6, t2
                  lui          ra, 51736
                  nop
                  srli         a2, s6, 3
                  andi         s3, a7, -1677
                  srl          a2, s8, a6
                  slt          s5, t2, s5
                  add          s4, a2, tp
                  and          s9, s5, t1
                  and          t2, s6, gp
                  auipc        a1, 389087
                  and          a1, s0, a4
                  andi         t3, a0, -860
                  and          s0, s7, s5
                  addi         s1, a7, 273
                  sub          s3, s5, sp
                  sub          a2, a6, ra
                  slli         t1, t2, 19
                  slt          a7, t6, tp
                  srli         s4, s6, 21
                  or           a0, gp, s4
                  xori         s4, s9, -692
                  srli         s7, s4, 17
                  sltiu        a1, s11, 579
                  srl          t0, s4, t6
                  addi         s7, a0, -1592
                  or           s3, t5, a3
                  xori         a0, a1, 1975
                  srl          s7, t2, a2
                  auipc        ra, 1012030
                  addi         a3, a1, 1599
                  xor          a5, ra, tp
                  and          a7, s0, sp
                  sra          a3, s6, s10
                  sll          s1, t4, a3
                  andi         s2, a6, -1590
                  sra          s4, t4, ra
                  slti         s7, s0, -46
                  auipc        t1, 643968
                  sltiu        a1, a3, 757
                  sub          s9, s5, t1
                  sltu         a3, s9, tp
                  ori          s6, t5, 1080
                  sll          s1, t0, t3
                  slti         a5, a2, 164
                  slli         t3, s7, 14
                  auipc        s7, 26337
                  sltiu        a0, t1, 121
                  ori          s6, a5, -819
                  or           a1, gp, s9
                  sll          s7, a1, a7
                  sra          gp, t5, a3
                  lui          zero, 648039
                  add          a6, s8, a3
                  auipc        s10, 781672
                  add          a6, tp, t1
                  srai         a5, s7, 17
                  add          t4, s10, a0
                  slli         s0, a1, 8
                  andi         gp, s4, 908
                  auipc        s1, 276682
                  andi         s1, s11, 1556
                  srl          s3, tp, s10
                  and          s1, s11, s9
                  add          s10, t1, a6
                  nop
                  srai         a4, a3, 18
                  sltu         a5, tp, a5
                  sltiu        a4, a1, 901
                  sltu         ra, t5, s7
                  lui          s6, 471778
                  sll          s7, a3, ra
                  sll          sp, t0, gp
                  srl          t4, sp, s0
                  sll          t2, s9, t4
                  xor          s3, s0, gp
                  slti         t3, a0, -1457
                  sub          t4, s2, zero
                  or           s7, a6, s11
                  ori          t0, a7, -772
                  sltu         t0, a3, s11
                  auipc        t1, 765892
                  and          a5, t2, s1
                  sll          s0, a0, a1
                  andi         t4, gp, 1974
                  auipc        a3, 564695
                  nop
                  or           s6, s4, s2
                  addi         ra, a5, -1845
                  slt          a4, a5, a6
                  slli         zero, t3, 19
                  andi         t2, t5, 418
                  slti         s10, a2, -1928
                  sub          s3, t2, a1
                  sub          a3, a5, a1
                  slli         t4, a1, 0
                  add          s9, t3, sp
                  and          sp, zero, a7
                  srai         zero, t3, 0
                  or           a0, ra, t5
                  slt          t4, a7, a6
                  sltiu        s4, s9, -709
                  nop
                  slli         t0, t6, 29
                  or           t5, a7, a1
                  nop
                  and          a6, s4, t4
                  sra          a3, s3, s7
                  sra          sp, t2, a5
                  xori         tp, s8, 1323
                  addi         a1, s4, -355
                  sltiu        s2, s4, -282
                  slti         tp, tp, -181
                  addi         sp, s2, -986
                  and          s6, a7, s3
                  slti         gp, a5, -140
                  and          t1, s11, t3
                  or           a7, gp, sp
                  srli         a0, s9, 15
                  srli         a6, t2, 15
                  sltiu        t5, s9, -1250
                  slti         t4, t4, -2022
                  slli         s1, a2, 13
                  srai         s0, ra, 4
                  xori         t5, s8, 1228
                  xor          s9, t0, tp
                  sra          t5, s0, s3
                  srai         s4, a3, 16
                  xor          gp, s11, a1
                  sll          s3, s4, a4
                  addi         t4, tp, -484
                  ori          s10, t3, 1853
                  srai         a0, gp, 19
                  sub          zero, a3, s5
                  sltiu        t1, t3, -1219
                  sll          t0, s3, tp
                  sub          a1, a6, s1
                  sub          s7, sp, s11
                  slti         sp, tp, -1232
                  ori          s3, a7, -446
                  sltu         a1, a2, ra
                  sltu         s9, gp, s8
                  andi         a3, ra, -424
                  and          s9, a6, a0
                  andi         s9, zero, 954
                  add          a7, a6, s1
                  ori          s0, a1, 1623
                  sra          s10, s7, t5
                  srai         s3, sp, 10
                  or           s5, s10, t2
                  srai         a2, t4, 9
                  nop
                  slti         gp, t4, 1233
                  nop
                  addi         s5, t3, 872
                  xor          sp, a5, a4
                  xori         s5, s5, -1172
                  auipc        a1, 498021
                  slt          a4, s11, s10
                  ori          t5, s0, 1682
                  slli         t0, t6, 27
                  sub          t1, s1, gp
                  sltu         zero, s11, a2
                  srl          gp, s0, t1
                  sltiu        a7, a7, 1911
                  slti         t2, a4, 523
                  auipc        s10, 776358
                  sltiu        a4, s3, 1212
                  sra          a2, a1, tp
                  nop
                  or           s9, s4, s7
                  and          t5, s11, t3
                  xori         t2, a7, -737
                  lui          tp, 969011
                  slli         gp, a0, 3
                  addi         s1, s11, -648
                  sltiu        a4, s10, 28
                  sltu         a3, s5, s0
                  srli         a3, tp, 20
                  xor          t5, s6, tp
                  lui          tp, 204574
                  slti         s10, s9, 2006
                  nop
                  sra          a2, s9, a7
                  sltiu        t3, s10, -713
                  ori          a0, t0, 876
                  slli         a1, a1, 26
                  or           s2, a6, ra
                  xor          t0, a3, t5
                  andi         s5, a7, -1529
                  lui          a2, 939649
                  xor          tp, tp, t2
                  srl          s6, t1, s11
                  slt          t3, s7, s2
                  or           t3, a0, t1
                  sra          a0, t6, s9
                  and          s1, s3, s2
                  nop
                  xori         a7, s1, -1346
                  sltu         s3, a2, s4
                  and          s0, s8, t5
                  sltiu        s10, t5, 1975
                  sra          s1, t4, s2
                  slt          s6, s6, s7
                  srli         s0, s1, 4
                  or           a7, s5, gp
                  or           a3, a2, s11
                  srli         gp, s9, 14
                  srli         t2, s8, 30
                  ori          s4, s6, 865
                  srai         a1, s7, 23
                  sub          a3, s2, a2
                  addi         ra, a1, -371
                  sltiu        a3, zero, 966
                  srai         s0, t5, 0
                  slli         a0, a7, 3
                  slti         s3, s1, -1181
                  addi         s10, ra, 671
                  nop
                  sub          s2, t4, s0
                  srl          s7, a7, s5
                  xori         t1, a6, -493
                  lui          s5, 1012563
                  sll          a6, s3, gp
                  add          s6, a0, a2
                  srai         s6, a2, 4
                  sltiu        a7, s9, 870
                  or           a5, a3, s1
                  sll          a0, a6, t2
                  sra          a7, t2, t4
                  or           a2, a2, t3
                  sltu         s2, ra, s2
                  or           t3, t1, ra
                  sra          a0, s10, tp
                  add          s9, s2, s3
                  and          tp, a2, zero
                  slt          t2, zero, t1
                  sltu         s3, s3, gp
                  andi         t2, sp, -703
                  sltu         t2, a2, s1
                  ori          t3, t3, 819
                  srl          s1, s10, a0
                  sll          t5, a0, s7
                  add          t1, s9, s9
                  srli         s2, t4, 31
                  or           t2, s2, t3
                  nop
                  addi         t4, t1, -317
                  sltu         s4, s6, a3
                  sub          a6, s6, sp
                  xori         s1, a0, -73
                  and          t3, t0, s1
                  auipc        s1, 1005736
                  sll          s9, s7, t4
                  ori          a7, s3, -1995
                  sltiu        a0, t0, 1529
                  or           gp, s6, s4
                  sra          s3, t5, s10
                  lui          a0, 497106
                  slli         zero, s1, 21
                  addi         s4, s2, 1856
                  and          a7, s8, t6
                  lui          a6, 318530
                  sll          a4, s1, s8
                  xori         t0, a4, 776
                  sll          s3, sp, gp
                  andi         t5, t3, -1124
                  sra          a6, a5, a1
                  srli         t1, t5, 11
                  lui          tp, 974852
                  andi         t2, t5, -267
                  sub          s4, a5, ra
                  slt          t2, s7, s0
                  andi         sp, tp, -4
                  srli         a7, s6, 12
                  add          a6, t0, s8
                  slli         s6, s3, 5
                  slli         a4, a4, 10
                  sltiu        s0, t2, -704
                  addi         ra, s5, 925
                  xor          s5, a0, a2
                  sltiu        t1, s6, -39
                  xor          a0, a0, t2
                  slti         s0, a7, -2042
                  and          t0, t6, s1
                  or           gp, s5, s6
                  sra          t3, sp, t1
                  srl          a5, a1, t1
                  slt          a3, s11, tp
                  srl          s3, t1, sp
                  andi         t2, zero, 1581
                  srli         a1, t6, 3
                  and          sp, t1, a1
                  sll          s2, sp, s8
                  ori          a1, s2, 777
                  srli         t3, s4, 20
                  andi         s9, t0, 1635
                  sltu         a1, gp, tp
                  slt          a7, s7, s5
                  srai         s2, t3, 8
                  sltiu        a4, a3, -843
                  sra          s7, t1, a3
                  ori          s5, a5, 1505
                  add          gp, t0, s11
                  slli         a7, s10, 13
                  add          s6, t2, a2
                  slli         s3, t0, 11
                  sra          t0, s3, a7
                  sra          gp, s7, s2
                  slli         a7, s2, 0
                  srli         t3, s8, 12
                  ori          t2, t5, 874
                  srli         s1, s10, 6
                  slt          tp, ra, a0
                  addi         s5, t5, -1129
                  srai         t1, t3, 2
                  addi         a2, zero, 1667
                  slti         s7, s8, 369
                  sub          a4, t2, s11
                  xori         t2, zero, -972
                  and          t3, t4, a6
                  sub          ra, t2, s3
                  sub          t1, s8, s0
                  srl          s6, a1, s2
                  srli         s6, s8, 29
                  sll          t2, a6, t0
                  ori          t3, s10, -1314
                  xori         zero, tp, -90
                  addi         tp, s0, 154
                  nop
                  slt          s10, sp, s4
                  nop
                  slti         sp, t5, -1548
                  sll          sp, s8, s2
                  auipc        s9, 68870
                  sll          sp, s5, sp
                  andi         s1, s2, 1397
                  and          s6, t0, a0
                  srl          s9, a7, s11
                  xori         sp, s1, -1706
                  xor          t1, t2, s5
                  add          zero, sp, s5
                  ori          s7, s7, -2028
                  slt          s1, s7, a2
                  or           sp, a0, s2
                  and          s3, s11, s7
                  srai         s3, s4, 0
                  nop
                  srl          s9, t3, a3
                  sltiu        zero, a6, 1623
                  ori          s9, s9, 845
                  xor          zero, s7, s1
                  srai         t3, ra, 1
                  srli         t5, t4, 1
                  nop
                  slti         a3, s4, 476
                  sra          a4, s10, t5
                  sll          gp, s9, a3
                  slti         gp, t6, 758
                  sltu         a2, gp, sp
                  ori          t0, ra, -937
                  sra          t1, s4, a3
                  addi         s1, s8, -864
                  xor          a3, s8, s8
                  andi         s3, s0, 873
                  xori         zero, ra, 1024
                  srai         t1, s8, 2
                  sub          s0, s9, zero
                  slti         t2, s5, -1926
                  slt          a3, s7, s5
                  andi         s3, a6, -292
                  add          gp, a5, t5
                  slli         s0, t5, 14
                  and          t4, ra, t6
                  srli         s3, a4, 1
                  add          s9, t3, t6
                  and          t4, s0, t3
                  sub          a7, a2, a3
                  and          t0, tp, a5
                  andi         ra, a2, 436
                  slti         t4, s9, -365
                  ori          tp, a4, 1889
                  xori         a2, gp, 1650
                  srl          a6, a0, s3
                  slli         s0, s3, 22
                  sltiu        s0, t1, 521
                  srl          a7, s10, s7
                  ori          s5, s6, 1896
                  sll          zero, t4, s1
                  sltu         s6, t3, zero
                  sltiu        a2, s10, -1019
                  and          s3, s6, s1
                  addi         s4, s8, -398
                  slt          a2, s2, a0
                  sll          t2, a5, t0
                  sltiu        a7, s8, -1664
                  or           t3, s1, s4
                  slt          s0, s8, t4
                  addi         s10, t5, 1972
                  lui          t1, 890637
                  srli         t3, s3, 17
                  sra          t4, t0, a5
                  srai         a5, a2, 24
                  or           a0, a1, a1
                  nop
                  xori         a7, s5, -1658
                  lui          ra, 614365
                  srli         sp, t4, 5
                  srl          s3, s5, s1
                  slli         s0, a5, 26
                  andi         a0, s3, -119
                  and          t5, s3, a4
                  or           s5, s0, s9
                  slt          a2, t1, s4
                  addi         a5, s5, 1516
                  andi         s5, t4, 1821
                  slt          t2, t2, tp
                  and          t0, s0, s2
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_11
                  li           t5, 0xffffffff
                  li           s4, 0x80000000
                  li           a4, 0x918f71ed
                  li           a7, 0x0
                  li           gp, 0x7079d88
                  li           s7, 0x80000000
                  li           s3, 0x0
                  li           a5, 0x80000000
                  li           tp, 0x0
                  auipc        s7, 495559
                  sub          a5, a4, a7
                  lui          s4, 962853
                  auipc        a7, 563835
                  nop
                  lui          s3, 127520
                  add          t5, tp, s4
                  auipc        gp, 949374
                  nop
                  auipc        s3, 690814
                  auipc        a1, 310902
                  nop
                  nop
                  lui          a5, 960058
                  addi         a7, a5, 1288
                  addi         a1, a5, 217
                  sub          a5, a4, a5
                  sub          s3, gp, tp
                  nop
                  addi         t5, s4, -1291
                  lui          gp, 366965
                  lui          tp, 989129
                  addi         s7, s3, 1851
                  lui          s7, 618005
                  add          a5, tp, s3 #end riscv_int_numeric_corner_stream_11
                  sub          s2, s10, s10
                  add          s0, t3, a7
                  andi         t3, a2, -149
                  addi         s5, tp, 622
                  sll          a6, sp, a2
                  sra          t1, s8, zero
                  xori         t2, s1, -1794
                  xor          t4, s8, t2
                  xori         s7, a2, -1655
                  or           s6, sp, s0
                  add          ra, s3, s4
                  addi         sp, t2, 1129
                  ori          s6, s1, 1798
                  srai         s7, t6, 5
                  slli         a7, t0, 24
                  auipc        t5, 111627
                  ori          s4, s9, -1400
                  ori          tp, s9, 1412
                  srli         s7, a4, 18
                  and          t2, s0, a0
                  andi         a7, t6, 1768
                  xori         s0, t0, 498
                  nop
                  sltiu        ra, ra, 1802
                  ori          s9, a2, -315
                  sub          gp, gp, a3
                  sltiu        zero, s11, 487
                  lui          t0, 121918
                  lui          zero, 502961
                  lui          a3, 957536
                  sub          s10, s6, gp
                  slli         t4, s1, 30
                  xori         s7, s5, -1916
                  or           s7, s2, s6
                  xori         s10, s1, 498
                  sub          sp, s1, a3
                  slti         a6, ra, -532
                  slti         ra, sp, -135
                  add          t5, s6, a1
                  slti         s10, s8, -1388
                  ori          s5, s0, 1624
                  sltu         zero, s8, s8
                  or           s7, zero, a0
                  sll          t1, a1, s1
                  xor          tp, a3, ra
                  or           ra, a5, a4
                  sra          t3, s1, t4
                  slt          s2, t5, s9
                  sub          s2, t3, s1
                  sub          a7, s4, a3
                  xor          tp, a6, t4
                  ori          s0, s3, 159
                  slli         s10, s0, 3
                  ori          a4, s5, -1917
                  slt          a2, s8, t5
                  addi         s1, sp, 1945
                  sub          t4, s1, t1
                  sltiu        a2, s10, 1306
                  slli         t4, s10, 24
                  sub          a3, s11, t1
                  sll          s3, s5, s1
                  nop
                  or           a6, t5, s6
                  slti         zero, zero, 95
                  xor          a4, s3, s1
                  lui          zero, 176253
                  xori         a5, a0, -1636
                  addi         t3, a6, 933
                  srli         s1, ra, 24
                  nop
                  slt          t1, s3, a3
                  andi         t1, t1, 385
                  slli         t1, t1, 14
                  sub          s5, zero, t1
                  and          a3, a6, s6
                  sra          ra, t2, s3
                  andi         s1, s4, 1833
                  xori         a1, s8, -1664
                  lui          s0, 276936
                  xor          a2, s7, s11
                  sra          s5, s6, s7
                  or           a7, sp, a7
                  lui          t1, 528531
                  and          s6, tp, t6
                  srl          s4, t4, a2
                  srai         s6, s2, 26
                  srai         s0, t3, 6
                  add          t3, t1, s4
                  sra          a1, s9, t3
                  ori          a3, a7, -1173
                  xori         t5, s4, 1143
                  slli         a6, a0, 11
                  slt          a0, a1, t6
                  nop
                  sltiu        t4, ra, -211
                  sll          a2, ra, s2
                  lui          s1, 602627
                  and          a7, s1, s7
                  nop
                  addi         a5, a6, -340
                  auipc        s7, 192026
                  auipc        s10, 871431
                  sra          a6, s4, s5
                  nop
                  sltu         s1, sp, t0
                  addi         a2, tp, 342
                  lui          a7, 874752
                  srl          t3, a0, s5
                  auipc        a5, 821634
                  slti         s2, t4, 282
                  or           s4, s5, s6
                  slli         s6, t0, 10
                  sltu         t2, s5, s1
                  xor          s2, zero, s10
                  and          t5, t5, s3
                  srli         gp, s2, 6
                  nop
                  sll          sp, s9, s7
                  srai         t0, s8, 17
                  ori          t1, t5, -116
                  auipc        t5, 675666
                  slti         t1, s9, 401
                  sub          t4, s1, tp
                  and          a6, s4, s3
                  slli         a5, a2, 26
                  sll          ra, s1, s8
                  sra          t0, t1, t1
                  srli         a7, a7, 28
                  srai         t5, t4, 13
                  add          sp, a2, t0
                  slti         s7, s9, 1348
                  sltu         s7, ra, a6
                  nop
                  sub          a4, s11, s5
                  ori          a5, s0, 1375
                  slli         ra, a1, 0
                  srli         tp, s8, 16
                  ori          tp, a0, -951
                  add          t2, t2, t0
                  slti         s5, ra, 60
                  addi         zero, t6, 1696
                  sltiu        sp, s4, 1434
                  srl          gp, s4, t3
                  srl          s9, a6, s2
                  srl          s2, a0, s8
                  ori          a0, t3, -675
                  lui          t3, 10001
                  slt          zero, t0, s0
                  xor          s1, t2, t5
                  slti         s1, a4, -1668
                  andi         gp, t4, -768
                  nop
                  slt          a5, ra, a6
                  xori         a0, s7, -287
                  nop
                  andi         zero, s0, 1220
                  xori         sp, s4, 196
                  nop
                  ori          s7, s9, -946
                  sra          t5, t2, a3
                  slt          t1, s0, a4
                  add          a4, t1, s0
                  srai         s2, t2, 1
                  xori         a1, s9, 726
                  slli         ra, s8, 31
                  nop
                  or           gp, s1, s6
                  sll          t2, t4, s4
                  sltu         t1, a4, a6
                  srai         a5, t0, 12
                  srai         s7, t6, 28
                  ori          a4, a1, 981
                  sltu         zero, t5, s8
                  sub          a2, a5, s11
                  xori         s5, a7, -1260
                  sltiu        a6, gp, 520
                  nop
                  slt          s0, s3, a4
                  sub          s7, a7, s5
                  xor          t5, s9, t3
                  srai         s0, gp, 4
                  auipc        a5, 114974
                  slti         s1, s2, -91
                  sub          s2, t2, a5
                  lui          zero, 776635
                  sub          s1, s10, a3
                  slt          a0, s3, t2
                  or           s9, t0, gp
                  lui          t3, 862238
                  and          a2, s7, a7
                  nop
                  xor          a6, a4, a6
                  sltiu        zero, s10, -174
                  srai         gp, s6, 12
                  auipc        a1, 554938
                  addi         s3, a0, 1335
                  andi         t4, s1, 559
                  and          s10, a0, a2
                  xori         t4, a3, -152
                  add          s1, t3, t4
                  or           a1, s4, a1
                  slti         a0, tp, 674
                  xor          a1, a6, t4
                  slti         s9, t0, 777
                  xor          s3, a3, s0
                  sra          a6, s1, t5
                  xori         a1, a3, 130
                  xor          zero, s3, s10
                  srai         s4, s9, 10
                  and          s3, a5, t4
                  lui          a4, 315126
                  slti         t1, s9, 1687
                  slt          s7, s11, a6
                  sra          s1, t4, t3
                  slti         a6, t2, 45
                  sra          a0, gp, t4
                  sra          a1, t3, zero
                  auipc        a4, 758585
                  slli         s4, t0, 5
                  xor          t2, s10, s4
                  sll          a6, s5, t5
                  sltiu        t3, s4, 1963
                  slti         s1, t2, -383
                  sra          a5, a7, a0
                  sub          t3, s6, a0
                  nop
                  srli         a0, a6, 3
                  nop
                  lui          s9, 737317
                  sub          s7, s4, t1
                  or           a6, a4, s5
                  xori         sp, zero, 268
                  sra          t3, a4, s4
                  sltu         a5, s11, t3
                  slli         s0, a1, 16
                  auipc        s7, 506125
                  slli         s2, s4, 23
                  srli         t4, a6, 5
                  add          ra, s2, sp
                  or           a6, a1, s6
                  xori         a4, a1, 13
                  sltu         s0, t3, a4
                  xori         s7, s2, 1452
                  or           a6, a1, t3
                  sltu         a4, s3, s9
                  xor          a5, a6, s4
                  lui          a3, 350830
                  xori         t0, gp, -1311
                  slli         a3, s7, 8
                  sub          a1, ra, t0
                  srli         t3, s2, 22
                  slli         t2, gp, 9
                  and          gp, a7, t2
                  xor          s2, s10, ra
                  ori          s9, s6, -1174
                  sra          a3, s5, s5
                  srli         a7, a4, 25
                  sll          a6, a0, s1
                  sll          s6, t4, t0
                  and          t4, t6, s1
                  add          s3, s5, t4
                  lui          s4, 300863
                  srli         t3, t5, 4
                  sltu         ra, a5, t2
                  addi         s2, a7, -831
                  ori          a0, s10, 1622
                  andi         s10, s7, -1027
                  slti         t2, s10, 42
                  lui          ra, 866611
                  sltu         a2, a4, t2
                  nop
                  slt          t1, a6, s4
                  lui          tp, 725258
                  add          s2, t1, s6
                  lui          s4, 220512
                  sra          t0, a1, s7
                  srli         a0, a5, 13
                  slti         a2, a0, 390
                  lui          a1, 646183
                  srl          a3, s1, a5
                  srai         s5, a3, 7
                  sll          s5, s10, t4
                  srai         s5, s10, 28
                  sltiu        s10, t4, -318
                  srli         s3, t6, 8
                  addi         t0, a5, 87
                  sltu         a7, s3, s0
                  nop
                  lui          a1, 716327
                  sub          tp, s3, a5
                  srl          t0, s0, a0
                  sltu         t5, s11, s7
                  and          a5, t3, s7
                  slli         a0, ra, 20
                  ori          s0, s2, 784
                  or           s9, a6, s3
                  slli         a7, s4, 7
                  srai         t0, a1, 24
                  sub          t5, a5, s0
                  srli         s9, t2, 13
                  lui          ra, 365301
                  sra          sp, t1, t6
                  andi         s9, t1, -695
                  add          a5, sp, s1
                  xori         tp, s7, -1758
                  xor          a4, a1, a4
                  addi         s6, s4, -946
                  auipc        sp, 885590
                  slti         zero, a6, -1475
                  slt          tp, t0, t2
                  sub          a1, s2, sp
                  sub          s2, s11, t6
                  and          a1, s0, s2
                  or           s7, s9, t5
                  srli         s4, t5, 14
                  ori          t5, t1, -1323
                  xori         t1, t4, -521
                  sra          a4, s9, s10
                  and          a2, t5, a3
                  sltiu        t3, s0, 1588
                  xor          t3, t5, a4
                  srai         t2, a1, 18
                  slli         ra, s0, 20
                  nop
                  andi         tp, sp, -552
                  andi         ra, a7, 1828
                  sll          t4, s6, sp
                  nop
                  srli         s4, a0, 31
                  or           gp, tp, s2
                  and          a0, t3, t4
                  srl          a2, a7, t6
                  andi         t5, t2, -376
                  and          zero, s1, a6
                  lui          s5, 618693
                  xor          a2, gp, t6
                  srl          t5, t5, a2
                  lui          a7, 712938
                  lui          s4, 358722
                  sub          s1, s5, s3
                  andi         t3, t6, 162
                  ori          tp, t3, 178
                  xori         a2, a6, 1534
                  andi         s5, a3, 1889
                  sra          s9, s5, t1
                  and          s9, t1, s8
                  and          t0, s0, a2
                  addi         s9, s4, -1506
                  andi         t3, t4, -635
                  sll          tp, s8, s4
                  add          s5, t4, a4
                  xori         a6, s7, 1846
                  sltiu        ra, t5, -1429
                  and          s6, s8, t5
                  srai         ra, sp, 1
                  slti         tp, s11, -1490
                  auipc        s6, 503889
                  auipc        t4, 180012
                  addi         s7, s10, 1538
                  sub          t4, a1, a4
                  sll          ra, s6, s6
                  ori          t4, tp, -1629
                  sub          a5, a3, a2
                  slli         s0, s11, 6
                  and          t4, sp, s10
                  xori         a0, s8, -693
                  xori         a1, t3, -1215
                  add          t3, a5, t6
                  lui          s1, 424885
                  srai         a1, s0, 18
                  andi         a4, a4, 693
                  sltiu        a6, sp, 1498
                  sltiu        s10, gp, -1779
                  xor          t5, t4, t5
                  andi         s0, t0, 1165
                  srai         a6, a0, 28
                  ori          s2, s1, 319
                  ori          s4, t6, -1920
                  srai         a7, s8, 17
                  and          s10, s10, s0
                  sltu         ra, sp, a5
                  auipc        zero, 819642
                  srai         a0, gp, 20
                  sra          s5, t4, s2
                  or           s0, s1, s2
                  and          a6, s7, s6
                  add          s0, tp, ra
                  srl          sp, s1, t5
                  sub          a4, s2, a6
                  sltiu        sp, a3, -1727
                  sltiu        t4, t0, 89
                  xori         a3, a7, -2031
                  sra          s10, s5, a5
                  lui          s2, 318215
                  addi         t0, a1, -103
                  andi         a7, a2, -1728
                  auipc        t3, 262250
                  srai         a4, t1, 13
                  slti         a1, s6, 1543
                  andi         s10, s6, 909
                  sltu         zero, a7, s8
                  sltu         s9, s5, tp
                  xori         t5, a4, -720
                  addi         zero, t4, 1048
                  xor          ra, a6, a0
                  or           a2, a6, ra
                  xor          t4, s5, s3
                  and          s0, t5, zero
                  lui          t4, 558900
                  and          a4, s4, s0
                  and          s6, s2, s4
                  sll          a3, tp, tp
                  xori         a2, s2, 1114
                  xori         s5, tp, 707
                  sltiu        s10, s9, 789
                  add          s3, a2, t1
                  addi         ra, t1, 1973
                  sltiu        s2, a7, -1465
                  ori          tp, s6, 887
                  slli         sp, s2, 9
                  sra          a7, s4, s5
                  sll          ra, ra, a1
                  lui          zero, 405529
                  sll          a2, tp, ra
                  srai         t3, s11, 14
                  srl          s1, s5, t1
                  lui          t2, 834016
                  nop
                  ori          a1, s9, 881
                  sra          s9, s11, a7
                  or           a5, t6, s6
                  and          a1, s11, t1
                  sub          a4, s0, s7
                  srai         t1, s9, 28
                  sra          ra, a1, s2
                  sltu         gp, t1, a6
                  and          s5, a0, a0
                  lui          s9, 471692
                  slli         sp, s9, 25
                  sra          ra, a7, t1
                  andi         ra, s3, -1388
                  sltu         s6, zero, s3
                  ori          s1, s6, 1882
                  andi         t1, t4, -1389
                  nop
                  auipc        gp, 337502
                  sub          s0, s7, s5
                  lui          s10, 609193
                  sra          s5, a2, t3
                  and          t4, s10, s8
                  slli         s1, sp, 6
                  slli         tp, s7, 9
                  slti         s7, s7, -489
                  lui          s9, 194364
                  sltu         a7, s0, tp
                  andi         s1, t2, 773
                  slti         t3, t4, 521
                  and          tp, t5, a6
                  srai         s4, tp, 26
                  sll          s0, s0, a2
                  slli         s3, t1, 24
                  srli         s10, s11, 17
                  slli         t1, a2, 19
                  slti         gp, s2, 835
                  andi         t3, s10, 650
                  slti         s5, tp, -1856
                  or           s10, s1, s5
                  slt          a6, ra, a2
                  slti         t3, s2, -966
                  add          gp, s5, a2
                  sll          a4, s7, a7
                  slti         t4, sp, -475
                  slli         s0, a2, 24
                  sra          a4, tp, a6
                  sll          sp, a3, a5
                  add          s1, a5, tp
                  slli         s5, s8, 31
                  sltu         t1, s3, sp
                  auipc        s4, 783943
                  sll          t5, t4, s1
                  xori         ra, s10, 139
                  xori         a5, t1, -1538
                  sll          a0, s2, t0
                  xor          sp, s9, t5
                  or           a1, s2, a4
                  andi         a1, t1, -1032
                  or           ra, s7, tp
                  sub          s3, a2, a2
                  slti         s10, s9, -1180
                  nop
                  sltiu        tp, s11, -1429
                  addi         s10, s9, 1187
                  srli         s0, a7, 25
                  sra          s0, s10, s4
                  sll          gp, s10, sp
                  sra          s4, s8, sp
                  auipc        a1, 36365
                  srli         t1, t1, 14
                  slti         s7, s7, 873
                  xor          s10, ra, s6
                  ori          sp, gp, 1849
                  slti         a1, s8, -1323
                  sub          s6, s4, a2
                  slli         t1, a4, 4
                  andi         gp, a7, -853
                  addi         s10, s10, -632
                  srli         s2, a5, 4
                  nop
                  xori         s10, s0, -1224
                  sltiu        a7, s5, 1947
                  and          a5, a2, t6
                  addi         s2, sp, -1839
                  srai         sp, a2, 0
                  sra          zero, s9, t3
                  nop
                  sltiu        sp, a2, 306
                  sub          tp, s11, s1
                  add          s3, s3, s8
                  ori          gp, s1, -1452
                  and          tp, t5, a1
                  or           s9, s4, s9
                  or           tp, t4, s3
                  srl          a1, s5, a7
                  srl          zero, gp, s3
                  or           a1, t1, a0
                  or           t5, s11, a4
                  srli         t5, a6, 18
                  xor          a4, s9, s6
                  slt          t2, t5, s9
                  and          s3, s10, s5
                  slli         gp, a3, 26
                  li           t0, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           a4, 0x80000000
                  li           sp, 0x80000000
                  li           s2, 0x943561e0
                  li           s1, 0xffffffff
                  li           t2, 0x80000000
                  li           s10, 0x0
                  li           a3, 0xffffffff
                  li           t3, 0x1aec4a7a
                  li           a0, 0x0
                  lui          sp, 353875
                  addi         a0, a4, -1979
                  auipc        a3, 481067
                  add          sp, sp, sp
                  add          t2, a4, a0
                  addi         a0, a4, 1472
                  sub          a4, s2, sp
                  addi         a0, a3, 1631
                  auipc        a0, 984410
                  lui          a4, 551016
                  lui          t0, 667132
                  add          t3, s2, t2
                  nop
                  nop
                  auipc        t0, 805859
                  nop
                  sub          a3, sp, a3
                  lui          t2, 1011365
                  sub          s1, a0, t3
                  nop
                  sub          a0, a3, a0
                  sub          s1, t0, s10
                  add          s1, a3, s10
                  lui          s2, 231491
                  nop
                  lui          t2, 397374
                  lui          s10, 314477
                  auipc        a4, 368695
                  lui          a4, 358865 #end riscv_int_numeric_corner_stream_14
                  xor          t5, a4, s5
                  srli         ra, s10, 6
                  add          a7, s0, sp
                  sltiu        ra, s8, -1845
                  sub          s5, a5, t0
                  lui          t3, 376395
                  ori          a2, t1, 1799
                  addi         sp, t3, -895
                  ori          s7, s8, -1897
                  add          a6, a4, a3
                  sltiu        s3, gp, 1886
                  auipc        t3, 57245
                  slt          t1, a6, s3
                  sltu         s2, a6, s3
                  xori         gp, s2, -527
                  sra          a0, s6, s1
                  xor          a1, s5, zero
                  or           s5, a7, tp
                  add          t0, s3, tp
                  srli         t0, s5, 21
                  addi         s3, a4, 510
                  slt          s7, t3, a0
                  slt          t5, s3, s7
                  srli         gp, ra, 23
                  or           s3, a5, s6
                  or           t5, t3, t4
                  sltiu        t4, t0, 1110
                  and          a3, tp, tp
                  sub          zero, a4, ra
                  andi         s7, a1, -104
                  add          a7, t4, s9
                  sltu         s1, gp, s6
                  srai         s6, a7, 12
                  sltu         t1, tp, s1
                  sll          s9, s11, a5
                  ori          a3, s11, 1855
                  sra          s7, a0, a7
                  xor          s0, t3, t0
                  add          s7, gp, a2
                  or           s5, a7, t0
                  addi         s10, s3, -1348
                  sltu         t4, s2, t1
                  and          t3, s2, a5
                  sll          s4, tp, t5
                  xori         t2, sp, 304
                  slti         s9, s10, 115
                  srli         s5, t1, 0
                  sra          a4, a1, tp
                  or           t0, a7, t3
                  nop
                  ori          s1, a0, -965
                  srli         s0, t0, 24
                  ori          t2, a0, -920
                  sra          s6, a0, s7
                  ori          t4, s11, -1798
                  srai         s4, a5, 31
                  auipc        s7, 907150
                  srai         zero, a2, 1
                  srai         s7, t5, 8
                  sub          a4, s9, a1
                  add          t5, t0, a7
                  add          a0, a7, s3
                  nop
                  lui          s1, 906519
                  or           s2, t4, s3
                  lui          a5, 260100
                  ori          t1, s1, -26
                  auipc        sp, 421442
                  xori         s3, a0, 1221
                  slti         t5, a2, 625
                  srli         a5, t0, 31
                  sll          a0, t3, a3
                  xori         s4, a4, -1366
                  srl          a7, a3, s3
                  sub          s9, a6, s2
                  slt          s4, t4, t3
                  auipc        s4, 256652
                  xori         s6, sp, -759
                  auipc        s5, 978948
                  srli         s5, t6, 30
                  slli         s4, s11, 21
                  slti         s9, a2, -1000
                  lui          gp, 571134
                  ori          a3, s6, 216
                  srl          sp, t5, zero
                  srli         t2, a1, 10
                  addi         zero, s7, -1121
                  andi         gp, s9, -81
                  slt          ra, t2, zero
                  nop
                  andi         sp, a6, 1861
                  slt          a7, s6, a0
                  slt          a7, t0, a4
                  slti         s6, a0, 1331
                  or           a6, ra, s2
                  and          s9, t6, t4
                  sltu         a4, s10, s8
                  or           s1, s0, a1
                  srai         s10, s5, 9
                  sra          s9, s0, a6
                  srli         s10, s11, 2
                  slti         s7, t4, -965
                  xor          a3, tp, s10
                  xori         ra, s10, 321
                  sltu         ra, a5, s4
                  xori         s1, s2, 1576
                  sub          a6, a4, gp
                  sltiu        t3, t0, 262
                  slli         a1, s8, 0
                  addi         s9, zero, -549
                  ori          s3, a4, -1637
                  srli         s2, s4, 26
                  addi         t0, t0, 913
                  sll          t5, a5, s8
                  add          t3, a6, zero
                  xor          s9, t5, a0
                  andi         tp, s10, 1919
                  ori          t5, s7, 1032
                  sltu         zero, t2, s0
                  sltu         s5, s3, a4
                  srl          a3, a3, t1
                  srai         s1, a3, 29
                  xori         a2, t6, 1840
                  slt          zero, zero, a5
                  slli         s6, s6, 6
                  srai         sp, zero, 7
                  sub          t3, s9, gp
                  sra          t2, s5, a2
                  and          a3, t1, tp
                  lui          gp, 542970
                  sll          s5, t2, ra
                  sll          s6, t3, sp
                  add          a6, a2, t2
                  sll          a3, s6, a0
                  and          t4, s0, s0
                  ori          a3, t6, 1137
                  sra          s1, t6, t3
                  ori          a6, a0, -101
                  sll          t1, s11, s4
                  sra          s5, a0, sp
                  or           t3, s3, t0
                  lui          s0, 359790
                  ori          t5, s4, -766
                  or           t5, s8, s8
                  sltiu        s0, s9, -347
                  xori         t5, tp, 967
                  auipc        t1, 698306
                  sll          s3, a4, s0
                  sll          s4, t1, t5
                  sltu         t5, t1, t2
                  xor          s1, s6, s0
                  xor          a0, s5, s8
                  nop
                  addi         s6, a3, -1280
                  sltiu        s9, a3, -1794
                  add          a5, gp, s7
                  and          a7, gp, t2
                  sltiu        a1, t3, -142
                  xor          a2, t6, s9
                  andi         ra, t4, -1263
                  sub          t0, s2, t6
                  xori         s1, s5, -411
                  nop
                  andi         a0, s5, 915
                  sra          s2, t4, a4
                  sltu         a7, t4, gp
                  srai         gp, a0, 3
                  sltu         s7, a0, s5
                  add          zero, s1, s5
                  xori         t5, a3, 911
                  srl          a0, t1, t5
                  xori         a6, ra, 565
                  srl          s3, s9, s7
                  xor          a0, t2, s1
                  sub          s2, a5, a2
                  andi         s2, s5, -1987
                  sltiu        s6, a7, 1941
                  auipc        t2, 294534
                  andi         sp, t0, 1441
                  andi         a3, s6, 1565
                  xori         gp, s7, 1452
                  add          t5, s6, s4
                  sltiu        gp, t0, -80
                  xori         t4, a0, 699
                  and          s5, a2, t3
                  auipc        s10, 1010091
                  slt          s10, a0, s7
                  sltiu        s3, s11, -397
                  auipc        s4, 684457
                  sll          a4, s5, a4
                  sll          t2, a1, s7
                  xori         s6, t0, 643
                  ori          s1, a6, 1948
                  sltiu        s4, a5, -1555
                  lui          t3, 76004
                  xor          a5, t2, t1
                  sll          a2, s7, t0
                  addi         zero, s4, 351
                  srli         a2, s4, 8
                  and          a7, a0, ra
                  sub          a3, s6, a0
                  sub          s9, a4, s9
                  xori         ra, t0, -775
                  sll          s3, s5, s7
                  slli         s2, s5, 22
                  srl          s5, a3, sp
                  addi         tp, s0, 78
                  ori          s6, s10, -277
                  sltiu        a7, s8, 1663
                  slli         s6, s6, 20
                  nop
                  add          s0, t3, sp
                  andi         t3, s0, -1050
                  sltu         s7, zero, sp
                  srli         t3, s10, 29
                  ori          a3, s0, 1234
                  andi         s9, a4, -432
                  or           zero, s0, a7
                  slti         s2, t3, -1658
                  slli         a3, a3, 18
                  addi         s2, t4, 1599
                  sra          s0, s6, t0
                  srai         a7, s7, 31
                  ori          s2, a6, -2019
                  lui          a4, 567653
                  srli         s6, s7, 4
                  addi         a7, a4, -320
                  srli         sp, s9, 19
                  andi         zero, ra, 1134
                  or           tp, s2, sp
                  addi         ra, t3, -992
                  nop
                  sll          s3, a3, sp
                  lui          s6, 818562
                  srli         t3, t5, 18
                  sltu         a0, gp, t2
                  sltu         t0, a2, t2
                  ori          t3, t3, 152
                  slti         s4, s5, 1438
                  slti         t1, gp, 304
                  sub          ra, s3, a7
                  addi         ra, s2, -236
                  auipc        s2, 961986
                  auipc        sp, 910968
                  sltiu        t0, a3, 1082
                  srai         sp, t0, 10
                  slli         s2, s8, 17
                  xor          tp, t2, s7
                  auipc        a7, 581418
                  sltu         a3, a7, s3
                  srli         t1, s4, 16
                  addi         a4, t1, -1669
                  slt          a5, s0, t5
                  nop
                  xori         s10, a5, 126
                  nop
                  nop
                  sltiu        a4, a2, 870
                  addi         t3, s5, 477
                  andi         s7, s10, -286
                  nop
                  xori         zero, a1, 1655
                  srli         t0, t5, 14
                  slti         t1, a0, 1490
                  addi         s1, sp, -988
                  auipc        a4, 990520
                  sub          gp, t4, a2
                  add          a3, a2, s6
                  auipc        tp, 715503
                  xor          gp, s2, s1
                  slt          a6, s2, s1
                  andi         zero, a5, -45
                  slli         tp, gp, 23
                  slli         a0, sp, 31
                  and          gp, a0, s11
                  slli         t2, a3, 20
                  add          zero, ra, a6
                  nop
                  add          s7, sp, s6
                  slt          s5, gp, s3
                  xori         gp, s1, -639
                  sll          sp, t3, t4
                  sltiu        tp, a5, -892
                  sltiu        t2, t2, -1481
                  sltu         s0, t3, zero
                  xori         gp, t2, -1928
                  nop
                  nop
                  sll          t1, t4, s4
                  srli         a2, s2, 10
                  auipc        t4, 413753
                  or           s7, t3, tp
                  slli         s6, tp, 8
                  srli         s10, a4, 23
                  srli         s9, s9, 15
                  add          s9, s5, s5
                  sltu         s0, ra, s6
                  xor          s3, tp, s3
                  srli         ra, s0, 6
                  add          gp, s5, a2
                  slti         s9, a2, 758
                  add          t1, tp, t1
                  andi         a5, s4, 54
                  ori          s3, t5, 598
                  and          a0, s7, a3
                  xori         s6, t0, -613
                  and          a5, s9, a7
                  nop
                  lui          a4, 878303
                  or           s4, t5, sp
                  addi         s2, s3, -223
                  addi         gp, a0, 356
                  addi         s7, t4, 1027
                  sub          s7, sp, t4
                  srli         sp, a1, 24
                  ori          t2, s7, 1024
                  and          a1, s0, t5
                  add          a6, a3, s6
                  slli         a2, a5, 6
                  or           s9, t5, t3
                  sra          s6, s9, a5
                  srai         s7, a7, 4
                  xor          s4, t0, t5
                  srai         s6, t1, 15
                  sra          a7, s3, s1
                  sub          t0, a6, s7
                  srai         s6, s8, 8
                  srli         a5, t6, 17
                  xor          a7, s5, gp
                  lui          a5, 973155
                  sra          s2, t1, ra
                  srl          ra, a7, s1
                  sltu         t3, sp, ra
                  or           gp, s2, t0
                  sra          a2, t6, s10
                  slti         t3, s9, 1502
                  add          s6, s8, sp
                  srli         s1, s8, 10
                  sltu         s2, tp, gp
                  addi         s7, t2, 1512
                  andi         s6, a3, -1530
                  ori          tp, sp, 1523
                  slt          s9, a2, a5
                  nop
                  sltu         ra, t0, s0
                  sub          s6, a0, ra
                  andi         a5, sp, 417
                  srl          s5, a6, t5
                  ori          a6, t0, 1158
                  or           s5, a2, a5
                  sltu         t0, s4, s11
                  xori         sp, s2, 1920
                  ori          s9, s3, 1301
                  and          a0, a6, t3
                  auipc        t1, 104568
                  auipc        s6, 54242
                  srli         a2, tp, 18
                  srli         a2, t4, 31
                  sra          t1, s0, s6
                  sltu         a7, gp, s2
                  slti         s6, t2, 1327
                  lui          a0, 853928
                  srai         a1, s8, 14
                  sltiu        t5, s3, 765
                  srli         a6, gp, 10
                  auipc        s6, 93043
                  or           a3, a7, tp
                  slti         s3, s0, 1182
                  srai         a0, s10, 3
                  slli         a0, s2, 24
                  srai         ra, a1, 31
                  slli         t1, s5, 9
                  lui          s10, 162710
                  auipc        s7, 984177
                  ori          t4, s8, 266
                  srli         a4, ra, 17
                  sra          gp, s4, s8
                  sll          s10, a2, sp
                  nop
                  srl          ra, t3, a0
                  srai         s6, sp, 26
                  slti         a4, a3, -819
                  sll          t5, s4, s0
                  slt          a1, a6, zero
                  andi         gp, ra, 1958
                  slli         a0, s5, 5
                  slt          s10, s6, s10
                  auipc        ra, 827860
                  ori          a2, s8, 1591
                  auipc        tp, 199619
                  add          s3, s10, t5
                  slti         a7, a7, -1534
                  slt          a3, s2, s1
                  srl          a5, t4, a0
                  sltiu        s0, a3, 693
                  srli         s0, a0, 14
                  slli         a7, s6, 22
                  or           a6, tp, a3
                  sltiu        ra, a0, 220
                  slli         t4, s1, 18
                  sltiu        s2, a1, -1924
                  ori          t1, s11, -462
                  xori         a5, s1, -420
                  sltiu        t0, sp, 314
                  andi         sp, a4, 1147
                  sltiu        tp, a1, 1802
                  slti         t1, t3, 769
                  sll          tp, s11, s4
                  srli         s1, s8, 20
                  slli         sp, gp, 23
                  slli         s6, s1, 0
                  andi         t3, s3, 1942
                  andi         a0, a0, -1325
                  nop
                  addi         t2, t0, 972
                  slt          s1, a6, a5
                  auipc        s9, 1037680
                  xori         zero, t3, 600
                  add          a1, s10, a7
                  sll          t1, t1, a3
                  or           sp, s7, ra
                  sltiu        t4, a3, -1052
                  sll          a4, a4, a5
                  or           s10, a4, s10
                  srai         a5, t6, 29
                  slt          a5, s1, a7
                  slli         s0, t0, 4
                  auipc        zero, 727092
                  ori          a3, a0, -1943
                  srli         a4, s2, 17
                  sll          tp, a7, zero
                  srl          a7, a2, a1
                  srai         t2, t1, 12
                  xor          ra, a2, a4
                  xori         s7, ra, -143
                  and          a0, a0, a7
                  xori         t1, s9, -317
                  sra          t2, tp, s0
                  srl          a0, a1, a1
                  sltu         t4, tp, t2
                  sll          t2, t3, a7
                  srli         s2, sp, 13
                  srli         s3, t6, 23
                  slti         gp, a4, 735
                  or           a7, t5, sp
                  ori          s2, s4, -719
                  auipc        a5, 543237
                  lui          s1, 826698
                  slli         a2, s0, 30
                  ori          t1, tp, 1903
                  slti         s1, a7, 821
                  ori          t5, s7, -1351
                  and          a5, t0, a3
                  nop
                  slt          s7, a7, a4
                  srai         gp, t2, 21
                  sltu         a5, s8, t3
                  srli         sp, a6, 13
                  sll          a4, zero, sp
                  auipc        ra, 534641
                  sll          a0, s5, sp
                  xor          s6, a0, s0
                  sll          s6, a4, s3
                  sltu         a3, s10, zero
                  xori         a7, ra, 1856
                  add          t2, s2, t3
                  lui          s3, 685977
                  lui          a4, 641517
                  sra          s10, s1, s0
                  add          a2, s4, s3
                  or           s7, t5, t2
                  auipc        s6, 949552
                  or           zero, s1, sp
                  slt          t1, s10, s0
                  sll          ra, ra, s8
                  and          zero, ra, s0
                  andi         sp, s7, 1113
                  srli         s5, s8, 22
                  sra          s1, s5, s7
                  slt          t5, s9, s8
                  add          a7, tp, s11
                  sltu         t2, t3, ra
                  addi         a1, t1, -1580
                  xor          s9, tp, t6
                  ori          zero, a7, -867
                  slt          a1, s10, t3
                  auipc        s5, 585067
                  lui          s1, 571634
                  srl          s2, s8, a6
                  sltiu        t3, s7, -399
                  addi         t3, sp, 471
                  sub          ra, s2, a6
                  auipc        sp, 117388
                  srai         t5, s4, 2
                  srai         a4, s11, 28
                  nop
                  srl          ra, t3, a1
                  srli         a1, s8, 24
                  sub          a1, t2, s8
                  srl          ra, s4, gp
                  srli         a1, s2, 30
                  xori         s10, ra, -105
                  auipc        s6, 762440
                  srai         s5, a2, 19
                  lui          a2, 257460
                  srl          s4, a1, s10
                  auipc        zero, 31073
                  srai         ra, t6, 4
                  sltu         s5, s1, s7
                  addi         a3, a2, 1641
                  srai         zero, s10, 18
                  sltu         t0, s2, s8
                  andi         a6, s9, 1192
                  slti         s0, ra, -734
                  sltu         s10, s8, t1
                  sll          s9, s3, a7
                  add          sp, a0, t3
                  sub          s5, s0, tp
                  add          s10, s2, s9
                  srl          s2, a2, t2
                  addi         t4, s0, 1002
                  sltu         t0, s11, s9
                  add          a5, s5, sp
                  sub          a1, a3, t4
                  srli         t1, s2, 27
                  sub          a3, s6, sp
                  ori          s6, s9, 508
                  slt          s3, tp, s9
                  or           a2, s10, t1
                  ori          s5, t5, -873
                  sll          s1, s5, s2
                  srli         zero, t0, 27
                  sll          gp, s2, a6
                  sll          t0, t5, a4
                  li           t4, 0x0 #start riscv_int_numeric_corner_stream_16
                  li           gp, 0x80000000
                  li           s6, 0xffffffff
                  li           s3, 0xffffffff
                  li           t1, 0xffffffff
                  li           sp, 0xf673ebb7
                  li           s1, 0x55948756
                  li           a3, 0x80000000
                  li           a2, 0x80000000
                  li           a5, 0x80000000
                  addi         s3, a3, 1275
                  addi         a5, a2, -1441
                  addi         s6, gp, 1491
                  lui          sp, 201335
                  nop
                  sub          a5, s1, s6
                  auipc        a3, 466774
                  nop
                  lui          s6, 300422
                  nop
                  add          t1, s3, s1
                  nop
                  addi         t4, s1, 37
                  addi         t1, s6, 377
                  addi         a3, a3, 312
                  sub          s3, a5, a5
                  add          t4, sp, sp
                  sub          t4, gp, s1
                  sub          sp, s1, s1
                  nop
                  sub          t4, a3, s1
                  lui          a2, 364490
                  nop
                  add          s1, sp, s6
                  add          gp, s3, s3 #end riscv_int_numeric_corner_stream_16
                  xori         s9, t6, 1171
                  srai         t0, t2, 3
                  ori          s9, a2, -1828
                  sltiu        a1, t6, -1711
                  xori         a0, gp, 1591
                  ori          t3, a3, 700
                  add          sp, ra, t5
                  xori         zero, s1, -955
                  and          s9, t5, a6
                  sll          s2, s9, a7
                  auipc        t2, 316530
                  slli         a2, t3, 11
                  slti         a1, a5, 1938
                  or           t5, zero, ra
                  lui          tp, 536240
                  sltu         a2, tp, tp
                  auipc        s6, 823984
                  addi         t0, a0, -469
                  andi         a1, a3, -1028
                  add          a0, t0, sp
                  xori         s4, s4, 1673
                  sltiu        s5, sp, -991
                  add          a5, t1, s0
                  sltiu        s9, a4, -1177
                  slli         s2, s4, 4
                  sltiu        s3, a7, 2026
                  sltiu        t1, s7, -534
                  sll          sp, s1, a3
                  nop
                  addi         a3, s11, -42
                  slli         t5, a2, 2
                  sub          s7, s9, ra
                  slli         s3, t4, 31
                  ori          s6, zero, -1401
                  nop
                  nop
                  nop
                  srl          s3, s4, s9
                  sll          a0, t0, zero
                  add          s2, s4, s10
                  sub          t1, a6, a0
                  slt          t3, a2, a3
                  srli         a0, t6, 1
                  andi         t0, s6, -729
                  and          t5, t0, ra
                  and          s4, a4, ra
                  ori          s1, zero, -1014
                  srl          s5, s8, s3
                  xor          a4, t6, tp
                  slli         tp, gp, 17
                  addi         s7, s1, 1404
                  slti         t0, t5, -1292
                  xori         sp, s1, -1639
                  and          zero, ra, a3
                  srl          gp, s11, s5
                  xori         s7, t2, 986
                  sltu         s7, a6, s11
                  lui          a6, 919752
                  sltiu        s10, s10, -416
                  auipc        s0, 829034
                  and          s3, s4, s1
                  srl          t4, s7, t0
                  srl          gp, t3, tp
                  sll          t1, t0, s3
                  ori          a3, t0, 1269
                  srl          t1, sp, s6
                  srai         s6, s6, 5
                  sltiu        a1, s3, -1246
                  auipc        a5, 1018530
                  slt          s6, a3, a2
                  xor          t1, ra, ra
                  srli         s7, tp, 15
                  slli         t5, t2, 2
                  xor          s0, t1, a2
                  sub          s10, t0, s3
                  lui          ra, 343664
                  slti         t1, s1, -264
                  andi         a1, a5, -361
                  sub          a0, s4, s10
                  slti         s9, gp, 856
                  andi         a0, t3, 887
                  or           a6, s6, t2
                  sra          tp, a5, s6
                  sub          s5, a7, s4
                  slti         t4, s7, 637
                  slti         s10, s6, -1790
                  sra          a6, s11, t5
                  lui          s4, 298799
                  xor          a6, t4, a5
                  srai         s3, t1, 21
                  or           a7, s1, a5
                  sub          s7, a0, t0
                  sub          gp, s6, a6
                  sub          a5, t5, zero
                  ori          t3, t6, 797
                  sltiu        t5, s5, 1417
                  auipc        t3, 359718
                  srl          gp, t1, tp
                  xor          s5, s7, t5
                  sub          s0, sp, s5
                  andi         t5, a4, -1854
                  sra          s0, a2, s6
                  nop
                  and          a6, s4, tp
                  and          a0, gp, tp
                  sub          sp, a4, a3
                  add          a7, ra, gp
                  srli         tp, tp, 25
                  xori         a5, s1, 525
                  ori          gp, t6, 424
                  sll          s1, t3, t6
                  nop
                  srli         s9, t4, 25
                  srl          s3, tp, t2
                  add          t1, s11, a1
                  xor          a6, gp, t3
                  sll          zero, a4, s7
                  slti         t2, s11, 331
                  lui          s3, 414463
                  xor          s5, s8, sp
                  or           t3, t3, a0
                  xor          t5, a1, a2
                  sltu         s0, gp, s7
                  nop
                  srai         s10, s11, 2
                  nop
                  sub          sp, s8, s7
                  addi         a3, t5, 1150
                  srli         s2, s1, 31
                  slt          tp, a4, s4
                  xori         s7, s2, -902
                  sra          t0, s2, t0
                  add          s3, s1, s8
                  srli         a5, a0, 9
                  auipc        ra, 397115
                  sll          s0, s6, t6
                  addi         a4, s5, -1967
                  and          s3, gp, s2
                  add          s6, t0, s11
                  add          a5, t0, a3
                  lui          a1, 713224
                  srli         a6, a4, 2
                  sltiu        s9, ra, 2044
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           s0, 0xffffffff
                  li           t1, 0x51a71fc2
                  li           s6, 0x649a1364
                  li           a2, 0x80000000
                  li           tp, 0xb264af64
                  li           a6, 0x80000000
                  li           t4, 0xffffffff
                  li           a4, 0x8b951262
                  li           gp, 0x80000000
                  add          gp, gp, a4
                  addi         s0, t4, 1862
                  lui          tp, 671393
                  lui          a2, 737145
                  add          t4, a6, gp
                  lui          gp, 800038
                  nop
                  lui          gp, 718477
                  lui          tp, 715105
                  lui          tp, 43000
                  lui          t4, 611290
                  auipc        t4, 741481
                  add          s0, t4, s6
                  auipc        ra, 953718
                  nop
                  nop
                  lui          ra, 525439
                  nop #end riscv_int_numeric_corner_stream_13
                  sltiu        s10, s7, -1862
                  slt          a3, s1, t4
                  sll          a4, s11, a4
                  sll          a4, s5, sp
                  slt          a0, tp, a4
                  sltu         a7, ra, s1
                  sltiu        a7, gp, 667
                  xori         s9, t3, -1384
                  sltiu        a4, t0, 1929
                  sub          s5, a7, s11
                  slli         s4, t0, 15
                  srl          s7, a1, ra
                  lui          a3, 704970
                  srli         a3, s8, 18
                  add          s3, s4, t6
                  sub          t3, a4, s6
                  addi         s3, s9, -122
                  sltiu        s3, t2, 449
                  ori          a7, t4, 35
                  srli         s9, ra, 2
                  xori         t0, s4, -20
                  sltu         s2, s10, s9
                  srli         a5, t5, 3
                  addi         gp, gp, -185
                  sltu         s10, s10, a6
                  xor          a0, s10, t5
                  lui          s3, 28586
                  lui          tp, 53980
                  nop
                  xor          t1, a0, s8
                  andi         t1, ra, -618
                  sltu         s6, t6, a3
                  add          s0, t0, t1
                  sub          a5, a5, a7
                  xor          s1, t1, s9
                  sll          a4, s7, s1
                  slt          t4, a4, a5
                  addi         t5, s6, -1003
                  slti         a7, a1, -1899
                  srli         tp, s9, 8
                  and          t4, gp, a4
                  lui          t3, 893295
                  slli         a2, a7, 16
                  sub          a0, t2, s11
                  auipc        s2, 71031
                  slt          s3, a7, t4
                  nop
                  add          a2, s8, t2
                  sltiu        t1, s8, -613
                  nop
                  andi         s6, t1, 1293
                  srl          s0, s1, t6
                  ori          a6, s10, -882
                  srai         s3, tp, 19
                  nop
                  xor          gp, s9, s7
                  srli         gp, ra, 15
                  nop
                  xori         s10, s7, 1911
                  slli         s4, s5, 0
                  sra          s6, gp, a5
                  add          a0, sp, s10
                  or           t5, a1, tp
                  ori          a4, t3, 1459
                  sub          s2, t4, s0
                  sub          s4, s4, t6
                  xori         s3, a3, 460
                  slt          t0, a6, a7
                  slt          s10, t3, s1
                  sll          s6, s0, s10
                  slti         s10, a7, 1386
                  addi         s7, a5, -1985
                  andi         t3, gp, 1390
                  sub          t3, gp, s11
                  andi         s2, sp, -658
                  srl          a1, t6, s9
                  andi         s7, gp, -1936
                  lui          a6, 161270
                  auipc        t4, 824261
                  or           s0, a1, t3
                  xor          a1, s5, s1
                  nop
                  add          a4, t3, t4
                  and          t4, a1, a0
                  and          a4, t6, ra
                  slt          s1, a5, a5
                  srli         s10, s7, 24
                  auipc        s7, 785078
                  add          s4, t3, a6
                  or           s0, t0, s11
                  sra          s9, s9, s9
                  slt          s4, a3, t5
                  auipc        t1, 513534
                  ori          s1, s5, -1147
                  ori          tp, a6, 1183
                  sub          s5, a2, a3
                  andi         s4, s10, 1803
                  or           a1, a2, a2
                  srl          gp, t4, t6
                  sltiu        a0, sp, 1672
                  slli         a2, s8, 30
                  xori         s9, s1, 1308
                  lui          tp, 23662
                  addi         a6, t2, -1203
                  sll          a3, t3, a7
                  auipc        s10, 77075
                  sltu         a2, s0, t5
                  addi         s1, t5, 1337
                  sra          a6, t6, tp
                  andi         s9, t4, 2031
                  slli         t2, s6, 13
                  add          s2, s8, a6
                  xori         t5, a6, 258
                  sltu         t4, s0, a2
                  srai         t0, s11, 0
                  srli         t4, a5, 24
                  slli         s2, s9, 23
                  slt          t3, gp, t2
                  xor          t0, s9, s8
                  addi         t3, tp, 1831
                  sra          a0, s1, t2
                  xor          s2, t4, s6
                  andi         gp, t0, 238
                  sltu         t2, s3, s4
                  sra          s9, s3, s9
                  sltiu        s0, t3, -1876
                  or           t1, zero, s3
                  lui          s9, 417260
                  sra          a3, s11, sp
                  add          s10, sp, a4
                  andi         ra, t3, 1038
                  srai         t5, s4, 30
                  sltu         gp, tp, t2
                  sll          a5, t2, sp
                  xor          s7, s6, gp
                  sltiu        a6, s10, -1617
                  sltiu        t0, s3, 585
                  slti         a0, zero, -556
                  sltu         s2, s8, sp
                  ori          s10, gp, 1740
                  ori          a4, s4, 1868
                  add          s4, s3, s9
                  slt          s5, s3, a7
                  auipc        t4, 775360
                  sll          s6, s3, t4
                  andi         s10, s0, -1504
                  ori          t2, s6, -347
                  ori          s6, s6, -55
                  slli         a0, a2, 31
                  srl          gp, tp, t5
                  nop
                  or           s4, s9, s5
                  or           a7, t1, s6
                  srl          t2, t5, gp
                  sltu         zero, a4, s11
                  addi         t2, s4, 1946
                  sltiu        gp, s1, 275
                  srl          t4, t6, s6
                  ori          zero, s0, -1212
                  srli         s6, s3, 25
                  srai         t2, s6, 5
                  srl          a4, s2, t6
                  nop
                  srai         s7, t5, 21
                  slt          a4, s2, t1
                  srai         ra, a0, 17
                  nop
                  auipc        a4, 853314
                  srl          a1, a2, zero
                  ori          tp, s8, 1615
                  sltu         sp, zero, s0
                  nop
                  add          zero, t0, a7
                  sltu         s3, a0, tp
                  xori         s4, t4, -1994
                  slt          s2, s6, sp
                  slli         s9, s11, 12
                  sltu         gp, ra, t0
                  or           gp, s5, s6
                  or           s9, s2, a3
                  xori         a4, a2, 1307
                  add          a3, t6, t0
                  slti         s0, t6, -816
                  sll          s1, s8, gp
                  add          a2, s5, t1
                  slti         a0, zero, -1354
                  sltu         t1, tp, t4
                  lui          s2, 180201
                  slt          a0, t1, s11
                  andi         a6, s9, -106
                  la x31, test_done
                  jalr x0, x31, 0
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
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x27, x24, zero
                  csrr x22, 0x300 # MSTATUS
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 31
                  bne x22, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x22, 0x341 # MEPC
                  csrr x22, 0x342 # MCAUSE
                  li x14, 0x3 # BREAKPOINT
                  beq x22, x14, ebreak_handler
                  li x14, 0x8 # ECALL_UMODE
                  beq x22, x14, ecall_handler
                  li x14, 0x9 # ECALL_SMODE
                  beq x22, x14, ecall_handler
                  li x14, 0xb # ECALL_MMODE
                  beq x22, x14, ecall_handler
                  li x14, 0x1
                  beq x22, x14, instr_fault_handler
                  li x14, 0x5
                  beq x22, x14, load_fault_handler
                  li x14, 0x7
                  beq x22, x14, store_fault_handler
                  li x14, 0xc
                  beq x22, x14, pt_fault_handler
                  li x14, 0xd
                  beq x22, x14, pt_fault_handler
                  li x14, 0xf
                  beq x22, x14, pt_fault_handler
                  li x14, 0x2 # ILLEGAL_INSTRUCTION
                  beq x22, x14, illegal_instr_handler
                  csrr x14, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x22, _start
                  sw x0, 0(x22)
                  sw x1, 4(x22)
                  sw x2, 8(x22)
                  sw x3, 12(x22)
                  sw x4, 16(x22)
                  sw x5, 20(x22)
                  sw x6, 24(x22)
                  sw x7, 28(x22)
                  sw x8, 32(x22)
                  sw x9, 36(x22)
                  sw x10, 40(x22)
                  sw x11, 44(x22)
                  sw x12, 48(x22)
                  sw x13, 52(x22)
                  sw x14, 56(x22)
                  sw x15, 60(x22)
                  sw x16, 64(x22)
                  sw x17, 68(x22)
                  sw x18, 72(x22)
                  sw x19, 76(x22)
                  sw x20, 80(x22)
                  sw x21, 84(x22)
                  sw x22, 88(x22)
                  sw x23, 92(x22)
                  sw x24, 96(x22)
                  sw x25, 100(x22)
                  sw x26, 104(x22)
                  sw x27, 108(x22)
                  sw x28, 112(x22)
                  sw x29, 116(x22)
                  sw x30, 120(x22)
                  sw x31, 124(x22)
                  la x31, write_tohost
                  jalr x0, x31, 0

instr_fault_handler:
                  add x24, x27, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

load_fault_handler:
                  add x24, x27, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

store_fault_handler:
                  add x24, x27, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

ebreak_handler:   
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x24, x27, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

illegal_instr_handler:
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x24, x27, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x22, 0x300 # MSTATUS;
                  csrr  x22, 0x304 # MIE;
                  csrr  x22, 0x344 # MIP;
                  csrrc x22, 0x344, x22 # MIP;
                  add x24, x27, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
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
