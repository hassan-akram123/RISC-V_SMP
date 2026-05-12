.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x17, h0_start
jalr x0, x17, 0
h0_start:
                  li x16, 0x40000100
                  csrw 0x301, x16
kernel_sp:        
                  la x19, kernel_stack_end

trap_vec_init:    
                  la x16, mtvec_handler
                  ori x16, x16, 0
                  csrw 0x305, x16 # MTVEC

mepc_setup:       
                  la x16, init
                  csrw 0x341, x16

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x16, 0x1800
                  csrw 0x300, x16 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xa
                  li x2, 0x9f068c55
                  li x3, 0x8622e5f2
                  li x4, 0x2
                  li x5, 0x38bfe531
                  li x6, 0xf0afa4b7
                  li x7, 0x2
                  li x9, 0x0
                  li x10, 0xfc0fc723
                  li x11, 0x2
                  li x12, 0xc
                  li x13, 0x80000000
                  li x14, 0x5618d824
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0x26036b6f
                  li x18, 0x111c83b6
                  li x20, 0x80000000
                  li x21, 0xcf3442f7
                  li x22, 0x80000000
                  li x23, 0xf480d271
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0xf28437e
                  li x27, 0x692b48f3
                  li x28, 0xfceef8ad
                  li x29, 0xfbdc2cd0
                  li x30, 0xe68fab07
                  li x31, 0x80000000
                  la x8, user_stack_end
main:             slt          a0, s6, t4
                  or           a4, a0, t6
                  slti         sp, s10, -701
                  andi         a5, s1, 1012
                  sltu         s6, zero, ra
                  slt          a6, tp, a3
                  la           t0, sub_4
                  addi         t0, t0, 512
                  slli         s8, a5, 29
                  or           t4, a4, sp
                  bltu         t6, s2, main_j2 #branch to jump instr
                  lui          s5, 725734
main_j2:          jalr         t3, t0, -511 #jump main -> sub_4
                  la           s10, sub_2
                  xor          ra, t6, a4
                  addi         s10, s10, 681
                  sltiu        s4, t4, -795
                  add          t3, zero, a1
                  lui          s1, 772955
                  xori         ra, t1, -1321
                  add          tp, s7, a7
                  slli         gp, s0, 18
                  auipc        s5, 595750
main_j3:          jalr         t3, s10, -681 #jump main -> sub_2
                  la           a2, sub_3
                  slli         tp, s7, 13
                  sub          t0, a1, s8
                  and          s8, gp, a2
                  sltiu        t4, gp, 93
                  addi         a0, t2, -501
                  addi         a2, a2, -70
                  slti         s4, a0, -517
                  sltu         s11, t0, t1
main_j4:          jalr         t3, a2, 71 #jump main -> sub_3
                  la           t0, sub_3
                  lui          s4, 144501
                  addi         t0, t0, -1018
                  slli         s10, a3, 4
                  lui          s1, 123854
                  sll          t1, s11, s7
                  sltu         s7, ra, zero
                  xori         s5, t3, -118
main_j5:          jalr         t3, t0, 1019 #jump main -> sub_3
                  addi         t2, zero, 0 #init loop 1 counter
                  addi         zero, a4, -873
                  sltu         a1, a3, t3
                  add          s5, a6, s11
                  add          s1, zero, a3
                  and          a0, s9, t3
                  srl          t3, ra, s1
                  auipc        t4, 657829
                  addi         t0, zero, 14 #init loop 1 limit
                  sltiu        a5, zero, -935
                  add          s2, a2, s8
main_0_1_t:       slti         a0, s4, -757
                  and          s10, t0, a2
                  addi         t2, t2, 7 #update loop 1 counter
                  addi         a6, zero, 7 #init loop 0 counter
                  slt          s4, a2, s5
                  slti         t6, a3, 1260
                  andi         s5, t6, -225
                  srai         a3, s5, 15
                  sltu         ra, s0, t6
                  addi         s9, zero, 13 #init loop 0 limit
main_0_0_t:       andi         s1, a4, -1101
                  srli         sp, zero, 14
                  addi         a6, a6, 2 #update loop 0 counter
                  bltu         a6, s9, main_0_0_t #branch for loop 0
                  andi         a5, a6, -186
                  bltu         t2, t0, main_0_1_t #branch for loop 1
                  slt          s7, s8, t6
                  blt          sp, s5, 10f
                  and          s5, sp, s4
                  and          ra, zero, s7
                  blt          a1, gp, 6f
                  slt          t1, a7, gp
                  or           s4, a2, t2
6:                or           a6, t5, a5
                  andi         t3, s10, -9
                  sltu         t1, sp, a4
                  ori          s4, a2, 769
10:               srai         t0, s4, 2
                  andi         s1, t3, -313
                  beq          s4, s4, 17f
                  sll          zero, a0, tp
                  sub          s5, s0, a2
                  la           s10, sub_1
                  or           t6, a0, a3
                  addi         s10, s10, -795
                  sltu         t3, a6, s1
                  sra          zero, s2, s9
                  ori          t3, t2, 1236
                  bne          a3, a6, main_j1 #branch to jump instr
                  sra          a1, t6, a2
                  andi         t5, a6, -399
main_j1:          jalr         t3, s10, 795 #jump main -> sub_1
                  and          a3, sp, s0
                  srli         s7, a5, 26
17:               slti         t2, s7, 1908
                  bltu         t4, tp, 26f
                  sub          t2, s11, a7
                  bltu         t2, s4, 21f
21:               bltu         s8, s11, 41f
                  xor          a6, zero, s2
                  auipc        a5, 310806
                  bne          ra, tp, 27f
                  srl          zero, t1, s2
26:               andi         s10, sp, -1927
27:               nop
                  sll          s8, t5, sp
                  srl          t4, a1, t5
                  addi         s2, s8, 1997
                  bge          t2, s1, 40f
                  addi         s5, a7, -1101
                  slli         sp, t1, 25
                  bge          s7, a7, 44f
                  or           gp, gp, s5
                  xor          s9, s10, a2
                  andi         tp, s0, -33
                  bltu         a5, s5, 53f
                  srli         s2, s2, 27
40:               xori         s9, sp, -951
41:               xori         t5, s5, -1562
                  bgeu         t0, s8, 48f
                  sub          s6, s4, s5
44:               sub          zero, sp, t0
                  bgeu         t2, a4, 60f
                  slt          t1, s1, s4
                  slti         s1, tp, 347
48:               bgeu         t6, s4, 55f
                  beq          gp, s11, 60f
                  xori         sp, t0, 415
                  sra          s10, s9, s4
                  and          a0, t0, t5
53:               bgeu         s1, s1, 60f
                  bne          s4, s1, 60f
55:               bge          s9, s7, 60f
                  and          a5, s8, t5
                  add          s4, s1, ra
                  bne          gp, a3, 60f
                  bne          a0, a1, 60f
60:               nop
                  la x17, test_done
                  jalr x0, x17, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            lui          gp, 53727
                  slti         t0, tp, 601
                  addi         a5, a5, -61
                  slti         a0, s9, -1321
                  lui          s6, 705732
                  lui          a0, 222101
                  bgeu         a5, a5, sub_2_stack_p
sub_2_stack_p:    addi         s0, s0, -56
                  and          a6, s1, s2
                  and          s6, s9, a0
                  sw           t3, 4(s0)
                  xori         t4, t4, 1867
                  xor          t2, s0, a3
                  sltiu        s5, t2, -56
                  slli         s10, a2, 17
                  sra          a6, t4, s2
                  xori         s2, t2, 1101
                  add          t3, s1, tp
                  srl          zero, zero, t1
                  slti         zero, a0, -1999
                  bne          t1, t1, sub_2_j7 #branch to jump instr
                  addi         s6, s5, 535
sub_2_j7:         jal          t3, sub_5 #jump sub_2 -> sub_5
                  add          a0, s5, sp
                  xori         s6, t6, 2013
                  bltu         t2, s4, 12f
                  auipc        s2, 392233
                  ori          ra, t1, 1891
                  sub          t2, s7, s1
                  sltiu        s7, zero, -944
                  srai         t1, a6, 7
                  lui          a2, 834310
                  srli         s4, s10, 28
                  lui          s5, 751517
                  srai         s7, a4, 28
12:               or           s11, ra, a6
                  sub          a6, a0, a1
                  andi         a4, a5, -974
                  slt          t1, t6, t2
                  slt          tp, s11, t1
                  sra          s6, s4, ra
                  blt          s11, a6, 21f
                  ori          a4, s8, -988
                  srai         t0, zero, 26
21:               addi         a3, a5, -1338
                  nop
                  lw           t3, 4(s0)
                  addi         s0, s0, 56
                  slt          zero, s11, s4
                  slt          s8, t1, t3
50:               addi x30, x28, 1
50:               jalr x30, x30, 0
sub_1:            srl          sp, ra, a5
                  srl          s7, s11, t2
                  and          s2, tp, s4
                  addi         s0, s0, -32
                  srl          s9, sp, a7
                  sw           t3, 4(s0)
                  addi         s10, a2, -1967
                  slli         s7, t2, 22
                  addi         s9, zero, 8 #init loop 1 counter
                  nop
                  add          t6, t3, s11
                  sltu         s6, t0, t2
                  addi         s8, zero, -2 #init loop 1 limit
                  xor          sp, a7, sp
sub_1_4_1_t:      slt          s11, a6, s7
                  addi         s9, s9, -6 #update loop 1 counter
                  or           s11, a6, t3
                  addi         t5, zero, 2 #init loop 0 counter
                  addi         s1, zero, -4 #init loop 0 limit
sub_1_4_0_t:      addi         a3, s6, 368
                  addi         t5, t5, -1 #update loop 0 counter
                  lui          s2, 251132
                  srai         t4, s2, 30
                  slt          tp, a4, s0
                  bge          t5, s1, sub_1_4_0_t #branch for loop 0
                  slti         gp, a7, 628
                  and          t4, t2, ra
                  bge          s9, s8, sub_1_4_1_t #branch for loop 1
                  slli         t1, s3, 5
                  addi         s1, zero, 9 #init loop 1 counter
                  addi         t1, a0, 1450
                  sltu         a0, s2, a1
                  add          s6, t5, s9
                  addi         gp, zero, 17 #init loop 1 limit
sub_1_2_1_t:      add          tp, a6, t4
                  addi         s1, s1, 1 #update loop 1 counter
                  srai         t4, s2, 2
                  srli         a6, t0, 17
                  addi         s9, zero, 9 #init loop 0 counter
                  xor          s6, a2, s10
                  addi         s8, zero, 9 #init loop 0 limit
sub_1_2_0_t:      sltu         s2, a7, ra
                  addi         s9, s9, -8 #update loop 0 counter
                  slli         t6, ra, 25
                  bgeu         s9, s8, sub_1_2_0_t #branch for loop 0
                  bne          s1, gp, sub_1_2_1_t #branch for loop 1
                  nop
                  addi         s9, zero, -6 #init loop 1 counter
                  xori         t2, s10, 593
                  sra          t5, s0, a4
                  addi         a0, zero, -20 #init loop 1 limit
                  add          t5, t3, t3
                  add          a3, a5, s6
sub_1_10_1_t:     sub          t5, s8, s10
                  andi         s4, sp, 1007
                  or           a1, a5, s5
                  sltu         a2, s2, a0
                  addi         s9, s9, -7 #update loop 1 counter
                  addi         tp, zero, -2 #init loop 0 counter
                  xor          s10, s10, s0
                  xori         a5, t3, -1479
                  addi         t6, zero, -2 #init loop 0 limit
                  nop
sub_1_10_0_t:     slti         t1, s4, 1047
                  xor          s5, s5, a2
                  sltu         s10, a5, a7
                  addi         tp, tp, -4 #update loop 0 counter
                  xor          t4, s11, a7
                  bge          tp, t6, sub_1_10_0_t #branch for loop 0
                  slti         s11, t4, -1881
                  bne          s9, a0, sub_1_10_1_t #branch for loop 1
                  auipc        t4, 696207
                  addi         a3, zero, 10 #init loop 1 counter
                  srl          a2, s7, s3
                  xor          t1, a2, s1
                  sltu         s9, a0, ra
                  sltiu        s11, a2, -1188
                  addi         ra, zero, 9 #init loop 1 limit
                  andi         s1, tp, -1128
sub_1_6_1_t:      lui          t1, 1021432
                  slli         s5, s0, 28
                  slli         a5, a4, 26
                  nop
                  xori         s2, t5, 1991
                  addi         a3, a3, -8 #update loop 1 counter
                  addi         s10, zero, -4 #init loop 0 counter
                  or           s9, t1, tp
                  ori          s8, t5, 402
                  addi         a5, a3, -848
                  sll          tp, s6, a5
                  srl          t5, t3, a7
                  addi         a1, zero, -6 #init loop 0 limit
                  lui          t2, 870643
sub_1_6_0_t:      ori          s4, s1, 424
                  xor          a6, t6, s9
                  addi         s10, s10, -5 #update loop 0 counter
                  slli         tp, t1, 22
                  auipc        tp, 459891
                  lui          gp, 577403
                  and          tp, a5, sp
                  xor          t2, s0, s11
                  xori         t3, s5, -1650
                  bge          s10, a1, sub_1_6_0_t #branch for loop 0
                  bgeu         a3, ra, sub_1_6_1_t #branch for loop 1
                  srai         s9, s1, 26
                  addi         a2, zero, -9 #init loop 0 counter
                  sll          s7, s7, gp
                  addi         t2, zero, 2 #init loop 0 limit
                  nop
                  srli         s10, a4, 17
                  slli         s1, a7, 5
sub_1_9_0_t:      and          s2, a1, t1
                  addi         a2, a2, 6 #update loop 0 counter
                  sra          ra, t3, t4
                  xori         a6, s9, 906
                  blt          a2, t2, sub_1_9_0_t #branch for loop 0
                  slt          a3, a1, s10
                  addi         s6, zero, 4 #init loop 1 counter
                  addi         t0, zero, -4 #init loop 1 limit
                  xori         s8, s6, -2044
sub_1_1_1_t:      xor          a5, s1, s11
                  sltu         zero, s7, gp
                  and          s10, t5, t5
                  slli         s11, s6, 8
                  or           s10, a1, a1
                  addi         s6, s6, -1 #update loop 1 counter
                  addi         a0, zero, -6 #init loop 0 counter
                  sll          gp, a6, s7
                  srai         zero, s9, 17
                  addi         s9, zero, 2 #init loop 0 limit
sub_1_1_0_t:      slt          t2, s6, sp
                  sll          sp, s8, s5
                  srai         s11, t0, 31
                  andi         a3, s10, 1352
                  ori          s8, s5, 47
                  addi         a0, a0, 1 #update loop 0 counter
                  bltu         a0, s9, sub_1_1_0_t #branch for loop 0
                  auipc        a3, 646665
                  bne          s6, t0, sub_1_1_1_t #branch for loop 1
                  slli         s5, s8, 23
                  addi         a5, zero, -8 #init loop 0 counter
                  sub          s1, s7, s11
                  addi         t3, zero, 2 #init loop 0 limit
sub_1_5_0_t:      xor          a6, s0, s5
                  slti         a0, t2, -72
                  ori          s7, s7, -1300
                  addi         a5, a5, 3 #update loop 0 counter
                  blt          a5, t3, sub_1_5_0_t #branch for loop 0
                  srl          s10, s4, s3
                  addi         t2, zero, -7 #init loop 1 counter
                  addi         gp, zero, 7 #init loop 1 limit
                  nop
sub_1_3_1_t:      xor          zero, s8, s1
                  addi         t2, t2, 7 #update loop 1 counter
                  srli         s1, tp, 0
                  addi         a1, zero, -9 #init loop 0 counter
                  xor          t1, t1, a2
                  addi         s7, zero, -14 #init loop 0 limit
                  slli         a4, t2, 4
sub_1_3_0_t:      sub          t5, a4, s0
                  sra          a5, s4, s6
                  xori         t1, s7, 1801
                  sra          a2, zero, s10
                  addi         a1, a1, -3 #update loop 0 counter
                  slli         a3, a4, 1
                  bge          a1, s7, sub_1_3_0_t #branch for loop 0
                  bne          t2, gp, sub_1_3_1_t #branch for loop 1
                  ori          s2, s7, 1900
                  addi         a6, zero, 2 #init loop 0 counter
                  srai         s8, a3, 16
                  andi         t6, a3, -408
                  addi         s9, zero, -6 #init loop 0 limit
                  lui          gp, 817473
sub_1_11_0_t:     sub          tp, t6, t6
                  and          a2, gp, s0
                  addi         a6, a6, -4 #update loop 0 counter
                  bne          a6, s9, sub_1_11_0_t #branch for loop 0
                  addi         t5, a1, 1353
                  addi         a6, zero, 2 #init loop 0 counter
                  auipc        s11, 257007
                  slt          a4, s9, s5
                  sra          s11, a3, t3
                  addi         s10, zero, 20 #init loop 0 limit
                  slti         s9, s9, 1179
sub_1_8_0_t:      ori          s8, s9, 224
                  sra          t6, t2, s10
                  xor          t3, gp, s9
                  xor          s8, ra, s2
                  addi         a6, a6, 3 #update loop 0 counter
                  andi         a0, t6, 1722
                  bne          a6, s10, sub_1_8_0_t #branch for loop 0
                  xor          gp, s6, a1
                  sltiu        t0, s8, 610
                  srli         s2, s9, 16
                  nop
                  srli         t1, a1, 20
                  bne          s7, s11, 16f
                  bge          s6, t3, 17f
                  and          s6, a3, t3
                  sltiu        a1, t0, -1329
                  addi         a3, s10, 1623
                  blt          t4, ra, 25f
                  lui          a0, 958302
                  srai         s11, s7, 30
                  xori         s10, a6, -1720
                  sltu         a6, s4, s2
                  lui          s9, 113854
                  sll          t2, a5, s9
16:               sll          a5, a1, a5
17:               bne          s3, a3, 27f
                  bne          a1, tp, 23f
                  sub          a4, a5, a1
                  slti         a0, a0, -901
                  slt          sp, s5, a6
                  srli         s4, a0, 6
23:               bge          t2, t2, 38f
                  nop
25:               sll          a3, a4, s11
                  sll          t6, s11, s9
27:               slt          t3, s9, s7
                  slli         s4, a1, 10
                  sub          ra, a3, a1
                  beq          t2, t6, 32f
                  sltu         s7, s9, a3
32:               xori         a0, tp, 625
                  auipc        a6, 332852
                  lui          ra, 8545
                  srai         a6, a2, 15
                  bltu         s9, tp, 45f
                  beq          a5, s6, 54f
38:               or           a5, s11, t5
                  xor          a0, t6, s6
                  add          ra, s2, s0
                  slli         s8, s0, 18
                  or           a5, a7, s11
                  sra          t3, ra, s2
                  xori         t0, a7, -1332
45:               srl          s4, t5, s3
                  sltiu        s9, s5, 2023
                  beq          s4, t4, 61f
                  auipc        zero, 569276
                  slti         a0, s4, -1466
                  sub          t3, sp, t5
                  bltu         s3, s5, 53f
                  or           s6, a4, t6
53:               srai         t3, a6, 28
54:               bgeu         s9, t5, 73f
                  sll          a4, a6, s6
                  beq          a4, tp, 63f
                  xori         t2, s2, 1075
                  srli         t5, s10, 24
                  andi         zero, a0, 909
                  andi         t1, t6, -1653
61:               andi         s11, s3, 1876
                  addi         s4, a2, 2037
63:               nop
                  slt          s8, s1, s10
                  bge          s3, s9, 83f
                  lui          t1, 314808
                  sra          t1, s1, a7
                  bge          a5, tp, 79f
                  bgeu         s5, t5, 88f
                  slli         t1, s7, 26
                  add          s4, a6, s11
                  slli         s2, s3, 8
73:               srl          t6, gp, zero
                  srli         ra, a4, 28
                  ori          a0, a5, 602
                  or           t3, gp, s1
                  bgeu         s10, a5, 89f
                  bne          sp, a2, 93f
79:               srli         t0, a7, 10
                  slli         t5, s10, 3
                  nop
                  nop
83:               auipc        t1, 400938
                  srl          sp, s4, t2
                  andi         a1, a5, 465
                  srli         t6, s4, 31
                  srli         a3, a1, 18
88:               lui          s2, 874505
89:               srai         a3, a4, 16
                  sub          t6, a6, gp
                  xor          t3, s10, s0
                  srai         a0, s4, 12
93:               slt          t0, s0, s9
                  andi         gp, s4, -797
                  slli         s8, a7, 12
                  bltu         a5, s6, 104f
                  beq          s11, a3, 113f
                  srli         ra, a1, 7
                  sll          gp, a4, a1
                  lui          t2, 724919
                  sra          a4, tp, t3
                  ori          gp, a7, -1244
                  sub          t0, a0, zero
104:              srli         a5, sp, 26
                  add          s2, s1, tp
                  sra          zero, a2, zero
                  slti         a5, a4, -1737
                  bltu         s7, sp, 128f
                  srl          s11, t2, a2
                  lui          t6, 106818
                  slti         s10, a7, -2044
                  ori          gp, t2, -1760
113:              add          gp, t2, a6
                  beq          a2, s10, 132f
                  sub          t3, a6, t6
                  add          t1, t3, s10
                  slt          s1, s1, s5
                  sra          s9, s1, t4
                  or           s5, s3, t2
                  slti         ra, s1, -935
                  ori          t3, s9, -1897
                  andi         zero, s10, 82
                  nop
                  add          a5, s6, a7
                  andi         s9, a2, -36
                  slti         t1, a6, 1522
                  bge          a2, ra, 147f
128:              xor          zero, a0, tp
                  andi         a1, t5, 1972
                  slli         t4, t6, 31
                  sra          a4, s6, s2
132:              and          sp, t3, s1
                  slli         s11, s2, 23
                  blt          s1, t2, 152f
                  add          s7, s9, s7
                  xori         s11, a2, -273
                  slt          t4, a0, a5
                  srai         s9, s0, 25
                  bltu         s9, a2, 154f
                  slti         s8, tp, 1914
                  srl          s10, s0, s3
                  lui          a4, 84010
                  bge          t6, s8, 163f
                  xor          s2, s4, zero
                  bgeu         t1, a7, 151f
                  bne          t2, a2, 157f
147:              sra          s4, t3, s0
                  andi         t3, a6, 1267
                  xor          ra, t0, a6
                  sub          a3, s7, ra
151:              add          a2, s10, s8
152:              sra          s6, s5, s1
                  add          t2, s7, s5
154:              sltiu        a6, t3, 1909
                  sll          a3, s5, t0
                  blt          a1, a2, 170f
157:              sra          a6, s0, s10
                  slt          s5, s7, sp
                  slli         zero, s5, 1
                  xor          s6, tp, a3
                  xori         s1, a3, 813
                  slli         t6, s6, 24
163:              blt          t4, s9, 166f
                  addi         s7, zero, -4 #init loop 1 counter
                  addi         s11, zero, -14 #init loop 1 limit
                  and          t1, a5, t5
sub_1_7_1_t:      sltu         s10, t2, gp
                  or           t0, s7, s5
                  addi         s7, s7, -5 #update loop 1 counter
                  addi         s9, zero, 9 #init loop 0 counter
                  sltiu        s5, t6, 682
                  addi         a6, zero, 13 #init loop 0 limit
sub_1_7_0_t:      slti         t5, t0, -1962
                  add          s10, s4, a2
                  addi         s9, s9, 6 #update loop 0 counter
                  slti         a1, sp, -1618
                  bltu         s9, a6, sub_1_7_0_t #branch for loop 0
                  slti         s6, s5, 1320
                  beq          s7, s11, sub_1_7_1_t #branch for loop 1
                  sub          s6, tp, s0
                  xor          t1, t6, a5
                  srli         s5, s10, 1
166:              srai         sp, zero, 14
                  bge          a6, tp, 181f
                  andi         s8, t1, -68
                  xor          s5, s1, a3
170:              slti         a2, a7, -581
                  bge          s2, ra, 176f
                  sra          ra, t4, s10
                  ori          t1, s4, 936
                  srai         sp, s8, 30
                  auipc        gp, 203176
176:              and          a3, t1, tp
                  blt          s3, gp, 196f
                  slti         t4, s3, 90
                  bltu         s4, s7, 197f
                  ori          a5, a1, -1864
181:              sub          s2, s2, s5
                  xori         a4, s10, -1383
                  xor          gp, tp, s2
                  addi         zero, s8, -510
                  addi         s4, a4, 1604
                  or           a4, ra, t5
                  bltu         gp, gp, 205f
                  sub          t2, s2, s7
                  lui          ra, 489723
                  andi         a5, zero, -50
                  sra          s10, t0, t5
                  or           s2, s8, s3
                  beq          gp, a3, 196f
                  slti         t6, t5, 169
                  or           t3, a6, t4
196:              sltiu        s2, zero, 1601
197:              bge          s7, a2, 209f
                  slli         s5, s0, 2
                  slli         t2, a0, 28
                  bge          a2, t0, 220f
                  sltiu        zero, tp, -97
                  sltiu        t5, t2, 1170
                  slli         s7, a6, 1
                  srl          s1, t5, t3
205:              addi         a1, s2, 485
                  srli         a5, a2, 18
                  nop
                  addi         s7, gp, 1773
209:              bgeu         s3, tp, 225f
                  bgeu         t3, a2, 230f
                  sll          zero, a4, t0
                  slti         t0, a0, -1797
                  sltu         t3, t3, a3
                  srli         t2, gp, 20
                  or           s1, s4, s9
                  sltiu        a6, a1, 740
                  slt          t1, s0, t2
                  bltu         t6, t4, 227f
                  xori         s7, t4, 425
220:              sra          s8, a3, a6
                  sltu         t0, s2, s3
                  bgeu         a0, tp, 229f
                  andi         gp, t0, -1491
                  andi         t3, s9, -969
225:              bltu         a2, t4, 240f
                  bne          s8, t2, 232f
227:              slli         t6, t1, 2
                  and          t3, a2, t5
229:              srl          a6, t5, t6
230:              xor          ra, t0, s11
                  bgeu         ra, a6, 249f
232:              srl          sp, t3, a6
                  srl          s6, t4, t3
                  bge          s0, s5, 244f
                  addi         t4, t3, 1625
                  srl          sp, s8, s3
                  xor          s5, t5, s7
                  sltiu        ra, zero, -1826
                  xor          a4, zero, ra
240:              sltu         a3, a0, a6
                  add          t1, a6, s8
                  sra          t4, a3, a5
                  sltiu        s4, a3, 1566
244:              slli         s1, a6, 29
                  srl          a4, a0, tp
                  lui          gp, 130286
                  slt          t1, a4, t2
                  bltu         t4, t2, 250f
249:              bgeu         s3, s5, 257f
250:              bge          a4, s5, 270f
                  nop
                  sub          s6, a7, zero
                  slt          t5, s3, s11
                  sltu         s2, s10, s10
                  bge          sp, s9, 269f
                  andi         s2, tp, 42
257:              bne          s5, s0, 273f
                  auipc        a0, 669196
                  or           a0, ra, t5
                  sra          a0, a7, s10
                  bltu         t5, a5, 263f
                  sltiu        a2, a5, 1814
263:              and          zero, a4, sp
                  blt          t3, t6, 276f
                  lui          s11, 148048
                  and          s7, a2, s6
                  slli         s2, a4, 17
                  bne          t6, s3, 283f
269:              lui          t4, 1040626
270:              sltiu        a5, t2, 799
                  sll          t4, t3, s10
                  addi         ra, s11, 1697
273:              srli         gp, a6, 25
                  slli         t5, s1, 11
                  and          a4, a6, s1
276:              xori         s4, s4, -333
                  auipc        t1, 274074
                  xor          ra, t0, zero
                  bne          a4, gp, 290f
                  bgeu         t2, a7, 299f
                  slti         s6, s4, 108
                  sub          s6, t5, s0
283:              srai         a2, s3, 13
                  sll          a5, a6, s6
                  sltu         s9, s10, a1
                  andi         a2, t5, -1456
                  bge          s7, a2, 304f
                  srai         sp, a1, 0
                  nop
290:              bltu         t4, a1, 305f
                  blt          a1, t6, 302f
                  blt          s4, s1, 304f
                  srl          gp, a5, sp
                  sll          s7, a7, s1
                  xor          s2, sp, s6
                  bltu         a1, s9, 316f
                  slti         t0, s6, 502
                  sll          t0, sp, ra
299:              sra          s8, s9, a6
                  nop
                  addi         ra, s10, -82
302:              slti         a4, a2, -732
                  sll          s2, a2, s10
304:              srai         s8, s2, 15
305:              beq          a0, tp, 325f
                  addi         tp, a6, 1897
                  sltiu        t3, a2, -677
                  bgeu         a5, t0, 322f
                  and          s10, s11, s8
                  xor          a3, t2, s3
                  sub          s5, s5, gp
                  xori         s7, sp, 1840
                  xor          tp, s5, t0
                  xor          s2, t4, s11
                  add          s9, a0, s1
316:              sra          a4, a0, a7
                  ori          t5, t3, -331
                  lui          s1, 154091
                  sltiu        t1, ra, -1712
                  lui          t5, 437106
                  and          s9, a1, s6
322:              slti         a4, t0, 1244
                  sub          ra, s3, tp
                  slt          a5, a4, a1
325:              andi         s4, a2, -1854
                  bltu         a4, s7, 345f
                  sll          a4, t0, tp
                  slt          t3, t0, t4
                  bne          s10, s11, 341f
                  srai         gp, s8, 20
                  xori         t5, s3, 1923
                  add          t6, a6, a7
                  slli         zero, a4, 14
                  srl          gp, s6, a3
                  srl          a5, a2, s3
                  nop
                  beq          a7, t1, 355f
                  sra          s6, a3, t1
                  slti         s10, s2, -1797
                  xor          s7, sp, t1
341:              bgeu         a1, a5, 356f
                  lui          t0, 61361
                  bgeu         a5, s0, 345f
                  blt          a0, s0, 350f
345:              bgeu         s6, s0, 365f
                  auipc        ra, 243962
                  slli         a6, a5, 12
                  sub          a1, zero, a2
                  bgeu         t0, a2, 368f
350:              add          a2, t0, sp
                  xor          a0, s1, s5
                  srai         a2, s10, 18
                  srai         a1, t3, 23
                  sltiu        s7, sp, 987
355:              xor          gp, zero, ra
356:              ori          s6, ra, -1759
                  beq          gp, zero, 359f
                  bne          zero, a7, 365f
359:              ori          a3, a1, -1793
                  sra          a3, s2, s9
                  srl          a2, s0, s1
                  slti         s11, s8, -44
                  slti         s10, s8, 26
                  srai         s6, t5, 30
365:              nop
                  sltiu        gp, t2, 1332
                  ori          zero, t2, -319
368:              srli         t6, s5, 2
                  auipc        s7, 364125
                  add          a5, a7, a3
                  srl          t0, a1, s9
                  blt          ra, s9, 388f
                  srli         zero, s11, 9
                  srai         t0, gp, 5
                  xori         a0, sp, -1259
                  nop
                  srai         s11, s3, 6
                  sll          a6, s8, s2
                  ori          sp, tp, -203
                  lui          s8, 840761
                  auipc        s2, 89290
                  xori         t3, a5, 207
                  and          t1, ra, a5
                  slli         zero, t2, 0
                  nop
                  blt          ra, t3, 398f
                  lui          a1, 1039946
388:              bge          s8, a5, 406f
                  xori         s7, s11, 1961
                  lui          t6, 906371
                  bne          s4, tp, 407f
                  addi         t3, t3, 1229
                  beq          s0, t5, 407f
                  andi         t3, a5, -221
                  srl          ra, s4, s7
                  bltu         a5, s9, 407f
                  bge          gp, a3, 415f
398:              xor          tp, s1, s5
                  andi         s1, a1, 1341
                  bne          s9, a5, 409f
                  bne          t2, a6, 413f
                  add          t5, s3, s3
                  sll          a2, a0, s9
                  xor          sp, s5, gp
                  srl          s4, a2, s2
406:              bltu         s3, s6, 416f
407:              srai         s6, t1, 4
                  and          s10, s9, t2
409:              lui          s7, 474255
                  bne          a5, tp, 425f
                  and          s5, sp, a2
                  bne          t6, s11, 420f
413:              lui          t3, 442592
                  srai         gp, s8, 29
415:              slli         s8, s11, 0
416:              bge          gp, s3, 431f
                  xor          s9, s5, s3
                  sltu         tp, a3, s3
                  slt          s2, s5, s8
420:              xor          a1, t6, t2
                  add          s9, s8, sp
                  sra          a2, t5, s5
                  addi         s7, a1, -837
                  xori         s11, a7, 1536
425:              xori         s1, s1, 1623
                  xori         a5, t3, 1109
                  bltu         tp, tp, 430f
                  bne          tp, a1, 433f
                  sltiu        a6, s0, 1775
430:              xor          a2, sp, s1
431:              sltu         t3, a0, s5
                  srai         s7, s8, 8
433:              beq          a4, t2, 450f
                  add          tp, t5, s8
                  srai         t2, s0, 16
                  beq          sp, s8, 447f
                  slti         tp, s7, -1052
                  add          s6, tp, t0
                  and          s9, a2, s10
                  beq          sp, sp, 460f
                  lui          a6, 248755
                  srli         s10, a3, 21
                  xor          t0, gp, a5
                  bne          t5, a0, 460f
                  slti         sp, a0, -1597
                  slti         a3, a4, 570
447:              add          s6, s3, a3
                  srl          a3, s1, ra
                  bne          s9, sp, 464f
450:              bltu         gp, a0, 457f
                  sra          a1, zero, s11
                  nop
                  slli         t5, tp, 5
                  bgeu         t0, a0, 466f
                  bne          s4, a7, 469f
                  lui          t6, 218282
457:              sub          s7, s3, s0
                  xor          t6, t5, s5
                  ori          gp, s10, -606
460:              bne          s5, s0, 463f
                  addi         s1, gp, 1932
                  bltu         a4, sp, 464f
463:              or           a3, a7, t6
464:              and          t0, s0, a1
                  blt          zero, s9, 477f
466:              nop
                  or           s7, s0, a5
                  sra          t2, a3, a0
469:              bne          a4, a3, 487f
                  bgeu         tp, s7, 485f
                  sll          sp, a2, zero
                  slt          ra, s10, t3
                  sltiu        s11, a3, -183
                  bgeu         s11, t0, 486f
                  bgeu         s1, s9, 492f
                  andi         a1, t2, 439
477:              lui          t3, 184672
                  srli         s5, a4, 0
                  sra          s11, t5, sp
                  addi         tp, t1, 1118
                  sll          a0, s3, sp
                  slti         ra, a7, 1989
                  slt          s1, s0, t4
                  xori         s10, ra, 204
485:              slti         sp, tp, 712
486:              addi         a2, t3, -1129
487:              bge          s9, s3, 498f
                  srl          t6, gp, gp
                  nop
                  or           s1, a3, t2
                  or           s1, t6, a0
                  sltu         t1, a4, s10
                  la           a0, sub_5
                  andi         t1, a2, -1761
                  addi         a0, a0, -796
                  add          a1, a5, t4
                  bne          s7, a5, sub_1_j6 #branch to jump instr
                  addi         a6, t4, -872
sub_1_j6:         jalr         t3, a0, 796 #jump sub_1 -> sub_5
                  sra          tp, s1, s3
                  bne          s0, t4, 511f
492:              xori         s7, a3, -914
                  sra          a4, s10, t2
                  nop
                  bne          t3, s2, 509f
                  srli         s8, s10, 22
                  lui          t4, 234739
498:              bne          t1, sp, 513f
                  srai         a2, tp, 23
                  lui          a3, 781668
                  bltu         a4, tp, 507f
                  slt          a4, s7, zero
                  bgeu         a0, t2, 505f
                  bne          s4, s2, 509f
505:              auipc        s6, 771493
                  or           s5, s7, t1
507:              blt          t6, t6, 526f
                  sll          s11, t1, s1
509:              slti         a5, a5, 1518
                  add          t4, s6, s2
511:              bgeu         s8, s6, 519f
                  add          tp, s11, s0
513:              sll          t0, t3, a2
                  bne          a7, a0, 530f
                  beq          zero, s2, 525f
                  nop
                  blt          t5, t0, 535f
                  addi         t3, s3, 654
519:              sltu         t1, t3, a6
                  sub          t1, t2, t4
                  slli         zero, s7, 8
                  sll          s10, s3, t5
                  sltu         t1, s1, s5
                  sltu         s7, a4, tp
525:              srli         t6, s8, 23
526:              xori         t4, t6, 779
                  xori         s6, t4, 259
                  slli         sp, s10, 21
                  sltiu        s2, s4, -754
530:              bge          t6, a0, 541f
                  lui          a4, 98607
                  lui          t3, 936980
                  beq          t2, t0, 552f
                  slli         s6, s9, 23
535:              bge          sp, t4, 553f
                  xor          a0, a0, a6
                  srl          s4, t0, s4
                  xor          s11, s0, a6
                  srli         t0, sp, 9
                  blt          a4, t3, 549f
541:              sra          a0, t6, zero
                  bne          zero, zero, 562f
                  bgeu         a3, a4, 548f
                  blt          s6, s4, 556f
                  nop
                  sub          sp, s5, t1
                  srli         a6, t0, 25
548:              lui          s5, 619734
549:              xori         a1, s6, -1765
                  lui          a6, 586076
                  lui          t1, 983827
552:              sltiu        s6, a0, 1921
553:              sra          s1, s8, gp
                  bne          a6, s7, 562f
                  srai         s7, t5, 13
556:              sll          s8, gp, a1
                  sltiu        s11, t0, -1493
                  add          a4, sp, t5
                  blt          s9, s7, 576f
                  bne          a2, a4, 562f
                  beq          t5, s2, 572f
562:              sra          a3, t4, a0
                  lui          t0, 320375
                  srai         a5, s9, 31
                  beq          t0, s10, 584f
                  sra          s7, s4, a1
                  and          s2, a0, t3
                  beq          t5, tp, 575f
                  xori         t3, s8, 1317
                  slt          t2, ra, t6
                  add          a1, s5, ra
572:              ori          s11, s6, 1433
                  srli         s2, t2, 9
                  auipc        s5, 788434
575:              or           t1, t1, a1
576:              slli         s6, s10, 3
                  bgeu         t3, t4, 580f
                  sll          s5, a2, t1
                  addi         a2, tp, -1744
580:              beq          s2, s8, 592f
                  auipc        a1, 1039179
                  sub          t4, s9, s8
                  xor          s4, t1, t1
584:              sltu         sp, s5, t2
                  add          s9, t4, ra
                  addi         s1, sp, 1899
                  bltu         zero, a3, 601f
                  srli         t5, t5, 9
                  ori          t1, s6, -196
                  lui          a5, 617162
                  bltu         ra, s1, 602f
592:              beq          ra, zero, 611f
                  xor          a1, ra, s6
                  sltu         s7, a1, t3
                  slti         sp, s10, -238
                  sltu         t3, t6, a1
                  slti         t1, s0, -235
                  nop
                  slt          s2, t4, s0
                  auipc        t4, 353860
601:              sra          s11, s6, t0
602:              slti         a0, s9, -658
                  sub          a5, gp, t5
                  bge          sp, t1, 613f
                  sra          s4, t0, s3
                  sub          s1, zero, a6
                  or           s5, s2, t2
                  srai         s10, s10, 12
                  lui          s1, 176004
                  srai         s8, s11, 23
611:              sltiu        t6, t4, 309
                  sra          s1, gp, a5
613:              beq          t6, tp, 623f
                  sll          s9, ra, t6
                  sub          a2, a3, t6
                  bltu         a2, ra, 622f
                  auipc        gp, 211874
                  lui          s9, 516320
                  slti         s6, t3, 399
                  auipc        t2, 995837
                  or           sp, t3, a5
622:              and          a2, s4, s9
623:              srl          a3, sp, s6
                  srli         t0, s0, 22
                  sltu         s6, s0, s2
                  addi         s1, zero, 8 #init loop 1 counter
                  addi         t0, zero, -1 #init loop 1 limit
                  sltu         a6, s0, t5
                  srl          s2, t2, a6
sub_1_0_1_t:      slt          s2, t3, t2
                  addi         s1, s1, -4 #update loop 1 counter
                  nop
                  addi         a0, a5, -1188
                  addi         t1, zero, 5 #init loop 0 counter
                  addi         tp, zero, 5 #init loop 0 limit
                  add          a3, s5, a2
                  sub          s6, s1, a5
sub_1_0_0_t:      xori         a0, s7, 1336
                  andi         s2, s11, 1731
                  sltiu        s8, s0, -1222
                  slt          s8, gp, s9
                  addi         t1, t1, -4 #update loop 0 counter
                  bgeu         t1, tp, sub_1_0_0_t #branch for loop 0
                  nop
                  bge          s1, t0, sub_1_0_1_t #branch for loop 1
                  auipc        t6, 779420
                  slt          gp, t3, ra
                  srli         s6, s3, 22
                  ori          a2, t6, 654
                  sltiu        ra, gp, -800
                  lw           t3, 4(s0)
                  sltu         t1, s2, s9
                  addi         s0, s0, 32
                  slti         t5, zero, -1404
874:              addi x25, x28, 1
874:              jalr x25, x25, 0
sub_5:            srl          ra, a2, a1
                  slt          tp, s1, a6
                  bne          s9, t5, sub_5_stack_p
sub_5_stack_p:    addi         s0, s0, -64
                  ori          a6, ra, -1586
                  sw           t3, 4(s0)
                  auipc        s8, 437488
                  auipc        a1, 145669
                  sltiu        a5, ra, -253
                  xor          ra, s9, s1
                  addi         t6, zero, 10 #init loop 1 counter
                  andi         s6, s8, 1998
                  and          s9, t0, a5
                  andi         s1, s11, -1865
                  ori          a5, s2, -999
                  sltu         s8, a3, a3
                  addi         s10, zero, 9 #init loop 1 limit
                  andi         s9, t0, 542
                  sltiu        t5, a1, -1795
                  or           a2, t2, t4
                  andi         a4, t6, -36
                  addi         s2, t6, -522
sub_5_7_1_t:      addi         t3, s9, 313
                  addi         a3, ra, 1501
                  and          zero, s5, a4
                  slt          a5, a0, t4
                  addi         t6, t6, -7 #update loop 1 counter
                  sltiu        s9, s8, 479
                  sltu         s5, a6, t3
                  addi         sp, zero, 8 #init loop 0 counter
                  srli         t1, a1, 18
                  addi         a0, zero, 4 #init loop 0 limit
                  or           a2, s7, zero
                  sltu         a2, s2, a1
                  and          s11, t2, a7
sub_5_7_0_t:      nop
                  addi         sp, sp, -3 #update loop 0 counter
                  auipc        t3, 916054
                  bgeu         sp, a0, sub_5_7_0_t #branch for loop 0
                  srai         a3, t5, 24
                  sll          s8, t0, gp
                  srl          s4, s7, a2
                  xor          s9, s2, tp
                  bgeu         t6, s10, sub_5_7_1_t #branch for loop 1
                  add          zero, t3, zero
                  addi         s9, zero, 8 #init loop 0 counter
                  addi         t5, zero, 14 #init loop 0 limit
sub_5_2_0_t:      xor          t1, zero, a7
                  addi         s9, s9, 8 #update loop 0 counter
                  blt          s9, t5, sub_5_2_0_t #branch for loop 0
                  andi         a6, a4, 1673
                  addi         a3, zero, 2 #init loop 1 counter
                  slt          a6, a6, s8
                  auipc        s4, 286079
                  slt          s11, t3, tp
                  addi         s7, zero, -15 #init loop 1 limit
                  sltiu        gp, s11, -1751
                  slt          a0, t3, a6
                  sll          s8, t1, gp
                  slli         s2, s3, 7
sub_5_4_1_t:      or           a4, a5, s4
                  addi         a3, a3, -6 #update loop 1 counter
                  or           s5, a4, a4
                  srli         t6, s3, 26
                  addi         t0, zero, -5 #init loop 0 counter
                  sra          a6, ra, t1
                  auipc        t5, 692231
                  srli         t5, s3, 17
                  addi         a2, zero, 12 #init loop 0 limit
                  slli         t6, sp, 12
sub_5_4_0_t:      add          s10, ra, sp
                  sltu         s6, a7, t2
                  auipc        t5, 511118
                  addi         t0, t0, 9 #update loop 0 counter
                  andi         a0, t5, -1923
                  blt          t0, a2, sub_5_4_0_t #branch for loop 0
                  bge          a3, s7, sub_5_4_1_t #branch for loop 1
                  sll          tp, t0, a2
                  addi         a5, zero, 10 #init loop 0 counter
                  sub          t3, s2, s0
                  slli         a2, s11, 20
                  or           zero, s6, gp
                  auipc        s7, 532299
                  add          sp, t4, a4
                  addi         t0, zero, 6 #init loop 0 limit
                  sll          a1, a1, s11
sub_5_3_0_t:      andi         a2, tp, 10
                  slti         s4, s3, 222
                  xor          t3, sp, s0
                  addi         a5, a5, -4 #update loop 0 counter
                  sltiu        s6, t6, 791
                  slti         s9, t5, -459
                  slti         s5, a1, -1363
                  ori          tp, s1, 1171
                  slli         s1, a3, 4
                  and          gp, s5, zero
                  slt          s6, a0, t1
                  bgeu         a5, t0, sub_5_3_0_t #branch for loop 0
                  andi         s11, s3, 86
                  addi         t3, zero, 9 #init loop 1 counter
                  xori         t1, s5, 290
                  and          t1, a7, tp
                  srl          a2, a0, a7
                  addi         s4, zero, 18 #init loop 1 limit
sub_5_1_1_t:      nop
                  nop
                  auipc        s10, 996098
                  addi         t3, t3, 9 #update loop 1 counter
                  addi         s11, zero, 10 #init loop 0 counter
                  sub          t4, a6, t4
                  sltu         zero, s7, a3
                  addi         a5, zero, 10 #init loop 0 limit
                  sltu         s8, s3, a7
                  xor          s9, s0, gp
                  add          t5, s7, t3
                  auipc        zero, 814312
sub_5_1_0_t:      andi         s9, t4, 533
                  addi         s11, s11, -9 #update loop 0 counter
                  slt          t2, s3, t5
                  bgeu         s11, a5, sub_5_1_0_t #branch for loop 0
                  xor          s5, sp, a0
                  xori         s5, t0, 1973
                  beq          t3, s4, sub_5_1_1_t #branch for loop 1
                  slti         s6, a2, -1289
                  addi         t2, zero, -9 #init loop 1 counter
                  auipc        s6, 402812
                  srli         s5, a6, 4
                  or           s5, t0, sp
                  lui          s6, 555229
                  sub          a1, t4, sp
                  addi         t3, zero, 9 #init loop 1 limit
                  addi         s5, s7, -904
sub_5_0_1_t:      xori         a0, t0, -67
                  slli         t1, gp, 22
                  addi         t2, t2, 9 #update loop 1 counter
                  and          s11, a7, a6
                  add          a1, a7, t3
                  addi         a4, zero, -10 #init loop 0 counter
                  add          s7, t6, t5
                  addi         s10, zero, 16 #init loop 0 limit
                  and          a3, t4, gp
                  xor          s8, s8, gp
                  srai         s1, s3, 23
                  ori          gp, s9, 1916
sub_5_0_0_t:      andi         gp, t4, 975
                  xor          tp, s0, s9
                  slli         s8, t6, 3
                  addi         a4, a4, 10 #update loop 0 counter
                  bltu         a4, s10, sub_5_0_0_t #branch for loop 0
                  sub          tp, gp, a5
                  bltu         t2, t3, sub_5_0_1_t #branch for loop 1
                  andi         sp, ra, -1709
                  addi         a0, zero, 5 #init loop 1 counter
                  auipc        t6, 143503
                  add          t5, t3, a0
                  add          t6, tp, t0
                  srl          s1, zero, t3
                  nop
                  nop
                  xori         s5, a4, -719
                  srli         a6, a4, 29
                  xori         s1, zero, -1323
                  ori          a2, a7, 1009
                  auipc        s8, 700774
                  addi         t1, zero, 3 #init loop 1 limit
                  ori          t6, t1, -1958
                  sltiu        a4, a1, 342
                  srli         a1, a0, 19
                  sra          s11, t2, s5
sub_5_5_1_t:      sltu         t6, t5, a6
                  slli         s7, s7, 21
                  addi         a0, a0, -1 #update loop 1 counter
                  slt          s4, s8, a2
                  addi         t0, zero, 7 #init loop 0 counter
                  addi         a3, zero, 15 #init loop 0 limit
                  and          s2, a5, s0
sub_5_5_0_t:      xor          ra, s5, a0
                  and          s8, t5, t5
                  add          t2, sp, t3
                  addi         t0, t0, 8 #update loop 0 counter
                  add          tp, sp, ra
                  beq          t0, a3, sub_5_5_0_t #branch for loop 0
                  slti         sp, zero, -1342
                  sub          s2, zero, a5
                  bge          a0, t1, sub_5_5_1_t #branch for loop 1
                  srai         t5, a0, 11
                  sltu         a4, s11, tp
                  xor          a0, a6, s10
                  srli         t6, s9, 10
                  bge          s0, t3, 15f
                  bne          ra, s8, 5f
5:                srli         t0, s0, 15
                  beq          ra, s8, 16f
                  blt          a1, s1, 12f
                  sll          s6, t4, t4
                  or           s5, s0, a2
                  add          a5, a0, s1
                  sra          a2, a7, sp
12:               sra          a1, a2, s10
                  sltu         s9, a7, s2
                  auipc        tp, 235863
15:               srl          s6, t4, s2
16:               srl          a6, t0, tp
                  xori         a4, a5, 690
                  sll          t1, a7, a2
                  sll          t0, a2, s7
                  srai         s6, a1, 30
                  slli         tp, sp, 19
                  blt          tp, sp, 41f
                  add          s5, s7, a0
                  lui          ra, 517188
                  slt          s6, a7, a4
                  sra          t4, t2, t0
                  add          s9, a5, ra
                  blt          s10, a4, 36f
                  blt          t5, s4, 44f
                  slt          s1, s9, sp
                  xor          tp, s7, ra
                  lui          s1, 377882
                  sltiu        a4, s5, -1558
                  bgeu         gp, a5, 40f
                  sltiu        a1, s0, 1490
36:               bltu         a7, s5, 48f
                  sll          t6, sp, s4
                  andi         a0, t6, 728
                  sltiu        s5, gp, -250
40:               sltu         t3, a7, s1
41:               beq          s7, ra, 46f
                  sll          s7, sp, s5
                  bge          a6, t1, 54f
44:               srl          tp, s9, t6
                  xor          sp, sp, s4
46:               bne          gp, s5, 63f
                  srli         t4, s3, 4
48:               xor          t6, a2, t5
                  bne          ra, sp, 55f
                  sub          a0, t1, s8
                  bgeu         tp, s5, 52f
52:               andi         zero, s3, -1700
                  srl          gp, s1, a5
54:               sll          ra, s10, t5
55:               sub          s8, ra, tp
                  beq          sp, s0, 59f
                  beq          a3, s9, 59f
                  lui          a2, 715304
59:               srl          t4, s9, t5
                  bltu         sp, t0, 66f
                  or           s8, a6, sp
                  slti         a5, a1, -663
63:               sll          t0, s4, t5
                  slt          t5, t3, tp
                  xor          a5, a5, a0
66:               srai         a3, s9, 23
                  addi         a6, s5, 427
                  srli         a2, t3, 30
                  sltiu        t6, a1, 263
                  srl          a5, s4, s10
                  bgeu         t5, s4, 75f
                  addi         a6, a2, 670
                  xor          t5, tp, s9
                  sltu         a6, t6, t0
75:               srli         t6, s4, 24
                  ori          s8, t3, 1361
                  auipc        t3, 398313
                  add          s11, s8, a0
                  bltu         gp, zero, 95f
                  lui          zero, 810401
                  sltiu        a0, s0, -1948
                  bltu         a3, zero, 102f
                  beq          a2, t5, 95f
                  sub          tp, s0, sp
                  sra          s4, t1, t6
                  beq          t5, t3, 99f
                  bltu         a2, t3, 103f
                  add          t1, sp, s8
                  andi         s7, s1, -661
                  slli         tp, sp, 20
                  nop
                  add          a2, t4, sp
                  bne          a4, a5, 100f
                  slti         s2, a4, 190
95:               sll          a6, sp, a6
                  ori          t3, a6, -1602
                  xor          s10, t5, a2
                  bge          a0, t4, 101f
99:               nop
100:              bltu         a1, s3, 102f
101:              ori          zero, s1, -959
102:              slti         t4, t0, 2028
103:              srai         s9, t0, 11
                  sra          a0, a0, s7
                  add          sp, a1, s11
                  bne          a6, s3, 107f
107:              srai         s7, t6, 31
                  bge          ra, s2, 112f
                  and          s2, zero, s3
                  slli         a4, t2, 0
                  sub          s7, t3, tp
112:              sltu         a1, a7, a2
                  sltiu        t4, t2, 1280
                  sltiu        s7, a7, 656
                  slli         s4, s3, 14
                  slti         s5, gp, 678
                  bge          t4, s11, 122f
                  addi         a2, zero, 7 #init loop 0 counter
                  xori         s5, s6, 906
                  sltu         t1, s3, a4
                  addi         s7, zero, -9 #init loop 0 limit
                  sltu         a1, s0, s2
                  and          t1, t1, s9
                  addi         s6, ra, 1925
sub_5_6_0_t:      slti         gp, a3, 396
                  sltu         t1, s10, t0
                  addi         a2, a2, -4 #update loop 0 counter
                  xor          s6, s7, tp
                  xor          a4, t4, a0
                  add          a4, s5, t5
                  xori         a6, sp, 722
                  beq          a2, s7, sub_5_6_0_t #branch for loop 0
                  slli         s1, t4, 22
                  addi         a3, s2, -11
                  bne          s0, s0, 125f
                  srai         t6, s4, 17
                  slti         a0, s10, -1772
122:              slt          s1, s7, s6
                  slti         t4, gp, -320
                  ori          a1, t5, 1481
125:              or           t2, t4, t5
                  sll          t4, s10, t2
                  slti         t3, a2, 33
                  sra          t5, s8, zero
                  xori         a4, a1, -925
                  bge          t2, t3, 142f
                  beq          s6, a2, 134f
                  and          t0, ra, a0
                  addi         tp, s11, -873
134:              andi         gp, t3, -1068
                  beq          a6, s6, 152f
                  bge          a3, sp, 142f
                  nop
                  sra          ra, a6, a5
                  beq          t6, t0, 154f
                  bltu         a1, s5, 145f
                  xori         s6, t3, -263
142:              sra          gp, s2, s1
                  or           a2, a7, s9
                  blt          a6, a4, 160f
145:              srl          s4, ra, s10
                  or           gp, t1, gp
                  slli         a6, a3, 31
                  sll          s6, s2, s7
                  slti         s8, s7, 1093
                  nop
                  bge          s7, t0, 164f
152:              bge          s4, s5, 157f
                  srli         s10, s11, 19
154:              lui          t5, 46319
                  bne          a4, s10, 166f
                  bgeu         a7, s5, 164f
157:              bne          s10, s3, 167f
                  bltu         s11, a3, 159f
159:              srl          a6, a2, a3
160:              slli         t1, a2, 21
                  slli         t3, t6, 13
                  addi         a3, s1, -1887
                  or           a3, s1, a5
164:              andi         s8, a7, 988
                  slli         t2, t2, 11
166:              sltiu        a2, s4, 1221
167:              ori          t6, zero, -145
                  bne          s0, t4, 170f
                  sltu         a4, a2, s8
170:              bne          s3, s2, 174f
                  sub          s11, a6, ra
                  bne          t6, a3, 174f
                  slti         s4, s0, 1086
174:              andi         zero, gp, -1050
                  srli         tp, t4, 21
                  sltiu        a5, t2, 1218
                  nop
                  bltu         a4, a2, 182f
                  xor          s9, t4, s0
                  sltu         ra, s9, s6
                  xori         gp, tp, -166
182:              bge          gp, s8, 198f
                  srai         sp, s3, 11
                  sltu         a1, s9, s9
                  bltu         zero, s1, 205f
                  srl          s7, ra, t6
                  auipc        s8, 580893
                  srli         a0, a5, 7
                  srl          s2, a0, ra
                  xori         a5, a3, 1198
                  srl          s4, a5, a5
                  and          t0, gp, sp
                  srl          t2, s3, s0
                  sll          t2, a0, t0
                  xor          gp, t5, s7
                  slt          s8, s0, a7
                  blt          ra, s1, 204f
198:              beq          a7, s10, 204f
                  bge          a2, ra, 200f
200:              sra          a2, sp, s7
                  slti         s10, zero, 85
                  xor          s2, a1, gp
                  beq          t1, a2, 215f
204:              srli         s2, t5, 29
205:              sltiu        s2, s2, -1983
                  auipc        s1, 808390
                  or           s2, t3, s0
                  addi         a0, s5, -1281
                  srli         ra, s4, 18
                  beq          s9, s11, 213f
                  addi         t5, t1, -1790
                  sra          t4, sp, a7
213:              blt          zero, s4, 218f
                  nop
215:              sltiu        t4, t5, 1398
                  lui          t5, 638267
                  sub          a2, t3, t6
218:              sltu         s9, s9, s2
                  auipc        s2, 125939
                  xor          s2, s1, a4
                  sltiu        s7, a5, -348
                  sra          s4, s3, a3
                  beq          t0, t0, 224f
224:              blt          s2, a3, 230f
                  sra          s11, s7, t3
                  lui          s5, 268540
                  and          s1, t1, s1
                  sltu         t4, s10, a1
                  beq          tp, s5, 235f
230:              add          t4, s11, t1
                  nop
                  and          s9, s5, s11
                  bne          t6, a1, 252f
                  slt          s5, t0, s11
235:              blt          s8, t1, 247f
                  addi         sp, t4, 58
                  addi         s6, tp, -1774
                  sll          s1, t3, s9
                  or           t1, a0, a2
                  and          gp, s3, a2
                  slli         a4, a1, 11
                  sltu         a0, s0, t0
                  sub          t5, s1, s4
                  slti         a4, s8, 1081
                  nop
                  blt          s8, s1, 262f
247:              sltu         t4, sp, s9
                  slli         a3, s1, 21
                  slli         s4, s9, 23
                  bne          t5, t4, 262f
                  lui          s8, 238809
252:              xori         a4, s3, 1810
                  ori          a2, ra, 808
                  sltiu        zero, a2, 417
                  auipc        t2, 349027
                  bltu         a6, s1, 262f
                  xori         zero, a3, -182
                  sll          t0, t0, t1
                  xor          ra, a4, sp
                  ori          t3, a0, -1540
                  srai         ra, a7, 30
262:              or           a4, a3, t2
                  srai         s7, a4, 26
                  and          a2, a4, s8
                  xor          gp, s6, a6
                  add          a0, t4, t6
                  sltiu        zero, a7, -1147
                  slt          s10, s1, s0
                  and          a0, t6, a4
                  lui          a5, 908902
                  slt          s9, a2, gp
                  slti         s10, a6, -1496
                  beq          zero, ra, 279f
                  addi         t6, s7, 750
                  auipc        s2, 729942
                  bltu         a1, t3, 277f
277:              bne          s1, s10, 278f
278:              nop
279:              srl          s8, a0, s10
                  addi         t6, s2, -506
                  beq          gp, sp, 289f
                  slli         s7, t6, 2
                  or           s4, t0, t3
                  add          a4, gp, s8
                  sra          ra, t0, s7
                  sub          sp, a6, a0
                  andi         a5, s2, 1896
                  sltiu        tp, a7, 1825
289:              and          s8, tp, s2
                  lui          t0, 345000
                  beq          a4, s10, 292f
292:              srl          a2, t1, ra
                  slti         t2, s7, 420
                  xori         gp, s9, -223
                  bge          a3, t2, 297f
                  xori         a6, a7, -802
297:              slti         a1, t3, -1087
                  sra          t2, a5, zero
                  sub          t5, a0, a2
                  xori         a6, s11, -2000
                  srl          a3, a1, t5
                  slti         zero, s0, 839
                  sra          a2, gp, s6
                  srli         sp, a4, 17
                  slli         t3, s8, 28
                  sltu         a0, a6, a7
                  lui          a3, 735814
                  lui          a3, 957167
                  xori         s6, t4, 245
                  bgeu         ra, t4, 314f
                  sll          a0, s6, gp
                  srli         a3, s5, 28
                  nop
314:              andi         s10, s6, -289
                  sltiu        s6, s4, 1673
                  bgeu         s7, a4, 336f
                  xori         t3, s11, 1451
                  sra          a2, s3, tp
                  andi         s8, s5, 99
                  srl          a6, s5, a5
                  sltu         t1, t6, s10
                  ori          a3, s9, -10
                  sub          a1, sp, t0
                  or           s2, s1, s6
                  addi         s4, s4, -803
                  bltu         s11, t4, 341f
                  sltu         t0, s4, tp
                  bgeu         s3, a2, 340f
                  beq          s7, s9, 341f
                  srai         t5, a3, 4
                  srl          t3, sp, t4
                  srli         t5, a4, 22
                  srli         a2, t5, 22
                  bne          t2, s7, 336f
                  srli         s4, t6, 5
336:              auipc        s2, 997144
                  nop
                  srl          t6, s0, a5
                  addi         a4, ra, 1751
340:              andi         t2, a3, 1788
341:              nop
                  slli         s9, s1, 25
                  auipc        t4, 261888
                  beq          a2, a5, 363f
                  xori         s7, a4, 1141
                  addi         a3, sp, -283
                  xor          a1, a1, s10
                  srli         s4, ra, 27
                  add          a5, s1, s5
                  auipc        s6, 389409
                  srli         t5, a1, 11
                  srli         a6, t0, 7
                  srl          s2, s2, t1
                  xori         s6, t6, 539
                  slt          t5, tp, a2
                  sra          s5, s6, ra
                  srai         a4, ra, 7
                  srai         t3, a4, 23
                  or           t1, a7, s6
                  add          s2, a0, gp
                  srli         s5, a6, 31
                  sra          tp, s11, a0
363:              bgeu         t1, t5, 366f
                  xori         t6, t0, -572
                  ori          s6, a7, 1690
366:              sra          t5, a3, t4
                  lui          s8, 9580
                  andi         a6, t2, -298
                  srai         t4, t1, 25
                  andi         s9, s0, -1312
                  auipc        a0, 312743
                  nop
                  sub          gp, s7, a5
                  bltu         a2, a3, 379f
                  lui          t4, 297805
                  addi         s1, t6, 554
                  bltu         s4, s3, 382f
                  bgeu         t2, gp, 383f
379:              beq          s0, s11, 385f
                  bgeu         s3, t0, 386f
                  addi         s10, s11, 1108
382:              lui          a0, 696281
383:              sra          t3, s8, a0
                  sltiu        a3, s10, -331
385:              sltu         t3, s9, s10
386:              andi         s7, t3, -281
                  andi         a6, s6, -851
                  xor          zero, a7, t1
                  ori          s4, gp, 1400
                  and          a4, s11, t3
                  nop
                  addi         t1, a5, -983
                  bgeu         a1, s8, 409f
                  auipc        a3, 956700
                  addi         t5, a7, 898
                  lui          ra, 854155
                  sll          a0, s9, zero
                  xori         t5, a4, -455
                  slli         s4, t6, 24
                  sll          s5, t1, a4
                  bgeu         t1, s7, 404f
                  nop
                  sra          a1, s4, a1
404:              srai         gp, s2, 1
                  sltiu        t4, s0, 140
                  slti         sp, gp, 1350
                  addi         t1, t6, -420
                  and          a6, sp, s11
409:              xori         ra, s0, -1666
                  and          s7, a5, a5
                  srli         a1, s0, 8
                  srai         s6, s6, 7
                  beq          ra, a6, 426f
                  xor          s4, t6, t4
                  bge          a6, ra, 425f
                  sub          t5, s2, zero
                  sub          s11, t4, a6
                  sltiu        t4, a4, 1467
                  srli         s4, tp, 12
                  srai         a3, sp, 31
                  andi         t3, s4, -1411
                  and          s7, t3, t1
                  lui          ra, 834057
                  xori         s11, t6, -714
425:              sll          a1, s6, ra
426:              add          s7, t3, s7
                  blt          a3, t4, 431f
                  and          t2, t1, s4
                  nop
                  nop
431:              sra          t2, s7, a4
                  nop
                  srl          s5, t4, s8
                  add          a2, t5, a3
                  slt          s10, t1, a3
                  xori         s8, a5, 1704
                  xori         a6, s9, -1900
                  bgeu         s4, gp, 443f
                  beq          ra, s7, 443f
                  slt          gp, a5, sp
                  and          s1, s1, t1
                  sltu         t1, a1, a4
443:              or           a4, sp, a0
                  lw           t3, 4(s0)
                  sltu         t0, sp, sp
                  xori         s8, s7, 1177
                  slli         t5, s4, 1
                  addi         s0, s0, 64
                  lui          s11, 836149
                  xor          a3, a3, s3
653:              addi x22, x28, 1
653:              jalr x22, x22, 0
sub_4:            sltiu        t1, zero, -1235
                  addi         a1, t6, -1810
                  sra          t0, t3, a5
                  blt          s10, t5, sub_4_stack_p
                  nop
sub_4_stack_p:    addi         s0, s0, -44
                  lui          s2, 821713
                  sll          s5, s10, t5
                  srl          s10, a0, s0
                  sw           t3, 4(s0)
                  sub          t0, s7, sp
                  addi         s4, zero, 2 #init loop 0 counter
                  sra          ra, s8, a1
                  or           ra, gp, a1
                  slti         t4, tp, -13
                  srli         zero, zero, 11
                  addi         s10, zero, 5 #init loop 0 limit
                  nop
sub_4_5_0_t:      sltu         a1, s1, ra
                  or           gp, ra, a0
                  sra          s11, ra, a0
                  addi         s4, s4, 10 #update loop 0 counter
                  sub          a0, t6, zero
                  auipc        gp, 1018923
                  blt          s4, s10, sub_4_5_0_t #branch for loop 0
                  nop
                  addi         t4, zero, 7 #init loop 0 counter
                  sra          sp, a2, s3
                  addi         t3, zero, -17 #init loop 0 limit
sub_4_11_0_t:     lui          s9, 101984
                  add          s4, sp, a3
                  addi         t4, t4, -4 #update loop 0 counter
                  srl          s11, s9, ra
                  addi         s5, a5, 1493
                  add          s10, t1, t1
                  sll          gp, ra, a4
                  sub          a6, t4, a4
                  xori         tp, a2, -1363
                  srai         s6, a6, 26
                  bge          t4, t3, sub_4_11_0_t #branch for loop 0
                  lui          s1, 583401
                  addi         a1, zero, -4 #init loop 1 counter
                  addi         a6, zero, 12 #init loop 1 limit
sub_4_1_1_t:      sltu         t0, a4, a0
                  addi         a1, a1, 8 #update loop 1 counter
                  addi         a5, zero, 7 #init loop 0 counter
                  ori          a2, s11, -1077
                  addi         ra, zero, -2 #init loop 0 limit
sub_4_1_0_t:      addi         t3, a3, 1714
                  addi         a5, a5, -1 #update loop 0 counter
                  bge          a5, ra, sub_4_1_0_t #branch for loop 0
                  beq          a1, a6, sub_4_1_1_t #branch for loop 1
                  sltu         s7, s2, s9
                  addi         a4, zero, -10 #init loop 1 counter
                  srli         a1, a1, 2
                  sub          t1, s9, a5
                  slli         s2, t3, 31
                  addi         gp, zero, -20 #init loop 1 limit
                  sltu         t1, t6, a0
                  slt          t4, a1, sp
                  sll          s8, s6, zero
                  srli         a1, s10, 28
                  xori         a6, a2, 952
                  srl          t4, ra, s7
                  sll          s5, s6, zero
sub_4_13_1_t:     nop
                  add          a0, s3, s2
                  addi         a4, a4, -1 #update loop 1 counter
                  sltu         a1, ra, gp
                  xori         a3, ra, 760
                  xor          t4, t5, a7
                  lui          ra, 282843
                  addi         s10, zero, 0 #init loop 0 counter
                  sltiu        a6, s0, -984
                  auipc        sp, 945107
                  xor          s1, sp, t3
                  addi         a2, zero, 12 #init loop 0 limit
sub_4_13_0_t:     slti         zero, t3, 2023
                  nop
                  addi         s10, s10, 10 #update loop 0 counter
                  srai         a1, t0, 25
                  and          tp, s0, a7
                  bltu         s10, a2, sub_4_13_0_t #branch for loop 0
                  nop
                  and          s7, a0, s7
                  bne          a4, gp, sub_4_13_1_t #branch for loop 1
                  sra          a5, a2, t5
                  addi         a5, zero, 10 #init loop 0 counter
                  nop
                  sll          sp, gp, s9
                  auipc        sp, 1004995
                  addi         gp, zero, 10 #init loop 0 limit
                  add          t3, tp, a1
                  sra          a1, s10, sp
                  andi         s2, a2, -853
sub_4_7_0_t:      or           ra, s8, t5
                  andi         s9, t6, -807
                  srai         s5, s3, 4
                  addi         a5, a5, -9 #update loop 0 counter
                  srl          a4, s10, a5
                  srai         ra, s0, 21
                  sra          s6, t5, t3
                  and          a3, a2, t4
                  sll          t4, a5, s4
                  nop
                  sra          a0, s0, s0
                  bgeu         a5, gp, sub_4_7_0_t #branch for loop 0
                  srai         t2, s8, 19
                  addi         a1, zero, 10 #init loop 0 counter
                  add          t3, a5, a6
                  and          t5, s6, s6
                  srai         zero, s1, 24
                  slti         gp, ra, -1944
                  sll          s5, a6, zero
                  addi         t1, t3, -1852
                  auipc        s9, 545170
                  sub          s4, s10, t5
                  xori         a0, ra, -1048
                  addi         a4, zero, 16 #init loop 0 limit
                  ori          s5, a2, -1250
                  sltiu        a5, s9, 113
                  sub          s4, s11, t2
sub_4_2_0_t:      sub          s1, a2, s1
                  addi         a1, a1, 6 #update loop 0 counter
                  addi         a3, t4, 1763
                  nop
                  auipc        gp, 507484
                  srli         a2, s8, 7
                  nop
                  srli         a3, s4, 19
                  sub          tp, t6, t4
                  beq          a1, a4, sub_4_2_0_t #branch for loop 0
                  xor          t1, s7, t2
                  addi         ra, zero, -6 #init loop 0 counter
                  addi         t1, zero, 10 #init loop 0 limit
sub_4_3_0_t:      addi         tp, a1, 480
                  sltiu        a0, t6, -471
                  addi         ra, ra, 1 #update loop 0 counter
                  slti         s1, a3, -1288
                  srl          t4, s10, a6
                  andi         t5, s6, 1145
                  beq          ra, t1, sub_4_3_0_t #branch for loop 0
                  xor          s6, s7, a6
                  addi         a1, zero, -6 #init loop 0 counter
                  xori         ra, t2, -1877
                  or           t2, s8, s8
                  sra          a5, s5, t1
                  auipc        tp, 761514
                  sub          sp, t3, a1
                  slti         s11, s2, 285
                  xori         a0, s6, 1551
                  addi         t1, zero, 9 #init loop 0 limit
                  srli         s9, sp, 22
                  xor          s10, a5, a1
                  sltu         a0, a0, t3
                  sll          a6, t2, s11
                  andi         s11, s10, 196
                  slli         t3, zero, 1
                  slt          a0, s4, sp
                  lui          a2, 181848
                  ori          a6, a7, 656
sub_4_12_0_t:     add          s2, s4, s10
                  addi         a1, a1, 5 #update loop 0 counter
                  and          a0, a6, t4
                  or           s8, t5, tp
                  sra          s6, s9, gp
                  addi         t3, a7, 327
                  blt          a1, t1, sub_4_12_0_t #branch for loop 0
                  sltiu        s6, t0, -865
                  addi         t4, zero, 4 #init loop 1 counter
                  slli         t0, a0, 15
                  slti         a3, a6, 933
                  srl          a1, t1, t0
                  addi         s6, s2, -1830
                  add          a2, sp, s1
                  addi         a5, zero, 2 #init loop 1 limit
                  add          gp, t6, s4
                  auipc        t6, 587498
                  slti         s1, s7, 1311
                  slli         a3, s1, 27
                  sra          a1, s11, s7
                  slli         s7, a1, 24
sub_4_6_1_t:      ori          s6, s5, 981
                  xor          s8, s9, t1
                  addi         t4, t4, -1 #update loop 1 counter
                  sltiu        s5, s8, -351
                  addi         a6, zero, 6 #init loop 0 counter
                  addi         a1, a2, -501
                  addi         s4, zero, 12 #init loop 0 limit
sub_4_6_0_t:      sltu         zero, t4, s7
                  sll          t1, a3, s2
                  srli         s10, sp, 18
                  slli         s9, a7, 5
                  sltu         s2, a0, t6
                  addi         a6, a6, 6 #update loop 0 counter
                  sll          zero, gp, sp
                  bne          a6, s4, sub_4_6_0_t #branch for loop 0
                  bgeu         t4, a5, sub_4_6_1_t #branch for loop 1
                  lui          t5, 419889
                  nop
                  xori         a1, s9, -1070
                  nop
                  lui          sp, 588807
                  lui          t3, 674591
                  bltu         s7, s6, 13f
                  xori         t6, s8, -1476
                  addi         s2, zero, -2 #init loop 0 counter
                  ori          s8, s7, -1584
                  addi         a4, zero, 3 #init loop 0 limit
sub_4_4_0_t:      or           a0, zero, s9
                  ori          a2, t1, -212
                  addi         s2, s2, 10 #update loop 0 counter
                  bltu         s2, a4, sub_4_4_0_t #branch for loop 0
                  add          t4, a7, s2
                  auipc        t5, 18153
                  ori          s8, sp, -1750
                  srl          s7, a0, tp
                  srli         a3, a1, 28
                  bltu         gp, t5, 24f
                  sll          a3, s10, a4
13:               srli         s10, t0, 15
                  beq          t6, t3, 32f
                  bgeu         s4, a3, 16f
16:               srl          ra, s11, s3
                  andi         a4, ra, -1512
                  or           a5, t4, a3
                  sltiu        s2, t3, 629
                  srli         t6, s5, 5
                  bne          t5, ra, 34f
                  srai         t0, t2, 19
                  sra          s7, tp, s0
24:               or           a1, s11, t0
                  xori         a0, s6, 1420
                  bgeu         t5, s8, 27f
27:               bge          t3, a3, 37f
                  addi         s2, zero, -773
                  slli         zero, s6, 31
                  xor          ra, s9, a3
                  bgeu         s4, s2, 43f
32:               blt          t3, sp, 43f
                  sra          s10, s6, zero
34:               sltiu        a4, gp, 1459
                  xor          s10, a5, t3
                  blt          s7, a6, 41f
37:               auipc        a4, 615651
                  slli         s7, s3, 15
                  sll          a1, s9, s2
                  sltiu        s4, a3, -417
41:               add          t0, t3, s2
                  sra          a4, a7, a1
43:               sltiu        a2, s9, 1852
                  nop
                  xori         t5, a5, -569
                  bltu         sp, s3, 48f
                  slt          t5, s7, ra
48:               sltu         a3, s8, t6
                  bgeu         t1, sp, 60f
                  slti         t2, a3, -1271
                  slti         t4, a3, 197
                  srli         s9, s9, 9
                  sub          a1, s5, a4
                  sra          a4, s8, a7
                  sltiu        s2, a2, -1157
                  beq          a5, s7, 62f
                  sltiu        t2, s11, 1628
                  slli         s5, s4, 18
                  xori         ra, s9, -524
60:               or           tp, a0, t0
                  nop
62:               slti         s2, t2, -370
                  bge          t5, a4, 66f
                  sll          s7, t0, ra
                  srai         a6, s8, 22
66:               or           tp, a2, a2
                  slti         s1, s4, 160
                  sltu         a3, ra, a0
                  bgeu         a7, a2, 71f
                  or           s9, a7, a1
71:               bne          t1, t2, 87f
                  xori         t1, s0, 818
                  slt          sp, t0, s2
                  sltiu        s5, t6, 7
                  slti         t2, tp, 1968
                  bgeu         t0, t5, 83f
                  slli         t1, s8, 10
                  bne          a3, s0, 94f
                  slli         zero, gp, 2
                  andi         zero, s8, -654
                  bgeu         a1, t3, 90f
                  slli         s8, s7, 3
83:               sub          a3, s5, ra
                  nop
                  bne          ra, s6, 96f
                  srli         t1, a1, 30
87:               addi         s7, s10, 1024
                  add          s2, t0, t0
                  addi         t4, zero, 10 #init loop 0 counter
                  addi         a1, zero, 7 #init loop 0 limit
sub_4_0_0_t:      and          tp, t1, sp
                  addi         t4, t4, -8 #update loop 0 counter
                  bge          t4, a1, sub_4_0_0_t #branch for loop 0
                  andi         t1, a4, -676
                  and          t3, s6, s11
90:               andi         a4, a7, -1942
                  sub          a2, t0, s8
                  or           gp, s3, s10
                  bne          s11, a6, 106f
94:               sll          a6, t3, t5
                  sll          t6, s4, t4
96:               slli         zero, s4, 6
                  add          tp, s7, s6
                  lui          t5, 561912
                  and          t1, s5, a4
                  slti         tp, t6, 1102
                  xor          t6, a4, s6
                  auipc        s5, 934787
                  sltiu        zero, s11, 1772
                  addi         t4, zero, 8 #init loop 0 counter
                  nop
                  addi         s1, zero, 13 #init loop 0 limit
sub_4_9_0_t:      lui          zero, 195136
                  sll          tp, t6, s3
                  addi         t4, t4, 6 #update loop 0 counter
                  sltu         t2, s8, ra
                  bltu         t4, s1, sub_4_9_0_t #branch for loop 0
                  slli         ra, t2, 14
                  sub          s6, s11, gp
                  bgeu         t5, s3, 107f
106:              add          t1, a0, s6
107:              bltu         ra, s7, 111f
                  sub          a0, a0, s8
                  bne          a4, s9, 110f
110:              ori          s7, gp, 635
111:              sll          t4, a3, s6
                  blt          a0, s11, 128f
                  xor          t6, gp, tp
                  andi         s10, a5, -647
                  blt          t4, s6, 134f
                  sll          s1, gp, tp
                  xor          s2, s6, tp
                  addi         s7, zero, 0 #init loop 0 counter
                  andi         s8, s11, -736
                  sltiu        a5, a7, -169
                  addi         s4, zero, 9 #init loop 0 limit
                  sub          s1, a1, a5
sub_4_8_0_t:      and          zero, t5, t5
                  srai         s8, s6, 9
                  xor          t3, t4, gp
                  addi         s7, s7, 9 #update loop 0 counter
                  sub          t1, t2, t3
                  andi         s11, sp, -1095
                  xori         t0, t3, 483
                  slt          a4, s7, s1
                  sltu         a3, a4, t6
                  auipc        s6, 284016
                  nop
                  addi         a4, t1, -1045
                  sra          t5, s8, sp
                  slt          s11, tp, a5
                  bne          s7, s4, sub_4_8_0_t #branch for loop 0
                  andi         t3, t3, -1998
                  bgeu         s0, s4, 130f
                  bne          a3, t1, 135f
                  lui          a0, 805274
                  sll          sp, a0, s4
                  slt          t2, s0, sp
                  auipc        a6, 978170
                  sll          s8, a2, t1
                  bne          zero, s11, 130f
                  bne          s5, s9, 145f
                  andi         t2, s4, -1880
128:              andi         s6, s8, -1506
                  srai         ra, t1, 6
130:              or           s8, gp, ra
                  sltu         t0, s2, t6
                  srli         s11, a7, 31
                  and          s4, a5, s10
134:              lui          s1, 407077
135:              or           a5, t0, s7
                  slt          sp, s8, a3
                  bge          a4, s4, 138f
138:              bltu         s8, s10, 154f
                  auipc        a6, 187118
                  or           a3, s3, t5
                  sra          s11, ra, s6
                  sll          s9, a1, s7
                  auipc        a2, 242827
                  srli         zero, s11, 21
145:              blt          a6, t0, 157f
                  xori         t0, s0, 1411
                  bgeu         s8, a0, 156f
                  sub          a6, a0, t3
                  beq          t6, a2, 157f
                  srl          t2, s2, sp
                  sltu         zero, s2, s8
                  bge          a7, a0, 157f
                  beq          s1, ra, 171f
154:              addi         a2, s7, 633
                  slt          s4, t1, s4
156:              blt          s0, gp, 169f
157:              addi         s1, s9, 423
                  sra          s4, s2, a2
                  srli         t6, ra, 23
                  addi         s1, gp, 585
                  addi         sp, t6, -1142
                  ori          t2, t6, -238
                  or           a4, a3, a6
                  bltu         a4, s5, 175f
                  and          ra, s1, gp
                  lui          t6, 861184
                  slli         s4, gp, 14
                  sll          s7, s11, gp
169:              bge          a1, sp, 182f
                  bne          a1, s9, 176f
171:              xori         s1, a2, -910
                  or           s6, s1, a7
                  auipc        t2, 675559
                  slli         a6, s7, 26
175:              srl          a5, a4, s1
176:              slti         t1, s1, -1473
                  bltu         s5, tp, 193f
                  bltu         t5, s4, 197f
                  lui          a3, 995556
                  andi         s2, zero, -1188
                  xor          s6, tp, t0
182:              sub          a6, a5, t3
                  sub          s8, s1, t0
                  andi         a4, t4, 1161
                  bge          s7, s9, 186f
186:              lui          a0, 510969
                  bgeu         s6, gp, 198f
                  lui          a2, 395309
                  srl          tp, t2, s8
                  ori          s2, s8, 1069
                  bge          a3, a7, 202f
                  sll          s5, s3, a7
193:              sll          s10, a1, a5
                  addi         a3, a2, 1212
                  slti         a3, t5, -1768
                  bne          s1, a5, 199f
197:              and          a5, a2, t5
198:              beq          s8, t6, 200f
199:              slti         zero, a7, -1080
200:              nop
                  xori         t0, a5, -1895
202:              lui          s9, 143113
                  and          a1, s4, t0
                  xori         a1, s0, 1893
                  sltu         a3, a5, t0
                  srl          s6, t6, t3
                  slt          t2, s5, s2
                  and          t5, s0, s7
                  slli         a5, s2, 12
                  sll          a3, a2, a5
                  bltu         sp, s5, 227f
                  addi         a2, a6, -298
                  sub          a1, s5, a0
                  bge          zero, s2, 227f
                  bgeu         a3, t3, 227f
                  sltiu        s6, a3, -1977
                  bltu         gp, sp, 236f
                  bge          s4, t0, 219f
219:              sltiu        sp, a1, 1722
                  slti         t5, t3, -628
                  nop
                  ori          t0, a4, -82
                  sub          a6, s7, a0
                  andi         t4, t5, -6
                  nop
                  ori          s1, sp, 1228
227:              xor          s6, t2, t2
                  sra          s5, t1, s3
                  srl          s1, s1, s1
                  bgeu         s7, t0, 237f
                  srai         t4, t5, 22
                  slti         t3, s5, -243
                  sub          t6, tp, a0
                  ori          s7, s8, 1600
                  xori         zero, a0, 894
236:              sll          a0, s8, t1
237:              blt          a5, s7, 241f
                  bltu         s0, s2, 248f
                  beq          sp, s5, 241f
                  nop
241:              blt          t1, s6, 243f
                  xor          s6, t6, a1
243:              or           s9, t3, s4
                  addi         t0, t5, -518
                  xor          s5, t3, a5
                  sltu         a3, zero, t1
                  srl          s9, s5, a2
248:              nop
                  srli         t1, t5, 8
                  srli         s5, zero, 0
                  addi         tp, s10, 1796
                  sltu         s10, a4, s4
                  xor          a0, s5, a3
                  bne          a0, s9, 259f
                  slti         s11, a4, 350
                  or           t4, a5, zero
                  nop
                  sltu         s5, a4, t6
259:              slt          a4, s5, s11
                  auipc        s7, 296017
                  slti         s11, a2, -1884
                  sll          t4, a7, t3
                  addi         s1, t3, -597
                  ori          s2, a4, 998
                  sll          s2, a6, t4
                  sub          s9, gp, a3
                  auipc        a5, 113677
                  sltiu        s8, t6, -1171
                  bge          a5, s2, 285f
                  slli         s8, s9, 5
                  andi         s2, s8, -1880
                  or           s2, ra, zero
                  srli         a0, t2, 5
                  xor          s7, t1, tp
                  add          a2, s7, t2
                  and          a1, t0, s7
                  srai         zero, s2, 28
                  sra          s11, a7, t4
                  auipc        zero, 124389
                  sub          t6, s2, s11
                  auipc        ra, 519248
                  addi         a5, s1, 441
                  bltu         tp, s11, 296f
                  nop
285:              slli         zero, a7, 11
                  lui          s6, 747555
                  slli         t3, s6, 7
                  srai         s8, s0, 18
                  nop
                  sub          tp, s5, a4
                  nop
                  slti         t3, a4, 1491
                  sll          t1, a2, s5
                  srl          a6, s4, t0
                  slt          a2, t4, s0
296:              or           t6, t4, t5
                  xor          zero, s5, s3
                  bgeu         t6, s11, 314f
                  srli         s10, sp, 16
                  lui          a3, 411149
                  and          t5, s9, a2
                  bltu         t5, a3, 310f
                  add          s7, a6, s11
                  sll          s9, a1, s9
                  addi         s5, a6, -1060
                  sltiu        s9, s7, 1454
                  xor          s2, gp, s6
                  sltiu        a3, s8, -475
                  slt          sp, t1, s1
310:              bne          ra, a2, 311f
311:              bge          gp, t4, 330f
                  sra          t3, t3, a0
                  sub          ra, a3, s6
314:              ori          a5, t6, -869
                  or           s5, s2, s2
                  sltiu        a3, sp, -5
                  blt          s7, zero, 328f
                  sltiu        sp, a6, 505
                  srai         t1, a7, 0
                  xori         tp, s11, -652
                  sltiu        a1, t0, 287
                  blt          s7, s0, 324f
                  sra          t4, s0, s0
324:              slli         a2, a2, 25
                  beq          s11, t1, 338f
                  ori          t4, ra, -734
                  sltiu        s11, t2, 93
328:              sra          t2, s9, s9
                  bge          t5, s11, 345f
330:              srli         s11, sp, 12
                  or           s5, sp, a7
                  nop
                  lui          t1, 882133
                  add          a1, a0, s7
                  sub          s9, s11, s9
                  or           zero, a7, s0
                  beq          t5, gp, 348f
338:              bge          s2, a5, 356f
                  sltu         s2, s11, tp
                  blt          t6, a0, 347f
                  ori          a5, a6, -660
                  slt          t3, t4, t6
                  add          t4, s9, a3
                  beq          ra, t4, 350f
345:              srai         t5, a2, 28
                  sub          zero, s10, s5
347:              srl          zero, a6, a4
348:              slti         a6, s4, -2022
                  srli         s11, t1, 30
350:              sra          s10, t2, t5
                  ori          s8, sp, 1628
                  sll          s7, gp, s3
                  xor          t0, a5, t6
                  bgeu         t2, t6, 359f
                  sltu         t4, s0, t5
356:              or           t3, gp, a5
                  xor          ra, a1, a0
                  bltu         zero, s7, 368f
359:              lui          tp, 834936
                  slti         t6, sp, -1774
                  srai         t3, a6, 4
                  add          a1, s0, a7
                  bgeu         s1, s6, 382f
                  sltiu        s4, t3, -573
                  blt          a0, a3, 369f
                  and          a3, s3, s7
                  or           t6, a6, a5
368:              sub          t2, a4, ra
369:              beq          s11, ra, 372f
                  slti         s2, a2, -1666
                  blt          a3, t2, 387f
372:              slli         t2, s11, 12
                  sltiu        a2, gp, -113
                  auipc        a3, 896834
                  sub          gp, a6, a1
                  slti         gp, a5, 1083
                  xori         t3, s0, -1085
                  srl          t5, t1, a3
                  xor          a6, s10, s7
                  srli         a1, zero, 5
                  beq          tp, s1, 382f
382:              auipc        zero, 366558
                  nop
                  srai         s8, a6, 8
                  slli         ra, tp, 28
                  srai         s10, t2, 24
387:              lui          s2, 294022
                  ori          tp, t4, -1167
                  addi         t3, a7, -880
                  slt          s9, s3, s0
                  srai         a1, a5, 29
                  bltu         t0, a4, 394f
                  srli         a5, a0, 0
394:              bne          ra, a4, 407f
                  xor          s4, a1, t0
                  srli         a0, t6, 24
                  bgeu         a4, t2, 409f
                  xor          zero, a3, tp
                  bltu         a7, s5, 400f
400:              auipc        s10, 430797
                  nop
                  sltiu        s8, s0, -1777
                  slti         gp, a6, -1393
                  blt          a6, s6, 409f
                  add          t4, zero, t1
                  srai         t4, tp, 17
407:              slti         a6, zero, 666
                  slt          t1, s7, sp
409:              nop
                  xori         sp, t4, -1185
                  blt          a7, s9, 423f
                  add          tp, tp, a3
                  sll          a1, s2, a6
                  auipc        t1, 146389
                  or           s6, s9, a1
                  srl          t3, s1, s4
                  srai         s9, s5, 8
                  bltu         s7, t1, 429f
                  nop
                  srl          zero, sp, t1
                  bne          a1, s0, 437f
                  ori          s11, t0, 1497
423:              and          s2, a6, t0
                  and          a3, t1, s6
                  sra          t5, s10, t1
                  sub          s8, t6, t4
                  sltu         sp, t5, s11
                  auipc        t6, 388613
429:              bltu         ra, s9, 431f
                  sra          t5, s4, a5
431:              srl          a2, t4, s3
                  blt          s9, a2, 441f
                  addi         a4, zero, 4 #init loop 0 counter
                  addi         s1, zero, 2 #init loop 0 limit
sub_4_10_0_t:     xori         s2, gp, 694
                  nop
                  sub          s10, zero, s3
                  addi         a4, a4, -8 #update loop 0 counter
                  bge          a4, s1, sub_4_10_0_t #branch for loop 0
                  sltu         s8, s9, t6
                  sll          s10, s8, t3
                  bge          a3, t4, 442f
                  sub          s10, t0, a6
                  srli         t0, s4, 3
437:              sltiu        s7, s7, -655
                  sll          gp, s6, a1
                  sub          a6, a5, s6
                  sra          s5, t0, t3
441:              or           t1, t4, t3
442:              lui          s10, 379421
                  sltiu        t6, s0, 213
                  and          t5, a2, s4
                  sltiu        a2, s10, -368
                  add          tp, s3, tp
                  sll          t5, t6, s5
                  add          gp, ra, a1
                  nop
                  bne          s7, a3, 455f
                  srai         tp, t5, 7
                  bgeu         t1, gp, 461f
                  beq          a4, a1, 455f
                  or           s4, zero, ra
455:              andi         s5, a3, -2038
                  sra          s1, t2, a1
                  and          s8, t0, s2
                  or           s2, a1, t5
                  and          a3, tp, a7
                  bne          s4, t1, 476f
461:              lui          t4, 231209
                  xori         s4, t1, 874
                  sltiu        t2, s9, 1318
                  xor          a3, s9, s6
                  srl          t6, s0, s4
                  bgeu         t4, a3, 479f
                  slli         a4, t5, 23
                  sra          a4, t6, gp
                  slt          t5, s2, a2
                  sltu         t3, gp, t3
                  blt          gp, s4, 481f
                  xor          s1, t6, a2
                  xor          s10, sp, s1
                  slt          a3, a6, s10
                  bgeu         a2, t2, 481f
476:              bgeu         a4, t1, 487f
                  andi         t6, a2, -1910
                  srli         s11, tp, 4
479:              srai         t4, s2, 14
                  slti         tp, t5, 852
481:              bgeu         tp, a3, 483f
                  srai         t0, s11, 13
483:              ori          t4, t5, -1881
                  andi         t1, s1, 904
                  bne          s6, tp, 487f
                  srai         t5, t3, 11
487:              blt          s0, gp, 506f
                  add          t2, a5, t6
                  srai         t2, a1, 3
                  or           s9, t0, s1
                  bgeu         t3, s1, 503f
                  andi         a0, a3, 1269
                  andi         t0, s7, 1015
                  bltu         s1, a0, 507f
                  add          a6, zero, t1
                  srai         a6, t0, 1
                  sltiu        s1, t0, 29
                  addi         t5, s1, 1007
                  blt          t0, ra, 518f
                  bgeu         gp, t5, 505f
                  blt          s0, a6, 502f
502:              sll          s2, zero, s2
503:              bgeu         t2, sp, 521f
                  bne          a6, a0, 520f
505:              slt          t5, a3, s1
506:              lui          a6, 88012
507:              add          t4, a6, s8
                  slt          s1, ra, t0
                  lui          t1, 745161
                  srai         gp, t2, 22
                  srl          t6, t2, s11
                  lui          a6, 124320
                  or           a6, ra, t2
                  auipc        t1, 151375
                  bltu         s7, s1, 526f
                  lui          s4, 848015
                  srl          zero, a2, t0
518:              nop
                  blt          s6, s5, 530f
520:              lui          a5, 136743
521:              auipc        s4, 620078
                  addi         s10, s8, 314
                  sltiu        a0, a6, -1019
                  sltu         zero, s4, a4
                  andi         t5, s3, 1402
526:              andi         s6, s10, 126
                  auipc        s10, 264302
                  bltu         t5, a5, 541f
                  beq          s5, ra, 541f
530:              bne          ra, a3, 546f
                  xor          s7, t1, t0
                  and          a0, t1, a4
                  add          a4, a1, s3
                  bgeu         s3, s6, 541f
                  xor          gp, t6, s9
                  bltu         s9, zero, 552f
                  bgeu         a0, a1, 540f
                  add          t0, ra, t2
                  srli         a1, a5, 10
540:              bge          a0, a2, 541f
541:              srai         a0, t6, 10
                  sub          s7, a0, t0
                  beq          s0, s6, 547f
                  bltu         sp, a0, 545f
545:              sll          t1, s0, s2
546:              add          s8, a5, t5
547:              andi         s7, ra, 511
                  beq          s2, s1, 553f
                  srl          t6, s5, s5
                  bltu         zero, sp, 563f
                  blt          a6, a3, 570f
552:              srai         gp, s0, 16
553:              nop
                  addi         s11, a4, -64
                  beq          a7, s2, 568f
                  bgeu         a3, s3, 568f
                  addi         t3, t1, -974
                  blt          a1, t0, 567f
                  sltiu        t4, s6, 750
                  sltiu        zero, a4, 34
                  srli         a6, s6, 10
                  blt          s2, s4, 564f
563:              addi         s8, s8, -1469
564:              lui          a2, 228565
                  sll          t3, sp, tp
                  xori         t0, sp, 1906
567:              add          a0, t1, s2
568:              nop
                  sll          a6, s3, a0
570:              beq          s4, ra, 577f
                  blt          t3, zero, 574f
                  xor          t5, zero, t6
                  ori          s6, s6, -705
574:              bne          s2, a7, 590f
                  sub          t6, t5, a2
                  lui          t4, 941927
577:              slt          a1, a3, t2
                  lui          a4, 746211
                  slli         t2, sp, 7
                  beq          s5, t6, 591f
                  srli         a4, a1, 25
                  sltu         s5, a4, s3
                  slli         tp, a7, 2
                  sub          ra, a1, s1
                  addi         t5, sp, -1564
                  beq          s10, a5, 605f
                  bge          zero, a2, 589f
                  xor          zero, t6, s9
589:              andi         tp, s1, 947
590:              or           s8, a0, a2
591:              bgeu         t6, s11, 604f
                  or           zero, a7, a4
                  bge          s4, ra, 594f
594:              add          s6, a5, a3
                  blt          s7, gp, 606f
                  bgeu         s0, s6, 612f
                  or           t1, s7, s9
                  auipc        s11, 167152
                  auipc        a3, 708515
                  sltu         s11, t6, t6
                  sub          gp, s10, s3
                  sltiu        ra, s2, -1168
                  addi         s8, t0, 69
604:              sub          a0, s4, t3
605:              bltu         a6, t3, 621f
606:              lui          a1, 748089
                  addi         ra, ra, -1740
                  add          s6, s8, tp
                  bltu         s7, s6, 617f
                  srl          a0, gp, s11
                  srai         a3, a7, 20
612:              xori         tp, s1, -2031
                  xori         s11, a6, 248
                  blt          s4, a1, 618f
                  srl          s1, tp, s8
                  blt          s7, t4, 627f
617:              add          s8, t6, s9
618:              auipc        a5, 822264
                  bne          t1, s2, 625f
                  xor          s10, ra, zero
621:              sra          a0, s8, s9
                  addi         t0, s1, 1200
                  sra          s4, t1, s0
                  slli         s1, tp, 8
625:              bne          s11, t6, 643f
                  lui          t6, 628628
627:              sltiu        s2, t0, -29
                  srl          gp, gp, t0
                  srai         s10, a3, 29
                  bge          s0, s7, 646f
                  and          s9, t1, s7
                  addi         a6, s6, -117
                  blt          s2, gp, 643f
                  srai         s8, t0, 4
                  bltu         a7, s4, 647f
                  nop
                  sub          s9, s9, a3
                  or           s8, s9, gp
                  srl          a6, s9, a6
                  andi         tp, s8, 647
                  nop
                  sltu         sp, s5, s6
643:              bne          t5, s7, 644f
644:              sltu         t2, gp, t4
                  srl          t5, t1, s6
646:              srl          t6, a4, t3
647:              slti         t5, a3, -1505
                  addi         s7, s2, 1080
                  slti         t2, s3, -275
                  add          a3, t2, a2
                  auipc        t4, 1206
                  sub          s6, t6, t0
                  sll          a5, sp, s4
                  bgeu         zero, s7, 656f
                  andi         t5, a3, -755
656:              addi         t5, gp, -979
                  slti         a4, a5, 365
                  addi         s6, zero, -8 #init loop 1 counter
                  srli         t2, t0, 22
                  addi         t1, zero, 13 #init loop 1 limit
sub_4_14_1_t:     or           a1, s4, a1
                  addi         s6, s6, 5 #update loop 1 counter
                  addi         sp, zero, 8 #init loop 0 counter
                  ori          t0, tp, 1787
                  add          a2, a6, t3
                  addi         s5, zero, -10 #init loop 0 limit
                  srli         gp, a1, 23
                  sll          s7, a4, s4
sub_4_14_0_t:     sltiu        s4, a0, -1559
                  addi         sp, sp, -6 #update loop 0 counter
                  lui          t3, 182506
                  beq          sp, s5, sub_4_14_0_t #branch for loop 0
                  blt          s6, t1, sub_4_14_1_t #branch for loop 1
                  sltiu        a0, s9, 446
                  bltu         s11, a4, 659f
659:              srai         a2, a0, 17
                  auipc        sp, 920131
                  beq          gp, t3, 666f
                  nop
                  xori         s9, a5, 549
                  beq          s2, a2, 666f
                  ori          s2, t2, -565
666:              srl          s7, a5, t5
                  slti         ra, t3, -1657
                  slti         zero, s6, 1192
                  sltiu        s6, t4, -278
                  sltu         t1, s7, s0
                  slli         t1, s8, 21
                  srl          s1, a0, s0
                  ori          s8, sp, 253
                  slli         gp, a3, 11
                  slt          t0, a3, t2
                  srli         ra, s0, 6
                  auipc        a5, 1021650
                  blt          t2, s2, 687f
                  blt          s4, tp, 690f
                  or           a3, t4, a6
                  auipc        t4, 133015
                  xori         t1, ra, 929
                  slli         t1, s9, 26
                  xori         s10, a0, 1057
                  xor          zero, zero, a5
                  andi         s4, s1, -408
687:              bgeu         s2, t2, 703f
                  ori          a4, sp, 902
                  sltiu        s5, t0, -1561
690:              sltiu        s8, s10, -1731
                  xori         s4, a4, 1318
                  beq          a7, s9, 693f
693:              beq          ra, s2, 695f
                  andi         s4, a4, 1888
695:              add          sp, a1, s4
                  ori          a5, s7, 1182
                  addi         a0, t3, 567
                  bltu         gp, s2, 714f
                  slt          a5, t1, s1
                  slti         tp, t6, -1099
                  auipc        s1, 681723
                  slt          ra, a4, s9
703:              auipc        a0, 680595
                  blt          s6, tp, 712f
                  and          a5, t5, zero
                  nop
                  srl          a1, gp, zero
                  and          t4, s0, a4
                  srli         s5, s8, 18
                  bltu         s7, s6, 729f
                  sub          s11, s0, t0
712:              or           a4, s8, a6
                  bgeu         t0, s6, 726f
714:              beq          s8, tp, 730f
                  slti         ra, a5, -505
                  slt          s2, s7, t3
                  sltu         s8, tp, a6
                  blt          ra, s11, 725f
                  slt          s8, t4, ra
                  srl          t3, t2, s11
                  sltu         a1, t0, s10
                  auipc        a6, 272846
                  bltu         ra, t3, 735f
                  bltu         gp, t2, 737f
725:              srli         s1, a6, 30
726:              srai         zero, s4, 15
                  blt          a3, s7, 728f
728:              xori         s1, s5, 937
729:              srli         s11, t0, 21
730:              add          sp, s5, s3
                  sltiu        t5, a0, -1354
                  bne          t2, a1, 744f
                  bne          s7, t2, 738f
                  or           s7, t2, t4
735:              slt          s11, t0, ra
                  slti         a2, s1, -1790
737:              sra          t4, gp, a2
738:              xori         ra, s9, 1389
                  sltu         tp, t0, a4
                  sra          a4, s8, a4
                  xor          s8, sp, s2
                  bltu         a1, gp, 748f
                  beq          t3, a1, 762f
744:              or           a1, t0, a2
                  sra          gp, s4, sp
                  slt          a5, s8, s4
                  slti         s4, a5, 315
748:              sra          ra, a1, a2
                  sll          ra, s9, a2
                  nop
                  slt          a1, a2, ra
                  slli         s8, s4, 0
                  add          t5, a2, a5
                  slti         a0, t3, -167
                  addi         t1, a5, -1354
                  sltiu        s7, a5, 118
                  srai         t2, s0, 25
                  auipc        s6, 351367
                  bltu         t1, s6, 775f
                  srl          a2, s10, s3
                  sltiu        a1, s3, -723
762:              bgeu         a2, t0, 772f
                  blt          t5, s7, 776f
                  sub          tp, a5, a0
                  auipc        a4, 593063
                  bge          a1, s11, 770f
                  xor          a3, s2, s3
                  sll          s5, a6, t3
                  ori          t3, a4, -1509
770:              ori          s5, a3, 835
                  slli         s8, t1, 17
772:              lui          a6, 823944
                  slt          s9, t3, t4
                  addi         a2, t5, -469
775:              srli         s4, s8, 19
776:              slt          s10, s10, s11
                  slti         t2, s11, 1817
                  srli         ra, t1, 25
                  xori         s4, a3, -1279
                  and          a5, s4, t2
                  srli         a6, gp, 11
                  lw           t3, 4(s0)
                  sltiu        s4, s1, 466
                  slti         t0, t6, -583
                  addi         s0, s0, 44
                  slli         s8, s8, 23
1055:             addi x24, x28, 0
1055:             jalr x24, x24, 0
sub_3:            bgeu         s2, a1, sub_3_stack_p
                  sub          s10, s5, s10
sub_3_stack_p:    addi         s0, s0, -52
                  addi         s8, t2, 1453
                  slti         t6, s1, 1833
                  sw           t3, 4(s0)
                  sltiu        a3, a5, 1877
                  sll          gp, t6, a4
                  xor          ra, s7, a2
                  addi         s9, zero, -4 #init loop 0 counter
                  andi         a2, a3, 1473
                  sll          a5, zero, t3
                  sltiu        t1, s4, 358
                  addi         s10, a3, 1694
                  addi         t6, a2, -1186
                  addi         s1, zero, -16 #init loop 0 limit
                  xori         a3, s11, 1448
sub_3_0_0_t:      ori          t0, s2, 1502
                  srai         a4, s4, 0
                  srai         a1, ra, 11
                  and          t2, t6, t4
                  srli         s11, ra, 22
                  sub          gp, t2, a6
                  and          zero, a5, ra
                  addi         s9, s9, -3 #update loop 0 counter
                  sra          a0, s1, t6
                  sltiu        a6, a7, 526
                  slli         s10, gp, 10
                  or           s10, s11, s6
                  srli         s10, s0, 25
                  and          t3, s6, s3
                  sll          s5, t0, s3
                  beq          s9, s1, sub_3_0_0_t #branch for loop 0
                  slt          a4, a5, t6
                  slt          s4, t2, s10
                  sll          t4, s0, s5
                  sub          t0, a5, a5
                  ori          s5, gp, -201
                  and          t6, t2, a7
                  addi         a6, tp, 245
                  bge          tp, s6, 9f
                  auipc        a4, 499659
                  slt          a3, tp, s5
9:                andi         a3, s1, -872
                  bgeu         s4, s10, 14f
                  slt          s8, a3, t6
                  srl          s8, s1, s2
                  bgeu         s2, s6, 28f
14:               bne          s4, s7, 26f
                  srl          gp, a2, t0
                  srai         a6, t5, 4
                  auipc        t3, 787364
                  slti         a1, s0, 1043
                  bgeu         s3, s7, 29f
                  slli         s5, s6, 23
                  add          tp, s0, s11
                  bge          sp, ra, 31f
                  auipc        s8, 656271
                  xor          a1, s9, t1
                  xor          sp, t1, s8
26:               beq          a6, t2, 33f
                  slli         a5, s9, 3
28:               xor          a1, s3, s11
29:               srli         a6, t6, 24
                  bltu         tp, s2, 32f
31:               or           gp, s0, s8
32:               add          gp, s3, s1
33:               beq          s11, a0, 42f
                  andi         gp, a5, -1783
                  srli         gp, a4, 5
                  sra          a5, a5, s9
                  or           s8, sp, ra
                  bge          t2, s3, 55f
                  beq          s4, t3, 52f
                  srli         s7, sp, 19
                  ori          s8, a1, 1978
42:               or           tp, s9, s1
                  addi         s8, a2, 1540
                  slti         s6, t6, 1780
                  srai         t4, t2, 23
                  sltiu        s6, s3, 693
                  lui          t0, 754294
                  srl          s10, s0, s2
                  slti         s6, s1, -139
                  slli         s6, a4, 6
                  bgeu         t2, a6, 52f
52:               sltu         t0, a3, a1
                  srli         a0, s0, 29
                  ori          t3, t4, -904
55:               andi         a3, s1, -784
                  bne          t2, tp, 61f
                  xori         t4, zero, 1777
                  sltiu        ra, t3, 989
                  ori          s11, t3, -879
                  bge          t6, t2, 61f
61:               or           t3, t1, t6
                  slli         s11, t1, 23
                  and          a4, ra, s5
                  xor          s11, zero, s11
                  andi         s7, a5, -388
                  slti         s9, t2, -1719
                  andi         zero, s4, -179
                  lw           t3, 4(s0)
                  xor          t4, s1, s10
                  auipc        zero, 121838
                  addi         s0, s0, 52
                  slti         a6, s2, -1849
107:              addi x28, x28, 0
107:              jalr x28, x28, 0
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
.align           2
mtvec_handler:    
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
                  csrr x16, 0x300 # MSTATUS
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 31
                  bne x16, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x16, 0x341 # MEPC
                  csrr x16, 0x342 # MCAUSE
                  li x31, 0x3 # BREAKPOINT
                  beq x16, x31, ebreak_handler
                  li x31, 0x8 # ECALL_UMODE
                  beq x16, x31, ecall_handler
                  li x31, 0x9 # ECALL_SMODE
                  beq x16, x31, ecall_handler
                  li x31, 0xb # ECALL_MMODE
                  beq x16, x31, ecall_handler
                  li x31, 0x1
                  beq x16, x31, instr_fault_handler
                  li x31, 0x5
                  beq x16, x31, load_fault_handler
                  li x31, 0x7
                  beq x16, x31, store_fault_handler
                  li x31, 0xc
                  beq x16, x31, pt_fault_handler
                  li x31, 0xd
                  beq x16, x31, pt_fault_handler
                  li x31, 0xf
                  beq x16, x31, pt_fault_handler
                  li x31, 0x2 # ILLEGAL_INSTRUCTION
                  beq x16, x31, illegal_instr_handler
                  csrr x31, 0x343 # MTVAL
                  1: la x17, test_done
                  jalr x1, x17, 0

ecall_handler:    
                  la x16, _start
                  sw x0, 0(x16)
                  sw x1, 4(x16)
                  sw x2, 8(x16)
                  sw x3, 12(x16)
                  sw x4, 16(x16)
                  sw x5, 20(x16)
                  sw x6, 24(x16)
                  sw x7, 28(x16)
                  sw x8, 32(x16)
                  sw x9, 36(x16)
                  sw x10, 40(x16)
                  sw x11, 44(x16)
                  sw x12, 48(x16)
                  sw x13, 52(x16)
                  sw x14, 56(x16)
                  sw x15, 60(x16)
                  sw x16, 64(x16)
                  sw x17, 68(x16)
                  sw x18, 72(x16)
                  sw x19, 76(x16)
                  sw x20, 80(x16)
                  sw x21, 84(x16)
                  sw x22, 88(x16)
                  sw x23, 92(x16)
                  sw x24, 96(x16)
                  sw x25, 100(x16)
                  sw x26, 104(x16)
                  sw x27, 108(x16)
                  sw x28, 112(x16)
                  sw x29, 116(x16)
                  sw x30, 120(x16)
                  sw x31, 124(x16)
                  la x17, write_tohost
                  jalr x0, x17, 0

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
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
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
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
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
                  csrr  x16, 0x300 # MSTATUS;
                  csrr  x16, 0x304 # MIE;
                  csrr  x16, 0x344 # MIP;
                  csrrc x16, 0x344, x16 # MIP;
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
