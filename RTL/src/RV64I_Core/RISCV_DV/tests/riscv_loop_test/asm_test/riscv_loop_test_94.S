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
                  li x23, 0x40000100
                  csrw 0x301, x23
kernel_sp:        
                  la x24, kernel_stack_end

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
                  li x0, 0x1
                  li x1, 0xfdef48ea
                  li x2, 0xad59fa5e
                  li x3, 0x7797b23a
                  li x4, 0x802299d
                  li x5, 0x0
                  li x6, 0xf9e92a03
                  li x7, 0x8
                  li x8, 0xffa74685
                  li x9, 0x0
                  li x10, 0x0
                  li x11, 0xb
                  li x12, 0x80000000
                  li x13, 0xf7e02a34
                  li x14, 0xfc1ac754
                  li x15, 0x0
                  li x16, 0xba5b65b4
                  li x17, 0xf328ac4b
                  li x18, 0xae3552cd
                  li x19, 0x80000000
                  li x20, 0xd
                  li x21, 0x0
                  li x22, 0x7
                  li x23, 0xf5020024
                  li x25, 0xef3f338d
                  li x26, 0x0
                  li x27, 0x0
                  li x29, 0x0
                  li x30, 0xd
                  li x31, 0xf52dfb73
                  la x28, user_stack_end
main:             addi         a3, zero, 9 #init loop 1 counter
                  slti         a1, sp, -1118
                  slt          a5, s8, s11
                  add          t6, s8, zero
                  srl          t6, t3, a0
                  xor          t2, a5, s0
                  sltu         s9, a6, a1
                  addi         s6, zero, -9 #init loop 1 limit
                  andi         a5, tp, -1434
main_6_1_t:       sub          s3, a4, s7
                  auipc        sp, 850395
                  auipc        a2, 429575
                  slli         t1, tp, 17
                  addi         a3, a3, -3 #update loop 1 counter
                  addi         s11, zero, 8 #init loop 0 counter
                  slt          s1, a4, ra
                  addi         ra, zero, -12 #init loop 0 limit
main_6_0_t:       or           s3, a3, t1
                  addi         s11, s11, -2 #update loop 0 counter
                  srl          zero, s7, gp
                  sub          a5, sp, zero
                  add          zero, t4, t3
                  beq          s11, ra, main_6_0_t #branch for loop 0
                  addi         s2, t2, 1077
                  xori         t0, t6, 1953
                  slti         t6, a1, 1903
                  xor          a0, s8, ra
                  slt          t4, ra, t0
                  and          zero, t6, ra
                  sltu         a2, s10, s6
                  srl          s5, t1, tp
                  or           a6, t2, a6
                  bge          a3, s6, main_6_1_t #branch for loop 1
                  xor          t2, a0, s10
                  addi         t6, zero, 6 #init loop 0 counter
                  addi         tp, zero, 6 #init loop 0 limit
                  or           a0, a7, t1
                  srli         a1, a3, 18
main_14_0_t:      lui          s3, 618276
                  xori         s9, tp, 98
                  addi         t6, t6, -5 #update loop 0 counter
                  srl          sp, a6, a2
                  bgeu         t6, tp, main_14_0_t #branch for loop 0
                  auipc        s9, 313012
                  addi         a5, zero, 10 #init loop 0 counter
                  sll          s7, t4, s10
                  sra          a6, t1, a7
                  addi         t0, s4, -1058
                  addi         s10, zero, 10 #init loop 0 limit
                  srai         s4, a7, 0
                  sub          s5, a3, a0
                  auipc        s4, 609166
                  auipc        a7, 874264
                  sltiu        a1, zero, -710
                  sub          a7, s5, sp
                  sub          a6, s2, a7
                  xor          a3, s0, ra
main_3_0_t:       slt          t0, t0, t1
                  slt          t1, s7, t6
                  addi         a5, a5, -8 #update loop 0 counter
                  sra          sp, t4, s10
                  sra          t1, a5, s4
                  ori          a7, t4, 238
                  bgeu         a5, s10, main_3_0_t #branch for loop 0
                  sub          a3, s4, s11
                  addi         a2, zero, 3 #init loop 0 counter
                  slti         s11, s8, 997
                  addi         a1, zero, 15 #init loop 0 limit
                  sub          tp, s0, a6
                  lui          a6, 670939
main_7_0_t:       slti         sp, s10, 502
                  and          s11, zero, a7
                  addi         a2, a2, 4 #update loop 0 counter
                  lui          sp, 821831
                  beq          a2, a1, main_7_0_t #branch for loop 0
                  auipc        s9, 227352
                  addi         t1, zero, 7 #init loop 0 counter
                  nop
                  addi         s5, t6, -650
                  auipc        a1, 372628
                  sub          a1, s11, ra
                  nop
                  sll          s4, s0, sp
                  lui          a3, 605271
                  nop
                  addi         s0, zero, 6 #init loop 0 limit
main_5_0_t:       sltu         s4, a6, a5
                  andi         s11, a1, 1599
                  sll          a3, ra, s9
                  slli         t5, s7, 25
                  addi         t1, t1, -4 #update loop 0 counter
                  sll          s10, a7, s11
                  bgeu         t1, s0, main_5_0_t #branch for loop 0
                  srai         zero, s1, 10
                  addi         t5, zero, 2 #init loop 1 counter
                  srli         s3, s1, 1
                  slti         s7, t0, 1040
                  sra          s9, a0, s3
                  slt          s7, zero, s8
                  srl          a2, s2, s11
                  addi         t6, zero, 6 #init loop 1 limit
                  xori         a3, s6, 863
                  slti         a5, t1, 1958
main_11_1_t:      nop
                  sub          s11, a5, sp
                  slli         tp, s3, 11
                  addi         t5, t5, 8 #update loop 1 counter
                  addi         ra, zero, 6 #init loop 0 counter
                  slt          a6, a3, t6
                  sltu         zero, s5, t1
                  srli         t2, s10, 18
                  addi         gp, zero, 6 #init loop 0 limit
                  sll          s6, s6, t1
main_11_0_t:      auipc        zero, 552120
                  addi         ra, ra, -5 #update loop 0 counter
                  sub          s0, s8, t1
                  srai         a3, sp, 6
                  andi         t1, gp, -766
                  sll          s2, a7, a4
                  andi         a7, t1, 187
                  and          t2, t0, t1
                  bgeu         ra, gp, main_11_0_t #branch for loop 0
                  or           s9, a6, zero
                  sltu         t4, sp, tp
                  sra          tp, tp, s4
                  add          s9, s6, s11
                  bltu         t5, t6, main_11_1_t #branch for loop 1
                  lui          t2, 938106
                  addi         ra, zero, 10 #init loop 0 counter
                  addi         a3, zero, 8 #init loop 0 limit
                  andi         s0, s1, -718
                  slt          t0, s6, s9
                  addi         t0, t4, 289
main_17_0_t:      addi         zero, a7, -1554
                  addi         ra, ra, -5 #update loop 0 counter
                  srai         a0, t6, 8
                  srai         s3, t1, 21
                  slt          s10, s5, s10
                  sltu         a0, s11, a0
                  sub          s2, s7, sp
                  or           s9, t1, a5
                  and          t6, ra, t2
                  sll          s1, s4, s0
                  sltiu        a6, ra, -1567
                  auipc        a6, 328833
                  bgeu         ra, a3, main_17_0_t #branch for loop 0
                  xor          gp, t4, s2
                  addi         s2, zero, 9 #init loop 0 counter
                  sra          t4, a1, a6
                  nop
                  ori          s7, s6, 616
                  auipc        a3, 79275
                  addi         s9, zero, 13 #init loop 0 limit
main_4_0_t:       or           t0, tp, t2
                  sltiu        ra, gp, -1149
                  xori         a7, ra, -110
                  andi         a6, s11, 58
                  addi         s2, s2, 2 #update loop 0 counter
                  andi         t6, a1, 1908
                  sub          s6, t6, ra
                  srl          gp, s3, s2
                  add          t6, a3, t6
                  ori          t2, s5, -227
                  addi         a5, s10, -166
                  lui          s7, 981287
                  addi         s6, a3, -643
                  srli         t5, ra, 21
                  srli         s7, t6, 11
                  sltiu        a7, a5, 1921
                  sub          t0, a5, a7
                  bne          s2, s9, main_4_0_t #branch for loop 0
                  ori          t2, a3, -107
                  addi         a2, zero, -2 #init loop 1 counter
                  xor          s10, s11, gp
                  addi         s3, zero, -16 #init loop 1 limit
main_16_1_t:      or           s4, s10, s6
                  addi         a7, t0, 696
                  addi         a2, a2, -7 #update loop 1 counter
                  auipc        a3, 230845
                  nop
                  addi         gp, zero, 1 #init loop 0 counter
                  sll          t5, s1, t4
                  addi         s2, zero, 6 #init loop 0 limit
                  sltu         s10, a4, tp
main_16_0_t:      slt          t2, s9, s8
                  srai         s4, a7, 31
                  addi         gp, gp, 3 #update loop 0 counter
                  blt          gp, s2, main_16_0_t #branch for loop 0
                  srai         t6, s11, 9
                  bne          a2, s3, main_16_1_t #branch for loop 1
                  slti         tp, s9, -204
                  addi         t5, zero, 10 #init loop 1 counter
                  xor          t0, t3, a2
                  addi         gp, zero, 6 #init loop 1 limit
                  slti         zero, a7, -902
main_0_1_t:       xor          s4, t2, t5
                  addi         t5, t5, -10 #update loop 1 counter
                  sub          tp, tp, s7
                  addi         a6, zero, 5 #init loop 0 counter
                  sra          zero, a0, a3
                  addi         s2, zero, -5 #init loop 0 limit
main_0_0_t:       addi         s1, s3, 1717
                  slli         t1, t1, 4
                  addi         a6, a6, -10 #update loop 0 counter
                  bge          a6, s2, main_0_0_t #branch for loop 0
                  xor          a0, t6, s10
                  xori         ra, s0, 1474
                  sll          s9, tp, a5
                  bge          t5, gp, main_0_1_t #branch for loop 1
                  or           t4, s4, s10
                  addi         tp, zero, -2 #init loop 0 counter
                  addi         s10, t1, -692
                  auipc        s9, 514828
                  and          gp, a6, t5
                  srl          t2, t6, a4
                  srai         t6, s9, 10
                  andi         a5, a4, -1840
                  add          t2, a1, s8
                  andi         a7, t4, -538
                  addi         s3, zero, -3 #init loop 0 limit
                  and          t5, a0, s7
                  sub          s9, s4, zero
main_1_0_t:       sltu         gp, s10, s0
                  ori          a0, s1, 356
                  xori         s0, a2, 441
                  slti         a3, s2, 1194
                  addi         tp, tp, -9 #update loop 0 counter
                  or           a7, s11, t5
                  and          t1, s4, tp
                  or           s11, zero, s7
                  sub          s7, t0, s2
                  xori         a3, s10, -726
                  ori          t4, t3, 1079
                  srl          a0, t2, t3
                  bge          tp, s3, main_1_0_t #branch for loop 0
                  xor          sp, s4, ra
                  addi         a1, zero, -2 #init loop 0 counter
                  and          s1, t0, zero
                  lui          s2, 943007
                  andi         s3, s5, 593
                  sltiu        a7, s1, -1146
                  add          t5, t4, a1
                  sra          a5, t3, s0
                  andi         sp, s10, 1936
                  xor          tp, s3, s9
                  sltu         a5, t2, s2
                  auipc        gp, 965834
                  addi         s5, zero, -4 #init loop 0 limit
                  addi         s9, s2, 1618
                  slli         tp, s6, 5
                  lui          zero, 19830
                  sra          sp, a5, t0
main_13_0_t:      add          a5, t3, s11
                  sltu         a0, s10, s2
                  ori          a0, s6, -1444
                  slt          a0, a4, s0
                  slti         a5, s8, -595
                  addi         a1, a1, -2 #update loop 0 counter
                  slti         a7, s6, 18
                  andi         a3, t6, 1894
                  srl          s3, a1, t2
                  lui          t1, 852407
                  bge          a1, s5, main_13_0_t #branch for loop 0
                  ori          t6, s3, -137
                  addi         t2, zero, 0 #init loop 0 counter
                  srl          a2, t6, s3
                  srl          a5, gp, a7
                  lui          a6, 835338
                  add          t5, s4, a3
                  addi         s0, zero, -20 #init loop 0 limit
                  srl          s9, s7, a2
main_12_0_t:      xori         a2, s7, 1543
                  nop
                  addi         t2, t2, -10 #update loop 0 counter
                  and          gp, s6, s0
                  sltu         s2, tp, s1
                  slti         zero, ra, 1773
                  or           ra, s0, t5
                  bne          t2, s0, main_12_0_t #branch for loop 0
                  xor          zero, a3, s8
                  addi         a2, zero, 7 #init loop 0 counter
                  addi         a5, zero, 14 #init loop 0 limit
                  or           s5, a2, s2
main_8_0_t:       xor          a1, s5, zero
                  addi         a2, a2, 7 #update loop 0 counter
                  blt          a2, a5, main_8_0_t #branch for loop 0
                  sll          a3, gp, s9
                  addi         s3, zero, -1 #init loop 0 counter
                  nop
                  or           s4, s4, s11
                  add          t2, a0, a6
                  addi         a5, zero, -18 #init loop 0 limit
                  slt          s7, s9, s1
                  slt          s9, tp, s4
                  and          sp, t6, zero
main_9_0_t:       ori          t0, tp, -320
                  srai         t1, a7, 11
                  sll          tp, t6, s1
                  sra          s4, s7, s6
                  xori         a0, s6, 529
                  srai         zero, s9, 21
                  and          zero, a0, s6
                  sll          t1, s3, a0
                  sra          t4, a4, gp
                  slli         t0, t0, 5
                  addi         s3, s3, -7 #update loop 0 counter
                  and          s5, a3, t5
                  ori          t6, a3, 262
                  slti         a7, t3, 1522
                  bge          s3, a5, main_9_0_t #branch for loop 0
                  addi         s4, s3, 731
                  addi         a0, zero, 7 #init loop 0 counter
                  and          s0, s10, a1
                  andi         a5, s2, -584
                  addi         t4, zero, 7 #init loop 0 limit
                  slli         s1, a6, 3
                  srli         gp, s10, 6
                  sltiu        s7, t2, 143
                  sltu         a6, zero, s5
                  sltiu        t0, s4, -1482
                  srl          s4, s7, a6
                  nop
main_15_0_t:      xor          a5, a0, t0
                  nop
                  addi         a0, a0, -8 #update loop 0 counter
                  add          a2, a6, a0
                  xori         t6, s1, -175
                  addi         a7, s11, -1721
                  xor          ra, sp, s6
                  auipc        a7, 793797
                  bge          a0, t4, main_15_0_t #branch for loop 0
                  xori         gp, sp, -17
                  beq          s2, t6, 7f
                  and          t6, s11, s3
                  add          s0, tp, t6
                  ori          zero, s4, 747
                  srl          s11, t6, s7
                  beq          a5, a7, 6f
6:                bge          a5, t4, 8f
7:                slti         s1, t5, 860
8:                ori          a0, t5, -1316
                  or           s11, t5, s3
                  sll          t5, s3, zero
                  blt          s2, s0, 31f
                  lui          ra, 317903
                  or           t4, s11, s4
                  bgeu         t1, t5, 29f
                  andi         ra, a0, 1282
                  sll          t5, s11, t5
                  and          t0, ra, gp
                  sub          sp, a3, t2
                  sltiu        s3, t6, -129
                  ori          t1, s11, -23
                  sll          a0, sp, s8
                  bgeu         t3, a1, 28f
                  auipc        t5, 79483
                  srl          tp, s11, a5
                  lui          t6, 460209
                  addi         a1, zero, -7 #init loop 0 counter
                  srli         s1, ra, 6
                  add          s2, s2, s10
                  sll          s6, ra, t3
                  addi         a2, zero, 8 #init loop 0 limit
                  add          t2, a0, s9
                  xori         t5, s3, 1425
main_2_0_t:       add          a6, s2, s5
                  sll          a3, t6, s11
                  slli         a6, s7, 21
                  add          s6, s6, a4
                  addi         a1, a1, 5 #update loop 0 counter
                  xori         a3, a0, -46
                  sll          t2, t6, t5
                  slt          ra, s3, s2
                  addi         ra, s7, 1397
                  addi         s11, s0, -1949
                  slli         s9, t0, 16
                  bne          a1, a2, main_2_0_t #branch for loop 0
                  sll          s11, s0, sp
                  sra          gp, t0, s4
                  srli         s1, s8, 18
28:               sub          t0, a6, s11
29:               beq          s8, a1, 33f
                  or           a0, zero, t3
31:               srli         a6, t5, 14
                  sltu         s2, t2, t0
33:               andi         sp, s6, -1728
                  addi         s10, s4, 1414
                  xor          s0, a1, t0
                  bne          gp, a3, 43f
                  nop
                  sltu         a2, s2, a3
                  and          a3, zero, s8
                  nop
                  or           s9, s8, s6
                  sub          a1, t5, a5
                  la           s7, sub_1
                  nop
                  slt          s9, t5, tp
                  addi         s7, s7, 602
                  sub          a1, zero, a5
                  srl          gp, s8, t6
main_j3:          jalr         tp, s7, -602 #jump main -> sub_1
                  auipc        t5, 786942
                  xor          a5, a0, a1
                  add          a3, s5, t1
                  srai         t6, t1, 1
                  xor          t1, s9, s5
                  slli         a3, sp, 24
43:               slti         s6, s2, 1039
                  ori          zero, a4, 412
                  bne          s7, a5, 46f
46:               blt          gp, a4, 51f
                  slti         s5, s3, 829
                  addi         a6, s3, 582
                  or           zero, a2, s9
                  srli         s4, s1, 10
51:               blt          a3, t0, 63f
                  ori          a2, t5, 546
                  add          s6, t1, ra
                  slti         t4, t3, 847
                  sll          t6, a4, a3
                  bltu         a7, sp, 74f
                  slti         t2, s7, -1209
                  bgeu         t0, a4, 71f
                  srli         a7, t6, 0
                  bge          a4, t5, 65f
                  srai         s7, s3, 9
                  auipc        s2, 769798
63:               slli         a5, t0, 28
                  lui          zero, 144326
65:               add          t2, ra, a0
                  ori          a7, s2, 1569
                  bltu         t3, s11, 81f
                  xori         s7, s10, 1952
                  la           a3, sub_2
                  slli         a6, s6, 18
                  srai         s2, t1, 31
                  addi         a3, a3, -47
                  xori         s2, ra, 1782
                  sll          zero, s8, sp
                  sltiu        s7, tp, -1967
                  xori         s9, s1, -1660
                  xor          t2, s9, s10
                  xori         s7, t5, 631
main_j1:          jalr         tp, a3, 48 #jump main -> sub_2
                  sra          a6, t3, a3
                  xor          s7, t0, t4
                  srl          zero, a5, a4
71:               srai         a6, t6, 5
                  sltu         t4, s11, s5
                  srai         a0, t1, 12
74:               bgeu         s5, t3, 86f
                  bne          zero, a0, 88f
                  srli         s2, s2, 7
                  auipc        tp, 460907
                  sra          t4, s8, tp
                  slti         t2, t2, -486
                  slt          s1, s3, s11
81:               andi         s1, t6, 452
                  andi         s4, s8, 1299
                  slli         tp, s4, 4
                  slt          sp, s1, s9
                  slt          a5, ra, s10
86:               ori          s1, s5, 1629
                  lui          t6, 661943
88:               sltu         a6, s4, t0
                  sll          t4, s11, t5
                  srli         s2, t6, 14
                  srli         t6, t1, 6
                  sltiu        s10, t6, -1176
                  bne          s3, t5, 108f
                  bne          s9, t5, 105f
                  bltu         a4, t3, 103f
                  sra          s11, a2, tp
                  slti         s0, t5, 498
                  ori          t2, s7, 1197
                  blt          s8, a6, 109f
                  slli         a5, s3, 29
                  andi         t4, a5, 1669
                  add          t4, s6, a3
103:              bltu         a7, tp, 115f
                  ori          a6, t4, 1358
105:              lui          s10, 56369
                  bne          s4, a3, 122f
                  lui          a0, 429479
108:              slt          s9, s2, s4
109:              srli         tp, a2, 25
                  bgeu         a5, t2, 112f
                  xori         t1, zero, -1506
112:              srai         a3, s0, 0
                  ori          s10, t0, -735
                  xor          a0, s3, s7
115:              nop
                  bge          s7, ra, 128f
                  ori          tp, t5, 1258
                  auipc        a7, 782169
                  slli         a2, s10, 23
                  andi         t2, a5, -155
                  auipc        t0, 75618
122:              sll          s7, s5, a7
                  addi         a2, a3, -1645
                  bne          s7, s8, 143f
                  andi         zero, t2, 1671
                  or           ra, s2, s7
                  nop
128:              lui          s3, 762270
                  add          a1, tp, a0
                  lui          s0, 23720
                  xor          sp, s5, a4
                  bltu         tp, s10, 135f
                  sra          s10, t6, t6
                  bgeu         t0, s11, 149f
135:              sltu         t0, a5, s10
                  bgeu         s9, s1, 151f
                  slt          tp, t3, a4
                  xori         t4, zero, -1869
                  sltiu        s10, a2, -1568
                  sltu         a2, a0, t6
                  sub          sp, a6, s0
                  srai         t0, ra, 1
143:              sltiu        s7, a7, -990
                  sltu         s9, a3, a4
                  auipc        a7, 569016
                  sra          t6, a3, s10
                  bltu         a6, gp, 153f
                  bgeu         sp, s10, 149f
149:              andi         tp, t5, -524
                  auipc        s7, 52889
151:              or           t0, a1, s4
                  add          s7, s6, gp
153:              sltu         t0, a2, ra
                  addi         s3, a4, 1220
                  add          a6, a4, s3
                  bge          a1, a5, 162f
                  xor          a5, a5, s2
                  beq          a3, a3, 178f
                  slli         gp, t2, 21
                  sll          t4, t3, s7
                  andi         s3, s6, -1051
162:              sll          s6, gp, s3
                  bne          s8, s4, 175f
                  sltu         s6, s7, s7
                  sltu         s9, a1, a2
                  sltiu        a0, sp, 234
                  andi         s1, s0, -676
                  and          t4, s11, s10
                  nop
                  slti         a3, s7, -2030
                  bge          t5, s1, 186f
                  bne          t2, a1, 173f
173:              or           a5, a2, t1
                  sltiu        a5, a4, -1948
175:              xori         t6, a4, 194
                  srai         s6, a2, 19
                  bltu         s9, zero, 182f
178:              sub          sp, s8, a5
                  beq          a2, t3, 181f
                  slli         t5, s1, 16
181:              slt          a1, s11, a3
182:              nop
                  xor          s10, s3, a7
                  srli         ra, s11, 4
                  sltu         t1, a6, s8
186:              sltu         zero, t2, s4
                  or           a3, a4, a5
                  sll          s9, t1, s5
                  sltu         t2, a5, s5
                  addi         a6, s10, 1868
                  beq          ra, a0, 205f
                  blt          s8, s6, 195f
                  xori         a7, t1, 1049
                  nop
195:              bne          t2, s3, 201f
                  srai         t5, a0, 13
                  sltiu        s3, a0, -56
                  xori         t1, a4, 196
                  blt          a0, t0, 214f
                  sll          t4, gp, t0
201:              and          t5, t1, s6
                  xori         s4, a1, 1985
                  srl          a7, t3, s6
                  ori          t5, s11, 674
205:              xor          a0, s0, s9
                  slt          s7, t1, s6
                  srl          a5, gp, ra
                  bltu         t2, gp, 223f
                  bltu         a7, a2, 219f
                  bge          a5, a4, 223f
                  sltu         t1, gp, t3
                  ori          sp, a0, -388
                  srli         s4, a5, 25
214:              srli         sp, zero, 26
                  addi         a5, s10, -92
                  xor          s11, a0, a2
                  bgeu         s1, t1, 228f
                  slt          tp, zero, s3
219:              lui          s3, 984200
                  slli         a5, s2, 18
                  andi         a5, s3, 1955
                  sra          a6, t6, s1
223:              sub          s0, s11, s5
                  xor          ra, t4, t3
                  ori          a5, a3, -910
                  sltiu        t6, a1, -1162
                  xori         s11, t1, -1193
228:              nop
                  xori         t5, s9, -982
                  lui          t6, 196354
                  slt          s9, a6, zero
                  xor          t5, t4, a1
                  bne          s6, s0, 238f
                  auipc        s4, 593553
                  sra          t4, a6, sp
                  andi         t2, a6, 707
                  sltiu        a7, a0, 1721
238:              nop
                  or           a7, s5, a0
                  nop
                  srli         a7, zero, 28
                  srli         gp, s5, 2
                  bgeu         s0, zero, 256f
                  slli         zero, a2, 26
                  addi         a1, s5, -172
                  bne          a0, a0, 253f
                  add          s6, t3, a5
                  sub          s11, t4, zero
                  xor          s2, s5, s6
                  srl          a6, sp, a2
                  sltiu        t0, tp, 1259
                  srli         s10, a2, 7
253:              bge          zero, s1, 268f
                  xor          a7, a5, t4
                  slli         a2, zero, 30
256:              sra          sp, tp, s7
                  xori         t1, t1, -35
                  bne          a6, s10, 266f
                  add          a6, a0, t2
                  beq          s9, t2, 279f
                  blt          a7, s0, 277f
                  sltu         a7, s10, t3
                  blt          sp, t3, 275f
                  sll          a0, s3, s4
                  srli         s5, t6, 1
266:              sll          t1, s11, t6
                  bgeu         s2, s9, 269f
268:              slti         t6, t2, -1892
269:              and          a5, tp, s2
                  beq          t3, a2, 282f
                  xori         a6, s10, 2008
                  nop
                  add          tp, s4, s5
                  ori          t1, t6, -91
275:              andi         s9, a1, -1822
                  sub          s9, t1, a1
277:              or           t4, t5, s6
                  bgeu         a4, ra, 282f
279:              xor          tp, t5, a4
                  lui          s1, 109887
                  srl          t2, s7, t6
282:              lui          a1, 571938
                  and          t0, t6, s3
                  addi         s4, s5, -1324
                  srli         sp, a7, 24
                  sra          s2, a6, t6
                  bge          s2, tp, 294f
                  beq          s0, s2, 306f
                  slli         s0, a7, 2
                  bne          s7, a0, 302f
                  and          t2, a3, zero
                  bltu         s2, s0, 310f
                  srli         s0, a7, 27
294:              bltu         s2, a0, 299f
                  xor          t1, gp, a3
                  xori         s1, ra, -927
                  bne          t2, a2, 312f
                  or           a3, tp, a0
299:              xor          a1, t4, t5
                  add          s4, t1, s9
                  beq          t3, t3, 313f
302:              add          zero, s11, t3
                  beq          a1, a5, 318f
                  andi         a7, s8, -1441
                  bge          s5, s10, 307f
306:              srli         a0, s7, 31
307:              srli         a5, s7, 25
                  srl          gp, a4, s4
                  xor          s2, s1, t3
310:              bge          s6, a6, 314f
                  and          a1, t2, s3
312:              and          a6, ra, tp
313:              srli         a3, s3, 30
314:              blt          zero, a0, 316f
                  bgeu         s9, tp, 328f
316:              nop
                  sltu         t6, s6, t4
318:              slli         ra, gp, 25
                  lui          t4, 308207
                  lui          a1, 179993
                  slti         s5, a2, -1268
                  lui          t1, 171639
                  auipc        s10, 812786
                  sub          a3, zero, s9
                  sra          a3, s11, a5
                  or           t5, a3, a0
                  slli         a2, s0, 12
328:              srli         t1, a1, 25
                  or           s0, a4, s3
                  srl          gp, t0, ra
                  and          a1, a3, tp
                  addi         t5, t4, -1082
                  sltiu        a7, ra, -1290
                  bne          t6, t5, 346f
                  xor          sp, a1, s11
                  xori         a5, s0, -738
                  sra          t4, s3, t2
                  srl          s0, t1, s2
                  sra          zero, a5, s1
                  srai         a1, a0, 25
                  sltiu        s9, t2, 180
                  bgeu         zero, s7, 357f
                  auipc        a3, 738729
                  add          a0, t1, t5
                  bge          gp, t2, 352f
346:              bne          gp, t4, 352f
                  srli         s11, sp, 25
                  or           a1, a0, s1
                  srai         s11, a2, 23
                  xori         s11, a2, 1263
                  xori         s9, a6, 197
352:              auipc        s2, 650038
                  and          a7, s8, s11
                  auipc        s0, 956331
                  andi         t4, t4, -1498
                  srai         s5, t4, 13
357:              bltu         a3, s11, 373f
                  srai         t2, t4, 0
                  andi         s9, a1, 823
                  auipc        a3, 98247
                  bgeu         t0, t1, 362f
362:              and          s10, s6, a6
                  beq          tp, s7, 376f
                  sub          t5, a0, t3
                  bltu         s5, t1, 368f
                  nop
                  lui          s7, 843156
368:              slt          a6, s11, tp
                  blt          t5, s4, 375f
                  srli         zero, s7, 21
                  auipc        s3, 974609
                  or           a5, t0, a2
373:              and          s2, s7, s4
                  sub          s1, ra, t5
375:              srl          a3, a4, a4
376:              nop
                  or           a1, a6, s11
                  bgeu         t6, s4, 390f
                  addi         s10, t3, 70
                  auipc        a1, 173191
                  sll          s9, s2, s5
                  ori          s4, s1, -9
                  andi         t0, s9, 1662
                  sub          sp, s5, s0
                  bgeu         s1, t3, 397f
                  lui          t5, 214902
                  nop
                  sra          s10, s8, s5
                  xor          s6, s6, a1
390:              addi         s1, a5, -971
                  auipc        a0, 796924
                  addi         a6, t5, -834
                  lui          s6, 620908
                  and          a1, a0, sp
                  addi         t1, s1, -1546
                  addi         a7, t4, -463
397:              beq          s9, s7, 416f
                  and          a5, s0, ra
                  andi         a2, s8, 1771
                  srai         s6, zero, 3
                  xor          tp, t6, t5
                  la           gp, sub_2
                  lui          s1, 242523
                  sltu         s2, s3, t3
                  sll          a1, s2, t3
                  srai         a1, a4, 1
                  sll          s3, tp, s6
                  lui          t1, 678035
                  addi         gp, gp, -436
                  blt          zero, s0, main_j2 #branch to jump instr
                  sltu         s5, a1, s4
main_j2:          jalr         tp, gp, 437 #jump main -> sub_2
                  bge          t5, s11, 409f
                  add          a7, s5, zero
                  sra          tp, s2, zero
                  srai         s3, s2, 14
                  slti         a5, a1, -590
                  xori         s4, t6, -1134
                  blt          t2, ra, 412f
                  addi         a1, a2, 2031
409:              addi         t2, s6, -1156
                  bgeu         a1, s5, 417f
                  xori         s1, t3, 314
412:              sub          s9, a1, a3
                  slti         a1, t0, -565
                  sub          a3, t2, s5
                  srl          t5, s5, a3
416:              addi         a3, ra, -1534
417:              slt          s10, a6, a3
                  beq          s2, a6, 433f
                  srli         a5, sp, 20
                  slli         s1, s7, 4
                  bgeu         t4, t3, 422f
422:              slti         s6, tp, 1099
                  sll          sp, tp, s10
                  lui          zero, 350528
                  bge          s3, gp, 435f
                  blt          t2, a4, 446f
                  slti         a0, s0, -449
                  xori         a0, s5, 1643
                  blt          a5, s6, 440f
                  nop
                  slli         a3, s11, 31
                  or           s0, gp, t4
433:              sltu         t1, t0, t6
                  sltu         s5, sp, ra
435:              sub          gp, t0, s9
                  sub          s2, s8, gp
                  slli         s10, s6, 9
                  srli         sp, a7, 0
                  andi         s1, a2, 975
440:              sll          s1, gp, ra
                  srai         s1, a3, 7
                  bge          a6, s11, 456f
                  ori          a2, a6, 354
                  beq          a7, a6, 460f
                  bge          sp, t2, 451f
446:              ori          s6, zero, 1463
                  slti         a6, s8, 34
                  bge          a1, s4, 456f
                  blt          s5, a0, 462f
                  srai         gp, s5, 27
451:              sub          s3, a4, t0
                  sra          s4, a4, t4
                  bltu         s7, s2, 463f
                  andi         s10, s2, -1061
                  bge          tp, s10, 462f
456:              slli         s11, s1, 16
                  bgeu         s10, a2, 462f
                  or           s1, gp, zero
                  lui          s4, 904384
460:              slti         s7, a5, 728
                  slli         a7, s9, 4
462:              addi         sp, s8, -1380
463:              ori          a2, t3, -951
                  addi         zero, s7, -2000
                  srli         t2, t0, 12
                  and          a1, ra, s3
                  sub          s7, gp, zero
                  lui          a3, 333729
                  xori         sp, s6, -987
                  sra          tp, a1, t5
                  addi         a0, s10, -788
                  slt          s7, t0, a7
                  sra          t6, ra, a2
                  slli         t1, s4, 25
                  auipc        a1, 265412
                  addi         t2, a0, -1129
                  xori         a6, s1, 1910
                  auipc        a0, 197351
                  xori         t2, t1, -1788
                  andi         t2, tp, 1320
                  bgeu         s8, s10, 493f
                  bne          tp, s0, 483f
483:              auipc        s7, 803365
                  bgeu         a7, a4, 499f
                  beq          t1, s8, 498f
                  xori         s3, s2, 69
                  sra          a7, t3, a3
                  xori         a2, t2, 251
                  or           a1, a4, s8
                  slt          t1, s11, a1
                  sltu         a3, a7, a0
                  andi         zero, s3, -943
493:              sltu         a2, a5, a0
                  srli         t6, t2, 7
                  slli         a7, s0, 28
                  slti         a5, a4, -826
                  srli         s3, s10, 9
498:              srli         t2, t6, 1
499:              or           s3, t1, t2
                  srli         t6, a2, 31
                  sltu         t0, a3, s5
                  blt          s2, s11, 517f
                  srai         t1, s0, 13
                  slt          s4, gp, tp
                  slt          s9, t0, a3
                  sll          s4, t2, sp
                  nop
                  sub          s4, t0, t0
                  xor          sp, a5, tp
                  bge          t0, s1, 529f
                  srai         s7, s10, 2
                  srl          s5, s8, s10
                  bgeu         s5, s10, 527f
                  sra          gp, a5, s5
                  srl          s5, t3, tp
                  bltu         t0, s10, 528f
517:              bne          sp, a7, 518f
518:              bge          s6, s9, 530f
                  xori         t4, t4, 618
                  addi         s0, tp, 122
                  auipc        a0, 944446
                  andi         t1, s10, -856
                  srl          ra, a6, s9
                  blt          a1, s1, 539f
                  auipc        ra, 503633
                  xor          s9, t0, t3
527:              sll          s3, t5, s9
528:              beq          sp, s10, 530f
529:              sll          t5, t4, t2
530:              nop
                  addi         gp, s3, -788
                  nop
                  sltiu        s10, s8, -1406
                  bne          s11, t4, 541f
                  slli         t2, t3, 0
                  beq          t2, s4, 539f
                  auipc        s7, 604924
                  and          a2, a6, s3
539:              bge          t4, s8, 545f
                  addi         t6, s4, 310
541:              or           s9, t0, t6
                  srl          t1, sp, a5
                  sra          s10, a0, a7
                  lui          s11, 262436
545:              sltiu        s2, s4, 279
                  and          a7, a6, s6
                  slti         s11, a4, -1197
                  slti         tp, a0, -1582
                  xori         a1, s9, 891
                  slt          s4, a2, zero
                  and          s2, a5, a7
                  add          t1, s1, s4
                  sltu         a3, s3, s8
                  andi         a3, gp, -1677
                  bge          t4, s6, 570f
                  and          s10, s11, t4
                  blt          a4, a0, 577f
                  and          t2, s0, ra
                  lui          s1, 25730
                  bltu         t1, s3, 578f
                  auipc        ra, 564940
                  addi         t2, a0, -992
                  lui          s6, 369359
                  xori         s10, t2, -1997
                  lui          tp, 846401
                  sra          a1, a6, t4
                  sltu         t6, a7, t0
                  xor          s2, ra, a5
                  and          s9, tp, a0
570:              auipc        t6, 546447
                  srli         s3, a0, 26
                  ori          a6, tp, 808
                  bgeu         t6, t2, 584f
                  sll          t5, s4, ra
                  add          a1, s8, a7
                  slt          s6, t4, s0
577:              xori         a0, ra, 1580
578:              srl          a0, s8, s6
                  bltu         gp, a6, 581f
                  slli         a1, s7, 24
581:              sltu         t2, t6, s11
                  nop
                  lui          s6, 403937
584:              bgeu         t3, tp, 589f
                  xor          a7, sp, ra
                  slt          zero, a1, a0
                  sra          s10, a1, s4
                  or           s11, a4, gp
589:              and          a6, s11, s9
                  add          a7, zero, s9
                  beq          t5, t5, 603f
                  bgeu         a2, s0, 596f
                  andi         s5, t6, 1005
                  srl          a2, s9, tp
                  bgeu         a2, tp, 614f
596:              sll          s7, s6, s2
                  ori          s1, t4, 369
                  auipc        ra, 531632
                  slti         s5, zero, 46
                  xori         s4, s9, -1885
                  and          s6, s2, s0
                  and          gp, t2, s1
603:              srai         tp, s5, 23
                  andi         zero, a3, 1958
                  sltiu        ra, tp, 99
                  sltu         s10, ra, sp
                  or           a1, a4, s11
                  nop
                  auipc        a7, 89668
                  sltiu        a0, a2, 1060
                  sra          s10, t5, a6
                  sltiu        sp, s9, 1424
                  srai         s10, gp, 18
614:              sub          s2, s8, s10
                  slli         a7, s9, 1
                  bltu         s11, s8, 617f
617:              lui          s3, 33954
                  sra          zero, a6, a2
                  sra          s6, s1, t3
                  slt          s11, a1, a4
                  slt          s9, s11, a2
                  lui          s7, 400274
                  slli         s0, t6, 21
                  nop
                  add          a0, t4, t6
                  bltu         s9, a6, 636f
                  ori          a1, s9, -1983
                  lui          a3, 747350
                  lui          s6, 60434
                  auipc        sp, 848137
                  ori          tp, sp, -1949
                  sub          a2, sp, a0
                  slti         tp, s4, 902
                  andi         t4, t6, -1654
                  slli         tp, s3, 6
636:              sltu         gp, s6, a3
                  srli         t6, tp, 13
                  addi         s9, s10, 1643
                  srli         t2, s11, 14
                  andi         a2, ra, 803
                  slt          a3, s5, s5
                  bne          s10, tp, 645f
                  blt          t6, ra, 656f
                  sll          s10, sp, t2
645:              beq          a2, s3, 660f
                  slli         s5, s11, 26
                  sub          s4, tp, a1
                  blt          a1, s6, 653f
                  or           s4, t4, t1
                  andi         s2, t5, -945
                  slti         s2, tp, 1117
                  srli         s1, t2, 3
653:              sltu         s5, t1, zero
                  lui          t2, 552474
                  addi         a3, a6, 807
656:              bltu         a3, tp, 668f
                  or           s9, s4, s7
                  add          s1, sp, s1
                  ori          s1, ra, -789
660:              sub          t1, t2, t0
                  xori         s6, s9, 467
                  srai         a1, a6, 3
                  ori          s10, s2, -15
                  or           t0, s5, t6
                  ori          s6, t3, 710
                  beq          zero, s6, 684f
                  xor          ra, t0, a3
668:              bne          t5, s11, 670f
                  xori         s5, a2, 254
670:              and          zero, a3, s10
                  lui          s4, 584612
                  srl          t4, s5, s8
                  add          t2, s7, s10
                  srl          sp, t6, a7
                  xor          s5, gp, a1
                  xor          a3, t4, s3
                  slli         gp, gp, 12
                  bne          s5, a0, 693f
                  bgeu         gp, t6, 691f
                  and          ra, a2, a1
                  and          a7, s10, tp
                  sltu         s0, t5, t6
                  add          a7, s5, a6
684:              srai         s9, a3, 26
                  slti         a5, a1, -1115
                  addi         s11, zero, -7 #init loop 0 counter
                  or           s9, t1, t5
                  ori          t4, sp, -1297
                  or           s6, ra, a7
                  srl          s9, s3, a7
                  xor          a5, s10, a3
                  sll          t0, s0, t0
                  srai         sp, a3, 13
                  sra          t2, a7, a2
                  sltiu        t4, s7, 1052
                  add          s2, s8, s8
                  xori         s5, t2, 1729
                  sub          a0, t4, s3
                  xor          a7, tp, s7
                  auipc        s5, 706527
                  addi         t5, zero, -10 #init loop 0 limit
                  or           s5, s4, a4
                  auipc        s4, 878416
main_10_0_t:      sltu         s7, s0, t3
                  srai         tp, s9, 22
                  sltu         zero, a2, a5
                  srl          s3, s7, a4
                  slt          a5, a2, s6
                  addi         s11, s11, -2 #update loop 0 counter
                  sra          sp, t1, s7
                  bge          s11, t5, main_10_0_t #branch for loop 0
                  sll          zero, a5, s1
                  and          a3, t0, a4
                  srl          a2, sp, a2
                  bltu         a2, t2, 699f
                  nop
                  srl          s1, a0, s6
691:              blt          s3, a2, 692f
692:              nop
693:              bne          a6, t2, 699f
                  slti         a2, s3, 1269
                  sltu         tp, tp, s1
                  andi         t6, t3, -189
                  bltu         t2, a4, 703f
                  sltiu        a6, s4, -2028
699:              addi         a6, s2, -615
                  xor          gp, s2, zero
                  sll          t4, a6, a4
                  sub          tp, s1, t0
703:              bgeu         a2, a5, 710f
                  slt          s7, gp, a1
                  srli         tp, s8, 18
                  xori         t1, a3, -1003
                  and          s6, s6, t1
                  slti         gp, a3, 46
                  bgeu         s4, s7, 729f
710:              sltu         a6, a1, s3
                  bge          a7, s8, 723f
                  srli         s10, tp, 1
                  bne          a3, a7, 729f
                  srli         s3, a0, 7
                  lui          s9, 493085
                  bgeu         a4, s3, 731f
                  bge          s0, ra, 719f
                  beq          a1, s0, 725f
719:              xor          a7, a4, ra
                  add          s0, a2, a4
                  blt          a6, a2, 733f
                  blt          t4, a6, 735f
723:              srl          gp, a3, t6
                  bge          tp, s4, 729f
725:              sltiu        s4, t4, -1665
                  slli         s9, s7, 30
                  and          s3, t1, s10
                  beq          zero, s11, 736f
729:              bne          a3, s9, 743f
                  xori         s3, a4, 1880
731:              bgeu         a0, s10, 746f
                  ori          tp, s6, 518
733:              and          sp, a3, s1
                  sll          s6, a6, a5
735:              sltu         zero, s8, s10
736:              beq          t0, s10, 740f
                  srl          t6, a0, a3
                  sra          s4, t2, ra
                  bge          a4, s6, 744f
740:              srai         s9, s11, 13
                  bne          t3, s2, 756f
                  and          t1, tp, a1
743:              sub          s2, a7, a2
744:              blt          s6, t4, 757f
                  sub          s4, s2, t3
746:              bge          t2, s8, 758f
                  xori         gp, s7, 426
                  lui          s10, 1025243
                  srai         a1, a1, 26
                  slti         gp, s4, -1282
                  sltiu        a1, a5, 1977
                  srl          t5, a2, gp
                  blt          t3, s4, 767f
                  add          s11, tp, s9
                  xor          sp, a6, a6
756:              srai         a2, t4, 17
757:              slli         a5, s10, 28
758:              bne          s2, t1, 766f
                  sra          s0, tp, s2
                  ori          s1, s0, 1762
                  or           s9, a4, a7
                  slt          s7, a6, a7
                  sll          s9, a4, t2
                  slti         a7, s9, -2025
                  sra          a2, s2, s8
766:              or           s9, a7, a5
767:              and          s2, s8, s2
                  slt          t2, zero, gp
                  sltu         a6, s6, a5
                  auipc        s1, 774442
                  srl          tp, s6, t2
                  bne          s11, a7, 785f
                  addi         s6, s1, -1375
                  ori          gp, a6, 193
                  slli         a3, t2, 24
                  srl          t1, a2, a3
                  sll          s1, a5, s2
                  sltu         s4, s5, a1
                  xor          s3, a3, s3
                  sltiu        t2, t3, 1078
                  auipc        sp, 507389
                  sll          t2, t4, s0
                  beq          tp, tp, 798f
                  sltu         a6, s7, s8
785:              srl          sp, a4, s4
                  bgeu         s9, t5, 801f
                  sra          t5, t4, s8
                  sltu         gp, t6, s5
                  sra          t2, s0, gp
                  sltiu        t1, t6, -1457
                  or           s3, t5, a2
                  xori         sp, a1, 1757
                  slli         a2, t5, 29
                  srl          s5, s8, sp
                  add          a1, s2, a1
                  or           t2, ra, s3
                  slti         s11, tp, 136
798:              bne          t6, tp, 816f
                  nop
                  sltiu        tp, s9, -1564
801:              addi         s0, t4, -176
                  ori          tp, a4, -1643
                  or           t6, sp, ra
                  auipc        tp, 423069
                  nop
                  bltu         s9, t3, 808f
                  blt          a7, ra, 813f
808:              blt          t6, s8, 810f
                  bne          a1, s3, 810f
810:              sll          s9, s4, t4
                  srai         tp, t2, 29
                  sra          ra, s7, a6
813:              bge          s6, s9, 816f
                  xor          zero, tp, a7
                  auipc        t1, 111819
816:              slti         a7, s11, 1483
                  and          gp, s4, t6
                  slli         t6, a1, 24
                  srli         a7, t5, 10
                  srli         a2, a0, 30
                  blt          s4, s0, 825f
                  bne          t3, s7, 827f
                  sltiu        s5, zero, 26
                  bltu         a6, sp, 835f
825:              sll          s0, t0, t1
                  sra          t4, t3, t1
827:              add          s0, a0, s8
                  bgeu         a2, t6, 847f
                  andi         zero, a1, 960
                  sub          tp, a1, s0
                  slli         gp, s1, 1
                  nop
                  slt          s5, a2, t3
                  or           t1, tp, ra
835:              or           t0, s11, a7
                  bne          t0, a3, 848f
                  or           s9, s7, s7
                  slt          ra, s8, a5
                  and          s0, t3, s1
                  srai         s4, s3, 17
                  sra          a7, s6, s3
                  sltiu        s5, s0, 1503
                  slti         ra, a0, 300
                  beq          a4, s4, 856f
                  blt          s2, s10, 855f
                  srli         s10, s6, 30
847:              ori          a2, a2, -677
848:              bgeu         gp, zero, 863f
                  xor          zero, s7, t6
                  srl          a5, a4, s11
                  or           s5, a7, t5
                  bgeu         s4, a7, 859f
                  srai         s10, zero, 7
                  lui          gp, 60168
855:              sub          s9, sp, a2
856:              ori          t5, s11, 1457
                  ori          s3, s0, 1786
                  slti         sp, s7, -1824
859:              blt          t4, s4, 879f
                  bne          gp, a3, 861f
861:              srli         s7, s10, 30
                  srli         sp, t4, 1
863:              beq          ra, s10, 879f
                  slt          a2, a3, s0
                  bne          s11, t0, 877f
                  srli         gp, s8, 7
                  bne          s4, s6, 873f
                  slti         ra, t2, -1928
                  srai         t0, s6, 26
                  auipc        s2, 879741
                  srl          t2, s11, s6
                  andi         s5, s10, 827
873:              andi         s6, a7, 360
                  slti         zero, s10, 1902
                  add          s7, a0, a3
                  sll          zero, s6, t6
877:              slti         t4, zero, -1019
                  ori          ra, s2, -1640
879:              sltu         s7, zero, s7
                  xor          s3, a1, s9
                  bge          s8, s7, 888f
                  lui          t1, 316973
                  beq          t4, t4, 895f
                  beq          s8, zero, 899f
                  addi         s0, a1, 179
                  ori          gp, a3, 370
                  bltu         t4, a0, 898f
888:              srai         a6, a1, 2
                  srl          t4, s11, t0
                  beq          s10, s3, 904f
                  lui          s4, 784537
                  xori         a5, s5, 1895
                  sra          a1, a1, a1
                  bne          tp, s4, 895f
895:              sub          sp, s9, a1
                  slli         s5, tp, 4
                  slli         s6, t0, 19
898:              xori         s3, a7, -1229
899:              auipc        zero, 1001660
                  lui          tp, 604774
                  srli         t2, s3, 25
                  and          s2, tp, a7
                  auipc        zero, 454098
904:              sltu         zero, s4, s7
                  ori          tp, t0, -1355
                  or           t6, t1, s9
                  bgeu         t1, a3, 913f
                  xor          s4, a1, s2
                  ori          s5, s4, -1724
                  sltiu        s7, a7, 844
                  bge          a7, a6, 916f
                  nop
913:              slt          t2, s0, s9
                  sll          s1, a0, sp
                  addi         s4, s2, -544
916:              bgeu         t0, t0, 932f
                  beq          s10, s1, 924f
                  nop
                  bltu         s9, s10, 923f
                  and          t5, a7, zero
                  slli         s10, a5, 8
                  bgeu         s10, t0, 934f
923:              sra          a0, t3, s2
924:              addi         s11, s1, -1981
                  srai         s4, s7, 30
                  blt          s10, s9, 934f
                  addi         gp, s1, 634
                  andi         t0, t5, 1325
                  sltu         t1, s4, s10
                  bge          s6, s9, 934f
                  ori          s4, s2, 22
932:              slti         s0, t6, 2000
                  xor          a3, a3, s10
934:              xor          a1, gp, s10
                  la x14, test_done
                  jalr x0, x14, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            addi         s6, s10, 1121
                  srai         s11, s5, 31
                  slti         t5, a5, 156
                  andi         s11, tp, 884
                  sub          t2, s0, t1
                  bge          zero, s6, sub_5_stack_p
                  ori          a1, t2, 132
                  or           s5, tp, a3
sub_5_stack_p:    addi         t3, t3, -28
                  add          s11, a3, s8
                  sw           tp, 4(t3)
                  andi         a6, a4, -1236
                  and          t2, tp, s1
                  andi         s4, s7, 1864
                  xor          s0, a4, s7
                  xor          t0, s6, s4
                  sll          s11, s4, s2
                  beq          a3, tp, 9f
                  or           a5, a1, s1
                  beq          t4, s3, 7f
7:                xor          t2, t2, s10
                  ori          zero, t4, -1100
9:                srai         sp, s7, 29
                  lw           tp, 4(t3)
                  sltiu        a6, t0, 1333
                  slti         gp, s7, -107
                  ori          s1, a4, 219
                  lui          a0, 1027515
                  addi         t3, t3, 28
                  slti         s7, s2, 1727
                  auipc        t1, 413251
31:               addi x10, x4, 1
31:               jalr x10, x10, 0
sub_4:            addi         t3, t3, -16
                  lui          s7, 709244
                  srai         t5, t5, 14
                  sw           tp, 4(t3)
                  andi         s4, gp, 1746
                  or           t6, s9, a2
                  addi         s11, zero, 9 #init loop 0 counter
                  slti         gp, s0, -979
                  slli         ra, t3, 7
                  sll          t5, s6, s11
                  lui          a1, 875169
                  sub          sp, ra, s3
                  and          s5, s4, s0
                  addi         a3, zero, 7 #init loop 0 limit
                  slli         a2, s3, 8
sub_4_0_0_t:      xor          t6, t5, t3
                  lui          ra, 409258
                  addi         s11, s11, -6 #update loop 0 counter
                  sra          s7, tp, zero
                  sltu         s5, a4, s0
                  srli         s9, s7, 5
                  sub          zero, a5, s10
                  bgeu         s11, a3, sub_4_0_0_t #branch for loop 0
                  addi         ra, a5, -846
                  addi         s0, zero, 9 #init loop 1 counter
                  addi         s5, zero, 9 #init loop 1 limit
sub_4_1_1_t:      slti         a6, t0, 218
                  addi         s0, s0, -8 #update loop 1 counter
                  addi         s3, zero, 10 #init loop 0 counter
                  addi         s7, zero, 7 #init loop 0 limit
sub_4_1_0_t:      xor          a5, a5, s10
                  addi         s3, s3, -6 #update loop 0 counter
                  bgeu         s3, s7, sub_4_1_0_t #branch for loop 0
                  bgeu         s0, s5, sub_4_1_1_t #branch for loop 1
                  auipc        a0, 118100
                  or           t2, t1, a5
                  bgeu         t4, a5, 16f
                  addi         a5, t3, 1416
                  srai         s7, t5, 18
                  lui          t4, 874609
                  blt          t4, s11, 18f
                  auipc        a3, 845311
                  and          s1, t1, s1
                  xori         sp, t0, -1501
                  sltiu        s6, s0, -450
                  bne          s2, s4, 12f
                  blt          t2, tp, 15f
12:               slti         s0, a3, -1106
                  andi         a6, s4, -1685
                  srl          t5, t6, sp
15:               slli         t1, s1, 29
16:               and          t0, s3, s11
                  sub          s6, t1, s6
18:               sub          a1, s0, t0
                  xori         s4, gp, -1931
                  sltiu        a6, zero, -1507
                  xori         t6, a7, -543
                  nop
                  bgeu         s0, t1, 27f
                  ori          a2, s10, -768
                  or           a1, ra, s10
                  beq          t1, s3, 33f
27:               and          s1, s11, tp
                  addi         s4, t4, -1488
                  bltu         s6, a3, 33f
                  bltu         a6, a1, 40f
                  bge          ra, a0, 46f
                  sub          s3, a2, zero
33:               blt          t1, t1, 47f
                  sub          s10, gp, a1
                  srli         s7, a2, 15
                  slli         s2, a6, 1
                  bgeu         a0, a3, 43f
                  srl          a6, sp, s2
                  sll          ra, t3, a0
40:               slt          a3, t4, t2
                  bltu         zero, s10, 48f
                  xor          s0, s3, a7
43:               sll          s7, t2, s1
                  andi         s10, a5, 1547
                  bgeu         s7, tp, 57f
46:               auipc        s11, 894987
47:               ori          s11, s10, 330
48:               and          s4, s4, gp
                  sltu         t5, t4, a7
                  add          zero, s10, a7
                  sltu         s4, a4, s8
                  blt          sp, zero, 61f
                  sra          s5, a4, t5
                  srl          t6, a2, ra
                  add          a2, s8, s2
                  auipc        s2, 988104
57:               auipc        a0, 223451
                  srli         t5, ra, 9
                  sltu         s0, s1, t2
                  beq          zero, t3, 70f
61:               srai         s0, t6, 28
                  beq          a5, zero, 73f
                  beq          s10, gp, 66f
                  sltiu        s1, a5, -125
                  sra          s11, a7, a5
66:               xor          sp, a2, a6
                  sra          t2, t4, sp
                  bgeu         t6, a5, 78f
                  sltiu        gp, s4, -609
70:               srli         zero, zero, 4
                  auipc        s0, 626295
                  auipc        a6, 386137
73:               add          s7, a0, s11
                  or           s7, s8, ra
                  nop
                  sub          t5, s9, ra
                  add          gp, t0, sp
78:               slti         t5, t5, 1899
                  srli         t6, t1, 14
                  xor          s2, s11, t5
                  addi         t4, a0, -890
                  nop
                  add          s7, a5, t1
                  bltu         t2, ra, 92f
                  slt          a1, s9, s11
                  bne          zero, t6, 99f
                  slti         s7, a4, 820
                  nop
                  slli         t2, s8, 13
                  add          t0, tp, t3
                  sub          s11, s7, t3
92:               add          gp, a4, t6
                  srai         s7, a5, 26
                  slli         tp, a0, 16
                  bgeu         zero, s4, 99f
                  andi         s7, t1, 691
                  bltu         s4, a5, 99f
                  ori          a6, t2, -1883
99:               xori         a6, t2, 718
                  nop
                  srl          t6, t1, a5
                  sra          s9, t5, s6
                  lw           tp, 4(t3)
                  sltiu        a1, t2, 676
                  slti         zero, t4, 229
                  addi         t3, t3, 16
                  or           ra, s7, ra
                  auipc        s0, 324169
144:              addi x3, x4, 1
144:              jalr x3, x3, 0
sub_3:            sltiu        s4, a0, -1377
                  or           s9, s3, a5
                  ori          s3, gp, -502
                  slli         s5, s9, 23
                  addi         t3, t3, -16
                  sw           tp, 4(t3)
                  and          s7, s9, a7
                  addi         a5, zero, -5 #init loop 0 counter
                  slli         a0, a0, 0
                  xor          a2, a7, gp
                  slt          s3, a0, zero
                  slli         s4, t6, 4
                  addi         a7, zero, -4 #init loop 0 limit
                  sub          gp, gp, s2
sub_3_13_0_t:     ori          t1, s10, -927
                  andi         t1, s5, 425
                  srai         sp, t6, 13
                  sltiu        tp, a6, -2023
                  srli         s6, s4, 13
                  srli         gp, t2, 25
                  auipc        s11, 19580
                  slt          s6, s4, a2
                  sltiu        a0, t0, -1850
                  addi         a5, a5, 1 #update loop 0 counter
                  sltiu        s7, a4, 1209
                  and          a3, t2, s4
                  lui          s4, 339436
                  xor          t4, s6, ra
                  ori          t1, s11, -1275
                  andi         a0, t5, -1637
                  andi         t2, s3, 1688
                  lui          s0, 767821
                  ori          s5, t2, -1900
                  blt          a5, a7, sub_3_13_0_t #branch for loop 0
                  nop
                  addi         t5, zero, 3 #init loop 1 counter
                  addi         s0, zero, -7 #init loop 1 limit
sub_3_8_1_t:      slt          t2, a2, s11
                  or           s9, s9, s5
                  addi         t5, t5, -10 #update loop 1 counter
                  addi         t4, zero, 2 #init loop 0 counter
                  addi         s10, zero, -20 #init loop 0 limit
sub_3_8_0_t:      slt          s2, t4, a3
                  addi         t4, t4, -1 #update loop 0 counter
                  add          s3, s1, sp
                  sra          t2, a6, a0
                  bge          t4, s10, sub_3_8_0_t #branch for loop 0
                  srli         a3, ra, 5
                  bne          t5, s0, sub_3_8_1_t #branch for loop 1
                  addi         a0, a4, -988
                  addi         s4, zero, -3 #init loop 0 counter
                  slti         s5, t1, 929
                  nop
                  sub          s0, a7, s5
                  addi         a6, zero, -6 #init loop 0 limit
                  sra          a2, s9, s10
                  auipc        t4, 908258
                  sra          s9, a7, s8
sub_3_2_0_t:      add          zero, t2, ra
                  addi         s4, s4, -2 #update loop 0 counter
                  slli         a2, a7, 24
                  bge          s4, a6, sub_3_2_0_t #branch for loop 0
                  lui          gp, 24594
                  addi         tp, zero, -10 #init loop 0 counter
                  addi         gp, zero, -12 #init loop 0 limit
sub_3_10_0_t:     nop
                  addi         tp, tp, -1 #update loop 0 counter
                  bge          tp, gp, sub_3_10_0_t #branch for loop 0
                  srl          t2, a7, s6
                  addi         a7, zero, 5 #init loop 0 counter
                  sra          ra, s11, s9
                  lui          s5, 287302
                  addi         s2, s0, -1758
                  srl          a3, s11, a0
                  nop
                  slli         s7, s10, 6
                  addi         t6, zero, -4 #init loop 0 limit
sub_3_15_0_t:     and          a5, a7, s7
                  auipc        t5, 274896
                  lui          tp, 722139
                  and          t5, t3, t5
                  and          a0, s9, a7
                  addi         a7, a7, -7 #update loop 0 counter
                  add          s9, gp, s9
                  slli         a1, s6, 17
                  sltiu        a0, t6, -1749
                  nop
                  xor          t1, a5, t0
                  sub          s10, ra, s7
                  srl          a2, sp, s5
                  srai         sp, t1, 4
                  slli         t0, t5, 27
                  bge          a7, t6, sub_3_15_0_t #branch for loop 0
                  and          t4, a7, s0
                  addi         s7, zero, 0 #init loop 0 counter
                  xori         s10, s9, 332
                  sll          s11, s6, s2
                  andi         zero, a1, 287
                  xori         sp, sp, -1078
                  slti         gp, a3, 888
                  xori         s11, s7, -1491
                  lui          s6, 89622
                  sltu         a1, s7, a6
                  slti         t6, a5, -2044
                  xor          t4, a6, t0
                  sra          s5, a1, a0
                  and          s11, sp, t3
                  sll          a6, s3, s6
                  addi         t2, zero, 20 #init loop 0 limit
                  addi         gp, zero, -9
sub_3_14_0_t:     auipc        s6, 720159
                  add          s4, a7, s8
                  ori          a0, s3, 426
                  addi         a3, a4, -1068
                  nop
                  or           s2, s10, t2
                  andi         s9, t0, 835
                  addi         s7, s7, 5 #update loop 0 counter
                  or           a2, s9, s11
                  slt          a1, s1, ra
                  xor          t4, s3, a5
                  bne          s7, t2, sub_3_14_0_t #branch for loop 0
                  add          s2, tp, t2
                  addi         a0, zero, 4 #init loop 0 counter
                  addi         a3, zero, -11 #init loop 0 limit
sub_3_0_0_t:      sltiu        gp, sp, 290
                  addi         a0, a0, -8 #update loop 0 counter
                  bge          a0, a3, sub_3_0_0_t #branch for loop 0
                  srli         t5, s11, 2
                  addi         s5, zero, 10 #init loop 0 counter
                  sll          s1, s4, t1
                  xori         t5, a3, 1692
                  andi         a5, s6, 1431
                  srai         a0, s6, 18
                  addi         s0, zero, 10 #init loop 0 limit
                  slti         t6, a7, -899
                  xori         a5, zero, -1977
                  slt          s2, s7, s2
sub_3_7_0_t:      ori          a2, s3, 329
                  addi         s5, s5, -9 #update loop 0 counter
                  addi         s6, a3, 997
                  andi         sp, s9, 1524
                  srli         a7, a5, 7
                  bgeu         s5, s0, sub_3_7_0_t #branch for loop 0
                  xor          a2, s5, a0
                  addi         s2, zero, -3 #init loop 1 counter
                  sltiu        s7, t4, -446
                  sltu         s11, s2, tp
                  addi         s0, zero, -8 #init loop 1 limit
sub_3_12_1_t:     add          s3, s9, ra
                  sll          a5, s3, a7
                  addi         s2, s2, -9 #update loop 1 counter
                  addi         sp, zero, 1 #init loop 0 counter
                  addi         a1, zero, -5 #init loop 0 limit
sub_3_12_0_t:     ori          gp, s8, 1004
                  sltu         t2, t0, sp
                  addi         sp, sp, -3 #update loop 0 counter
                  nop
                  bne          sp, a1, sub_3_12_0_t #branch for loop 0
                  bge          s2, s0, sub_3_12_1_t #branch for loop 1
                  add          a7, gp, a0
                  addi         s6, zero, -8 #init loop 0 counter
                  and          tp, tp, s6
                  addi         t0, zero, 11 #init loop 0 limit
                  slt          a7, s9, s0
sub_3_5_0_t:      xor          s10, s0, t5
                  addi         s6, s6, 2 #update loop 0 counter
                  sra          t4, a1, t6
                  bltu         s6, t0, sub_3_5_0_t #branch for loop 0
                  sub          a6, sp, a4
                  addi         a7, zero, 7 #init loop 1 counter
                  ori          t5, a7, -634
                  sltu         tp, s3, t1
                  slti         tp, s10, 868
                  slli         t2, ra, 29
                  addi         s10, zero, 20 #init loop 1 limit
                  srai         a1, t6, 7
sub_3_11_1_t:     andi         a3, s5, -1081
                  addi         a7, a7, 5 #update loop 1 counter
                  add          tp, s0, t4
                  slti         a6, s1, 1831
                  slt          tp, a2, gp
                  addi         a2, zero, 7 #init loop 0 counter
                  ori          t1, a4, -1209
                  addi         s7, zero, 19 #init loop 0 limit
                  xori         a5, s2, 1946
                  and          t0, s6, a6
                  auipc        gp, 149857
sub_3_11_0_t:     auipc        a3, 169970
                  addi         a2, a2, 5 #update loop 0 counter
                  srli         s0, s7, 10
                  xori         ra, t5, -563
                  andi         s3, zero, 1754
                  sll          s11, a5, t4
                  sltiu        a3, s5, -459
                  blt          a2, s7, sub_3_11_0_t #branch for loop 0
                  sltiu        a3, gp, 1005
                  sltiu        t4, t2, -1491
                  blt          a7, s10, sub_3_11_1_t #branch for loop 1
                  srl          s1, a5, ra
                  addi         s0, zero, 10 #init loop 1 counter
                  slti         a0, tp, 1894
                  addi         a0, s10, -438
                  addi         a1, zero, 18 #init loop 1 limit
                  add          s7, a4, s2
sub_3_16_1_t:     slti         t5, s3, 876
                  slli         t4, a3, 23
                  slti         gp, s5, 708
                  addi         s0, s0, 7 #update loop 1 counter
                  addi         s3, zero, -10 #init loop 0 counter
                  lui          s10, 761823
                  addi         a5, zero, 17 #init loop 0 limit
                  auipc        sp, 310456
                  slli         a6, s1, 13
sub_3_16_0_t:     ori          a3, t0, 525
                  andi         ra, s4, 47
                  addi         s3, s3, 7 #update loop 0 counter
                  sltiu        a7, s7, 74
                  bltu         s3, a5, sub_3_16_0_t #branch for loop 0
                  sltu         s10, a1, s9
                  and          t6, s3, s5
                  blt          s0, a1, sub_3_16_1_t #branch for loop 1
                  slt          gp, s5, a0
                  ori          a0, s0, -1806
                  lui          s6, 259506
                  slti         s7, a6, 2000
                  lui          s2, 956057
                  add          a5, a4, s9
                  slli         ra, a5, 17
                  addi         t0, a5, 449
                  slt          t2, s1, s7
                  sltu         s2, a4, s0
                  or           t4, s1, s4
                  and          gp, t5, zero
                  xori         tp, s11, -678
                  sll          t1, s6, sp
                  andi         tp, zero, -384
                  beq          s8, s5, 23f
                  nop
                  sll          gp, a2, a1
                  srli         ra, a3, 12
                  lui          t2, 16071
                  addi         gp, a5, 1137
                  blt          s9, tp, 23f
                  srli         a6, t0, 11
                  bne          a1, s10, 37f
23:               andi         a3, s1, 1742
                  sub          s5, t1, a5
                  slti         t1, s2, 764
                  slt          tp, a5, a4
                  slli         s5, a0, 1
                  bge          zero, a0, 32f
                  slt          a7, s7, s2
                  ori          ra, sp, 1347
                  srli         a6, t0, 4
32:               or           a6, s11, s11
                  srl          s5, sp, s11
                  bge          a2, sp, 49f
                  add          t6, ra, a6
                  or           t6, a5, t3
37:               sltu         s5, s8, t4
                  sltiu        tp, zero, 1114
                  srl          s2, tp, a0
                  xor          s5, s2, a5
                  xori         a6, s10, 22
                  lui          s4, 112024
                  and          gp, a5, s7
                  sll          t5, a7, s10
                  bgeu         a1, a5, 48f
                  add          s4, s8, gp
                  and          s9, a7, s4
48:               sltu         s0, a3, s11
49:               auipc        t1, 358592
                  ori          gp, t2, 943
                  slt          t6, ra, s8
                  blt          s3, tp, 54f
                  andi         t2, a0, 277
54:               srl          t2, s3, s3
                  nop
                  bne          s7, s5, 71f
                  srli         ra, s1, 9
                  bge          a3, a3, 72f
                  bgeu         s8, s5, 73f
                  addi         s9, tp, 1646
                  bne          a5, zero, 76f
                  andi         a1, t6, 786
                  sub          t0, s5, a3
                  lui          zero, 948162
                  add          a2, t0, s7
                  and          sp, t5, t0
                  slt          a5, gp, s2
                  lui          s6, 387159
                  srli         a3, s11, 19
                  andi         t4, s10, 94
71:               sra          s10, a7, s8
72:               bgeu         s1, a4, 86f
73:               andi         t6, s9, -1039
                  lui          gp, 11050
                  slt          s11, s8, a0
76:               srli         s7, tp, 13
                  lui          s5, 133523
                  slti         t2, t2, 1163
                  add          s6, s4, t4
                  sra          s11, s0, s2
                  xori         s1, zero, -565
                  addi         s0, s9, -1235
                  add          s4, a1, t2
                  addi         a2, s7, -1913
                  sltu         a6, ra, a1
86:               srai         s7, s5, 10
                  ori          s2, s9, 1692
                  beq          gp, s1, 101f
                  bltu         s1, sp, 97f
                  slti         s10, a5, -414
                  and          tp, a3, a3
                  srai         t0, t4, 28
                  bgeu         t6, t4, 109f
                  srli         gp, s2, 30
                  addi         s2, s10, -645
                  slt          s5, a7, s6
97:               andi         s2, s7, -1053
                  srli         s7, t5, 4
                  lui          a7, 1006594
                  bltu         a6, s11, 111f
101:              beq          a7, a6, 115f
                  lui          s10, 877083
                  srli         s6, s5, 2
                  sub          a0, t6, t4
                  bne          s6, a2, 119f
                  nop
                  auipc        t2, 759737
                  nop
109:              sub          t2, ra, zero
                  beq          sp, t6, 124f
111:              lui          t0, 463218
                  slli         s0, s3, 31
                  sll          t0, t2, s2
                  bltu         t4, s9, 127f
115:              add          t2, ra, s7
                  sltiu        t0, gp, -1316
                  xor          s10, ra, s3
                  xori         t0, zero, -1459
119:              slli         t0, s9, 3
                  sltu         s7, a4, a3
                  bne          t4, a3, 126f
                  bltu         t1, tp, 124f
                  xori         a1, s1, 1855
124:              ori          a0, tp, -1415
                  xori         a3, a6, 964
126:              slli         a2, a3, 5
127:              srl          s5, s5, t3
                  sltiu        ra, a1, 300
                  srai         s11, s7, 20
                  srli         s1, s9, 24
                  bgeu         s1, s0, 147f
                  sub          s7, a0, t0
                  bne          s5, s2, 139f
                  xori         t6, a4, -1116
                  sub          s11, zero, s7
                  srl          gp, ra, a5
                  blt          a7, tp, 146f
                  blt          t2, a6, 157f
139:              nop
                  beq          s7, s10, 141f
141:              xori         t4, a3, 1875
                  slti         s6, t0, 671
                  sub          a3, a6, sp
                  bne          a6, a4, 154f
                  slt          zero, s6, t0
146:              andi         a1, s0, -1749
147:              xori         sp, a1, 565
                  srl          gp, t4, sp
                  xor          t0, t1, t2
                  sltu         s2, s0, s7
                  sltu         zero, s9, a7
                  bge          a4, t6, 159f
                  bltu         t5, a5, 160f
154:              bgeu         tp, a2, 157f
                  and          s5, t0, a4
                  sltu         s6, s2, a7
157:              andi         t6, ra, 690
                  auipc        tp, 470809
159:              ori          ra, s10, -155
160:              auipc        t6, 557762
                  add          gp, s6, s1
                  xori         t5, t5, -357
                  lui          s1, 886211
                  bne          t3, s4, 179f
                  slti         s2, t3, -1173
                  slt          s9, s2, s7
                  andi         ra, t0, -529
                  sll          s10, s1, sp
                  slt          s9, zero, s9
                  bgeu         a1, zero, 184f
                  addi         s0, a0, 476
                  sra          tp, gp, s6
                  sra          gp, t3, a6
                  nop
                  add          t0, ra, zero
                  slt          s11, s4, gp
                  add          gp, a5, sp
                  add          tp, a3, ra
179:              sltiu        gp, t3, -1452
                  addi         s4, s0, 1801
                  auipc        a2, 744345
                  bne          a6, t6, 197f
                  and          a5, s0, s0
184:              bge          s4, s6, 190f
                  sll          s10, s1, t5
                  nop
                  sltu         t2, s2, s4
                  sltu         s3, a0, s10
                  srai         t0, t2, 20
190:              slt          a5, t3, s0
                  and          t5, t5, t6
                  srl          s11, s1, t6
                  and          tp, s1, a0
                  add          t1, s4, tp
                  andi         a5, a6, -583
                  xor          s7, a3, a4
197:              or           a2, t4, s5
                  ori          t2, sp, 1343
                  srai         s6, a0, 14
                  xor          s6, t1, s2
                  beq          a1, s10, 216f
                  srl          s2, zero, t2
                  blt          t1, s10, 212f
                  xor          a1, t1, s11
                  and          a6, s1, sp
                  bge          s5, s11, 213f
                  slt          a7, t4, a5
                  and          s9, s7, s1
                  bltu         s10, s9, 214f
                  slti         a0, s0, -1536
                  add          s10, s0, t3
212:              andi         t0, t3, -1030
213:              srl          s10, a4, s6
214:              andi         t1, t3, 1617
                  lui          s4, 616984
216:              sra          s6, s11, tp
                  or           s6, s1, s11
                  sra          s1, a4, t0
                  add          t1, t5, s8
                  slt          a3, t6, t2
                  add          s5, a4, gp
                  slli         s9, gp, 25
                  lui          s9, 536936
                  bgeu         a5, zero, 235f
                  or           a0, t5, s1
                  sltu         t0, t4, ra
                  addi         a2, s2, 327
                  xor          s4, t5, zero
                  xori         s1, ra, 597
                  xori         t5, t5, 1059
                  lui          a0, 243649
                  andi         a6, tp, 2020
                  sltu         ra, s3, tp
                  blt          s2, a3, 236f
235:              xori         ra, s1, -1191
236:              bgeu         t4, zero, 250f
                  srai         s6, a4, 22
                  sub          s4, t4, a0
                  addi         a3, gp, -1722
                  bge          a4, t0, 243f
                  slti         s1, s7, -1878
                  srai         s7, a6, 20
243:              addi         a5, t1, 681
                  addi         s9, s6, -351
                  or           s1, a1, s3
                  slt          s1, zero, s8
                  sltu         a5, a2, ra
                  sll          a5, t0, s3
                  addi         a0, a6, 195
250:              srai         s11, zero, 21
                  slt          a5, a4, s0
                  slli         a3, s0, 9
                  and          s7, s7, zero
                  lui          t1, 369433
                  blt          t3, s10, 269f
                  beq          t4, s8, 270f
                  sltiu        a0, t0, -1909
                  srl          a6, a1, s6
                  xori         s7, t5, 768
                  sltiu        gp, s10, -840
                  sll          zero, t1, a5
                  bne          s1, t3, 270f
                  slli         a6, s4, 14
                  bge          s3, a2, 278f
                  bne          zero, a5, 281f
                  and          s9, a6, t1
                  slli         s6, s10, 19
                  slt          s0, tp, s4
269:              nop
270:              ori          s4, a1, 1255
                  slti         s6, tp, -386
                  bne          gp, s5, 285f
                  xor          s5, a4, a6
                  addi         t2, zero, 498
                  xor          s9, a7, s6
                  and          a6, s10, a4
                  auipc        s3, 50426
278:              sub          t2, zero, s9
                  blt          s9, a7, 289f
                  bge          a4, s10, 281f
281:              addi         a7, s3, 1845
                  srai         a1, s4, 21
                  xori         s7, s6, 1642
                  sub          t5, t3, a5
285:              or           t5, gp, t4
                  auipc        s1, 953239
                  slli         a6, a4, 25
                  or           zero, t5, s0
289:              bne          gp, t4, 303f
                  ori          s1, s9, -123
                  bne          a4, t0, 300f
                  sll          t4, a2, a5
                  srli         tp, t6, 25
                  sll          s7, s10, a0
                  bltu         sp, t0, 299f
                  xori         sp, t2, -77
                  bltu         s1, a0, 312f
                  blt          s9, ra, 317f
299:              and          a6, s0, s10
300:              blt          gp, s7, 316f
                  bge          s1, s2, 314f
                  xor          zero, s9, a4
303:              sll          a3, s3, s9
                  andi         t6, a5, 284
                  nop
                  xor          a6, s4, a3
                  and          t1, t4, ra
                  nop
                  and          a3, t0, t4
                  ori          a5, s10, -1352
                  srai         a1, s8, 13
312:              bgeu         s8, a5, 314f
                  andi         s3, tp, -375
314:              srai         s0, tp, 31
                  auipc        s11, 333673
316:              bltu         a6, tp, 323f
317:              or           a5, s5, t0
                  srai         s0, s1, 25
                  or           s4, a1, a6
                  slli         a3, t6, 19
                  lui          a2, 114648
                  or           a2, s7, t1
323:              bltu         a2, gp, 338f
                  sltiu        s4, a4, 301
                  sltiu        ra, s8, 100
                  xor          s4, s3, s4
                  auipc        tp, 539060
                  bge          t4, s10, 341f
                  sra          s6, a7, s8
                  ori          t6, s7, 22
                  beq          a6, s0, 337f
                  sra          a7, s7, t1
                  beq          a3, s2, 347f
                  add          s4, a7, t1
                  or           s4, s7, t0
                  srli         a2, tp, 7
337:              srai         sp, a3, 13
338:              andi         gp, s5, 107
                  bltu         t1, t6, 340f
340:              andi         s0, a2, -1512
341:              auipc        a3, 113950
                  slti         ra, s2, -107
                  srli         t6, s2, 30
                  and          s5, t4, sp
                  bne          a4, t4, 350f
                  sltu         t1, s4, s5
347:              sra          s3, s5, s8
                  andi         gp, t1, -913
                  sltiu        a7, s2, -1618
350:              bltu         a5, t0, 353f
                  andi         s2, s4, 1673
                  nop
353:              xor          sp, s8, tp
                  or           gp, t6, s4
                  bne          s5, s5, 370f
                  slli         s3, gp, 30
                  srli         s5, t1, 2
                  addi         s4, zero, 9 #init loop 1 counter
                  slti         a5, t2, 297
                  addi         t5, zero, 4 #init loop 1 limit
                  nop
                  add          a5, s2, t4
sub_3_3_1_t:      ori          a2, s10, 830
                  or           s3, t2, t2
                  addi         s4, s4, -3 #update loop 1 counter
                  addi         s0, zero, 5 #init loop 0 counter
                  addi         s11, a6, 670
                  srl          s7, t1, s6
                  addi         s9, zero, -15 #init loop 0 limit
                  and          t6, t3, s10
                  ori          t1, s7, 1746
                  slt          s6, a6, s9
sub_3_3_0_t:      slt          s3, a7, s9
                  addi         s0, s0, -5 #update loop 0 counter
                  auipc        s1, 128777
                  srli         sp, zero, 24
                  sltu         s7, s6, s6
                  beq          s0, s9, sub_3_3_0_t #branch for loop 0
                  xor          sp, t6, t3
                  lui          s3, 951301
                  bge          s4, t5, sub_3_3_1_t #branch for loop 1
                  addi         gp, t2, 1587
                  bgeu         gp, zero, 372f
                  bge          a6, t1, 374f
                  slti         t2, ra, 1061
                  nop
                  ori          t5, s5, -918
                  srl          t4, t3, t0
                  bgeu         t6, s3, 378f
                  srl          s7, s3, tp
                  or           a7, s8, ra
                  srai         s10, a5, 16
                  bne          a6, a1, 371f
                  andi         s0, s9, -1515
370:              bne          t3, sp, 385f
371:              bgeu         a4, t1, 381f
372:              bltu         s5, t3, 381f
                  xor          s6, s3, a5
374:              lui          t1, 903760
                  srai         s4, s2, 17
                  srl          s3, a6, s5
                  bne          t0, a7, 391f
378:              addi         a0, a3, 1090
                  auipc        t5, 142882
                  bltu         s8, t0, 384f
381:              srl          s9, t1, a1
                  add          ra, a2, s6
                  sra          zero, a2, t0
384:              bgeu         t4, t0, 398f
385:              sltu         zero, a6, s8
                  lui          sp, 208625
                  add          tp, t5, t0
                  lui          s6, 1048486
                  xori         a0, s10, 90
                  xor          sp, s5, s2
391:              sub          t6, s6, s11
                  andi         s1, a0, 1075
                  auipc        tp, 431472
                  slli         t4, t6, 26
                  bne          s6, s2, 397f
                  bge          a2, s6, 404f
                  addi         t0, zero, -4 #init loop 1 counter
                  slli         s1, a7, 8
                  sltu         tp, zero, a7
                  srli         a6, t5, 23
                  addi         sp, zero, -11 #init loop 1 limit
                  nop
                  nop
                  srli         s1, a6, 14
                  sub          a0, a0, s4
sub_3_9_1_t:      ori          a1, s6, 1452
                  srl          s9, t5, t6
                  addi         t0, t0, -5 #update loop 1 counter
                  ori          a0, sp, -1178
                  srl          a1, s5, s11
                  addi         t6, zero, 10 #init loop 0 counter
                  andi         a1, s4, 154
                  and          zero, s8, a3
                  srl          a5, t3, t3
                  addi         s11, zero, -9 #init loop 0 limit
sub_3_9_0_t:      or           t5, t3, s7
                  addi         t6, t6, -5 #update loop 0 counter
                  and          s10, s11, s11
                  srl          a7, s2, gp
                  bge          t6, s11, sub_3_9_0_t #branch for loop 0
                  ori          s1, s7, -140
                  srai         s10, s6, 27
                  srai         zero, s8, 31
                  bge          t0, sp, sub_3_9_1_t #branch for loop 1
                  sltiu        s9, a4, -401
397:              bltu         s5, zero, 411f
398:              addi         s7, a2, 1387
                  xor          tp, t1, s7
                  auipc        t4, 530575
                  auipc        tp, 946262
                  and          s3, t6, s1
                  srli         s11, s11, 2
404:              slti         s6, ra, -1711
                  ori          a0, s1, 71
                  slt          sp, s6, s5
                  bne          sp, a2, 409f
                  bgeu         s5, t4, 424f
409:              lui          s9, 229769
                  ori          a0, s2, -877
411:              addi         a6, s9, -1286
                  srli         s6, t6, 8
                  addi         a3, zero, 4 #init loop 0 counter
                  addi         a0, zero, 20 #init loop 0 limit
                  addi         a7, t2, -1997
                  sra          ra, a2, s9
sub_3_6_0_t:      sltu         zero, s9, a1
                  sltu         a6, s7, s3
                  addi         a3, a3, 9 #update loop 0 counter
                  srli         t1, s6, 18
                  bltu         a3, a0, sub_3_6_0_t #branch for loop 0
                  and          t0, s7, sp
                  srl          sp, s11, gp
                  slti         s5, zero, -246
                  sra          a0, zero, s0
                  blt          ra, s6, 435f
                  bltu         t0, a2, 433f
                  bge          t6, a0, 427f
                  sra          s4, t0, s6
                  sra          s2, a5, a5
                  srli         t0, s2, 25
                  sra          s4, s1, a4
                  srli         s5, t2, 24
424:              sub          a0, t4, s5
                  or           a5, t5, t5
                  blt          t0, t5, 433f
427:              sub          a1, s3, a3
                  andi         s4, t2, -81
                  blt          s0, s5, 442f
                  bge          s5, a2, 437f
                  slt          a5, s5, s1
                  bgeu         ra, t4, 443f
433:              slti         s0, s7, -538
                  xor          s0, t1, ra
435:              bltu         s0, gp, 449f
                  xori         s4, s10, -539
437:              sra          a1, s7, s5
                  srl          t6, s7, a4
                  auipc        s10, 217813
                  add          gp, a7, t5
                  add          a1, sp, a3
442:              or           a5, s5, a1
443:              bne          s4, sp, 445f
                  and          a0, a2, tp
445:              beq          gp, a1, 460f
                  slli         s3, zero, 8
                  nop
                  blt          a2, s3, 454f
449:              bltu         a1, t3, 464f
                  slt          gp, t0, sp
                  bge          s8, a1, 454f
                  sra          s10, s9, gp
                  auipc        s9, 38460
454:              slli         a6, t4, 12
                  bgeu         a4, gp, 466f
                  sltiu        a0, s8, 93
                  xori         s9, s2, 230
                  andi         s11, a6, -1046
                  slt          s0, a4, a7
460:              sltu         t4, a6, t2
                  bge          a4, t0, 474f
                  ori          t0, t3, -283
                  sub          s6, t2, s9
464:              nop
                  auipc        t5, 1014729
466:              sltu         tp, t6, s9
                  slt          s5, a1, s8
                  and          a3, s6, t2
                  lui          t4, 949971
                  sltu         t6, s1, t0
                  xori         tp, s10, -532
                  srl          zero, s10, s9
                  auipc        s0, 1022745
474:              add          t2, gp, t2
                  xori         a5, t0, 709
                  sltu         t6, a6, t0
                  ori          s10, s4, -1947
                  sltu         s9, t4, t1
                  lui          tp, 583511
                  add          a1, s0, s8
                  andi         s0, s3, 1365
                  bgeu         a1, t4, 496f
                  blt          s0, a4, 502f
                  srl          t5, a7, a6
                  lui          t6, 681039
                  addi         tp, a5, -663
                  addi         a3, zero, -1 #init loop 0 counter
                  or           t1, t2, s11
                  xori         a2, s2, -776
                  srai         s3, tp, 15
                  slti         s7, s0, -2032
                  lui          t4, 639969
                  addi         s10, zero, 15 #init loop 0 limit
                  slt          zero, sp, s3
                  srai         gp, t0, 20
                  xori         tp, a5, -424
sub_3_4_0_t:      or           a5, s11, s1
                  andi         s5, a5, -1847
                  or           s3, t6, s1
                  xor          s6, s7, a4
                  addi         a3, a3, 8 #update loop 0 counter
                  sltu         sp, s2, t5
                  slti         a7, s5, 1001
                  or           s4, t4, tp
                  sll          sp, a6, s6
                  add          s5, a0, t0
                  auipc        s4, 11407
                  addi         s2, s1, -2044
                  ori          a0, a2, -1651
                  sltu         zero, s9, a5
                  beq          a3, s10, sub_3_4_0_t #branch for loop 0
                  ori          s9, tp, 821
                  slt          s0, s1, s3
                  srl          s9, a3, s3
                  auipc        s10, 238584
                  addi         t1, a7, 913
                  or           a6, t5, a2
                  nop
                  auipc        s2, 973587
                  and          t0, a2, t0
                  and          t5, sp, t1
496:              addi         s0, a0, -815
                  lui          gp, 990540
                  sll          s9, sp, s5
                  srai         a2, ra, 29
                  srli         tp, t6, 8
                  bltu         s11, a2, 515f
502:              andi         ra, a6, 1218
                  sll          s9, s0, t4
                  bgeu         zero, t6, 520f
                  and          a3, s1, s7
                  sll          sp, a0, s2
                  sll          a5, a3, s2
                  slti         t4, a0, 1198
                  slti         sp, s4, -1167
                  xori         a6, tp, -340
                  sll          t4, s7, s7
                  srli         s1, a1, 26
                  blt          s4, a0, 515f
                  srai         s9, t4, 4
515:              xori         tp, a5, -1972
                  lui          a5, 435033
                  sltiu        gp, a5, 1166
                  ori          s0, s7, 1113
                  blt          t5, zero, 533f
520:              sub          s2, t5, s10
                  sub          a6, s4, t5
                  add          s10, a1, s8
                  slt          a1, t5, t4
                  bne          gp, s1, 531f
                  or           t1, t3, t6
                  lui          s1, 251380
                  lui          s3, 780267
                  srl          t4, s5, t3
                  bne          a1, s6, 543f
                  bltu         t0, s4, 545f
531:              sra          t0, t1, t0
                  xor          s2, t5, s2
533:              bne          a7, a5, 542f
                  xor          s4, s6, a5
                  bge          a4, zero, 544f
                  sub          t5, s2, t6
                  and          a5, a0, s4
                  slt          s4, t0, a6
                  lui          s2, 951465
                  slti         t5, zero, 1854
                  bltu         s7, sp, 554f
542:              beq          s8, a4, 546f
543:              and          s5, t2, s10
544:              slli         a7, a5, 7
545:              addi         ra, s5, 1120
546:              sltu         gp, s6, a2
                  slt          tp, s0, t1
                  auipc        s6, 299816
                  beq          a3, sp, 557f
                  sltiu        s0, a4, 1555
                  or           tp, s1, s2
                  auipc        a2, 582749
                  auipc        s7, 90966
554:              bne          s11, a0, 569f
                  ori          s0, t0, -225
                  srai         s0, gp, 31
557:              sltiu        a6, t0, 1585
                  srli         t1, s4, 8
                  sltiu        t5, t1, 1707
                  sra          s0, t2, a0
                  ori          a5, a7, -1331
                  auipc        gp, 285046
                  sub          sp, a6, s9
                  nop
                  add          s0, t2, gp
                  andi         a7, s10, -492
                  andi         t6, s0, -117
                  sltiu        s4, s9, -607
569:              beq          a6, t6, 583f
                  slli         s5, t3, 0
                  sltiu        s4, s6, -74
                  bne          s7, s0, 588f
                  beq          t3, s5, 578f
                  xor          sp, a2, ra
                  blt          s4, s6, 576f
576:              bgeu         t3, a5, 586f
                  sll          tp, a4, a2
578:              lui          a0, 125191
                  lui          s1, 587413
                  add          s11, s7, s10
                  andi         s7, gp, 121
                  sll          s11, a4, a1
583:              srli         s0, ra, 22
                  bltu         s8, sp, 587f
                  bge          a1, s0, 592f
586:              addi         a5, t1, 246
587:              srli         gp, s9, 28
588:              sltiu        zero, s3, 564
                  sltu         s4, a3, a7
                  sll          s9, gp, s3
                  andi         s6, t5, -1004
592:              slt          gp, a5, sp
                  xori         sp, t4, -1051
                  lui          a5, 586674
                  slti         a1, t6, -687
                  xori         s1, s6, -1356
                  bgeu         s11, s11, 616f
                  sll          tp, a6, a1
                  andi         s2, s4, -610
                  and          t5, gp, s9
                  sltiu        s1, t5, 657
                  srai         s4, s11, 9
                  nop
                  bltu         a5, s5, 605f
605:              slt          a5, s9, a6
                  slti         a1, a7, -1511
                  ori          sp, s3, 582
                  auipc        s5, 907141
                  ori          s4, t3, -600
                  auipc        t2, 954321
                  bge          s8, a0, 618f
                  sub          s3, s0, s2
                  bne          t1, a3, 616f
                  sra          t4, a3, s2
                  addi         s11, t5, 2046
616:              andi         a6, a4, -775
                  srli         s4, s2, 26
618:              blt          a3, a6, 631f
                  beq          t4, t3, 626f
                  addi         sp, tp, -1718
                  andi         tp, a7, -425
                  sltiu        gp, t0, 1070
                  addi         t2, zero, -4 #init loop 1 counter
                  slti         a6, s1, 974
                  slt          t4, t0, ra
                  addi         a5, zero, 10 #init loop 1 limit
                  slt          a3, s2, s9
                  srl          s5, s3, s9
sub_3_1_1_t:      add          a3, s7, t2
                  addi         t2, t2, 7 #update loop 1 counter
                  auipc        a3, 798593
                  ori          s0, a2, 1095
                  addi         a2, zero, -4 #init loop 0 counter
                  srai         s11, s4, 2
                  slt          zero, s5, a3
                  srai         a0, t2, 24
                  sub          gp, t3, a3
                  add          s3, gp, t2
                  sltiu        s1, t0, 863
                  addi         s0, s8, -466
                  sll          t4, t0, t5
                  xori         t6, ra, 235
                  addi         t5, zero, 1 #init loop 0 limit
sub_3_1_0_t:      add          t4, s3, a1
                  sub          s7, t2, s11
                  addi         a2, a2, 3 #update loop 0 counter
                  ori          t1, s11, -1460
                  srl          t6, s3, t0
                  sra          s2, s7, a2
                  bltu         a2, t5, sub_3_1_0_t #branch for loop 0
                  sub          t1, s7, tp
                  or           t1, s2, t2
                  beq          t2, a5, sub_3_1_1_t #branch for loop 1
                  nop
                  or           s0, t3, s11
                  xori         s0, ra, -1880
                  slti         s2, gp, 716
626:              and          a6, a5, a0
                  or           a0, a3, tp
                  slt          a0, a3, zero
                  addi         t2, s9, -1312
                  xori         t0, gp, 1175
631:              sub          a2, s6, s1
                  nop
                  xor          t5, a1, s8
                  beq          t0, s7, 649f
                  lui          tp, 82603
                  beq          t2, t6, 651f
                  andi         s1, sp, 1453
                  srl          s3, t0, t4
                  beq          tp, t6, 643f
                  and          gp, a5, t2
                  srli         zero, a3, 23
                  beq          s8, s2, 652f
643:              sltiu        a1, t0, 1658
                  addi         a5, zero, -285
                  nop
                  ori          s3, t4, -1547
                  or           s1, t5, a6
                  sub          s7, a0, a6
649:              sltiu        s0, a7, -1872
                  sub          s4, t2, t6
651:              srli         t6, s11, 29
652:              sub          a0, ra, s9
                  bne          a5, a4, 668f
                  bltu         t2, a5, 660f
                  slt          s1, t1, s2
                  nop
                  sub          s1, a7, s5
                  bge          t1, a3, 669f
                  beq          a5, a3, 673f
660:              bge          s11, t4, 674f
                  and          s2, t4, s6
                  sub          s7, t1, a5
                  sltiu        a3, a6, 1743
                  add          gp, t2, s9
                  bltu         a0, a0, 673f
                  addi         a1, s6, -1882
                  slli         t2, tp, 11
668:              sltiu        t0, sp, -1125
669:              ori          a7, s4, 292
                  lui          a5, 570605
                  sltu         sp, ra, a4
                  sub          ra, t3, s6
673:              srli         t5, t5, 2
674:              andi         a7, a1, -576
                  nop
                  sub          a3, s3, a1
                  beq          a7, s10, 692f
                  slli         t1, s0, 2
                  slti         s10, s4, 188
                  or           s1, s3, t3
                  bne          a5, a7, 690f
                  sltiu        s3, t1, 870
                  bge          s11, gp, 699f
                  sltu         t6, s1, s10
                  blt          t6, a6, 688f
                  sll          a1, s5, gp
                  bltu         s1, a3, 696f
688:              slt          s4, s1, a5
                  andi         a3, tp, -1809
690:              xor          t4, zero, s2
                  andi         s0, t5, 1436
692:              bne          s4, a7, 706f
                  srli         t1, a0, 31
                  add          gp, a7, s11
                  lui          t6, 441562
696:              blt          a4, gp, 710f
                  sltu         t4, a7, gp
                  beq          t2, a6, 712f
699:              slt          a2, t1, a0
                  srli         s0, s5, 23
                  srl          tp, s11, s3
                  andi         t2, s1, 1988
                  sra          tp, a6, t4
                  srai         a2, t0, 12
                  andi         ra, a7, 1690
706:              andi         s3, zero, -516
                  sltu         ra, a1, s9
                  srli         t4, s2, 24
                  or           a5, t5, s1
710:              xor          a5, tp, t4
                  bne          s4, a3, 725f
712:              sub          ra, s4, t4
                  sub          s6, a1, a1
                  add          t2, s8, s6
                  lui          t2, 53617
                  srli         s3, a0, 1
                  beq          s3, t1, 722f
                  sltu         a5, a1, t6
                  auipc        s7, 213642
                  addi         t4, a4, 412
                  nop
722:              andi         a5, a6, 942
                  slt          ra, s9, t1
                  nop
725:              and          s4, t3, t6
                  beq          s7, a5, 728f
                  srl          a0, s4, a0
728:              xor          sp, a4, tp
                  beq          a5, a5, 731f
                  nop
731:              and          s11, s3, s4
                  slli         s11, tp, 11
                  xor          a6, a7, s1
                  addi         s10, s5, 1774
                  slti         a0, t3, -330
                  bltu         sp, ra, 752f
                  bltu         t4, a2, 750f
                  slti         zero, t4, -775
                  sltu         t6, tp, t6
                  srai         a0, s9, 17
                  slt          tp, t2, s3
                  sra          t2, s0, gp
                  ori          zero, tp, -38
                  bltu         a4, t0, 758f
                  nop
                  srl          t0, s0, a5
                  slt          s10, t3, zero
                  nop
                  or           a5, s10, a5
750:              lui          s0, 847104
                  blt          t5, a3, 760f
752:              add          s5, s5, a6
                  bltu         t6, a6, 755f
                  addi         a1, s8, -428
755:              bgeu         a7, s8, 758f
                  xori         t2, s10, 933
                  auipc        gp, 927990
758:              xor          t0, tp, a7
                  bgeu         s10, a7, 772f
760:              srai         s11, s0, 9
                  add          a0, t2, t6
                  bge          sp, s3, 767f
                  nop
                  slli         s5, t3, 6
                  bgeu         a6, t5, 779f
                  bltu         s9, s10, 776f
767:              ori          s3, t6, 1996
                  slti         a5, t2, 954
                  addi         s7, s3, -472
                  sltiu        ra, a1, 244
                  beq          s11, s4, 790f
772:              slti         gp, t6, 156
                  xor          s6, s1, s11
                  sltu         a7, s7, t4
                  bge          a6, s6, 776f
776:              sra          a7, t5, a4
                  or           a6, s5, s9
                  beq          s11, s1, 793f
779:              auipc        s9, 952109
                  srl          s6, gp, a0
                  xor          t5, a0, t0
                  sub          t2, t4, zero
                  srai         a2, a4, 2
                  sll          t1, s10, s7
                  sltu         zero, s7, sp
                  sll          a7, s7, s10
                  sltiu        s0, a2, 894
                  srli         s10, t1, 26
                  srl          s2, zero, a3
790:              sltiu        s1, s7, 1906
                  slli         a5, a6, 23
                  sltu         a2, s0, s0
793:              srli         t0, s0, 22
                  xor          s1, a1, a4
                  addi         ra, s0, -2
                  bne          t2, t1, 799f
                  bge          s11, a1, 806f
                  blt          s8, a5, 800f
799:              slt          t1, a7, t6
800:              srl          gp, t6, t6
                  bne          a3, s6, 815f
                  bgeu         s5, t4, 808f
                  slli         a3, s11, 8
                  addi         t4, s8, -413
                  bge          ra, s5, 819f
806:              bltu         s6, a2, 810f
                  bge          s11, a1, 820f
808:              auipc        s7, 208199
                  xori         t6, s3, 759
810:              sltu         t6, s8, tp
                  sll          s1, s11, s5
                  lui          t4, 380035
                  sra          a5, s7, s3
                  sra          s10, t3, a7
815:              beq          a2, s8, 822f
                  blt          t2, a1, 831f
                  sra          t2, s0, a2
                  bne          t2, t2, 832f
819:              srai         ra, t1, 21
820:              srai         a3, ra, 6
                  xor          s0, s3, tp
822:              sltiu        s10, a1, 846
                  ori          s11, s5, 1842
                  andi         s5, a3, 114
                  bne          t3, a4, 840f
                  addi         t5, t1, 1923
                  sra          a2, a0, s5
                  srli         zero, t1, 22
                  sll          s3, s8, s6
                  nop
831:              slli         s6, t0, 5
832:              bltu         a7, sp, 847f
                  slt          a1, a5, t3
                  xori         a6, sp, 798
                  xori         sp, sp, 389
                  slt          zero, a0, t2
                  sra          s10, a0, a4
                  bltu         s10, t3, 848f
                  slli         a1, t3, 5
840:              beq          a3, t1, 848f
                  lui          s3, 145382
                  sltu         s0, a1, t3
                  slt          a5, ra, s8
                  xor          t6, a2, a2
                  blt          tp, t4, 848f
                  beq          s10, s3, 848f
847:              andi         s4, a2, -1031
848:              add          a1, t3, t3
                  add          t4, a3, sp
                  lw           tp, 4(t3)
                  addi         t3, t3, 16
                  sub          s4, a0, t1
                  sltu         s5, t0, s1
                  addi         t1, a0, 1232
                  srli         t6, ra, 15
1201:             addi x25, x4, 1
1201:             jalr x25, x25, 0
sub_1:            bge          s11, s5, sub_1_stack_p
                  slt          s10, sp, t6
                  xor          t2, a0, a3
                  addi         a1, s7, 624
                  sltiu        s2, s1, -1735
                  slti         s9, t1, -1447
                  sub          t1, s6, s3
sub_1_stack_p:    addi         t3, t3, -64
                  sw           tp, 4(t3)
                  or           ra, s9, a7
                  xor          sp, a0, s6
                  lui          s1, 669208
                  sltu         a3, a4, s11
                  slti         s9, s1, -1876
                  add          sp, a2, a5
                  andi         s0, a1, 184
                  srai         s1, s9, 17
sub_1_j4:         jal          tp, sub_5 #jump sub_1 -> sub_5
                  sltu         a6, a2, s3
                  xori         a0, t5, 1178
                  sub          a1, s4, t1
                  sltiu        a5, a4, -363
                  la           s2, sub_4
                  lui          s9, 341974
                  or           sp, s8, s10
                  addi         s2, s2, -336
                  or           s1, t3, gp
                  bge          tp, s2, sub_1_j5 #branch to jump instr
                  sltiu        s9, gp, -945
                  sltiu        a1, s11, 1517
                  xor          ra, a7, t2
sub_1_j5:         jalr         tp, s2, 336 #jump sub_1 -> sub_4
                  beq          sp, a7, sub_1_j6 #branch to jump instr
                  or           s4, a4, s10
                  andi         gp, tp, -756
                  andi         a6, t0, -602
                  andi         zero, s10, -627
                  or           sp, t2, a0
sub_1_j6:         jal          tp, sub_4 #jump sub_1 -> sub_4
                  addi         t2, zero, 10 #init loop 0 counter
                  addi         tp, zero, 9 #init loop 0 limit
sub_1_0_0_t:      xori         t6, t5, 144
                  addi         t2, t2, -8 #update loop 0 counter
                  bgeu         t2, tp, sub_1_0_0_t #branch for loop 0
                  slt          s9, s4, s10
                  lui          s9, 933614
                  addi         t5, zero, -1312
                  sltu         s3, ra, s6
                  nop
                  ori          t0, a5, 1839
                  slli         t2, s0, 29
                  bgeu         ra, s7, 24f
                  sra          s10, a3, a5
                  slti         s7, s1, 982
                  srl          s1, t3, s1
                  ori          t4, a3, 1136
                  blt          t5, t2, 20f
                  auipc        t1, 195722
                  slli         t1, t1, 2
                  blt          s3, s8, 20f
                  beq          tp, a4, 25f
                  srl          a6, ra, t5
                  xori         tp, gp, 159
                  slti         s1, s1, 2019
                  slti         t6, t4, -536
20:               slti         a7, s11, -1013
                  bne          t5, gp, 33f
                  nop
                  add          t1, gp, s6
24:               sra          ra, s11, t6
25:               srl          t1, a4, a2
                  beq          t4, s3, 32f
                  or           a2, ra, a3
                  bge          s9, zero, 32f
                  or           ra, a1, s10
                  and          t0, a0, s2
                  slt          s4, s5, a0
32:               bgeu         s6, a3, 48f
33:               slt          gp, t6, a0
                  addi         a6, s5, -938
                  blt          t6, s5, 41f
                  xor          s6, a5, a2
                  sra          s2, a4, a4
                  srl          zero, a1, a1
                  ori          t5, a4, -711
                  auipc        s9, 447492
41:               nop
                  andi         s4, s1, -1343
                  sub          s2, t3, s10
                  addi         t5, s4, 1499
                  bgeu         s4, tp, 53f
                  sra          sp, s6, s8
                  nop
48:               slt          s4, t4, a1
                  slli         a5, a0, 30
                  sltu         s2, sp, sp
                  slt          s11, t6, tp
                  bge          a1, a2, 61f
53:               lui          s1, 285202
                  slt          t0, t1, s9
                  sra          s11, a5, s4
                  srai         a5, t2, 12
                  ori          s3, s9, -910
                  xor          t6, s8, zero
                  srai         t6, s3, 8
                  auipc        s4, 349404
61:               sltiu        s3, s0, -610
                  xori         a5, s2, -242
                  srai         s4, t2, 3
                  blt          a0, a4, 83f
                  slt          t5, s3, s10
                  sltiu        t0, s4, 922
                  bge          a4, s10, 68f
68:               nop
                  or           gp, a4, s8
                  and          t1, a4, t0
                  nop
                  and          a5, t3, s5
                  bne          sp, ra, 88f
                  or           tp, s3, zero
                  sub          s1, t3, s3
                  or           a3, a5, s0
                  andi         s0, t1, -714
                  sltiu        s7, a0, 510
                  sltu         a7, a2, gp
                  ori          s0, s2, 1279
                  sll          s3, s1, zero
                  nop
83:               sub          s7, t6, s10
                  lui          s10, 1025619
                  bne          a2, t3, 87f
                  nop
87:               sub          a2, s3, a5
88:               add          a1, s0, t6
                  lw           tp, 4(t3)
                  srl          ra, s4, t1
                  slli         s9, s0, 28
                  addi         t3, t3, 64
                  srl          s10, t3, s3
                  lui          t0, 304785
                  srai         s11, s1, 14
                  sll          s0, a2, a0
                  add          s2, s1, gp
                  slti         a2, a3, -23
                  addi         s11, gp, 1276
                  and          t4, t6, gp
146:              addi x25, x4, 1
146:              jalr x25, x25, 0
sub_2:            bgeu         a6, t3, sub_2_stack_p
                  ori          s3, a2, 4
                  slli         s3, a7, 17
                  slt          a0, s9, ra
sub_2_stack_p:    addi         t3, t3, -20
                  andi         s7, t3, -1420
                  srli         s7, a7, 10
                  sw           tp, 4(t3)
                  or           s1, gp, t0
                  srl          t0, a2, t0
                  srl          s6, a5, s4
                  bne          gp, t0, sub_2_j7 #branch to jump instr
                  srli         tp, s5, 22
                  slli         a2, s9, 2
                  add          a6, t3, t2
                  addi         a0, s5, 490
sub_2_j7:         jal          tp, sub_3 #jump sub_2 -> sub_3
                  addi         s2, t0, -462
                  slt          t4, s3, sp
                  addi         t2, s8, -707
                  slti         a6, s9, -611
                  slt          a0, a5, tp
                  sltiu        s11, t4, -268
                  beq          s7, t1, 11f
                  blt          t4, t0, 8f
8:                bgeu         a5, s3, 11f
                  addi         s6, a0, -1286
                  blt          t3, tp, 11f
11:               xori         zero, a2, 1691
                  or           a5, s3, s0
                  lw           tp, 4(t3)
                  nop
                  addi         t3, t3, 20
                  andi         a1, s9, 546
                  add          t1, sp, s3
                  sltiu        gp, s11, -246
36:               addi x27, x4, 0
36:               jalr x27, x27, 0
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
.word 0xde3b4c55, 0x907b043d, 0x4c11e88f, 0xd0889f43, 0x3d2faffc, 0xa77e3dc9, 0x372031c6, 0x801a1b2c
.word 0x764ddcdc, 0xe5b96166, 0x2ddaafa7, 0x6c5d2925, 0xdf3baf66, 0x1208fd79, 0xae70a291, 0x7a10067e
.word 0x78ff5f74, 0x899995bc, 0x02b018b1, 0x6a0be008, 0xceef03ff, 0x41eeea45, 0xc226c57d, 0xb7b6e175
.word 0xc7802991, 0x5a74d058, 0xff7b615c, 0xc18ba508, 0x52f6ae16, 0x6caca8b0, 0x4b36bd34, 0xd8693204
.word 0x55ec9c3b, 0xed75feb2, 0x6df94cc3, 0xfa4a0ebc, 0xcc2256ec, 0x144a5b6d, 0xc76d3554, 0x75ed36b8
.word 0xb5c93fe7, 0x8345b813, 0x92fa7757, 0xe3da60ac, 0xf2d76c6f, 0x7b32b757, 0xfd91b670, 0x34204a49
.word 0x3f2b9bbd, 0x72243cb7, 0xd9148bc0, 0x3f1decc9, 0x99dd234b, 0x7def560a, 0x1b81a88f, 0xe3de324d
.word 0x721cca9e, 0x0a4351a0, 0x4b0b9037, 0xaeedd7cf, 0xc0634616, 0xff262433, 0x68a22dfd, 0xdf65ff15
.word 0x893e83dc, 0xac2cbb81, 0xe0fe5232, 0x7e45c8b2, 0x07bc839c, 0x90f5a440, 0x5b7ca6da, 0x4733ac9a
.word 0xbc0e2d2e, 0x82032689, 0x03223d28, 0x50ffd8c1, 0x626238a3, 0x89b03be1, 0xdb955e88, 0x16780a2c
.word 0x6114c808, 0x29cdc841, 0x1a9a5862, 0xc73b8634, 0x339bf006, 0x0c01ad29, 0x116d1da4, 0xf848f835
.word 0x1ab93b40, 0x232904de, 0x23339f0e, 0x8497fcb6, 0xb2ef2553, 0x6ec4d0e1, 0xf8b297fa, 0xce9dfc70
.word 0xc69dce15, 0xbabd37cc, 0xfb35713c, 0xc0326bd6, 0x82a4c423, 0x9c069c77, 0xf7f413b6, 0xee2adfb0
.word 0x2d91cec2, 0x33f3d5dd, 0x3220ecc3, 0x1fe0b220, 0x6ced5bc6, 0xae09976e, 0x299b528f, 0x2ed81ed7
.word 0xce00c2bd, 0xe59953c3, 0x6c7f0b2d, 0xfbef4799, 0xf1c4e1f5, 0xe90ca388, 0xa192605f, 0x6cd0210d
.word 0x6beb4143, 0x864552fa, 0x81a90688, 0xfd80f110, 0x1184588b, 0xac6bace0, 0x2b1dd60e, 0xc50f9e11
.word 0x98a19a43, 0x25e4e838, 0x154c74ed, 0x7e9aba81, 0xdf18af23, 0x9674ce0e, 0xd1626e1b, 0x21cafea5
.word 0xf5726e4c, 0xf4f52dd4, 0xcad03b38, 0x8b9c5e96, 0xc8c5a212, 0x98513907, 0x8892063e, 0x88660028
.word 0x24392f1e, 0x8c33078b, 0x285032b3, 0x39da0f64, 0xb1d14a6e, 0x6db93b0c, 0x3a16b04a, 0x3429eea3
.word 0xb8cec42f, 0xe8ca0d51, 0xedceda95, 0x6090f882, 0xdf3b36cb, 0x6e706825, 0x4de7aadf, 0x2420a042
.word 0xa825b7d5, 0xe3c6ef07, 0x32ac4cac, 0x86c9ad0c, 0xa01e99f1, 0x4c961b8a, 0x1fd45077, 0x52603ba4
.word 0xe990182d, 0xe3645d97, 0x9b8192a8, 0x82ab3e66, 0x47bd1f0a, 0x16792a4f, 0x788068f5, 0x1496439d
.word 0x61c4fdde, 0x1c8dae84, 0x47340256, 0x6e7377ea, 0x9803b67b, 0xd4ab48cd, 0x5d06248f, 0xa0655392
.word 0x81973863, 0xd498849a, 0x00f3babf, 0x3f283542, 0xde4432fe, 0xa9feac32, 0x789fd0ef, 0xfafd9725
.word 0x30517b4c, 0x5cf9e963, 0xa0e0ab0f, 0xd6a507d1, 0xa27dc2f7, 0x0061de81, 0xc45d6115, 0x4b2ae308
.word 0xcbd8259b, 0x0b4287a6, 0x30003e2c, 0x74aba18e, 0xf4d9dbac, 0xd2c881bf, 0x681e95e8, 0x4d385327
.word 0x6e2d515c, 0x7e8f1157, 0xd305f109, 0x272bed7a, 0x7315fcda, 0x410dbf6d, 0xdf051347, 0x200936ad
.word 0xc6a4da37, 0x35f0b149, 0xb6ac1a67, 0xcd1cb448, 0x2f1a0c8c, 0x44d8db70, 0x8078abe0, 0xb3f3fc8f
.word 0x263ebf66, 0x932f091e, 0x4b9a880f, 0xf9a6818f, 0x16b1925f, 0x17581791, 0x28c572a5, 0x21dfb02d
.word 0x2cf6e64f, 0xc77fe581, 0xbcf4ee1e, 0x999b9a6d, 0xebb0be99, 0x16833923, 0x23c4ac99, 0x9c287a7d
.word 0x254fc57d, 0x05aee8fc, 0xa7f09017, 0xc0418196, 0x375a65b8, 0xd557fd66, 0x170f512f, 0xf7f67b5e
.word 0x648df3ad, 0x4088e481, 0x47085bb7, 0x15d2ab58, 0xc672d80e, 0xfb7d16b6, 0xb8eb7567, 0x63357500
.word 0x6ab68c3a, 0xd251d3ad, 0x8faef137, 0x8bf5a629, 0x00942601, 0xd0092564, 0x0d779bc3, 0x1a18bcd2
.word 0x2ae9c68e, 0x5f01f0d5, 0xa1eee2a5, 0x015e5796, 0xff1cf752, 0x2229eefa, 0x795fee6b, 0xef1a2999
.word 0x473ad938, 0x41a40d84, 0xbc61d723, 0x43ede36d, 0x4ec33b01, 0xd36e684b, 0xc24450f3, 0x702153c4
.word 0x6645e85d, 0x31d29c84, 0x46439ca8, 0x23d08354, 0x2fefa8f2, 0x243f2b37, 0x7355b170, 0xacc00d84
.word 0x60af7e99, 0x59d38e4b, 0x20757826, 0x42e663e9, 0x88d2b550, 0xec49904e, 0x72dd1be0, 0x5d8fabcd
.word 0x5bc57660, 0x82910ca8, 0x88276966, 0x5f3a1076, 0x0617d338, 0x04bf3503, 0xe135ee56, 0xbe3d644f
.word 0x5906f4da, 0xa002e5b3, 0x57aee885, 0x6acbc30c, 0xcb436b8c, 0x34e88e4f, 0x8f1c16e8, 0x9198dfa4
.word 0x2ce0bf76, 0x0b069289, 0xe49e72e3, 0x3e704514, 0x49e02257, 0xea4d1f82, 0xa4cfe6ac, 0x9d9f41ee
.word 0xb782ee6a, 0x00803ea2, 0xc7b3ba7f, 0x11fb2072, 0x789d92dc, 0x24928978, 0xe856fc5a, 0xc052724d
.word 0x8c67e635, 0x689527f2, 0xde808611, 0x446b0aa4, 0x7bb81d57, 0x3dcdedbf, 0x068c9a0d, 0xb5b89b53
.word 0xb1c46405, 0x01abbc0d, 0xfbfe04b6, 0xdf43a85a, 0x5ca1f0a5, 0x6f0d6cfa, 0x6f5f9e74, 0x77f52a3a
.word 0x7dde0c6f, 0xc4760eb5, 0x8f40b911, 0x4385c819, 0x2c5673e3, 0x5d74861e, 0x319f85ee, 0x07f452f5
.word 0x9de4559e, 0xa3a0c88e, 0x6856bc08, 0xeeb95725, 0x64fd78e3, 0x7152248a, 0xbbcd7ee1, 0x69496d42
.word 0xac95201f, 0x9cc7df34, 0xf5f88f78, 0xa4c0ac86, 0x0e32eb68, 0xd728e150, 0xe910cd81, 0xec515267
.word 0xdb7268dd, 0xb76617ac, 0x2e2c770e, 0xef6ba340, 0xab9136ed, 0xd7142ea4, 0x78211121, 0xae40bd4f
.word 0xad231858, 0xbc06dbbb, 0x4a411ce1, 0x56fd208b, 0xd0808133, 0xacd414fc, 0x59b9b0d9, 0x8c9efc8b
.word 0x8d4b9571, 0xe309df73, 0xa707b861, 0x0525f0f5, 0x247a5051, 0x3f4b8ee6, 0xd8d61b4e, 0x20ad0cbc
.word 0x49ce5e39, 0xebd3c924, 0xc08b8ab8, 0xcd882f3f, 0x88005026, 0x6681529f, 0x913bfebc, 0x26fbc009
.word 0x33ca23ec, 0x11766cf4, 0x89c08825, 0x9ff62ed9, 0x3db3d44d, 0xb269fe74, 0xc73daf41, 0x26158c9d
.word 0x74530ece, 0xf68e1cc5, 0x9164a4a0, 0x8b98d915, 0x37464a43, 0xcd6bbfee, 0x589e1ee2, 0x8982e7fe
.word 0xc01765a7, 0x24e95235, 0xc7dc24be, 0xe3d8d5ca, 0xb442ed93, 0x51cf3a43, 0x438933d8, 0x18b42c18
.word 0xcf62bf23, 0x54dd7127, 0x3829b72d, 0x346c5d0e, 0xdbcbdec4, 0xf2bbfa17, 0x920c34b7, 0x2bce75d8
.word 0xd6bdbdb5, 0x452b1984, 0x34fd1188, 0x112b48cb, 0xfab72784, 0x71147ea2, 0xddd2fe65, 0x78effe79
.word 0x089745b8, 0x0f856bfc, 0x2cc4f1ea, 0xc6139fb4, 0x0f8d0668, 0x37e1d16c, 0x2e95fff0, 0xe148b485
.word 0xf1168ddb, 0x2fa95b61, 0xd9ef6fad, 0xefd2b23e, 0xb459eb5e, 0x984e7ac9, 0xdf71b758, 0x4d4879da
.word 0x2cf3e132, 0xd414c685, 0xf4474c0c, 0xcfc757d6, 0xaa9b0364, 0x36100dc3, 0xba37e9f9, 0xc236545d
.word 0xa7c519de, 0x64014e74, 0x6192778b, 0x20450359, 0x5a6e1f6a, 0x616d8d70, 0x7cf48dc7, 0x9755e8c0
.word 0x6db2a068, 0xe4690c62, 0x3195ea85, 0x5f28c41c, 0xb107203f, 0x95bd5eac, 0x1203db11, 0x579dc304
.word 0xfd59344a, 0x33867ffd, 0xf8c54650, 0xb791f7f0, 0x01e8b40c, 0x0e2ce39c, 0xb79dc124, 0x87d1744a
.word 0xa4d919a0, 0x23aeae64, 0xb7024332, 0xaf263d69, 0x334a57ba, 0x62a931a1, 0xff64516a, 0x8b9be77b
.word 0xf52058af, 0x183685a4, 0xcc5d9ad4, 0x9847fda0
.section .region_1,"aw",@progbits;
region_1:
.word 0xd6d2af59, 0xe8f61aa9, 0xd96fda61, 0xad45fc4d, 0x4ac95e0f, 0x79e13b43, 0xe6e1a731, 0x9112f7fe
.word 0x18a27a72, 0x18f14628, 0x0b967a74, 0xb729cd4f, 0x4badadb5, 0x716640dd, 0xc93b4dff, 0xc7fe3577
.word 0x208e01d5, 0x628476a5, 0x0b5892f7, 0xfd968b35, 0xb55a9edd, 0xcfce0f83, 0x5d2a716a, 0x5315c56b
.word 0xc977a97e, 0xe05d23c2, 0x18f46b13, 0x268dcaa1, 0xe1c89082, 0xe098fab4, 0x08dad5e4, 0x78f0d7b5
.word 0xe3457537, 0xc1bf7232, 0xbc8bfc34, 0x23f62b47, 0x456a6bb8, 0x1a1ae2f1, 0x0559af74, 0x8eb656a2
.word 0x3e8abbde, 0xa5b4e2e7, 0xfa59c24b, 0x4db286ae, 0xdda2732c, 0x292cd4fa, 0x828ef789, 0x82ac7a87
.word 0x39a274b1, 0xf05d5646, 0x00182055, 0x045b53c9, 0x57c0a0d1, 0x6bbbc8b2, 0x34ecc0dd, 0x7d3cf9aa
.word 0xfdf6d255, 0x4c02cfdd, 0xa7aae5cd, 0xf17a5c9f, 0xdb5968cb, 0xe13a4360, 0x96372bdd, 0x5e0afa06
.word 0x4ef2104c, 0xba01c18f, 0x59967c18, 0xfac993b7, 0x048be14d, 0x0ae631d5, 0x229678dd, 0x3e844f80
.word 0x8816c369, 0xccbd6b8a, 0xec9bf500, 0x62e16035, 0x9a16085e, 0x769fbe5a, 0xe0dc471a, 0x12b98552
.word 0x0d15fc93, 0x5b54a438, 0xa712cf70, 0x208b65f8, 0xdc5b40f8, 0x76f2c865, 0xeca2847d, 0x3334508c
.word 0x25309902, 0xd042b331, 0x0eddf06a, 0xfb89c22a, 0xb038bafb, 0x4ede4aa6, 0x44376593, 0xc2af2151
.word 0x459fed06, 0x1765a260, 0x0885d52b, 0x30ffb490, 0x83876231, 0x32fc8a83, 0x4924bd35, 0x1fd5be86
.word 0xece74ca8, 0xf29129e4, 0x07344c19, 0x77149a48, 0x7244f5ed, 0x11403c4d, 0x9fe16501, 0x5bc9e007
.word 0xbc56e5d0, 0x6e67d47a, 0x860ac2b5, 0x5b314ea6, 0x1c092df1, 0x4945c408, 0x06f99cef, 0x89ab57a7
.word 0x813123bb, 0x6e82f9ab, 0x4519136a, 0xffa68a62, 0x40c80e4f, 0xf8331244, 0x8e2be758, 0xafa03a86
.word 0xa700aa00, 0x282c6c3f, 0x844f4fce, 0x09ae0cf2, 0x59469bd3, 0xb14b0802, 0x05a6fe00, 0x1e15de06
.word 0xcbb02dd3, 0xab18fa9a, 0x56c0f34a, 0x7fe7c171, 0xfe418d18, 0xa3f445a2, 0x15a0fd0c, 0xc94d1ee9
.word 0x7c762cb7, 0xd079f0e7, 0x67192c76, 0xc7f196b1, 0x365013a8, 0x1b4398c3, 0x5507c640, 0x982f2fda
.word 0x835c6bfc, 0x44f6db7a, 0x84a7961c, 0xf26db953, 0x5183db5b, 0xf1db84e2, 0x6c214167, 0xa49ca5ba
.word 0x0dced58e, 0xb0cb04fd, 0x827c749a, 0x41f0fca0, 0x0944d46a, 0xa4711ae1, 0x600fcc61, 0x56e93048
.word 0x96388f76, 0x9aa9fb44, 0x23614d35, 0x81a9eca0, 0x84a44f00, 0x7cfb646f, 0x0686c07a, 0x33be1057
.word 0xa95803d9, 0x19731649, 0x46505885, 0x9685cda3, 0x1aa3262d, 0x4dfeeb15, 0x8fd3566c, 0x8a99f64c
.word 0xc659a3d7, 0xa76c1957, 0x0721333e, 0x8624a361, 0x06aa9178, 0xa3ccc9dc, 0x860154bc, 0xc875c646
.word 0xda231718, 0x798a1797, 0x4fc7ede2, 0xd5d286fa, 0x02e0c946, 0xac9a7ea1, 0x79fd63c4, 0x12826b2f
.word 0x186593b9, 0x6c04d470, 0xda2da387, 0xc78206a1, 0x0ac61eec, 0x623aca4a, 0xef1ae6d9, 0x179a6c86
.word 0x718f3ad0, 0xc7cb3426, 0xecc0fa59, 0xae59e809, 0x6db18049, 0x5f14e3d3, 0x8cb7a195, 0xe93c7f99
.word 0x3b29c767, 0x87d9b658, 0x20a04051, 0x0f02699c, 0x8aa8f543, 0x2a35438f, 0x773256b9, 0x9cc76606
.word 0x99ac0a20, 0x5819e957, 0xb7d40c26, 0x1097b4ad, 0xab613005, 0x9ce1b4f9, 0x1a5273cf, 0x233cf491
.word 0xc8dc855b, 0x6f9788ce, 0x3bd3a608, 0x40f14a29, 0x1efc0c5c, 0xbd7eb0e6, 0xebee7cc5, 0xa30933d2
.word 0x16274b48, 0x4eef655f, 0x863c6e3d, 0x5c78ba42, 0x5f5c86cb, 0xdce398da, 0x32829eb4, 0xfd79be14
.word 0x03008a38, 0xf3767751, 0x01307953, 0xd0e1d6c9, 0x887b65e7, 0x8bbe7938, 0xda47a557, 0x4523dd30
.word 0x13bf5fee, 0xcd58613e, 0xaeec0dd1, 0x28c7d261, 0x74b9b9f6, 0xcadaf9d6, 0x8940d2dc, 0x3ccd392c
.word 0xd07e41c5, 0xccc754b6, 0x677cef4d, 0x37894e00, 0xcd036b1d, 0x5e9dbb73, 0x3153f10e, 0x6a20d844
.word 0x102c94a2, 0x3c67d843, 0xbe4ce6e7, 0x960afaed, 0xc4662f72, 0x41307f1b, 0xf8415ec9, 0xf89b5ef7
.word 0x9d870240, 0x4271fc1c, 0xaa0e9bdd, 0x54cee37f, 0x956073fd, 0x24696054, 0x3a29d696, 0xa63bee53
.word 0xb56fe1d2, 0x9199e1fd, 0x4bc4fb8a, 0x9f7e5f81, 0x4201e625, 0x7e31e52e, 0xd4950dc0, 0x7413dbe2
.word 0x0633cff7, 0x9da6a972, 0x3ef690ed, 0x05020a77, 0xffaec0d7, 0xb3954912, 0xfc504d19, 0x093cf20f
.word 0xa73d6fae, 0xf2ba087b, 0xa617037a, 0xc0aec1ac, 0xe21758be, 0x64d09dc8, 0xac6bc65c, 0xb79d471f
.word 0xe94a504a, 0x751046bb, 0x541023f7, 0x6284b135, 0xfe96f0c9, 0xabdbb5a3, 0x82f2ba2b, 0x1488b2fe
.word 0x6115e807, 0xd5e5367d, 0x62072d19, 0x7d5bc2f0, 0xabf340cc, 0xf3e0f9d4, 0x15c542e0, 0xe1fb8574
.word 0x066da3b7, 0x1f2f3c92, 0x3e0fd9e9, 0x0b9b18cc, 0x0502ff8d, 0x5e8421f6, 0x1b089a1c, 0x40d40dc9
.word 0x55c29de2, 0x8780f7fd, 0x55b65637, 0x02c4af06, 0xb61806ef, 0x1323d9cb, 0x081e01d2, 0x3f553827
.word 0x22827816, 0xea8ef951, 0x9738d79a, 0xab52835a, 0x3adbc429, 0xee204dd7, 0xa57e906d, 0xa004a96a
.word 0x9b08ef4b, 0x793f8ea1, 0x4657a83c, 0x64cdcfd3, 0x13125f97, 0x829445ce, 0xaf17022c, 0x406a64b5
.word 0xf6b3e165, 0x8a8f1482, 0x473d0d27, 0xfe54c6bd, 0xe137d5ea, 0xf31b080a, 0x4a41c234, 0x54172c11
.word 0xc93070d0, 0x6a0fdbfa, 0x54339012, 0xa182a1ca, 0x566eb87d, 0x9dc58fd1, 0xc1996305, 0x29879514
.word 0xa9b97452, 0x1ffedb98, 0x75e08ed6, 0xf43fc55e, 0xa41aba94, 0x3342a9dc, 0x051edd8b, 0xba972f8c
.word 0xf7888a37, 0xb6cba452, 0xc8370a26, 0xa28689e7, 0x5b410d44, 0xc636c963, 0x9b54fe86, 0x37f7675f
.word 0x53098fa5, 0x5a440081, 0xf016dad0, 0x0c1a739f, 0x1a6b176b, 0xe03971ec, 0x4d705c29, 0xd946112f
.word 0x8689d0a5, 0x8deecc11, 0x72f67b37, 0x10534f03, 0x48ea824f, 0x9b7584be, 0x8823a795, 0x4fcd1007
.word 0xa26a2c20, 0x292d80f6, 0x14b6826c, 0x4d494c10, 0x2e55b20f, 0x0a20aaed, 0x374b1801, 0xaa5420f4
.word 0x00f849a4, 0x1019b080, 0xce2ee0c7, 0x24b3b43f, 0xf715e6b2, 0x25f2c3e3, 0xd8fb7783, 0xa58c10ba
.word 0xe41c47e8, 0x947ff304, 0x04d15887, 0xc03601d6, 0x68a941cf, 0xba257562, 0x43766131, 0xeff6b13b
.word 0xa237df8e, 0xe130b018, 0xbe3451cb, 0x1c4bd709, 0x65104578, 0x012797a2, 0xdda9224f, 0xe492e511
.word 0xfada04d9, 0x09aac451, 0xac4c546e, 0x31c4c69a, 0x6516d2de, 0x6c4c8067, 0x234b6c82, 0xbde33a4d
.word 0x37262227, 0xe0cce9a8, 0xf7b15242, 0xadf6aaa8, 0xaa160fef, 0x64fe3cee, 0xbd9351e2, 0x5bf5e22e
.word 0x54e94abc, 0xb54dac82, 0x19beb976, 0xe1533a1e, 0x177c47ec, 0x6fb24bd1, 0x0755dd90, 0xb54dd90b
.word 0x25a36755, 0x1f666c48, 0x471dc0c1, 0x9f9ea32a, 0x4cfbc717, 0x5ba83cf8, 0xd80c0387, 0x6738b512
.word 0x82c1ffd9, 0x3f09fe59, 0x359b3aa8, 0x59c23722, 0xe58aed78, 0x286a9082, 0x115d5d7c, 0x1f7efb48
.word 0x89641d81, 0xb6431586, 0x411afdc0, 0x1c81324e, 0x1e00b215, 0xc3c384d4, 0xd35e51c0, 0xf7cc7c73
.word 0x1871536e, 0x6aaf6083, 0x59ca6bf9, 0xd6e199b9, 0x3863dfdd, 0xd1a54f96, 0xe979ee7a, 0xc01e0557
.word 0x4fc47d45, 0x846705f7, 0x6946af54, 0x34e5cf2f
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
                  add x24, x28, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_2:
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
                  add x24, x28, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_3:
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
                  add x24, x28, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_4:
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
                  add x24, x28, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_5:
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
                  add x24, x28, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_6:
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
                  add x24, x28, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_7:
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
                  add x24, x28, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_8:
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
                  add x24, x28, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_9:
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
                  add x24, x28, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_10:
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
                  add x24, x28, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_11:
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
                  add x24, x28, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_12:
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
                  add x24, x28, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_13:
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
                  add x24, x28, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_14:
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
                  add x24, x28, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_15:
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
                  add x24, x28, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

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
                  add x24, x28, zero
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x22, 0x3 # BREAKPOINT
                  beq x23, x22, ebreak_handler
                  li x22, 0x8 # ECALL_UMODE
                  beq x23, x22, ecall_handler
                  li x22, 0x9 # ECALL_SMODE
                  beq x23, x22, ecall_handler
                  li x22, 0xb # ECALL_MMODE
                  beq x23, x22, ecall_handler
                  li x22, 0x1
                  beq x23, x22, instr_fault_handler
                  li x22, 0x5
                  beq x23, x22, load_fault_handler
                  li x22, 0x7
                  beq x23, x22, store_fault_handler
                  li x22, 0xc
                  beq x23, x22, pt_fault_handler
                  li x22, 0xd
                  beq x23, x22, pt_fault_handler
                  li x22, 0xf
                  beq x23, x22, pt_fault_handler
                  li x22, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x22, illegal_instr_handler
                  csrr x22, 0x343 # MTVAL
                  1: la x14, test_done
                  jalr x1, x14, 0

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
                  la x14, write_tohost
                  jalr x0, x14, 0

instr_fault_handler:
                  add x28, x24, zero
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
                  add x28, x24, zero
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
                  add x28, x24, zero
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
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x28, x24, zero
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
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x28, x24, zero
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
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x28, x24, zero
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
