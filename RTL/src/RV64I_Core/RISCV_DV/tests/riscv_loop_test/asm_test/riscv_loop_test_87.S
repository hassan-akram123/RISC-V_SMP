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
                  li x9, 0x40000100
                  csrw 0x301, x9
kernel_sp:        
                  la x11, kernel_stack_end

trap_vec_init:    
                  la x9, mtvec_handler
                  ori x9, x9, 1
                  csrw 0x305, x9 # MTVEC

mepc_setup:       
                  la x9, init
                  csrw 0x341, x9

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x9, 0x1800
                  csrw 0x300, x9 # MSTATUS
                  mret
init:             
                  li x0, 0x91fae482
                  li x1, 0x80000000
                  li x2, 0xd64db6e
                  li x3, 0x0
                  li x4, 0x80000000
                  li x6, 0x0
                  li x7, 0xf0f1ce99
                  li x8, 0x0
                  li x9, 0xee773769
                  li x10, 0xc
                  li x12, 0x80000000
                  li x13, 0xf805b259
                  li x14, 0x6
                  li x15, 0x0
                  li x16, 0xf516a254
                  li x17, 0xfdf5167a
                  li x18, 0x6
                  li x19, 0xfb931d4a
                  li x20, 0x80000000
                  li x21, 0x6
                  li x22, 0x7e47a9b0
                  li x23, 0x6e700b22
                  li x24, 0x9824b78c
                  li x25, 0x80000000
                  li x26, 0x26142aee
                  li x27, 0x0
                  li x28, 0xf062e896
                  li x29, 0xf3bf5660
                  li x30, 0x3
                  li x31, 0x80000000
                  la x5, user_stack_end
main:             lui          sp, 34261
                  la           s8, sub_2
                  srli         s3, t3, 20
                  sll          gp, t1, s11
                  addi         s8, s8, -171
                  sltu         ra, t5, t3
                  slli         a6, sp, 2
                  sub          s6, s6, s10
                  lui          sp, 368376
                  or           s5, s6, t1
                  sub          s7, t1, t6
main_j2:          jalr         t5, s8, 172 #jump main -> sub_2
                  addi         a6, zero, 4 #init loop 0 counter
                  addi         t3, zero, 5 #init loop 0 limit
main_0_0_t:       xori         ra, s9, 1138
                  addi         a6, a6, 4 #update loop 0 counter
                  srli         a3, s2, 31
                  srli         a3, s9, 26
                  blt          a6, t3, main_0_0_t #branch for loop 0
                  sub          s9, t2, t6
                  bltu         s4, s4, 7f
                  sub          t1, a5, a7
                  bltu         s7, ra, 11f
                  addi         s5, sp, -212
                  andi         s8, a3, -1360
                  bgeu         s8, s3, 11f
                  srl          s2, a5, s10
7:                slti         t4, s9, 629
                  addi         s2, s2, 2011
                  lui          a7, 603660
                  sltiu        s0, zero, -1245
                  la           a6, sub_1
                  slti         a0, gp, 466
                  addi         a6, a6, -171
                  auipc        s11, 678588
                  ori          s1, a7, 390
                  slt          a7, s5, tp
                  srli         a0, s1, 7
                  bne          sp, a4, main_j1 #branch to jump instr
                  sra          s11, sp, sp
main_j1:          jalr         t5, a6, 172 #jump main -> sub_1
                  sltu         s5, s8, tp
                  srl          a6, s4, a4
                  bne          s7, a1, 11f
11:               slti         s11, s10, 1113
                  la x26, test_done
                  jalr x0, x26, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            slli         a6, t0, 16
                  xor          a4, a1, s9
                  bgeu         s6, t6, sub_1_stack_p
                  lui          zero, 956880
                  slt          s6, a4, sp
sub_1_stack_p:    addi         t0, t0, -12
                  add          s2, s2, a2
                  sub          t1, sp, t4
                  or           a6, a4, s8
                  sw           t5, 4(t0)
                  add          s7, a1, t4
                  sltiu        s11, sp, -918
                  sltiu        s6, s1, 1907
                  addi         s2, zero, -10 #init loop 1 counter
                  or           t2, t2, t2
                  addi         a0, zero, -16 #init loop 1 limit
                  addi         a6, sp, -29
                  srli         s3, s0, 30
                  srl          s11, s11, s10
                  sltu         gp, t1, s11
                  srai         t3, t1, 28
sub_1_0_1_t:      xori         a6, s1, 1972
                  sll          a3, t5, s9
                  lui          sp, 867833
                  addi         s2, s2, -3 #update loop 1 counter
                  andi         t1, ra, 1999
                  addi         t5, zero, 2 #init loop 0 counter
                  sltu         s3, s9, a0
                  addi         a2, zero, -19 #init loop 0 limit
                  ori          t4, a2, 295
sub_1_0_0_t:      nop
                  sll          s8, a3, s1
                  addi         t5, t5, -7 #update loop 0 counter
                  sltu         s7, s4, t4
                  and          a3, gp, t4
                  beq          t5, a2, sub_1_0_0_t #branch for loop 0
                  srl          s4, ra, s0
                  auipc        s1, 73139
                  nop
                  bge          s2, a0, sub_1_0_1_t #branch for loop 1
                  addi         s0, t2, -1378
                  addi         t1, zero, -6 #init loop 1 counter
                  addi         gp, a3, 1699
                  sll          a0, s4, s3
                  sra          a6, a0, sp
                  sub          ra, t4, s1
                  addi         s11, zero, 17 #init loop 1 limit
                  xori         ra, s11, -865
sub_1_1_1_t:      lui          a0, 685605
                  auipc        s9, 990041
                  and          s5, a7, tp
                  sub          a4, zero, a1
                  auipc        zero, 854096
                  srai         a7, tp, 2
                  addi         t1, t1, 4 #update loop 1 counter
                  and          a3, s9, a5
                  xori         s7, s1, 89
                  nop
                  addi         t5, zero, 4 #init loop 0 counter
                  and          s6, a4, s8
                  addi         s4, zero, 3 #init loop 0 limit
                  slt          a2, a3, t2
sub_1_1_0_t:      xori         s5, t6, 242
                  addi         t5, t5, -2 #update loop 0 counter
                  andi         a6, s3, 927
                  sltu         a3, t4, s11
                  bgeu         t5, s4, sub_1_1_0_t #branch for loop 0
                  blt          t1, s11, sub_1_1_1_t #branch for loop 1
                  xor          zero, s7, t0
                  lui          t1, 390899
                  beq          s7, gp, 5f
                  bne          a7, t3, 22f
                  andi         s5, gp, 315
                  sll          s3, t1, s1
5:                blt          t5, a6, 7f
                  andi         s8, t6, -1627
7:                lui          gp, 1003846
                  bne          t6, t3, 15f
                  bne          t0, t3, 21f
                  srli         ra, a6, 14
                  srl          s4, ra, a2
                  srli         s7, s1, 9
                  bge          t6, t3, 24f
                  slli         s4, t4, 7
15:               andi         a5, a5, 105
                  slt          s2, t2, s2
                  sll          t4, t5, t4
                  bne          s3, s9, 32f
                  slt          s2, gp, s9
                  bne          a2, a6, 25f
21:               bgeu         a2, t1, 34f
22:               blt          t1, a3, 37f
                  beq          a1, t4, 40f
24:               blt          s11, s10, 40f
25:               sltu         s5, s8, s4
                  bltu         gp, s9, 27f
27:               srai         a6, a2, 23
                  bge          a3, zero, 41f
                  beq          s6, a0, 30f
30:               lui          t3, 123070
                  srl          t5, t0, s7
32:               blt          t3, s7, 46f
                  lui          sp, 738583
34:               slti         s1, a6, 1045
                  bne          s4, a0, 43f
                  srl          s1, s7, tp
37:               srl          t6, gp, s2
                  srai         s6, a1, 9
                  sltiu        a2, t5, 175
40:               addi         a2, s11, 1156
41:               auipc        t6, 929929
                  sltiu        t5, s7, -1456
43:               xor          a2, s4, s11
                  addi         t4, a7, -877
                  bge          a5, t4, 62f
46:               srli         a7, t3, 8
                  andi         s0, s9, -2030
                  srli         a7, t1, 19
                  bge          s8, s4, 57f
                  nop
                  slli         s11, tp, 23
                  nop
                  nop
                  slti         gp, s0, -1602
                  sll          a2, t5, a2
                  slli         t2, s8, 25
57:               slli         a5, s1, 11
                  slli         a5, s2, 9
                  srl          s7, t3, a1
                  auipc        s11, 120890
                  xori         s5, a0, -451
62:               srl          a3, a5, t0
                  beq          s1, a3, 72f
                  slt          a2, s3, s5
                  slli         s8, s10, 23
                  bltu         t2, s8, 83f
                  sltiu        t2, a0, -610
                  slt          s6, t4, a0
                  auipc        gp, 35012
                  or           a4, s4, gp
                  andi         s11, a6, 83
72:               addi         s3, a3, -1758
                  sltu         s4, s3, a0
                  sltiu        ra, gp, -160
                  and          s9, s0, s5
                  sltu         a3, t0, a1
                  bltu         a2, s8, 92f
                  sra          s7, t6, t2
                  and          t6, a0, s10
                  slt          t2, tp, a2
                  slti         t5, s11, 678
                  lui          s7, 621720
83:               xor          sp, sp, s9
                  add          a7, s10, a2
                  beq          gp, s3, 88f
                  bge          a2, a7, 90f
                  sub          ra, s1, sp
88:               slli         t6, t3, 10
                  bne          s0, s8, 93f
90:               andi         t1, t2, -1435
                  and          t5, zero, sp
92:               and          a0, sp, a4
93:               xor          a3, a6, s0
                  xori         a4, a6, 1206
                  bge          zero, t4, 103f
                  slti         a7, gp, -916
                  sll          gp, s0, a2
                  andi         s9, tp, -178
                  sll          t5, a6, t2
                  auipc        s5, 901491
                  addi         a6, a2, 109
                  bgeu         s5, s4, 107f
103:              sra          s8, t1, a6
                  xor          gp, ra, t0
                  bne          s4, gp, 119f
                  slt          s5, gp, s2
107:              bne          s11, a1, 125f
                  beq          s10, s5, 123f
                  srli         t5, zero, 25
                  sltu         s11, t6, s0
                  nop
                  srai         t6, a2, 0
                  bne          s10, sp, 117f
                  bne          s11, t6, 119f
                  andi         t5, a7, 1541
                  nop
117:              addi         a6, t3, -117
                  srl          t6, a2, s5
119:              bgeu         ra, ra, 127f
                  bgeu         sp, gp, 127f
                  slti         a2, t3, 1171
                  xor          a3, s11, sp
123:              xori         a6, s9, 15
                  or           a5, a0, a7
125:              bne          s9, t1, 127f
                  addi         t1, t2, -955
127:              sltiu        s2, s7, 608
                  addi         t6, t3, -455
                  nop
                  ori          sp, s11, 326
                  lw           t5, 4(t0)
                  and          s4, a3, t1
                  andi         s3, s11, -1808
                  addi         t0, t0, 12
                  sltu         a3, s5, s11
                  and          a3, t0, a2
                  sub          t3, t2, t3
207:              addi x9, x30, 0
207:              jalr x9, x9, 0
sub_3:            sltu         t4, ra, a5
                  addi         t0, t0, -16
                  sltiu        gp, s7, -308
                  sw           t5, 4(t0)
                  or           s8, s5, t4
                  ori          s1, s7, -1882
                  srl          s6, t2, a7
                  addi         a0, a4, -716
                  sub          sp, t0, t3
                  sltu         s8, a2, zero
                  andi         s1, a6, 1598
                  beq          s7, s11, sub_3_j4 #branch to jump instr
                  srli         t4, s2, 10
                  srai         t1, s9, 1
sub_3_j4:         jal          t5, sub_5 #jump sub_3 -> sub_5
                  sltu         s8, tp, t3
                  la           a2, sub_4
                  slt          s1, a6, s9
                  auipc        t4, 639013
                  sra          s4, t3, t3
                  sll          zero, sp, t5
                  sltu         s5, s6, a7
                  xor          t1, s2, s2
                  nop
                  addi         a2, a2, 265
                  sub          t3, ra, a0
                  and          gp, s0, t3
sub_3_j5:         jalr         t5, a2, -265 #jump sub_3 -> sub_4
                  la           a4, sub_5
                  addi         a5, a6, 1918
                  slti         s7, a2, -706
                  srli         t1, t0, 25
                  addi         a4, a4, -351
                  bge          a2, a5, sub_3_j6 #branch to jump instr
                  srai         s7, t6, 21
                  slti         t2, ra, 927
sub_3_j6:         jalr         t5, a4, 351 #jump sub_3 -> sub_5
                  slli         s11, s0, 29
                  and          tp, ra, t4
                  sll          t3, zero, gp
                  sltiu        s7, t2, 1827
                  sub          zero, s9, a7
                  xori         ra, sp, 489
                  and          a3, t0, tp
                  ori          t4, a6, 379
                  beq          t6, a5, 25f
                  sltiu        zero, t1, 1801
                  srai         s1, s5, 28
                  xori         t5, ra, 958
                  bgeu         s7, s4, 32f
                  srai         sp, s8, 4
                  lui          sp, 942023
                  ori          t5, s0, -453
                  srai         a5, a7, 24
                  sltu         t6, gp, a6
                  add          t2, ra, t1
                  and          a0, tp, t0
                  auipc        t6, 236664
                  slti         s2, a5, 1497
                  srai         a6, sp, 13
                  andi         s8, a6, 1425
                  bgeu         s7, s4, 35f
25:               bltu         a3, s9, 35f
                  srli         s8, t1, 19
                  addi         s1, a1, -729
                  sltiu        s6, t6, -733
                  srli         a0, t1, 12
                  sub          gp, s11, t3
                  ori          s4, a5, 878
32:               slt          t5, s4, a2
                  addi         sp, t4, -781
                  bne          s6, t2, 35f
35:               auipc        t5, 112825
                  addi         t1, t0, 681
                  sltiu        sp, a0, -1029
                  lw           t5, 4(t0)
                  addi         t0, t0, 16
                  andi         gp, sp, -451
78:               addi x12, x30, 0
78:               jalr x12, x12, 0
sub_2:            auipc        s5, 809864
                  addi         t0, t0, -64
                  auipc        s7, 189888
                  sw           t5, 4(t0)
                  addi         a6, s9, 601
                  addi         s11, zero, 4 #init loop 1 counter
                  sltu         t2, s0, s10
                  auipc        t6, 97156
                  addi         a3, zero, 18 #init loop 1 limit
                  add          sp, s5, s9
                  slt          a4, s7, t0
sub_2_1_1_t:      xor          s0, s4, s3
                  addi         s11, s11, 4 #update loop 1 counter
                  srl          s1, t0, a3
                  addi         gp, zero, -10 #init loop 0 counter
                  addi         s7, zero, 17 #init loop 0 limit
                  andi         s8, s1, -433
                  slli         a0, s8, 10
                  sll          sp, a1, s8
                  or           ra, gp, s7
sub_2_1_0_t:      add          a0, s5, zero
                  ori          s5, s5, -1270
                  nop
                  add          a6, t6, a0
                  addi         gp, gp, 7 #update loop 0 counter
                  bltu         gp, s7, sub_2_1_0_t #branch for loop 0
                  add          t2, t5, a7
                  bltu         s11, a3, sub_2_1_1_t #branch for loop 1
                  addi         s0, t0, -1368
                  addi         a5, zero, -5 #init loop 0 counter
                  nop
                  auipc        ra, 20182
                  slti         a6, a4, -1035
                  addi         s7, zero, -20 #init loop 0 limit
                  slti         s1, zero, -1139
                  srl          s5, zero, zero
sub_2_21_0_t:     slti         t6, t3, 201
                  xori         tp, s1, -451
                  addi         a5, a5, -5 #update loop 0 counter
                  beq          a5, s7, sub_2_21_0_t #branch for loop 0
                  and          s5, t5, a3
                  addi         sp, zero, -2 #init loop 1 counter
                  sll          a7, gp, s6
                  ori          a0, a7, -1176
                  slti         ra, t5, -1366
                  addi         a3, zero, 5 #init loop 1 limit
                  xori         a7, s10, 1699
sub_2_29_1_t:     slti         a4, t3, 1953
                  addi         sp, sp, 5 #update loop 1 counter
                  sltiu        zero, s8, -798
                  lui          t2, 523277
                  addi         s5, zero, -9 #init loop 0 counter
                  nop
                  add          a0, s5, s0
                  addi         t5, zero, -3 #init loop 0 limit
                  nop
                  andi         a5, s0, 1771
sub_2_29_0_t:     slt          t3, a0, sp
                  sltu         a6, s1, s1
                  addi         s5, s5, 3 #update loop 0 counter
                  xori         s0, a4, 1271
                  sltu         s2, s7, a1
                  blt          s5, t5, sub_2_29_0_t #branch for loop 0
                  slti         s2, t3, 2031
                  blt          sp, a3, sub_2_29_1_t #branch for loop 1
                  slt          tp, t0, a4
                  addi         s5, zero, -2 #init loop 1 counter
                  srai         a4, a0, 9
                  addi         t5, zero, 3 #init loop 1 limit
                  sub          a3, t1, tp
                  addi         s1, a0, 237
sub_2_23_1_t:     addi         t6, s10, 1273
                  xor          sp, s5, a3
                  addi         s5, s5, 10 #update loop 1 counter
                  or           s7, s3, ra
                  andi         t6, ra, 631
                  addi         s0, zero, -9 #init loop 0 counter
                  ori          a3, s10, 795
                  sltu         t6, s10, a5
                  ori          zero, t0, -980
                  xor          gp, s8, t0
                  xori         s3, tp, 29
                  addi         a6, zero, -9 #init loop 0 limit
                  sltiu        a4, t3, 1373
sub_2_23_0_t:     add          ra, s5, a4
                  sltu         s11, tp, t2
                  sll          gp, s9, s6
                  addi         s0, s0, -6 #update loop 0 counter
                  ori          a7, s8, 144
                  xori         a5, t0, 1649
                  sltu         a3, a4, gp
                  bge          s0, a6, sub_2_23_0_t #branch for loop 0
                  slli         tp, s5, 19
                  nop
                  srli         zero, a5, 5
                  xori         s11, a4, 1590
                  srl          t3, ra, s11
                  andi         a4, a2, -1785
                  blt          s5, t5, sub_2_23_1_t #branch for loop 1
                  sll          t1, sp, ra
                  addi         s2, zero, -6 #init loop 0 counter
                  srl          s7, a5, t0
                  sltiu        t3, s8, 1852
                  add          sp, a0, a4
                  addi         a6, zero, -19 #init loop 0 limit
                  sra          t2, s4, t5
                  slti         a4, a7, -1260
                  auipc        t4, 482336
                  slli         a2, s5, 27
                  slt          t2, sp, s5
                  nop
                  srai         t1, s9, 31
sub_2_15_0_t:     auipc        s1, 56430
                  sltiu        a3, a3, -1416
                  xor          gp, s4, t0
                  addi         s2, s2, -5 #update loop 0 counter
                  srai         a0, a5, 19
                  srai         t4, a7, 7
                  bge          s2, a6, sub_2_15_0_t #branch for loop 0
                  sltiu        sp, s4, -747
                  addi         a7, zero, 1 #init loop 0 counter
                  srl          s3, a7, sp
                  xor          t1, s6, zero
                  ori          s8, a7, -478
                  addi         a0, zero, -10 #init loop 0 limit
                  or           t5, s6, a7
sub_2_10_0_t:     slt          t5, t5, s9
                  addi         a7, a7, -1 #update loop 0 counter
                  add          s6, a5, a1
                  lui          sp, 722142
                  ori          a5, s3, -1076
                  xor          s6, ra, a1
                  srli         zero, t5, 9
                  beq          a7, a0, sub_2_10_0_t #branch for loop 0
                  add          gp, s4, s5
                  addi         ra, zero, 4 #init loop 1 counter
                  sll          a3, gp, sp
                  sll          a0, a0, zero
                  sub          t4, s9, t2
                  slt          s4, s3, a1
                  addi         s6, zero, 6 #init loop 1 limit
                  xor          s3, a6, a5
sub_2_8_1_t:      and          t1, s10, a3
                  xori         t4, s8, 244
                  addi         ra, ra, 2 #update loop 1 counter
                  addi         s0, a6, 2014
                  addi         a6, zero, -3 #init loop 0 counter
                  sltiu        a2, s3, 314
                  slli         a5, a5, 24
                  srli         t4, t1, 1
                  nop
                  addi         s2, zero, -5 #init loop 0 limit
                  and          zero, s11, s6
sub_2_8_0_t:      andi         s4, t2, -1388
                  xor          a3, s3, t5
                  ori          s8, a4, 518
                  ori          t2, s2, 231
                  addi         a6, a6, -6 #update loop 0 counter
                  bge          a6, s2, sub_2_8_0_t #branch for loop 0
                  srl          gp, s1, tp
                  xori         s11, s10, 12
                  srl          t5, s5, s4
                  bne          ra, s6, sub_2_8_1_t #branch for loop 1
                  sub          a4, t5, a2
                  addi         s1, zero, -9 #init loop 1 counter
                  addi         s2, zero, 15 #init loop 1 limit
sub_2_17_1_t:     xori         s11, a4, -1038
                  addi         s1, s1, 6 #update loop 1 counter
                  slti         s5, s0, -573
                  addi         sp, zero, 9 #init loop 0 counter
                  addi         tp, zero, 14 #init loop 0 limit
sub_2_17_0_t:     auipc        a7, 569189
                  srli         s6, s8, 2
                  sltiu        s0, a4, -315
                  addi         sp, sp, 1 #update loop 0 counter
                  blt          sp, tp, sub_2_17_0_t #branch for loop 0
                  and          s11, t5, sp
                  sub          s8, t2, tp
                  blt          s1, s2, sub_2_17_1_t #branch for loop 1
                  sra          ra, t6, s8
                  addi         s6, zero, 8 #init loop 0 counter
                  and          t2, a1, t3
                  sll          s7, tp, s8
                  andi         t1, a1, 1028
                  slti         s0, a2, 1587
                  ori          s8, t4, -503
                  addi         s9, zero, 8 #init loop 0 limit
                  xor          a7, t0, t4
sub_2_14_0_t:     sltu         t3, t6, s1
                  add          a3, t3, tp
                  addi         s6, s6, -7 #update loop 0 counter
                  slt          gp, t4, t4
                  bgeu         s6, s9, sub_2_14_0_t #branch for loop 0
                  sra          t1, a3, s2
                  addi         s7, zero, -1 #init loop 1 counter
                  addi         t5, zero, 2 #init loop 1 limit
sub_2_0_1_t:      addi         s9, zero, -1278
                  addi         s7, s7, 1 #update loop 1 counter
                  xori         s2, t4, -900
                  addi         s6, zero, 7 #init loop 0 counter
                  addi         a5, zero, -4 #init loop 0 limit
sub_2_0_0_t:      lui          tp, 58575
                  sltiu        s4, t0, 1731
                  addi         s6, s6, -6 #update loop 0 counter
                  bge          s6, a5, sub_2_0_0_t #branch for loop 0
                  blt          s7, t5, sub_2_0_1_t #branch for loop 1
                  sltiu        s4, ra, -1560
                  addi         a0, zero, 2 #init loop 1 counter
                  addi         t3, zero, 2 #init loop 1 limit
                  slli         ra, a6, 20
sub_2_4_1_t:      andi         t6, a7, -2018
                  addi         a0, a0, -1 #update loop 1 counter
                  addi         a5, zero, 10 #init loop 0 counter
                  srli         s0, a6, 11
                  addi         s2, zero, 10 #init loop 0 limit
                  addi         s7, s8, -1760
sub_2_4_0_t:      sub          s3, t3, t4
                  addi         a5, a5, -9 #update loop 0 counter
                  bgeu         a5, s2, sub_2_4_0_t #branch for loop 0
                  bgeu         a0, t3, sub_2_4_1_t #branch for loop 1
                  sll          t4, t6, s10
                  addi         ra, zero, 9 #init loop 0 counter
                  nop
                  srli         a3, s0, 24
                  addi         s1, zero, 18 #init loop 0 limit
                  or           sp, t6, s5
sub_2_16_0_t:     xor          gp, s3, a1
                  xor          sp, t2, zero
                  xori         t6, s9, 695
                  addi         ra, ra, 4 #update loop 0 counter
                  xori         t3, t3, -401
                  srl          tp, sp, s3
                  srai         a5, t5, 13
                  blt          ra, s1, sub_2_16_0_t #branch for loop 0
                  sltiu        s11, tp, -513
                  addi         ra, zero, 3 #init loop 1 counter
                  slti         s4, sp, 1195
                  srli         s8, s9, 0
                  srl          t5, a5, t0
                  addi         a7, zero, 15 #init loop 1 limit
sub_2_7_1_t:      or           zero, t6, zero
                  nop
                  addi         ra, ra, 6 #update loop 1 counter
                  sll          s4, s7, s0
                  addi         s11, zero, -6 #init loop 0 counter
                  addi         a0, zero, -11 #init loop 0 limit
                  sra          s7, zero, s7
sub_2_7_0_t:      xor          zero, gp, a2
                  addi         s11, s11, -5 #update loop 0 counter
                  slt          t5, s2, s11
                  sltu         s7, a6, t6
                  xor          zero, s2, a4
                  slt          s7, t0, t5
                  srl          s7, s8, s5
                  bne          s11, a0, sub_2_7_0_t #branch for loop 0
                  add          a6, t4, t6
                  slli         s1, s5, 7
                  add          a2, s6, sp
                  bne          ra, a7, sub_2_7_1_t #branch for loop 1
                  auipc        t3, 761878
                  addi         s11, zero, 7 #init loop 1 counter
                  auipc        t6, 713406
                  addi         a4, zero, 15 #init loop 1 limit
                  sub          a7, t0, s3
sub_2_25_1_t:     sltu         a6, s3, a5
                  addi         s11, s11, 4 #update loop 1 counter
                  lui          s8, 815220
                  addi         s3, zero, -2 #init loop 0 counter
                  xori         t1, zero, -123
                  sll          a0, t1, a1
                  addi         ra, zero, 3 #init loop 0 limit
                  slli         s5, s3, 7
                  auipc        s7, 904174
sub_2_25_0_t:     xori         s7, s11, 1958
                  addi         s3, s3, 5 #update loop 0 counter
                  xori         t3, s10, 1426
                  beq          s3, ra, sub_2_25_0_t #branch for loop 0
                  srai         a0, t2, 21
                  bne          s11, a4, sub_2_25_1_t #branch for loop 1
                  sll          sp, gp, a5
                  addi         s2, zero, 10 #init loop 1 counter
                  addi         s6, zero, 9 #init loop 1 limit
                  andi         s0, a7, 174
sub_2_24_1_t:     auipc        a3, 97289
                  ori          a0, ra, 903
                  addi         s2, s2, -8 #update loop 1 counter
                  addi         t4, zero, 0 #init loop 0 counter
                  sltiu        s9, a0, -1488
                  addi         tp, zero, 18 #init loop 0 limit
                  or           t6, s6, s8
sub_2_24_0_t:     slti         t6, s2, 1607
                  addi         t4, t4, 7 #update loop 0 counter
                  or           s4, a7, s0
                  bltu         t4, tp, sub_2_24_0_t #branch for loop 0
                  or           a0, zero, s5
                  sra          a3, s3, s6
                  bgeu         s2, s6, sub_2_24_1_t #branch for loop 1
                  slt          a4, s4, s1
                  addi         t4, zero, 0 #init loop 0 counter
                  addi         a2, zero, 5 #init loop 0 limit
                  andi         s2, s8, 1100
                  and          a0, s2, a4
                  xori         s8, s3, 691
sub_2_27_0_t:     andi         s5, s4, -615
                  sltu         s3, s7, a0
                  srl          s2, a7, ra
                  addi         t4, t4, 1 #update loop 0 counter
                  srai         s1, tp, 30
                  addi         zero, a2, 767
                  xor          s3, s5, s8
                  bltu         t4, a2, sub_2_27_0_t #branch for loop 0
                  sltu         s0, a4, t6
                  addi         a4, zero, 1 #init loop 1 counter
                  and          a6, s5, s7
                  slli         s2, s3, 25
                  srli         s8, s0, 31
                  srli         a2, a2, 11
                  srl          sp, s1, s6
                  slli         a6, a1, 9
                  lui          s4, 857151
                  slti         t2, tp, -1916
                  addi         t6, zero, 13 #init loop 1 limit
                  nop
                  auipc        a7, 968080
sub_2_11_1_t:     andi         t2, s3, -1285
                  xori         s8, a5, 1077
                  addi         a4, a4, 2 #update loop 1 counter
                  ori          s4, a4, 47
                  and          s7, tp, t3
                  srl          s11, sp, t4
                  addi         s0, zero, 3 #init loop 0 counter
                  addi         t5, zero, 3 #init loop 0 limit
                  and          s5, s1, a4
sub_2_11_0_t:     lui          a0, 895510
                  sll          ra, s7, s2
                  addi         s0, s0, -2 #update loop 0 counter
                  add          a6, t0, a3
                  bgeu         s0, t5, sub_2_11_0_t #branch for loop 0
                  lui          tp, 132086
                  srli         ra, s0, 4
                  sltiu        s2, s9, -799
                  auipc        a3, 208143
                  bltu         a4, t6, sub_2_11_1_t #branch for loop 1
                  sra          s2, t5, tp
                  addi         t6, zero, 10 #init loop 1 counter
                  auipc        t4, 287203
                  slt          t3, zero, sp
                  srai         a2, a6, 23
                  srl          a5, t4, t4
                  addi         a0, zero, -8 #init loop 1 limit
                  srl          t5, t5, s6
                  xori         s8, s3, 403
                  sra          s8, s2, t6
sub_2_30_1_t:     andi         s3, sp, -249
                  and          t4, t1, a4
                  addi         t6, t6, -6 #update loop 1 counter
                  sltiu        s5, s8, -524
                  auipc        t1, 967089
                  add          s9, t1, a5
                  sltu         tp, tp, s0
                  srli         s0, s6, 27
                  addi         s7, zero, 9 #init loop 0 counter
                  sub          t1, a3, t2
                  addi         s11, zero, 9 #init loop 0 limit
                  sltu         a5, a0, t3
                  sltiu        sp, s3, -1064
                  and          s1, a1, t6
                  sll          a5, s4, s1
sub_2_30_0_t:     sltiu        s6, a1, 1362
                  addi         s7, s7, -6 #update loop 0 counter
                  srai         s4, s1, 3
                  add          s2, s6, ra
                  nop
                  bgeu         s7, s11, sub_2_30_0_t #branch for loop 0
                  auipc        s2, 980447
                  bne          t6, a0, sub_2_30_1_t #branch for loop 1
                  srl          s6, a6, t4
                  addi         s8, zero, -7 #init loop 1 counter
                  slt          a0, t5, s7
                  auipc        gp, 760906
                  slt          gp, s8, t3
                  or           a2, t2, a6
                  xor          s7, t4, t4
                  lui          a4, 480425
                  srli         s6, s7, 0
                  or           s2, a3, gp
                  addi         a6, zero, -8 #init loop 1 limit
sub_2_18_1_t:     or           s4, s4, t3
                  slti         s3, s5, -1604
                  addi         s8, s8, -2 #update loop 1 counter
                  sltiu        t2, s11, 1214
                  sub          a3, a0, s6
                  addi         s9, zero, -1 #init loop 0 counter
                  addi         t5, zero, -6 #init loop 0 limit
                  xor          s3, s10, t6
                  sltiu        t1, s1, -2021
                  slt          t4, s11, t5
sub_2_18_0_t:     sltiu        t3, s2, -956
                  xor          gp, a1, s0
                  addi         s9, s9, -4 #update loop 0 counter
                  sltiu        s1, t4, 39
                  bge          s9, t5, sub_2_18_0_t #branch for loop 0
                  bge          s8, a6, sub_2_18_1_t #branch for loop 1
                  lui          s11, 450536
                  addi         t2, zero, -5 #init loop 0 counter
                  auipc        gp, 395824
                  addi         t5, zero, 9 #init loop 0 limit
                  xor          s5, s8, a2
sub_2_22_0_t:     slt          a3, a6, s8
                  sltu         s9, s4, a2
                  ori          s3, s5, 1162
                  addi         t2, t2, 4 #update loop 0 counter
                  slt          s1, t6, s0
                  xor          a3, t2, s0
                  bltu         t2, t5, sub_2_22_0_t #branch for loop 0
                  srli         s6, s7, 27
                  addi         s2, zero, -9 #init loop 1 counter
                  addi         t5, zero, 19 #init loop 1 limit
                  ori          s9, s3, -1705
sub_2_28_1_t:     slt          s5, s7, s11
                  addi         s2, s2, 1 #update loop 1 counter
                  or           a2, t1, sp
                  slti         t6, a3, 493
                  slli         t1, a0, 28
                  addi         a5, zero, 9 #init loop 0 counter
                  xor          s6, s5, a6
                  addi         gp, zero, 9 #init loop 0 limit
sub_2_28_0_t:     ori          s5, s5, -1855
                  addi         a5, a5, -7 #update loop 0 counter
                  sra          t1, tp, s0
                  xori         s6, a4, -1117
                  auipc        s4, 972717
                  bgeu         a5, gp, sub_2_28_0_t #branch for loop 0
                  xori         s1, t1, 755
                  slli         tp, s11, 25
                  beq          s2, t5, sub_2_28_1_t #branch for loop 1
                  sub          sp, t6, gp
                  addi         t2, zero, 9 #init loop 0 counter
                  slli         t1, tp, 4
                  addi         ra, ra, 574
                  nop
                  and          t3, s3, s8
                  slt          s8, s10, s7
                  addi         s9, zero, 4 #init loop 0 limit
                  sltiu        s3, t2, -855
                  slli         t5, gp, 5
                  sltiu        t6, a6, 775
                  sll          sp, s6, t0
sub_2_20_0_t:     ori          gp, t0, 361
                  srli         t4, s8, 28
                  and          gp, a3, s10
                  srli         ra, s10, 28
                  slti         t4, s6, -831
                  addi         t2, t2, -1 #update loop 0 counter
                  srl          s8, t4, a1
                  bgeu         t2, s9, sub_2_20_0_t #branch for loop 0
                  add          tp, s9, s7
                  addi         gp, zero, -4 #init loop 1 counter
                  nop
                  and          s6, a7, a7
                  addi         s3, zero, -11 #init loop 1 limit
                  andi         s6, a0, 1528
                  slli         a7, t4, 29
                  srli         a4, s9, 22
                  lui          ra, 124775
sub_2_26_1_t:     xor          s7, a1, zero
                  addi         gp, gp, -8 #update loop 1 counter
                  srli         t4, sp, 18
                  sub          sp, s4, s4
                  sub          t3, ra, s9
                  addi         s11, zero, -4 #init loop 0 counter
                  ori          s6, s1, -1810
                  sltiu        zero, a0, -591
                  addi         s2, zero, 9 #init loop 0 limit
                  sub          s9, s7, a2
                  nop
sub_2_26_0_t:     lui          a6, 171671
                  andi         t6, s8, 790
                  addi         s11, s11, 5 #update loop 0 counter
                  add          s1, t3, a0
                  sltu         t5, s4, a3
                  sub          sp, s6, s10
                  srli         s8, s3, 29
                  blt          s11, s2, sub_2_26_0_t #branch for loop 0
                  ori          a6, t2, 1180
                  lui          a6, 505429
                  ori          a0, t3, -696
                  bge          gp, s3, sub_2_26_1_t #branch for loop 1
                  nop
                  addi         s8, zero, -2 #init loop 0 counter
                  auipc        s4, 301975
                  xor          s3, s6, a1
                  addi         s11, a4, 687
                  and          a2, s6, ra
                  addi         a3, s0, 1422
                  xori         t3, a2, -1380
                  sub          a6, sp, a3
                  or           s4, a3, t5
                  sub          a6, t6, t0
                  xori         t5, s9, 1400
                  andi         a4, sp, -430
                  srai         ra, t2, 20
                  slli         t4, zero, 12
                  srl          tp, zero, t0
                  srai         a2, s9, 5
                  addi         t2, zero, 19 #init loop 0 limit
sub_2_3_0_t:      xori         zero, t1, 105
                  srl          s5, a2, zero
                  slli         gp, a0, 26
                  nop
                  xori         gp, s5, 565
                  xori         tp, a4, -795
                  addi         s8, s8, 5 #update loop 0 counter
                  or           s2, zero, tp
                  and          s6, s3, s6
                  bltu         s8, t2, sub_2_3_0_t #branch for loop 0
                  xor          t5, a4, a4
                  sltu         a7, s7, a5
                  srli         s4, a2, 28
                  andi         s6, s0, 1748
                  xori         s1, zero, 1866
                  sll          s2, t1, zero
                  bgeu         s3, t4, 6f
6:                slli         s8, t1, 14
                  sll          a0, a1, tp
                  and          s4, s8, a3
                  sltiu        s7, s10, 580
                  bgeu         sp, a1, 24f
                  slti         s8, s11, 1421
                  bgeu         a5, t3, 31f
                  sltu         a2, s2, s0
                  blt          zero, s11, 17f
                  sra          s1, s6, s1
                  andi         gp, s11, -897
                  addi         ra, zero, 2 #init loop 0 counter
                  sltu         a5, tp, a0
                  nop
                  sll          t3, zero, t1
                  nop
                  and          sp, s11, s2
                  sra          s1, a6, ra
                  addi         s4, s2, -1446
                  slt          s8, a7, t5
                  auipc        a4, 663305
                  lui          a4, 678039
                  andi         t4, tp, 1243
                  lui          s3, 94857
                  addi         t6, zero, 12 #init loop 0 limit
                  srl          t4, a7, a4
                  srai         tp, t1, 22
                  slli         a7, s4, 12
                  add          a4, s8, a0
                  add          s2, t2, a1
                  auipc        t3, 143742
sub_2_31_0_t:     auipc        s6, 433097
                  addi         ra, ra, 5 #update loop 0 counter
                  sltu         gp, t1, s10
                  lui          s7, 551100
                  or           s6, s0, s0
                  auipc        t5, 218441
                  slti         t4, s6, -520
                  slt          t4, s8, a2
                  blt          ra, t6, sub_2_31_0_t #branch for loop 0
                  add          a5, s3, t1
17:               sltu         s8, a1, s5
                  or           gp, a0, t1
                  srl          s4, s2, gp
                  slli         zero, a3, 31
                  xori         a2, tp, 1245
                  beq          ra, ra, 41f
                  add          a0, sp, s8
24:               andi         s5, s3, 1317
                  sltiu        gp, a6, 806
                  lui          a4, 838495
                  lui          a3, 838332
                  slti         s6, t1, -1468
                  sra          s2, a1, s9
                  bge          s8, t1, 40f
31:               xor          s2, a1, t2
                  addi         s9, t2, 1821
                  beq          ra, a5, 50f
                  andi         s7, s10, -1717
                  ori          t3, t5, 779
                  srai         tp, tp, 30
                  lui          ra, 696527
                  bge          a6, tp, 45f
                  ori          s9, t3, -1759
40:               addi         a7, s3, 975
41:               sltiu        s5, t4, -363
                  slti         s6, a4, 1419
                  bgeu         gp, s10, 54f
                  srli         t3, a7, 16
45:               srli         a4, s3, 23
                  sub          a2, t2, a6
                  sll          s0, a7, zero
                  srai         a2, a1, 15
                  sltu         a3, s9, s10
50:               bge          tp, a2, 61f
                  slli         t5, a2, 30
                  and          sp, s8, t3
                  slt          s7, tp, s10
54:               nop
                  xori         s7, s6, 887
                  sltu         t3, a1, t3
                  auipc        s1, 936788
                  slti         a4, t6, 262
                  ori          t6, a3, 1533
                  sltu         s0, zero, a0
61:               blt          gp, s3, 72f
                  add          s4, s3, s5
                  beq          a1, a1, 73f
                  xori         t1, tp, 321
                  bltu         s5, s4, 76f
                  bne          s11, s1, 79f
                  andi         a7, s3, -853
                  sra          s2, ra, t6
                  nop
                  srai         gp, t2, 11
                  add          a7, a4, s0
72:               bge          s3, s10, 73f
73:               slli         t1, t4, 6
                  srai         s2, t0, 16
                  bltu         s11, t6, 76f
76:               xor          s4, t1, s2
                  xor          s7, tp, sp
                  auipc        s9, 712697
79:               addi         ra, a1, -370
                  slt          a3, a2, s9
                  nop
                  srli         t4, s6, 1
                  ori          t2, s8, 919
                  srli         t4, a3, 11
                  lui          tp, 152494
                  blt          s9, t3, 98f
                  add          t5, s10, s4
                  add          s3, a2, t4
                  srai         t2, a0, 21
                  beq          a3, a5, 105f
                  bne          t2, a2, 110f
                  or           t3, zero, s0
                  auipc        a6, 578224
                  slli         ra, gp, 2
                  bgeu         zero, a5, 109f
                  slti         a7, s0, 1314
                  andi         zero, s4, 511
98:               lui          s9, 734444
                  ori          a0, a3, -1313
                  srl          s6, a1, s6
                  or           s7, tp, t4
                  sra          s7, a0, a0
                  addi         s11, t4, -1071
                  ori          a6, s8, -654
105:              bne          s2, sp, 114f
                  nop
                  bltu         t6, a1, 116f
                  lui          s8, 347242
109:              srli         sp, t5, 17
110:              xori         gp, s8, 1354
                  xori         s2, t6, -864
                  add          a4, zero, t2
                  xor          sp, s8, t4
114:              add          ra, a4, s2
                  beq          t3, s8, 134f
116:              ori          s1, gp, 1411
                  add          s7, s2, a5
                  srl          a7, tp, s2
                  blt          s8, t4, 127f
                  sll          s8, a5, t5
                  nop
                  add          a6, t3, ra
                  ori          t5, s5, 1874
                  slli         s2, t2, 20
                  nop
                  xor          a5, s11, a3
127:              or           ra, a4, s4
                  bne          zero, ra, 129f
129:              bge          gp, t1, 142f
                  auipc        gp, 89817
                  xori         t1, tp, 1050
                  slli         s7, ra, 5
                  add          s5, a2, zero
134:              sltu         zero, zero, a6
                  addi         a4, zero, -3 #init loop 1 counter
                  sra          s8, ra, a2
                  addi         s3, zero, 19 #init loop 1 limit
sub_2_19_1_t:     lui          t3, 439109
                  srai         zero, s7, 30
                  addi         a4, a4, 8 #update loop 1 counter
                  addi         tp, zero, -7 #init loop 0 counter
                  addi         a2, zero, 10 #init loop 0 limit
sub_2_19_0_t:     lui          t1, 612254
                  addi         tp, tp, 6 #update loop 0 counter
                  blt          tp, a2, sub_2_19_0_t #branch for loop 0
                  xor          s7, s3, s7
                  blt          a4, s3, sub_2_19_1_t #branch for loop 1
                  srai         s2, t2, 25
                  xor          s3, s2, s1
                  slt          t3, tp, s10
                  slti         s11, t3, 285
                  bltu         s11, s11, 141f
                  sll          s6, s7, zero
                  srai         a3, t4, 2
141:              nop
142:              andi         gp, a3, 1731
                  srl          a0, t5, a3
                  sll          s7, a3, t0
                  sll          s2, s2, s2
                  add          s4, t3, a5
                  andi         s0, a3, -492
                  sll          sp, t4, zero
                  andi         zero, t3, -102
                  slli         t4, s5, 21
                  ori          s11, t5, -2016
                  and          a7, t2, t2
                  xori         ra, t5, 1979
                  sub          s0, s4, s2
                  sltu         s8, a1, ra
                  bltu         s5, zero, 172f
                  sltiu        s6, t1, 1826
                  addi         a5, s11, 809
                  slli         t5, gp, 9
                  beq          s4, a4, 168f
                  ori          s1, s11, -76
                  andi         a4, a1, -1826
                  sltiu        a6, a3, -173
                  or           t1, a2, s7
                  blt          s6, s11, 167f
                  nop
167:              srli         s11, t1, 13
168:              auipc        t5, 83469
                  bltu         s11, a5, 170f
170:              or           ra, t6, a6
                  sub          t2, s11, s2
172:              xori         a5, a4, -445
                  sltu         tp, a5, t5
                  xori         sp, s1, 306
                  addi         s4, s9, 1373
                  bne          a3, t3, 188f
                  bge          s3, t4, 196f
                  sltiu        gp, a5, 2025
                  srl          a2, t6, a4
                  xor          s4, s1, s8
                  slt          a5, s7, s3
                  srli         s1, a2, 28
                  xori         s1, ra, -1702
                  lui          s8, 127132
                  andi         t2, s11, 807
                  bgeu         s2, a4, 188f
                  beq          zero, s3, 188f
188:              or           s0, a1, a3
                  xori         s1, s10, 181
                  beq          s0, s9, 193f
                  srl          s11, ra, s2
                  srai         t4, tp, 27
193:              andi         t2, s3, -2043
                  andi         s5, t4, 1066
                  srl          a6, t3, t5
196:              and          a2, a0, a0
                  add          a7, a5, s1
                  addi         a7, tp, 397
                  xori         t5, s10, -1061
                  srai         a3, t4, 16
                  xor          t1, a5, a6
                  lui          a3, 674683
                  andi         s11, a0, 912
                  bge          a3, zero, 223f
                  beq          t6, a3, 215f
                  blt          s7, s2, 225f
                  beq          t5, a6, 210f
                  sub          s3, s5, a3
                  srai         zero, a5, 30
210:              bne          s10, s2, 221f
                  slt          tp, gp, a5
                  sra          s0, s1, zero
                  and          s6, s1, s9
                  slti         s1, s4, -757
215:              sltiu        s3, a5, 649
                  bgeu         s6, a6, 225f
                  xor          a6, a7, a1
                  srli         tp, a0, 21
                  add          s6, a5, t1
                  srai         s1, gp, 26
221:              blt          tp, s9, 235f
                  xor          a3, t0, t6
223:              sltiu        a7, t6, 1298
                  slti         t5, s8, -1568
225:              beq          a6, s11, 235f
                  bne          s1, a5, 234f
                  add          s2, t6, s8
                  slti         a3, t0, -161
                  sra          s1, ra, t6
                  blt          s11, a6, 243f
                  addi         s5, s5, 1703
                  slli         a5, t3, 7
                  bltu         a2, s3, 234f
234:              beq          t0, t5, 250f
235:              add          tp, gp, s6
                  and          t5, t0, a2
                  slt          a2, s5, s8
                  auipc        s2, 179008
                  srli         a0, gp, 14
                  sll          s5, s9, s10
                  and          t3, s11, t5
                  bgeu         s2, sp, 256f
243:              ori          a7, s8, -883
                  bge          s6, tp, 257f
                  srl          t2, a7, t3
                  auipc        s9, 613990
                  srl          s3, ra, s11
                  xor          s4, a3, a6
                  sltiu        a6, s1, 887
250:              sra          s7, t6, zero
                  nop
                  xori         gp, sp, 424
                  blt          sp, s5, 264f
                  sra          t6, t0, t4
                  slti         s3, s2, -701
256:              ori          s1, t0, -1254
257:              and          t5, s10, t6
                  xori         a3, t4, -1516
                  bgeu         s6, gp, 270f
                  bgeu         t0, s5, 275f
                  blt          s3, a2, 278f
                  addi         t4, tp, -971
                  xori         s5, tp, -616
264:              xor          a6, s0, a3
                  and          t2, a5, s7
                  andi         s5, gp, 779
                  auipc        s8, 235434
                  sub          s2, s2, ra
                  auipc        tp, 701644
270:              and          a4, s11, s5
                  slt          s0, zero, s9
                  slli         s7, t5, 9
                  slti         s1, a1, -355
                  sra          a2, s9, s6
275:              and          s2, s5, a2
                  nop
                  bne          t4, sp, 278f
278:              sltu         tp, a2, s4
                  srai         a3, s1, 21
                  blt          tp, a3, 289f
                  and          zero, s11, t3
                  slti         ra, s8, -796
                  slli         a3, a2, 21
                  bge          t0, s4, 295f
                  add          a2, s8, t2
                  sll          t5, s8, s8
                  srai         a5, zero, 24
                  andi         t6, a6, 1507
289:              sll          s3, sp, s6
                  slti         zero, t2, 2045
                  bltu         a5, s7, 299f
                  sll          s11, t1, s11
                  andi         s3, gp, -174
                  and          s6, s11, s5
295:              blt          s10, ra, 314f
                  sra          t2, s2, t5
                  slti         t2, a2, -781
                  xor          s5, s6, a1
299:              bge          t5, a1, 306f
                  sra          zero, sp, ra
                  beq          s2, a3, 320f
                  xor          s1, sp, tp
                  auipc        ra, 888208
                  auipc        gp, 664430
                  addi         a5, zero, 328
306:              andi         zero, a1, 501
                  bge          a6, t2, 322f
                  andi         s8, t2, -443
                  auipc        a5, 731054
                  slli         a3, t4, 17
                  slli         s5, t1, 15
                  bltu         s1, s2, 313f
313:              ori          t3, s4, 1767
314:              sll          t2, ra, s7
                  auipc        a4, 177010
                  andi         t4, tp, -502
                  bne          a1, a1, 336f
                  sltu         a6, s7, a1
                  srli         a7, t1, 17
320:              xor          ra, s2, s8
                  addi         s11, a1, 1930
322:              slti         ra, tp, -2023
                  andi         s7, zero, 1144
                  ori          t1, s11, 1839
                  blt          t1, s5, 332f
                  and          a0, a2, s10
                  srai         s8, t6, 31
                  srl          a2, s9, s3
                  sltu         s9, s3, s3
                  sub          a0, s7, a7
                  xor          s2, a0, a6
332:              bgeu         gp, tp, 342f
                  addi         s2, s10, 1560
                  addi         a2, a0, 102
                  srli         a4, zero, 19
336:              and          s0, s3, s10
                  blt          t1, t2, 339f
                  add          s9, sp, t0
339:              nop
                  bgeu         t0, t1, 343f
                  slli         tp, s3, 13
                  addi         tp, zero, 4 #init loop 0 counter
                  addi         s1, zero, 15 #init loop 0 limit
                  lui          s11, 441688
sub_2_5_0_t:      sltu         a6, a0, t2
                  addi         tp, tp, 1 #update loop 0 counter
                  auipc        t3, 832653
                  nop
                  bne          tp, s1, sub_2_5_0_t #branch for loop 0
                  slti         t6, a5, 1620
342:              srli         s0, s5, 15
343:              slli         a3, t0, 26
                  sll          ra, a0, s7
                  beq          s5, s5, 354f
                  bge          a0, t1, 365f
                  srai         s5, s9, 4
                  bge          s1, a5, 362f
                  sll          ra, s10, s9
                  beq          a3, s0, 367f
                  blt          a7, s3, 362f
                  srli         t2, t4, 2
                  xor          tp, s4, s6
354:              bltu         s4, s10, 365f
                  bltu         s2, s8, 356f
356:              sra          t2, a5, s10
                  bge          a4, zero, 370f
                  bne          s1, t6, 369f
                  xori         sp, t0, -2023
                  slt          a3, t0, t6
                  slli         t1, a3, 29
362:              nop
                  beq          s6, a1, 364f
364:              bge          t0, s0, 383f
365:              bltu         s8, t3, 376f
                  xor          t1, a0, a3
367:              addi         s6, gp, -879
                  sra          s6, a7, s6
369:              slti         ra, t3, 1570
370:              sub          s6, s7, t5
                  or           a4, t2, a1
                  or           gp, s4, gp
                  sra          tp, t4, s10
                  sll          tp, s0, s8
                  auipc        s3, 283694
376:              andi         tp, t4, 269
                  blt          s1, gp, 387f
                  addi         t3, s10, -104
                  xori         a3, t3, -1644
                  bge          t0, s2, 394f
                  auipc        a5, 547981
                  andi         a7, a0, 881
383:              bgeu         tp, t6, 392f
                  auipc        ra, 891752
                  add          sp, a3, a3
                  lui          t6, 381782
387:              bge          a2, ra, 395f
                  bne          t3, t3, 391f
                  beq          t5, t1, 405f
                  xor          sp, t2, a4
391:              slt          s2, a7, s5
392:              xori         a0, a4, -315
                  sltiu        a6, s2, -745
394:              sra          t2, s9, a3
395:              or           s11, s3, s1
                  bgeu         sp, s0, 409f
                  lui          t6, 224379
                  nop
                  blt          a0, s10, 400f
400:              sltu         t2, zero, s6
                  andi         zero, s0, -1281
                  or           t4, zero, s5
                  slti         s11, s8, 1207
                  slti         t6, t2, 1873
405:              xor          a0, s9, t2
                  auipc        ra, 511724
                  slt          t2, t6, t6
                  sub          gp, t1, s9
409:              auipc        s7, 900370
                  beq          s5, a2, 418f
                  add          s7, zero, a3
                  slli         zero, zero, 22
                  bge          s11, s3, 425f
                  addi         t4, s6, -1550
                  ori          a3, sp, 31
                  srl          s5, a6, a0
                  and          s9, gp, s5
418:              add          s6, a4, s0
                  ori          s6, s0, 1725
                  srai         tp, s5, 13
                  srli         t6, s3, 27
                  sra          s4, a6, t3
                  add          s2, s1, s1
                  sub          s9, s3, s2
425:              xori         ra, a4, -582
                  bgeu         t5, s11, 429f
                  srl          s0, a2, ra
                  srli         gp, t6, 25
429:              beq          a4, s7, 448f
                  srl          sp, t0, a5
                  auipc        zero, 293408
                  xor          gp, s4, t4
                  slli         a6, sp, 16
                  srl          sp, a5, gp
                  sltiu        sp, a5, -1505
                  srai         t4, s0, 18
                  bne          ra, s11, 452f
                  srli         a4, zero, 4
                  ori          s0, s0, 500
                  addi         t2, t3, 1348
                  bltu         s2, ra, 449f
                  sub          s7, s4, s4
                  xor          s5, a0, tp
                  blt          tp, s11, 457f
                  or           t5, ra, gp
                  sltiu        a3, s3, -1387
                  and          s11, s2, a1
448:              sub          a2, s2, a5
449:              andi         a0, s10, 1907
                  srai         t5, s0, 22
                  ori          s5, s1, 1912
452:              nop
                  bgeu         t0, s0, 463f
                  addi         s5, t5, 1421
                  and          t4, a2, a1
                  blt          s10, s5, 464f
457:              addi         sp, s2, 1999
                  slti         s9, gp, 1995
                  srli         s7, t3, 10
                  and          s2, s0, tp
                  auipc        s7, 171734
                  bne          s1, a0, 472f
463:              and          s0, s11, s8
464:              srli         t1, s2, 16
                  or           s7, t3, ra
                  blt          s1, s4, 485f
                  add          s7, zero, s2
                  ori          t3, s9, 743
                  addi         a3, zero, -9 #init loop 1 counter
                  addi         a0, zero, 18 #init loop 1 limit
sub_2_9_1_t:      or           s0, s0, s11
                  addi         a3, a3, 9 #update loop 1 counter
                  addi         s8, zero, -1 #init loop 0 counter
                  addi         a7, zero, 8 #init loop 0 limit
sub_2_9_0_t:      xor          sp, s4, a4
                  addi         s8, s8, 10 #update loop 0 counter
                  blt          s8, a7, sub_2_9_0_t #branch for loop 0
                  bltu         a3, a0, sub_2_9_1_t #branch for loop 1
                  srli         s9, zero, 15
                  blt          a2, s8, 486f
                  blt          t4, a5, 479f
                  ori          sp, tp, -1992
472:              slti         a5, a3, 1216
                  sltu         a3, a6, t4
                  sll          a4, s6, t0
                  slt          tp, s1, s5
                  xori         t1, s8, -386
                  andi         t2, gp, -406
                  bne          s11, t6, 491f
479:              sltiu        ra, gp, -1428
                  slti         sp, sp, 1365
                  beq          sp, a1, 495f
                  sll          s1, ra, s5
                  add          tp, s4, ra
                  bgeu         t3, s10, 495f
485:              nop
486:              or           t1, t1, s5
                  addi         s7, s7, -1120
                  add          s3, a7, a0
                  add          a6, s10, sp
                  sub          s0, a2, t5
491:              xori         t2, a4, 546
                  or           sp, t3, s3
                  sra          s9, sp, s2
                  bltu         t2, a6, 495f
495:              and          s4, s3, a3
                  bltu         t5, a4, 497f
497:              sll          a3, a6, tp
                  add          t1, ra, s9
                  bltu         s7, sp, 501f
                  bge          a6, a2, 512f
501:              or           s5, s0, s1
                  addi         a3, s0, 1927
                  sub          a0, s8, t0
                  bge          a2, s10, 511f
                  srli         t6, a6, 26
                  ori          tp, s1, 684
                  sll          s11, s10, s3
                  beq          s1, t6, 527f
                  auipc        s4, 373055
                  srli         sp, gp, 26
511:              slti         t4, a6, -448
512:              slt          zero, t2, t1
                  srai         zero, s3, 18
                  or           t1, s2, a1
                  blt          ra, s8, 526f
                  or           tp, s10, a0
                  sub          t1, s0, ra
                  addi         t5, zero, -5 #init loop 1 counter
                  slt          s4, s4, a0
                  and          s7, a4, t6
                  slt          t2, s8, s11
                  srl          a7, sp, t6
                  sll          a4, tp, s5
                  addi         a0, zero, -3 #init loop 1 limit
                  nop
                  srai         t2, s0, 10
sub_2_6_1_t:      or           t1, s5, s3
                  addi         t5, t5, 8 #update loop 1 counter
                  sll          ra, a7, ra
                  addi         a3, zero, 1 #init loop 0 counter
                  sltu         s3, a2, sp
                  slti         a7, a1, 309
                  add          zero, t2, tp
                  addi         t3, zero, 4 #init loop 0 limit
                  nop
sub_2_6_0_t:      sltiu        s4, s5, -1116
                  auipc        s4, 590161
                  srl          tp, s9, zero
                  addi         a3, a3, 2 #update loop 0 counter
                  lui          zero, 375688
                  srl          a5, t4, s5
                  bltu         a3, t3, sub_2_6_0_t #branch for loop 0
                  sltu         a5, t5, a4
                  blt          t5, a0, sub_2_6_1_t #branch for loop 1
                  srai         a4, t5, 11
                  slti         s1, gp, -2017
                  andi         s2, a7, -158
                  slti         a7, ra, 1651
                  and          a0, t1, zero
                  sltiu        s6, a4, -1521
                  and          s5, t0, s2
                  xor          sp, a3, s6
                  bge          s3, s4, 526f
526:              sltu         s5, s11, a6
527:              xor          tp, s4, tp
                  srli         t3, a6, 9
                  ori          ra, s5, 626
                  and          a3, tp, t1
                  lui          a4, 788384
                  addi         t4, t4, 448
                  ori          s2, a5, -653
                  srl          s8, s8, t0
                  sltiu        t5, a6, 574
                  srli         a2, s8, 14
                  add          a3, s0, a7
                  sltiu        t6, t3, 605
                  sll          a0, t0, zero
                  sra          tp, a5, zero
                  bgeu         a0, t1, 557f
                  srai         s8, s9, 11
                  addi         s7, zero, 394
                  blt          sp, s9, 553f
                  lui          s3, 493133
                  lui          s9, 145225
                  bgeu         s0, s11, 558f
                  srli         a5, a4, 7
                  bge          s3, s10, 563f
                  srl          a6, t0, s11
                  auipc        s2, 154013
                  srli         s3, s9, 14
553:              lui          gp, 592003
                  slti         a7, s9, -711
                  blt          tp, t3, 558f
                  slti         s9, s0, 933
557:              sltiu        a3, s7, 476
558:              and          zero, gp, s1
                  slti         t6, t1, 2036
                  xor          s8, a6, t1
                  xor          s8, a6, s11
                  sltu         gp, t0, sp
563:              sltiu        s11, t5, 1796
                  srli         s0, a7, 4
                  sra          s5, a1, s8
                  slli         a6, s8, 27
                  nop
                  ori          s6, t5, 678
                  bge          a5, s5, 588f
                  and          s11, a3, a3
                  xori         t5, s4, -41
                  xor          a7, t5, s10
                  xori         a3, s10, 55
                  lui          s4, 38462
                  andi         s8, ra, -472
                  lui          t2, 226073
                  bgeu         a0, t0, 588f
                  sltu         t2, t3, t3
                  auipc        s0, 437034
                  sra          t3, s9, a5
                  sra          s6, a4, tp
                  sub          ra, s5, a7
                  xori         s8, s11, -643
                  sltiu        a6, s7, 1906
                  beq          t4, s7, 586f
586:              bne          ra, sp, 596f
                  sltiu        s7, a4, 502
588:              sll          s1, t2, a7
                  sltiu        a7, zero, 88
                  or           gp, s5, ra
                  sll          a2, a6, s2
                  slt          s6, t3, s5
                  andi         t4, ra, 1117
                  sub          tp, a4, t4
                  srl          t6, s4, s7
596:              bge          t3, a0, 607f
                  srl          s3, a2, a1
                  and          s4, s6, a4
                  slti         s3, a6, -1669
                  bge          zero, a1, 611f
                  or           a7, t6, s9
                  srli         gp, sp, 4
                  or           s5, a0, s3
                  srl          s9, s8, a5
                  slli         s5, s7, 16
                  and          t6, a3, a4
607:              bge          t3, s11, 626f
                  slti         s6, zero, -51
                  xor          s9, a7, s3
                  bge          a0, a0, 629f
611:              xori         zero, zero, 929
                  blt          s4, t1, 623f
                  bge          s4, s0, 621f
                  addi         s0, s0, 1824
                  slli         t3, s8, 5
                  srl          s6, s8, zero
                  addi         a3, s1, 1092
                  blt          a6, ra, 627f
                  beq          s1, s7, 638f
                  and          t5, t1, a2
621:              xor          s11, a6, s1
                  slti         s0, s11, -1058
623:              nop
                  bgeu         a1, t2, 635f
                  sub          s9, s8, s2
626:              sll          s4, s8, s10
627:              andi         s3, s7, -1878
                  srai         s3, s1, 29
629:              or           tp, t6, s5
                  sll          t5, a4, s2
                  and          t2, t1, s9
                  slti         s1, s6, 534
                  lui          a4, 983969
                  slti         t4, t4, 166
635:              sltiu        s11, s3, 1997
                  beq          s5, zero, 637f
637:              blt          t2, ra, 645f
638:              sltu         s8, s3, sp
                  slli         s4, s1, 12
                  addi         a4, ra, 1188
                  nop
                  xor          t5, a0, s8
                  slt          s1, t1, s7
                  or           s1, t4, s5
645:              xori         t4, s6, 1713
                  sltu         t4, gp, s6
                  slti         s0, s10, -1339
                  sll          a2, s0, s1
                  slli         zero, a6, 1
                  or           s11, t2, t3
                  sra          s2, s10, s0
                  sll          a5, a6, t5
                  sltiu        s11, a7, -1919
                  bltu         t1, t5, 663f
                  sra          a3, a3, a2
                  sra          ra, t6, s5
                  lui          a6, 907893
                  sra          t6, a6, gp
                  xori         a5, a1, -1962
                  andi         t2, t4, 1686
                  slt          a3, a0, tp
                  auipc        s7, 686220
663:              ori          sp, s0, 1366
                  nop
                  slli         t4, a1, 22
                  sll          s2, t4, sp
                  bge          s8, s9, 680f
                  sub          s7, s4, zero
                  sll          t5, s5, gp
                  sra          s5, ra, s2
                  xor          s0, s6, s7
                  blt          t6, s5, 682f
                  auipc        s5, 897573
                  xor          t6, s5, a4
                  sll          a4, s1, a3
                  slti         s1, t5, -875
                  slt          s11, t6, s7
                  bge          s5, s3, 690f
                  bgeu         s0, t3, 682f
680:              addi         s1, a2, -1053
                  sra          s5, t0, a6
682:              auipc        s11, 34114
                  ori          s11, s5, 1139
                  or           sp, s11, t3
                  ori          s4, t1, 1271
                  ori          t3, a4, -615
                  bge          gp, ra, 694f
                  slli         t4, s11, 23
                  sra          s3, a7, s5
690:              sltiu        s7, a3, 1390
                  slli         a2, t0, 13
                  sub          t5, t3, a1
                  slt          a2, a3, a3
694:              or           gp, ra, sp
                  sra          a0, t3, s1
                  auipc        s0, 231744
                  nop
                  and          s1, s7, s9
                  srl          s9, a4, t0
                  blt          a6, t4, 701f
701:              ori          s8, a3, -1931
                  sltiu        t1, a0, 1226
                  bne          zero, s7, 717f
                  bne          t5, s4, 723f
                  and          s0, tp, a3
                  srl          s6, s4, a2
                  sltu         s11, a2, s6
                  and          a2, s4, s6
                  xori         a7, a4, -1789
                  sub          ra, gp, s11
                  andi         s11, s2, -30
                  beq          s7, a6, 726f
                  xori         s5, gp, 428
                  lui          gp, 490544
                  sub          a3, s8, s1
                  nop
717:              sltu         zero, a3, t1
                  addi         s3, zero, -1690
                  bne          zero, s4, 735f
                  lui          tp, 569122
                  slli         ra, s1, 25
                  slt          a0, s5, s10
723:              bltu         t4, t4, 725f
                  sltiu        a3, t5, -1894
725:              srli         s1, s11, 6
726:              srai         sp, gp, 24
                  srai         sp, t1, 24
                  sra          gp, s3, s10
                  bgeu         a5, a3, 742f
                  and          t6, s11, s1
                  ori          gp, a2, -1039
                  sub          t3, a5, zero
                  blt          t4, t3, 736f
                  bne          a1, t2, 751f
735:              sll          s11, ra, a4
736:              and          s0, t0, s4
                  bltu         gp, t0, 738f
738:              slli         a3, a4, 12
                  add          a5, a6, s5
                  sll          s5, s4, tp
                  beq          s11, a6, 756f
742:              nop
                  xor          a7, t3, a2
                  bne          t4, t3, 745f
745:              addi         t3, a5, 1035
                  bne          s5, a4, 749f
                  nop
                  bge          t1, a2, 767f
749:              xori         s8, t3, -359
                  slli         tp, t1, 15
751:              lui          s0, 748434
                  beq          t3, s4, 754f
                  srl          sp, zero, a2
754:              sub          s7, s8, a3
                  or           t3, a2, s2
756:              blt          a5, a3, 767f
                  beq          a2, s4, 758f
758:              auipc        a4, 834789
                  xori         gp, t0, -1947
                  srl          t1, s1, t0
                  slt          tp, zero, ra
                  srli         a4, s6, 25
                  slti         s4, t3, 1524
                  srli         s11, sp, 31
                  nop
                  auipc        t2, 256012
767:              sltu         s5, t4, t2
                  beq          a3, s0, 776f
                  srli         t5, s1, 26
                  sub          s0, s0, sp
                  bltu         zero, s3, 781f
                  slt          ra, s6, a7
                  srli         a0, s6, 17
                  bge          t2, t1, 782f
                  bne          t0, a1, 794f
776:              xori         s5, t6, 1249
                  bge          s1, t0, 780f
                  bne          a0, s1, 787f
                  slt          s11, t1, s10
780:              bgeu         s8, a6, 791f
781:              srli         a7, a6, 23
782:              lui          t5, 729778
                  add          s11, t6, sp
                  slt          sp, s11, s5
                  beq          s2, a3, 794f
                  ori          sp, t3, 68
787:              sll          s2, s2, ra
                  bgeu         a7, t0, 800f
                  and          s0, t4, s3
                  andi         s11, a6, -1287
791:              andi         a0, t0, 1572
                  nop
                  slli         a3, a2, 13
794:              andi         s6, t0, 1121
                  blt          t5, sp, 814f
                  lui          s6, 946285
                  bne          t0, a6, 816f
                  bgeu         s4, t1, 811f
                  beq          s1, tp, 810f
800:              andi         s1, s8, -2008
                  nop
                  srl          sp, s7, s10
                  addi         s3, tp, 1305
                  sub          s9, t0, a7
                  sra          a7, s7, s10
                  xor          s3, s10, a7
                  blt          zero, s2, 823f
                  sltu         a5, s10, t2
                  add          s11, s3, s8
810:              or           s7, s0, ra
811:              add          s11, s5, t6
                  blt          a7, s0, 827f
                  blt          s11, a0, 830f
814:              slli         sp, a2, 0
                  sub          a4, zero, gp
816:              bltu         zero, sp, 817f
817:              blt          s8, s11, 828f
                  srai         s5, a4, 0
                  slti         s5, sp, -553
                  auipc        s0, 65242
                  srl          s7, s4, s3
                  auipc        tp, 54514
823:              andi         a5, t2, -517
                  sltu         t1, zero, s8
                  lui          t4, 396743
                  xor          t1, sp, a4
827:              srai         a5, a3, 15
828:              nop
                  sltiu        ra, s11, -1123
830:              addi         gp, t6, -1744
                  xori         a6, t2, 516
                  add          a5, ra, t3
                  beq          t2, t4, 847f
                  or           s1, gp, zero
                  slli         gp, a3, 18
                  auipc        s5, 23057
                  sra          sp, t2, s2
                  bge          s7, t4, 845f
                  xori         a3, s2, 1570
                  add          s9, gp, s9
                  beq          s2, s11, 851f
                  xori         s8, s6, -754
                  sra          s2, t0, a6
                  slli         s3, sp, 31
845:              sub          s0, a1, s8
                  bgeu         t5, t1, 847f
847:              bge          s9, s3, 861f
                  bltu         s4, t4, 849f
849:              blt          t0, s1, 862f
                  slti         t1, s5, -1562
851:              bltu         s6, ra, 862f
                  bgeu         zero, s0, 853f
853:              srai         s6, s10, 11
                  xor          t6, a2, zero
                  xori         a3, a1, -622
                  sub          a0, t2, s10
                  add          t1, t6, t6
                  addi         ra, s6, -1191
                  lui          a3, 301445
                  sub          s4, s6, a0
861:              sub          a5, s8, tp
862:              bne          sp, a3, 863f
                  addi         t4, zero, 7 #init loop 1 counter
                  addi         a4, zero, 7 #init loop 1 limit
sub_2_2_1_t:      ori          a2, a6, 1880
                  addi         t4, t4, -3 #update loop 1 counter
                  andi         s4, s10, 1433
                  addi         s3, zero, -2 #init loop 0 counter
                  auipc        s4, 195383
                  addi         s6, zero, 8 #init loop 0 limit
                  srl          s1, s5, a1
sub_2_2_0_t:      slt          s1, a6, a7
                  addi         s3, s3, 5 #update loop 0 counter
                  beq          s3, s6, sub_2_2_0_t #branch for loop 0
                  add          s0, s6, a7
                  or           t6, s1, a1
                  bgeu         t4, a4, sub_2_2_1_t #branch for loop 1
                  or           t1, a5, s0
863:              andi         s8, tp, -21
                  lui          t4, 323650
                  sra          s0, s3, t5
                  sll          a0, gp, s4
                  sub          s6, a7, t0
                  ori          t3, gp, 1405
                  and          s11, a7, s3
                  sltiu        a0, s7, -231
                  sll          zero, t0, s3
                  nop
                  srai         a3, t1, 30
                  sll          s9, s1, t1
                  or           t1, t5, t2
                  sltu         s8, t6, t1
                  add          tp, gp, s7
                  sub          s7, s10, a2
                  sll          s11, gp, s8
                  slti         a7, s7, 632
                  slti         s3, gp, -308
                  sltiu        t5, ra, -180
                  andi         s5, a0, 1937
                  ori          zero, s8, -1673
                  or           t2, s5, a6
                  bltu         s2, ra, 888f
                  ori          t6, zero, -1786
888:              srli         zero, t2, 27
                  xori         s9, a3, -346
                  srl          a6, t3, s2
                  auipc        ra, 1020549
                  bltu         t2, tp, 909f
                  slt          t3, a7, a0
                  or           s6, tp, s1
                  sltu         s1, a5, s11
                  auipc        s2, 464937
                  lui          t3, 965468
                  andi         s5, a2, 1653
                  or           ra, s2, s9
                  xori         s4, s5, -1262
                  slti         t5, a1, 260
                  blt          t4, tp, 913f
                  add          s5, t3, t4
                  xori         zero, s11, -810
                  andi         s2, t2, 981
                  auipc        gp, 485975
                  xori         a2, t0, -358
                  lui          s8, 72797
909:              or           a6, s4, t2
                  srli         s7, a7, 12
                  srli         ra, a4, 24
                  xori         s7, a1, 1437
913:              ori          s2, s9, 720
                  auipc        s7, 687561
                  slt          s9, t2, gp
                  sltiu        sp, a3, 703
                  blt          s4, s10, 936f
                  beq          s0, gp, 926f
                  srli         s11, s2, 14
                  srli         t1, tp, 10
                  sltiu        s7, t3, 455
                  and          tp, a4, t6
                  slti         s3, a6, -1884
                  srl          t3, sp, s0
                  andi         s7, a2, 1639
926:              andi         s5, a6, 1481
                  nop
                  slt          a4, a6, t2
                  andi         t5, t5, 550
                  andi         a4, a0, 920
                  lui          tp, 83724
                  slt          a4, a5, s1
                  sra          s8, s11, t3
                  sll          s7, tp, a4
                  sra          zero, s3, s7
936:              blt          a3, a6, 951f
                  blt          a1, s5, 950f
                  blt          a7, s1, 939f
939:              sltu         t6, a5, a1
                  andi         t4, s0, 1327
                  beq          s2, t6, 948f
                  sra          s4, s1, ra
                  srl          a4, s3, t4
                  sll          t1, s7, zero
                  slli         s9, sp, 12
                  bltu         a7, s3, 960f
                  xori         a6, s10, -1112
948:              andi         t3, a1, -543
                  beq          a5, s8, 962f
950:              slt          s7, s7, s3
951:              sra          s5, sp, s2
                  srai         s7, s5, 19
                  andi         gp, t3, -1702
                  slt          s1, ra, t4
                  srai         s0, a0, 31
                  blt          s2, a2, 959f
                  srai         sp, sp, 28
                  auipc        t4, 871465
959:              bgeu         s6, s8, 968f
960:              blt          tp, a5, 968f
                  sltiu        s11, zero, -619
962:              bgeu         a2, s9, 973f
                  ori          a0, t5, -1331
                  sltiu        s11, t6, -110
                  beq          zero, a3, 977f
                  srai         ra, t3, 14
                  sra          zero, a3, gp
968:              slti         tp, s11, -717
                  bgeu         a4, s1, 983f
                  sltiu        s0, a6, 1950
                  srli         ra, s3, 15
                  and          a7, a4, tp
973:              nop
                  slli         s4, t0, 8
                  slt          a0, a2, a6
                  or           s3, s9, s7
977:              blt          a2, a7, 987f
                  add          t3, a2, s6
                  srl          s0, s6, t6
                  sltu         s0, sp, s0
                  sll          t4, s10, a1
                  sltiu        s2, s9, 368
983:              srli         tp, t4, 13
                  blt          gp, a3, 993f
                  add          a5, t3, a1
                  lui          zero, 642686
987:              srli         s5, s1, 22
                  srai         a5, a3, 19
                  bne          t2, s10, 990f
990:              sra          s1, gp, s1
                  xor          t5, a6, s1
                  slt          t6, sp, t3
993:              auipc        t3, 97285
                  add          s7, s0, s11
                  nop
                  sra          s5, s6, s2
                  srli         s0, s6, 17
                  ori          s4, t4, 1294
                  sub          a7, t0, s5
                  xor          ra, t3, a5
                  sltiu        s1, a1, -1750
                  addi         s3, t6, -1463
                  srai         s7, s7, 3
                  ori          t1, sp, 703
                  andi         tp, s3, -1596
                  sltiu        t4, t6, 379
                  slti         s2, a0, -1165
                  sltu         s6, s5, a3
                  bne          gp, s1, 1028f
                  bltu         a5, sp, 1029f
                  and          t2, a4, a0
                  srai         t4, gp, 0
                  or           a2, tp, a0
                  xori         s1, t6, 1710
                  bne          t4, s7, 1031f
                  slti         a0, a5, 1232
                  srli         sp, a0, 1
                  sra          a2, a5, s1
                  ori          a3, t0, -1314
                  sub          a4, a2, t3
                  bne          s4, t2, 1040f
                  srai         sp, t1, 27
                  and          a6, a5, t1
                  nop
                  nop
                  addi         s7, s6, 438
                  bge          s6, s6, 1030f
1028:             lui          s3, 996763
1029:             sub          a5, a7, t1
1030:             sltu         a6, ra, a0
1031:             bltu         a3, t5, 1041f
                  blt          t4, a1, 1043f
                  xor          s0, s4, s4
                  beq          s6, s8, 1046f
                  addi         a4, s2, 794
                  xor          t1, s7, s3
                  andi         a2, t4, 1742
                  andi         a3, a1, 1907
                  blt          a4, s2, 1054f
1040:             addi         gp, s8, 1911
1041:             bgeu         a3, a0, 1060f
                  ori          ra, s3, -1907
1043:             srai         tp, s10, 3
                  srai         s7, t2, 24
                  blt          s6, t4, 1054f
1046:             xor          s5, s3, a0
                  and          s1, a3, s7
                  ori          t4, s3, 1423
                  bltu         a6, t3, 1068f
                  and          a6, s1, sp
                  and          tp, a4, a1
                  slti         s2, s7, 102
                  nop
1054:             bge          a0, s4, 1056f
                  sltu         a5, a4, a7
1056:             bgeu         t5, a2, 1073f
                  xor          t4, t1, s9
                  lui          s11, 124749
                  xori         s0, s8, -1219
1060:             or           s8, t5, s1
                  srai         ra, a6, 23
                  sra          s4, a3, a0
                  srl          a0, s1, s9
                  nop
                  nop
                  slt          t3, a5, s8
                  ori          t5, s0, 720
1068:             bgeu         gp, s11, 1079f
                  srl          s4, ra, s6
                  beq          s9, s4, 1071f
1071:             sub          s7, t3, s0
                  beq          t4, s2, 1086f
1073:             bgeu         t1, a1, 1092f
                  srli         zero, t3, 20
                  srli         s6, tp, 22
                  add          t3, s11, tp
                  srai         s4, a3, 23
                  ori          a6, t0, -1141
1079:             nop
                  slti         s0, tp, 864
                  bgeu         a5, a5, 1092f
                  bne          s4, s4, 1090f
                  blt          a1, s6, 1086f
                  xor          s7, a3, ra
                  or           s9, s10, t4
1086:             add          s8, s6, s10
                  sltu         s6, zero, s9
                  xor          t2, s6, t4
                  and          zero, a1, s10
1090:             addi         s5, s0, -171
                  beq          s7, s6, 1105f
1092:             andi         a3, s10, 148
                  beq          tp, a0, 1096f
                  slt          a3, t6, t0
                  blt          t2, t1, 1096f
1096:             bge          t4, tp, 1109f
                  blt          gp, s3, 1110f
                  auipc        a7, 981532
                  or           a7, t0, s5
                  or           s11, a2, a0
                  addi         s8, tp, -1876
                  bne          sp, s0, 1112f
                  sub          a3, zero, s6
                  slt          s0, t4, s9
1105:             addi         s4, s9, -1852
                  srl          tp, gp, s8
                  add          s2, s9, gp
                  xori         sp, s6, -1394
1109:             srli         t3, a1, 15
1110:             xori         s11, s8, -523
                  addi         s9, s10, -952
1112:             sll          t3, s2, s5
                  blt          t1, ra, 1124f
                  xori         s3, gp, 1382
                  sll          a5, t2, t3
                  xor          t5, s8, s9
                  add          gp, a0, s2
                  ori          gp, t6, -1577
                  srai         a0, s7, 5
                  srai         t6, t6, 28
                  and          s1, s5, a2
                  add          s6, t1, tp
                  bne          a3, a7, 1133f
1124:             sltu         s4, t4, a6
                  or           t6, s8, t0
                  bltu         a7, s11, 1127f
1127:             and          a7, s11, t1
                  addi         t3, a7, 313
                  or           s9, t1, t4
                  slli         s8, a0, 4
                  andi         s6, t0, 1010
                  srl          s6, s4, s4
1133:             andi         a6, t5, -747
                  bltu         gp, t4, 1135f
1135:             andi         t1, a1, -530
                  blt          t0, s2, 1144f
                  lui          a3, 639324
                  slti         t4, s0, -1121
                  sub          sp, gp, gp
                  slt          s11, a5, s5
                  sra          s0, s8, t6
                  lui          s8, 591093
                  sltu         t4, a6, s2
1144:             nop
                  sll          s1, s1, t5
                  addi         s2, s1, 1293
                  lui          tp, 731935
                  srli         a2, gp, 7
                  bge          s5, a5, 1156f
                  xori         zero, gp, 466
                  bgeu         a4, t0, 1162f
                  sltu         ra, sp, s5
                  bgeu         s3, a2, 1172f
                  xori         a3, a3, -438
                  ori          t1, ra, 265
1156:             srli         sp, s3, 15
                  srli         s11, s6, 0
                  blt          s3, t6, 1167f
                  nop
                  slli         s5, s11, 6
                  and          a3, sp, a0
1162:             beq          s11, tp, 1178f
                  lui          a2, 660451
                  xor          s11, s10, s8
                  bgeu         a2, s7, 1166f
1166:             and          s8, s9, s6
1167:             sra          a3, s2, a6
                  srl          t5, s10, t6
                  sltu         t5, sp, t3
                  srai         s9, s11, 25
                  sll          t4, s5, a0
                  addi         s3, a4, 1549
                  la           s5, sub_3
                  ori          s0, s2, 1646
                  and          t6, a0, s1
                  addi         s5, s5, 455
                  add          t2, a0, a5
                  add          tp, a0, s10
sub_2_j3:         jalr         t5, s5, -455 #jump sub_2 -> sub_3
                  sra          s4, s9, gp
                  slli         a7, a7, 16
1172:             ori          a5, t3, 803
                  slti         t1, t3, 1695
                  ori          sp, s11, 533
                  slt          zero, a6, t0
                  bge          t6, s6, 1187f
                  srli         a5, s4, 30
1178:             srl          s9, s11, s3
                  sltiu        a3, t4, -1042
                  nop
                  xor          t4, s11, s11
                  slti         a6, t0, 1398
                  sra          s3, a3, t2
                  bge          s2, s4, 1200f
                  xori         s7, t3, 252
                  sra          a6, s0, s11
1187:             srli         a5, sp, 12
                  xori         s3, s8, 683
                  slt          s6, t0, a2
                  sra          a4, s9, s3
                  srli         t2, a5, 13
                  addi         t2, s1, -322
                  bge          t4, a7, 1195f
                  sltiu        a7, t2, -899
1195:             ori          a3, a5, 86
                  or           s2, a4, t1
                  bge          t4, a0, 1200f
                  add          a2, a3, s6
                  sll          s7, a3, s4
1200:             lui          tp, 806754
                  srli         s2, t1, 6
                  and          t2, s0, s7
                  srli         s1, t1, 27
                  andi         s7, sp, 1728
                  bge          t0, t5, 1220f
                  sub          sp, s7, a2
                  srl          s7, t0, s6
                  beq          a7, t2, 1221f
                  lui          sp, 937671
                  lui          s7, 993691
                  sll          a4, t3, t0
                  sll          s4, a7, s1
                  ori          a0, tp, 1708
                  nop
                  sra          a2, a7, zero
                  bne          t2, ra, 1217f
1217:             or           gp, a2, s1
                  and          t4, s2, s5
                  srli         a7, a7, 9
1220:             ori          t3, s10, 65
1221:             xori         t4, t1, 817
                  lui          s4, 999998
                  xor          a7, gp, t4
                  sltiu        s11, t5, -586
                  auipc        t3, 689502
                  sltu         s7, t1, t2
                  sltu         a7, s11, a1
                  sra          a3, sp, s3
                  sra          s3, s8, a0
                  auipc        t3, 23594
                  xor          sp, s2, t1
                  xori         a0, a5, -1113
                  sltiu        t4, a4, -838
                  bge          a7, a1, 1253f
                  xor          s3, a6, a2
                  sra          s9, s0, a7
                  srli         a6, s0, 11
                  lui          s6, 382785
                  slli         t4, sp, 8
                  xor          a0, s10, s9
                  sll          a2, t3, sp
                  slti         s11, a6, -955
                  or           a3, a7, t0
                  lui          s1, 732454
                  bltu         a7, s5, 1256f
                  auipc        t5, 255702
                  slt          t5, s2, s8
                  nop
                  srl          s7, a3, t2
                  add          s8, a1, a4
                  sll          s7, t4, a7
                  bgeu         s10, a4, 1266f
1253:             srl          s2, s7, a2
                  addi         s8, s5, 509
                  slli         a6, s4, 3
1256:             lui          a2, 926864
                  lui          ra, 283813
                  bge          s10, s3, 1270f
                  xor          ra, a3, s11
                  slli         s0, s0, 4
                  srl          sp, s1, a6
                  sll          t4, s4, a1
                  slt          a5, a3, s1
                  lui          a3, 334136
                  bge          a6, t2, 1284f
1266:             sltiu        s3, s7, 200
                  srl          a5, s7, a0
                  sll          s0, a2, a5
                  sll          a0, t0, s9
1270:             slti         s4, t1, -247
                  and          s9, t5, t5
                  srli         s1, t0, 30
                  bge          t4, a3, 1284f
                  bltu         sp, a4, 1293f
                  srli         s1, t5, 23
                  bltu         ra, t6, 1284f
                  bltu         s11, a4, 1291f
                  slti         s9, tp, -2004
                  andi         t2, tp, -1744
                  bltu         s11, s8, 1289f
                  bgeu         s11, s8, 1288f
                  lui          s0, 663484
                  lui          ra, 877569
1284:             srai         t4, s10, 21
                  and          s11, sp, gp
                  addi         s6, s4, -145
                  sra          s1, s3, t1
1288:             slti         a6, s9, -1866
1289:             andi         s4, t4, -384
                  sltiu        a5, s10, 1327
1291:             bne          s2, t5, 1299f
                  slti         a5, t1, -113
1293:             srli         a3, s6, 22
                  xori         a6, t4, -436
                  xori         a6, t1, -933
                  slli         a6, t5, 6
                  srl          s2, a5, t3
                  blt          a6, ra, 1315f
1299:             bge          a6, t2, 1312f
                  addi         t6, a0, -955
                  xori         tp, t6, 259
                  nop
                  slli         t6, t1, 6
                  bge          a6, s9, 1323f
                  xori         tp, s0, 939
                  bgeu         s1, tp, 1317f
                  ori          tp, zero, -1702
                  bge          t0, s6, 1311f
                  sltiu        s9, s10, -1511
                  lui          a5, 1020702
1311:             add          s1, tp, a0
1312:             xori         a3, s4, -837
                  nop
                  and          gp, a4, t6
1315:             slt          s6, s1, a2
                  sub          t3, tp, ra
1317:             lui          a6, 570426
                  srli         s7, s4, 2
                  slt          a7, t4, t5
                  sub          s0, s4, t5
                  lui          s3, 433774
                  auipc        a5, 488653
1323:             andi         ra, t0, 1780
                  srai         t2, t1, 0
                  andi         t6, a6, -693
                  sub          a6, a2, s7
                  auipc        s3, 833885
                  or           a2, a7, t4
                  sub          a0, t4, tp
                  sltiu        t5, a0, 1909
                  bge          a2, t0, 1341f
                  bgeu         a4, gp, 1333f
1333:             sltiu        s8, a5, 260
                  and          a2, a7, t2
                  blt          t0, t0, 1336f
1336:             bne          a7, a5, 1345f
                  bge          s4, s8, 1347f
                  blt          s0, gp, 1353f
                  nop
                  add          a0, a0, s5
1341:             xori         t1, s0, 911
                  slti         t2, t5, -188
                  bltu         t1, a2, 1360f
                  bltu         s5, t3, 1352f
1345:             lui          a0, 1029899
                  bgeu         s7, a0, 1355f
1347:             bge          gp, zero, 1358f
                  sub          zero, sp, t6
                  srai         s3, ra, 17
                  xor          a7, sp, t5
                  bgeu         s0, s7, 1359f
1352:             blt          t1, a5, 1353f
1353:             srli         a2, s0, 17
                  sltu         t2, s10, a5
1355:             slti         s1, s9, -1951
                  srli         a3, t5, 4
                  sltiu        t3, a4, -1983
1358:             ori          t4, zero, -1696
1359:             sltiu        a0, t5, 1883
1360:             xori         t1, a5, 1902
                  auipc        t3, 190913
                  sub          tp, s5, s0
                  bne          s7, t2, 1377f
                  sra          s2, a6, s1
                  bge          s0, a6, 1368f
                  nop
                  slt          s6, s10, s4
1368:             or           t2, s10, s3
                  bne          s11, zero, 1378f
                  andi         s6, s10, 31
                  sltu         t3, s11, a0
                  and          a7, t3, s7
                  slti         s2, s4, -1745
                  slt          s6, t6, t3
                  xori         t2, t0, 154
                  or           a0, a7, a7
1377:             addi         s11, a6, 821
1378:             andi         s2, a1, -640
                  sll          s7, s10, s11
                  ori          a5, s10, 201
                  bgeu         s5, gp, 1394f
                  sltiu        t1, s0, 1380
                  srl          a7, s7, s6
                  sltiu        s9, s4, 1808
                  and          s3, t6, a5
                  and          zero, t5, s7
                  nop
                  blt          s10, zero, 1390f
                  and          a3, s4, tp
1390:             blt          s8, zero, 1409f
                  and          tp, a4, a6
                  blt          s1, a4, 1411f
                  addi         s2, zero, 7 #init loop 1 counter
                  xor          t5, t6, a1
                  addi         ra, zero, 6 #init loop 1 limit
                  srai         t4, t3, 5
                  andi         t4, s7, 726
                  nop
                  andi         a4, s5, -1516
sub_2_13_1_t:     and          tp, a3, s7
                  ori          t6, a7, -1554
                  srl          zero, s5, gp
                  slt          s6, s0, zero
                  addi         s2, s2, -1 #update loop 1 counter
                  sltu         sp, a6, zero
                  addi         s1, zero, 8 #init loop 0 counter
                  ori          a5, t6, -1814
                  addi         s8, zero, 6 #init loop 0 limit
                  xori         t6, a7, 1384
sub_2_13_0_t:     lui          zero, 32005
                  slti         s7, a3, 1109
                  srli         t1, s9, 13
                  addi         s1, s1, -4 #update loop 0 counter
                  bgeu         s1, s8, sub_2_13_0_t #branch for loop 0
                  and          gp, s9, s5
                  add          a4, s6, s0
                  add          a5, zero, tp
                  bgeu         s2, ra, sub_2_13_1_t #branch for loop 1
                  sll          tp, t1, s9
                  bne          gp, gp, 1404f
1394:             auipc        s0, 532082
                  slli         t6, t0, 7
                  and          s7, s9, gp
                  beq          s11, sp, 1407f
                  auipc        a6, 346626
                  sub          gp, a4, a1
                  andi         s3, s5, -401
                  slt          s0, s9, a7
                  or           a5, t1, gp
                  beq          a1, s5, 1404f
1404:             srl          a7, a1, a5
                  and          a0, s5, s11
                  auipc        s3, 193664
1407:             ori          t2, s0, -1508
                  lui          sp, 523456
1409:             auipc        tp, 434789
                  xor          s2, s0, s0
1411:             bne          a2, a0, 1423f
                  andi         t5, a4, -1070
                  ori          s0, s1, -1422
                  slli         t4, t6, 0
                  or           zero, a4, a5
                  bltu         s11, s10, 1419f
                  auipc        s0, 933446
                  bltu         gp, tp, 1419f
1419:             srai         a0, a7, 21
                  sub          s0, a6, zero
                  srli         s5, s2, 22
                  bltu         ra, t5, 1441f
1423:             sub          s6, t0, sp
                  add          a6, s1, t5
                  auipc        a4, 650273
                  bgeu         a5, t1, 1433f
                  lui          a7, 954503
                  sltiu        s8, s8, 1514
                  sltiu        s5, t6, 2008
                  sltu         ra, s7, s2
                  srl          s7, ra, t0
                  blt          t3, a0, 1433f
1433:             slti         s7, s11, 682
                  srai         s9, a0, 16
                  andi         s7, s10, -921
                  blt          a0, gp, 1449f
                  slt          gp, ra, gp
                  slti         a3, sp, -1863
                  or           gp, sp, s8
                  srl          a7, ra, a1
1441:             bgeu         zero, s4, 1457f
                  auipc        t5, 707980
                  bgeu         ra, a3, 1454f
                  beq          s4, s5, 1463f
                  xor          s5, a3, t6
                  ori          t2, a6, -1450
                  ori          a2, tp, 700
                  slt          a2, a3, gp
1449:             slt          s1, s7, t3
                  or           a4, ra, s9
                  srl          ra, t5, a4
                  sra          t3, s4, s1
                  and          s3, ra, sp
1454:             sltu         s1, t3, a6
                  bltu         zero, a1, 1469f
                  bgeu         s9, s6, 1466f
1457:             sll          s0, t3, sp
                  andi         a0, t5, -1337
                  andi         s2, s10, -1278
                  sltiu        t6, s6, 698
                  sub          s9, a7, t4
                  xor          s1, s4, a3
1463:             slti         s5, zero, 378
                  sltu         t1, zero, t0
                  nop
1466:             auipc        s11, 91168
                  and          a6, a6, s3
                  srai         t2, t2, 26
1469:             lui          a2, 107090
                  and          s4, t5, gp
                  bgeu         a5, a3, 1482f
                  addi         zero, t1, 1939
                  xor          a2, s4, t1
                  auipc        s9, 946843
                  bge          t3, s6, 1482f
                  bgeu         t1, a6, 1488f
                  bne          s7, a4, 1488f
                  bgeu         a0, zero, 1488f
                  bltu         a7, s9, 1498f
                  srai         a3, tp, 26
                  and          a4, s9, s5
1482:             srai         t5, a7, 3
                  auipc        s1, 496980
                  bltu         s3, a5, 1493f
                  srai         a6, s10, 24
                  sra          s6, t1, a5
                  blt          s7, t3, 1498f
1488:             sub          a4, s10, a1
                  blt          a0, a2, 1497f
                  bne          s8, s5, 1491f
1491:             sra          s7, s9, s6
                  lui          t5, 264225
1493:             slli         a6, a4, 12
                  andi         a4, tp, -2028
                  bne          a4, t5, 1497f
                  and          s8, s7, s5
1497:             slti         s11, t6, -1654
1498:             bgeu         s5, s1, 1511f
                  blt          t2, a4, 1513f
                  srai         tp, a3, 6
                  bne          a5, a7, 1518f
                  sltu         s7, t3, ra
                  bne          t2, a1, 1506f
                  ori          s2, a0, -949
                  sra          s6, a6, a6
1506:             srl          a0, a1, s6
                  sra          a4, s8, s7
                  slli         a4, a5, 3
                  slli         t4, t2, 22
                  bgeu         s10, a6, 1529f
1511:             srl          t3, s8, s0
                  andi         tp, s6, 468
1513:             add          a5, s3, s3
                  bgeu         s10, a6, 1515f
1515:             slt          s6, t2, s10
                  srl          s9, s0, t5
                  bgeu         t5, gp, 1532f
1518:             slli         s9, t0, 14
                  xor          s11, s4, gp
                  beq          s1, tp, 1539f
                  slti         t3, zero, 1415
                  srai         a6, t5, 12
                  sltiu        t6, t4, -1577
                  auipc        t6, 399428
                  auipc        s1, 898280
                  nop
                  xori         sp, s6, 1736
                  slli         t5, t4, 8
1529:             add          s3, sp, gp
                  slt          t4, a0, s10
                  sltiu        ra, t3, 1588
1532:             bgeu         zero, t2, 1533f
1533:             slt          s5, s5, t0
                  andi         s4, s9, -1593
                  sll          sp, s6, t0
                  sltu         s0, t5, a5
                  xor          a7, t2, s1
                  sltiu        a3, s9, -436
1539:             blt          s1, a7, 1553f
                  xori         gp, s11, -1861
                  andi         s3, s4, 1786
                  and          tp, s11, s4
                  beq          s2, s9, 1552f
                  sll          s3, t3, a0
                  bgeu         s2, a6, 1548f
                  sub          s11, t4, s0
                  and          t6, tp, a1
1548:             xor          s4, s4, a7
                  blt          s5, zero, 1550f
1550:             and          s7, s7, a5
                  add          s3, ra, ra
1552:             bge          s8, sp, 1563f
1553:             ori          s7, t6, -42
                  nop
                  slli         s11, s10, 4
                  sra          a2, t3, s3
                  nop
                  srai         t5, a0, 23
                  bne          a6, a1, 1567f
                  bltu         a0, a3, 1570f
                  sltu         t1, t2, a4
                  xori         s3, s7, -1735
1563:             auipc        s2, 525425
                  blt          s1, s3, 1575f
                  sra          t3, a5, t6
                  bne          s10, s9, 1585f
1567:             andi         s7, s2, -1382
                  srli         t3, a1, 30
                  srai         s9, s10, 12
1570:             sub          t3, a5, a1
                  srli         tp, a6, 19
                  bge          s8, s1, 1588f
                  slti         tp, s10, -928
                  sra          gp, s4, s10
1575:             slti         gp, a0, 593
                  and          sp, s10, s5
                  add          zero, tp, s5
                  bne          s6, a3, 1591f
                  srli         a4, t6, 24
                  add          t1, a5, a0
                  slli         s8, a1, 23
                  sub          t6, s10, t0
                  or           tp, a5, a6
                  and          tp, a5, s6
1585:             sltu         s7, t5, s3
                  nop
                  ori          s6, s0, -1163
1588:             ori          a5, t0, -1114
                  or           s6, s8, s7
                  bne          t1, s9, 1600f
1591:             srai         s6, t3, 27
                  slt          s1, sp, a1
                  addi         s2, zero, 5 #init loop 1 counter
                  addi         s9, zero, 14 #init loop 1 limit
sub_2_12_1_t:     and          s7, a2, a3
                  slt          t6, s5, ra
                  addi         s2, s2, 9 #update loop 1 counter
                  addi         gp, zero, 2 #init loop 0 counter
                  addi         t5, zero, 10 #init loop 0 limit
                  xor          s3, a7, t1
sub_2_12_0_t:     or           a4, t0, t0
                  addi         gp, gp, 4 #update loop 0 counter
                  bne          gp, t5, sub_2_12_0_t #branch for loop 0
                  bne          s2, s9, sub_2_12_1_t #branch for loop 1
                  sltu         s6, tp, s4
                  slt          t2, s1, s3
                  slli         a4, tp, 5
                  sll          ra, s1, s1
                  or           s4, t0, t5
                  xori         tp, t5, 1138
                  slti         t3, a3, 310
                  add          s6, t3, a6
1600:             and          t1, a4, s8
                  ori          s2, t0, 618
                  srli         tp, s2, 7
                  lw           t5, 4(t0)
                  addi         t0, t0, 64
                  andi         t6, s1, -75
2281:             addi x24, x30, 1
2281:             jalr x24, x24, 0
sub_5:            add          s1, a4, a4
                  ori          s9, a6, 365
                  bge          s10, a5, sub_5_stack_p
sub_5_stack_p:    addi         t0, t0, -44
                  ori          s0, s11, 1649
                  add          s9, s6, s5
                  sw           t5, 4(t0)
                  xor          s3, s3, tp
                  sltu         zero, a1, t0
                  addi         s2, s4, 867
                  addi         gp, zero, 6 #init loop 0 counter
                  slt          s7, a2, zero
                  srai         a0, tp, 6
                  sltu         a3, t4, sp
                  lui          s5, 362628
                  slti         s6, t5, 404
                  srli         t2, s8, 10
                  auipc        s9, 715287
                  sra          a3, s1, s0
                  addi         s11, zero, 5 #init loop 0 limit
                  sra          tp, s11, a6
sub_5_0_0_t:      lui          a2, 814083
                  slt          s2, s11, t1
                  srli         t6, s7, 26
                  addi         gp, gp, -2 #update loop 0 counter
                  srli         a6, s3, 24
                  bgeu         gp, s11, sub_5_0_0_t #branch for loop 0
                  srl          s3, s10, tp
                  addi         a5, zero, 3 #init loop 1 counter
                  sll          s1, zero, t0
                  addi         s5, zero, 8 #init loop 1 limit
sub_5_2_1_t:      addi         t2, t5, 131
                  sll          s11, zero, tp
                  addi         a5, a5, 5 #update loop 1 counter
                  addi         tp, zero, 6 #init loop 0 counter
                  ori          t1, t1, -748
                  sltiu        s8, s1, 1887
                  sll          t6, a3, s6
                  and          s0, t3, a0
                  sub          s3, t1, s8
                  addi         a0, zero, 5 #init loop 0 limit
                  addi         t6, s6, -488
                  xor          s4, s6, t6
                  srl          gp, a3, s10
                  auipc        s9, 247304
                  addi         a6, s2, 964
sub_5_2_0_t:      and          a3, sp, s6
                  sltu         a6, zero, t2
                  auipc        t3, 583506
                  slt          s6, t3, t1
                  addi         tp, tp, -2 #update loop 0 counter
                  sltiu        sp, a0, 166
                  lui          t3, 747633
                  sub          ra, s8, t6
                  sltiu        a4, s3, 1126
                  addi         a4, t1, -340
                  bgeu         tp, a0, sub_5_2_0_t #branch for loop 0
                  srai         zero, a1, 26
                  sltiu        s8, a0, -1086
                  xor          gp, a1, s3
                  slti         s2, a6, 853
                  beq          a5, s5, sub_5_2_1_t #branch for loop 1
                  ori          s2, s3, 590
                  addi         s9, zero, 9 #init loop 0 counter
                  addi         s2, zero, -7 #init loop 0 limit
sub_5_1_0_t:      sltu         sp, a3, a5
                  addi         s9, s9, -2 #update loop 0 counter
                  bge          s9, s2, sub_5_1_0_t #branch for loop 0
                  ori          t1, s2, -2009
                  or           t5, gp, a4
                  bne          t3, a0, 9f
                  addi         t4, t4, -540
                  blt          s6, s3, 11f
                  srl          zero, s9, s0
                  bgeu         s11, a0, 17f
                  xori         t4, s0, -299
                  beq          a6, ra, 13f
                  andi         t2, a2, 258
9:                nop
                  addi         a5, gp, 237
11:               srl          s8, s8, s1
                  beq          a4, s0, 18f
13:               slt          s8, t3, s2
                  bne          t6, s10, 28f
                  auipc        a2, 751244
                  lui          s4, 961630
17:               add          tp, a5, t0
18:               slt          t5, t6, a3
                  sub          a6, s1, t6
                  bne          a1, gp, 22f
                  add          ra, s6, s8
22:               sltiu        a4, t2, 789
                  sra          t6, zero, t0
                  xor          s3, s8, s1
                  andi         s8, t5, -1250
                  bltu         s3, s5, 32f
                  slti         a3, tp, -1278
28:               or           t3, s0, s7
                  xor          t6, tp, s3
                  slt          a3, a6, t0
                  xor          s7, s9, tp
32:               bne          s4, s2, 51f
                  addi         a4, a1, -359
                  srai         a2, a5, 18
                  lui          a2, 1039839
                  srli         s4, s2, 31
                  sub          zero, s8, a5
                  srl          a4, zero, s7
                  addi         a2, a3, 1576
                  ori          s7, s1, 1056
                  andi         s4, s10, 306
                  bgeu         a5, t4, 48f
                  slti         a2, sp, -1179
                  slti         a4, a6, -74
                  bltu         a6, a0, 54f
                  bne          s7, s6, 62f
                  sra          a6, zero, t4
48:               blt          s7, s3, 51f
                  sltiu        a0, zero, 1008
                  sll          a7, s11, t3
51:               srli         t2, s8, 30
                  bgeu         t6, s6, 61f
                  nop
54:               slli         t5, s1, 10
                  xori         a2, t0, -621
                  slt          s4, a5, tp
                  sra          t2, s6, t0
                  xori         a3, s5, 1663
                  blt          a3, s8, 73f
                  andi         t5, t2, 1232
61:               or           s1, gp, s8
62:               lui          sp, 101697
                  bne          s8, s6, 71f
                  slt          s1, s4, t1
                  slli         s0, s0, 3
                  srli         t4, sp, 16
                  bne          t4, a5, 77f
                  addi         s9, s6, -1059
                  or           s7, a6, s6
                  sltu         a5, s6, t4
71:               slt          t5, a5, s7
                  bltu         s5, a4, 79f
73:               sub          t2, s1, t6
                  or           a4, s7, s1
                  sltu         zero, t5, s6
                  blt          a1, s8, 93f
77:               slti         sp, a0, 587
                  srli         a4, a3, 1
79:               bltu         a2, s11, 96f
                  sll          s4, a3, a0
                  blt          s0, zero, 97f
                  srl          s8, t5, s4
                  andi         a7, s1, -890
                  ori          gp, t3, 684
                  add          s6, a5, a6
                  xori         s6, a6, 202
                  sll          t5, s9, t4
                  srli         s0, s0, 30
                  srli         t1, a3, 9
                  bge          s0, a0, 95f
                  bne          t0, s6, 97f
                  addi         gp, ra, -1836
93:               ori          s1, s11, -1839
                  bltu         s3, t6, 111f
95:               srli         s11, s0, 17
96:               xori         t2, t0, 907
97:               bge          t2, s10, 107f
                  sra          tp, a5, a2
                  sltiu        s6, s8, -2013
                  srai         s3, t1, 3
                  sltiu        a5, tp, -984
                  sltu         s6, s0, gp
                  lui          a3, 542165
                  slli         a0, t5, 6
                  slt          gp, a2, a2
                  sll          t5, s1, a6
107:              sll          tp, t1, a0
                  srli         a0, s9, 3
                  ori          t4, s7, -1471
                  ori          s7, a5, -1150
111:              bne          sp, s5, 120f
                  srl          s1, ra, s5
                  add          t3, ra, a3
                  slli         t4, a1, 1
                  blt          s2, t3, 128f
                  auipc        gp, 1014056
                  srli         t3, tp, 28
                  sub          a0, a6, a5
                  bgeu         gp, t2, 123f
120:              bgeu         t4, gp, 140f
                  bne          t5, t0, 138f
                  bltu         s1, t1, 130f
123:              or           gp, s7, s0
                  xori         a5, a4, 640
                  sra          gp, t4, a6
                  sltiu        a2, a7, 1569
                  srl          t3, a1, s6
128:              nop
                  add          a7, a3, s9
130:              bge          a5, s10, 142f
                  addi         s9, s3, 1723
                  slt          s5, t1, s10
                  add          t4, s1, tp
                  auipc        t5, 704053
                  slti         a7, s2, -1512
                  xori         a2, t6, -1279
                  bltu         a7, a0, 140f
138:              slt          a4, t6, t6
                  sra          a2, t1, tp
140:              xori         t6, t1, 188
                  bge          a7, s2, 157f
142:              slt          a7, t0, t2
                  or           t5, a5, s2
                  beq          a0, s2, 149f
                  blt          a4, s9, 155f
                  slti         s4, s3, 1152
                  blt          a4, tp, 149f
                  bge          a3, a2, 156f
149:              beq          a3, t6, 155f
                  xor          t5, s1, t0
                  blt          s3, s10, 170f
                  andi         s8, s8, -18
                  srli         s1, ra, 10
                  srl          a2, s6, a0
155:              sll          s6, a0, s0
156:              slti         s8, t3, -258
157:              xori         t2, sp, -354
                  beq          a1, s4, 171f
                  xori         s0, t3, -380
                  bne          s5, t6, 166f
                  blt          a5, a6, 175f
                  ori          s2, a4, -1332
                  bge          a6, zero, 169f
                  auipc        a7, 68227
                  sltu         s1, s5, a0
166:              bgeu         t0, s1, 182f
                  beq          t3, t0, 177f
                  slt          t2, a7, s2
169:              sub          a7, t4, s8
170:              slli         zero, t5, 3
171:              bne          a1, tp, 185f
                  lui          t5, 518276
                  auipc        s7, 48439
                  slti         a4, s11, 133
175:              bgeu         gp, s1, 181f
                  add          sp, t6, s4
177:              bge          sp, tp, 186f
                  nop
                  slli         s0, s10, 11
                  srl          zero, sp, s5
181:              add          s4, ra, t2
182:              sra          s3, s6, t0
                  auipc        a7, 746714
                  addi         a0, s8, 1005
185:              sltu         tp, gp, a5
186:              ori          a6, a3, -723
                  lw           t5, 4(t0)
                  addi         t0, t0, 44
                  xori         gp, a4, -177
                  sll          s7, t4, s5
                  and          t3, t3, a0
                  nop
262:              addi x18, x30, 0
262:              jalr x18, x18, 0
sub_4:            lui          zero, 149438
                  auipc        zero, 697580
                  sltiu        s9, s6, -2022
                  beq          s5, t2, sub_4_stack_p
                  slli         tp, t4, 5
sub_4_stack_p:    addi         t0, t0, -12
                  ori          s0, zero, -897
                  sw           t5, 4(t0)
                  nop
                  bltu         s10, t4, 9f
                  slt          a2, s7, gp
                  bgeu         a2, s0, 13f
                  bgeu         s2, a4, 13f
                  xori         s7, s2, -205
                  slti         s5, t3, -1541
                  bge          a1, t0, 20f
                  beq          a1, t0, 9f
                  slti         s3, s3, 1106
9:                auipc        s0, 198060
                  slt          s6, a4, s4
                  bne          t4, t5, 28f
                  bgeu         ra, t3, 27f
13:               lui          a5, 716958
                  srl          a7, a0, a7
                  nop
                  add          s9, a7, a1
                  slti         s5, s6, 686
                  andi         s3, t4, -1387
                  sll          ra, a6, t6
20:               xor          s7, a7, tp
                  or           s5, s0, s10
                  blt          t4, s8, 26f
                  beq          gp, s10, 31f
                  sltu         s3, tp, s1
                  lui          t3, 292841
26:               sll          tp, a3, a1
27:               sltu         sp, gp, s10
28:               srl          t6, zero, zero
                  xori         a4, a5, -664
                  add          tp, t4, s8
31:               blt          t6, t4, 34f
                  sltu         s11, s10, s11
                  slt          s2, a1, s4
34:               slti         a5, a4, 1359
                  lw           t5, 4(t0)
                  xori         tp, ra, 1782
                  nop
                  srli         a6, zero, 17
                  addi         t0, t0, 12
                  sll          a6, t0, s5
                  add          s3, t4, a2
                  sub          tp, sp, t3
                  sll          t6, t1, s5
53:               addi x23, x30, 1
53:               jalr x23, x23, 0
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
.word 0x83529927, 0xb2ad4474, 0x4d6c6491, 0x0c54237c, 0xd1d0e89f, 0x19986e9c, 0xc9372232, 0x8e8833cd
.word 0x93458490, 0x575b21f1, 0xd2df5d38, 0x3e01ef8b, 0x2e737b8e, 0x63778856, 0x056ea57b, 0xd54a5bc3
.word 0x72857202, 0x7c05c8dc, 0x6e228a31, 0x37ad6d1e, 0xdd6e0143, 0xa9cb41f9, 0xc7f7c686, 0x88b2a68c
.word 0xe3eec4f5, 0xf580aa55, 0xd3e5b74c, 0x1a093f53, 0xb15932a7, 0x762ea52a, 0xfcfb98fc, 0x8b65adea
.word 0x575a62bb, 0x180e5666, 0x6ca9cc3e, 0x74e7fe67, 0x258cedaa, 0x3215b42f, 0xd604604a, 0xefc986bb
.word 0x4c5ae03a, 0xdde1f369, 0x6f99c6ac, 0x33aa0e87, 0x6f80783a, 0xc5bbd5ab, 0xb49fadba, 0x26bd8f0d
.word 0x658a96c4, 0x7470e1e2, 0x370b9127, 0x8591cab1, 0x8613ed4d, 0x29f8b1b5, 0x32dcbacd, 0x5a248211
.word 0x948adfd5, 0xfec02af4, 0xba67c5b5, 0x787c5d08, 0x3c33f9b8, 0x9285a574, 0x1ee16574, 0x4174a9a8
.word 0xd9220c4a, 0x19e9d145, 0x3137fad6, 0xfb5a2c05, 0xc371f7ce, 0xd8949d19, 0x7b4aeb91, 0x3895ea9e
.word 0x398ba79b, 0x80863cb2, 0xac5e5fd7, 0xdc22a22e, 0x346d1119, 0xf39ca51e, 0x579f06a3, 0xa9f74a0b
.word 0xa86c5528, 0x7efd7d3b, 0x54fc796e, 0xa5a5d332, 0x949f6f43, 0x0eae36a0, 0xc3b02c58, 0xd32ed040
.word 0x260914ce, 0x889fe0e4, 0x386b51f1, 0x2190491a, 0xd7a6c73e, 0x511f0938, 0x77623a28, 0xb157303f
.word 0xc810890a, 0xc600e4e4, 0xcc235596, 0x5d533323, 0x79a3d72c, 0x886c7064, 0x16e17416, 0xe06e9065
.word 0xfa92df38, 0x6e1d3691, 0xa7086743, 0x236e076e, 0x5c4a7ffa, 0xc9713095, 0xc6f4ec44, 0x486b1230
.word 0x62ca6a5c, 0x95df2768, 0x29a3a814, 0x5cce2dc9, 0xf74dd806, 0x41a3d40c, 0x38f78825, 0xb94a7892
.word 0xdcd54c7a, 0x5bea7851, 0x3f70358d, 0x7cf66059, 0x61ca07b9, 0x9147b3bb, 0x30eccaad, 0xd390e920
.word 0xda689dc3, 0xe4729dbb, 0x05221131, 0xe0976334, 0x60d8d1c7, 0xb8b80fc3, 0x906da2b9, 0x78d35179
.word 0x2df16da9, 0xe336252d, 0x5969b05b, 0x788eed28, 0xb5488742, 0xf6a25aa9, 0xe49c0da3, 0x44d1cb89
.word 0x7724fcb5, 0x88783596, 0xf02b730e, 0xc9b67a30, 0x82d344f9, 0xabaefdb9, 0x88f8630b, 0x43c37919
.word 0x5c30bc01, 0xdae7991e, 0x0426380c, 0x9a7cbddc, 0x4188c309, 0x6f8f140b, 0xf0cfd30d, 0x3175ecfa
.word 0xb24c2489, 0xf8c2c6a4, 0x16f2621b, 0xb615c2f4, 0x8b9b16dc, 0xa33e9d22, 0x6fcfa25e, 0x7be8f4af
.word 0x39c9731e, 0x7bd125e7, 0x59a1d38a, 0x056f0b40, 0x1adf3e88, 0x9102a9fc, 0xc7dc0d3f, 0x8260338a
.word 0xf1ad7e12, 0x2d11d4bc, 0x72c7efa3, 0x1a06eed5, 0x69d985d0, 0xccddf946, 0xeeeb42ea, 0x507c40c1
.word 0xad5870fd, 0x20e27f21, 0x0421f6cc, 0x4ada6934, 0x780b35e3, 0x6335be50, 0x4d9bea8f, 0xa9afce82
.word 0xb11ffed8, 0xdf04e6df, 0x6590d0a7, 0x43416728, 0xb4db56af, 0x8d998afb, 0xfd084e03, 0x845f3597
.word 0x6f264807, 0x3385fcd6, 0x5f67abda, 0x5ebe102e, 0xfdd04ced, 0xb5489912, 0x71f67494, 0x2341a2d4
.word 0x61108e67, 0x3cce58a0, 0x180d1704, 0x25659f84, 0xf6e44bd2, 0x69a451bb, 0x4dbfe665, 0xfe728e20
.word 0x6000a64f, 0x9a536da1, 0x5ef75b0b, 0x52b7c233, 0x3755ad56, 0x475258cb, 0x84e885f8, 0xda0f4eb9
.word 0xb9efabc8, 0x756055be, 0x8dbbf894, 0x13bde36c, 0x17931119, 0x29c2bf9b, 0xc6f076a6, 0x40e7da16
.word 0x41893aa0, 0xc2b0e37a, 0x442e34a4, 0xf6a624ee, 0x9b82c37a, 0x9bd4f232, 0x51216fcd, 0x60f9a5ab
.word 0x375b5556, 0xd5d2ebec, 0x00d14558, 0x916e57eb, 0x0ef9eed3, 0x8f4b8797, 0xb4f5b9a8, 0xaa6acfae
.word 0xab456cd8, 0x661b8315, 0x5dfbb063, 0x97af86a8, 0xa9e1fdf3, 0x89a5272e, 0xc17f93a5, 0x546424ce
.word 0xd3a2e817, 0x2fefb74a, 0xfeb5cb92, 0x3559ef8d, 0x46d6d43f, 0x30e0e5d5, 0xcb424317, 0x89181dc1
.word 0xa48bcc21, 0xcc088135, 0xa8b4df71, 0x55661cd5, 0xb1c091ea, 0x442746f0, 0x0092ee8b, 0xa227a497
.word 0x3533abaf, 0xc8c8bac7, 0xf3a89455, 0x4dcd7cd8, 0xc93f9216, 0x5d35b2c4, 0x2a1223cc, 0x239c0ffe
.word 0x0543b9c0, 0x951cbd67, 0x8df21b0a, 0x11e074ae, 0x4b93a6d0, 0x29f4b3d4, 0x09a92a61, 0x11667135
.word 0x8c8f9429, 0x329ff1e8, 0x51913808, 0xef934d90, 0x9fe1d2ec, 0xf9f29e89, 0xa69eac8a, 0x25c6d3fb
.word 0xb11df4ae, 0x6bbac64d, 0x4b7cc1d7, 0xd93e9fbb, 0x186bd2a1, 0xc497ccec, 0xbd199957, 0x0e247415
.word 0xd56b80ba, 0xa3f2b551, 0x26a880b1, 0x6748a12f, 0x880e505a, 0x3e720d87, 0xe93d4b3e, 0xb858305e
.word 0x294615f8, 0x8b8e8cb0, 0x7592fba4, 0x4818fa11, 0xdb074649, 0xd93fbe32, 0x49265a07, 0x44b287fd
.word 0xb8b9737d, 0x846796d7, 0x72427f09, 0x017efe56, 0x5d73823b, 0xf73d2053, 0x1725dac7, 0x6cba70f1
.word 0x00a204ea, 0xf4583b7b, 0x5156aa1f, 0xa8a4e983, 0x32e822e5, 0x0fe9d499, 0x9864e827, 0x29bc12da
.word 0x9f9be7ce, 0xd080759d, 0x8d55e470, 0x2b1f9aae, 0xb76f16af, 0x64c09ac0, 0x16186499, 0x52ee3484
.word 0xa68b8e2c, 0x451cf176, 0x21c98bf5, 0xf34416e2, 0x57986ea3, 0x15543a0d, 0xe10711c0, 0xb7d10ac2
.word 0xfd696d25, 0xbd3e0180, 0xcdf4c3be, 0x864f491b, 0xa4d817a8, 0x91c1e90a, 0x22145d5b, 0x9623a03c
.word 0x7f0acca5, 0x8fe19af7, 0x9caebf66, 0xc653004c, 0xd199021d, 0x72e091f2, 0x124e4890, 0x4b804325
.word 0x57ade800, 0x4846ed84, 0x25211dfc, 0xd9e00fdc, 0xd78c0ea9, 0x029875f4, 0x8b43d6f7, 0x2f25b677
.word 0xb85b81ab, 0x89d97c5d, 0x46ba9b5f, 0x9f0889b3, 0x5c64ca02, 0x3bd6443a, 0x74327c24, 0xee5642cd
.word 0x16ade08b, 0x8de43f5b, 0xd649eb58, 0x3de225db, 0x47f442cf, 0xe724f8ae, 0xf12ddd96, 0xb2387081
.word 0x931b8cfd, 0xc88233ee, 0x7aee5684, 0xd9d1d933, 0xe0c1455d, 0x67f5657a, 0x0e543363, 0x7fef2cf9
.word 0xe5267585, 0x1e6d9a60, 0xf6ab1bdf, 0x802f8555, 0x3beea9bc, 0xd94b4930, 0x8723aa5d, 0x34772333
.word 0xfa2276db, 0x37ef68e7, 0x7d16db84, 0xc86db00f, 0xd62b05b9, 0x70be75e7, 0x9d08c9c1, 0xfdefcb24
.word 0xcf2004b8, 0x6e19207d, 0xc0d0ecc3, 0xc234b659, 0x18f2f06c, 0xc4ac77c7, 0x98c59a5e, 0x726d796e
.word 0xccb7d614, 0x6a182722, 0x2270546a, 0x34e7f2ff, 0x2374def8, 0xceb3b38e, 0x38f1bede, 0xc724d54b
.word 0xf4cf35b1, 0xd1bd020a, 0x7a6599cb, 0xcbd55670, 0x38fcaca6, 0xbcae5dd4, 0x34e2f5db, 0x2899615b
.word 0xaff0e2d4, 0xeb8dd2fa, 0xeb2ae087, 0xa6f37025, 0xee859222, 0x673b8496, 0x90c7e41f, 0x4540f340
.word 0xf4620b17, 0xe355b366, 0x9b734801, 0xc0f65fcf, 0x72e10987, 0x3aa87ef3, 0xf37f9d02, 0x573f2535
.word 0xeb8475a9, 0xdabcbbfb, 0xf509af88, 0x05b01612, 0x1f2af674, 0xeac7fec4, 0x4aba8d4b, 0xe0f74ad6
.word 0x2a3e831a, 0x30116f60, 0x47f5a787, 0xccef6fc0, 0x8f8d459c, 0x151ae356, 0x78fd336e, 0xef9c5678
.word 0x191bceb5, 0xc625450f, 0x8e91ca90, 0xbbbc779a, 0xae82095b, 0xa4a57180, 0x19668a7b, 0xc9d7a1ae
.word 0x0dfb2a32, 0xb7c5ecf2, 0xaf761df8, 0x11128633, 0x869e427a, 0x71dae053, 0x2a500b17, 0xe44d9c91
.word 0x7442f5e2, 0xe8a5133c, 0x59f0c54a, 0x1c873d49, 0xc1c62195, 0xe1a0b36f, 0xd0229808, 0xcc36909e
.word 0x3356f657, 0x3251f336, 0x45987eff, 0x1d30e3af
.section .region_1,"aw",@progbits;
region_1:
.word 0xb80569ce, 0x82e321e6, 0xf84c9a18, 0xdeb92a47, 0x1f3baef3, 0x1e7ec35e, 0x45885409, 0x90b5b51a
.word 0x9b1a3b25, 0x9086d070, 0xa0a3b952, 0x179fcf5c, 0x9709c78f, 0x25effec7, 0x07f21e47, 0xefdd5bc5
.word 0x703738f5, 0x798653b1, 0x251e204a, 0xe4943ee3, 0x232f2b9b, 0xc9f4ca3f, 0x94e54e8b, 0x8cb5ec80
.word 0x0ae04abf, 0xd0678864, 0x4573499d, 0x55a9b370, 0x638a7007, 0x78911d52, 0xf983a38c, 0xeff54f3d
.word 0xc28c3104, 0x304c74ad, 0x64c9e024, 0x4b3541a9, 0x4f4ca14f, 0x44929db3, 0xf629044c, 0xc1a518e7
.word 0x2050b35c, 0x9075c8ad, 0x9c23122d, 0x463f1af1, 0x5401b312, 0x7fc4789e, 0x8563aa86, 0x038ebc81
.word 0xe16d3213, 0x7968349a, 0xadc29864, 0x0f1c3362, 0x5c1e9793, 0x8b1df0b8, 0x45b6ea4e, 0x5e0fb6d7
.word 0x4a710b13, 0x987a449d, 0x6afc142d, 0x7c4815dd, 0xe117ae4f, 0x04e3efa0, 0xf5715434, 0xd5da3d53
.word 0x93c7b732, 0x6ea47f97, 0xd102a671, 0x38d6e58d, 0xe430c581, 0xc086716c, 0x94d921b8, 0x9a43ea66
.word 0xeb39b6f4, 0x639c2e51, 0x940b4e05, 0x90a084a4, 0x587d75af, 0xe805ae8c, 0x80df82fd, 0x1bc8cab2
.word 0x3b4dd692, 0x744d7303, 0x27c1eccc, 0x151df490, 0x36e97bfa, 0x12d4e10c, 0x4bb906f9, 0x8f232f3a
.word 0x2822db15, 0x766ddac2, 0xe7dea52c, 0x3c817fa4, 0xe5b74a83, 0xfdd17164, 0xba04e3c3, 0x3ba27699
.word 0xd0de59f6, 0x310e3316, 0x0e05ac23, 0x88017cfd, 0xe2b50a23, 0x06407b92, 0x7f72fa33, 0x7d38118d
.word 0x201fc0de, 0xbda3ccd6, 0x74558230, 0x78cb9f8f, 0x63310ae0, 0xd6639394, 0x176071fa, 0xc43c3ecc
.word 0x052114f5, 0x1b2b0a88, 0xb8a2c714, 0x33b7b462, 0x3e32fd6a, 0xf7b9501b, 0xc829a70e, 0xc951ada2
.word 0x1371555e, 0x2e8f4b0c, 0x0060b7dc, 0x265d0db3, 0xcbbe0bf9, 0x463c0eca, 0xaa8af9b3, 0x68a1277f
.word 0xb3cbeecd, 0xe4508263, 0xcd187f3b, 0xfe9a9dc8, 0x93309e92, 0xa10a5182, 0x33d9a4f7, 0x6e0c19f5
.word 0x874ce619, 0x3d791ffd, 0x3f517998, 0x8c5547e8, 0xcf7fe09d, 0xff23cab2, 0x15ca2564, 0x06f55fda
.word 0x47e1a0f1, 0x13451e5a, 0xb7d90707, 0xc1d0b3a3, 0x2526a487, 0x532db142, 0xdd34f7db, 0x91ca2146
.word 0x2758306a, 0x8635c736, 0x6f6fd272, 0xec462074, 0xab357262, 0x5579e8df, 0xc3ee1bb4, 0x54588604
.word 0x647bb610, 0x605dfb0e, 0x531aaf07, 0x261cf38d, 0xcd3e107d, 0x880bcc94, 0xf667a616, 0x91ca1396
.word 0x9fbd4de6, 0xf8500cfd, 0xc4b0add1, 0x7402ccda, 0x4a1a1c74, 0xf1139640, 0xac9771b6, 0x05d2d91e
.word 0x6f0b0bcc, 0x239caac4, 0x9ea11ef6, 0x93f0147f, 0xacd8038a, 0xe0c5f08b, 0x2019053c, 0x8871a9d9
.word 0x8dbc9571, 0x9c2f8936, 0x103fb4c1, 0x565b275a, 0x1223e3ed, 0x0baf5643, 0x311c236a, 0xfbe310ec
.word 0x9e387588, 0x97627660, 0x9f330f9c, 0x1c10e845, 0x2be35c06, 0x769f57e3, 0x7159fdbd, 0x343245db
.word 0xc26f38c7, 0xbac8e927, 0x68398b6c, 0xf8990b71, 0x4ea9afbd, 0xaaefa932, 0x2e708431, 0x0f6233b0
.word 0x6d04acf4, 0xe6a4d3e1, 0x6b3b59ea, 0x2e3d9abf, 0x95181463, 0xaa859939, 0x26c4ab5a, 0x7979ef1e
.word 0x7106a582, 0x955e6ee1, 0xad90d17d, 0x6a8fef31, 0xfc753674, 0x669ef882, 0x56e38047, 0x90aafbf9
.word 0x3b986cbb, 0x440f349f, 0xd5d5fc77, 0x284bfa8b, 0x604ca7b2, 0x1e316e4c, 0x8eec26e3, 0x8d9cb466
.word 0xf978aa83, 0x224e4545, 0x94552676, 0xf187b1d5, 0x97def5b1, 0x6311122f, 0xb2ebf682, 0x992d6516
.word 0x59265b5d, 0x131124d1, 0x2e535782, 0x81a9b3a5, 0xf6d35369, 0x57d0d3a7, 0x2a5de30f, 0x72e8e799
.word 0xad57a610, 0x2de29dbd, 0xb49c6e23, 0xc56f02f8, 0x02b29913, 0xa55f356b, 0x5b0f9362, 0xae155ee4
.word 0x0f30d658, 0xe61ecd65, 0x7e93019e, 0x15bb7e93, 0x05f09494, 0x2e54a0d2, 0x2c2968c9, 0xe4a5e4e2
.word 0x202e6bce, 0xb8c37a37, 0x0d1dd14c, 0xca8805c5, 0xfafe7afb, 0xa49e00b3, 0xc8361b8f, 0x71294fb0
.word 0xec496d0d, 0xa8664652, 0xc33d19b4, 0xc70be942, 0x63a83992, 0xb562c07a, 0xff21a700, 0x57a33ad0
.word 0x64075ade, 0x7342c3bb, 0xc6bf8334, 0x240e58c2, 0xe41da06e, 0x9e2de6c0, 0x9e8cb4b7, 0x0675f792
.word 0x7489cba3, 0x49cddd1c, 0xe1633eb2, 0x10070c30, 0x09aa140a, 0x21a5cfa5, 0x94ec3e6a, 0x340577c9
.word 0x16656d40, 0xcd2e0e48, 0xaa55529e, 0x16d4f8ea, 0xf1345c3b, 0xc9b76718, 0x4c0b3fd3, 0x9d94ed9b
.word 0x6f504371, 0xc891c09a, 0x7c5cdcc0, 0x69c75747, 0x164d8ff9, 0xad834c71, 0x9d827472, 0x0fa1a210
.word 0x1fe6b604, 0xb56df052, 0x610075bc, 0xd0ab143f, 0xa1dc1a9e, 0x983f31c7, 0x1a7e5113, 0x52722aca
.word 0x139df09d, 0x0a9cef4e, 0x78c3ef95, 0x986288ca, 0x8ac48521, 0x738fab43, 0x2be6ed4d, 0xc34f59f8
.word 0x48763837, 0x6f014eaf, 0x2622d42a, 0x935d8b0d, 0x80c0088a, 0x9a54b27b, 0xa521bfa6, 0xf62f6512
.word 0x844f25f8, 0xe0b8ff49, 0x9c092ca5, 0x510300d7, 0xee5084e8, 0x1fdd5887, 0xfa3c7963, 0xbc5a824d
.word 0xab8b0227, 0xcf8b789c, 0x17be5192, 0x196169ec, 0x57d1f65e, 0xce19cb2c, 0xe949415c, 0x856efd20
.word 0xccc19c2e, 0xba054be5, 0x58b5ab3e, 0xaf62c670, 0xb25d5fd5, 0x67469dd4, 0xf18b546e, 0xd102a51a
.word 0x9432553d, 0xb13c4a06, 0x4a549e5f, 0x6b6acc1c, 0x8629887a, 0xd4c5c0ba, 0xc8fc1ebf, 0x599c1841
.word 0xbddc910b, 0x1e3c36dc, 0xde051355, 0xfcc70057, 0xfb894a81, 0xa9d55807, 0x54c4cb68, 0x96837e2d
.word 0x72b8c367, 0xcbd11652, 0xe9405759, 0x6361fb3a, 0x0468e50c, 0x116cf2b2, 0x8aaad5aa, 0x5ad586c8
.word 0x46c065ab, 0x4aa0c279, 0xe414b30b, 0xad2afc77, 0x675fc86d, 0xa096601f, 0x73ee0ef0, 0xe5add277
.word 0xe9be165d, 0x58367d45, 0x9e7769b1, 0xbf146f4b, 0xee90608f, 0xf612641c, 0x1c8f1f70, 0x8bc7f512
.word 0x546d143f, 0xe4dbcf24, 0x9ff1e09f, 0xfa4433ba, 0xd6caf144, 0xb9ac8022, 0x7424c518, 0x74b863f0
.word 0xe31b67f4, 0x3369870f, 0xbd6a6aa1, 0xc89c638e, 0xad255bdf, 0x271871c1, 0xc412430d, 0xa302631c
.word 0x6bc8d57c, 0x3df36927, 0xe4c1635a, 0xa25f9bc2, 0xad4f9158, 0xdabbe2e4, 0x9fc64077, 0x61437f56
.word 0xc5ee5770, 0x9e0ceb6c, 0xbaa5c2fc, 0x0002402f, 0x712499d2, 0x797bfa20, 0x2ebc8be6, 0xb88d9b70
.word 0x383cf4fe, 0x99181caa, 0x694e6e12, 0x96952a77, 0xe83b9147, 0x485a57ea, 0x288b79e1, 0xe0a63e7e
.word 0xcb1a3c87, 0x04a47fcc, 0x40788778, 0x1a9d0e17, 0x77dbc19c, 0x7729540b, 0x5ab9523e, 0x59cff21e
.word 0xded36594, 0x5f7ca4cb, 0x1a84b8b4, 0xb79891fc, 0x78881c50, 0x7630297c, 0xcd5aa726, 0x1012fc19
.word 0xa2e0d12a, 0x341f6b9d, 0xad93a5b0, 0xc4189533, 0x59d1dbc9, 0x59f99172, 0x6a81b7af, 0x3e6333cb
.word 0x61f45c1d, 0xebc330ee, 0x11434358, 0xbd9f97c7, 0x2585a995, 0x9d7674fe, 0xde65b50d, 0xdadc38f5
.word 0x4dcd6fc1, 0x0dbb698e, 0xabe39a9b, 0xa9bb1bff, 0x0f8e937f, 0x7e70000e, 0x2865aeb6, 0xf7514f6c
.word 0x7d619c0e, 0xfc7ec1c4, 0x774b4582, 0xba567b14, 0xd8f1f6ab, 0x127997b5, 0x891fff65, 0x717d3517
.word 0x2362e9fa, 0x7d49f2b1, 0xded3a932, 0xb42ceae7, 0x082c0249, 0xb13b5362, 0x2e49b419, 0xc4a450ca
.word 0x633a000f, 0xce944a8b, 0xc1fe0c73, 0xb56ec306
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
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x11, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_2:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x11, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_3:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x11, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_4:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x11, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_5:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x11, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_6:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x11, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_7:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x11, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_8:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x11, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_9:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x11, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_10:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x11, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_11:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x11, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_12:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x11, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_13:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x11, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_14:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x11, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_15:
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x11, x5, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
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
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x11, x5, zero
                  csrr x9, 0x341 # MEPC
                  csrr x9, 0x342 # MCAUSE
                  li x16, 0x3 # BREAKPOINT
                  beq x9, x16, ebreak_handler
                  li x16, 0x8 # ECALL_UMODE
                  beq x9, x16, ecall_handler
                  li x16, 0x9 # ECALL_SMODE
                  beq x9, x16, ecall_handler
                  li x16, 0xb # ECALL_MMODE
                  beq x9, x16, ecall_handler
                  li x16, 0x1
                  beq x9, x16, instr_fault_handler
                  li x16, 0x5
                  beq x9, x16, load_fault_handler
                  li x16, 0x7
                  beq x9, x16, store_fault_handler
                  li x16, 0xc
                  beq x9, x16, pt_fault_handler
                  li x16, 0xd
                  beq x9, x16, pt_fault_handler
                  li x16, 0xf
                  beq x9, x16, pt_fault_handler
                  li x16, 0x2 # ILLEGAL_INSTRUCTION
                  beq x9, x16, illegal_instr_handler
                  csrr x16, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

ecall_handler:    
                  la x9, _start
                  sw x0, 0(x9)
                  sw x1, 4(x9)
                  sw x2, 8(x9)
                  sw x3, 12(x9)
                  sw x4, 16(x9)
                  sw x5, 20(x9)
                  sw x6, 24(x9)
                  sw x7, 28(x9)
                  sw x8, 32(x9)
                  sw x9, 36(x9)
                  sw x10, 40(x9)
                  sw x11, 44(x9)
                  sw x12, 48(x9)
                  sw x13, 52(x9)
                  sw x14, 56(x9)
                  sw x15, 60(x9)
                  sw x16, 64(x9)
                  sw x17, 68(x9)
                  sw x18, 72(x9)
                  sw x19, 76(x9)
                  sw x20, 80(x9)
                  sw x21, 84(x9)
                  sw x22, 88(x9)
                  sw x23, 92(x9)
                  sw x24, 96(x9)
                  sw x25, 100(x9)
                  sw x26, 104(x9)
                  sw x27, 108(x9)
                  sw x28, 112(x9)
                  sw x29, 116(x9)
                  sw x30, 120(x9)
                  sw x31, 124(x9)
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x5, x11, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

load_fault_handler:
                  add x5, x11, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

store_fault_handler:
                  add x5, x11, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

ebreak_handler:   
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x5, x11, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

illegal_instr_handler:
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x5, x11, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x9, 0x300 # MSTATUS;
                  csrr  x9, 0x304 # MIE;
                  csrr  x9, 0x344 # MIP;
                  csrrc x9, 0x344, x9 # MIP;
                  add x5, x11, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
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
