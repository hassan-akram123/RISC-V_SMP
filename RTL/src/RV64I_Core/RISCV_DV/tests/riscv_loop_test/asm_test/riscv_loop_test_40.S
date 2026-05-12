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
                  li x25, 0x40000100
                  csrw 0x301, x25
kernel_sp:        
                  la x12, kernel_stack_end

trap_vec_init:    
                  la x25, mtvec_handler
                  ori x25, x25, 0
                  csrw 0x305, x25 # MTVEC

mepc_setup:       
                  la x25, init
                  csrw 0x341, x25

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x25, 0x1800
                  csrw 0x300, x25 # MSTATUS
                  mret
init:             
                  li x0, 0x83940d0d
                  li x1, 0x0
                  li x2, 0xac5793cc
                  li x3, 0x0
                  li x4, 0x80000000
                  li x5, 0x0
                  li x6, 0x457abdb4
                  li x7, 0x1
                  li x8, 0x80000000
                  li x9, 0xfdd018a4
                  li x10, 0x0
                  li x11, 0xfc6ff064
                  li x13, 0x80000000
                  li x14, 0xd2f704da
                  li x15, 0x0
                  li x16, 0xf013a1b3
                  li x17, 0x80000000
                  li x18, 0x8a42dcb0
                  li x19, 0x3
                  li x21, 0x79805f66
                  li x22, 0xfd6e1c18
                  li x23, 0x80000000
                  li x24, 0xf9f10ca6
                  li x25, 0x80000000
                  li x26, 0xf28ee708
                  li x27, 0xf6b7c6e2
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0xfb38b767
                  li x31, 0x80000000
                  la x20, user_stack_end
main:             addi         s2, zero, -6 #init loop 1 counter
                  addi         s9, zero, 2 #init loop 1 limit
main_0_1_t:       xori         s10, t1, -623
                  addi         s2, s2, 9 #update loop 1 counter
                  addi         s3, zero, 8 #init loop 0 counter
                  addi         a4, zero, 8 #init loop 0 limit
                  xori         s5, s7, 1478
main_0_0_t:       auipc        s7, 893145
                  addi         s3, s3, -4 #update loop 0 counter
                  bgeu         s3, a4, main_0_0_t #branch for loop 0
                  blt          s2, s9, main_0_1_t #branch for loop 1
                  nop
                  addi         s10, zero, -2 #init loop 0 counter
                  sltiu        s1, s1, 516
                  nop
                  addi         t4, zero, 2 #init loop 0 limit
main_2_0_t:       sltu         a6, s7, a3
                  slli         sp, s8, 15
                  nop
                  andi         s8, gp, -1432
                  addi         s10, s10, 6 #update loop 0 counter
                  addi         t5, a1, -820
                  sra          a5, t5, s1
                  sll          s2, s2, zero
                  add          s7, s9, a6
                  xori         s9, a7, -741
                  or           t6, t4, zero
                  srli         a0, a3, 3
                  ori          a4, a7, 753
                  sub          s9, s11, a7
                  xor          a3, s3, t4
                  slli         sp, s3, 28
                  xori         t1, t4, 1409
                  xor          s3, a1, t6
                  sra          s11, s1, t0
                  bltu         s10, t4, main_2_0_t #branch for loop 0
                  xor          a4, s6, a6
                  addi         a6, zero, -2 #init loop 1 counter
                  auipc        a5, 412187
                  addi         a4, zero, -8 #init loop 1 limit
                  srli         t1, sp, 29
main_1_1_t:       sltiu        t6, a2, -1532
                  lui          t0, 208802
                  srl          a1, sp, s2
                  sltiu        s3, s11, 2001
                  addi         a6, a6, -6 #update loop 1 counter
                  or           s3, a5, a2
                  sltiu        s10, sp, -460
                  sltiu        a5, sp, 1243
                  addi         s8, zero, 2 #init loop 0 counter
                  sltu         gp, a1, ra
                  addi         t5, zero, -14 #init loop 0 limit
main_1_0_t:       sltiu        sp, s7, -319
                  addi         s8, s8, -3 #update loop 0 counter
                  add          s9, t4, a5
                  lui          s9, 894348
                  bge          s8, t5, main_1_0_t #branch for loop 0
                  and          zero, t4, s5
                  and          t2, t6, a3
                  ori          s7, s11, -1705
                  addi         s7, tp, -1360
                  bne          a6, a4, main_1_1_t #branch for loop 1
                  nop
                  sltiu        s7, a3, 306
                  addi         s11, s2, 139
                  sra          s10, zero, s2
                  add          s9, t4, t6
                  sub          s8, a1, s4
                  nop
                  sub          t2, a7, s9
                  addi         s2, s6, 370
                  andi         a0, a4, 70
                  ori          a1, a0, 1786
                  bne          t5, s11, 27f
                  bltu         gp, s0, 27f
                  sltiu        s11, s8, 1450
                  sltu         t6, sp, a6
                  srai         s3, a0, 31
                  bne          zero, a6, 29f
                  bgeu         s8, gp, 36f
                  slli         a0, gp, 26
                  bne          s5, zero, 28f
                  auipc        ra, 243010
                  srli         zero, ra, 6
                  or           t5, a0, zero
                  srl          tp, ra, s10
                  bne          a7, s8, 34f
                  and          s9, s6, s2
                  beq          gp, sp, 32f
                  sltu         a7, a4, gp
27:               bgeu         ra, a2, 36f
28:               sra          t4, a1, a2
29:               addi         a6, s4, -1513
                  sll          t4, t3, zero
                  nop
32:               beq          zero, zero, 50f
                  bne          t2, t5, 45f
34:               or           s3, t1, zero
                  ori          s5, s7, -1823
36:               srai         zero, t0, 16
                  or           a4, s1, s8
                  bge          t0, a6, 51f
                  sll          tp, s2, t1
                  bne          tp, s11, 54f
                  xor          s1, zero, gp
                  srl          s0, s7, a5
                  addi         sp, s2, -1946
                  la           t3, sub_1
                  slli         s7, t5, 21
                  srai         a7, s1, 10
                  addi         t3, t3, -485
                  ori          t6, a3, 1691
                  auipc        a5, 639017
                  srai         a4, s9, 17
                  lui          t0, 921717
main_j1:          jalr         t6, t3, 486 #jump main -> sub_1
                  xori         tp, s9, 980
45:               srai         s11, s6, 14
                  add          t0, a3, s2
                  sltiu        a3, s10, -798
                  and          tp, s2, t5
                  sltu         tp, a4, s3
50:               and          a1, s7, s3
51:               sll          a5, s7, s7
                  auipc        t5, 554197
                  slti         tp, s7, 185
54:               blt          t1, a5, 74f
                  add          s10, sp, t4
                  slt          a5, a1, s3
                  xori         zero, t4, 623
                  srl          gp, s6, a6
                  beq          t0, t4, 70f
                  xor          ra, t4, a1
                  sub          s0, a4, t5
                  bge          sp, t4, 67f
                  sub          a3, sp, t0
                  slli         t1, s5, 29
                  auipc        s8, 339944
                  bne          gp, s7, 80f
67:               sltu         t2, s4, gp
                  sub          s2, a1, zero
                  or           ra, gp, s10
70:               slli         s7, sp, 8
                  sub          sp, s4, a0
                  xor          s1, t3, s6
                  srl          tp, s6, ra
74:               bge          a3, s7, 90f
                  bne          s9, s7, 76f
76:               slli         s0, t0, 4
                  slli         t2, a3, 8
                  bne          t1, t3, 96f
                  bltu         tp, a3, 95f
80:               add          t4, gp, t3
                  bge          s6, a2, 94f
                  slt          a1, a4, s5
                  sltiu        s0, t2, -801
                  auipc        s7, 123674
                  sub          s8, s8, s2
                  bne          t4, ra, 92f
                  srli         t5, ra, 28
                  srl          s7, t0, t6
                  and          s5, a2, t4
90:               and          ra, s8, a0
                  bgeu         s5, s4, 94f
92:               and          t6, a3, a0
                  lui          t3, 327988
94:               slli         a5, t6, 7
95:               bge          s1, t6, 97f
96:               ori          s7, a0, -1619
97:               lui          s10, 557717
                  xor          s8, a1, a0
                  xori         t3, t5, -1282
                  srl          a1, t0, a7
                  andi         a6, a4, -184
                  or           s7, a7, a7
                  auipc        t4, 599316
                  slli         ra, s6, 4
                  sra          a7, a0, tp
                  andi         t6, a6, -2005
                  or           a5, a6, a0
                  sra          gp, t6, a6
                  xor          t5, a7, t1
                  andi         a1, s8, 239
                  srai         t1, a6, 21
                  ori          s8, s11, -1072
                  srl          tp, s2, ra
                  sltiu        s10, t4, -1359
                  bge          sp, s2, 135f
                  addi         s11, s6, 55
                  andi         t1, t6, -1511
                  srai         a6, a7, 24
                  addi         a3, s6, -1505
                  blt          a1, t1, 126f
                  auipc        t3, 1043094
                  sub          s7, t1, s0
                  blt          a7, a0, 142f
                  andi         a6, a0, 537
                  bltu         s9, ra, 139f
126:              blt          s4, t3, 140f
                  nop
                  sltiu        s7, t3, 1262
                  sltu         zero, tp, t1
                  bltu         a2, t5, 138f
                  bge          s1, t4, 134f
                  bge          gp, t3, 137f
                  lui          s1, 57020
134:              ori          a1, s9, -1303
135:              nop
                  ori          ra, s9, -1688
137:              ori          a1, gp, -2034
138:              or           s0, sp, t4
139:              bltu         a6, s4, 155f
140:              andi         t3, a7, 416
                  add          t5, t0, tp
142:              slt          s0, s0, t5
                  srl          tp, ra, a7
                  slt          t3, sp, a6
                  sll          a0, a2, s9
                  bgeu         s9, s8, 164f
                  bgeu         zero, gp, 167f
                  xori         gp, s2, -172
                  blt          s11, a5, 163f
                  bne          sp, a3, 168f
                  slt          a1, t0, s4
                  sll          gp, t2, s6
                  sltu         t4, a2, a0
                  auipc        s3, 651729
155:              xori         s9, s10, -1855
                  xori         s7, s4, -90
                  bne          t2, s6, 171f
                  xor          a3, s3, a6
                  sub          zero, a0, t6
                  sltiu        t1, gp, -235
                  andi         s9, a6, 1505
                  blt          s4, ra, 171f
163:              nop
164:              bgeu         s8, s2, 171f
                  slli         t1, t5, 20
                  bltu         a2, s5, 171f
167:              sltiu        a1, t1, -1155
168:              sltiu        t1, s3, 1077
                  bltu         a1, t3, 171f
                  srl          a3, a5, t0
171:              or           s5, ra, a7
                  la x22, test_done
                  jalr x0, x22, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            srli         t5, s0, 0
                  slt          a0, s4, s6
                  sltiu        gp, a0, -2012
                  xori         s10, s2, 1188
                  beq          a7, s1, sub_1_stack_p
sub_1_stack_p:    addi         s4, s4, -32
                  srl          sp, t2, a7
                  slt          s1, s7, s4
                  sw           t6, 4(s4)
                  and          t0, a2, s4
                  addi         s5, zero, 10 #init loop 0 counter
                  srai         a0, s3, 16
                  xori         t1, t5, 1321
                  addi         tp, zero, 8 #init loop 0 limit
                  add          s9, s10, s2
                  ori          a0, gp, 1758
sub_1_15_0_t:     ori          t0, t0, 85
                  slli         a7, a0, 20
                  slli         t1, a1, 8
                  slli         t1, a7, 26
                  sra          a3, s4, a5
                  addi         s5, s5, -5 #update loop 0 counter
                  nop
                  srli         a4, a1, 7
                  ori          s1, zero, -107
                  srli         t1, s7, 24
                  or           a4, a4, a7
                  bgeu         s5, tp, sub_1_15_0_t #branch for loop 0
                  slt          s3, t6, t2
                  addi         s2, zero, -9 #init loop 0 counter
                  addi         s9, zero, 14 #init loop 0 limit
                  or           ra, s3, a2
sub_1_12_0_t:     xor          t1, sp, a0
                  add          s10, tp, sp
                  addi         s2, s2, 8 #update loop 0 counter
                  bltu         s2, s9, sub_1_12_0_t #branch for loop 0
                  slt          zero, gp, tp
                  addi         t4, zero, -4 #init loop 1 counter
                  sra          t5, s1, sp
                  addi         s8, zero, 14 #init loop 1 limit
                  sra          s11, s5, a2
                  slt          t2, a2, s5
sub_1_16_1_t:     sltu         s11, a2, a4
                  sra          s3, ra, ra
                  srai         s3, sp, 3
                  sltiu        a6, t5, 469
                  addi         t4, t4, 1 #update loop 1 counter
                  sltu         tp, tp, s1
                  addi         s10, zero, -2 #init loop 0 counter
                  sra          t5, a4, a0
                  or           ra, a3, zero
                  addi         t3, zero, 10 #init loop 0 limit
                  xor          a0, t0, t1
                  xori         s1, a7, 1623
                  slli         a6, s9, 23
sub_1_16_0_t:     nop
                  sll          a5, t5, a5
                  addi         s10, s10, 4 #update loop 0 counter
                  beq          s10, t3, sub_1_16_0_t #branch for loop 0
                  bne          t4, s8, sub_1_16_1_t #branch for loop 1
                  xor          a0, tp, ra
                  addi         s1, zero, -7 #init loop 1 counter
                  slli         t4, a1, 19
                  addi         tp, zero, 7 #init loop 1 limit
sub_1_4_1_t:      sub          s9, a0, t3
                  addi         s1, s1, 4 #update loop 1 counter
                  addi         sp, zero, -1 #init loop 0 counter
                  srli         t3, a1, 22
                  addi         s11, zero, 9 #init loop 0 limit
sub_1_4_0_t:      nop
                  addi         t6, s10, 380
                  addi         sp, sp, 10 #update loop 0 counter
                  sltu         t6, s10, gp
                  bne          sp, s11, sub_1_4_0_t #branch for loop 0
                  blt          s1, tp, sub_1_4_1_t #branch for loop 1
                  sra          t3, a4, s9
                  addi         gp, zero, -4 #init loop 1 counter
                  sra          a4, s9, s5
                  srai         t4, tp, 25
                  addi         s3, zero, -13 #init loop 1 limit
                  slli         s0, s1, 4
                  sltiu        t1, t4, -50
sub_1_14_1_t:     slti         tp, ra, 1319
                  xor          a5, t0, tp
                  addi         gp, gp, -3 #update loop 1 counter
                  xor          a7, ra, s10
                  slti         a0, s7, 551
                  addi         t0, zero, 1 #init loop 0 counter
                  addi         s8, zero, 10 #init loop 0 limit
                  ori          a1, a3, 1371
sub_1_14_0_t:     ori          s9, a2, 1047
                  sra          t4, s8, t4
                  addi         t0, t0, 9 #update loop 0 counter
                  bltu         t0, s8, sub_1_14_0_t #branch for loop 0
                  sll          a5, s4, t1
                  bge          gp, s3, sub_1_14_1_t #branch for loop 1
                  ori          t1, t5, -127
                  addi         s0, zero, 5 #init loop 1 counter
                  sltu         t2, s9, a7
                  addi         s8, zero, 13 #init loop 1 limit
sub_1_1_1_t:      nop
                  sub          t1, t0, zero
                  slti         t1, s1, -239
                  addi         s0, s0, 4 #update loop 1 counter
                  addi         s11, zero, 10 #init loop 0 counter
                  srli         t2, a1, 24
                  ori          s10, a3, -970
                  addi         t0, zero, 10 #init loop 0 limit
sub_1_1_0_t:      and          a0, t3, a2
                  and          s2, s6, s2
                  addi         s11, s11, -6 #update loop 0 counter
                  bgeu         s11, t0, sub_1_1_0_t #branch for loop 0
                  slti         sp, a4, -1278
                  slti         s7, s7, 1112
                  and          t5, zero, t0
                  bne          s0, s8, sub_1_1_1_t #branch for loop 1
                  addi         t2, a0, -934
                  addi         s10, zero, 10 #init loop 1 counter
                  srl          s1, zero, a4
                  addi         gp, zero, 20 #init loop 1 limit
sub_1_10_1_t:     ori          t3, tp, -394
                  slt          ra, a4, s2
                  slti         t5, a6, -270
                  addi         s10, s10, 10 #update loop 1 counter
                  addi         a7, zero, 7 #init loop 0 counter
                  addi         t2, zero, -17 #init loop 0 limit
                  slti         t5, t5, -346
                  lui          s2, 357550
                  slt          s5, a5, t1
                  and          s2, t3, s11
                  or           s1, s4, s2
sub_1_10_0_t:     and          s9, s11, tp
                  addi         a7, a7, -8 #update loop 0 counter
                  beq          a7, t2, sub_1_10_0_t #branch for loop 0
                  or           t0, t5, ra
                  bne          s10, gp, sub_1_10_1_t #branch for loop 1
                  slli         a1, a6, 5
                  addi         a0, zero, -8 #init loop 0 counter
                  xori         t4, s3, 960
                  slt          a5, s7, t0
                  xori         a1, s0, 501
                  addi         t6, zero, -9 #init loop 0 limit
                  or           t1, a6, t2
                  andi         s8, t4, 334
sub_1_8_0_t:      and          t0, t5, a5
                  slt          ra, a0, s5
                  slti         s9, t3, 901
                  sll          t5, sp, s4
                  addi         a0, a0, -3 #update loop 0 counter
                  or           a6, s11, s2
                  ori          t5, s9, -1391
                  addi         s9, t4, 250
                  srli         t1, a3, 25
                  sll          tp, ra, s3
                  bge          a0, t6, sub_1_8_0_t #branch for loop 0
                  or           s1, s9, t4
                  addi         s11, zero, -2 #init loop 1 counter
                  addi         tp, zero, -13 #init loop 1 limit
sub_1_11_1_t:     xor          s8, s0, a7
                  addi         s11, s11, -5 #update loop 1 counter
                  or           s7, s1, s5
                  auipc        t3, 768398
                  addi         ra, zero, 8 #init loop 0 counter
                  sub          a1, t1, a0
                  addi         s9, zero, -2 #init loop 0 limit
sub_1_11_0_t:     sub          a3, t1, sp
                  xor          a4, s11, s10
                  add          s8, ra, a5
                  addi         ra, ra, -2 #update loop 0 counter
                  sra          a1, s0, s5
                  beq          ra, s9, sub_1_11_0_t #branch for loop 0
                  or           s8, t2, s8
                  bge          s11, tp, sub_1_11_1_t #branch for loop 1
                  addi         a6, s1, -1237
                  addi         s5, zero, 4 #init loop 0 counter
                  srai         a5, s10, 16
                  sltu         s7, s3, s2
                  addi         t5, zero, 15 #init loop 0 limit
sub_1_9_0_t:      andi         ra, s6, 2008
                  slti         s2, t0, 834
                  addi         s5, s5, 3 #update loop 0 counter
                  slt          a5, sp, a6
                  slt          a0, t2, s5
                  sub          t3, a4, a6
                  bltu         s5, t5, sub_1_9_0_t #branch for loop 0
                  sub          a5, zero, t3
                  addi         gp, zero, 6 #init loop 0 counter
                  xor          a6, a2, t6
                  sll          t5, a5, a0
                  sub          a7, a5, t6
                  addi         a3, zero, 14 #init loop 0 limit
                  and          zero, s1, t1
sub_1_6_0_t:      addi         a0, a5, -224
                  addi         gp, gp, 4 #update loop 0 counter
                  addi         a0, t1, -554
                  addi         s9, a4, -1125
                  srli         s11, t0, 10
                  srai         a6, a0, 5
                  beq          gp, a3, sub_1_6_0_t #branch for loop 0
                  addi         a6, s10, 475
                  addi         tp, zero, 0 #init loop 0 counter
                  srl          t5, s0, gp
                  addi         gp, zero, 15 #init loop 0 limit
                  addi         t3, tp, 1895
sub_1_7_0_t:      ori          a1, t6, -831
                  addi         tp, tp, 5 #update loop 0 counter
                  lui          t0, 272569
                  bne          tp, gp, sub_1_7_0_t #branch for loop 0
                  sra          t2, a2, a0
                  srli         a7, a4, 16
                  nop
                  lui          s0, 955630
                  bge          a7, gp, 6f
                  ori          a5, s6, 980
                  sltiu        ra, t1, -18
6:                sltu         t5, s8, a5
                  slti         s5, gp, -751
                  beq          a0, a5, 14f
                  srli         s0, zero, 5
                  sltiu        s9, sp, 425
                  bgeu         s3, a7, 16f
                  bge          s10, s0, 21f
                  bltu         s8, s3, 24f
14:               xori         s11, a4, -1730
                  or           s11, a2, t6
16:               srai         t5, s10, 27
                  add          gp, s5, s10
                  srai         t2, s8, 17
                  blt          a0, ra, 20f
20:               xor          tp, t5, a7
21:               sra          t3, t1, gp
                  srli         a7, s10, 19
                  addi         sp, s1, -1974
24:               xori         ra, t2, -1840
                  nop
                  sltu         a6, a4, a0
                  or           a5, s0, s6
                  srli         sp, a1, 6
                  sltu         t5, s1, ra
                  auipc        a6, 1003754
                  sltu         t2, t1, s7
                  xor          s7, a5, tp
                  ori          s3, s5, -711
                  nop
                  addi         s3, gp, -492
                  andi         zero, s8, 756
                  and          t3, sp, s8
                  andi         t0, zero, -413
                  ori          sp, s2, 620
                  bge          s2, s3, 53f
                  slti         s10, sp, -1755
                  and          tp, a1, s5
                  and          s7, s2, zero
                  srli         s3, a1, 7
                  xor          a6, t3, t4
                  and          a5, s7, s11
                  nop
                  srli         t2, s1, 22
                  beq          a1, s8, 63f
                  ori          t1, t6, 1305
                  bne          a6, a1, 55f
                  or           a4, t5, t2
53:               xori         s11, s6, -283
                  auipc        a3, 69955
55:               srl          a1, s0, s1
                  srl          s9, s0, ra
                  auipc        s2, 926834
                  sra          tp, t0, t1
                  srai         a4, s1, 25
                  addi         a6, a7, -1928
                  sra          t3, a5, a2
                  ori          t1, s3, 856
63:               srai         s3, a3, 3
                  slli         t6, a0, 13
                  srli         t0, a5, 13
                  xori         s8, s9, 1403
                  bne          t0, a4, 86f
                  addi         a3, s9, -304
                  bge          s4, t3, 85f
                  sll          tp, a5, a0
                  addi         sp, sp, 382
                  slt          t0, s10, a4
                  nop
                  xor          s10, t0, t5
                  blt          ra, s4, 94f
                  srl          s10, s11, t4
                  slt          t2, gp, a6
                  sub          a6, s8, tp
                  bltu         a0, t2, 97f
                  ori          t2, t2, 326
                  slti         s11, sp, -284
                  slti         zero, ra, 509
                  sltiu        s0, s5, 475
                  bltu         a5, s11, 104f
85:               xori         a3, s1, 672
86:               bgeu         s4, s0, 95f
                  auipc        t4, 111374
                  xor          t1, tp, s6
                  beq          t5, a1, 104f
                  slt          tp, a7, s0
                  beq          a2, s0, 97f
                  sub          s9, s0, s2
                  srli         gp, s4, 13
94:               and          a3, t5, s10
95:               addi         t3, s1, 1001
                  bne          s9, s10, 110f
97:               srli         t1, a4, 1
                  srl          t5, a7, a5
                  xori         a7, a6, 1458
                  bne          a1, t5, 101f
101:              xor          ra, sp, zero
                  beq          s1, s4, 121f
                  sltu         s5, t6, s5
104:              sll          t6, a4, t0
                  bge          s2, s10, 118f
                  xor          s2, s1, s7
                  srai         s0, tp, 21
                  and          t1, s5, t6
                  sll          s1, a1, gp
110:              srai         s5, a5, 5
                  slti         s2, tp, 1513
                  add          a5, tp, s9
                  andi         zero, ra, 895
                  bgeu         s1, s0, 129f
                  slti         sp, s5, 613
                  xori         s10, gp, -2006
                  lui          sp, 485325
118:              auipc        s10, 648766
                  xori         a4, zero, 1145
                  lui          a5, 82528
121:              xor          s10, a3, ra
                  ori          s2, s10, -1929
                  lui          s11, 876196
                  ori          s7, sp, -1671
                  auipc        s1, 704680
                  slli         s7, a6, 16
                  ori          s2, a6, 1040
                  beq          s1, a1, 138f
129:              bge          a5, zero, 144f
                  srli         a0, t1, 25
                  addi         s0, s3, -596
                  nop
                  xor          sp, a6, t6
                  srl          s7, s8, t5
                  sltiu        s9, zero, 404
                  bltu         a6, s6, 141f
                  xor          a4, a7, zero
138:              bltu         t4, s10, 154f
                  slt          a3, tp, ra
                  srai         s9, s1, 9
141:              slt          t1, s1, s6
                  srl          gp, t1, t4
                  auipc        a0, 325998
144:              nop
                  slli         s0, t2, 2
                  or           t5, a6, zero
                  bne          ra, t6, 157f
                  and          t3, s8, t5
                  slti         zero, s10, -1171
                  nop
                  sub          a1, a2, s2
                  sltiu        a4, t5, 1321
                  nop
154:              or           tp, s7, s6
                  sub          a6, t3, t3
                  xori         t3, a3, 1372
157:              xor          s9, a4, s5
                  bgeu         t3, zero, 160f
                  blt          s0, s10, 170f
160:              slti         s11, s10, -459
                  and          ra, s4, a5
                  bltu         s4, ra, 178f
                  slli         s9, t5, 27
                  bgeu         s10, s7, 174f
                  bne          s1, t4, 179f
                  ori          s11, t1, 457
                  slli         a7, a1, 13
                  add          s7, a6, s2
                  lui          gp, 632004
170:              sltu         a6, a1, s6
                  sltu         a3, t4, s9
                  or           s9, a2, t5
                  nop
174:              sra          s7, gp, t5
                  la           s9, sub_2
                  and          a0, a4, t3
                  and          a0, t5, s5
                  addi         s9, s9, -49
                  bge          t2, s9, sub_1_j2 #branch to jump instr
                  srl          s1, t2, s6
                  lui          s11, 204898
                  and          a6, gp, s11
                  or           s2, s4, s4
sub_1_j2:         jalr         t6, s9, 50 #jump sub_1 -> sub_2
                  sub          zero, s9, s10
                  slti         s10, a5, -944
                  or           a7, s10, s5
178:              ori          s11, s0, -995
179:              slti         t1, t0, 319
                  slti         gp, a4, 703
                  srai         s1, a3, 1
                  beq          a5, tp, 193f
                  blt          a6, a4, 202f
                  and          zero, a4, t5
                  bltu         zero, a1, 186f
186:              srl          s10, sp, a1
                  srl          t1, t3, s10
                  bne          t4, ra, 203f
                  srl          t0, s10, t2
                  sra          s5, s10, a7
                  sra          t4, s0, a3
                  bge          tp, s3, 201f
193:              sll          a6, t5, zero
                  srai         a7, tp, 18
                  auipc        t5, 617899
                  srli         s5, s0, 14
                  xori         t2, t6, 1559
                  and          a7, s6, tp
                  auipc        a6, 552725
                  slti         t4, a3, 1630
201:              lui          gp, 815838
202:              slli         t6, t1, 6
203:              bne          s3, s7, 216f
                  xor          a1, t2, s11
                  sltu         s8, s1, s3
                  add          a0, s5, s7
                  xori         tp, s1, 862
                  nop
                  slt          sp, a7, a4
                  slti         s5, s0, -1645
                  slli         ra, a1, 3
                  or           a1, s3, t5
                  and          a4, s5, t0
                  auipc        s3, 1038720
                  beq          gp, s6, 219f
216:              and          s10, s10, a3
                  beq          a0, a7, 231f
                  and          a6, zero, s0
219:              and          t6, s4, t5
                  slli         s9, s1, 24
                  or           s0, s11, a4
                  bne          sp, s2, 237f
                  ori          a0, t2, -1514
                  sll          tp, a7, s4
                  addi         t2, ra, 443
                  beq          t1, a6, 246f
                  bltu         zero, s3, 243f
                  sltiu        s10, tp, 670
                  blt          s2, s9, 230f
230:              beq          s4, t5, 248f
231:              andi         a3, a3, -950
                  ori          s7, a4, -29
                  nop
                  slti         a1, a3, -1539
                  xori         a4, s10, -606
                  slti         t1, gp, -1026
237:              nop
                  ori          s2, a7, 899
                  blt          s1, t2, 258f
                  srli         t3, sp, 12
                  addi         a6, a3, -863
                  sra          tp, s9, s5
243:              ori          s11, s1, -122
                  andi         s0, t4, -1650
                  lui          s5, 268290
246:              srli         t6, s5, 10
                  sra          s2, t5, tp
248:              or           s7, a5, s5
                  xor          s7, gp, s9
                  blt          s1, gp, 266f
                  srli         s5, a2, 0
                  slt          s10, gp, s1
                  or           s7, s6, a4
                  srli         t3, t4, 6
                  sll          t2, t4, a5
                  nop
                  andi         tp, t4, -1346
258:              xori         a3, a1, 897
                  sltiu        a1, s1, -927
                  xor          t0, s2, a5
                  sll          t3, t5, s2
                  nop
                  slli         s0, s11, 9
                  srl          s7, a7, a2
                  srl          a1, t2, t2
266:              xori         t1, t5, -102
                  and          tp, s7, s10
                  slt          gp, t6, s8
                  beq          s2, sp, 282f
                  nop
                  xori         s5, t2, 26
                  lui          t1, 195763
                  lui          t5, 748239
                  sltu         a4, s4, gp
                  and          t4, s11, a1
                  slli         a3, sp, 24
                  xori         s8, s5, -1212
                  slt          a6, s9, t1
                  sub          t0, t4, a0
                  srli         s2, s4, 18
                  slt          a5, a0, s8
282:              bltu         a3, a4, 285f
                  srl          s5, s6, s6
                  sltiu        s5, t0, 1477
285:              or           t6, t5, s4
                  sll          t4, tp, t3
                  sltu         s7, zero, t4
                  bge          t4, s1, 293f
                  sub          t4, a3, a7
                  andi         a7, t4, 478
                  srl          s0, sp, sp
                  add          a3, sp, s7
293:              add          gp, t1, t3
                  add          tp, s3, s5
                  bne          ra, s2, 306f
                  and          a4, s10, zero
                  or           s0, t0, s7
                  sub          a6, t1, a3
                  sll          s1, t0, s7
                  beq          a5, t2, 315f
                  srl          s2, a1, t6
                  sll          t6, a1, a1
                  sll          sp, a1, a4
                  bgeu         s4, t5, 323f
                  xori         t4, t1, 990
306:              and          a7, a6, s10
                  addi         t1, t5, -858
                  sll          a1, a2, t2
                  blt          s6, a2, 311f
                  sltu         s10, s7, tp
311:              xori         ra, s3, 1120
                  nop
                  blt          t2, a6, 322f
                  srl          a6, a5, t2
315:              bgeu         t1, s11, 325f
                  xor          t2, s0, s3
                  auipc        a5, 1048143
                  slli         s5, t0, 14
                  sltu         t6, s2, s1
                  xori         a7, t4, -1175
                  or           a0, a7, ra
322:              ori          t4, ra, 930
323:              srl          a0, s1, t3
                  srli         s9, a4, 0
325:              or           tp, s9, s11
                  ori          s8, s1, -574
                  slt          t1, t2, s9
                  sltu         t5, t1, a0
                  srai         t3, s5, 8
                  and          a4, zero, t2
                  bne          t1, s4, 337f
                  ori          sp, a3, -1296
                  sltu         t6, s9, s11
                  addi         a4, a5, 186
                  bltu         a7, s6, 351f
                  bltu         s4, s8, 341f
337:              srli         s7, t4, 8
                  slt          s0, t3, t3
                  bltu         s9, t4, 345f
                  sra          t4, s6, t3
341:              andi         s0, s4, 1892
                  and          s9, a7, t1
                  sra          zero, t2, a0
                  bgeu         s8, s10, 363f
                  addi         s3, zero, -6 #init loop 0 counter
                  addi         sp, zero, -6 #init loop 0 limit
sub_1_2_0_t:      or           t3, s6, a4
                  addi         s3, s3, -6 #update loop 0 counter
                  bge          s3, sp, sub_1_2_0_t #branch for loop 0
                  addi         a1, t0, 298
345:              lui          gp, 269027
                  ori          t4, t6, 211
                  slt          s11, t2, t1
                  ori          s5, s4, 1946
                  addi         t3, zero, -424
                  lui          a7, 1033927
351:              add          gp, t0, a3
                  xori         s3, sp, -556
                  auipc        a3, 3886
                  xori         a0, gp, -341
                  srl          s3, s4, zero
                  bltu         s1, s0, 369f
                  slti         t2, t3, 850
                  sub          t1, s7, ra
                  slt          a3, t6, a7
                  andi         t6, s9, -486
                  beq          s11, a0, 371f
                  slti         a6, s1, -231
363:              lui          a7, 374216
                  nop
                  slti         a6, a1, -1760
                  and          s8, s4, sp
                  xori         gp, zero, -1393
                  lui          t5, 240062
369:              sll          a5, t5, t1
                  sll          a4, t6, s6
371:              bne          tp, tp, 382f
                  sll          ra, s11, s0
                  or           a1, zero, s11
                  xori         s11, s11, -689
                  bgeu         a6, s8, 388f
                  slli         s2, s6, 5
                  and          t6, a3, a4
                  srl          t4, s2, gp
                  or           s1, a0, s9
                  beq          t6, a6, 386f
                  ori          t0, a7, 699
382:              sltiu        t1, s10, 1779
                  addi         s8, s1, 1737
                  blt          s2, t1, 400f
                  bne          a1, t4, 400f
386:              beq          a3, a5, 395f
                  sltu         s2, s10, s1
388:              blt          t4, s4, 403f
                  slt          a5, a5, t4
                  xori         s11, s11, -77
                  nop
                  ori          zero, a6, -636
                  bge          ra, t2, 395f
                  sra          s2, s4, a1
395:              blt          s10, a5, 405f
                  srli         s0, a6, 19
                  bge          a0, ra, 406f
                  blt          t4, t5, 417f
                  bne          a4, t0, 415f
400:              add          zero, s9, s3
                  bne          zero, a1, 402f
402:              bne          t2, a5, 416f
403:              or           s9, s11, s9
                  xori         s5, a3, 1526
405:              blt          a6, a4, 411f
406:              slt          s10, s0, ra
                  bge          a0, t6, 410f
                  lui          t6, 518969
                  beq          t6, s5, 414f
410:              bne          s8, a5, 430f
411:              andi         a1, t5, -1272
                  slt          a0, a6, a4
                  beq          s9, a6, 427f
414:              sltu         ra, a4, a7
415:              bgeu         gp, s8, 419f
416:              sltiu        t5, s2, -1253
417:              bgeu         a0, a6, 422f
                  addi         t1, zero, 8 #init loop 0 counter
                  andi         gp, s0, 197
                  and          s7, s0, a3
                  addi         s0, zero, 17 #init loop 0 limit
                  and          s5, a4, s7
sub_1_3_0_t:      ori          ra, s6, 1892
                  addi         t1, t1, 9 #update loop 0 counter
                  beq          t1, s0, sub_1_3_0_t #branch for loop 0
                  slt          gp, gp, ra
                  andi         t4, t3, 1055
419:              xori         s1, a6, 372
                  addi         t1, s2, -737
                  addi         a6, t4, -734
422:              xori         zero, t5, 1584
                  beq          tp, tp, 438f
                  sll          s9, t6, s8
                  bge          s11, zero, 443f
                  bge          gp, s0, 442f
427:              srli         t0, ra, 6
                  beq          s2, s10, 429f
429:              and          s11, a3, zero
430:              srli         t0, s4, 12
                  slli         a1, ra, 24
                  bltu         s8, s7, 451f
                  add          s5, ra, a0
                  auipc        t3, 841948
                  and          t0, s9, s8
                  sll          a5, a3, t2
                  sub          t5, a7, a7
                  addi         a6, zero, 7 #init loop 0 counter
                  srl          s9, a3, tp
                  sltu         a7, gp, t2
                  addi         a4, zero, 14 #init loop 0 limit
                  ori          t1, s4, 506
                  slti         a7, s7, -317
sub_1_0_0_t:      ori          s11, s4, -923
                  addi         a6, a6, 5 #update loop 0 counter
                  addi         a0, a2, -1329
                  and          t0, t0, a5
                  sra          s2, a0, t2
                  and          a0, t1, a7
                  bltu         a6, a4, sub_1_0_0_t #branch for loop 0
                  slti         a5, s3, 1324
438:              addi         s10, s6, -2001
                  bgeu         s5, s8, 450f
                  bltu         t2, s1, 446f
                  xor          t1, s1, s10
442:              bne          t4, a7, 453f
443:              sra          t4, t5, s2
                  srl          s8, a2, sp
                  xor          a5, t4, zero
446:              andi         tp, t5, -148
                  sra          a7, s9, s1
                  nop
                  beq          s1, t1, 459f
450:              xori         zero, s1, -517
451:              slli         a7, ra, 19
                  blt          s1, a0, 472f
453:              andi         s10, gp, 831
                  sub          s11, s1, s11
                  bge          a0, s10, 469f
                  blt          t1, s1, 465f
                  slli         a3, s7, 2
                  sub          a7, t1, t3
459:              lui          s0, 985552
                  nop
                  sltiu        a5, a0, -1076
                  bne          t3, tp, 472f
                  auipc        gp, 313923
                  sub          t6, t3, sp
465:              xor          t2, a3, a2
                  slti         ra, s7, 1466
                  bgeu         s6, s9, 470f
                  xor          s3, s7, t4
469:              bne          s10, t0, 474f
470:              sll          t4, t4, s6
                  lui          a0, 814574
472:              bge          a5, s2, 491f
                  nop
474:              sltiu        t5, s6, 1922
                  bgeu         s9, s5, 488f
                  nop
                  srli         s10, sp, 4
                  ori          a0, s11, -273
                  bge          s2, gp, 495f
                  ori          a5, t3, 300
                  beq          a6, s11, 496f
                  srl          a7, s3, s10
                  ori          a6, a6, -392
                  slli         t3, a0, 19
                  bge          s7, t4, 494f
                  bltu         a6, gp, 501f
                  sub          s11, t2, sp
488:              bgeu         s5, a5, 499f
                  blt          a4, s1, 491f
                  beq          s5, t6, 491f
491:              bge          s8, a6, 506f
                  sltu         zero, a7, s8
                  or           zero, s8, s10
494:              or           a7, s3, s6
495:              sll          s9, tp, s7
496:              sll          s7, gp, t2
                  srai         t3, ra, 0
                  sltiu        t2, t4, 797
499:              srl          s1, a2, a2
                  bge          t4, a7, 516f
501:              srai         t5, t1, 0
                  xor          s5, t4, s5
                  auipc        a3, 901349
                  srli         sp, s1, 10
                  srli         t6, a0, 27
506:              srli         a4, t4, 30
                  addi         tp, a4, 724
                  andi         s1, t0, 153
                  slt          t5, a1, a2
                  auipc        s1, 252641
                  bne          a2, a3, 512f
512:              slt          t2, a3, a7
                  xori         a6, a0, -351
                  sub          a7, zero, s5
                  bge          t1, t5, 534f
516:              nop
                  and          ra, tp, s8
                  srl          tp, s8, s3
                  slli         s11, t3, 3
                  addi         s3, tp, -159
                  or           tp, a0, zero
                  blt          sp, s1, 540f
                  andi         a3, s3, -1611
                  srli         t3, zero, 8
                  add          ra, s3, a0
                  sll          t6, s2, s0
                  slti         s5, a4, 1018
                  sub          t5, a6, s7
                  nop
                  slti         a0, t1, -9
                  ori          a5, a0, 1897
                  and          t3, s5, s9
                  sra          tp, s2, s4
534:              srl          s8, a2, s4
                  andi         gp, a0, 1644
                  sltiu        a6, zero, 1425
                  bltu         s3, gp, 550f
                  blt          t1, tp, 557f
                  slti         t0, a5, 1382
540:              or           a0, s4, a1
                  auipc        s0, 862910
                  auipc        t3, 983823
                  auipc        a0, 67353
                  add          s8, a0, a1
                  srai         ra, s10, 4
                  and          sp, gp, s11
                  slli         s7, t3, 26
                  sub          t6, zero, s8
                  xori         a7, t1, -957
550:              xori         gp, zero, -1682
                  addi         s3, s11, 949
                  bltu         a7, t1, 566f
                  xori         a3, s1, 790
                  ori          a6, sp, 940
                  auipc        a0, 836858
                  addi         zero, t0, 1275
557:              beq          t2, a1, 573f
                  slt          s11, s5, s8
                  and          ra, a4, tp
                  addi         t4, s6, 1238
                  blt          a3, s3, 566f
                  slti         t1, s1, -759
                  bge          a1, s0, 569f
                  srl          s11, a6, a7
                  slt          a6, a6, t3
566:              xor          a6, a3, s1
                  andi         t6, zero, -1566
                  xori         a0, a6, -1931
569:              beq          s9, s4, 573f
                  lui          t5, 108934
                  sub          s5, a3, t4
                  srli         sp, s1, 12
573:              blt          a4, s1, 576f
                  sra          t4, a5, a6
                  bne          ra, s1, 591f
576:              sltiu        sp, a5, 1667
                  and          s0, s6, s6
                  blt          a3, s4, 591f
                  bge          s10, a6, 598f
                  sll          t0, sp, s0
                  sub          s8, s8, t5
                  xori         s3, a5, 2044
                  and          a3, s5, zero
                  addi         s3, zero, -604
                  slt          s10, t5, t4
                  lui          a7, 237208
                  andi         t4, t2, 596
                  nop
                  bgeu         s7, t0, 600f
                  lui          s10, 469856
591:              slti         a4, t0, -236
                  slli         s3, s7, 14
                  sub          ra, t1, a2
                  bgeu         t6, s10, 614f
                  xori         ra, sp, 220
                  bne          s3, s8, 602f
                  sll          s1, a1, t6
598:              xori         t3, a1, -1428
                  bge          tp, s8, 613f
600:              auipc        a7, 177166
                  and          s8, s0, t3
602:              beq          s3, t6, 617f
                  sltu         s2, t3, a0
                  and          a7, s9, t2
                  srli         t6, a3, 15
                  srl          a5, gp, ra
                  bne          t4, t5, 626f
                  blt          s8, t1, 617f
                  sltiu        t4, s7, 857
                  or           a5, tp, sp
                  or           t3, t1, a3
                  slti         ra, t2, -1649
613:              slli         zero, t2, 17
614:              sltiu        s5, s4, 1745
                  lui          s2, 615476
                  lui          t5, 535477
617:              sub          s5, s0, a2
                  bne          a6, sp, 632f
                  sll          sp, a0, s8
                  bltu         s3, s10, 626f
                  andi         a1, s6, -717
                  bgeu         t6, s5, 631f
                  xori         a6, s11, 1945
                  srai         zero, t5, 21
                  slti         t6, t0, -376
626:              lui          a1, 830671
                  bge          a6, s7, 643f
                  slt          s11, s10, s10
                  ori          a1, gp, -526
                  slti         s9, t3, 308
631:              bge          t3, s3, 649f
632:              xor          a7, s2, s10
                  slli         s5, gp, 24
                  slti         s11, s8, -1814
                  bge          t5, s3, 639f
                  slt          s3, t2, gp
                  andi         t6, a1, -1745
                  add          t1, a2, t3
639:              ori          s9, ra, -1343
                  srai         s2, s3, 7
                  srai         t1, a5, 28
                  bgeu         s11, a1, 643f
643:              lui          t0, 218810
                  sltiu        s2, t0, -109
                  andi         t4, s0, -1674
                  addi         a4, a0, -1222
                  sra          gp, s9, a4
                  bgeu         zero, s7, 661f
649:              lui          s11, 158492
                  nop
                  xor          t2, a7, a6
                  andi         a1, zero, -1012
                  slti         a1, a5, -1521
                  slt          gp, s4, s5
                  sltiu        gp, s6, 1155
                  blt          s8, s4, 658f
                  srai         t4, sp, 30
658:              sltu         t3, zero, sp
                  ori          a3, s9, -1863
                  sll          s0, a4, tp
661:              sltu         s11, a0, zero
                  andi         gp, s0, -414
                  and          a3, s10, s4
                  xori         a1, s3, -1255
                  add          a5, s9, t5
                  nop
                  sra          zero, s3, t4
                  xori         tp, t5, 1964
                  ori          t6, t3, -946
                  and          gp, gp, s6
                  bge          s1, a0, 672f
672:              bltu         gp, s11, 682f
                  or           tp, s7, a1
                  xor          s8, s6, t6
                  srai         s1, tp, 9
                  srli         sp, s7, 22
                  sltu         a4, a4, s5
                  andi         t3, s4, -384
                  beq          s10, s6, 694f
                  auipc        s3, 61812
                  blt          s4, a0, 696f
682:              bne          s8, t6, 701f
                  lui          t2, 870745
                  beq          a2, a1, 689f
                  bge          t0, t2, 690f
                  sub          s7, s7, s11
                  sltiu        a1, s10, -1038
                  bgeu         zero, a3, 704f
689:              nop
690:              lui          zero, 546272
                  add          s7, a4, sp
                  sltiu        s10, s6, -366
                  lui          a3, 137658
694:              bltu         s1, t4, 705f
                  bgeu         a7, a6, 705f
696:              srli         a5, s2, 11
                  ori          s0, t2, 1138
                  srai         tp, s2, 31
                  sub          s8, t6, s4
                  and          sp, a3, a7
701:              slti         t1, t3, -248
                  slti         t6, s6, 1662
                  slti         s2, t3, -1845
704:              bgeu         s1, t2, 720f
705:              bgeu         s8, s3, 710f
                  blt          t5, s9, 721f
                  lui          zero, 944484
                  xori         t5, t1, -1264
                  addi         a0, zero, -10 #init loop 1 counter
                  andi         s9, ra, -893
                  nop
                  slt          s5, t4, zero
                  andi         t5, s11, -1819
                  addi         t3, zero, -1 #init loop 1 limit
sub_1_5_1_t:      xori         zero, a1, -180
                  addi         a0, a0, 10 #update loop 1 counter
                  slli         s11, s7, 22
                  addi         t1, zero, 2 #init loop 0 counter
                  addi         s10, zero, -1 #init loop 0 limit
                  sll          s2, a4, s10
                  sltiu        gp, a5, -2005
sub_1_5_0_t:      slti         t4, s5, -734
                  lui          zero, 7079
                  add          a7, t3, a2
                  addi         t1, t1, -4 #update loop 0 counter
                  srl          a3, t4, a7
                  bge          t1, s10, sub_1_5_0_t #branch for loop 0
                  lui          a3, 438620
                  blt          a0, t3, sub_1_5_1_t #branch for loop 1
                  sltiu        t6, s4, 384
                  slt          s8, a6, a0
710:              and          s7, s4, s1
                  sub          a6, s1, s11
                  srai         ra, s2, 23
                  sra          t1, ra, a6
                  blt          a3, tp, 732f
                  addi         a0, a2, 1073
                  slt          s7, s4, a4
                  slt          s7, ra, ra
                  xori         s3, s10, -66
                  addi         t6, ra, 160
720:              bge          s6, sp, 734f
721:              ori          s7, s10, -818
                  beq          a6, s6, 741f
                  bgeu         s11, a7, 736f
                  sub          t3, s0, s0
                  slt          a4, s4, s6
                  xori         ra, gp, -1926
                  srai         ra, s1, 26
                  slti         a6, s5, 1311
                  sub          ra, s5, s3
                  bge          t6, t3, 732f
                  xori         s11, a6, 1152
732:              bltu         s0, t6, 736f
                  bne          a1, a2, 746f
734:              slli         a0, ra, 0
                  bne          s6, s2, 745f
736:              ori          t6, t1, -421
                  srli         tp, s4, 20
                  blt          t6, a0, 748f
                  slli         t0, tp, 29
                  slt          t0, s1, s4
741:              sll          s10, t3, zero
                  slti         a1, a3, -1596
                  sltiu        t5, a0, 147
                  xor          s3, s7, a7
745:              bltu         a7, s5, 746f
746:              nop
                  add          s2, t5, ra
748:              beq          s3, s7, 762f
                  auipc        gp, 943380
                  slt          t6, s8, a3
                  andi         t6, a1, 1705
                  or           t4, s3, a6
                  lui          tp, 920503
                  bltu         s3, s6, 774f
                  lui          s7, 1013097
                  srli         sp, s8, 17
                  sltu         sp, a6, s8
                  bltu         s2, tp, 774f
                  lui          a1, 150025
                  ori          a4, s5, 1701
                  bne          t2, t0, 762f
762:              beq          s3, s1, 767f
                  andi         s2, s6, 886
                  lui          s5, 881227
                  srli         a6, s8, 28
                  xori         t0, s3, -1534
767:              bltu         s6, a0, 778f
                  bgeu         s4, s8, 774f
                  bge          a2, s1, 785f
                  srai         t6, t4, 31
                  xori         zero, t6, -1398
                  bgeu         s8, t4, 775f
                  srl          a3, t6, a7
774:              srl          t1, ra, s11
775:              srli         ra, s5, 18
                  sub          t1, t0, t0
                  sra          s5, s1, a1
778:              beq          s9, t4, 789f
                  lui          s7, 85861
                  sltiu        tp, gp, -1834
                  or           t3, a3, ra
                  bltu         tp, sp, 801f
                  bgeu         s3, t2, 792f
                  slli         a1, t6, 3
785:              and          s10, s11, s4
                  add          s0, s7, sp
                  lui          a0, 845531
                  xor          t0, a7, a0
789:              auipc        s1, 924407
                  andi         a4, t0, 135
                  nop
792:              sltu         ra, a6, s1
                  xor          s1, s2, a7
                  auipc        s7, 861329
                  nop
                  nop
                  or           t1, a5, s8
                  ori          a6, a2, 598
                  ori          a1, s7, 1017
                  sltiu        t0, s9, 1524
801:              beq          zero, a2, 816f
                  bge          a1, s3, 808f
                  sll          t0, s8, t1
                  beq          a0, t1, 813f
                  lui          s10, 820457
                  ori          t3, a4, 1167
                  add          zero, ra, a1
808:              auipc        t2, 850010
                  sra          s7, s8, t5
                  srli         a6, zero, 19
                  add          t1, t3, tp
                  slt          a0, t6, a7
813:              blt          a3, ra, 832f
                  bge          t6, s9, 829f
                  sra          t4, tp, t5
816:              sltiu        s11, s0, 394
                  ori          a5, a3, 37
                  addi         s10, s4, 712
                  add          t3, s7, t1
                  slli         a5, s7, 30
                  beq          t6, s10, 840f
                  bge          a2, s7, 840f
                  srai         s3, s10, 4
                  srli         a3, s8, 12
                  srl          a3, s5, s6
                  slti         s3, t5, -616
                  ori          a7, t4, 1223
                  sra          s8, a7, s4
829:              lui          s8, 70130
                  ori          zero, a6, 1398
                  bne          sp, gp, 836f
832:              andi         s3, s10, 1379
                  sltu         s1, a3, s0
                  ori          zero, s3, 1541
                  sra          a6, a0, s11
836:              nop
                  nop
                  addi         s10, zero, 0 #init loop 0 counter
                  sll          a6, a6, a2
                  xori         t0, a1, -614
                  ori          t6, zero, -167
                  addi         t2, zero, -6 #init loop 0 limit
                  sub          gp, a4, s1
sub_1_13_0_t:     slt          t4, s2, tp
                  addi         a4, s10, 244
                  add          s1, t3, tp
                  addi         s10, s10, -6 #update loop 0 counter
                  and          t1, s3, a5
                  srli         s0, s0, 24
                  srl          t4, a7, s0
                  srl          tp, a0, s11
                  sra          s11, a7, t2
                  ori          t1, t1, 2014
                  add          ra, s0, s10
                  and          a0, tp, s6
                  beq          s10, t2, sub_1_13_0_t #branch for loop 0
                  auipc        a7, 300809
                  slt          s0, t3, a1
                  auipc        a0, 974464
840:              sltiu        s0, t0, 628
                  or           s9, s8, a3
                  beq          t4, s2, 855f
                  nop
                  srl          t1, s8, s8
                  and          s2, sp, zero
                  bltu         t0, ra, 859f
                  slt          gp, t6, gp
                  auipc        s7, 616603
                  addi         tp, s6, -36
                  ori          s2, t6, -1005
                  sltiu        s10, s4, 1266
                  sra          t5, t2, a4
                  ori          s3, s9, -656
                  sra          t4, s1, zero
855:              bne          s8, ra, 871f
                  srli         sp, sp, 21
                  sltiu        sp, s1, 388
                  slti         zero, sp, -1955
859:              beq          s0, sp, 863f
                  srai         t1, s4, 15
                  bltu         a2, t3, 871f
                  srai         s11, s2, 18
863:              ori          t0, t6, 1049
                  lui          ra, 485592
                  bltu         a3, sp, 874f
                  lui          t0, 680710
                  auipc        t5, 883331
                  slti         s9, t4, 321
                  sra          a0, t1, tp
                  and          s5, t5, t1
871:              auipc        a6, 953645
                  srai         s5, s8, 28
                  auipc        s11, 333465
874:              xori         s8, sp, 547
                  beq          s9, a7, 882f
                  andi         s10, t0, -1844
                  sltiu        sp, zero, -1313
                  sltiu        gp, tp, 1401
                  srl          s2, ra, s2
                  slti         a4, s8, -1615
                  bltu         a4, t3, 882f
882:              sltiu        a4, a0, 58
                  lw           t6, 4(s4)
                  sltiu        t2, a1, -299
                  addi         s4, s4, 32
                  srli         s2, s5, 14
                  and          tp, a5, s0
                  slti         s7, s8, -1007
1179:             addi x11, x31, 1
1179:             jalr x11, x11, 0
sub_3:            xor          a0, s8, s4
                  bltu         t1, gp, sub_3_stack_p
                  sltu         a7, s9, a7
                  nop
sub_3_stack_p:    addi         s4, s4, -28
                  ori          s0, s8, 693
                  sw           t6, 4(s4)
                  slt          gp, a0, s6
                  slli         s9, t1, 28
                  srl          s5, a7, a7
                  addi         sp, a6, 235
                  sltu         sp, t2, s1
                  xori         s11, ra, 1860
                  la           t5, sub_5
                  xori         tp, t4, 75
                  xor          zero, sp, s0
                  xori         a0, s2, 313
                  addi         t5, t5, 788
                  sra          a5, t4, a0
sub_3_j4:         jalr         t6, t5, -787 #jump sub_3 -> sub_5
                  andi         a0, s8, -1372
                  srli         s1, a2, 8
                  add          tp, t5, s9
                  addi         a5, s1, 1399
                  la           t5, sub_4
                  slti         a1, a0, -418
                  addi         t5, t5, -446
                  slt          t0, s9, t4
                  bgeu         t1, tp, sub_3_j5 #branch to jump instr
                  or           s9, s11, a7
sub_3_j5:         jalr         t6, t5, 446 #jump sub_3 -> sub_4
                  bne          s11, s2, 13f
                  bltu         a7, s2, 12f
                  bge          s2, t5, 5f
                  sltiu        zero, s5, 1375
                  srl          a0, gp, sp
5:                addi         s0, tp, 14
                  srl          a6, s11, a7
                  and          a5, t1, s0
                  slt          tp, s1, t2
                  sll          a5, s8, t1
                  auipc        tp, 950754
                  bge          s8, zero, 21f
12:               auipc        zero, 954117
13:               and          s7, sp, a1
                  sltu         t3, s11, a4
                  ori          t1, gp, 986
                  andi         s8, ra, -927
                  nop
                  bltu         s11, a3, 24f
                  slli         a7, s4, 20
                  lui          t0, 350297
21:               slli         s11, s4, 4
                  and          s3, a5, a1
                  slli         a1, s10, 1
24:               sltu         ra, a1, t0
                  slti         a4, ra, -771
                  and          a3, s8, s5
                  sub          s3, sp, sp
                  sltu         s2, a0, ra
                  lw           t6, 4(s4)
                  or           t2, a4, a2
                  addi         s4, s4, 28
                  ori          s2, t2, 872
64:               addi x14, x31, 1
64:               jalr x14, x14, 0
sub_5:            addi         s4, s4, -32
                  addi         s10, s10, 1440
                  auipc        s10, 70224
                  slli         s10, a3, 31
                  sw           t6, 4(s4)
                  nop
                  lui          s7, 487352
                  addi         s5, zero, -4 #init loop 0 counter
                  xor          a6, tp, s6
                  addi         t6, zero, 3 #init loop 0 limit
                  ori          s7, t4, -73
sub_5_6_0_t:      or           a6, s5, a7
                  lui          t5, 49476
                  sub          s0, sp, a4
                  or           t4, t6, ra
                  slli         s7, sp, 6
                  sltu         t2, gp, t2
                  add          t5, tp, a6
                  addi         s5, s5, 3 #update loop 0 counter
                  srl          t3, a6, a3
                  sltiu        a5, a6, -1727
                  andi         t1, a2, -2002
                  ori          t1, t4, 710
                  sra          s1, s9, s11
                  slti         sp, tp, 881
                  bltu         s5, t6, sub_5_6_0_t #branch for loop 0
                  auipc        a1, 675236
                  addi         s7, zero, 4 #init loop 0 counter
                  addi         a5, zero, 16 #init loop 0 limit
sub_5_2_0_t:      xor          a7, s3, t3
                  addi         s7, s7, 2 #update loop 0 counter
                  bltu         s7, a5, sub_5_2_0_t #branch for loop 0
                  srli         gp, t2, 19
                  addi         a7, zero, 4 #init loop 1 counter
                  addi         a0, zero, 10 #init loop 1 limit
                  xori         t0, a7, -1169
                  srl          t0, s10, zero
sub_5_7_1_t:      ori          t5, s9, 263
                  nop
                  add          t0, a3, sp
                  xor          a3, ra, a6
                  xori         sp, a0, -560
                  addi         a7, a7, 3 #update loop 1 counter
                  addi         tp, zero, 1 #init loop 0 counter
                  auipc        s11, 285533
                  slli         ra, s7, 11
                  srli         t4, a2, 16
                  addi         s9, zero, 18 #init loop 0 limit
                  add          a5, gp, s10
                  sltu         a5, gp, s0
sub_5_7_0_t:      addi         s11, sp, 1074
                  addi         tp, tp, 7 #update loop 0 counter
                  andi         a3, a0, -929
                  bltu         tp, s9, sub_5_7_0_t #branch for loop 0
                  sltu         a5, s0, s3
                  auipc        a1, 895480
                  blt          a7, a0, sub_5_7_1_t #branch for loop 1
                  xor          s5, ra, t3
                  addi         a3, zero, 6 #init loop 0 counter
                  andi         gp, a3, 1484
                  add          s9, s4, t4
                  xori         s1, t3, 1152
                  addi         t3, zero, -10 #init loop 0 limit
                  xor          t6, s11, s8
sub_5_9_0_t:      auipc        sp, 997289
                  ori          sp, t1, 1696
                  addi         sp, s7, -1165
                  nop
                  slli         s5, sp, 24
                  slli         a0, sp, 29
                  addi         a3, a3, -2 #update loop 0 counter
                  sra          t4, t4, s4
                  xori         t5, t0, -1132
                  slli         t4, a5, 5
                  slt          s8, a3, s8
                  lui          s7, 423861
                  slli         zero, s10, 23
                  andi         s8, t6, -1764
                  bne          a3, t3, sub_5_9_0_t #branch for loop 0
                  sra          a5, gp, t0
                  addi         s7, zero, 7 #init loop 1 counter
                  srli         s8, s9, 29
                  ori          a1, s6, 1010
                  add          t0, s2, t3
                  addi         a3, zero, 4 #init loop 1 limit
                  sll          s9, a3, s9
                  add          s5, a2, s4
                  nop
                  srai         tp, t2, 13
sub_5_13_1_t:     ori          s1, s1, -517
                  slt          t2, t3, tp
                  sltu         t1, s1, zero
                  addi         s7, s7, -2 #update loop 1 counter
                  xori         s11, t0, 1980
                  addi         t6, zero, 10 #init loop 0 counter
                  nop
                  addi         gp, zero, 10 #init loop 0 limit
                  xori         ra, a7, -1551
sub_5_13_0_t:     ori          a4, gp, -1699
                  sltiu        s3, a2, 1239
                  or           s3, a3, s6
                  sltiu        tp, s5, 1695
                  auipc        s0, 717886
                  addi         t6, t6, -9 #update loop 0 counter
                  bgeu         t6, gp, sub_5_13_0_t #branch for loop 0
                  bgeu         s7, a3, sub_5_13_1_t #branch for loop 1
                  xor          s9, t2, a4
                  addi         t1, zero, 8 #init loop 1 counter
                  xor          zero, s9, a5
                  lui          zero, 485747
                  addi         t0, zero, 5 #init loop 1 limit
sub_5_15_1_t:     add          s1, s11, a7
                  sub          s1, t2, s4
                  srli         tp, s3, 12
                  sub          a3, gp, s4
                  addi         t1, t1, -4 #update loop 1 counter
                  addi         a7, zero, -1 #init loop 0 counter
                  andi         gp, t5, -1567
                  addi         a6, zero, -2 #init loop 0 limit
                  sltiu        a1, s8, -34
sub_5_15_0_t:     andi         t4, a7, -282
                  srai         t5, s5, 23
                  ori          tp, a7, 33
                  ori          gp, a0, -1402
                  add          t6, a1, s11
                  addi         a7, a7, -10 #update loop 0 counter
                  sll          a1, s7, a3
                  srl          tp, gp, t2
                  bge          a7, a6, sub_5_15_0_t #branch for loop 0
                  andi         a3, s2, -1568
                  xor          zero, a5, a0
                  nop
                  xor          a5, t2, s10
                  or           s9, s10, s9
                  bgeu         t1, t0, sub_5_15_1_t #branch for loop 1
                  slli         t4, t6, 25
                  addi         s3, zero, -3 #init loop 1 counter
                  srli         zero, s2, 5
                  addi         a3, zero, 11 #init loop 1 limit
sub_5_16_1_t:     ori          t4, t6, 1076
                  srli         s1, a3, 28
                  srl          s8, a4, t1
                  xori         s1, t2, -754
                  slt          sp, a4, s3
                  addi         s3, s3, 5 #update loop 1 counter
                  addi         s10, zero, 9 #init loop 0 counter
                  addi         a1, zero, 9 #init loop 0 limit
                  sub          sp, a4, a1
sub_5_16_0_t:     and          ra, t1, t5
                  addi         s10, s10, -5 #update loop 0 counter
                  bgeu         s10, a1, sub_5_16_0_t #branch for loop 0
                  sll          ra, s11, a2
                  blt          s3, a3, sub_5_16_1_t #branch for loop 1
                  xor          s0, t0, a7
                  addi         t2, zero, -7 #init loop 1 counter
                  sll          t0, t2, t2
                  sll          t0, t3, s6
                  srai         tp, s7, 3
                  sll          s11, s7, t2
                  xor          s8, t0, t4
                  addi         s0, zero, 11 #init loop 1 limit
sub_5_5_1_t:      lui          zero, 602743
                  addi         t2, t2, 9 #update loop 1 counter
                  sltu         ra, s2, t2
                  lui          t5, 451168
                  srai         a1, sp, 7
                  addi         a3, zero, 6 #init loop 0 counter
                  nop
                  and          a0, t0, s10
                  slt          s5, s10, s1
                  srai         s2, ra, 20
                  xori         s8, s8, -806
                  addi         s10, zero, 12 #init loop 0 limit
                  sltu         s1, a2, s1
sub_5_5_0_t:      and          a6, s5, t0
                  xori         t6, s0, 522
                  add          gp, a3, zero
                  andi         tp, t4, -1749
                  addi         a3, a3, 8 #update loop 0 counter
                  sltu         a7, sp, t4
                  blt          a3, s10, sub_5_5_0_t #branch for loop 0
                  andi         t4, s2, 505
                  add          tp, t1, s5
                  srai         a4, zero, 9
                  srl          a7, gp, s9
                  bne          t2, s0, sub_5_5_1_t #branch for loop 1
                  sub          t1, s10, s0
                  addi         t4, zero, -10 #init loop 1 counter
                  addi         s8, zero, -14 #init loop 1 limit
                  and          s7, s5, zero
sub_5_8_1_t:      xor          s11, s6, s4
                  and          a7, t4, sp
                  and          t1, s5, s10
                  addi         t4, t4, -6 #update loop 1 counter
                  addi         s5, zero, 3 #init loop 0 counter
                  sltu         a6, tp, t1
                  addi         s10, zero, 15 #init loop 0 limit
sub_5_8_0_t:      slti         t3, t3, 1500
                  addi         s5, s5, 6 #update loop 0 counter
                  add          s3, t4, a5
                  bne          s5, s10, sub_5_8_0_t #branch for loop 0
                  bge          t4, s8, sub_5_8_1_t #branch for loop 1
                  sltu         s1, t5, s10
                  addi         a0, zero, 8 #init loop 1 counter
                  addi         s1, zero, 8 #init loop 1 limit
                  nop
                  sra          sp, s0, s5
sub_5_11_1_t:     auipc        a5, 937777
                  addi         a0, a0, -4 #update loop 1 counter
                  auipc        t2, 1011643
                  xor          t3, t5, tp
                  srl          s8, t1, t3
                  sra          s8, a1, a4
                  sltu         a4, s4, s10
                  or           t6, a7, s11
                  addi         s9, zero, -10 #init loop 0 counter
                  addi         s5, zero, 0 #init loop 0 limit
                  srl          a3, t0, s5
                  srl          t6, a6, s11
sub_5_11_0_t:     lui          t0, 523488
                  xor          s0, s4, a6
                  auipc        s7, 934391
                  addi         s9, s9, 10 #update loop 0 counter
                  bne          s9, s5, sub_5_11_0_t #branch for loop 0
                  andi         a6, t2, 751
                  addi         s10, t6, 559
                  bgeu         a0, s1, sub_5_11_1_t #branch for loop 1
                  sll          t0, s3, s2
                  addi         t2, zero, 6 #init loop 0 counter
                  auipc        a6, 259215
                  sra          gp, s4, s1
                  add          a4, a3, s2
                  lui          a4, 789258
                  sub          t6, s1, t4
                  xor          a7, a6, t0
                  addi         s3, s0, 184
                  srl          a4, a7, s4
                  addi         t4, zero, 15 #init loop 0 limit
                  slli         a0, t2, 15
                  addi         s7, s9, 925
sub_5_3_0_t:      xor          tp, a1, s3
                  srai         a5, s0, 12
                  xori         a3, t1, 1031
                  slt          sp, a0, s0
                  add          zero, s9, a4
                  ori          s5, t5, -569
                  sltiu        s11, t5, 566
                  ori          a5, tp, 807
                  srl          s11, t3, s5
                  lui          s1, 692590
                  addi         t2, t2, 1 #update loop 0 counter
                  addi         zero, gp, -1395
                  srai         s8, t2, 30
                  srli         s0, gp, 24
                  srl          s9, s2, s1
                  srli         s10, s10, 0
                  bltu         t2, t4, sub_5_3_0_t #branch for loop 0
                  nop
                  addi         s9, zero, -7 #init loop 1 counter
                  xor          a1, a6, t4
                  ori          a3, s7, 911
                  addi         tp, zero, 13 #init loop 1 limit
                  xori         a1, a5, -1129
                  addi         t2, s0, 1021
sub_5_0_1_t:      andi         s1, s5, 1034
                  slli         t0, zero, 12
                  nop
                  addi         s9, s9, 7 #update loop 1 counter
                  xor          sp, s8, s2
                  add          a0, s7, s1
                  addi         t6, zero, -4 #init loop 0 counter
                  addi         t1, sp, 850
                  andi         ra, s7, 78
                  addi         s0, zero, -11 #init loop 0 limit
                  auipc        t3, 998427
                  andi         s3, t5, -683
sub_5_0_0_t:      and          s1, a2, s2
                  slti         s1, tp, 315
                  addi         t6, t6, -9 #update loop 0 counter
                  bge          t6, s0, sub_5_0_0_t #branch for loop 0
                  add          s8, a3, a2
                  sltiu        t5, s0, -1166
                  slti         s7, a5, -1736
                  blt          s9, tp, sub_5_0_1_t #branch for loop 1
                  ori          sp, t2, 236
                  addi         a0, zero, 9 #init loop 0 counter
                  slt          t6, s4, zero
                  sll          a1, s7, s3
                  xor          a4, a7, t0
                  addi         s11, zero, 11 #init loop 0 limit
sub_5_4_0_t:      addi         s0, s4, 738
                  sub          t4, a7, s4
                  addi         a0, a0, 10 #update loop 0 counter
                  andi         s9, gp, 829
                  sll          t2, s11, s9
                  bltu         a0, s11, sub_5_4_0_t #branch for loop 0
                  and          s2, s10, tp
                  addi         t4, zero, 3 #init loop 0 counter
                  auipc        s1, 934537
                  srai         s8, tp, 5
                  addi         s5, s0, 278
                  sra          s9, t0, s4
                  srli         s10, a2, 0
                  xor          a0, s8, s1
                  sltu         s11, a0, s8
                  srl          s9, t0, ra
                  addi         gp, zero, 2 #init loop 0 limit
                  and          tp, s9, s0
                  or           s9, s0, s9
                  lui          s11, 98497
                  xori         a7, a1, 1492
                  addi         tp, t1, -1090
sub_5_12_0_t:     auipc        s3, 203294
                  addi         t4, t4, -1 #update loop 0 counter
                  auipc        a4, 116694
                  addi         t1, s7, -791
                  slt          t2, gp, a3
                  andi         t1, t0, 344
                  sltu         t6, a7, t5
                  and          t0, s8, t3
                  andi         a0, sp, -1873
                  sltu         s3, t2, t3
                  addi         t5, zero, 1981
                  bgeu         t4, gp, sub_5_12_0_t #branch for loop 0
                  and          s1, a7, t2
                  sll          gp, s8, a0
                  auipc        a4, 67407
                  slti         tp, s2, 1778
                  slli         t4, t2, 19
                  sltu         sp, s4, s10
                  sll          t6, t2, s10
                  bgeu         a5, t1, 7f
7:                srai         s8, a2, 2
                  xor          t3, s7, a1
                  and          a0, ra, t5
                  bltu         a7, t4, 25f
                  sll          t4, a4, a5
                  beq          ra, a0, 19f
                  beq          s9, t1, 30f
                  or           t3, s3, a6
                  xor          s5, a4, t3
                  sltu         ra, a2, t6
                  srai         t6, s7, 26
                  bgeu         a5, t2, 26f
19:               and          s9, s0, a7
                  xor          t5, sp, a1
                  sltu         s7, s8, a2
                  slt          t1, tp, t2
                  and          a3, ra, s6
                  sub          t1, s2, sp
25:               slli         s0, a0, 30
26:               sltiu        t3, s5, 432
                  sltu         s8, a5, a3
                  bge          a1, a6, 32f
                  xori         a3, s2, 1027
30:               auipc        s10, 38273
                  sltu         t0, t2, s10
32:               nop
                  bgeu         ra, tp, 35f
                  sra          s7, gp, t1
35:               sll          t2, s7, s7
                  addi         t0, a6, -506
                  nop
                  slt          s5, a4, a7
                  bltu         a1, t1, 45f
                  auipc        a3, 317727
                  slli         s11, t1, 23
                  slli         s2, a0, 10
                  or           a3, t6, a3
                  blt          t2, s9, 56f
45:               blt          t1, s2, 60f
                  sub          tp, a2, a0
                  sll          a1, t2, t0
                  bge          tp, t5, 64f
                  xor          t1, a1, s3
                  addi         sp, s7, 389
                  andi         a6, a4, 1609
                  srl          s11, s7, zero
                  and          s10, sp, a2
                  beq          s3, a2, 61f
                  srl          gp, a4, t0
56:               srl          s11, s2, a5
                  ori          s3, s6, 1365
                  xori         gp, s4, 1445
                  bge          s4, s7, 62f
60:               auipc        s9, 288892
61:               add          s1, s0, s11
62:               lui          zero, 501748
                  bge          a6, s0, 77f
64:               nop
                  blt          a5, a1, 78f
                  nop
                  andi         a4, s0, -849
                  nop
                  sll          a6, s11, sp
                  nop
                  slti         a1, t5, -729
                  blt          t3, a6, 75f
                  sll          gp, s6, s0
                  or           s1, s8, s1
75:               lui          t3, 772483
                  srli         a3, a1, 29
77:               and          a1, t0, a3
78:               and          t2, s7, a0
                  sra          tp, s4, t2
                  auipc        t5, 541281
                  slli         s8, a2, 3
                  srl          tp, ra, s9
                  or           a3, a2, s5
                  sltiu        a3, a1, -566
                  add          t3, s2, zero
                  and          s11, s6, a6
                  srli         s8, s0, 22
                  addi         s7, zero, 3 #init loop 0 counter
                  addi         s0, zero, -5 #init loop 0 limit
sub_5_14_0_t:     nop
                  addi         s7, s7, -6 #update loop 0 counter
                  bge          s7, s0, sub_5_14_0_t #branch for loop 0
                  sltu         t1, tp, zero
                  addi         a4, a7, -25
                  srai         s10, s0, 15
                  bltu         a5, a6, 93f
                  ori          sp, a5, -1953
                  sra          s10, gp, a4
93:               xori         s10, zero, 1486
                  srl          s7, s8, a6
                  ori          ra, a0, 1692
                  slt          a1, s5, a0
                  srli         t4, s0, 24
                  srai         a4, s4, 23
                  lui          a1, 570579
                  and          a5, t1, t2
                  blt          s8, s5, 118f
                  bne          a0, a6, 115f
                  beq          s3, s7, 108f
                  addi         t4, s10, -1648
                  srai         sp, s11, 30
                  sll          s1, t6, a2
                  addi         s7, a1, -128
108:              add          t4, t4, t6
                  lui          t0, 192771
                  bne          a1, a7, 127f
                  bne          s8, t0, 123f
                  addi         s10, ra, -142
                  andi         gp, s0, -230
                  blt          a5, s3, 124f
115:              srai         t6, a4, 7
                  bge          zero, a0, 123f
                  add          t3, a6, s2
118:              srai         s10, s4, 17
                  bgeu         s10, s10, 132f
                  nop
                  add          t1, tp, a1
                  slti         tp, t2, -767
123:              srai         t2, s6, 31
124:              auipc        t1, 595831
                  sll          s5, zero, t6
                  nop
127:              bne          t1, s9, 136f
                  nop
                  blt          t4, t3, 131f
                  slli         t5, a1, 20
131:              ori          a7, s11, -1374
132:              beq          t1, t3, 140f
                  xor          t1, a5, a1
                  slt          ra, s1, s1
                  bne          gp, a5, 138f
136:              bge          a5, t0, 156f
                  bge          a3, t6, 150f
138:              slli         s11, t3, 21
                  addi         t0, a4, -1841
140:              add          s1, s10, sp
                  ori          a0, a1, 1351
                  xor          tp, ra, t0
                  bge          tp, t1, 146f
                  sub          a4, s6, a3
                  srl          sp, a7, s0
146:              srai         s7, t2, 6
                  sltiu        s11, s8, 1623
                  slli         t6, s7, 22
                  srai         s9, gp, 20
150:              addi         a3, gp, -413
                  or           s5, ra, gp
                  auipc        gp, 508043
                  ori          a6, s7, 494
                  andi         t6, ra, 1666
                  srli         s0, a1, 14
156:              bge          tp, t0, 172f
                  beq          a1, s4, 160f
                  nop
                  or           a5, t4, s11
160:              sll          s1, s7, gp
                  sltiu        tp, s1, 1353
                  andi         s7, t2, -791
                  sra          gp, tp, a4
                  xor          sp, s10, s7
                  andi         a3, s3, 1527
                  nop
                  sra          t1, a0, a6
                  srai         tp, t2, 30
                  slti         t2, a2, 405
                  beq          a2, gp, 176f
                  bne          a6, s11, 181f
172:              bgeu         s5, tp, 187f
                  srai         tp, s3, 5
                  srl          a6, s0, s5
                  bge          zero, s3, 189f
176:              sltu         s0, t5, s9
                  blt          a6, t6, 190f
                  and          a4, s4, a2
                  sll          s9, a5, ra
                  auipc        s3, 838981
181:              lui          tp, 910266
                  bne          t5, s0, 185f
                  add          s9, zero, s8
                  slti         s5, t2, 646
185:              beq          t6, s2, 197f
                  sltiu        t1, s5, -467
187:              ori          a4, s11, 1574
                  ori          a6, s7, 1809
189:              add          a0, s8, t4
190:              srli         s0, t0, 1
                  sltiu        t5, t4, -1536
                  sub          gp, zero, s8
                  srl          t1, s0, a0
                  addi         gp, a2, 396
                  ori          s2, zero, 810
                  sub          a5, s3, s1
197:              slt          a0, tp, s2
                  blt          s8, ra, 206f
                  srai         zero, s4, 27
                  nop
                  addi         s10, zero, -1991
                  xor          ra, t2, t0
                  bge          a3, gp, 205f
                  nop
205:              sltiu        t0, s5, 734
206:              sub          s9, t0, s1
                  andi         t6, t3, -1242
                  beq          s3, a5, 212f
                  sub          s3, zero, a2
                  addi         sp, tp, -1819
                  bgeu         a2, gp, 216f
212:              or           a7, zero, s6
                  sub          s2, a2, sp
                  sltiu        s1, s7, 1979
                  sltiu        zero, t3, 1400
216:              andi         ra, a6, 683
                  blt          t4, a0, 219f
                  xori         a0, a0, 1065
219:              nop
                  xor          sp, ra, a6
                  bgeu         s7, a7, 228f
                  srl          a1, a0, t3
                  beq          t2, s4, 240f
                  sub          t5, s10, a4
                  sra          a1, s10, a5
                  bgeu         t5, s10, 239f
                  slt          ra, gp, ra
228:              addi         s9, t6, 1910
                  xori         s0, a3, -1217
                  xor          s2, s1, s10
                  sra          s1, s1, zero
                  bge          s6, s10, 244f
                  slli         t4, t6, 13
                  auipc        s3, 26065
                  beq          s1, t6, 238f
                  blt          t5, t3, 243f
                  srli         a7, a1, 25
238:              blt          sp, t4, 255f
239:              beq          a1, s10, 259f
240:              xor          t5, s4, ra
                  auipc        zero, 523802
                  ori          sp, t0, -922
243:              bltu         s7, s1, 258f
244:              bne          t3, a1, 261f
                  beq          s2, ra, 252f
                  slti         a6, a4, 1254
                  xori         ra, gp, 8
                  lui          t6, 692479
                  xor          s9, ra, tp
                  sll          s3, s6, t1
                  xori         a6, t4, -667
252:              slt          a1, a2, a6
                  add          a3, s9, ra
                  sra          s0, t5, gp
255:              sltiu        a6, a6, 959
                  blt          s2, zero, 257f
257:              xor          s0, s3, s5
258:              auipc        t5, 82379
259:              sub          t5, s2, sp
                  or           s1, a7, a7
261:              sltu         t5, t6, t2
                  add          s2, a3, s6
                  srli         s5, a4, 23
                  srl          t6, a4, s6
                  sltu         t4, t3, t0
                  sll          s5, s0, s1
                  addi         t2, s6, 1074
                  bge          s1, s10, 276f
                  sll          t1, s5, t5
                  xor          s11, s10, zero
                  bgeu         s4, t0, 280f
                  andi         a0, s5, 2016
                  add          s8, s8, s9
                  ori          ra, s1, -101
                  add          tp, s6, ra
276:              sra          sp, t6, tp
                  bltu         s9, s11, 286f
                  auipc        s10, 65521
                  or           s0, s1, gp
280:              or           t0, s11, a7
                  xor          a4, s3, gp
                  xor          sp, a1, t1
                  andi         tp, zero, -268
                  bgeu         sp, a0, 297f
                  beq          a6, a2, 292f
286:              sltiu        s2, a2, 596
                  addi         t2, s4, -655
                  srl          t1, t1, s6
                  nop
                  bgeu         s8, zero, 305f
                  ori          s7, a2, -1365
292:              sra          t6, a5, t6
                  srai         s5, t3, 23
                  slti         gp, s10, 689
                  bltu         a1, t0, 310f
                  or           a6, s4, t3
297:              add          t5, s11, s11
                  sra          a1, sp, t4
                  srl          t3, a2, t0
                  bne          s5, s1, 304f
                  xor          s8, s6, a3
                  lui          a3, 372643
                  slti         t2, ra, 1102
304:              and          s1, a6, s2
305:              sltiu        t4, gp, 1939
                  or           s7, zero, a3
                  bgeu         a0, a2, 324f
                  auipc        t1, 965996
                  bne          a4, s11, 312f
310:              nop
                  blt          zero, sp, 313f
312:              and          s0, t1, s9
313:              blt          t6, s10, 319f
                  auipc        s0, 12939
                  bltu         s6, sp, 332f
                  bltu         tp, tp, 329f
                  andi         s10, a6, -943
                  sub          s1, s3, s8
319:              auipc        a4, 1015068
                  and          t1, a4, t4
                  blt          sp, s11, 324f
                  srai         s11, s3, 16
                  andi         s2, s3, 1582
324:              sub          gp, a5, t6
                  sltu         tp, zero, s9
                  slli         s5, t1, 4
                  sub          t0, tp, t2
                  srli         a6, t6, 21
329:              nop
                  bge          s9, ra, 338f
                  auipc        t3, 600331
332:              sltu         t4, zero, a5
                  and          s2, ra, t2
                  bgeu         sp, t6, 350f
                  or           t2, t5, zero
                  bltu         a1, s9, 344f
                  sltu         s8, s4, a6
338:              sub          s10, s4, s9
                  srl          a3, t0, a4
                  bge          s1, a3, 347f
                  sub          sp, a5, a1
                  bltu         s4, s3, 362f
                  lui          t6, 355644
344:              sra          gp, s6, t5
                  bge          s4, a4, 362f
                  sub          s9, s3, a5
347:              srli         t5, s2, 15
                  bne          a0, t0, 360f
                  bne          a2, t4, 363f
350:              xor          t2, a7, s6
                  bge          a7, s3, 354f
                  bge          t3, tp, 355f
                  addi         a4, a6, -1977
354:              bne          a2, s11, 356f
355:              andi         tp, t3, -1873
356:              srl          ra, a1, a5
                  xori         a0, s1, -504
                  srli         s10, s1, 1
                  andi         gp, sp, 1021
360:              bge          zero, s9, 361f
361:              sltiu        s8, s4, 610
362:              slt          s3, a4, s3
363:              slli         sp, gp, 17
                  srl          s0, a2, a6
                  sltiu        a4, t0, -1678
                  lui          t0, 805183
                  add          t5, s3, a2
                  sltu         t0, gp, t1
                  and          s8, a4, a3
                  and          t3, s11, s5
                  bge          t4, s8, 383f
                  slt          a6, a0, s5
                  blt          s6, a5, 380f
                  add          ra, s10, s8
                  sll          t2, s3, s11
                  auipc        s11, 157238
                  xor          t1, tp, a0
                  slli         s3, tp, 19
                  srai         t5, t2, 17
380:              addi         s10, a4, 31
                  auipc        t6, 611966
                  sltiu        ra, a1, -1333
383:              sltu         t6, s6, t3
                  sll          gp, s9, s4
                  andi         t3, s2, 1733
                  sra          a0, t4, s3
                  auipc        a3, 241858
                  add          s9, a2, s4
                  xori         a3, s3, 583
                  or           t3, gp, a1
                  nop
                  srai         t3, t0, 8
                  andi         gp, gp, 255
                  nop
                  sltu         s7, a7, t6
                  addi         s0, t1, 616
                  blt          s2, s5, 402f
                  add          t0, s9, s1
                  nop
                  nop
                  lui          s1, 490832
402:              and          s0, s5, sp
                  slli         a5, s5, 4
                  bltu         t6, s5, 417f
                  nop
                  ori          s1, s8, -1057
                  bgeu         a2, t0, 417f
                  auipc        s5, 279696
                  andi         t3, t3, -1060
                  xor          t1, t1, s8
                  or           s0, t5, a2
                  slt          s5, s5, t0
                  andi         gp, gp, -138
                  slli         a6, a0, 30
                  slli         s1, tp, 23
                  ori          s9, t5, -37
417:              bgeu         t2, a3, 422f
                  srli         s9, ra, 6
                  sltu         t5, s8, t4
                  srl          a0, tp, a3
                  slli         t1, s1, 12
422:              sltu         s1, zero, t5
                  slti         sp, t1, -1540
                  bge          s4, s5, 439f
                  andi         a6, s3, 1546
                  slt          a4, s4, ra
                  bltu         a4, s10, 429f
                  xor          ra, s11, s0
429:              sltiu        zero, s1, -720
                  and          a7, a5, a6
                  ori          t0, s11, 1889
                  bltu         s10, a7, 435f
                  xor          zero, s3, s4
                  slt          t1, s4, a0
435:              nop
                  nop
                  lui          t6, 172865
                  addi         s2, s4, -403
439:              sltu         s9, s0, s9
                  slli         tp, s5, 31
                  and          t0, t1, s6
                  blt          t4, a5, 449f
                  lui          t2, 550118
                  sub          a3, s7, a7
                  sub          s1, zero, a4
                  sub          tp, a0, t5
                  srl          t6, s7, s1
                  srl          a1, s6, ra
449:              slt          s0, a3, a7
                  andi         s11, t2, -349
                  addi         t0, s0, -217
                  sub          s10, s10, t3
                  sll          a3, a5, tp
                  slti         sp, a1, 110
                  bge          t0, a0, 461f
                  slli         a6, s2, 9
                  andi         s8, s11, -20
                  auipc        t0, 674143
                  slli         a7, a4, 28
                  blt          ra, tp, 472f
461:              andi         s10, s3, -511
                  bgeu         gp, s1, 479f
                  ori          s10, s11, -762
                  sltiu        s5, a0, 1690
                  lui          t4, 785664
                  bltu         t4, a5, 469f
                  ori          gp, a1, 881
                  slt          s2, a5, a4
469:              sub          a4, s6, s8
                  and          s0, a5, a1
                  ori          s11, sp, 1428
472:              ori          zero, a1, 598
                  nop
                  addi         t1, gp, -1218
                  nop
                  srl          gp, a3, t3
                  bltu         s11, t4, 485f
                  beq          s10, t3, 490f
479:              add          s0, a0, s2
                  and          t5, s11, tp
                  and          ra, s10, a4
                  blt          t6, s5, 485f
                  bgeu         t0, s0, 485f
                  auipc        gp, 947584
485:              srl          a1, a1, zero
                  bltu         s5, tp, 506f
                  xor          tp, a3, t2
                  addi         s0, zero, 9 #init loop 0 counter
                  and          sp, s3, gp
                  sltiu        t1, t2, 475
                  slt          t0, t3, a6
                  add          sp, tp, ra
                  addi         t4, zero, 8 #init loop 0 limit
                  lui          sp, 378044
sub_5_1_0_t:      auipc        a5, 390935
                  addi         s0, s0, -5 #update loop 0 counter
                  slt          tp, t3, a1
                  xor          zero, a6, s7
                  bgeu         s0, t4, sub_5_1_0_t #branch for loop 0
                  xori         t6, a0, -333
                  auipc        a1, 334985
                  lui          a3, 385380
490:              addi         a3, s7, -787
                  bne          t6, t6, 494f
                  slti         a7, s1, 1660
                  bltu         t0, t6, 501f
494:              blt          a5, s3, 495f
495:              blt          a0, s5, 499f
                  bge          s10, t3, 513f
                  beq          t0, t4, 510f
                  srli         sp, a1, 4
499:              nop
                  or           s8, s9, t1
501:              or           s3, s0, t4
                  bgeu         a3, s7, 509f
                  addi         s9, t0, 236
                  sltu         s1, t5, ra
                  beq          s6, s9, 518f
506:              sll          t3, t0, ra
                  and          t4, ra, s3
                  blt          ra, s7, 525f
509:              bgeu         s10, sp, 519f
510:              xor          s5, a1, t2
                  auipc        s5, 259839
                  srli         s5, s6, 21
513:              sll          a6, t3, s8
                  srl          s8, s7, gp
                  add          gp, a5, sp
                  srli         t4, t4, 0
                  ori          a7, a3, 883
518:              sltiu        t2, sp, -1012
519:              bltu         a5, tp, 526f
                  slt          s10, a3, s0
                  and          a5, t0, a7
                  slt          ra, ra, a0
                  addi         a1, a0, 1540
                  or           a5, s7, t2
525:              sub          t6, a4, s0
526:              bne          a4, zero, 535f
                  addi         a1, s2, 1945
                  slti         t3, s11, 1993
                  srli         a5, s11, 29
                  ori          a1, s5, -1265
                  lui          a0, 915340
                  bltu         s8, gp, 545f
                  sra          t1, gp, t1
                  slli         s8, a0, 29
535:              lui          tp, 182869
                  addi         s7, t3, 428
                  lui          s11, 560988
                  and          s10, sp, tp
                  nop
                  nop
                  slli         tp, a3, 1
                  sll          t1, a0, a7
                  srl          t1, a3, s10
                  srli         a0, s3, 30
545:              add          zero, a0, a5
                  sltiu        a3, ra, -460
                  srai         a7, s1, 21
                  xori         s3, s7, -1627
                  srli         s8, s7, 30
                  or           t1, a7, gp
                  and          s1, a1, s2
                  bltu         t2, t6, 568f
                  sra          s1, gp, a1
                  slli         s11, s5, 3
                  nop
                  sra          s0, s6, sp
                  slt          s5, a3, s5
                  bne          s4, s1, 572f
                  bltu         s10, zero, 574f
                  and          s10, a3, zero
                  sltu         t3, s11, s1
                  sltu         s5, t6, s3
                  slti         s2, t4, -545
                  srl          t0, zero, a0
                  lui          a3, 89699
                  sra          s11, a1, s7
                  slli         t1, t0, 2
568:              and          s9, s5, ra
                  addi         zero, t3, -1784
                  andi         s5, s1, 138
                  bge          a0, s7, 588f
572:              bge          tp, t2, 582f
                  bltu         a1, t4, 581f
574:              sub          t4, ra, s7
                  lui          sp, 193188
                  ori          gp, t5, 538
                  bltu         a4, sp, 579f
                  addi         s0, s6, 2034
579:              addi         s9, s11, 1500
                  slt          s5, sp, a0
581:              srl          s8, a1, s4
582:              sltu         s9, s9, ra
                  bltu         s10, a6, 585f
                  sra          t6, s3, t5
585:              add          a7, sp, a5
                  slti         s2, t2, 72
                  lui          s5, 43484
588:              sra          a5, a6, s3
                  sub          s10, s4, t1
                  srli         a6, s4, 8
                  bne          t6, a0, 604f
                  and          t2, s11, s11
                  srli         s5, t4, 6
                  andi         a7, a5, 446
                  xor          s0, a4, zero
                  blt          s0, s11, 611f
                  slti         a6, s2, -1378
                  bne          t4, a6, 599f
599:              srl          a4, s2, s6
                  srli         t5, s5, 26
                  beq          t6, a4, 604f
                  auipc        t1, 908358
                  slli         s5, tp, 2
604:              addi         t3, s11, -198
                  xor          s9, s1, a0
                  add          s3, sp, s8
                  slti         a0, t1, 354
                  ori          s10, t1, 1076
                  sltiu        ra, t1, -918
                  ori          a4, t0, 698
611:              nop
                  bne          a1, a2, 627f
                  add          a6, a6, t6
                  sll          a1, sp, gp
                  sra          tp, gp, s5
                  xor          a3, gp, s10
                  srl          t5, t4, s0
                  ori          s1, a3, 2009
                  sll          zero, s11, a5
                  bge          s5, t0, 625f
                  sltiu        gp, t1, 168
                  sra          ra, s4, s10
                  or           a7, tp, t6
                  lui          t3, 816437
625:              beq          zero, s8, 637f
                  slti         s9, a7, -2037
627:              bgeu         s8, a4, 639f
                  andi         s10, a5, -731
                  srli         s2, s10, 31
                  auipc        s1, 28860
                  slli         gp, a6, 11
                  slli         t6, s4, 12
                  auipc        a0, 685888
                  auipc        t3, 555195
                  andi         s0, a4, -1566
                  lui          t3, 250329
637:              bltu         t1, tp, 653f
                  bne          s1, a4, 646f
639:              sltiu        s1, s1, -1541
                  sltiu        gp, s0, -746
                  srl          a5, s1, s0
                  addi         a3, s1, 1547
                  srli         a1, s11, 18
                  sltiu        s0, s2, 13
                  sra          t2, gp, zero
646:              sub          s0, s11, t6
                  sltiu        a7, s0, -359
                  sub          s1, tp, s1
                  bne          s3, zero, 653f
                  srli         t3, a4, 20
                  lui          s5, 676870
                  beq          s3, a0, 659f
653:              and          s0, ra, gp
                  xor          t3, a6, tp
                  auipc        t3, 804695
                  bgeu         gp, a0, 659f
                  beq          ra, s8, 674f
                  srl          t3, s11, a7
659:              srl          t2, a7, ra
                  xori         s8, s6, -2042
                  bltu         gp, ra, 681f
                  bge          s1, s3, 665f
                  blt          a1, ra, 666f
                  blt          t6, a7, 671f
665:              sltiu        zero, zero, 999
666:              or           t3, a2, a0
                  auipc        s10, 1040301
                  and          tp, s7, t2
                  bltu         a5, a0, 678f
                  slt          s5, tp, a0
671:              srl          t2, a7, t5
                  xori         s2, zero, -1554
                  bltu         a0, s3, 686f
674:              bge          a4, t6, 681f
                  nop
                  xori         t5, s4, 1000
                  sll          s5, a7, s5
678:              srl          s3, t4, sp
                  sltiu        s1, a5, 1230
                  slti         tp, t3, -797
681:              or           gp, t4, s7
                  auipc        tp, 936352
                  sltu         s10, ra, a3
                  andi         a6, sp, -612
                  or           a4, a1, s11
686:              sub          tp, s2, ra
                  srai         a0, a7, 11
                  xor          tp, a4, zero
                  and          t0, a4, gp
                  sltu         s11, gp, s5
                  srli         gp, tp, 25
                  srl          s2, s2, s1
                  xor          a1, s5, s4
                  add          a6, a7, s1
                  slli         tp, ra, 15
                  lui          s8, 592973
                  srai         s0, sp, 3
                  lui          a1, 33628
                  xor          a5, t5, t5
                  xori         a5, s0, 313
                  addi         s9, sp, -1380
                  lui          a0, 906321
                  xor          a1, s0, tp
                  srai         s3, a1, 1
                  beq          t3, a6, 722f
                  slli         sp, a1, 21
                  xor          s11, t3, a7
                  sltiu        t2, s7, 1396
                  bne          t3, s5, 723f
                  or           t2, a1, a6
                  addi         tp, s11, -518
                  auipc        t6, 758849
                  auipc        t3, 454009
                  xori         t0, s1, -79
                  srai         a6, a3, 4
                  srli         zero, t2, 10
                  sll          s3, a1, a0
                  sra          zero, gp, s6
                  slli         a3, a4, 11
                  addi         t2, s7, -1896
                  slti         s0, t6, 866
722:              xori         a0, t5, -1047
723:              andi         a4, ra, -2001
                  sub          a6, s3, t0
                  lui          s3, 84265
                  xor          t4, t6, s2
                  lui          s7, 170824
                  xor          t0, s4, s10
                  srai         a4, a3, 13
                  sll          ra, s7, a2
                  add          s2, s6, ra
                  nop
                  srl          a4, zero, t6
                  sltiu        s2, s10, 413
                  bge          s2, t2, 741f
                  xor          t3, sp, gp
                  add          a3, s11, s11
                  lui          t6, 920293
                  lui          s0, 887747
                  andi         a5, tp, 595
741:              srai         s2, t4, 17
                  auipc        a6, 391621
                  addi         t6, s9, -652
                  srai         a5, s6, 5
                  add          s11, t5, zero
                  andi         s5, s4, 506
                  slt          t5, s1, tp
                  slli         ra, sp, 25
                  srai         tp, s3, 1
                  sub          gp, t3, s0
                  srli         t1, t5, 14
                  nop
                  srai         a7, t3, 13
                  auipc        t0, 635944
                  addi         a3, gp, -754
                  auipc        a5, 145264
                  blt          t3, t0, 770f
                  sll          s11, a0, gp
                  sltiu        s3, s1, 391
                  slti         zero, s3, -36
                  xor          s0, s8, t5
                  xori         t2, s11, -1903
                  ori          zero, s3, -132
                  sltiu        s9, s8, -600
                  addi         s5, a1, -921
                  sltu         a6, t3, s6
                  sll          s3, t3, t4
                  xori         a6, s10, 494
                  auipc        t0, 911351
770:              bne          s1, s7, 773f
                  slt          a5, tp, s6
                  bge          s3, s5, 777f
773:              nop
                  blt          a3, s10, 782f
                  srl          s2, t1, t2
                  bne          a2, gp, 791f
777:              beq          s6, s0, 779f
                  xor          a3, s11, s11
779:              bge          a6, s1, 782f
                  nop
                  sra          a0, s0, a0
782:              sra          a5, s0, a5
                  xor          t2, a3, t6
                  bge          a6, a3, 790f
                  and          t5, s3, t1
                  srli         t2, t5, 28
                  lui          s1, 283086
                  xor          t6, t6, a0
                  srai         a5, a0, 8
790:              sltiu        a6, s2, 926
791:              bltu         t5, a0, 811f
                  slli         s9, t2, 26
                  or           zero, s6, s3
                  sltiu        s3, s5, -181
                  bltu         s6, sp, 798f
                  bne          t1, s8, 813f
                  beq          a0, s9, 801f
798:              srl          s7, s8, zero
                  addi         a1, s0, -8
                  beq          ra, t6, 802f
801:              sub          s2, t6, s0
802:              xori         s10, t6, -203
                  addi         tp, t4, -599
                  beq          a5, a1, 811f
                  sra          tp, s8, a6
                  slt          s5, gp, t6
                  xori         s0, tp, -1921
                  beq          ra, a4, 816f
                  slt          sp, t0, s4
                  xor          t1, zero, s8
811:              or           s5, a4, a5
                  srai         t5, a5, 15
813:              lui          s3, 868523
                  nop
                  bltu         t5, s11, 822f
816:              bgeu         a3, a0, 819f
                  addi         s8, s5, 1039
                  lui          s10, 621930
819:              srl          t5, t2, s7
                  sub          s1, t1, a3
                  srai         s11, a4, 17
822:              sra          t5, t1, s11
                  nop
                  bgeu         gp, ra, 833f
                  and          t6, s6, s1
                  addi         a5, t2, 1821
                  bgeu         sp, a3, 839f
                  sltiu        a7, s4, 1238
                  bne          tp, s9, 845f
                  sltu         t1, zero, t3
                  addi         a3, s10, 1410
                  slli         s9, s5, 11
833:              sltu         ra, gp, tp
                  xori         a7, t1, -1375
                  slt          s2, s6, a5
                  sra          s8, t2, s11
                  slli         zero, s4, 9
                  slt          t0, t1, s1
839:              auipc        s8, 794341
                  bne          ra, s2, 853f
                  sltiu        s7, tp, 1516
                  and          a5, a6, a4
                  auipc        s8, 845204
                  addi         s1, zero, 0 #init loop 0 counter
                  nop
                  lui          t4, 1021213
                  sub          sp, tp, s3
                  slli         a3, s9, 10
                  addi         a7, zero, -20 #init loop 0 limit
                  slti         s7, s9, 379
                  and          t1, tp, a1
                  addi         a1, s8, -385
sub_5_10_0_t:     xori         tp, a3, -139
                  addi         s1, s1, -1 #update loop 0 counter
                  and          s7, s8, a7
                  bge          s1, a7, sub_5_10_0_t #branch for loop 0
                  srli         a0, t1, 12
                  bltu         s2, a1, 851f
845:              sltiu        tp, s7, -512
                  slti         s11, t1, -1185
                  lui          a1, 999583
                  lui          t3, 390495
                  xor          t4, a3, zero
                  srl          s3, s4, t2
851:              addi         s1, s0, 1309
                  slti         tp, s6, 1910
853:              slli         s0, a2, 9
                  sll          a0, s6, t6
                  ori          t1, s7, 1122
                  beq          s0, sp, 866f
                  ori          s0, a3, -682
                  sltiu        a3, t6, -929
                  srli         s3, a7, 7
                  xor          s1, gp, s9
                  slti         t0, tp, 975
                  addi         a0, a0, -1909
                  bltu         t6, a6, 880f
                  or           s5, t3, s9
                  srli         a4, s5, 3
866:              andi         s11, a5, -1346
                  bgeu         t6, a2, 868f
868:              xor          t1, a6, s8
                  sra          s9, t2, t1
                  xori         a0, s8, 525
                  auipc        a4, 527297
                  blt          t2, t4, 887f
                  slt          s5, a0, a0
                  nop
                  lui          tp, 905205
                  andi         t2, s1, -906
                  xori         s0, s8, 1097
                  lui          s5, 454478
                  xori         t3, a5, 1020
880:              andi         tp, s9, -959
                  bgeu         t1, a3, 887f
                  or           a3, s8, s0
                  beq          s7, s7, 887f
                  xori         t3, t6, 1828
                  xori         a5, a5, -513
                  bge          sp, a6, 887f
887:              slti         t5, a0, -1933
                  or           s7, a4, s7
                  lui          s1, 299342
                  add          s3, a6, a0
                  add          a5, s1, s11
                  lw           t6, 4(s4)
                  sltu         a5, a7, sp
                  srai         s10, t5, 22
                  addi         s4, s4, 32
                  add          s10, sp, s6
                  ori          gp, a5, -279
                  slt          a1, t3, a4
                  srli         t0, ra, 5
1258:             addi x31, x31, 0
1258:             jalr x31, x31, 0
sub_4:            slti         a5, zero, -723
                  addi         s4, s4, -56
                  add          t2, a2, gp
                  sw           t6, 4(s4)
                  srai         s9, ra, 20
                  add          a7, s8, a3
                  ori          s7, a0, 1898
                  srai         a4, gp, 1
                  slti         tp, a4, -1298
                  bne          s2, s11, 11f
                  slli         t6, a1, 14
                  xori         t2, s7, -1434
                  slt          s11, s6, t3
                  ori          s7, ra, -904
                  slt          s0, t0, t2
                  blt          tp, s0, 11f
                  auipc        s10, 850786
11:               nop
                  lw           t6, 4(s4)
                  sll          a7, s6, t0
                  addi         s4, s4, 56
                  xor          sp, t2, s3
                  sll          s0, t0, s11
                  sub          s1, gp, t6
                  sll          ra, a7, a6
25:               addi x9, x31, 0
25:               jalr x9, x9, 0
sub_2:            addi         s4, s4, -60
                  addi         s1, a4, -372
                  slti         s7, a2, 372
                  sw           t6, 4(s4)
                  and          tp, s9, gp
                  sub          tp, s6, s7
                  srl          a6, tp, s9
                  xor          s0, t4, ra
                  addi         t2, gp, -456
                  sub          s9, a5, ra
                  bgeu         a6, s6, sub_2_j3 #branch to jump instr
                  sll          t2, t4, zero
sub_2_j3:         jal          t6, sub_3 #jump sub_2 -> sub_3
                  andi         ra, a0, 1904
                  sltu         s2, s10, t1
                  srli         tp, t0, 11
                  blt          s7, s7, 14f
                  srl          t6, a5, t2
                  sra          s9, s8, t3
                  xori         s8, a4, 111
                  slli         t3, zero, 31
                  srai         ra, s8, 13
                  srli         a4, s11, 5
                  sll          t5, ra, t2
                  srli         s3, t0, 25
                  add          t1, s7, t4
                  sub          a4, t1, a4
14:               nop
                  andi         s3, zero, 1667
                  slli         a1, t2, 31
                  lw           t6, 4(s4)
                  slti         s7, sp, -406
                  addi         s4, s4, 60
                  sub          t0, s10, s1
34:               addi x28, x31, 0
34:               jalr x28, x28, 0
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
                  add x12, x20, zero
                  csrr x25, 0x300 # MSTATUS
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 31
                  bne x25, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x26, 0x3 # BREAKPOINT
                  beq x25, x26, ebreak_handler
                  li x26, 0x8 # ECALL_UMODE
                  beq x25, x26, ecall_handler
                  li x26, 0x9 # ECALL_SMODE
                  beq x25, x26, ecall_handler
                  li x26, 0xb # ECALL_MMODE
                  beq x25, x26, ecall_handler
                  li x26, 0x1
                  beq x25, x26, instr_fault_handler
                  li x26, 0x5
                  beq x25, x26, load_fault_handler
                  li x26, 0x7
                  beq x25, x26, store_fault_handler
                  li x26, 0xc
                  beq x25, x26, pt_fault_handler
                  li x26, 0xd
                  beq x25, x26, pt_fault_handler
                  li x26, 0xf
                  beq x25, x26, pt_fault_handler
                  li x26, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x26, illegal_instr_handler
                  csrr x26, 0x343 # MTVAL
                  1: la x22, test_done
                  jalr x1, x22, 0

ecall_handler:    
                  la x25, _start
                  sw x0, 0(x25)
                  sw x1, 4(x25)
                  sw x2, 8(x25)
                  sw x3, 12(x25)
                  sw x4, 16(x25)
                  sw x5, 20(x25)
                  sw x6, 24(x25)
                  sw x7, 28(x25)
                  sw x8, 32(x25)
                  sw x9, 36(x25)
                  sw x10, 40(x25)
                  sw x11, 44(x25)
                  sw x12, 48(x25)
                  sw x13, 52(x25)
                  sw x14, 56(x25)
                  sw x15, 60(x25)
                  sw x16, 64(x25)
                  sw x17, 68(x25)
                  sw x18, 72(x25)
                  sw x19, 76(x25)
                  sw x20, 80(x25)
                  sw x21, 84(x25)
                  sw x22, 88(x25)
                  sw x23, 92(x25)
                  sw x24, 96(x25)
                  sw x25, 100(x25)
                  sw x26, 104(x25)
                  sw x27, 108(x25)
                  sw x28, 112(x25)
                  sw x29, 116(x25)
                  sw x30, 120(x25)
                  sw x31, 124(x25)
                  la x22, write_tohost
                  jalr x0, x22, 0

instr_fault_handler:
                  add x20, x12, zero
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
                  add x20, x12, zero
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
                  add x20, x12, zero
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
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x20, x12, zero
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
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x20, x12, zero
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
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x20, x12, zero
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
