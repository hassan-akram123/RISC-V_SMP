.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x26, h0_start
jalr x0, x26, 0
h0_start:
                  li x10, 0x40000100
                  csrw 0x301, x10
kernel_sp:        
                  la x2, kernel_stack_end

trap_vec_init:    
                  la x10, mtvec_handler
                  ori x10, x10, 1
                  csrw 0x305, x10 # MTVEC

mepc_setup:       
                  la x10, init
                  csrw 0x341, x10

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x10, 0x1800
                  csrw 0x300, x10 # MSTATUS
                  mret
init:             
                  li x0, 0xdb7f3871
                  li x1, 0x0
                  li x3, 0xfb9eef94
                  li x4, 0x0
                  li x5, 0x3
                  li x6, 0x6
                  li x7, 0xf83616e5
                  li x8, 0xc
                  li x9, 0x87344199
                  li x10, 0x0
                  li x11, 0xfc6dbe22
                  li x12, 0x80000000
                  li x13, 0x0
                  li x14, 0x0
                  li x15, 0x8
                  li x16, 0x80000000
                  li x17, 0xfb154ba4
                  li x18, 0x80000000
                  li x19, 0x265758fe
                  li x21, 0x80000000
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x24, 0x877f433f
                  li x25, 0x2a59c1bd
                  li x26, 0x80000000
                  li x27, 0x1
                  li x28, 0x80000000
                  li x29, 0xc
                  li x30, 0xe9fc6eac
                  li x31, 0xb519a0f3
                  la x20, user_stack_end
main:             addi         s9, zero, 9 #init loop 1 counter
                  slli         s1, s4, 31
                  srai         s3, s2, 11
                  or           tp, t2, t0
                  slli         s11, gp, 22
                  ori          t2, a1, -1279
                  addi         s8, zero, 17 #init loop 1 limit
                  lui          t0, 516650
main_0_1_t:       nop
                  sltu         a7, s10, a7
                  addi         s9, s9, 1 #update loop 1 counter
                  srli         a0, a0, 3
                  addi         s5, zero, 7 #init loop 0 counter
                  add          gp, zero, a7
                  addi         t1, zero, 16 #init loop 0 limit
                  auipc        s0, 900044
                  andi         t0, s5, 181
                  srai         a0, s10, 14
                  sub          s1, s2, s4
                  sll          s3, s6, sp
                  add          ra, t6, a1
                  srl          a3, t0, a6
main_0_0_t:       and          a7, a4, s3
                  sra          gp, s5, a6
                  addi         s5, s5, 9 #update loop 0 counter
                  srai         s1, a6, 1
                  srai         t3, s7, 16
                  bne          s5, t1, main_0_0_t #branch for loop 0
                  auipc        s1, 294875
                  sltiu        a2, tp, 443
                  srai         a5, ra, 14
                  blt          s9, s8, main_0_1_t #branch for loop 1
                  lui          s2, 423222
                  sltiu        tp, a7, -1605
                  add          s0, t5, a3
                  bne          s11, t1, 9f
                  or           s6, s5, a0
                  sltiu        t4, t3, -1740
                  slti         a0, sp, -807
                  srli         s8, sp, 28
                  xor          t0, t0, t5
                  blt          a3, sp, 11f
9:                lui          t3, 454899
                  sra          s1, s5, s0
11:               srli         a7, a7, 8
                  xori         tp, t6, 1941
                  sra          a5, a2, s1
                  slt          a6, a1, s10
                  bne          ra, a2, 28f
                  sltu         a2, a7, gp
                  sltu         s5, ra, a6
                  la           s1, sub_1
                  and          t0, s6, zero
                  sltu         t6, a7, t1
                  auipc        s0, 506228
                  andi         s6, t2, -861
                  addi         s1, s1, 901
                  sltiu        a7, s7, 1839
                  bgeu         a3, t4, main_j1 #branch to jump instr
                  slt          ra, t4, s11
                  xori         ra, a1, -794
                  slti         a1, s7, -1444
main_j1:          jalr         ra, s1, -901 #jump main -> sub_1
                  sub          s11, s7, a2
                  srli         a5, gp, 15
                  add          s0, gp, s6
                  beq          s4, a7, 31f
                  andi         s7, t0, 647
                  sltu         a7, ra, a3
                  slt          a5, s1, s1
                  bgeu         s4, sp, 35f
                  sltu         t2, s3, a3
                  sub          s3, t6, s1
28:               or           zero, zero, t5
                  slti         t0, s8, -1273
                  beq          s4, zero, 50f
31:               ori          a0, sp, -1350
                  slt          tp, a2, s5
                  bltu         sp, t0, 44f
                  sltu         a7, t5, gp
35:               nop
                  sra          a5, a5, s3
                  blt          ra, s9, 50f
                  bne          s1, s9, 41f
                  slli         s11, t3, 12
                  srli         t4, t5, 31
                  or           a1, a6, gp
                  add          gp, t0, s0
                  la           t4, sub_1
                  or           s3, t1, a5
                  slli         a0, s3, 11
                  ori          a5, sp, 558
                  addi         t4, t4, 538
                  and          a6, s5, s7
                  andi         s7, t3, -118
main_j2:          jalr         ra, t4, -538 #jump main -> sub_1
41:               andi         a4, s2, 1495
                  andi         s3, zero, -380
                  bne          a4, s2, 53f
44:               blt          a1, a7, 53f
                  auipc        a7, 495166
                  xor          t5, s11, tp
                  slt          a1, a6, a2
                  sltu         a5, t6, t6
                  blt          gp, s11, 53f
50:               slti         ra, t0, 337
                  addi         t4, sp, 57
                  srl          s6, t5, s3
53:               sltu         zero, s6, ra
                  la x26, test_done
                  jalr x0, x26, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            bne          a6, s11, sub_1_stack_p
                  sll          t3, s0, t2
sub_1_stack_p:    addi         s4, s4, -64
                  sw           ra, 4(s4)
                  slt          t4, a5, s2
                  sub          s1, a7, tp
                  sub          t2, s6, a0
                  ori          tp, s1, -2028
                  sll          s2, gp, s3
                  sll          s7, s2, t0
                  addi         t1, s9, 309
                  bne          t3, ra, sub_1_j3 #branch to jump instr
                  nop
                  slli         a1, s4, 13
sub_1_j3:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  addi         a6, zero, 7 #init loop 1 counter
                  sub          t0, a3, sp
                  add          t0, s7, s8
                  addi         s6, zero, -9 #init loop 1 limit
                  sltu         t3, t6, zero
                  add          t1, s11, a5
                  sltu         s2, gp, sp
sub_1_1_1_t:      slt          s9, a5, s5
                  sltu         a3, t5, s3
                  xor          s1, s8, s10
                  addi         a6, a6, -1 #update loop 1 counter
                  xor          a7, tp, s7
                  sltu         t4, a1, a1
                  addi         a4, zero, 2 #init loop 0 counter
                  sub          ra, gp, s8
                  auipc        a0, 133834
                  andi         tp, a2, -47
                  slt          a0, tp, ra
                  sltiu        s11, sp, 117
                  add          t2, a1, t4
                  ori          zero, a2, 1563
                  addi         a5, zero, 18 #init loop 0 limit
                  and          s5, t6, s9
                  nop
sub_1_1_0_t:      or           s2, s8, t5
                  addi         a4, a4, 8 #update loop 0 counter
                  and          s5, s2, a4
                  sltu         t3, sp, s9
                  bltu         a4, a5, sub_1_1_0_t #branch for loop 0
                  andi         s0, t3, 493
                  lui          s0, 457919
                  andi         t5, s10, -583
                  slt          t6, zero, t5
                  bne          a6, s6, sub_1_1_1_t #branch for loop 1
                  nop
                  addi         t6, zero, 9 #init loop 1 counter
                  sub          s3, zero, a3
                  andi         s7, a1, 191
                  xori         s7, t0, -665
                  slti         a0, t4, -1007
                  slt          a2, a2, a5
                  addi         a4, zero, 3 #init loop 1 limit
                  slt          a5, s7, s6
sub_1_11_1_t:     add          s9, t4, s0
                  and          a5, a7, s7
                  auipc        s6, 317374
                  slli         tp, t4, 20
                  addi         t6, t6, -1 #update loop 1 counter
                  slti         t4, ra, 1981
                  addi         t0, zero, -4 #init loop 0 counter
                  addi         s11, zero, 15 #init loop 0 limit
                  xori         s0, s7, -1856
sub_1_11_0_t:     sub          t1, s0, s9
                  ori          s9, a0, 1317
                  and          zero, t6, t3
                  slli         s3, s7, 21
                  addi         t0, t0, 8 #update loop 0 counter
                  srl          gp, sp, gp
                  bltu         t0, s11, sub_1_11_0_t #branch for loop 0
                  bgeu         t6, a4, sub_1_11_1_t #branch for loop 1
                  slt          s5, t3, gp
                  addi         a6, zero, 9 #init loop 1 counter
                  sltiu        t2, s3, -455
                  slt          t6, a5, s3
                  ori          t3, s7, -1879
                  slli         t0, a6, 15
                  addi         a1, zero, 12 #init loop 1 limit
                  sra          s11, s4, t2
                  add          s7, t0, sp
sub_1_10_1_t:     nop
                  or           s2, a4, s4
                  srli         t2, s10, 5
                  xor          gp, s6, s8
                  addi         a6, a6, 1 #update loop 1 counter
                  sra          t2, t6, s6
                  xor          s3, a4, s9
                  addi         a2, zero, 9 #init loop 0 counter
                  slt          t0, s10, a6
                  slti         s7, s5, 1616
                  and          a7, s9, t5
                  sra          ra, s1, s6
                  srl          t4, s2, a1
                  srli         s1, s7, 5
                  sub          t0, a5, t2
                  srli         t3, a3, 21
                  addi         s8, zero, -15 #init loop 0 limit
                  add          zero, a3, t3
                  addi         t2, s4, 1795
sub_1_10_0_t:     nop
                  sub          s7, a7, t4
                  addi         a2, a2, -2 #update loop 0 counter
                  bge          a2, s8, sub_1_10_0_t #branch for loop 0
                  lui          s11, 796387
                  bltu         a6, a1, sub_1_10_1_t #branch for loop 1
                  xori         s0, a2, -1108
                  addi         t3, zero, 8 #init loop 1 counter
                  xor          a2, s9, s2
                  sll          zero, zero, a5
                  sltiu        s2, s1, -285
                  lui          s3, 190403
                  addi         s7, zero, 13 #init loop 1 limit
                  srai         a6, s9, 8
                  ori          t0, a6, -345
                  sltu         s11, s2, s3
                  sltu         t5, t1, s1
sub_1_0_1_t:      nop
                  slli         a3, a5, 15
                  slt          t5, a7, t3
                  slti         t4, s7, 303
                  sltu         tp, s7, s3
                  auipc        a1, 78224
                  addi         t3, t3, 5 #update loop 1 counter
                  addi         gp, zero, 9 #init loop 0 counter
                  nop
                  srai         s5, t4, 30
                  addi         s6, gp, 141
                  andi         t4, zero, -396
                  slti         s8, t5, -1428
                  addi         a7, zero, 3 #init loop 0 limit
                  slli         s6, s6, 22
sub_1_0_0_t:      slt          a4, s0, t1
                  addi         gp, gp, -10 #update loop 0 counter
                  slti         a2, t1, -761
                  bge          gp, a7, sub_1_0_0_t #branch for loop 0
                  slti         s8, s4, -1348
                  nop
                  slt          s6, a1, ra
                  beq          t3, s7, sub_1_0_1_t #branch for loop 1
                  srli         t1, t4, 8
                  addi         t2, zero, 2 #init loop 0 counter
                  srai         s9, a0, 25
                  addi         tp, zero, 12 #init loop 0 limit
                  xori         a3, s8, 241
                  slli         s11, a7, 13
sub_1_3_0_t:      xori         s9, s4, -75
                  sll          t0, s3, t5
                  addi         t2, t2, 10 #update loop 0 counter
                  sltu         s3, a7, a1
                  xori         gp, a6, 859
                  sltu         a6, tp, zero
                  slti         s9, s11, -1849
                  sub          t3, sp, s11
                  andi         t4, s0, 1844
                  sll          t6, t3, t4
                  slt          s11, s4, s3
                  ori          s9, s2, -1473
                  slti         s3, t4, 47
                  lui          a1, 730225
                  beq          t2, tp, sub_1_3_0_t #branch for loop 0
                  and          s2, a1, a2
                  addi         t1, zero, -7 #init loop 1 counter
                  auipc        tp, 238123
                  addi         s1, a6, -825
                  addi         a5, zero, 13 #init loop 1 limit
                  nop
sub_1_2_1_t:      nop
                  srl          t0, zero, t6
                  or           s5, t1, s6
                  slti         s1, s10, -9
                  sll          a1, zero, t5
                  addi         t1, t1, 10 #update loop 1 counter
                  addi         a6, zero, -6 #init loop 0 counter
                  sub          a1, t6, t3
                  sltu         a2, t1, a7
                  slti         a7, s3, -1501
                  addi         s2, zero, 14 #init loop 0 limit
sub_1_2_0_t:      sub          tp, t3, t0
                  addi         a6, a6, 1 #update loop 0 counter
                  and          s8, t5, gp
                  xor          s11, s7, s11
                  bltu         a6, s2, sub_1_2_0_t #branch for loop 0
                  sltiu        a0, s7, -1600
                  bne          t1, a5, sub_1_2_1_t #branch for loop 1
                  slti         a7, s5, 1051
                  addi         t6, zero, -1 #init loop 0 counter
                  srai         s3, s4, 4
                  slli         t0, s8, 13
                  and          s5, t3, t1
                  slt          t0, tp, t3
                  slt          a3, ra, tp
                  slti         t3, a1, -1842
                  slli         s6, s5, 2
                  sra          t2, a3, zero
                  xor          a4, a4, t6
                  nop
                  addi         a5, zero, 1 #init loop 0 limit
sub_1_9_0_t:      and          s7, a6, s1
                  sltiu        s2, s3, 894
                  and          a3, s2, s4
                  sltiu        t5, s5, 448
                  addi         t6, t6, 2 #update loop 0 counter
                  blt          t6, a5, sub_1_9_0_t #branch for loop 0
                  slli         t4, t0, 26
                  addi         gp, zero, -9 #init loop 0 counter
                  slli         s8, t2, 31
                  xori         s8, t6, 1957
                  and          s9, s2, s8
                  sll          a6, a3, a7
                  and          t1, s6, a5
                  slli         s6, s6, 24
                  addi         t6, zero, -19 #init loop 0 limit
                  sltu         a6, t1, t2
sub_1_6_0_t:      sltu         t2, ra, t0
                  slt          a5, zero, s2
                  addi         gp, gp, -10 #update loop 0 counter
                  slli         s9, t3, 4
                  andi         a5, a7, 1108
                  slli         t4, a0, 16
                  or           t2, ra, a4
                  srl          s0, ra, a0
                  and          t1, t4, s0
                  xori         s7, t4, -60
                  xor          t4, a5, s0
                  nop
                  bne          gp, t6, sub_1_6_0_t #branch for loop 0
                  addi         t2, a2, -111
                  addi         a7, zero, 7 #init loop 0 counter
                  xor          a0, a5, t3
                  andi         t0, zero, 604
                  add          s11, s8, a2
                  addi         t5, zero, 9 #init loop 0 limit
                  sltu         t3, s6, s4
                  srl          s0, a4, sp
sub_1_8_0_t:      xori         tp, s1, -29
                  addi         a7, a7, 2 #update loop 0 counter
                  or           ra, a5, t6
                  sltiu        s9, s9, -1800
                  sub          s5, t2, t0
                  auipc        a2, 185822
                  auipc        t6, 423909
                  blt          a7, t5, sub_1_8_0_t #branch for loop 0
                  slti         t1, zero, 545
                  addi         a7, zero, -8 #init loop 0 counter
                  srl          t3, s1, t4
                  srli         a4, t3, 5
                  addi         t1, zero, 19 #init loop 0 limit
sub_1_14_0_t:     xor          s3, s6, s5
                  xori         s6, s4, -427
                  srl          t6, ra, sp
                  andi         a1, t1, 1546
                  addi         a7, a7, 3 #update loop 0 counter
                  slli         a4, s1, 14
                  bltu         a7, t1, sub_1_14_0_t #branch for loop 0
                  add          ra, s1, t2
                  addi         s5, zero, 8 #init loop 0 counter
                  xori         s8, s2, 390
                  nop
                  sra          s1, t1, s6
                  and          s7, ra, zero
                  and          s2, t2, s3
                  addi         s9, zero, 8 #init loop 0 limit
                  ori          s8, t6, 306
                  srl          t4, a1, t1
sub_1_5_0_t:      andi         t3, a5, 835
                  and          gp, t5, a0
                  addi         s5, s5, -7 #update loop 0 counter
                  auipc        t6, 601182
                  xori         a6, a3, -1758
                  slt          a7, s2, s4
                  srai         a3, s4, 4
                  auipc        tp, 558490
                  srl          t6, s0, a5
                  slti         s7, s11, 1308
                  add          t0, a7, zero
                  slti         ra, t2, -1200
                  addi         s2, s1, -806
                  add          s3, a5, zero
                  bgeu         s5, s9, sub_1_5_0_t #branch for loop 0
                  srai         s6, s3, 14
                  addi         a0, zero, 4 #init loop 0 counter
                  srai         s8, t6, 11
                  and          s2, sp, a1
                  xori         s8, s11, 983
                  ori          t4, a5, -197
                  slt          a1, a4, a3
                  srl          s5, a2, t1
                  addi         a2, zero, 7 #init loop 0 limit
                  sltu         a3, a5, sp
                  srai         s0, a7, 29
                  sltu         t5, t2, s4
                  ori          zero, s4, 849
sub_1_12_0_t:     sub          s1, t1, a5
                  nop
                  addi         a0, a0, 3 #update loop 0 counter
                  srl          ra, ra, s5
                  bne          a0, a2, sub_1_12_0_t #branch for loop 0
                  addi         t5, t3, -1039
                  bne          t5, ra, 11f
                  beq          t4, t2, 2f
2:                bge          s10, t5, 12f
                  bgeu         gp, ra, 20f
                  andi         s9, s8, 1488
                  and          a5, s9, t0
                  srai         t5, t3, 27
                  srli         s1, zero, 12
                  sub          a6, s7, tp
                  slt          t5, a5, a1
                  andi         s2, zero, 1929
11:               xor          ra, a0, a7
12:               bge          t3, sp, 25f
                  sub          a2, a6, s4
                  slti         a5, zero, -1845
                  slli         t6, s1, 18
                  add          s0, tp, t2
                  addi         a4, t5, 1740
                  sll          a3, a0, a6
                  beq          a5, s10, 38f
20:               sltiu        t0, a2, -1395
                  slli         a1, a6, 17
                  sll          s8, s3, a3
                  bltu         t1, s6, 37f
                  or           s6, t1, s7
25:               sub          gp, sp, a6
                  sll          gp, gp, a1
                  sltu         t3, a3, a5
                  srli         a3, sp, 17
                  addi         s2, a0, 1936
                  add          t0, t1, gp
                  slti         a4, s6, -221
                  add          s6, a5, s4
                  slt          t0, s9, t0
                  slli         gp, s7, 29
                  slli         s0, gp, 12
                  bgeu         t6, s9, 50f
37:               xor          s9, ra, s11
38:               xor          t5, a3, s8
                  and          s2, a6, gp
                  slt          a4, s0, s5
                  sltu         s7, a3, s9
                  or           s9, a0, t5
                  bltu         s8, a4, 54f
                  slti         t4, s4, 937
                  or           s2, a6, s5
                  sra          t5, s8, s4
                  and          a0, s1, a5
                  slt          s9, a5, s3
                  add          s11, tp, sp
50:               ori          ra, t5, -1790
                  andi         s9, s9, 1741
                  auipc        t2, 751474
                  or           t6, s3, s7
54:               bge          tp, a3, 59f
                  addi         t0, a4, 1122
                  xori         t6, s2, -1338
                  nop
                  ori          s7, t2, -804
59:               bltu         a4, s2, 60f
60:               or           tp, a0, s3
                  ori          s5, s0, 1930
                  sltu         a3, a2, sp
                  srli         t4, s10, 20
                  sltu         tp, t3, sp
                  or           ra, s0, t0
                  blt          s8, s1, 75f
                  bne          t0, s9, 81f
                  slti         a3, s6, -930
                  and          t5, t1, a6
                  auipc        a4, 898308
                  blt          s0, s10, 81f
                  slti         s11, a0, 1519
                  lui          t6, 56718
                  sra          s8, s1, s9
75:               lui          s2, 254692
                  lui          t5, 709317
                  bne          t5, t5, 87f
                  and          a2, ra, a3
                  slli         s6, a4, 14
                  sltiu        s9, a3, 1650
81:               sltiu        gp, s7, -170
                  sra          s0, s1, s5
                  slli         a6, s6, 15
                  slti         gp, gp, 122
                  slli         a6, s5, 24
                  blt          a1, t2, 101f
87:               bne          s6, gp, 94f
                  beq          t3, s11, 102f
                  srl          ra, t3, t4
                  bltu         t1, a1, 95f
                  sltu         t1, sp, s2
                  sltiu        a1, s9, 996
                  srai         ra, zero, 25
94:               srai         t1, s11, 0
95:               sub          s3, s1, t4
                  srli         s8, s3, 11
                  sltu         s5, a0, t6
                  bltu         s8, a4, 112f
                  add          t2, s0, a3
                  xor          s7, t5, a2
101:              bgeu         s4, s8, 119f
102:              lui          s6, 701013
                  slt          s3, s4, a0
                  sra          t3, s1, t5
                  and          a4, s0, sp
                  xori         a3, s5, -396
                  ori          zero, t3, -1345
                  bltu         a6, tp, 117f
                  srl          s2, a7, s4
                  srli         t3, zero, 19
                  xori         a0, s7, -825
112:              xori         a5, s6, 161
                  srl          gp, gp, t6
                  blt          s5, s11, 115f
115:              sra          t2, s1, t0
                  ori          t3, s5, 824
117:              bltu         s7, s0, 123f
                  and          s0, tp, tp
119:              bgeu         sp, sp, 126f
                  slti         t2, t5, -253
                  xor          s9, s3, s2
                  slti         t3, a6, -966
123:              addi         t2, s9, 1133
                  ori          s11, t6, 2004
                  lui          s11, 737487
126:              andi         s5, s11, -246
                  srai         t1, t5, 28
                  beq          t5, s2, 146f
                  slti         s1, s6, -1415
                  srl          t1, zero, a2
                  sltu         ra, t0, a5
                  slli         t2, t1, 16
                  srai         s3, s11, 17
                  blt          s6, t2, 141f
                  blt          tp, a1, 154f
                  addi         a7, s1, -593
                  and          a6, t3, s11
                  bne          a1, s6, 148f
                  bge          t4, t4, 142f
                  srai         t4, t4, 0
141:              srl          t0, s2, gp
142:              xor          gp, s1, t4
                  lui          a0, 110543
                  auipc        s7, 285376
                  sra          t1, t4, s1
146:              ori          a0, s9, -244
                  add          ra, s1, t3
148:              srli         tp, a3, 16
                  or           t3, zero, s3
                  slt          s2, s6, s5
                  and          s5, s5, a1
                  slli         ra, t4, 10
                  srl          a6, t0, a0
154:              sub          a3, s5, t4
                  auipc        s2, 9643
                  sub          gp, s2, a0
                  slti         a7, t3, -1205
                  add          t6, a7, a5
                  srl          a5, t5, t3
                  xori         s6, s4, 444
                  auipc        a5, 626950
                  beq          a7, zero, 177f
                  xori         t6, s11, -1525
                  or           ra, a1, s5
                  beq          s2, t6, 182f
                  ori          s1, a1, -580
                  sra          s3, a5, s0
                  addi         a3, sp, 1490
                  sltu         gp, s5, t0
                  srai         a4, s2, 18
                  auipc        a0, 973368
                  bltu         sp, a5, 173f
173:              ori          s1, s4, -1648
                  xor          s5, a1, a7
                  nop
                  srai         s3, a0, 13
177:              add          a6, t0, t6
                  add          s8, gp, zero
                  srli         a4, ra, 10
                  slli         a2, sp, 19
                  srli         s1, s8, 2
                  addi         s0, zero, 8 #init loop 1 counter
                  addi         t0, zero, 6 #init loop 1 limit
                  slti         a5, a0, 682
                  sub          a4, s2, s4
                  sub          gp, s3, zero
sub_1_7_1_t:      addi         t1, s9, 891
                  addi         s0, s0, -4 #update loop 1 counter
                  sra          t2, s0, s3
                  addi         a1, zero, 10 #init loop 0 counter
                  addi         a0, zero, 10 #init loop 0 limit
                  ori          s2, a6, 1386
                  sub          t4, t6, s0
sub_1_7_0_t:      andi         s11, t2, -780
                  srli         s7, a6, 18
                  addi         a1, a1, -8 #update loop 0 counter
                  bgeu         a1, a0, sub_1_7_0_t #branch for loop 0
                  and          a4, t3, s10
                  bgeu         s0, t0, sub_1_7_1_t #branch for loop 1
                  slli         t1, s8, 18
182:              xori         a7, s9, -108
                  blt          t3, s0, 196f
                  ori          s7, a6, -166
                  slti         s3, a0, -600
                  sltiu        zero, s4, -982
                  or           t1, s5, t3
                  andi         t5, s8, -81
                  add          t3, s0, zero
                  bltu         a3, s3, 201f
                  add          t0, ra, ra
                  srli         t0, a0, 9
                  andi         t4, t4, -75
                  sll          t4, s7, a2
                  srli         tp, t2, 30
196:              and          a7, gp, t6
                  bne          t4, t5, 203f
                  xor          t4, ra, s11
                  bltu         s8, s7, 204f
                  bne          s7, t0, 203f
201:              sub          a7, a5, sp
                  auipc        a2, 383817
203:              xori         a6, s10, 1858
204:              nop
                  lui          t4, 482054
                  bge          t4, s4, 225f
                  slti         s2, t2, -1613
                  slt          zero, s5, a1
                  sll          a6, t6, s1
                  andi         t0, t4, -148
                  sltu         a5, sp, tp
                  bgeu         a6, a7, 226f
                  ori          a3, t4, -1822
                  lui          a0, 976939
                  and          a2, zero, gp
                  bge          s3, s4, 234f
                  and          s1, a7, a5
                  xor          a0, a7, s8
                  lui          t3, 245979
                  slti         t3, t3, 1316
                  sub          a7, t4, t2
                  xor          tp, s1, s7
                  sltiu        a0, t0, 1174
                  sltu         a4, s10, s7
225:              beq          t6, s7, 235f
226:              sltiu        a1, s6, 415
                  add          t4, zero, s11
                  slt          s9, s2, a1
                  xori         a2, s0, -1289
                  srl          tp, s7, a2
                  lui          s3, 847570
                  lui          s3, 854251
                  sltiu        t4, s11, 1364
234:              beq          s8, s7, 241f
235:              srli         t0, s3, 20
                  bltu         t4, t3, 245f
                  slt          a4, a4, gp
                  srli         s3, s4, 17
                  bgeu         s5, a3, 257f
                  sltu         a7, a0, t5
241:              sltiu        a3, t2, 71
                  sltu         t1, s6, s5
                  lui          a6, 152542
                  beq          a6, t2, 245f
245:              andi         s0, s10, 1084
                  lui          s7, 266819
                  srl          s0, s5, t1
                  sltu         s0, s4, a6
                  lui          s2, 561812
                  slli         a0, tp, 14
                  and          s0, a5, a6
                  srl          t6, s4, t6
                  sll          s2, s0, s6
                  bne          a1, a1, 268f
                  bltu         a1, a4, 262f
                  ori          s8, s7, 121
257:              srl          s8, s11, t1
                  andi         s2, a0, -268
                  xor          a5, a5, a3
                  slt          a0, a7, a4
                  bge          zero, sp, 280f
262:              bne          s4, sp, 267f
                  bltu         s0, s3, 270f
                  sll          t4, a6, a3
                  or           t3, ra, a0
                  lui          a6, 651348
267:              bge          sp, s10, 276f
268:              srai         s7, a7, 12
                  ori          s8, sp, 1151
270:              slli         t0, s9, 27
                  sll          s11, s7, gp
                  xor          a2, t1, s3
                  add          s11, a6, t3
                  srl          a1, s0, gp
                  slt          s3, s8, s1
276:              slt          s8, a5, tp
                  sra          a5, a5, a4
                  blt          s9, a0, 292f
                  sltiu        a2, t5, -1090
280:              bgeu         zero, s9, 281f
281:              srli         s5, a1, 19
                  slt          s3, s10, s5
                  srl          s3, t3, s0
                  beq          tp, a5, 294f
                  sltu         t3, a6, s1
                  ori          s8, a5, -468
                  beq          a7, s10, 297f
                  sub          s9, s4, a1
                  srli         s9, s0, 16
                  srl          s7, s7, s1
                  sltiu        s6, s2, 1866
292:              srai         t6, t5, 26
                  bltu         s2, a6, 303f
294:              add          ra, a0, a2
                  andi         a6, a7, 2034
                  srl          gp, a3, t4
297:              sltiu        gp, a0, 1840
                  or           a1, a5, s6
                  slt          s5, tp, s1
                  bltu         s5, t5, 311f
                  srli         t6, t5, 11
                  nop
303:              bne          a3, s6, 317f
                  or           a1, zero, s7
                  bgeu         s2, a7, 319f
                  nop
                  bge          s8, t1, 325f
                  slt          a3, t4, t1
                  sub          tp, t1, t3
                  srli         a6, sp, 30
311:              slti         zero, t3, -830
                  srai         t2, ra, 18
                  add          s5, t3, s10
                  bge          t1, tp, 315f
315:              xor          a2, tp, ra
                  lui          t0, 671378
317:              xor          s2, s10, s10
                  xor          a6, s5, s11
319:              xor          t2, zero, t3
                  bgeu         s9, tp, 333f
                  srai         s0, s1, 3
                  blt          t3, t1, 341f
                  srli         s2, a2, 21
                  bge          s5, t3, 341f
325:              or           s11, s5, s4
                  sltiu        s11, s6, 435
                  bne          tp, s9, 345f
                  nop
                  nop
                  addi         s2, a4, -757
                  add          gp, s3, s9
                  slt          s1, sp, a3
333:              bltu         s1, a6, 352f
                  sub          a6, s3, t4
                  nop
                  sll          s3, s11, s9
                  ori          a2, a7, 1178
                  xor          t6, a4, t4
                  xori         t2, a2, 1122
                  sltiu        a1, s9, 1316
341:              nop
                  andi         a7, s0, -1629
                  xor          a7, tp, t0
                  srli         s6, t2, 4
345:              addi         t3, sp, -972
                  sub          s5, t4, a5
                  bge          s11, a5, 354f
                  srl          s5, gp, s5
                  beq          t2, a0, 354f
                  slti         ra, s0, -46
                  slt          s3, ra, ra
352:              srl          a2, gp, s10
                  ori          a7, s10, 1529
354:              bge          a0, a1, 355f
355:              bne          t2, ra, 356f
356:              xor          s7, tp, t4
                  slt          s11, s3, s5
                  sub          t3, gp, s10
                  sll          t5, s1, a2
                  bge          ra, s8, 369f
                  and          s5, tp, s4
                  bltu         s10, t0, 376f
                  blt          s1, s1, 373f
                  sltiu        s3, a6, 340
                  and          s6, t1, a0
                  ori          s11, t5, -57
                  and          a3, a1, s11
                  auipc        a6, 163809
369:              srli         t4, s8, 21
                  sra          t0, ra, s9
                  addi         a6, zero, -7 #init loop 1 counter
                  or           s11, sp, t6
                  sltiu        t6, t3, -961
                  addi         a2, zero, -19 #init loop 1 limit
sub_1_13_1_t:     addi         t6, s1, -697
                  sltu         ra, t1, s11
                  addi         a6, a6, -3 #update loop 1 counter
                  srli         t0, s5, 5
                  addi         gp, ra, -1115
                  addi         s5, zero, 6 #init loop 0 counter
                  auipc        zero, 1230
                  andi         a4, s8, -2048
                  addi         t3, zero, 4 #init loop 0 limit
                  slti         tp, s11, 2021
                  xor          s11, a6, a6
                  and          s2, t2, s7
sub_1_13_0_t:     or           s1, a7, s11
                  nop
                  add          zero, s6, s4
                  addi         s5, s5, -1 #update loop 0 counter
                  slli         ra, s6, 7
                  bgeu         s5, t3, sub_1_13_0_t #branch for loop 0
                  sll          a1, s0, sp
                  bne          a6, a2, sub_1_13_1_t #branch for loop 1
                  srli         t1, a5, 29
                  ori          a6, a0, -1093
                  lui          a3, 71291
373:              ori          t6, a7, -1861
                  bgeu         s5, s3, 388f
                  sll          tp, gp, a2
376:              nop
                  slt          a6, gp, t1
                  sll          s2, a0, a3
                  and          s3, sp, a4
                  bltu         a5, ra, 383f
                  srl          t6, s7, s0
                  srai         a1, s4, 15
383:              srli         a4, t1, 9
                  srl          t4, ra, a4
                  nop
                  auipc        a0, 759452
                  sltiu        s2, a5, 185
388:              slt          s1, t4, a7
                  bgeu         a3, s5, 403f
                  lui          t4, 1003354
                  add          zero, a5, a3
                  sub          a1, s9, s6
                  add          s3, s4, t1
                  bne          s5, s10, 400f
                  slti         t5, a0, 889
                  ori          a6, gp, -825
                  xor          a4, t0, a2
                  srai         s3, gp, 9
                  bge          a5, s1, 414f
400:              bne          zero, a2, 405f
                  or           tp, a2, a3
                  ori          a5, t6, -525
403:              srai         a4, s1, 7
                  srl          s11, ra, s10
405:              and          s0, t3, ra
                  andi         tp, a1, 302
                  bgeu         s8, a1, 417f
                  xori         t5, s10, -578
                  sra          s6, s3, t4
                  sra          s6, a1, t4
                  addi         a5, a7, -1543
                  slt          ra, s8, a5
                  sll          s0, t0, s6
414:              lui          s11, 442698
                  srl          s1, s7, a5
                  srai         t1, zero, 4
417:              sltu         t4, sp, a1
                  slli         a0, a7, 17
                  and          s7, s1, t4
                  or           a1, s9, tp
                  slli         a5, a6, 5
                  slli         s5, t5, 14
                  lui          s11, 1004483
                  slt          s8, s4, a1
                  srl          a4, zero, s5
                  xori         s3, sp, 462
                  bgeu         s5, s9, 437f
                  srli         t2, t0, 27
                  xor          s1, s7, t6
                  add          tp, ra, a1
                  bltu         a3, s5, 440f
                  beq          t0, s4, 439f
                  sltu         t2, t2, t2
                  sltiu        s2, gp, -1288
                  sub          zero, s10, a3
                  andi         a6, a7, -269
437:              bgeu         t3, a1, 448f
                  nop
439:              nop
440:              sra          a4, gp, s2
                  slli         s2, s8, 5
                  bgeu         s5, s10, 456f
                  srai         s2, t2, 31
                  sub          s7, t5, s9
                  ori          a5, s6, 768
                  lui          a7, 440981
                  auipc        t0, 844454
448:              nop
                  bge          s6, s10, 460f
                  beq          s2, gp, 457f
                  bltu         s10, s1, 465f
                  blt          a6, s7, 462f
                  sltiu        s7, a4, 1096
                  or           ra, s8, a2
                  sub          tp, a7, s11
456:              bgeu         a1, s4, 462f
457:              srl          t0, s0, s6
                  slt          a2, s5, a1
                  slli         s3, gp, 18
460:              or           a7, t3, a6
                  lui          s0, 666519
462:              sltiu        gp, s10, -1921
                  srli         t4, a7, 7
                  bge          a1, sp, 465f
465:              add          t5, zero, s0
                  sub          a7, t4, a2
                  slti         a4, zero, 286
                  or           s6, t4, s3
                  bltu         s5, t1, 478f
                  slti         a2, s10, -1372
                  and          s0, s5, s11
                  beq          zero, s10, 473f
473:              andi         s11, t3, -451
                  bne          t2, a1, 488f
                  addi         s1, t3, -595
                  slli         t1, a1, 16
                  andi         s3, a0, 971
478:              sll          gp, s3, ra
                  beq          t5, s3, 489f
                  bgeu         a6, a2, 498f
                  ori          tp, a0, 1384
                  lui          a7, 359052
                  slt          s0, s4, s1
                  xor          zero, s5, gp
                  nop
                  andi         a2, a5, -692
                  add          t0, s9, s7
488:              sll          t4, s4, t1
489:              xori         a3, s9, 323
                  addi         s6, tp, 966
                  slli         a7, a6, 3
                  lui          a1, 306731
                  sltiu        s9, t5, 1612
                  xori         s5, zero, 1257
                  slti         gp, a4, 1699
                  and          t1, zero, sp
                  sltiu        t6, t5, -239
498:              bne          t6, a2, 505f
                  auipc        a4, 257068
                  sltiu        gp, t5, -1474
                  srli         s11, s5, 26
                  xor          t1, a4, a4
                  lui          a2, 974195
                  andi         s0, s4, 916
505:              sub          s1, a7, t5
                  srai         t6, t5, 10
                  slli         zero, a4, 29
                  bltu         zero, t3, 509f
509:              bne          s10, tp, 519f
                  and          s3, s5, sp
                  and          gp, t0, t5
                  bgeu         t1, t4, 531f
                  or           s7, s5, a1
                  xori         a4, s6, -890
                  lui          t5, 911952
                  ori          s2, tp, 1444
                  andi         t0, a7, -988
                  ori          zero, t1, 1391
519:              andi         s11, gp, 1429
                  sltu         a0, t1, sp
                  bgeu         gp, a5, 524f
                  sltu         s11, zero, t2
                  srli         s3, a5, 22
524:              slt          s7, s4, t3
                  bge          s2, a5, 543f
                  blt          t3, a2, 540f
                  andi         a7, t5, -1213
                  sltiu        a1, s1, -1886
                  lui          t0, 654675
                  bge          s11, s8, 535f
531:              sltiu        t1, t5, 842
                  sra          zero, t0, s8
                  srai         s11, s7, 2
                  slti         t5, s0, 1009
535:              sltu         s0, t5, s3
                  srl          ra, s0, s2
                  slli         a7, s7, 5
                  addi         s5, a4, -1335
                  nop
540:              slt          t2, s11, a2
                  lui          s11, 790496
                  bge          a3, a2, 552f
543:              srai         a6, s1, 2
                  auipc        s0, 75636
                  bge          t1, a7, 562f
                  slt          a3, s1, a5
                  andi         t4, a5, -159
                  srai         a1, s2, 22
                  bge          a5, s2, 560f
                  addi         a6, s0, -86
                  srli         t6, tp, 9
552:              srl          a7, s10, t1
                  lui          a4, 668387
                  lui          t6, 384146
                  sra          a7, s11, s2
                  srai         s0, a2, 3
                  xori         a2, a5, 57
                  beq          tp, a0, 567f
                  or           a5, s6, s3
560:              srai         s5, gp, 19
                  lui          s0, 1010999
562:              bltu         s1, s6, 573f
                  srl          a4, s0, s2
                  bltu         t6, t0, 579f
                  addi         s2, s11, 1406
                  slli         t4, s10, 9
567:              ori          a7, a7, 1893
                  sub          t0, t0, t1
                  sltu         s0, t1, gp
                  slti         a5, s1, -142
                  lui          a3, 185324
                  xor          t4, a6, s1
573:              sll          a1, s7, s4
                  beq          sp, s6, 588f
                  srl          a5, s8, t6
                  auipc        s8, 699791
                  srl          s1, t6, t6
                  or           s0, t1, gp
579:              andi         a4, t4, 829
                  ori          t4, a6, 10
                  addi         s7, s1, -1612
                  add          a5, tp, a5
                  slt          a3, a4, a4
                  andi         s2, t0, 1007
                  xori         s0, t1, 2023
                  nop
                  srai         a6, a4, 12
588:              bge          s3, a1, 595f
                  blt          a7, gp, 602f
                  sub          a3, a3, t5
                  and          t3, s10, sp
                  slt          a1, a2, a0
                  lui          t4, 956579
                  sub          s5, a2, t1
595:              beq          a2, a6, 605f
                  xori         s11, s8, 1823
                  srli         tp, t6, 13
                  ori          tp, a3, -1326
                  andi         s6, s6, -1431
                  bne          sp, s3, 614f
                  slli         s2, s6, 14
602:              bge          a5, zero, 621f
                  addi         s6, s9, -1602
                  add          ra, t6, ra
605:              srli         t1, a5, 31
                  bge          zero, t5, 611f
                  and          t6, s10, t0
                  beq          t2, s7, 615f
                  bltu         s8, s11, 623f
                  slt          a1, s8, a6
611:              ori          t1, s4, -1493
                  srli         s5, a0, 8
                  and          t1, tp, s8
614:              add          zero, t2, t6
615:              bgeu         s8, s11, 633f
                  slt          s5, t6, s7
                  slti         t4, t0, 1935
                  bgeu         s4, t2, 637f
                  and          s0, a0, zero
                  xori         s2, s5, 778
621:              slli         s5, s6, 17
                  sra          a0, t2, a0
623:              xor          t6, zero, s1
                  blt          a1, s5, 625f
625:              sltu         t1, s10, a2
                  slli         zero, tp, 7
                  slli         t5, a0, 26
                  srl          a1, a1, a7
                  srai         a1, t4, 1
                  and          s9, a7, gp
                  srli         t6, t0, 6
                  xori         t0, a5, -1834
633:              sra          s2, t3, a3
                  sub          t5, s1, s0
                  bne          a5, s2, 636f
636:              srl          ra, s6, a7
637:              bltu         s7, s0, 651f
                  or           t0, tp, s10
                  slli         t2, a3, 16
                  xor          s8, a0, s2
                  slli         gp, sp, 13
                  srl          t3, gp, t6
                  sltu         a6, t6, gp
                  slti         a7, s4, 1201
                  and          s11, a4, a1
                  lui          s7, 420335
                  or           t5, a2, t6
                  andi         t3, s10, -785
                  and          t6, t5, s0
                  bgeu         s2, t3, 660f
651:              andi         a2, s2, -937
                  slt          a5, t4, tp
                  srli         s3, s2, 17
                  sub          t3, s6, s6
                  sltiu        t0, a2, 908
                  xor          zero, ra, zero
                  bgeu         t1, s1, 660f
                  sll          s7, s3, t5
                  sltu         tp, s1, s11
660:              lui          s9, 116233
                  andi         tp, s0, -690
                  sltiu        t3, t0, -1887
                  xori         a1, s8, -346
                  sub          s8, s7, tp
                  srl          a5, s4, t3
                  add          gp, t3, t1
                  srl          a1, gp, a1
                  beq          s9, s9, 682f
                  bltu         s1, a4, 678f
                  ori          s6, s4, -226
                  sltu         a2, a3, s11
                  slli         s0, t2, 31
                  sll          t4, s11, a2
                  and          s6, s0, s9
                  or           s2, tp, s0
                  ori          gp, a7, 1061
                  srai         ra, sp, 31
678:              slli         s7, t3, 15
                  slti         a4, a0, -1084
                  xor          s7, gp, s10
                  or           tp, s9, tp
682:              blt          a3, s5, 692f
                  sltiu        s0, s3, -1806
                  srli         a1, s6, 16
                  slli         s11, s8, 11
                  bge          t0, zero, 695f
                  sra          a6, sp, t2
                  bgeu         s10, t5, 703f
                  bgeu         ra, zero, 707f
                  bltu         s0, gp, 691f
691:              auipc        zero, 502737
692:              sltu         t2, zero, t0
                  sltiu        a7, s0, -299
                  and          t5, t2, s7
695:              sub          t3, s3, s3
                  slt          s0, s9, zero
                  sra          a4, gp, t0
                  addi         s1, s6, 1994
                  srli         s0, t3, 26
                  sltu         s3, s7, s1
                  slli         a7, a0, 6
                  or           gp, a0, t6
703:              auipc        a1, 480209
                  or           a4, s1, t2
                  addi         s3, zero, -2 #init loop 1 counter
                  sub          s5, a5, a1
                  srli         s6, s0, 10
                  andi         zero, s11, -967
                  addi         a6, zero, -16 #init loop 1 limit
sub_1_4_1_t:      nop
                  lui          t3, 425915
                  addi         s3, s3, -3 #update loop 1 counter
                  addi         ra, zero, 10 #init loop 0 counter
                  nop
                  xor          s1, s2, s8
                  or           a5, a2, a2
                  addi         a4, zero, 4 #init loop 0 limit
                  or           s1, a4, s5
                  nop
                  and          t0, t6, s1
                  sub          t2, a1, s4
sub_1_4_0_t:      slt          zero, a5, a5
                  addi         ra, ra, -1 #update loop 0 counter
                  bgeu         ra, a4, sub_1_4_0_t #branch for loop 0
                  slli         s6, sp, 5
                  srli         zero, tp, 9
                  srli         tp, s8, 2
                  or           s9, s7, s9
                  bge          s3, a6, sub_1_4_1_t #branch for loop 1
                  andi         a1, t6, 1399
                  sltu         s11, s3, s11
                  lui          a2, 68203
707:              sra          zero, t6, a3
                  xori         a3, s9, 1130
                  bgeu         zero, a7, 722f
                  srai         s6, s7, 7
                  sltiu        s8, t5, -1378
                  sltiu        a0, a5, 1921
                  xori         a1, s5, -1755
                  xor          s11, a2, s7
                  sll          s2, a3, ra
                  andi         a7, t1, 511
                  add          a4, s4, s10
                  srl          s11, a6, s8
                  or           a0, zero, zero
                  xori         ra, a3, 1029
                  xori         a6, a0, -1864
                  srai         s0, t6, 6
                  la           s6, sub_2
                  addi         s6, s6, 860
                  bge          a3, a3, sub_1_j4 #branch to jump instr
                  sltiu        s11, s9, 1273
                  srl          t6, a0, zero
sub_1_j4:         jalr         ra, s6, -860 #jump sub_1 -> sub_2
                  sra          a6, t3, a3
                  and          s1, s8, t4
722:              srli         a5, a2, 20
                  xor          s11, t5, s9
                  and          t6, t6, a1
                  or           ra, a0, s8
                  sltiu        a6, s10, -2036
                  auipc        s9, 118170
                  sub          a0, a7, ra
                  sub          a6, a7, s11
                  or           t6, s7, s3
                  bne          zero, s4, 745f
                  sltiu        tp, ra, 1727
                  srli         zero, ra, 19
                  srai         zero, s2, 21
                  slt          t1, a4, t3
                  sll          a1, zero, s0
                  sltiu        t2, sp, 1192
                  addi         s3, ra, 761
                  addi         tp, ra, -386
                  or           t4, a7, s9
                  bgeu         s4, t1, 747f
                  ori          t1, tp, 1724
                  xor          t1, a1, a2
                  and          s1, s6, t4
745:              srl          s6, s11, zero
                  slli         s0, s11, 14
747:              bgeu         a6, a7, 752f
                  lui          ra, 1023146
                  srli         s8, s8, 4
                  bgeu         a6, s11, 760f
                  andi         s6, t6, -222
752:              slti         s2, s8, 1648
                  slli         s5, s7, 15
                  ori          t2, s6, 642
                  beq          a4, t6, 762f
                  or           t2, s8, t6
                  auipc        t1, 299472
                  ori          a7, ra, -334
                  auipc        t1, 612359
760:              sltu         tp, s10, t2
                  blt          a2, tp, 766f
762:              bge          a2, s10, 779f
                  bge          a4, a0, 770f
                  lui          s9, 185613
                  slli         s7, t5, 14
766:              blt          s10, s11, 777f
                  slt          s6, sp, a4
                  slt          t6, s9, a7
                  auipc        t5, 617243
770:              or           a0, t1, sp
                  andi         s3, s3, 561
                  sra          a2, a0, sp
                  nop
                  add          a0, a3, a2
                  sltiu        ra, t5, -1194
                  srl          t1, t6, t0
777:              addi         t0, s10, 387
                  or           s0, a1, s8
779:              xori         tp, s10, -1835
                  sra          t2, s3, s7
                  slt          t6, a1, s9
                  ori          zero, s10, -1905
                  xor          t3, s11, s11
                  xori         s11, a4, 314
                  add          s6, t2, s2
                  sll          s6, s11, tp
                  sltiu        s9, s0, 949
                  lw           ra, 4(s4)
                  add          s9, a5, s1
                  slli         a7, s11, 12
                  ori          gp, tp, -293
                  sub          a7, a2, a4
                  addi         s4, s4, 64
                  addi         a3, a5, 1090
1176:             addi x29, x1, 0
1176:             jalr x29, x29, 0
sub_3:            bltu         tp, s8, sub_3_stack_p
                  addi         t1, a4, -554
sub_3_stack_p:    addi         s4, s4, -8
                  lui          a5, 156039
                  nop
                  srl          a1, s2, t3
                  sltu         t3, sp, s4
                  ori          s2, s2, 444
                  sw           ra, 4(s4)
                  srai         a1, t5, 24
                  slt          a3, s7, tp
                  slt          t5, a5, s11
                  slt          t6, a5, ra
                  add          s6, t6, ra
                  and          s0, s5, t6
                  blt          zero, sp, sub_3_j7 #branch to jump instr
                  lui          s3, 974862
                  addi         s9, t0, 203
                  sll          s3, zero, s7
                  xor          s8, t0, s4
sub_3_j7:         jal          ra, sub_4 #jump sub_3 -> sub_4
                  sltu         s9, t4, s4
                  xor          s0, t3, s2
                  lui          s5, 814576
                  lui          ra, 23047
                  slli         s0, ra, 31
                  blt          s5, a7, sub_3_j8 #branch to jump instr
                  auipc        s2, 973869
                  or           a1, a5, t2
                  srai         t0, s0, 25
                  sra          s0, t4, s3
sub_3_j8:         jal          ra, sub_5 #jump sub_3 -> sub_5
                  sll          s0, a5, s3
                  slt          a2, t5, tp
                  sra          s9, sp, a1
                  add          t1, a0, ra
                  srl          tp, sp, s6
sub_3_j9:         jal          ra, sub_5 #jump sub_3 -> sub_5
                  addi         a4, zero, -2 #init loop 1 counter
                  addi         t0, zero, -20 #init loop 1 limit
sub_3_0_1_t:      addi         a5, a2, 866
                  addi         a4, a4, -6 #update loop 1 counter
                  addi         t3, zero, -8 #init loop 0 counter
                  addi         s8, zero, -10 #init loop 0 limit
                  and          a7, tp, s2
sub_3_0_0_t:      addi         s1, s0, -858
                  addi         t3, t3, -8 #update loop 0 counter
                  bge          t3, s8, sub_3_0_0_t #branch for loop 0
                  beq          a4, t0, sub_3_0_1_t #branch for loop 1
                  andi         t6, s3, -365
                  blt          a2, t6, 13f
                  sll          t6, t5, a2
                  slt          s8, t1, ra
                  sub          t3, s0, t0
                  auipc        t1, 291420
                  srli         t1, s4, 27
                  sltu         s3, s6, s3
                  or           s6, s7, a3
                  beq          gp, gp, 10f
                  bgeu         ra, t6, 28f
10:               or           s6, s4, a7
                  or           t3, t1, t4
                  sltu         t6, s5, s1
13:               slt          t2, t6, t2
                  auipc        ra, 925113
                  slti         t5, tp, 562
                  auipc        s11, 947595
                  bne          s2, a4, 26f
                  sra          a5, s6, a3
                  bltu         a4, gp, 35f
                  xor          gp, t2, s7
                  xori         t0, t6, 133
                  slti         t2, zero, 1586
                  sltu         a1, s4, s2
                  slt          s1, a2, a6
                  slti         a4, s6, 1130
26:               lui          t3, 612603
                  or           s9, gp, gp
28:               nop
                  xor          a1, t1, t3
                  slti         tp, t3, -1824
                  add          a2, s8, s4
                  sub          t6, tp, t0
                  srli         t1, a1, 15
                  srli         a5, zero, 10
35:               lui          s11, 651198
                  srai         t1, s2, 20
                  slli         a6, s5, 14
                  slt          s2, ra, t2
                  sltu         t6, s9, a5
                  bgeu         gp, s0, 57f
                  sltu         tp, s8, s6
                  auipc        t4, 635954
                  bge          s8, s4, 50f
                  sltu         t5, s11, a1
                  xor          s3, t6, t1
                  addi         t0, s0, -1236
                  ori          s11, s7, -288
                  srl          t0, a5, a6
                  slli         s0, s1, 28
50:               srai         s7, a6, 10
                  addi         a2, s11, 1268
                  auipc        a5, 457294
                  andi         zero, t1, 1427
                  srli         s2, a5, 5
                  blt          t0, t0, 56f
56:               beq          t0, a6, 57f
57:               ori          tp, s8, 903
                  lw           ra, 4(s4)
                  nop
                  addi         s4, s4, 8
                  srli         s9, t4, 14
                  add          s2, a0, s0
113:              addi x9, x1, 1
113:              jalr x9, x9, 0
sub_2:            beq          a7, s9, sub_2_stack_p
                  srli         t4, t6, 11
sub_2_stack_p:    addi         s4, s4, -12
                  srli         s1, tp, 30
                  sw           ra, 4(s4)
                  slli         t4, s11, 30
                  ori          s7, s4, 796
                  bltu         t2, a5, sub_2_j5 #branch to jump instr
                  sll          t5, sp, s1
                  srl          s9, s11, a2
                  srai         a3, a3, 22
                  ori          a3, a7, -1754
                  sltiu        t1, a0, 919
                  sll          s8, a0, a0
sub_2_j5:         jal          ra, sub_3 #jump sub_2 -> sub_3
                  la           tp, sub_3
                  xor          zero, s7, tp
                  auipc        zero, 171453
                  addi         tp, tp, -128
                  sra          t4, s11, s11
                  beq          tp, t1, sub_2_j6 #branch to jump instr
                  xor          s1, t0, sp
                  nop
                  sra          a2, gp, s6
sub_2_j6:         jalr         ra, tp, 129 #jump sub_2 -> sub_3
                  addi         s9, zero, -8 #init loop 0 counter
                  add          zero, t5, zero
                  andi         a5, a7, -92
                  or           a1, s4, s0
                  sub          s11, s11, t5
                  addi         a6, a1, 97
                  addi         t5, zero, 3 #init loop 0 limit
                  and          a3, t3, s3
                  lui          t3, 318255
                  ori          a4, a6, 882
sub_2_1_0_t:      lui          s5, 688811
                  sll          s11, a7, t2
                  addi         s9, s9, 8 #update loop 0 counter
                  sltu         t3, t0, t1
                  blt          s9, t5, sub_2_1_0_t #branch for loop 0
                  addi         t2, a5, -1935
                  addi         a4, zero, 4 #init loop 0 counter
                  sra          ra, s2, t4
                  sll          zero, a4, s4
                  slti         tp, a4, 1550
                  lui          ra, 284263
                  xori         a7, s10, -1914
                  srl          a0, a3, sp
                  addi         t3, a5, -615
                  auipc        a1, 346099
                  slli         s2, s9, 21
                  add          s0, t5, t4
                  auipc        a1, 937271
                  lui          s5, 179688
                  lui          s2, 257354
                  addi         t0, zero, 4 #init loop 0 limit
                  slt          t2, t2, t4
sub_2_0_0_t:      slt          s9, sp, t4
                  add          s11, a1, a0
                  nop
                  ori          ra, s7, 412
                  srai         s8, s10, 22
                  addi         a4, a4, -3 #update loop 0 counter
                  nop
                  addi         s8, gp, -436
                  auipc        s9, 735927
                  bgeu         a4, t0, sub_2_0_0_t #branch for loop 0
                  slti         s8, ra, 900
                  slti         s2, t2, 60
                  nop
                  srli         s6, t4, 9
                  andi         a3, t0, -1559
                  andi         s8, t1, 1502
                  sltiu        s8, a4, 532
                  bge          a2, s2, 24f
                  sltu         tp, s4, ra
                  sltu         t1, a5, t6
                  bne          gp, s5, 25f
                  sll          s1, a1, s10
                  bgeu         t5, t2, 20f
                  add          a7, sp, t4
                  bge          s3, s5, 16f
                  beq          s0, s2, 33f
                  addi         t0, sp, 804
16:               bne          a3, a1, 32f
                  slt          s8, gp, t2
                  xor          a1, t3, a3
                  sra          a6, s2, t5
20:               or           t1, s8, s3
                  or           s11, a0, ra
                  srl          t2, t1, t1
                  slti         s3, zero, 24
24:               addi         s11, a1, 365
25:               lui          a3, 537526
                  sub          s0, s7, t1
                  lui          s7, 68562
                  beq          a2, a0, 39f
                  srli         t0, s9, 27
                  sltu         s3, s4, a3
                  bge          t4, s1, 46f
32:               beq          t3, t4, 49f
33:               auipc        t6, 1047441
                  bne          t0, s6, 44f
                  beq          s8, s9, 38f
                  bne          gp, a7, 55f
                  sra          s2, s3, s8
38:               srl          t1, s9, t3
39:               slt          s9, s4, t3
                  ori          s9, t1, 1833
                  bltu         s4, s6, 60f
                  blt          a4, a5, 56f
                  sll          t2, t5, ra
44:               sll          s5, t5, t1
                  bltu         tp, t4, 52f
46:               xor          s9, a5, t3
                  srl          s9, s10, sp
                  slt          a5, t2, a5
49:               nop
                  slti         a1, s8, 446
                  nop
52:               bgeu         a2, s10, 70f
                  bltu         s7, t2, 58f
                  andi         zero, ra, -1061
55:               slli         s11, sp, 13
56:               bltu         a1, s10, 65f
                  srl          s7, a7, t2
58:               add          a1, t5, s6
                  beq          t4, tp, 66f
60:               sub          t3, s11, t3
                  slt          a3, s1, t6
                  blt          sp, s0, 82f
                  xor          gp, s2, t2
                  bgeu         t3, s10, 73f
65:               sltu         t3, s0, t3
66:               sub          s9, a1, s4
                  sltu         t5, t3, s1
                  srl          a0, gp, a4
                  andi         t6, a5, 255
70:               slti         s1, sp, 1059
                  srli         t2, t6, 9
                  bge          a7, s1, 92f
73:               bne          t0, s5, 81f
                  srl          t3, s2, s7
                  bltu         t0, t3, 76f
76:               ori          s6, sp, -1644
                  add          t1, a2, a0
                  sub          a4, tp, a4
                  andi         t2, t3, 1333
                  sra          s2, s2, t1
81:               addi         t4, sp, -1995
82:               srl          a5, t1, t0
                  sra          t6, s4, s8
                  sra          a6, a2, t5
                  or           gp, tp, a6
                  sltu         t6, s6, s4
                  ori          a6, gp, 852
                  auipc        t2, 1014427
                  sub          t5, s8, s11
                  blt          s0, tp, 105f
                  srl          t0, s3, t1
92:               beq          a7, s2, 110f
                  add          s8, s7, a2
                  bgeu         a5, t3, 101f
                  bgeu         s11, s4, 100f
                  slli         t4, s1, 6
                  ori          a3, t6, -1596
                  bne          t0, a7, 116f
                  blt          gp, a1, 115f
100:              xor          s2, t2, s11
101:              xori         gp, s0, -1973
                  or           a4, s3, t0
                  and          s3, t3, zero
                  slt          s0, t3, a7
105:              slli         t1, s1, 30
                  andi         t5, s0, 1457
                  bne          s4, s2, 114f
                  add          s2, a6, s4
                  sll          a2, s1, a1
110:              slti         t0, s10, 1013
                  blt          s0, t5, 118f
                  slti         a6, tp, 812
                  srli         ra, a3, 26
114:              ori          t4, s0, 353
115:              auipc        t3, 345274
116:              add          s6, t4, s4
                  sltiu        s2, s2, -45
118:              slti         a2, tp, -393
                  bgeu         t3, gp, 127f
                  bne          t6, s2, 127f
                  sra          s7, a7, a4
                  sll          s5, a1, a6
                  bgeu         a5, s1, 127f
                  add          a6, s9, a2
                  nop
                  bgeu         s4, s0, 127f
127:              add          s0, a0, a3
                  add          t6, a2, a2
                  lw           ra, 4(s4)
                  auipc        a1, 1042497
                  add          s7, s8, a0
                  addi         gp, s10, 258
                  slti         t5, sp, -1864
                  srli         s3, s3, 5
                  sltiu        s7, a4, -822
                  addi         s4, s4, 12
                  srl          s8, t2, t2
206:              addi x9, x1, 0
206:              jalr x9, x9, 0
sub_5:            addi         s4, s4, -64
                  and          a4, t2, gp
                  andi         s7, gp, 2042
                  sw           ra, 4(s4)
                  lui          a0, 253473
                  addi         s0, zero, 3 #init loop 1 counter
                  andi         a1, a4, -1415
                  lui          t2, 275797
                  addi         t0, zero, -18 #init loop 1 limit
sub_5_6_1_t:      andi         t3, s7, 1229
                  ori          a1, s0, 641
                  auipc        s3, 334840
                  addi         s0, s0, -3 #update loop 1 counter
                  slti         t2, t1, 1316
                  addi         s6, zero, -7 #init loop 0 counter
                  andi         gp, s7, -381
                  addi         t1, zero, 11 #init loop 0 limit
sub_5_6_0_t:      auipc        a6, 884474
                  xor          a1, a3, a5
                  xori         a1, t4, 1861
                  slt          s3, a2, s0
                  addi         s6, s6, 6 #update loop 0 counter
                  bne          s6, t1, sub_5_6_0_t #branch for loop 0
                  nop
                  slti         a1, t1, 336
                  sra          a4, t5, a4
                  bge          s0, t0, sub_5_6_1_t #branch for loop 1
                  slli         a5, s2, 10
                  addi         s9, zero, -10 #init loop 1 counter
                  srl          a4, s3, a2
                  addi         s0, zero, 10 #init loop 1 limit
                  xor          a4, s4, t1
                  add          s3, t1, a2
sub_5_7_1_t:      add          s2, ra, a1
                  addi         s9, s9, 10 #update loop 1 counter
                  andi         s2, t4, -767
                  addi         a5, zero, 5 #init loop 0 counter
                  sra          t5, sp, a1
                  slti         t2, s10, -218
                  xori         s7, s8, -859
                  addi         t4, zero, 19 #init loop 0 limit
                  sltu         a0, s11, s11
sub_5_7_0_t:      xori         gp, t2, 1859
                  ori          a2, s9, 999
                  addi         a5, a5, 7 #update loop 0 counter
                  andi         s1, s9, 413
                  bne          a5, t4, sub_5_7_0_t #branch for loop 0
                  xor          gp, a2, a2
                  slti         a3, s2, -448
                  bne          s9, s0, sub_5_7_1_t #branch for loop 1
                  or           a6, s10, s2
                  addi         s9, zero, -9 #init loop 1 counter
                  or           s2, s9, s1
                  addi         t0, zero, -19 #init loop 1 limit
sub_5_3_1_t:      auipc        s7, 697049
                  addi         s9, s9, -10 #update loop 1 counter
                  sltu         a3, s8, a3
                  sub          s0, t2, t1
                  addi         tp, zero, -9 #init loop 0 counter
                  addi         a1, zero, -17 #init loop 0 limit
sub_5_3_0_t:      add          s11, t0, t0
                  sub          t5, t5, s8
                  sltu         ra, s5, s10
                  addi         tp, tp, -4 #update loop 0 counter
                  sra          t4, a5, a2
                  slti         a5, a1, 671
                  bne          tp, a1, sub_5_3_0_t #branch for loop 0
                  beq          s9, t0, sub_5_3_1_t #branch for loop 1
                  lui          s1, 929649
                  addi         s9, zero, -9 #init loop 0 counter
                  ori          ra, s2, -188
                  sll          a2, a1, s8
                  sll          zero, s7, s9
                  addi         tp, zero, 18 #init loop 0 limit
                  andi         s1, t4, -623
                  srl          s11, t6, a5
                  add          s11, gp, t5
                  xor          ra, s8, gp
                  xor          s1, a4, ra
sub_5_0_0_t:      lui          a0, 879504
                  sltiu        t6, tp, -1999
                  auipc        t3, 108101
                  andi         zero, t3, 569
                  addi         s9, s9, 4 #update loop 0 counter
                  srai         t3, a5, 8
                  blt          s9, tp, sub_5_0_0_t #branch for loop 0
                  slti         a6, t2, 1271
                  addi         t6, zero, 10 #init loop 1 counter
                  xor          s7, t2, s10
                  slt          s5, t6, t2
                  addi         t1, t6, 735
                  xori         zero, s8, -1238
                  addi         a3, zero, 2 #init loop 1 limit
                  add          s0, t4, ra
sub_5_8_1_t:      and          t2, s11, a0
                  srl          a1, t5, t5
                  addi         t6, t6, -3 #update loop 1 counter
                  nop
                  addi         s0, s2, 599
                  sltu         gp, s0, a0
                  addi         s6, zero, 7 #init loop 0 counter
                  auipc        s0, 808166
                  addi         s11, zero, 15 #init loop 0 limit
                  and          zero, zero, s8
sub_5_8_0_t:      or           s3, ra, a2
                  sub          zero, s1, zero
                  srai         a6, s11, 24
                  or           s3, t6, gp
                  sra          a6, s7, t0
                  slli         s7, gp, 2
                  addi         s6, s6, 8 #update loop 0 counter
                  sll          a5, a5, a2
                  bne          s6, s11, sub_5_8_0_t #branch for loop 0
                  sra          a7, s9, s0
                  bge          t6, a3, sub_5_8_1_t #branch for loop 1
                  sra          s3, s10, a4
                  addi         s1, zero, 10 #init loop 1 counter
                  ori          a3, ra, -1634
                  addi         t3, zero, 10 #init loop 1 limit
                  sltu         a3, a1, a0
                  sub          s5, a5, a0
                  addi         a7, sp, -1074
sub_5_2_1_t:      sltiu        a3, t2, 1637
                  ori          a3, t2, 1831
                  addi         ra, s4, -992
                  and          a7, s4, tp
                  addi         s1, s1, -9 #update loop 1 counter
                  srli         tp, s0, 23
                  addi         s8, zero, 6 #init loop 0 counter
                  lui          s11, 586531
                  addi         t2, zero, 8 #init loop 0 limit
sub_5_2_0_t:      addi         t4, t6, 1248
                  addi         s8, s8, 6 #update loop 0 counter
                  blt          s8, t2, sub_5_2_0_t #branch for loop 0
                  srli         s7, a2, 31
                  bgeu         s1, t3, sub_5_2_1_t #branch for loop 1
                  slt          s11, t2, s11
                  addi         s0, zero, -4 #init loop 1 counter
                  slli         s9, a5, 24
                  sub          s5, s1, s2
                  andi         t4, a7, 725
                  sll          a3, s10, gp
                  addi         a1, zero, 1 #init loop 1 limit
sub_5_10_1_t:     sub          ra, s7, s8
                  xori         s1, s2, 1859
                  slli         t4, t4, 18
                  addi         s0, s0, 5 #update loop 1 counter
                  addi         tp, zero, 9 #init loop 0 counter
                  slti         t4, s4, 2030
                  andi         t2, s4, 257
                  addi         t3, zero, 19 #init loop 0 limit
                  srli         s9, sp, 25
                  srli         a7, zero, 6
                  ori          zero, s6, -1570
sub_5_10_0_t:     slti         s7, a2, 1097
                  nop
                  sltiu        gp, t0, -1908
                  addi         tp, tp, 6 #update loop 0 counter
                  nop
                  ori          s2, s1, 10
                  blt          tp, t3, sub_5_10_0_t #branch for loop 0
                  and          s11, a2, s0
                  bne          s0, a1, sub_5_10_1_t #branch for loop 1
                  addi         a2, s8, 645
                  addi         gp, zero, 9 #init loop 1 counter
                  sltu         tp, a2, t6
                  and          t5, s6, sp
                  addi         t4, a5, 1384
                  addi         s6, zero, 18 #init loop 1 limit
                  xori         s8, t5, 1591
sub_5_4_1_t:      and          s7, s8, gp
                  sll          s9, a2, s1
                  xor          t6, s2, a2
                  xor          a7, a0, a3
                  addi         gp, gp, 3 #update loop 1 counter
                  xori         ra, s0, -321
                  lui          s11, 801364
                  sltiu        s0, s3, 1098
                  srli         s11, a0, 30
                  addi         a5, zero, -4 #init loop 0 counter
                  addi         t2, zero, -18 #init loop 0 limit
                  sltu         s0, t0, s8
                  slti         a4, a1, -1253
                  sub          a6, tp, tp
sub_5_4_0_t:      ori          t3, s6, 1433
                  addi         a5, a5, -2 #update loop 0 counter
                  xori         a2, tp, 1777
                  auipc        zero, 177091
                  add          t5, s10, s4
                  beq          a5, t2, sub_5_4_0_t #branch for loop 0
                  and          a4, t2, t3
                  srl          a4, t6, t6
                  and          s3, a4, s8
                  auipc        s1, 208252
                  bne          gp, s6, sub_5_4_1_t #branch for loop 1
                  slli         s3, tp, 12
                  addi         t3, zero, -5 #init loop 1 counter
                  addi         s2, zero, -5 #init loop 1 limit
sub_5_1_1_t:      xor          a3, a1, t2
                  addi         t3, t3, -4 #update loop 1 counter
                  addi         tp, zero, -9 #init loop 0 counter
                  addi         a6, zero, -19 #init loop 0 limit
sub_5_1_0_t:      ori          a3, s2, -86
                  addi         tp, tp, -5 #update loop 0 counter
                  beq          tp, a6, sub_5_1_0_t #branch for loop 0
                  bge          t3, s2, sub_5_1_1_t #branch for loop 1
                  add          s7, s1, s11
                  or           zero, a1, tp
                  beq          t3, a2, 11f
                  ori          t4, a6, 303
                  slti         gp, s11, 386
                  sll          s8, s0, a4
                  addi         s0, a2, 337
                  nop
                  or           s5, zero, zero
                  bne          ra, ra, 11f
                  srli         a4, a4, 18
                  lui          s8, 376861
11:               slti         s9, s3, -1589
                  bge          s11, t2, 27f
                  beq          t3, s8, 21f
                  lui          a2, 64529
                  slli         t6, t1, 15
                  srli         a0, a0, 11
                  beq          t0, s6, 34f
                  sub          s0, s4, s2
                  bgeu         t6, s7, 23f
                  or           a4, tp, a1
21:               or           s11, s4, t6
                  sltu         s11, sp, a7
23:               slti         s2, t4, -560
                  srli         s11, gp, 31
                  slti         t6, s7, 1208
                  beq          t1, a1, 44f
27:               beq          t4, a6, 37f
                  bgeu         sp, a0, 30f
                  ori          a1, t1, -1607
30:               sltiu        t4, s5, -732
                  auipc        t2, 717757
                  ori          t2, a1, 1780
                  sra          a0, s4, a0
34:               auipc        a5, 97946
                  add          a0, t2, s3
                  xori         a2, s5, 712
37:               srli         t2, s0, 7
                  xor          a2, a5, s8
                  srl          t1, s8, s8
                  srl          a2, s6, s4
                  auipc        t1, 190992
                  sltiu        t1, s3, -43
                  add          t0, s8, s9
44:               xori         s6, zero, 259
                  and          s9, a7, a5
                  ori          tp, t2, 632
                  or           s5, t3, a3
                  bge          t4, s10, 67f
                  andi         s9, a0, -1244
                  srai         s6, s2, 12
                  auipc        s11, 599468
                  bge          zero, a6, 69f
                  xori         t2, s0, 1594
                  addi         t5, t2, 488
                  sub          a4, t4, a7
                  bltu         sp, a3, 68f
                  blt          gp, a3, 69f
                  bgeu         a0, s1, 59f
59:               sra          t6, t1, ra
                  xori         t3, t0, -1471
                  sub          a1, a3, a6
                  bgeu         a2, s0, 71f
                  nop
                  slti         t6, a7, 1391
                  srl          a0, ra, a6
                  srai         a6, t3, 21
67:               slti         t2, s6, -456
68:               blt          gp, a2, 80f
69:               beq          a5, s7, 75f
                  auipc        a5, 803048
71:               bltu         s3, s2, 72f
72:               lui          t3, 956696
                  srai         gp, ra, 7
                  srai         a0, s11, 10
75:               sll          a7, ra, ra
                  srai         t6, t3, 16
                  add          a1, t1, a5
                  bgeu         s2, s4, 80f
                  bgeu         t4, t0, 94f
80:               bltu         s7, s10, 82f
                  ori          a6, s2, -1484
82:               lui          a4, 519722
                  and          a6, a6, s0
                  or           s3, s2, t3
                  and          tp, zero, ra
                  sltu         s3, s4, t2
                  andi         a2, s8, -1506
                  auipc        t2, 795638
                  lui          s2, 47993
                  beq          t2, a3, 109f
                  auipc        s9, 212716
                  andi         s2, t1, -835
                  slli         s0, t2, 0
94:               and          zero, s5, s2
                  sra          a3, s3, t4
                  slli         s7, a3, 9
                  sll          a6, t0, sp
                  bgeu         t4, tp, 107f
                  xor          s11, s9, t5
                  srli         s0, s7, 17
                  bne          gp, zero, 107f
                  srli         t2, s10, 22
                  slli         a6, t1, 18
                  blt          s3, tp, 119f
                  sltiu        a4, s10, 382
                  slti         s5, s1, 1982
107:              and          s7, a2, a3
                  bgeu         s5, a7, 122f
109:              slt          s0, t4, s5
                  auipc        ra, 766892
                  slli         t5, a3, 17
                  sll          s3, s10, ra
                  addi         gp, s7, -1047
                  andi         a3, a1, -512
                  xor          s5, s1, s7
                  xori         a2, a0, 423
                  bge          s5, a5, 137f
                  nop
119:              slt          s2, t2, a6
                  and          a3, gp, zero
                  sll          zero, a1, a1
122:              addi         s8, s8, 891
                  sra          t3, s10, s1
                  add          zero, a4, s11
                  nop
                  slli         a1, t4, 30
                  slli         a7, s3, 4
                  lui          gp, 630657
                  bne          s0, t3, 139f
                  slt          t0, gp, a2
                  blt          zero, gp, 142f
                  sra          a1, a3, s7
                  addi         t2, s9, 929
                  add          tp, sp, t6
                  slli         tp, gp, 12
                  ori          s9, a1, 110
137:              bne          t0, a3, 146f
                  addi         s0, s0, 596
139:              xor          t5, a6, a6
                  bltu         s5, s4, 146f
                  bgeu         s7, t1, 143f
142:              srl          gp, a2, t1
143:              sll          s6, a0, s8
                  bge          s11, s6, 154f
                  nop
146:              lui          ra, 116375
                  or           s6, t6, t2
                  sltu         zero, sp, s2
                  bgeu         a1, s8, 169f
                  lui          s11, 670447
                  auipc        a2, 280443
                  nop
                  or           s3, s9, s9
154:              bge          ra, a5, 163f
                  slt          s8, s6, t4
                  bltu         s7, a2, 168f
                  addi         a7, s4, -1223
                  srli         t6, t2, 3
                  lui          ra, 472406
                  auipc        s5, 589396
                  bne          a3, a4, 176f
                  srl          s9, s4, s10
163:              ori          a0, s0, 50
                  ori          t0, s9, -2024
                  slti         t5, a2, -24
                  bltu         s10, a3, 174f
                  andi         zero, s5, -1785
168:              srl          ra, s10, a0
169:              and          s0, s3, a3
                  add          tp, s5, a0
                  srl          gp, sp, a2
                  or           a2, s6, a6
                  beq          t3, s4, 191f
174:              addi         a1, gp, -47
                  lui          a2, 1015612
176:              or           ra, t2, t1
                  xori         s5, s7, -425
                  sra          t3, a4, ra
                  sll          t1, t4, s1
                  sltu         a0, zero, s11
                  bltu         t2, s10, 191f
                  lui          s8, 744597
                  slli         a5, s2, 7
                  srai         s0, s8, 4
                  bge          s9, s9, 186f
186:              bge          a5, s0, 188f
                  bltu         t6, s0, 188f
188:              bltu         s3, a4, 200f
                  srli         a0, s10, 28
                  sll          s7, t6, t6
191:              xori         a1, gp, 939
                  addi         s0, a1, 1399
                  sltiu        s1, t0, -880
                  nop
                  sltu         a4, s6, gp
                  sltiu        a6, s6, -1968
                  slli         s8, t1, 31
                  bltu         s7, tp, 207f
                  srli         a3, s6, 24
200:              slli         s5, tp, 22
                  slli         s9, s0, 11
                  slt          s11, s9, s8
                  sltiu        gp, s0, -1859
                  ori          s8, s10, 705
                  sltiu        t5, s8, -1317
                  add          ra, s9, s11
207:              sub          t5, t4, a2
                  srai         a6, t3, 14
                  slti         s8, ra, -1456
                  or           s0, a5, a6
                  srai         ra, a5, 27
                  or           s11, a2, s7
                  xor          t6, a5, zero
                  and          a2, t2, a2
                  srli         t5, s6, 17
                  slti         a2, t2, 616
                  blt          t0, s11, 223f
                  bltu         gp, s10, 233f
                  sltu         t6, t4, t0
                  andi         s0, s8, -1684
                  bne          s5, s11, 240f
                  ori          s0, zero, 795
223:              srl          t6, s9, t6
                  sltu         t6, s4, a6
                  and          a2, a0, s3
                  sltu         t2, t6, a0
                  sll          s3, s7, t2
                  bltu         t4, a7, 242f
                  sll          a6, tp, t5
                  bgeu         s11, s3, 234f
                  beq          s5, s0, 246f
                  sub          t0, s6, sp
233:              bne          zero, gp, 243f
234:              lui          s5, 921308
                  blt          s10, a2, 246f
                  bgeu         s1, s6, 253f
                  add          s0, a1, zero
                  bltu         t1, s10, 247f
                  sltiu        s7, a6, -1166
240:              xor          t0, a2, a0
                  bne          sp, a3, 243f
242:              bge          a6, a0, 254f
243:              sll          t0, a5, ra
                  xori         a2, s7, -575
                  sll          t1, s7, s10
246:              bgeu         t5, a7, 265f
247:              srli         a7, s0, 11
                  bgeu         ra, s3, 265f
                  and          tp, t2, t1
                  sll          s8, s7, s7
                  or           s1, a0, s9
                  sub          a5, a3, sp
253:              slli         zero, t3, 14
254:              sltiu        t1, sp, -1819
                  sltiu        t5, s9, -1210
                  blt          s1, a5, 259f
                  xori         a3, a0, 1660
                  ori          t4, t4, -1440
259:              lui          gp, 19819
                  slli         a7, gp, 29
                  addi         gp, s0, -1414
                  or           t6, s9, t4
                  slti         s5, a2, -814
                  blt          ra, s10, 281f
265:              slti         s1, s2, -2031
                  lui          a7, 868526
                  slli         a6, s11, 28
                  bltu         s2, s9, 278f
                  or           t0, a1, s5
                  nop
                  blt          a7, s10, 273f
                  srai         s6, zero, 7
273:              xor          a4, s7, s11
                  beq          a6, s7, 276f
                  srai         zero, tp, 5
276:              slti         ra, s4, 262
                  auipc        a4, 261064
278:              beq          a4, tp, 279f
279:              srl          a1, t5, t2
                  srai         tp, s6, 29
281:              slli         s5, a4, 0
                  sra          s0, s7, t1
                  beq          s4, t3, 302f
                  sra          t1, s11, gp
                  or           a1, a4, s1
                  bltu         a1, a5, 305f
                  slli         ra, a7, 4
                  sub          s0, a4, s8
                  add          a2, a3, s2
                  or           ra, a6, s1
                  slti         s5, s9, 208
                  bltu         zero, sp, 307f
                  sll          s11, a5, t4
                  xor          t0, s4, t3
                  srli         s11, s5, 15
                  xor          a2, a5, s10
                  auipc        zero, 996895
                  blt          a1, s10, 307f
                  xori         s2, t2, 921
                  srli         a3, t0, 5
                  srai         a6, a7, 18
302:              addi         s2, t1, 1840
                  addi         gp, s2, 1018
                  and          a4, s4, sp
305:              and          s0, a0, a4
                  auipc        t0, 897882
307:              and          t0, t3, s0
                  sltu         s3, a1, s8
                  bne          t3, t3, 319f
                  sltu         t3, a3, t4
                  bgeu         a4, t3, 312f
312:              bne          t6, s4, 324f
                  bltu         t4, s11, 327f
                  bge          a3, s11, 325f
                  slt          a6, s7, tp
                  nop
                  slti         a2, s5, 248
                  sltu         t2, t1, a4
319:              sltiu        s0, t4, -1217
                  add          gp, s4, t4
                  sltiu        zero, a7, 1517
                  sub          a0, t4, a3
                  ori          a0, a5, 1107
324:              bgeu         s1, a5, 327f
325:              blt          a7, s11, 331f
                  slli         s11, t4, 26
327:              sltiu        a1, s6, 1338
                  slli         a3, a6, 1
                  srl          s9, s10, s1
                  add          s8, t2, s8
331:              blt          s2, t3, 341f
                  sll          a3, a0, s10
                  ori          t2, a0, 1440
                  nop
                  lui          t2, 64942
                  sub          s9, s9, s6
                  sltiu        t6, t4, 151
                  sub          s8, s6, t6
                  bgeu         sp, s7, 347f
                  sltiu        s3, tp, -1183
341:              xori         s1, s7, 919
                  or           a1, s5, s4
                  sltu         s5, t1, s8
                  xor          s6, t6, t5
                  sll          s6, s0, s5
                  sll          s1, s9, t6
347:              and          t0, t3, s11
                  xori         s7, s10, 1373
                  sra          s7, s6, s5
                  xor          s8, sp, a0
                  slt          gp, t1, a2
                  bne          a4, s4, 354f
                  blt          t5, s6, 365f
354:              srai         gp, s1, 11
                  bltu         t4, s11, 370f
                  nop
                  addi         t2, s6, -12
                  slti         s0, a0, -268
                  slti         ra, s6, -861
                  sra          t3, s9, a0
                  slli         t6, t4, 19
                  blt          t2, a1, 379f
                  sub          s3, s10, s0
                  sub          a6, s0, s9
365:              sub          a5, a7, tp
                  sltu         t6, s11, t2
                  add          s11, t4, s5
                  ori          s3, a5, -1915
                  srl          a0, s4, t4
370:              bge          t4, sp, 390f
                  and          s2, a5, a6
                  bne          t1, a2, 381f
                  sll          s1, a2, zero
                  andi         a1, t4, 556
                  beq          s11, t5, 393f
                  slli         a4, gp, 18
                  bltu         t0, s1, 383f
                  slti         a6, s7, -734
379:              srai         t2, zero, 2
                  ori          s9, t6, -1967
381:              bne          s3, ra, 393f
                  addi         t0, s7, 905
383:              addi         s8, gp, 1896
                  srli         a6, tp, 21
                  sll          t2, s6, a3
                  lui          s5, 23013
                  sra          t3, s1, a0
                  bge          a5, s8, 403f
                  slt          a2, ra, a0
390:              and          t5, a7, s1
                  sltiu        s8, a3, 1551
                  srai         s7, a0, 15
393:              and          t1, a2, a6
                  bltu         t5, t0, 398f
                  slti         t2, sp, -1580
                  srl          a6, a3, t0
                  ori          a3, tp, 231
398:              ori          s7, a3, -1689
                  addi         a5, a6, -1464
                  srai         a3, a1, 17
                  add          gp, a6, t5
                  auipc        s0, 500470
403:              addi         t5, s1, -2025
                  sltu         t5, s1, s4
                  xori         t3, s4, -753
                  bne          s5, s4, 415f
                  or           a2, sp, t3
                  srl          s8, a7, tp
                  addi         a5, a4, 1929
                  and          tp, a5, a3
                  ori          t5, s9, 186
                  or           a4, a4, a5
                  bgeu         gp, t2, 430f
                  bgeu         tp, s9, 424f
415:              bne          gp, s9, 427f
                  nop
                  auipc        s0, 981529
                  bne          s1, a2, 433f
                  bgeu         s2, s11, 421f
                  xori         ra, s5, 1085
421:              beq          t6, tp, 429f
                  xori         a2, s8, -115
                  sltu         t1, gp, s10
424:              bge          t1, ra, 443f
                  beq          s8, s10, 440f
                  blt          t3, zero, 445f
427:              xori         a1, gp, 842
                  auipc        t5, 752073
429:              bne          s1, zero, 438f
430:              lui          s9, 821144
                  addi         t2, zero, -10 #init loop 1 counter
                  and          a5, t3, s9
                  addi         a0, zero, 5 #init loop 1 limit
                  add          s1, ra, a6
sub_5_5_1_t:      sltiu        t3, s3, -1683
                  addi         t5, a4, -391
                  addi         t2, t2, 5 #update loop 1 counter
                  addi         t6, zero, -8 #init loop 0 counter
                  addi         t1, zero, -12 #init loop 0 limit
sub_5_5_0_t:      add          a3, t1, s9
                  ori          ra, s1, -1589
                  addi         t6, t6, -4 #update loop 0 counter
                  sub          a5, ra, a5
                  srli         a3, s0, 9
                  beq          t6, t1, sub_5_5_0_t #branch for loop 0
                  ori          ra, s2, -382
                  beq          t2, a0, sub_5_5_1_t #branch for loop 1
                  srl          a7, a5, t0
                  slt          a2, gp, a3
                  bgeu         a4, s8, 442f
433:              srai         t3, s3, 12
                  add          a3, t6, s11
                  bge          a4, t0, 449f
                  blt          zero, tp, 440f
                  add          s1, a3, s2
438:              xori         t5, zero, -765
                  bgeu         a1, gp, 445f
440:              beq          s11, s7, 446f
                  slti         t1, a1, -1621
442:              ori          zero, t5, 836
443:              bne          gp, s1, 452f
                  ori          a5, t0, 568
445:              srli         s5, t0, 14
446:              sltiu        t5, zero, 1736
                  andi         s2, s2, 643
                  auipc        s9, 255727
449:              nop
                  bne          s9, tp, 462f
                  sra          s7, s6, s3
452:              slli         t2, s3, 12
                  sltiu        t1, sp, 170
                  and          t2, gp, a6
                  bgeu         s0, a2, 475f
                  andi         a7, tp, 1596
                  xori         s8, s1, -881
                  ori          s5, a1, 1909
                  srli         s3, a0, 17
                  bne          s5, a3, 477f
                  sltiu        a1, t2, -1967
462:              srli         t2, s5, 26
                  sll          t0, s0, gp
                  and          s5, a6, t6
                  srli         s6, a2, 27
                  bne          t2, s6, 469f
                  add          s3, s9, t3
                  xor          tp, s1, a6
469:              add          ra, s10, s6
                  bltu         s9, s8, 479f
                  addi         s0, zero, 8 #init loop 1 counter
                  xor          ra, a1, s10
                  addi         s6, zero, -6 #init loop 1 limit
sub_5_9_1_t:      slti         s5, t1, -665
                  addi         s0, s0, -7 #update loop 1 counter
                  addi         t3, zero, -6 #init loop 0 counter
                  addi         a1, zero, 6 #init loop 0 limit
                  add          t4, a0, a5
sub_5_9_0_t:      slti         s5, t2, -1686
                  addi         t3, t3, 6 #update loop 0 counter
                  auipc        a3, 718546
                  bne          t3, a1, sub_5_9_0_t #branch for loop 0
                  sra          s2, t5, s5
                  beq          s0, s6, sub_5_9_1_t #branch for loop 1
                  sltu         zero, t6, a0
                  slti         a7, gp, -856
                  add          t4, a3, t0
                  ori          a6, a3, -1014
                  srl          s9, a6, s6
475:              and          t1, zero, s5
                  sltu         zero, s1, a5
477:              and          s0, s6, a0
                  srai         s11, a6, 27
479:              bge          s9, t0, 480f
480:              slt          tp, a1, s11
                  xor          t4, t4, a1
                  andi         a5, t2, -824
                  blt          t5, a4, 501f
                  and          a1, s5, a6
                  srai         zero, sp, 9
                  sltiu        a6, a1, -1527
                  slt          s6, t0, a5
                  sll          a4, s6, s3
                  slt          zero, s2, zero
                  ori          t2, s10, -1142
                  addi         t6, t3, -372
                  sub          s7, a4, ra
                  and          a5, t5, s6
                  sll          s11, t1, a0
                  slti         tp, s0, -271
                  ori          a6, gp, -313
                  sltiu        a4, a6, -1683
                  srai         t6, t0, 11
                  slt          s0, t0, a3
                  bge          a0, a5, 502f
501:              srli         ra, s11, 9
502:              andi         t4, a7, 1238
                  andi         tp, s11, 758
                  xori         t2, gp, -14
                  bge          s5, s9, 517f
                  sra          a2, ra, a3
                  auipc        s3, 378022
                  srl          s5, s1, s0
                  slli         zero, s9, 14
                  sra          a2, a3, zero
                  srli         t3, t2, 3
                  sltiu        t5, s1, 131
                  add          s1, s0, s7
                  lui          s0, 256238
                  or           ra, s6, s4
                  slli         t3, s0, 15
517:              addi         t3, a2, -1315
                  add          t5, s9, s4
                  bltu         t4, s4, 521f
                  addi         s9, t5, -203
521:              slli         a1, a6, 25
                  bltu         a3, s0, 537f
                  addi         s9, t2, 947
                  andi         t0, gp, -1761
                  slli         s2, t3, 13
                  sltiu        t2, a3, -772
                  nop
                  add          a3, a7, t2
                  slti         a7, a2, -1474
                  bgeu         s4, s10, 531f
531:              xori         t5, a4, 1416
                  sll          t4, s6, t1
                  slti         a1, s1, -877
                  bgeu         s7, s3, 544f
                  xor          s2, t4, sp
                  sltiu        t0, s6, 545
537:              and          gp, a6, t0
                  add          gp, a6, t2
                  andi         tp, s3, 1680
                  lui          s0, 626085
                  ori          s5, s7, -1766
                  xori         s3, a5, 1337
                  lui          zero, 569859
544:              sltiu        s8, t0, 272
                  sub          s7, zero, a3
                  nop
                  srl          t6, t0, sp
                  sra          t0, a0, s4
                  sra          t0, s11, s2
                  srl          a5, t5, a1
                  sub          s11, s1, t4
                  slli         zero, ra, 31
                  srli         s1, s6, 12
                  slli         a7, t1, 30
                  xor          zero, a7, a6
                  ori          a3, s7, -343
                  xor          t6, a2, a5
                  sub          a7, a3, t6
                  sll          a1, s5, s0
                  bgeu         a4, sp, 563f
                  srli         a4, t0, 23
                  xor          a4, s3, ra
563:              sltiu        a6, s6, 874
                  lw           ra, 4(s4)
                  addi         s4, s4, 64
                  sub          t1, s9, s6
                  sub          gp, t1, s5
                  sra          s8, zero, s2
809:              addi x10, x1, 1
809:              jalr x10, x10, 0
sub_4:            sltu         t5, t3, a4
                  srai         a1, t5, 0
                  bne          s0, a2, sub_4_stack_p
                  slt          a5, s5, a2
sub_4_stack_p:    addi         s4, s4, -44
                  nop
                  sw           ra, 4(s4)
                  auipc        a6, 511214
                  addi         s3, zero, -7 #init loop 1 counter
                  srli         s11, a3, 19
                  andi         a3, s3, 1163
                  ori          a6, sp, -999
                  sra          a7, s11, s9
                  addi         t5, zero, 4 #init loop 1 limit
                  xori         a3, a0, 698
                  sra          t3, s3, a3
                  nop
sub_4_0_1_t:      ori          t6, a5, -637
                  sra          t6, a4, tp
                  addi         s3, s3, 1 #update loop 1 counter
                  slt          a6, s10, s11
                  addi         s0, zero, -7 #init loop 0 counter
                  sra          tp, sp, a5
                  addi         gp, zero, -8 #init loop 0 limit
                  lui          s6, 1035166
                  or           t1, t1, s4
                  srai         t4, a4, 23
sub_4_0_0_t:      sltu         a4, zero, gp
                  slt          t1, a0, t5
                  srai         t3, t1, 1
                  sltu         a5, s2, s9
                  srli         a2, s7, 13
                  slli         a6, a2, 29
                  lui          s1, 578660
                  addi         s0, s0, -3 #update loop 0 counter
                  bge          s0, gp, sub_4_0_0_t #branch for loop 0
                  bne          s3, t5, sub_4_0_1_t #branch for loop 1
                  xori         s7, a4, 1335
                  addi         a3, zero, -8 #init loop 1 counter
                  sltu         t5, a4, s7
                  xori         t3, t5, 704
                  addi         t4, zero, 15 #init loop 1 limit
                  lui          s1, 916508
sub_4_3_1_t:      lui          a6, 524669
                  and          a7, a6, a3
                  nop
                  addi         a3, a3, 2 #update loop 1 counter
                  addi         t3, t0, 1954
                  andi         a7, t4, -549
                  slli         t3, a5, 3
                  addi         s3, zero, 10 #init loop 0 counter
                  sltiu        ra, t5, -1934
                  sltiu        a0, a2, 226
                  addi         s0, zero, -19 #init loop 0 limit
                  slti         gp, gp, -70
sub_4_3_0_t:      slti         s9, s11, 1219
                  addi         s3, s3, -4 #update loop 0 counter
                  sub          t3, zero, a4
                  bge          s3, s0, sub_4_3_0_t #branch for loop 0
                  andi         gp, t3, -346
                  addi         a2, s4, 740
                  sltu         s2, s0, ra
                  slt          a1, a1, s7
                  srli         gp, sp, 5
                  blt          a3, t4, sub_4_3_1_t #branch for loop 1
                  xori         t1, t2, -1959
                  addi         t6, zero, -3 #init loop 1 counter
                  or           ra, a7, a0
                  auipc        ra, 133398
                  addi         s8, zero, -7 #init loop 1 limit
                  srli         s11, ra, 17
sub_4_6_1_t:      slt          a5, s10, a2
                  addi         t6, t6, -2 #update loop 1 counter
                  sll          t3, t6, s6
                  addi         t1, zero, -2 #init loop 0 counter
                  addi         s5, zero, -1 #init loop 0 limit
sub_4_6_0_t:      or           t0, a3, s9
                  addi         t1, t1, 1 #update loop 0 counter
                  beq          t1, s5, sub_4_6_0_t #branch for loop 0
                  sltu         t0, t3, t4
                  beq          t6, s8, sub_4_6_1_t #branch for loop 1
                  xor          zero, t6, a3
                  addi         t1, zero, 10 #init loop 1 counter
                  nop
                  addi         s7, zero, 8 #init loop 1 limit
                  slti         s5, t3, -128
                  srli         a2, s10, 24
                  sltu         a6, a2, s1
sub_4_5_1_t:      slti         t0, s4, 930
                  srai         t0, ra, 16
                  srai         a7, s9, 5
                  addi         t1, t1, -1 #update loop 1 counter
                  sub          a0, t3, a2
                  addi         t2, zero, 8 #init loop 0 counter
                  or           t5, t1, s2
                  slti         zero, ra, -1672
                  srl          s3, t3, zero
                  xor          s8, t1, s10
                  addi         a3, zero, -1 #init loop 0 limit
                  lui          a1, 934763
sub_4_5_0_t:      andi         t3, tp, -1709
                  add          s5, s8, a3
                  or           gp, gp, gp
                  andi         t6, gp, -1308
                  or           t5, s2, ra
                  addi         t2, t2, -7 #update loop 0 counter
                  sll          t6, s7, t4
                  sll          t3, t5, s9
                  xori         a1, s11, -1103
                  bge          t2, a3, sub_4_5_0_t #branch for loop 0
                  sltiu        a4, ra, 1962
                  xor          s9, a7, a2
                  xor          t5, sp, s6
                  slli         t6, t6, 2
                  bgeu         t1, s7, sub_4_5_1_t #branch for loop 1
                  srli         s9, a0, 23
                  sltu         a7, t5, t3
                  sltiu        a2, zero, 1977
                  sll          s0, ra, s2
                  bltu         a2, t0, 7f
                  and          s6, s4, a1
                  bgeu         a1, s5, 9f
                  srli         s7, a7, 30
7:                blt          s7, s10, 20f
                  bne          s7, s6, 22f
9:                xor          t2, s7, sp
                  srli         tp, s9, 14
                  slli         s9, s0, 24
                  slli         s8, s3, 31
                  slti         a3, a5, -418
                  lui          s6, 898909
                  and          s6, t0, t2
                  auipc        a5, 993946
                  beq          gp, a4, 26f
                  srl          a5, s8, a7
                  xor          t1, s6, sp
20:               sra          t5, a6, s8
                  bne          t4, s2, 24f
22:               srl          s9, t1, s0
                  sra          zero, a6, s9
24:               srai         a5, a7, 4
                  sub          s7, t0, s0
26:               blt          s1, s8, 34f
                  bltu         s11, a1, 38f
                  or           t1, a0, zero
                  srai         t2, s4, 11
                  xor          a3, t3, gp
                  add          s6, s2, s10
                  add          t2, ra, a6
                  lui          t3, 461420
34:               srai         s3, t1, 5
                  lui          a5, 708424
                  bne          a4, s9, 46f
                  srl          a5, s0, tp
38:               xori         zero, a2, -1935
                  sub          a0, zero, s9
                  slli         s5, a5, 17
                  addi         a7, tp, -1906
                  bgeu         s0, a1, 62f
                  andi         s11, s0, 1805
                  xor          t1, t5, tp
                  auipc        gp, 416723
46:               bgeu         a7, s6, 57f
                  xor          s0, zero, a4
                  or           t1, a0, s3
                  bge          t1, s7, 58f
                  slli         ra, s5, 7
                  blt          s5, s6, 71f
                  sll          t2, s10, s5
                  sltu         s0, tp, a3
                  sltu         s5, a2, s5
                  slli         a6, t5, 1
                  srli         t6, s0, 16
57:               slti         s9, ra, 1352
58:               srai         a4, s4, 27
                  add          a4, s8, s0
                  bltu         a6, a7, 67f
                  srai         s11, a1, 9
                  addi         s0, zero, 0 #init loop 1 counter
                  and          t1, s7, a4
                  addi         s6, zero, -18 #init loop 1 limit
                  ori          s3, s3, -732
sub_4_2_1_t:      sltiu        t5, s4, 559
                  addi         s0, s0, -6 #update loop 1 counter
                  srl          s2, t2, s11
                  addi         a0, zero, -6 #init loop 0 counter
                  sub          s5, t0, a6
                  addi         gp, zero, -8 #init loop 0 limit
sub_4_2_0_t:      slt          a2, s5, t5
                  sltiu        a2, ra, 1517
                  addi         a0, a0, -2 #update loop 0 counter
                  andi         s3, t2, -1655
                  bge          a0, gp, sub_4_2_0_t #branch for loop 0
                  bne          s0, s6, sub_4_2_1_t #branch for loop 1
                  sltiu        t0, zero, 1256
62:               bltu         zero, ra, 73f
                  sub          gp, sp, a2
                  xori         a6, s5, 1469
                  xor          a4, a5, tp
                  sra          s3, tp, ra
67:               xor          s11, s5, t3
                  sra          s5, s5, t2
                  and          gp, t4, s3
                  sra          s8, s6, a6
71:               or           a1, a7, t1
                  sll          a2, a1, ra
73:               xori         s0, s4, -873
                  auipc        a7, 120331
                  beq          t3, t1, 78f
                  and          a7, s5, s2
                  xor          s9, s11, s7
78:               sltu         s6, a6, ra
                  slt          a0, s6, a0
                  slli         s11, t4, 24
                  andi         a7, ra, 1253
                  slli         s2, s4, 27
                  lui          s7, 824866
                  bltu         s0, s2, 100f
                  ori          t5, s6, 1813
                  andi         t4, a5, 1467
                  srai         a1, gp, 11
                  sub          gp, s3, a7
                  sltiu        gp, a4, 1441
                  ori          ra, tp, 1067
                  and          a1, s9, gp
                  srli         s3, t3, 1
                  add          t2, a1, t0
                  bge          a1, gp, 95f
95:               bge          a1, t4, 108f
                  lui          t6, 132900
                  bgeu         t4, a0, 101f
                  bltu         s3, t0, 116f
                  sltiu        t4, t1, -611
100:              srli         s6, t2, 3
101:              xor          a0, a7, a5
                  slli         t0, s6, 11
                  srai         a1, t3, 15
                  sll          a0, s2, s4
                  slt          a6, s11, a4
                  add          s5, ra, t2
                  sll          gp, a2, ra
108:              srli         t2, a0, 12
                  xor          t4, sp, a5
                  slti         t4, a4, -1619
                  lui          tp, 919964
                  bgeu         s8, a4, 122f
                  andi         s3, s0, -774
                  sub          tp, t0, s9
                  bge          s11, t4, 129f
116:              sll          zero, s5, s6
                  slti         a2, s8, 544
                  bgeu         a5, s8, 129f
                  or           a0, a1, tp
                  blt          t0, t1, 136f
                  add          a5, s4, s10
122:              slli         s11, s4, 3
                  sltu         a2, a1, a7
                  sll          t0, t4, a7
                  sltiu        zero, a0, -1091
                  blt          s4, a4, 143f
                  or           t4, s7, t2
                  sltu         t0, s11, s3
129:              andi         a2, s6, -1450
                  slli         s3, s1, 9
                  xori         t2, s2, -1395
                  sll          a5, t0, s10
                  slli         s7, a6, 11
                  sra          s6, t6, s8
                  srli         s11, s10, 18
136:              lui          a7, 166094
                  sltiu        s3, t5, 509
                  and          t2, a2, gp
                  slt          gp, a6, ra
                  sltiu        a1, ra, -1608
                  sra          tp, a2, a6
                  blt          s10, s10, 161f
143:              addi         s7, s9, 1328
                  ori          a3, gp, -322
                  auipc        a4, 136734
                  sltiu        t4, gp, 925
                  bge          t0, s4, 159f
                  sub          a1, s9, zero
                  auipc        t4, 375735
                  and          t0, a2, s0
                  nop
                  and          s1, s7, t4
                  slli         a7, sp, 17
                  srl          s6, t0, a5
                  bne          t4, t6, 164f
                  addi         s9, a2, -464
                  blt          t6, s10, 171f
                  or           s2, a1, a0
159:              beq          a2, t1, 178f
                  lui          s9, 458186
161:              andi         s5, a2, -1533
                  sra          s0, t6, s1
                  slli         s0, a6, 14
164:              srli         t6, t2, 19
                  blt          a7, gp, 168f
                  xor          s1, t5, t3
                  bltu         a1, t3, 174f
168:              lui          a0, 292090
                  bgeu         t0, a0, 180f
                  slli         a7, s9, 27
171:              sltu         a7, a2, a6
                  slti         a4, a1, -742
                  andi         t1, tp, 1459
174:              slt          a5, a2, sp
                  nop
                  andi         a1, t1, 403
                  srl          a6, t3, s2
178:              sltu         t5, s5, a4
                  addi         gp, zero, 10 #init loop 0 counter
                  addi         s8, ra, -2025
                  or           s9, s4, s2
                  andi         s8, a7, -1890
                  xor          t0, zero, a6
                  sra          a5, s4, tp
                  slt          t4, a1, t1
                  and          s1, t4, s8
                  sltiu        zero, zero, 40
                  addi         t1, zero, 7 #init loop 0 limit
                  nop
                  slt          t2, t4, s4
sub_4_1_0_t:      auipc        t0, 701591
                  sll          zero, s9, t0
                  sub          a3, a1, s5
                  addi         gp, gp, -6 #update loop 0 counter
                  add          s11, gp, s7
                  auipc        s1, 382966
                  auipc        t5, 615666
                  add          a7, s6, gp
                  srai         s5, tp, 20
                  bgeu         gp, t1, sub_4_1_0_t #branch for loop 0
                  sll          t3, sp, a2
                  srl          s3, t5, t5
180:              srl          s1, t1, t5
                  xor          s11, s8, s4
                  slt          s6, a3, gp
                  lui          t1, 154039
                  bne          t4, a7, 188f
                  bne          a5, s6, 205f
                  srl          a4, a4, a4
                  bne          s3, ra, 195f
188:              sub          ra, s9, s6
                  addi         t3, s5, 459
                  addi         s6, s5, -1059
                  nop
                  bge          t6, s7, 202f
                  and          s5, t0, s2
                  lui          tp, 467577
195:              xori         s3, a5, -1535
                  srl          ra, t5, zero
                  ori          a1, s6, 121
                  sltiu        s7, a0, -364
                  and          s1, sp, t3
                  slt          s2, s7, t5
                  sltiu        s8, t6, 594
202:              nop
                  and          gp, s6, t2
                  sltiu        zero, s9, -299
205:              auipc        s5, 1032219
                  slti         a0, tp, 1534
                  beq          a5, a2, 211f
                  bne          s0, gp, 224f
                  sra          t5, tp, a4
                  sll          t6, s7, tp
211:              addi         s2, t0, -1322
                  addi         s0, t1, 1041
                  bne          a6, t5, 233f
                  auipc        a1, 1023107
                  bge          a1, a4, 226f
                  srl          t3, a1, t1
                  bne          t0, a1, 231f
                  srl          t4, a1, t2
                  slt          a7, a1, s10
                  andi         ra, s8, -1949
                  nop
                  sltiu        t0, tp, -279
                  sltiu        s6, a3, -1036
224:              slli         t6, t5, 4
                  andi         s0, a6, 959
226:              sll          a6, a3, t6
                  sll          t4, s2, t2
                  bne          s3, a4, 229f
229:              andi         a3, s9, 1569
                  and          s7, s4, sp
231:              blt          tp, a5, 248f
                  or           a6, t0, gp
233:              xor          t5, s0, t5
                  nop
                  xor          t3, s9, gp
                  nop
                  srli         t0, t6, 28
                  andi         s11, ra, 1464
                  andi         s2, a3, -1144
                  slt          a6, t4, sp
                  ori          s8, s1, 294
                  auipc        t5, 198028
                  srai         t3, t1, 16
                  addi         s7, t3, 326
                  or           t2, s4, ra
                  blt          a1, s4, 259f
                  slti         a6, a7, -1369
248:              bgeu         t3, sp, 260f
                  srli         t2, s10, 0
                  bgeu         s6, a2, 259f
                  sub          s11, s10, s9
                  addi         zero, s5, 841
                  bne          a0, t5, 264f
                  sub          tp, a7, t4
                  auipc        s2, 581632
                  slti         zero, s8, -1722
                  sll          s7, t1, t6
                  bgeu         gp, gp, 262f
259:              srli         s5, s6, 25
260:              lui          a5, 553915
                  or           tp, ra, a3
262:              lui          t5, 757836
                  andi         s8, s9, -1021
                  addi         s2, zero, 6 #init loop 0 counter
                  sra          s1, a3, ra
                  sra          s5, a3, t5
                  xori         ra, a1, -1689
                  sra          s3, s3, t0
                  add          t3, s3, tp
                  slli         a6, s2, 26
                  ori          s0, a6, -1565
                  addi         a0, zero, 20 #init loop 0 limit
                  xor          s8, zero, s10
sub_4_7_0_t:      auipc        a4, 460859
                  slt          gp, s9, t3
                  slli         t2, ra, 9
                  addi         s2, s2, 6 #update loop 0 counter
                  slti         zero, s5, -1692
                  srli         ra, a7, 13
                  slli         t2, a2, 5
                  sltu         s6, a2, zero
                  srli         gp, s3, 9
                  xor          a5, s3, t3
                  sltu         ra, t5, a7
                  srl          zero, a0, a5
                  addi         s7, a1, -343
                  xori         tp, a5, 275
                  slti         zero, t1, 699
                  ori          t0, s4, -266
                  slti         t4, s1, 1581
                  bltu         s2, a0, sub_4_7_0_t #branch for loop 0
                  ori          a4, tp, -521
264:              bne          zero, t5, 277f
                  srai         s2, s4, 23
                  srai         a0, a7, 10
                  auipc        t6, 839792
                  blt          a2, s0, 286f
                  bne          zero, a4, 278f
                  add          a7, s0, s10
                  srli         s1, s0, 22
                  sltiu        t2, ra, 440
                  add          t2, a5, s4
                  beq          s3, a3, 288f
                  xori         t4, s2, 1311
                  xor          s8, s6, s1
277:              auipc        zero, 417131
278:              bne          s11, tp, 289f
                  sll          ra, t6, t2
                  sra          s0, sp, s1
                  bgeu         sp, tp, 297f
                  xor          t5, a5, s1
                  blt          s3, t1, 292f
                  sltiu        s7, s10, -286
                  sra          s7, t2, a5
286:              bne          s0, sp, 300f
                  addi         t5, t6, 974
288:              srai         a1, t5, 24
289:              add          s6, a0, s6
                  slti         t1, a2, 911
                  slti         s5, a7, 1388
292:              sltu         t2, t0, s11
                  nop
                  srli         t4, t6, 13
                  blt          a1, a4, 298f
                  srl          t0, s3, a6
297:              slt          s0, s6, s4
298:              addi         tp, zero, -1215
                  blt          a2, t0, 309f
300:              srai         t0, a3, 1
                  sra          s3, a0, a5
                  sra          t3, t5, t3
                  bne          t5, s2, 312f
                  bgeu         s8, tp, 320f
                  slt          s7, s6, t1
                  bltu         gp, a6, 309f
                  sltu         s9, s11, t3
                  bgeu         s6, s10, 327f
309:              bltu         tp, tp, 313f
                  auipc        s1, 27962
                  xor          s8, s6, tp
312:              slti         s6, tp, 1058
313:              slti         a7, s10, 199
                  or           a2, a0, s2
                  lui          zero, 201420
                  slli         zero, t3, 26
                  sll          t4, s10, a4
                  sub          a6, s10, sp
                  beq          ra, t0, 330f
320:              srai         a4, s9, 12
                  sub          t6, t1, s6
                  xori         s8, s8, 387
                  beq          a3, s10, 324f
324:              slti         t5, s8, -724
                  slt          t0, s4, s4
                  srai         a5, sp, 13
327:              add          a7, gp, a3
                  and          t0, s5, a3
                  andi         s6, a3, 1308
330:              andi         t1, t5, -1972
                  bgeu         s5, t0, 348f
                  lui          a4, 677233
                  srli         s11, s6, 24
                  beq          gp, t0, 345f
                  ori          t0, s11, 1621
                  srl          a0, a1, a3
                  nop
                  andi         t4, s1, 340
                  andi         s8, s8, 19
                  slti         t1, s4, -1047
                  ori          t1, a5, -1803
                  xor          a4, s8, a3
                  lui          a1, 729867
                  bltu         s1, s11, 364f
345:              and          t2, sp, t6
                  sltiu        tp, a3, 1378
                  slli         zero, s3, 3
348:              bgeu         s6, s0, 352f
                  sll          s6, a0, s7
                  slli         tp, a4, 24
                  srai         tp, tp, 14
352:              and          t5, t2, s9
                  sltiu        t5, a0, 1389
                  bgeu         s6, s2, 365f
                  srli         t2, a3, 1
                  sra          s5, t0, t6
                  nop
                  addi         t6, a0, -200
                  add          t6, t1, a3
                  ori          s1, s5, 1380
                  xori         s7, a5, 914
                  sra          t4, s4, s8
                  sltiu        s0, s0, -1282
364:              srai         t5, ra, 6
365:              lui          t0, 653545
                  sltu         a4, t6, a0
                  slli         t5, t1, 9
                  srai         zero, s4, 1
                  ori          a3, a7, -554
                  bge          zero, tp, 384f
                  addi         s9, a1, 679
                  blt          sp, tp, 379f
                  sltu         s8, s6, s0
                  sltiu        s5, a7, -60
                  sltiu        zero, tp, 1872
                  sub          s11, s8, a5
                  slti         a7, s3, 1422
                  bge          s10, t4, 398f
379:              slli         s8, s11, 29
                  auipc        a7, 930155
                  andi         t3, t1, 1772
                  sltu         a7, s2, zero
                  slli         s1, ra, 11
                  addi         a6, zero, 7 #init loop 1 counter
                  addi         a0, zero, -5 #init loop 1 limit
sub_4_4_1_t:      andi         t0, ra, 1864
                  addi         a6, a6, -2 #update loop 1 counter
                  addi         s9, zero, -9 #init loop 0 counter
                  addi         ra, zero, -17 #init loop 0 limit
sub_4_4_0_t:      addi         s8, a7, 524
                  addi         s9, s9, -2 #update loop 0 counter
                  bne          s9, ra, sub_4_4_0_t #branch for loop 0
                  beq          a6, a0, sub_4_4_1_t #branch for loop 1
                  sll          t6, a6, t4
384:              srl          s11, s9, a3
                  slt          s8, a0, s9
                  slt          s0, s1, s11
                  ori          s3, a1, 2043
                  beq          a2, sp, 398f
                  andi         s1, s7, -329
                  and          a3, a5, tp
                  slti         a7, t1, 1396
                  slt          tp, s9, s6
                  bge          t4, s3, 402f
                  beq          s2, t6, 405f
                  sub          t1, s9, t2
                  slt          s7, s3, t3
                  bge          s1, s3, 405f
398:              lui          s11, 875081
                  sltu         t4, s7, a4
                  sltu         a1, s8, s5
                  andi         t6, a0, 105
402:              nop
                  bge          s0, s0, 405f
                  blt          tp, s10, 405f
405:              lui          a6, 637653
                  lw           ra, 4(s4)
                  xor          t2, s6, t2
                  slti         tp, a6, 2021
                  addi         s4, s4, 44
                  ori          s2, a7, -911
607:              addi x27, x1, 1
607:              jalr x27, x27, 0
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
.word 0x76e86cd7, 0x96af7518, 0x56c614a8, 0x272522bd, 0x0c331ba3, 0xbbc8334f, 0x6406726f, 0xe4ca5268
.word 0x5794d0ce, 0x1dae9b0f, 0x7b5e578b, 0xfe797338, 0xe9f20093, 0x68010498, 0xe05e6a57, 0x4b575063
.word 0x2d756d9d, 0x3aa142ac, 0xc6fa60dc, 0xd798db73, 0x2bc50591, 0x75d0bf58, 0x03adb0a9, 0x37270b9d
.word 0x48133f76, 0x19efd82d, 0x421d1e05, 0xc949afac, 0xc2fdd890, 0xcbbe5212, 0x5ad75415, 0x92ae2c3d
.word 0x439ffa8d, 0xd59d7ddc, 0xea0caf8b, 0x62d23537, 0x33b55eec, 0x480c0342, 0x683416c6, 0xdf8ea68f
.word 0x5a002087, 0x555df0f7, 0x2ea4878a, 0xfee3bd65, 0x2e240e02, 0xfd2a9c7b, 0xbfac06f4, 0x32a8b5fe
.word 0x0b53039f, 0x03a37fa8, 0xa667d1dc, 0x3dc03fa8, 0xcf759c15, 0xbd4254e1, 0x36430012, 0x1905053a
.word 0x43e0a5fa, 0x85f60703, 0x08e785f9, 0x2265e048, 0x1af3391d, 0x17ea55b8, 0x9478a004, 0x1cc73d1f
.word 0x8c386ab9, 0x96d7f958, 0x359ff6f7, 0xe3058873, 0x98ccb03e, 0xb389eeb4, 0xc3717f45, 0xd145004f
.word 0x4783a127, 0xa185ed18, 0x6c20d437, 0xd2c97f1f, 0xc46d9d75, 0x05fea131, 0x0f14ef4d, 0x85264601
.word 0xea6d6690, 0x1587662f, 0xcd53fb8a, 0xbb09c6a2, 0x5549c04b, 0x8d8215bd, 0x2c41fcd5, 0xcaed23df
.word 0x4eea7ba5, 0xc98d002d, 0x47a364f0, 0x900b219e, 0x02bf1765, 0x385043c2, 0xd48bd8a4, 0x47e8afe8
.word 0x1481def8, 0x5a254462, 0xc9484299, 0xaa7cf685, 0x058c26c5, 0xa329cce7, 0x15a675f9, 0x07b7d2fd
.word 0xeebd2a8d, 0xe864fb7b, 0xc4be5e79, 0xf1c1b246, 0x30b2cf37, 0x31a3defb, 0x880e55cc, 0x74726c51
.word 0x1b6f3140, 0x06346771, 0x1cd629b8, 0xebe4725c, 0xa03acbdb, 0xca533b4d, 0xc92ccb11, 0x9553148b
.word 0xbe680332, 0x9f0b05f8, 0xdcd4b8aa, 0x2b58d388, 0x14f3e2cf, 0x930439cf, 0x77fd44c0, 0x7527828e
.word 0x6778d9aa, 0x79d4b6a1, 0xb7655079, 0x0b2db7e0, 0x64a3e439, 0xc6899355, 0x64f26560, 0xcb75f2ee
.word 0x6c65a6c6, 0xae6eab5d, 0x3979680c, 0x18daa87a, 0x5a540620, 0x683e6cfe, 0x55161b5d, 0xe274271b
.word 0x5935568e, 0xf913e2f9, 0x77fac654, 0xc070da09, 0xc424000d, 0x62be5bbd, 0xff4eed14, 0x718ec425
.word 0x181fe991, 0x3472a33f, 0x62a511d3, 0x466bf393, 0x62c0dd53, 0x07326fba, 0x9e464fdd, 0x5eb610c3
.word 0xe1251c20, 0xfe7edb24, 0x35f2813f, 0x2e5c6995, 0x3d046ae7, 0xefc5ac45, 0xc5f15575, 0x8d07377a
.word 0xe5233ddf, 0xa874a0bc, 0x44f3b7b2, 0xa1a8fbe9, 0x676a3994, 0xb594a0a6, 0xf5a65318, 0x140b7d72
.word 0xb47a274d, 0x729c8f83, 0x753491a7, 0x427e6954, 0xd2eec168, 0xc6e78ff9, 0x70afade1, 0x0dd3d911
.word 0xa43094c7, 0x685678a2, 0x389d1837, 0x0596b7d6, 0xe273c47a, 0x1a777b7c, 0x404ae9d6, 0x728a7573
.word 0xffed0d02, 0xa7282d0f, 0xf043ced7, 0x881e81a7, 0x0554c50b, 0xd58cbb2c, 0x47e31213, 0xffa6015c
.word 0xb2ee6d22, 0x5da74863, 0x1a9ae1d4, 0xbfb8ceba, 0xc7812403, 0x88e41ca8, 0x8ea623d7, 0x273a864b
.word 0x530cecc6, 0x7050a0b4, 0x3d1d4129, 0x7bc8b6ec, 0x702b5621, 0xf46a98a3, 0x71a84388, 0x07ae2ebb
.word 0xe3bf83aa, 0xe07875c1, 0xa3ceeb26, 0x83b1b830, 0xacdb0ff3, 0x5f0912cb, 0x0e752f29, 0xc5b82110
.word 0x6d1a8ea5, 0x6f078935, 0x9ad2c6cc, 0x4912025c, 0x58095e8f, 0xc2bb2949, 0x8d0c6933, 0x559eb5de
.word 0xc050dadf, 0x82503b7d, 0xdb406dfa, 0x8150daa9, 0xaa5288f1, 0x1bddf462, 0xd60068ee, 0x8cd0abc3
.word 0xd7349191, 0x480b5e71, 0xce5dd94e, 0x31a079a1, 0x1daf6eec, 0xe5640942, 0x4a03c695, 0x0b90be1b
.word 0x9898b9aa, 0xe571f4bc, 0xa786e02e, 0x8b7d7240, 0xf1d35fa1, 0x6df24985, 0x6d179f27, 0xef20ec83
.word 0x219e87f2, 0x8da6fce1, 0xd59e14f7, 0xcfd01a1b, 0xd372f581, 0xca7d46d2, 0x89735eca, 0x07172b7e
.word 0xc6b074b1, 0xfb2e556f, 0x1f78322c, 0x4680bf8b, 0x8f51ff3d, 0x1e3507fc, 0x20b71a0d, 0xc07e2f24
.word 0xbbb6772d, 0xcd60b45b, 0x119f7c97, 0x812e9c4c, 0xc30260b7, 0xb34fd067, 0x4005e584, 0x4096c164
.word 0x678bcc9a, 0x7ee1f7b3, 0x79cf6201, 0xf7ee6c25, 0xa3f6c10d, 0xc87c2b33, 0xb7b8bfc6, 0xf2755df3
.word 0xedaa2a34, 0xdbaaed8f, 0xae05e8aa, 0x0683ebdb, 0xf5ea5b60, 0x04e6f061, 0xe1a33b9a, 0xabf6bf8e
.word 0x3a03c986, 0x4acca79b, 0x39197ab1, 0x01751fdc, 0x258c400a, 0xf0d3bf08, 0x4d90ee62, 0xf6ce7244
.word 0x37184590, 0x25182448, 0xc76b1de1, 0xde18bfe3, 0xffbf71ba, 0x8c08d6c9, 0x2271de88, 0x667ac605
.word 0xb747259d, 0x9c12dac0, 0x316b8fe0, 0xd04fe7f4, 0x6f937ca1, 0xd6068e35, 0x68955727, 0x98390ea4
.word 0xe3029400, 0xfe07b1d5, 0x8cdbbec3, 0x890b16e0, 0x501555ec, 0xf16c6613, 0x9fc02aa3, 0x3cc19a44
.word 0x160ea28e, 0xf617002c, 0x4b7fdc24, 0x03c239a8, 0x4a663ec2, 0xf48a0595, 0xf40ce369, 0xe871ff7d
.word 0xb4453cf5, 0x57e402ca, 0x6f90e764, 0x39502953, 0x2a56c0c3, 0x400f8b30, 0x3d789fb2, 0x659028e3
.word 0xb114a75c, 0xff6d55c9, 0x7d8bb0fa, 0xa0b6abf5, 0x2bb172b4, 0x0f10a694, 0xe2d8e643, 0x91b8b3d6
.word 0x8bd73695, 0x31e88ec5, 0xa7e29f06, 0xb32ec8f5, 0xd14e1e11, 0x51783364, 0x18ac9466, 0xc94705e8
.word 0x18d0c5a7, 0xec2b2425, 0x96062b65, 0x9afe79df, 0x8eb37a62, 0x2982475b, 0x7abba419, 0xc2798690
.word 0xbde5fb0e, 0x0002b236, 0x713652c2, 0xd9e53784, 0xa93a6187, 0x09f26d41, 0x04b5130a, 0x80806822
.word 0xa548c1d3, 0x6c6be901, 0xc216c01e, 0xabea1861, 0x6c762ed9, 0x20e2da77, 0x6256e893, 0xe7f78eff
.word 0x02d04b48, 0xefafa36a, 0xaee898a7, 0xff4b298b, 0x1e2859c4, 0xcbf965fc, 0xc3912670, 0x42145b37
.word 0x313c45f5, 0x6420cb09, 0x8f73e048, 0x688c02a1, 0xe7658966, 0xe042a8ba, 0x436706d4, 0xe66fd820
.word 0x29018f65, 0xea6c1733, 0x50d420b9, 0x4e04e6f5, 0xd3141b52, 0x23d62fa9, 0x6ad4f196, 0x579b1242
.word 0x6c41ad15, 0x3df67e7e, 0x7c2f444a, 0x2d38838b, 0x5bec4b9b, 0x9a9172c5, 0x4202e257, 0xd64f9a1c
.word 0xc106c3bd, 0x84a12374, 0x0c642dfb, 0x51be1811, 0x017c1328, 0x53f815c1, 0xad4789c3, 0xd87606c6
.word 0xacfb8ec6, 0xd20e203e, 0x6feab9e2, 0xc301c60e, 0xd17fa32d, 0x0644fc9e, 0x824e16d0, 0x577d0a3a
.word 0xc833b46e, 0xfa56e9fb, 0x28c6e4b6, 0x29b84307, 0xcb8e8d00, 0x9879bf6e, 0xb7be77e9, 0x511bc29f
.word 0xac4109a4, 0x0a7ad221, 0x6c495067, 0xbac35410, 0x218a3d3b, 0x2f77c3e8, 0x69a5d33e, 0xf27c1237
.word 0xe8b904e0, 0xe2c89dba, 0x36964189, 0x402f4f89, 0xee3b7c1c, 0xc1054aff, 0xa84c4c5c, 0x05ef0f43
.word 0xfde5dc6c, 0x3406b2b9, 0xe03df059, 0x4d9ff39e, 0xbdb84789, 0xbe04e979, 0x3084d3b7, 0x4142fe70
.word 0x2d1faf97, 0x6d637961, 0xe0d7a0d7, 0xe2941863, 0x00d41978, 0xe7254bf3, 0xf06aca2e, 0xc9faa7fa
.word 0x86bf6568, 0x457dc8cc, 0x4efc174f, 0x349bc2d7, 0x6b2dd1a7, 0x55e4a80d, 0x9ac7be7e, 0x2c2354ed
.word 0xa2593fde, 0x61a1c021, 0xb39d487e, 0xc80044a1, 0x8c204bbe, 0x72ba20c5, 0xed02609c, 0x0a97c95d
.word 0xb93ba2af, 0xd299da51, 0xc57de9c0, 0xfea8b47d, 0x5fe2654a, 0x7d925fde, 0x2ad1f953, 0x8f022c37
.word 0xd4f940c7, 0x634a7a83, 0xac7122a3, 0xb854db35
.section .region_1,"aw",@progbits;
region_1:
.word 0xff5b9eaa, 0xb867fcf5, 0x733448a9, 0xcd672364, 0xd795146f, 0x8dd6dd42, 0x747ce718, 0x96cd88c6
.word 0x0e78b4e1, 0xa93dea51, 0xfdaa5e15, 0x89bd2cd3, 0x07c3bc94, 0xf85dadc0, 0x13085282, 0x17b70398
.word 0xacf722b8, 0x5c6bff13, 0x2a216311, 0x3542391d, 0x733a6663, 0x07f9ce23, 0xe483c1ac, 0xb8c88079
.word 0x1adcb794, 0x361c0839, 0x191d12dc, 0xecfae2a2, 0x39f6bae9, 0x598621c9, 0xc0783793, 0xf8bbef4b
.word 0x0165d62e, 0xbfb68ca8, 0x943e2712, 0x292f4205, 0xbea4b9ed, 0x8fe93625, 0xf37ea2d1, 0xb675e4e8
.word 0x02259efb, 0x3650d888, 0xa528df9c, 0x2929a120, 0x335e8786, 0xc300b3fa, 0x1c4efec6, 0x8b73cd50
.word 0x38b9a7c0, 0xae11b58f, 0x8450c29e, 0x4315d26d, 0xe9062b30, 0x078045c6, 0x1c56acb1, 0xa04bfcd3
.word 0x90d15979, 0x880b66e2, 0x94b8a373, 0x28d9730b, 0xf2daa760, 0x0b0ae985, 0xfab133f5, 0x6a6b65d0
.word 0x3333c06e, 0x6ac28e12, 0x92c0e0bb, 0xfa0550aa, 0x3a54eef1, 0xc2db680e, 0x166123ae, 0xedd95f9a
.word 0xf5209ec5, 0xe916c3c2, 0xc243941b, 0x2ad547f3, 0x2da0cd3a, 0x28d57847, 0x0afeee8b, 0x6f93523d
.word 0xd73c2852, 0x50dd1338, 0x299a071f, 0xc093e6c1, 0x827372d3, 0x8b338f55, 0x06aa8d9e, 0xdc1dccab
.word 0xe2a15448, 0x56ee509a, 0xf16b06b9, 0x8f27cfd4, 0xd38d1336, 0x8c47402e, 0x70fff366, 0x7c45e27b
.word 0x1adef7aa, 0x2fafe4bb, 0x29d8cefe, 0x1c035436, 0xb81a2a4f, 0xc97964b5, 0x642d64e1, 0xadca7a01
.word 0x519ecafd, 0x297431c7, 0xb463110e, 0xe1d9988c, 0x3f55cc66, 0xd8dd0085, 0xd6835e4b, 0x761d1cbe
.word 0x81639ed7, 0xb98382be, 0xa5b9cce6, 0x3430a348, 0xce793cdf, 0xd5986577, 0xf04bb25a, 0xbd8611d8
.word 0x13a30829, 0x17c2f644, 0x271147d4, 0x7da462c4, 0xe392c6f0, 0x48f038d7, 0x164ea360, 0x1cf177d9
.word 0x26555818, 0x93fad51f, 0x2fa66470, 0xbfbd77c9, 0x8e3ec554, 0xc4999b5c, 0xd025b27a, 0x8901e402
.word 0xe468d7b7, 0xcf7bbf41, 0x90907a58, 0x29a7b576, 0x2841e9a1, 0x2f50b8d5, 0xed51e4a7, 0xfc8b627a
.word 0x6205d03e, 0x68cd88aa, 0xa185c58f, 0xd82bac50, 0x8c7fdc98, 0x1420f113, 0x3feaec2c, 0x839fa4b1
.word 0x448eb1d5, 0xeb6cd94a, 0xb1152622, 0xda32c026, 0xcf4de982, 0xac651e2c, 0x35f10a4e, 0x14c970cf
.word 0xad59104c, 0xaf41599c, 0x43681c26, 0xc6285d03, 0x6ca1e929, 0x5a8017a5, 0x9f1e8a37, 0x2a010f77
.word 0x7bfcc9c8, 0x28b94b64, 0xba615943, 0xd1bdf8d3, 0x952a0caf, 0xc9d98b65, 0x30a68a9b, 0xbdf9b272
.word 0x1a991afc, 0xce9a5920, 0xa5b16ab8, 0xce9322c5, 0xe67fb444, 0xb080614c, 0x4d5c37e2, 0xbcd5fc6e
.word 0xadf07518, 0xaef5b10e, 0x6905e2ee, 0x700ef6a0, 0xece9ee0e, 0x02d4c94c, 0xa515cf6b, 0x99b8c52e
.word 0xf10066ee, 0x13d9532e, 0x724eedd1, 0x3aa6948d, 0x916655e4, 0xbfbf3512, 0x53a1fdfe, 0xa3adada0
.word 0x56004f66, 0x08671dd0, 0xf48c297c, 0x52398cc0, 0x8be0f5ab, 0x90021d6b, 0xb28bb469, 0xf3f36136
.word 0x1f273e55, 0x9b39dc49, 0x3a5aabba, 0x81e02f34, 0x98a4c910, 0xd2b1a9a4, 0xf5224e3a, 0x235b8a00
.word 0x336575c7, 0x1e8ca46c, 0x8d6d05b5, 0x5fb86b23, 0x860b04fd, 0xaba68086, 0x8ae6e2b2, 0x080d92e6
.word 0x2063b585, 0xc53d66af, 0xffe58124, 0x1f8449cc, 0x83f16795, 0xa92edceb, 0xb0f1cf32, 0xb5648300
.word 0x288eb0d7, 0xc0864c7f, 0x08a746cd, 0xc071b292, 0xa98acf86, 0x64c90794, 0xaba39480, 0x6e126da1
.word 0x74f2daa5, 0x675426a7, 0xc6b83f58, 0x26726fac, 0x84b3d533, 0x24fdd46a, 0x0c75dc9a, 0x98ef4bcc
.word 0xec617fef, 0xa79495b6, 0x966b24f0, 0x5d95b2f8, 0x8fecc52f, 0x1d8d1bca, 0x8c57bed1, 0xa822eb27
.word 0x8041bb00, 0xd49c7cb2, 0xd33e76e1, 0xcff61099, 0x1d990aec, 0x89dbd5ac, 0x27e4375e, 0x9c488cb3
.word 0xdb68cf6f, 0x0b22d5e3, 0x645b0b2b, 0x1f2b3c36, 0x627d7117, 0x9a78f7c7, 0xe9a46306, 0x413a52ba
.word 0x803048a5, 0xb4535b93, 0x9f0ae45f, 0x4fd2eb3b, 0xa921ef53, 0x2e9ff687, 0xb2b28980, 0x637fcafb
.word 0x02ae0b4a, 0xa7bb0adc, 0xf2aab85a, 0x32a734d6, 0x907feaea, 0x45f309a8, 0xf91b15ba, 0xa974718b
.word 0xdd432ee2, 0x02130cd4, 0xd92cb856, 0x479901f6, 0xf57d372f, 0x30f0a22e, 0x9e3e04a9, 0xf65a4b02
.word 0x23991914, 0x55819ca6, 0xa64381cb, 0x04d32b76, 0xc9fdf4df, 0x141a316d, 0x8fc5820a, 0x6e7ad57c
.word 0xba76e856, 0xe70d64a9, 0x72cb757e, 0x75c06a83, 0x59732210, 0xfc1ac9cf, 0xb630bffa, 0xadaf5c93
.word 0x344fb9c1, 0xc478187a, 0xabab998c, 0x08619d24, 0xbb668ceb, 0xd03e8db8, 0x3908195d, 0xd1115231
.word 0x5606b4db, 0x00403db3, 0xc4180d62, 0x4e148eee, 0xc8b7f794, 0xb646405e, 0x7f5baa49, 0xdcae6608
.word 0xd7a43f59, 0x45e642f9, 0x35e65894, 0xd97c8603, 0xb7dfe76c, 0x3a8d6729, 0x98093d09, 0x5424cb68
.word 0xbf38ba65, 0xcf5d0a7b, 0xc86be70d, 0xa09e97bb, 0xdb87c3ea, 0x9a11bf16, 0x493fe916, 0xc4202de6
.word 0xfce4b4ee, 0x01df52c0, 0xa2ad9fbf, 0x39de1b43, 0xb8e1a630, 0xa813cf29, 0xb3e2d452, 0xd8ffd9cc
.word 0x56a8142c, 0x0dfa75d2, 0xac2e1546, 0x067bdb5c, 0xab992537, 0x7867ec8e, 0x97fa67e2, 0x41630304
.word 0x2ac33816, 0x16548a07, 0x06dbb8ec, 0xa0937eee, 0xf29f93a7, 0x52f8d1d7, 0x5d7ddec9, 0xc8bcc937
.word 0x656cb71d, 0x3cd52e21, 0x35b608cc, 0x87723905, 0xb08213df, 0xb8a54c4c, 0xb02f0eda, 0x81de6a87
.word 0x91b126a7, 0x449d1b2f, 0x4571b493, 0xde656925, 0xcbf94ac9, 0x55c2c997, 0x79e79042, 0x9bff6732
.word 0xf82b8572, 0x0190d4a6, 0x4abeecd7, 0x0d447be9, 0x8d482901, 0x8ac0d947, 0xf0d5b994, 0x1a84a6ef
.word 0xdd7ece5a, 0x20ef21cd, 0x6aef492b, 0x8b3b69d6, 0xd43178d4, 0xaa410c47, 0x8326973d, 0x9d4c9c1a
.word 0x669a7b10, 0x327f0dc7, 0x32e61e1b, 0x15af502e, 0x038eb74c, 0x274859ff, 0xa8fc5bb3, 0x02f7c774
.word 0x436808af, 0xe142c30b, 0xd79ba9e5, 0x257e18b2, 0x6b11c9d3, 0x721cc490, 0x8ae15ef1, 0x8ea7899d
.word 0x42abb25c, 0xa24e6548, 0xe141fe6b, 0x084d8bd5, 0x392ff0c9, 0xa1d3672b, 0x1cf2c4eb, 0x0a657222
.word 0x2429e9b0, 0x25e4b606, 0x20e92bec, 0xd3afdae8, 0x79fb97e0, 0x11089c83, 0x478323a4, 0xf326c94d
.word 0x2f1e30ba, 0x502778e1, 0xa7f330ed, 0x48192453, 0x2b4dea74, 0x50709f1e, 0x0f860986, 0xfa4176be
.word 0x90dee3ae, 0xb3e2b8bc, 0x4e854614, 0x713dcc92, 0x2060efac, 0x778a904d, 0xf0690ab3, 0x9457614f
.word 0xf4888fb9, 0xd16195ea, 0xaa20b5bf, 0xc2e2d2df, 0x1669200c, 0x302cc5de, 0x2d55593e, 0xe41d8c88
.word 0x49a8014f, 0xde605d5f, 0x27032987, 0xe7971903, 0x3af8f5e3, 0x0e28a21b, 0xab17a6b2, 0x7b5ef5c6
.word 0xb00653b0, 0x44c45ca0, 0x85af4afa, 0x39e8e9da, 0xe4d53bb2, 0xf38855e5, 0x3095056c, 0x40e58fd6
.word 0xc313ed6c, 0x11ae3377, 0x13e75628, 0x754f9855, 0x5406b2b5, 0xc3c94680, 0xf92e688a, 0x65b3ad6b
.word 0x3678b7bc, 0xf4163163, 0xd2b89168, 0x2d4e50a8, 0x2fc1ea31, 0x9ac76cb2, 0x7752284c, 0xc0e05f74
.word 0xfca788b4, 0x5d088c02, 0x6bcfc6c9, 0xf5dc57c4, 0xae8d4348, 0x92f5613b, 0x85a484fb, 0x3781f04f
.word 0x703096c6, 0x8f521fc2, 0xbe0319ac, 0x78bdde61
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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x2, x20, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_2:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x2, x20, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_3:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x2, x20, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_4:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x2, x20, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_5:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x2, x20, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_6:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x2, x20, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_7:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x2, x20, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_8:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x2, x20, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_9:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x2, x20, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_10:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x2, x20, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_11:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x2, x20, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_12:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x2, x20, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_13:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x2, x20, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_14:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x2, x20, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_15:
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x2, x20, zero
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 0x1f
                  beqz x10, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x2, x20, zero
                  csrr x10, 0x341 # MEPC
                  csrr x10, 0x342 # MCAUSE
                  li x8, 0x3 # BREAKPOINT
                  beq x10, x8, ebreak_handler
                  li x8, 0x8 # ECALL_UMODE
                  beq x10, x8, ecall_handler
                  li x8, 0x9 # ECALL_SMODE
                  beq x10, x8, ecall_handler
                  li x8, 0xb # ECALL_MMODE
                  beq x10, x8, ecall_handler
                  li x8, 0x1
                  beq x10, x8, instr_fault_handler
                  li x8, 0x5
                  beq x10, x8, load_fault_handler
                  li x8, 0x7
                  beq x10, x8, store_fault_handler
                  li x8, 0xc
                  beq x10, x8, pt_fault_handler
                  li x8, 0xd
                  beq x10, x8, pt_fault_handler
                  li x8, 0xf
                  beq x10, x8, pt_fault_handler
                  li x8, 0x2 # ILLEGAL_INSTRUCTION
                  beq x10, x8, illegal_instr_handler
                  csrr x8, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

ecall_handler:    
                  la x10, _start
                  sw x0, 0(x10)
                  sw x1, 4(x10)
                  sw x2, 8(x10)
                  sw x3, 12(x10)
                  sw x4, 16(x10)
                  sw x5, 20(x10)
                  sw x6, 24(x10)
                  sw x7, 28(x10)
                  sw x8, 32(x10)
                  sw x9, 36(x10)
                  sw x10, 40(x10)
                  sw x11, 44(x10)
                  sw x12, 48(x10)
                  sw x13, 52(x10)
                  sw x14, 56(x10)
                  sw x15, 60(x10)
                  sw x16, 64(x10)
                  sw x17, 68(x10)
                  sw x18, 72(x10)
                  sw x19, 76(x10)
                  sw x20, 80(x10)
                  sw x21, 84(x10)
                  sw x22, 88(x10)
                  sw x23, 92(x10)
                  sw x24, 96(x10)
                  sw x25, 100(x10)
                  sw x26, 104(x10)
                  sw x27, 108(x10)
                  sw x28, 112(x10)
                  sw x29, 116(x10)
                  sw x30, 120(x10)
                  sw x31, 124(x10)
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x20, x2, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

load_fault_handler:
                  add x20, x2, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

store_fault_handler:
                  add x20, x2, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

ebreak_handler:   
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x20, x2, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

illegal_instr_handler:
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x20, x2, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x10, 0x300 # MSTATUS;
                  csrr  x10, 0x304 # MIE;
                  csrr  x10, 0x344 # MIP;
                  csrrc x10, 0x344, x10 # MIP;
                  add x20, x2, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
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
