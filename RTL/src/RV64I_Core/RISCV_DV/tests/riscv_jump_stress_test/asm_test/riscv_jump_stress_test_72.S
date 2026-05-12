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
                  li x9, 0x40000100
                  csrw 0x301, x9
kernel_sp:        
                  la x2, kernel_stack_end

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
                  li x0, 0xf3d23135
                  li x1, 0x80000000
                  li x3, 0xfc96be4f
                  li x4, 0x80000000
                  li x5, 0x0
                  li x7, 0xffbbc54b
                  li x8, 0x178283a4
                  li x9, 0x80000000
                  li x10, 0x1
                  li x11, 0x80000000
                  li x12, 0x0
                  li x13, 0x0
                  li x14, 0xfef2575b
                  li x15, 0x3
                  li x16, 0x0
                  li x17, 0x84b599c3
                  li x18, 0x80000000
                  li x19, 0x1
                  li x20, 0x80000000
                  li x21, 0x3f085b46
                  li x22, 0x80000000
                  li x23, 0x0
                  li x24, 0xf31a2e0b
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0xa
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0x6
                  li x31, 0x0
                  la x6, user_stack_end
main:             jal          t6, 4f
0:                jal          ra, 11f
1:                jal          ra, 0b
2:                jal          ra, 1b
3:                jal          ra, 6f
4:                jal          ra, 12f
5:                jal          ra, 3b
6:                jal          ra, 8f
7:                jal          ra, 10f
8:                jal          t0, 14f
9:                jal          ra, 13f
10:               jal          ra, 2b
11:               jal          ra, 9b
12:               jal          ra, 7b
13:               jal          s2, 5b
14:               srli         t2, s3, 26
                  slti         a5, s4, -1055
                  sll          a4, t6, a0
                  slli         a3, s10, 11
                  srli         s5, t2, 23
                  sltiu        t3, sp, 401
                  auipc        s3, 405273
                  xori         ra, s10, 136
                  xor          t0, s5, s11
                  la           gp, sub_1
                  xori         s10, t4, -1841
                  or           t4, tp, a0
                  addi         gp, gp, -983
                  add          a5, t0, t4
                  bne          t1, s1, main_j1 #branch to jump instr
                  sltiu        a3, sp, -1718
                  srl          t6, s7, s8
                  slli         ra, t3, 27
                  sll          a0, a4, tp
main_j1:          jalr         t6, gp, 983 #jump main -> sub_1
                  srai         ra, s5, 21
                  slt          t5, t0, a5
                  la x17, test_done
                  jalr x0, x17, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            slti         tp, t0, -273
                  blt          t1, tp, sub_3_stack_p
                  srai         a4, a6, 7
                  xor          t3, a6, s9
                  add          s4, a0, s4
                  sltu         s6, t2, s6
sub_3_stack_p:    addi         t1, t1, -36
                  sltiu        a5, sp, -957
                  slti         a6, s11, 714
                  sw           t6, 4(t1)
                  sltiu        s9, t3, 678
                  la           ra, sub_5
                  andi         a5, a6, -1163
                  addi         ra, ra, 359
                  srl          s0, s8, a7
                  lui          gp, 959317
                  andi         s11, s9, -1817
                  or           a1, a6, t4
                  bge          a2, a1, sub_3_j6 #branch to jump instr
                  sltu         s6, t2, s3
                  auipc        a6, 532996
                  sll          s2, gp, a4
                  ori          t2, s2, 874
                  srli         s3, s8, 9
sub_3_j6:         jalr         t6, ra, -359 #jump sub_3 -> sub_5
sub_3_6:          jal          t6, 8f
0:                jal          ra, 10f
1:                jal          ra, 0b
2:                jal          ra, 14f
3:                jal          ra, 2b
4:                jal          ra, 5f
5:                jal          ra, 6f
6:                jal          ra, 19f
7:                jal          gp, 18f
8:                jal          ra, 12f
9:                jal          ra, 15f
10:               jal          ra, 7b
11:               jal          a2, 9b
12:               jal          ra, 11b
13:               jal          ra, 16f
14:               jal          gp, 13b
15:               jal          s6, 17f
16:               jal          ra, 1b
17:               jal          ra, 3b
18:               jal          ra, 4b
19:               srl          s6, sp, s4
sub_3_11:         jal          t6, 10f
0:                jal          ra, 11f
1:                jal          tp, 12f
2:                jal          ra, 0b
3:                jal          a1, 5f
4:                jal          ra, 1b
5:                jal          t3, 7f
6:                jal          a0, 8f
7:                jal          ra, 4b
8:                jal          ra, 13f
9:                jal          ra, 6b
10:               jal          ra, 3b
11:               jal          ra, 9b
12:               jal          gp, 2b
13:               xor          t6, t0, ra
sub_3_10:         jal          t6, 7f
0:                jal          ra, 14f
1:                jal          ra, 13f
2:                jal          ra, 15f
3:                jal          ra, 9f
4:                jal          a1, 12f
5:                jal          ra, 11f
6:                jal          gp, 4b
7:                jal          tp, 1b
8:                jal          ra, 6b
9:                jal          ra, 0b
10:               jal          s7, 5b
11:               jal          a1, 8b
12:               jal          ra, 2b
13:               jal          ra, 3b
14:               jal          ra, 10b
15:               srai         t6, a2, 1
sub_3_0:          jal          t6, 7f
0:                jal          s3, 10f
1:                jal          gp, 19f
2:                jal          ra, 9f
3:                jal          ra, 13f
4:                jal          ra, 17f
5:                jal          gp, 3b
6:                jal          ra, 0b
7:                jal          ra, 5b
8:                jal          t5, 14f
9:                jal          ra, 8b
10:               jal          ra, 1b
11:               jal          s0, 18f
12:               jal          a2, 16f
13:               jal          ra, 4b
14:               jal          a4, 15f
15:               jal          a1, 12b
16:               jal          t0, 11b
17:               jal          s9, 2b
18:               jal          ra, 6b
19:               slli         s6, s2, 23
sub_3_7:          jal          t6, 25f
0:                jal          ra, 13f
1:                jal          ra, 23f
2:                jal          t0, 20f
3:                jal          ra, 5f
4:                jal          ra, 16f
5:                jal          t2, 7f
6:                jal          ra, 22f
7:                jal          ra, 1b
8:                jal          t4, 27f
9:                jal          t5, 10f
10:               jal          ra, 15f
11:               jal          ra, 2b
12:               jal          ra, 21f
13:               jal          ra, 6b
14:               jal          s1, 4b
15:               jal          ra, 17f
16:               jal          ra, 19f
17:               jal          ra, 0b
18:               jal          s8, 12b
19:               jal          ra, 9b
20:               jal          ra, 8b
21:               jal          t0, 14b
22:               jal          gp, 3b
23:               jal          gp, 26f
24:               jal          ra, 11b
25:               jal          ra, 18b
26:               jal          ra, 24b
27:               sub          s0, a1, a5
sub_3_5:          jal          t6, 10f
0:                jal          ra, 15f
1:                jal          t5, 6f
2:                jal          gp, 17f
3:                jal          ra, 0b
4:                jal          ra, 20f
5:                jal          ra, 7f
6:                jal          t0, 19f
7:                jal          ra, 23f
8:                jal          s5, 21f
9:                jal          s10, 13f
10:               jal          ra, 4b
11:               jal          ra, 1b
12:               jal          ra, 18f
13:               jal          s2, 11b
14:               jal          a0, 5b
15:               jal          a6, 16f
16:               jal          ra, 12b
17:               jal          ra, 9b
18:               jal          a2, 22f
19:               jal          ra, 14b
20:               jal          ra, 3b
21:               jal          t0, 2b
22:               jal          a6, 8b
23:               andi         a3, t0, 1442
sub_3_4:          jal          t6, 5f
0:                jal          a0, 14f
1:                jal          gp, 6f
2:                jal          ra, 3f
3:                jal          ra, 13f
4:                jal          s8, 15f
5:                jal          ra, 1b
6:                jal          s4, 8f
7:                jal          ra, 2b
8:                jal          ra, 0b
9:                jal          t3, 12f
10:               jal          gp, 11f
11:               jal          t3, 7b
12:               jal          ra, 10b
13:               jal          s5, 4b
14:               jal          ra, 9b
15:               sltiu        s8, s3, 957
sub_3_8:          jal          t6, 5f
0:                jal          s3, 10f
1:                jal          ra, 2f
2:                jal          ra, 6f
3:                jal          ra, 9f
4:                jal          s10, 7f
5:                jal          ra, 0b
6:                jal          a3, 8f
7:                jal          ra, 1b
8:                jal          s5, 11f
9:                jal          ra, 4b
10:               jal          ra, 3b
11:               srl          s1, a1, t2
sub_3_9:          jal          t6, 1f
0:                jal          ra, 14f
1:                jal          ra, 4f
2:                jal          tp, 11f
3:                jal          ra, 8f
4:                jal          ra, 16f
5:                jal          s6, 3b
6:                jal          ra, 0b
7:                jal          ra, 6b
8:                jal          s9, 18f
9:                jal          ra, 7b
10:               jal          a0, 5b
11:               jal          ra, 9b
12:               jal          tp, 13f
13:               jal          ra, 17f
14:               jal          ra, 15f
15:               jal          ra, 12b
16:               jal          tp, 2b
17:               jal          ra, 10b
18:               nop
sub_3_2:          jal          t6, 21f
0:                jal          tp, 11f
1:                jal          ra, 25f
2:                jal          t6, 6f
3:                jal          s11, 9f
4:                jal          s8, 16f
5:                jal          s3, 19f
6:                jal          ra, 17f
7:                jal          ra, 27f
8:                jal          ra, 2b
9:                jal          ra, 29f
10:               jal          s8, 18f
11:               jal          t3, 13f
12:               jal          t4, 0b
13:               jal          ra, 22f
14:               jal          t0, 24f
15:               jal          ra, 20f
16:               jal          ra, 12b
17:               jal          gp, 28f
18:               jal          ra, 8b
19:               jal          ra, 7b
20:               jal          ra, 23f
21:               jal          ra, 26f
22:               jal          t4, 3b
23:               jal          ra, 14b
24:               jal          ra, 1b
25:               jal          ra, 10b
26:               jal          s8, 5b
27:               jal          ra, 15b
28:               jal          tp, 4b
29:               sub          tp, gp, s9
sub_3_1:          jal          t6, 11f
0:                jal          ra, 13f
1:                jal          ra, 4f
2:                jal          ra, 3f
3:                jal          ra, 8f
4:                jal          ra, 0b
5:                jal          t0, 7f
6:                jal          ra, 10f
7:                jal          ra, 6b
8:                jal          ra, 1b
9:                jal          ra, 5b
10:               jal          ra, 12f
11:               jal          gp, 9b
12:               jal          ra, 2b
13:               xor          s7, s8, s5
                  beq          s1, t3, 14f
                  slli         t3, s0, 17
                  or           a4, s6, s1
                  srl          s5, ra, s8
                  beq          t1, s10, 13f
                  xori         zero, t0, 613
                  srai         a2, zero, 23
                  slti         s3, s10, -246
                  sra          t4, s2, s6
                  beq          s0, s8, 19f
                  ori          t6, s0, -811
                  sltiu        s3, s6, 107
                  addi         s5, t3, 1953
13:               sra          s6, a0, s9
14:               bgeu         s5, a4, 22f
                  srli         s5, ra, 0
                  blt          s0, s5, 17f
17:               xor          s11, s8, s8
                  or           t4, s5, a3
19:               andi         a0, s0, -1210
                  or           a3, s3, s7
                  bgeu         a2, s1, 32f
22:               or           s4, a4, s3
                  and          s3, a2, a0
                  and          tp, a2, s10
                  bne          a1, t0, 33f
                  slli         a2, a5, 1
                  beq          a4, sp, 38f
                  sltu         t3, s3, a6
                  slt          t2, s2, t6
                  bge          s4, zero, 50f
                  bne          a1, s0, 42f
32:               sll          s0, s2, s7
33:               srl          a6, t1, s3
                  blt          t2, a1, 38f
                  slli         s8, tp, 17
                  bgeu         s10, zero, 54f
                  auipc        s1, 796808
38:               add          ra, s3, zero
                  slti         s8, s5, -460
                  nop
                  auipc        a1, 739514
42:               andi         s8, s6, -249
                  xor          a4, a3, s0
                  sltu         s5, tp, s9
                  srl          t3, a2, s11
                  andi         s1, ra, -1995
                  xor          tp, s6, t3
                  xori         s0, t2, -545
                  add          s6, s2, gp
50:               srai         s1, s9, 22
                  bgeu         t4, s1, 54f
                  beq          t5, gp, 58f
                  bne          s9, tp, 58f
54:               sltu         s11, a2, s5
                  srli         t2, s2, 15
                  slli         a4, ra, 13
                  or           a2, s2, t5
58:               nop
                  slli         t0, sp, 25
                  bgeu         a4, a2, 69f
                  or           a1, s8, s7
                  bge          sp, tp, 71f
                  sltu         t5, t3, gp
                  slli         t6, t1, 13
                  slti         a0, s10, 1831
                  or           a2, s7, s0
                  bltu         t3, a2, 85f
                  blt          s2, a7, 74f
69:               ori          s6, t4, 1735
                  nop
71:               ori          s6, s2, 175
                  bltu         zero, s1, 86f
                  and          s11, tp, a1
74:               xori         a4, a2, -504
                  srl          gp, tp, t3
                  add          s6, gp, s4
                  bge          a3, s0, 93f
                  auipc        tp, 220760
                  srl          ra, a3, t4
                  beq          s9, t4, 91f
                  nop
                  srl          a3, a5, zero
                  add          a2, a3, sp
                  xor          t4, s8, t2
85:               ori          s2, s3, -756
86:               nop
                  bge          s0, s0, 105f
                  auipc        s10, 875863
                  srl          t2, s1, s0
                  lui          s10, 829594
91:               and          a5, s11, a0
                  lui          ra, 109409
93:               add          s5, s9, gp
                  add          t6, s1, a1
                  beq          s1, s4, 105f
                  srai         a6, s9, 11
                  lui          s4, 145590
                  nop
                  and          zero, t0, s3
                  blt          t0, a3, 108f
                  and          t2, s0, a6
                  bne          a7, gp, 111f
                  nop
                  sub          a3, t2, s7
105:              sltiu        zero, t5, -641
                  sltu         s10, a1, a2
                  add          s1, t6, gp
108:              add          t0, a4, a2
                  sltiu        a2, s3, 1049
                  srai         s11, s2, 4
111:              beq          s6, s10, 118f
                  sra          s6, s1, a4
                  lui          t0, 710667
                  srl          gp, t2, s1
                  slli         s11, a4, 28
                  xor          t4, zero, a1
                  sll          s9, s9, a2
118:              blt          a6, s3, 136f
                  srli         tp, zero, 21
                  or           a5, s11, s0
                  srli         t4, s5, 14
                  bne          s0, t0, 132f
                  sltu         t2, tp, a2
                  srli         s11, t2, 1
                  srai         s0, a6, 16
                  xor          t4, a2, a2
                  sltu         s11, sp, zero
                  lui          t5, 506386
                  srli         t3, tp, 25
                  xori         t2, s4, 132
                  xori         a1, s3, -1320
132:              or           s4, a2, a5
                  bgeu         t3, s8, 142f
                  sltiu        t0, s7, 1391
                  sltu         a0, s4, s7
136:              srl          s5, s0, s8
                  nop
                  blt          gp, s1, 146f
                  add          s10, a0, a5
                  and          s0, a7, t0
                  slti         s7, s11, 1559
142:              ori          s11, a0, 1345
                  bgeu         t3, t0, 161f
                  srl          t5, a5, a7
                  lui          ra, 421905
146:              bgeu         t4, a0, 154f
                  srli         s9, s7, 2
                  andi         s9, t4, 515
                  and          t3, s10, t4
                  bge          a1, s7, 157f
                  srai         s4, t1, 14
                  blt          a2, s3, 166f
                  sltiu        s8, s7, -889
154:              sub          a1, a0, a5
                  xor          t6, tp, s10
                  slt          s9, a5, t2
157:              addi         ra, s3, 1599
                  srl          zero, s3, s10
                  slti         a1, a7, -1411
                  sll          gp, a5, t6
161:              sll          s4, s8, t4
sub_3_3:          jal          t6, 18f
0:                jal          ra, 2f
1:                jal          ra, 10f
2:                jal          t6, 9f
3:                jal          ra, 7f
4:                jal          ra, 14f
5:                jal          t2, 4b
6:                jal          gp, 17f
7:                jal          s7, 20f
8:                jal          ra, 3b
9:                jal          ra, 19f
10:               jal          s6, 21f
11:               jal          ra, 1b
12:               jal          tp, 11b
13:               jal          ra, 5b
14:               jal          ra, 16f
15:               jal          ra, 8b
16:               jal          s10, 15b
17:               jal          t0, 0b
18:               jal          tp, 13b
19:               jal          s11, 12b
20:               jal          gp, 6b
21:               add          a6, a5, gp
                  sub          zero, t3, gp
                  srli         s10, s10, 20
                  sub          t6, t6, ra
                  ori          s0, t2, -599
166:              add          a6, a4, s2
                  beq          a7, s3, 178f
                  bne          s8, a6, 179f
                  blt          t4, a4, 178f
                  and          t5, t5, tp
                  bge          s7, s6, 189f
                  addi         tp, t5, -542
                  lui          s2, 691061
                  xori         a2, s7, -336
                  bgeu         s8, s4, 184f
                  sll          t4, a2, s4
                  sll          a1, ra, a0
178:              xor          s4, a4, s1
179:              bgeu         gp, zero, 187f
                  ori          a2, s8, -1836
                  sra          t0, s9, a0
                  or           a0, t2, s7
                  xor          s2, s2, s7
184:              sra          a0, a7, s7
                  xori         s3, a5, -1901
                  slli         s2, s3, 18
187:              or           gp, s9, a7
                  xor          gp, t0, s8
189:              ori          s0, t3, -253
                  bltu         s8, s2, 201f
                  or           a0, t5, s6
                  ori          a3, s9, -831
                  sub          a3, a3, s1
                  sra          s7, s1, ra
                  bge          a2, a1, 201f
                  or           t3, gp, s3
                  or           a2, s7, a4
                  or           ra, ra, a0
                  ori          tp, t3, 430
                  sll          t3, s6, a3
201:              addi         a4, t5, 889
                  srli         t6, a7, 29
                  sub          s2, s11, t6
                  and          t0, a7, t1
                  srai         ra, a5, 7
                  auipc        gp, 568689
                  beq          gp, t5, 217f
                  bltu         a3, ra, 217f
                  srai         a1, s0, 15
                  srai         t4, t0, 22
                  addi         s9, a2, -876
                  blt          ra, a3, 217f
                  sub          s0, zero, a6
                  xor          a6, tp, t4
                  auipc        a3, 811004
                  and          s4, s3, a7
217:              sll          t2, s9, s4
                  bgeu         sp, a5, 236f
                  slt          s2, s1, s4
                  xor          t5, zero, s11
                  or           s6, s3, a5
                  sll          gp, zero, sp
                  srl          a4, t2, s8
                  srl          a1, t5, a1
                  xori         t4, s0, 1725
                  bltu         a3, tp, 230f
                  ori          s1, a6, 1259
                  or           gp, a5, a7
                  sltiu        s7, s0, 2013
230:              xori         s7, t3, -267
                  andi         t2, s8, -922
                  bltu         a5, s7, 238f
                  sra          s0, a0, zero
                  ori          s0, s7, -154
                  sra          t2, t0, s8
236:              srli         s8, tp, 2
                  srl          s6, t2, sp
238:              bne          gp, a3, 247f
                  xor          s5, t3, a2
                  auipc        a5, 711700
                  beq          s6, t3, 261f
                  bltu         t5, a4, 243f
243:              sltiu        a1, a3, 1639
                  bltu         s10, ra, 254f
                  blt          s0, t3, 248f
                  srli         t5, a4, 12
247:              srli         t5, s11, 30
248:              addi         t6, s10, -313
                  andi         a5, s6, -1262
                  addi         a4, t3, 9
                  xori         s9, t3, -1378
                  xori         s8, s0, -99
                  add          s2, s5, a4
254:              bne          a5, ra, 265f
                  xori         a4, s1, 1896
                  bltu         t4, sp, 266f
                  sra          a5, s6, sp
                  slt          a0, s8, s7
                  srli         s2, tp, 25
                  blt          a0, s6, 269f
261:              sub          zero, a2, s2
                  srli         s3, t6, 26
                  sltiu        s9, a4, 581
                  add          t3, a0, t3
265:              slt          s10, s8, a2
266:              or           s1, s7, s7
                  sub          tp, a6, a3
                  and          t4, a1, s4
269:              slti         s0, t0, 442
                  slt          t2, sp, t6
                  and          s6, a5, a4
                  sll          s3, s1, t6
                  sltu         tp, a5, s3
                  slti         a6, t1, -1070
                  sub          s1, tp, t3
                  beq          s6, s9, 294f
                  srli         t2, s11, 26
                  slli         tp, s1, 4
                  slti         s7, ra, -1313
                  and          t4, s7, a0
                  srai         a6, s3, 21
                  auipc        s7, 248044
                  nop
                  sltu         s4, s6, gp
                  andi         s6, s9, -552
                  sra          s10, a6, a4
                  srai         s5, s7, 27
                  srl          s5, s9, zero
                  add          t2, tp, gp
                  srli         a6, t6, 10
                  sub          t5, t5, a6
                  xori         gp, s8, -2046
                  bne          t6, s8, 307f
294:              bgeu         t5, s4, 310f
                  sltu         a2, a7, a0
                  or           s10, t6, t4
                  slt          a6, s1, sp
                  slli         s4, s1, 17
                  xori         s5, sp, 1399
                  sub          t5, sp, s7
                  lui          ra, 46026
                  sub          t2, sp, a4
                  slli         a3, t3, 13
                  srl          a3, gp, a3
                  sll          s1, gp, ra
                  sltu         s5, t0, a1
307:              auipc        t5, 41573
                  srli         s1, s10, 21
                  nop
310:              slti         a1, a1, -53
                  srli         s2, a2, 18
                  lui          t3, 369379
                  lui          a2, 538159
                  or           s7, a2, a7
                  blt          a1, a6, 324f
                  slti         a6, s11, 5
                  sra          a4, t6, a4
                  sll          s4, zero, a0
                  slti         zero, s1, -610
                  sll          s10, s0, t4
                  and          a2, gp, a1
                  add          t3, s4, t6
                  auipc        s9, 778500
324:              ori          zero, s8, 1952
                  andi         t5, s10, 1981
                  andi         s8, a2, 635
                  slt          s2, gp, s7
                  srl          t4, s3, s8
                  slli         tp, t5, 10
                  nop
                  srli         t4, a1, 1
                  slt          t0, s9, sp
                  sll          a0, a6, s10
                  bltu         a7, zero, 339f
                  sub          s4, t1, s10
                  slt          ra, tp, s9
                  xori         a4, t6, 19
                  xor          s6, s1, t5
339:              auipc        t3, 182354
                  srai         t5, sp, 23
                  addi         s4, zero, -1875
                  addi         a3, s4, 1896
                  bge          t1, t2, 357f
                  and          s8, s4, t1
                  blt          tp, a0, 348f
                  or           a3, s5, gp
                  nop
348:              bltu         s0, zero, 357f
                  slli         zero, zero, 13
                  sub          a6, s1, s9
                  xor          s6, s10, t3
                  sll          a1, ra, t0
                  bne          s3, s4, 361f
                  sltu         gp, s0, t0
                  sltu         s10, a1, tp
                  slli         s5, s8, 12
357:              srai         a2, tp, 11
                  auipc        a6, 462214
                  slti         a4, s2, 270
                  addi         s10, zero, 1745
361:              auipc        gp, 585059
                  nop
                  slti         s4, a1, 1760
                  ori          s0, s10, 85
                  bltu         s0, a5, 373f
                  andi         s8, s7, 1374
                  xor          s5, ra, s2
                  addi         gp, ra, -101
                  srai         t6, a4, 11
                  slli         s8, t4, 13
                  or           s1, a3, s2
                  beq          gp, s3, 383f
373:              sra          s7, s0, t0
                  sub          a4, a0, s5
                  addi         a2, s2, 775
                  auipc        s2, 11267
                  add          a4, s6, s7
                  ori          t2, t4, 748
                  bgeu         a1, t4, 385f
                  nop
                  bne          s5, t1, 392f
                  ori          s4, a2, 943
383:              sub          a6, s2, tp
                  andi         t2, tp, 1889
385:              and          a0, s0, a4
                  sltiu        ra, s0, -92
                  bgeu         t2, s0, 405f
                  xori         s1, gp, 1295
                  lui          s4, 201338
                  bge          s4, t3, 408f
                  add          gp, s10, a5
392:              nop
                  sltiu        t6, s10, -1599
                  bne          sp, s0, 404f
                  ori          t0, a6, 1614
                  andi         t2, a7, -2022
                  srl          s8, tp, a7
                  sltiu        t3, a2, -1782
                  auipc        s6, 452943
                  ori          s3, s11, -1517
                  sra          a6, t6, s1
                  xor          tp, t0, a6
                  auipc        a2, 871077
404:              slt          s11, a2, s10
405:              and          zero, s7, a3
                  sll          s5, a5, s10
                  sra          s11, s1, sp
408:              bgeu         t2, s3, 428f
                  add          s0, ra, s9
                  sll          t3, a1, a2
                  sltu         a3, tp, t6
                  slti         s7, t3, 1211
                  sll          a6, t4, s0
                  sll          s8, a5, s5
                  slli         s7, ra, 3
                  and          s9, s7, s5
                  or           s9, s8, s10
                  and          a4, a3, tp
                  bgeu         gp, tp, 425f
                  sll          s7, s0, a1
                  slli         s6, t2, 3
                  and          s6, s11, t6
                  srai         ra, s4, 12
                  sub          t2, gp, t6
425:              slt          s0, a1, a5
                  slli         s4, s1, 23
                  srli         gp, s2, 27
428:              xor          a0, a1, a5
                  bne          a6, s0, 436f
                  xor          t5, sp, a6
                  srai         s8, t4, 5
                  slt          a1, t0, t6
                  bgeu         s4, a7, 437f
                  nop
                  bge          a0, t5, 445f
436:              sub          s0, zero, a5
437:              srai         a0, t6, 1
                  bgeu         a2, s0, 454f
                  slti         t3, s9, -482
                  bne          a1, zero, 451f
                  srai         a1, t5, 21
                  slli         s10, a2, 25
                  xor          t4, a0, gp
                  sltu         a5, t3, t6
445:              auipc        s6, 346492
                  sltu         t4, s2, s5
                  sra          t0, s10, s11
                  slti         s10, t0, 1354
                  auipc        a6, 948284
                  sltiu        t5, a4, -1584
451:              addi         a1, s9, -936
                  srl          s4, s9, t5
                  slli         s9, s8, 31
454:              blt          zero, a0, 464f
                  sltiu        tp, t4, 1307
                  srai         s4, t3, 0
                  or           s9, a1, s0
                  slti         s1, a1, 566
                  sra          t3, s9, a0
                  slt          ra, t0, s11
                  slti         s11, s10, -477
                  slti         s8, s7, -1057
                  slti         s1, a2, 1394
464:              or           t3, s3, s11
                  ori          s6, a1, -491
                  nop
                  addi         t6, s1, 512
                  slli         zero, s5, 14
                  xori         t3, a3, -1199
                  sltu         gp, s10, s6
                  ori          s3, zero, 1686
                  andi         s10, s3, -1711
                  addi         t5, ra, 1398
                  srai         tp, t3, 7
                  nop
                  ori          tp, zero, -1627
                  or           s11, a6, s8
                  addi         a4, s10, 1183
                  lui          s10, 49855
                  srai         t2, s4, 23
                  slt          a1, s10, tp
                  add          t6, s10, t4
                  slli         t4, tp, 4
                  srli         t2, sp, 31
                  slli         a3, s1, 4
                  auipc        t0, 615249
                  andi         zero, t5, -569
                  nop
                  or           a0, t3, t2
                  addi         s10, t0, 755
                  bne          t2, s11, 500f
                  blt          t3, ra, 510f
                  srai         a6, s6, 24
                  beq          t1, a3, 502f
                  bne          gp, a2, 504f
                  addi         s11, s9, 120
                  slt          a6, s2, ra
                  slti         s1, t6, -1931
                  srai         ra, t6, 13
500:              sltiu        a2, t0, 1715
                  sub          a2, a5, a4
502:              beq          s0, t2, 513f
                  nop
504:              sll          s9, s5, a1
                  sub          a5, s0, s10
                  srli         a4, s6, 17
                  andi         tp, t5, -122
                  bge          s6, t4, 526f
                  xori         s7, t2, 1611
510:              slt          s3, t4, s10
                  addi         zero, s11, -192
                  bne          t4, s9, 521f
513:              sltu         s2, a3, a7
                  addi         a2, s10, -1775
                  sra          tp, tp, sp
                  lui          tp, 1040500
                  srai         s8, a7, 14
                  srai         s7, s8, 21
                  auipc        gp, 124890
                  srli         s10, a0, 14
521:              slli         a0, s6, 26
                  bgeu         s6, t4, 523f
523:              srai         ra, s5, 24
                  beq          sp, a3, 538f
                  slt          t0, s10, a0
526:              bge          s7, gp, 535f
                  slti         zero, s1, -1847
                  slli         s1, s3, 29
                  auipc        zero, 165219
                  addi         s4, t6, -1152
                  bge          s7, sp, 541f
                  xori         a4, s4, 1773
                  xor          s9, a5, s7
                  srai         tp, a3, 26
535:              add          zero, sp, a6
                  sltiu        t5, sp, -1215
                  or           s4, s7, t5
538:              srl          s0, t6, s0
                  sub          t3, s3, s4
                  bltu         a3, a4, 551f
541:              xor          zero, t4, gp
                  lui          a1, 291222
                  or           gp, a3, s7
                  or           ra, s5, s1
                  srl          s9, s9, s6
                  slti         s0, a0, -298
                  srai         s7, ra, 14
                  bge          tp, s3, 562f
                  sub          t3, a0, tp
                  and          s2, tp, a0
551:              sltu         s6, s2, s6
                  nop
                  sll          a2, s5, s4
                  srai         s2, s3, 28
                  sll          a4, s9, t2
                  auipc        t2, 175988
                  sub          a2, a3, a5
                  xori         s3, s10, 1780
                  bne          t3, a2, 566f
                  slli         t3, s5, 20
                  lui          a5, 928074
562:              ori          s6, s7, -1481
                  srai         s11, a3, 29
                  blt          gp, a4, 582f
                  beq          t2, a5, 573f
566:              andi         t2, a2, 1494
                  slli         zero, a4, 8
                  slt          s8, s10, a5
                  andi         s0, a2, -1104
                  slt          t4, t2, t2
                  auipc        tp, 645293
                  bgeu         s2, s10, 590f
573:              sll          s4, s7, sp
                  bne          s4, a4, 582f
                  nop
                  slt          s4, s2, s3
                  lui          zero, 685722
                  andi         s0, a6, -259
                  and          s6, t4, zero
                  sltiu        s0, s7, 1302
                  srli         t2, a3, 13
582:              sra          s3, s4, a1
                  lui          a1, 815207
                  bltu         t5, a2, 602f
                  add          t2, s0, a7
                  bgeu         t6, a4, 596f
                  ori          a6, s8, 747
                  beq          t5, s11, 606f
                  sll          s8, t1, s8
590:              and          s2, s0, s3
                  or           s3, gp, s5
                  bge          t0, s5, 597f
                  bge          t1, s9, 602f
                  xori         s4, a4, 867
                  nop
596:              sll          gp, t1, t1
597:              sra          a3, s0, s1
                  slti         s11, s11, 2021
                  beq          a2, s9, 605f
                  slli         t5, a1, 8
                  sll          gp, t3, s9
602:              lui          a6, 167215
                  sll          tp, ra, t2
                  srli         a2, gp, 17
605:              bgeu         a5, ra, 609f
606:              auipc        a0, 91936
                  bge          a7, t1, 617f
                  sra          zero, t5, a0
609:              bne          ra, a2, 615f
                  beq          t5, ra, 611f
611:              lui          zero, 557646
                  srai         s1, a4, 27
                  bgeu         a1, zero, 624f
                  slt          s4, a7, a0
615:              srl          t4, tp, s11
                  nop
617:              srli         a6, a5, 24
                  srl          t0, sp, a3
                  beq          a6, s10, 625f
                  slt          s3, tp, a7
                  bne          s7, sp, 625f
                  bne          s3, s6, 625f
                  nop
624:              srli         tp, a5, 15
625:              add          s10, s9, sp
                  srai         t5, t4, 25
                  andi         s4, a1, 334
                  lw           t6, 4(t1)
                  xor          s11, s9, ra
                  sltiu        a0, zero, 1528
                  addi         t1, t1, 36
                  srl          zero, a0, s4
905:              addi x25, x31, 1
905:              jalr x25, x25, 0
sub_4:            beq          t2, tp, sub_4_stack_p
                  slli         t0, a6, 29
                  srli         s5, s9, 6
                  slt          s6, s9, a5
sub_4_stack_p:    addi         t1, t1, -20
                  ori          a1, a5, 457
                  slli         gp, a4, 11
                  srli         s4, s1, 2
                  sw           t6, 4(t1)
                  sub          a6, a4, s4
sub_4_3:          jal          t6, 5f
0:                jal          ra, 10f
1:                jal          ra, 20f
2:                jal          ra, 8f
3:                jal          tp, 4f
4:                jal          s10, 21f
5:                jal          ra, 18f
6:                jal          gp, 12f
7:                jal          ra, 2b
8:                jal          a3, 3b
9:                jal          ra, 19f
10:               jal          gp, 15f
11:               jal          a6, 1b
12:               jal          t0, 0b
13:               jal          ra, 17f
14:               jal          ra, 9b
15:               jal          tp, 13b
16:               jal          ra, 11b
17:               jal          ra, 7b
18:               jal          s3, 16b
19:               jal          s5, 22f
20:               jal          ra, 6b
21:               jal          ra, 14b
22:               sltiu        s9, t2, 521
sub_4_10:         jal          t6, 8f
0:                jal          ra, 11f
1:                jal          s8, 10f
2:                jal          ra, 9f
3:                jal          a0, 1b
4:                jal          ra, 6f
5:                jal          ra, 2b
6:                jal          s4, 5b
7:                jal          ra, 0b
8:                jal          ra, 4b
9:                jal          ra, 3b
10:               jal          t5, 7b
11:               xor          t3, gp, s5
sub_4_12:         jal          t6, 9f
0:                jal          tp, 1f
1:                jal          s10, 4f
2:                jal          ra, 5f
3:                jal          a6, 6f
4:                jal          ra, 11f
5:                jal          ra, 8f
6:                jal          ra, 13f
7:                jal          a5, 2b
8:                jal          ra, 0b
9:                jal          gp, 7b
10:               jal          ra, 12f
11:               jal          ra, 10b
12:               jal          ra, 3b
13:               lui          s1, 224790
sub_4_6:          jal          t6, 14f
0:                jal          ra, 8f
1:                jal          ra, 21f
2:                jal          ra, 11f
3:                jal          ra, 0b
4:                jal          t4, 12f
5:                jal          ra, 3b
6:                jal          ra, 7f
7:                jal          ra, 10f
8:                jal          ra, 13f
9:                jal          a4, 17f
10:               jal          ra, 1b
11:               jal          a0, 15f
12:               jal          ra, 18f
13:               jal          ra, 20f
14:               jal          a4, 6b
15:               jal          ra, 16f
16:               jal          t0, 9b
17:               jal          ra, 19f
18:               jal          ra, 22f
19:               jal          ra, 5b
20:               jal          ra, 23f
21:               jal          s9, 4b
22:               jal          tp, 2b
23:               and          s6, s5, tp
sub_4_7:          jal          t6, 9f
0:                jal          s5, 10f
1:                jal          ra, 5f
2:                jal          ra, 1b
3:                jal          s4, 11f
4:                jal          ra, 3b
5:                jal          ra, 7f
6:                jal          ra, 8f
7:                jal          ra, 4b
8:                jal          tp, 0b
9:                jal          ra, 6b
10:               jal          ra, 2b
11:               ori          t6, s0, -1639
sub_4_8:          jal          t6, 15f
0:                jal          a5, 17f
1:                jal          t0, 8f
2:                jal          s8, 14f
3:                jal          ra, 10f
4:                jal          ra, 21f
5:                jal          ra, 1b
6:                jal          a2, 11f
7:                jal          ra, 12f
8:                jal          ra, 0b
9:                jal          ra, 5b
10:               jal          t2, 13f
11:               jal          ra, 7b
12:               jal          a1, 4b
13:               jal          tp, 18f
14:               jal          ra, 20f
15:               jal          ra, 16f
16:               jal          ra, 9b
17:               jal          ra, 2b
18:               jal          tp, 6b
19:               jal          tp, 3b
20:               jal          ra, 19b
21:               srai         a4, s7, 24
sub_4_15:         jal          t6, 26f
0:                jal          ra, 18f
1:                jal          ra, 3f
2:                jal          ra, 19f
3:                jal          tp, 17f
4:                jal          ra, 27f
5:                jal          ra, 7f
6:                jal          ra, 14f
7:                jal          s0, 10f
8:                jal          s1, 4b
9:                jal          ra, 20f
10:               jal          gp, 15f
11:               jal          ra, 1b
12:               jal          ra, 0b
13:               jal          ra, 25f
14:               jal          ra, 23f
15:               jal          ra, 11b
16:               jal          s11, 12b
17:               jal          ra, 8b
18:               jal          gp, 2b
19:               jal          tp, 9b
20:               jal          ra, 22f
21:               jal          ra, 24f
22:               jal          a5, 13b
23:               jal          ra, 28f
24:               jal          a5, 5b
25:               jal          ra, 6b
26:               jal          ra, 21b
27:               jal          s11, 16b
28:               addi         ra, a3, -1883
sub_4_16:         jal          t6, 10f
0:                jal          ra, 9f
1:                jal          s7, 11f
2:                jal          gp, 7f
3:                jal          s2, 0b
4:                jal          ra, 1b
5:                jal          ra, 3b
6:                jal          ra, 5b
7:                jal          ra, 8f
8:                jal          tp, 4b
9:                jal          s4, 2b
10:               jal          s9, 6b
11:               add          t2, s0, s8
sub_4_0:          jal          t6, 11f
0:                jal          gp, 8f
1:                jal          ra, 3f
2:                jal          ra, 5f
3:                jal          t0, 7f
4:                jal          ra, 0b
5:                jal          s8, 1b
6:                jal          ra, 10f
7:                jal          ra, 12f
8:                jal          t5, 2b
9:                jal          ra, 6b
10:               jal          s1, 4b
11:               jal          ra, 9b
12:               add          a3, gp, s10
sub_4_17:         jal          t6, 18f
0:                jal          gp, 11f
1:                jal          tp, 14f
2:                jal          ra, 0b
3:                jal          a5, 16f
4:                jal          ra, 19f
5:                jal          ra, 9f
6:                jal          ra, 17f
7:                jal          ra, 2b
8:                jal          ra, 1b
9:                jal          ra, 4b
10:               jal          ra, 20f
11:               jal          ra, 12f
12:               jal          ra, 21f
13:               jal          ra, 7b
14:               jal          ra, 3b
15:               jal          ra, 6b
16:               jal          a0, 5b
17:               jal          ra, 10b
18:               jal          t0, 8b
19:               jal          t4, 15b
20:               jal          s9, 13b
21:               add          s11, s7, s0
sub_4_5:          jal          t6, 3f
0:                jal          ra, 20f
1:                jal          s11, 21f
2:                jal          ra, 9f
3:                jal          t0, 0b
4:                jal          ra, 6f
5:                jal          ra, 28f
6:                jal          t3, 11f
7:                jal          gp, 5b
8:                jal          ra, 26f
9:                jal          t5, 4b
10:               jal          ra, 24f
11:               jal          ra, 14f
12:               jal          ra, 25f
13:               jal          ra, 22f
14:               jal          ra, 19f
15:               jal          t0, 16f
16:               jal          tp, 23f
17:               jal          ra, 15b
18:               jal          ra, 12b
19:               jal          ra, 1b
20:               jal          s5, 27f
21:               jal          ra, 8b
22:               jal          t2, 7b
23:               jal          s5, 13b
24:               jal          tp, 29f
25:               jal          ra, 17b
26:               jal          s5, 18b
27:               jal          ra, 2b
28:               jal          ra, 10b
29:               addi         s3, t4, -1019
sub_4_2:          jal          t6, 2f
0:                jal          ra, 13f
1:                jal          ra, 16f
2:                jal          a1, 6f
3:                jal          ra, 14f
4:                jal          gp, 10f
5:                jal          ra, 4b
6:                jal          ra, 3b
7:                jal          s0, 12f
8:                jal          ra, 1b
9:                jal          tp, 15f
10:               jal          ra, 0b
11:               jal          a3, 9b
12:               jal          ra, 5b
13:               jal          ra, 17f
14:               jal          ra, 8b
15:               jal          ra, 7b
16:               jal          s7, 11b
17:               addi         s1, sp, 1349
sub_4_4:          jal          t6, 16f
0:                jal          s10, 3f
1:                jal          ra, 28f
2:                jal          ra, 19f
3:                jal          ra, 23f
4:                jal          ra, 2b
5:                jal          ra, 17f
6:                jal          ra, 18f
7:                jal          ra, 22f
8:                jal          ra, 9f
9:                jal          ra, 4b
10:               jal          s4, 27f
11:               jal          s4, 5b
12:               jal          ra, 14f
13:               jal          ra, 7b
14:               jal          ra, 10b
15:               jal          ra, 25f
16:               jal          ra, 26f
17:               jal          a2, 13b
18:               jal          ra, 8b
19:               jal          ra, 12b
20:               jal          ra, 15b
21:               jal          t0, 0b
22:               jal          ra, 20b
23:               jal          s2, 6b
24:               jal          ra, 21b
25:               jal          ra, 1b
26:               jal          ra, 24b
27:               jal          t2, 11b
28:               sub          zero, a3, s5
sub_4_11:         jal          t6, 3f
0:                jal          tp, 10f
1:                jal          ra, 19f
2:                jal          t0, 20f
3:                jal          t3, 23f
4:                jal          ra, 22f
5:                jal          ra, 4b
6:                jal          a3, 15f
7:                jal          ra, 13f
8:                jal          tp, 1b
9:                jal          ra, 0b
10:               jal          ra, 5b
11:               jal          ra, 7b
12:               jal          ra, 21f
13:               jal          ra, 17f
14:               jal          t5, 11b
15:               jal          t2, 14b
16:               jal          ra, 24f
17:               jal          ra, 2b
18:               jal          ra, 9b
19:               jal          ra, 16b
20:               jal          ra, 18b
21:               jal          ra, 6b
22:               jal          gp, 8b
23:               jal          s3, 12b
24:               sra          t6, s8, t2
sub_4_14:         jal          t6, 23f
0:                jal          ra, 27f
1:                jal          ra, 18f
2:                jal          s3, 10f
3:                jal          s2, 28f
4:                jal          ra, 19f
5:                jal          a2, 4b
6:                jal          ra, 15f
7:                jal          ra, 3b
8:                jal          ra, 12f
9:                jal          ra, 2b
10:               jal          ra, 17f
11:               jal          ra, 21f
12:               jal          ra, 13f
13:               jal          ra, 20f
14:               jal          t2, 0b
15:               jal          tp, 11b
16:               jal          ra, 22f
17:               jal          ra, 14b
18:               jal          a1, 25f
19:               jal          ra, 8b
20:               jal          ra, 7b
21:               jal          t6, 26f
22:               jal          a1, 5b
23:               jal          ra, 16b
24:               jal          a2, 29f
25:               jal          ra, 9b
26:               jal          ra, 24b
27:               jal          t5, 6b
28:               jal          ra, 1b
29:               sll          a5, s2, t6
sub_4_13:         jal          t6, 8f
0:                jal          ra, 1f
1:                jal          ra, 24f
2:                jal          ra, 23f
3:                jal          t6, 25f
4:                jal          t3, 7f
5:                jal          tp, 13f
6:                jal          ra, 14f
7:                jal          ra, 3b
8:                jal          t6, 12f
9:                jal          t3, 5b
10:               jal          ra, 9b
11:               jal          ra, 10b
12:               jal          ra, 21f
13:               jal          s5, 26f
14:               jal          ra, 0b
15:               jal          ra, 20f
16:               jal          a4, 27f
17:               jal          ra, 18f
18:               jal          t0, 4b
19:               jal          ra, 6b
20:               jal          ra, 19b
21:               jal          s5, 17b
22:               jal          ra, 11b
23:               jal          s11, 22b
24:               jal          a2, 2b
25:               jal          ra, 15b
26:               jal          ra, 16b
27:               xori         ra, s3, 1431
sub_4_9:          jal          t6, 0f
0:                jal          ra, 7f
1:                jal          ra, 9f
2:                jal          ra, 5f
3:                jal          ra, 6f
4:                jal          tp, 1b
5:                jal          a0, 4b
6:                jal          t6, 10f
7:                jal          ra, 8f
8:                jal          ra, 2b
9:                jal          ra, 3b
10:               and          gp, s8, t0
sub_4_1:          jal          t6, 11f
0:                jal          a4, 6f
1:                jal          ra, 2f
2:                jal          s8, 0b
3:                jal          t6, 10f
4:                jal          s9, 12f
5:                jal          ra, 15f
6:                jal          ra, 5b
7:                jal          tp, 3b
8:                jal          t5, 9f
9:                jal          ra, 14f
10:               jal          a6, 1b
11:               jal          ra, 13f
12:               jal          ra, 7b
13:               jal          ra, 4b
14:               jal          ra, 16f
15:               jal          s4, 8b
16:               sltu         s1, s5, t6
                  addi         a1, s6, 404
                  bgeu         s8, a2, 15f
                  lui          s2, 593799
                  and          t5, t4, tp
                  and          t4, s6, s10
                  and          s6, zero, t5
                  auipc        ra, 56866
                  sll          a6, ra, a7
                  sltu         a5, s9, a7
                  andi         zero, s5, -623
                  and          t0, s2, s1
                  bgeu         a2, s10, 30f
                  sltiu        s5, a4, -395
                  sra          s11, a5, t1
                  slti         ra, a0, -450
15:               sltiu        zero, t5, -1008
                  bgeu         t4, t3, 21f
                  srai         a3, tp, 25
                  xor          s9, a1, t2
                  nop
                  sub          t6, sp, s11
21:               srl          a0, s10, s4
                  srai         a1, a6, 0
                  nop
                  and          a1, a6, sp
                  bgeu         t2, s7, 33f
                  slti         t4, s8, 1662
                  and          s8, s11, a2
                  auipc        s1, 19790
                  sra          gp, s10, gp
30:               xori         a0, s11, 1599
                  or           t5, s9, s0
                  auipc        a1, 872079
33:               xori         ra, s3, -1940
                  and          a4, s1, gp
                  sltu         a3, s3, s7
                  bgeu         s7, s2, 48f
                  slti         t3, t0, -1058
                  andi         s10, s1, -536
                  srli         t3, s8, 24
                  slli         s11, a3, 22
                  bge          sp, s7, 59f
                  bne          s10, t0, 46f
                  ori          t3, t6, -1201
                  lui          s8, 42208
                  or           tp, t6, a5
46:               or           a0, s11, s6
                  srli         zero, zero, 31
48:               bge          s11, a5, 56f
                  bltu         t4, a0, 52f
                  sub          s7, s4, t0
                  slli         a3, t1, 0
52:               sub          t0, zero, t6
                  sltu         a3, s3, s4
                  slti         s1, s3, -1598
                  sltu         t4, t1, s3
56:               bgeu         a6, s1, 65f
                  sltu         t2, tp, a6
                  nop
59:               and          t3, s6, s7
                  bltu         a5, zero, 75f
                  ori          s11, s5, -998
                  srai         t5, a4, 14
                  addi         t5, t1, 1540
                  srl          s10, t0, a4
65:               xor          a1, a7, a4
                  bltu         ra, a7, 86f
                  srl          t4, a2, t4
                  sub          t5, s9, gp
                  srai         a0, t0, 29
                  nop
                  andi         s1, s10, 1021
                  andi         ra, gp, -1285
                  auipc        s5, 238477
                  add          t5, ra, a5
75:               auipc        tp, 334894
                  slli         t0, s8, 20
                  blt          s0, t4, 81f
                  srli         a5, s6, 31
                  bge          t2, s9, 96f
                  sub          t4, ra, s2
81:               add          tp, a0, t3
                  beq          a7, s8, 86f
                  srli         tp, s4, 27
                  nop
                  lui          t6, 352155
86:               slt          a2, tp, s10
                  sll          t0, t6, ra
                  xori         s6, s8, -979
                  srli         a2, zero, 27
                  andi         s6, s3, 1004
                  sltiu        t5, gp, -1900
                  srli         ra, gp, 28
                  slli         a0, t0, 31
                  or           s8, s1, t3
                  sltiu        a3, t6, 497
96:               srl          s10, t4, s7
                  srli         s9, s0, 12
                  add          s6, s11, a4
                  slli         t3, t1, 23
                  bltu         t0, t1, 118f
                  and          t2, a0, s0
                  sra          a1, t5, s4
                  srli         a5, a2, 5
                  bltu         s8, t5, 112f
                  slti         s2, t6, -269
                  sll          tp, ra, a0
                  bne          s4, s0, 114f
                  srai         a2, a0, 17
                  andi         t5, tp, 1273
                  or           t2, s2, s9
                  bge          a4, t4, 131f
112:              xor          tp, a5, t0
                  lui          s5, 634297
114:              bltu         s8, a4, 133f
                  slti         s7, a6, 911
                  add          a0, a3, sp
                  srai         a0, t2, 13
118:              xor          s6, t0, s9
                  nop
                  xor          a4, t4, t0
                  bgeu         s7, s1, 134f
                  srl          s2, a5, t6
                  bge          t1, s3, 133f
                  sll          s9, a2, s9
                  and          s3, s0, gp
                  srai         s7, t4, 26
                  slt          s7, a4, a5
                  srli         s1, s9, 7
                  lui          s6, 360945
                  sltiu        s9, t3, -269
131:              bne          t0, a4, 133f
                  bne          t4, t0, 140f
133:              sltiu        s1, t0, 1327
134:              addi         s5, s3, -1257
                  andi         a4, t2, 1516
                  blt          gp, a6, 150f
                  sll          tp, t4, a0
                  srai         a2, t5, 24
                  or           t3, t5, a1
140:              srl          t6, ra, a6
                  sltiu        s3, t4, -1953
                  blt          tp, a3, 154f
                  sub          t2, a5, a1
                  lui          t4, 919203
                  blt          s3, a4, 164f
                  sltu         s1, sp, s8
                  sll          s1, a5, sp
                  slli         s7, t5, 13
                  srli         tp, t6, 27
150:              lui          s8, 746748
                  sra          s5, a0, s10
                  and          s1, t5, s10
                  and          t0, a4, ra
154:              sll          s9, t5, s10
                  addi         t6, s4, -1945
                  sub          s7, t4, ra
                  xor          a3, tp, a1
                  bltu         a6, s5, 173f
                  xor          ra, tp, t5
                  sltiu        s2, t5, -652
                  bgeu         s7, s5, 166f
                  bne          t0, a7, 179f
                  slli         a5, t4, 24
164:              slti         s9, zero, -391
                  and          s10, ra, s0
166:              beq          s1, a4, 168f
                  ori          s10, s5, -857
168:              beq          s1, t0, 176f
                  auipc        s1, 13283
                  srl          a0, s0, s0
                  or           a5, s4, s11
                  addi         a2, a1, -870
173:              sub          s6, t1, s1
                  lui          zero, 364030
                  xori         a6, s8, 1280
176:              xor          t4, tp, t4
                  xori         s11, sp, -1156
                  srai         s8, a7, 3
179:              srl          a1, a6, a6
                  srl          a5, s5, tp
                  srai         a1, s6, 13
                  slli         s5, s1, 6
                  or           s9, t6, t0
                  bne          tp, sp, 204f
                  sll          gp, a7, s9
                  bne          a0, s4, 190f
                  beq          a5, a5, 201f
                  or           a6, a2, sp
                  bgeu         a7, t3, 207f
190:              srli         s9, s10, 21
                  sra          t0, s2, tp
                  nop
                  xor          s11, t0, s11
                  and          s8, s5, ra
                  sltu         a3, t1, s0
sub_4_18:         jal          t6, 2f
0:                jal          s7, 13f
1:                jal          a6, 11f
2:                jal          ra, 0b
3:                jal          ra, 9f
4:                jal          s0, 7f
5:                jal          ra, 12f
6:                jal          ra, 5b
7:                jal          ra, 8f
8:                jal          a1, 6b
9:                jal          ra, 10f
10:               jal          ra, 4b
11:               jal          s0, 14f
12:               jal          a0, 1b
13:               jal          ra, 3b
14:               sub          t4, a1, gp
                  and          s2, s11, t2
                  bge          a1, t5, 201f
                  bge          s2, t5, 215f
                  sll          gp, a1, t6
                  beq          gp, tp, 205f
201:              bne          t0, t3, 210f
                  srli         s4, s3, 23
                  and          a3, s9, t4
204:              addi         a0, s7, 1590
205:              slli         tp, ra, 2
                  sltiu        t2, a6, 81
207:              addi         s7, s4, -930
                  beq          t0, a1, 216f
                  nop
210:              bne          t6, s0, 215f
                  srl          a4, a2, a5
                  bne          t0, a1, 232f
                  and          s10, sp, s11
                  bge          ra, a4, 226f
215:              slt          s6, zero, t3
216:              addi         t0, s4, -954
                  blt          zero, a1, 231f
                  bge          s7, a2, 237f
                  slli         t6, t6, 3
                  sub          ra, ra, t2
                  srli         a2, gp, 22
                  sltiu        a0, s8, 781
                  lui          s9, 769970
                  xor          s0, a7, s8
                  lui          t3, 479644
226:              bne          t5, t5, 233f
                  and          ra, a4, t0
                  srli         a4, a2, 9
                  lui          t5, 501018
                  srai         tp, s6, 15
231:              auipc        t6, 937415
232:              bltu         a1, s11, 235f
233:              srai         s7, s5, 4
                  or           s6, a4, t4
235:              slti         ra, ra, 1006
                  sub          ra, a7, t3
237:              sltu         s5, t5, gp
                  sll          tp, a1, s3
                  bgeu         s1, s0, 249f
                  sltiu        t0, a2, -402
                  bltu         s3, a0, 260f
                  bgeu         s8, t1, 257f
                  bltu         tp, s8, 251f
                  sra          s0, sp, a1
                  bgeu         a6, ra, 262f
                  add          s7, t2, a1
                  slti         a3, a4, 878
                  slti         gp, a7, -1993
249:              bgeu         s3, s11, 261f
                  slli         zero, sp, 22
251:              blt          s5, s0, 270f
                  srai         t6, s8, 27
                  bne          s8, t4, 271f
                  srai         s9, t0, 28
                  sll          zero, t2, a7
                  add          s1, a6, t1
257:              xor          s8, s8, a5
                  sltu         s7, ra, t2
                  bne          s2, s9, 263f
260:              beq          a3, s10, 275f
261:              addi         t5, a0, 991
262:              ori          s10, s7, 1919
263:              sll          s1, a1, a4
                  addi         s2, a0, -102
                  or           s0, s7, s6
                  lui          a4, 854703
                  nop
                  bgeu         s2, t6, 281f
                  slti         s7, a1, 927
270:              or           gp, s7, s11
271:              nop
                  sll          s5, s3, s3
                  or           t0, s0, t6
                  andi         tp, ra, -1155
275:              nop
                  sll          s11, s6, s6
                  nop
                  srli         zero, zero, 20
                  sra          t4, s4, a5
                  sra          s11, t2, tp
281:              add          s1, s2, s9
                  bge          t1, t2, 290f
                  srai         a5, a6, 31
                  add          s1, s4, a6
                  or           s2, t6, t0
                  bne          a4, zero, 301f
                  blt          t0, s4, 307f
                  bge          t3, s2, 297f
                  sltu         a1, t5, t4
290:              srl          tp, a4, a4
                  auipc        s8, 387093
                  lui          a2, 65516
                  srli         s2, a2, 14
                  sub          a4, s4, t3
                  slt          s2, a7, s7
                  slt          s4, s3, a2
297:              bne          s7, a3, 316f
                  sltu         s7, s6, a4
                  andi         s10, a3, -1672
                  add          gp, s11, s7
301:              bltu         a7, a6, 305f
                  ori          ra, s10, 1598
                  blt          t1, zero, 311f
                  sltiu        a2, s11, -293
305:              blt          a6, s2, 322f
                  add          zero, s0, t3
307:              bltu         s11, s2, 324f
                  bgeu         s5, a6, 310f
                  sltu         t2, t2, a1
310:              blt          s0, t0, 329f
311:              sra          a3, t1, s4
                  xor          s11, t6, s7
                  sltu         s6, s8, s7
                  srl          t0, s1, s3
                  bgeu         a2, t3, 319f
316:              sltu         t4, s0, ra
                  ori          s7, a3, 1901
                  auipc        a6, 340737
319:              add          t5, sp, s9
                  xor          s7, a5, zero
                  bgeu         s11, s11, 331f
322:              sltu         s8, a2, a5
                  beq          s6, a3, 326f
324:              sltu         s0, t3, s1
                  slli         a1, a3, 3
326:              sltu         s10, t0, zero
                  bgeu         t1, s6, 332f
                  bne          s7, zero, 346f
329:              slti         s3, s3, -839
                  addi         s5, s1, -1991
331:              srli         s9, s7, 2
332:              slli         t5, s2, 6
                  slli         s6, s7, 24
                  sra          s10, s2, a4
                  bgeu         a4, zero, 343f
                  and          t3, t6, a3
                  bge          s0, a4, 342f
                  sltu         zero, a0, t3
                  or           zero, a5, s9
                  sltu         a1, t3, gp
                  sltu         t2, s7, tp
342:              slt          t0, a7, s6
343:              or           s5, t6, t5
                  sltu         s3, gp, sp
                  beq          sp, a1, 364f
346:              andi         a2, s3, -112
                  and          s0, gp, gp
                  addi         a6, s0, 1877
                  nop
                  nop
                  beq          a7, s6, 355f
                  nop
                  xori         s2, a1, 1051
                  blt          s3, a4, 374f
355:              srai         s3, s5, 3
                  bge          t2, s6, 368f
                  xori         s5, a6, 86
                  add          s7, t5, s4
                  blt          t4, a6, 367f
                  bge          t2, a2, 378f
                  xor          s11, gp, a5
                  and          a5, s6, s8
                  or           t5, s8, s0
364:              beq          sp, a4, 378f
                  bge          s5, t6, 378f
                  add          s5, s11, a0
367:              sltiu        s8, ra, 803
368:              sltu         a5, a1, t5
                  sub          s8, t6, a0
                  and          s7, t1, s7
                  and          s2, s0, s2
                  sll          s0, a5, zero
                  sra          t3, a1, tp
374:              addi         s7, a1, 1728
                  and          t6, s4, tp
                  add          zero, t6, a5
                  auipc        s7, 566865
378:              addi         a2, t6, -1756
                  bgeu         s4, s11, 391f
                  beq          a5, s6, 395f
                  nop
                  ori          tp, s1, -564
                  sub          s10, t2, tp
                  or           t5, s6, a4
                  srai         s4, a3, 16
                  auipc        a5, 64440
                  xor          a3, s5, s1
                  andi         s2, s10, 1155
                  srai         t0, s6, 28
                  slti         a5, a5, 1620
391:              srli         a3, sp, 11
                  and          a5, a0, t0
                  sra          a3, s3, s0
                  addi         s9, s9, 1049
395:              srli         t2, s9, 18
                  bgeu         gp, t1, 410f
                  bltu         s5, s7, 404f
                  srai         a6, s6, 14
                  blt          s1, s2, 407f
                  srai         t2, t3, 31
                  or           s1, zero, t6
                  sltu         t3, s5, s4
                  srai         zero, a7, 28
404:              blt          s1, a6, 416f
                  bge          t3, s2, 409f
                  xori         s1, ra, 1175
407:              bne          a4, s5, 422f
                  bgeu         s6, s5, 415f
409:              sltiu        t4, t0, 735
410:              sltiu        zero, gp, 1492
                  ori          s2, a0, 1494
                  srl          s10, t3, s5
                  srli         s5, a1, 1
                  xor          s11, tp, sp
415:              ori          t2, t3, -774
416:              lui          a4, 524497
                  sltiu        t2, s8, -750
                  bne          zero, a3, 431f
                  srl          s4, t0, ra
                  addi         t4, s4, -369
                  andi         a5, t4, 438
422:              xor          s7, t6, a2
                  addi         t2, s4, -911
                  sra          a3, sp, t2
                  add          t2, s4, a3
                  and          s1, t1, s1
                  sltiu        s0, s4, -1563
                  beq          t2, s0, 447f
                  lui          s6, 80883
                  sll          tp, a7, sp
431:              sltiu        t6, a2, -1787
                  and          a6, s4, a1
                  addi         a0, s11, -753
                  sltu         a1, t2, s2
                  srai         s10, a5, 2
                  sub          s0, a2, t1
                  slt          zero, a0, a7
                  addi         t2, t5, 1004
                  bgeu         t4, a3, 441f
                  blt          a0, a5, 457f
441:              sra          t2, t3, gp
                  sra          t5, a0, a3
                  beq          s9, a3, 458f
                  slt          t0, s11, t2
                  sra          t0, s5, t3
                  add          a0, s0, a5
447:              andi         s4, s6, -1497
                  andi         s9, a1, -508
                  ori          zero, s9, 1248
                  or           s4, a5, ra
                  and          s4, a7, t5
                  bne          s9, s6, 456f
                  or           s1, s7, s0
                  sltiu        s9, a7, -1159
                  beq          s11, s7, 464f
456:              bne          s6, t0, 474f
457:              slli         s3, s9, 6
458:              srli         a3, a6, 4
                  andi         s1, a2, -1296
                  blt          t3, sp, 474f
                  auipc        s10, 4050
                  slti         t5, zero, 990
                  or           a5, t4, s6
464:              slt          s2, s3, s5
                  bltu         s6, t5, 473f
                  xor          t4, s6, s2
                  sll          s6, t6, ra
                  andi         s8, s6, -555
                  sltiu        s4, tp, -339
                  srl          t0, s4, s10
                  sub          a6, t6, s3
                  blt          s8, a2, 480f
473:              add          s5, a2, t0
474:              add          s6, t4, t2
                  sll          s11, s11, t0
                  srl          s2, a2, a2
                  bltu         s4, t0, 489f
                  beq          a3, t5, 498f
                  beq          s5, a1, 493f
480:              srli         t0, s11, 30
                  andi         a2, t4, -109
                  or           a3, s4, s9
                  sltiu        a0, t4, 1443
                  or           s9, t0, t1
                  and          tp, t4, sp
                  sltiu        t5, gp, -38
                  xor          s9, s8, a4
                  sll          s11, s1, sp
489:              auipc        a3, 214839
                  blt          ra, t6, 494f
                  bne          ra, a4, 510f
                  beq          t4, s6, 512f
493:              sltu         s2, a0, s6
494:              slli         a6, s0, 12
                  auipc        a0, 555609
                  nop
                  andi         s1, sp, 431
498:              sra          ra, s10, s11
                  sltiu        s4, s3, -1592
                  srli         a0, s7, 0
                  xori         s0, t4, -517
                  xori         s2, zero, 1035
                  xori         s5, s11, 922
                  sltiu        s9, a2, 426
                  addi         a6, t3, -1453
                  add          a5, t0, t5
                  sll          s11, zero, s6
                  xor          s2, a3, s11
                  xori         t6, s11, 877
510:              bge          s2, s0, 528f
                  srli         s4, s7, 10
512:              sltiu        t5, s8, 1174
                  ori          a4, gp, 1961
                  bltu         s2, a1, 524f
                  srl          s10, s8, a7
                  sltiu        a3, t2, 1664
                  slt          s11, ra, a7
                  xor          gp, s3, a3
                  bltu         t1, s6, 524f
                  addi         tp, a4, 1530
                  sltu         s10, a7, sp
                  and          s4, t5, s3
                  ori          s11, s4, 776
524:              sra          s1, s3, s7
                  sll          s5, a3, a2
                  bltu         a3, t1, 529f
                  bne          a1, t5, 532f
528:              srai         s11, t0, 9
529:              lui          s9, 691465
                  beq          s9, t0, 547f
                  sltu         t2, t3, sp
532:              blt          s5, a0, 540f
                  bne          t4, tp, 552f
                  srl          s9, a7, s5
                  xori         t5, ra, 722
                  sll          s9, s10, a5
                  auipc        a4, 315094
                  bge          s7, s11, 546f
                  auipc        t6, 272018
540:              srl          t2, t6, s3
                  sltu         s0, a5, sp
                  srl          t6, s9, t1
                  bne          s7, a2, 551f
                  bltu         s7, s3, 564f
                  or           tp, s0, t1
546:              slt          zero, t6, s6
547:              sltu         t6, a3, a1
                  srli         s9, a3, 30
                  srli         a0, s2, 20
                  sll          s7, t1, sp
551:              sltiu        ra, s5, -522
552:              xori         s3, s3, -1517
                  sltiu        s1, ra, 1763
                  addi         s8, s0, 890
                  sub          a6, s11, a7
                  lui          tp, 55209
                  beq          sp, t6, 576f
                  sll          a6, s9, t4
                  slt          t3, s3, s6
                  addi         s3, sp, -1665
                  and          tp, s4, s7
                  ori          s9, a7, -495
                  ori          t2, s0, 1259
564:              ori          zero, t4, -1164
                  blt          t4, t6, 575f
                  blt          t1, t3, 585f
                  ori          s7, a1, 1721
                  sra          ra, sp, a6
                  sltu         a2, gp, a0
                  andi         a0, s2, 235
                  srli         a6, s6, 13
                  add          t0, a0, sp
                  slt          t5, a3, s1
                  addi         a3, s5, 230
575:              srai         t2, a1, 22
576:              or           gp, a3, a7
                  bne          s9, s9, 584f
                  lui          s9, 762143
                  sll          a4, a0, s8
                  bge          s9, s7, 593f
                  srai         t2, a4, 15
                  blt          a4, t1, 594f
                  sll          tp, t2, s2
584:              bgeu         t1, s7, 586f
585:              xor          s11, s0, gp
586:              bltu         a3, s6, 601f
                  auipc        a0, 270007
                  slti         zero, tp, -1731
                  slli         s4, a4, 24
                  bne          s10, s4, 607f
                  srai         s5, s3, 0
                  and          a6, zero, s1
593:              sltiu        s4, t6, 593
594:              add          s6, a4, t4
                  srai         a0, ra, 4
                  sltu         a2, ra, s6
                  sll          t4, s7, t5
                  ori          a5, a4, -1558
                  addi         t2, t2, 1653
                  slt          zero, t5, t0
601:              slli         s7, s1, 10
                  srl          ra, a4, t2
                  srai         t5, s4, 14
                  andi         t0, t1, 1775
                  sltiu        a1, t1, -1395
                  slt          s9, t3, t6
607:              xori         t5, gp, -367
                  beq          a3, s6, 620f
                  sub          t4, t0, s8
                  xor          a4, ra, tp
                  add          a3, t5, a5
                  addi         t5, s11, -956
                  or           a5, s8, t6
                  xori         gp, s4, -212
                  blt          a5, a1, 620f
                  srai         s1, s2, 12
                  bge          s4, t3, 622f
                  sltiu        t0, s9, -289
                  srli         s4, s8, 19
620:              bne          t3, ra, 634f
                  srl          s7, a4, s3
622:              slt          a0, s8, a7
                  blt          zero, t1, 632f
                  beq          a7, s10, 643f
                  bltu         t6, a7, 633f
                  slli         s7, s6, 19
                  srai         zero, s10, 5
                  or           s4, a5, gp
                  slt          a3, s6, t1
                  sll          a3, s1, s6
                  srai         s6, s9, 1
632:              sra          s11, s1, sp
633:              lui          s5, 213233
634:              sub          s11, sp, s10
                  bne          s5, t0, 649f
                  sub          gp, a0, s4
                  sub          a5, s10, gp
                  xor          zero, s7, a1
                  add          gp, s10, s9
                  sub          s3, t2, t3
                  bgeu         zero, a5, 656f
                  slt          t0, a1, t3
643:              bne          zero, gp, 651f
                  beq          t4, zero, 647f
                  blt          a5, tp, 649f
                  sra          t0, t4, a0
647:              and          a4, s7, s4
                  xor          s5, a3, a1
649:              beq          sp, a3, 666f
                  slli         s5, t4, 19
651:              sub          a1, a7, t0
                  xor          s10, s1, t3
                  bne          s4, s1, 657f
                  addi         t4, t5, 1831
                  srl          t2, s2, s11
656:              and          s3, s0, a1
657:              nop
                  bge          s7, ra, 666f
                  sll          s5, a0, s0
                  sub          s8, tp, a3
                  srli         s11, a7, 28
                  beq          a2, a7, 680f
                  srai         s4, s9, 11
                  bne          zero, s8, 684f
                  slt          a0, s10, s9
666:              bge          a1, s8, 670f
                  bge          s3, a7, 685f
                  addi         a1, a3, -1927
                  sll          zero, s5, a2
670:              bltu         a1, gp, 687f
                  slli         t6, s11, 4
                  xori         s3, s9, -1225
                  ori          s11, t0, 1
                  lui          a1, 991056
                  srai         gp, t4, 14
                  sltiu        zero, a4, 1033
                  bge          t3, a2, 682f
                  auipc        s6, 586124
                  srli         a3, s1, 22
680:              nop
                  addi         t0, a0, 266
682:              bge          a3, t4, 690f
                  slt          a5, zero, zero
684:              and          t6, s10, zero
685:              srli         s0, s0, 1
                  srl          a3, sp, t4
687:              slli         s3, s7, 6
                  xor          t2, s11, a3
                  nop
690:              sll          s4, tp, s6
                  slti         zero, s11, 907
                  sltu         s6, a3, s4
                  blt          a6, s4, 697f
                  sra          s2, s5, ra
                  slt          t4, s0, s0
                  slli         gp, s10, 23
697:              nop
                  ori          a4, t1, -1930
                  blt          t5, gp, 708f
                  bge          a0, t3, 704f
                  sub          ra, a1, s11
                  sll          s8, t2, zero
                  add          s10, s4, a1
704:              auipc        ra, 837425
                  or           t3, s11, a0
                  sra          a6, sp, s10
                  xor          t5, s1, s2
708:              slli         a3, t0, 10
                  auipc        t6, 430573
                  bltu         a1, t4, 725f
                  slli         a2, t4, 3
                  srl          zero, s11, t6
                  bgeu         s0, zero, 732f
                  ori          s4, t1, 1204
                  add          gp, gp, a7
                  andi         gp, a6, 621
                  bltu         t5, a5, 735f
                  blt          a5, s3, 737f
                  sltiu        t3, zero, -392
                  bgeu         s7, a2, 727f
                  sltiu        s4, t3, -1895
                  sra          s3, a6, s6
                  nop
                  bltu         t1, ra, 738f
725:              addi         s7, t5, 808
                  bltu         s3, s3, 739f
727:              nop
                  srai         a2, s4, 27
                  ori          s7, zero, 433
                  sltiu        s9, s1, -829
                  add          ra, s1, a5
732:              sltu         t5, a2, a2
                  xor          s0, s10, t6
                  add          s0, t5, a3
735:              sra          s0, s0, s10
                  srai         a4, t1, 14
737:              or           s9, sp, ra
738:              auipc        a1, 420374
739:              ori          a5, ra, 1580
                  nop
                  sra          zero, s7, zero
                  auipc        t5, 834292
                  bltu         t1, t2, 748f
                  add          a1, ra, t4
                  and          t2, zero, a5
                  add          s5, a0, t1
                  sll          s2, a0, tp
748:              bltu         a7, s2, 756f
                  beq          t1, s0, 752f
                  srl          s2, a1, s10
                  bgeu         a7, s2, 763f
752:              auipc        zero, 901124
                  srl          a4, t2, ra
                  slt          t4, s5, t4
                  xori         tp, s2, -931
756:              sll          s1, s8, tp
                  ori          tp, a2, 1947
                  sltiu        s10, a2, -1234
                  xori         a4, t1, 1965
                  srl          s2, t1, a7
                  slti         s1, s9, 283
                  srai         zero, s0, 17
763:              and          s0, s4, t0
                  slli         t3, s11, 25
                  sll          a3, s7, t2
                  sra          tp, s3, s2
                  lui          a1, 359990
                  xor          tp, a5, s1
                  auipc        a0, 611555
                  bge          zero, s5, 784f
                  and          a5, a5, a5
                  add          s3, s10, tp
                  sll          t5, a0, ra
                  slli         s3, s3, 9
                  xori         tp, s11, 140
                  slti         t2, s11, 366
                  sra          t6, s7, ra
                  srl          a6, a0, s5
                  bne          s10, s8, 789f
                  slt          a1, s7, s6
                  sll          t2, a4, s5
                  nop
                  nop
784:              andi         t6, s0, 853
                  slli         a4, gp, 11
                  bltu         a6, a3, 804f
                  srai         s0, a1, 19
                  xori         s4, t2, -1313
789:              beq          a6, t6, 791f
                  and          s0, t1, s2
791:              blt          s4, a6, 795f
                  addi         a4, a3, 975
                  sll          a1, s11, s10
                  bgeu         t0, s4, 814f
795:              bne          s6, s9, 810f
                  beq          s8, s0, 816f
                  bgeu         s11, s3, 809f
                  bltu         a3, s10, 815f
                  nop
                  add          t3, s7, t1
                  and          zero, s5, a6
                  ori          s6, a2, 45
                  bltu         t6, gp, 822f
804:              srai         s3, a0, 25
                  srai         s10, s3, 26
                  bltu         a5, t6, 814f
                  xor          s1, s6, s7
                  sub          t2, s4, t6
809:              bne          s2, t0, 817f
810:              sub          a1, s8, t5
                  bge          t4, ra, 816f
                  add          s3, a6, t6
                  bltu         s5, gp, 825f
814:              srl          s10, t4, s1
815:              and          s8, s5, tp
816:              bgeu         s1, t3, 834f
817:              lui          t2, 589011
                  andi         a1, a5, -1242
                  srai         s3, s2, 23
                  auipc        s11, 703074
                  beq          tp, s6, 826f
822:              bltu         s2, a6, 829f
                  auipc        t2, 416580
                  bltu         s3, tp, 839f
825:              bne          s11, gp, 829f
826:              bltu         a6, a3, 845f
                  slli         t6, t4, 15
                  andi         gp, a1, 1253
829:              blt          a4, t1, 837f
                  xori         s11, s7, 1650
                  srli         s2, zero, 19
                  sltiu        t3, t3, 300
                  sltiu        a1, s3, -485
834:              lui          s10, 885728
                  lui          s11, 475599
                  or           tp, t6, gp
837:              slt          s3, s7, a4
                  add          s11, t0, s10
839:              sltiu        tp, a7, 301
                  sra          s7, t1, a2
                  srl          s9, s0, a7
                  sub          s9, s4, a7
                  blt          tp, s2, 845f
                  xori         s10, s9, -1506
845:              ori          a1, s7, 2021
                  srl          t5, s5, zero
                  bltu         a1, tp, 859f
                  bge          a0, t6, 856f
                  lui          a2, 657131
                  nop
                  sltu         a6, a3, s6
                  nop
                  xor          s10, a2, a2
                  slli         tp, t6, 14
                  bne          a4, a5, 870f
856:              srai         s9, t1, 12
                  sltiu        a3, a3, 37
                  nop
859:              srai         s8, s2, 0
                  srli         s1, a1, 25
                  slli         a0, s0, 0
                  xor          s1, a3, t1
                  sltu         s7, a1, s0
                  sub          s2, s5, a6
                  sub          s4, s1, s4
                  srl          ra, s10, s4
                  srai         s3, s4, 9
                  sub          ra, s5, a1
                  addi         ra, t2, 1939
870:              andi         ra, s5, 1513
                  and          t2, s10, t3
                  sltu         s9, a5, s10
                  add          s0, a7, a5
                  blt          a0, zero, 892f
                  srl          t6, s10, t4
                  srli         s10, t2, 22
                  slt          s11, a0, s5
                  slti         t6, s2, -518
                  xor          gp, t4, s4
                  bne          t1, a7, 884f
                  ori          t4, a4, 1026
                  or           a5, s5, t2
                  auipc        zero, 495672
884:              bne          t2, tp, 898f
                  xori         t6, tp, 1792
                  auipc        t4, 343056
                  sll          s10, zero, sp
                  xori         a0, tp, 529
                  add          a0, s6, s5
                  bge          t5, s7, 903f
                  xori         zero, s6, 139
892:              and          t2, sp, a6
                  bne          tp, zero, 896f
                  ori          t5, a0, -698
                  srai         s8, gp, 12
896:              sll          s6, t0, s8
                  blt          s6, s5, 917f
898:              bltu         s2, s10, 906f
                  bge          s3, s2, 908f
                  nop
                  sra          s0, t2, s3
                  slli         t5, s9, 4
903:              xor          t5, s11, t0
                  bge          s2, a6, 924f
                  slti         a3, s7, 1958
906:              sub          s11, s9, t2
                  auipc        ra, 990812
908:              beq          a4, a3, 922f
                  srl          t6, gp, s3
                  slt          a5, t6, s11
                  sltu         t4, a3, a7
                  srli         s2, s1, 28
                  and          t6, s10, s8
                  sltiu        a3, sp, -1764
                  xor          s6, s1, s3
                  lui          a0, 143709
917:              nop
                  ori          zero, s11, 1333
                  andi         a6, tp, -196
                  sra          a1, s10, s7
                  andi         a5, s7, -1581
922:              xor          s0, a1, a1
                  add          s8, tp, s8
924:              bgeu         s8, a2, 943f
                  srli         a5, s1, 29
                  ori          s0, s6, -1223
                  andi         t4, s10, 1176
                  blt          a7, a7, 945f
                  sll          zero, ra, s11
                  slti         ra, a2, 355
                  sub          t4, a2, s8
                  nop
                  bne          a7, a3, 941f
                  srli         a4, t3, 28
                  add          ra, s3, s11
                  bne          a3, a5, 940f
                  bne          t3, s5, 954f
                  bgeu         tp, zero, 957f
                  sra          a2, s9, s10
940:              slti         s1, t1, -734
941:              auipc        ra, 52084
                  lui          s10, 104410
943:              sub          s1, s1, t2
                  slt          t4, gp, a1
945:              srli         ra, s8, 10
                  slt          s10, s3, a6
                  or           a3, ra, s6
                  slli         s8, gp, 18
                  blt          zero, a5, 959f
                  or           s4, gp, s6
                  sltiu        t3, s7, 538
                  slli         a2, t4, 7
                  lui          a4, 361687
954:              bgeu         t4, ra, 959f
                  and          s1, s2, tp
                  sltiu        a3, s9, -897
957:              xor          s5, t5, gp
                  auipc        a2, 123156
959:              sra          s0, s4, t3
                  ori          tp, sp, 1280
                  sltu         s10, s0, s7
                  auipc        t3, 156099
                  slti         a1, s11, 1178
                  slti         s3, a3, -702
                  ori          a0, a4, 1660
                  srl          a3, s0, s5
                  xor          t5, s11, a4
                  sub          s9, s6, s7
                  ori          a3, s11, -677
                  slli         zero, a0, 25
                  srli         ra, s10, 15
                  beq          s0, s4, 976f
                  beq          a4, ra, 981f
                  srl          t6, a6, a3
                  sub          s1, t0, s10
976:              blt          a1, t4, 985f
                  sra          t3, a1, tp
                  srai         a4, t6, 22
                  addi         s0, tp, -1914
                  add          s8, t0, a5
981:              bltu         s2, a7, 985f
                  slli         a4, t4, 12
                  beq          s1, a0, 985f
                  auipc        t0, 175620
985:              sra          a3, tp, a6
                  or           t2, s5, a6
                  slti         zero, s8, 273
                  sll          s2, t3, a4
                  srai         s10, gp, 10
                  lw           t6, 4(t1)
                  xori         a6, zero, -127
                  add          a1, s11, a2
                  ori          t5, t5, 1193
                  addi         t1, t1, 20
                  and          s11, t1, a0
                  sltu         s8, s11, a1
1412:             addi x12, x31, 1
1412:             jalr x12, x12, 0
sub_2:            and          a2, a0, a7
                  addi         t1, t1, -56
                  srli         a1, s1, 11
                  sub          s11, a7, s5
                  sw           t6, 4(t1)
                  slt          a2, t2, a0
sub_2_1:          jal          t6, 9f
0:                jal          ra, 22f
1:                jal          s2, 6f
2:                jal          a6, 12f
3:                jal          gp, 11f
4:                jal          ra, 23f
5:                jal          ra, 15f
6:                jal          t5, 3b
7:                jal          ra, 21f
8:                jal          s10, 18f
9:                jal          ra, 16f
10:               jal          gp, 4b
11:               jal          ra, 0b
12:               jal          t4, 1b
13:               jal          a4, 25f
14:               jal          ra, 10b
15:               jal          ra, 19f
16:               jal          ra, 26f
17:               jal          ra, 7b
18:               jal          ra, 2b
19:               jal          ra, 24f
20:               jal          s10, 5b
21:               jal          ra, 14b
22:               jal          ra, 27f
23:               jal          ra, 8b
24:               jal          ra, 13b
25:               jal          ra, 17b
26:               jal          s9, 20b
27:               nop
sub_2_2:          jal          t6, 5f
0:                jal          s8, 6f
1:                jal          ra, 0b
2:                jal          ra, 4f
3:                jal          a1, 8f
4:                jal          ra, 13f
5:                jal          a6, 3b
6:                jal          t0, 11f
7:                jal          ra, 9f
8:                jal          ra, 1b
9:                jal          t0, 2b
10:               jal          ra, 7b
11:               jal          t0, 12f
12:               jal          ra, 10b
13:               jal          ra, 14f
14:               nop
sub_2_0:          jal          t6, 7f
0:                jal          ra, 17f
1:                jal          s8, 0b
2:                jal          gp, 4f
3:                jal          ra, 5f
4:                jal          ra, 16f
5:                jal          ra, 10f
6:                jal          ra, 2b
7:                jal          gp, 14f
8:                jal          ra, 13f
9:                jal          ra, 3b
10:               jal          ra, 12f
11:               jal          ra, 9b
12:               jal          ra, 1b
13:               jal          ra, 11b
14:               jal          ra, 15f
15:               jal          t6, 6b
16:               jal          ra, 8b
17:               sltiu        a2, t3, 825
                  bltu         a4, gp, 3f
                  slti         t3, a3, -1953
                  xori         s4, t3, 264
3:                addi         gp, s0, -1371
                  and          s6, t4, tp
                  xor          t5, s0, ra
                  srl          zero, a5, s6
                  bgeu         t1, ra, 13f
                  nop
                  srli         s7, s7, 12
                  srli         s9, s1, 21
                  xor          s5, t0, s7
                  slti         t2, a1, -1348
13:               sltu         s2, t2, a0
                  xor          s0, s4, ra
                  bge          t4, ra, 28f
                  bne          t1, s4, 26f
                  slti         t5, t0, 39
                  slli         zero, s0, 30
                  bgeu         a2, s2, 31f
                  blt          s3, zero, 23f
                  bgeu         a2, s4, 37f
                  lui          a1, 592246
23:               beq          s2, gp, 31f
                  slti         ra, s9, 1023
                  xori         s2, tp, -243
26:               xor          s0, a6, s9
                  sra          tp, s6, t3
28:               ori          a5, a7, 878
                  slt          a4, s4, ra
                  add          s0, s8, s1
31:               andi         t4, sp, -1187
                  nop
                  nop
                  la           a2, sub_5
                  andi         a4, s10, -930
                  and          ra, ra, t0
                  addi         a2, a2, -254
                  slti         s4, s6, 1562
                  bne          a4, s2, sub_2_j5 #branch to jump instr
                  nop
                  xor          a0, s1, s0
                  srli         zero, sp, 16
                  xor          t3, s10, a5
sub_2_j5:         jalr         t6, a2, 254 #jump sub_2 -> sub_5
                  bge          s6, gp, 40f
                  addi         s1, s11, 902
                  ori          a2, a5, 590
                  beq          tp, t1, 42f
37:               beq          s9, a5, 53f
                  bne          s9, t3, 49f
                  and          t6, t0, a5
40:               sll          a5, s1, a7
                  xori         s6, t5, 357
42:               andi         s6, t2, 922
                  beq          t4, s6, 49f
                  slt          s10, a3, t1
                  addi         a0, t0, -1529
                  and          tp, a3, a7
                  slt          t4, tp, a3
                  sra          s8, s8, a7
49:               beq          t2, s4, 59f
                  beq          s2, a3, 51f
51:               add          s3, tp, ra
                  bne          tp, t4, 55f
53:               bne          sp, s1, 63f
                  sra          s0, gp, a5
55:               slli         a1, tp, 13
                  sll          a1, a7, s5
                  sra          s4, a2, s5
                  sub          s8, s10, s6
59:               bne          s6, a4, 70f
                  bge          s11, s9, 66f
                  add          ra, a2, a5
                  andi         a0, t1, -1800
63:               ori          a3, s1, 245
                  ori          t5, t6, -1657
                  sltiu        t6, s3, -1674
66:               nop
                  sra          tp, sp, a6
                  slti         t2, zero, -1237
                  bgeu         ra, t4, 73f
70:               or           t4, s4, t3
                  xori         t0, a3, -744
                  slli         s9, s2, 6
73:               nop
                  ori          a6, s4, -1878
                  or           s2, zero, t3
                  nop
                  sub          ra, a4, s1
                  addi         s2, s8, 2014
                  sltiu        t5, a2, -317
                  slt          s6, s9, a5
                  sub          s3, t5, s10
                  andi         s9, t3, 1075
                  srli         s9, a1, 14
                  beq          zero, a7, 94f
                  sra          s2, t3, a0
                  lui          s1, 64442
                  auipc        s5, 999843
                  ori          a6, s6, -177
                  sll          s6, s6, tp
                  slt          a3, a2, a0
                  slti         a5, a6, -562
                  or           a6, a7, s10
                  addi         s10, s6, -1464
94:               slli         a1, zero, 31
                  sltu         t2, t6, t4
                  blt          t5, a7, 102f
                  xor          a3, s8, t5
                  srli         s8, t1, 3
                  sub          s9, t2, ra
                  bgeu         t4, t1, 113f
                  sltu         gp, gp, gp
102:              or           t2, t0, tp
                  slli         a5, zero, 3
                  beq          s7, s10, 118f
                  beq          a0, s0, 109f
                  and          a1, s1, s0
                  sltiu        s3, a7, -1298
                  srai         s6, a1, 15
109:              slt          a1, s0, t3
                  slti         s9, s1, 274
                  and          s4, a4, t4
                  bne          s11, t5, 117f
113:              slli         s2, s0, 22
                  add          t4, tp, t2
                  nop
                  addi         t2, s10, 1283
117:              bgeu         zero, a2, 135f
118:              nop
                  nop
                  or           t6, t4, s1
                  slli         t0, a2, 19
                  sub          s6, s6, sp
                  xor          a1, gp, s7
                  slli         a2, s9, 8
                  xori         s9, t0, 540
                  xori         a5, sp, -1046
                  bge          t2, a7, 145f
                  slt          s7, s8, s6
                  xori         s5, t5, -150
                  addi         s10, a1, -151
                  nop
                  bltu         a0, s9, 137f
                  ori          a6, s8, -138
                  xor          t5, zero, s5
135:              bltu         t3, s9, 143f
                  sra          s7, a6, a4
137:              addi         s1, a0, 22
                  bge          s1, a6, 142f
                  and          s9, s4, s8
                  bge          t0, a0, 146f
                  beq          a0, t1, 146f
142:              beq          a5, t4, 148f
143:              blt          t5, s3, 149f
                  lui          s2, 487084
145:              srli         a5, t2, 24
146:              slti         s9, gp, -1675
                  srai         s8, sp, 23
148:              bge          t5, s1, 152f
149:              ori          a0, s7, -1006
                  xori         a5, tp, 875
                  blt          sp, a0, 152f
152:              ori          s0, s3, -1019
                  lui          ra, 109142
                  add          s9, tp, t5
                  xor          t4, a1, t6
                  andi         s0, s7, -1946
                  lw           t6, 4(t1)
                  addi         t1, t1, 56
                  sll          s6, s7, s11
                  ori          a3, s8, 1445
                  auipc        zero, 65811
244:              addi x8, x31, 0
244:              jalr x8, x8, 0
sub_1:            addi         t1, t1, -60
                  srai         tp, s7, 20
                  sltu         s1, a3, ra
                  and          s0, s11, a2
                  sw           t6, 4(t1)
                  slt          t5, a0, s1
                  nop
                  andi         s7, t5, 833
                  and          ra, s2, a7
                  andi         s8, sp, -1918
                  add          t5, s0, ra
                  sltu         s10, s11, s9
                  auipc        t6, 484644
                  srai         t5, s8, 30
                  la           a1, sub_2
                  sra          s8, t2, t3
                  xori         a2, s10, -1180
                  addi         a1, a1, 827
                  or           a2, s2, ra
sub_1_j2:         jalr         t6, a1, -826 #jump sub_1 -> sub_2
                  and          s4, t1, a6
                  xor          a1, t3, ra
                  beq          t6, a7, sub_1_j3 #branch to jump instr
                  slti         t5, t5, -1823
                  and          s9, t3, s2
                  slli         t5, t0, 25
                  nop
sub_1_j3:         jal          t6, sub_3 #jump sub_1 -> sub_3
                  auipc        t3, 1045766
                  sra          s3, s8, s10
                  ori          s4, t0, -42
                  lui          a6, 632719
                  auipc        a6, 965359
sub_1_j4:         jal          t6, sub_4 #jump sub_1 -> sub_4
sub_1_0:          jal          t6, 15f
0:                jal          ra, 11f
1:                jal          ra, 16f
2:                jal          s7, 14f
3:                jal          ra, 8f
4:                jal          ra, 2b
5:                jal          ra, 6f
6:                jal          ra, 12f
7:                jal          ra, 10f
8:                jal          ra, 4b
9:                jal          a2, 3b
10:               jal          t0, 1b
11:               jal          s7, 5b
12:               jal          ra, 9b
13:               jal          a0, 7b
14:               jal          gp, 17f
15:               jal          s8, 13b
16:               jal          ra, 0b
17:               xori         a4, a5, -1500
                  auipc        t4, 183977
                  bltu         a7, a0, 16f
                  slli         t5, s7, 29
                  bltu         t4, ra, 6f
                  slli         s2, s7, 25
                  auipc        a2, 602096
6:                xor          s7, s0, a3
                  andi         a1, t1, -1107
                  or           zero, zero, s5
                  or           a3, t1, s9
                  blt          a5, s8, 29f
                  bgeu         s1, s3, 31f
                  sll          tp, t2, s4
                  slt          s4, a3, s2
                  and          a1, tp, a7
                  slti         s11, a3, -107
16:               addi         t3, s9, -1328
                  addi         s4, s2, 10
                  bne          a3, tp, 24f
                  andi         s7, a3, 252
                  ori          s7, a3, -1859
                  slti         a1, s6, 1067
                  srl          a4, s3, t3
                  slli         t5, a2, 5
24:               sltiu        s4, a5, -172
                  sll          s4, a2, s6
                  beq          sp, a6, 34f
                  blt          s1, tp, 28f
28:               sub          t2, t1, ra
29:               addi         t5, s1, -1764
                  or           s5, a3, s4
31:               sub          s2, zero, a0
                  srli         s2, a0, 8
                  addi         t3, t6, 318
34:               sra          t4, ra, a6
                  andi         a1, s9, 233
                  sltiu        a1, s2, 1019
                  add          t5, tp, s0
                  bne          a7, sp, 47f
                  sub          gp, s3, s0
                  beq          s1, a4, 55f
                  auipc        t4, 191845
                  add          a0, s0, t3
                  auipc        tp, 547415
                  srl          a3, a4, s6
                  bgeu         s1, t6, 47f
                  slti         s10, s0, -1384
47:               xori         s4, t3, -357
                  bge          s1, gp, 65f
                  srli         s5, t2, 23
                  srai         s3, t3, 14
                  beq          s9, a7, 61f
                  sltiu        s6, t2, 908
                  sltiu        a5, a3, -372
                  xor          t5, a5, s8
55:               srli         s2, t1, 13
                  nop
                  sltiu        s4, t5, 960
                  sll          t5, s5, s11
                  srl          t3, s0, s10
                  or           a2, t3, t1
61:               beq          a0, a3, 77f
                  auipc        t3, 748251
                  addi         a6, ra, 338
                  bge          a4, s7, 73f
65:               bgeu         s10, tp, 81f
                  blt          s3, a0, 86f
                  srl          s6, a5, sp
                  blt          a7, a6, 78f
                  add          s7, s8, gp
                  sub          t6, t0, gp
                  ori          s5, s11, 134
                  srai         zero, s1, 31
73:               or           s10, sp, a2
                  blt          ra, a4, 86f
                  bne          s1, t6, 79f
                  sra          ra, s11, a1
77:               andi         s9, s7, -1255
78:               bge          t6, s5, 86f
79:               sra          s8, t6, a6
                  sll          t5, t6, a1
81:               and          t0, s0, gp
                  nop
                  beq          s4, tp, 86f
                  lui          s11, 614734
                  sll          a3, ra, t3
86:               slti         tp, gp, 1471
                  lui          s9, 667075
                  nop
                  sub          a4, s1, t0
                  or           s9, tp, a2
                  sub          a2, zero, t5
                  lw           t6, 4(t1)
                  addi         t1, t1, 60
                  andi         gp, a1, -347
                  sltiu        a2, a5, -1082
                  sra          t2, a3, s0
                  xor          t5, s11, s1
151:              addi x28, x31, 1
151:              jalr x28, x28, 0
sub_5:            ori          a6, a3, 774
                  srl          gp, s1, s11
                  andi         a0, tp, -994
                  addi         t1, t1, -60
                  srli         t3, a7, 31
                  slti         t3, s1, 1658
                  sw           t6, 4(t1)
                  xori         s0, a2, 1285
                  auipc        t4, 1020792
                  srl          s10, t5, a7
                  sll          t0, t6, s0
                  srai         gp, s5, 15
sub_5_6:          jal          t6, 4f
0:                jal          tp, 3f
1:                jal          ra, 5f
2:                jal          ra, 0b
3:                jal          ra, 9f
4:                jal          t0, 7f
5:                jal          s7, 8f
6:                jal          ra, 1b
7:                jal          ra, 6b
8:                jal          ra, 2b
9:                jal          ra, 10f
10:               addi         t2, s1, -366
sub_5_2:          jal          t6, 2f
0:                jal          ra, 11f
1:                jal          ra, 6f
2:                jal          a1, 8f
3:                jal          t0, 21f
4:                jal          s1, 9f
5:                jal          ra, 1b
6:                jal          ra, 18f
7:                jal          ra, 5b
8:                jal          a3, 0b
9:                jal          a1, 7b
10:               jal          ra, 19f
11:               jal          ra, 14f
12:               jal          ra, 10b
13:               jal          ra, 4b
14:               jal          ra, 17f
15:               jal          ra, 13b
16:               jal          ra, 12b
17:               jal          ra, 15b
18:               jal          s6, 16b
19:               jal          ra, 20f
20:               jal          ra, 3b
21:               lui          s8, 954002
sub_5_12:         jal          t6, 6f
0:                jal          t4, 12f
1:                jal          s10, 5f
2:                jal          ra, 1b
3:                jal          ra, 13f
4:                jal          t4, 7f
5:                jal          ra, 14f
6:                jal          ra, 2b
7:                jal          ra, 11f
8:                jal          a5, 9f
9:                jal          a2, 4b
10:               jal          ra, 3b
11:               jal          s7, 0b
12:               jal          ra, 10b
13:               jal          s1, 16f
14:               jal          ra, 15f
15:               jal          s11, 8b
16:               sltu         tp, zero, a1
sub_5_19:         jal          t6, 4f
0:                jal          t0, 12f
1:                jal          t0, 0b
2:                jal          ra, 18f
3:                jal          ra, 22f
4:                jal          s7, 3b
5:                jal          ra, 2b
6:                jal          ra, 28f
7:                jal          ra, 1b
8:                jal          a6, 24f
9:                jal          gp, 13f
10:               jal          tp, 11f
11:               jal          s4, 5b
12:               jal          t6, 8b
13:               jal          ra, 15f
14:               jal          ra, 16f
15:               jal          t0, 26f
16:               jal          ra, 19f
17:               jal          gp, 9b
18:               jal          a2, 7b
19:               jal          ra, 17b
20:               jal          a6, 27f
21:               jal          ra, 6b
22:               jal          ra, 14b
23:               jal          a1, 25f
24:               jal          ra, 23b
25:               jal          ra, 20b
26:               jal          ra, 10b
27:               jal          ra, 21b
28:               lui          s5, 418345
sub_5_14:         jal          t6, 18f
0:                jal          ra, 12f
1:                jal          t6, 0b
2:                jal          ra, 10f
3:                jal          ra, 4f
4:                jal          s2, 6f
5:                jal          s2, 16f
6:                jal          ra, 5b
7:                jal          ra, 3b
8:                jal          t0, 19f
9:                jal          ra, 8b
10:               jal          t3, 7b
11:               jal          ra, 13f
12:               jal          ra, 11b
13:               jal          t2, 15f
14:               jal          ra, 9b
15:               jal          ra, 17f
16:               jal          ra, 14b
17:               jal          ra, 2b
18:               jal          gp, 1b
19:               or           s5, a0, s1
sub_5_10:         jal          t6, 2f
0:                jal          tp, 7f
1:                jal          ra, 0b
2:                jal          ra, 9f
3:                jal          s8, 1b
4:                jal          ra, 5f
5:                jal          s4, 11f
6:                jal          t6, 4b
7:                jal          tp, 8f
8:                jal          tp, 10f
9:                jal          tp, 3b
10:               jal          ra, 6b
11:               ori          s6, s11, 94
sub_5_13:         jal          t6, 10f
0:                jal          ra, 4f
1:                jal          a0, 9f
2:                jal          ra, 24f
3:                jal          ra, 2b
4:                jal          ra, 25f
5:                jal          ra, 18f
6:                jal          ra, 11f
7:                jal          gp, 5b
8:                jal          tp, 12f
9:                jal          ra, 23f
10:               jal          s9, 14f
11:               jal          a4, 22f
12:               jal          t6, 15f
13:               jal          ra, 1b
14:               jal          ra, 20f
15:               jal          s6, 16f
16:               jal          s0, 0b
17:               jal          ra, 7b
18:               jal          ra, 21f
19:               jal          t2, 6b
20:               jal          ra, 13b
21:               jal          ra, 19b
22:               jal          ra, 8b
23:               jal          s8, 3b
24:               jal          ra, 17b
25:               sll          s2, a7, a1
sub_5_0:          jal          t6, 23f
0:                jal          ra, 13f
1:                jal          a2, 24f
2:                jal          tp, 29f
3:                jal          ra, 11f
4:                jal          ra, 17f
5:                jal          t2, 28f
6:                jal          ra, 5b
7:                jal          ra, 3b
8:                jal          ra, 25f
9:                jal          ra, 15f
10:               jal          ra, 6b
11:               jal          a2, 2b
12:               jal          t0, 22f
13:               jal          s9, 8b
14:               jal          ra, 18f
15:               jal          ra, 12b
16:               jal          ra, 27f
17:               jal          ra, 1b
18:               jal          s5, 26f
19:               jal          tp, 7b
20:               jal          s11, 10b
21:               jal          ra, 9b
22:               jal          s10, 4b
23:               jal          ra, 16b
24:               jal          ra, 20b
25:               jal          s11, 19b
26:               jal          ra, 21b
27:               jal          ra, 14b
28:               jal          tp, 0b
29:               auipc        ra, 793272
sub_5_9:          jal          t6, 6f
0:                jal          ra, 11f
1:                jal          a4, 12f
2:                jal          t6, 19f
3:                jal          tp, 1b
4:                jal          ra, 17f
5:                jal          ra, 18f
6:                jal          ra, 14f
7:                jal          a6, 9f
8:                jal          s3, 2b
9:                jal          t3, 10f
10:               jal          ra, 3b
11:               jal          ra, 5b
12:               jal          tp, 8b
13:               jal          a2, 16f
14:               jal          ra, 7b
15:               jal          tp, 13b
16:               jal          ra, 0b
17:               jal          gp, 20f
18:               jal          ra, 4b
19:               jal          t0, 15b
20:               addi         ra, t1, -283
sub_5_5:          jal          t6, 4f
0:                jal          t0, 5f
1:                jal          tp, 3f
2:                jal          t4, 12f
3:                jal          s0, 6f
4:                jal          s3, 16f
5:                jal          ra, 7f
6:                jal          ra, 0b
7:                jal          gp, 14f
8:                jal          a6, 11f
9:                jal          ra, 2b
10:               jal          a1, 17f
11:               jal          gp, 18f
12:               jal          ra, 10b
13:               jal          ra, 15f
14:               jal          t3, 13b
15:               jal          ra, 8b
16:               jal          gp, 9b
17:               jal          t0, 1b
18:               add          s9, s8, a4
sub_5_7:          jal          t6, 17f
0:                jal          ra, 18f
1:                jal          ra, 11f
2:                jal          ra, 1b
3:                jal          tp, 8f
4:                jal          ra, 15f
5:                jal          ra, 16f
6:                jal          ra, 12f
7:                jal          ra, 3b
8:                jal          ra, 0b
9:                jal          ra, 10f
10:               jal          t5, 14f
11:               jal          gp, 9b
12:               jal          s6, 4b
13:               jal          tp, 6b
14:               jal          ra, 5b
15:               jal          ra, 2b
16:               jal          ra, 7b
17:               jal          t0, 13b
18:               srli         gp, s0, 6
sub_5_15:         jal          t6, 7f
0:                jal          ra, 1f
1:                jal          ra, 8f
2:                jal          s9, 11f
3:                jal          a4, 9f
4:                jal          ra, 2b
5:                jal          gp, 10f
6:                jal          s2, 3b
7:                jal          ra, 0b
8:                jal          ra, 4b
9:                jal          ra, 12f
10:               jal          t4, 6b
11:               jal          ra, 5b
12:               xori         a2, a4, 869
sub_5_18:         jal          t6, 19f
0:                jal          ra, 21f
1:                jal          ra, 15f
2:                jal          ra, 17f
3:                jal          a1, 2b
4:                jal          ra, 25f
5:                jal          ra, 14f
6:                jal          ra, 5b
7:                jal          gp, 24f
8:                jal          ra, 12f
9:                jal          ra, 0b
10:               jal          ra, 27f
11:               jal          ra, 13f
12:               jal          a1, 4b
13:               jal          t2, 7b
14:               jal          ra, 22f
15:               jal          ra, 20f
16:               jal          ra, 11b
17:               jal          s7, 23f
18:               jal          a0, 3b
19:               jal          ra, 10b
20:               jal          ra, 28f
21:               jal          tp, 8b
22:               jal          ra, 26f
23:               jal          ra, 6b
24:               jal          ra, 18b
25:               jal          ra, 16b
26:               jal          ra, 1b
27:               jal          ra, 9b
28:               ori          zero, tp, -183
sub_5_17:         jal          t6, 16f
0:                jal          ra, 2f
1:                jal          ra, 15f
2:                jal          t0, 24f
3:                jal          tp, 29f
4:                jal          ra, 20f
5:                jal          ra, 7f
6:                jal          ra, 8f
7:                jal          s8, 13f
8:                jal          ra, 18f
9:                jal          gp, 19f
10:               jal          a6, 17f
11:               jal          ra, 22f
12:               jal          ra, 0b
13:               jal          ra, 21f
14:               jal          ra, 30f
15:               jal          ra, 12b
16:               jal          ra, 25f
17:               jal          s0, 28f
18:               jal          s7, 3b
19:               jal          ra, 11b
20:               jal          gp, 6b
21:               jal          gp, 14b
22:               jal          ra, 4b
23:               jal          s3, 27f
24:               jal          ra, 9b
25:               jal          ra, 23b
26:               jal          ra, 10b
27:               jal          s3, 1b
28:               jal          s8, 5b
29:               jal          ra, 26b
30:               lui          s0, 1015671
sub_5_11:         jal          t6, 10f
0:                jal          ra, 8f
1:                jal          ra, 3f
2:                jal          ra, 9f
3:                jal          s11, 4f
4:                jal          ra, 0b
5:                jal          a0, 7f
6:                jal          ra, 1b
7:                jal          ra, 6b
8:                jal          ra, 2b
9:                jal          t0, 11f
10:               jal          tp, 5b
11:               sra          a3, s5, t1
sub_5_3:          jal          t6, 7f
0:                jal          t2, 2f
1:                jal          ra, 12f
2:                jal          s4, 6f
3:                jal          s0, 15f
4:                jal          ra, 8f
5:                jal          ra, 11f
6:                jal          s5, 4b
7:                jal          ra, 9f
8:                jal          ra, 1b
9:                jal          s11, 10f
10:               jal          ra, 13f
11:               jal          ra, 3b
12:               jal          s6, 5b
13:               jal          gp, 14f
14:               jal          ra, 0b
15:               srai         t4, s10, 14
sub_5_20:         jal          t6, 2f
0:                jal          ra, 1f
1:                jal          ra, 12f
2:                jal          tp, 9f
3:                jal          a5, 14f
4:                jal          ra, 0b
5:                jal          t4, 7f
6:                jal          ra, 4b
7:                jal          ra, 11f
8:                jal          ra, 3b
9:                jal          ra, 5b
10:               jal          ra, 13f
11:               jal          gp, 10b
12:               jal          s11, 8b
13:               jal          tp, 6b
14:               slti         a3, t3, 964
sub_5_21:         jal          t6, 3f
0:                jal          ra, 10f
1:                jal          tp, 22f
2:                jal          s6, 20f
3:                jal          t0, 19f
4:                jal          a4, 0b
5:                jal          t3, 4b
6:                jal          a3, 13f
7:                jal          ra, 16f
8:                jal          s8, 12f
9:                jal          ra, 8b
10:               jal          t0, 18f
11:               jal          gp, 5b
12:               jal          a6, 7b
13:               jal          ra, 24f
14:               jal          tp, 25f
15:               jal          ra, 2b
16:               jal          ra, 26f
17:               jal          ra, 11b
18:               jal          ra, 27f
19:               jal          ra, 1b
20:               jal          a4, 6b
21:               jal          ra, 9b
22:               jal          s4, 15b
23:               jal          ra, 14b
24:               jal          ra, 23b
25:               jal          s10, 21b
26:               jal          ra, 17b
27:               andi         a6, t0, -1717
                  srai         s4, gp, 10
                  nop
                  auipc        a3, 598131
                  bne          a1, a4, 17f
                  slti         a1, t5, 726
                  bltu         t5, s5, 25f
                  ori          s4, t1, 704
                  sub          t3, gp, t2
                  sll          a2, s2, zero
                  ori          ra, a7, 1464
                  bge          s10, s4, 14f
                  sltiu        a5, s11, -1317
                  auipc        s1, 216537
                  slli         t4, a0, 22
14:               bne          t0, tp, 29f
                  srli         a5, s3, 8
                  slt          s9, gp, s11
17:               or           s1, s8, t1
                  andi         s11, s4, -1078
                  srai         s4, ra, 21
                  sltu         a2, s0, s4
                  bgeu         s10, s6, 26f
                  bltu         s2, a0, 23f
23:               addi         s11, ra, -1748
                  add          s6, t0, a7
25:               srl          gp, t0, t3
26:               ori          s10, t2, -119
                  beq          s9, s8, 45f
                  sub          t6, a1, s11
29:               addi         a5, s2, 353
                  bge          zero, t6, 38f
                  auipc        a6, 944210
                  srl          ra, t2, a1
                  sra          a1, t0, t4
                  and          t6, a7, t4
                  slti         s7, a1, 146
                  addi         tp, s1, 330
                  sub          t2, t5, t1
38:               bltu         a7, s10, 53f
                  srl          s2, t5, s2
                  xori         zero, s3, -1629
                  sra          s4, s0, s4
                  sll          t3, t3, a3
                  srl          a6, s8, s11
                  or           zero, s7, s10
45:               auipc        a6, 113270
                  beq          a1, a4, 65f
                  andi         s10, t2, -1602
                  bgeu         s7, s10, 49f
49:               bne          a7, t2, 66f
                  sra          s5, s0, s2
                  xori         gp, a5, -1929
                  add          s5, t2, a6
53:               bne          t4, sp, 67f
                  sltu         s9, ra, tp
                  sra          a1, tp, s10
                  blt          s6, a2, 70f
                  auipc        a2, 964554
                  srli         s2, t0, 14
                  xor          s0, s2, a1
                  beq          t0, s2, 64f
                  bge          s1, t2, 66f
                  xor          s2, t5, ra
                  srli         s3, s0, 21
64:               sltiu        s11, s8, 495
65:               ori          tp, s4, -1659
66:               bge          t5, t5, 86f
67:               sra          t0, tp, gp
                  sltu         gp, a4, a1
                  sltu         s10, a6, s0
70:               bltu         t0, t0, 80f
                  beq          s2, t5, 74f
                  sra          a4, t3, a6
                  slti         t3, t0, -6
74:               sltiu        a0, s8, -614
                  slti         s0, gp, 58
                  sltiu        a2, a2, -1151
                  add          s8, a4, t0
                  sltu         a4, sp, s3
                  xori         s11, t2, 726
80:               add          a0, t4, tp
                  sub          t5, s9, a5
                  blt          sp, t4, 89f
                  srai         a3, zero, 2
                  srli         t3, a5, 6
                  auipc        a5, 676584
86:               sltiu        s1, a0, 900
                  srli         a2, t2, 31
                  srai         gp, a1, 4
89:               srai         a3, t6, 13
                  and          ra, s8, a0
                  srl          a4, s1, sp
                  sltu         zero, a3, gp
                  ori          s4, s4, -123
                  ori          a0, a2, -1098
                  bne          t0, zero, 109f
                  sltiu        t0, t3, -798
                  sra          a6, s6, t2
                  sub          t4, s8, s10
                  nop
                  bge          gp, a7, 108f
                  addi         s6, sp, -1814
                  add          s9, a5, s4
                  sra          gp, s2, s2
                  lui          s11, 350035
                  sub          gp, s10, s1
                  sltu         zero, s4, s10
                  xori         s4, a0, 1118
108:              slt          gp, s3, t5
109:              srai         s7, zero, 14
                  addi         t5, s10, -1181
                  or           zero, a1, a3
                  bne          s8, a0, 122f
                  lui          zero, 339609
                  add          s2, s10, s9
                  and          a1, s5, a6
                  add          s6, gp, t5
                  slli         t5, tp, 2
                  beq          s9, t6, 119f
119:              beq          ra, s9, 122f
                  bge          a1, s1, 137f
                  bne          gp, a2, 128f
122:              xori         s3, t0, -846
                  blt          s5, t1, 131f
                  bgeu         a5, s10, 140f
                  bne          a5, t3, 127f
                  sra          s4, s6, a7
127:              srl          t2, t1, s5
128:              or           s5, s1, t6
                  and          s1, s11, gp
                  lui          a2, 1003021
131:              bge          s11, tp, 135f
                  nop
                  sra          t6, t5, s4
                  sub          a0, a0, a2
135:              lui          ra, 11474
                  lui          a4, 963392
137:              sltiu        tp, t4, -215
sub_5_16:         jal          t6, 0f
0:                jal          a3, 11f
1:                jal          s4, 3f
2:                jal          ra, 7f
3:                jal          ra, 14f
4:                jal          ra, 12f
5:                jal          ra, 2b
6:                jal          s8, 4b
7:                jal          ra, 10f
8:                jal          ra, 9f
9:                jal          ra, 6b
10:               jal          ra, 13f
11:               jal          ra, 5b
12:               jal          s0, 1b
13:               jal          ra, 8b
14:               or           s6, s10, a2
                  auipc        s11, 1021892
                  ori          s9, t6, 250
140:              slti         a0, s0, 11
                  srai         a1, t4, 12
                  sll          t2, t4, tp
                  sltiu        s5, s5, 950
                  addi         s2, s10, -477
                  and          t3, zero, t0
                  srai         t5, s10, 8
                  sltiu        s8, s5, 1287
                  bgeu         s0, zero, 168f
                  addi         s4, t6, -1836
                  sub          s11, s3, s11
                  slli         t4, ra, 19
                  addi         s6, ra, -1291
                  bltu         s9, a5, 170f
                  slti         t2, s1, 1024
                  sra          s6, gp, t1
                  sub          s11, s3, a3
                  bltu         s8, s9, 164f
                  slt          s10, t5, zero
                  add          s8, a6, s2
                  bltu         t5, s11, 176f
                  slti         s2, s5, -1988
                  lui          zero, 157323
                  add          s8, s0, zero
164:              andi         t4, t4, 1697
                  bne          a0, sp, 179f
                  lui          t6, 294851
                  nop
168:              bgeu         a5, s7, 173f
                  sub          s2, s2, a4
170:              slti         gp, s0, -1691
                  bne          a4, t4, 186f
                  srai         a3, a7, 15
173:              srl          s3, zero, a1
                  nop
                  addi         a3, a3, -923
176:              sub          s4, s3, t6
                  xor          a4, zero, s0
                  and          zero, s2, tp
179:              slti         zero, a5, 1579
                  blt          s6, a7, 183f
                  bne          a7, tp, 189f
                  addi         a4, a7, -934
183:              slt          a0, t4, s10
                  beq          a0, s10, 199f
                  bne          a1, t3, 193f
186:              bgeu         t5, s4, 190f
                  or           s10, t4, s4
                  bge          sp, s7, 207f
189:              sub          a5, ra, ra
190:              sltiu        a2, a4, -881
                  slli         t5, a3, 1
                  bge          s3, t1, 193f
193:              bltu         sp, a1, 198f
                  auipc        s2, 247479
                  bne          t4, a5, 196f
196:              srai         t6, t1, 28
                  or           t5, a5, t2
198:              and          ra, t6, s2
199:              bgeu         t4, s4, 209f
                  add          s5, zero, a6
                  add          a5, t3, a3
                  slt          t3, s10, s10
                  slti         ra, s6, -204
                  and          a0, a7, s1
                  ori          gp, s10, 660
                  bltu         a3, gp, 214f
207:              or           s7, a7, zero
                  srai         t3, a3, 26
209:              nop
                  srai         t5, t5, 27
                  sll          s0, s1, s9
                  slli         zero, a2, 27
                  beq          s3, ra, 223f
214:              sll          tp, s3, ra
sub_5_8:          jal          t6, 2f
0:                jal          ra, 3f
1:                jal          ra, 9f
2:                jal          ra, 8f
3:                jal          ra, 6f
4:                jal          ra, 0b
5:                jal          gp, 10f
6:                jal          ra, 7f
7:                jal          s6, 1b
8:                jal          s1, 5b
9:                jal          ra, 11f
10:               jal          t0, 4b
11:               nop
                  blt          a7, s2, 232f
                  ori          s8, s11, -260
                  blt          zero, s2, 235f
                  sltu         s1, s1, t4
                  slli         a5, t1, 10
                  add          s2, t4, sp
                  sltiu        zero, zero, -237
                  or           a4, t1, s2
223:              beq          t6, a5, 226f
                  sltiu        s6, t2, 728
                  srli         s4, t6, 9
226:              srl          t0, gp, zero
                  sll          t5, a2, a5
                  srai         a4, a1, 19
                  xor          s4, s6, a7
                  add          ra, t4, s11
                  ori          s11, a4, -1791
232:              xor          a3, t3, a3
                  and          a2, t5, a1
                  auipc        s8, 571277
235:              sll          a5, s5, s2
                  bltu         zero, a1, 250f
                  or           a1, a5, t1
                  sll          tp, a2, t0
                  beq          s11, zero, 246f
                  bne          s11, t1, 242f
                  and          a4, zero, ra
242:              sll          a0, s2, s0
                  slt          s0, t0, t0
                  auipc        t2, 368546
                  bltu         t1, s2, 265f
246:              slti         a6, t3, -880
                  sltiu        s2, s4, -1607
                  add          a0, a2, s0
                  nop
250:              add          s7, t5, t5
                  sltu         tp, gp, t5
                  srl          s1, s7, gp
                  sltu         s2, t3, s6
                  sra          t4, a4, t1
                  and          a6, s4, tp
                  slt          s1, zero, s8
                  sltiu        t5, a4, -1393
                  sra          gp, a7, s10
                  add          a1, a1, a3
                  bge          gp, ra, 274f
                  sra          s2, tp, t5
                  sltu         a3, t0, t6
                  and          s1, t0, s2
                  beq          s4, a5, 265f
265:              slli         s9, a4, 31
                  addi         s8, a2, 685
                  andi         ra, s6, 876
                  sll          s4, s7, s2
                  or           t0, s7, s7
                  slti         ra, sp, 2036
                  and          tp, s9, t4
                  srli         a3, a1, 5
                  bgeu         t1, a6, 287f
274:              add          zero, a1, t6
                  bltu         s2, s1, 279f
                  slli         s1, t5, 13
                  srli         s2, a6, 11
                  lui          a1, 622667
279:              andi         a0, s6, 0
                  lui          s3, 974457
                  addi         t2, sp, -1205
                  bne          s5, zero, 299f
                  blt          sp, t6, 288f
                  and          a6, zero, s0
                  sub          s3, a2, s1
                  bltu         zero, gp, 296f
287:              xor          s6, a0, s2
288:              andi         t4, s4, 971
                  or           s7, s2, ra
                  beq          a2, a0, 304f
                  srl          s0, t5, a1
                  beq          gp, s8, 311f
                  add          t5, gp, s4
                  or           a6, s0, s11
                  ori          a5, a0, 995
296:              andi         s4, a7, -1836
                  sltiu        s5, sp, 747
                  ori          s5, t2, -1482
299:              ori          s0, t1, -1444
                  bgeu         s4, a4, 308f
                  bne          a4, s4, 302f
302:              addi         s6, s4, -1628
                  sltu         s11, a7, a0
304:              sub          s0, t5, a1
                  sll          a4, s1, ra
                  sltu         s8, a1, s2
                  and          a0, t4, s4
308:              ori          s1, a1, -522
                  sltu         a6, a2, s9
                  and          t5, a5, s7
311:              auipc        t2, 431959
                  slti         t4, s2, -537
                  add          s6, t4, t6
                  or           s4, t1, s1
                  slti         a6, s0, 1490
                  auipc        s11, 741481
                  srli         t2, a6, 29
                  slti         ra, t1, 879
                  andi         ra, zero, -50
                  or           t2, s7, s10
                  or           tp, a0, a1
                  sra          t6, s3, ra
                  sra          s5, a2, s10
                  sub          ra, a6, t3
                  sub          a6, s1, a1
                  ori          s10, s10, -1490
                  slti         ra, a1, -1699
                  srl          t0, a3, a1
                  xor          s11, s0, t3
                  andi         s0, s4, -1574
                  and          t5, s8, a0
                  slt          s7, t4, s0
                  addi         s5, zero, -1977
                  lui          zero, 547461
                  srli         a5, ra, 19
                  bgeu         t0, a6, 343f
                  sltiu        a5, s0, 1087
                  and          t0, a7, t1
                  ori          s2, s10, 1440
                  blt          s9, s9, 354f
                  sub          t5, sp, t0
                  and          t6, tp, s5
343:              srai         s1, t1, 22
                  sltiu        s7, s6, 341
                  ori          a0, a1, -1911
                  ori          s1, a4, 168
                  add          t3, t1, s3
                  lui          s4, 21939
                  beq          s10, s3, 350f
350:              andi         s4, t5, -248
                  srai         s5, s6, 14
                  andi         ra, s10, -216
                  lui          s2, 1036251
354:              bne          a3, a2, 362f
                  beq          s3, t1, 372f
                  sra          s9, s9, s6
                  auipc        a1, 687330
                  srli         s7, s0, 28
                  or           t6, tp, s5
                  srli         s6, s5, 28
                  ori          t2, a2, 1523
362:              beq          a3, s7, 367f
                  srl          s8, s0, t0
                  sltiu        s7, s6, -1660
                  or           s1, s10, a6
                  ori          a0, sp, 914
367:              beq          ra, s4, 381f
                  bgeu         s1, t5, 378f
                  sltu         tp, sp, t5
                  lui          a0, 720878
                  lui          a6, 404567
372:              srai         gp, s9, 21
                  srli         s11, s0, 21
                  srli         a0, gp, 27
                  slti         s4, s5, -722
                  bge          t2, sp, 396f
                  and          zero, t4, t2
378:              blt          s10, ra, 380f
                  lui          a1, 947198
380:              sra          gp, s5, zero
381:              srli         s4, t1, 31
                  bge          a6, t3, 385f
                  xor          s3, a7, a1
                  add          ra, s10, ra
385:              bgeu         t3, a0, 405f
                  srl          a5, a0, zero
                  slt          t6, s6, a3
                  slt          s2, a1, s3
                  ori          t6, s8, 1836
                  add          s7, a2, s8
                  auipc        s7, 81004
                  srli         s7, s3, 12
                  and          a4, t2, a6
                  sra          s7, s5, a5
                  nop
396:              beq          s5, t2, 414f
                  srai         s2, s2, 24
                  sub          a6, t5, t1
                  bne          s8, s2, 403f
                  bgeu         s9, s2, 401f
401:              blt          a0, sp, 409f
                  sll          gp, s5, s0
403:              add          t3, a6, s4
                  srli         s1, a4, 1
405:              blt          a0, zero, 420f
                  and          a0, s2, gp
                  auipc        a0, 363154
                  addi         s8, s8, -1407
409:              andi         s6, gp, -1782
                  andi         s5, s3, -1000
                  auipc        a5, 133795
                  slti         a5, s3, -346
                  auipc        s4, 114714
414:              bgeu         a5, s3, 428f
                  slt          s10, s4, a6
                  ori          s3, s2, -1979
                  lui          a4, 881253
                  andi         s10, tp, 198
                  srai         t0, a4, 29
420:              bltu         ra, a0, 436f
                  slti         s8, t6, 2004
                  lui          a5, 842411
                  blt          a0, a3, 438f
                  beq          s1, s3, 427f
                  beq          a2, t3, 432f
                  srai         a2, s3, 31
427:              xor          t0, s7, a6
428:              auipc        s8, 438330
                  bgeu         sp, s5, 433f
                  sub          a2, tp, s6
                  andi         a3, sp, 357
432:              nop
433:              lui          t5, 496246
                  sub          s7, sp, a3
                  bgeu         s9, t3, 450f
436:              xori         t2, t1, -1173
                  andi         s0, t1, -1246
438:              sll          s8, a5, t4
                  xori         t0, a7, -1871
                  add          s0, t5, sp
                  xor          a0, a7, ra
                  sltiu        a4, s8, 1454
                  beq          s1, a7, 450f
                  bltu         s9, s5, 463f
                  srai         s11, t1, 16
                  slti         s7, t3, 1115
                  sub          s5, ra, t2
                  or           a1, a7, t2
                  bge          t4, s6, 457f
450:              sll          zero, a2, t4
                  slt          a5, a7, t6
                  and          t5, tp, a7
                  bne          a6, t6, 455f
                  sra          s8, tp, t4
455:              slt          zero, a6, s11
                  sltu         a3, t0, s11
457:              sll          s9, a0, t3
                  srli         a1, s5, 7
                  sra          a6, t2, s1
                  sltu         gp, a3, t5
                  sll          s0, tp, t3
                  srli         a3, a2, 23
463:              addi         s2, gp, -236
                  slt          a3, t3, a0
                  andi         s6, s7, 1709
                  bge          tp, tp, 467f
467:              sltu         a5, gp, s6
                  xor          t0, sp, t5
                  slt          s7, a6, a3
                  andi         s5, a0, -1428
                  andi         a4, s0, 1167
                  and          s10, a4, s9
                  sltiu        s5, t3, 854
                  beq          s4, a5, 491f
                  xor          t4, a2, s5
                  andi         s2, t4, 1203
                  sltiu        a3, a4, -170
                  bgeu         s9, s2, 486f
                  sub          s1, t6, s6
                  sll          a1, a6, s10
                  sll          ra, a1, t0
                  bgeu         s9, a1, 497f
                  xor          zero, t5, s3
                  bne          t1, s10, 488f
                  sltiu        s11, a3, 1885
486:              nop
                  sltiu        s10, s5, 348
488:              sra          s0, s10, t2
                  xor          s0, s5, s5
                  sltiu        tp, a5, -1109
491:              beq          a5, t3, 498f
                  slli         a4, a2, 23
                  xor          s1, a6, a2
                  sltu         s2, a0, a3
                  or           a0, t1, t6
                  srai         s8, sp, 24
497:              andi         s10, s9, -305
498:              auipc        s7, 547816
                  blt          s7, t4, 513f
                  nop
                  bne          s9, t1, 515f
                  srai         s6, a0, 6
                  addi         s5, s2, -1463
                  xor          s4, ra, s7
                  andi         a4, t6, 1032
                  lui          s9, 116708
                  slli         t0, t3, 27
                  srai         zero, a6, 27
                  sltiu        t6, a7, -1080
                  lui          s4, 325678
                  beq          t6, s7, 516f
                  srli         s9, a7, 13
513:              srai         a2, a2, 22
                  or           s3, zero, a3
515:              bge          a4, t5, 531f
516:              srai         s4, t0, 31
                  slli         a1, a7, 21
                  lui          s6, 329683
                  bge          a6, t4, 520f
520:              bne          s9, a6, 530f
                  slli         a1, s6, 30
                  sltu         s10, s2, a5
                  beq          t0, t5, 543f
                  and          t6, t5, s1
                  sltiu        s10, s8, 1859
                  or           a5, s10, t2
                  add          s1, t6, s11
                  bge          s11, t6, 531f
                  sll          a3, a7, t6
530:              add          a3, t6, s11
531:              blt          a2, a3, 548f
                  xori         s9, t1, 1190
                  sll          a0, t0, a7
                  or           s5, t6, sp
                  bltu         a1, tp, 549f
                  ori          ra, t1, 948
                  sra          a0, a6, ra
                  srli         ra, t0, 31
                  srai         tp, s11, 11
                  ori          a1, s8, 228
                  sltiu        s3, zero, -1179
                  sub          t2, s6, t1
543:              srl          a2, a4, sp
                  sub          s2, s2, s2
                  sra          a3, gp, t5
                  addi         s11, sp, -1498
                  sltu         s11, a4, s5
548:              srli         ra, a4, 18
549:              bge          s4, t2, 569f
                  addi         a0, t3, 657
                  xor          t4, tp, a1
                  sltiu        s3, a7, 1754
                  bgeu         s5, t3, 563f
                  sll          s2, a3, t5
                  bge          s4, s8, 569f
                  add          s4, a7, s1
                  xori         s3, t2, -684
                  sub          ra, t0, tp
                  sra          a6, s2, s11
                  sll          s0, a7, s1
                  addi         t2, gp, -574
                  andi         a3, a0, -69
563:              bgeu         a3, t0, 566f
                  beq          s0, t0, 572f
                  blt          t2, t0, 566f
566:              slt          s1, gp, a2
                  sll          s7, tp, a1
                  addi         ra, s5, -323
569:              xori         a3, s6, -554
                  slli         s9, s10, 15
                  bltu         a5, a6, 576f
572:              add          a0, ra, a2
                  bltu         tp, a5, 591f
                  blt          t5, s9, 584f
                  slli         s8, a5, 10
576:              slti         t4, s5, -1329
                  sll          t0, a7, s0
                  slt          s3, t2, s1
                  bne          a4, a1, 593f
                  ori          t6, a6, 740
                  sll          s6, s0, a1
                  srl          s7, t3, s1
                  sltu         ra, s2, tp
584:              bltu         t2, t6, 589f
                  addi         s4, s6, -1237
                  add          s4, a0, s2
                  sll          t2, t6, sp
                  auipc        t2, 127694
589:              bge          a2, gp, 594f
                  bge          t3, t6, 591f
591:              andi         s3, a0, 822
                  slli         s10, s10, 29
593:              sll          gp, a1, s6
594:              or           a1, t2, s3
                  slt          a5, t5, t4
                  add          a6, a1, t2
                  blt          s4, s11, 605f
                  bltu         s4, t4, 606f
                  auipc        a2, 26533
                  bgeu         s10, t2, 607f
                  or           a5, s9, zero
                  lui          t3, 124378
                  slli         s11, t3, 22
                  and          s8, s0, t2
605:              bltu         a7, t3, 619f
606:              sll          a0, s6, a4
607:              slt          ra, a1, t4
                  and          a5, tp, s11
                  sub          s11, a5, a7
                  nop
                  xori         a1, a5, 436
                  blt          t1, s9, 630f
                  blt          s2, a6, 614f
614:              ori          t2, s1, -220
                  andi         a6, tp, 1605
                  or           s10, ra, s11
                  srli         s7, s1, 5
                  beq          ra, a7, 638f
619:              slt          s9, s4, t3
                  blt          a7, t4, 624f
                  sll          gp, t4, t5
                  nop
                  and          t6, zero, a2
624:              or           t6, s8, t6
                  blt          a1, s3, 628f
                  sltu         a1, sp, s1
                  bne          s1, a1, 643f
628:              xori         t2, a4, 411
                  sll          t4, s2, t6
630:              lui          s7, 2880
                  ori          s4, t5, 1711
                  bge          zero, t5, 635f
                  bne          t5, a4, 653f
                  auipc        t3, 929342
635:              lui          s8, 930435
                  bne          a7, s7, 643f
                  slli         s10, a2, 17
638:              auipc        s4, 743069
                  beq          t6, s10, 654f
                  beq          s2, t6, 644f
                  or           a5, t0, zero
                  sll          a6, t0, s5
643:              auipc        gp, 387482
644:              bltu         s5, zero, 658f
                  bltu         gp, a6, 662f
                  srai         tp, sp, 31
                  ori          s1, a7, 1199
                  nop
                  andi         s2, a2, 1379
                  bltu         s6, s9, 658f
                  slli         t4, s9, 24
                  lui          s1, 399775
653:              sltu         s2, t4, t5
654:              blt          a2, s7, 669f
                  and          s11, s8, t3
                  addi         s7, s7, 1837
                  beq          s7, t6, 676f
658:              and          s5, a2, a4
                  sra          a0, a3, s1
                  bltu         s8, s4, 670f
                  slt          ra, s1, a7
662:              sll          s4, s2, t6
                  xori         s9, a5, 1029
                  xor          s6, gp, sp
                  xor          s2, t6, s4
                  bge          t4, a6, 683f
                  add          zero, t1, tp
                  sra          a0, ra, gp
669:              xori         tp, t0, -1407
670:              sra          t3, a7, t3
                  blt          s0, a2, 672f
672:              bge          s8, s1, 686f
                  sub          a1, a7, s3
                  srai         a6, s0, 9
                  or           s7, s10, s9
676:              bltu         s3, a1, 678f
                  auipc        a6, 202863
678:              or           t0, t2, t3
                  auipc        t5, 427785
                  sltu         t5, t1, a5
                  srli         s4, s9, 4
                  auipc        t2, 558938
683:              bne          a1, s3, 702f
                  nop
                  slt          a6, s0, a3
686:              blt          s2, s9, 704f
                  bge          t4, a1, 690f
                  sub          zero, s4, s9
                  nop
690:              blt          a6, s11, 693f
                  blt          a5, t6, 711f
                  andi         s6, a5, -1143
693:              xori         t2, t2, -1943
                  slti         s1, a6, 1274
                  sra          s3, a1, s1
                  bge          a4, t3, 710f
                  addi         t4, a4, -1792
                  xori         zero, s1, -13
                  andi         s0, s1, 1243
                  sltiu        zero, s8, 230
                  sub          zero, a5, t1
702:              bgeu         s1, sp, 709f
                  addi         s0, s7, -1599
704:              bge          a3, a3, 718f
                  auipc        s10, 452148
                  sltiu        a3, s11, 2029
                  slt          s6, s7, t2
                  nop
709:              bne          t2, zero, 716f
710:              beq          a6, s3, 711f
711:              lui          t6, 12000
                  addi         s3, zero, -1114
                  slli         s5, t6, 30
                  blt          a7, t6, 718f
                  beq          s5, s5, 730f
716:              addi         ra, s10, -22
                  bne          t2, s3, 725f
718:              andi         gp, t5, -1964
                  sra          t5, a4, s7
                  bgeu         zero, t2, 734f
                  bne          a5, s11, 741f
                  beq          t3, a3, 727f
                  ori          s11, t2, 748
                  blt          a2, t4, 739f
725:              ori          a0, a0, -1331
                  nop
727:              blt          s4, a2, 737f
                  sltiu        s10, s10, 850
                  addi         tp, a4, 818
730:              sltu         s6, s5, s3
                  or           s0, s4, s10
                  lui          s0, 92535
                  bne          t6, t5, 743f
734:              srai         s10, ra, 22
                  sltiu        ra, t6, -213
                  ori          ra, ra, -485
737:              and          t0, s5, zero
                  bne          s7, a3, 752f
739:              bne          a0, t0, 747f
                  addi         zero, zero, 1352
741:              blt          t0, a1, 745f
                  nop
743:              sra          t3, s8, t2
                  bne          s11, t2, 749f
745:              blt          a5, a0, 746f
746:              sltu         s4, s11, t2
747:              bge          s10, t5, 764f
                  srl          gp, sp, a2
749:              slti         t3, s4, -1965
                  bgeu         t5, s1, 751f
751:              lui          gp, 718739
752:              lui          t4, 24727
                  sra          s2, s1, tp
                  bge          a1, s11, 771f
                  addi         s1, a4, 1809
                  slti         zero, t1, -436
                  sub          s6, s10, a2
                  add          t3, s8, a3
                  xor          a0, t0, a6
                  srli         tp, a3, 11
                  sub          a6, s4, a6
                  auipc        t6, 110820
                  and          t5, a2, tp
764:              or           s10, a2, s11
                  lui          a0, 957813
                  srai         s6, a6, 30
                  sltu         s0, s6, s10
                  bge          a7, ra, 776f
                  blt          a1, s5, 771f
                  andi         s10, a2, -1818
771:              xor          t2, a3, s10
                  slt          t2, s3, s3
                  sltu         s8, s4, a7
                  addi         s8, a2, -1171
                  blt          s9, t5, 791f
776:              slti         s8, a7, -1932
                  bgeu         gp, s7, 797f
                  sltu         s11, s5, a3
                  bge          a7, t4, 795f
                  nop
                  or           s4, s1, a4
                  ori          s11, s6, -906
                  srai         a1, s8, 30
                  sub          s10, a6, s8
                  auipc        s6, 772496
                  addi         s3, s8, 947
                  srl          s3, s4, sp
                  sltiu        s1, s4, -1732
                  bltu         t0, t6, 803f
                  srl          t6, t1, sp
791:              sra          ra, s0, ra
                  ori          s11, t6, 1955
                  sll          s2, s8, a5
                  ori          ra, t0, -1900
795:              srl          a4, s5, t6
                  sub          a1, s6, t2
797:              bge          a2, s6, 798f
798:              xori         s4, t2, -1108
                  ori          t6, s4, -1630
                  or           t2, a1, gp
                  bge          s0, s2, 806f
                  or           a6, a4, t6
803:              add          gp, s11, s2
                  addi         t0, t6, 1314
                  andi         tp, s7, -436
806:              sll          a2, a4, a0
                  sltiu        a1, s9, -1513
                  bge          s6, s6, 818f
                  slti         s2, a5, -1824
                  auipc        s11, 524914
                  ori          zero, t1, 1253
                  sra          gp, tp, a5
                  xor          a1, s0, s2
                  xori         s6, s8, 225
                  xor          a2, s7, tp
                  and          t5, a7, s7
                  add          s11, s4, a1
818:              slt          s2, s11, sp
                  add          s1, a3, a0
                  nop
                  beq          s0, t3, 824f
                  or           tp, ra, t5
                  slli         ra, t1, 2
824:              bgeu         a6, a1, 832f
                  nop
                  bgeu         a2, a0, 828f
                  lui          tp, 489164
828:              sltu         s6, s5, s0
                  andi         a2, a5, -159
                  srli         t3, gp, 18
                  or           tp, a3, s2
832:              slli         s4, s7, 31
                  srl          t2, t3, s11
                  xori         zero, a6, -1345
                  sltu         a6, sp, sp
                  slt          t0, tp, a0
                  sub          t6, t5, t2
                  nop
                  sltu         s1, s3, zero
                  bltu         gp, t0, 857f
                  srl          s2, a7, ra
                  ori          s3, a1, 1836
                  addi         t0, sp, 1848
                  blt          a5, s7, 859f
                  xor          t3, t0, a3
                  add          s1, a3, sp
                  srl          s1, s0, a6
                  sltu         tp, a3, a1
                  srli         s8, gp, 23
                  slti         s1, s10, -1766
                  ori          s1, s5, -849
                  ori          a4, tp, 512
                  xori         a4, s11, -1056
                  nop
                  sub          zero, s0, ra
                  slli         s8, t5, 11
857:              auipc        a4, 951838
                  add          a3, s1, s4
859:              sll          s1, s1, s6
                  nop
                  addi         a6, sp, 1593
                  bne          s6, s9, 866f
                  andi         s2, s9, -935
                  lui          t3, 53564
                  bne          a1, t4, 873f
866:              addi         a6, s2, 1049
                  sltu         gp, t0, s2
                  beq          a4, s1, 869f
869:              nop
                  bge          a7, s2, 887f
                  auipc        a4, 438047
                  slli         ra, t1, 1
873:              bge          zero, s4, 874f
874:              sra          a2, s2, t4
                  sll          gp, s4, s6
                  srai         a4, s4, 26
                  slt          s1, s11, s9
                  slti         ra, s3, 1604
                  sltu         t4, a6, tp
                  blt          t1, a0, 894f
                  slt          t4, a6, t0
                  bgeu         s0, a4, 900f
                  bne          s6, a5, 903f
                  sll          s1, t1, t3
                  srli         s2, s4, 25
                  or           t3, ra, s8
887:              sll          t2, a4, t0
                  ori          s11, s4, -241
                  sltiu        s8, ra, -1486
                  addi         gp, a5, -738
                  xori         a2, s1, 1075
                  xori         a3, a1, 754
                  sll          gp, t0, s10
894:              add          zero, gp, a0
                  and          a0, tp, a0
                  lui          t6, 210925
                  slli         s11, a6, 12
                  slt          s8, s9, s11
                  sltu         a0, s6, s7
900:              srli         s5, t5, 27
                  xor          a1, t0, a4
                  slti         s8, t4, -1751
903:              bne          a7, t4, 910f
                  lui          t5, 327812
                  and          t5, s8, ra
                  bge          s8, t0, 921f
                  and          a6, t4, t1
                  nop
                  blt          ra, s6, 917f
910:              andi         s6, a0, -2013
                  bne          s10, s2, 925f
                  srai         s5, s3, 12
                  auipc        a6, 784283
                  nop
                  sltu         s9, a7, s2
                  srl          a5, t0, t0
917:              xor          gp, t5, zero
                  srli         s1, s11, 5
                  addi         s11, s8, -338
                  andi         s8, t5, -784
921:              andi         s3, s7, 1700
                  sltu         s4, t1, s6
                  slli         s11, s3, 31
                  beq          s2, t6, 934f
925:              slli         s0, s10, 0
                  and          s1, a1, t4
                  blt          s9, t4, 941f
                  blt          s4, t2, 947f
                  lui          a0, 696705
                  srai         t6, s4, 9
                  nop
                  sll          t2, s0, t2
                  auipc        s5, 705812
934:              sra          zero, s0, t0
                  or           s9, t2, t1
                  srli         a2, a5, 27
                  bne          a0, t6, 941f
                  auipc        s10, 64949
                  slti         a2, s8, -1562
                  srli         a1, t4, 24
941:              xori         s0, s4, -1761
                  add          gp, t3, a2
                  sub          s3, s5, s11
                  bgeu         s4, s11, 947f
                  sub          s2, s2, a0
                  srai         s5, t1, 11
947:              auipc        s4, 859596
                  sub          gp, s5, t4
                  ori          t4, s2, 17
                  addi         t4, sp, -388
                  addi         a3, s0, -1014
                  bgeu         t2, a1, 959f
                  bge          a1, a1, 958f
                  slt          s7, s8, s2
                  slt          a6, t5, t1
                  sltiu        s9, s1, 1783
                  srl          s9, s9, s1
958:              or           s6, tp, tp
959:              slti         s3, a4, -1064
                  bne          s0, gp, 979f
                  ori          a0, a0, 1422
                  srai         t5, a6, 12
                  or           a4, t6, t0
                  auipc        s8, 383137
                  srli         a0, a7, 12
                  andi         s9, a6, -1600
                  bltu         t5, a5, 975f
                  beq          s2, a3, 975f
                  xori         s9, a0, -1853
                  ori          zero, a3, 556
                  sub          s6, a4, t3
                  sltiu        t0, t0, 1412
                  lui          tp, 218292
                  beq          t0, t0, 979f
975:              add          t2, t3, t6
                  srl          t4, zero, t4
                  sll          s1, t0, s10
                  xor          zero, tp, t6
979:              beq          s6, a7, 982f
                  addi         ra, t2, -2000
                  sub          t0, s11, s10
982:              bne          t4, a3, 983f
983:              srai         gp, s7, 30
                  andi         a1, s0, -550
                  bltu         s10, a2, 993f
                  beq          s2, a1, 1004f
                  auipc        s6, 683628
                  sltiu        t2, s1, -396
                  bne          sp, a5, 994f
                  slti         t4, tp, 720
                  slt          a3, sp, s9
                  ori          t4, zero, 1349
993:              blt          a2, a6, 997f
994:              bne          a5, ra, 1014f
                  slli         t5, t0, 13
                  sra          t5, a5, t0
997:              addi         s9, gp, 1077
                  blt          s1, s3, 1012f
                  bge          s3, a7, 1015f
                  bltu         t4, t2, 1014f
                  sub          s10, a1, ra
                  ori          a2, tp, -1091
                  xori         s10, zero, -1480
1004:             slli         s0, a6, 2
                  addi         a3, a1, 33
                  srl          s10, t0, a7
                  sub          s10, t6, t1
                  sltu         a2, t2, tp
                  andi         a0, t2, 1450
                  bgeu         zero, a3, 1017f
                  bltu         s2, s0, 1025f
1012:             bltu         t5, zero, 1027f
                  slt          a0, t5, a5
1014:             srli         t5, a4, 16
1015:             slt          t2, s8, sp
                  sltu         a2, s7, s10
1017:             beq          t1, t4, 1027f
                  bge          t4, a3, 1019f
1019:             or           a3, s2, zero
                  sub          a5, tp, s4
                  bge          sp, t3, 1036f
                  xor          t5, a3, gp
                  and          t4, t0, s4
                  srai         a3, a6, 19
1025:             bne          s1, s10, 1029f
                  blt          t4, a4, 1027f
1027:             sltiu        zero, zero, 1889
                  sltiu        s6, s3, 109
1029:             sltiu        a3, t5, 1814
                  xor          s6, sp, t2
                  sra          s3, a7, s0
                  srai         s10, a0, 10
                  sub          t0, t4, sp
                  xor          tp, t5, t0
sub_5_1:          jal          t6, 0f
0:                jal          s10, 5f
1:                jal          ra, 19f
2:                jal          s10, 7f
3:                jal          ra, 4f
4:                jal          s0, 18f
5:                jal          t0, 14f
6:                jal          ra, 11f
7:                jal          ra, 12f
8:                jal          ra, 13f
9:                jal          ra, 1b
10:               jal          ra, 15f
11:               jal          ra, 22f
12:               jal          ra, 8b
13:               jal          t5, 21f
14:               jal          ra, 3b
15:               jal          s10, 16f
16:               jal          ra, 6b
17:               jal          s2, 9b
18:               jal          a1, 2b
19:               jal          ra, 20f
20:               jal          ra, 10b
21:               jal          tp, 17b
22:               auipc        t6, 887073
                  sub          t4, t0, zero
1036:             beq          s0, t0, 1044f
                  sub          s4, ra, a5
                  add          ra, sp, s10
                  xori         tp, s0, 314
                  sltu         s9, s10, t6
                  add          t2, t3, s8
                  andi         ra, s11, 1412
                  xor          s8, t1, s6
1044:             sltu         s6, zero, s8
                  or           t6, s8, gp
                  sub          s10, s2, s11
                  srai         s7, t3, 24
                  beq          s1, t5, 1065f
                  andi         t3, s6, -831
                  sltu         ra, a4, s4
                  bgeu         a5, a5, 1053f
                  blt          a2, sp, 1062f
1053:             sub          zero, t5, s7
                  srli         a6, a6, 24
                  xor          s3, s5, ra
                  bgeu         s3, a1, 1076f
                  slt          gp, gp, t5
                  srli         s1, s11, 22
                  blt          s4, s1, 1062f
                  xor          s9, a0, t3
                  sub          a5, a0, t0
1062:             and          s11, s11, s11
                  bge          t5, a7, 1077f
                  or           t5, s1, s2
1065:             slt          a4, a1, s9
                  ori          s10, a7, -807
                  bgeu         s11, s2, 1084f
                  slt          s3, s11, t5
                  sltiu        s6, s6, 1117
                  slli         s7, t6, 17
                  blt          s7, s8, 1081f
                  nop
                  or           s3, t5, ra
                  slti         s9, s4, 516
                  blt          a6, t2, 1089f
1076:             xori         zero, s10, -1893
1077:             andi         t0, t3, 542
                  xori         s8, t0, 1478
                  sltiu        a6, a6, -1141
                  sll          t6, s8, a4
1081:             srli         ra, a3, 21
                  or           s6, a2, a7
                  auipc        t6, 568968
1084:             slti         a3, s8, -1968
                  bgeu         a7, t3, 1088f
                  add          s0, t5, s3
                  ori          s5, s6, 1886
1088:             bne          s9, a7, 1092f
1089:             beq          s10, s0, 1091f
                  slt          a6, s11, s2
1091:             slli         s11, s3, 26
1092:             and          s8, t5, a3
                  srai         gp, s10, 0
                  slt          a0, t5, a5
                  ori          a4, s9, 802
                  srl          tp, a6, s0
                  beq          s0, t6, 1117f
                  srai         zero, a3, 17
                  sltiu        s1, t0, 1719
                  srli         s0, t5, 14
                  bltu         t0, s2, 1115f
                  bne          s5, a6, 1107f
                  nop
                  srli         t5, s11, 22
                  xor          a0, a1, gp
                  slt          ra, a0, s10
1107:             andi         s5, zero, 358
                  bgeu         a6, tp, 1122f
                  srl          s3, a3, zero
                  slli         s11, zero, 14
                  ori          s11, s6, 1008
                  srl          a1, t4, a6
                  srl          t6, a6, a0
                  nop
1115:             slli         a3, ra, 26
                  sll          a0, sp, t1
1117:             sub          ra, a7, s2
                  xori         t2, s10, 266
                  srl          zero, s5, s5
                  slt          t5, a7, a3
                  andi         ra, s10, -1167
sub_5_4:          jal          t6, 1f
0:                jal          ra, 5f
1:                jal          a4, 2f
2:                jal          ra, 17f
3:                jal          t6, 10f
4:                jal          ra, 13f
5:                jal          ra, 15f
6:                jal          ra, 8f
7:                jal          ra, 3b
8:                jal          s1, 7b
9:                jal          ra, 18f
10:               jal          ra, 0b
11:               jal          ra, 14f
12:               jal          ra, 11b
13:               jal          ra, 6b
14:               jal          s4, 16f
15:               jal          gp, 9b
16:               jal          ra, 4b
17:               jal          a6, 12b
18:               nop
1122:             srli         a3, s7, 25
                  lui          tp, 93187
                  srl          a6, a2, s7
                  or           s11, t2, s0
                  xor          t5, a1, s1
                  slti         gp, s5, -514
                  ori          s1, gp, -255
                  beq          s8, s1, 1135f
                  bne          a1, t0, 1135f
                  and          a1, s2, a6
                  bgeu         s4, s9, 1135f
                  and          t2, a6, t6
                  sub          t3, s1, t4
1135:             or           a6, s2, sp
                  slti         s1, s2, 1372
                  slli         t4, s6, 12
                  lw           t6, 4(t1)
                  xori         s11, s1, -1457
                  slti         a1, a5, -1657
                  sll          tp, sp, t5
                  andi         s2, s9, -59
                  addi         t1, t1, 60
                  sub          s2, tp, a7
                  srli         s5, a2, 9
1619:             addi x27, x31, 0
1619:             jalr x27, x27, 0
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
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000
.section .region_1,"aw",@progbits;
region_1:
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000
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
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x2, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_2:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x2, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_3:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x2, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_4:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x2, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_5:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x2, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_6:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x2, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_7:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x2, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_8:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x2, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_9:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x2, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_10:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x2, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_11:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x2, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_12:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x2, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_13:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x2, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_14:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x2, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_15:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x2, x6, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

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
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x2, x6, zero
                  csrr x9, 0x341 # MEPC
                  csrr x9, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x9, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x9, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x9, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x9, x20, ecall_handler
                  li x20, 0x1
                  beq x9, x20, instr_fault_handler
                  li x20, 0x5
                  beq x9, x20, load_fault_handler
                  li x20, 0x7
                  beq x9, x20, store_fault_handler
                  li x20, 0xc
                  beq x9, x20, pt_fault_handler
                  li x20, 0xd
                  beq x9, x20, pt_fault_handler
                  li x20, 0xf
                  beq x9, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x9, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x17, test_done
                  jalr x1, x17, 0

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
                  la x17, write_tohost
                  jalr x0, x17, 0

instr_fault_handler:
                  add x6, x2, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

load_fault_handler:
                  add x6, x2, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

store_fault_handler:
                  add x6, x2, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

ebreak_handler:   
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x6, x2, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

illegal_instr_handler:
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x6, x2, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x9, 0x300 # MSTATUS;
                  csrr  x9, 0x304 # MIE;
                  csrr  x9, 0x344 # MIP;
                  csrrc x9, 0x344, x9 # MIP;
                  add x6, x2, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
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
