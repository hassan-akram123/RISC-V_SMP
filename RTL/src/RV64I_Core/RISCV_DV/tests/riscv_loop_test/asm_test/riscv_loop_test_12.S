.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x19, h0_start
jalr x0, x19, 0
h0_start:
                  li x17, 0x40000100
                  csrw 0x301, x17
kernel_sp:        
                  la x15, kernel_stack_end

trap_vec_init:    
                  la x17, mtvec_handler
                  ori x17, x17, 1
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
                  li x0, 0x0
                  li x1, 0x0
                  li x2, 0x80000000
                  li x3, 0x6
                  li x4, 0xaa753d86
                  li x5, 0x0
                  li x6, 0x1
                  li x7, 0xe
                  li x8, 0x4
                  li x9, 0x39907144
                  li x10, 0x9
                  li x11, 0xf5cdd967
                  li x13, 0x3
                  li x14, 0x9
                  li x16, 0xa
                  li x17, 0x5
                  li x18, 0x2b7a856b
                  li x19, 0xe
                  li x20, 0x7
                  li x21, 0x80000000
                  li x22, 0xfe69b649
                  li x23, 0x80000000
                  li x24, 0x0
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0xc
                  li x28, 0xfca16ebf
                  li x29, 0x7
                  li x30, 0x4
                  li x31, 0xf7042238
                  la x12, user_stack_end
main:             addi         t1, zero, 3 #init loop 1 counter
                  sltiu        zero, t1, -1520
                  sra          t6, zero, s4
                  sra          a6, s3, s5
                  sub          gp, s0, s8
                  sltiu        s4, s4, -715
                  slli         s8, s0, 20
                  addi         s11, zero, 7 #init loop 1 limit
                  add          s7, zero, s2
                  srai         t4, a0, 5
                  sra          a0, gp, a4
                  nop
                  sll          t6, t4, a0
main_14_1_t:      slti         a0, a7, 1266
                  addi         t1, t1, 1 #update loop 1 counter
                  andi         a6, tp, -1525
                  addi         a1, zero, 2 #init loop 0 counter
                  andi         sp, t6, 1155
                  addi         s9, zero, 20 #init loop 0 limit
                  sub          a7, zero, zero
                  andi         a4, s4, -751
                  nop
                  xori         t0, t4, 1458
                  lui          s7, 709653
main_14_0_t:      slt          s2, gp, s8
                  addi         a1, a1, 6 #update loop 0 counter
                  lui          s2, 334021
                  beq          a1, s9, main_14_0_t #branch for loop 0
                  sltu         a4, s4, a4
                  sub          s0, a1, ra
                  srai         t5, gp, 8
                  srli         s5, s0, 22
                  blt          t1, s11, main_14_1_t #branch for loop 1
                  lui          s4, 93046
                  addi         a1, zero, 7 #init loop 1 counter
                  xori         a0, s9, -1079
                  or           t0, s1, tp
                  addi         s1, zero, -3 #init loop 1 limit
                  or           t2, a1, a1
main_11_1_t:      sltu         s7, a4, t3
                  andi         t4, s7, -508
                  addi         a1, a1, -10 #update loop 1 counter
                  addi         a3, zero, -4 #init loop 0 counter
                  srai         gp, a7, 13
                  slti         t4, s9, 911
                  srli         t5, t3, 3
                  addi         s8, zero, 5 #init loop 0 limit
                  ori          zero, t4, -1707
                  slti         ra, gp, -1242
main_11_0_t:      auipc        tp, 399145
                  addi         a3, a3, 10 #update loop 0 counter
                  and          s4, t3, sp
                  and          gp, t2, s10
                  sra          t0, s3, t6
                  blt          a3, s8, main_11_0_t #branch for loop 0
                  add          sp, s7, t2
                  ori          s6, gp, -733
                  sll          t5, s5, s7
                  bne          a1, s1, main_11_1_t #branch for loop 1
                  nop
                  addi         t2, zero, 0 #init loop 1 counter
                  addi         a6, zero, -14 #init loop 1 limit
                  sub          s8, t3, zero
                  slli         a7, a5, 7
                  sltiu        sp, s11, -1756
                  srl          s0, s1, s10
main_17_1_t:      xori         zero, s4, -1141
                  sltiu        s8, s0, 321
                  addi         t2, t2, -7 #update loop 1 counter
                  slli         a7, a6, 31
                  addi         s2, zero, -6 #init loop 0 counter
                  addi         s9, zero, -16 #init loop 0 limit
main_17_0_t:      lui          sp, 285481
                  slti         t0, a2, 1569
                  addi         s2, s2, -5 #update loop 0 counter
                  sltiu        t0, a5, -1163
                  srl          t3, s1, gp
                  beq          s2, s9, main_17_0_t #branch for loop 0
                  slt          t1, s5, s1
                  nop
                  bne          t2, a6, main_17_1_t #branch for loop 1
                  sltiu        t5, zero, -996
                  addi         t3, zero, -5 #init loop 1 counter
                  srli         gp, t3, 25
                  addi         a3, zero, 9 #init loop 1 limit
main_4_1_t:       add          s11, t2, s1
                  srai         a4, t5, 7
                  or           s0, a4, a0
                  addi         t3, t3, 7 #update loop 1 counter
                  addi         a6, zero, -4 #init loop 0 counter
                  and          s0, zero, s9
                  and          t0, s4, t1
                  add          a7, s2, t1
                  slli         a4, a2, 19
                  addi         s9, zero, -5 #init loop 0 limit
                  auipc        s1, 282383
main_4_0_t:       and          t0, gp, s3
                  slt          s6, t1, a5
                  addi         a6, a6, -1 #update loop 0 counter
                  andi         zero, zero, -236
                  andi         a0, s0, -1392
                  bne          a6, s9, main_4_0_t #branch for loop 0
                  xori         s1, a0, 1179
                  nop
                  blt          t3, a3, main_4_1_t #branch for loop 1
                  srl          a1, a5, s0
                  addi         sp, zero, -1 #init loop 0 counter
                  or           a1, a6, t4
                  addi         ra, zero, 4 #init loop 0 limit
main_3_0_t:       and          t0, t1, t0
                  nop
                  addi         sp, sp, 1 #update loop 0 counter
                  addi         t0, t1, -1360
                  sub          a1, a0, ra
                  beq          sp, ra, main_3_0_t #branch for loop 0
                  xori         s4, a1, 1031
                  addi         a1, zero, 5 #init loop 1 counter
                  sub          a4, s3, a6
                  sltiu        ra, t1, -1842
                  andi         s8, a3, -589
                  xor          a6, zero, a4
                  nop
                  slt          gp, s10, t6
                  add          s8, s11, a1
                  addi         s4, zero, 6 #init loop 1 limit
                  add          s7, s4, s4
main_6_1_t:       nop
                  addi         a1, a1, 8 #update loop 1 counter
                  andi         gp, s10, 216
                  sra          t5, a7, a4
                  addi         s6, zero, -7 #init loop 0 counter
                  or           t5, a2, zero
                  add          t6, a4, t5
                  or           s0, s6, zero
                  ori          s7, a1, 1629
                  slt          s1, a5, s6
                  sltu         t6, a0, zero
                  slli         zero, t4, 17
                  sra          sp, t3, s4
                  addi         t4, zero, -17 #init loop 0 limit
main_6_0_t:       add          s11, s0, a4
                  lui          a7, 449517
                  addi         s9, s1, -94
                  addi         s6, s6, -1 #update loop 0 counter
                  or           s8, s8, gp
                  slt          t3, a2, s1
                  bne          s6, t4, main_6_0_t #branch for loop 0
                  blt          a1, s4, main_6_1_t #branch for loop 1
                  slli         t0, s5, 3
                  addi         s7, zero, 5 #init loop 0 counter
                  sra          s11, s5, t5
                  addi         ra, zero, 18 #init loop 0 limit
main_10_0_t:      slt          s4, s5, a2
                  addi         s7, s7, 7 #update loop 0 counter
                  bltu         s7, ra, main_10_0_t #branch for loop 0
                  sltiu        gp, t3, -385
                  addi         a7, zero, 7 #init loop 1 counter
                  slt          t3, a5, s9
                  addi         t0, zero, 19 #init loop 1 limit
main_20_1_t:      lui          s11, 79315
                  slt          s2, s6, s2
                  sltiu        zero, s10, 1071
                  addi         a7, a7, 5 #update loop 1 counter
                  addi         a0, zero, 8 #init loop 0 counter
                  andi         s2, zero, -1895
                  sub          tp, a2, s3
                  sub          t4, a6, t1
                  addi         a4, zero, 12 #init loop 0 limit
                  slti         sp, a1, 1863
                  or           zero, t4, a2
                  sub          s11, s11, s0
                  srai         sp, a0, 7
                  xori         gp, zero, -252
main_20_0_t:      add          s2, a2, s10
                  andi         t2, a6, 306
                  addi         a0, a0, 7 #update loop 0 counter
                  srai         s9, s2, 17
                  bltu         a0, a4, main_20_0_t #branch for loop 0
                  xori         s4, s4, -629
                  blt          a7, t0, main_20_1_t #branch for loop 1
                  auipc        s9, 138239
                  addi         a3, zero, -2 #init loop 1 counter
                  sltiu        s0, s3, 1018
                  addi         t6, zero, 19 #init loop 1 limit
main_18_1_t:      addi         s11, s0, 79
                  slti         tp, ra, 1325
                  or           s7, s7, gp
                  auipc        a1, 132633
                  or           s5, sp, s2
                  and          t2, t6, s10
                  slti         gp, a2, -1238
                  and          s6, s0, s1
                  srli         a0, s7, 27
                  lui          s7, 141770
                  addi         a3, a3, 7 #update loop 1 counter
                  sltu         s10, a0, a7
                  lui          sp, 718497
                  addi         s1, zero, 4 #init loop 0 counter
                  auipc        t1, 646417
                  addi         t3, zero, 12 #init loop 0 limit
                  sll          a6, t2, s9
                  andi         s2, s3, 1660
main_18_0_t:      sub          a4, t0, t0
                  sltiu        t2, a4, -1206
                  addi         s1, s1, 8 #update loop 0 counter
                  beq          s1, t3, main_18_0_t #branch for loop 0
                  srai         t2, ra, 13
                  addi         a4, t6, 423
                  add          t2, s6, ra
                  blt          a3, t6, main_18_1_t #branch for loop 1
                  or           a4, s5, s8
                  addi         s5, zero, -6 #init loop 0 counter
                  add          s10, a6, s4
                  srai         t3, a3, 23
                  and          s7, s11, s4
                  sltiu        s6, t2, -762
                  slt          s1, s0, s3
                  slli         t2, s11, 5
                  lui          a3, 983088
                  addi         t1, zero, -1 #init loop 0 limit
main_13_0_t:      slt          t3, a0, s4
                  sltiu        s8, t2, -581
                  sltiu        a3, s8, -1925
                  addi         s5, s5, 5 #update loop 0 counter
                  sra          s1, s4, t4
                  srli         t3, a3, 26
                  srl          gp, a0, s9
                  beq          s5, t1, main_13_0_t #branch for loop 0
                  slt          s2, a6, a5
                  addi         a4, zero, 5 #init loop 1 counter
                  auipc        a7, 774183
                  and          s10, s5, t3
                  slli         ra, t6, 23
                  sra          a7, s4, s4
                  and          a6, a3, ra
                  addi         s2, zero, 8 #init loop 1 limit
                  nop
                  slt          a6, sp, a7
main_1_1_t:       slt          a3, s11, s9
                  sltiu        s8, s10, 279
                  ori          t4, sp, -1146
                  addi         a4, a4, 10 #update loop 1 counter
                  sltiu        a0, s10, -706
                  add          s8, a6, a4
                  sltu         a1, t2, s1
                  or           s6, t3, s3
                  sltiu        a1, s10, 1048
                  addi         sp, zero, -10 #init loop 0 counter
                  srai         t6, a4, 10
                  lui          ra, 127223
                  srai         s11, s4, 30
                  nop
                  addi         t0, zero, -6 #init loop 0 limit
                  and          s9, sp, s6
main_1_0_t:       nop
                  slt          t6, s3, a5
                  addi         sp, sp, 8 #update loop 0 counter
                  andi         s11, a2, -1516
                  srai         s8, tp, 20
                  blt          sp, t0, main_1_0_t #branch for loop 0
                  slt          a0, t1, s1
                  blt          a4, s2, main_1_1_t #branch for loop 1
                  lui          ra, 616797
                  addi         s7, zero, -7 #init loop 1 counter
                  or           a3, a4, s5
                  add          s0, s11, s10
                  addi         s11, zero, -10 #init loop 1 limit
main_8_1_t:       sltiu        s1, t4, 1180
                  or           a4, t5, s4
                  addi         s7, s7, -3 #update loop 1 counter
                  slti         s0, a4, -1782
                  srl          s1, a0, t3
                  addi         s2, zero, 9 #init loop 0 counter
                  slt          s6, zero, a2
                  add          a0, a3, a0
                  andi         ra, t4, 1715
                  addi         t3, zero, 9 #init loop 0 limit
                  xori         t1, a3, -1564
                  srli         gp, s8, 31
main_8_0_t:       nop
                  and          a3, t4, s5
                  addi         s2, s2, -6 #update loop 0 counter
                  and          tp, a4, a7
                  xori         s4, a6, -425
                  bgeu         s2, t3, main_8_0_t #branch for loop 0
                  xori         t1, zero, -1869
                  and          t0, a0, a1
                  xor          a1, a6, t3
                  xor          a0, s11, a2
                  addi         a7, sp, -1709
                  auipc        zero, 88287
                  slli         s10, s8, 21
                  beq          s7, s11, main_8_1_t #branch for loop 1
                  slti         t1, t0, 1780
                  addi         a6, zero, 1 #init loop 1 counter
                  sll          t0, s7, tp
                  sra          t6, a7, a3
                  ori          s6, a6, 1800
                  addi         a0, zero, -20 #init loop 1 limit
main_9_1_t:       addi         ra, t6, -1605
                  sub          s0, tp, s0
                  addi         a6, a6, -3 #update loop 1 counter
                  lui          s1, 540104
                  addi         sp, zero, 10 #init loop 0 counter
                  addi         s5, zero, 18 #init loop 0 limit
                  sub          t1, a1, s7
                  andi         t3, a0, -38
main_9_0_t:       xori         s4, a1, -1080
                  or           t3, t4, a0
                  addi         sp, sp, 8 #update loop 0 counter
                  beq          sp, s5, main_9_0_t #branch for loop 0
                  addi         s4, s7, 727
                  slt          s0, s9, s8
                  auipc        t3, 372630
                  nop
                  xor          t6, s0, tp
                  srl          s4, t6, a0
                  bge          a6, a0, main_9_1_t #branch for loop 1
                  andi         s0, s6, -524
                  addi         a3, zero, -2 #init loop 1 counter
                  and          s6, t6, a0
                  sra          a1, a6, s6
                  slt          zero, a6, a1
                  nop
                  addi         s10, zero, 11 #init loop 1 limit
main_0_1_t:       xori         t4, t1, 1784
                  lui          t0, 809002
                  addi         a3, a3, 6 #update loop 1 counter
                  slt          gp, t2, s10
                  sra          s8, s1, a3
                  slt          s0, t5, a7
                  slti         a0, a7, -1111
                  sra          s11, s4, s10
                  and          t2, s2, s9
                  addi         a7, zero, -7 #init loop 0 counter
                  or           t5, a6, ra
                  addi         tp, zero, 13 #init loop 0 limit
                  or           t3, s3, a5
                  sub          s0, t6, a4
                  slt          s8, s8, a5
                  sltu         a6, s10, s3
                  srl          a4, t2, t1
main_0_0_t:       sub          ra, zero, t4
                  addi         a7, a7, 4 #update loop 0 counter
                  andi         s5, s9, -1189
                  beq          a7, tp, main_0_0_t #branch for loop 0
                  add          t4, a1, s10
                  srli         a6, a7, 0
                  bltu         a3, s10, main_0_1_t #branch for loop 1
                  srli         gp, t2, 29
                  addi         s4, zero, 10 #init loop 0 counter
                  slt          t3, s11, s7
                  sltu         t3, s2, gp
                  andi         s6, a1, 1742
                  sltiu        ra, s7, 411
                  srl          s7, a5, a7
                  and          s6, ra, ra
                  addi         a4, zero, 10 #init loop 0 limit
                  sltiu        t2, s9, -1037
main_7_0_t:       slti         a3, t2, 302
                  sra          a7, a2, s3
                  addi         s4, s4, -8 #update loop 0 counter
                  or           a0, s0, a2
                  lui          s9, 415415
                  sub          t2, s9, tp
                  addi         t6, s8, 467
                  xori         s8, zero, 141
                  and          zero, a2, s8
                  srl          t6, s5, s10
                  andi         zero, t5, 1209
                  or           t3, s0, t3
                  slt          s10, s5, s10
                  xor          s9, s2, s4
                  bgeu         s4, a4, main_7_0_t #branch for loop 0
                  auipc        gp, 285653
                  addi         s8, zero, 3 #init loop 0 counter
                  addi         a4, zero, 20 #init loop 0 limit
main_2_0_t:       xor          s9, s4, a3
                  addi         s8, s8, 7 #update loop 0 counter
                  sub          s9, s6, gp
                  blt          s8, a4, main_2_0_t #branch for loop 0
                  add          s6, ra, a0
                  addi         s7, zero, 2 #init loop 0 counter
                  add          s4, t0, a5
                  slt          tp, zero, t3
                  addi         a4, zero, 2 #init loop 0 limit
main_12_0_t:      or           t0, s3, a2
                  xor          gp, a7, s0
                  slli         t3, a4, 15
                  ori          s0, gp, 45
                  slti         s2, ra, -382
                  andi         s11, t3, -1943
                  addi         s7, s7, -1 #update loop 0 counter
                  slt          t5, ra, s5
                  ori          s11, t4, 869
                  srli         a1, a4, 25
                  sltiu        s8, s10, -1839
                  andi         s5, s8, 1974
                  xori         a0, a1, 661
                  lui          t6, 731859
                  addi         s4, s5, 706
                  sra          s0, s10, ra
                  sub          s6, t1, s9
                  bgeu         s7, a4, main_12_0_t #branch for loop 0
                  slti         s4, sp, 1691
                  addi         s1, zero, -7 #init loop 1 counter
                  sll          t3, t4, sp
                  lui          gp, 970238
                  addi         a7, zero, -20 #init loop 1 limit
                  nop
main_19_1_t:      andi         gp, gp, -1656
                  addi         s1, s1, -10 #update loop 1 counter
                  srl          ra, zero, s5
                  slt          s4, t0, s1
                  auipc        s2, 389144
                  andi         a1, s5, -1449
                  nop
                  slt          t0, s5, t3
                  addi         t2, zero, 8 #init loop 0 counter
                  addi         s11, zero, -9 #init loop 0 limit
                  slt          ra, s6, ra
                  slti         a6, t0, -857
                  srli         s4, s7, 22
                  auipc        a1, 590250
main_19_0_t:      andi         zero, a0, -125
                  or           a1, s11, t6
                  addi         t2, t2, -9 #update loop 0 counter
                  addi         s4, s11, 1585
                  xori         s9, s9, 1366
                  or           s9, sp, s11
                  slti         s8, s8, 927
                  bge          t2, s11, main_19_0_t #branch for loop 0
                  srl          ra, s4, s2
                  bge          s1, a7, main_19_1_t #branch for loop 1
                  slli         t3, t2, 14
                  addi         tp, zero, -2 #init loop 1 counter
                  andi         ra, t2, 140
                  srli         s10, zero, 29
                  addi         s6, zero, 10 #init loop 1 limit
                  add          s1, s7, gp
main_15_1_t:      addi         s1, a7, -1466
                  addi         tp, tp, 3 #update loop 1 counter
                  addi         s5, zero, -2 #init loop 0 counter
                  sltu         s9, t4, zero
                  nop
                  addi         t6, zero, -19 #init loop 0 limit
                  srai         s8, a5, 25
main_15_0_t:      or           t4, a1, s6
                  sra          t3, a7, s5
                  addi         s5, s5, -3 #update loop 0 counter
                  bge          s5, t6, main_15_0_t #branch for loop 0
                  slti         ra, s5, -631
                  sltiu        t0, a4, -1813
                  lui          s2, 497527
                  xor          s11, t3, s8
                  srli         a4, s5, 28
                  nop
                  bltu         tp, s6, main_15_1_t #branch for loop 1
                  or           zero, s11, s9
                  srli         tp, tp, 27
                  bge          s3, s3, 12f
                  sra          tp, s7, s0
                  sra          s8, t0, s0
                  slt          a7, a5, sp
                  sltiu        s7, t4, -559
                  sltu         tp, ra, t6
                  xor          t2, s5, t2
                  sltiu        a1, a1, -1139
                  and          zero, t6, s2
                  srli         s10, s2, 29
                  sll          a3, sp, s1
12:               bltu         s0, ra, 28f
                  srai         t6, a0, 11
                  addi         a6, t0, 1697
                  srl          s10, sp, s11
                  sltiu        t0, a1, 1863
                  sltu         t3, t5, t5
                  srai         t5, a7, 23
                  srai         s2, a4, 13
                  sltiu        a1, a4, 1150
                  srai         ra, s8, 26
                  sll          s1, sp, s8
                  and          a4, t4, a2
                  srli         s2, t3, 28
                  xor          s10, t1, s4
                  sltiu        s5, tp, -1497
                  nop
28:               and          t3, s3, ra
                  ori          s11, s2, 1513
                  beq          a7, s1, 35f
                  bltu         a1, s0, 39f
                  lui          gp, 592404
                  addi         s9, tp, 647
                  lui          s0, 232901
35:               nop
                  auipc        tp, 932759
                  bne          t4, s6, 52f
                  blt          a1, s5, 39f
39:               bge          tp, s11, 42f
                  or           s4, t1, zero
                  ori          s7, s1, 1116
                  nop
                  andi         t5, a7, 258
                  andi         a1, t5, -1274
                  la           s9, sub_1
                  addi         s9, s9, 451
                  sub          t6, s8, s4
main_j2:          jalr         ra, s9, -451 #jump main -> sub_1
                  bge          s8, s0, 47f
42:               or           s4, a4, gp
                  addi         a6, a0, -1920
                  bgeu         a4, s7, 53f
                  bge          ra, a2, 61f
                  bgeu         t5, t5, 62f
47:               add          s5, t2, a1
                  blt          s5, tp, 61f
                  xor          s9, s0, a4
                  bge          t3, a2, 61f
                  add          t1, s6, a0
52:               andi         s5, t4, -1592
53:               bgeu         tp, a3, 66f
                  sltiu        s4, s9, 231
                  xor          s5, s11, a6
                  blt          s11, t2, 62f
                  sltu         gp, t5, t3
                  bge          s11, ra, 62f
                  nop
                  sltu         s6, a2, ra
61:               sltu         s11, t3, a5
62:               bgeu         t1, a0, 82f
                  slli         t6, s5, 19
                  sltu         tp, s2, gp
                  or           t5, s10, s7
66:               andi         t6, t6, -408
                  srli         a0, zero, 5
                  beq          s3, s9, 78f
                  nop
                  auipc        t2, 92987
                  or           t6, t1, t5
                  or           s5, a4, t6
                  slti         s11, s4, 1991
                  ori          s4, a3, -140
                  xori         t5, a1, -653
                  auipc        s7, 138365
                  slti         a3, a2, 1868
78:               slti         t1, s1, 1779
                  sltu         s5, t5, ra
                  bge          a4, t5, 87f
                  bltu         ra, s7, 86f
82:               auipc        a7, 747505
                  blt          s8, a6, 98f
                  srli         a4, t6, 25
                  sub          t3, a4, s10
86:               addi         a1, s6, 1876
87:               xori         s4, s3, 1831
                  bge          t0, a4, 97f
                  beq          s4, t0, 103f
                  sra          t2, s11, a6
                  bgeu         t0, t0, 97f
                  xori         a0, s4, -1256
                  slt          a1, t0, t6
                  sra          t2, s8, s8
                  xor          s4, s11, s4
                  sltu         t4, t4, a3
97:               and          s1, s5, a0
98:               sra          s0, s10, s4
                  sub          a0, s0, a1
                  ori          s1, s0, -1396
                  bltu         s5, t6, 104f
                  or           t5, t6, a3
103:              sltiu        t3, t0, -782
104:              bne          s7, a7, 116f
                  andi         sp, t5, -1497
                  beq          s4, s9, 126f
                  bge          a7, t1, 113f
                  sltiu        s1, s4, 1558
                  blt          t6, s1, 122f
                  add          t2, s4, t4
                  auipc        t0, 1012135
                  nop
113:              slt          s1, t2, a2
                  slti         a7, t6, 1646
                  sll          ra, s4, zero
116:              auipc        a7, 970650
                  andi         s6, t1, 1313
                  sll          zero, a7, a2
                  xor          a1, a5, t0
                  bne          t2, s6, 138f
                  auipc        t2, 268846
122:              blt          s2, s5, 128f
                  srli         s5, s0, 21
                  sltiu        s6, sp, 1759
                  auipc        s1, 37198
                  addi         s6, zero, -8 #init loop 1 counter
                  addi         s1, zero, 0 #init loop 1 limit
main_5_1_t:       auipc        s9, 274374
                  addi         s6, s6, 4 #update loop 1 counter
                  addi         a3, zero, 5 #init loop 0 counter
                  addi         t3, zero, -16 #init loop 0 limit
main_5_0_t:       ori          s5, ra, 1740
                  addi         a3, a3, -3 #update loop 0 counter
                  bge          a3, t3, main_5_0_t #branch for loop 0
                  beq          s6, s1, main_5_1_t #branch for loop 1
                  auipc        ra, 275602
126:              bgeu         zero, ra, 136f
                  ori          s1, t3, 40
128:              lui          a6, 902552
                  blt          s8, s0, 149f
                  auipc        s4, 230362
                  slli         s4, zero, 4
                  sll          a7, a5, s9
                  sra          t4, t4, a2
                  bltu         s10, t3, 137f
                  or           s6, s7, t3
136:              addi         s4, s6, -1326
137:              sltiu        s10, s0, 1990
138:              sub          t2, t5, a2
                  sra          s0, s11, s4
                  xori         zero, s5, -12
                  addi         t0, ra, -565
                  sll          s0, a1, ra
                  addi         a6, s2, -1527
                  beq          s4, a5, 156f
                  srli         s6, a7, 20
                  auipc        tp, 396348
                  bltu         gp, t5, 161f
                  add          t1, t0, tp
149:              bgeu         t1, s7, 164f
                  or           s6, s3, s6
                  blt          s10, tp, 164f
                  addi         s8, a7, 1642
                  bge          s8, a1, 166f
                  bge          s4, s2, 158f
                  xor          s6, t3, s5
156:              sra          s0, sp, s8
                  auipc        s10, 536177
158:              sltiu        s11, a5, 2016
                  slti         s6, a7, 477
                  bge          s0, a6, 171f
161:              bne          tp, s10, 166f
                  bltu         s10, a4, 177f
                  nop
164:              xor          t6, tp, s11
                  xor          a3, t0, s7
166:              sll          a0, s0, t4
                  sra          s8, s9, sp
                  slt          ra, t5, s3
                  bgeu         t2, s9, 170f
170:              add          t2, s6, s6
171:              slt          a3, a4, s3
                  srli         s11, t1, 24
                  srl          t4, a2, s7
                  nop
                  bltu         tp, s6, 195f
                  slli         a4, s11, 21
177:              srl          a6, t4, a0
                  andi         t2, s9, -1905
                  sub          s2, s10, a5
                  add          s1, a3, ra
                  beq          t6, a3, 187f
                  or           a6, s1, a6
                  sltiu        a4, a0, -1083
                  slt          sp, s9, s2
                  slli         a0, t6, 18
                  andi         t2, s3, 1455
187:              lui          a1, 686548
                  xor          ra, s8, s10
                  or           a0, t6, s2
                  addi         s10, a3, -509
                  andi         a7, t4, -499
                  ori          s0, t1, 254
                  srl          s10, a6, s3
                  slt          sp, s9, s4
195:              ori          t3, s6, 577
                  nop
                  sra          s8, s4, tp
                  srli         tp, s11, 21
                  nop
                  xor          ra, t0, tp
                  sltiu        ra, a2, -1585
                  or           s2, s8, sp
                  ori          t2, t2, 88
                  xori         sp, s8, -440
                  and          a0, a7, s11
                  bne          a4, s10, 212f
                  bltu         s2, t6, 210f
                  slti         t4, a2, 224
                  sub          s11, t6, s0
210:              slli         t3, a4, 20
                  sub          s11, s10, s7
212:              xor          sp, s8, t6
                  sltiu        a1, t4, 539
                  ori          t5, t4, -286
                  sub          zero, zero, t2
                  xori         a6, ra, -1663
                  addi         s4, s0, -797
                  srl          s6, a2, a6
                  lui          a0, 119008
                  bgeu         a1, a3, 233f
                  andi         tp, s9, -659
                  srl          sp, s10, sp
                  slt          t4, t3, a5
                  and          t1, a6, s7
                  addi         a7, zero, 9 #init loop 1 counter
                  slti         t0, a5, -1488
                  addi         s7, zero, -1 #init loop 1 limit
                  andi         gp, a4, 1491
main_21_1_t:      addi         s8, t3, -2043
                  addi         t2, t1, -62
                  sra          s11, zero, a6
                  addi         a7, a7, -3 #update loop 1 counter
                  srli         sp, gp, 16
                  xori         tp, zero, -169
                  addi         a6, zero, -7 #init loop 0 counter
                  xori         a1, s8, 136
                  addi         a4, zero, 9 #init loop 0 limit
                  slti         s2, t5, -1640
                  nop
                  and          t2, gp, a4
main_21_0_t:      or           s1, t1, s8
                  sra          s5, s8, sp
                  ori          ra, t6, -1304
                  sra          t3, t0, t4
                  addi         a6, a6, 4 #update loop 0 counter
                  beq          a6, a4, main_21_0_t #branch for loop 0
                  or           s9, sp, t4
                  ori          t4, ra, -1306
                  sra          s9, s5, gp
                  and          t0, s0, t5
                  sra          s6, a7, s0
                  xori         a3, ra, -1996
                  bge          a7, s7, main_21_1_t #branch for loop 1
                  sltiu        t0, tp, 1001
                  add          t0, a7, tp
                  sub          a3, a6, s5
                  beq          s9, a7, 235f
                  bltu         a7, s11, 235f
                  bgeu         t3, t1, 240f
                  xor          t5, zero, s9
                  sltiu        a7, s5, 868
                  addi         t1, a4, 1128
233:              srli         s2, s7, 4
                  blt          s6, s5, 243f
235:              srai         s8, s9, 14
                  srl          s0, t3, t1
                  srl          a1, a6, zero
                  xori         t5, t4, -151
                  beq          sp, t4, 255f
240:              lui          s1, 676371
                  bne          ra, s10, 257f
                  xor          s5, s3, a4
243:              srai         s6, s5, 20
                  nop
                  auipc        t3, 610578
                  srl          t5, a0, s1
                  beq          s11, a3, 252f
                  beq          s9, s2, 254f
                  sub          zero, a5, s0
                  bltu         s11, a3, 259f
                  xori         sp, t3, 742
252:              or           ra, s0, s7
                  bge          t3, a4, 269f
254:              slti         s1, t4, 51
255:              sra          t4, sp, s1
                  srl          t1, s2, s11
257:              sub          sp, gp, s6
                  slt          s9, t5, a0
259:              add          a0, ra, s0
                  add          s9, t3, s10
                  add          s6, s1, s4
                  blt          s0, a0, 280f
                  auipc        s1, 450076
                  auipc        t5, 184204
                  srli         s0, t6, 9
                  auipc        s7, 261981
                  lui          t3, 540979
                  bgeu         s1, a1, 281f
269:              add          s4, s7, s6
                  xori         s1, ra, 1526
                  addi         s1, a0, 1666
                  bltu         gp, t1, 276f
                  bgeu         s0, a3, 284f
                  xor          a3, a5, a7
                  bne          a1, s9, 291f
276:              ori          sp, tp, -328
                  bltu         s11, t1, 283f
                  beq          s8, s9, 285f
                  srl          s4, s2, a2
280:              nop
281:              or           s8, zero, s4
                  srai         s1, t4, 22
283:              slli         gp, t4, 27
284:              srl          sp, t5, a0
285:              bltu         gp, s3, 288f
                  slti         t6, t3, -1734
                  xor          t3, s4, gp
288:              srli         s7, s1, 14
                  ori          t5, a1, 1403
                  srai         sp, s4, 10
291:              beq          s11, t6, 306f
                  bge          s5, t3, 306f
                  and          ra, s3, s8
                  ori          s9, s7, -1383
                  bne          t0, s10, 315f
                  ori          a1, s3, -1965
                  bge          a7, s9, 302f
                  sltu         a1, s4, a1
                  bne          sp, zero, 305f
                  beq          s2, a7, 310f
                  and          s0, s11, tp
302:              sltiu        a7, s1, -654
                  srl          zero, a1, t6
                  nop
305:              and          t4, t1, zero
306:              srli         t4, s11, 22
                  bltu         a5, sp, 315f
                  bne          a6, zero, 314f
                  bge          s6, t0, 310f
310:              xori         s4, s1, 755
                  or           s6, t3, t4
                  sub          s11, a5, a5
                  bgeu         a6, t2, 325f
314:              srai         s8, a3, 17
315:              add          tp, a6, s10
                  beq          tp, s3, 336f
                  sub          s9, s10, t2
                  sltiu        s5, s2, 210
                  bne          a2, sp, 335f
                  slti         s9, s6, 1130
                  lui          gp, 320003
                  xori         zero, t4, 807
                  lui          a7, 801771
                  slli         s0, sp, 26
325:              blt          s9, s7, 334f
                  sltiu        gp, a0, 146
                  sltu         s4, s2, t2
                  srl          t6, ra, a3
                  srli         gp, a1, 28
                  or           s9, a7, s9
                  auipc        ra, 28859
                  slti         t6, s3, 1905
                  or           s10, a4, t1
334:              addi         s8, s10, -1304
335:              slli         a4, t2, 3
336:              or           s9, tp, s0
                  sltu         t3, a3, s7
                  slt          t3, s0, t2
                  sltu         tp, t4, tp
                  auipc        zero, 715434
                  srli         s9, gp, 10
                  bge          t1, ra, 357f
                  srl          s5, t2, gp
                  xor          a0, sp, s3
                  bltu         s6, t4, 351f
                  andi         a6, s6, 600
                  sra          t3, ra, s10
                  srl          s7, s5, s0
                  slti         s1, s9, -1676
                  srl          a3, a5, s6
351:              srli         s6, s1, 17
                  srai         zero, a6, 18
                  blt          s1, a2, 366f
                  bgeu         s9, t5, 363f
                  sub          a3, s9, t1
                  auipc        gp, 534738
357:              addi         s9, s4, -1504
                  bltu         a0, s9, 361f
                  xor          s4, a2, s1
                  and          s6, s0, t4
361:              sub          a6, tp, s2
                  srli         gp, a5, 15
363:              andi         a6, a3, 502
                  ori          s10, sp, -20
                  bge          t2, zero, 370f
366:              slli         t6, t6, 19
                  nop
                  add          s0, a3, t5
                  slti         t3, a0, 1043
370:              slt          s4, s10, s11
                  andi         t6, s5, 1020
                  xor          s11, a2, a2
                  nop
                  xor          tp, a2, t6
                  bge          a0, s6, 386f
                  sltu         a1, t5, sp
                  and          s0, s4, a1
                  bltu         t4, s11, 391f
                  or           s5, s5, sp
                  slli         tp, s0, 13
                  or           s2, s1, s11
                  and          t2, t4, a0
                  ori          s1, t5, 901
                  bgeu         s11, s3, 402f
                  andi         a0, s2, -446
                  srl          gp, s0, a6
                  la           a6, sub_1
                  lui          a7, 159121
                  andi         s7, s9, 515
                  sub          a7, sp, t6
                  or           a3, a1, a7
                  sra          s0, t6, ra
                  xor          a3, t3, a4
                  slti         tp, t2, 1543
                  addi         a6, a6, 94
                  ori          t0, t2, 1353
                  srl          a7, sp, tp
main_j1:          jalr         ra, a6, -94 #jump main -> sub_1
386:              srai         t2, s2, 22
                  ori          s7, s10, 1307
                  srai         a0, a6, 11
                  blt          a6, zero, 405f
                  bltu         t6, s4, 404f
391:              bge          tp, s1, 400f
                  andi         s1, s5, -1915
                  sll          s1, zero, tp
                  slti         t4, s9, 1368
                  slti         zero, s8, 369
                  addi         zero, t4, 1556
                  sra          s7, a6, s2
                  addi         t4, t1, -76
                  or           a3, a1, a6
400:              xor          s11, s2, a1
                  lui          gp, 559664
402:              sltu         sp, t6, s9
                  lui          s1, 445754
404:              xori         s4, t6, -1069
405:              auipc        gp, 177448
                  sra          s9, s6, a7
                  auipc        gp, 344217
                  srai         s10, t5, 24
                  or           zero, s3, s7
                  slli         s4, t5, 30
                  auipc        t6, 896542
                  bltu         s11, t0, 421f
                  add          t2, s9, ra
                  bgeu         s7, a2, 419f
                  sltiu        a1, t5, -1833
                  and          t3, a5, s9
                  add          t1, a6, s5
                  addi         s1, s4, 879
419:              srli         a3, t0, 20
                  nop
421:              bge          t5, a0, 427f
                  slt          t3, s0, t5
                  lui          sp, 497443
                  bne          a7, a3, 425f
425:              add          t0, s11, s2
                  slli         s0, t2, 0
                  addi         a6, zero, 10 #init loop 1 counter
                  and          ra, a7, gp
                  xori         s1, a7, -769
                  sra          tp, gp, tp
                  addi         t3, zero, 17 #init loop 1 limit
                  sltu         sp, s9, s6
main_16_1_t:      ori          s6, t3, -403
                  sltu         zero, s1, t5
                  addi         a6, a6, 1 #update loop 1 counter
                  srli         s2, a0, 7
                  addi         s8, zero, 9 #init loop 0 counter
                  addi         t6, zero, 10 #init loop 0 limit
                  srli         t4, a0, 28
                  or           s7, s9, tp
main_16_0_t:      and          t2, s11, s9
                  addi         s8, s8, 1 #update loop 0 counter
                  sltiu        t5, t0, 418
                  blt          s8, t6, main_16_0_t #branch for loop 0
                  or           t5, a6, s2
                  bltu         a6, t3, main_16_1_t #branch for loop 1
                  slli         zero, s7, 26
427:              sll          t6, a5, s1
                  slti         s7, a7, 1180
                  nop
                  or           s4, a5, s8
                  lui          s8, 710452
                  auipc        t5, 597377
                  nop
                  blt          a2, s9, 440f
                  and          s4, s8, s8
                  sltu         s10, a2, t5
                  lui          gp, 310847
                  bne          s6, t0, 453f
                  ori          s10, t0, -1549
440:              and          gp, a1, t6
                  lui          zero, 474530
                  sra          s10, s9, sp
                  sub          a7, s9, tp
                  beq          s10, s8, 460f
                  lui          a0, 356669
                  and          s2, s7, s11
                  auipc        s0, 574196
                  ori          s4, ra, -1302
                  nop
                  bltu         s0, t6, 461f
                  bgeu         a7, a6, 457f
                  auipc        s0, 578861
453:              sltiu        s5, s7, -1147
                  and          t1, a6, a6
                  srl          tp, t6, t2
                  bge          ra, ra, 471f
457:              addi         s11, ra, 69
                  nop
                  bgeu         t6, a5, 465f
460:              addi         s2, s6, 810
461:              lui          s5, 1045078
                  add          ra, t3, s5
                  ori          s1, tp, 1792
                  xori         a4, ra, -431
465:              andi         a3, s0, -1270
                  srl          s0, s0, ra
                  beq          s5, t6, 474f
                  add          ra, s9, s3
                  slt          ra, t2, s5
                  slti         t0, sp, 983
471:              auipc        t0, 984034
                  slti         a1, tp, 1538
                  srai         s5, t6, 27
474:              srli         t0, a6, 14
                  srli         t2, s3, 10
                  and          gp, t6, a2
                  addi         s1, tp, 2035
                  srai         s0, a4, 8
                  sltiu        s8, t1, 946
                  sltiu        s8, t6, 398
                  slli         t5, a5, 18
                  ori          s5, s3, -175
                  srli         t0, ra, 22
                  srai         t1, a6, 24
                  blt          a7, s10, 493f
                  and          a4, a1, sp
                  blt          t4, ra, 491f
                  xori         s11, sp, -571
                  blt          t6, gp, 499f
                  ori          sp, t5, -1544
491:              add          s0, s7, a3
                  ori          t0, a7, 79
493:              lui          sp, 586281
                  addi         s6, t6, -1134
                  nop
                  and          t3, sp, a4
                  xor          s1, t2, t6
                  addi         s10, t6, -1458
499:              addi         s6, s7, 753
                  ori          t6, s4, -1656
                  and          a7, a1, ra
                  srl          t3, sp, s1
                  bne          zero, zero, 516f
                  sll          s10, t0, s11
                  nop
                  sub          t3, t3, tp
                  andi         tp, s2, -731
                  add          s4, zero, sp
                  and          s1, s3, s3
                  srli         tp, s1, 28
                  or           s10, a7, zero
                  and          t0, s6, s0
                  slti         tp, t1, -315
                  slti         a1, a7, -1959
                  srl          t6, a7, s7
516:              sub          t3, s1, s0
                  srai         s8, gp, 25
                  beq          t1, t1, 521f
                  or           a6, s0, t5
                  blt          gp, s0, 525f
521:              xor          s6, a5, t0
                  srai         s0, a3, 25
                  bltu         t0, t1, 541f
                  or           s7, t3, t0
525:              add          t4, s2, a2
                  ori          s6, ra, 689
                  nop
                  addi         t6, t5, -438
                  or           a6, a1, a7
                  lui          t0, 29259
                  or           s0, t1, t6
                  lui          t3, 718665
                  bge          s10, a3, 536f
                  slti         a4, s3, -1198
                  andi         a3, s2, 1005
536:              andi         sp, gp, 184
                  xori         a4, sp, 863
                  bge          zero, sp, 550f
                  sub          s11, s2, s9
                  bge          t5, s10, 560f
541:              beq          t4, a2, 552f
                  srai         t5, a3, 18
                  xori         a1, sp, 818
                  addi         s0, gp, -694
                  bge          sp, zero, 565f
                  sra          a7, zero, a6
                  xor          s6, s9, a7
                  lui          sp, 370257
                  andi         t5, s10, -392
550:              sltiu        s8, ra, 172
                  slti         t2, tp, -1581
552:              sub          gp, a6, zero
                  slli         s1, gp, 18
                  slt          gp, sp, s8
                  blt          s10, s9, 571f
                  xori         t6, s11, 106
                  sub          t1, a2, zero
                  xor          zero, t1, s7
                  beq          s2, t4, 572f
560:              andi         a4, s9, 1972
                  bge          t4, s7, 577f
                  lui          sp, 471388
                  and          s0, sp, a1
                  andi         t2, s5, -1483
565:              andi         a1, s11, 523
                  sll          t6, s0, a4
                  or           zero, s7, s4
                  bgeu         s6, s2, 581f
                  addi         s2, t4, -1608
                  xori         sp, a1, 1135
571:              bne          s2, a5, 574f
572:              and          a0, s3, s9
                  sll          s2, s8, s9
574:              srai         s10, t2, 11
                  ori          t0, t5, -353
                  srai         t5, a5, 24
577:              sltu         t2, a3, s6
                  auipc        s1, 67978
                  and          s11, t5, s5
                  lui          gp, 981271
581:              add          s7, zero, s6
                  srai         s9, a7, 7
                  xor          t6, a4, s5
                  add          tp, a2, a2
                  srli         t2, t5, 26
                  addi         sp, t6, 1932
                  nop
                  ori          s1, s3, 1405
                  lui          s9, 724823
                  lui          s10, 57352
                  slli         zero, s5, 25
                  blt          t0, s7, 601f
                  slti         zero, t5, 1462
                  andi         s8, gp, -421
                  sub          tp, gp, tp
                  addi         a4, sp, 35
                  or           a7, s1, tp
                  beq          gp, t4, 599f
599:              blt          a3, s5, 613f
                  and          t4, t6, s3
601:              lui          t3, 947594
                  srai         a1, s3, 27
                  sra          sp, a3, s9
                  and          s5, a3, s2
                  beq          t3, s0, 615f
                  sra          sp, a6, t5
                  srli         t6, a6, 16
                  blt          a3, a2, 628f
                  bge          t1, s5, 625f
                  xor          s2, a2, a2
                  lui          a1, 423871
                  andi         s2, s11, 1625
613:              bne          a6, s4, 619f
                  auipc        t3, 346992
615:              and          s10, a0, t4
                  and          s5, s10, s7
                  andi         t0, s9, 523
                  sltiu        t5, t2, 1801
619:              bgeu         ra, a3, 622f
                  lui          s0, 475321
                  andi         a4, s2, -1896
622:              bge          sp, t4, 637f
                  nop
                  bgeu         s2, a6, 637f
625:              xor          s0, s0, a3
                  add          a0, s6, s8
                  xor          t1, gp, a0
628:              nop
                  auipc        a7, 473775
                  srli         gp, s10, 4
                  srli         gp, a1, 16
                  sub          a6, t3, zero
                  sltiu        s4, ra, -1137
                  sra          sp, s1, a6
                  slt          t5, ra, s2
                  sub          t5, a6, s0
637:              sltu         t2, a7, a0
                  bltu         t5, t4, 644f
                  slli         t5, a5, 7
                  sltu         s7, a4, s9
                  or           zero, s11, s2
                  andi         ra, sp, -1780
                  slti         s5, s7, -809
644:              and          s1, s7, ra
                  xori         s1, s5, 553
                  lui          a7, 207925
                  ori          gp, ra, -1592
                  add          t4, gp, t4
                  lui          a3, 204784
                  bltu         s1, a7, 654f
                  bltu         t2, t2, 666f
                  bne          a4, a2, 668f
                  and          s11, t4, s3
654:              blt          s10, sp, 660f
                  add          a1, a4, ra
                  bgeu         t6, a5, 665f
                  xor          t5, s5, s2
                  sll          s0, ra, a7
                  srli         t0, zero, 19
660:              slli         t2, tp, 18
                  xor          s6, t6, a5
                  andi         a1, a2, -943
                  ori          a4, t4, 985
                  or           a4, t5, s4
665:              sltu         ra, a0, s2
666:              srl          tp, a3, ra
                  srl          s7, a6, tp
668:              beq          t4, t5, 673f
                  blt          s0, s9, 674f
                  srli         sp, t5, 25
                  sll          t1, s6, t6
                  bne          a1, s7, 692f
673:              slti         t1, s9, 686
674:              sub          a4, s6, a7
                  srl          t1, t3, t5
                  blt          zero, s8, 689f
                  and          a3, s6, s11
                  bltu         s1, gp, 696f
                  xor          s2, t5, s7
                  or           a4, s4, a2
                  sra          a0, t3, a6
                  lui          s10, 794376
                  nop
                  bltu         t2, s6, 690f
                  and          ra, ra, a3
                  xori         t5, sp, -2021
                  blt          a6, t0, 695f
                  beq          s7, s4, 704f
689:              sra          s6, t3, t0
690:              slli         s4, a7, 31
                  bne          s0, s4, 703f
692:              bge          a3, a1, 703f
                  lui          t3, 708220
                  auipc        sp, 472204
695:              sltiu        s6, s11, 319
696:              bge          s0, t6, 707f
                  slti         s7, a0, 278
                  slt          t0, s6, t1
                  bgeu         ra, s9, 712f
                  bgeu         t6, tp, 707f
                  sra          s8, s10, s2
                  srli         a1, gp, 23
703:              andi         s1, ra, 233
704:              bne          s1, t2, 710f
                  and          zero, t6, s6
                  blt          t5, t1, 722f
707:              bne          t3, a7, 714f
                  beq          t5, ra, 724f
                  addi         s0, t4, -1492
710:              slli         a6, s11, 6
                  srli         a1, s6, 7
712:              and          s4, zero, a3
                  slti         a6, t0, -753
714:              sra          a6, ra, s4
                  srli         s1, a5, 25
                  bne          a3, s2, 721f
                  slt          t2, s1, a0
                  bltu         s8, a4, 736f
                  and          t5, a2, a0
                  slli         t0, zero, 28
721:              xori         s11, s3, 976
722:              sll          s6, s9, tp
                  addi         s1, a3, -364
724:              xor          a7, t3, sp
                  blt          s1, a0, 728f
                  sra          s5, a0, a1
                  sub          ra, s0, t2
728:              bne          s8, s9, 740f
                  srli         t0, s7, 30
                  beq          s7, tp, 735f
                  bltu         s4, t0, 744f
                  ori          gp, a3, 2004
                  and          s11, tp, a7
                  nop
735:              lui          sp, 211460
736:              auipc        s5, 986209
                  sub          s1, t6, gp
                  auipc        tp, 204387
                  bne          s9, ra, 759f
740:              sub          s10, t0, s4
                  auipc        s7, 348403
                  nop
                  andi         t5, s4, -735
744:              sub          t5, a3, a1
                  addi         a1, sp, 1298
                  bne          s3, t0, 762f
                  slti         s9, s5, 1478
                  sra          t1, s0, tp
                  sltu         s8, a6, t2
                  slt          t4, s0, s0
                  slti         a3, t6, 587
                  andi         s0, ra, -1187
                  andi         s6, t1, -1872
                  bltu         t3, sp, 760f
                  bltu         tp, a1, 768f
                  bne          t6, gp, 757f
757:              sll          t6, s2, a3
                  srli         a1, s5, 28
759:              slt          s10, s10, a4
760:              srai         sp, t3, 3
                  slti         ra, s1, -1370
762:              slt          zero, s5, a1
                  srai         s7, s5, 15
                  beq          tp, tp, 777f
                  bgeu         s10, a5, 775f
                  bne          s11, tp, 781f
                  slt          t5, a2, s1
768:              bne          t2, t0, 772f
                  slli         s4, gp, 8
                  xori         s9, s11, -1163
                  ori          s8, gp, -157
772:              sra          s1, s1, gp
                  bne          gp, s4, 793f
                  slti         t5, t2, 1144
775:              slli         a0, a2, 3
                  andi         ra, sp, 1498
777:              and          s10, s2, ra
                  lui          tp, 114937
                  srai         a6, s10, 14
                  xor          a0, s2, sp
781:              andi         t4, t2, -1072
                  slti         s4, t2, 2002
                  srli         s5, t1, 29
                  sltiu        zero, a5, 1536
                  sltu         t5, s1, s11
                  bne          t1, t6, 792f
                  srl          t3, s7, gp
                  lui          t6, 382947
                  auipc        t0, 568942
                  sltu         t6, s8, a0
                  add          gp, s4, ra
792:              slli         t1, a2, 10
793:              sll          t6, a5, zero
                  addi         s7, tp, -678
                  ori          s1, s1, 838
                  sltiu        a0, s4, 451
                  nop
                  bltu         a4, t1, 812f
                  or           t3, a3, t0
                  srl          s4, a6, a1
                  srai         zero, a0, 21
                  bge          s7, sp, 811f
                  ori          t1, a0, -727
                  sll          a3, ra, a0
                  and          t4, t5, zero
                  xor          t3, s3, a4
                  or           sp, a3, a4
                  sltu         sp, s1, t4
                  sltiu        s7, t4, -1704
                  sub          s0, s9, s2
811:              xori         s2, s4, 599
812:              slt          s10, s0, gp
                  srai         t4, s6, 6
                  srli         a0, t5, 30
                  slli         t3, s5, 1
                  sltu         t0, s0, s1
                  xor          s5, s3, sp
                  slli         t4, s11, 22
                  sltu         a1, s5, a1
                  xori         zero, a1, -1130
                  add          a1, t1, t5
                  slti         s8, sp, 373
                  sltu         gp, a0, s8
                  bge          t4, t0, 827f
                  sra          s4, s10, s6
                  xori         a7, t1, -664
827:              beq          a5, s1, 838f
                  andi         a1, a7, -1278
                  sub          s6, a0, a7
                  add          s9, s9, a4
                  bne          t2, t4, 837f
                  srai         t6, a5, 1
                  beq          s9, s0, 841f
                  sub          s1, t5, sp
                  slli         t4, a5, 29
                  or           ra, s2, s3
837:              sltiu        s4, t1, 1262
838:              srli         a0, t2, 23
                  bltu         s8, s5, 848f
                  slti         zero, gp, 1621
841:              sra          t0, zero, zero
                  addi         s6, s6, -658
                  ori          a4, tp, -23
                  and          sp, a4, s5
                  srli         a3, a5, 10
                  sltu         tp, t0, sp
                  auipc        sp, 300434
848:              sll          s7, s4, t5
                  lui          t1, 287738
                  bgeu         a2, tp, 861f
                  slti         s1, a1, 1908
                  slli         s4, a2, 7
                  sra          t3, zero, t4
                  add          s11, s2, ra
                  sub          t4, s11, sp
                  srli         s5, t1, 12
                  addi         t1, s6, -1926
                  andi         ra, t1, 206
                  slti         t0, a6, -307
                  addi         s7, tp, -786
861:              srli         s2, a1, 6
                  auipc        t3, 1013967
                  or           s10, a1, s8
                  slli         s9, s11, 19
                  auipc        gp, 460285
                  bge          s10, a0, 881f
                  blt          s6, t4, 873f
                  sra          s2, s3, tp
                  sltiu        a6, t6, -1851
                  srl          t1, t4, t0
                  bne          a2, t0, 887f
                  slli         s2, tp, 8
873:              sra          s2, s8, a5
                  srai         a3, sp, 4
                  srl          s0, zero, tp
                  bgeu         s0, t3, 894f
                  andi         t0, s8, 332
                  bge          s0, s2, 893f
                  bge          s9, a0, 895f
                  srai         a3, s5, 21
881:              slt          a7, sp, a5
                  sra          sp, a6, a6
                  addi         s10, sp, -748
                  ori          sp, t5, 1396
                  bltu         a4, s1, 898f
                  xor          s8, t0, s6
887:              xor          a4, sp, gp
                  nop
                  srai         t0, s2, 1
                  xor          t6, s4, t1
                  bltu         t5, a7, 907f
                  addi         s0, a2, 2028
893:              andi         t5, s8, 1881
894:              lui          s11, 942330
895:              and          tp, tp, a2
                  slti         s6, t1, 410
                  auipc        sp, 339363
898:              ori          zero, a3, -1477
                  sra          ra, s2, s1
                  auipc        s7, 14937
                  and          a0, s6, s1
                  sub          t5, s6, ra
                  slli         s4, s6, 25
                  blt          a6, ra, 911f
                  sll          s5, s1, s8
                  auipc        tp, 408946
907:              srli         s1, a2, 3
                  bne          s1, s5, 919f
                  srai         a4, t5, 15
                  nop
911:              or           t4, s9, t3
                  auipc        s10, 781729
                  bne          s11, a5, 916f
                  srli         s4, s6, 5
                  nop
916:              xori         t0, t4, -1418
                  or           a3, s7, a4
                  srli         t3, s6, 29
919:              slti         sp, s1, 743
                  xor          s10, sp, t5
                  sll          a4, s10, s3
                  lui          t5, 448693
                  slti         s10, s6, -594
                  sltiu        tp, s7, -1396
                  nop
                  sltiu        s0, s4, 1419
                  beq          zero, s11, 933f
                  sra          a7, s2, t0
                  addi         s11, s1, 1524
                  bltu         a0, sp, 950f
                  sub          s8, t4, a1
                  auipc        s2, 366018
933:              srai         s10, t1, 18
                  and          s4, s0, a7
                  or           s8, s7, s1
                  auipc        gp, 966459
                  ori          sp, ra, -1179
                  slli         a0, s1, 3
                  addi         t2, a0, -707
                  andi         s0, s1, 993
                  or           tp, zero, s0
                  add          t5, s8, a1
                  xori         a0, gp, -1823
                  and          a1, t6, s11
                  ori          zero, s10, 1947
                  sub          sp, s7, s10
                  bgeu         t0, tp, 952f
                  add          tp, tp, s3
                  sub          t5, sp, a3
950:              blt          t3, a3, 965f
                  sltu         s4, a3, t6
952:              lui          s7, 436758
                  bgeu         s11, gp, 956f
                  or           t6, t6, s9
                  srl          ra, zero, ra
956:              bne          s10, tp, 965f
                  bge          s0, t3, 958f
958:              bgeu         s11, a2, 971f
                  sub          s4, s11, t2
                  slli         s1, s5, 21
                  sltiu        s0, t6, 1784
                  auipc        t6, 931584
                  sub          gp, t4, gp
                  slt          s9, a5, a4
965:              blt          s9, sp, 975f
                  xor          a7, a0, s2
                  sll          s4, t2, s3
                  blt          t3, s6, 988f
                  auipc        t1, 458178
                  xori         t5, t3, -500
971:              slli         s11, s7, 21
                  auipc        a7, 168971
                  slti         a4, s6, -833
                  sub          s8, s3, t3
975:              sub          ra, gp, s7
                  sub          t1, a4, t1
                  slti         t6, s5, 233
                  sub          s5, gp, tp
                  nop
                  ori          s9, s8, -57
                  bne          zero, a3, 987f
                  sltiu        s5, s8, 291
                  sub          t4, s1, s7
                  bne          tp, zero, 992f
                  lui          s10, 334183
                  slli         a3, a0, 5
987:              sub          s0, s6, t1
988:              andi         s5, s6, -424
                  bne          a0, a5, 1000f
                  slti         s8, t5, -1035
                  srl          ra, a6, ra
992:              lui          s4, 577793
                  sltiu        s1, s7, -784
                  ori          t4, t3, -200
                  xor          sp, t1, t2
                  sll          zero, a0, s6
                  slti         a4, t2, 852
                  auipc        s1, 571635
                  sltu         s4, t0, s10
1000:             slli         s0, zero, 1
                  xori         t3, s8, -1567
                  srl          ra, s10, sp
                  slti         s9, a5, 889
                  nop
                  slli         s2, t1, 4
                  slti         s6, t5, -981
                  slt          ra, s10, t2
                  slli         s5, s9, 23
                  xori         zero, s10, 1773
                  lui          t1, 656611
                  xori         s7, s2, -149
                  andi         s11, a5, 1173
                  xor          s4, a7, t6
                  blt          t1, zero, 1018f
                  beq          a6, s3, 1028f
                  bne          sp, s7, 1025f
                  slt          s0, s9, a5
1018:             blt          gp, ra, 1023f
                  and          a1, gp, a5
                  slt          a4, s8, gp
                  blt          sp, t5, 1035f
                  slti         t2, ra, 924
1023:             xori         s8, s10, 1127
                  addi         s8, sp, -216
1025:             add          s1, t1, s1
                  nop
                  sra          t1, t2, ra
1028:             sll          s9, zero, s0
                  srai         s10, s5, 11
                  beq          a6, a0, 1042f
                  bne          s11, a1, 1037f
                  slli         t0, s2, 26
                  sll          s9, s5, zero
                  add          a0, sp, gp
1035:             srli         a3, s3, 3
                  and          t0, t5, a0
1037:             xor          t1, s10, s4
                  auipc        s9, 784051
                  sltu         t4, a4, s3
                  bltu         s4, a2, 1056f
                  bgeu         a1, gp, 1052f
1042:             sltiu        a7, a7, 978
                  nop
                  nop
                  slt          s1, a7, s4
                  or           a7, a1, a0
                  bne          zero, gp, 1053f
                  sltu         a0, a3, a6
                  bgeu         ra, a5, 1062f
                  beq          s8, a5, 1056f
                  xor          a7, a6, s1
1052:             ori          gp, s5, -983
1053:             addi         t5, t4, 1314
                  bgeu         s8, a0, 1065f
                  bgeu         a3, s6, 1071f
1056:             slt          s11, s6, t5
                  lui          zero, 653761
                  sll          s0, s9, s3
                  sltu         t1, a5, t3
                  sltu         tp, t2, s4
                  sra          zero, t3, s8
1062:             bge          t6, s5, 1072f
                  slli         a7, a0, 26
                  slti         ra, t5, -1119
1065:             sll          s0, a4, a7
                  slt          s2, a2, a7
                  bltu         gp, t1, 1068f
1068:             srli         a3, sp, 7
                  addi         sp, a0, 532
                  blt          s3, s2, 1074f
1071:             bge          tp, a1, 1074f
1072:             slt          gp, a2, a6
                  sltu         s5, t6, s6
1074:             srli         t2, a5, 5
                  beq          ra, s7, 1078f
                  bge          s0, tp, 1089f
                  lui          s4, 648982
1078:             add          s4, a0, t0
                  blt          s5, a7, 1092f
                  addi         t0, a5, 1907
                  srl          a6, a6, a4
                  add          s2, t0, s9
                  sltu         s0, s2, s0
                  and          a7, zero, s7
                  xori         s9, s11, 484
                  xori         s2, ra, 1889
                  or           a4, a1, a6
                  bne          a5, s11, 1097f
1089:             auipc        a4, 785983
                  xori         t2, s6, -1724
                  sltiu        s4, s3, 771
1092:             lui          a7, 151316
                  sra          s0, s8, s7
                  nop
                  lui          s1, 361873
                  srai         t2, a3, 31
1097:             slli         s7, a1, 18
                  bltu         ra, zero, 1106f
                  or           gp, s8, s2
                  srl          gp, t3, s7
                  lui          s1, 172564
                  bge          a1, a0, 1122f
                  sltu         s9, a2, s10
                  slli         t0, a6, 1
                  slli         s6, s5, 5
1106:             bne          zero, tp, 1120f
                  bltu         s2, s7, 1119f
                  sltu         s11, a6, a7
                  lui          t6, 340640
                  sra          t5, s1, s2
                  lui          s2, 105438
                  bgeu         a5, s10, 1117f
                  xor          t1, s9, zero
                  xor          s4, ra, s8
                  slli         a3, s4, 26
                  andi         s5, s8, -1472
1117:             sra          ra, t3, s11
                  bltu         s8, s2, 1130f
1119:             bltu         s4, s0, 1130f
1120:             sltu         a3, s2, s10
                  sltu         s6, s7, gp
1122:             xori         zero, a5, -1541
                  xor          s7, s6, a3
                  xori         t4, sp, 1769
                  bne          s9, a3, 1130f
                  srl          t2, s0, zero
                  addi         s1, s2, -1177
                  srli         s0, s5, 3
                  xor          a4, t5, sp
1130:             sltu         a7, t4, s5
                  la x19, test_done
                  jalr x0, x19, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            lui          t5, 243521
                  andi         t0, s3, -378
                  srli         t1, t3, 10
                  auipc        tp, 1042370
                  nop
                  addi         a2, a2, -8
                  sltu         s6, s4, ra
                  sw           ra, 4(a2)
                  xori         zero, a5, 1206
                  add          a0, a1, a0
                  slti         a0, tp, 1036
                  add          gp, s6, s9
                  srl          gp, t6, ra
                  sub          sp, t6, a6
                  nop
                  bgeu         s10, s1, 21f
                  nop
                  sub          t6, a7, a0
                  bne          gp, s9, 9f
                  and          s2, a6, t5
9:                slli         a0, t2, 29
                  xori         t6, s10, 358
                  beq          sp, s5, 21f
                  bge          s6, gp, 21f
                  auipc        a1, 562913
                  sub          s6, zero, s6
                  slti         a0, s8, -305
                  sra          s11, s0, s1
                  add          s6, a1, a5
                  xor          s8, a3, a1
                  ori          a1, t5, -1283
                  srl          a1, a6, s5
21:               sll          gp, a3, s7
                  lw           ra, 4(a2)
                  sltu         gp, a1, s11
                  sltu         t1, a5, a5
                  addi         a2, a2, 8
                  or           t1, a7, s0
                  addi         t1, ra, -35
                  xori         sp, t1, 237
                  slli         s2, a7, 0
                  nop
42:               addi x27, x1, 0
42:               jalr x27, x27, 0
sub_5:            blt          t0, a6, sub_5_stack_p
                  xor          s2, s3, s0
                  lui          sp, 884035
sub_5_stack_p:    addi         a2, a2, -12
                  addi         sp, s5, 1729
                  auipc        tp, 600994
                  sltu         s4, t3, t4
                  slli         s6, t5, 6
                  sw           ra, 4(a2)
                  slti         s7, s8, -818
                  lui          s10, 814269
                  sltiu        t4, s7, -1189
                  sub          t5, t4, s11
                  blt          s10, a0, 9f
                  srai         s0, a5, 25
                  xor          s8, tp, t5
                  bgeu         s6, tp, 9f
                  auipc        s0, 799143
                  ori          s2, a1, -537
9:                nop
                  lw           ra, 4(a2)
                  addi         a2, a2, 12
                  xori         a0, t1, -1924
                  srai         a4, t3, 24
                  sra          s1, t6, a4
25:               addi x8, x1, 0
25:               jalr x8, x8, 0
sub_1:            bgeu         gp, s10, sub_1_stack_p
                  auipc        tp, 931821
sub_1_stack_p:    addi         a2, a2, -52
                  srai         a0, t3, 23
                  slli         zero, t0, 27
                  and          s7, gp, s11
                  slli         s2, a4, 27
                  slt          s1, s6, zero
                  ori          s5, t3, 2011
                  sw           ra, 4(a2)
                  add          a0, a2, t2
                  addi         a6, zero, 4 #init loop 1 counter
                  sub          s9, t2, gp
                  lui          s10, 343321
                  xori         zero, t6, 1786
                  addi         s7, zero, 19 #init loop 1 limit
                  ori          s10, s2, 267
                  sll          t2, s1, t1
sub_1_4_1_t:      auipc        a3, 701629
                  srai         t6, s3, 11
                  addi         a6, a6, 5 #update loop 1 counter
                  xor          t4, s4, t0
                  addi         s5, zero, -4 #init loop 0 counter
                  sub          t3, s11, s7
                  addi         s10, t2, 1158
                  srl          t6, s10, s1
                  addi         gp, zero, 6 #init loop 0 limit
                  slt          t6, s8, a5
                  srl          s1, a0, s6
                  lui          s10, 131913
                  slli         t5, a7, 13
sub_1_4_0_t:      auipc        a7, 258373
                  srai         s8, s7, 31
                  addi         s5, s5, 1 #update loop 0 counter
                  ori          s0, a3, -1894
                  bne          s5, gp, sub_1_4_0_t #branch for loop 0
                  andi         t5, a7, 713
                  beq          a6, s7, sub_1_4_1_t #branch for loop 1
                  sltiu        t3, s10, 805
                  addi         s9, zero, 0 #init loop 0 counter
                  sltu         s8, t6, s7
                  add          s5, s0, t2
                  addi         s2, zero, -11 #init loop 0 limit
                  xor          s5, gp, a1
                  and          s11, ra, a1
sub_1_2_0_t:      lui          zero, 327104
                  sltu         a6, t4, s1
                  addi         s9, s9, -10 #update loop 0 counter
                  and          t4, s7, ra
                  srli         s6, t4, 27
                  sltiu        s5, a5, 999
                  ori          s10, ra, -1882
                  bge          s9, s2, sub_1_2_0_t #branch for loop 0
                  slli         s7, s5, 20
                  addi         t3, zero, -7 #init loop 1 counter
                  sub          t4, a7, s8
                  addi         s5, zero, -1 #init loop 1 limit
                  sll          ra, ra, t6
                  slt          a4, s3, s7
sub_1_1_1_t:      sub          ra, s3, s3
                  addi         t3, t3, 6 #update loop 1 counter
                  slt          t2, s4, zero
                  addi         s6, zero, -5 #init loop 0 counter
                  add          a3, a5, t1
                  addi         s4, zero, 8 #init loop 0 limit
                  sll          a4, a1, a0
sub_1_1_0_t:      addi         s11, gp, -482
                  and          a6, ra, t6
                  addi         s6, s6, 2 #update loop 0 counter
                  addi         s2, tp, 1616
                  bltu         s6, s4, sub_1_1_0_t #branch for loop 0
                  beq          t3, s5, sub_1_1_1_t #branch for loop 1
                  slli         s10, a6, 12
                  addi         s2, zero, 8 #init loop 0 counter
                  addi         gp, zero, 6 #init loop 0 limit
                  sltiu        s0, a2, 885
                  sra          a1, gp, a2
                  sll          s6, a4, s3
                  srl          t0, t5, gp
                  lui          s5, 53224
                  sll          t2, t1, a3
                  srli         t3, a6, 31
                  srl          a1, zero, s9
                  sll          s8, s5, s11
                  srli         a0, a5, 5
                  slti         a4, s8, -740
                  sll          t1, a1, s2
                  and          s7, s1, a2
                  slt          s6, s11, a2
                  srai         a3, gp, 27
sub_1_0_0_t:      andi         s0, tp, -1721
                  add          s8, s0, ra
                  addi         s2, s2, -5 #update loop 0 counter
                  sub          t2, t6, a0
                  auipc        s7, 494025
                  auipc        t6, 805458
                  sltiu        s9, s1, 20
                  srai         a3, s8, 16
                  sll          t0, zero, s3
                  bgeu         s2, gp, sub_1_0_0_t #branch for loop 0
                  nop
                  addi         sp, zero, 0 #init loop 0 counter
                  sltiu        a0, a2, 1281
                  andi         a4, s11, 1726
                  addi         s11, zero, -16 #init loop 0 limit
sub_1_3_0_t:      xor          tp, ra, t4
                  and          t5, s1, t6
                  sltu         s4, a4, tp
                  addi         sp, sp, -8 #update loop 0 counter
                  add          ra, sp, s4
                  srai         s10, s9, 26
                  xor          t2, s8, s8
                  sltiu        t6, s11, 1694
                  sltu         s10, s8, tp
                  sub          s1, t4, gp
                  bne          sp, s11, sub_1_3_0_t #branch for loop 0
                  sra          s1, s1, a5
                  and          t5, t3, s3
                  srl          zero, a4, s5
                  sltiu        gp, t1, -1480
                  sra          a0, a7, s1
                  slt          a1, t4, a1
                  srl          s6, t6, a3
                  srai         a0, gp, 11
                  xor          sp, sp, s0
                  bge          gp, tp, 16f
                  srli         t2, s10, 25
                  slt          s8, t5, a5
                  blt          a4, tp, 28f
                  srl          s10, a1, s8
                  slt          t3, t0, s8
                  addi         t3, zero, -1 #init loop 1 counter
                  sll          t5, s5, s11
                  and          s1, a5, s9
                  auipc        s0, 720087
                  srli         a4, ra, 6
                  addi         a0, zero, -8 #init loop 1 limit
                  xor          s6, s9, s0
sub_1_6_1_t:      lui          t2, 921595
                  addi         t2, t2, 936
                  addi         t3, t3, -3 #update loop 1 counter
                  addi         a1, zero, 4 #init loop 0 counter
                  or           s5, t6, s2
                  addi         a6, zero, -16 #init loop 0 limit
sub_1_6_0_t:      xor          zero, a3, gp
                  addi         a1, a1, -4 #update loop 0 counter
                  bne          a1, a6, sub_1_6_0_t #branch for loop 0
                  bge          t3, a0, sub_1_6_1_t #branch for loop 1
                  lui          a3, 486643
                  and          s11, t6, t4
                  ori          a3, a1, -685
16:               auipc        a0, 728831
                  ori          s1, a2, 1157
                  lui          a0, 378674
                  ori          s0, a5, -247
                  slt          s1, t4, t2
                  slt          s8, t2, s1
                  sub          tp, a7, zero
                  sltiu        s2, s1, 1504
                  slti         s4, a1, -217
                  bne          t0, t1, 33f
                  slt          s0, a4, s10
                  or           t1, t3, s9
28:               bne          t1, a0, 42f
                  slli         t4, a1, 27
                  and          tp, s3, t5
                  xor          a3, a7, t6
                  blt          s9, s3, 44f
33:               bgeu         t4, t1, 49f
                  slti         s1, s0, 660
                  beq          s8, a0, 39f
                  blt          zero, a5, 46f
                  blt          s3, t2, 39f
                  sra          s6, ra, s11
39:               auipc        gp, 945622
                  bgeu         s2, s8, 57f
                  slt          s0, a1, s2
42:               sra          s11, s11, s11
                  bgeu         s6, s5, 53f
44:               andi         a7, sp, -1490
                  and          t6, s4, t1
46:               bne          t1, s8, 51f
                  add          t1, t3, t2
                  bgeu         s5, tp, 65f
49:               beq          tp, t4, 54f
                  beq          s10, a4, 57f
51:               nop
                  auipc        s8, 460667
53:               ori          a4, a5, 273
54:               lui          s1, 142762
                  sltu         s0, s3, s1
                  add          s4, a7, a1
57:               sll          sp, s0, t2
                  blt          t3, gp, 77f
                  bne          a0, s10, 65f
                  srli         t0, a2, 7
                  lui          t6, 502262
                  bge          s9, t2, 76f
                  xori         s10, a4, 378
                  and          t5, a4, tp
65:               slt          ra, a2, zero
                  ori          t5, s6, -987
                  auipc        s8, 876048
                  or           zero, s4, s10
                  and          s10, a1, gp
                  add          gp, t4, s3
                  sltu         s8, tp, a2
                  nop
                  nop
                  sltiu        a1, s10, -737
                  bge          s2, s10, 81f
76:               auipc        s10, 392151
77:               addi         s1, a6, -245
                  bltu         tp, zero, 82f
                  ori          a1, a0, 1139
                  auipc        t2, 224759
81:               sra          s10, s11, a2
82:               auipc        t1, 19649
                  xor          s9, a3, a0
                  sltiu        gp, s2, 1092
                  andi         ra, s2, 948
                  srli         t2, ra, 14
                  sltiu        s8, gp, -1495
                  xori         s7, a0, 806
                  lui          s9, 458029
                  bge          s4, s6, 104f
                  andi         a4, a0, -286
                  ori          t6, s9, -1587
                  sub          t4, t3, a3
                  beq          t6, s9, 100f
                  beq          gp, a1, 109f
                  slli         t4, s3, 30
                  ori          s2, a6, -530
                  xori         tp, t5, 1750
                  lui          s5, 417101
100:              srli         t6, tp, 11
                  bltu         s2, t6, 116f
                  bne          s0, t4, 108f
                  sll          t4, s0, a4
104:              ori          a1, sp, -449
                  xori         s10, t2, -1599
                  sltiu        t6, t1, -478
                  xor          tp, s5, a7
108:              bgeu         zero, s0, 126f
109:              bltu         s1, s10, 114f
                  sll          zero, s10, a4
                  sll          t0, s0, s8
                  srai         a0, s1, 12
                  or           tp, a6, a2
114:              slt          t2, t1, s7
                  sll          s6, s11, s8
116:              nop
                  slli         s7, t6, 24
                  bne          s3, t5, 125f
                  srli         t4, sp, 15
                  andi         a0, s1, 1295
                  andi         s0, t5, -1686
                  bgeu         a2, a2, 131f
                  srli         t1, gp, 7
                  or           a1, t4, s4
125:              sll          t0, s5, a3
126:              blt          s6, s10, 131f
                  xor          s4, ra, s4
                  bge          s3, a6, 138f
                  xor          a3, a6, t0
                  sra          a1, zero, s6
131:              slli         a4, s2, 4
                  srli         a3, t1, 28
                  lui          s2, 958862
                  lui          zero, 689034
                  bgeu         tp, tp, 149f
                  lui          t6, 289449
                  beq          sp, s7, 151f
138:              srl          zero, t4, s10
                  slti         s4, t5, 1889
                  sll          s10, s6, s3
                  bgeu         s11, s7, 158f
                  bltu         s7, s2, 157f
                  bgeu         a2, a0, 149f
                  sltiu        a7, gp, -609
                  bgeu         a7, t0, 153f
                  slt          s4, sp, a3
                  andi         t5, t0, -238
                  slli         sp, t0, 30
149:              lui          sp, 679299
                  xori         s9, s2, -1329
151:              srl          s6, s10, tp
                  srai         a3, t5, 6
153:              sltu         s10, sp, s5
                  xor          a7, tp, t4
                  srai         t0, s6, 2
                  add          t6, t4, a1
157:              nop
158:              and          tp, t2, sp
                  lui          a1, 510541
                  and          sp, s5, a2
                  srai         t0, a7, 11
                  srl          t1, tp, ra
                  slti         t1, t4, -1482
                  sra          s8, a7, t5
                  bne          a3, s0, 177f
                  xor          t3, a6, s4
                  beq          t6, a5, 173f
                  sll          s2, tp, s4
                  srl          zero, s2, ra
                  srli         s2, sp, 12
                  auipc        t1, 772402
                  sll          a0, a4, a0
173:              sltu         s2, zero, a4
                  xor          t6, s4, s7
                  bltu         s0, s2, 192f
                  srl          s9, a6, a4
177:              andi         s11, s6, -1655
                  nop
                  lui          a3, 51608
                  bgeu         t1, a6, 184f
                  xori         s9, s3, 1811
                  sra          s7, a5, t4
                  slli         s5, s9, 10
184:              blt          ra, tp, 191f
                  srli         t4, a4, 30
                  bne          a1, a0, 203f
                  slt          t6, s10, s2
                  bgeu         a1, s1, 192f
                  lui          s1, 909890
                  and          t3, s5, t4
191:              lui          gp, 254187
192:              xori         s6, t1, -1598
                  nop
                  slli         a3, s10, 30
                  sub          s11, s2, a4
                  and          zero, a3, a7
                  andi         gp, t3, 870
                  bne          t2, s1, 216f
                  and          a6, a1, s6
                  sub          s0, t0, a0
                  sll          s8, t6, t3
                  bltu         a4, a6, 216f
203:              srli         a4, gp, 8
                  xor          a4, t4, a6
                  sll          t6, t0, sp
                  sll          s5, tp, t2
                  sltiu        s0, t0, 1767
                  lui          gp, 706562
                  sra          s11, s6, s10
                  andi         s0, ra, -986
                  bge          s3, a0, 221f
                  beq          tp, t5, 217f
                  bne          s8, t4, 218f
                  sra          a0, s2, s6
                  bgeu         gp, s8, 217f
216:              bltu         zero, s8, 235f
217:              and          a1, s2, t6
218:              and          a3, a2, t0
                  srai         a4, a5, 22
                  addi         s10, zero, 4 #init loop 1 counter
                  ori          sp, ra, 1484
                  addi         s5, zero, 11 #init loop 1 limit
                  slt          s0, ra, t3
sub_1_5_1_t:      xor          sp, s4, tp
                  add          s7, t6, s4
                  andi         s6, s4, 106
                  addi         s10, s10, 10 #update loop 1 counter
                  and          a6, s6, s3
                  auipc        s6, 523063
                  addi         t6, zero, -9 #init loop 0 counter
                  addi         t2, zero, -13 #init loop 0 limit
                  sltiu        t4, tp, 1093
sub_1_5_0_t:      lui          sp, 596758
                  sll          s1, s3, s7
                  or           s9, s2, s5
                  sra          a7, t0, t3
                  addi         t6, t6, -4 #update loop 0 counter
                  bne          t6, t2, sub_1_5_0_t #branch for loop 0
                  srli         t3, ra, 22
                  auipc        s9, 733692
                  addi         tp, zero, 243
                  sll          a3, s8, zero
                  sltiu        s11, tp, -811
                  nop
                  xori         t5, gp, -1961
                  slt          zero, s7, ra
                  slli         s2, sp, 29
                  addi         a6, ra, -918
                  srai         ra, t6, 19
                  blt          s10, s5, sub_1_5_1_t #branch for loop 1
                  slli         sp, s9, 10
                  slt          s5, t6, s5
221:              srli         t2, s7, 9
                  bgeu         s5, s2, 230f
                  andi         t1, a4, 1883
                  sub          s7, a3, a6
                  or           s0, t0, s10
                  sub          tp, t0, s1
                  add          a4, t2, s5
                  lui          t6, 399460
                  sll          s8, a4, t6
230:              slti         ra, s6, 165
                  sra          s7, s10, sp
                  andi         s10, s11, -1514
                  add          s10, s0, gp
                  srli         t5, zero, 24
235:              srli         s10, t1, 26
                  sra          t5, t1, a5
                  beq          s10, zero, 243f
                  bltu         s5, t4, 243f
                  sltu         s9, a2, s5
                  xori         gp, a7, -667
                  bgeu         t6, a3, 246f
                  sub          ra, s9, t0
243:              addi         t3, t5, 765
                  bge          s3, t1, 251f
                  nop
246:              nop
                  addi         tp, s10, -878
                  bne          s11, s7, 257f
                  bltu         s9, s9, 263f
                  slli         t6, t6, 20
251:              and          a6, a2, t5
                  nop
                  srai         s5, ra, 21
                  xor          t4, t3, s5
                  srli         a6, s11, 22
                  lui          t4, 830037
257:              andi         t2, s9, -1743
                  srli         s9, s5, 1
                  la           a7, sub_3
                  ori          a6, s2, 1471
                  and          t2, t0, tp
                  ori          a6, zero, -1648
                  addi         a7, a7, -878
                  and          a6, a0, t2
                  srl          gp, s3, t2
                  beq          a3, s5, sub_1_j4 #branch to jump instr
                  xor          a0, t1, a5
                  andi         a0, a6, -1213
                  or           t4, gp, s7
                  or           t1, a2, s7
sub_1_j4:         jalr         ra, a7, 878 #jump sub_1 -> sub_3
                  bltu         a7, a1, 274f
                  xori         t2, ra, 1297
                  sra          s0, tp, s6
                  auipc        a4, 18030
                  sub          s5, ra, s3
263:              nop
                  sltiu        gp, zero, 1752
                  nop
                  bgeu         s7, a7, 272f
                  bne          s6, s11, 273f
                  bgeu         t3, ra, 274f
                  sltu         s4, a3, a1
                  bne          s10, a5, 284f
                  slt          zero, t4, t1
272:              sub          t2, s0, t6
273:              sub          a0, a2, s7
274:              xor          a0, a6, t6
                  sltu         s9, a2, t3
                  andi         s6, t1, 1744
                  slti         s0, s6, -1866
                  xor          s4, tp, a2
                  andi         s4, ra, 281
                  sra          t3, ra, sp
                  beq          s0, a2, 295f
                  lui          s6, 367274
                  nop
284:              addi         a6, t4, -1957
                  slli         s6, t6, 6
                  xori         s9, t6, 255
                  lui          a4, 354446
                  blt          t1, s11, 307f
                  sltu         s0, t0, a5
                  or           sp, s6, sp
                  sll          s10, t2, s9
                  or           s0, t1, a2
                  addi         t6, tp, 1853
                  bge          a5, sp, 301f
295:              bltu         a6, s0, 297f
                  sltiu        zero, a2, -1139
297:              bltu         sp, t0, 302f
                  add          s0, a6, a5
                  lui          t3, 118844
                  sltu         a4, s1, a1
301:              sub          a7, s7, s0
302:              blt          a3, t3, 319f
                  nop
                  slt          s2, s10, s11
                  sll          a4, t1, a1
                  auipc        a3, 804716
307:              xor          a6, a6, t6
                  andi         a3, a1, -679
                  bne          s7, t4, 319f
                  sra          a1, t2, t2
                  blt          a5, t4, 317f
                  addi         s11, t4, -389
                  sltiu        t5, t1, -1366
                  andi         t3, s10, 1350
                  bne          a0, ra, 327f
                  xori         a6, a6, -1656
317:              srl          s9, s2, sp
                  auipc        ra, 941758
319:              or           a7, sp, t4
                  ori          t3, a0, -1802
                  blt          a2, s4, 339f
                  or           t6, s5, s8
                  blt          a7, s7, 332f
                  add          s5, s6, s4
                  sltu         a0, t5, s1
                  sub          a0, s8, s10
327:              bltu         a1, s2, 334f
                  auipc        t6, 618529
                  auipc        t0, 727120
                  addi         s9, t6, 802
                  bge          s10, a6, 335f
332:              bne          t2, t6, 346f
                  nop
334:              slti         t6, s10, -229
335:              auipc        t2, 542172
                  sltiu        s2, s6, -531
                  sltiu        s2, s8, -639
                  xor          s4, s6, s8
339:              add          t0, t1, s11
                  slli         t6, s6, 8
                  lui          s2, 807303
                  slt          gp, a4, ra
                  xori         t4, t5, 975
                  addi         s7, gp, -547
                  sub          s8, s6, s4
                  slti         a3, a4, 604
                  andi         tp, a0, 275
                  slli         a1, gp, 19
sub_1_j3:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  bne          t5, t4, 355f
                  or           a7, t5, t3
                  andi         s7, s11, -1577
                  addi         s10, a7, 1692
                  andi         t1, s7, -1961
346:              or           s4, t3, t0
                  srl          s9, ra, sp
                  sra          t6, a7, s2
                  srai         t1, a4, 7
                  nop
                  sub          sp, t1, ra
                  blt          s3, t3, 358f
                  bltu         s3, s1, 358f
                  or           a0, s1, s7
355:              srai         a1, s4, 10
                  sll          s0, a2, a3
                  or           t3, s2, s4
358:              or           s7, s7, s6
                  lw           ra, 4(a2)
                  addi         s7, s9, 98
                  add          t3, a0, t3
                  andi         a3, s11, 1095
                  addi         a2, a2, 52
                  add          s11, a0, sp
                  andi         s11, t3, -444
556:              addi x9, x1, 1
556:              jalr x9, x9, 0
sub_2:            ori          t3, ra, -273
                  nop
                  andi         s5, s11, 1064
                  srai         t6, a5, 22
                  slt          a0, a1, s10
                  sltu         a0, t3, s1
                  addi         a2, a2, -44
                  nop
                  sw           ra, 4(a2)
                  xor          t6, t0, a0
                  addi         t4, s7, 1482
                  srli         s6, s9, 14
                  addi         a1, zero, 8 #init loop 1 counter
                  lui          s10, 121292
                  addi         s7, zero, 9 #init loop 1 limit
                  add          zero, s1, t0
sub_2_1_1_t:      add          t4, ra, gp
                  addi         a1, a1, 9 #update loop 1 counter
                  sra          s0, t3, s1
                  add          s1, s1, tp
                  addi         a0, zero, 2 #init loop 0 counter
                  addi         a6, zero, 2 #init loop 0 limit
                  slti         tp, a4, -1272
sub_2_1_0_t:      sltiu        t3, t5, -1334
                  srli         t0, a6, 18
                  addi         a0, a0, -1 #update loop 0 counter
                  ori          t2, s7, 132
                  or           s6, s0, t5
                  bgeu         a0, a6, sub_2_1_0_t #branch for loop 0
                  or           t6, gp, s1
                  add          ra, t6, a6
                  sra          s8, tp, t0
                  sltu         a7, gp, t3
                  bltu         a1, s7, sub_2_1_1_t #branch for loop 1
                  srli         s6, a0, 23
                  addi         t5, zero, 10 #init loop 1 counter
                  slli         a6, a7, 0
                  xori         a6, sp, 1482
                  add          t0, a2, t0
                  addi         a1, zero, 10 #init loop 1 limit
                  addi         a0, s6, 1905
sub_2_4_1_t:      or           s0, t3, s8
                  and          s0, t1, ra
                  add          zero, zero, t6
                  addi         t5, t5, -7 #update loop 1 counter
                  sltu         s7, s0, s9
                  nop
                  srl          s11, a4, a3
                  addi         s1, zero, 7 #init loop 0 counter
                  addi         s10, zero, -13 #init loop 0 limit
                  add          s7, a5, s0
                  and          a0, t5, a4
                  and          t2, s6, s5
                  sra          a4, s10, s6
                  and          a4, s2, s10
sub_2_4_0_t:      lui          t0, 900791
                  addi         s1, s1, -8 #update loop 0 counter
                  nop
                  xori         a4, a1, 352
                  srl          t4, s0, tp
                  bge          s1, s10, sub_2_4_0_t #branch for loop 0
                  slt          t6, s3, sp
                  srl          s7, s3, t6
                  auipc        t2, 751930
                  bgeu         t5, a1, sub_2_4_1_t #branch for loop 1
                  srli         s6, t5, 8
                  addi         s7, zero, 9 #init loop 1 counter
                  ori          s0, t5, 1758
                  slti         s2, s5, -1987
                  addi         a7, zero, 17 #init loop 1 limit
                  auipc        s4, 106041
                  slti         zero, t4, 1764
sub_2_2_1_t:      sltu         a3, s3, t0
                  or           sp, tp, s8
                  addi         s7, s7, 8 #update loop 1 counter
                  sra          a0, a7, sp
                  slti         t2, s3, -1632
                  addi         t0, s6, -1445
                  addi         a6, zero, 8 #init loop 0 counter
                  sra          gp, s3, t5
                  sltu         t3, t2, s7
                  addi         t6, zero, 8 #init loop 0 limit
                  srai         a0, s0, 30
sub_2_2_0_t:      lui          t0, 190760
                  addi         s11, tp, 1725
                  addi         a6, a6, -7 #update loop 0 counter
                  sra          s4, s6, t1
                  bgeu         a6, t6, sub_2_2_0_t #branch for loop 0
                  andi         t3, a3, 1758
                  blt          s7, a7, sub_2_2_1_t #branch for loop 1
                  slti         a1, a4, -433
                  addi         gp, zero, 0 #init loop 0 counter
                  sub          ra, a5, tp
                  auipc        s5, 550960
                  and          t6, t3, a6
                  andi         s10, s7, -1174
                  sub          a7, a0, a0
                  auipc        t1, 604342
                  xor          t6, tp, a1
                  andi         s9, a0, 1852
                  xor          t1, s5, s3
                  srai         t2, t0, 21
                  sltiu        a7, a0, -1101
                  srl          a6, t1, s2
                  andi         s10, gp, 35
                  addi         s7, zero, -2 #init loop 0 limit
                  sll          s2, tp, a7
sub_2_3_0_t:      auipc        a3, 884628
                  slti         t5, s10, -589
                  xori         t3, a1, 1730
                  srl          zero, a0, a5
                  addi         gp, gp, -5 #update loop 0 counter
                  nop
                  sll          a6, t5, s3
                  or           a4, s2, a1
                  andi         zero, a5, -81
                  xor          a0, s10, s10
                  bge          gp, s7, sub_2_3_0_t #branch for loop 0
                  add          s2, s7, a3
                  addi         t2, gp, -1548
                  add          s7, a5, a6
                  xori         t6, a5, 552
                  srli         a4, s11, 19
                  sltu         sp, tp, t2
                  lui          t0, 6530
                  slli         s6, s11, 22
                  andi         a6, s3, 558
                  and          a7, t1, t3
                  srl          s6, tp, a0
                  sub          a1, t2, t0
                  nop
                  add          s10, a0, s10
                  lui          a1, 58666
                  blt          t6, t1, 21f
                  or           a7, a7, t4
                  or           t5, t2, s3
                  xor          t6, a5, s9
                  bltu         s3, s9, 24f
                  sll          s11, s7, ra
                  xori         t1, s11, -1719
21:               or           a0, a0, a6
                  addi         gp, a2, -1615
                  lui          s0, 901056
24:               bgeu         ra, a4, 36f
                  and          a1, zero, a3
                  beq          t0, s4, 41f
                  bgeu         s11, s8, 34f
                  bge          s1, t5, 44f
                  bgeu         t5, s2, 34f
                  lui          s2, 109789
                  and          a6, s6, t0
                  or           t6, t5, s3
                  bne          t1, ra, 49f
34:               bne          tp, t0, 44f
                  bne          a3, s5, 38f
36:               xor          s8, s7, t1
                  bne          s3, t4, 57f
38:               add          s8, s4, t4
                  sltu         a7, a1, s6
                  nop
41:               addi         t3, a7, -1618
                  or           s6, t6, t4
                  slti         s6, s3, 704
44:               bltu         a6, tp, 49f
                  lui          t4, 671284
                  blt          s5, t0, 63f
                  blt          a2, s2, 62f
                  beq          s8, tp, 52f
49:               lui          t1, 481099
                  xor          a1, t0, a1
                  slli         s7, s11, 24
52:               bltu         tp, a5, 60f
                  sltu         t3, a5, a2
                  sra          t2, s8, a0
                  slli         t0, s8, 11
                  bltu         s0, t0, 73f
57:               and          s2, gp, a5
                  and          a7, a5, t0
                  slt          t5, t0, a6
60:               bltu         t4, t2, 73f
                  auipc        s2, 31948
62:               slli         t0, t0, 8
63:               srli         a0, gp, 18
                  bge          s3, t5, 66f
                  srl          s10, a0, s3
66:               slti         s1, t0, 1280
                  blt          t2, t3, 82f
                  srli         s7, s10, 31
                  blt          s7, s10, 74f
                  andi         a6, a5, -1640
                  slt          s11, s9, s3
                  xor          gp, s9, a2
73:               slli         s5, s10, 0
74:               bne          a7, s6, 75f
75:               sra          t3, gp, t6
                  slli         ra, t4, 9
                  bltu         zero, t1, 82f
                  sra          zero, t4, s0
                  andi         zero, a2, -598
                  xori         s0, t3, -1402
                  srai         t4, ra, 22
82:               auipc        s2, 923133
                  auipc        a0, 301103
                  slt          zero, a6, s8
                  blt          sp, a4, 91f
                  addi         zero, t2, 899
                  sll          s1, s0, t4
                  sll          ra, s5, a5
                  bge          s2, s9, 98f
                  nop
91:               bgeu         s7, s8, 92f
92:               andi         s9, ra, -1822
                  sub          s5, a6, sp
                  beq          a3, a5, 97f
                  bge          zero, a6, 105f
                  srai         a4, s9, 20
97:               slt          gp, t5, s0
98:               bne          a0, ra, 105f
                  bne          ra, t6, 110f
                  bgeu         s8, tp, 109f
                  srl          a0, t1, a4
                  srl          a0, t2, a3
                  sub          a6, s6, a4
                  blt          s1, s8, 120f
105:              sltu         t6, t4, t5
                  sra          t2, a2, s7
                  sltiu        s11, s5, -863
                  auipc        s11, 1023245
109:              xori         sp, zero, 637
110:              auipc        a3, 710139
                  xor          s2, a1, sp
                  slli         s1, a1, 18
                  bltu         t6, t3, 120f
                  slt          tp, a0, s10
                  nop
                  srli         a7, s7, 1
                  blt          s9, s2, 124f
                  or           t5, t5, s4
                  sub          t0, s2, s6
120:              and          zero, t5, s1
                  xori         s7, zero, 819
                  or           s2, s10, t0
                  nop
124:              nop
                  sltu         t1, a4, s7
                  sll          gp, a0, s2
                  bne          a7, s8, 144f
                  sub          s0, t0, s5
                  andi         a3, sp, 1377
                  xor          gp, s6, s10
                  srli         s4, a5, 18
                  xor          t4, s11, zero
                  slti         s8, s3, 607
                  and          s4, s5, s4
                  srli         a0, t6, 12
                  xor          a1, a5, a5
                  bge          t1, s0, 142f
                  sll          s11, ra, a3
                  nop
                  srai         s10, gp, 4
                  bge          t6, s11, 156f
142:              sub          a1, s9, s8
                  srl          t2, s2, sp
144:              srai         t1, zero, 20
                  sll          s7, s1, t5
                  auipc        t0, 970859
                  slti         tp, t2, -1757
                  xori         t1, gp, -1137
                  bge          s5, s6, 169f
                  addi         a4, t3, 680
                  sub          a0, s0, t3
                  or           t1, t5, s7
                  beq          t1, a4, 168f
                  srl          s4, gp, s3
                  blt          s4, sp, 158f
156:              srli         sp, s3, 23
                  ori          t4, s10, 1088
158:              auipc        t1, 872834
                  srli         ra, ra, 21
                  and          t5, t1, s0
                  beq          s3, a1, 169f
                  sltu         t2, t4, t0
                  slti         s4, a6, -1209
                  auipc        t5, 619226
                  nop
                  and          a3, s7, gp
                  lui          a4, 880690
168:              addi         t0, t0, -1840
169:              slt          s5, t4, a3
                  nop
                  srli         t0, s3, 17
                  sub          s8, s5, s10
                  nop
                  srl          t4, gp, a4
                  slli         s5, tp, 5
                  bne          tp, t0, 191f
                  beq          t3, t5, 190f
                  bgeu         s7, s6, 180f
                  slti         s10, s11, -1393
180:              lui          t5, 847741
                  blt          s7, s11, 187f
                  srl          a0, a0, s1
                  add          s6, s6, s5
                  blt          a1, a3, 194f
                  sltu         t1, t6, a3
                  lui          t2, 300056
187:              addi         zero, a2, 675
                  sll          s9, tp, t6
                  and          sp, s10, a1
190:              auipc        t6, 560414
191:              sub          t0, gp, ra
                  auipc        ra, 873741
                  sltu         sp, s0, a5
194:              beq          a7, gp, 195f
195:              bne          a1, s3, 211f
                  sub          s1, a4, t0
                  add          gp, s11, s0
                  lui          a1, 843196
                  bne          t3, s6, 204f
                  bge          t0, s11, 210f
                  sll          a0, sp, t5
                  andi         s2, a4, -623
                  slt          a0, sp, t1
204:              ori          tp, t2, -1347
                  addi         t6, gp, -375
                  slt          t4, t1, s4
                  srai         s5, t4, 7
                  lui          s5, 199430
                  srli         t4, t5, 16
210:              beq          s2, s8, 211f
211:              sltu         a6, t0, t4
                  bgeu         s3, t5, 224f
                  beq          s3, ra, 217f
                  sll          t3, s9, sp
                  or           s4, a0, s1
                  add          s11, t3, a2
217:              sll          a7, s0, s8
                  lui          s4, 223296
                  slti         gp, sp, 246
                  slt          s5, a2, s0
                  sub          s11, a1, sp
                  srl          s6, zero, t2
                  sra          s7, t3, s2
224:              bltu         a1, t4, 229f
                  nop
                  add          s8, sp, t4
                  ori          s7, s0, -1386
                  slt          s4, a0, t0
229:              auipc        s11, 101164
                  srli         a6, s8, 0
                  xor          s2, s7, t3
                  sltiu        s4, ra, -1665
                  add          t0, s2, a6
                  blt          a4, s10, 237f
                  slti         s11, s8, 196
                  lui          s5, 105654
                  or           s9, a6, a7
                  andi         s11, s4, -1172
                  la           s6, sub_5
                  sub          s8, a1, gp
                  addi         s6, s6, -310
                  slli         s7, a2, 19
                  lui          s8, 85714
                  slt          s9, zero, s1
sub_2_j5:         jalr         ra, s6, 311 #jump sub_2 -> sub_5
                  addi         a7, t3, -1932
                  slti         s8, a0, 1092
237:              lui          s10, 703056
                  addi         a7, zero, 8 #init loop 0 counter
                  add          t2, a3, a3
                  andi         s2, gp, -1575
                  addi         s1, zero, 4 #init loop 0 limit
                  slli         a0, s7, 17
                  slt          a4, a5, t5
                  xor          a1, s4, s7
                  sra          s5, a3, s11
                  or           s2, t6, a1
                  and          t5, s8, ra
sub_2_0_0_t:      auipc        s2, 130680
                  or           s10, s4, ra
                  addi         a7, a7, -2 #update loop 0 counter
                  add          s8, sp, t2
                  sra          t1, s9, sp
                  andi         t1, s6, 1768
                  and          s8, t6, ra
                  bgeu         a7, s1, sub_2_0_0_t #branch for loop 0
                  xor          s11, s1, t5
                  bge          sp, a4, 255f
                  and          s4, a6, gp
                  lui          sp, 839114
                  slli         a3, t1, 11
                  andi         a6, a4, 77
                  bltu         a1, t2, 250f
                  nop
                  sll          t2, a6, s5
                  auipc        t5, 244825
                  lui          a1, 428909
                  sra          s0, t6, t4
                  bltu         s4, t2, 260f
250:              or           a7, a0, s9
                  srli         a6, t5, 26
                  slli         s8, tp, 3
                  beq          s8, t5, 259f
                  slt          a7, a7, sp
255:              srli         tp, gp, 4
                  slti         s2, t4, 1739
                  sltu         s2, zero, s7
                  xor          sp, t0, a1
259:              lui          a0, 749667
260:              bge          a0, s0, 265f
                  slti         t2, a4, -494
                  sltiu        a3, s1, -732
                  bne          s4, a1, 266f
                  slt          t5, tp, sp
265:              bltu         s6, t3, 269f
266:              bne          s1, t2, 278f
                  and          a7, a1, s6
                  lui          t3, 997863
269:              bne          ra, a4, 274f
                  xor          a3, sp, s9
                  xor          a0, s11, a7
                  andi         s4, s10, -436
                  srl          t0, s4, t6
274:              sll          s7, s11, a6
                  sltiu        s4, s0, -337
                  srai         s10, t0, 18
                  bgeu         s1, s0, 285f
278:              slti         a7, ra, 1198
                  srli         s11, t0, 29
                  xor          a6, s0, a0
                  addi         a3, t0, 1996
                  srai         a0, t0, 26
                  bge          s3, a5, 284f
284:              nop
285:              sll          t0, a3, t5
                  lw           ra, 4(a2)
                  slli         t4, t2, 4
                  sra          s8, s8, s3
                  sra          s10, t4, t6
                  addi         a2, a2, 44
                  lui          a3, 748723
                  xor          s8, s11, t4
                  slli         t6, a6, 4
                  slt          s4, s7, s7
444:              addi x28, x1, 1
444:              jalr x28, x28, 0
sub_3:            addi         a2, a2, -8
                  slti         a4, a7, -501
                  srl          s5, ra, ra
                  andi         t5, gp, 250
                  slt          zero, s7, s1
                  srl          zero, a6, a2
                  or           t4, t2, s4
                  srl          s5, zero, t2
                  sw           ra, 4(a2)
                  add          s11, t1, a6
                  xori         s10, s6, -65
                  addi         s8, zero, 4 #init loop 0 counter
                  slli         s11, s10, 14
                  sltu         t5, ra, t0
                  addi         tp, zero, 6 #init loop 0 limit
                  nop
                  xori         ra, s6, 608
                  srai         a7, a4, 4
                  sub          s10, a6, a1
                  sll          s9, a3, s11
sub_3_1_0_t:      xori         s1, t1, 375
                  or           s5, zero, a2
                  andi         s4, s7, 47
                  addi         s8, s8, 6 #update loop 0 counter
                  addi         s9, ra, -1624
                  slti         sp, gp, -2043
                  sll          s11, ra, a6
                  xori         s7, a3, -1181
                  slt          a1, t1, s10
                  add          ra, t2, s9
                  sltu         a7, t2, t5
                  xori         a3, t3, 1984
                  and          s5, t5, ra
                  sra          s0, a6, a6
                  addi         t2, a6, -1741
                  sll          ra, s7, s2
                  slti         zero, a0, -1259
                  bltu         s8, tp, sub_3_1_0_t #branch for loop 0
                  sltu         a6, a1, t2
                  addi         s4, zero, 2 #init loop 1 counter
                  auipc        t5, 519928
                  slli         s2, t6, 11
                  auipc        a3, 755527
                  and          t4, s6, a1
                  addi         s5, zero, 6 #init loop 1 limit
                  or           s11, a5, s7
sub_3_0_1_t:      add          t6, t3, a6
                  addi         s4, s4, 7 #update loop 1 counter
                  xori         s8, a0, -1263
                  addi         s7, zero, 9 #init loop 0 counter
                  nop
                  sltiu        s2, a1, -95
                  addi         s6, zero, 13 #init loop 0 limit
                  add          s11, t0, s6
                  sltu         s8, s3, a1
sub_3_0_0_t:      sub          a6, ra, t2
                  or           t6, a6, sp
                  addi         s7, s7, 4 #update loop 0 counter
                  andi         a1, a5, -1192
                  beq          s7, s6, sub_3_0_0_t #branch for loop 0
                  ori          t4, s10, 1889
                  blt          s4, s5, sub_3_0_1_t #branch for loop 1
                  or           ra, t6, tp
                  addi         t6, zero, -9 #init loop 0 counter
                  sub          tp, gp, a1
                  or           t0, t4, s3
                  srai         s11, s9, 0
                  addi         s8, zero, -11 #init loop 0 limit
                  sll          a6, s0, t1
                  ori          s5, s7, -1693
sub_3_2_0_t:      sltu         ra, t2, a5
                  and          tp, ra, zero
                  srl          ra, t4, sp
                  xor          t3, s1, s9
                  addi         t6, t6, -2 #update loop 0 counter
                  sra          sp, s5, s10
                  sub          t2, t3, a0
                  or           t5, s10, s4
                  slt          a4, s0, s3
                  and          t5, a0, s6
                  slti         s6, t3, -880
                  bne          t6, s8, sub_3_2_0_t #branch for loop 0
                  add          a3, a3, s4
                  blt          s1, s8, 8f
                  bge          s9, t0, 13f
                  or           s4, t5, a5
                  bgeu         t0, a3, 18f
                  xori         s6, s7, -1287
                  srli         t4, a4, 14
                  srli         s9, s8, 11
                  bge          s4, a6, 24f
8:                slli         a4, t6, 25
                  sub          s10, sp, s7
                  sltu         s9, s4, sp
                  addi         s0, s7, -761
                  addi         s9, a5, 2002
13:               bltu         s8, s11, 33f
                  xori         s2, s11, 1940
                  beq          s1, s5, 19f
                  sra          a7, s11, a3
                  srl          t0, tp, s2
18:               xori         ra, s9, -354
19:               slt          t3, t1, t3
                  nop
                  slti         t1, ra, -76
                  slt          a3, s0, zero
                  srli         t2, s5, 19
24:               xor          t3, sp, s9
                  bne          s6, s6, 26f
26:               slti         s5, sp, -1040
                  sra          t3, gp, s3
                  add          t4, s7, t5
                  bltu         s1, a3, 35f
                  slti         a0, s4, -22
                  bge          s4, t3, 49f
                  sra          t2, gp, a5
33:               addi         t6, tp, -2024
                  slli         s11, s10, 19
35:               sll          s0, gp, a7
                  bne          t0, s0, 42f
                  beq          s0, gp, 54f
                  and          zero, s6, s10
                  slli         s6, t4, 4
                  and          s0, t6, t1
                  beq          a3, s5, 58f
42:               or           gp, s4, zero
                  lui          s9, 529397
                  andi         s2, s11, -993
                  sra          s1, a6, a4
                  addi         t6, s11, -1091
                  srai         sp, s5, 20
                  xor          tp, a6, t0
49:               bge          s0, t2, 62f
                  sltiu        s10, gp, 1904
                  and          a0, a7, s11
                  ori          s11, a3, 930
                  auipc        a7, 662152
54:               or           a3, gp, a1
                  slli         s2, t2, 14
                  sll          s7, a1, s7
                  slli         s1, s4, 7
58:               and          s7, s9, zero
                  srli         t4, t4, 19
                  beq          a3, a1, 73f
                  add          s7, ra, t3
62:               andi         a0, s8, -693
                  ori          a3, gp, 1082
                  blt          s2, s9, 77f
                  slt          t6, s1, a5
                  blt          gp, a6, 85f
                  bgeu         s8, zero, 81f
                  addi         s5, s1, -1491
                  addi         t3, t3, -1199
                  blt          a6, ra, 78f
                  srli         a3, s8, 31
                  add          s6, t4, tp
73:               andi         a0, zero, 1281
                  andi         s7, a4, -1037
                  andi         s11, a3, 975
                  nop
77:               slt          t2, gp, a1
78:               bge          a7, a0, 98f
                  and          zero, s10, a5
                  sltiu        s8, s2, 236
81:               sltiu        s5, a2, 804
                  bge          t3, s7, 84f
                  slti         tp, a3, -1841
84:               srai         s11, tp, 2
85:               slli         t0, tp, 1
                  beq          s7, t3, 100f
                  lui          a4, 649116
                  bge          t0, t3, 95f
                  bltu         sp, a7, 97f
                  blt          gp, t4, 99f
                  and          s0, s9, a6
                  sll          s10, t2, t4
                  srl          s8, a6, tp
                  slli         t4, t3, 24
95:               bge          s5, a2, 115f
                  sll          gp, a6, ra
97:               sltiu        s8, tp, -2006
98:               bgeu         a1, a3, 103f
                  xor          t2, t0, s5
                  andi         s2, s3, 1991
                  addi         t2, a0, -96
                  or           t6, t2, s2
                  bltu         s2, s11, sub_3_j6 #branch to jump instr
                  xor          s5, s2, a6
sub_3_j6:         jal          ra, sub_4 #jump sub_3 -> sub_4
99:               ori          a1, s6, 5
100:              sltiu        t6, ra, 1672
                  nop
                  addi         s2, t5, -392
103:              addi         s4, s9, -1201
                  slti         gp, t6, 170
                  sltiu        s8, s3, -1361
                  bltu         s3, s4, 118f
                  sra          s1, t6, a0
                  srli         s5, a1, 23
                  bgeu         s9, t5, 116f
                  bgeu         t4, a1, 120f
                  bltu         zero, t2, 126f
                  sll          s8, s7, gp
                  bltu         t0, s9, 128f
                  andi         s2, t6, -585
115:              srai         t5, s0, 0
116:              sltiu        s7, s11, 379
                  andi         t0, a0, -341
118:              bge          a6, a6, 125f
                  xori         t6, s0, -262
120:              slt          a1, a4, s6
                  sub          ra, s0, sp
                  bgeu         s0, sp, 140f
                  slli         a7, a7, 5
                  ori          s11, s5, 1239
125:              bne          a5, t2, 145f
126:              add          tp, s4, a4
                  srli         a0, gp, 30
128:              sra          s5, s3, s6
                  ori          s7, a4, 1906
                  bgeu         a3, a0, 136f
                  slti         sp, s10, -452
                  addi         t0, a7, 541
                  and          s7, s2, s1
                  sra          tp, s8, s9
                  srl          s1, s1, t5
136:              beq          s1, s3, 137f
137:              add          s9, a6, a7
                  and          s2, zero, gp
                  slt          ra, s6, t0
140:              xori         a6, s9, 729
                  ori          s10, s6, -1887
                  bge          a6, s9, 152f
                  andi         s1, s8, -167
                  andi         s2, tp, 286
145:              bltu         a5, s10, 160f
                  bne          s8, s9, 160f
                  add          s2, zero, s7
                  ori          a4, a5, -658
                  xor          a6, s6, s3
                  srli         t0, gp, 8
                  srli         t2, a2, 9
152:              sltiu        a7, a5, 1689
                  bne          s4, s7, 158f
                  bltu         t2, s9, 168f
                  ori          a0, t3, 1773
                  srli         s0, s9, 17
                  srai         tp, s5, 1
158:              sra          tp, s8, t4
                  add          s5, tp, a4
160:              ori          a0, s9, 1464
                  sltu         sp, a0, a6
                  sltu         t2, t1, a3
                  bne          sp, t6, 176f
                  bgeu         t3, s3, 176f
                  and          t4, s0, s5
                  nop
                  xor          s11, s0, s7
168:              xor          t5, t0, t5
                  sub          a7, a5, s2
                  lui          s10, 386237
                  andi         s11, s6, -628
                  slti         s11, s3, -1141
                  nop
                  beq          a1, a0, 182f
                  srl          a4, s5, t0
176:              addi         s7, s5, -1961
                  add          s6, zero, s6
                  bltu         a6, s11, 188f
                  sra          t1, t0, s11
                  slti         s10, s5, 693
                  sub          t0, a0, s2
182:              bltu         t1, t0, 188f
                  add          t4, a6, a4
                  andi         t1, gp, 1477
                  slli         t4, s8, 2
                  lui          a3, 1029007
                  sltiu        t1, ra, -341
188:              slti         a1, tp, 1916
                  lw           ra, 4(a2)
                  addi         a2, a2, 8
                  addi         s1, s3, 1054
                  sll          a6, s7, ra
                  srai         sp, s7, 7
                  slti         a6, t3, 1922
                  or           s10, s0, s3
286:              addi x29, x1, 0
286:              jalr x29, x29, 0
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .region_0,"aw",@progbits;
region_0:
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf
.section .region_1,"aw",@progbits;
region_1:
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf
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
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x15, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_2:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x15, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_3:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x15, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_4:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x15, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_5:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x15, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_6:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x15, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_7:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x15, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_8:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x15, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_9:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x15, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_10:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x15, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_11:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x15, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_12:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x15, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_13:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x15, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_14:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x15, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_15:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x15, x12, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

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
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x15, x12, zero
                  csrr x17, 0x341 # MEPC
                  csrr x17, 0x342 # MCAUSE
                  li x23, 0x3 # BREAKPOINT
                  beq x17, x23, ebreak_handler
                  li x23, 0x8 # ECALL_UMODE
                  beq x17, x23, ecall_handler
                  li x23, 0x9 # ECALL_SMODE
                  beq x17, x23, ecall_handler
                  li x23, 0xb # ECALL_MMODE
                  beq x17, x23, ecall_handler
                  li x23, 0x1
                  beq x17, x23, instr_fault_handler
                  li x23, 0x5
                  beq x17, x23, load_fault_handler
                  li x23, 0x7
                  beq x17, x23, store_fault_handler
                  li x23, 0xc
                  beq x17, x23, pt_fault_handler
                  li x23, 0xd
                  beq x17, x23, pt_fault_handler
                  li x23, 0xf
                  beq x17, x23, pt_fault_handler
                  li x23, 0x2 # ILLEGAL_INSTRUCTION
                  beq x17, x23, illegal_instr_handler
                  csrr x23, 0x343 # MTVAL
                  1: la x19, test_done
                  jalr x1, x19, 0

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
                  la x19, write_tohost
                  jalr x0, x19, 0

instr_fault_handler:
                  add x12, x15, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

load_fault_handler:
                  add x12, x15, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

store_fault_handler:
                  add x12, x15, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

ebreak_handler:   
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x12, x15, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

illegal_instr_handler:
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x12, x15, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x17, 0x300 # MSTATUS;
                  csrr  x17, 0x304 # MIE;
                  csrr  x17, 0x344 # MIP;
                  csrrc x17, 0x344, x17 # MIP;
                  add x12, x15, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
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
