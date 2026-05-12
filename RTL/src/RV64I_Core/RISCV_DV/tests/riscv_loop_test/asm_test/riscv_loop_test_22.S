.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x20, h0_start
jalr x0, x20, 0
h0_start:
                  li x13, 0x40000100
                  csrw 0x301, x13
kernel_sp:        
                  la x12, kernel_stack_end

trap_vec_init:    
                  la x13, mtvec_handler
                  ori x13, x13, 1
                  csrw 0x305, x13 # MTVEC

mepc_setup:       
                  la x13, init
                  csrw 0x341, x13

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x13, 0x1800
                  csrw 0x300, x13 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x620ab9a4
                  li x2, 0xe7ad8e6c
                  li x3, 0xeffb1a49
                  li x4, 0xf8695419
                  li x5, 0x80000000
                  li x6, 0x8633146f
                  li x7, 0x80000000
                  li x8, 0x80000000
                  li x9, 0x14ed13c5
                  li x10, 0xf64d60a0
                  li x11, 0x879948
                  li x13, 0x80000000
                  li x14, 0x3
                  li x16, 0xf7f30d48
                  li x17, 0x0
                  li x18, 0x797dac3e
                  li x19, 0x5
                  li x20, 0x0
                  li x21, 0x0
                  li x22, 0xf98f278e
                  li x23, 0xc1a867cd
                  li x24, 0xfbecaf7d
                  li x25, 0xfa9a5b90
                  li x26, 0x0
                  li x27, 0x881916e9
                  li x28, 0xf95c3a12
                  li x29, 0x0
                  li x30, 0x4
                  li x31, 0x3
                  la x15, user_stack_end
main:             addi         t3, zero, -10 #init loop 0 counter
                  addi         s7, tp, 901
                  andi         s8, zero, -935
                  sltiu        ra, s5, 1767
                  or           a1, s8, tp
                  slti         t4, s0, 1800
                  addi         a0, zero, -6 #init loop 0 limit
                  or           t6, t2, s6
                  sltu         a6, t5, s10
                  slli         s3, a3, 17
                  sll          s6, s4, sp
                  sltiu        a7, s4, -346
main_14_0_t:      and          s3, a5, s8
                  addi         t3, t3, 9 #update loop 0 counter
                  andi         t4, s1, -724
                  sltu         s8, t1, a4
                  sll          sp, t2, s9
                  srai         s6, a3, 5
                  srl          t4, t6, s0
                  auipc        tp, 671808
                  xori         t5, t2, -148
                  andi         s1, tp, 933
                  srli         a1, t4, 5
                  slli         s10, t4, 22
                  xori         a6, s3, 77
                  sll          a1, s5, t0
                  slti         s9, s8, -1723
                  blt          t3, a0, main_14_0_t #branch for loop 0
                  add          sp, t1, s4
                  addi         tp, zero, -1 #init loop 0 counter
                  srai         t3, s10, 0
                  lui          t5, 753998
                  slli         ra, a2, 7
                  xor          a4, a2, s4
                  slt          s3, ra, t6
                  addi         s9, zero, -16 #init loop 0 limit
                  sltiu        t3, s6, 1482
                  addi         t1, a7, -461
                  slti         a4, a0, -236
                  sll          t2, t0, s6
main_22_0_t:      xori         gp, ra, -807
                  auipc        a4, 112539
                  addi         t4, t2, -1885
                  srl          t1, tp, ra
                  xori         gp, t4, -1347
                  or           t0, tp, zero
                  sra          s10, s9, s8
                  lui          s5, 734390
                  srli         t3, a3, 28
                  addi         s7, a3, -1819
                  andi         a1, s7, 49
                  addi         tp, tp, -3 #update loop 0 counter
                  and          t3, s1, a7
                  and          a4, a3, s6
                  add          s10, t2, s5
                  beq          tp, s9, main_22_0_t #branch for loop 0
                  xori         t2, s3, -1167
                  addi         s2, zero, 6 #init loop 0 counter
                  add          t4, s6, t6
                  sll          t4, t6, t1
                  addi         a3, zero, 6 #init loop 0 limit
                  auipc        s3, 674640
                  srl          tp, a0, t0
                  sll          s1, a7, ra
main_24_0_t:      or           s0, a3, a4
                  srli         a4, gp, 1
                  add          t3, t4, s8
                  lui          ra, 955800
                  slt          t2, s0, gp
                  addi         s2, s2, -2 #update loop 0 counter
                  slt          s1, sp, zero
                  and          t1, a7, s3
                  srli         a6, t3, 18
                  sub          a0, t5, s3
                  bgeu         s2, a3, main_24_0_t #branch for loop 0
                  slt          t4, t5, a7
                  addi         ra, zero, -3 #init loop 0 counter
                  and          t2, s2, ra
                  auipc        s5, 344326
                  slt          t6, s1, zero
                  or           t6, t6, a6
                  sub          a0, s3, s0
                  andi         a6, a7, 582
                  addi         a1, zero, -14 #init loop 0 limit
                  slt          t2, s8, ra
                  andi         tp, t0, -1096
                  add          t2, s5, t0
                  sltu         s6, a5, a4
                  srl          a0, s2, sp
                  xori         t4, s5, 137
                  xori         zero, tp, 819
                  slli         a3, s4, 25
                  sll          sp, a5, s9
                  auipc        s9, 842427
                  ori          tp, s5, -1245
                  or           a4, s1, a7
main_11_0_t:      slt          tp, s3, a6
                  sub          s1, s1, a3
                  addi         ra, ra, -5 #update loop 0 counter
                  sltiu        s0, s2, 169
                  bge          ra, a1, main_11_0_t #branch for loop 0
                  xori         s11, s2, -334
                  addi         a3, zero, -2 #init loop 0 counter
                  sub          t2, t6, t4
                  slti         ra, s6, 833
                  ori          t6, s8, -342
                  sltu         t5, a5, a4
                  andi         s9, ra, -771
                  xori         t5, s2, 1939
                  xori         s11, a4, 970
                  addi         a0, zero, 18 #init loop 0 limit
                  srl          s0, a7, t6
                  and          s1, t0, s4
                  addi         t6, ra, 653
                  and          s0, s6, s6
                  ori          ra, s0, 2000
main_6_0_t:       xori         a7, t0, -1801
                  auipc        t1, 731189
                  srai         t5, a4, 25
                  nop
                  srl          a7, s10, s5
                  and          s11, t3, a1
                  auipc        t0, 259996
                  lui          s10, 227014
                  addi         a3, a3, 3 #update loop 0 counter
                  xor          a6, t1, t0
                  srl          t2, sp, s2
                  sra          s9, gp, a6
                  sll          a6, a2, ra
                  sltu         s8, a0, t3
                  bltu         a3, a0, main_6_0_t #branch for loop 0
                  slt          gp, s1, a2
                  addi         s11, zero, 5 #init loop 1 counter
                  auipc        zero, 787403
                  addi         s6, zero, -1 #init loop 1 limit
main_15_1_t:      andi         sp, s6, 1097
                  sltu         a4, t6, t4
                  slt          s7, ra, t6
                  addi         s11, s11, -6 #update loop 1 counter
                  sra          t2, zero, a7
                  srl          zero, ra, a6
                  addi         t6, zero, 9 #init loop 0 counter
                  srl          s7, zero, a4
                  addi         t5, zero, 8 #init loop 0 limit
                  srl          a0, t6, t5
main_15_0_t:      ori          s3, t2, -932
                  auipc        s9, 613045
                  addi         t6, t6, -6 #update loop 0 counter
                  andi         gp, s4, 1084
                  bge          t6, t5, main_15_0_t #branch for loop 0
                  sub          a1, s2, a6
                  addi         s0, a2, 925
                  slt          s7, t5, t1
                  srai         sp, t6, 17
                  srli         a7, t4, 2
                  bge          s11, s6, main_15_1_t #branch for loop 1
                  ori          t3, a0, 825
                  addi         t2, zero, 8 #init loop 0 counter
                  or           ra, s5, sp
                  addi         t4, zero, 8 #init loop 0 limit
                  or           s10, t6, t3
main_21_0_t:      add          a7, t0, a0
                  sll          ra, a2, s8
                  addi         t2, t2, -7 #update loop 0 counter
                  and          t6, t5, t2
                  bgeu         t2, t4, main_21_0_t #branch for loop 0
                  and          s2, a0, t4
                  addi         a1, zero, 2 #init loop 0 counter
                  lui          t2, 878332
                  ori          t4, s10, -210
                  xori         s11, t3, 834
                  addi         s0, zero, 9 #init loop 0 limit
                  addi         a3, t6, -453
                  or           t5, s4, a6
                  lui          a3, 937675
                  andi         s2, zero, 1504
                  xori         sp, a5, 1143
main_12_0_t:      slti         s8, sp, -222
                  slli         a6, t2, 29
                  srli         ra, gp, 16
                  addi         a1, a1, 7 #update loop 0 counter
                  add          s6, s10, a5
                  slli         s6, t2, 8
                  or           t2, s7, s7
                  slli         a7, a5, 24
                  nop
                  lui          tp, 429721
                  srli         s3, gp, 6
                  srl          s3, s9, a1
                  srli         s7, t3, 1
                  slti         t0, t1, 404
                  bne          a1, s0, main_12_0_t #branch for loop 0
                  slti         a4, s9, -1346
                  addi         t1, zero, 8 #init loop 0 counter
                  sltiu        a4, s4, -1783
                  addi         s6, zero, -4 #init loop 0 limit
main_1_0_t:       slt          s5, ra, a3
                  xori         a3, a0, 107
                  addi         t1, t1, -6 #update loop 0 counter
                  beq          t1, s6, main_1_0_t #branch for loop 0
                  andi         a7, t1, -976
                  addi         a4, zero, 7 #init loop 1 counter
                  add          s1, s8, t0
                  addi         s10, zero, 17 #init loop 1 limit
                  or           a1, s2, t4
main_3_1_t:       and          s0, t0, t5
                  addi         a4, a4, 1 #update loop 1 counter
                  sltiu        s2, s3, -314
                  slt          s6, a2, s4
                  addi         s11, zero, 4 #init loop 0 counter
                  addi         t2, zero, -17 #init loop 0 limit
                  slt          s8, s7, t6
main_3_0_t:       sub          a7, a6, tp
                  srli         t1, s10, 27
                  addi         s11, s11, -3 #update loop 0 counter
                  bne          s11, t2, main_3_0_t #branch for loop 0
                  add          s9, t1, s5
                  andi         s2, sp, 138
                  blt          a4, s10, main_3_1_t #branch for loop 1
                  srl          t1, s5, s11
                  addi         s11, zero, 10 #init loop 0 counter
                  xori         s8, s10, -1234
                  or           ra, s3, s3
                  or           s10, t2, ra
                  sltu         s5, ra, s5
                  sltiu        zero, t6, -2031
                  srli         t4, s10, 23
                  addi         t5, zero, 19 #init loop 0 limit
                  slti         a3, s2, 75
main_18_0_t:      sltiu        t0, a0, 1431
                  sub          tp, s4, a3
                  sra          a1, gp, s4
                  add          tp, t2, a6
                  srai         a1, t1, 12
                  and          a6, s9, s0
                  sltiu        s6, t0, 1581
                  addi         s11, s11, 8 #update loop 0 counter
                  lui          a4, 467613
                  slli         a7, a5, 0
                  srai         a1, s1, 27
                  bltu         s11, t5, main_18_0_t #branch for loop 0
                  xori         a1, s1, 1894
                  addi         s2, zero, -1 #init loop 0 counter
                  nop
                  addi         t3, zero, 20 #init loop 0 limit
main_0_0_t:       add          t6, s2, s5
                  xor          t2, a4, t1
                  addi         s2, s2, 7 #update loop 0 counter
                  sub          a6, a7, s6
                  bne          s2, t3, main_0_0_t #branch for loop 0
                  sltiu        a1, a5, 1933
                  addi         s3, zero, -2 #init loop 0 counter
                  slti         ra, a3, -372
                  addi         s0, zero, 13 #init loop 0 limit
main_5_0_t:       lui          a7, 900823
                  addi         s3, s3, 6 #update loop 0 counter
                  slt          s10, s10, sp
                  bltu         s3, s0, main_5_0_t #branch for loop 0
                  xori         gp, zero, 820
                  addi         s2, zero, 5 #init loop 0 counter
                  srl          a6, s6, t3
                  xori         s10, tp, -1260
                  addi         t6, zero, 9 #init loop 0 limit
                  slti         s10, s0, -1966
main_17_0_t:      xori         a6, a2, 1238
                  addi         s2, s2, 6 #update loop 0 counter
                  xor          zero, a3, a3
                  nop
                  srl          ra, t6, t3
                  slti         t4, t5, 1811
                  slti         a4, s7, 90
                  sltiu        a0, a1, -1260
                  andi         t4, a5, -1031
                  bltu         s2, t6, main_17_0_t #branch for loop 0
                  sub          tp, a0, gp
                  addi         t6, zero, -7 #init loop 1 counter
                  lui          t1, 17499
                  srl          s10, zero, s5
                  xori         ra, ra, -72
                  addi         s9, zero, -19 #init loop 1 limit
                  ori          s2, a5, -630
                  sltiu        s3, s8, -1153
main_4_1_t:       xor          ra, zero, s6
                  addi         s3, a7, -1117
                  nop
                  sltu         a4, s0, ra
                  addi         t6, t6, -1 #update loop 1 counter
                  sra          s3, a0, gp
                  add          s6, t3, s0
                  addi         t0, zero, 8 #init loop 0 counter
                  srai         ra, a2, 25
                  addi         s8, zero, -9 #init loop 0 limit
                  srl          a4, t3, s8
                  andi         gp, s10, 1859
                  auipc        t2, 263043
                  xori         ra, s4, -713
main_4_0_t:       addi         ra, a5, -1839
                  or           a3, s5, tp
                  addi         t0, t0, -3 #update loop 0 counter
                  bge          t0, s8, main_4_0_t #branch for loop 0
                  beq          t6, s9, main_4_1_t #branch for loop 1
                  sub          s0, a1, s6
                  addi         gp, zero, 8 #init loop 0 counter
                  sub          tp, t2, s8
                  add          a3, t5, ra
                  addi         s5, s10, -1993
                  sltiu        t0, a4, 1227
                  auipc        sp, 882407
                  xori         t6, sp, -691
                  addi         a6, zero, 7 #init loop 0 limit
                  lui          tp, 202586
                  auipc        s3, 249141
                  srl          s10, t4, a6
                  srai         s10, a7, 29
                  sra          a3, zero, a3
main_9_0_t:       sltiu        t0, s5, 342
                  sltiu        s10, s9, -1937
                  add          sp, t1, s3
                  lui          a1, 1046649
                  sltu         s10, s10, a1
                  nop
                  srl          ra, t2, a2
                  addi         gp, gp, -6 #update loop 0 counter
                  addi         t4, t5, 1252
                  slti         s0, t6, -507
                  and          zero, s11, t5
                  ori          s6, a0, 1908
                  bgeu         gp, a6, main_9_0_t #branch for loop 0
                  sltiu        t4, a6, 1229
                  addi         s8, zero, 7 #init loop 1 counter
                  srai         t2, t5, 3
                  addi         a0, zero, 18 #init loop 1 limit
                  auipc        a7, 521821
                  slt          gp, a5, s9
                  sra          t2, s10, s4
main_23_1_t:      andi         s9, t3, -1807
                  and          gp, a2, s11
                  addi         s8, s8, 1 #update loop 1 counter
                  addi         t6, zero, -10 #init loop 0 counter
                  srl          t2, s8, t1
                  slt          t1, s1, s1
                  addi         a3, zero, -20 #init loop 0 limit
                  andi         t1, t3, -1407
main_23_0_t:      auipc        t1, 629709
                  addi         t6, t6, -8 #update loop 0 counter
                  bge          t6, a3, main_23_0_t #branch for loop 0
                  slt          s10, a2, t2
                  bltu         s8, a0, main_23_1_t #branch for loop 1
                  srai         s0, t6, 24
                  addi         a4, zero, 3 #init loop 1 counter
                  addi         s10, zero, 3 #init loop 1 limit
main_16_1_t:      lui          tp, 928085
                  xor          t4, t1, zero
                  addi         a4, a4, -2 #update loop 1 counter
                  addi         s6, zero, 6 #init loop 0 counter
                  addi         s0, zero, 5 #init loop 0 limit
                  addi         a7, s7, 289
main_16_0_t:      andi         a0, a0, 1448
                  addi         s5, t2, 1917
                  addi         s6, s6, -1 #update loop 0 counter
                  sub          a7, s6, s6
                  bgeu         s6, s0, main_16_0_t #branch for loop 0
                  or           s3, t6, t5
                  bgeu         a4, s10, main_16_1_t #branch for loop 1
                  sub          t6, t4, t4
                  addi         s5, zero, -1 #init loop 0 counter
                  xor          s8, zero, t5
                  sub          a3, a2, s0
                  addi         tp, zero, -19 #init loop 0 limit
                  ori          s1, s0, -1544
main_7_0_t:       add          s8, s1, t2
                  addi         s5, s5, -9 #update loop 0 counter
                  sltiu        t1, a7, 761
                  add          t2, t5, s8
                  slli         s1, a2, 26
                  xor          s10, s1, a7
                  addi         a4, s1, 1391
                  auipc        s2, 866448
                  srai         t6, a7, 22
                  sub          s1, a6, s9
                  slli         s6, t3, 10
                  and          s11, s7, s2
                  sltu         zero, s8, s5
                  nop
                  sll          t2, t3, a0
                  sltiu        s6, s3, 622
                  add          t6, a3, a7
                  andi         s2, s11, 1396
                  addi         a7, s8, -316
                  bne          s5, tp, main_7_0_t #branch for loop 0
                  and          s9, s3, a2
                  addi         sp, zero, -8 #init loop 0 counter
                  xor          t6, a5, zero
                  addi         gp, zero, -17 #init loop 0 limit
                  slti         s1, a3, 853
main_10_0_t:      xori         s0, s8, 354
                  slt          a4, a3, a1
                  sub          s1, a0, a3
                  srl          a7, a4, t5
                  addi         sp, sp, -9 #update loop 0 counter
                  srai         a1, s1, 11
                  bne          sp, gp, main_10_0_t #branch for loop 0
                  sra          s8, s5, s6
                  addi         s1, zero, 9 #init loop 1 counter
                  nop
                  lui          s3, 526092
                  xor          s7, t2, s2
                  addi         a3, zero, -15 #init loop 1 limit
                  sltiu        t6, sp, 37
                  sltiu        t2, s4, -1180
                  nop
main_20_1_t:      and          zero, a7, s5
                  xori         a0, s0, 378
                  addi         s1, s1, -6 #update loop 1 counter
                  add          t0, t0, ra
                  sltu         s2, a2, s11
                  or           a6, a5, s5
                  addi         s0, zero, -3 #init loop 0 counter
                  sltiu        s10, zero, -182
                  sltu         s7, t0, s10
                  addi         tp, zero, 7 #init loop 0 limit
                  ori          sp, s9, 1556
main_20_0_t:      andi         sp, s11, 1979
                  lui          s10, 915352
                  addi         s0, s0, 10 #update loop 0 counter
                  sra          s9, s1, a1
                  beq          s0, tp, main_20_0_t #branch for loop 0
                  addi         a4, gp, -595
                  nop
                  add          s3, a2, a3
                  bne          s1, a3, main_20_1_t #branch for loop 1
                  and          t3, s8, t6
                  addi         s6, zero, 9 #init loop 1 counter
                  srl          s10, s10, t2
                  addi         a7, zero, 9 #init loop 1 limit
main_13_1_t:      sltiu        s3, s9, 672
                  nop
                  slt          t4, s11, a5
                  addi         s6, s6, -6 #update loop 1 counter
                  addi         s11, zero, 10 #init loop 0 counter
                  sll          t0, t0, s4
                  slli         zero, t5, 28
                  slli         s0, t1, 8
                  srai         tp, t5, 3
                  slti         t1, s9, -734
                  and          s3, t4, s4
                  sra          s0, s4, tp
                  lui          t4, 931901
                  sltu         gp, s6, t2
                  addi         sp, zero, 17 #init loop 0 limit
main_13_0_t:      slti         a4, tp, -1773
                  addi         s11, s11, 7 #update loop 0 counter
                  slt          s8, sp, a5
                  bne          s11, sp, main_13_0_t #branch for loop 0
                  sltu         s8, a2, a3
                  add          s3, t0, tp
                  bgeu         s6, a7, main_13_1_t #branch for loop 1
                  or           ra, s4, s10
                  and          t0, a6, s5
                  srl          t3, a7, s5
                  sra          t4, a6, a4
                  srai         s2, t2, 17
                  sub          a1, a4, t1
                  and          ra, t0, a5
                  srai         s10, s8, 16
                  sltiu        s6, a7, 240
                  and          t6, a0, s8
                  and          tp, a3, t0
                  nop
                  srli         ra, t5, 12
                  xori         s9, s6, 207
                  slli         t1, s8, 31
                  beq          s3, zero, 15f
15:               blt          tp, s0, 19f
                  sra          t6, a3, t4
                  nop
                  slli         t4, t5, 8
19:               slti         a0, a1, -1191
                  ori          s8, a7, 828
                  ori          s1, tp, 306
                  slt          s7, t3, zero
                  sra          s7, s0, a1
                  la           t2, sub_2
                  addi         t2, t2, 893
                  sltiu        s8, s9, -1823
                  slt          tp, s9, s8
                  sub          zero, s8, s3
                  sub          s7, tp, s9
                  sltu         a4, a3, a0
main_j1:          jalr         ra, t2, -892 #jump main -> sub_2
                  beq          t5, a1, 42f
                  add          tp, gp, s6
                  srl          s7, tp, s2
                  sltu         a6, a7, s2
                  srl          tp, s10, s6
                  bgeu         gp, s3, 41f
                  xor          a1, gp, a6
                  auipc        s10, 412967
                  slti         tp, s2, -841
                  sll          t4, ra, a4
                  srli         a4, a0, 27
                  lui          s10, 669402
                  sltiu        s9, a3, 1655
                  slli         a6, s10, 10
                  auipc        t6, 454012
                  sub          s6, ra, a0
                  srai         a3, a5, 8
                  and          t2, t5, sp
                  and          t1, t5, a0
41:               or           t4, a7, a3
42:               sltiu        t1, t4, 832
                  srai         t0, t4, 10
                  or           s9, sp, a7
                  sltu         t5, ra, a5
                  bge          a6, ra, 55f
                  bne          a7, s6, 55f
                  srli         zero, a6, 17
                  bltu         s7, a2, 64f
                  lui          s0, 369862
                  srl          a6, a2, s3
                  srl          a0, s8, s11
                  slti         t6, s10, -76
                  sltiu        t1, s0, -479
55:               bgeu         t3, tp, 64f
                  slli         gp, s10, 18
                  sltiu        s1, a6, 1113
                  srai         a4, sp, 23
                  sra          s0, s3, s8
                  nop
                  sltiu        a6, s1, -1783
                  addi         a4, a0, -435
                  ori          s3, a1, -668
64:               blt          tp, a5, 69f
                  slli         s1, s1, 5
                  bge          a5, t6, 80f
                  ori          s11, t6, 775
                  srli         zero, t3, 8
69:               slt          sp, t2, gp
                  slti         s10, s3, -674
                  sltu         s1, t4, tp
                  srai         gp, s3, 4
                  bge          a3, a5, 75f
                  and          s8, a7, zero
75:               beq          t1, s5, 88f
                  srl          ra, s5, a3
                  sra          t2, a2, s4
                  add          ra, s5, t4
                  sll          s8, a3, s4
80:               blt          sp, s0, 89f
                  srai         sp, s10, 8
                  slt          t3, a7, ra
                  bge          a0, gp, 85f
                  slli         s9, s11, 29
85:               slli         s9, tp, 9
                  sra          a1, a6, gp
                  srli         a4, s6, 29
88:               slli         s3, s0, 24
89:               xori         s2, s10, -1257
                  andi         sp, s1, -2015
                  bne          s4, t5, 111f
                  srl          s6, s2, s1
                  slti         s3, s9, -1159
                  bge          a3, a7, 95f
95:               srai         t0, s11, 16
                  slt          t2, t2, t6
                  add          a1, tp, a5
                  bltu         a0, t0, 108f
                  sub          t1, a6, zero
                  bgeu         s0, s1, 111f
                  or           s6, s8, s6
                  ori          t3, t0, 635
                  sll          gp, s0, s3
                  srai         a0, a2, 16
                  lui          s2, 258436
                  slti         s6, a4, -711
                  sub          zero, a0, a2
108:              slt          a3, s11, s0
                  or           a4, zero, t0
                  add          s6, s6, zero
111:              lui          s10, 412349
                  sra          t6, tp, zero
                  add          s6, s5, t4
                  addi         s11, gp, -1500
                  bgeu         a0, s7, 133f
                  andi         sp, a1, -1873
                  sra          s10, a3, a7
                  blt          a4, t6, 131f
                  slli         s5, tp, 3
                  slli         s9, s10, 0
                  add          t5, gp, a5
                  srl          ra, t4, s3
                  andi         a1, s7, 140
                  slt          s1, t4, t5
                  bgeu         t3, tp, 133f
                  sra          t0, t3, a1
                  sub          a3, s10, s6
                  slt          a3, a3, tp
                  or           s9, t4, a0
                  blt          s2, s8, 141f
131:              sltu         a1, a1, s5
                  srai         t4, zero, 16
133:              slti         t3, s5, 483
                  auipc        s8, 680952
                  blt          a6, gp, 153f
                  srli         s9, s6, 21
                  srli         tp, a5, 0
                  beq          s7, s9, 145f
                  beq          s4, s9, 157f
                  ori          ra, a4, 98
141:              bltu         ra, t4, 148f
                  sltiu        t2, gp, -1362
                  bgeu         t4, s4, 158f
                  lui          a0, 76720
145:              lui          t0, 765124
                  sltiu        s9, zero, 955
                  slli         s11, t4, 20
148:              andi         a1, t2, 1531
                  lui          t2, 350422
                  or           s7, a3, a5
                  srai         a3, t1, 18
                  nop
153:              xori         t1, t1, -1698
                  xor          s11, t2, a3
                  sra          ra, s7, t5
                  add          tp, t6, t2
157:              sra          s3, ra, t1
158:              srai         a1, a1, 15
                  srai         s5, ra, 10
                  blt          t0, gp, 166f
                  srl          s7, s0, s9
                  srli         s2, sp, 18
                  addi         s0, zero, -7 #init loop 1 counter
                  and          s8, s10, a3
                  nop
                  addi         a1, zero, 4 #init loop 1 limit
main_19_1_t:      sub          tp, zero, sp
                  slli         s10, a5, 2
                  addi         s0, s0, 1 #update loop 1 counter
                  addi         a6, zero, -2 #init loop 0 counter
                  srai         s11, s5, 12
                  slt          s7, s10, s3
                  srai         s8, t3, 22
                  addi         t4, gp, -1495
                  slti         s8, tp, 693
                  addi         a3, zero, -1 #init loop 0 limit
                  srai         s6, s6, 28
main_19_0_t:      xori         tp, s7, 1669
                  auipc        s5, 56837
                  and          t6, ra, t4
                  addi         a6, a6, 2 #update loop 0 counter
                  add          s9, s8, s4
                  blt          a6, a3, main_19_0_t #branch for loop 0
                  sltiu        t4, t3, -1100
                  andi         s3, s9, -1763
                  andi         s2, a2, 1751
                  addi         t1, s9, -1044
                  sll          t4, a3, s3
                  or           a7, s2, ra
                  blt          s0, a1, main_19_1_t #branch for loop 1
                  slti         s6, s11, -813
                  srai         t3, s1, 5
                  beq          ra, t0, 182f
                  xor          t2, a1, a3
166:              andi         a1, s9, -1195
                  xori         s6, s5, -824
                  slt          s8, s1, ra
                  and          s9, a0, t1
                  or           s5, sp, a3
                  srli         s11, a1, 1
                  bne          t0, t4, 174f
                  blt          s5, gp, 182f
174:              or           a0, t3, tp
                  bltu         t1, a2, 182f
                  or           s11, t1, a3
                  srl          s10, ra, s1
                  andi         s9, s1, 547
                  srli         t3, a5, 17
                  nop
                  sra          s11, s10, s5
182:              xor          t0, s5, a5
                  sltiu        s9, zero, 1225
                  auipc        s0, 290343
                  sra          s1, a3, s10
                  slli         sp, t3, 29
                  addi         t3, s11, -1292
                  ori          s9, a6, -279
                  sltu         a1, a6, t2
                  sub          sp, s10, t5
                  srl          t1, a3, a3
                  auipc        a7, 656788
                  bltu         a7, t2, 203f
                  nop
                  add          t5, s7, t0
                  bge          zero, a2, 214f
                  sll          s9, s2, s8
                  blt          a0, gp, 212f
                  slti         ra, zero, 1634
                  bne          s11, a1, 211f
                  xori         sp, t2, 182
                  blt          t5, s4, 203f
203:              slti         a0, gp, -1412
                  andi         s10, s0, -1294
                  add          t0, a3, a6
                  andi         s11, s11, -1015
                  andi         s9, s3, 1448
                  slti         t3, s8, -162
                  bne          a5, s9, 217f
                  slt          s0, t6, s11
211:              bgeu         s2, t3, 212f
212:              auipc        t5, 85090
                  bltu         tp, a4, 215f
214:              nop
215:              sll          s1, sp, t1
                  nop
217:              auipc        s10, 879363
                  srli         a6, a5, 18
                  or           s8, a0, s2
                  sltu         s3, a5, s1
                  nop
                  andi         a1, a1, -813
                  sra          s2, s1, a0
                  add          a7, t4, t5
                  xori         s5, s3, 1086
                  bge          a4, s11, 244f
                  srl          gp, t5, a7
                  andi         ra, s1, 1557
                  xor          s2, gp, t6
                  lui          gp, 626028
                  addi         a3, tp, 1836
                  srai         s8, t3, 19
                  srai         a0, gp, 27
                  beq          s9, s2, 241f
                  slli         t2, s4, 9
                  xori         t1, t6, 180
                  sub          s7, s0, tp
                  lui          t0, 929328
                  sra          s5, zero, t4
                  sltiu        t4, a7, 126
241:              or           a3, ra, ra
                  andi         t5, a4, -1033
                  xor          s1, a5, a2
244:              bgeu         s2, t2, 264f
                  and          t1, sp, s5
                  or           gp, s3, a6
                  bne          s4, s4, 249f
                  slt          s3, t6, s2
249:              nop
                  auipc        gp, 385044
                  lui          s8, 572811
                  sra          t4, tp, t0
                  xor          t5, s9, a1
                  srl          t3, t4, s8
                  bgeu         s11, s5, 261f
                  nop
                  bge          s6, t3, 266f
                  sltu         t2, s1, s0
                  or           s5, sp, s11
                  andi         t2, a7, -285
261:              lui          s8, 788114
                  auipc        s3, 363771
                  sltiu        s8, s9, -1153
264:              and          t3, a1, s5
                  sltu         s2, a6, s1
266:              bne          t2, s2, 274f
                  sll          s11, s9, a1
                  or           gp, gp, a1
                  slti         s6, a6, -1049
                  sll          zero, a3, s6
                  bgeu         ra, s1, 286f
                  srl          s1, tp, gp
                  srai         s2, s5, 17
274:              bge          t4, s0, 283f
                  slti         tp, a4, 312
                  blt          sp, t2, 294f
                  slt          s10, s7, s1
                  addi         t1, a1, 1843
                  sltiu        t3, a1, -1604
                  sltiu        s5, a0, 1451
                  bne          s3, t6, 294f
                  andi         ra, t5, -1409
283:              slti         s2, s8, -1104
                  sltu         gp, a3, s3
                  xor          a4, a2, s10
286:              xori         a4, s10, -1760
                  slt          s1, a3, a0
                  sltiu        a6, s9, 1043
                  xor          t0, s1, a1
                  blt          s0, zero, 310f
                  lui          t1, 565016
                  lui          s1, 190694
                  slti         t2, s10, -1342
294:              ori          s1, s3, -1722
                  bne          a1, s8, 308f
                  xor          s0, a7, a7
                  srl          a6, s11, a0
                  sll          s5, s6, a0
                  add          s10, s10, t6
                  bgeu         sp, s6, 305f
                  srli         a6, a1, 12
                  or           s5, t4, t1
                  slli         tp, s10, 19
                  addi         s6, a5, 793
305:              sll          s2, t5, t1
                  or           t6, s5, s9
                  beq          s11, t1, 309f
308:              blt          s11, s11, 326f
309:              or           tp, t3, ra
310:              beq          s0, s4, 321f
                  nop
                  auipc        ra, 243358
                  beq          zero, a0, 317f
                  or           s5, s5, t4
                  slli         gp, a2, 21
                  andi         s6, s7, -377
317:              slli         s7, s8, 14
                  nop
                  slli         a0, t5, 24
                  sub          s11, a6, ra
321:              bge          s0, a6, 336f
                  add          t0, a6, s5
                  xor          t1, s0, t0
                  xori         s3, s10, 1661
                  slt          sp, tp, tp
326:              bge          gp, s7, 340f
                  xor          t4, s3, s6
                  sltu         s2, s0, t0
                  sll          a0, a1, a3
                  bgeu         s7, a2, 350f
                  sra          a6, a3, s11
                  andi         s5, t0, -1252
                  nop
                  addi         t3, s5, 33
                  srli         t5, a5, 27
336:              lui          a6, 742612
                  srai         tp, tp, 27
                  xor          zero, a1, s10
                  sltu         s10, t3, a5
340:              or           t2, s11, ra
                  bgeu         s3, t4, 350f
                  bgeu         sp, s7, 355f
                  nop
                  srli         s0, s11, 13
                  bgeu         gp, ra, 352f
                  bne          s11, a3, 364f
                  sltu         s11, gp, t6
                  srai         s9, s8, 29
                  sra          s7, tp, a4
350:              srai         t2, gp, 13
                  bltu         t5, a0, 360f
352:              sub          gp, s4, t4
                  sub          a7, sp, tp
                  ori          a1, t1, -130
355:              and          gp, s6, tp
                  and          a4, a3, zero
                  bgeu         gp, t3, 363f
                  sltu         ra, s1, a6
                  auipc        a3, 456114
360:              bge          s5, gp, 378f
                  sll          s11, tp, t1
                  addi         s5, zero, -1 #init loop 0 counter
                  xor          s7, tp, a1
                  slli         s8, gp, 18
                  sltiu        sp, a7, 927
                  and          sp, sp, t0
                  or           t1, s11, t5
                  addi         s11, zero, 10 #init loop 0 limit
                  xor          a6, ra, zero
                  sltu         a7, a3, s5
                  sltu         ra, ra, s2
                  or           s6, s1, tp
                  addi         ra, tp, -1443
main_8_0_t:       add          t3, s7, t2
                  sltu         tp, s8, s6
                  xor          t2, s4, s0
                  addi         s5, s5, 7 #update loop 0 counter
                  sltu         zero, s3, s1
                  nop
                  sll          s9, s6, s9
                  addi         t6, t0, 1147
                  slli         tp, s3, 2
                  sub          a7, t3, s0
                  auipc        ra, 146512
                  slt          a7, s9, a6
                  slli         s8, s6, 21
                  nop
                  srli         s1, a1, 30
                  blt          s5, s11, main_8_0_t #branch for loop 0
                  sra          a6, a0, a2
                  bltu         s6, s8, 380f
363:              add          t2, a3, a4
364:              bne          s11, a6, 379f
                  or           s3, a7, t5
                  beq          s10, ra, 371f
                  nop
                  xor          t6, a0, s1
                  xori         t4, tp, -837
                  srai         s3, s11, 13
371:              bltu         s4, zero, 384f
                  lui          t4, 496715
                  xori         s3, t2, -1934
                  sll          s0, s7, ra
                  blt          s5, s11, 377f
                  srli         t3, s7, 12
377:              srli         ra, tp, 5
378:              sltu         t5, s3, a7
379:              blt          gp, s2, 383f
380:              srli         s8, s3, 28
                  srli         a7, a7, 13
                  nop
383:              srli         ra, a5, 16
384:              bgeu         t1, t5, 385f
385:              sll          t0, a0, a4
                  addi         a6, a0, -100
                  beq          t5, s11, 407f
                  slli         ra, s11, 30
                  and          s2, t4, s10
                  auipc        ra, 147127
                  srai         t1, a1, 7
                  and          sp, a3, ra
                  bgeu         s1, sp, 404f
                  add          s8, s5, a3
                  beq          a7, s7, 403f
                  sll          s2, zero, s0
                  sltu         zero, s11, s6
                  andi         t1, s7, 1815
                  bne          s2, a0, 401f
                  bge          s3, t3, 418f
401:              sub          sp, t1, s11
                  addi         t5, s5, 1750
403:              and          s9, t5, s3
404:              slt          s2, a2, zero
                  ori          tp, t1, 664
                  bge          sp, a4, 417f
407:              xori         s5, s5, 378
                  srl          s1, t1, a6
                  slti         gp, s8, -1695
                  beq          a7, s9, 425f
                  sll          t1, t4, a6
                  nop
                  blt          s1, s8, 423f
                  sltiu        ra, a6, -178
                  sll          s3, a7, a6
                  srai         s8, s8, 21
417:              slt          zero, t5, t5
418:              srl          a6, zero, a7
                  beq          s10, a2, 427f
                  andi         zero, a2, 1331
                  sra          t5, t1, s0
                  blt          t2, t2, 436f
423:              sll          s9, sp, s8
                  sra          s11, t4, s2
425:              slli         s0, a4, 7
                  and          a7, a5, t3
427:              add          s2, s9, a3
                  xori         s8, a4, -1955
                  andi         a6, s11, -461
                  sra          s2, s7, s0
                  xor          s6, s5, a6
                  slt          sp, s2, t4
                  nop
                  nop
                  xori         t0, a5, 1144
436:              bge          sp, t0, 438f
                  beq          s8, tp, 438f
438:              slti         t3, ra, 1350
                  bltu         s1, a2, 446f
                  bgeu         a2, s2, 454f
                  srli         t5, t5, 23
                  srl          t1, sp, zero
                  sub          t6, zero, s7
                  nop
                  bgeu         a5, s5, 454f
446:              sll          a3, gp, a7
                  slli         zero, a2, 24
                  and          ra, s6, s0
                  srli         a7, s7, 27
                  addi         s0, t5, 652
                  addi         a0, s6, 1
                  and          s2, tp, t3
                  bge          s1, t4, 462f
454:              bne          sp, t2, 465f
                  sra          s3, t2, s8
                  or           s2, s9, a3
                  bne          ra, a5, 459f
                  ori          s5, s4, 852
459:              bgeu         s6, t0, 461f
                  sub          zero, s5, tp
461:              beq          gp, s7, 468f
462:              auipc        t4, 553451
                  xori         s7, s11, 1470
                  srai         sp, s3, 24
465:              sltu         zero, a1, s11
                  srl          a6, a1, a7
                  bgeu         s10, s9, 485f
468:              srai         s3, a2, 12
                  or           a0, s8, a7
                  add          t0, s10, s8
                  addi         s8, gp, 721
                  slli         t2, t0, 20
                  sub          sp, gp, ra
                  sra          s3, s3, ra
                  slt          sp, s8, t5
                  addi         a6, s7, -444
                  or           gp, t4, s2
                  and          t4, s10, s8
                  lui          tp, 344941
                  and          a7, s4, s10
                  beq          s7, zero, 495f
                  blt          s8, s0, 483f
483:              sub          t5, a0, s0
                  add          a3, s11, ra
485:              bne          s11, a2, 489f
                  addi         ra, zero, 9 #init loop 0 counter
                  sub          t0, a2, ra
                  or           tp, s1, s5
                  sltiu        a1, tp, -2037
                  xori         sp, s1, 487
                  xori         s5, t5, -1538
                  addi         t3, zero, 9 #init loop 0 limit
                  slt          a7, a4, s0
                  and          t6, t4, ra
                  srai         s2, a4, 2
main_2_0_t:       sltu         a4, s4, s3
                  addi         t0, t3, 367
                  or           tp, s3, a2
                  sub          sp, s11, s9
                  nop
                  addi         ra, ra, -8 #update loop 0 counter
                  slli         s7, s5, 4
                  xor          s0, s7, s9
                  lui          s9, 833848
                  bgeu         ra, t3, main_2_0_t #branch for loop 0
                  andi         s3, a1, 183
                  andi         s9, a7, -1032
                  srli         s5, s6, 19
                  andi         s2, a0, 527
489:              lui          a0, 542931
                  srai         gp, s1, 9
                  bltu         s3, ra, 509f
                  nop
                  sub          s5, s5, t1
                  nop
495:              add          s11, s0, t0
                  and          s3, a7, gp
                  xor          s11, s6, s8
                  slti         t1, zero, -83
                  addi         s3, a1, 1739
                  blt          a3, t5, 511f
                  and          gp, s10, s0
                  bne          a4, s5, 522f
                  srai         t4, a0, 29
                  lui          t3, 971335
                  srli         t1, t1, 6
                  bne          t4, s1, 514f
                  bne          sp, s9, 520f
                  sub          s5, a3, a2
509:              sub          ra, t2, s0
                  and          gp, a6, a4
511:              sltu         a1, t3, zero
                  beq          s10, s0, 522f
                  andi         a1, s0, 824
514:              or           s6, a7, a2
                  nop
                  sra          s7, a5, s4
                  and          sp, zero, t2
                  ori          a7, s0, -79
                  and          s7, t0, s9
520:              bgeu         t1, s5, 529f
                  xori         t2, ra, -434
522:              nop
                  lui          s3, 556013
                  addi         s5, s10, 1557
                  addi         a3, s9, 695
                  lui          s1, 812151
                  xori         a3, ra, -790
                  srli         zero, a5, 21
529:              beq          a1, a6, 531f
                  bgeu         s8, t3, 537f
531:              andi         s7, s4, 945
                  bne          s3, t0, 550f
                  add          t3, s8, a5
                  sll          t1, t0, s0
                  sll          s1, t3, s0
                  bge          t1, a4, 550f
537:              nop
                  slli         t6, ra, 21
                  auipc        a6, 361605
                  slti         t1, s11, 2012
                  slli         s7, a4, 28
                  sll          s11, a3, a0
                  sltu         s9, s2, ra
                  andi         gp, a0, 1685
                  andi         gp, t4, 695
                  and          a0, s3, s8
                  bltu         t5, t5, 553f
                  bne          t0, s2, 561f
                  sub          a3, a7, a2
550:              xori         s10, s3, 798
                  sll          t6, s0, s5
                  srli         s8, a0, 18
553:              beq          a1, s11, 571f
                  andi         a3, a3, -82
                  slt          s11, t6, s5
                  bge          a4, s0, 557f
557:              addi         s3, tp, 2012
                  ori          ra, s3, 1676
                  slti         a1, s4, 176
                  slt          t5, ra, s1
561:              xor          s2, a4, s6
                  sltiu        s7, a6, 727
                  andi         s3, t2, -168
                  beq          t1, s3, 579f
                  sltu         s9, t2, a2
                  or           a7, a1, t2
                  sltu         a4, gp, t3
                  andi         s8, ra, -608
                  sll          s2, s3, s2
                  or           s9, s5, a1
571:              sub          sp, a1, tp
                  sll          ra, ra, a5
                  bltu         s7, s5, 581f
                  beq          zero, sp, 579f
                  srai         s3, s10, 15
                  srli         t6, s7, 1
                  bltu         s10, a7, 586f
                  add          s8, s1, t5
579:              sltiu        tp, s11, -575
                  xor          a3, gp, s11
581:              andi         s6, a1, -121
                  srl          s0, a1, t0
                  andi         s1, a0, -1024
                  bne          s0, t4, 599f
                  bge          a6, t3, 605f
586:              auipc        t4, 146967
                  sltiu        a7, a7, -1504
                  bltu         s10, t1, 595f
                  sltiu        t1, t0, -999
                  srai         a3, s9, 20
                  slt          a4, s9, tp
                  slt          s3, s3, t6
                  andi         t4, t4, -1165
                  nop
595:              andi         s2, a7, 1916
                  and          zero, s2, s6
                  andi         t1, t6, -1952
                  addi         t1, zero, 344
599:              bltu         tp, a4, 617f
                  sltu         t5, s9, s0
                  bge          tp, s1, 619f
                  slli         s7, t0, 7
                  nop
                  sub          t2, s1, a1
605:              addi         t4, a1, -1228
                  beq          t2, s9, 626f
                  xori         s1, s0, -88
                  or           s11, s8, s11
                  beq          s7, s2, 613f
                  and          tp, a6, s3
                  sll          t5, t0, a7
                  nop
613:              srli         t3, s8, 10
                  slli         s2, a0, 7
                  bgeu         tp, gp, 624f
                  bge          t1, a4, 631f
617:              slt          a6, s10, s11
                  bltu         s1, a0, 619f
619:              addi         t5, s2, 1031
                  bgeu         a4, ra, 629f
                  or           tp, t5, s9
                  bltu         s7, a0, 635f
                  blt          zero, t6, 625f
624:              blt          t4, a0, 632f
625:              auipc        s1, 688631
626:              blt          t1, s5, 646f
                  slti         a0, a7, -1350
                  sll          s1, s5, s8
629:              sltiu        s6, gp, 1489
                  slti         a7, a5, -1955
631:              srai         s5, s5, 27
632:              auipc        s0, 126941
                  beq          a1, ra, 647f
                  sra          s6, t4, s9
635:              or           gp, s4, a0
                  lui          a6, 490976
                  sra          t0, t0, a3
                  bge          s5, a2, 656f
                  sra          a3, a4, zero
                  srl          s11, s1, sp
                  add          t3, s5, t6
                  blt          a0, tp, 643f
643:              srl          s11, t5, a2
                  addi         gp, sp, -24
                  srai         s3, s6, 3
646:              sub          s3, ra, a1
647:              nop
                  add          a7, s0, sp
                  bgeu         sp, zero, 667f
                  sra          t0, s6, s11
                  addi         s0, a4, 1456
                  srli         t3, s8, 1
                  andi         a1, t0, 207
                  blt          a4, t6, 656f
                  bge          s2, s9, 660f
656:              sra          s10, t6, s0
                  sra          a3, t6, s7
                  or           s8, s2, t2
                  xor          s1, s8, s3
660:              addi         t4, s9, 357
                  srai         s11, t1, 7
                  sra          tp, t6, t6
                  blt          t0, t5, 674f
                  sltu         tp, t5, s2
                  sra          t6, a0, s3
                  andi         s8, s2, -417
667:              sra          t0, a1, t6
                  sltu         a6, sp, a1
                  bgeu         ra, s9, 676f
                  slti         tp, a2, 565
                  slt          a7, t4, a7
                  slti         t1, sp, -1667
                  srli         t2, s3, 21
674:              blt          a1, t4, 688f
                  sltiu        t6, t2, 833
676:              beq          s4, t3, 686f
                  beq          s0, zero, 686f
                  bltu         a4, t1, 691f
                  srai         s6, tp, 20
                  and          s0, t5, t0
                  srai         zero, zero, 24
                  sub          s7, s11, s8
                  beq          a7, t2, 685f
                  xori         s0, a6, 426
685:              xor          zero, s4, t6
686:              sub          tp, a1, a6
                  sltu         s8, s5, sp
688:              srl          t5, s11, a3
                  bge          s8, t6, 697f
                  slti         a7, s5, 2017
691:              slti         s3, a1, -1516
                  beq          t6, ra, 698f
                  andi         s9, gp, -1785
                  add          s8, a5, ra
                  slti         t4, s4, -20
                  blt          zero, s6, 707f
697:              srai         a4, s8, 2
698:              sub          zero, a5, t3
                  sub          t3, a0, a5
                  addi         s3, t3, 721
                  slt          s9, a0, a7
                  add          t2, gp, s8
                  auipc        a4, 954784
                  sub          t2, s5, s10
                  add          a1, tp, s7
                  sltu         t1, a4, s10
707:              slli         t3, s1, 1
                  and          t6, t0, s11
                  add          a0, a2, s7
                  slt          a3, a7, t5
                  lui          sp, 240742
                  beq          t0, s3, 727f
                  addi         s9, a5, 593
                  slt          s0, s1, t6
                  srl          gp, a2, a4
                  srai         t1, t6, 29
                  ori          t6, s5, 1338
                  srl          tp, s4, s8
                  or           a7, t2, s0
                  xor          t3, gp, t6
                  nop
                  add          a0, zero, s9
                  srai         s3, zero, 0
                  sll          tp, gp, tp
                  addi         a0, sp, 267
                  sll          zero, t6, t3
727:              sltiu        t3, s6, -1501
                  auipc        s2, 449991
                  bltu         ra, s0, 738f
                  xor          t3, a7, a7
                  lui          t5, 322194
                  and          s9, a3, zero
                  srai         s5, zero, 26
                  sll          s11, a1, gp
                  xori         t1, a3, 43
                  xor          zero, t4, s8
                  srai         s10, a1, 30
738:              slt          t2, s11, t5
                  and          s10, s4, s1
                  or           s11, a4, sp
                  lui          s7, 330921
                  bge          a7, ra, 756f
                  slli         s6, s6, 20
                  xori         tp, a1, -653
                  slti         s3, t2, 191
                  add          ra, s5, t2
                  andi         a4, zero, -624
                  blt          ra, t5, 761f
                  xori         s7, sp, -573
                  xori         s10, t3, -1112
                  sll          a7, s0, a7
                  bgeu         a1, a1, 770f
                  or           t3, s0, t4
                  auipc        s8, 865346
                  auipc        sp, 359561
756:              slt          t6, t0, gp
                  lui          t2, 875526
                  addi         a6, s10, -886
                  nop
                  srli         gp, t6, 21
761:              slti         a7, s6, 1384
                  slti         s10, a6, -731
                  srli         s6, s4, 0
                  srl          a0, a5, t4
                  bgeu         tp, s3, 771f
                  auipc        t2, 201793
                  slt          t0, s9, sp
                  srli         s3, s7, 27
                  auipc        a7, 972970
770:              srl          s1, s5, zero
771:              srai         a0, gp, 29
                  blt          ra, t5, 779f
                  srl          a7, zero, a5
                  sltu         s11, a3, t1
                  nop
                  slli         t1, t3, 12
                  srli         t5, a5, 6
                  slti         s3, s2, -585
779:              nop
                  add          gp, t1, s9
                  xor          s5, gp, gp
                  bltu         a3, s8, 802f
                  bltu         gp, a7, 803f
                  lui          s10, 539756
                  addi         s8, t6, -719
                  nop
                  sra          a6, s8, tp
                  srl          a6, s2, sp
                  and          s2, a2, s2
                  slti         tp, s8, 1114
                  ori          t0, a2, 968
                  and          s8, s8, a2
                  sra          t6, a1, zero
                  srli         t5, s10, 27
                  andi         t0, a1, -211
                  bge          s7, a7, 809f
                  xori         s6, ra, -790
                  bne          a3, t0, 800f
                  slti         t2, tp, 889
800:              sub          s10, a3, a0
                  sltiu        s10, t5, 445
802:              sll          s5, s3, sp
803:              beq          s7, a4, 814f
                  sltu         s11, t5, a3
                  bne          tp, s8, 823f
                  sltiu        a3, s6, 1
                  sll          t5, a3, s5
                  andi         t4, s0, 1233
809:              bgeu         zero, a1, 823f
                  srl          s3, tp, s11
                  addi         s6, tp, -1179
                  srl          a1, a3, a4
                  bltu         t0, a6, 814f
814:              srl          a4, gp, s9
                  bltu         s1, t3, 830f
                  srl          t3, t3, s10
                  bgeu         t1, s3, 827f
                  sltu         zero, zero, s8
                  srl          s11, a3, t5
                  sltu         tp, s7, t6
                  slti         t2, a4, -761
                  bltu         s7, s6, 831f
823:              bltu         a5, s3, 838f
                  sll          s10, s5, t5
                  or           a7, a4, a4
                  bgeu         sp, a0, 834f
827:              nop
                  slt          sp, a3, sp
                  bltu         tp, s8, 834f
830:              xor          t6, a0, t4
831:              ori          zero, s8, -610
                  bge          s10, t5, 834f
                  nop
834:              sltu         s8, t6, t5
                  sra          t6, s10, s8
                  bgeu         t4, t2, 838f
                  sltu         a4, s0, a6
838:              xor          s6, s5, a1
                  slt          s7, a4, s10
                  auipc        t3, 86376
                  nop
                  beq          a3, ra, 860f
                  srl          t6, s2, s0
                  xor          t0, s3, a3
                  bne          a6, tp, 853f
                  beq          a0, t0, 847f
847:              andi         s2, s5, -488
                  srl          s9, t0, a6
                  sltu         a4, a0, ra
                  auipc        a3, 770465
                  and          a0, t0, tp
                  addi         s8, s6, 882
853:              xor          a7, s5, t5
                  bgeu         a4, t2, 872f
                  nop
                  and          t4, s2, t0
                  srli         a6, s10, 30
                  auipc        gp, 310218
                  bltu         s6, tp, 866f
860:              slti         s10, a5, 114
                  auipc        s7, 598381
                  slt          s3, s11, zero
                  addi         t3, sp, 1517
                  auipc        ra, 710922
                  srai         s6, zero, 14
866:              lui          ra, 451566
                  sltu         s11, t6, gp
                  srai         s1, tp, 11
                  bltu         s6, tp, 878f
                  slt          s5, ra, s9
                  nop
872:              srli         t1, s4, 6
                  xor          s2, t6, s10
                  add          t4, t0, s9
                  srai         s8, sp, 0
                  nop
                  sub          t3, zero, a1
878:              sltu         s8, tp, t0
                  sltiu        a3, s7, 1264
                  ori          a4, t5, -1506
                  xor          a7, t5, t1
                  srai         s11, t2, 16
                  lui          s11, 213683
                  and          zero, s1, s9
                  lui          a7, 761111
                  addi         s8, a0, -625
                  blt          zero, s7, 898f
                  auipc        s6, 139610
                  bltu         s4, s3, 893f
                  srli         zero, zero, 25
                  sll          s1, a0, s7
                  blt          s6, a6, 893f
893:              bgeu         a0, tp, 895f
                  bltu         a7, t4, 905f
895:              bge          s8, s1, 897f
                  ori          a3, s5, -220
897:              bge          a4, s7, 910f
898:              srai         s7, ra, 12
                  addi         t5, tp, 1386
                  add          t5, a5, s11
                  or           s5, tp, gp
                  auipc        s11, 341076
                  and          t3, a5, t3
                  sra          s3, a5, gp
905:              auipc        s2, 385988
                  srai         s8, t6, 26
                  srl          t2, s7, a4
                  bgeu         ra, s8, 926f
                  addi         a4, gp, 119
910:              sltu         t0, a5, zero
                  sltu         s11, a6, zero
                  lui          zero, 691855
                  andi         sp, zero, 320
                  xori         s10, gp, 1606
                  lui          t3, 628051
                  bltu         s11, a6, 925f
                  xor          a6, t4, ra
                  sra          gp, s6, tp
                  bne          a3, s3, 923f
                  bge          t2, s7, 934f
                  bne          a0, s10, 941f
                  sll          a4, gp, s5
923:              sra          t4, s9, a4
                  slt          s8, tp, s10
925:              beq          gp, t2, 936f
926:              ori          a1, ra, -1701
                  sll          t2, s10, sp
                  auipc        s2, 343722
                  sub          s11, s2, a0
                  slli         zero, a6, 5
                  slt          s6, t5, s4
                  srl          t6, t5, zero
                  or           s9, a6, t2
                  la           sp, sub_1
                  xori         t3, gp, 999
                  srli         s9, t1, 7
                  addi         sp, sp, 413
                  addi         s9, s5, 1847
                  bgeu         s8, a1, main_j2 #branch to jump instr
                  addi         t2, a3, -678
                  srli         a1, s8, 28
                  sra          a1, t2, s6
main_j2:          jalr         ra, sp, -413 #jump main -> sub_1
                  bne          s5, t3, 950f
                  slti         s9, a3, 87
                  slti         s6, s3, 257
                  or           a4, s6, sp
934:              sltiu        a1, s1, 1196
                  lui          s10, 697733
936:              sub          t3, t6, sp
                  bne          zero, s1, 942f
                  sll          s7, s0, t3
                  bgeu         s0, t6, 957f
                  slt          a1, gp, t2
941:              bltu         s6, t4, 942f
942:              beq          a3, t1, 948f
                  or           sp, s8, t1
                  slli         s8, s7, 14
                  xor          s3, s5, ra
                  auipc        a7, 909053
                  sub          s7, gp, t1
948:              andi         a3, sp, 1263
                  lui          t1, 135663
950:              bltu         s6, s5, 964f
                  ori          s8, a3, -399
                  sra          a4, a3, sp
                  andi         t2, s1, -372
                  and          t6, a4, ra
                  add          t2, a3, s4
                  slli         s11, a4, 29
957:              bge          s8, zero, 966f
                  srli         zero, s6, 31
                  addi         s8, ra, 1263
                  srl          a4, a6, t0
                  and          t1, t1, ra
                  sra          s8, s7, t5
                  bne          t6, t5, 971f
964:              slt          s5, t2, a4
                  andi         s10, a6, 1574
966:              beq          a2, zero, 974f
                  xori         t3, s7, 2029
                  bgeu         t2, a3, 981f
                  sll          s0, t6, ra
                  xori         sp, ra, 1322
971:              sra          t0, t6, tp
                  srl          s2, s7, tp
                  sltiu        a0, t4, -1631
974:              andi         s5, t0, 869
                  ori          s11, t6, -401
                  ori          t1, s9, 133
                  sll          a7, a0, s10
                  ori          tp, t1, -600
                  add          s0, s2, t4
                  nop
981:              bne          a1, s1, 991f
                  beq          s4, s11, 989f
                  lui          s10, 89562
                  and          s3, a5, zero
                  slt          s8, tp, s8
                  slti         s2, zero, -1183
                  sra          zero, a3, t2
                  slti         a4, a6, 1187
989:              slti         s6, a5, 1781
                  bge          gp, s6, 1005f
991:              bgeu         a1, t0, 998f
                  xori         s6, ra, -1985
                  beq          gp, s3, 1008f
                  bne          s0, s6, 996f
                  sra          s6, s9, a3
996:              xor          t6, a3, s7
                  slli         t3, t2, 21
998:              ori          s6, s2, -482
                  ori          t0, a0, 1812
                  slti         a0, a6, -1597
                  or           a1, s4, t5
                  sra          tp, s1, s6
                  beq          a4, a2, 1012f
                  sra          t1, a2, t3
1005:             srli         t0, t0, 0
                  srai         ra, t4, 9
                  blt          s2, a4, 1025f
1008:             ori          a3, t3, 559
                  bgeu         gp, s6, 1027f
                  bgeu         s10, ra, 1019f
                  sltiu        a4, t3, -283
1012:             bgeu         s5, t1, 1026f
                  slti         s10, s10, 1698
                  bge          s10, gp, 1021f
                  bne          a1, s2, 1035f
                  slt          zero, s5, s11
                  bge          t0, s6, 1023f
                  nop
1019:             bne          a2, t3, 1023f
                  sltiu        t3, s9, -1258
1021:             sltu         t4, s8, gp
                  blt          ra, t0, 1037f
1023:             srl          s8, t4, t6
                  srli         s7, s11, 23
1025:             blt          ra, s8, 1027f
1026:             ori          s1, a2, 1678
1027:             add          t2, a6, t4
                  andi         s5, s5, -266
                  beq          t4, t3, 1038f
                  blt          s2, s3, 1032f
                  auipc        a1, 566505
1032:             srl          s1, s3, s2
                  sltu         t1, a1, t3
                  nop
1035:             slli         s9, t3, 1
                  bltu         t1, t3, 1044f
1037:             srl          a0, a0, s11
1038:             auipc        t4, 618133
                  sra          a0, s5, a0
                  srl          s2, gp, tp
                  sltiu        s7, s7, -20
                  andi         tp, s5, -470
                  sltiu        a7, a3, -1048
1044:             srli         a0, a0, 11
                  bltu         t4, a1, 1047f
                  bne          t0, s5, 1061f
1047:             addi         a7, a7, 1964
                  sltiu        t0, s11, -1231
                  srl          t3, t1, s6
                  nop
                  auipc        t2, 757337
                  slti         tp, t3, -313
                  bltu         s7, s9, 1073f
                  sltiu        t5, a4, 1270
                  lui          s1, 387932
                  auipc        t0, 131249
                  ori          a3, a4, 122
                  sll          gp, t3, ra
                  bltu         s11, a1, 1060f
1060:             sll          s1, a1, s2
1061:             lui          t5, 1031562
                  lui          s8, 866713
                  bge          a1, a6, 1072f
                  bltu         s7, t5, 1075f
                  addi         zero, a4, -827
                  sltu         a1, sp, s6
                  sltu         s6, a7, t4
                  srl          t3, sp, a7
                  sltiu        s9, t6, 712
                  blt          s5, t2, 1080f
                  sll          tp, s7, s7
1072:             bgeu         ra, a4, 1079f
1073:             addi         gp, zero, 2002
                  sll          t3, s2, s2
1075:             bne          a6, sp, 1088f
                  blt          s0, t5, 1094f
                  ori          t4, s5, -651
                  sub          t4, s10, s2
1079:             xori         s6, a0, 1759
1080:             sltiu        s0, a3, 1355
                  bgeu         a4, gp, 1092f
                  srli         s9, t1, 21
                  srai         gp, t2, 27
                  xor          s8, ra, a2
                  addi         a7, s6, 107
                  srl          t0, s3, s1
                  add          tp, ra, s1
1088:             lui          zero, 320250
                  bne          a2, s6, 1097f
                  xori         t5, gp, -1784
                  and          t6, s10, ra
1092:             bltu         t2, t1, 1093f
1093:             sra          s10, ra, s4
1094:             bge          t6, a2, 1112f
                  sltu         s7, a1, t1
                  and          t2, t0, t4
1097:             sub          s1, s8, s11
                  sra          s5, a5, t5
                  and          a7, t2, s8
                  sltiu        a6, t2, 907
                  sra          s0, s9, s4
                  beq          t1, tp, 1107f
                  bgeu         s6, a5, 1121f
                  slt          t0, sp, t6
                  srli         zero, s0, 3
                  blt          s4, a6, 1124f
1107:             lui          s6, 339455
                  sub          s3, s6, s10
                  beq          ra, a0, 1122f
                  bne          s0, s0, 1124f
                  auipc        s3, 315401
1112:             srai         t2, s6, 4
                  slli         gp, s11, 5
                  and          zero, a7, s11
                  sll          s1, s9, a5
                  slti         t2, a6, -199
                  ori          s2, a2, 1593
                  blt          t2, a7, 1124f
                  sltu         tp, a2, gp
                  slti         t6, t4, 121
1121:             lui          t0, 696032
1122:             bge          s10, ra, 1124f
                  sra          t6, s10, a3
1124:             addi         gp, a5, 238
                  slt          gp, s1, a0
                  srli         s5, a2, 15
                  nop
                  sltiu        ra, a6, -1206
                  add          t5, a1, a4
                  auipc        tp, 497863
                  slt          a1, a3, t3
                  xori         t5, s10, -1641
                  xor          a6, t1, s7
                  bgeu         t1, s11, 1136f
                  slli         a6, ra, 17
1136:             addi         t1, s3, 2007
                  beq          a7, sp, 1155f
                  beq          a1, sp, 1145f
                  slli         s7, a4, 3
                  srl          t1, ra, tp
                  addi         s0, a1, -890
                  bge          t3, a3, 1143f
1143:             addi         s11, a5, 699
                  auipc        a1, 940020
1145:             lui          a0, 582944
                  bltu         s9, s6, 1159f
                  slti         a4, t5, -1709
                  ori          s5, a4, -1956
                  add          a0, a3, s6
                  andi         gp, zero, 1257
                  bne          s3, gp, 1158f
                  xor          s0, a7, sp
                  bgeu         ra, a5, 1167f
                  blt          ra, sp, 1162f
1155:             bltu         s1, a7, 1163f
                  xor          a7, s1, a1
                  nop
1158:             sll          t0, ra, sp
1159:             xori         s1, a6, -1515
                  sltu         t2, t3, a7
                  slti         s6, zero, -1199
1162:             slli         t2, t1, 4
1163:             slli         tp, ra, 21
                  beq          s2, t0, 1182f
                  sll          s8, s1, s0
                  or           zero, ra, s7
1167:             slli         sp, t1, 30
                  sra          s5, sp, s6
                  sltu         s7, tp, s2
                  or           a7, t0, s6
                  lui          sp, 104567
                  and          t6, a4, a1
                  bne          a6, a4, 1184f
                  srai         a6, ra, 3
                  add          a4, zero, s8
                  blt          a2, sp, 1181f
                  sub          a1, a3, s6
                  slt          a7, s3, t5
                  srl          t5, gp, s7
                  addi         s1, s7, 739
1181:             addi         a1, tp, -667
1182:             sltiu        a6, ra, -33
                  sltiu        s11, tp, 1587
1184:             sltiu        t6, s11, 1221
                  add          s6, s1, s8
                  and          t2, t3, s9
                  add          s2, a0, a2
                  bgeu         s3, a0, 1206f
                  beq          a6, a7, 1199f
                  srli         s7, a6, 14
                  bgeu         s2, t1, 1206f
                  ori          s7, t5, 872
                  sltu         a6, t3, t1
                  xor          t1, s0, s5
                  srli         a6, t2, 18
                  srli         s10, ra, 5
                  bne          zero, t4, 1199f
                  xor          a3, s10, s8
1199:             beq          s4, s6, 1208f
                  slt          t2, t2, s11
                  andi         t3, zero, 770
                  sltiu        s9, a0, -926
                  sll          t6, zero, sp
                  blt          s9, sp, 1224f
                  sll          a4, s9, s8
1206:             ori          zero, a5, -1130
                  sll          a3, t0, tp
1208:             slli         a1, s3, 23
                  and          t6, s1, s5
                  sub          t1, a6, t2
                  ori          a1, s5, 1008
                  bge          s10, t5, 1227f
                  sra          a1, sp, a6
                  beq          s9, s1, 1223f
                  lui          s5, 26912
                  xori         a6, t3, -1789
                  sll          s10, gp, s1
                  sltiu        a4, sp, -1018
                  xori         tp, t4, 1108
                  slt          s9, t4, sp
                  ori          a0, sp, 1097
                  slt          gp, s0, a3
1223:             slti         t4, s8, 1073
1224:             and          t6, s4, a1
                  nop
                  bne          s0, s11, 1246f
1227:             srai         s9, s11, 16
                  nop
                  beq          zero, s9, 1240f
                  bne          s3, s5, 1248f
                  slt          tp, a5, a2
                  bge          tp, a0, 1241f
                  slli         s1, t5, 16
                  srl          s9, t3, s11
                  bltu         s8, t0, 1236f
1236:             bge          s9, s2, 1249f
                  sltu         t2, s6, a7
                  slt          s6, s10, s0
                  add          a4, tp, t3
1240:             srai         t2, t6, 0
1241:             sll          t4, gp, sp
                  srai         t4, s8, 8
                  sll          ra, ra, t5
                  bge          s8, a6, 1258f
                  andi         a3, t6, 125
1246:             srai         gp, s0, 22
                  sltu         gp, gp, t5
1248:             srli         tp, a2, 12
1249:             ori          a6, t4, 1054
                  slt          s10, s3, sp
                  bne          a1, s5, 1255f
                  beq          s10, a6, 1256f
                  slt          s9, a1, s6
                  sll          s1, t3, t4
1255:             slli         ra, a7, 2
1256:             xori         s9, a7, 140
                  slt          t0, t1, s11
1258:             addi         a4, a6, -1187
                  slli         t5, a1, 5
                  bltu         t4, s0, 1270f
                  srl          s9, s6, tp
                  slti         sp, s6, 544
                  slt          a0, t0, s6
                  sra          t2, s0, sp
                  bltu         s7, s7, 1266f
1266:             srl          a4, t0, t6
                  xor          a0, t0, a0
                  slli         s1, t5, 14
                  auipc        a7, 975176
1270:             sra          a3, t3, a7
                  srai         gp, s5, 0
                  add          s2, ra, s7
                  blt          s2, gp, 1280f
                  bgeu         t5, s0, 1282f
                  beq          s6, a0, 1286f
                  sub          s8, a2, t5
                  slli         t1, tp, 24
                  ori          gp, a3, -1331
                  add          sp, sp, a0
1280:             lui          t0, 369938
                  blt          a2, t3, 1287f
1282:             bgeu         a7, s0, 1287f
                  srai         s11, s1, 3
                  sll          t6, s11, sp
                  bge          s4, ra, 1287f
1286:             bgeu         a5, sp, 1287f
1287:             slt          t0, s3, s4
                  la x20, test_done
                  jalr x0, x20, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            beq          s8, sp, sub_1_stack_p
sub_1_stack_p:    addi         a5, a5, -12
                  srl          a0, s2, a0
                  sw           ra, 4(a5)
                  or           zero, a2, a7
                  slti         s8, t6, -512
                  and          t3, a5, s1
                  slti         ra, a1, -800
                  xori         tp, s4, -1523
                  la           s5, sub_4
                  srli         s10, t6, 2
                  addi         s5, s5, -741
                  bltu         a3, a1, sub_1_j3 #branch to jump instr
                  addi         s6, t1, 284
                  and          a4, t6, gp
                  addi         t1, tp, -1489
                  add          s6, t6, s0
                  srai         s10, s11, 8
sub_1_j3:         jalr         ra, s5, 742 #jump sub_1 -> sub_4
                  slti         s2, t5, -580
                  slt          s3, a4, a1
                  bne          s10, s7, 8f
                  lui          gp, 575684
                  auipc        t0, 789914
                  slti         a6, ra, -1476
                  bne          s5, t5, 10f
                  srli         s1, a5, 14
8:                auipc        a4, 55274
                  nop
10:               sltu         t0, tp, t4
                  srl          s10, gp, s6
                  and          a4, s2, tp
                  srl          s9, sp, s7
                  srli         a0, s4, 14
                  lw           ra, 4(a5)
                  nop
                  addi         a5, a5, 12
                  xor          s5, s3, s9
                  sltu         s3, s6, sp
39:               addi x3, x1, 0
39:               jalr x3, x3, 0
sub_4:            srai         s11, t1, 9
                  bltu         a7, a2, sub_4_stack_p
sub_4_stack_p:    addi         a5, a5, -56
                  sw           ra, 4(a5)
                  sltu         s10, s1, t4
                  ori          s1, s9, -374
                  auipc        s1, 1034242
                  sll          s8, t5, s9
                  addi         t2, s2, 981
                  srl          s6, a2, s11
                  sltiu        t2, s10, 1215
                  la           s3, sub_5
                  addi         s3, s3, -905
                  xor          zero, s5, s9
sub_4_j6:         jalr         ra, s3, 905 #jump sub_4 -> sub_5
                  addi         t5, zero, 1826
                  ori          s10, s5, -1159
                  add          s7, tp, s10
                  xori         t2, s2, -1701
                  slt          gp, t0, a4
                  sltu         ra, gp, a1
                  sub          s8, t2, a2
                  xor          tp, a3, t1
                  addi         t3, a0, -1329
                  sub          a1, gp, a2
                  and          s3, s5, a7
                  slt          s2, t2, s9
                  sll          a1, zero, s5
                  xori         a0, gp, -1335
                  and          zero, a5, s2
                  sltu         a3, s10, a7
                  xor          s7, s9, ra
                  lw           ra, 4(a5)
                  slli         s11, s7, 10
                  addi         a5, a5, 56
                  srl          s10, a0, a4
                  lui          a1, 677238
37:               addi x31, x1, 0
37:               jalr x31, x31, 0
sub_3:            sra          a3, a6, a5
                  or           s0, s5, s10
                  addi         a5, a5, -16
                  auipc        tp, 971026
                  lui          t4, 390294
                  xori         a6, a3, 547
                  auipc        t0, 424399
                  sw           ra, 4(a5)
                  srli         t3, s6, 18
                  lui          a3, 570788
                  slt          a4, t6, a2
                  bne          a5, s3, sub_3_j5 #branch to jump instr
                  addi         s11, a2, 1651
                  sra          ra, tp, s11
                  slt          s8, t4, a3
                  nop
                  xor          t3, s6, a0
                  addi         ra, t0, -1947
sub_3_j5:         jal          ra, sub_5 #jump sub_3 -> sub_5
                  addi         a0, zero, 9 #init loop 0 counter
                  addi         s7, zero, 8 #init loop 0 limit
                  sltu         a4, a7, t5
                  sra          t1, s4, s1
                  srli         s8, a5, 19
                  add          t3, s11, t2
                  slt          a7, s9, t6
                  xori         s3, s2, 399
                  sll          t2, zero, t5
                  xori         tp, a1, -1517
sub_3_3_0_t:      sltiu        s1, s3, 215
                  sltu         a6, tp, a4
                  sltu         t1, s9, s4
                  lui          gp, 956415
                  ori          t1, zero, -1911
                  addi         a0, a0, -5 #update loop 0 counter
                  sltiu        a6, s7, 1914
                  andi         t1, tp, -1103
                  andi         s0, t0, 1652
                  srli         tp, gp, 31
                  xori         t2, t0, -192
                  sltiu        sp, t5, -666
                  srai         t0, sp, 26
                  andi         s6, a1, 439
                  slt          s2, t3, s6
                  sll          tp, tp, s1
                  bgeu         a0, s7, sub_3_3_0_t #branch for loop 0
                  sub          a4, tp, s4
                  addi         tp, zero, 7 #init loop 1 counter
                  addi         s0, zero, 14 #init loop 1 limit
sub_3_1_1_t:      ori          a6, sp, -1718
                  addi         tp, tp, 7 #update loop 1 counter
                  addi         ra, zero, 1 #init loop 0 counter
                  addi         a1, zero, 5 #init loop 0 limit
                  sub          t2, sp, tp
sub_3_1_0_t:      nop
                  xori         t4, s7, 983
                  addi         ra, ra, 4 #update loop 0 counter
                  bne          ra, a1, sub_3_1_0_t #branch for loop 0
                  beq          tp, s0, sub_3_1_1_t #branch for loop 1
                  nop
                  addi         a0, zero, 1 #init loop 1 counter
                  addi         s5, t1, -1195
                  sltiu        a1, t0, -1089
                  slti         s11, tp, 1223
                  addi         tp, zero, -11 #init loop 1 limit
                  and          s2, s8, t0
sub_3_7_1_t:      sltiu        t1, a1, -11
                  lui          s1, 805925
                  ori          s3, sp, -562
                  srli         s9, t1, 10
                  or           s0, t6, s11
                  srl          a7, sp, s7
                  or           t1, t5, s2
                  srl          s8, t4, a3
                  srli         a1, a6, 13
                  add          ra, t2, t0
                  lui          s10, 37909
                  addi         a0, a0, -8 #update loop 1 counter
                  addi         a4, zero, 2 #init loop 0 counter
                  sll          zero, t2, zero
                  addi         t2, zero, 6 #init loop 0 limit
                  nop
                  lui          s0, 1005478
sub_3_7_0_t:      xori         s9, a2, 677
                  srli         s0, s9, 10
                  addi         a4, a4, 7 #update loop 0 counter
                  blt          a4, t2, sub_3_7_0_t #branch for loop 0
                  auipc        s2, 935353
                  srai         s8, a1, 21
                  xor          s2, a0, s9
                  andi         s1, a6, -996
                  bge          a0, tp, sub_3_7_1_t #branch for loop 1
                  add          s0, gp, a5
                  addi         t6, zero, 8 #init loop 1 counter
                  addi         a3, zero, 18 #init loop 1 limit
sub_3_5_1_t:      slt          a4, t1, a1
                  addi         t6, t6, 3 #update loop 1 counter
                  addi         a6, zero, 4 #init loop 0 counter
                  addi         s11, zero, 14 #init loop 0 limit
                  addi         a7, a3, -1533
sub_3_5_0_t:      sltu         s10, zero, s6
                  addi         a6, a6, 2 #update loop 0 counter
                  bltu         a6, s11, sub_3_5_0_t #branch for loop 0
                  bltu         t6, a3, sub_3_5_1_t #branch for loop 1
                  xori         a1, sp, 1197
                  addi         a7, zero, 5 #init loop 0 counter
                  ori          sp, t2, -428
                  and          s9, t0, t0
                  sra          s3, s4, tp
                  addi         ra, zero, 14 #init loop 0 limit
                  sltu         t3, s10, zero
                  sll          a3, s5, s4
sub_3_2_0_t:      ori          s9, gp, 1041
                  sltiu        gp, t4, -909
                  addi         zero, s4, 1188
                  srli         t3, s7, 3
                  addi         a7, a7, 9 #update loop 0 counter
                  sltiu        a3, t1, 1655
                  sra          t6, a2, s11
                  add          s10, s6, t1
                  sll          t2, s10, s3
                  auipc        t3, 178511
                  xori         t5, s11, 852
                  srl          s5, gp, t0
                  sltu         t0, s1, s8
                  or           t3, gp, a7
                  bne          a7, ra, sub_3_2_0_t #branch for loop 0
                  add          s2, s1, a6
                  addi         t1, zero, 1 #init loop 0 counter
                  xor          s1, t1, ra
                  xori         sp, s11, 1867
                  or           tp, s3, a2
                  addi         s3, zero, 19 #init loop 0 limit
sub_3_0_0_t:      slti         tp, a3, 723
                  addi         t1, t1, 8 #update loop 0 counter
                  ori          sp, t0, -425
                  sub          sp, t3, t3
                  ori          a4, a0, 689
                  srai         s10, t5, 6
                  and          s0, t0, s10
                  bltu         t1, s3, sub_3_0_0_t #branch for loop 0
                  nop
                  addi         s8, zero, -6 #init loop 1 counter
                  addi         zero, s10, 1107
                  slti         t0, t6, -346
                  addi         t6, zero, 9 #init loop 1 limit
                  slt          a1, a4, a6
                  srai         tp, s2, 29
                  add          t5, s8, t4
                  srai         a0, tp, 10
sub_3_8_1_t:      xori         s0, tp, -694
                  addi         s8, s8, 5 #update loop 1 counter
                  srai         s6, s1, 27
                  srl          t2, s7, zero
                  addi         t5, t4, 1293
                  auipc        t1, 439469
                  addi         a7, zero, -3 #init loop 0 counter
                  add          s2, a4, s10
                  lui          a0, 753364
                  addi         s7, zero, -12 #init loop 0 limit
                  slti         a3, a3, -2019
                  sra          sp, a2, a7
                  andi         a1, s3, -285
                  addi         a4, s4, 163
                  sll          sp, gp, s4
sub_3_8_0_t:      sub          t3, t1, t3
                  slt          t4, a1, t6
                  sra          s0, s6, zero
                  xor          zero, t6, ra
                  srl          t4, a6, t1
                  addi         a7, a7, -3 #update loop 0 counter
                  srl          s1, tp, gp
                  sub          ra, tp, s1
                  bne          a7, s7, sub_3_8_0_t #branch for loop 0
                  beq          s8, t6, sub_3_8_1_t #branch for loop 1
                  sltiu        t1, s10, -291
                  addi         tp, s5, 709
                  xori         sp, a7, 1722
                  srai         t5, a2, 20
                  andi         t3, a2, -138
                  bltu         a1, s11, 15f
                  or           t1, a6, s4
                  auipc        s3, 723803
                  lui          a4, 568081
                  slt          t6, ra, s8
                  and          a6, a0, s8
                  bltu         a6, a4, 21f
                  ori          ra, s11, 661
                  nop
                  lui          s3, 414556
                  lui          s5, 521870
15:               bgeu         t5, t1, 35f
                  xor          t4, s4, a2
                  bgeu         s7, t3, 27f
                  slli         a0, a6, 23
                  sra          s9, a3, s0
                  andi         a7, t3, 901
21:               and          t6, s6, gp
                  sltiu        s8, s5, 630
                  bltu         s5, t0, 41f
                  addi         t4, s1, 460
                  sltiu        a6, s6, 172
                  beq          t4, s7, 36f
27:               bne          t0, s11, 36f
                  slti         ra, s0, -394
                  ori          a4, ra, 1205
                  bne          s11, s7, 48f
                  bltu         t6, t0, 39f
                  addi         a3, s2, -162
                  slli         s0, t4, 15
                  lui          a3, 282478
35:               sltu         s6, t2, s2
36:               and          ra, t4, a6
                  sll          a4, ra, gp
                  nop
39:               sra          zero, gp, s1
                  add          ra, s2, s6
41:               slt          sp, s7, t0
                  sltiu        tp, t4, -154
                  bge          a7, t0, 51f
                  sll          tp, s7, a3
                  or           s0, a3, gp
                  slti         t6, t2, -1915
                  lui          s8, 346837
48:               srli         ra, s9, 10
                  sltu         t1, s0, a4
                  xor          s0, t1, t0
51:               blt          t2, a6, 56f
                  auipc        s11, 223271
                  xori         s3, a0, -1234
                  sltiu        s7, tp, 1814
                  slti         tp, a4, 133
56:               bgeu         s3, t6, 66f
                  bge          a4, s1, 62f
                  nop
                  or           s6, t1, s2
                  sra          a3, t1, a3
                  nop
62:               blt          t6, s10, 72f
                  xori         t5, s11, 1262
                  add          zero, a3, s5
                  addi         t4, ra, 1070
66:               xor          s11, s3, t3
                  beq          t2, a2, 76f
                  beq          ra, a2, 76f
                  and          a4, t6, t6
                  nop
                  sltiu        s10, a4, -571
72:               bltu         s3, s6, 89f
                  sltiu        s3, s6, -1486
                  sra          a1, a5, s2
                  andi         zero, a2, 571
76:               slli         t2, t5, 17
                  blt          a6, t2, 92f
                  nop
                  srl          t3, t5, ra
                  srai         t2, s4, 29
                  slti         sp, s9, 1830
                  sll          gp, ra, gp
                  slli         t3, t0, 20
                  bgeu         a4, a2, 85f
85:               slt          t1, a0, gp
                  bltu         zero, s10, 95f
                  slli         a0, a6, 7
                  slti         ra, s1, 1235
89:               sltu         gp, s5, s5
                  auipc        a0, 977668
                  xor          t6, t4, a3
92:               bne          a7, s3, 105f
                  auipc        s7, 605464
                  sltiu        a1, a1, -2012
95:               addi         t4, s7, 767
                  slt          s7, s8, zero
                  sltiu        s1, s10, 1855
                  slti         t5, a5, -1671
                  add          s11, sp, s1
                  sltu         t2, s6, a4
                  or           s10, s3, ra
                  beq          s2, s6, 114f
                  srai         a7, s6, 18
                  and          s9, sp, s10
105:              lui          a6, 560935
                  srl          s2, a5, a5
                  sltu         s7, a3, sp
                  srl          t6, s1, a1
                  lui          a7, 219541
                  bne          a1, s3, 111f
111:              auipc        t2, 474363
                  sra          t1, a1, zero
                  auipc        a6, 583309
114:              bgeu         a7, s10, 125f
                  slli         t5, a6, 14
                  slt          s9, a3, s1
                  srli         s7, gp, 12
                  add          s8, a7, s3
                  xor          t6, s8, s4
                  blt          a4, s6, 121f
121:              lui          a7, 287244
                  and          t2, t1, a0
                  sll          a4, t2, ra
                  srai         t1, s8, 5
125:              srai         zero, s5, 0
                  addi         s0, t5, 804
                  slli         t0, t4, 7
                  slt          t1, s10, s10
                  sltu         t4, a0, s0
                  bge          a5, a4, 136f
                  bge          a3, t6, 148f
                  lui          a0, 1010704
                  bne          t5, s11, 140f
                  sll          s9, s11, a7
                  slt          t4, t0, t1
136:              bne          a6, a3, 142f
                  srai         t5, t6, 6
                  bgeu         s9, tp, 153f
                  andi         s9, s7, -1885
140:              srl          a3, s11, s8
                  andi         s10, t6, -1625
142:              slti         s1, a1, -997
                  xori         s6, a4, 460
                  srai         s8, t1, 14
                  lui          s6, 114993
                  slt          s10, s2, a5
                  srai         t0, s2, 31
148:              add          s9, s2, a6
                  sub          s8, sp, s10
                  sll          t6, s4, s6
                  bltu         s2, s8, 160f
                  bltu         t0, a7, 162f
153:              xor          a1, a7, a7
                  bltu         t2, a0, 159f
                  xori         s2, sp, 1287
                  srai         s8, a1, 1
                  slli         sp, a4, 29
                  bgeu         s3, a5, 159f
159:              bne          ra, a1, 167f
160:              nop
                  srl          s1, s7, s7
162:              ori          s7, a0, -2025
                  slli         gp, s8, 20
                  andi         s10, tp, -1005
                  srl          gp, a2, tp
                  blt          a1, s4, 167f
167:              beq          gp, s9, 184f
                  srl          zero, a0, a5
                  beq          a4, t1, 176f
                  srli         s9, zero, 18
                  bne          a1, zero, 181f
                  blt          a7, tp, 173f
173:              or           s3, s2, a4
                  srli         sp, s6, 22
                  sltiu        t5, s5, -313
176:              bgeu         s2, s9, 194f
                  slt          s5, a1, s9
                  or           s7, s1, s11
                  bge          s5, s9, 190f
                  bgeu         gp, a5, 188f
181:              addi         t4, s10, 1988
                  auipc        t0, 638973
                  sltu         a6, a0, t6
184:              nop
                  blt          a1, t4, 200f
                  nop
                  sra          tp, t2, a3
188:              blt          sp, ra, 205f
                  sltu         s11, s0, s1
190:              sltu         ra, t3, s8
                  bge          t4, t6, 202f
                  ori          s2, a0, -886
                  and          s0, a1, t2
194:              ori          gp, gp, -803
                  slt          s10, s0, s0
                  bne          s8, zero, 216f
                  sub          t1, a0, s11
                  addi         tp, a7, -806
                  bgeu         s4, s5, 208f
200:              srai         s0, s11, 13
                  sll          t0, s3, s7
202:              sltu         ra, s11, s4
                  ori          s9, t0, -937
                  auipc        a0, 543460
205:              auipc        s11, 1046865
                  xori         s8, s0, 1795
                  bge          t5, a4, 212f
208:              blt          s11, a0, 220f
                  beq          t6, sp, 222f
                  blt          a0, t4, 216f
                  ori          t0, t1, 1245
212:              slt          t2, gp, a0
                  bgeu         ra, t0, 228f
                  slt          ra, a2, a3
                  xori         sp, a7, -285
216:              auipc        t0, 17387
                  lui          s5, 235069
                  or           s5, t3, s4
                  beq          s9, s6, 230f
220:              addi         s6, t1, -129
                  sltu         gp, a7, s7
222:              srli         s7, a5, 3
                  bgeu         ra, t4, 229f
                  lui          t1, 531986
                  nop
                  or           t4, s1, s8
                  bge          a3, s6, 237f
228:              andi         gp, s2, 1222
229:              addi         s10, a2, 1524
230:              bne          gp, zero, 248f
                  slti         gp, zero, -380
                  sll          tp, s4, t4
                  or           s8, a6, a7
                  srli         s8, s11, 29
                  and          a1, t0, a3
                  slt          s3, a5, t4
237:              slti         tp, t4, -252
                  auipc        sp, 772159
                  bgeu         s11, a5, 249f
                  srl          s6, t1, gp
                  sltiu        a7, t0, 800
                  sra          t0, s0, a7
                  or           s0, zero, s10
                  blt          a0, s4, 252f
                  or           a7, a6, a3
                  lui          tp, 161690
                  sub          a0, s8, s11
248:              sub          tp, a4, a0
249:              slti         s0, s3, 1050
                  xor          t0, ra, s8
                  srl          t2, a3, tp
252:              and          s2, a5, t5
                  or           s7, s8, s1
                  bge          s0, s11, 263f
                  slli         ra, s3, 13
                  ori          s2, a6, 642
                  bgeu         t3, s10, 266f
                  add          s7, gp, ra
                  xori         s0, a6, -520
                  slti         zero, a5, -1576
                  and          s5, a3, s3
                  xori         s1, t1, 1224
263:              srl          t0, t0, a3
                  lui          s11, 451672
                  sltu         gp, s1, a7
266:              bge          s6, s11, 267f
267:              slti         s3, t4, -1149
                  ori          s11, a5, -1657
                  or           t3, tp, t0
                  slti         s11, a4, 239
                  blt          a6, a2, 288f
                  bltu         s3, gp, 287f
                  addi         t0, tp, -1343
                  srl          s0, a7, ra
                  xor          ra, a6, s6
                  beq          a7, a4, 286f
                  sub          s0, t0, zero
                  auipc        t2, 417224
                  srai         a7, a2, 28
                  bge          zero, s5, 288f
                  slt          t6, a5, t1
                  sll          s8, s9, s0
                  sll          s11, tp, a1
                  blt          s7, a5, 294f
                  srli         gp, a3, 24
286:              and          a3, s11, a6
287:              srl          a0, a4, a0
288:              andi         a0, t3, 539
                  slt          a0, a5, s1
                  blt          a1, t1, 308f
                  nop
                  nop
                  blt          s10, s10, 299f
294:              blt          s5, t0, 300f
                  nop
                  xori         a3, s10, -1838
                  slt          t0, tp, s9
                  srli         s7, a3, 28
299:              and          a7, a5, a1
300:              srai         sp, a6, 15
                  bne          t3, a4, 306f
                  sltu         s11, s10, t1
                  and          t2, t4, a3
                  slli         t5, sp, 11
                  add          s11, s1, s3
306:              or           t2, zero, sp
                  lui          s10, 565622
308:              slli         gp, s0, 17
                  ori          a0, s11, 881
                  or           t6, tp, ra
                  ori          s10, s6, -570
                  xor          a0, a3, zero
                  sub          a6, a1, s1
                  bgeu         zero, t6, 326f
                  slti         t1, s1, -245
                  sub          s9, tp, s7
                  beq          a4, t0, 325f
                  bge          s8, s0, 328f
                  bne          s6, s1, 326f
                  sra          a6, s11, t6
                  bge          t4, a0, 341f
                  blt          t4, t1, 332f
                  add          s9, t3, a4
                  sra          s10, a4, t1
325:              sltu         s7, t4, s7
326:              bne          t6, s4, 334f
                  ori          a7, s0, -909
328:              sll          s3, s8, s0
                  addi         a3, t4, -173
                  andi         s7, s6, 66
                  nop
332:              andi         a6, s10, 395
                  srl          s10, sp, ra
334:              bge          a1, gp, 345f
                  bgeu         s1, t3, 350f
                  sll          sp, s7, s7
                  and          t0, s8, s7
                  bltu         s1, t1, 356f
                  ori          ra, s8, -676
                  slt          s2, tp, t3
341:              slt          s5, s0, s11
                  bne          a1, s4, 353f
                  sll          s3, zero, zero
                  sll          t1, a0, a5
345:              srai         s6, a5, 27
                  slli         sp, a7, 14
                  nop
                  slt          s5, s8, a0
                  slli         t6, s9, 20
350:              sltiu        s7, sp, -432
                  nop
                  xori         a3, t4, 1943
353:              sltiu        t5, a6, 652
                  srai         gp, gp, 0
                  or           zero, t2, s11
356:              sltiu        t6, sp, 1249
                  andi         tp, s9, -648
                  sltu         zero, a5, s3
                  bltu         a0, t0, 368f
                  slt          ra, a5, a4
                  slli         t0, a5, 31
                  addi         tp, ra, -1547
                  beq          t1, t2, 368f
                  xor          s7, s7, gp
                  ori          t3, s4, -1810
                  xor          zero, s6, gp
                  blt          s2, tp, 376f
368:              srl          s7, s3, t2
                  nop
                  slti         s5, s2, -1805
                  sra          t1, gp, s0
                  sltu         zero, s10, a1
                  bne          s7, a0, 390f
                  lui          s1, 221550
                  bgeu         a2, s2, 376f
376:              slti         t1, s3, 1994
                  or           sp, s10, a7
                  sub          a3, a1, s1
                  sub          a6, a0, s11
                  sll          ra, a4, t3
                  bne          a5, zero, 394f
                  bgeu         s2, ra, 393f
                  addi         t2, t1, -341
                  slti         s2, sp, -456
                  sub          sp, a0, t0
                  srl          t4, s1, a4
                  sll          s5, s5, s6
                  xori         a6, a7, 269
                  nop
390:              slt          t4, zero, s1
                  sra          s1, s3, a2
                  srl          s5, ra, ra
393:              slti         sp, t6, 139
394:              xor          sp, s2, s9
                  lui          s0, 276836
                  addi         s0, s1, 1479
                  xori         a4, s9, 145
                  slt          s1, s9, a0
                  blt          s6, s9, 400f
400:              auipc        a0, 611061
                  bgeu         a3, tp, 411f
                  sra          s7, s3, tp
                  slt          s6, s9, a7
                  beq          t3, tp, 413f
                  or           zero, a2, s9
                  addi         s8, t6, 1685
                  srl          s5, t5, s3
                  add          s9, t1, t4
                  sltiu        tp, s7, 1305
                  and          a6, s9, sp
411:              bgeu         s4, a7, 416f
                  sltiu        s11, s0, -589
413:              bge          a2, zero, 423f
                  beq          t4, s1, 423f
                  lui          s8, 353952
416:              andi         s10, tp, -220
                  slti         s5, s10, 2037
                  addi         t3, zero, -1 #init loop 0 counter
                  auipc        a3, 1026268
                  srl          t1, a4, s2
                  srl          gp, s7, t1
                  sltu         s1, s10, s11
                  addi         s8, zero, 18 #init loop 0 limit
sub_3_4_0_t:      ori          a1, s8, -654
                  xori         t4, s10, 1857
                  srli         gp, a3, 3
                  addi         t3, t3, 5 #update loop 0 counter
                  srl          a3, a1, s11
                  sra          s0, a0, zero
                  addi         t6, s0, -681
                  sltiu        a6, t6, -837
                  srli         sp, zero, 8
                  slli         s11, t0, 25
                  sra          sp, a1, t3
                  lui          s0, 583126
                  bltu         t3, s8, sub_3_4_0_t #branch for loop 0
                  slt          s3, a7, s9
                  nop
                  slt          s7, t3, a7
                  bne          s0, t4, 433f
                  slti         t4, s9, -370
                  blt          s4, a3, 430f
423:              bne          a0, ra, 440f
                  addi         a1, tp, 310
                  blt          t1, s9, 440f
                  sltu         a7, a7, t4
                  or           s3, a0, gp
                  lui          s1, 648416
                  xor          t5, ra, t0
430:              slli         s10, a1, 28
                  xor          s8, a7, a4
                  beq          a7, a2, 438f
433:              bge          a5, a7, 451f
                  srli         a3, a0, 20
                  slti         a6, ra, 672
                  ori          s1, s0, -1441
                  srl          t0, s4, t1
438:              andi         a3, s6, -1447
                  sll          s7, gp, a7
440:              srl          t5, a6, s10
                  xori         a3, a5, 351
                  bltu         s9, s0, 443f
443:              slti         s6, s6, 300
                  add          t2, s4, t4
                  sub          s9, sp, t4
                  slt          s11, s6, zero
                  sltiu        tp, t5, -950
                  nop
                  slti         a1, t1, 765
                  bge          s8, t5, 460f
451:              ori          s6, zero, 1404
                  or           ra, sp, a3
                  beq          gp, a2, 464f
                  or           a6, t2, a3
                  slti         s2, t5, -1970
                  and          s1, s4, t3
                  srai         sp, s3, 20
                  lui          s6, 508699
                  bgeu         s7, ra, 460f
460:              or           t4, a5, s2
                  addi         a1, zero, 7 #init loop 0 counter
                  addi         s1, zero, -15 #init loop 0 limit
                  lui          s6, 510001
                  sra          t1, s11, t3
                  add          a4, a6, s2
                  srli         s10, s10, 3
                  and          tp, t6, t1
                  srl          a6, sp, a3
                  ori          t3, s7, -1648
                  slti         s7, a3, 1638
                  srai         t4, t4, 14
                  slti         s8, a2, 1164
                  xor          t0, a3, s6
                  lui          t1, 50934
                  xori         zero, s7, 1970
sub_3_6_0_t:      ori          zero, t2, -187
                  sub          s8, s11, s9
                  xori         a7, s2, 2023
                  ori          zero, s4, 846
                  addi         a1, a1, -7 #update loop 0 counter
                  or           t6, zero, s11
                  or           zero, a7, ra
                  andi         t1, s11, 1575
                  lui          t1, 798706
                  sub          t0, zero, a2
                  sltiu        t3, a6, 589
                  add          a3, s7, s6
                  addi         t0, s10, 1282
                  bge          a1, s1, sub_3_6_0_t #branch for loop 0
                  srli         t6, s11, 21
                  bge          a0, tp, 472f
                  or           t0, s10, t0
                  auipc        t1, 116333
464:              blt          t5, gp, 474f
                  bge          s0, t2, 470f
                  sltiu        a0, a3, -525
                  sltu         gp, a4, t1
                  slt          s2, a1, s9
                  add          s6, sp, s2
470:              beq          s8, t3, 483f
                  blt          zero, s5, 483f
472:              beq          a1, s2, 473f
473:              add          s2, s8, a6
474:              beq          s5, s11, 483f
                  sra          s5, t4, s8
                  srai         t1, t1, 4
                  slli         a6, a4, 17
                  xori         sp, t3, 1381
                  slli         s5, s2, 7
                  bgeu         t1, t0, 483f
                  slti         s1, t4, -1202
                  sltiu        a1, a6, 640
483:              addi         s0, s6, 1321
                  xor          s10, s1, a4
                  slti         s8, a3, 1550
                  auipc        gp, 706774
                  lui          a4, 244912
                  sra          t6, a3, t6
                  nop
                  add          a6, t5, t6
                  lw           ra, 4(a5)
                  sltu         s7, a0, a1
                  or           t4, t4, t2
                  addi         a5, a5, 16
                  slti         sp, a3, 446
722:              addi x2, x1, 1
722:              jalr x2, x2, 0
sub_5:            sltu         s3, t1, zero
                  addi         t1, s4, -187
                  addi         a5, a5, -12
                  xor          zero, s2, a3
                  ori          t5, s7, -1724
                  slli         t6, a6, 5
                  addi         s10, s9, -316
                  sw           ra, 4(a5)
                  sltiu        t4, sp, -830
                  sltu         t6, s9, a7
                  sub          t3, s8, t0
                  ori          s7, t5, 41
                  addi         s0, zero, -2 #init loop 0 counter
                  sra          t4, s4, sp
                  add          s6, a7, s0
                  srl          s5, tp, t6
                  sub          s7, s4, t4
                  srai         s2, t2, 17
                  auipc        a0, 924547
                  and          s7, t3, t4
                  addi         s1, zero, -12 #init loop 0 limit
                  nop
                  sub          t0, t0, a6
                  sll          t4, a1, s1
                  srl          a0, s2, s4
                  srl          t1, a5, s0
sub_5_1_0_t:      add          s5, s3, s9
                  ori          s9, s1, 1203
                  sltu         a4, zero, t4
                  addi         s0, s0, -7 #update loop 0 counter
                  sltu         a0, zero, gp
                  nop
                  sra          a6, sp, sp
                  bge          s0, s1, sub_5_1_0_t #branch for loop 0
                  sltu         s11, a7, t1
                  lui          s9, 161866
                  ori          s6, a5, -337
                  add          s2, a1, s7
                  slti         a7, a0, -66
                  slt          s2, s8, t5
                  sltu         s2, s4, a0
                  sltiu        s3, t6, 1489
                  sub          t3, s11, t0
                  bltu         s2, s0, 24f
                  beq          t0, s7, 25f
                  beq          sp, s3, 13f
                  xori         s9, tp, -329
                  bge          a0, t6, 25f
13:               bltu         s11, s7, 30f
                  srai         t1, a0, 8
                  xor          gp, t6, s10
                  lui          t5, 194242
                  slli         t5, s5, 3
                  slli         a4, t6, 30
                  bgeu         s10, t5, 28f
                  sll          zero, s11, t3
                  xor          s5, s1, t2
                  slli         s9, a0, 22
                  lui          gp, 349622
24:               add          t5, t6, a3
25:               sll          ra, gp, t5
                  sub          t5, s3, t6
                  sra          t5, a3, a4
28:               bge          s6, s4, 39f
                  auipc        s10, 587266
30:               sll          t0, t3, ra
                  bltu         a1, s9, 40f
                  bgeu         a0, tp, 34f
                  slti         t2, s11, -31
34:               lui          t2, 800922
                  bltu         t6, a7, 47f
                  nop
                  bltu         gp, zero, 46f
                  bgeu         s10, sp, 58f
39:               beq          s6, s6, 56f
40:               bge          ra, a3, 43f
                  bgeu         ra, t6, 47f
                  slli         a7, a1, 31
43:               bge          tp, s4, 57f
                  auipc        gp, 650653
                  sltu         s2, s6, s6
46:               bne          t1, t3, 55f
47:               bltu         s0, s5, 65f
                  nop
                  srai         a6, s7, 23
                  or           a1, t5, a4
                  bgeu         ra, t6, 63f
                  addi         a4, tp, 1255
                  beq          a1, s8, 71f
                  xor          s8, tp, a3
55:               slli         s8, a6, 2
56:               or           a0, a0, zero
57:               slli         t6, s8, 23
58:               lui          t3, 110264
                  addi         a1, zero, 6 #init loop 0 counter
                  slli         tp, s6, 23
                  addi         s3, zero, 13 #init loop 0 limit
                  addi         t2, s7, 292
                  nop
                  sltu         t0, a1, a6
                  slli         a0, s3, 8
                  addi         a0, s0, -1478
sub_5_0_0_t:      ori          a7, s0, 719
                  auipc        t5, 756109
                  addi         a1, a1, 3 #update loop 0 counter
                  nop
                  bltu         a1, s3, sub_5_0_0_t #branch for loop 0
                  and          s10, s9, a5
                  sra          t6, t1, s2
                  lui          t4, 1010600
                  auipc        s11, 11617
                  sll          s7, a3, s2
63:               sll          s2, zero, s11
                  blt          tp, t5, 66f
65:               sll          a6, s10, sp
66:               bltu         t6, a1, 68f
                  andi         s3, s5, -1580
68:               nop
                  sltiu        s3, a3, 37
                  srai         a1, s5, 14
71:               add          t1, t0, t6
                  slli         s6, s8, 3
                  and          t2, a7, s3
                  blt          s9, a7, 83f
                  srli         s7, s2, 2
                  sltiu        s1, s10, 1341
                  srai         s9, a1, 27
                  auipc        s1, 507182
                  sll          a1, zero, s3
                  srai         gp, t0, 10
                  srli         t3, a1, 17
                  bgeu         a3, a7, 101f
83:               sltu         a1, t0, a4
                  sub          a4, s5, a1
                  ori          a0, gp, 100
                  add          s8, a7, s2
                  sltu         t4, s0, s7
                  lui          a0, 542360
                  sra          a6, t3, t4
                  auipc        s3, 756076
                  slli         a0, t3, 21
                  sll          t2, a6, a0
                  and          t4, a6, a2
                  slti         t4, s5, 1435
                  and          t4, a0, t1
                  nop
                  blt          a4, t2, 98f
98:               slti         s10, t6, 674
                  bltu         gp, s10, 116f
                  blt          s0, a0, 108f
101:              slli         s2, t1, 9
                  ori          sp, ra, -1907
                  add          t0, zero, s4
                  slti         tp, s5, -1845
                  bltu         s5, s8, 119f
                  addi         s3, t6, 1508
                  or           s5, gp, tp
108:              srai         s10, t5, 20
                  add          t0, s8, s2
                  auipc        a7, 255019
                  sra          ra, sp, s10
                  srai         s3, t5, 11
                  ori          a3, s1, -806
                  xor          t4, s11, s11
                  bltu         s1, gp, 124f
116:              slti         t2, t0, -71
                  srl          s8, t6, tp
                  bne          t1, sp, 124f
119:              slt          t5, s6, s4
                  addi         t0, t1, 1526
                  sub          a6, s2, s2
                  sll          t0, ra, t4
                  sltu         a6, t1, sp
124:              srl          s2, s2, s3
                  add          t2, t4, a3
                  sltu         t1, s2, s8
                  sub          s2, a3, sp
                  bne          a7, s5, 141f
                  slti         tp, s5, -1836
                  xori         sp, tp, -585
                  sra          s0, a2, t0
                  slli         zero, sp, 27
                  sll          s3, s5, zero
                  slti         s2, s9, -864
                  xori         s11, zero, 1652
                  lui          s8, 810830
                  bgeu         zero, ra, 146f
                  addi         s11, a6, 564
                  beq          a2, a4, 148f
                  blt          s1, s2, 141f
141:              and          a0, t3, a0
                  lui          s1, 529010
                  bne          tp, s6, 148f
                  slti         s7, s7, -1237
                  xori         t3, a3, -319
146:              sll          tp, a0, s5
                  bne          s10, t5, 148f
148:              xor          t2, a7, t5
                  xor          t6, t2, t3
                  and          a6, a3, s9
                  lui          t3, 170325
                  lw           ra, 4(a5)
                  addi         a5, a5, 12
                  slti         t6, a0, -318
                  nop
                  andi         t3, sp, 89
                  xor          t4, s8, a7
                  slt          a1, a7, a7
                  and          s10, a5, gp
                  nop
210:              addi x1, x1, 0
210:              jalr x1, x1, 0
sub_2:            and          s2, a3, a2
                  srli         s6, a5, 25
                  add          t2, s7, s7
                  addi         a5, a5, -8
                  slti         s11, t0, 117
                  srl          s2, t5, a2
                  srai         a3, s7, 14
                  sw           ra, 4(a5)
                  addi         s0, s7, 901
                  slli         s11, s10, 5
                  xori         s2, a1, -1107
                  nop
                  blt          a4, t3, sub_2_j4 #branch to jump instr
                  srl          s2, t1, s0
                  srl          a4, t2, s3
                  and          t3, a6, tp
                  sub          s6, a0, a0
sub_2_j4:         jal          ra, sub_3 #jump sub_2 -> sub_3
                  addi         a1, zero, 10 #init loop 1 counter
                  addi         t0, zero, 17 #init loop 1 limit
                  slli         t1, s0, 25
                  addi         s6, s5, 1030
                  auipc        a4, 953925
                  srli         s6, tp, 26
sub_2_0_1_t:      xor          t3, gp, a3
                  or           t2, s1, t2
                  sra          zero, s8, tp
                  addi         a1, a1, 3 #update loop 1 counter
                  sltiu        t4, a0, -1864
                  slli         s2, a3, 7
                  xor          s5, zero, s1
                  addi         a7, zero, -9 #init loop 0 counter
                  srl          s3, s5, t1
                  addi         s8, zero, -11 #init loop 0 limit
                  sll          t1, a1, a5
                  nop
sub_2_0_0_t:      ori          a3, s3, -1362
                  addi         a7, a7, -7 #update loop 0 counter
                  slli         t1, s0, 30
                  sub          t1, a4, s10
                  bge          a7, s8, sub_2_0_0_t #branch for loop 0
                  sra          s2, a1, s7
                  andi         s2, s6, -1667
                  or           zero, s3, t6
                  sra          t5, a7, t3
                  blt          a1, t0, sub_2_0_1_t #branch for loop 1
                  ori          t3, t5, 463
                  addi         s3, a6, 1614
                  lui          sp, 964109
                  blt          t2, t4, 10f
                  slli         t3, s0, 26
                  blt          t1, gp, 16f
                  sltu         s1, s3, ra
                  slt          a3, s1, s2
                  ori          s3, ra, 296
                  bltu         t6, a1, 26f
                  or           zero, s6, s4
10:               slti         a7, s2, 230
                  or           t6, s10, a2
                  beq          t4, zero, 23f
                  andi         a4, s2, 914
                  beq          t4, t2, 24f
                  slt          s7, a2, t1
16:               lui          ra, 682736
                  bge          tp, a4, 27f
                  addi         a7, a2, 1989
                  blt          s11, t2, 26f
                  sltiu        s7, gp, -1507
                  bgeu         s6, a1, 31f
                  and          s5, s9, a7
23:               sub          s9, tp, a5
24:               sra          s0, a7, t0
                  xor          s2, t4, s10
26:               blt          s6, a7, 32f
27:               xor          s1, s1, s4
                  ori          a1, tp, 148
                  auipc        t4, 877281
                  sra          t4, a6, ra
31:               or           t0, s2, s6
32:               bge          s5, a2, 39f
                  nop
                  beq          t1, s0, 39f
                  sra          ra, sp, s10
                  bne          t1, s3, 37f
37:               and          s6, t1, s5
                  sub          zero, a7, s4
39:               bltu         a5, t3, 56f
                  bltu         s2, t5, 45f
                  sll          s1, t1, tp
                  sltiu        t0, s5, -1733
                  auipc        s0, 312214
                  sra          a0, s10, a0
45:               addi         s6, s6, 1807
                  andi         t4, a7, -356
                  beq          a5, t3, 56f
                  sra          s3, s5, s8
                  bne          s0, s0, 50f
50:               beq          a7, s9, 56f
                  xori         s7, t4, 673
                  bge          tp, t4, 53f
53:               sltiu        s3, t1, 21
                  lui          gp, 178974
                  or           t5, s10, a5
56:               andi         t5, a2, -1613
                  lw           ra, 4(a5)
                  addi         s3, s1, -1964
                  ori          a0, tp, -9
                  addi         a5, a5, 8
                  auipc        a1, 97599
                  slt          t1, a5, sp
                  andi         s1, a0, 1808
                  sltiu        a4, s1, -541
                  or           s3, a0, s4
                  sltu         tp, tp, s2
                  add          s0, s3, t4
115:              addi x21, x1, 1
115:              jalr x21, x21, 0
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
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x12, x15, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_2:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x12, x15, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_3:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x12, x15, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_4:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x12, x15, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_5:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x12, x15, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_6:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x12, x15, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_7:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x12, x15, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_8:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x12, x15, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_9:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x12, x15, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_10:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x12, x15, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_11:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x12, x15, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_12:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x12, x15, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_13:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x12, x15, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_14:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x12, x15, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_15:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x12, x15, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x12, x15, zero
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x13, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x13, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x13, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x13, x19, ecall_handler
                  li x19, 0x1
                  beq x13, x19, instr_fault_handler
                  li x19, 0x5
                  beq x13, x19, load_fault_handler
                  li x19, 0x7
                  beq x13, x19, store_fault_handler
                  li x19, 0xc
                  beq x13, x19, pt_fault_handler
                  li x19, 0xd
                  beq x13, x19, pt_fault_handler
                  li x19, 0xf
                  beq x13, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
                  1: la x20, test_done
                  jalr x1, x20, 0

ecall_handler:    
                  la x13, _start
                  sw x0, 0(x13)
                  sw x1, 4(x13)
                  sw x2, 8(x13)
                  sw x3, 12(x13)
                  sw x4, 16(x13)
                  sw x5, 20(x13)
                  sw x6, 24(x13)
                  sw x7, 28(x13)
                  sw x8, 32(x13)
                  sw x9, 36(x13)
                  sw x10, 40(x13)
                  sw x11, 44(x13)
                  sw x12, 48(x13)
                  sw x13, 52(x13)
                  sw x14, 56(x13)
                  sw x15, 60(x13)
                  sw x16, 64(x13)
                  sw x17, 68(x13)
                  sw x18, 72(x13)
                  sw x19, 76(x13)
                  sw x20, 80(x13)
                  sw x21, 84(x13)
                  sw x22, 88(x13)
                  sw x23, 92(x13)
                  sw x24, 96(x13)
                  sw x25, 100(x13)
                  sw x26, 104(x13)
                  sw x27, 108(x13)
                  sw x28, 112(x13)
                  sw x29, 116(x13)
                  sw x30, 120(x13)
                  sw x31, 124(x13)
                  la x20, write_tohost
                  jalr x0, x20, 0

instr_fault_handler:
                  add x15, x12, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

load_fault_handler:
                  add x15, x12, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

store_fault_handler:
                  add x15, x12, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

ebreak_handler:   
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x15, x12, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

illegal_instr_handler:
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x15, x12, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  add x15, x12, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
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
