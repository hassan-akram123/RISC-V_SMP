.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x10, h0_start
jalr x0, x10, 0
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
                  li x0, 0x9
                  li x1, 0x0
                  li x2, 0xf22d4f48
                  li x3, 0x118a6709
                  li x4, 0x0
                  li x5, 0x80000000
                  li x6, 0x80000000
                  li x7, 0xfa885843
                  li x9, 0x2d9d487
                  li x10, 0x0
                  li x11, 0xf711b304
                  li x13, 0xa
                  li x14, 0xe0c6217
                  li x15, 0x0
                  li x16, 0xf2f434e0
                  li x17, 0xf
                  li x18, 0x0
                  li x19, 0x5
                  li x20, 0x5
                  li x21, 0x3cfd600b
                  li x22, 0xd
                  li x23, 0x80000000
                  li x24, 0x0
                  li x25, 0xff77f877
                  li x26, 0x80000000
                  li x27, 0x0
                  li x28, 0x0
                  li x29, 0xefb5ba0e
                  li x30, 0x4
                  li x31, 0x7
                  la x8, user_stack_end
main:             jal          t1, 0f
0:                jal          t3, 6f
1:                jal          ra, 28f
2:                jal          a6, 3f
3:                jal          ra, 13f
4:                jal          s1, 30f
5:                jal          tp, 16f
6:                jal          gp, 27f
7:                jal          ra, 10f
8:                jal          ra, 25f
9:                jal          ra, 2b
10:               jal          s3, 9b
11:               jal          ra, 1b
12:               jal          t1, 8b
13:               jal          t2, 21f
14:               jal          ra, 4b
15:               jal          ra, 12b
16:               jal          a1, 20f
17:               jal          t1, 15b
18:               jal          t1, 19f
19:               jal          t1, 7b
20:               jal          a7, 22f
21:               jal          tp, 5b
22:               jal          t3, 17b
23:               jal          ra, 26f
24:               jal          tp, 18b
25:               jal          ra, 23b
26:               jal          ra, 29f
27:               jal          ra, 11b
28:               jal          ra, 24b
29:               jal          ra, 14b
30:               slti         t0, gp, -1122
                  andi         s10, a0, 227
                  or           t2, a5, sp
                  slti         s5, t0, -1286
                  andi         a3, t1, 1562
                  slt          t5, s11, tp
                  sll          a7, s1, s10
                  nop
                  la           t2, sub_1
                  xor          s11, s4, a7
                  add          tp, s5, s7
                  addi         t2, t2, 502
                  blt          tp, zero, main_j2 #branch to jump instr
                  xori         s7, t1, 1990
                  add          s11, s9, t5
main_j2:          jalr         t1, t2, -502 #jump main -> sub_1
                  sub          s7, gp, t0
                  xori         s3, a4, 1660
                  blt          s10, t0, 23f
                  or           s2, s9, a4
                  slti         s7, s7, -591
                  beq          s0, ra, 22f
                  slli         s2, sp, 18
                  add          zero, gp, t5
                  or           t2, s0, t0
                  and          t5, t0, t1
                  sltiu        s1, s2, 1421
                  beq          ra, gp, 19f
                  auipc        t4, 1038291
                  sltu         a7, a0, s3
                  sltu         s2, t1, s3
19:               and          a7, s4, t2
                  srli         a4, s5, 16
                  or           t6, t6, s4
22:               lui          s11, 42147
23:               beq          t1, tp, 36f
                  srli         a7, s7, 17
                  xori         t5, a2, -1091
                  beq          s2, gp, 33f
                  or           a4, a1, s11
                  srli         t2, s5, 1
                  andi         a4, s5, -1369
                  xori         gp, sp, 356
                  sub          zero, s5, s10
                  srai         t1, t5, 6
33:               xori         gp, a3, -837
                  sub          s1, a6, t0
                  slti         s2, a0, -953
36:               ori          s8, t5, -1718
                  xor          s10, s7, s2
                  bne          a6, a3, 49f
                  srli         t6, t1, 3
                  sltiu        a5, t5, -1422
                  la           t1, sub_1
                  auipc        a4, 377832
                  addi         t1, t1, 539
                  nop
                  srl          s1, a2, a2
                  srai         s3, zero, 29
                  or           t3, s9, a2
main_j1:          jalr         t1, t1, -539 #jump main -> sub_1
                  bne          t6, a4, 54f
                  bgeu         t4, s1, 56f
                  bge          a7, t6, 58f
                  blt          s7, a7, 58f
                  sltiu        t5, a3, 1535
                  slli         sp, s10, 23
                  bge          a3, s0, 58f
                  xori         s1, t4, -1615
49:               blt          t3, t2, 58f
                  bne          ra, a0, 55f
                  srai         a6, a0, 28
                  sltu         a6, s2, a4
                  blt          ra, s1, 58f
54:               add          a4, s1, t5
55:               lui          a6, 85831
56:               srli         t0, s6, 0
                  andi         s4, s2, -739
58:               and          tp, a4, s11
                  la x10, test_done
                  jalr x0, x10, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            ori          a7, s3, -734
                  sll          zero, t5, a0
                  bgeu         s0, s5, sub_4_stack_p
                  sub          s5, a2, a0
sub_4_stack_p:    addi         s0, s0, -20
                  sra          s10, s7, t2
                  sw           t1, 4(s0)
                  sra          s8, t4, s0
                  xori         t0, s7, -708
                  slli         t2, a6, 5
                  ori          a3, s5, 682
                  or           t1, a3, a3
                  srl          a3, t0, s4
                  andi         t4, ra, 1142
                  ori          zero, t0, 1201
                  srli         s5, s11, 19
                  auipc        t3, 654927
                  xor          a1, s5, s10
sub_4_j8:         jal          t1, sub_5 #jump sub_4 -> sub_5
sub_4_1:          jal          t1, 12f
0:                jal          ra, 7f
1:                jal          s8, 10f
2:                jal          ra, 11f
3:                jal          s1, 4f
4:                jal          ra, 6f
5:                jal          a1, 2b
6:                jal          t1, 0b
7:                jal          ra, 1b
8:                jal          ra, 13f
9:                jal          ra, 3b
10:               jal          ra, 8b
11:               jal          ra, 9b
12:               jal          ra, 5b
13:               sll          t4, s6, a7
sub_4_0:          jal          t1, 11f
0:                jal          gp, 9f
1:                jal          tp, 0b
2:                jal          ra, 13f
3:                jal          t1, 4f
4:                jal          t1, 5f
5:                jal          s1, 12f
6:                jal          ra, 10f
7:                jal          s8, 1b
8:                jal          t1, 7b
9:                jal          ra, 2b
10:               jal          ra, 3b
11:               jal          t1, 6b
12:               jal          gp, 8b
13:               addi         s5, t5, 1889
                  slli         a7, a2, 6
                  ori          s6, s9, 45
                  bgeu         tp, zero, 22f
                  sub          ra, t0, a4
                  sltu         zero, s4, a2
                  lui          s4, 14405
                  bne          a1, t4, 22f
                  slt          a7, s1, t4
                  sll          zero, t3, t1
                  bne          ra, zero, 22f
                  sub          tp, a3, a6
                  bltu         a7, a6, 15f
                  auipc        a3, 559761
                  bgeu         t0, s9, 26f
                  or           a1, s8, zero
15:               nop
                  srl          t6, t3, a4
                  slt          s11, t1, t3
                  xor          s11, t4, s1
                  srai         t4, s9, 16
                  srai         t3, s4, 21
                  slli         a4, s8, 13
22:               srl          s10, a3, a6
                  bne          s8, s0, 24f
24:               sll          gp, t3, zero
                  andi         a5, t1, -630
26:               srli         t2, a5, 2
                  srai         t3, t3, 12
                  sltiu        t3, gp, 651
                  sltiu        s1, s10, -50
                  slli         a5, a7, 29
                  nop
                  add          s11, t6, zero
                  ori          s5, zero, 516
                  bgeu         t5, a4, 47f
                  sub          a7, t6, s8
                  srli         tp, s8, 1
                  bne          a5, t1, 47f
                  slt          s5, s11, s6
                  and          s2, a4, s9
                  srl          a3, t1, s6
                  sra          s2, a7, a4
                  srai         t0, tp, 9
                  add          a3, s10, s6
                  xori         a1, t4, -296
                  slli         s8, a7, 4
                  and          s11, t2, s1
47:               ori          a5, t5, -1542
                  sra          s4, gp, a0
                  sltu         sp, s1, s9
                  sra          t5, s9, t6
                  sll          a4, s10, t3
                  sra          t5, ra, s9
                  bltu         zero, s5, 57f
                  bge          a2, s10, 62f
                  slt          zero, tp, a0
                  slli         t3, t3, 24
57:               or           gp, t1, t3
                  and          s7, s10, t5
                  xori         zero, a3, 1229
                  slti         s9, s4, 1966
                  sra          a6, a2, a0
62:               sltu         tp, s0, a6
                  auipc        s3, 411737
                  sll          t0, t1, s5
                  xor          a5, a4, s7
                  sltu         s3, a3, sp
                  nop
                  and          s10, a1, a2
                  blt          s5, s1, 72f
                  xor          t6, zero, t2
                  sra          a7, s10, a7
72:               nop
                  and          s5, sp, sp
                  sltu         s6, tp, a5
                  srai         s3, s8, 10
                  blt          t1, gp, 78f
                  blt          zero, s8, 87f
78:               nop
                  sub          zero, t1, t1
                  sltiu        s5, s1, 2008
                  addi         t5, s8, 1769
                  auipc        a5, 533900
                  and          a3, a7, t2
                  srai         t5, s2, 29
                  sub          s4, s1, a7
                  srai         a1, a3, 28
                  bgeu         t0, t2, sub_4_j7 #branch to jump instr
                  slli         s6, a0, 2
sub_4_j7:         jal          t1, sub_5 #jump sub_4 -> sub_5
                  srai         t1, s1, 27
                  or           s1, sp, a0
                  lui          t1, 201120
                  blt          t2, a3, 102f
                  srai         t3, a0, 6
                  srl          s8, t3, s2
87:               auipc        t2, 318611
                  xori         a4, t3, -1325
                  andi         t0, s7, 1810
                  bge          t3, t6, 109f
                  lui          zero, 760728
                  bne          s1, t0, 111f
                  bltu         s5, s9, 100f
                  xor          a7, s8, a6
                  nop
                  sra          sp, a5, a6
                  xori         s11, a4, -423
                  slli         a3, a0, 3
                  blt          a1, s9, 108f
100:              nop
                  add          s3, a5, ra
102:              bne          s11, s3, 109f
                  srl          a3, s8, t5
                  addi         a1, s8, -23
                  xor          a6, zero, t5
                  or           s10, a6, a4
                  srli         s2, t0, 31
108:              andi         s11, t4, -603
109:              xori         s11, a3, 1178
                  ori          a7, s1, -923
111:              blt          s9, s4, 128f
                  bltu         a4, s4, 125f
                  sra          s11, t4, a4
                  sltiu        tp, t1, 1833
                  xor          a6, s8, t1
                  sltiu        t4, sp, 1563
                  addi         t0, t6, -1152
                  addi         t5, s8, -604
                  lui          s5, 877818
                  auipc        t1, 989091
                  beq          s2, a1, 135f
                  sltiu        t2, a7, -1042
                  sltu         a7, a2, s0
                  add          t0, s7, a5
125:              lui          t5, 626368
                  slli         a1, t3, 23
                  bne          ra, t4, 137f
128:              srli         a6, s8, 24
                  slt          t2, t4, s4
                  bge          s0, s2, 137f
                  blt          a2, a2, 137f
                  ori          sp, ra, -1189
                  addi         t5, s4, -1931
                  or           t4, t3, a3
135:              slti         s3, s9, 1155
                  bltu         tp, a1, 137f
137:              xori         t4, s8, 457
                  lw           t1, 4(s0)
                  nop
                  add          a7, t4, a5
                  andi         t5, s0, -218
                  sra          a3, t5, a0
                  addi         s0, s0, 20
                  or           s8, t6, zero
203:              addi x4, x6, 0
203:              jalr x4, x4, 0
sub_2:            and          a5, s8, s4
                  bgeu         s6, t5, sub_2_stack_p
                  slt          a1, s5, s4
sub_2_stack_p:    addi         s0, s0, -56
                  sw           t1, 4(s0)
                  or           t2, s9, s5
sub_2_6:          jal          t1, 1f
0:                jal          s5, 7f
1:                jal          t1, 11f
2:                jal          ra, 6f
3:                jal          t1, 8f
4:                jal          sp, 0b
5:                jal          ra, 13f
6:                jal          s1, 5b
7:                jal          s4, 3b
8:                jal          gp, 9f
9:                jal          s6, 12f
10:               jal          ra, 4b
11:               jal          ra, 10b
12:               jal          ra, 2b
13:               slti         a4, t6, -2013
sub_2_1:          jal          t1, 12f
0:                jal          s10, 9f
1:                jal          ra, 6f
2:                jal          ra, 0b
3:                jal          ra, 1b
4:                jal          ra, 11f
5:                jal          s6, 2b
6:                jal          t1, 10f
7:                jal          s7, 3b
8:                jal          t1, 5b
9:                jal          ra, 7b
10:               jal          ra, 4b
11:               jal          t1, 14f
12:               jal          a3, 13f
13:               jal          ra, 8b
14:               add          t5, s10, a0
sub_2_14:         jal          t1, 13f
0:                jal          a7, 1f
1:                jal          gp, 5f
2:                jal          ra, 16f
3:                jal          t0, 2b
4:                jal          ra, 9f
5:                jal          s10, 14f
6:                jal          ra, 7f
7:                jal          ra, 11f
8:                jal          s5, 3b
9:                jal          t3, 8b
10:               jal          tp, 15f
11:               jal          t1, 0b
12:               jal          s9, 6b
13:               jal          ra, 10b
14:               jal          ra, 4b
15:               jal          ra, 12b
16:               srli         t0, s8, 28
sub_2_2:          jal          t1, 6f
0:                jal          t5, 3f
1:                jal          t1, 7f
2:                jal          sp, 12f
3:                jal          tp, 10f
4:                jal          t1, 0b
5:                jal          t0, 13f
6:                jal          t1, 9f
7:                jal          t1, 8f
8:                jal          ra, 4b
9:                jal          ra, 11f
10:               jal          ra, 16f
11:               jal          ra, 14f
12:               jal          t1, 5b
13:               jal          a3, 1b
14:               jal          ra, 15f
15:               jal          a1, 2b
16:               addi         t6, s1, -1297
sub_2_7:          jal          t1, 6f
0:                jal          ra, 4f
1:                jal          sp, 17f
2:                jal          t1, 7f
3:                jal          sp, 0b
4:                jal          t6, 14f
5:                jal          t1, 10f
6:                jal          ra, 9f
7:                jal          gp, 3b
8:                jal          ra, 18f
9:                jal          ra, 15f
10:               jal          t1, 8b
11:               jal          s11, 1b
12:               jal          t1, 11b
13:               jal          ra, 5b
14:               jal          ra, 13b
15:               jal          ra, 12b
16:               jal          ra, 2b
17:               jal          t1, 16b
18:               auipc        t1, 266538
sub_2_4:          jal          t1, 6f
0:                jal          ra, 14f
1:                jal          t5, 8f
2:                jal          t1, 16f
3:                jal          ra, 9f
4:                jal          ra, 12f
5:                jal          ra, 13f
6:                jal          ra, 4b
7:                jal          t1, 10f
8:                jal          ra, 15f
9:                jal          ra, 1b
10:               jal          a7, 2b
11:               jal          t1, 7b
12:               jal          t3, 3b
13:               jal          t1, 11b
14:               jal          ra, 5b
15:               jal          a7, 0b
16:               sll          zero, s6, s10
sub_2_11:         jal          t1, 11f
0:                jal          a7, 17f
1:                jal          ra, 6f
2:                jal          t3, 21f
3:                jal          t0, 18f
4:                jal          t0, 20f
5:                jal          s4, 12f
6:                jal          ra, 15f
7:                jal          ra, 4b
8:                jal          t0, 14f
9:                jal          ra, 7b
10:               jal          t1, 19f
11:               jal          ra, 2b
12:               jal          ra, 10b
13:               jal          ra, 5b
14:               jal          t1, 9b
15:               jal          s9, 8b
16:               jal          ra, 1b
17:               jal          ra, 23f
18:               jal          ra, 0b
19:               jal          s10, 16b
20:               jal          ra, 3b
21:               jal          ra, 22f
22:               jal          ra, 13b
23:               slti         s4, a2, -125
sub_2_0:          jal          t1, 16f
0:                jal          ra, 15f
1:                jal          ra, 19f
2:                jal          t1, 7f
3:                jal          ra, 8f
4:                jal          ra, 9f
5:                jal          a4, 18f
6:                jal          ra, 13f
7:                jal          t1, 12f
8:                jal          t4, 10f
9:                jal          t1, 11f
10:               jal          t1, 2b
11:               jal          tp, 1b
12:               jal          ra, 5b
13:               jal          a3, 14f
14:               jal          s4, 4b
15:               jal          sp, 6b
16:               jal          t1, 3b
17:               jal          ra, 0b
18:               jal          ra, 17b
19:               sll          a5, t5, sp
sub_2_12:         jal          t1, 13f
0:                jal          ra, 7f
1:                jal          ra, 10f
2:                jal          t1, 1b
3:                jal          ra, 23f
4:                jal          ra, 20f
5:                jal          ra, 6f
6:                jal          s11, 8f
7:                jal          ra, 16f
8:                jal          t1, 4b
9:                jal          ra, 11f
10:               jal          ra, 9b
11:               jal          t0, 24f
12:               jal          ra, 5b
13:               jal          s11, 14f
14:               jal          t1, 12b
15:               jal          ra, 17f
16:               jal          t1, 15b
17:               jal          a6, 18f
18:               jal          ra, 19f
19:               jal          ra, 2b
20:               jal          ra, 3b
21:               jal          t1, 22f
22:               jal          ra, 0b
23:               jal          t1, 21b
24:               sltu         a6, s7, sp
sub_2_10:         jal          t1, 3f
0:                jal          ra, 8f
1:                jal          t1, 10f
2:                jal          t1, 6f
3:                jal          ra, 17f
4:                jal          t1, 0b
5:                jal          t1, 12f
6:                jal          sp, 16f
7:                jal          a4, 1b
8:                jal          ra, 11f
9:                jal          t0, 14f
10:               jal          ra, 13f
11:               jal          t1, 2b
12:               jal          a5, 20f
13:               jal          ra, 4b
14:               jal          s9, 5b
15:               jal          ra, 7b
16:               jal          s3, 9b
17:               jal          s1, 19f
18:               jal          t1, 15b
19:               jal          gp, 18b
20:               addi         a5, gp, -1010
sub_2_16:         jal          t1, 7f
0:                jal          a7, 6f
1:                jal          s11, 2f
2:                jal          t4, 10f
3:                jal          s9, 11f
4:                jal          t0, 8f
5:                jal          t1, 3b
6:                jal          ra, 9f
7:                jal          ra, 0b
8:                jal          t1, 12f
9:                jal          t3, 5b
10:               jal          a3, 4b
11:               jal          ra, 1b
12:               or           t4, s2, tp
sub_2_5:          jal          t1, 18f
0:                jal          t1, 15f
1:                jal          t6, 3f
2:                jal          s7, 9f
3:                jal          ra, 26f
4:                jal          ra, 5f
5:                jal          a7, 11f
6:                jal          ra, 12f
7:                jal          t1, 27f
8:                jal          ra, 21f
9:                jal          t1, 0b
10:               jal          s11, 22f
11:               jal          ra, 30f
12:               jal          ra, 17f
13:               jal          ra, 2b
14:               jal          ra, 8b
15:               jal          t1, 25f
16:               jal          a1, 14b
17:               jal          s8, 4b
18:               jal          t1, 16b
19:               jal          t1, 23f
20:               jal          ra, 7b
21:               jal          t0, 24f
22:               jal          t1, 28f
23:               jal          t1, 29f
24:               jal          ra, 13b
25:               jal          s9, 19b
26:               jal          s1, 10b
27:               jal          s8, 1b
28:               jal          ra, 6b
29:               jal          ra, 20b
30:               nop
sub_2_15:         jal          t1, 9f
0:                jal          ra, 12f
1:                jal          ra, 8f
2:                jal          t1, 5f
3:                jal          ra, 1b
4:                jal          t1, 11f
5:                jal          ra, 4b
6:                jal          ra, 2b
7:                jal          ra, 3b
8:                jal          t0, 0b
9:                jal          t0, 6b
10:               jal          t0, 13f
11:               jal          ra, 7b
12:               jal          ra, 10b
13:               jal          ra, 14f
14:               or           t6, a3, tp
sub_2_13:         jal          t1, 14f
0:                jal          ra, 8f
1:                jal          ra, 0b
2:                jal          t1, 12f
3:                jal          ra, 7f
4:                jal          ra, 17f
5:                jal          ra, 23f
6:                jal          t1, 9f
7:                jal          a7, 10f
8:                jal          t1, 24f
9:                jal          ra, 20f
10:               jal          tp, 13f
11:               jal          a7, 18f
12:               jal          s8, 21f
13:               jal          s1, 4b
14:               jal          a6, 1b
15:               jal          s1, 26f
16:               jal          a1, 19f
17:               jal          ra, 22f
18:               jal          s10, 16b
19:               jal          ra, 2b
20:               jal          t3, 3b
21:               jal          ra, 25f
22:               jal          ra, 5b
23:               jal          ra, 15b
24:               jal          ra, 11b
25:               jal          t1, 6b
26:               srl          s9, t3, s11
sub_2_8:          jal          t1, 5f
0:                jal          ra, 4f
1:                jal          ra, 9f
2:                jal          t3, 7f
3:                jal          t6, 18f
4:                jal          ra, 17f
5:                jal          ra, 0b
6:                jal          ra, 15f
7:                jal          ra, 14f
8:                jal          gp, 3b
9:                jal          t4, 16f
10:               jal          ra, 19f
11:               jal          t1, 2b
12:               jal          ra, 1b
13:               jal          tp, 11b
14:               jal          ra, 6b
15:               jal          a5, 10b
16:               jal          ra, 13b
17:               jal          a6, 8b
18:               jal          a3, 12b
19:               srli         s9, tp, 17
sub_2_9:          jal          t1, 7f
0:                jal          ra, 10f
1:                jal          sp, 8f
2:                jal          ra, 1b
3:                jal          t1, 2b
4:                jal          gp, 6f
5:                jal          tp, 0b
6:                jal          ra, 12f
7:                jal          ra, 11f
8:                jal          gp, 5b
9:                jal          ra, 3b
10:               jal          t1, 4b
11:               jal          ra, 9b
12:               sub          t3, t4, s11
                  sub          s9, s4, a3
                  bge          s6, a7, 17f
                  bne          s6, s2, 16f
                  nop
                  xor          s4, a3, a2
                  bge          a4, t0, 18f
                  beq          s10, ra, 22f
                  sra          t5, t1, a4
                  and          sp, s5, t0
                  xor          a5, t3, s7
                  xor          a4, zero, a1
                  sll          s11, s7, s0
                  bne          s1, s4, 27f
                  sra          tp, t6, s10
                  beq          t2, t1, 27f
                  bne          a3, s8, 29f
16:               srli         s4, sp, 17
17:               slti         a5, t6, 1024
18:               blt          t6, zero, 23f
                  blt          t1, gp, 30f
                  xori         t0, s9, -2033
                  xori         sp, t5, -1169
22:               or           s9, a0, t4
23:               sub          s3, t1, sp
                  srli         a3, t3, 24
                  nop
                  srli         s4, t6, 30
27:               auipc        tp, 489652
                  addi         s5, s5, -382
29:               beq          tp, s11, 35f
30:               srl          s10, a3, gp
                  slt          t4, s6, s10
                  beq          s11, a2, 33f
33:               bge          a6, s10, 43f
                  andi         a5, t3, 1008
35:               addi         t3, a7, -1831
                  nop
                  bge          t2, t2, 55f
                  and          ra, s5, s1
                  sll          tp, a5, sp
                  slti         s7, t0, -1322
                  bge          a0, s5, 59f
                  srli         a6, a7, 3
43:               bne          zero, s1, 55f
                  and          gp, s9, ra
                  blt          a3, t2, 57f
                  and          tp, a0, a0
                  sll          s3, s7, t1
                  andi         s9, s9, 722
                  sltiu        t1, t6, -361
                  blt          s0, s5, 55f
                  beq          s10, s9, 66f
                  sll          a5, t2, gp
                  xori         t1, zero, 1688
                  sltiu        s1, ra, -369
55:               sll          a3, t0, gp
                  lui          s8, 104060
57:               andi         t3, a4, -1347
                  xor          s8, a1, t2
59:               slli         tp, t5, 15
                  nop
                  sub          ra, t5, a1
                  xori         t6, t0, -229
                  auipc        t4, 999741
                  add          s6, t5, t3
                  sltiu        s6, s10, -476
66:               auipc        a7, 570202
                  andi         s8, tp, -768
                  blt          s11, a2, 72f
                  ori          t5, t1, -142
                  srai         ra, t4, 7
                  add          t6, a1, t1
72:               srl          s2, s4, s7
                  sltiu        a4, s6, 1738
                  auipc        t1, 505470
                  bne          s8, s7, 76f
76:               srli         t3, s4, 0
                  sltiu        s1, a7, -199
                  sll          sp, s10, s2
                  nop
                  and          t5, sp, zero
                  bne          sp, s7, 92f
                  ori          t1, a4, 1171
                  srai         s1, ra, 18
                  sltu         ra, a7, a2
                  lui          s9, 849305
                  bne          a1, s9, 104f
                  nop
                  xor          t3, tp, t2
                  slt          a4, t3, a0
                  sra          t6, tp, t3
                  and          t4, s1, s4
92:               srli         s1, s10, 14
                  or           s10, s6, a0
                  or           zero, s6, sp
                  lui          a4, 256382
                  sra          t0, s3, s4
                  bne          s1, t5, 103f
                  slt          a5, s7, t5
                  ori          t1, a0, 2046
                  slli         t3, ra, 30
                  blt          s11, a5, 116f
                  sltu         s3, s1, t3
103:              blt          s5, t5, 119f
104:              andi         t5, zero, -1169
                  sltu         a5, sp, s0
                  bge          t0, s3, 110f
                  slt          t2, t1, a7
                  addi         t4, s6, -259
                  bltu         s5, t5, 124f
110:              bgeu         s10, a3, 117f
                  sltu         s1, sp, ra
                  beq          a1, t0, 126f
                  addi         s2, a2, -246
                  sub          t6, a3, s3
                  sub          s1, t0, s6
116:              slti         a6, a7, -1971
117:              auipc        t1, 709617
                  sra          ra, a6, t1
119:              nop
                  sra          s6, s0, a2
                  add          a5, ra, s3
                  slt          t3, a1, t0
                  or           a4, s6, s3
124:              slti         a7, a7, 1205
                  sub          t0, s8, s11
126:              sltiu        tp, t1, 1688
                  slt          s6, a1, sp
                  auipc        a3, 762932
                  bne          a0, s0, 142f
                  sll          s1, t1, t6
                  bge          s8, zero, 145f
                  lui          s7, 328255
                  lui          a4, 33677
                  and          s6, s2, s2
                  lui          tp, 176462
                  bgeu         t1, tp, 148f
                  and          s6, t6, s3
                  beq          s3, gp, 144f
                  or           t3, a5, s1
                  bltu         a1, gp, 141f
141:              slt          a1, a4, a2
142:              bltu         s10, a1, 156f
                  andi         tp, a5, -220
144:              slti         s11, t0, 1149
145:              bgeu         s10, a2, 160f
                  andi         s9, s3, 909
                  andi         s2, s6, -1422
148:              blt          s10, t2, 166f
                  lui          a7, 272214
                  or           a3, s8, tp
                  slti         zero, s1, -1145
                  bgeu         t2, t1, 157f
                  srli         sp, s2, 22
                  xori         s10, t2, 595
                  slt          s3, ra, s4
156:              slti         s9, s7, 921
157:              srai         s2, s0, 18
                  srl          zero, s7, a5
                  andi         a7, s9, 1892
160:              bge          s10, s10, 176f
                  xor          s2, s8, s6
                  or           t2, a3, s4
                  bltu         s11, s1, 178f
                  beq          t4, s3, 171f
                  slli         gp, t1, 7
166:              or           a4, sp, t2
                  ori          a1, t6, 1056
                  xor          t1, t4, t2
                  sltu         t4, t2, tp
                  andi         t2, s0, 218
171:              ori          t3, a5, -1515
                  bltu         s6, t1, 185f
                  bge          zero, ra, 183f
                  and          s2, a2, tp
                  srl          a4, s4, a1
                  ori          t0, a5, -1745
                  srai         s5, a1, 28
                  bge          t4, t5, sub_2_j4 #branch to jump instr
                  addi         s10, a2, -1077
sub_2_j4:         jal          t1, sub_3 #jump sub_2 -> sub_3
                  andi         sp, s11, 842
                  nop
176:              and          t2, a1, ra
                  sltiu        s9, zero, -1718
178:              andi         a1, s3, 222
                  srl          t1, tp, s3
                  beq          t2, s0, 184f
                  beq          s1, s7, 193f
                  ori          tp, a3, -724
183:              xori         s7, s1, -1489
184:              beq          a3, a3, 189f
185:              sltiu        t4, tp, -1331
                  bltu         a5, s5, 201f
                  beq          t1, a6, 188f
188:              bgeu         a0, s1, 204f
189:              srai         zero, a3, 17
                  bgeu         s8, t6, 201f
                  srai         t6, gp, 25
                  add          a4, a0, s4
193:              slli         s7, s10, 17
                  sra          a7, t4, a1
                  auipc        s4, 289415
                  bgeu         t3, a3, 202f
                  slt          a4, s8, a6
                  sub          s1, a0, s1
                  slt          s8, s1, a2
                  srl          tp, t2, s9
201:              srli         zero, t5, 7
202:              bltu         a4, s11, 206f
                  sll          s2, a6, s10
204:              bge          s4, a2, 222f
                  bge          t6, a1, 216f
206:              auipc        s5, 1043047
                  srli         s7, gp, 4
                  sltiu        t0, s7, 1035
                  srl          a3, t3, s1
                  bltu         ra, s3, 223f
                  ori          s3, a1, 1461
                  sltu         s7, t0, s4
                  srl          t6, a1, t4
                  addi         t1, tp, -1610
                  sub          gp, s6, s11
216:              nop
                  bltu         t3, s3, 235f
                  or           s3, s1, a0
                  lui          a3, 426041
                  or           t3, t0, gp
                  ori          a1, s0, -1835
222:              add          gp, a7, a7
223:              blt          t2, a6, 237f
                  blt          t5, t0, 240f
                  blt          t3, s0, 240f
                  sll          tp, a5, s3
                  bltu         t0, a1, 240f
                  bltu         s1, s3, 241f
                  beq          s11, s6, 247f
                  ori          sp, s7, -985
                  lui          s9, 728990
                  sltu         t2, tp, a7
                  add          t3, zero, t1
                  slt          tp, s4, a1
235:              bltu         a7, a1, 251f
                  add          t1, s6, sp
237:              sltiu        s11, a3, -1980
                  addi         s10, gp, 92
                  bge          a1, s9, 243f
240:              auipc        s1, 585067
241:              bne          s2, a7, 246f
                  xor          a6, s5, a7
243:              slti         a7, t1, -177
                  srl          a4, s8, a6
                  bgeu         a1, s2, 250f
246:              sra          s8, s11, s10
247:              or           s8, s3, s2
                  sub          s8, s4, t2
                  srai         s5, a7, 3
250:              addi         tp, s4, 1873
251:              srl          t1, s0, a4
                  slli         s6, a7, 0
                  srli         t3, a7, 10
                  bge          a1, t2, 268f
                  slt          tp, s11, ra
                  slti         s8, s0, -1447
                  blt          s5, a4, 273f
                  slti         t4, ra, -376
                  add          t3, s8, s8
                  sub          s8, s7, s6
                  bge          s1, s0, 273f
                  sra          s2, s11, a2
                  sra          gp, s9, s4
                  addi         ra, s1, 811
                  sltiu        s7, a5, 316
                  bltu         s4, s10, 277f
                  sltiu        s2, t4, 1103
268:              srl          gp, a4, a0
                  slli         s8, s6, 11
                  blt          s10, t1, 277f
                  srl          t5, a0, a7
                  add          a3, a0, s10
273:              xori         t4, s9, 1130
                  bltu         a1, s6, 289f
                  andi         s9, t5, 138
                  sub          a4, a4, a7
277:              sll          t0, s10, s11
                  auipc        ra, 479514
                  slli         ra, s0, 28
                  andi         gp, s7, -982
                  slti         t1, t2, 948
                  slli         t0, t3, 27
                  slli         gp, tp, 29
                  ori          a4, t2, -918
                  srai         a7, a1, 24
                  srl          s7, t6, a4
                  addi         s2, t4, -1175
                  bne          gp, s5, 301f
289:              and          t4, s0, a5
                  bne          zero, s6, 306f
                  and          a1, gp, s2
                  sltu         s9, t3, s10
                  bge          a6, s3, 305f
                  sll          s10, t3, t5
                  srli         a4, a2, 4
                  sub          s4, s0, s5
                  sltu         sp, t5, s5
                  andi         t0, s2, -1077
                  sltu         a5, zero, sp
                  lui          s1, 666605
301:              xori         s3, s2, -936
                  and          t2, s0, a3
                  bge          s1, t1, 318f
                  bge          a0, s2, 319f
305:              or           s10, t2, s10
306:              slti         s11, a0, -1429
                  auipc        s7, 847999
                  add          s3, t0, t6
                  bne          s7, a1, 323f
                  addi         t3, s4, 1799
                  lui          t2, 51677
                  slt          s5, t6, t1
                  sll          s10, t3, s5
                  or           sp, t5, s6
                  slt          tp, a6, s11
                  srl          a6, a7, t5
                  or           t6, t3, a3
318:              blt          t2, t5, 332f
319:              sltiu        s5, s9, 1071
                  sra          s11, a0, s6
                  lui          s11, 802027
                  or           a6, zero, ra
323:              nop
                  srl          gp, s4, zero
                  or           t0, t2, s5
                  slli         s8, a2, 22
                  sltiu        s8, s6, -855
                  and          a7, s0, gp
                  beq          t4, sp, 335f
                  beq          s8, s11, 331f
331:              addi         s11, s11, 768
332:              bne          s8, gp, 338f
                  nop
                  sra          t0, s2, t5
335:              ori          s3, t5, 1276
                  slli         s10, t6, 15
                  add          a3, s3, s7
338:              sra          t1, s4, s10
                  srl          s3, s3, s11
                  srli         a1, s4, 30
                  add          s4, t6, t5
                  lui          t1, 379514
                  or           s8, a7, s4
                  addi         s8, s8, 1357
                  sll          zero, s2, a3
                  srai         a4, s8, 19
                  bge          a5, a6, 362f
                  srli         a5, s0, 15
                  xor          s4, t5, s8
                  and          a1, a2, t6
                  beq          a1, a4, 364f
                  xori         s6, s8, -941
                  and          t5, s5, s8
                  ori          s11, s0, 635
                  beq          t6, a2, 359f
                  auipc        s6, 372150
                  srl          t4, t2, t1
                  sra          gp, s5, t0
359:              lui          s4, 578272
                  srli         s2, t5, 3
                  sltiu        s7, gp, 1389
362:              bgeu         a4, s8, 363f
363:              bne          t4, s5, 373f
364:              slli         s2, s4, 23
                  addi         t1, s11, 818
                  addi         t1, zero, 1321
                  andi         tp, s1, 821
                  sltu         a6, gp, a5
                  nop
                  srai         s5, a3, 16
                  slt          tp, sp, s1
                  srl          t3, a3, s0
373:              sll          s9, sp, s11
                  bne          gp, s10, 392f
                  add          t1, t1, s5
                  sub          a5, s8, t0
                  xori         ra, t4, -1743
                  bltu         a6, t6, 389f
                  srai         s7, s10, 20
                  addi         sp, t2, -1929
                  srai         s5, t1, 14
                  srl          a4, a4, s0
                  xor          a6, sp, a4
                  sll          s1, s1, a7
                  bne          t3, a7, 403f
                  andi         ra, a2, 962
                  blt          a2, s10, 393f
                  slt          s9, t1, sp
389:              or           t6, s9, a7
                  srai         t4, s7, 8
                  sra          ra, a4, s4
392:              lui          s6, 446169
393:              addi         a7, gp, 121
                  xori         a4, s6, 1481
                  sll          s11, s6, ra
                  ori          t6, sp, -76
                  sll          s5, s7, s2
                  sltiu        a1, a7, 230
                  bgeu         t3, ra, 414f
                  beq          s6, s1, 407f
                  ori          s2, a1, 1677
                  beq          tp, s8, 406f
403:              xori         t5, t2, -552
                  and          s7, s5, a5
                  srai         t6, t3, 1
406:              or           a1, tp, s8
407:              lui          a5, 684474
                  sltiu        sp, a0, -1291
                  xor          a7, a6, s8
                  slt          t1, zero, sp
                  srai         t4, s0, 14
                  blt          t3, ra, 430f
                  slti         a7, ra, 2028
414:              blt          s2, ra, 429f
                  andi         a1, a4, 353
                  lui          s2, 318493
                  nop
                  nop
                  srl          s9, t2, s1
                  xor          s9, a0, s1
                  sra          s5, a0, s3
                  sll          gp, zero, a3
                  srl          s4, s7, gp
                  bltu         s9, s2, 435f
                  bne          a6, s8, 437f
                  or           s5, s6, t5
                  add          s10, s4, ra
                  ori          a5, zero, 1134
429:              blt          t1, s2, 444f
430:              or           s3, s4, s4
                  andi         a6, a1, 1596
                  sub          zero, s11, s0
                  beq          s5, t0, 439f
                  and          tp, a1, a7
435:              sltu         ra, a3, tp
                  sltiu        t0, s4, -120
437:              addi         a1, s4, 988
                  bge          zero, s7, 456f
439:              nop
                  lui          t6, 82240
                  sub          s5, s6, a5
                  srli         ra, a5, 12
                  sltu         t1, s1, s9
444:              slt          gp, t1, t5
                  or           t3, sp, t4
                  slt          s2, a2, s1
                  xor          a5, t2, s1
                  beq          s3, a0, 460f
                  srai         t4, t2, 29
                  srli         s8, s7, 31
                  sra          a5, sp, a4
                  bne          a0, s6, 468f
                  and          s8, s1, s0
                  beq          a3, s3, 455f
455:              sltu         t4, s9, t4
456:              bgeu         t0, s5, 469f
                  slli         t2, t0, 28
                  addi         t0, gp, -1674
                  bne          s6, sp, 477f
460:              andi         t5, t4, -1299
                  beq          s7, a6, 474f
                  sltiu        t6, t4, -1576
                  sub          a1, s6, s11
                  bge          a5, t4, 478f
                  srli         sp, t3, 22
                  or           t1, sp, s3
                  slli         ra, sp, 16
468:              nop
469:              nop
                  bltu         a4, t6, 486f
                  sll          s1, t5, a1
                  auipc        t0, 714688
                  auipc        t2, 425114
474:              sltu         s5, t3, a5
                  xori         s6, a7, 1782
                  sub          tp, ra, t1
477:              addi         gp, t2, -510
478:              bne          a2, s2, 492f
                  bne          t3, s10, 495f
                  sltiu        t1, a4, 1738
                  nop
                  addi         a5, a3, -1405
                  srli         s5, tp, 12
                  auipc        ra, 673137
                  lui          t4, 222632
486:              bge          tp, s6, 496f
                  bge          a4, a3, 500f
                  ori          s2, t1, -1826
                  beq          s10, a2, 500f
                  sll          a4, ra, s0
                  slti         t4, s8, 480
492:              and          a6, s2, sp
                  or           s3, a1, s9
                  bltu         gp, a0, 499f
495:              sltiu        t3, a4, 612
496:              sra          zero, s8, t5
                  xori         t3, s0, 333
                  slli         a4, a3, 11
499:              bgeu         ra, a1, 500f
500:              bgeu         s0, ra, 515f
                  nop
                  addi         t4, s3, 871
                  bge          t3, a3, 507f
                  ori          a4, s6, -317
                  slti         s8, a6, -617
                  nop
507:              srl          a4, t5, a0
                  and          s1, t2, t4
                  srai         t4, a0, 3
                  addi         s5, a0, -1207
                  bne          a4, s2, 516f
                  srl          t6, a0, t6
                  blt          s3, s2, 527f
                  sll          t6, a6, ra
515:              and          s10, a5, zero
516:              srli         s7, t1, 4
                  slli         t5, s11, 6
                  sltu         s2, sp, a2
                  ori          s8, t3, 1059
                  ori          s6, a6, 1738
                  srli         gp, s11, 30
                  blt          s7, s6, 536f
                  ori          a6, t2, 52
                  srli         a4, zero, 21
                  add          a1, a4, s10
                  sltiu        gp, s3, -1349
527:              auipc        t0, 507678
                  beq          a4, a4, 532f
                  xori         a7, zero, -246
                  sub          zero, a6, a4
                  bgeu         a7, gp, 545f
532:              sub          s4, t0, tp
                  and          t5, s11, a3
                  sub          gp, s0, s10
                  or           t3, t5, s2
536:              or           a7, s1, t0
                  slti         s1, a2, -1099
                  bltu         gp, s6, 550f
                  slti         s3, a4, -947
                  slt          a1, a4, a3
                  addi         s5, a2, -1143
                  sltiu        tp, t4, 2015
                  bne          tp, a7, 556f
                  or           a4, s6, sp
545:              sll          s11, t1, t1
                  andi         s9, t2, 967
                  beq          t1, t0, 562f
                  auipc        s10, 821118
                  bgeu         a3, t1, 560f
550:              blt          t5, tp, 556f
                  bge          a4, sp, 565f
                  sltu         t5, s5, s8
                  xori         a7, t2, -1936
                  xori         s7, s3, -1414
                  nop
556:              slli         t4, t1, 14
                  or           s1, a0, a6
                  andi         t1, a2, -666
                  ori          t4, s0, -1851
560:              bgeu         t6, s10, 573f
                  xor          a6, gp, t6
562:              bltu         gp, a7, 578f
                  xor          a1, a1, s8
                  ori          t3, s2, -1278
565:              or           s5, s3, sp
                  ori          s6, a7, 907
                  srai         t2, s11, 26
                  and          t6, s2, t6
                  beq          t5, t3, 570f
570:              beq          tp, a5, 583f
                  blt          s1, s10, 586f
                  sll          s8, t5, s6
573:              slt          sp, zero, t2
                  andi         t4, gp, 1264
                  sra          s3, a6, t0
                  nop
                  srli         a7, zero, 0
578:              sltiu        s1, zero, -294
                  bgeu         s5, a5, 580f
580:              xori         s2, t4, 127
                  auipc        s4, 529993
                  bge          zero, gp, 598f
583:              bge          s6, t5, 588f
                  slti         t1, s2, -1219
                  sll          s3, a1, s0
586:              xor          s6, s11, s0
                  sltiu        a4, s0, -1885
588:              sra          s3, s6, s7
                  addi         s4, a3, -71
                  slt          t3, t5, t5
                  slli         s10, gp, 0
                  ori          a3, s3, -325
                  xor          s1, t6, a3
                  srai         a3, s7, 8
                  slli         t1, s10, 7
                  xori         t2, a6, 755
sub_2_18:         jal          t1, 22f
0:                jal          t1, 8f
1:                jal          t1, 18f
2:                jal          ra, 0b
3:                jal          ra, 19f
4:                jal          ra, 11f
5:                jal          t1, 1b
6:                jal          ra, 24f
7:                jal          t6, 10f
8:                jal          t1, 12f
9:                jal          ra, 14f
10:               jal          ra, 2b
11:               jal          ra, 5b
12:               jal          s9, 20f
13:               jal          ra, 3b
14:               jal          ra, 26f
15:               jal          s7, 23f
16:               jal          s5, 25f
17:               jal          sp, 9b
18:               jal          t1, 6b
19:               jal          ra, 16b
20:               jal          ra, 4b
21:               jal          a6, 7b
22:               jal          t2, 21b
23:               jal          s6, 13b
24:               jal          ra, 15b
25:               jal          t1, 17b
26:               sll          t1, s4, a1
                  slt          gp, a5, s6
598:              xor          a3, a1, s1
                  bltu         s6, s5, 615f
                  and          a1, s2, a4
                  slt          s1, s6, a4
                  sub          t5, s8, t4
                  bne          t6, s2, 608f
                  or           t3, t3, tp
                  xori         s1, a0, 1860
                  bne          zero, a1, 621f
                  srai         s2, t0, 2
608:              nop
                  add          s3, a5, tp
                  addi         t4, a7, 1643
                  nop
                  slt          s4, t0, gp
                  srli         t0, a3, 11
                  slt          a4, t5, a0
615:              add          s8, s0, s4
                  srai         s1, s2, 2
                  lui          s9, 449366
                  and          t0, s1, a0
                  bgeu         s1, t6, 626f
                  slli         a6, t1, 10
621:              bne          s10, a4, 625f
                  bgeu         t1, t3, 628f
                  xor          s4, s7, t0
                  bltu         s11, s7, 636f
625:              and          ra, a3, s6
626:              sra          s3, s9, t6
                  andi         a7, s8, -1654
628:              slti         tp, gp, 1196
                  sltu         s2, s11, a5
                  andi         s3, s0, -339
                  sltiu        s10, s9, -316
                  nop
                  slt          s10, s9, s3
                  xori         a6, s8, -1300
                  xor          zero, s5, t0
636:              nop
                  nop
                  addi         zero, s3, -1797
                  and          a1, t5, s3
                  sltu         s8, s10, tp
                  sll          s5, a7, t5
                  xori         t5, t2, 306
                  xori         a1, s1, 1060
                  bltu         s5, t1, 659f
                  srli         s5, s11, 21
                  srai         s6, a5, 1
                  slti         s6, t2, -861
                  srai         s8, sp, 28
                  or           a7, a3, s9
                  bltu         t1, t3, 668f
                  bgeu         s2, zero, 669f
                  lui          a3, 129563
                  bne          a3, t1, 663f
                  bgeu         t5, ra, 672f
                  blt          a4, t3, 666f
                  slti         a5, t4, 196
                  sra          a5, t4, t4
                  add          a3, a3, a3
659:              xori         s9, a4, -410
                  addi         s3, a1, 697
                  srli         a7, s3, 2
                  bge          t4, s1, 680f
663:              bge          a1, a1, 681f
                  sll          t5, tp, a4
                  bne          sp, a6, 677f
666:              sll          t1, s5, t3
                  xor          a6, a1, sp
668:              sub          t1, a6, t4
669:              nop
                  slt          s9, a4, t6
                  sltu         s8, t6, s9
672:              beq          a3, sp, 690f
                  xori         a4, s7, 1209
                  addi         s4, s4, 304
                  srl          sp, s0, s3
                  srai         s10, t2, 25
677:              srl          a5, s4, zero
                  bne          s1, s0, 685f
                  sra          t0, s10, s10
680:              bge          s0, a3, 685f
681:              sra          s2, a0, s4
                  bne          t6, s5, 688f
                  add          zero, s3, sp
                  bne          a1, s2, 699f
685:              nop
                  bltu         s4, a2, 700f
                  auipc        t5, 817091
688:              sltu         gp, s8, s5
                  beq          s1, s11, 703f
690:              srai         s10, s3, 12
                  and          tp, s10, s1
                  addi         a7, zero, 799
                  add          a1, s0, s7
                  slli         s8, tp, 26
                  or           a1, a2, zero
                  bne          s7, a5, 700f
                  blt          s8, t0, 713f
                  slt          tp, zero, ra
699:              or           t4, t3, s0
700:              xori         a7, s6, 1021
                  xori         tp, t6, -2025
                  sub          a3, sp, a5
703:              bne          zero, t3, 714f
                  lui          s1, 927089
                  slt          t2, s2, a6
                  xori         s1, s11, -1065
                  slli         t5, ra, 0
                  slt          t1, a1, s8
                  auipc        t5, 586802
                  srai         a5, a4, 10
                  bltu         s6, gp, 727f
                  srl          t2, s2, s0
713:              addi         zero, t6, -648
714:              sll          t6, a7, a3
                  blt          s0, a5, 728f
                  lui          tp, 1021961
                  xori         tp, t0, 300
                  and          t5, a3, a1
                  add          s10, t5, zero
                  slli         a1, t6, 14
                  addi         s7, s7, -1748
                  bne          s4, s1, 723f
723:              blt          a6, a4, 734f
                  beq          sp, s7, 730f
                  addi         t6, t2, 1873
                  beq          s6, t4, 739f
727:              sub          t6, gp, s11
728:              slti         zero, t2, 1929
                  sltu         t1, s0, s4
730:              or           a3, zero, a0
                  sll          s7, s1, s11
                  sub          a1, s4, a4
                  sll          s8, a4, a4
734:              or           a6, s2, t4
                  sub          t1, s5, ra
                  bgeu         a1, s0, 751f
                  sub          t1, t0, t1
                  sltiu        s10, t4, 37
739:              beq          zero, t3, 743f
                  bgeu         t3, tp, 755f
                  blt          a5, t0, 755f
                  auipc        s1, 978283
743:              srai         s6, a3, 30
                  srli         tp, s10, 18
                  beq          t1, gp, 757f
                  sub          t0, t2, s2
                  slti         a6, s6, -626
                  andi         zero, t5, 1166
                  beq          s9, a4, 754f
                  sra          s5, a3, a6
751:              ori          s7, t3, 145
                  nop
                  bltu         a1, a3, 754f
754:              lui          s2, 663897
755:              bge          tp, s1, 771f
                  lui          s6, 576278
757:              sra          tp, s11, a7
                  slt          t1, s5, a1
                  nop
                  lui          a5, 551259
                  lui          a4, 620846
                  ori          t0, zero, 1195
                  beq          s2, a0, 776f
                  and          a5, s9, a4
                  or           t3, s3, s8
                  ori          s11, t0, 990
                  slli         s8, t0, 15
                  blt          t0, s3, 778f
                  sra          s1, s8, s4
                  sub          gp, t1, sp
771:              blt          s5, a0, 786f
                  blt          gp, t2, 786f
                  lui          s4, 73983
                  nop
                  bgeu         s8, s10, 781f
776:              sub          a6, a5, t5
                  sltiu        t3, t0, 890
778:              addi         s9, s2, -1691
                  and          tp, t2, s2
                  sub          a7, s2, t1
781:              ori          a1, s1, -1083
                  andi         s5, s2, 1117
                  lui          gp, 593517
                  sub          a7, t3, ra
                  add          t6, t6, gp
786:              sra          t4, s11, ra
                  sll          gp, gp, gp
                  bltu         a7, a5, 802f
                  bgeu         s1, a0, 794f
                  add          t6, gp, s8
                  add          s9, s2, s11
                  srl          t2, t5, s8
                  blt          t6, a3, 800f
794:              slli         s4, t0, 30
                  slti         s10, ra, -1358
                  nop
                  xori         a6, t0, 1375
                  andi         s11, t3, -1882
                  sltiu        s10, s2, -1489
800:              blt          s5, s11, 812f
                  xor          ra, s4, s9
802:              srl          a7, t5, s7
                  nop
                  bge          t1, a2, 808f
sub_2_19:         jal          t1, 13f
0:                jal          ra, 24f
1:                jal          ra, 7f
2:                jal          t1, 18f
3:                jal          ra, 6f
4:                jal          t0, 0b
5:                jal          ra, 8f
6:                jal          t1, 5b
7:                jal          s8, 11f
8:                jal          t1, 12f
9:                jal          ra, 17f
10:               jal          ra, 15f
11:               jal          ra, 19f
12:               jal          t4, 1b
13:               jal          t1, 23f
14:               jal          s2, 9b
15:               jal          ra, 14b
16:               jal          t1, 2b
17:               jal          t1, 4b
18:               jal          s9, 10b
19:               jal          t1, 20f
20:               jal          t0, 21f
21:               jal          ra, 22f
22:               jal          t1, 16b
23:               jal          ra, 3b
24:               add          s7, t5, s11
                  slt          a3, s3, ra
                  add          zero, s10, s9
                  ori          t0, s9, -906
808:              bge          s1, a3, 812f
                  srli         s1, t0, 17
                  addi         ra, a4, -697
                  sub          sp, t0, tp
812:              and          tp, s7, t4
                  and          s8, s2, a5
                  andi         s11, a1, 516
                  xori         s4, s10, -1232
                  sltu         s3, s0, a5
                  xori         s1, s6, 435
                  bne          a6, a4, 834f
                  xor          s10, s0, t5
                  sll          s11, s6, s8
                  sra          a7, a7, a2
                  slti         t4, t3, -1189
                  blt          s4, s9, 834f
                  sra          t0, s6, tp
                  nop
                  bgeu         a2, sp, 827f
827:              addi         s10, t2, 389
                  ori          a1, s3, -1784
                  srl          s7, s11, a2
                  srli         a5, t3, 15
                  blt          s9, s8, 847f
                  andi         s6, sp, -816
                  srai         s2, t0, 31
834:              ori          ra, t0, -2032
                  bgeu         a3, s5, 850f
                  bge          s2, s9, 851f
                  sltu         s2, t6, a2
                  srli         sp, s2, 22
                  bltu         s6, s6, 852f
                  lui          s4, 993082
                  blt          t3, t6, 856f
                  blt          t0, a7, 856f
                  blt          s4, s9, 859f
                  bgeu         zero, a6, 862f
                  beq          t3, t2, 857f
                  or           s10, s10, t1
847:              sll          gp, t6, a0
                  ori          s10, s1, -356
                  slti         a6, s2, 1030
850:              addi         t6, s4, 1780
851:              beq          a2, s1, 866f
852:              bgeu         t4, a7, 858f
                  beq          a4, ra, 871f
                  and          t4, t0, s7
                  slt          t5, t2, a5
856:              ori          a5, s9, -1177
857:              nop
858:              blt          s3, tp, 876f
859:              sub          s8, a4, s9
                  bgeu         s7, a3, 861f
861:              add          t2, s10, s5
862:              bge          s10, t3, 875f
                  slli         a6, ra, 5
                  bltu         s9, s7, 869f
                  blt          s4, a0, 878f
866:              bne          t3, gp, 876f
                  srl          gp, sp, s6
                  andi         a4, a2, 122
869:              slli         s7, a3, 27
                  slt          t1, s11, tp
871:              slti         gp, s0, -1706
                  sra          s5, gp, a0
                  xori         s3, t1, -554
                  srai         a5, s6, 15
875:              srl          ra, t2, t5
876:              sltiu        s4, s0, 1546
                  addi         s1, a7, -1764
878:              add          gp, t6, tp
                  andi         ra, t6, -1761
                  slti         t0, a3, -1179
                  blt          t4, s0, sub_2_j5 #branch to jump instr
                  xori         s8, a5, -275
                  auipc        s11, 898209
                  xor          s11, s6, s9
sub_2_j5:         jal          t1, sub_3 #jump sub_2 -> sub_3
                  srli         s11, gp, 26
                  or           gp, a7, a3
                  lui          s11, 877584
                  bne          sp, sp, 893f
                  lui          s6, 11390
                  srl          t3, a0, a5
                  sll          s8, s5, s1
                  ori          a5, s4, 372
                  and          zero, s6, ra
                  bge          ra, s5, 898f
                  and          t6, s0, s1
                  slli         s11, s5, 28
                  andi         t4, s10, 1682
                  bne          t2, t5, 910f
893:              addi         t1, a1, -1516
                  nop
                  blt          s6, ra, 900f
                  or           s4, s9, s10
                  srli         tp, gp, 29
898:              beq          a4, a5, 902f
                  sltu         s8, a5, t5
900:              srli         t3, s0, 11
                  bgeu         a6, s4, 906f
902:              bne          a3, a6, 908f
                  bltu         s1, t4, 917f
                  slti         s4, s6, 2030
                  sub          t6, a4, gp
906:              slti         t4, s2, -424
                  srl          s5, a5, gp
908:              xori         s4, tp, 1905
                  bne          s6, t4, 924f
910:              bgeu         s9, s10, 921f
                  srli         s7, a7, 4
                  sub          s7, t2, t4
                  sra          s4, s0, a4
                  xor          s1, tp, a3
                  sra          s1, a2, s0
                  or           a7, a2, a4
917:              bne          a6, a2, 932f
                  addi         a5, t4, -112
                  and          s7, s1, s6
                  nop
921:              xori         s7, s2, 1011
                  srai         s6, s3, 8
                  xori         t1, s2, -987
924:              xor          ra, s9, s10
                  bne          a1, t1, 936f
                  beq          s8, t3, 940f
                  nop
                  slti         t4, t1, 1379
                  sll          a4, a1, a0
                  nop
                  xor          s6, a2, a1
932:              blt          ra, a0, 933f
933:              sll          a3, a0, a0
                  sub          t1, s11, ra
                  bltu         s3, sp, 941f
936:              srai         t4, ra, 22
                  bgeu         s9, s2, 949f
                  bne          s3, t1, 952f
                  add          tp, sp, s6
940:              srai         s9, t5, 19
941:              and          s1, s2, t3
                  sra          t1, s3, s7
                  srai         s3, s4, 9
                  sub          s10, s8, s11
                  xori         sp, s6, -101
                  or           t3, a3, a1
                  sltu         a6, s10, s9
                  xori         s9, t3, -975
949:              xori         t2, s10, -1830
                  nop
                  or           s3, s8, s7
952:              xor          s7, s3, s2
                  srai         s9, s9, 13
                  slt          t1, s0, ra
                  sub          s5, t5, sp
                  sltu         s1, t6, s0
                  sltu         a1, ra, s5
                  and          s8, a1, t3
                  sltiu        s11, gp, 897
                  slt          a3, t3, a5
                  bne          a1, s10, 977f
                  beq          t6, s8, 975f
                  bgeu         t0, s9, 978f
                  bgeu         a7, t4, 968f
                  blt          t1, s9, 983f
                  sltiu        s9, s0, 518
                  bne          a0, a0, 979f
968:              and          s8, tp, ra
sub_2_20:         jal          t1, 2f
0:                jal          ra, 7f
1:                jal          t1, 11f
2:                jal          ra, 10f
3:                jal          t1, 6f
4:                jal          s3, 3b
5:                jal          ra, 4b
6:                jal          ra, 8f
7:                jal          ra, 9f
8:                jal          ra, 1b
9:                jal          ra, 12f
10:               jal          ra, 5b
11:               jal          ra, 0b
12:               xori         s10, t3, -1560
                  srli         a4, a7, 30
                  and          a4, t0, a3
                  slli         ra, s4, 19
                  beq          a0, a1, 985f
                  add          a7, s3, a6
                  sll          s10, t3, s4
975:              lui          sp, 982494
                  bltu         t0, t0, 991f
977:              lui          s8, 767578
978:              sll          s10, gp, s6
979:              slt          a6, tp, a2
                  addi         tp, a6, 342
                  add          s7, a0, t5
                  nop
983:              sltu         sp, t1, a7
                  xori         s9, s5, 323
985:              bltu         a5, a7, 992f
                  bne          s5, s6, 1004f
                  slti         s7, s4, 931
                  slli         sp, a0, 29
                  auipc        s10, 811180
                  slti         a5, s6, -963
991:              beq          a6, s11, 1004f
992:              srli         a4, s2, 16
                  sltu         a4, a1, s3
                  xori         s7, ra, 1753
                  beq          tp, s7, 996f
996:              sltiu        t1, a0, 551
                  auipc        t0, 346237
                  srli         t2, s5, 4
                  auipc        a3, 546491
                  srl          t5, zero, s9
                  slli         a3, s3, 26
                  bne          s7, s6, 1018f
                  or           s5, a1, t0
1004:             sltu         a5, s10, s3
                  add          a7, t5, sp
                  sll          tp, s11, a6
                  beq          s5, s6, 1023f
                  sub          s9, s4, a0
                  bltu         ra, a1, 1010f
1010:             xor          s6, s5, t4
                  beq          a3, s2, 1024f
                  or           s10, gp, a4
                  srl          s10, s2, s2
                  and          a5, s10, s8
                  lui          s4, 529255
                  bge          t4, a0, 1031f
                  sub          a6, s3, s4
1018:             or           t3, s1, t5
                  andi         s1, s6, -264
                  bgeu         a6, a7, 1024f
                  srai         s4, s1, 15
                  addi         t5, s11, 1874
1023:             bge          tp, t4, 1041f
1024:             andi         s5, a1, 1749
                  nop
                  sra          a1, tp, s0
                  andi         a4, t3, -247
sub_2_17:         jal          t1, 0f
0:                jal          ra, 2f
1:                jal          t1, 20f
2:                jal          t1, 18f
3:                jal          s7, 9f
4:                jal          a6, 14f
5:                jal          t1, 13f
6:                jal          ra, 4b
7:                jal          gp, 17f
8:                jal          t1, 16f
9:                jal          ra, 6b
10:               jal          a5, 8b
11:               jal          a4, 1b
12:               jal          ra, 7b
13:               jal          ra, 12b
14:               jal          s3, 11b
15:               jal          ra, 19f
16:               jal          ra, 3b
17:               jal          ra, 15b
18:               jal          ra, 5b
19:               jal          t1, 10b
20:               srai         s3, s3, 30
sub_2_3:          jal          t1, 11f
0:                jal          s2, 8f
1:                jal          t1, 10f
2:                jal          ra, 1b
3:                jal          ra, 9f
4:                jal          t1, 2b
5:                jal          s5, 0b
6:                jal          ra, 3b
7:                jal          ra, 6b
8:                jal          ra, 7b
9:                jal          ra, 4b
10:               jal          ra, 12f
11:               jal          ra, 5b
12:               and          t2, s9, s5
                  ori          a3, s5, -1897
                  bltu         s8, a5, 1041f
                  srai         t5, s2, 20
1031:             bge          ra, t4, 1047f
                  srai         t6, s5, 26
                  nop
                  srai         s7, s11, 22
                  beq          a3, s10, 1051f
                  slt          t6, sp, s7
                  slli         ra, t0, 22
                  addi         s8, s8, 1672
                  and          a1, a7, s10
                  sub          s5, t5, sp
1041:             xori         a5, gp, -1219
                  xori         a3, s8, 879
                  ori          t5, sp, -341
                  bne          a1, s1, 1048f
                  beq          t2, a2, 1060f
                  bltu         a1, a2, 1061f
1047:             sltu         a1, a7, s3
1048:             srai         a5, s0, 12
                  nop
                  srai         a1, s10, 12
1051:             sll          a5, t0, s2
                  xori         t6, s9, 1190
                  slt          s11, sp, t5
                  or           t4, t2, a2
                  xori         a3, s3, 247
                  slli         t6, s1, 24
                  srai         t6, t3, 23
                  ori          t0, t0, 1797
                  add          s6, t3, s4
1060:             nop
1061:             auipc        t5, 576297
                  slti         a1, s11, -548
                  sub          t1, t4, zero
                  beq          ra, t0, 1078f
                  srli         a4, t6, 28
                  nop
                  xori         a4, a4, 610
                  blt          s2, t0, 1069f
1069:             xori         tp, s8, -989
                  sub          a7, tp, s3
                  bgeu         s2, s6, 1083f
                  bgeu         t4, a3, 1083f
                  bge          gp, t0, 1083f
                  sra          ra, t0, ra
                  ori          t4, s9, -873
                  or           a7, t3, s6
                  and          a5, a7, s11
1078:             bltu         ra, t4, 1083f
                  bne          zero, ra, 1086f
                  srai         t3, a3, 28
                  sra          a7, s11, a3
                  xori         a6, a7, -360
1083:             xor          t4, ra, t2
                  blt          s11, t1, 1089f
                  slti         t1, t1, 1757
1086:             and          s2, s11, ra
                  add          ra, t3, ra
                  auipc        t2, 156688
1089:             andi         a1, a6, -2045
                  add          t2, s4, s9
                  sub          s8, zero, t4
                  lw           t1, 4(s0)
                  sub          a3, t5, s1
                  slti         s7, sp, -566
                  addi         s0, s0, 56
                  auipc        s1, 524195
1545:             addi x22, x6, 1
1545:             jalr x22, x22, 0
sub_3:            xor          a1, a0, a3
                  and          s7, s0, t5
                  slti         a6, a3, 1064
                  or           s11, s7, a3
                  auipc        s5, 671620
                  addi         s0, s0, -24
                  sw           t1, 4(s0)
                  xori         a4, a2, -121
                  srl          s10, tp, s10
sub_3_11:         jal          t1, 14f
0:                jal          ra, 7f
1:                jal          ra, 9f
2:                jal          ra, 6f
3:                jal          a3, 11f
4:                jal          t1, 1b
5:                jal          ra, 23f
6:                jal          ra, 13f
7:                jal          sp, 5b
8:                jal          t1, 16f
9:                jal          t6, 20f
10:               jal          ra, 17f
11:               jal          ra, 8b
12:               jal          t1, 15f
13:               jal          a3, 25f
14:               jal          t1, 22f
15:               jal          ra, 10b
16:               jal          ra, 4b
17:               jal          s11, 21f
18:               jal          s2, 24f
19:               jal          t5, 2b
20:               jal          t1, 0b
21:               jal          ra, 19b
22:               jal          t1, 18b
23:               jal          t1, 12b
24:               jal          t1, 3b
25:               add          s4, s6, t1
sub_3_14:         jal          t1, 1f
0:                jal          ra, 7f
1:                jal          ra, 2f
2:                jal          s1, 16f
3:                jal          t1, 11f
4:                jal          ra, 6f
5:                jal          t1, 14f
6:                jal          ra, 8f
7:                jal          s8, 12f
8:                jal          ra, 0b
9:                jal          gp, 18f
10:               jal          s4, 9b
11:               jal          ra, 13f
12:               jal          t5, 15f
13:               jal          ra, 17f
14:               jal          t1, 10b
15:               jal          ra, 3b
16:               jal          ra, 4b
17:               jal          t1, 5b
18:               sltiu        s5, s2, 1704
sub_3_13:         jal          t1, 12f
0:                jal          s1, 7f
1:                jal          t1, 17f
2:                jal          ra, 9f
3:                jal          ra, 21f
4:                jal          t1, 14f
5:                jal          a4, 2b
6:                jal          ra, 20f
7:                jal          ra, 10f
8:                jal          ra, 6b
9:                jal          t1, 1b
10:               jal          t1, 3b
11:               jal          t1, 19f
12:               jal          t1, 18f
13:               jal          ra, 4b
14:               jal          ra, 8b
15:               jal          a7, 13b
16:               jal          t1, 5b
17:               jal          t5, 15b
18:               jal          t1, 16b
19:               jal          ra, 0b
20:               jal          ra, 11b
21:               sltiu        a6, s3, 1762
sub_3_7:          jal          t1, 0f
0:                jal          t1, 15f
1:                jal          ra, 9f
2:                jal          s10, 18f
3:                jal          s3, 13f
4:                jal          ra, 20f
5:                jal          s4, 21f
6:                jal          ra, 8f
7:                jal          t1, 5b
8:                jal          t0, 17f
9:                jal          ra, 3b
10:               jal          ra, 12f
11:               jal          ra, 6b
12:               jal          ra, 16f
13:               jal          ra, 19f
14:               jal          t1, 11b
15:               jal          t1, 4b
16:               jal          ra, 14b
17:               jal          ra, 1b
18:               jal          t1, 7b
19:               jal          ra, 2b
20:               jal          ra, 10b
21:               sltiu        a7, a4, 1091
sub_3_5:          jal          t1, 5f
0:                jal          s6, 8f
1:                jal          a1, 9f
2:                jal          ra, 3f
3:                jal          t2, 4f
4:                jal          ra, 0b
5:                jal          ra, 6f
6:                jal          a7, 7f
7:                jal          ra, 2b
8:                jal          s5, 1b
9:                jal          t2, 10f
10:               and          zero, ra, t1
sub_3_6:          jal          t1, 6f
0:                jal          ra, 11f
1:                jal          ra, 10f
2:                jal          a4, 13f
3:                jal          gp, 16f
4:                jal          t1, 3b
5:                jal          t1, 17f
6:                jal          t1, 7f
7:                jal          s11, 5b
8:                jal          gp, 15f
9:                jal          ra, 2b
10:               jal          t1, 12f
11:               jal          ra, 14f
12:               jal          t5, 0b
13:               jal          gp, 18f
14:               jal          ra, 9b
15:               jal          ra, 4b
16:               jal          s5, 1b
17:               jal          ra, 8b
18:               nop
sub_3_3:          jal          t1, 12f
0:                jal          ra, 24f
1:                jal          ra, 18f
2:                jal          s9, 29f
3:                jal          t1, 11f
4:                jal          ra, 23f
5:                jal          t3, 4b
6:                jal          ra, 10f
7:                jal          sp, 6b
8:                jal          ra, 1b
9:                jal          ra, 0b
10:               jal          ra, 22f
11:               jal          ra, 28f
12:               jal          s7, 27f
13:               jal          ra, 30f
14:               jal          ra, 16f
15:               jal          ra, 21f
16:               jal          t6, 8b
17:               jal          ra, 9b
18:               jal          a6, 25f
19:               jal          gp, 17b
20:               jal          t1, 15b
21:               jal          t1, 2b
22:               jal          t1, 3b
23:               jal          ra, 7b
24:               jal          ra, 5b
25:               jal          ra, 26f
26:               jal          ra, 19b
27:               jal          ra, 14b
28:               jal          s6, 20b
29:               jal          ra, 13b
30:               nop
sub_3_17:         jal          t1, 14f
0:                jal          ra, 13f
1:                jal          s9, 10f
2:                jal          ra, 3f
3:                jal          t1, 7f
4:                jal          a7, 9f
5:                jal          t1, 15f
6:                jal          ra, 8f
7:                jal          ra, 11f
8:                jal          ra, 1b
9:                jal          ra, 6b
10:               jal          ra, 0b
11:               jal          t6, 4b
12:               jal          ra, 2b
13:               jal          ra, 5b
14:               jal          ra, 12b
15:               slti         s5, s4, 2020
sub_3_12:         jal          t1, 5f
0:                jal          ra, 8f
1:                jal          ra, 9f
2:                jal          ra, 13f
3:                jal          t1, 12f
4:                jal          ra, 1b
5:                jal          t1, 0b
6:                jal          ra, 7f
7:                jal          ra, 15f
8:                jal          ra, 11f
9:                jal          ra, 2b
10:               jal          ra, 3b
11:               jal          t1, 14f
12:               jal          t1, 4b
13:               jal          ra, 6b
14:               jal          t1, 10b
15:               sltu         t3, t1, a4
sub_3_18:         jal          t1, 4f
0:                jal          ra, 14f
1:                jal          a1, 20f
2:                jal          ra, 16f
3:                jal          ra, 15f
4:                jal          ra, 6f
5:                jal          ra, 18f
6:                jal          ra, 17f
7:                jal          t1, 2b
8:                jal          s5, 5b
9:                jal          ra, 3b
10:               jal          gp, 11f
11:               jal          t1, 22f
12:               jal          t1, 19f
13:               jal          ra, 21f
14:               jal          ra, 13b
15:               jal          ra, 12b
16:               jal          t1, 10b
17:               jal          ra, 1b
18:               jal          ra, 9b
19:               jal          t1, 0b
20:               jal          ra, 8b
21:               jal          ra, 7b
22:               xor          sp, tp, a5
sub_3_4:          jal          t1, 7f
0:                jal          s3, 10f
1:                jal          t1, 11f
2:                jal          ra, 8f
3:                jal          ra, 9f
4:                jal          ra, 3b
5:                jal          ra, 13f
6:                jal          t3, 0b
7:                jal          ra, 14f
8:                jal          ra, 1b
9:                jal          ra, 5b
10:               jal          t1, 12f
11:               jal          ra, 15f
12:               jal          sp, 4b
13:               jal          t1, 2b
14:               jal          ra, 6b
15:               srl          s6, t2, a6
sub_3_0:          jal          t1, 0f
0:                jal          t1, 8f
1:                jal          ra, 10f
2:                jal          ra, 19f
3:                jal          t1, 21f
4:                jal          ra, 15f
5:                jal          ra, 1b
6:                jal          ra, 18f
7:                jal          tp, 2b
8:                jal          ra, 4b
9:                jal          s8, 13f
10:               jal          s1, 9b
11:               jal          ra, 17f
12:               jal          ra, 20f
13:               jal          t3, 16f
14:               jal          ra, 6b
15:               jal          t1, 5b
16:               jal          t1, 7b
17:               jal          t1, 12b
18:               jal          ra, 3b
19:               jal          s2, 11b
20:               jal          ra, 14b
21:               sra          s6, s0, s2
sub_3_10:         jal          t1, 7f
0:                jal          tp, 3f
1:                jal          ra, 2f
2:                jal          t5, 10f
3:                jal          s1, 4f
4:                jal          ra, 8f
5:                jal          ra, 1b
6:                jal          t1, 9f
7:                jal          ra, 0b
8:                jal          ra, 6b
9:                jal          ra, 5b
10:               sltu         s3, s1, t3
sub_3_9:          jal          t1, 1f
0:                jal          t1, 13f
1:                jal          ra, 10f
2:                jal          ra, 19f
3:                jal          gp, 12f
4:                jal          ra, 0b
5:                jal          ra, 3b
6:                jal          s5, 16f
7:                jal          ra, 11f
8:                jal          ra, 2b
9:                jal          t1, 20f
10:               jal          ra, 5b
11:               jal          s9, 8b
12:               jal          s11, 7b
13:               jal          t1, 6b
14:               jal          a7, 17f
15:               jal          ra, 4b
16:               jal          ra, 14b
17:               jal          s11, 18f
18:               jal          ra, 9b
19:               jal          t1, 15b
20:               xori         t1, s1, 1882
sub_3_19:         jal          t1, 15f
0:                jal          t4, 14f
1:                jal          s2, 11f
2:                jal          ra, 3f
3:                jal          ra, 4f
4:                jal          ra, 7f
5:                jal          a3, 0b
6:                jal          ra, 9f
7:                jal          ra, 10f
8:                jal          t0, 12f
9:                jal          ra, 5b
10:               jal          tp, 1b
11:               jal          s1, 13f
12:               jal          t1, 16f
13:               jal          ra, 8b
14:               jal          gp, 2b
15:               jal          t1, 6b
16:               srli         s1, a7, 21
sub_3_1:          jal          t1, 6f
0:                jal          ra, 4f
1:                jal          ra, 9f
2:                jal          t2, 0b
3:                jal          ra, 11f
4:                jal          t0, 1b
5:                jal          a1, 10f
6:                jal          t1, 8f
7:                jal          t1, 5b
8:                jal          ra, 7b
9:                jal          ra, 3b
10:               jal          ra, 2b
11:               slti         a6, sp, -761
sub_3_21:         jal          t1, 13f
0:                jal          ra, 4f
1:                jal          ra, 8f
2:                jal          sp, 21f
3:                jal          ra, 9f
4:                jal          gp, 3b
5:                jal          tp, 2b
6:                jal          t1, 1b
7:                jal          ra, 10f
8:                jal          ra, 14f
9:                jal          ra, 11f
10:               jal          t1, 18f
11:               jal          t1, 12f
12:               jal          ra, 17f
13:               jal          tp, 19f
14:               jal          t1, 15f
15:               jal          t1, 5b
16:               jal          ra, 20f
17:               jal          s9, 6b
18:               jal          a6, 16b
19:               jal          a7, 7b
20:               jal          t1, 0b
21:               xor          s10, t1, a7
sub_3_2:          jal          t1, 3f
0:                jal          ra, 4f
1:                jal          t0, 6f
2:                jal          ra, 12f
3:                jal          ra, 5f
4:                jal          ra, 10f
5:                jal          ra, 1b
6:                jal          t5, 11f
7:                jal          t1, 2b
8:                jal          ra, 0b
9:                jal          t1, 7b
10:               jal          gp, 9b
11:               jal          ra, 8b
12:               sll          t4, t4, ra
                  xori         s6, a4, -1503
                  sll          t3, s1, t6
                  andi         sp, t0, 1469
                  bge          zero, a7, 5f
                  ori          zero, ra, -878
5:                sltiu        a7, t0, 955
                  sltiu        s3, a2, 1166
                  sltiu        t3, a2, -665
                  ori          a3, t2, -113
                  lui          t2, 905875
                  add          s11, s3, s5
                  sra          t0, s11, s3
                  addi         t0, t6, -1142
                  srl          a3, a3, t3
                  xor          s11, ra, t6
                  sub          sp, t1, t1
                  srai         s9, ra, 20
                  ori          t6, s11, 741
                  slt          tp, t2, tp
                  srai         a4, t4, 18
                  blt          t2, s9, 23f
                  nop
                  bge          ra, ra, 28f
23:               bne          a2, zero, 34f
                  lui          s3, 727843
                  xor          s6, t3, s2
                  nop
                  add          t3, s10, s9
28:               slli         t2, t0, 31
                  sub          s2, s9, s1
                  xor          s6, ra, t6
                  auipc        ra, 510257
                  slli         a3, t6, 16
                  srli         t0, s1, 18
34:               add          s3, zero, zero
                  sll          s10, sp, s9
                  sra          a3, a6, a1
                  lui          a4, 353808
                  lui          s5, 661866
                  beq          gp, s4, 51f
                  ori          s2, t3, 559
                  xor          t6, s8, s3
                  bgeu         t6, a4, 58f
                  bltu         s9, a2, 51f
                  nop
                  xor          sp, a3, s6
                  nop
                  slli         s4, t2, 28
                  auipc        t0, 870222
                  addi         a6, gp, 962
                  slli         sp, s7, 27
51:               or           zero, s3, zero
                  srai         s3, a3, 2
                  xori         s3, t4, 704
                  bge          zero, a5, 74f
                  sltu         s11, t0, ra
                  and          a5, s5, s7
                  srli         a5, a6, 11
58:               beq          zero, t2, 68f
                  beq          s10, a1, 67f
                  sll          s4, t0, t6
                  srli         s2, zero, 14
                  add          sp, s9, sp
                  xori         s9, s10, 375
                  andi         t0, t1, -488
                  bne          tp, s3, 75f
                  sra          t0, sp, a1
67:               srai         a4, s10, 5
68:               beq          a2, s8, 76f
                  bge          s3, s7, 78f
                  srl          s2, s4, ra
                  add          zero, s7, a2
                  slt          zero, s10, t2
                  ori          s11, a3, 1244
74:               ori          t2, t5, 115
75:               bne          t5, ra, 92f
76:               xori         s1, s9, 1230
                  and          t6, a7, zero
78:               srai         t1, s8, 15
                  bge          s6, t3, 94f
                  lui          a6, 816291
                  slt          t5, t6, s9
                  srli         t6, t3, 14
                  bne          a7, s8, sub_3_j6 #branch to jump instr
                  sub          s6, a5, t1
                  slt          s11, t2, s10
sub_3_j6:         jal          t1, sub_4 #jump sub_3 -> sub_4
                  slli         s11, t4, 5
                  sltu         t4, s10, s3
                  beq          zero, a3, 94f
                  srai         s9, t2, 26
                  xor          t3, a0, a1
                  or           s8, sp, a6
                  lui          a5, 939351
                  and          t1, s1, t6
                  slt          a3, a5, s3
                  ori          t2, t0, -1444
                  andi         a4, a4, -1006
                  slti         s11, s5, -13
92:               srl          t3, s7, s9
                  xori         a7, ra, 1801
94:               bltu         s6, a1, 105f
                  nop
                  srl          sp, s10, zero
                  slli         s7, s11, 15
                  auipc        s2, 517773
                  or           tp, a4, zero
                  slti         s9, t5, -526
                  xor          a3, t6, gp
                  sll          a3, s10, s7
                  bgeu         s2, a7, 119f
                  blt          t2, a1, 117f
105:              andi         gp, s3, 1564
                  xor          tp, sp, s2
                  lui          t5, 586916
                  bge          ra, ra, 127f
                  sub          sp, ra, s10
                  beq          s4, a0, 125f
                  and          zero, a3, ra
                  bltu         s10, s0, 127f
                  slti         a5, a6, -1277
                  sltu         t6, s11, s11
                  andi         s11, a2, -660
                  sltiu        s2, t1, 1290
117:              xor          a1, s6, s0
                  sltu         zero, t3, s1
119:              sltiu        a7, s11, 1842
                  srl          sp, t0, s1
                  or           t1, a2, a4
                  srl          s2, s6, s2
                  blt          ra, s0, 128f
                  and          sp, a4, a5
125:              nop
                  bltu         s6, tp, 145f
127:              bne          s4, a1, 139f
128:              blt          a7, sp, 139f
                  lui          a4, 422824
                  bltu         s6, a6, 147f
                  beq          s4, s2, 138f
                  nop
                  auipc        a1, 563293
                  srl          t5, t2, s5
                  sltiu        t2, a0, -1811
                  sll          s1, a2, sp
                  and          tp, tp, zero
138:              sll          ra, s10, a6
139:              bge          s10, t3, 141f
                  srli         t1, s9, 5
141:              beq          zero, a2, 144f
                  or           s2, a0, s7
                  slt          a4, ra, t4
144:              bltu         a7, t2, 147f
145:              slli         s11, a4, 1
                  sltiu        s10, s9, 117
147:              xor          s11, a4, s8
                  bge          a2, s1, 153f
                  nop
                  beq          s1, sp, 163f
                  bge          t4, t6, 167f
                  slt          s11, t3, s10
153:              bgeu         t4, s0, 170f
                  slt          t5, s3, s6
                  addi         a3, a1, -1831
                  beq          t6, t2, 158f
                  andi         t3, a7, 349
158:              xor          a5, t3, tp
                  xor          s1, t3, s4
                  xori         a3, t6, -1418
                  addi         s3, t1, -1504
                  slli         t3, tp, 3
163:              xor          s9, t0, s4
                  blt          s2, tp, 179f
                  srli         sp, s5, 8
                  sll          a3, sp, s2
167:              xor          s4, t6, gp
                  or           gp, t3, t2
                  andi         s5, s6, -989
170:              slli         tp, a2, 15
                  xori         s8, s4, 16
                  lui          s2, 245125
                  slli         a1, s8, 12
                  srl          s9, t5, zero
                  and          s4, s11, gp
                  bge          s10, a4, 192f
                  ori          s9, a3, 1147
                  nop
179:              bne          a7, a0, 187f
                  sra          s3, zero, gp
                  slt          s2, s5, s10
                  beq          t3, t2, 197f
                  xor          sp, sp, zero
                  andi         a3, s8, 1807
                  bne          t6, ra, 193f
                  lui          s6, 997359
187:              sltiu        t3, tp, -1380
                  add          s8, s8, zero
                  sltu         s7, s8, s2
                  andi         t4, s9, 1364
                  lui          t6, 99737
192:              bne          s4, a6, 203f
193:              add          s7, t4, a4
                  bge          s2, t0, 204f
                  beq          t2, s9, 197f
                  bne          a7, s8, 202f
197:              bltu         sp, a0, 214f
                  addi         gp, s3, 1748
                  xori         t4, s5, -550
                  bltu         s8, gp, 211f
                  srli         gp, s6, 12
202:              andi         t2, s3, 227
203:              slli         t4, t6, 16
204:              srli         t5, t5, 6
                  lui          s10, 580959
                  nop
                  srai         s2, a3, 2
                  beq          s5, gp, 219f
                  xori         a1, s9, 284
                  sltu         a7, a2, s6
211:              bltu         s6, s1, 220f
                  bltu         s7, t0, 224f
                  slli         ra, a4, 28
214:              slt          s1, a4, s11
                  srli         gp, t3, 9
                  xor          a4, a6, s11
                  sltiu        s11, s5, -1997
                  sub          s6, sp, t4
219:              sub          a5, a0, a5
220:              ori          t2, t1, -544
                  sub          a5, t1, t2
                  srli         sp, s8, 19
                  xor          a7, t3, s7
224:              ori          s8, t3, -721
                  nop
                  srai         s6, t2, 9
                  xor          tp, gp, a2
                  bgeu         t3, s3, 247f
                  slt          a4, s9, ra
                  and          s2, s4, s7
                  slti         a4, a2, 645
                  srli         s7, s0, 12
                  add          s8, sp, s7
                  bltu         s6, a6, 254f
                  addi         t4, a3, -1290
                  xori         a7, s10, -354
                  bltu         t0, sp, 252f
                  sll          t6, t4, s8
                  sub          s1, a3, t1
                  nop
                  srl          ra, s8, t0
                  beq          t0, a7, 249f
                  srli         t5, s7, 2
                  slti         a7, s0, 1054
                  srl          a5, a4, t5
                  slti         gp, s5, 875
247:              bge          t0, a2, 259f
                  sltiu        t2, t2, 1656
249:              srli         sp, s3, 12
                  addi         a7, a5, 1359
                  srli         sp, s3, 26
252:              and          s8, s7, tp
                  lui          t3, 800825
254:              nop
                  slt          a5, a6, a0
                  srai         s10, s2, 22
                  bne          a3, s0, 267f
                  bne          t1, s9, 277f
259:              srai         t0, t5, 23
                  add          s8, s7, a1
                  or           s5, sp, t6
                  slli         t6, t6, 26
                  srl          s9, sp, s5
                  or           s6, zero, s2
                  xori         s11, sp, -1960
                  bne          t4, a2, 269f
267:              bgeu         s3, s0, 275f
                  sltiu        a3, s5, 1052
269:              bne          s8, s1, 281f
                  nop
                  add          t5, s5, s1
                  sltiu        tp, t5, -1051
                  bgeu         s7, s5, 285f
                  bgeu         sp, t1, 285f
275:              lui          s4, 699398
                  bgeu         s11, t2, 287f
277:              bgeu         a0, s8, 283f
                  sra          a6, t3, t5
                  srai         sp, s10, 14
                  xor          gp, tp, t3
281:              slti         s9, s6, -174
                  beq          tp, a2, 294f
283:              srl          a4, s6, s2
                  srai         s3, gp, 16
285:              sll          s10, t2, s2
                  bne          a1, t5, 294f
287:              sra          a6, s5, t0
                  slt          s7, a6, s11
                  srli         t1, s1, 13
                  nop
                  sltu         s5, tp, s11
                  addi         s10, s8, 1425
                  srai         gp, t3, 31
294:              bgeu         a6, t1, 309f
                  and          ra, t5, t1
                  andi         zero, t6, -1147
                  auipc        s5, 930553
                  sltu         s1, ra, s9
                  xor          s6, s6, a0
                  lui          s4, 418842
                  srli         s4, t6, 10
                  lui          t6, 53810
                  slt          s5, gp, s7
                  bltu         t3, t5, 324f
                  sra          a7, ra, s2
                  srli         s2, s0, 11
                  bltu         s8, s5, 322f
                  slli         s8, s2, 22
309:              srl          s5, t1, s4
                  sll          s3, t2, s11
                  slt          t2, t2, s6
                  and          a5, s10, s5
                  lui          t6, 428905
                  srli         s3, s6, 19
                  auipc        s7, 615056
                  nop
                  slti         zero, s0, -492
sub_3_20:         jal          t1, 1f
0:                jal          ra, 4f
1:                jal          ra, 8f
2:                jal          t5, 19f
3:                jal          ra, 23f
4:                jal          t1, 16f
5:                jal          ra, 3b
6:                jal          ra, 10f
7:                jal          s2, 18f
8:                jal          s2, 15f
9:                jal          ra, 5b
10:               jal          ra, 12f
11:               jal          a6, 9b
12:               jal          t1, 2b
13:               jal          ra, 24f
14:               jal          ra, 13b
15:               jal          ra, 21f
16:               jal          ra, 6b
17:               jal          t1, 14b
18:               jal          s5, 11b
19:               jal          t1, 20f
20:               jal          ra, 22f
21:               jal          ra, 0b
22:               jal          ra, 7b
23:               jal          ra, 17b
24:               srl          a3, s0, a5
                  slti         zero, tp, -1160
                  sll          a5, s7, gp
                  srli         a4, t1, 21
                  bge          s3, a2, 340f
322:              auipc        a7, 749326
                  bgeu         s5, sp, 325f
324:              and          sp, t6, s8
325:              slli         tp, s2, 26
                  ori          s4, s8, 691
                  add          t6, s1, gp
sub_3_22:         jal          t1, 6f
0:                jal          ra, 4f
1:                jal          s9, 5f
2:                jal          t1, 3f
3:                jal          t1, 1b
4:                jal          ra, 7f
5:                jal          ra, 8f
6:                jal          ra, 9f
7:                jal          s8, 2b
8:                jal          ra, 10f
9:                jal          s5, 0b
10:               sltu         a1, s1, a3
                  addi         t1, t4, 363
                  bgeu         t5, s9, 342f
                  and          sp, s2, t1
                  bgeu         tp, s4, 346f
                  slti         tp, tp, -416
                  sll          a6, s6, t0
                  srli         a4, s5, 26
                  srai         s6, tp, 6
                  sub          a5, a6, s8
                  ori          a6, s10, 724
                  ori          a7, t5, -993
                  sub          s5, t3, t3
sub_3_15:         jal          t1, 3f
0:                jal          ra, 6f
1:                jal          ra, 18f
2:                jal          s6, 8f
3:                jal          ra, 0b
4:                jal          ra, 12f
5:                jal          t1, 11f
6:                jal          ra, 9f
7:                jal          ra, 2b
8:                jal          t1, 14f
9:                jal          ra, 10f
10:               jal          ra, 7b
11:               jal          ra, 17f
12:               jal          ra, 1b
13:               jal          ra, 16f
14:               jal          ra, 5b
15:               jal          ra, 4b
16:               jal          ra, 15b
17:               jal          ra, 13b
18:               sltu         s4, t0, a0
340:              srli         t1, t5, 30
                  sub          a1, s3, a2
342:              ori          a5, zero, 447
                  addi         t3, s8, 1155
                  nop
                  sltu         s4, t4, s3
346:              nop
                  sra          a6, tp, zero
                  slti         tp, s7, -1108
                  addi         s11, s0, 114
                  lui          s7, 507140
                  sra          s7, a1, t1
                  sub          gp, t0, t4
                  bgeu         a7, a0, 370f
                  addi         a4, tp, 197
                  bge          a3, s11, 371f
                  addi         a4, t0, -758
                  auipc        s4, 718162
                  lui          zero, 850731
                  lui          tp, 380929
                  srl          sp, a2, t5
                  bge          t4, zero, 371f
                  xor          gp, s2, s7
                  srli         t4, zero, 23
                  bgeu         s3, s3, 367f
                  sltu         s11, a6, ra
                  ori          a3, t1, 1689
367:              add          zero, zero, t5
                  sra          t0, t1, a2
                  sra          zero, t0, a7
370:              bltu         tp, s9, 386f
371:              sltiu        s2, s8, 1450
                  sra          a7, zero, t0
                  bltu         s7, a1, 384f
                  slli         s11, s1, 12
                  beq          a1, a7, 387f
                  sltu         s3, s10, tp
                  sra          a7, sp, sp
                  bne          t3, s8, 386f
                  sltu         s2, s6, a0
                  srl          s10, s10, a4
                  slt          t0, s9, s5
                  xor          gp, sp, s1
                  bge          gp, a1, 390f
384:              and          a4, s3, a2
                  beq          s6, s8, 395f
386:              xori         s1, t1, -982
387:              auipc        s11, 800652
                  bge          a2, t1, 396f
                  sll          s9, t5, tp
390:              srli         s10, s7, 21
                  slti         a5, ra, -1979
                  srli         t0, a7, 8
                  srli         a5, a3, 28
                  sltu         ra, s6, s3
395:              srli         s7, s10, 26
396:              bne          s2, zero, 398f
                  ori          s9, sp, 568
398:              slli         s3, a6, 29
                  sltiu        a5, zero, 88
                  sra          s1, a2, a4
                  slli         tp, t1, 17
                  or           s8, s2, s4
                  slti         ra, a7, 285
                  beq          a2, s2, 421f
                  bltu         a2, t4, 408f
                  add          t0, a3, s10
                  bne          s7, s9, 426f
408:              add          a5, t5, s7
                  sltiu        s8, t3, -474
                  add          s10, s8, t0
                  or           s10, zero, a2
                  andi         zero, t0, 1272
                  bne          s3, s9, 418f
                  lui          a4, 609878
                  srl          s7, a7, gp
                  sub          a3, s2, s9
                  andi         s2, s0, 1902
418:              and          s7, t4, gp
                  andi         a1, a2, -1464
                  slti         t1, s7, 412
421:              sltiu        sp, zero, 566
                  blt          a3, s0, 431f
                  beq          s2, sp, 438f
                  xori         s10, sp, 1285
                  sll          s3, a5, s0
426:              sltu         s3, a2, t1
                  srai         s2, s1, 3
                  xori         s10, a6, 1908
                  ori          a1, a5, 199
                  slti         t1, a7, -1557
431:              sub          a1, s9, ra
                  blt          s4, t2, 443f
                  nop
                  slti         s10, sp, 470
                  add          tp, s9, a2
                  add          a7, s7, s3
                  srai         a6, a6, 28
438:              srl          t6, s11, sp
                  add          zero, s3, a5
                  bltu         t4, t4, 447f
                  blt          a4, a7, 453f
                  auipc        s11, 864160
443:              sra          t3, gp, a3
                  sra          s5, s8, a0
                  slti         t4, ra, -1435
                  sltu         a5, a2, zero
447:              addi         s1, t1, -839
                  blt          s7, t0, 451f
                  slli         tp, a1, 27
                  bge          t3, ra, 460f
451:              andi         ra, a3, 382
                  srli         s4, t0, 7
453:              srai         s6, s8, 27
                  bge          t2, s11, 467f
                  beq          s4, a3, 471f
                  blt          s1, t0, 468f
                  srl          tp, sp, a7
                  lui          s8, 839178
                  slli         s11, a4, 26
460:              addi         s3, t5, 65
                  srl          t0, zero, s1
                  sll          s9, a5, tp
                  blt          a3, s7, 479f
                  srl          s3, t5, a0
                  xor          a4, s10, s8
                  nop
467:              nop
468:              sra          s11, ra, s9
                  srai         t5, s2, 0
                  bge          a3, t6, 487f
471:              nop
                  sra          s1, t4, t4
                  sltu         s3, s3, a7
                  nop
                  srli         s5, s3, 5
                  bgeu         s11, s11, 495f
                  and          a7, a2, a1
                  sra          s1, t4, t3
479:              and          a5, a6, a4
                  xori         s10, s8, -795
                  blt          t5, s1, 487f
                  sll          s4, t4, s7
                  slti         sp, sp, -140
                  xor          sp, a0, a6
                  andi         s5, t0, -1163
                  bge          a0, t6, 494f
487:              bge          ra, t3, 504f
                  nop
                  andi         a1, t1, -853
                  slti         s11, a7, 934
                  blt          a2, t3, 511f
                  srl          tp, s10, t2
                  bne          t6, ra, 508f
494:              or           a5, a6, s11
495:              bne          t3, a3, 504f
                  sll          gp, sp, a1
                  bne          a7, s5, 512f
                  andi         sp, t5, -1507
                  bge          s10, tp, 502f
                  slli         zero, s9, 1
                  bne          a5, t0, 509f
502:              sra          a6, t5, t1
                  or           s1, a4, s2
504:              xor          t4, s5, s0
                  auipc        t1, 900147
                  and          s5, t3, t4
                  bne          t0, t3, 512f
508:              nop
509:              bgeu         gp, s11, 521f
                  lui          t6, 935846
511:              bltu         t4, gp, 522f
512:              sub          sp, s9, a3
                  and          a5, a2, s4
                  slti         a6, a2, 42
                  xori         s11, t5, 1907
                  xori         a3, a1, 936
                  srli         s3, s2, 24
                  bne          a3, tp, 520f
                  sll          t1, s0, t1
sub_3_16:         jal          t1, 14f
0:                jal          ra, 16f
1:                jal          ra, 17f
2:                jal          ra, 5f
3:                jal          s5, 7f
4:                jal          t1, 6f
5:                jal          a3, 21f
6:                jal          s7, 1b
7:                jal          ra, 15f
8:                jal          ra, 11f
9:                jal          a4, 2b
10:               jal          ra, 0b
11:               jal          ra, 9b
12:               jal          ra, 4b
13:               jal          ra, 12b
14:               jal          a6, 18f
15:               jal          ra, 8b
16:               jal          ra, 13b
17:               jal          gp, 20f
18:               jal          ra, 19f
19:               jal          t1, 10b
20:               jal          t1, 3b
21:               andi         s6, s4, 1016
520:              sltu         tp, gp, t5
521:              andi         s2, s6, -465
522:              bgeu         sp, a7, 532f
                  bltu         s4, s11, 525f
                  ori          sp, s1, 1843
525:              srl          s11, s4, s3
                  xori         s9, a7, 314
                  sltiu        t1, s9, 500
                  xori         a4, a4, 494
                  sra          t1, tp, s0
                  bge          ra, t3, 541f
                  srl          t4, gp, s2
532:              blt          s0, tp, 540f
                  sll          s6, sp, t2
                  lui          s11, 880606
                  and          t1, s1, sp
                  sltiu        zero, a6, 1871
                  xori         s11, gp, -1405
                  sra          a1, t6, a5
                  xori         a5, a0, -228
540:              srli         s9, ra, 5
541:              nop
                  slt          t1, s0, zero
                  bgeu         t6, t6, 562f
                  srl          a3, s10, s4
                  bgeu         a7, s4, 562f
                  slti         s8, s9, 854
                  ori          ra, s6, -304
                  sltu         s9, s5, s0
                  ori          a4, a5, 10
                  blt          a3, t6, 558f
                  bge          s9, s8, 566f
                  nop
                  srli         zero, a6, 23
                  ori          s10, a6, 916
                  bgeu         a2, a5, 566f
                  blt          a2, s8, 564f
                  sub          sp, t1, s1
558:              slt          ra, a3, a7
                  sltu         a7, s8, s0
                  addi         a6, t0, 233
                  blt          tp, gp, 577f
562:              xor          s11, a5, sp
                  bge          a0, s8, 566f
564:              nop
                  add          s7, a6, a6
566:              sll          t4, s9, t1
                  andi         zero, t2, 1172
                  slli         t5, t6, 25
                  bne          zero, a1, 580f
                  sltu         gp, s3, ra
                  bltu         ra, t4, 574f
                  addi         t0, s11, -1865
                  auipc        s1, 817590
574:              srai         s3, tp, 8
                  xori         a3, sp, 2012
                  ori          a7, s8, -137
577:              xor          a3, tp, gp
                  beq          t3, s11, 587f
                  auipc        s4, 126464
580:              nop
                  lui          s9, 689735
                  sltiu        a5, a5, 1270
                  sll          a1, s4, ra
                  srli         a7, s6, 15
                  lui          s5, 24139
                  nop
587:              sll          s5, a2, sp
                  nop
                  srli         s6, gp, 25
                  add          t4, s6, t6
                  sub          a5, t3, s2
                  slti         a5, t0, 531
                  sub          s1, s5, t2
                  bne          s8, s4, 609f
                  sll          s1, ra, s3
                  sub          t4, t2, s7
                  lui          a7, 236424
                  xori         t2, t3, 1817
                  bge          s8, a5, 611f
                  add          a6, s2, zero
                  slli         a3, s1, 14
                  slt          zero, t0, s7
                  slli         s9, s3, 10
                  addi         gp, t3, -1988
                  sltu         s2, a0, a3
                  add          s3, a7, a3
                  xori         a7, s3, -141
                  srai         t3, zero, 25
609:              auipc        t1, 829634
                  and          s1, s4, s1
611:              beq          ra, a7, 616f
                  xor          t2, a4, s8
                  bgeu         s8, s11, 619f
                  bne          s4, t0, 627f
                  blt          t6, a1, 635f
616:              sltu         t3, tp, s11
                  srai         a6, gp, 19
                  bltu         a5, a7, 630f
619:              sub          s4, a2, a2
                  and          t5, t1, tp
                  or           s3, t3, a2
                  slli         s4, s3, 26
                  auipc        zero, 225594
                  slti         a6, t1, -1072
                  sltiu        gp, gp, 1130
                  sra          a6, s7, s2
627:              bltu         s10, a4, 639f
                  bne          t0, a7, 645f
                  or           s7, t0, s6
630:              xori         a1, gp, -642
                  srli         zero, gp, 20
                  sub          s9, sp, a5
                  auipc        a5, 477767
                  bgeu         t5, t2, 645f
635:              auipc        t2, 778217
                  auipc        gp, 235354
                  xori         t3, s10, 663
                  andi         s3, s5, -1555
639:              srl          a5, a3, t6
                  srai         s1, t4, 20
                  srl          zero, s10, s7
                  sltu         a5, tp, t2
                  sltiu        a3, s7, 818
                  srl          s4, s11, t6
645:              and          t1, tp, s1
                  bltu         t6, sp, 656f
                  xor          s4, s5, a0
                  addi         s4, s4, 1129
                  bltu         gp, t6, 668f
                  bltu         a0, ra, 666f
                  slti         s5, a5, 1330
                  bltu         a7, s2, 654f
                  beq          t2, t5, 660f
654:              or           t2, s0, t6
                  sltu         s8, t3, sp
656:              andi         a5, s11, 566
                  bltu         zero, a4, 676f
                  xor          t3, a0, s6
                  slli         t2, s7, 4
660:              or           t5, t6, t5
                  slt          t3, s3, a4
                  srai         s11, s8, 20
                  xori         s1, s11, -1951
                  slti         s8, s11, 1062
                  bgeu         a5, a7, 680f
666:              lui          s3, 30728
                  slt          t2, s1, s9
668:              addi         a5, t0, -1618
                  sltiu        s6, a0, -1357
                  bge          t0, s10, 680f
                  slli         a5, s10, 17
                  add          t2, s2, s5
                  sub          a7, a3, t2
                  sll          s7, s7, s5
                  ori          gp, t2, -791
676:              blt          s6, s5, 684f
                  bge          s0, a7, 679f
                  beq          t6, s2, 686f
sub_3_8:          jal          t1, 1f
0:                jal          t1, 3f
1:                jal          t1, 4f
2:                jal          t1, 6f
3:                jal          ra, 7f
4:                jal          ra, 8f
5:                jal          sp, 10f
6:                jal          a4, 11f
7:                jal          ra, 5b
8:                jal          t1, 0b
9:                jal          t1, 2b
10:               jal          ra, 9b
11:               xor          a3, s5, s0
679:              andi         a1, s11, -811
680:              slt          s3, a0, ra
                  sub          s6, s3, t4
                  sub          t3, s4, s4
                  srai         a4, s7, 16
684:              sll          t0, a7, tp
                  ori          s6, gp, 1720
686:              ori          zero, t1, -1300
                  bge          a5, zero, 700f
                  andi         s9, t2, -79
                  beq          a7, s10, 704f
                  srl          tp, s10, s6
                  blt          s6, s1, 697f
                  sra          s3, s1, t5
                  bgeu         a5, s1, 710f
                  sll          s10, s4, t1
                  andi         s3, t4, -592
                  lui          gp, 857171
697:              add          a5, t3, t3
                  add          t6, zero, a7
                  srli         t3, a0, 20
700:              lui          s8, 220382
                  srai         a1, s6, 21
                  ori          s2, t1, -1960
                  slt          t3, a1, sp
704:              ori          tp, sp, 538
                  auipc        a7, 1011159
                  srl          a5, a0, s11
                  xori         s4, s9, 812
                  bge          a7, s0, 720f
                  sltu         t5, s1, t1
710:              sltiu        s4, s11, 867
                  addi         t1, t3, -1061
                  ori          t2, a5, 30
                  sltiu        t4, t5, -738
                  srl          t6, a1, sp
                  bne          a7, t5, 722f
                  bgeu         s3, s1, 726f
                  bltu         a5, s4, 732f
                  xori         s7, t3, 1108
                  sltiu        s10, a5, -903
720:              xor          t6, ra, s6
                  srli         s7, s10, 15
722:              auipc        a3, 312383
                  xor          t1, s9, s11
                  srli         t4, s5, 31
                  and          t2, s11, tp
726:              srl          t2, gp, a0
                  sltiu        a4, a5, -1766
                  addi         t6, t2, 18
                  sltu         t1, s2, a7
                  nop
                  and          s11, a1, t6
732:              bltu         a7, s10, 748f
                  sltu         a6, a0, s9
                  bge          s5, s4, 745f
                  lui          t0, 608920
                  bgeu         s6, s2, 755f
                  auipc        s2, 448309
                  sll          a3, t3, sp
                  lui          a1, 550981
                  sltiu        a4, a6, -231
                  srli         a5, t5, 2
                  auipc        t3, 922493
                  sltiu        a7, s10, 1546
                  xor          t0, s7, ra
745:              nop
                  ori          s11, gp, 1737
                  and          sp, t6, tp
748:              sra          a7, s2, s5
                  ori          t4, s5, 1182
                  slti         tp, s5, 1786
                  addi         s5, s6, -724
                  sltu         a6, t0, a6
                  bgeu         a2, sp, 768f
                  bge          a0, s1, 763f
755:              bltu         s8, s11, 760f
                  andi         a6, a2, 1411
                  sra          s11, sp, a6
                  bne          a0, gp, 770f
                  srli         s1, s7, 7
760:              bltu         sp, a7, 768f
                  slli         a6, s10, 7
                  add          s10, t0, t5
763:              bge          s5, a7, 766f
                  srli         s8, t1, 24
                  bne          a7, s7, 776f
766:              nop
                  sra          s2, t1, t2
768:              slti         t4, s10, -728
                  bge          s4, s7, 779f
770:              sub          a5, s10, t3
                  or           t3, a5, s4
                  add          t5, ra, a0
                  bge          s0, t6, 785f
                  bltu         s6, t1, 777f
                  andi         t5, sp, -221
776:              srai         gp, s0, 0
777:              sra          a1, s8, a3
                  ori          t2, a4, -855
779:              and          a3, a1, t0
                  sltiu        zero, tp, 1662
                  srai         a3, t0, 15
                  andi         t1, s10, 379
                  slt          s4, s7, s0
                  blt          a5, a5, 792f
785:              auipc        a5, 365444
                  bltu         s1, a5, 803f
                  sltiu        a3, a4, 1843
                  xori         s9, a4, -387
                  addi         s8, sp, -1438
                  xori         s1, s6, -1278
                  sll          a6, s0, a2
792:              bgeu         t3, t4, 794f
                  slt          a1, s7, s10
794:              add          t0, a6, t0
                  sltu         s9, s9, s10
                  ori          gp, s7, 667
                  auipc        t6, 987436
                  ori          s8, a7, -1502
                  add          s5, t5, a3
                  addi         s10, s4, -750
                  slti         s7, t0, 314
                  srai         s3, zero, 26
803:              ori          s9, t0, 112
                  add          s4, s0, s4
                  blt          s8, s7, 821f
                  srl          s3, t0, a3
                  sltu         t1, t5, ra
                  bgeu         tp, zero, 828f
                  bne          t4, a4, 811f
                  sll          s10, tp, s8
811:              bltu         a5, a7, 822f
                  srai         t6, tp, 11
                  slti         gp, t0, 1850
                  bgeu         t2, a6, 833f
                  sra          t2, a0, t0
                  auipc        s4, 249398
                  bgeu         t0, t2, 819f
                  addi         a5, s2, -535
819:              sltu         t2, t4, t2
                  bgeu         s1, t3, 829f
821:              andi         s5, s3, -1204
822:              sltu         s7, s3, s9
                  beq          gp, t1, 835f
                  blt          s11, t4, 836f
                  sltu         s1, sp, t2
                  bgeu         s6, a4, 836f
                  add          a3, zero, zero
828:              blt          a1, a0, 843f
829:              auipc        s5, 857170
                  srai         s4, s10, 26
                  srli         a1, s4, 24
                  bge          s10, t5, 847f
833:              beq          s5, a6, 836f
                  sll          s3, a0, t6
835:              or           s6, s11, a0
836:              addi         t5, t6, 90
                  srl          a6, s1, s4
                  xori         s10, s3, -1113
                  bge          s10, gp, 856f
                  sltiu        s6, ra, 528
                  xor          a5, s6, zero
                  sltu         a4, t1, gp
843:              and          t0, s7, s8
                  srli         a1, s8, 19
                  sub          s10, t1, s9
                  srl          gp, zero, t6
847:              bltu         s10, a7, 866f
                  sra          a5, t5, s0
                  slt          t5, t5, t4
                  lui          zero, 1007925
                  addi         a7, s7, 1125
                  addi         tp, s0, -812
                  slli         s3, a3, 8
                  blt          a5, t5, 870f
                  andi         s9, a5, -691
856:              bge          s2, s10, 871f
                  sub          s9, s10, zero
                  srai         a4, s1, 10
                  sub          t0, t0, s10
                  or           gp, s11, gp
                  srai         tp, gp, 15
                  bgeu         a7, s0, 869f
                  slt          a5, sp, a7
                  bgeu         a4, a4, 877f
                  bgeu         t2, a3, 870f
866:              srai         a1, a1, 20
                  andi         a5, zero, -188
                  slli         s10, sp, 4
869:              sub          t5, s6, s1
870:              sll          a7, t3, t6
871:              nop
                  xori         a6, a0, 1050
                  beq          a6, t5, 875f
                  xori         t0, gp, 559
875:              auipc        s1, 434137
                  auipc        t1, 472498
877:              srli         s9, sp, 7
                  andi         a3, s7, -1839
                  lui          s4, 543039
                  slli         s3, ra, 0
                  srli         t5, a1, 14
                  bne          s5, s1, 888f
                  bne          s2, a5, 894f
                  and          zero, t6, t6
                  srli         s1, ra, 1
                  bge          s7, t2, 898f
                  addi         zero, ra, 799
888:              slti         t0, t5, 1108
                  bgeu         a6, a3, 897f
                  and          s11, t5, s7
                  beq          a1, t1, 907f
                  sltiu        sp, s5, 1681
                  addi         s11, sp, -1280
894:              srai         s6, s9, 21
                  slti         a3, a2, 2
                  sltu         s6, a1, a2
897:              addi         s1, gp, 138
898:              sub          zero, t3, ra
                  srai         a7, s11, 15
                  ori          zero, a5, 1474
                  and          s6, s4, s6
                  blt          t1, t6, 910f
                  nop
                  srai         t3, a2, 1
                  bgeu         t1, a6, 916f
                  lui          t6, 272190
907:              nop
                  sra          a3, t5, a6
                  bltu         t3, s10, 919f
910:              sll          gp, ra, a2
                  srli         s3, s5, 31
                  beq          s1, t3, 920f
                  sltiu        s5, s0, 1008
                  beq          t1, t5, 931f
                  addi         a4, s11, -1297
916:              andi         t4, s2, -1837
                  beq          t0, s8, 936f
                  sltu         t0, s1, a5
919:              sra          t4, a0, a2
920:              andi         sp, a1, 2030
                  auipc        a6, 125966
                  blt          t4, t6, 942f
                  bgeu         s9, a7, 934f
                  beq          t4, s4, 927f
                  srl          ra, s4, gp
                  slti         t2, a2, 1392
927:              sll          sp, s1, a6
                  bge          a3, t5, 947f
                  sltu         t3, t0, a6
                  sub          s7, a0, a5
931:              xori         a4, s8, -776
                  blt          a2, s2, 943f
                  sll          t1, s3, s9
934:              slti         s2, t3, 217
                  blt          ra, sp, 951f
936:              xor          a7, s2, t6
                  srli         ra, gp, 30
                  srli         a4, zero, 28
                  andi         ra, s1, 2038
                  sltiu        s6, s9, -1951
                  sltiu        ra, s5, 1559
942:              sltiu        ra, s11, 906
943:              bgeu         s3, t6, 949f
                  beq          gp, a2, 956f
                  srai         a3, t5, 12
                  sll          s1, s10, zero
947:              bgeu         zero, sp, 962f
                  auipc        t0, 593314
949:              slti         t6, t6, 965
                  slli         t2, t1, 25
951:              sltu         s5, sp, s7
                  or           ra, tp, s0
                  blt          a5, a1, 968f
                  sltiu        a7, a2, -1006
                  auipc        s10, 100934
956:              srai         a7, t5, 13
                  nop
                  slli         a1, a5, 6
                  srai         s11, a6, 11
                  slti         gp, s6, 242
                  blt          a1, tp, 977f
962:              bgeu         s7, t3, 979f
                  srli         s5, s3, 17
                  or           ra, a7, a1
                  andi         sp, s9, 181
                  slli         a7, t0, 9
                  nop
968:              nop
                  add          t2, a3, t2
                  auipc        s8, 133047
                  or           s11, a7, s6
                  lui          t1, 621094
                  auipc        s8, 743160
                  srl          a4, a6, s3
                  bltu         t3, gp, 986f
                  xor          t4, s11, gp
977:              addi         a1, a3, 779
                  bge          s9, t6, 986f
979:              srli         s2, s5, 31
                  auipc        a6, 374923
                  xori         t4, a3, -2007
                  beq          s7, s0, 990f
                  srl          s2, a0, a7
                  sltu         tp, gp, s9
                  and          s5, s7, ra
986:              nop
                  sltu         a6, a1, s7
                  bge          a6, tp, 1000f
                  sltiu        s8, s6, 146
990:              sra          t3, s5, tp
                  sll          t5, a1, a5
                  bne          s8, a1, 1007f
                  bgeu         s4, s10, 996f
                  auipc        a6, 1033686
                  add          tp, t1, tp
996:              lui          a3, 991589
                  beq          a7, s9, 1007f
                  auipc        tp, 574783
                  auipc        t3, 903407
1000:             or           s5, gp, gp
                  bgeu         a6, s2, 1014f
                  sra          a7, gp, a4
                  auipc        a3, 974192
                  or           t4, a3, sp
                  andi         t4, s0, -259
                  lui          a5, 303819
1007:             and          s4, s4, s6
                  sra          sp, t6, s11
                  lui          s6, 964173
                  slti         s7, s2, 799
                  srai         zero, a2, 8
                  bgeu         s3, t5, 1021f
                  bltu         a0, s2, 1030f
1014:             sll          t4, a3, t4
                  slt          s3, t1, s6
                  and          a1, s7, sp
                  nop
                  sub          t6, t4, t1
                  slti         s4, a7, -65
                  add          s8, a0, s1
1021:             beq          s4, tp, 1026f
                  bge          tp, a3, 1034f
                  sub          tp, s0, ra
                  andi         s5, a3, -404
                  nop
1026:             add          a3, ra, ra
                  auipc        s11, 719937
                  add          t4, s5, a7
                  slt          s11, s5, sp
1030:             blt          a1, sp, 1037f
                  sll          s10, s6, t0
                  auipc        s2, 4286
                  auipc        sp, 653292
1034:             add          s10, s4, a6
                  slti         a1, a4, 1273
                  andi         a1, s11, 625
1037:             sltu         t4, t3, a1
                  bge          s10, s11, 1046f
                  slli         s1, s3, 3
                  bge          tp, s5, 1059f
                  bne          t5, t2, 1044f
                  blt          sp, s8, 1044f
                  srl          a7, a7, a7
1044:             srl          t5, a2, a0
                  srli         s10, s5, 27
1046:             auipc        a5, 161153
                  srl          s8, s3, a2
                  xor          a4, s10, s9
                  srai         s10, s3, 2
                  bne          zero, s1, 1070f
                  add          t3, t1, s11
                  sub          t6, a1, t5
                  or           t6, s3, s1
                  srai         s4, a7, 11
                  slt          s8, tp, a0
                  xor          s2, s7, s10
                  srli         t4, s11, 28
                  xori         gp, s0, -231
1059:             srli         t6, t1, 8
                  addi         a6, s1, 744
                  sll          a3, t3, gp
                  bgeu         a4, a0, 1073f
                  andi         gp, tp, -1060
                  bgeu         a3, a6, 1074f
                  srli         a3, s7, 21
                  srl          s1, s10, s10
                  xor          s8, s3, a3
                  slli         t3, s10, 17
                  auipc        s8, 81847
1070:             bgeu         t3, t0, 1072f
                  bge          s8, s7, 1074f
1072:             xori         t4, tp, 1328
1073:             sltu         t3, a7, a1
1074:             sub          t0, a2, s1
                  slt          a5, s3, s9
                  srl          s7, s10, s0
                  srli         a1, s6, 15
                  slli         s9, sp, 4
                  auipc        s6, 292896
                  lui          s1, 377611
                  srai         t4, a3, 27
                  sltiu        t1, s2, 1065
                  slti         s10, t3, -964
                  sltu         a3, a3, a7
                  srli         s11, t3, 2
                  slli         s2, a5, 6
                  or           a5, t0, s11
                  sra          t3, t5, s5
                  or           t1, a5, a7
                  addi         a4, s6, -32
                  slt          a4, s11, t6
                  add          s5, a0, a6
                  bne          t5, t3, 1103f
                  bge          a1, a4, 1100f
                  sltu         a3, t0, t5
                  sll          a6, s5, s9
                  slt          a7, s6, a1
                  lui          s1, 357621
                  sll          s5, s4, a0
1100:             andi         tp, t2, -137
                  and          a4, a5, s9
                  sltu         s2, s3, tp
1103:             xor          t0, s6, s6
                  srli         a4, zero, 10
                  and          s1, a2, a2
                  ori          sp, t4, -1056
                  blt          a4, t5, 1116f
                  ori          ra, tp, -1183
                  xori         s2, a2, -1470
                  blt          t6, s2, 1121f
                  nop
                  nop
                  srli         t4, s11, 23
                  srai         sp, gp, 21
                  slt          t3, a3, s4
1116:             sltiu        t5, a3, 1887
                  blt          t1, s0, 1129f
                  srl          s10, sp, t4
                  auipc        s3, 1011710
                  auipc        s2, 160914
1121:             blt          a5, t3, 1131f
                  nop
                  slti         s8, s5, 1009
                  sub          s5, s3, sp
                  slli         s6, s10, 5
                  ori          t4, t1, 1709
                  beq          s1, s11, 1146f
                  slli         t2, ra, 15
1129:             slti         a7, t4, -362
                  slti         a6, s0, -1135
1131:             bne          a6, s1, 1148f
                  or           t3, t1, t4
                  or           s7, t4, s7
                  srai         a1, a2, 10
                  sltu         t0, t5, t6
                  slli         t5, s8, 20
                  slt          t1, s10, t0
                  sltu         t0, t1, gp
                  sltiu        a3, a2, -416
                  sll          a5, gp, t1
                  slti         ra, gp, -1990
                  blt          t4, s0, 1157f
                  bne          a0, s11, 1156f
                  blt          t4, s5, 1156f
                  srli         s2, a0, 3
1146:             xori         s5, s10, -654
                  sub          a1, s4, a5
1148:             or           a5, s0, a3
                  andi         t5, s2, 625
                  slli         t1, tp, 16
                  bgeu         s10, t1, 1153f
                  sltiu        s4, s1, -236
1153:             bgeu         s10, s3, 1160f
                  sltu         a7, s6, s10
                  sub          t6, t0, t6
1156:             sub          a7, s3, s5
1157:             sll          t2, a5, s10
                  bltu         s9, s0, 1164f
                  sltu         t2, s11, a6
1160:             xori         t1, a1, 2031
                  and          s3, a6, ra
                  beq          a5, a4, 1164f
                  bgeu         a3, s5, 1164f
1164:             srai         a5, s1, 30
                  srai         a1, zero, 30
                  lw           t1, 4(s0)
                  srli         s5, a4, 31
                  srai         s1, zero, 14
                  xori         s7, a0, -822
                  auipc        s9, 964361
                  sub          ra, s11, s0
                  auipc        s10, 451808
                  addi         s0, s0, 24
                  srli         s4, t1, 30
1642:             addi x29, x6, 0
1642:             jalr x29, x29, 0
sub_1:            addi         s0, s0, -64
                  sltiu        s7, t1, -1931
                  sw           t1, 4(s0)
                  ori          s2, s0, -1874
                  nop
                  srl          t3, s9, tp
sub_1_1:          jal          t1, 8f
0:                jal          t1, 6f
1:                jal          t0, 9f
2:                jal          ra, 4f
3:                jal          ra, 7f
4:                jal          t2, 10f
5:                jal          sp, 11f
6:                jal          s5, 5b
7:                jal          t1, 2b
8:                jal          s4, 0b
9:                jal          a6, 12f
10:               jal          ra, 1b
11:               jal          t1, 3b
12:               or           s3, sp, t4
sub_1_3:          jal          t1, 1f
0:                jal          ra, 14f
1:                jal          t1, 10f
2:                jal          t1, 11f
3:                jal          ra, 15f
4:                jal          t1, 13f
5:                jal          t1, 12f
6:                jal          s8, 7f
7:                jal          a5, 8f
8:                jal          ra, 5b
9:                jal          ra, 2b
10:               jal          s5, 9b
11:               jal          ra, 0b
12:               jal          ra, 4b
13:               jal          t0, 3b
14:               jal          t1, 6b
15:               slli         a3, tp, 16
                  bltu         t0, t6, 9f
                  auipc        a7, 986648
                  bne          t5, s8, 5f
                  sltu         a1, s2, s2
                  andi         t1, s5, 1104
5:                sltu         a5, t6, s6
                  sll          a4, t2, s11
                  sub          s11, a4, ra
                  blt          a5, s0, 19f
9:                xor          s1, t3, t3
                  addi         t2, a7, -1786
                  slti         s1, t3, -679
                  beq          ra, s3, 27f
                  slti         a5, s6, 1230
                  sra          s1, gp, a7
                  add          s8, a6, s3
                  xori         gp, t1, -565
                  srli         a3, a1, 23
                  srl          s10, t6, s10
19:               slti         a5, s10, -1129
                  sra          s1, t5, sp
                  add          s10, gp, sp
                  blt          s1, s7, 33f
                  srli         a4, zero, 18
                  srai         s11, s11, 28
                  slt          s5, a0, a7
                  andi         tp, t6, 1732
27:               bne          s2, s7, 39f
                  sltu         s4, t6, t4
                  sub          t5, t4, sp
                  srl          s8, t0, t0
                  srli         a7, s7, 19
                  sra          s10, a3, s4
33:               bne          gp, s8, 39f
                  and          s7, a5, zero
                  sub          s10, t2, sp
                  sltu         ra, s2, s2
                  and          t4, s2, a0
                  auipc        t1, 632225
39:               add          t4, gp, a7
                  and          s11, s9, t1
                  xori         s8, t1, -28
                  bltu         a3, a5, 51f
                  slti         s8, zero, 1763
                  nop
                  beq          s9, s8, 51f
                  sra          tp, s0, t0
                  bge          s6, s4, 53f
                  ori          a1, a2, -1329
                  and          s4, s4, t2
                  sltu         a4, t2, s10
51:               slti         ra, s6, -676
                  beq          t1, s8, 63f
53:               sll          a5, ra, a1
                  lui          a5, 166797
                  or           t5, s2, t1
                  srai         t1, s4, 8
                  slli         t3, a1, 8
                  or           s6, s5, s6
                  beq          s3, a7, 68f
                  slli         a5, s5, 24
                  addi         a3, zero, 166
                  nop
63:               srli         a5, a5, 5
                  add          gp, s5, s4
                  slt          a6, gp, s9
                  bne          s7, t3, 83f
                  xori         s7, a6, 873
68:               and          s9, zero, s2
                  ori          ra, s2, 2035
                  sll          s7, a7, sp
                  and          ra, s4, s1
                  ori          s2, t4, 791
                  blt          s4, t6, 79f
                  sltu         gp, s5, s9
                  or           ra, t6, a2
                  slli         t4, t0, 24
                  sub          s3, s4, s11
                  sltiu        t2, t5, -161
79:               bne          t4, t6, 93f
sub_1_2:          jal          t1, 2f
0:                jal          a3, 11f
1:                jal          ra, 5f
2:                jal          ra, 6f
3:                jal          s10, 0b
4:                jal          ra, 1b
5:                jal          ra, 8f
6:                jal          gp, 4b
7:                jal          ra, 10f
8:                jal          ra, 7b
9:                jal          t1, 12f
10:               jal          ra, 3b
11:               jal          ra, 9b
12:               addi         ra, t2, 1908
                  srl          t5, sp, s3
                  or           t0, s5, s1
                  srai         a1, t1, 4
83:               beq          gp, s8, 94f
                  andi         s7, a0, -1816
                  blt          s1, zero, 87f
                  nop
87:               nop
                  srli         t3, t4, 21
                  beq          s1, tp, 92f
                  srai         s3, gp, 16
                  add          s8, a4, s0
92:               srai         s2, a1, 2
93:               and          s1, a4, tp
94:               and          s10, gp, a2
                  bgeu         gp, a2, 98f
                  blt          s0, s8, 102f
                  lui          sp, 597986
98:               bge          s7, a1, 109f
                  slt          s11, a4, s11
                  blt          t6, a1, 101f
101:              bge          a1, a6, 112f
102:              slli         s5, a6, 28
                  srl          a7, t3, a4
                  and          t1, t1, a4
                  bgeu         s4, a0, 121f
                  bltu         t5, t4, 113f
                  bge          a0, a6, 112f
                  srli         s6, a4, 14
109:              and          a6, sp, s11
                  or           gp, t2, gp
                  bgeu         s5, t6, 126f
112:              sra          a5, s8, s1
113:              addi         zero, a4, -1917
                  sltiu        a7, t5, 1085
                  xor          s4, s5, s7
                  nop
                  ori          s8, a5, -908
                  and          s6, a0, t3
                  sra          a6, a0, sp
                  bgeu         s8, s5, 127f
121:              auipc        sp, 263992
                  sub          a5, s8, sp
                  bne          s6, a2, 135f
                  slli         t0, t3, 20
                  sltu         s4, s2, t5
126:              sltu         a7, ra, a3
127:              bltu         s4, s2, 133f
                  slt          t5, t2, t1
                  sll          gp, s0, t1
                  srli         t3, a0, 27
                  bltu         s3, t2, 138f
                  sltu         t4, s6, tp
133:              andi         s8, a4, -2034
                  xori         tp, t6, -1899
135:              sltu         sp, s10, a5
                  sltiu        ra, s3, 693
                  add          sp, t6, s10
138:              add          t1, t1, s1
                  sll          t0, a2, t1
                  slt          a3, a3, a1
                  addi         s8, s6, -1225
                  bge          a4, s0, 153f
                  bge          s11, a1, 154f
                  add          tp, a4, t0
                  sltiu        s2, s0, -672
                  srai         a6, a7, 6
                  nop
                  xor          tp, s7, s2
                  bne          ra, t4, sub_1_j3 #branch to jump instr
                  and          s9, t4, a0
                  srli         s9, sp, 10
                  sra          s6, s3, t0
                  auipc        s3, 598369
                  auipc        s1, 134901
                  sll          a7, s6, a1
sub_1_j3:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  blt          s8, s3, 155f
                  sub          t3, a1, t6
                  add          t0, s10, s4
                  sll          zero, ra, s6
                  lui          t3, 778322
                  sub          s7, t0, a7
                  andi         s5, s11, 1182
153:              bgeu         s10, a6, 159f
154:              slt          s11, s7, gp
155:              or           a7, s3, t5
                  blt          s8, a7, 167f
                  addi         s6, sp, -741
                  srai         s3, a3, 29
159:              srai         zero, a5, 7
                  sub          s10, a5, a7
                  srli         t0, t4, 15
                  nop
                  slt          s5, s5, a2
                  and          s11, t0, s6
                  add          zero, s5, a5
                  and          gp, t3, s0
167:              auipc        a4, 843768
                  srl          s7, a2, s7
                  add          t5, s2, t0
                  lui          ra, 288977
                  lui          s3, 640385
                  slli         t2, a2, 10
                  and          s1, s2, t1
                  sltu         a1, tp, t2
                  slti         s7, sp, -1180
                  auipc        ra, 209974
                  srai         s5, a2, 9
                  bltu         s7, tp, 181f
                  beq          t6, ra, 188f
                  slt          ra, t6, s9
181:              and          t6, s2, a4
                  xori         s9, s10, -921
                  addi         gp, s2, 791
                  beq          ra, a1, 195f
                  blt          a1, t1, 197f
                  and          t4, a2, a3
                  bltu         a3, t6, 204f
188:              andi         tp, s10, 1444
                  sltiu        t1, a7, 1872
                  bne          s0, t4, 192f
                  srl          a7, a4, a1
192:              xor          s3, ra, a7
                  xori         t0, s2, -1748
                  xor          a3, s8, gp
195:              add          a4, s2, s0
                  andi         t3, t1, -269
197:              sltiu        s8, a2, -913
                  auipc        s9, 765842
                  srai         s5, zero, 15
                  sltu         a5, a3, s4
                  xor          t0, s3, s0
                  blt          s9, a7, 213f
                  addi         s4, a3, -1167
204:              nop
                  auipc        s9, 686944
                  addi         s4, s5, -523
                  srai         s6, tp, 19
                  nop
                  bge          gp, a4, 215f
                  sltu         a5, a0, t1
                  beq          s8, s9, 217f
                  or           s6, sp, a4
213:              beq          a5, a4, 217f
sub_1_0:          jal          t1, 10f
0:                jal          t0, 1f
1:                jal          t4, 2f
2:                jal          ra, 12f
3:                jal          ra, 5f
4:                jal          t1, 13f
5:                jal          t1, 6f
6:                jal          ra, 16f
7:                jal          ra, 9f
8:                jal          t1, 15f
9:                jal          t1, 11f
10:               jal          ra, 14f
11:               jal          t1, 17f
12:               jal          ra, 4b
13:               jal          s10, 7b
14:               jal          ra, 3b
15:               jal          t1, 0b
16:               jal          a7, 8b
17:               andi         s11, s1, 638
                  bgeu         a2, s5, 217f
215:              and          s8, ra, a1
                  slti         s9, t1, -2029
217:              and          s7, s5, a7
                  andi         gp, s10, 1926
                  or           s5, s11, s11
                  and          s3, a0, s7
                  sltiu        s11, s10, 1504
                  lw           t1, 4(s0)
                  addi         s0, s0, 64
                  slt          t5, s7, t4
                  sub          zero, s10, s7
                  sltiu        t4, zero, -1284
308:              addi x27, x6, 0
308:              jalr x27, x27, 0
sub_5:            addi         s0, s0, -56
                  add          a1, a5, s9
                  lui          s3, 842404
                  srl          a4, a0, s9
                  sw           t1, 4(s0)
                  srl          t6, a2, s1
                  auipc        zero, 320073
                  srl          s9, t2, s11
sub_5_5:          jal          t1, 13f
0:                jal          t2, 17f
1:                jal          ra, 5f
2:                jal          ra, 14f
3:                jal          ra, 9f
4:                jal          ra, 3b
5:                jal          t2, 8f
6:                jal          ra, 20f
7:                jal          ra, 0b
8:                jal          t1, 2b
9:                jal          ra, 18f
10:               jal          ra, 11f
11:               jal          ra, 4b
12:               jal          t1, 7b
13:               jal          s11, 15f
14:               jal          a5, 16f
15:               jal          ra, 1b
16:               jal          ra, 19f
17:               jal          t1, 10b
18:               jal          ra, 6b
19:               jal          ra, 12b
20:               sub          t0, s10, t0
sub_5_1:          jal          t1, 7f
0:                jal          ra, 13f
1:                jal          ra, 24f
2:                jal          ra, 12f
3:                jal          ra, 5f
4:                jal          t2, 20f
5:                jal          ra, 19f
6:                jal          a4, 18f
7:                jal          s1, 6b
8:                jal          t1, 0b
9:                jal          s11, 10f
10:               jal          t1, 23f
11:               jal          s5, 17f
12:               jal          ra, 4b
13:               jal          ra, 14f
14:               jal          s4, 22f
15:               jal          a5, 3b
16:               jal          t1, 1b
17:               jal          a6, 2b
18:               jal          ra, 8b
19:               jal          ra, 21f
20:               jal          ra, 9b
21:               jal          gp, 11b
22:               jal          ra, 15b
23:               jal          a1, 16b
24:               auipc        a1, 450436
sub_5_3:          jal          t1, 5f
0:                jal          ra, 7f
1:                jal          t1, 15f
2:                jal          ra, 3f
3:                jal          ra, 4f
4:                jal          t1, 12f
5:                jal          sp, 14f
6:                jal          t1, 8f
7:                jal          a3, 9f
8:                jal          ra, 2b
9:                jal          ra, 13f
10:               jal          t1, 18f
11:               jal          gp, 6b
12:               jal          ra, 10b
13:               jal          ra, 16f
14:               jal          t1, 0b
15:               jal          t1, 11b
16:               jal          sp, 17f
17:               jal          ra, 1b
18:               ori          t5, t4, 698
sub_5_0:          jal          t1, 1f
0:                jal          ra, 15f
1:                jal          ra, 19f
2:                jal          ra, 24f
3:                jal          t1, 0b
4:                jal          ra, 9f
5:                jal          t1, 25f
6:                jal          t1, 26f
7:                jal          t1, 29f
8:                jal          t6, 14f
9:                jal          ra, 8b
10:               jal          ra, 12f
11:               jal          tp, 22f
12:               jal          t1, 11b
13:               jal          s11, 28f
14:               jal          ra, 7b
15:               jal          t1, 5b
16:               jal          s5, 13b
17:               jal          tp, 20f
18:               jal          t1, 6b
19:               jal          ra, 18b
20:               jal          t3, 30f
21:               jal          ra, 16b
22:               jal          ra, 17b
23:               jal          ra, 27f
24:               jal          ra, 21b
25:               jal          t1, 23b
26:               jal          ra, 3b
27:               jal          t1, 4b
28:               jal          ra, 10b
29:               jal          t1, 2b
30:               add          sp, a1, tp
sub_5_2:          jal          t1, 1f
0:                jal          ra, 6f
1:                jal          s10, 2f
2:                jal          ra, 9f
3:                jal          ra, 11f
4:                jal          t1, 7f
5:                jal          t1, 3b
6:                jal          t1, 10f
7:                jal          a1, 8f
8:                jal          ra, 5b
9:                jal          s5, 0b
10:               jal          ra, 4b
11:               sll          s1, a3, t2
                  sltiu        t6, s11, 1953
                  bne          t6, s9, 2f
2:                sltiu        s3, a5, 1029
                  bltu         s3, s5, 5f
                  srl          t4, t1, sp
5:                xor          t2, s2, s4
                  bge          a2, s8, 16f
                  and          sp, t5, s1
                  bltu         s3, s4, 20f
                  srai         s3, a5, 26
                  andi         t5, s11, 806
                  lui          a5, 157932
                  or           s10, ra, t6
                  nop
                  sltiu        ra, t0, 905
                  srl          s1, a4, a2
16:               andi         a7, s6, 1454
                  and          t2, s4, s0
                  xori         a1, sp, 2037
                  addi         s3, a7, 1114
20:               beq          s10, s10, 35f
                  or           a3, s11, a6
                  sra          sp, s2, s8
                  slt          t6, a3, tp
                  add          a6, ra, s6
                  xori         a3, s8, 1376
                  bgeu         s5, a5, 37f
                  bgeu         s2, a5, 38f
                  sll          t0, tp, s2
                  bltu         s3, s10, 30f
30:               slli         tp, t2, 3
                  slti         t1, s7, 1427
                  slt          a3, a4, s0
                  and          a1, gp, t6
                  bne          t1, s3, 47f
35:               sub          a7, sp, a7
                  sll          a5, t1, sp
37:               add          a3, ra, a6
38:               sll          a5, a2, t6
                  nop
                  ori          tp, t0, 1271
                  bge          sp, ra, 46f
                  bge          sp, s7, 52f
                  slli         gp, s4, 11
                  bne          s9, s5, 54f
                  sltiu        a7, zero, -1297
46:               bne          t4, s3, 48f
47:               add          s2, a5, a7
48:               ori          s10, ra, 970
                  auipc        t0, 750356
                  srli         s4, t5, 22
                  blt          t3, zero, 57f
52:               ori          gp, tp, 875
                  bne          a7, s2, 57f
54:               bltu         a5, s9, 69f
                  bge          t5, s4, 74f
                  slt          a3, a3, t6
57:               srli         s3, sp, 21
                  beq          s4, s11, 74f
                  slli         s7, s3, 15
                  andi         s8, s8, -4
                  sltiu        s6, ra, -1795
                  slti         s2, tp, -1348
                  or           t6, s2, a2
                  xor          s3, t0, s10
                  xori         s4, s2, 27
                  srli         s7, tp, 12
                  slti         s3, s9, -2014
                  blt          a7, s0, 77f
69:               xori         a4, t6, 1426
                  slt          s1, a5, s2
                  srli         s11, a6, 24
                  bltu         t3, a6, 74f
                  andi         a4, s4, -1562
74:               bltu         s3, s2, 81f
                  blt          a2, s11, 81f
                  and          t3, a3, t5
77:               sltiu        t0, s9, -848
                  add          gp, a7, a3
                  slli         s9, s3, 30
                  sltiu        s2, s0, -1349
81:               and          a6, t3, t1
                  blt          s3, s4, 89f
                  sltiu        a5, a5, 1406
                  srai         t1, s1, 13
                  sltiu        s3, s3, 167
                  srl          a6, a7, s5
                  andi         s7, s2, -798
                  auipc        s10, 760314
89:               lui          t5, 237240
                  slli         a7, a5, 17
                  xori         t5, s5, -1459
                  blt          t0, s4, 107f
                  srli         s1, t2, 14
                  add          gp, s7, s7
                  slli         s3, s2, 10
                  slti         a7, a3, -142
                  srai         s3, t3, 1
                  addi         s6, t0, 1325
                  bltu         t0, s0, 117f
                  slli         s5, s10, 19
                  bgeu         a6, t4, 112f
                  srai         t4, s7, 27
                  blt          ra, s8, 107f
                  ori          s5, s7, 552
                  slli         a4, zero, 19
                  or           a4, t0, ra
107:              bge          t0, s7, 127f
                  sltiu        zero, a2, 1409
                  bltu         t1, s4, 129f
                  xor          t4, s7, ra
                  slli         t5, t5, 17
112:              slti         s4, t2, -394
                  or           s1, s7, sp
                  or           s11, t3, s10
                  auipc        s4, 148870
                  sltiu        s3, t3, -1990
117:              blt          t3, t5, 128f
                  slti         t0, s5, 1740
                  auipc        s11, 159874
                  bltu         s7, s11, 124f
                  srl          s10, a6, zero
                  srli         ra, a5, 23
                  blt          t1, t0, 133f
124:              bgeu         a0, a3, 134f
                  slli         t5, t5, 4
                  sub          gp, t1, a0
127:              bne          a7, ra, 142f
128:              srli         a7, t0, 16
129:              andi         sp, a3, -454
                  auipc        s9, 866029
                  srai         s4, t1, 4
                  ori          a7, t4, -1214
133:              xor          s3, t2, t6
134:              bgeu         s6, zero, 154f
                  xori         s5, s1, 1916
                  bgeu         s0, t5, 147f
                  bge          t5, t5, 155f
                  slli         s8, t3, 5
                  add          a5, a1, a2
                  or           s10, a3, a0
                  beq          s3, s9, 152f
142:              ori          a4, s3, 1271
                  add          a6, s2, t0
                  sltiu        s7, s3, -1593
                  lui          tp, 667390
                  bne          a1, s6, 152f
147:              srai         zero, s7, 29
                  andi         s11, s5, -854
                  srli         a3, t2, 24
                  slti         a6, a1, -48
                  sub          s1, s10, a6
152:              slli         zero, a3, 2
                  srli         s6, s0, 10
154:              srl          a7, a4, zero
155:              slti         gp, a7, -1972
                  sltu         a4, t3, sp
                  srli         s11, a2, 3
                  sra          a5, s11, a0
                  or           t1, s11, s5
                  slt          tp, s0, a7
                  andi         a3, s1, 1929
                  beq          t6, a3, 178f
                  nop
                  add          s10, t5, s8
                  srl          t3, a2, s9
                  lui          a6, 51473
                  add          gp, t2, s6
                  andi         s4, s7, 927
sub_5_4:          jal          t1, 13f
0:                jal          t2, 7f
1:                jal          ra, 17f
2:                jal          s4, 5f
3:                jal          ra, 12f
4:                jal          ra, 15f
5:                jal          s3, 4b
6:                jal          ra, 16f
7:                jal          ra, 11f
8:                jal          ra, 2b
9:                jal          t1, 10f
10:               jal          t1, 8b
11:               jal          ra, 9b
12:               jal          a3, 0b
13:               jal          gp, 14f
14:               jal          t1, 3b
15:               jal          s5, 6b
16:               jal          ra, 1b
17:               andi         s11, gp, -2045
                  beq          zero, s10, 181f
                  bgeu         s4, s10, 174f
                  slt          s4, s4, a2
                  lui          ra, 732374
                  blt          s8, s11, 188f
174:              sltiu        tp, zero, 2000
                  slti         s6, ra, -1290
                  ori          t4, t3, 722
                  sltu         zero, s1, a7
178:              slti         a4, zero, -1937
                  add          t3, s2, t5
                  xor          t0, s9, t4
181:              srai         sp, s8, 30
                  srl          s5, s7, sp
                  bge          t3, t1, 194f
                  or           a1, s10, a3
                  srai         s5, t2, 29
                  addi         s7, s4, 221
                  or           t6, t2, s4
188:              auipc        t6, 791794
                  sltu         t0, s11, zero
                  addi         a6, t3, -545
                  xori         t3, s11, -6
                  lui          a7, 915673
                  slli         a4, a0, 9
194:              nop
                  lui          tp, 662422
                  andi         s8, s3, 650
                  sltu         s7, s0, a1
                  add          t6, a6, s10
                  xori         zero, t1, 1787
                  slti         a4, a4, 660
                  sra          s8, t0, tp
                  slt          zero, s10, sp
                  bgeu         tp, s0, 212f
                  addi         a1, t1, 1020
                  sll          a3, t6, t6
                  sltu         s11, s3, s9
                  auipc        s7, 980601
                  lui          t0, 785862
                  addi         s10, gp, -1713
                  bgeu         s6, s8, 215f
                  slt          t3, t3, a0
212:              sltu         s8, a6, t0
                  srli         a4, tp, 3
                  slti         a4, zero, -217
215:              sub          a4, s0, s10
                  srl          t3, ra, zero
                  xor          s2, t4, s0
                  sltu         s2, a6, a3
                  lui          t5, 557027
                  slt          zero, t2, t1
                  srl          s7, s4, s6
                  slti         gp, t5, 1436
                  srai         a5, s8, 17
                  srl          s2, s8, ra
                  xor          a6, s5, t2
                  addi         t6, a1, -2002
                  sub          t2, t1, gp
                  addi         a4, zero, -71
                  lui          a7, 579863
                  bne          a2, t4, 240f
                  srai         t4, a1, 16
                  or           t1, a2, t3
                  and          a3, zero, a2
                  beq          s0, s10, 249f
                  slti         s8, a4, -282
                  sra          t0, zero, a7
                  srai         s10, t1, 5
                  bne          s1, t3, 239f
239:              add          a5, s4, t1
240:              bge          s7, gp, 246f
                  blt          t2, a0, 252f
                  xor          s9, t0, ra
                  srl          sp, a7, a2
                  bgeu         t2, ra, 257f
                  srai         a1, t4, 24
246:              sra          s2, a7, a6
                  xori         t4, a6, -1528
                  srai         s7, a3, 26
249:              and          gp, a6, a3
                  sub          t5, a0, gp
                  addi         a5, a5, -1782
252:              slli         gp, ra, 17
                  slli         a6, a7, 4
                  beq          ra, s0, 255f
255:              auipc        t5, 421765
                  addi         tp, s9, 1066
257:              xor          s9, s3, s7
                  slli         t4, s0, 1
                  xori         s9, a0, -1576
                  xor          zero, s3, ra
                  slli         a1, a2, 10
                  slt          t1, s7, s3
                  bltu         t2, a0, 265f
                  andi         s7, s2, -1976
265:              bltu         t4, s9, 267f
                  addi         zero, s7, 593
267:              sltiu        s4, s1, -710
                  andi         a3, zero, 1212
                  bge          a1, a4, 289f
                  bgeu         s1, t1, 277f
                  srai         s9, a6, 4
                  beq          a7, s11, 274f
                  and          a3, a4, s10
274:              xor          s10, s9, a5
                  and          a4, s8, a4
                  or           s9, s0, s5
277:              slti         a4, a4, -1612
                  xor          s7, a1, a0
                  bltu         s1, s9, 286f
                  addi         s5, a5, 1414
                  srli         t6, t5, 15
                  xori         s8, t5, 1800
                  srl          sp, a4, t1
                  sub          s10, s4, s4
                  bne          ra, s6, 304f
286:              bltu         t5, a0, 305f
                  srl          zero, s8, t0
                  sub          t1, gp, s5
289:              lui          tp, 885177
                  sra          t1, gp, a3
                  srl          t5, s5, s5
                  srli         s8, t3, 14
                  sub          s9, a5, s0
                  bgeu         sp, s11, 304f
                  bltu         s2, s7, 307f
                  sll          tp, a3, s11
                  slt          t4, t0, s4
                  slt          s9, t1, s3
                  or           a3, s0, s7
                  addi         t2, ra, -1062
                  srl          s9, s6, zero
                  or           s5, t1, t1
                  bgeu         zero, s2, 316f
304:              add          sp, s5, tp
305:              add          t0, t5, a6
                  and          sp, s6, a4
307:              slti         s1, t2, -908
                  bge          t0, s5, 317f
                  sub          a6, a2, s5
                  srli         s2, t0, 22
                  ori          gp, s5, -527
                  beq          s3, a3, 323f
                  srli         s6, tp, 10
                  sltiu        a3, a2, -1622
                  ori          t5, tp, 348
316:              sltu         s9, t0, a2
317:              add          zero, a0, s4
                  xor          a4, s3, t5
                  auipc        s10, 189438
                  sra          t6, sp, s3
                  slli         s11, a6, 4
                  bge          t0, s10, 326f
323:              bne          t5, a5, 327f
                  add          sp, s0, s4
                  sub          s4, a3, s2
326:              srl          s5, s2, a1
327:              andi         t5, a6, -1605
                  srai         s1, a3, 31
                  lw           t1, 4(s0)
                  addi         s0, s0, 56
                  lui          a5, 157436
                  ori          zero, t2, -1752
                  sltu         a5, s9, ra
                  srli         s9, t2, 28
475:              addi x30, x6, 1
475:              jalr x30, x30, 0
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
.word 0x64b7f93a, 0xf0e0c268, 0x9fc269cf, 0x6af202db, 0xcb0e2e46, 0x21663be7, 0xa61f7a7e, 0xc80e8e5e
.word 0xef90e00f, 0x4219b57e, 0xff0316f2, 0x21f80e5d, 0xe1eded23, 0x64a51883, 0xcd6a46c4, 0x1f4cc649
.word 0xf4666f5e, 0xf258cd25, 0xc453d0b8, 0x9111e4aa, 0x335ea294, 0xb1645baf, 0x0891fd5e, 0x7a826d0d
.word 0xc92983e9, 0x70d363a7, 0x8b4b40bc, 0x5a7c2202, 0xaf519062, 0x13a30d85, 0xa28382e9, 0x6658c37d
.word 0x0f6ed981, 0x9369adad, 0xd36c3197, 0x4b6354a4, 0x4952106f, 0xfce1b551, 0x2bee00fe, 0x971cbb68
.word 0xbbb618ac, 0xefd1539c, 0x5e38b032, 0xacb69fbd, 0x3242cc8c, 0xeeb49ad5, 0x278dd806, 0x8853ecb7
.word 0xfcf6b2e1, 0xf426a411, 0xe45c88e6, 0xf855c540, 0x05e134ef, 0xf432e37c, 0x7764d828, 0x25fa06a3
.word 0xc3f5824b, 0x6b044b67, 0x2d88f580, 0xb08c90ae, 0xecf03d06, 0x2e4c224e, 0x165291de, 0x237e2e1d
.word 0x3d4f03d6, 0xd1da83ca, 0x81329b7b, 0x1b04161a, 0x2a5bf4da, 0xd1ae6903, 0x089e3d52, 0x9093c541
.word 0xdcae0243, 0x64fab341, 0xc8028407, 0x46f1c21b, 0xa2411876, 0xe7cbea0c, 0x7d96e2ea, 0xec5662cc
.word 0x006733db, 0x9eef959f, 0x3829e6c3, 0x04fd7fad, 0x117bee05, 0x4f19b136, 0x49aa43d6, 0x4ce7146f
.word 0x54036f1a, 0xd5c4c973, 0x4099e1dd, 0x05e1b4e2, 0x1ecc82de, 0xce7d43cd, 0x38250eb5, 0x2c917f02
.word 0xc5d6609f, 0x799fb562, 0xde9968fe, 0xd9cf11d8, 0xb3076e5f, 0xb37f4398, 0xd70f8d88, 0xde7b4581
.word 0x3e00a0b8, 0x6d5eece4, 0x5a00fd80, 0x4fce58a7, 0x421c1bcf, 0x863528b2, 0x6c9ca1ba, 0x9d4ab26d
.word 0x13305661, 0xd8f964f0, 0x77eb7046, 0xfb48c2f8, 0x405f09e1, 0x2a40832a, 0xc67987d2, 0xc547fa31
.word 0x5b180de0, 0xb7e9b16b, 0x14ca33f2, 0xf5d0ccba, 0xf9eb7223, 0x07139412, 0x391eb41e, 0x46b854fe
.word 0x062929eb, 0xe25ec231, 0x5a5dba94, 0xb814e765, 0xcee62ba6, 0xbfdffda3, 0xa22aa7c9, 0xf4c09e6a
.word 0xfe7b120a, 0x511796fe, 0x5661d207, 0x9712b095, 0x1cd20836, 0x9f7210a2, 0x8fcfaa82, 0xd59d9e97
.word 0x970fbc65, 0xa38f8c9f, 0xbdb9af97, 0xd8724ef3, 0x4890c71c, 0x56f061bf, 0xafcf19b6, 0x8e7e7ba7
.word 0x634574e5, 0x80fd3f16, 0xed1d255e, 0x22bd3ba4, 0x37c52e31, 0x81b7d813, 0x65eff37a, 0x147f24e7
.word 0x5947f912, 0x12081a5f, 0xe8a0e002, 0x87298201, 0x605b8fc1, 0x5dcde4f8, 0xcf1663e5, 0x825a87bb
.word 0x5b33bcec, 0xf056493a, 0x4a80b34b, 0xa644bd18, 0xa9ec7991, 0x24e386a8, 0x1809a088, 0xb8de2ca9
.word 0x6ca5b6d9, 0x007bceeb, 0xd19edd19, 0xea4d3c03, 0xe77a5cf0, 0x70725853, 0x3cf93be0, 0x7926f874
.word 0xf4d174c4, 0x1d6f5e13, 0x77bf49a4, 0x6a948b72, 0x993f3be2, 0x2a0a154e, 0x1f4e47a3, 0x4818e5ac
.word 0xecb871ac, 0xae620819, 0x80aaaa8c, 0x81a9bc2d, 0x1c017ced, 0x1bb39869, 0xa3a55ab7, 0x5c73fddb
.word 0x83ade8dc, 0xe3837f23, 0xd1c38b69, 0x52c6b72f, 0xca4029db, 0x6475c16f, 0xcc01ea41, 0xe94f114c
.word 0x2f30930e, 0xd885d022, 0x20e3911f, 0xe25e30cc, 0x0826b5e9, 0xf94786f8, 0x72347a98, 0x2b69805e
.word 0xfc719a22, 0x54e79a38, 0x4c315906, 0x2f92baa0, 0xb70fb13f, 0xb2727d46, 0x93d8741c, 0x1eb75dca
.word 0xcf70091d, 0x533a0a76, 0xf4591e05, 0xf608f775, 0xb68fd83e, 0xff8767d7, 0x01170c04, 0x3b79a4ae
.word 0xd38a1048, 0x616adac1, 0x46e922af, 0xfb3e319c, 0x085e38b2, 0x46184deb, 0x37bf61cf, 0xff68d047
.word 0x7c455849, 0xb166c26e, 0xf057e084, 0xfcf46e6c, 0x29007a5a, 0x349206cb, 0xf1144388, 0x287adaec
.word 0xca0ed889, 0x0bcce7cf, 0x434a0541, 0xed9312be, 0x5d6d512d, 0x54b4dc8f, 0x4937434a, 0x1ae4e84d
.word 0x20caeb7f, 0x316cddf2, 0xcd0a2db7, 0x4ab6a0d9, 0x67191560, 0xf8f0a7df, 0x4909ad41, 0xa7766c3a
.word 0xd9e88e5f, 0xf4199339, 0xff6e401a, 0x448a8c12, 0x86f88696, 0x8e47b18f, 0x976dfba4, 0xe676519f
.word 0x8efbd612, 0x4edbdcfe, 0x176b1c21, 0x85408886, 0x54c11dee, 0xc643bc7e, 0x67c3b734, 0x093a0384
.word 0x61216efe, 0x4091b946, 0x430d1969, 0x16e48af1, 0xc85f03f0, 0xde36ae45, 0x97b4458c, 0x591a8b32
.word 0x0467ab8b, 0x98332489, 0x96d4c1db, 0xe88144ce, 0x0616cde7, 0xabdc5050, 0xc7401b5c, 0x1cdbbe65
.word 0x79742775, 0xe29555ee, 0xf6995377, 0xf9822d72, 0x9a2c5f1a, 0xe710bbf4, 0x03185ce8, 0xdbe0e83f
.word 0x5b3b6912, 0x669213c1, 0xc5b116bf, 0x821ba0af, 0x2f8d347b, 0x4a05aebe, 0xd578cf02, 0x2888aec8
.word 0x5a3bd307, 0x826f0d84, 0x4c8b585f, 0xa0a7f9f1, 0xf06e5e16, 0x8199fcce, 0x99fd85de, 0xc71bd2c9
.word 0x64ecc3ce, 0x55df8342, 0x45b5b7ad, 0x2ca99875, 0x6a813865, 0xf1131373, 0x1b812517, 0xf56e37cf
.word 0xa7f18331, 0x113fc3a8, 0x66ba5780, 0x07b411db, 0x41112233, 0x5d0f5a3a, 0xed28fe34, 0x5fb214e7
.word 0x4adc3b3b, 0x94779c80, 0x5f39851b, 0x465e8a94, 0x1378807f, 0x3ad27662, 0xec6b86ba, 0xba11d258
.word 0x3d366683, 0x24277a85, 0xdfbd3609, 0x581f95e7, 0xe80bb67c, 0xed6744a8, 0xff1f806a, 0x079e27d8
.word 0x3264058f, 0xbccebb19, 0xa515b605, 0x49b51fd2, 0x79d229b8, 0x1f54e058, 0x9166c388, 0x9bf86683
.word 0x8c65d5ee, 0xf888e771, 0x8f0f52f7, 0x8f6066cf, 0x029297b9, 0x9cb56f1c, 0x9bdd1d1e, 0xf5204f83
.word 0x56964185, 0xd44dfee2, 0x584a6bec, 0x7985e3ee, 0x0cccedb7, 0x7d3ca768, 0xa87a8c92, 0xe964acca
.word 0x753700e5, 0xd05b8bf2, 0x0f848439, 0x139978e2, 0x9ee40e08, 0x90681ab0, 0xdf0c4709, 0x9a3f2629
.word 0xc2d07fc7, 0x55c22ee9, 0xefa062a8, 0xc78e15a4, 0x38b52618, 0xa01db26c, 0xc79fb13c, 0xf1f71351
.word 0xeb7b6ff1, 0xc438c511, 0xf663108a, 0xdda225d6, 0xeb55d089, 0xb03bdfa2, 0xecbee9bb, 0x80272b1f
.word 0x7b53d3d7, 0x9407687e, 0xf1123ae3, 0xb594f77e, 0x90073bf1, 0xe65fcdfa, 0x47c671d9, 0x84ab39ce
.word 0x151f4873, 0x615edab9, 0x4fbd1c6a, 0xdc4ecb09, 0x92829d8c, 0xf61d3699, 0xb2a35179, 0x5b38e577
.word 0xf9ecbe60, 0x3015570d, 0x94258be5, 0x0a8dc2b7, 0x4a0f34cc, 0x5c9d28bf, 0x7df82bc7, 0xdc8c9adf
.word 0xdcc21c88, 0x358d2a1f, 0xbba59935, 0x44df16fa, 0xe029355b, 0xab6efdcf, 0xfff94ca1, 0xf46d056a
.word 0x912477ce, 0x7afa4c93, 0xd3097363, 0x54e7ab8f, 0xe0ecd007, 0x63bec15c, 0x9c042a6a, 0xc4f483c8
.word 0xb6cad3f3, 0x329b657e, 0x6646d2fe, 0x2b9d4319, 0xe88f6c39, 0xfe7270fd, 0x96315907, 0x0432c127
.word 0xaf2bc16b, 0x0b7079f1, 0xe74b09a0, 0x2123bbd9, 0xf493659b, 0xc20d08f1, 0xed373490, 0xc8c4ff8b
.word 0x70a7b590, 0x00493d86, 0x7b3679a4, 0x707f1d11, 0x78561ed9, 0xce2c456b, 0xefc99e27, 0xb9276726
.word 0x1eeaa385, 0x404848e2, 0x3136ce2d, 0x2e19e633, 0x56601ea4, 0xc5fb3096, 0x306a58ca, 0xe409fbf5
.word 0x37595524, 0xb95ecc70, 0xb90c4617, 0xf913b53c, 0xd29902bf, 0x104160dd, 0xadf3da5c, 0xaf1cd471
.word 0x96f8c064, 0x75235f6b, 0x8570f081, 0xa1a69f96, 0xfd3acba6, 0x3ab851fb, 0x067c8218, 0xaa21e935
.word 0x4fb45593, 0xbe9cfff3, 0x67c196e5, 0x06edcf88, 0x14aa8ff2, 0x16da8413, 0x3ffb58bb, 0xcde69224
.word 0x6e382ad6, 0xb8685775, 0x55c3c7e2, 0xa3d7c651
.section .region_1,"aw",@progbits;
region_1:
.word 0xaad3f26e, 0x7a4ca062, 0x6bdf99c8, 0x5f5ff1c7, 0x151992a8, 0x5683c7af, 0x1117c1e5, 0xe9c00c65
.word 0x546abbf0, 0x2a182abf, 0xb5297ae4, 0xdc2c69a4, 0x3db4ed5b, 0x5936e35f, 0x1df97968, 0xf2826baa
.word 0xbed06b2c, 0x82c1da35, 0xb8764b3d, 0x0ee1bacc, 0x0f5848ee, 0x64ac1bd2, 0x1a81bf30, 0xb14afc65
.word 0xb2bc5656, 0x7d675965, 0xa5c06de5, 0x3d1ec37f, 0x5c885ed9, 0x080861aa, 0x94d478c0, 0x2e1fd088
.word 0x57e38a94, 0xa7e60087, 0xacc37436, 0x363f7bac, 0xfcbb4c9d, 0x38757e7b, 0x158f0c67, 0x767f3c2a
.word 0x3bcae780, 0x1281098f, 0xa6169d8e, 0x4a5736ce, 0x54af7b3f, 0x76e76ff7, 0x0403cb48, 0x160fa065
.word 0x97759381, 0x98660ef1, 0xaafab4f3, 0xd8d7b780, 0xcc4a2329, 0xc82e294d, 0xfe998a59, 0x933fb83d
.word 0x8ce5b410, 0x11186d6a, 0x2decf4ee, 0xce1662a4, 0xfb67395e, 0xe08db70e, 0x3757b4f9, 0x42f30dcf
.word 0xdce7a3ea, 0x13521942, 0x11d5ba88, 0xc9d6886a, 0xf1b5d077, 0x3d611511, 0xe8ee13b4, 0x91924c93
.word 0x2a10a027, 0xdd2f7f11, 0xce57b9e9, 0xc415761c, 0x48f985f4, 0xa153d66e, 0x28edf254, 0xf82d6cad
.word 0x8c062551, 0x095c3484, 0x5deac527, 0x30ddd98c, 0x5313246e, 0x0580d006, 0x85d6d769, 0xfb18e4b6
.word 0xad8b7609, 0xb35e32dd, 0x05f497ef, 0xdf594bbf, 0x319b972c, 0x21a88dfd, 0x041f41f3, 0x7f47eae3
.word 0x938720d5, 0x7b040746, 0x9a59631a, 0x3ef5744b, 0x8111f68e, 0xb48dc688, 0xd15cda03, 0xa9690fca
.word 0x55d2d728, 0xd9952172, 0x7b0de61d, 0x3ba6e7a6, 0x749bdae0, 0xf392a95c, 0xe772082b, 0x4edd3f3b
.word 0xa3d29364, 0xa5a7e461, 0x9d4600a8, 0x15e0d5e2, 0x29eee123, 0x35700d5c, 0x4a5cfb4b, 0xea95066e
.word 0x09292d2a, 0x90d137e1, 0x9872c77c, 0x6e4b1254, 0x8626aa54, 0x814ebd43, 0xb685855b, 0x4db202e8
.word 0x383f3f6e, 0x3ef6edfa, 0xaca1cfac, 0xfe3c3853, 0x702e29ed, 0xbca728b4, 0x5e0b1603, 0x7b6e69c5
.word 0xc198d014, 0xffb74164, 0xefdfd2b8, 0x26630576, 0x6fbb7b15, 0xd681eddb, 0x345149bd, 0x1d4fee13
.word 0x43e6889e, 0xe96eb3f8, 0xd98ba233, 0x93996be0, 0xbf1125b9, 0xd9221ea6, 0x98638580, 0xf054e32a
.word 0x088c5498, 0x0b1838e0, 0x0093f1ae, 0x2df4b28e, 0x16f5625a, 0x41298d67, 0x504bad4c, 0xae39d4af
.word 0x1b4f94c1, 0x5c58d849, 0xc99e92dd, 0x2264ee24, 0xfad662b3, 0x452b26b4, 0x21e5ddd9, 0x03a7c765
.word 0xfd40f2b6, 0xc6e738e4, 0x7729b798, 0xfdd1bae6, 0x0c66e079, 0x19a9b970, 0x46116c48, 0x1263b9b9
.word 0xa2018987, 0xb3c309ba, 0x0df39a91, 0xbee836d7, 0xf39f06ae, 0x6e73b865, 0x5a8d4acf, 0x335986db
.word 0x7d8c694e, 0xf449864e, 0xcee1ec7e, 0x728940e5, 0xebbfadc1, 0xdbc1bc64, 0xe41ab5d2, 0x8fe7850d
.word 0xcdea9140, 0x15dbb9dd, 0xc72abfdd, 0xb245ff2e, 0x04301ff0, 0xf1e28e63, 0x37857f35, 0x02363368
.word 0xecced54c, 0x8bc27838, 0x849512e8, 0xb9d63aa9, 0x12f91811, 0x305d6c1e, 0x755485f6, 0xe289bf4b
.word 0x75e8a28d, 0x1927a134, 0xf5313bfb, 0xe1523992, 0xf1aa8e33, 0xfc2ffe59, 0x5bc29c2b, 0x46d36fc8
.word 0xf72e3eb4, 0x9ec92088, 0x6aefd59a, 0xa459595a, 0xd6a320b5, 0x1215e138, 0x507b625f, 0x68c17514
.word 0x7a37500c, 0x9a0b27ad, 0x7cb75ac7, 0x644dc65a, 0xb67058d2, 0x45fe9313, 0x97f7221c, 0xcccdb553
.word 0x74afe0c4, 0x84e5be53, 0x936322fd, 0xfece780b, 0xe59952c7, 0x7ecadcd3, 0xa7c56cd2, 0x1bc99254
.word 0x68d9dc96, 0xb01f5266, 0x7119e3eb, 0x3d657c16, 0x908cfecb, 0xb75053f1, 0x3f9fde07, 0xd30b1158
.word 0xda571f7d, 0xcb8b4ffb, 0x1d5a8ba2, 0x28650874, 0x7a9414f0, 0xc22df1d0, 0x80a1f984, 0xf11256f1
.word 0x6e515bef, 0x6416135f, 0xbf32338e, 0x87cc42e9, 0x6caf0cb2, 0xcb750353, 0x9334b3bc, 0xba573683
.word 0xeb658569, 0x6b5555a0, 0x09156051, 0xe0252060, 0xd2547b8c, 0x2de90404, 0x9cc9254f, 0xd107b53a
.word 0xcedf9e9d, 0x058dc9c8, 0x17d4cc43, 0x850b271e, 0x87cc16fe, 0x6d4042c3, 0x650e104f, 0x811855c8
.word 0x79b33a26, 0xd7d8282d, 0x72bd162d, 0x83f59414, 0xc31f0bb1, 0x18a57795, 0x36ad595f, 0x9e739b50
.word 0x57fbbbe1, 0xe495bd76, 0x505b2008, 0x3fdd61c9, 0x05ed1e22, 0xfab3023e, 0xfd73f7bb, 0x38ae12cb
.word 0x5d799905, 0xd94f0957, 0x8f2926c2, 0xc5164d67, 0x97f678d8, 0x1eee00ee, 0x88c0090d, 0xa9c013a0
.word 0xd82f2f88, 0x0beb1905, 0xf3d963e8, 0x935f4526, 0x32fe9cf2, 0xfd28502c, 0xcca3944a, 0x7020eeca
.word 0xb01d8280, 0x09428051, 0x3466cc9b, 0x6ee868f1, 0x979c5af2, 0xb3f76947, 0xca964e1c, 0x8922a3ee
.word 0xcaf3d5c1, 0xb7c64bb3, 0x3d3e9870, 0xc90e1dce, 0x3d2725ab, 0xff63706a, 0xd8fbe4ff, 0x517bfc6a
.word 0x609f7001, 0x5422e65b, 0x47b136ed, 0x799577fd, 0x1e533110, 0xa6dec187, 0x2d55a409, 0x610180d3
.word 0x75fc33c5, 0xbbe2607b, 0xe500918a, 0xd0405caa, 0x2512748b, 0xf740d641, 0x3af70cd2, 0xf25dba0c
.word 0x1754f24c, 0xf9f3c6a8, 0xbf4682ff, 0x5b88ad94, 0x62287679, 0x184b739a, 0x2302710b, 0x2a6492c0
.word 0x1a5c8fa0, 0xc4c7cc90, 0x061e2c0e, 0xc8c52b38, 0xf3561d77, 0xe6f4544c, 0xb92b1ff9, 0xbb8e24cf
.word 0x5718f875, 0x6dee8e89, 0x022da8cb, 0x2d8c81fa, 0xd297e006, 0xc7f4016c, 0x2addc782, 0x9fb84823
.word 0x696e806b, 0x403d4195, 0x8dcd08dc, 0xd9ad81eb, 0x18fe944c, 0xa29f5b6a, 0xa77c0a09, 0x6a4706f9
.word 0xcbab6389, 0x26e1e0c1, 0xf660acda, 0x3e5b34fc, 0x7d65c0d5, 0x657936aa, 0xcd215334, 0x2d47c8f7
.word 0xbebf21b7, 0x1f1907d7, 0x1960f876, 0xcb4f0420, 0xed75f330, 0xe1271b3f, 0xaafb8e9d, 0x1306a1df
.word 0x494e8096, 0x3f3954d1, 0x7b03f236, 0x2e44d845, 0x3bc0d617, 0x6414ab86, 0x864d85eb, 0x6a6e967d
.word 0x36adbf26, 0xfabc10b6, 0x0604737b, 0x8a7656dd, 0xfdd4442e, 0xec2b8481, 0xc00b1de9, 0x053ff8ee
.word 0x1dd16f62, 0xb3b16de8, 0x38103085, 0xd038b707, 0xfcfca2bf, 0x986bb9c0, 0xa635032b, 0x746bce64
.word 0x41d9da50, 0x823a2a6d, 0x455321e3, 0x1fa50e1b, 0xa2393cfe, 0x7f256d40, 0x653cfb3e, 0x87826f4b
.word 0xce6d06b0, 0x7b01c1a0, 0xaa0527af, 0x192ee7c6, 0x94a24335, 0x318f44fb, 0x062f124e, 0x2ff1464f
.word 0x19559349, 0x6bba88f3, 0xfece5656, 0x573d9552, 0xf63e7168, 0x004d03d5, 0x0c5f364b, 0x7774bc90
.word 0xaefa95a8, 0x7f452c58, 0xd665bb6d, 0x79a1bebe, 0xb35bc867, 0x0c0c6dba, 0xae89c8fc, 0xa9990be8
.word 0xa029bb7d, 0x3328347c, 0x4659a890, 0xe4489fed, 0xce055a13, 0x03040c2b, 0x3c4343d7, 0xcb26ef72
.word 0xa5ca3197, 0x62282f1d, 0xd31504db, 0x514c8a00, 0x8f28e15c, 0x51a171da, 0xdef434a8, 0xefd3f9fb
.word 0x78812686, 0x349e987f, 0x9606690f, 0x966d1b6e, 0x7a2f7422, 0x8eefdd85, 0x7beb4e68, 0x90f6ad3d
.word 0x442cfbe6, 0xe5f56e8f, 0xe3823b09, 0x622b1f42, 0xb73711d5, 0x5f16a334, 0x420d9655, 0x47d744b3
.word 0x1cc56ace, 0xc35e046d, 0x5990bc1d, 0x9424a16b, 0xc990494b, 0x018c19e2, 0x0d6c5478, 0x3b1e7cbb
.word 0x7706ac29, 0x94ece353, 0xcba97bef, 0xffd5adc8, 0x95563114, 0x259155b7, 0xa8df0956, 0xaf1ec68a
.word 0x44f09676, 0xd4069a9e, 0x6ba1ab38, 0x19958d0d
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
                  add x12, x8, zero
                  csrr x25, 0x300 # MSTATUS
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 31
                  bne x25, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x6, 0x3 # BREAKPOINT
                  beq x25, x6, ebreak_handler
                  li x6, 0x8 # ECALL_UMODE
                  beq x25, x6, ecall_handler
                  li x6, 0x9 # ECALL_SMODE
                  beq x25, x6, ecall_handler
                  li x6, 0xb # ECALL_MMODE
                  beq x25, x6, ecall_handler
                  li x6, 0x1
                  beq x25, x6, instr_fault_handler
                  li x6, 0x5
                  beq x25, x6, load_fault_handler
                  li x6, 0x7
                  beq x25, x6, store_fault_handler
                  li x6, 0xc
                  beq x25, x6, pt_fault_handler
                  li x6, 0xd
                  beq x25, x6, pt_fault_handler
                  li x6, 0xf
                  beq x25, x6, pt_fault_handler
                  li x6, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x6, illegal_instr_handler
                  csrr x6, 0x343 # MTVAL
                  1: la x10, test_done
                  jalr x1, x10, 0

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
                  la x10, write_tohost
                  jalr x0, x10, 0

instr_fault_handler:
                  add x8, x12, zero
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
                  add x8, x12, zero
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
                  add x8, x12, zero
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
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x8, x12, zero
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
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x8, x12, zero
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
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x8, x12, zero
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
