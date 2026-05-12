.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x18, h0_start
jalr x0, x18, 0
h0_start:
                  li x9, 0x40000100
                  csrw 0x301, x9
kernel_sp:        
                  la x12, kernel_stack_end

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
                  li x0, 0xf83edb91
                  li x1, 0x80000000
                  li x2, 0x5
                  li x3, 0xc
                  li x4, 0x6
                  li x5, 0xfbadba7a
                  li x6, 0x1ff08522
                  li x7, 0xf
                  li x8, 0xfd1a2c45
                  li x9, 0xd
                  li x10, 0x0
                  li x11, 0x7
                  li x13, 0x7
                  li x14, 0xf
                  li x15, 0x80000000
                  li x16, 0x80000000
                  li x17, 0x9
                  li x18, 0xf5b3eddd
                  li x19, 0x1
                  li x20, 0x9
                  li x21, 0x44eff1a1
                  li x22, 0x5
                  li x23, 0x0
                  li x24, 0x9
                  li x25, 0x5
                  li x26, 0xf14b68d4
                  li x28, 0x0
                  li x29, 0xe
                  li x30, 0x7
                  li x31, 0x0
                  la x27, user_stack_end
main:             jal          ra, 1f
0:                jal          a7, 4f
1:                jal          ra, 8f
2:                jal          sp, 0b
3:                jal          t1, 9f
4:                jal          a6, 7f
5:                jal          gp, 2b
6:                jal          t1, 10f
7:                jal          t1, 3b
8:                jal          ra, 5b
9:                jal          t1, 6b
10:               nop
main_9:           jal          ra, 11f
0:                jal          ra, 21f
1:                jal          ra, 8f
2:                jal          ra, 22f
3:                jal          t1, 26f
4:                jal          ra, 12f
5:                jal          t1, 17f
6:                jal          ra, 23f
7:                jal          t0, 4b
8:                jal          gp, 2b
9:                jal          t5, 15f
10:               jal          t1, 3b
11:               jal          s3, 27f
12:               jal          ra, 28f
13:               jal          ra, 9b
14:               jal          tp, 5b
15:               jal          s5, 14b
16:               jal          ra, 7b
17:               jal          ra, 25f
18:               jal          ra, 6b
19:               jal          t1, 0b
20:               jal          sp, 24f
21:               jal          ra, 10b
22:               jal          s7, 18b
23:               jal          t1, 19b
24:               jal          ra, 16b
25:               jal          sp, 1b
26:               jal          t1, 20b
27:               jal          ra, 13b
28:               or           t2, s1, ra
main_2:           jal          ra, 0f
0:                jal          t1, 5f
1:                jal          ra, 23f
2:                jal          ra, 10f
3:                jal          a3, 18f
4:                jal          ra, 14f
5:                jal          ra, 4b
6:                jal          ra, 17f
7:                jal          ra, 20f
8:                jal          ra, 1b
9:                jal          t1, 16f
10:               jal          s10, 13f
11:               jal          sp, 21f
12:               jal          ra, 2b
13:               jal          ra, 11b
14:               jal          t1, 6b
15:               jal          t1, 8b
16:               jal          t1, 24f
17:               jal          ra, 3b
18:               jal          s9, 12b
19:               jal          ra, 25f
20:               jal          t1, 15b
21:               jal          ra, 22f
22:               jal          t1, 9b
23:               jal          sp, 19b
24:               jal          ra, 7b
25:               xori         s9, t4, -266
main_13:          jal          ra, 15f
0:                jal          t1, 23f
1:                jal          sp, 3f
2:                jal          ra, 8f
3:                jal          t0, 16f
4:                jal          ra, 2b
5:                jal          ra, 7f
6:                jal          ra, 17f
7:                jal          sp, 14f
8:                jal          ra, 18f
9:                jal          ra, 0b
10:               jal          t1, 24f
11:               jal          t1, 6b
12:               jal          t1, 20f
13:               jal          t5, 1b
14:               jal          ra, 13b
15:               jal          ra, 11b
16:               jal          s8, 22f
17:               jal          t1, 12b
18:               jal          t1, 25f
19:               jal          ra, 4b
20:               jal          t3, 19b
21:               jal          t1, 27f
22:               jal          tp, 10b
23:               jal          gp, 21b
24:               jal          gp, 9b
25:               jal          ra, 5b
26:               jal          ra, 28f
27:               jal          ra, 26b
28:               and          t6, a3, t3
main_11:          jal          ra, 15f
0:                jal          t6, 9f
1:                jal          ra, 17f
2:                jal          t1, 18f
3:                jal          t1, 7f
4:                jal          a5, 1b
5:                jal          t1, 10f
6:                jal          t1, 16f
7:                jal          gp, 8f
8:                jal          t1, 12f
9:                jal          ra, 13f
10:               jal          ra, 14f
11:               jal          t1, 6b
12:               jal          ra, 0b
13:               jal          s4, 4b
14:               jal          ra, 19f
15:               jal          ra, 11b
16:               jal          ra, 2b
17:               jal          t0, 5b
18:               jal          ra, 3b
19:               sltu         s5, t4, t5
main_0:           jal          ra, 7f
0:                jal          t1, 11f
1:                jal          s3, 15f
2:                jal          ra, 13f
3:                jal          t1, 9f
4:                jal          ra, 6f
5:                jal          t0, 3b
6:                jal          ra, 0b
7:                jal          t1, 8f
8:                jal          t1, 14f
9:                jal          ra, 4b
10:               jal          s9, 2b
11:               jal          ra, 1b
12:               jal          ra, 10b
13:               jal          ra, 5b
14:               jal          t0, 12b
15:               nop
main_7:           jal          ra, 6f
0:                jal          tp, 1f
1:                jal          t1, 13f
2:                jal          ra, 5f
3:                jal          ra, 0b
4:                jal          ra, 14f
5:                jal          ra, 22f
6:                jal          a4, 4b
7:                jal          t1, 3b
8:                jal          ra, 16f
9:                jal          ra, 18f
10:               jal          t0, 11f
11:               jal          t1, 8b
12:               jal          t1, 20f
13:               jal          a4, 19f
14:               jal          t1, 12b
15:               jal          t1, 9b
16:               jal          ra, 15b
17:               jal          ra, 2b
18:               jal          t1, 23f
19:               jal          ra, 17b
20:               jal          gp, 21f
21:               jal          ra, 7b
22:               jal          t1, 10b
23:               sll          s0, a0, a7
main_1:           jal          ra, 4f
0:                jal          t1, 6f
1:                jal          ra, 12f
2:                jal          s3, 11f
3:                jal          a0, 15f
4:                jal          ra, 14f
5:                jal          ra, 9f
6:                jal          t1, 3b
7:                jal          ra, 5b
8:                jal          s6, 0b
9:                jal          ra, 2b
10:               jal          t2, 1b
11:               jal          ra, 10b
12:               jal          tp, 8b
13:               jal          ra, 7b
14:               jal          ra, 13b
15:               slli         a3, sp, 28
main_4:           jal          ra, 13f
0:                jal          ra, 12f
1:                jal          ra, 3f
2:                jal          ra, 17f
3:                jal          ra, 10f
4:                jal          ra, 7f
5:                jal          a5, 9f
6:                jal          t1, 0b
7:                jal          t1, 2b
8:                jal          ra, 14f
9:                jal          ra, 1b
10:               jal          ra, 19f
11:               jal          sp, 8b
12:               jal          t3, 21f
13:               jal          ra, 20f
14:               jal          ra, 16f
15:               jal          ra, 18f
16:               jal          sp, 15b
17:               jal          t5, 11b
18:               jal          t1, 5b
19:               jal          ra, 6b
20:               jal          t1, 4b
21:               and          t3, s5, a6
main_14:          jal          ra, 6f
0:                jal          ra, 10f
1:                jal          sp, 17f
2:                jal          ra, 16f
3:                jal          ra, 0b
4:                jal          ra, 13f
5:                jal          ra, 18f
6:                jal          t1, 15f
7:                jal          t1, 12f
8:                jal          t1, 7b
9:                jal          sp, 19f
10:               jal          a0, 9b
11:               jal          sp, 2b
12:               jal          t1, 3b
13:               jal          t1, 11b
14:               jal          t0, 4b
15:               jal          t1, 14b
16:               jal          ra, 5b
17:               jal          ra, 8b
18:               jal          ra, 1b
19:               srl          s4, s4, s0
main_12:          jal          ra, 9f
0:                jal          ra, 13f
1:                jal          ra, 5f
2:                jal          ra, 12f
3:                jal          t0, 18f
4:                jal          ra, 17f
5:                jal          sp, 19f
6:                jal          t1, 11f
7:                jal          ra, 3b
8:                jal          ra, 2b
9:                jal          ra, 0b
10:               jal          ra, 14f
11:               jal          t1, 15f
12:               jal          a6, 7b
13:               jal          ra, 4b
14:               jal          ra, 16f
15:               jal          ra, 10b
16:               jal          ra, 8b
17:               jal          a1, 6b
18:               jal          ra, 1b
19:               sra          s7, a7, s3
main_5:           jal          ra, 12f
0:                jal          t1, 7f
1:                jal          ra, 3f
2:                jal          ra, 4f
3:                jal          t6, 0b
4:                jal          ra, 21f
5:                jal          ra, 1b
6:                jal          sp, 22f
7:                jal          ra, 25f
8:                jal          a0, 23f
9:                jal          ra, 8b
10:               jal          t1, 13f
11:               jal          ra, 2b
12:               jal          s7, 16f
13:               jal          a5, 6b
14:               jal          t1, 26f
15:               jal          s0, 14b
16:               jal          s1, 20f
17:               jal          s4, 9b
18:               jal          t1, 17b
19:               jal          t1, 11b
20:               jal          ra, 10b
21:               jal          ra, 5b
22:               jal          t1, 24f
23:               jal          s10, 15b
24:               jal          ra, 19b
25:               jal          ra, 18b
26:               auipc        a3, 211367
main_3:           jal          ra, 14f
0:                jal          t1, 2f
1:                jal          ra, 13f
2:                jal          ra, 6f
3:                jal          t1, 18f
4:                jal          t1, 17f
5:                jal          s0, 1b
6:                jal          t1, 22f
7:                jal          ra, 19f
8:                jal          ra, 0b
9:                jal          sp, 8b
10:               jal          t1, 15f
11:               jal          sp, 12f
12:               jal          t1, 3b
13:               jal          t1, 16f
14:               jal          tp, 20f
15:               jal          a7, 4b
16:               jal          t1, 23f
17:               jal          ra, 5b
18:               jal          ra, 24f
19:               jal          ra, 11b
20:               jal          t1, 21f
21:               jal          tp, 9b
22:               jal          t1, 10b
23:               jal          ra, 7b
24:               or           a4, s0, ra
                  slti         s8, t4, 1701
                  sra          t0, s10, a2
                  srl          s5, a3, a0
                  bgeu         a0, sp, 4f
4:                sub          a5, t6, zero
                  blt          t0, a5, 15f
                  srli         sp, s0, 26
                  bgeu         s4, s2, 21f
                  sll          zero, s3, a6
                  and          sp, ra, t2
                  blt          t0, t4, 13f
                  sub          t1, a2, gp
                  srl          a4, t2, s8
13:               bltu         a3, a3, 26f
                  ori          a5, s7, 2013
15:               nop
                  nop
                  xori         s7, s9, -1811
                  add          a7, t6, s9
                  andi         a0, a6, 1125
                  andi         a6, s9, -275
21:               or           sp, t1, t1
                  srl          gp, a7, a5
                  sltu         s4, s2, a7
                  lui          a1, 978730
                  nop
26:               srli         ra, t6, 6
                  add          a4, sp, s2
                  or           t4, a1, s9
                  blt          ra, s11, 31f
                  bge          ra, gp, 40f
31:               sltu         zero, gp, t2
                  sltiu        a6, a1, 1615
                  xori         t6, tp, -1108
                  addi         s0, s11, -804
                  or           zero, a5, t3
                  sub          s6, t4, a2
                  xori         a5, t3, 1242
                  ori          a6, a0, 1418
                  ori          t0, a7, -933
40:               or           a7, a2, tp
                  and          s4, s6, t6
                  sub          t5, t0, t5
                  sll          s7, s9, gp
                  sra          tp, t2, s1
                  slt          zero, ra, t1
                  bne          a0, a3, 61f
                  sll          t3, a5, s11
                  sub          gp, s4, a3
                  bgeu         t5, s7, 50f
50:               sltu         a4, zero, s9
                  srai         s8, t6, 4
                  bgeu         s4, s10, 62f
                  bne          s6, s9, 58f
                  bge          s2, s5, 70f
                  sra          tp, s10, zero
                  bge          a4, s7, 67f
                  srai         t1, a4, 0
58:               sra          t0, tp, s8
                  srai         t2, a2, 9
                  or           a6, s9, t6
61:               srl          t3, t5, s10
62:               blt          t1, a3, 71f
                  slt          t3, ra, ra
                  blt          s6, a3, 83f
                  srai         s3, s4, 27
                  bne          t6, tp, 69f
67:               or           tp, t3, s10
                  srai         gp, t0, 29
69:               lui          t2, 846316
70:               nop
71:               beq          a1, tp, 88f
                  srai         t1, s9, 27
                  and          t6, tp, s11
                  bge          a7, s0, 90f
                  slli         a6, s9, 20
                  srl          a5, s6, s5
                  bge          a7, s2, 90f
                  sll          t3, t0, tp
                  bltu         sp, s8, 96f
                  sltiu        tp, a0, 982
                  add          s10, t1, gp
                  andi         zero, t4, -1607
83:               lui          a4, 134950
                  srli         t0, zero, 26
                  bge          s2, a0, 105f
                  nop
                  sll          t6, s4, s3
88:               bltu         s4, a7, 103f
                  srai         a7, a0, 23
90:               bne          a5, a2, 105f
                  bgeu         s7, a6, 92f
92:               slli         a5, s4, 14
                  slt          tp, t5, s3
                  bgeu         a4, a6, 96f
                  blt          tp, s8, 112f
96:               or           t6, s5, s8
                  addi         s5, sp, 7
                  xor          tp, t4, t4
                  xori         s1, s9, 664
                  slti         gp, s11, -695
                  andi         tp, a4, -526
                  andi         s6, s4, 1240
103:              add          ra, a3, t1
                  sub          zero, s0, s3
105:              srl          sp, ra, a5
                  add          s7, s5, t2
                  auipc        s9, 384826
                  or           a1, a1, ra
                  andi         a3, s5, -1998
                  lui          zero, 21874
                  addi         a4, s5, -840
112:              bne          t6, s7, 120f
                  xor          s0, t0, s9
                  sub          t6, s8, t3
                  srai         tp, a6, 13
                  and          s1, a0, a1
                  bltu         a5, s8, 122f
                  xori         a1, t1, 1753
                  sltiu        t2, a5, -1256
120:              add          sp, s2, t2
                  andi         t6, a4, -882
122:              slt          sp, a1, a3
                  xor          tp, gp, gp
                  sltiu        s4, a6, 1957
                  slti         s1, a7, -329
                  sltu         t6, s6, t4
                  sra          a4, t5, a7
                  xori         a7, s9, 1485
                  xor          sp, t4, a3
                  srl          t0, s0, s7
                  sltu         s1, t5, t3
                  slli         a5, a1, 3
                  addi         t5, s1, 760
                  bltu         t0, a3, 144f
                  auipc        t3, 738844
                  xor          s0, a0, s6
                  srai         zero, s4, 29
                  slti         a3, s10, -772
                  bltu         s3, t2, 158f
                  sll          a1, a1, a7
                  sltiu        t3, s9, -1936
                  xori         s3, s5, -1283
                  bge          s3, t6, 159f
144:              add          a1, s9, sp
                  add          ra, s10, zero
                  bgeu         s9, a1, 149f
                  bltu         t5, a0, 164f
                  bltu         s10, a2, 158f
149:              bge          s7, t2, 166f
                  lui          a6, 886859
                  slli         s4, s2, 12
                  sll          t0, t0, a5
                  sltiu        a7, a0, 252
                  nop
                  sltu         a4, s3, s6
                  xor          sp, s8, s2
                  sll          sp, sp, zero
158:              add          t0, s3, s11
159:              sub          s3, a0, t2
                  sltiu        t3, sp, 1089
                  bgeu         a5, a3, 163f
                  add          s8, a4, s7
163:              sltiu        t6, s6, -962
164:              lui          t6, 395447
                  slt          s6, a4, t3
166:              and          s3, s5, s3
                  sra          a3, s7, s1
                  srli         t1, zero, 17
                  srai         a1, a4, 19
                  bge          zero, a6, 172f
                  auipc        a7, 213384
172:              xor          s9, gp, s5
                  bltu         zero, gp, 183f
                  auipc        ra, 256915
                  addi         a7, s5, 601
                  ori          tp, a1, 1254
                  slli         t0, a4, 6
                  bltu         a0, s10, 188f
                  bltu         a7, a0, 193f
                  sll          s0, s3, t3
                  nop
                  xori         s3, t0, 2011
183:              srl          s4, s3, t4
                  srli         s3, a1, 27
                  lui          ra, 522503
                  bge          s1, s8, 206f
                  auipc        s1, 11702
188:              sll          a7, s5, t1
                  xor          tp, t5, t6
                  srl          s5, s3, s9
                  sra          gp, s10, gp
                  add          a7, t3, gp
193:              nop
                  sltiu        s5, s4, 1632
                  xor          t5, a4, t2
                  slt          a0, s4, a6
                  sltu         a3, t0, a6
                  addi         t1, a7, -1028
                  xor          a5, s9, zero
                  sub          gp, a5, s1
                  slli         a0, s11, 30
                  srl          a3, s2, sp
                  slt          a6, t2, t6
                  sltiu        t5, t2, -1707
                  beq          a7, s3, 221f
206:              or           s6, a6, a5
                  ori          s9, s4, -521
                  andi         t5, s3, -1243
                  slli         s5, s6, 5
                  ori          s9, a5, -530
                  bge          s3, a3, 214f
                  ori          s8, t0, -1186
                  sra          t4, a4, a3
214:              bltu         s8, t5, 227f
                  sll          s7, ra, t4
                  bltu         t1, t0, 231f
                  auipc        s6, 553571
                  blt          ra, a0, 219f
219:              sra          a1, gp, s5
                  auipc        s5, 666484
221:              add          t6, s10, a3
                  and          s6, a1, sp
                  blt          a6, t4, 224f
224:              add          s6, a3, s5
                  bne          a0, s2, 238f
                  lui          s8, 255822
227:              xori         s4, zero, -1178
                  and          a7, t4, t3
                  lui          s1, 209384
                  bne          t2, a4, 238f
231:              bgeu         s5, s11, 236f
                  xori         s9, a6, 1854
                  srai         a3, s1, 4
                  sltu         s6, t3, s9
                  or           t3, s6, a1
236:              and          t6, a5, t3
                  add          t0, s7, s3
238:              srai         s0, s6, 24
                  sltu         a3, s5, zero
                  addi         s3, ra, 1335
                  srli         t4, t5, 28
                  bgeu         s5, s1, 259f
                  bne          t0, sp, 248f
                  srai         gp, a0, 13
                  slli         t3, a4, 0
                  bgeu         s6, a7, 256f
                  srli         s5, sp, 24
248:              srli         a0, s11, 13
                  srai         t2, s4, 10
                  addi         a6, a2, 131
                  bgeu         t2, t4, 266f
                  lui          s9, 151276
                  slli         t3, t3, 24
                  lui          s8, 979484
                  xori         s3, s4, 331
256:              add          t3, a2, a1
                  xori         ra, a5, -1092
                  srli         s6, s1, 2
259:              slti         s9, s11, -80
                  sra          a3, zero, a1
                  auipc        a1, 977106
                  xori         s0, s7, 1444
                  sll          ra, a7, s5
                  sra          t0, t4, a0
                  slli         s6, a4, 28
266:              nop
                  bge          t1, s0, 286f
                  sra          s4, t3, a3
                  auipc        s0, 791848
                  xor          t5, tp, t5
                  or           zero, a1, s10
                  bltu         s3, s6, 283f
                  sra          t2, t5, t0
                  add          t1, s11, t0
                  slli         s8, t6, 8
                  or           s0, s2, s0
                  bne          t1, t5, 278f
278:              add          s6, sp, t4
                  srl          a7, s2, a4
                  srli         a1, a5, 31
                  slt          a4, s11, s9
                  sltiu        s6, t3, 1464
283:              blt          s11, t6, 302f
                  slti         s10, a3, -602
                  ori          t5, s11, -821
286:              or           a7, s3, s0
                  sra          a1, t1, a3
                  srl          a6, t5, s11
                  xori         a6, a7, -1963
                  slt          a0, a6, s9
                  sltu         t2, t5, gp
                  sra          a5, s9, gp
                  beq          a7, s4, 308f
                  lui          s9, 628993
                  xori         t5, s7, 1815
                  add          s6, t5, s5
                  bltu         s7, s6, 306f
                  slt          s7, zero, a6
                  nop
                  sltiu        s6, s4, -290
                  blt          s4, t3, 314f
302:              bne          t4, s3, 304f
                  beq          s5, tp, 304f
304:              slti         t6, t1, 582
                  xori         t4, s3, 1678
306:              bltu         a0, t1, 321f
                  beq          ra, s6, 323f
308:              slti         ra, a3, -270
                  addi         a1, tp, -1846
                  or           tp, t0, s10
                  andi         s0, s1, 2031
                  addi         t2, t1, -901
                  bgeu         s9, s3, 328f
314:              xori         a7, tp, 1330
                  beq          a3, s4, 317f
                  andi         s8, t6, -1030
317:              addi         a7, s10, -212
                  sub          gp, s5, t5
                  srli         s6, tp, 28
                  auipc        s4, 350491
321:              bltu         t5, s0, 335f
                  xori         s6, s5, -1473
323:              slli         t1, t2, 29
                  slli         a6, t3, 1
                  bgeu         t5, s5, 340f
                  nop
                  xori         s10, tp, 1083
328:              nop
                  bltu         t6, a3, 339f
                  auipc        t1, 736489
                  sltiu        a1, s9, -144
                  sra          s1, a2, s3
                  bgeu         s8, s10, 338f
                  sra          a4, gp, s11
335:              sub          gp, s6, t6
                  bltu         a5, ra, 337f
337:              xor          gp, a1, t5
338:              addi         s9, s1, -1596
339:              blt          s6, a4, 342f
340:              sra          s5, s1, s3
                  bge          s9, a4, 350f
342:              addi         t4, a2, 1654
                  ori          ra, s2, -1276
                  auipc        t5, 883680
                  srai         s3, t3, 27
                  slt          t4, a3, a2
                  bltu         s4, a2, 358f
                  srli         s4, s1, 30
                  sltu         s1, s11, gp
350:              bne          t0, gp, 367f
                  sra          a0, zero, t5
                  bltu         a2, a7, 360f
                  bne          a0, t0, 363f
                  add          t0, a3, s11
                  slti         t3, a5, 459
                  bgeu         zero, a0, 372f
                  srli         zero, a5, 21
358:              andi         t4, s11, -249
                  srai         t2, a1, 1
360:              andi         ra, s2, -17
                  srli         gp, s5, 18
                  srli         s4, a4, 11
363:              srl          tp, ra, sp
                  sltu         t0, s5, s10
                  and          s5, a6, s0
                  srl          a0, s7, t0
367:              blt          a3, s0, 384f
                  srai         s7, s1, 26
                  sltiu        s7, t2, -650
                  bne          s11, s11, 373f
                  blt          s6, zero, 391f
372:              bne          zero, s10, 373f
373:              nop
                  sltiu        s0, t5, -1468
                  auipc        s3, 689073
                  and          sp, t2, s1
                  sltiu        zero, ra, 1692
                  auipc        s5, 866570
                  blt          a6, tp, 392f
                  xori         s1, s1, 938
                  xor          a7, s11, zero
                  sltiu        a7, zero, -595
                  sltiu        t3, t0, -1846
384:              blt          a0, ra, 394f
                  lui          a0, 768508
                  auipc        t4, 766908
                  xori         s1, s0, 160
                  nop
                  bgeu         sp, a1, 394f
                  or           a1, zero, t6
391:              add          s3, t1, s6
392:              bge          t6, a3, 402f
                  addi         a4, s7, 1861
394:              slli         s8, a5, 25
                  lui          s10, 428469
                  xori         t0, s0, 1403
                  add          s6, t1, s10
                  srl          t5, a5, s10
                  beq          a5, s6, 416f
                  slti         t5, sp, 1386
                  xor          s1, a3, t6
402:              srli         t0, a4, 1
                  beq          s10, s6, 422f
                  bge          a2, a6, 423f
                  srai         s5, sp, 7
                  addi         a4, a6, -1885
                  sltiu        a7, t5, -324
                  sltiu        s8, sp, 498
                  xori         t1, t0, -1208
                  addi         ra, t1, -1555
                  bltu         a5, s5, 422f
                  or           a1, s0, s3
                  or           s3, s5, t1
                  ori          a1, a0, 891
                  sll          s1, gp, t5
416:              bge          s8, a0, 431f
                  xori         t5, sp, 1434
                  beq          t0, sp, 437f
                  blt          a2, a1, 432f
                  andi         s6, t0, -748
                  xor          a1, t5, a0
422:              srai         s4, a3, 27
423:              srai         zero, a6, 20
                  andi         a3, a5, -1590
                  sra          s5, s3, s9
                  bgeu         ra, s6, 436f
                  xori         t4, s7, 1060
                  sub          gp, tp, sp
                  and          a5, s9, t2
                  slt          s6, a4, t1
431:              sub          s7, s5, s3
432:              xori         tp, a7, -748
                  andi         s6, a3, -423
                  beq          s4, s9, 450f
                  or           t1, s8, t1
436:              srl          s9, t4, s2
437:              addi         tp, s4, 414
                  xori         s9, s7, -98
                  addi         t6, a7, -1509
                  bgeu         s2, t5, 448f
                  blt          tp, a2, 461f
                  srli         t6, t4, 10
                  lui          a7, 805155
                  sra          s8, s0, sp
                  srl          a0, t2, s4
                  beq          a7, ra, 456f
                  and          s8, s8, a3
448:              slt          a3, t1, a7
                  and          s8, zero, s7
450:              bgeu         a1, a7, 465f
                  slti         t2, a2, -1716
                  nop
                  srai         s3, a1, 12
                  add          s5, a3, s11
                  sra          sp, a3, s2
456:              lui          gp, 914646
                  addi         a6, t2, -582
                  slti         a1, zero, -1009
                  slt          a0, ra, s2
                  beq          a6, a0, 463f
461:              sub          a3, a6, s2
                  andi         a0, ra, -183
463:              and          t3, ra, t5
                  ori          a5, a4, 1832
465:              addi         t1, s0, -875
                  slti         sp, s3, -932
                  xor          s0, t1, s2
                  beq          t4, s10, 471f
                  lui          ra, 664415
                  nop
471:              sub          s0, sp, s5
                  bltu         s1, a4, 481f
                  lui          gp, 395383
                  srli         s5, t1, 31
                  srl          t2, t2, tp
                  auipc        s4, 256955
                  srai         t3, ra, 18
                  addi         s1, s6, 1446
                  nop
                  sub          a4, gp, a3
481:              addi         s0, s11, 643
                  bgeu         s5, s7, 492f
                  sub          a0, t6, gp
                  blt          s8, a4, 489f
                  and          a4, ra, tp
                  add          t2, t2, gp
                  addi         t5, t4, 1825
                  sub          a6, a7, s1
                  addi         t1, t1, 455
                  slt          t4, a6, zero
                  andi         sp, t3, -185
                  auipc        s7, 664999
                  la           a0, sub_1
                  or           t3, a3, s5
                  slti         gp, s4, 554
                  sltiu        sp, a0, -1042
                  auipc        zero, 824730
                  addi         a0, a0, 371
                  sll          zero, tp, t2
                  or           t6, t1, gp
main_j1:          jalr         ra, a0, -370 #jump main -> sub_1
489:              slli         t3, s1, 2
                  or           sp, a2, s6
                  bne          a7, a6, 496f
492:              and          gp, zero, s5
                  andi         t6, a2, 284
                  bltu         a5, s4, 496f
                  bltu         s1, a1, 514f
496:              andi         ra, t0, 762
                  bgeu         t6, t1, 498f
498:              nop
                  or           t1, s10, a6
                  slt          gp, a6, t4
                  auipc        a3, 729757
                  nop
                  slti         t2, a5, 465
                  slt          a1, a5, s9
                  auipc        a0, 146661
                  sltiu        t1, zero, 1985
                  add          s5, a1, sp
                  xori         a7, a2, 57
                  sra          s9, t1, t3
                  slti         a4, a7, 1771
                  slt          t4, s0, zero
                  sub          s8, gp, t6
                  slli         s8, s7, 15
514:              xor          s1, s7, a3
                  xori         t1, s2, 1832
                  slt          s5, s3, a2
                  addi         s1, s5, 1972
                  xor          s4, a4, a1
                  sub          t6, s0, t0
                  srl          s1, t1, t0
                  srli         a3, sp, 13
                  xor          t0, t4, tp
                  sub          t6, s8, tp
main_6:           jal          ra, 6f
0:                jal          ra, 7f
1:                jal          ra, 12f
2:                jal          t1, 13f
3:                jal          ra, 1b
4:                jal          ra, 26f
5:                jal          t1, 21f
6:                jal          a5, 20f
7:                jal          ra, 18f
8:                jal          t1, 16f
9:                jal          ra, 0b
10:               jal          ra, 5b
11:               jal          t0, 15f
12:               jal          t1, 10b
13:               jal          ra, 17f
14:               jal          ra, 2b
15:               jal          t2, 22f
16:               jal          ra, 25f
17:               jal          sp, 4b
18:               jal          t1, 3b
19:               jal          ra, 9b
20:               jal          a0, 19b
21:               jal          t1, 24f
22:               jal          gp, 14b
23:               jal          s9, 8b
24:               jal          ra, 23b
25:               jal          ra, 11b
26:               sltiu        t6, t4, -1513
                  sll          s6, t3, t1
                  sra          t0, t0, s2
                  and          t4, t3, a3
                  bge          s6, s10, 528f
528:              ori          t6, s1, 76
                  lui          a4, 202035
                  and          s0, s7, s3
                  sltu         a7, sp, s7
                  srai         t5, s10, 13
                  sltu         sp, zero, a2
                  bge          a3, s5, 549f
                  sltu         a7, gp, ra
                  xori         t3, s4, 1109
                  auipc        sp, 623316
                  addi         t6, s0, 1242
                  blt          a4, t1, 555f
                  bgeu         s7, a2, 553f
                  bge          s5, a1, 555f
                  srai         t5, t5, 12
                  auipc        a6, 1018398
                  xor          s5, s4, a3
                  and          zero, a2, t2
                  nop
                  bge          a7, a5, 557f
                  xori         a7, ra, 1560
549:              slt          a4, s3, s0
                  bne          zero, a4, 567f
                  auipc        tp, 468542
                  sub          s0, ra, s9
553:              xor          gp, t3, s5
                  slti         s6, s2, -1280
555:              blt          a5, ra, 572f
                  sltiu        t5, zero, 691
557:              add          s5, s2, a3
                  srl          s6, a5, t2
                  lui          t2, 584403
                  and          t0, s1, s0
                  auipc        t2, 198766
                  srl          t2, s4, t4
                  xor          s1, a2, s6
                  and          s10, s5, gp
                  add          a7, t3, a0
                  slti         t3, t1, 232
567:              bltu         a3, s9, 584f
main_8:           jal          ra, 0f
0:                jal          ra, 3f
1:                jal          t1, 9f
2:                jal          ra, 16f
3:                jal          t1, 24f
4:                jal          ra, 15f
5:                jal          t1, 1b
6:                jal          t2, 13f
7:                jal          ra, 8f
8:                jal          t1, 21f
9:                jal          sp, 7b
10:               jal          ra, 2b
11:               jal          ra, 14f
12:               jal          ra, 11b
13:               jal          a0, 12b
14:               jal          ra, 19f
15:               jal          t1, 22f
16:               jal          tp, 4b
17:               jal          a7, 20f
18:               jal          gp, 6b
19:               jal          ra, 23f
20:               jal          t1, 18b
21:               jal          sp, 17b
22:               jal          s4, 5b
23:               jal          ra, 25f
24:               jal          t1, 10b
25:               slli         t5, a1, 24
                  slli         t0, t4, 14
                  and          s10, zero, s7
                  srai         a5, ra, 18
                  nop
572:              andi         ra, a4, -1275
                  sll          ra, s2, t6
                  srl          a0, s2, s10
                  srl          ra, a6, tp
                  srl          a5, gp, s7
                  sra          t3, a7, s9
                  ori          a7, s8, -1077
                  bltu         t4, zero, 580f
580:              bge          s3, t4, 582f
                  sltiu        s3, t4, 1640
582:              sltiu        a1, s7, -823
                  or           t5, t0, zero
584:              bltu         s1, s9, 594f
                  lui          s10, 628904
                  sra          ra, a6, t1
                  slli         a1, s6, 18
                  xori         zero, t0, -1718
                  and          s0, s10, t5
                  or           s5, gp, zero
                  xori         sp, t6, 1059
                  auipc        s4, 36449
                  srl          s5, ra, t2
594:              xor          t5, s4, s3
                  nop
                  ori          t0, s10, 61
                  xori         a1, a5, -1339
                  sltiu        s10, a2, 1854
                  sltu         t6, t2, ra
                  bltu         a0, s9, 613f
                  srai         a7, t6, 14
                  blt          gp, t2, 616f
                  blt          s0, s8, 606f
                  addi         a5, a1, -946
                  srl          ra, a2, s3
606:              add          zero, sp, s1
                  sltiu        s7, a3, 114
                  sll          tp, t3, s8
                  slti         t2, t6, 1099
                  and          s8, a2, s7
                  sltiu        s10, gp, 1916
                  bltu         t5, a2, 628f
613:              blt          s8, a3, 628f
                  add          s9, a0, a3
                  nop
616:              srli         t5, s3, 24
                  srai         s7, a5, 10
                  sra          s3, zero, a4
                  addi         s5, a6, -1169
                  bne          s3, a4, 628f
                  andi         t4, t1, 630
                  beq          a6, sp, 623f
623:              sra          s9, a5, s10
                  nop
                  sltiu        s1, a4, 1190
                  slti         s6, a1, 462
                  srai         a6, a1, 15
628:              sub          gp, tp, s2
                  slti         t3, gp, 1189
                  sll          s4, a4, s6
                  beq          t0, a6, 646f
                  andi         a7, s6, -1161
                  bge          t0, s11, 646f
                  or           s6, s9, a3
                  sltu         sp, a2, gp
                  srl          a0, a0, ra
                  beq          t2, s6, 656f
                  bge          t6, s8, 641f
                  bltu         a5, s7, 640f
640:              bge          s2, a1, 642f
641:              blt          a1, a2, 643f
642:              lui          a5, 107287
643:              bgeu         tp, t4, 663f
                  srai         a3, a1, 15
                  add          a1, t2, s3
646:              slt          a6, s3, a1
                  addi         s6, s7, 1610
                  bgeu         s6, s6, 653f
                  bne          s6, t6, 664f
                  srli         ra, s0, 11
                  srai         ra, t6, 25
                  xor          tp, t2, a0
653:              addi         s3, s6, -1552
                  srl          s9, gp, t5
                  sub          t3, s10, a4
656:              ori          s3, s9, -803
                  sra          t5, a1, s6
                  lui          a5, 271106
                  auipc        s10, 558157
                  addi         t0, s1, -1922
                  andi         a4, s4, -140
                  auipc        s8, 723117
663:              srai         a1, ra, 9
664:              bltu         gp, s5, 673f
                  beq          ra, t6, 682f
                  sltiu        zero, a6, 933
                  addi         t0, a5, -1049
                  srl          zero, t6, s6
                  bgeu         s3, a0, 674f
                  add          ra, gp, s10
                  addi         t4, a0, -749
                  sltiu        a7, s1, 163
673:              ori          t1, a7, -618
674:              sll          t0, t6, s9
                  sll          gp, s9, t3
                  srl          s3, s1, t6
                  sltiu        a4, a7, -342
                  srai         s5, t4, 18
                  auipc        s9, 812441
                  addi         s5, t0, -553
                  beq          s0, a0, 682f
682:              andi         t6, a2, -954
                  srli         s10, s0, 5
                  slt          t1, a5, s5
                  auipc        ra, 28017
                  nop
                  or           s10, a4, s0
                  auipc        s4, 997120
                  bne          a7, s9, 699f
                  bltu         s5, a3, 709f
                  sra          a7, s6, zero
                  slti         s6, a5, -337
                  bne          tp, sp, 709f
                  blt          t4, s6, 711f
                  sltu         t3, s1, a7
                  addi         s3, t1, 205
                  xori         t5, t6, -1582
                  bltu         gp, a1, 708f
699:              andi         s5, t6, 88
                  srli         tp, s10, 3
                  auipc        s7, 785388
                  slli         sp, a7, 31
                  ori          zero, a5, 1635
                  andi         s0, t2, -264
                  sll          sp, s10, a6
                  sltu         s9, t1, s2
                  srai         a3, s6, 25
708:              beq          t2, a4, 725f
709:              sub          t6, zero, s0
                  xor          t6, s5, s2
711:              auipc        s7, 332204
                  slti         s8, s3, -47
                  blt          a0, zero, 723f
                  nop
                  bgeu         s8, s1, 726f
                  and          s3, t1, zero
                  sltiu        s6, ra, 1287
                  beq          s5, t3, 731f
                  blt          s7, s7, 720f
720:              srli         s8, a1, 31
                  bge          a6, s11, 722f
722:              sll          s9, t2, tp
723:              sltu         t3, s3, t0
                  sll          a1, t4, s10
725:              bltu         sp, a5, 740f
726:              sll          a0, t6, a5
                  bgeu         t2, s0, 743f
                  andi         s7, a7, 645
                  sub          a0, a4, s10
                  srai         t5, t3, 5
731:              bne          s6, a6, 741f
                  sub          s9, s5, s0
                  blt          a7, gp, 736f
                  slt          tp, a0, s9
                  srli         s4, tp, 3
736:              slt          s6, s1, s1
                  ori          s3, s4, -798
                  beq          s7, s1, 740f
                  sltu         t3, t5, gp
740:              xori         s5, s11, -1434
741:              blt          a3, s9, 742f
742:              or           t4, s2, t5
743:              sltu         s7, sp, t0
                  blt          a0, s1, 747f
                  xori         t1, gp, -829
                  add          s5, a5, t3
747:              lui          s7, 180715
                  blt          s9, s9, 753f
                  auipc        s5, 865816
                  xori         s5, a4, 684
                  or           s1, sp, s2
                  blt          a6, a2, 753f
753:              nop
                  la x18, test_done
                  jalr x0, x18, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            beq          s5, zero, sub_1_stack_p
sub_1_stack_p:    addi         s11, s11, -40
                  sltu         s6, t0, a3
                  sw           ra, 4(s11)
                  sltu         a5, s3, a1
                  sltiu        gp, a1, -1907
                  slt          s3, a3, sp
                  srai         a3, a5, 29
                  xor          t5, s10, sp
                  slti         t5, gp, 1553
                  xori         t0, s7, 753
sub_1_j2:         jal          ra, sub_4 #jump sub_1 -> sub_4
sub_1_2:          jal          ra, 3f
0:                jal          ra, 17f
1:                jal          t4, 4f
2:                jal          ra, 14f
3:                jal          s10, 11f
4:                jal          ra, 6f
5:                jal          t1, 12f
6:                jal          ra, 2b
7:                jal          s6, 5b
8:                jal          ra, 1b
9:                jal          s3, 7b
10:               jal          sp, 15f
11:               jal          gp, 10b
12:               jal          ra, 8b
13:               jal          t1, 16f
14:               jal          ra, 0b
15:               jal          t1, 13b
16:               jal          ra, 9b
17:               slt          a4, gp, gp
sub_1_1:          jal          ra, 15f
0:                jal          ra, 10f
1:                jal          t3, 23f
2:                jal          t1, 5f
3:                jal          t1, 27f
4:                jal          tp, 16f
5:                jal          ra, 20f
6:                jal          ra, 8f
7:                jal          t1, 17f
8:                jal          ra, 0b
9:                jal          ra, 6b
10:               jal          t4, 13f
11:               jal          s4, 4b
12:               jal          t1, 25f
13:               jal          sp, 7b
14:               jal          ra, 26f
15:               jal          ra, 2b
16:               jal          a5, 22f
17:               jal          t5, 24f
18:               jal          ra, 1b
19:               jal          s1, 21f
20:               jal          sp, 28f
21:               jal          ra, 3b
22:               jal          t1, 19b
23:               jal          t1, 29f
24:               jal          ra, 11b
25:               jal          ra, 9b
26:               jal          sp, 12b
27:               jal          t1, 18b
28:               jal          s3, 14b
29:               or           s8, t4, s1
sub_1_6:          jal          ra, 4f
0:                jal          t1, 10f
1:                jal          ra, 17f
2:                jal          ra, 12f
3:                jal          a3, 0b
4:                jal          ra, 19f
5:                jal          ra, 15f
6:                jal          t1, 8f
7:                jal          s9, 11f
8:                jal          ra, 5b
9:                jal          ra, 13f
10:               jal          ra, 1b
11:               jal          ra, 18f
12:               jal          ra, 20f
13:               jal          a4, 7b
14:               jal          s0, 2b
15:               jal          ra, 9b
16:               jal          ra, 14b
17:               jal          t6, 6b
18:               jal          s3, 16b
19:               jal          ra, 3b
20:               ori          a6, s1, 1206
sub_1_8:          jal          ra, 10f
0:                jal          ra, 4f
1:                jal          ra, 3f
2:                jal          ra, 8f
3:                jal          t0, 0b
4:                jal          ra, 11f
5:                jal          sp, 13f
6:                jal          ra, 14f
7:                jal          ra, 5b
8:                jal          a7, 6b
9:                jal          ra, 2b
10:               jal          t0, 7b
11:               jal          ra, 12f
12:               jal          t1, 9b
13:               jal          t1, 1b
14:               srli         t0, t2, 0
sub_1_10:         jal          ra, 1f
0:                jal          ra, 21f
1:                jal          ra, 7f
2:                jal          s4, 19f
3:                jal          t1, 8f
4:                jal          ra, 26f
5:                jal          ra, 27f
6:                jal          ra, 14f
7:                jal          t3, 4b
8:                jal          t1, 2b
9:                jal          t2, 0b
10:               jal          t1, 23f
11:               jal          s5, 15f
12:               jal          ra, 17f
13:               jal          ra, 9b
14:               jal          ra, 25f
15:               jal          t1, 20f
16:               jal          ra, 13b
17:               jal          ra, 5b
18:               jal          sp, 16b
19:               jal          ra, 10b
20:               jal          s4, 6b
21:               jal          t0, 22f
22:               jal          s4, 12b
23:               jal          ra, 18b
24:               jal          s10, 11b
25:               jal          ra, 3b
26:               jal          ra, 24b
27:               slt          a5, s10, s1
sub_1_0:          jal          ra, 3f
0:                jal          gp, 6f
1:                jal          ra, 7f
2:                jal          t5, 18f
3:                jal          tp, 17f
4:                jal          ra, 12f
5:                jal          t1, 1b
6:                jal          a0, 2b
7:                jal          ra, 8f
8:                jal          t1, 10f
9:                jal          s6, 16f
10:               jal          t4, 11f
11:               jal          ra, 4b
12:               jal          ra, 0b
13:               jal          ra, 14f
14:               jal          a0, 5b
15:               jal          a7, 13b
16:               jal          ra, 15b
17:               jal          ra, 9b
18:               andi         s1, t3, -2023
sub_1_5:          jal          ra, 1f
0:                jal          ra, 19f
1:                jal          a1, 22f
2:                jal          ra, 21f
3:                jal          ra, 7f
4:                jal          s5, 25f
5:                jal          t0, 26f
6:                jal          ra, 10f
7:                jal          t1, 27f
8:                jal          tp, 2b
9:                jal          sp, 20f
10:               jal          t5, 17f
11:               jal          ra, 13f
12:               jal          ra, 9b
13:               jal          ra, 28f
14:               jal          ra, 16f
15:               jal          ra, 11b
16:               jal          t1, 4b
17:               jal          ra, 23f
18:               jal          s4, 12b
19:               jal          t2, 18b
20:               jal          ra, 8b
21:               jal          ra, 14b
22:               jal          ra, 0b
23:               jal          s8, 15b
24:               jal          sp, 6b
25:               jal          ra, 5b
26:               jal          ra, 3b
27:               jal          ra, 24b
28:               or           s8, a7, t6
sub_1_12:         jal          ra, 5f
0:                jal          gp, 6f
1:                jal          t6, 4f
2:                jal          ra, 8f
3:                jal          ra, 10f
4:                jal          ra, 2b
5:                jal          ra, 12f
6:                jal          t3, 1b
7:                jal          ra, 9f
8:                jal          ra, 13f
9:                jal          t1, 3b
10:               jal          t1, 11f
11:               jal          ra, 0b
12:               jal          t1, 7b
13:               and          s8, gp, s9
sub_1_7:          jal          ra, 21f
0:                jal          ra, 26f
1:                jal          ra, 18f
2:                jal          ra, 10f
3:                jal          ra, 20f
4:                jal          t1, 25f
5:                jal          ra, 22f
6:                jal          ra, 7f
7:                jal          ra, 4b
8:                jal          s0, 24f
9:                jal          ra, 8b
10:               jal          t0, 0b
11:               jal          ra, 17f
12:               jal          ra, 15f
13:               jal          ra, 2b
14:               jal          t5, 16f
15:               jal          ra, 27f
16:               jal          ra, 11b
17:               jal          ra, 28f
18:               jal          ra, 19f
19:               jal          a7, 5b
20:               jal          ra, 1b
21:               jal          ra, 29f
22:               jal          ra, 23f
23:               jal          s0, 13b
24:               jal          ra, 30f
25:               jal          ra, 9b
26:               jal          ra, 12b
27:               jal          s0, 6b
28:               jal          ra, 3b
29:               jal          t1, 14b
30:               slli         zero, s10, 7
sub_1_11:         jal          ra, 4f
0:                jal          ra, 12f
1:                jal          t0, 2f
2:                jal          gp, 19f
3:                jal          a0, 13f
4:                jal          t1, 15f
5:                jal          ra, 3b
6:                jal          ra, 18f
7:                jal          ra, 17f
8:                jal          ra, 6b
9:                jal          ra, 14f
10:               jal          ra, 16f
11:               jal          ra, 8b
12:               jal          t1, 10b
13:               jal          gp, 11b
14:               jal          ra, 5b
15:               jal          ra, 7b
16:               jal          ra, 1b
17:               jal          ra, 9b
18:               jal          ra, 0b
19:               sub          t0, a7, s1
sub_1_3:          jal          ra, 0f
0:                jal          ra, 14f
1:                jal          a5, 5f
2:                jal          s8, 9f
3:                jal          ra, 10f
4:                jal          tp, 7f
5:                jal          t1, 2b
6:                jal          ra, 8f
7:                jal          t1, 15f
8:                jal          ra, 1b
9:                jal          s3, 11f
10:               jal          ra, 12f
11:               jal          ra, 4b
12:               jal          ra, 6b
13:               jal          ra, 3b
14:               jal          t6, 13b
15:               andi         s10, s6, 916
sub_1_13:         jal          ra, 13f
0:                jal          s6, 15f
1:                jal          s9, 22f
2:                jal          t1, 5f
3:                jal          a4, 10f
4:                jal          t1, 19f
5:                jal          ra, 8f
6:                jal          ra, 7f
7:                jal          t1, 14f
8:                jal          ra, 9f
9:                jal          tp, 3b
10:               jal          a7, 16f
11:               jal          ra, 18f
12:               jal          ra, 17f
13:               jal          ra, 4b
14:               jal          s5, 11b
15:               jal          t1, 23f
16:               jal          t1, 1b
17:               jal          t1, 0b
18:               jal          t1, 12b
19:               jal          ra, 21f
20:               jal          ra, 2b
21:               jal          ra, 20b
22:               jal          ra, 6b
23:               slt          t5, a3, s7
sub_1_9:          jal          ra, 10f
0:                jal          a0, 12f
1:                jal          ra, 8f
2:                jal          t3, 20f
3:                jal          t1, 15f
4:                jal          ra, 24f
5:                jal          ra, 4b
6:                jal          t4, 16f
7:                jal          t0, 21f
8:                jal          ra, 26f
9:                jal          ra, 13f
10:               jal          ra, 11f
11:               jal          s0, 3b
12:               jal          ra, 25f
13:               jal          ra, 1b
14:               jal          ra, 2b
15:               jal          ra, 5b
16:               jal          t0, 23f
17:               jal          t1, 19f
18:               jal          t5, 6b
19:               jal          ra, 9b
20:               jal          ra, 7b
21:               jal          ra, 17b
22:               jal          t0, 0b
23:               jal          ra, 22b
24:               jal          t1, 18b
25:               jal          ra, 14b
26:               jal          t6, 27f
27:               sltiu        s8, s4, 632
                  srai         s9, tp, 13
                  sub          s3, s10, a6
                  srli         a1, gp, 4
                  or           a6, t6, t6
                  nop
                  sra          a3, s11, a0
                  or           s4, a5, s2
                  auipc        gp, 632648
                  slt          t6, s6, a3
                  nop
                  or           t0, zero, s5
                  sltu         gp, s9, t0
                  srl          t6, t4, zero
                  addi         s7, a4, -283
                  srl          a3, tp, a4
                  srl          a5, t1, s6
                  srl          zero, s8, zero
                  slti         s0, s11, 1552
                  or           s3, zero, s11
                  addi         s0, s8, -1846
                  andi         s6, s8, -1368
                  auipc        t4, 533876
                  auipc        t5, 156277
                  sll          t1, a0, s2
                  sra          gp, a5, a6
                  slli         s4, t1, 2
                  srl          s4, s7, a0
                  sll          s1, s1, s4
                  lui          gp, 864354
                  bltu         a2, a5, 31f
                  xor          t3, a2, t5
31:               beq          a2, t5, 38f
                  and          s8, a7, t3
                  bge          t4, t5, 35f
                  slti         t1, a5, -545
35:               and          a6, s11, a3
                  slli         s6, sp, 29
                  bltu         a1, s4, 41f
38:               blt          s7, s2, 48f
                  srl          t6, s6, zero
                  sltiu        t1, t6, -1064
41:               srli         a0, s7, 13
                  slli         a1, t3, 8
                  bltu         s9, t1, 48f
                  and          s1, sp, ra
                  or           t3, t6, sp
                  xori         s6, s9, -1389
                  add          t5, s5, s2
48:               blt          a3, t3, 59f
                  srl          s7, t5, s11
                  sra          sp, s11, t4
                  andi         a3, s11, 1209
                  bgeu         a6, t5, 64f
                  add          sp, t2, t4
                  slti         a3, t0, 730
                  andi         ra, a1, -1347
                  bne          a4, ra, 73f
                  xori         s8, zero, 943
                  slli         zero, t0, 15
59:               andi         s0, ra, 663
                  bne          s4, t4, 80f
                  sltu         s10, sp, t3
                  or           t1, gp, sp
                  sltiu        s6, t0, -1155
64:               nop
                  sub          gp, a0, a3
                  bge          t3, s8, 84f
                  bge          a3, t0, 72f
                  srli         t2, tp, 15
                  or           t1, a1, t6
                  nop
                  xori         a0, a2, 818
72:               and          sp, ra, s1
73:               lui          a6, 446134
                  sltu         t2, a4, s1
                  ori          t4, a1, 408
                  lui          sp, 827941
                  sltu         ra, a1, t2
                  slti         a6, s8, -1209
                  sub          t3, s7, t1
80:               srai         s3, t0, 21
                  srl          s3, s4, s0
                  beq          t2, s3, 92f
                  blt          s0, t1, 90f
84:               nop
                  sltu         s6, sp, s6
                  bne          s1, sp, 96f
                  slt          t0, s7, s7
                  bgeu         a5, s6, 90f
                  bne          ra, t0, 99f
90:               slti         zero, s10, 123
                  srl          s9, t4, ra
92:               bne          s9, a6, 105f
                  bne          s2, a2, 113f
                  slt          t1, ra, t5
                  addi         a0, a7, 554
96:               auipc        a6, 370038
                  sll          s5, s7, a0
                  or           t5, t0, tp
99:               srl          a6, t1, s6
                  bgeu         s8, a0, 112f
                  nop
                  slti         zero, s3, -845
                  xori         s6, s4, 193
                  nop
105:              slt          gp, t6, s11
                  andi         a1, t1, 998
                  srai         s0, s0, 20
                  xori         gp, a0, 1674
                  srl          s5, s1, s7
                  auipc        ra, 571143
                  sub          s9, s2, a7
                  la           a4, sub_5
                  nop
                  sra          t5, a7, s4
                  addi         a4, a4, -637
                  bge          t5, t4, sub_1_j5 #branch to jump instr
                  nop
                  and          tp, t5, a0
                  srl          zero, a5, t6
sub_1_j5:         jalr         ra, a4, 637 #jump sub_1 -> sub_5
112:              ori          s10, t2, -1377
113:              slt          t3, s0, s3
                  add          s7, t3, s1
                  or           s9, s2, sp
                  or           gp, s9, a2
                  auipc        s7, 2099
                  srai         sp, s8, 18
                  srl          zero, s3, ra
                  or           a1, t0, a5
                  lui          t1, 457997
                  bltu         gp, zero, 137f
                  addi         t3, zero, -725
                  srli         a7, s0, 18
                  addi         ra, a6, -478
                  auipc        tp, 121709
                  lui          a3, 359006
                  sra          t0, s1, t5
                  lui          s3, 898285
                  add          t4, a3, a7
                  lui          s10, 951287
                  sltiu        s8, s9, 1933
                  auipc        t2, 666590
                  ori          s1, s3, 699
                  bgeu         s9, s0, 151f
                  bltu         s8, ra, 143f
137:              bltu         s0, t3, 150f
                  srli         a7, a3, 0
                  nop
                  bgeu         a0, t0, 157f
                  andi         a1, a5, 511
                  srli         t1, s2, 23
143:              srai         s6, s9, 19
                  xor          s5, sp, t5
                  lui          t6, 276672
                  or           tp, s9, s10
                  xori         gp, s10, -673
                  addi         s7, s5, 278
                  srl          t3, t2, gp
150:              bgeu         t3, ra, 170f
151:              sra          s0, s7, s10
                  slt          s10, s3, s10
                  lui          a7, 35155
                  andi         t4, t1, 1295
                  xor          s0, s7, s11
                  or           t5, s4, s11
157:              slli         t5, t5, 12
                  and          t1, sp, t3
                  bltu         zero, s10, 177f
                  or           s5, t0, t1
                  slti         sp, s11, 1331
                  auipc        s6, 457393
                  slli         t1, s5, 3
                  blt          t3, s9, 183f
                  bge          t6, a3, 170f
                  xori         s6, s2, 1836
                  ori          s6, ra, -937
                  bltu         s7, s10, 180f
                  bne          s7, a6, 176f
170:              ori          a7, t0, -1664
sub_1_4:          jal          ra, 9f
0:                jal          ra, 22f
1:                jal          ra, 13f
2:                jal          t1, 10f
3:                jal          t1, 17f
4:                jal          ra, 2b
5:                jal          ra, 3b
6:                jal          sp, 20f
7:                jal          ra, 8f
8:                jal          t1, 0b
9:                jal          ra, 7b
10:               jal          ra, 19f
11:               jal          t1, 15f
12:               jal          ra, 18f
13:               jal          ra, 6b
14:               jal          ra, 16f
15:               jal          ra, 21f
16:               jal          t3, 23f
17:               jal          ra, 14b
18:               jal          ra, 4b
19:               jal          t1, 5b
20:               jal          t1, 12b
21:               jal          ra, 1b
22:               jal          ra, 11b
23:               xori         zero, ra, 323
                  srai         a5, a7, 1
                  bltu         tp, s1, 174f
                  addi         s8, t2, 615
174:              and          s0, a2, s1
                  sra          s9, t0, s4
176:              nop
177:              bge          s11, a7, 187f
                  add          sp, a3, s8
                  add          a1, t0, gp
180:              lui          ra, 775370
                  lui          ra, 860015
                  andi         a4, sp, 1157
183:              add          t0, t0, t6
                  sltiu        a3, t0, 838
                  sltiu        s4, t5, -840
                  andi         ra, s2, -1922
187:              beq          s5, t2, 203f
                  or           s0, a4, sp
                  nop
                  beq          s1, s2, 194f
                  sub          t5, t4, s0
                  blt          s10, s11, 212f
                  auipc        a5, 615952
194:              srl          s5, s3, a7
                  bne          zero, s7, 212f
                  bne          t3, s1, 198f
                  slti         s6, s0, 1039
198:              auipc        t1, 262388
                  and          t1, t4, s7
                  bge          s4, sp, 220f
                  andi         s4, ra, -2035
                  nop
203:              srai         s4, t4, 22
                  or           s0, a1, s0
                  bgeu         a6, a5, 218f
                  slli         gp, t2, 10
                  sltu         s0, a6, s1
                  slli         s5, tp, 16
                  bge          s7, a5, 211f
                  sll          a5, ra, t2
211:              andi         gp, t3, -1797
212:              auipc        tp, 133996
                  srai         a7, sp, 28
                  ori          a1, t5, 1161
                  ori          s10, t4, -136
                  andi         ra, s6, 1198
                  sub          t4, ra, t5
218:              bge          t0, s9, 228f
                  slti         s8, s7, 1159
220:              bge          tp, t3, 240f
                  andi         gp, a2, -1654
                  bne          gp, tp, 229f
                  xor          s4, s11, s3
                  bltu         s0, a1, 229f
                  xor          s8, sp, s9
                  srl          t3, s2, t1
                  bgeu         zero, a0, 239f
228:              slli         t4, t3, 30
229:              ori          t1, s11, 48
                  auipc        s1, 40720
                  or           t5, s3, s10
                  add          s0, a4, s11
                  ori          s10, a4, -878
                  xori         s7, a4, -121
                  add          a7, s0, gp
                  nop
                  bne          t6, t3, 250f
                  sra          tp, s2, s10
239:              slti         gp, a2, 372
240:              sll          t6, s5, a2
                  srai         tp, s2, 23
                  beq          sp, s3, 252f
                  beq          t2, sp, 248f
                  sub          zero, t6, zero
                  lui          a1, 696750
                  nop
                  slt          t4, t4, s6
248:              bge          t2, t1, 266f
                  sll          a4, a5, t2
250:              ori          s5, s9, -1191
                  xori         s0, gp, -577
252:              xor          ra, s6, s7
                  xori         t3, t5, -1856
                  bgeu         a6, t5, 261f
                  sra          ra, a6, s11
                  bne          s6, a6, 266f
                  srai         t5, a2, 26
                  lui          s4, 717
                  lui          t3, 355521
                  sll          a6, s6, a1
261:              sll          t5, t3, t5
                  sll          tp, s0, a3
                  andi         s10, t6, 1489
                  addi         s10, s11, 1669
                  slti         zero, t3, 1197
266:              slli         t2, s10, 23
                  bgeu         t2, s11, 272f
                  sltu         a0, a4, s2
                  nop
                  sltiu        t5, t3, -91
                  srl          gp, a2, a2
272:              andi         a5, gp, -1557
                  nop
                  sll          sp, s11, a0
                  slli         t3, gp, 29
                  ori          sp, s7, 924
                  addi         s8, a5, 1774
                  blt          ra, a5, 295f
                  srli         zero, s6, 28
                  sub          s10, zero, s0
                  bge          a0, t2, 293f
                  srli         t5, a3, 18
                  srai         t3, s5, 4
                  sltu         s10, s4, t3
                  bge          a4, t1, 296f
                  slt          t1, s8, s11
                  sra          t3, t4, s9
                  add          t3, sp, t1
                  xor          s8, zero, s10
                  bne          gp, s6, 302f
                  slt          t6, s10, tp
                  sll          s6, zero, t4
293:              and          a7, s2, a2
                  ori          s4, s5, -403
295:              bne          a0, s11, 314f
296:              bge          sp, s1, 314f
                  xori         t4, tp, 97
                  bne          s8, t4, 313f
                  sub          t1, t3, s10
                  auipc        s0, 202869
                  bge          zero, s9, 308f
302:              slli         a5, t2, 3
                  slti         a1, t5, 1806
                  or           tp, sp, s11
                  blt          t5, a3, 320f
                  andi         a1, s2, -854
                  slli         s3, s10, 20
308:              srli         tp, t5, 31
                  slli         t5, t5, 19
                  bge          s9, s3, 314f
                  auipc        a1, 15508
                  sra          t4, s7, s7
313:              beq          t0, zero, 318f
314:              ori          s8, t1, -1014
                  bge          a1, t0, 327f
                  sub          ra, t2, a7
                  ori          s3, a4, 1184
318:              beq          s3, t3, 320f
                  andi         s8, t3, 1713
320:              ori          s10, s4, -8
                  sltiu        tp, zero, 1531
                  bltu         a5, t2, 332f
                  xori         gp, s9, 157
                  xor          s8, s1, s2
                  lui          t5, 497572
                  blt          s3, t2, 345f
327:              sub          a4, zero, ra
                  sltu         s10, t4, zero
                  srl          gp, s10, a3
                  bltu         t0, t6, 340f
                  beq          s0, t6, 351f
332:              sltiu        t3, s3, 1145
                  add          a7, t3, t3
                  addi         ra, a0, -682
                  xori         tp, zero, 163
                  xori         s5, s1, 723
                  auipc        ra, 364088
                  blt          s5, t2, 350f
                  add          s0, a2, a1
340:              auipc        s3, 752002
                  slt          a3, sp, a2
                  bne          s10, s2, 347f
                  xor          s4, gp, s7
                  blt          a5, s0, 356f
345:              andi         s7, s6, 79
                  blt          s9, t3, 356f
347:              addi         a5, s6, 1524
                  bltu         t2, gp, 361f
                  bltu         s10, t6, 366f
350:              sub          a3, a4, a2
351:              sltiu        a3, s11, 1083
                  xori         s5, s5, 627
                  and          a6, s7, s8
                  auipc        a1, 461353
                  sltu         a0, s3, t4
356:              sll          a4, s7, s10
                  blt          a1, s3, 373f
                  or           t1, s4, tp
                  bge          s1, s5, 379f
                  nop
361:              bgeu         a7, ra, 378f
                  ori          ra, s1, -712
                  and          a0, ra, s11
                  sll          s4, a2, a7
                  sll          t4, t3, a4
366:              xori         s8, s4, 744
                  blt          t0, a0, 385f
                  xor          s9, s6, sp
                  auipc        s5, 63462
                  addi         a1, s0, 145
                  andi         gp, t1, -1431
                  xori         t4, s7, 1860
                  sltiu        t3, s1, 831
                  la           t6, sub_2
                  srl          t1, t1, a0
                  sltu         gp, t2, a2
                  xori         a7, a6, -2028
                  addi         t6, t6, 654
                  slt          a6, s8, a5
sub_1_j3:         jalr         ra, t6, -653 #jump sub_1 -> sub_2
                  slti         t6, a4, -1134
373:              nop
                  beq          zero, s8, 387f
                  add          s10, s3, a3
                  sll          t6, t3, s5
                  sra          s8, a3, a4
378:              bltu         s1, s7, 385f
379:              sltiu        a1, s9, -838
                  addi         t5, t3, -817
                  sltu         s3, a7, s6
                  andi         a1, tp, 1467
                  sra          s8, a4, a2
                  sra          gp, s11, t1
385:              sll          s8, a4, s4
                  bltu         s7, s2, 404f
387:              xor          s1, gp, tp
                  slt          a5, a7, a5
                  or           t6, a7, t3
                  sra          s7, t1, a6
                  beq          t6, s3, 393f
                  sra          a4, t1, s10
393:              xori         a5, zero, -1027
                  xor          t0, a1, a1
                  srl          a5, t1, a7
                  slti         s7, s1, 1994
                  slti         t1, sp, 569
                  bne          s9, ra, 400f
                  bne          t0, s9, 404f
400:              lui          s8, 715559
                  and          t5, s10, zero
                  srli         zero, s9, 24
                  add          a7, s10, t1
                  slti         a1, s6, 1438
                  or           s7, s7, a0
                  addi         s6, s4, 1274
                  slt          t0, s7, s1
                  sltiu        t2, t4, -119
                  sub          s1, t0, a5
                  srl          s1, t3, a3
sub_1_j4:         jal          ra, sub_3 #jump sub_1 -> sub_3
                  or           a3, s3, t5
                  sra          a1, s8, t2
404:              slli         s7, t6, 9
                  auipc        s0, 637282
                  slti         a4, s10, -775
                  bne          sp, t6, 417f
                  sltu         t5, s8, s3
                  beq          s0, t0, 429f
                  bge          s6, s10, 421f
                  bge          s11, sp, 418f
                  srai         tp, a5, 0
                  bge          s10, s0, 417f
                  srai         sp, ra, 9
                  slt          s4, gp, a3
                  bge          a7, zero, 421f
417:              or           s4, tp, a1
418:              bltu         s3, s0, 431f
                  bge          s1, s11, 439f
                  blt          s4, t1, 431f
421:              addi         t5, t2, 1380
                  nop
                  bltu         t5, sp, 430f
                  sltu         a6, s4, a7
                  beq          a3, s10, 437f
                  addi         a4, t3, 460
                  andi         sp, a3, -1195
                  slti         zero, s3, 1873
429:              addi         a0, s4, -1426
430:              addi         zero, a6, 1023
431:              slti         ra, s11, 596
                  slt          a0, s0, s5
                  sra          ra, s7, a4
                  slli         t1, t1, 6
                  bge          s3, a3, 445f
                  sra          a3, t6, ra
437:              srli         zero, s3, 28
                  sltu         zero, s7, s2
439:              srl          t2, sp, zero
                  beq          a0, tp, 457f
                  srai         zero, t1, 8
                  and          ra, s5, tp
                  auipc        s4, 88601
                  blt          a1, s3, 461f
445:              sub          t5, a2, t3
                  beq          t0, a7, 466f
                  bne          t3, s8, 452f
                  or           a7, a7, t1
                  auipc        s10, 451933
                  slti         a5, s11, 322
                  blt          s0, s8, 466f
452:              add          sp, s11, t0
                  sra          s3, a5, gp
                  and          gp, s3, s0
                  beq          s0, a7, 473f
                  xor          t6, s8, s5
457:              slli         t4, t3, 21
                  srli         t3, a5, 20
                  slti         a3, t0, 1360
                  or           t1, t4, s7
461:              blt          s7, a4, 474f
                  slt          s6, s10, s3
                  auipc        a5, 619539
                  srl          zero, a4, t5
                  add          t6, gp, ra
466:              bgeu         s0, s7, 473f
                  addi         s0, s10, 1955
                  srl          a3, zero, zero
                  and          t3, t0, s5
                  andi         s5, s6, 1090
                  srl          s5, a1, a0
                  addi         s3, t6, -1683
473:              bgeu         a6, a0, 485f
474:              xor          ra, t5, s8
                  slli         t3, a4, 9
                  andi         a7, a1, 395
                  bgeu         s9, s4, 496f
                  srli         t1, t5, 22
                  srl          a7, a3, a3
                  slt          t5, s11, a7
                  and          t6, t2, t5
                  nop
                  bge          t4, a0, 495f
                  blt          a2, s1, 504f
485:              bltu         a2, a6, 503f
                  xori         a1, s1, -2005
                  andi         a5, s7, -1995
                  sltiu        tp, t3, -931
                  and          tp, a5, a5
                  bge          s7, s4, 492f
                  xori         t5, s11, -351
492:              bltu         t0, s5, 494f
                  ori          tp, a3, 1558
494:              sltiu        s1, s10, 1665
495:              beq          t3, t6, 502f
496:              blt          a2, s4, 506f
                  or           a6, tp, s0
                  sub          s1, t4, t1
                  xori         tp, s11, -1632
                  sll          zero, s0, s4
                  auipc        t5, 221871
502:              ori          a1, t6, 902
503:              bge          a4, t4, 513f
504:              slti         s1, a3, -702
                  bgeu         s2, s3, 515f
506:              sra          a7, t0, a5
                  slli         s8, t2, 26
                  nop
                  beq          a6, zero, 511f
                  bge          gp, t2, 515f
511:              sltu         a1, s8, a2
                  slt          gp, a0, s10
513:              slt          s3, a0, a0
                  sltiu        tp, a3, -181
515:              addi         t5, s2, -1926
                  auipc        a1, 231612
                  nop
                  bge          a5, t1, 534f
                  bge          a2, a6, 524f
                  xor          t4, s9, t1
                  xori         t6, t2, -748
                  auipc        t3, 145825
                  addi         s4, t4, -412
524:              srl          s9, s1, s7
                  srli         s7, t1, 9
                  andi         s7, zero, 694
                  sltu         sp, a5, t3
                  srl          s8, a6, t1
                  andi         s5, a5, -1385
                  bgeu         a2, t1, 532f
                  srl          t3, s7, s1
532:              lui          a0, 572319
                  xor          s3, t3, tp
534:              beq          s6, s3, 546f
                  srli         s7, s7, 28
                  nop
                  xor          a4, s11, a0
                  blt          s6, s11, 540f
                  xori         t0, a4, 1659
540:              sub          zero, t6, s4
                  slli         t6, t1, 16
                  ori          a3, s7, -1463
                  and          a1, t0, a2
                  bne          a2, ra, 555f
                  slt          a3, zero, s9
546:              xor          s0, a1, sp
                  beq          t0, s8, 554f
                  slli         s6, zero, 9
                  bgeu         s11, zero, 559f
                  addi         s10, t1, -1668
                  or           ra, s6, s8
                  nop
                  or           a1, ra, a4
554:              ori          a3, s9, 334
555:              beq          t0, a7, 562f
                  addi         s7, t1, -1215
                  andi         s10, s4, 1988
                  ori          s0, s3, -1836
559:              bgeu         s6, a5, 571f
                  slti         t4, s11, 487
                  or           sp, a6, a4
562:              beq          tp, s7, 572f
                  slti         t6, a2, 1278
                  bne          t2, s0, 574f
                  andi         a7, t3, 671
                  add          t3, t6, a5
                  andi         t5, s8, -1625
                  blt          s5, a1, 573f
                  bgeu         s8, zero, 587f
                  sra          s3, s11, a2
571:              srli         a5, s6, 28
572:              blt          t2, a4, 592f
573:              andi         a7, sp, 913
574:              sra          t0, t6, sp
                  blt          s5, sp, 579f
                  andi         s9, s0, -334
                  sltu         s5, s7, zero
                  ori          t3, t0, -1007
579:              srl          sp, a3, s9
                  or           s1, s9, a4
                  srai         t4, a0, 21
                  and          tp, t5, s1
                  bltu         s2, s11, 603f
                  xori         s10, ra, -276
                  and          zero, s11, sp
                  auipc        t6, 486047
587:              blt          s9, a6, 603f
                  and          s4, zero, s4
                  xor          t2, a0, s10
                  slt          t0, t3, a3
                  srli         a5, tp, 4
592:              xori         s5, ra, -1684
                  auipc        sp, 476101
                  blt          zero, t6, 607f
                  auipc        a0, 691680
                  slti         s1, t0, 326
                  bne          a5, a2, 604f
                  sltiu        s7, s10, -780
                  sra          t6, sp, t5
                  sub          a7, s9, s5
                  sra          s8, ra, a4
                  sltu         t6, s3, sp
603:              lui          t2, 798599
604:              bgeu         a7, a3, 621f
                  sra          a6, a3, s2
                  add          s9, s7, t2
607:              addi         t4, a1, -1969
                  or           a0, a1, s8
                  bne          s5, t0, 628f
                  addi         gp, ra, -2017
                  nop
                  bgeu         t1, a4, 614f
                  nop
614:              auipc        a1, 874594
                  beq          zero, a7, 635f
                  slt          tp, a0, s10
                  srli         s5, t0, 22
                  bltu         s5, s3, 628f
                  nop
                  nop
621:              blt          t2, ra, 634f
                  slt          a0, a3, sp
                  bne          s2, ra, 638f
                  nop
                  sra          zero, gp, s1
                  and          t3, tp, s6
                  slt          s7, ra, s0
628:              bge          t6, gp, 633f
                  nop
                  srai         t0, s8, 2
                  blt          a6, a4, 643f
                  or           sp, t2, a6
633:              sltiu        t4, s4, 2010
634:              sltiu        a3, s5, -1176
635:              xor          t1, s1, t5
                  sra          a3, s4, s7
                  sltu         sp, s8, tp
638:              addi         t5, s5, -171
                  andi         a0, s8, 1230
                  nop
                  bltu         a5, s4, 659f
                  srl          s0, t3, s11
643:              bltu         t5, s0, 660f
                  sub          a0, a4, a4
                  bgeu         a4, s11, 650f
                  blt          t0, s9, 659f
                  ori          t2, s0, 823
                  slli         t4, s3, 8
                  sltiu        t3, t3, 1434
650:              slti         t5, a7, -1725
                  xori         t4, s4, 1569
                  slli         a3, s5, 6
                  sra          a6, s5, gp
                  beq          s11, a3, 671f
                  xori         ra, s3, -1381
                  bgeu         ra, s3, 666f
                  slti         t6, s8, 1584
                  or           s10, s11, t2
659:              beq          a4, s1, 671f
660:              or           a4, s8, a5
                  srai         s3, s11, 15
                  addi         sp, t2, -856
                  xor          s8, a2, s11
                  nop
                  sll          s3, ra, t0
666:              slli         zero, s0, 12
                  lui          t6, 557893
                  nop
                  srli         a7, ra, 0
                  sltu         t3, s1, s11
671:              beq          a5, s8, 691f
                  lui          s5, 659921
                  blt          zero, a7, 692f
                  bgeu         t0, a4, 678f
                  bne          a4, s5, 690f
                  ori          ra, t1, -1894
                  sltiu        s0, s0, 1252
678:              srl          t3, a7, s11
                  xori         s8, s9, 606
                  srli         t3, a5, 30
                  nop
                  nop
                  or           ra, t6, s4
                  srai         a1, s7, 0
                  sltu         s6, ra, s9
                  sub          s6, s0, s5
                  sltiu        a5, tp, -1311
                  slt          a0, t2, t6
                  nop
690:              srl          t5, s2, a2
691:              xori         t1, a7, 112
692:              add          s8, s8, t3
                  lui          t0, 585500
                  lui          t3, 107694
                  srai         s1, t6, 10
                  lui          t2, 507417
                  bge          a5, a1, 702f
                  slli         ra, a7, 22
                  or           s7, a3, s9
                  bne          gp, tp, 702f
                  and          t6, a1, sp
702:              slli         s9, s8, 16
                  lw           ra, 4(s11)
                  xori         s0, t5, -51
                  addi         s11, s11, 40
                  sltu         s5, t4, zero
                  slti         a3, s9, -901
                  sra          a7, tp, a2
1080:             addi x28, x1, 1
1080:             jalr x28, x28, 0
sub_5:            bge          a4, t5, sub_5_stack_p
                  slti         s10, a0, -864
sub_5_stack_p:    addi         s11, s11, -8
                  slt          s1, t6, s4
                  sw           ra, 4(s11)
                  xori         t4, t5, 286
sub_5_6:          jal          ra, 10f
0:                jal          ra, 2f
1:                jal          sp, 7f
2:                jal          ra, 15f
3:                jal          t1, 23f
4:                jal          ra, 18f
5:                jal          a6, 13f
6:                jal          a7, 19f
7:                jal          gp, 9f
8:                jal          ra, 1b
9:                jal          t1, 26f
10:               jal          s5, 16f
11:               jal          a4, 21f
12:               jal          t0, 6b
13:               jal          s9, 25f
14:               jal          t1, 24f
15:               jal          t2, 11b
16:               jal          ra, 3b
17:               jal          ra, 5b
18:               jal          ra, 14b
19:               jal          ra, 4b
20:               jal          ra, 8b
21:               jal          s8, 20b
22:               jal          ra, 12b
23:               jal          a0, 22b
24:               jal          ra, 17b
25:               jal          t4, 0b
26:               srai         s6, t1, 12
sub_5_4:          jal          ra, 9f
0:                jal          tp, 8f
1:                jal          s10, 11f
2:                jal          t1, 13f
3:                jal          gp, 10f
4:                jal          t1, 7f
5:                jal          ra, 2b
6:                jal          a5, 4b
7:                jal          ra, 12f
8:                jal          ra, 1b
9:                jal          t5, 0b
10:               jal          ra, 5b
11:               jal          ra, 6b
12:               jal          a0, 3b
13:               auipc        a3, 325256
sub_5_3:          jal          ra, 25f
0:                jal          ra, 10f
1:                jal          ra, 12f
2:                jal          sp, 17f
3:                jal          t6, 15f
4:                jal          tp, 1b
5:                jal          t1, 3b
6:                jal          ra, 16f
7:                jal          t2, 30f
8:                jal          ra, 13f
9:                jal          t1, 19f
10:               jal          t2, 11f
11:               jal          t1, 23f
12:               jal          ra, 9b
13:               jal          a1, 27f
14:               jal          t1, 22f
15:               jal          a6, 28f
16:               jal          t1, 21f
17:               jal          ra, 20f
18:               jal          ra, 24f
19:               jal          t1, 8b
20:               jal          ra, 4b
21:               jal          t1, 29f
22:               jal          ra, 7b
23:               jal          ra, 26f
24:               jal          ra, 5b
25:               jal          ra, 6b
26:               jal          sp, 14b
27:               jal          t1, 18b
28:               jal          a0, 0b
29:               jal          ra, 2b
30:               sltu         t5, s5, s0
sub_5_2:          jal          ra, 1f
0:                jal          ra, 11f
1:                jal          ra, 15f
2:                jal          s6, 3f
3:                jal          t5, 16f
4:                jal          ra, 21f
5:                jal          t1, 10f
6:                jal          a0, 23f
7:                jal          a6, 4b
8:                jal          t1, 17f
9:                jal          ra, 2b
10:               jal          s9, 0b
11:               jal          ra, 9b
12:               jal          ra, 19f
13:               jal          t1, 12b
14:               jal          tp, 22f
15:               jal          s6, 14b
16:               jal          ra, 8b
17:               jal          ra, 6b
18:               jal          ra, 7b
19:               jal          ra, 18b
20:               jal          s10, 5b
21:               jal          s10, 20b
22:               jal          ra, 13b
23:               and          t2, a0, a4
sub_5_5:          jal          ra, 10f
0:                jal          a3, 9f
1:                jal          ra, 15f
2:                jal          ra, 1b
3:                jal          t1, 12f
4:                jal          ra, 5f
5:                jal          ra, 11f
6:                jal          s7, 8f
7:                jal          s6, 18f
8:                jal          t1, 17f
9:                jal          ra, 13f
10:               jal          ra, 4b
11:               jal          ra, 16f
12:               jal          gp, 7b
13:               jal          t1, 19f
14:               jal          s3, 0b
15:               jal          ra, 14b
16:               jal          t1, 6b
17:               jal          ra, 3b
18:               jal          ra, 2b
19:               jal          ra, 20f
20:               sub          t2, sp, s10
                  bgeu         gp, s5, 14f
                  and          a7, s8, tp
                  nop
                  slt          a6, ra, s7
                  sltiu        s4, s5, 1369
                  andi         sp, s10, 921
                  slt          s4, t3, s0
                  srli         s5, t2, 23
                  beq          t4, s1, 24f
                  addi         zero, ra, -1327
                  lui          s3, 241802
                  lui          s9, 2608
                  sltiu        t0, gp, 703
                  add          t3, sp, a5
14:               bltu         a2, a1, 15f
15:               sub          s4, tp, s0
                  sub          a6, s8, gp
                  xor          ra, sp, zero
                  ori          t2, s11, 1875
                  sltu         t0, s0, s3
                  sub          zero, t2, s7
                  srai         a3, tp, 15
                  sll          s4, a0, t2
                  srl          s0, t2, t0
24:               sll          zero, zero, ra
                  xori         a0, s3, -529
                  sltiu        s0, s11, 218
                  bgeu         a3, t5, 42f
                  beq          s9, t5, 30f
                  andi         s0, t0, 910
30:               bgeu         a5, s8, 39f
                  or           a7, sp, a3
                  or           s5, t2, a7
sub_5_0:          jal          ra, 1f
0:                jal          ra, 6f
1:                jal          sp, 3f
2:                jal          ra, 5f
3:                jal          ra, 7f
4:                jal          ra, 2b
5:                jal          ra, 9f
6:                jal          ra, 10f
7:                jal          ra, 8f
8:                jal          s3, 4b
9:                jal          t5, 0b
10:               andi         t4, s3, 509
                  sltiu        t2, t1, -192
                  sra          a1, t5, s6
                  ori          tp, s7, 2023
                  xor          s3, s8, sp
                  and          t0, s1, zero
                  srai         t1, sp, 30
39:               bne          t2, s4, 46f
                  sll          s6, s7, s0
                  srl          s4, s6, s3
42:               auipc        s5, 106915
                  slli         t1, ra, 6
                  blt          a4, t5, 50f
                  bltu         ra, gp, 53f
46:               auipc        gp, 697911
                  bne          ra, a7, 65f
                  blt          tp, a6, 65f
                  srli         zero, s11, 4
50:               bne          t5, a0, 70f
                  add          sp, s4, a6
                  sll          s10, t5, sp
53:               sra          zero, gp, s9
                  blt          s7, s4, 63f
                  beq          s6, t6, 63f
                  sltu         s0, s0, t4
                  blt          s9, sp, 74f
                  andi         a1, s5, -472
                  add          t0, a2, zero
                  blt          zero, zero, 73f
                  xori         s1, a0, 737
                  sltu         tp, a2, tp
63:               xori         zero, s4, -1607
                  slt          a5, a1, s9
65:               ori          tp, ra, 1738
                  slli         t3, s9, 30
                  or           zero, s4, t6
                  slti         s9, s2, 50
                  bne          gp, s3, 83f
70:               auipc        s4, 983604
                  srl          a7, sp, t3
                  lui          a6, 1029386
73:               and          s7, tp, s5
74:               bltu         s0, tp, 75f
75:               xor          a5, s11, t0
                  and          s10, t5, s3
                  xori         s1, a0, 447
                  xori         a6, s11, -1176
                  beq          a2, t0, 81f
                  sra          a7, s8, t5
81:               addi         s4, s8, 1809
                  sub          s8, s6, s11
83:               andi         s5, gp, -984
                  or           a6, zero, s8
                  srai         s5, a2, 3
                  bltu         a6, t6, 99f
                  xor          a6, t5, s4
                  nop
                  addi         tp, t2, 18
                  lui          gp, 155309
                  xori         s8, s3, -1407
                  auipc        a5, 906753
                  sll          a7, tp, s8
                  slt          s7, t5, sp
                  sltu         s6, t2, t3
                  and          a3, a0, zero
                  bge          s11, s0, 109f
                  sll          gp, a6, s5
99:               bltu         s6, ra, 104f
                  slti         s4, t0, -1907
                  bltu         ra, ra, 108f
                  beq          t6, a5, 109f
                  sltiu        t1, ra, -388
104:              nop
                  add          a0, s6, s0
                  bgeu         ra, t4, 117f
                  bgeu         gp, a1, 112f
108:              bge          s5, t4, 124f
109:              bne          zero, ra, 129f
                  xor          t5, s2, a0
                  ori          zero, t2, 1589
112:              ori          s8, a0, 621
                  sra          s5, a6, t6
                  slti         a7, s6, -1206
                  xor          a3, a7, s11
                  sltu         t2, t1, zero
117:              slti         zero, s11, -1728
                  beq          zero, tp, 123f
                  beq          ra, s8, 125f
                  sltiu        t0, s4, 368
                  bltu         s5, s0, 141f
                  srai         a7, s0, 9
123:              bne          gp, s6, 132f
124:              sub          ra, s11, t4
125:              bgeu         a0, t2, 126f
126:              sltu         s8, a1, s3
                  srai         ra, a0, 12
                  beq          gp, ra, 144f
129:              srli         t2, sp, 4
                  sltu         sp, tp, a4
                  nop
132:              sltu         s6, a6, s11
                  srli         s3, a2, 29
                  lui          ra, 70575
                  slti         s8, tp, 1553
                  andi         s8, t1, 812
                  blt          t2, s9, 150f
                  slli         s9, ra, 7
                  sll          a4, t0, s1
                  srli         zero, s7, 26
141:              bgeu         a3, t3, 161f
                  srai         s0, s10, 29
                  bltu         t5, t1, 150f
144:              sltiu        s9, t4, -669
                  blt          t0, t6, 150f
                  ori          t2, a4, -275
                  sra          s7, a7, a6
                  bne          t0, s9, 160f
                  andi         a6, tp, 996
150:              bgeu         zero, t4, 163f
                  auipc        s6, 223112
                  bge          t5, sp, 169f
                  srl          s10, s8, s10
                  sltiu        s7, gp, -1186
                  add          tp, s3, a4
                  bgeu         a2, s1, 164f
                  sub          s0, t0, t1
                  srai         a0, s2, 19
                  add          t5, s2, s9
160:              nop
161:              or           t4, a2, s8
                  srai         zero, s2, 18
163:              andi         s3, t1, 826
164:              srli         sp, s7, 5
                  srli         t5, sp, 9
                  slti         a4, a3, -172
                  slti         t3, s3, -502
                  addi         s0, a1, 1369
169:              bne          s6, t4, 177f
                  auipc        s6, 217425
                  slt          a1, a7, a6
                  sltu         s1, sp, tp
                  slti         zero, zero, 126
                  srai         s1, zero, 17
                  bne          ra, t1, 193f
                  srl          a3, s7, s10
177:              or           tp, s5, s11
                  add          t5, t3, a2
                  xor          s3, t5, sp
                  andi         s0, s7, 194
                  sub          s3, t5, s7
                  slti         t3, t4, 772
                  srai         a6, s4, 3
                  andi         s6, s2, 1927
                  sub          t4, a5, s9
                  or           s9, gp, s4
                  bltu         t3, s6, 201f
                  slli         tp, a5, 29
                  sltiu        s3, a7, -1221
                  slt          t3, s4, s6
                  add          zero, t4, sp
                  add          gp, a1, s2
193:              xori         a0, s5, -1590
                  bge          a0, s5, 200f
                  slt          s9, a2, gp
                  xori         s0, a6, 219
                  xor          s1, s6, a7
                  bne          s1, s8, 200f
                  bge          zero, s1, 204f
200:              bgeu         t1, s2, 214f
201:              srl          t5, t0, a1
                  lui          t1, 627666
                  nop
204:              nop
                  slti         a1, zero, 1132
                  slt          a6, s2, t3
                  auipc        t2, 564588
                  bne          s4, gp, 215f
sub_5_1:          jal          ra, 12f
0:                jal          gp, 9f
1:                jal          ra, 21f
2:                jal          ra, 8f
3:                jal          s5, 10f
4:                jal          ra, 3b
5:                jal          t1, 1b
6:                jal          gp, 24f
7:                jal          ra, 14f
8:                jal          t0, 20f
9:                jal          ra, 15f
10:               jal          ra, 7b
11:               jal          ra, 23f
12:               jal          a3, 0b
13:               jal          sp, 5b
14:               jal          ra, 13b
15:               jal          ra, 19f
16:               jal          t1, 27f
17:               jal          s9, 4b
18:               jal          t1, 2b
19:               jal          s10, 11b
20:               jal          ra, 28f
21:               jal          ra, 6b
22:               jal          ra, 25f
23:               jal          ra, 17b
24:               jal          ra, 26f
25:               jal          t1, 16b
26:               jal          ra, 22b
27:               jal          ra, 18b
28:               slti         s7, t3, 386
                  sltiu        gp, t1, 1319
                  ori          gp, a0, -253
                  xori         t5, ra, -766
                  lui          a1, 442238
                  bne          s11, a5, 220f
214:              slli         s7, s10, 19
215:              srli         a5, t0, 3
                  nop
                  bltu         s9, t2, 219f
                  sll          a0, a5, a4
219:              slt          s9, s0, ra
220:              auipc        s1, 893732
                  sll          s8, zero, t3
                  srli         t5, t2, 16
                  nop
                  slti         t4, s10, -1242
                  and          t1, s7, tp
                  slti         sp, a3, -1173
                  sltiu        t1, a7, 339
                  beq          s1, zero, 237f
                  add          s3, sp, t2
                  srli         t1, gp, 24
                  andi         s3, zero, 588
                  xori         a0, tp, 1387
                  sltiu        t6, sp, 1887
                  sll          t0, t0, a2
                  xor          s0, s1, t6
                  bge          t5, a1, 242f
237:              blt          s1, zero, 242f
                  add          s9, zero, a7
                  ori          s9, t3, 1102
                  sltiu        a6, t4, -1081
                  bge          s10, a5, 242f
242:              beq          tp, s4, 258f
                  ori          t2, a3, 1949
                  sra          a5, t4, t4
                  srai         t1, s1, 8
                  xor          t0, a0, t4
                  xor          t6, gp, s6
                  slti         s0, s11, 1482
                  or           t4, sp, sp
                  sub          a1, s10, s7
                  slli         s3, s4, 4
                  andi         a0, t4, -2023
                  srai         a5, s4, 26
                  sll          t4, s11, t2
                  bgeu         s9, t3, 272f
                  addi         s1, a5, 908
                  sra          ra, t2, a6
258:              bltu         t5, gp, 269f
                  bne          t3, a6, 274f
                  lui          a6, 129188
                  add          ra, s7, a7
                  srai         s7, s0, 25
                  andi         t2, a1, 964
                  sll          t0, t4, a4
                  nop
                  andi         ra, t1, -584
                  bne          ra, gp, 280f
                  sltiu        t0, s5, -1874
269:              or           s0, t3, a1
                  bne          s10, t4, 275f
                  add          s0, s5, s8
272:              add          s6, t5, s3
                  beq          t4, ra, 287f
274:              slli         a0, s5, 19
275:              bge          t4, a5, 281f
                  sltiu        a7, a3, -803
                  xor          s5, s10, s2
                  bltu         t4, s9, 295f
                  sub          tp, t4, t3
280:              auipc        a7, 594917
281:              add          s10, a5, t0
                  and          s7, t1, a2
                  bltu         ra, s2, 292f
                  sub          t2, t2, a7
                  srl          s10, s2, a4
                  sub          s4, tp, a2
287:              sll          s4, a0, t6
                  add          a4, s8, t3
                  slti         a0, a1, 1700
                  and          a7, t3, a3
                  blt          t4, a2, 303f
292:              blt          t1, t0, 303f
                  xori         gp, t5, 225
                  bltu         t4, s2, 300f
295:              addi         gp, s3, -116
                  slti         a6, t5, -265
                  auipc        t2, 153696
                  addi         a3, a7, 230
                  srai         s8, sp, 26
300:              or           s0, a3, t2
                  auipc        zero, 465388
                  srl          a6, a3, s8
303:              nop
                  slti         a0, a3, 1484
                  nop
                  xor          a0, t5, s2
                  nop
                  add          a4, s7, s2
                  srl          t2, a2, a7
                  slti         t0, s11, 1058
                  slli         s10, t3, 21
                  sra          a1, zero, a3
                  sltu         t2, s2, t0
                  bltu         s2, t1, 316f
                  andi         a1, t3, 915
316:              beq          a4, s0, 323f
                  beq          t5, s4, 319f
                  ori          t6, a3, -314
319:              or           a0, s6, t3
                  xor          a7, t4, a7
                  srli         gp, ra, 17
                  and          tp, t1, a3
323:              bne          a3, t3, 339f
                  slt          t6, s11, a0
                  ori          s1, sp, 794
                  andi         s3, a4, -759
                  srli         s10, a4, 31
                  add          t0, t0, s10
                  sub          t3, zero, s5
                  auipc        a3, 884915
                  srai         t0, a7, 11
                  nop
                  blt          t2, s2, 342f
                  srl          ra, t1, t5
                  blt          sp, s10, 351f
                  and          ra, t0, a4
                  add          s7, s10, a5
                  xori         s10, s10, -1980
339:              slli         t6, s9, 29
                  bgeu         t6, s0, 348f
                  slti         s9, a4, -1668
342:              srli         s6, s7, 29
                  blt          s0, a7, 358f
                  add          ra, a7, zero
                  xori         s5, t0, 1487
                  beq          a4, t2, 353f
                  add          s3, t1, t3
348:              srli         s0, a3, 14
                  sltiu        a3, ra, -1168
                  xor          s6, gp, t0
351:              xori         s8, a1, 1629
                  addi         tp, a2, 1043
353:              sll          a5, t5, s7
                  nop
                  sltu         s6, s8, s10
                  add          s10, s5, zero
                  blt          s6, s3, 374f
358:              slti         s8, gp, 149
                  srli         s6, t2, 16
                  lui          a7, 393417
                  blt          a0, t2, 374f
                  sll          a4, s2, gp
                  auipc        a7, 1012146
                  add          a0, ra, a7
                  sub          s9, tp, gp
                  srl          tp, t5, sp
                  srl          t5, a1, s1
                  srli         s4, s6, 3
                  bge          gp, t5, 374f
                  or           ra, a4, s2
                  slt          s6, s5, t4
                  sll          t5, s8, t6
                  srl          a7, t6, t2
374:              add          s3, a0, s7
                  addi         s4, t2, 868
                  lw           ra, 4(s11)
                  srl          a6, a1, t6
                  addi         s11, s11, 8
                  srai         a6, s11, 28
                  addi         s10, s6, -1573
                  auipc        sp, 62873
                  sll          s1, a5, zero
553:              addi x17, x1, 0
553:              jalr x17, x17, 0
sub_3:            or           s1, a5, s5
                  beq          gp, t6, sub_3_stack_p
                  ori          a0, t0, 1545
sub_3_stack_p:    addi         s11, s11, -64
                  sltu         s8, a7, s0
                  sw           ra, 4(s11)
                  sltiu        s6, s6, 448
                  lui          s9, 533821
                  srl          tp, a5, t0
                  add          s5, gp, a3
                  sub          sp, s11, s8
                  xor          t4, a0, ra
                  bne          t3, a6, 6f
                  xor          sp, t4, a0
6:                slt          a6, a5, a1
                  auipc        s0, 105364
                  srli         s1, s2, 2
                  lui          t4, 294707
                  blt          zero, t5, 12f
                  lui          a6, 965636
12:               xor          s3, a2, s11
                  lw           ra, 4(s11)
                  xor          tp, a5, t6
                  sltiu        a3, s10, 1046
                  slli         zero, s10, 25
                  slli         gp, t5, 30
                  sltiu        s0, s10, 220
                  lui          s0, 492641
                  addi         s11, s11, 64
                  sub          t2, zero, a6
                  xor          s1, tp, t1
                  xori         tp, a7, 1918
                  slli         s4, s9, 14
33:               addi x21, x1, 1
33:               jalr x21, x21, 0
sub_2:            bge          t0, t4, sub_2_stack_p
                  xori         s6, t4, -1819
                  addi         a4, t3, -1824
sub_2_stack_p:    addi         s11, s11, -36
                  srai         t3, s11, 0
                  xori         a4, t1, -1157
                  lui          gp, 353978
                  sll          s7, s3, zero
                  andi         s8, a2, -1675
                  sw           ra, 4(s11)
                  add          s3, t5, a6
sub_2_12:         jal          ra, 3f
0:                jal          t5, 7f
1:                jal          t1, 5f
2:                jal          t1, 6f
3:                jal          ra, 4f
4:                jal          ra, 2b
5:                jal          a4, 0b
6:                jal          ra, 9f
7:                jal          t1, 8f
8:                jal          ra, 10f
9:                jal          a5, 1b
10:               sltiu        t4, s3, 759
sub_2_5:          jal          ra, 8f
0:                jal          a5, 5f
1:                jal          t1, 10f
2:                jal          t1, 13f
3:                jal          ra, 7f
4:                jal          ra, 1b
5:                jal          ra, 21f
6:                jal          t1, 11f
7:                jal          s7, 6b
8:                jal          t6, 19f
9:                jal          ra, 20f
10:               jal          t1, 17f
11:               jal          ra, 12f
12:               jal          ra, 2b
13:               jal          t1, 14f
14:               jal          t1, 15f
15:               jal          ra, 16f
16:               jal          ra, 23f
17:               jal          ra, 9b
18:               jal          ra, 22f
19:               jal          ra, 0b
20:               jal          t1, 3b
21:               jal          t1, 4b
22:               jal          sp, 24f
23:               jal          ra, 18b
24:               jal          t1, 25f
25:               and          t3, s2, a5
sub_2_3:          jal          ra, 14f
0:                jal          sp, 1f
1:                jal          t1, 23f
2:                jal          tp, 9f
3:                jal          t1, 6f
4:                jal          tp, 13f
5:                jal          ra, 3b
6:                jal          ra, 12f
7:                jal          t4, 4b
8:                jal          ra, 18f
9:                jal          t1, 15f
10:               jal          s10, 19f
11:               jal          ra, 22f
12:               jal          ra, 2b
13:               jal          ra, 10b
14:               jal          s8, 20f
15:               jal          t1, 0b
16:               jal          ra, 17f
17:               jal          a7, 11b
18:               jal          ra, 16b
19:               jal          s8, 5b
20:               jal          ra, 21f
21:               jal          t0, 8b
22:               jal          ra, 7b
23:               or           a7, s9, s4
sub_2_2:          jal          ra, 2f
0:                jal          ra, 4f
1:                jal          t1, 22f
2:                jal          s5, 20f
3:                jal          t0, 5f
4:                jal          t1, 6f
5:                jal          ra, 13f
6:                jal          ra, 18f
7:                jal          t1, 11f
8:                jal          t1, 16f
9:                jal          a4, 17f
10:               jal          t1, 14f
11:               jal          ra, 0b
12:               jal          sp, 1b
13:               jal          ra, 7b
14:               jal          ra, 21f
15:               jal          s8, 19f
16:               jal          ra, 10b
17:               jal          ra, 3b
18:               jal          ra, 15b
19:               jal          t1, 12b
20:               jal          sp, 8b
21:               jal          sp, 9b
22:               xor          a6, t2, sp
sub_2_1:          jal          ra, 22f
0:                jal          ra, 4f
1:                jal          tp, 5f
2:                jal          tp, 29f
3:                jal          s5, 18f
4:                jal          ra, 7f
5:                jal          t1, 24f
6:                jal          sp, 25f
7:                jal          t1, 27f
8:                jal          ra, 3b
9:                jal          ra, 13f
10:               jal          ra, 9b
11:               jal          ra, 8b
12:               jal          a1, 11b
13:               jal          t1, 1b
14:               jal          ra, 2b
15:               jal          a3, 28f
16:               jal          t1, 26f
17:               jal          ra, 19f
18:               jal          t6, 23f
19:               jal          a7, 15b
20:               jal          t2, 12b
21:               jal          ra, 17b
22:               jal          a7, 10b
23:               jal          ra, 6b
24:               jal          ra, 0b
25:               jal          ra, 30f
26:               jal          t1, 20b
27:               jal          t1, 14b
28:               jal          sp, 16b
29:               jal          ra, 21b
30:               sltu         a1, a6, t4
sub_2_13:         jal          ra, 7f
0:                jal          a0, 3f
1:                jal          tp, 2f
2:                jal          sp, 0b
3:                jal          s3, 4f
4:                jal          t0, 11f
5:                jal          ra, 8f
6:                jal          ra, 10f
7:                jal          ra, 6b
8:                jal          ra, 1b
9:                jal          t0, 5b
10:               jal          t1, 9b
11:               lui          a0, 79223
sub_2_10:         jal          ra, 0f
0:                jal          s8, 2f
1:                jal          sp, 21f
2:                jal          ra, 13f
3:                jal          t1, 9f
4:                jal          tp, 15f
5:                jal          ra, 14f
6:                jal          t6, 4b
7:                jal          t1, 1b
8:                jal          ra, 20f
9:                jal          a4, 11f
10:               jal          t1, 18f
11:               jal          t1, 6b
12:               jal          ra, 7b
13:               jal          s4, 5b
14:               jal          t2, 19f
15:               jal          s6, 16f
16:               jal          ra, 10b
17:               jal          ra, 3b
18:               jal          gp, 8b
19:               jal          t1, 17b
20:               jal          s4, 12b
21:               srli         a5, s1, 23
sub_2_0:          jal          ra, 8f
0:                jal          t1, 1f
1:                jal          ra, 9f
2:                jal          t1, 0b
3:                jal          t1, 7f
4:                jal          ra, 6f
5:                jal          gp, 10f
6:                jal          ra, 3b
7:                jal          s6, 2b
8:                jal          ra, 4b
9:                jal          ra, 5b
10:               lui          s8, 708298
sub_2_4:          jal          ra, 0f
0:                jal          a0, 7f
1:                jal          ra, 19f
2:                jal          t1, 22f
3:                jal          ra, 5f
4:                jal          t1, 11f
5:                jal          ra, 17f
6:                jal          ra, 8f
7:                jal          s6, 16f
8:                jal          t1, 24f
9:                jal          s10, 21f
10:               jal          ra, 23f
11:               jal          ra, 12f
12:               jal          t1, 1b
13:               jal          t1, 2b
14:               jal          ra, 3b
15:               jal          ra, 9b
16:               jal          t1, 10b
17:               jal          gp, 13b
18:               jal          sp, 14b
19:               jal          ra, 20f
20:               jal          ra, 6b
21:               jal          ra, 4b
22:               jal          ra, 15b
23:               jal          ra, 18b
24:               sub          s5, s3, t5
                  ori          a6, sp, 1295
                  sll          gp, a2, s4
                  srl          s3, s1, t0
                  slti         a7, t5, -483
                  or           a1, s5, t0
                  lui          s8, 306572
                  add          s9, a1, t2
                  srai         s0, gp, 0
                  bge          s10, s1, 15f
                  srai         s9, s9, 7
                  and          s1, s8, s2
                  slti         a6, s1, -1033
                  slti         a5, s0, -679
                  sltu         t6, s4, s5
                  bge          s11, t1, 32f
15:               srli         tp, s4, 15
                  slti         a6, s2, 1589
                  andi         sp, gp, 472
sub_2_8:          jal          ra, 14f
0:                jal          ra, 15f
1:                jal          t0, 13f
2:                jal          t1, 7f
3:                jal          ra, 1b
4:                jal          tp, 21f
5:                jal          ra, 22f
6:                jal          t1, 9f
7:                jal          sp, 11f
8:                jal          t1, 12f
9:                jal          t1, 19f
10:               jal          s10, 5b
11:               jal          t1, 8b
12:               jal          ra, 17f
13:               jal          ra, 2b
14:               jal          gp, 10b
15:               jal          ra, 18f
16:               jal          ra, 23f
17:               jal          ra, 16b
18:               jal          ra, 20f
19:               jal          ra, 3b
20:               jal          ra, 25f
21:               jal          ra, 26f
22:               jal          ra, 0b
23:               jal          a5, 24f
24:               jal          gp, 4b
25:               jal          ra, 6b
26:               jal          ra, 27f
27:               xori         s10, a0, 1554
                  slti         s0, s11, -1862
                  slt          s10, a1, t3
                  andi         zero, s9, 958
                  beq          a3, t4, 22f
22:               sub          a5, gp, ra
                  srai         s4, s6, 14
                  sll          a4, t5, s2
                  bne          a1, s1, 34f
                  srai         ra, t6, 16
                  add          t1, ra, a6
                  slli         gp, gp, 16
                  bge          s4, t1, 41f
                  sll          t2, s11, s4
                  and          t5, s10, a6
32:               bge          t1, a1, 46f
                  xor          a5, ra, s7
34:               sll          s9, s2, s2
                  srai         s9, s3, 16
                  auipc        sp, 743518
                  auipc        zero, 579175
                  srai         t5, t2, 31
                  srai         s5, s4, 2
                  bne          s2, a4, 50f
41:               sltiu        s3, s6, 189
                  auipc        s6, 1041098
                  slli         s1, t5, 18
                  bltu         t5, a4, 53f
                  or           a7, a6, gp
46:               andi         s9, a1, -831
                  srai         s3, sp, 19
                  srl          a0, t2, a2
                  add          a1, s3, a6
50:               srai         s8, a4, 2
                  xor          gp, s5, s9
                  addi         s7, a2, 258
53:               sll          s0, s11, s5
                  addi         s4, s8, 1051
                  addi         t3, a5, -1529
                  slti         a5, a4, 1428
                  andi         t6, sp, -554
                  sltu         a7, t3, a1
                  lui          s8, 1008083
                  srli         t1, t5, 15
                  sltiu        ra, s5, -866
                  ori          a0, t6, -1135
                  auipc        t0, 900758
                  slt          t2, s4, ra
                  srli         zero, t1, 30
                  lui          s6, 9680
                  sltu         t6, s5, a0
                  sll          tp, zero, s3
                  slti         a6, sp, -411
                  add          s0, sp, s10
                  bge          sp, s9, 76f
                  slti         s9, s2, -645
                  bne          a4, a0, 89f
                  auipc        a3, 801388
                  xor          t1, t4, s7
76:               blt          t1, a1, 79f
                  slli         a1, s9, 8
                  lui          t3, 653298
79:               bgeu         s7, t5, 87f
                  sra          gp, s3, a3
                  add          s0, sp, a0
                  sltu         s3, t0, a0
                  nop
                  sub          s8, tp, t0
                  and          s5, ra, a0
                  sll          a4, t2, a4
87:               srai         t4, s5, 5
                  sltu         t6, s7, s3
89:               slti         s8, t5, 944
                  bgeu         t6, a3, 102f
                  beq          t0, s4, 109f
                  slli         t0, s0, 7
                  sra          s4, s3, t4
                  bne          a7, s11, 105f
                  xor          ra, ra, t2
                  srli         s6, a6, 1
                  xori         s7, a2, -317
                  xori         ra, a3, -1891
                  bgeu         ra, s7, 104f
                  sra          gp, s5, a7
                  blt          s1, a3, 113f
102:              srli         t2, zero, 7
                  and          t0, a7, s1
104:              andi         s9, t5, 502
105:              lui          s1, 71831
                  sltu         a6, s9, t1
                  lui          s3, 286040
                  srai         s9, a6, 24
109:              add          s6, t5, a5
                  and          t1, t2, a0
                  addi         a5, a5, -1948
                  blt          a0, s9, 115f
113:              and          gp, s7, s4
                  blt          a1, ra, 116f
115:              bgeu         t0, t1, 120f
116:              bltu         s7, s10, 119f
                  xor          s9, sp, zero
                  sra          t5, gp, zero
119:              sltiu        a6, t2, -383
120:              xor          a5, a0, s7
                  slli         s10, a1, 27
                  sltiu        t4, t0, 1064
                  srai         s7, a1, 18
                  sll          a4, sp, t6
                  sra          s10, s6, s2
                  slli         s8, zero, 23
                  srai         t5, a0, 14
                  srai         a4, a6, 31
                  sltiu        s8, s11, 1577
                  sub          a4, s8, a4
                  slt          s4, s0, t6
                  auipc        t2, 415294
                  sltiu        sp, t3, 1614
                  xor          s8, s8, s11
                  srl          a7, t2, a2
                  and          t4, t0, gp
                  nop
                  sll          zero, s7, a7
                  nop
                  sra          s5, s0, t1
                  blt          ra, s6, 156f
                  add          t6, s10, gp
                  slt          tp, s8, t4
                  srl          a0, s10, s10
                  srl          a5, s3, s1
                  srli         a6, sp, 2
                  bgeu         tp, ra, 150f
                  sll          s5, a4, a7
                  blt          t4, t6, 151f
150:              xori         t4, t0, 1471
151:              addi         tp, s1, -1803
                  and          a7, a5, t5
                  sra          zero, t1, tp
                  srli         a4, a2, 29
                  xor          a1, t0, t3
156:              xori         t0, t1, -447
                  xor          tp, a5, t3
                  andi         s7, s0, 1054
                  xor          ra, zero, s9
                  addi         a3, s1, -277
                  and          s3, zero, s5
                  srai         tp, t2, 18
                  srli         t3, s5, 9
                  sll          tp, s7, s6
                  slt          s4, a2, t3
                  lui          gp, 1017690
                  slti         gp, a2, 1131
                  ori          s4, s7, 135
                  or           zero, t0, a7
                  slt          t6, tp, a4
                  bne          a6, gp, 178f
                  srai         s7, a3, 14
                  bgeu         t5, s11, 189f
                  lui          a3, 949540
                  lui          t6, 884947
                  slt          a7, t3, a6
                  auipc        s9, 268469
178:              slt          t5, zero, a2
                  srl          ra, s6, s3
                  srl          a0, tp, a5
                  sra          s0, s10, t0
                  sub          s0, a5, t6
                  blt          s3, s0, 199f
                  bltu         a3, a2, 200f
                  xor          zero, s4, a0
                  lui          s4, 356660
                  sub          sp, s7, s4
                  and          a6, t5, s8
189:              beq          s3, a3, 195f
                  ori          a1, s1, 1237
                  srai         sp, s11, 25
                  xor          s4, a2, a6
                  nop
                  slli         a1, a6, 2
195:              auipc        t2, 426973
                  beq          a4, t6, 208f
                  xor          t0, gp, a1
                  bne          t4, a7, 209f
199:              add          s8, s8, t0
200:              blt          a1, ra, 208f
                  add          a7, t1, s9
                  andi         t3, s10, -534
                  andi         t3, s1, -317
                  sltu         t1, tp, t2
                  srl          s4, a2, s4
                  or           s1, s4, a2
                  blt          a1, ra, 212f
208:              beq          t0, a2, 215f
209:              bne          a5, sp, 211f
                  lui          s4, 425045
211:              or           t5, a0, s7
212:              slli         s8, a6, 18
                  addi         t1, s8, -205
                  srai         sp, s10, 2
215:              srl          s3, t5, t2
                  addi         a3, t2, -1932
                  slti         a7, a4, 1565
                  sub          a7, t3, ra
                  and          t6, s3, t1
                  sub          s5, t0, t1
                  or           a3, s9, s5
                  add          sp, s5, zero
                  or           tp, a0, ra
                  sra          a1, a5, t6
                  bgeu         zero, sp, 234f
                  beq          t3, s6, 238f
                  addi         t5, tp, 324
                  xor          s8, sp, t3
                  or           s1, t3, ra
                  addi         zero, s9, 239
                  or           s6, a1, s2
                  slt          a0, gp, t5
                  slli         zero, t6, 5
234:              bge          a4, a5, 252f
                  bgeu         s2, a7, 242f
                  ori          s0, s3, 366
                  xori         sp, a0, 546
238:              and          zero, sp, a7
                  xori         s10, a1, -1036
                  addi         t4, s11, 356
                  slti         a5, s7, 1684
242:              xor          s9, s0, s9
                  addi         s3, s4, 237
                  srli         t0, s0, 3
                  sra          s7, ra, zero
                  srli         gp, t1, 4
                  addi         t5, t4, 1859
                  sll          s7, s0, a4
                  blt          a6, a4, 267f
                  addi         a1, a6, -669
                  blt          s5, t2, 263f
252:              lui          tp, 75130
                  andi         t2, s5, -1656
                  bne          s5, a2, 257f
                  sub          s5, zero, sp
                  sltu         a3, s1, a5
257:              addi         tp, ra, 1886
                  ori          ra, a2, -128
                  blt          s11, a4, 260f
260:              xori         a4, a2, -764
                  auipc        tp, 961179
                  ori          s3, sp, -1734
263:              sltu         tp, s10, s11
                  addi         t1, s4, -1684
                  andi         sp, t0, 695
                  srli         a5, s4, 14
267:              slti         t2, sp, -83
                  slt          t2, a1, a2
                  lui          a7, 616751
                  bne          s5, sp, 286f
                  bltu         a4, a1, 274f
                  addi         s8, s8, 920
                  slt          s10, a3, t5
274:              beq          t0, ra, 284f
                  auipc        a6, 842479
                  bne          zero, s6, 290f
                  auipc        s7, 395549
                  srli         zero, a6, 10
                  srl          a4, s4, s9
                  srai         s4, a5, 5
                  or           ra, a3, s7
                  or           s9, s1, s5
                  addi         t4, t2, 1815
284:              sltu         t0, a3, t2
                  add          s1, a6, s10
286:              bltu         s2, s9, 298f
                  andi         s4, ra, 1203
                  sltiu        a7, a0, 1268
                  addi         t1, a4, -797
290:              slt          a3, s5, gp
                  and          s10, gp, a4
                  sra          s3, s10, s5
                  slt          t4, s3, s7
                  slti         a7, a2, 787
                  slli         a5, t0, 30
                  bne          t4, s1, 312f
                  ori          s3, s9, 910
298:              slt          t5, t5, s5
                  or           gp, a4, s5
                  sub          s7, a5, t6
                  sltiu        a1, gp, 1917
                  addi         a3, s2, -321
                  bne          s3, s7, 318f
                  or           t5, tp, sp
                  bne          a7, s8, 317f
                  sub          t3, s9, t1
                  srli         s10, a0, 11
                  addi         t4, t4, 187
                  srl          s10, zero, t0
                  beq          zero, s6, 326f
                  slli         a3, t1, 16
312:              andi         s10, tp, -1233
                  nop
                  sll          t3, s8, s9
                  xor          s7, a2, s0
                  srai         gp, ra, 7
317:              add          a3, t6, a1
318:              bltu         sp, s4, 327f
                  bge          a4, ra, 324f
                  addi         s4, s5, 1685
                  xori         s10, a7, 989
                  xor          a5, s1, t2
                  bne          sp, a3, 326f
324:              sltu         t1, a0, t5
                  slti         s9, s1, 1880
326:              xor          t3, a3, a7
327:              xori         sp, s6, 755
                  srli         ra, zero, 3
                  bge          t5, a7, 332f
                  bge          a3, a3, 332f
                  bge          a5, s8, 336f
332:              slti         t3, a1, 580
                  srl          t0, t3, s11
                  slli         ra, s4, 7
                  beq          a3, s10, 341f
336:              ori          tp, t4, 1362
                  xori         a0, s0, 1827
                  nop
                  slli         t5, s0, 4
                  bge          t6, t2, 356f
341:              sub          a1, a2, a0
                  and          s7, a7, t4
                  sltiu        s7, s2, -1627
                  and          s6, a5, a1
                  add          sp, s6, a2
                  bge          a1, tp, 362f
                  sub          s6, t4, zero
                  or           s9, zero, t5
                  slti         ra, s0, -939
                  slt          s8, s0, tp
                  xor          s8, a4, tp
                  addi         s0, a1, -372
                  and          s6, s11, a7
                  xori         a1, a1, 1919
                  srl          a5, a7, a7
356:              bne          a5, s1, 371f
                  sub          a5, s4, t4
                  lui          s3, 220588
                  srai         s4, s10, 4
                  auipc        t6, 373579
                  sra          s0, sp, a0
362:              or           a4, a2, sp
                  srai         s3, t4, 30
                  and          s7, a2, s7
                  bge          a3, s3, 373f
                  bge          s4, s0, 372f
                  slli         s7, a6, 12
                  beq          s10, s11, 386f
                  sub          s9, t2, a1
                  and          a3, t2, t1
371:              xori         tp, s6, -934
372:              bgeu         s6, t2, 379f
373:              add          s7, ra, s6
                  addi         zero, a1, -1125
                  bltu         sp, s9, 378f
                  sltu         a3, t1, s4
                  srai         s7, ra, 8
378:              bge          s10, a0, 390f
379:              sltiu        t0, s6, -812
                  bge          s3, sp, 396f
                  nop
                  sll          tp, s10, t3
                  xori         s6, ra, 510
                  lui          a4, 258152
                  and          t6, s11, a0
386:              nop
                  srl          a0, a0, a5
                  xor          s7, gp, t0
                  sub          a3, s9, zero
390:              sltu         s8, a4, zero
                  xor          a4, s8, ra
                  xori         t4, s0, -2008
                  lui          t1, 391934
                  slt          a7, gp, s0
                  sub          tp, t6, s2
396:              srai         t1, a5, 1
                  blt          t0, s8, 406f
                  slli         s10, tp, 27
                  bltu         s1, a1, 401f
                  sll          t5, t1, s2
401:              slli         t4, a5, 20
                  sltu         sp, s2, t2
                  and          gp, t4, s9
                  sll          s7, s8, zero
                  sra          s0, t6, s11
406:              xori         sp, t1, -762
                  blt          sp, s4, 408f
408:              ori          s7, sp, 1131
                  auipc        t3, 26260
                  bne          s11, s7, 413f
                  bltu         a2, sp, 423f
                  slt          a0, ra, t0
413:              addi         t3, s0, 1237
                  xori         s1, a6, -709
                  slli         sp, gp, 9
                  xor          s3, s3, gp
                  slli         zero, a3, 2
                  nop
                  sltu         zero, t6, t6
                  srl          s3, s6, a3
                  bne          s6, s10, 433f
                  andi         s7, t3, -602
423:              bltu         s4, tp, 428f
                  sra          a3, s1, sp
                  and          s9, s9, zero
                  bge          tp, s5, 429f
                  xori         s7, gp, -42
428:              lui          t1, 266963
429:              xor          t2, s3, t4
                  srai         t0, a0, 6
                  beq          a0, zero, 433f
                  srai         s6, s2, 2
433:              bne          a4, s1, 451f
                  xori         a4, ra, -1381
                  srai         s5, t1, 7
                  blt          a1, s5, 439f
                  bgeu         a1, t3, 449f
                  bne          s11, tp, 448f
439:              lui          t2, 907628
                  bne          s5, t2, 449f
                  and          s3, s5, s1
                  nop
                  srl          s5, s1, zero
                  and          a4, a1, t0
                  srai         t5, t5, 18
                  nop
                  slli         a6, t3, 3
448:              or           a7, gp, a3
449:              bltu         s5, t5, 454f
                  or           s0, t6, a2
451:              addi         s6, s5, 1669
                  bge          a2, a3, 468f
                  srli         a1, s10, 22
454:              lui          s0, 60456
                  sra          tp, a1, a5
                  and          gp, s0, s2
                  sub          t1, s5, s9
                  auipc        s7, 818380
                  sub          s9, a7, s2
                  addi         t6, s7, -1822
                  ori          a1, a2, 1601
                  add          s6, t0, s3
sub_2_6:          jal          ra, 19f
0:                jal          ra, 16f
1:                jal          ra, 11f
2:                jal          ra, 6f
3:                jal          s0, 7f
4:                jal          t1, 14f
5:                jal          a1, 22f
6:                jal          a3, 13f
7:                jal          t1, 4b
8:                jal          tp, 9f
9:                jal          ra, 1b
10:               jal          sp, 21f
11:               jal          ra, 18f
12:               jal          ra, 17f
13:               jal          a6, 12b
14:               jal          ra, 2b
15:               jal          t6, 23f
16:               jal          ra, 8b
17:               jal          a7, 0b
18:               jal          ra, 5b
19:               jal          ra, 3b
20:               jal          ra, 24f
21:               jal          ra, 20b
22:               jal          s0, 15b
23:               jal          ra, 10b
24:               sub          s5, ra, s8
                  nop
                  slli         a0, zero, 19
                  andi         zero, s9, -325
                  slli         s10, s5, 29
sub_2_9:          jal          ra, 9f
0:                jal          t1, 10f
1:                jal          ra, 15f
2:                jal          ra, 5f
3:                jal          ra, 0b
4:                jal          t3, 11f
5:                jal          ra, 13f
6:                jal          s3, 4b
7:                jal          s10, 2b
8:                jal          ra, 3b
9:                jal          gp, 12f
10:               jal          ra, 1b
11:               jal          ra, 7b
12:               jal          ra, 14f
13:               jal          t5, 8b
14:               jal          a1, 6b
15:               sra          t1, ra, a5
                  bge          s1, tp, 483f
468:              slli         s9, a2, 14
                  add          tp, ra, t2
                  and          s3, s5, tp
                  or           s1, s10, s7
                  xor          zero, gp, a6
                  nop
                  srai         a4, gp, 22
                  sll          a5, a6, t1
                  ori          a5, sp, 1174
                  auipc        a5, 79696
                  slti         a1, s3, 213
                  sra          a4, a1, t4
                  andi         t0, a3, 1209
                  sll          s5, t3, ra
                  and          a1, a3, s6
483:              auipc        t1, 925103
                  bltu         ra, s8, 489f
                  bge          s1, s5, 492f
                  or           s5, s0, sp
                  and          s8, s4, t6
                  auipc        zero, 21648
489:              or           t5, s7, s5
                  sra          tp, s2, tp
                  xor          tp, zero, a0
492:              sltu         t3, a1, t0
                  blt          t4, a5, 507f
                  slli         ra, s1, 30
                  bge          t6, t0, 506f
sub_2_7:          jal          ra, 11f
0:                jal          t1, 15f
1:                jal          gp, 7f
2:                jal          s6, 13f
3:                jal          t3, 8f
4:                jal          t1, 5f
5:                jal          s7, 1b
6:                jal          ra, 4b
7:                jal          t1, 17f
8:                jal          ra, 6b
9:                jal          ra, 3b
10:               jal          t4, 0b
11:               jal          ra, 2b
12:               jal          ra, 9b
13:               jal          ra, 10b
14:               jal          ra, 16f
15:               jal          ra, 14b
16:               jal          s6, 12b
17:               sltu         t4, a0, ra
                  slt          s0, a4, a3
                  or           s1, s6, s6
                  sll          t3, s7, t0
                  beq          s6, zero, 502f
                  srl          a7, s6, t5
                  andi         s10, s2, -949
502:              and          t4, s11, t5
sub_2_11:         jal          ra, 17f
0:                jal          gp, 11f
1:                jal          t1, 12f
2:                jal          ra, 6f
3:                jal          tp, 19f
4:                jal          ra, 10f
5:                jal          ra, 1b
6:                jal          t2, 16f
7:                jal          ra, 0b
8:                jal          ra, 18f
9:                jal          t1, 3b
10:               jal          tp, 21f
11:               jal          t1, 15f
12:               jal          t0, 4b
13:               jal          a4, 9b
14:               jal          ra, 2b
15:               jal          ra, 22f
16:               jal          t1, 8b
17:               jal          s0, 13b
18:               jal          ra, 20f
19:               jal          ra, 14b
20:               jal          s5, 5b
21:               jal          ra, 7b
22:               sltu         a7, t6, gp
                  sltu         s1, t1, s6
                  ori          t5, a5, 908
                  slti         s5, s8, -879
506:              andi         s9, tp, -364
507:              and          a5, a5, s2
                  slt          sp, zero, a6
                  or           s6, a2, tp
                  srl          t6, s3, a2
                  slli         tp, gp, 29
                  bgeu         s10, s5, 517f
                  ori          sp, a6, 1779
                  bne          a0, gp, 528f
                  slt          t0, s8, s8
                  srai         t6, s1, 20
517:              srli         t3, t1, 22
                  sll          zero, tp, ra
                  bltu         a0, t6, 522f
                  ori          s4, t3, 40
                  slt          zero, a5, s10
522:              bge          t1, t6, 528f
                  xori         t2, t3, 275
                  srli         sp, s11, 10
                  slt          s7, ra, t3
                  addi         a3, s8, 1002
                  auipc        a1, 317997
528:              xor          s10, s6, sp
                  add          s1, s5, s5
                  lui          s6, 938268
                  and          s6, a2, gp
                  sra          s0, sp, s0
                  slt          s6, t3, a2
                  sltiu        t5, sp, -1510
                  and          t3, s9, s9
                  xori         t6, s3, -972
                  xor          t4, s7, s4
                  sll          t2, ra, tp
                  bgeu         sp, t0, 547f
                  and          a3, t4, ra
                  lui          s9, 1000806
                  blt          t2, sp, 557f
                  srai         t4, t5, 15
                  xori         s3, s9, 692
                  add          s1, gp, t2
                  bltu         s5, a1, 562f
547:              slti         s7, s3, -1260
                  blt          a0, s8, 549f
549:              ori          t2, gp, 1377
                  beq          s7, s10, 560f
                  xori         s9, gp, 1215
                  slt          t2, a5, t5
                  beq          s11, a4, 556f
                  bne          a6, t0, 565f
                  blt          a7, s1, 560f
556:              sll          s9, t4, s5
557:              slti         s1, a4, 200
                  xori         t1, a4, -1847
                  slli         s5, s8, 0
560:              bltu         s8, s0, 567f
                  ori          s8, sp, 74
562:              slt          s10, t5, t1
                  nop
                  xor          t2, s1, s11
565:              sra          s7, a4, t3
                  sltiu        t6, a1, -411
567:              addi         s8, s3, -1320
                  beq          s2, a3, 580f
                  bltu         a0, sp, 581f
                  and          a7, a6, t2
                  srli         s6, a0, 24
                  beq          a3, a2, 588f
                  sra          a5, a2, zero
                  or           s8, t6, gp
                  bltu         a1, s6, 584f
                  blt          t6, a0, 592f
                  and          t1, s8, s2
                  bne          t5, t1, 581f
                  lui          tp, 255650
580:              bne          tp, sp, 585f
581:              sra          s7, a7, s10
                  auipc        t3, 800727
                  sltiu        s4, t6, 1953
584:              lui          a6, 1017513
585:              slti         s10, a3, 1532
                  slt          tp, a2, a7
                  xori         s5, tp, -449
588:              slt          s8, t2, s7
                  sub          zero, s0, t3
                  ori          ra, gp, -1554
                  xor          tp, a6, s9
592:              slti         sp, a3, -1268
                  srli         s7, s9, 23
                  bltu         s10, a6, 596f
                  lui          a1, 340625
596:              and          s0, a6, a7
                  bge          gp, t6, 609f
                  slt          s7, t6, zero
                  sub          s5, s3, tp
                  andi         s3, a1, 1619
                  sll          a5, zero, a0
                  beq          s7, t0, 614f
                  ori          sp, t2, -1210
                  or           a7, s6, s6
                  nop
                  beq          a5, s11, 624f
                  bgeu         ra, t6, 623f
                  sll          gp, a1, a0
609:              sltu         a4, s1, gp
                  lui          s6, 39560
                  srai         s6, s5, 8
                  bge          a7, s8, 621f
                  ori          t1, s10, -784
614:              lui          s0, 14008
                  slti         tp, a5, -112
                  srai         s4, a5, 5
                  and          sp, tp, a5
                  and          gp, s0, s5
                  add          s9, s2, t6
                  srl          a6, t3, s3
621:              sll          s5, t3, sp
                  slti         ra, gp, -1883
623:              srai         t5, t4, 27
624:              lui          zero, 562580
                  bltu         a3, s1, 643f
                  srai         s10, s10, 14
                  lui          s10, 361770
                  xori         zero, a2, 1209
                  xori         sp, s5, -1043
                  srai         t2, t6, 6
                  bltu         a5, tp, 638f
                  and          sp, s1, a6
                  sra          tp, tp, a5
                  xor          s7, t2, t6
                  ori          t0, a3, -556
                  xori         s5, s3, 1359
                  xori         s10, s7, -1021
638:              sll          t5, a1, tp
                  sll          a4, a4, gp
                  bne          t2, s7, 642f
                  auipc        s10, 720705
642:              sltiu        t0, s9, -1521
643:              srl          s9, t0, s1
                  bgeu         s7, t3, 649f
                  xori         s6, a3, -1870
                  nop
                  lui          t4, 981123
                  or           sp, a4, s10
649:              bgeu         t0, s5, 661f
                  beq          s9, s11, 653f
                  add          t4, s0, s9
                  addi         s7, zero, -938
653:              or           a5, s10, t4
                  nop
                  ori          t1, a2, -95
                  srl          zero, a1, s11
                  bge          t2, s1, 665f
                  sra          s10, gp, a6
                  sltu         a6, s10, a7
                  blt          s9, ra, 671f
661:              sra          a5, t6, s5
                  sll          gp, a1, sp
                  sltiu        a3, sp, 858
                  lui          s0, 615825
665:              slt          t3, a3, t2
                  or           s5, t1, s5
                  srai         t3, s11, 23
                  xori         s6, zero, 1544
                  addi         a6, tp, 2037
                  srl          s3, gp, s0
671:              andi         s0, s2, -1257
                  bge          s9, s1, 690f
                  slli         s3, a5, 14
                  sltiu        sp, s1, -23
                  srl          t4, ra, t3
                  or           s8, s3, sp
                  srai         s6, t4, 28
                  sltu         s6, sp, zero
                  srai         s4, s2, 9
                  xor          a7, s8, a0
                  sltu         a6, s0, t6
                  srl          sp, a7, a0
                  add          a1, s8, s7
                  sra          a0, s3, t1
                  sub          t3, s0, s0
                  beq          s9, s2, 689f
                  bltu         a0, s10, 697f
                  sltiu        s7, t1, -1510
689:              blt          s8, a7, 701f
690:              srl          t1, a6, s4
                  beq          s7, a1, 702f
                  blt          s10, a4, 701f
                  bne          sp, t1, 696f
                  ori          a7, tp, 679
                  auipc        s6, 453249
696:              bltu         a4, s0, 702f
697:              srai         s1, s4, 28
                  slti         s1, a0, -1266
                  xori         a6, s5, -614
                  slti         s6, a3, -128
701:              sltu         ra, t4, t1
702:              andi         t6, a1, -1517
                  sltu         a5, gp, a5
                  lw           ra, 4(s11)
                  auipc        gp, 509870
                  lui          t5, 397499
                  and          s4, ra, a1
                  sll          s4, t4, s3
                  addi         s11, s11, 36
                  sra          t0, s4, t3
                  slti         zero, a6, -643
1032:             addi x15, x1, 1
1032:             jalr x15, x15, 0
sub_4:            xor          gp, t0, s1
                  sll          s9, sp, s10
                  blt          s10, t0, sub_4_stack_p
sub_4_stack_p:    addi         s11, s11, -28
                  add          t4, s4, t6
                  sw           ra, 4(s11)
                  sltiu        s9, s4, 911
sub_4_0:          jal          ra, 0f
0:                jal          ra, 5f
1:                jal          t1, 9f
2:                jal          ra, 8f
3:                jal          ra, 6f
4:                jal          ra, 3b
5:                jal          ra, 1b
6:                jal          t2, 7f
7:                jal          t0, 2b
8:                jal          ra, 10f
9:                jal          ra, 4b
10:               srai         t4, s10, 5
sub_4_3:          jal          ra, 1f
0:                jal          ra, 5f
1:                jal          t1, 12f
2:                jal          t1, 10f
3:                jal          ra, 14f
4:                jal          ra, 6f
5:                jal          t1, 9f
6:                jal          t1, 3b
7:                jal          t1, 0b
8:                jal          t1, 7b
9:                jal          s8, 4b
10:               jal          s6, 13f
11:               jal          t1, 8b
12:               jal          s7, 2b
13:               jal          t1, 11b
14:               slti         s0, s1, 1738
sub_4_7:          jal          ra, 4f
0:                jal          ra, 6f
1:                jal          a4, 0b
2:                jal          sp, 5f
3:                jal          ra, 12f
4:                jal          t1, 2b
5:                jal          ra, 10f
6:                jal          t0, 3b
7:                jal          ra, 9f
8:                jal          t1, 11f
9:                jal          t1, 8b
10:               jal          sp, 7b
11:               jal          t1, 1b
12:               jal          ra, 13f
13:               add          a1, a6, a5
sub_4_8:          jal          ra, 28f
0:                jal          t1, 24f
1:                jal          ra, 3f
2:                jal          a7, 23f
3:                jal          ra, 2b
4:                jal          t1, 7f
5:                jal          ra, 18f
6:                jal          ra, 13f
7:                jal          t1, 0b
8:                jal          ra, 12f
9:                jal          ra, 15f
10:               jal          ra, 26f
11:               jal          s9, 14f
12:               jal          t1, 4b
13:               jal          ra, 10b
14:               jal          a0, 22f
15:               jal          t1, 17f
16:               jal          t1, 29f
17:               jal          ra, 5b
18:               jal          ra, 20f
19:               jal          t1, 27f
20:               jal          ra, 6b
21:               jal          ra, 16b
22:               jal          ra, 8b
23:               jal          ra, 11b
24:               jal          ra, 25f
25:               jal          a0, 9b
26:               jal          ra, 21b
27:               jal          t1, 1b
28:               jal          s0, 19b
29:               sltu         t3, t6, gp
sub_4_4:          jal          ra, 14f
0:                jal          ra, 15f
1:                jal          s1, 10f
2:                jal          s3, 13f
3:                jal          ra, 17f
4:                jal          t5, 5f
5:                jal          t1, 6f
6:                jal          gp, 20f
7:                jal          a7, 2b
8:                jal          ra, 7b
9:                jal          ra, 28f
10:               jal          ra, 12f
11:               jal          t1, 23f
12:               jal          ra, 27f
13:               jal          t3, 3b
14:               jal          t1, 24f
15:               jal          s5, 18f
16:               jal          ra, 19f
17:               jal          ra, 30f
18:               jal          a7, 8b
19:               jal          ra, 21f
20:               jal          ra, 1b
21:               jal          ra, 22f
22:               jal          ra, 26f
23:               jal          ra, 25f
24:               jal          a5, 11b
25:               jal          ra, 4b
26:               jal          t0, 29f
27:               jal          ra, 9b
28:               jal          t1, 16b
29:               jal          ra, 0b
30:               srli         t3, t0, 5
sub_4_2:          jal          ra, 5f
0:                jal          a7, 12f
1:                jal          ra, 24f
2:                jal          a1, 15f
3:                jal          s1, 19f
4:                jal          ra, 10f
5:                jal          ra, 2b
6:                jal          gp, 21f
7:                jal          ra, 23f
8:                jal          ra, 20f
9:                jal          ra, 6b
10:               jal          a5, 16f
11:               jal          t1, 18f
12:               jal          ra, 7b
13:               jal          s3, 0b
14:               jal          ra, 11b
15:               jal          t2, 13b
16:               jal          ra, 1b
17:               jal          tp, 14b
18:               jal          ra, 22f
19:               jal          t1, 9b
20:               jal          ra, 3b
21:               jal          gp, 4b
22:               jal          t1, 8b
23:               jal          s4, 17b
24:               srl          ra, a6, s3
sub_4_1:          jal          ra, 3f
0:                jal          ra, 10f
1:                jal          t1, 9f
2:                jal          ra, 5f
3:                jal          t1, 1b
4:                jal          ra, 13f
5:                jal          gp, 12f
6:                jal          ra, 8f
7:                jal          t0, 0b
8:                jal          sp, 2b
9:                jal          ra, 11f
10:               jal          ra, 6b
11:               jal          t4, 7b
12:               jal          ra, 4b
13:               nop
sub_4_5:          jal          ra, 4f
0:                jal          ra, 5f
1:                jal          t1, 3f
2:                jal          t1, 6f
3:                jal          s6, 10f
4:                jal          ra, 11f
5:                jal          tp, 9f
6:                jal          ra, 8f
7:                jal          ra, 1b
8:                jal          ra, 0b
9:                jal          ra, 12f
10:               jal          t1, 2b
11:               jal          s6, 7b
12:               xor          tp, s6, a5
                  add          a3, t4, sp
                  xori         s8, ra, 155
                  ori          tp, tp, 1613
                  ori          s8, s1, 1095
                  sll          s4, s0, zero
                  srai         tp, t1, 18
                  blt          s1, a1, 25f
                  slt          t1, ra, s7
                  srli         a7, s9, 20
                  addi         t6, s6, 1844
                  add          a6, ra, t0
                  srai         t6, t4, 11
                  slt          s8, a4, s3
                  slt          s3, a1, s10
                  srl          t0, sp, a5
                  slt          gp, s1, t5
                  ori          s0, a7, 11
                  slti         a3, t1, 129
                  srl          t1, a6, s8
                  sra          t4, t6, a1
                  and          t5, zero, t0
                  bge          a1, s11, 26f
                  slli         sp, s6, 27
                  srai         s10, sp, 9
                  slti         t4, t2, 1279
25:               sub          a5, t0, s0
26:               slti         gp, s8, -1916
                  add          a3, s3, s5
                  ori          ra, t5, -1632
                  bgeu         s10, s5, 47f
                  srai         s10, a5, 26
                  slli         t6, t3, 14
                  xor          a6, ra, t4
                  add          s8, a2, t1
                  bltu         s0, s5, 40f
                  sll          sp, s9, t2
                  or           t6, a7, s11
                  slt          t3, t3, a7
                  sra          s5, s7, s0
                  blt          s2, a1, 49f
40:               bne          s6, s6, 54f
                  srl          a1, s5, t1
                  or           a6, zero, t4
                  or           ra, s2, a5
                  beq          s11, s0, 58f
                  or           a5, a1, s7
                  bne          s9, sp, 62f
47:               slti         a0, a7, 1982
                  sub          s8, t5, a0
49:               sltu         zero, s2, a1
                  nop
                  beq          t1, a3, 66f
                  blt          a2, s3, 69f
                  slti         t6, s4, 1654
54:               add          zero, a2, t4
                  sub          t2, s4, tp
                  srli         s1, s4, 11
                  srl          s6, zero, zero
58:               or           s3, t4, a3
                  add          a5, s0, ra
                  add          t2, s0, s7
                  sltu         gp, ra, s2
62:               xori         zero, t4, -1009
                  sltu         s9, s2, a4
                  and          s0, a4, tp
                  nop
66:               sub          sp, t6, t3
                  bne          zero, a2, 71f
                  nop
69:               bne          s9, a7, 72f
                  slt          a3, s2, a0
71:               slli         s9, t2, 3
72:               xor          a7, s6, a0
                  and          s1, s0, a1
                  nop
                  sub          a7, a6, gp
                  srai         s1, a5, 26
                  sll          a6, gp, gp
                  srli         tp, t5, 24
                  slt          s5, s10, t2
                  bge          s3, a0, 90f
sub_4_6:          jal          ra, 12f
0:                jal          t1, 14f
1:                jal          ra, 22f
2:                jal          s0, 6f
3:                jal          ra, 1b
4:                jal          ra, 5f
5:                jal          ra, 15f
6:                jal          ra, 4b
7:                jal          t1, 17f
8:                jal          t1, 26f
9:                jal          ra, 27f
10:               jal          ra, 3b
11:               jal          s9, 18f
12:               jal          t1, 0b
13:               jal          ra, 29f
14:               jal          t1, 24f
15:               jal          ra, 25f
16:               jal          ra, 7b
17:               jal          t1, 21f
18:               jal          ra, 9b
19:               jal          t0, 28f
20:               jal          t1, 23f
21:               jal          a7, 2b
22:               jal          ra, 13b
23:               jal          sp, 8b
24:               jal          ra, 20b
25:               jal          ra, 19b
26:               jal          ra, 16b
27:               jal          a3, 10b
28:               jal          gp, 11b
29:               add          t4, s11, s5
                  xori         t2, a4, -1361
                  xor          tp, s3, a6
                  ori          s8, a5, -1861
                  nop
                  xori         s10, s7, 228
                  slt          s9, zero, t1
                  or           s7, t3, a1
                  bge          a1, ra, 103f
                  and          s1, s8, t3
90:               srli         a4, zero, 13
                  auipc        s10, 265398
                  slt          a5, a7, a5
                  beq          s5, t2, 94f
94:               addi         a3, s4, 782
                  srai         gp, gp, 28
                  srli         s10, zero, 23
                  srai         s4, s1, 1
                  xori         ra, t3, 1761
                  and          a0, s7, a7
                  auipc        s8, 874082
                  sra          s0, zero, a3
                  lui          s3, 977556
103:              bgeu         a4, zero, 118f
                  srli         a5, s8, 30
                  slti         t0, s1, -841
                  andi         a1, s11, 1011
                  slli         t5, a6, 28
                  beq          s6, s3, 110f
                  bltu         s10, a6, 124f
110:              add          s5, s1, s8
                  srai         a3, s7, 31
                  ori          t2, s8, -948
                  sltiu        t6, s0, 1887
                  andi         t6, t2, -1022
                  blt          t0, t4, 126f
                  slt          t6, gp, gp
                  auipc        t2, 310778
118:              bge          s1, t0, 131f
                  auipc        a1, 319560
                  sub          a7, ra, a4
                  sll          t3, s8, a7
                  bltu         a7, a5, 138f
                  lui          s1, 732585
124:              slti         a3, ra, 1153
                  slli         ra, s8, 14
126:              slt          t1, t4, t5
                  nop
                  andi         gp, a7, -957
                  bltu         a7, tp, 144f
                  srai         s10, s1, 16
131:              lui          s9, 172802
                  and          s5, t3, t4
                  xori         s5, t3, -713
                  blt          a1, t6, 136f
                  addi         s0, a0, 1234
136:              add          t1, s8, t0
                  auipc        s3, 246724
138:              slti         s3, a0, -505
                  and          s10, tp, t4
                  andi         s9, s11, 907
                  srli         s0, gp, 16
                  or           sp, ra, t3
                  addi         s4, gp, 1952
144:              nop
                  and          t3, s8, s6
                  bge          s8, s1, 158f
                  srl          t1, gp, zero
                  andi         s8, a7, 1921
                  bltu         a3, t6, 164f
                  sll          a3, a7, a1
                  and          a7, s11, a1
                  and          a7, s3, t5
                  sub          a3, s3, s3
                  xor          s1, s4, t4
                  bgeu         a7, ra, 170f
                  and          a6, s10, t6
                  ori          s3, t4, 1597
158:              srai         gp, ra, 18
                  xori         t0, s10, 807
                  sub          gp, t3, a3
                  andi         sp, a3, -1956
                  xor          s0, a5, s9
                  slti         t5, a2, -1766
164:              bge          s11, a3, 177f
                  sltu         s7, s1, s0
                  sll          s1, gp, t1
                  auipc        s0, 828691
                  bltu         s11, s9, 186f
                  sltu         t2, s3, s10
170:              bgeu         a3, t5, 174f
                  xori         s1, zero, -1711
                  and          s9, s0, s9
                  srai         a3, t4, 2
174:              sub          s9, sp, a2
                  beq          a7, s9, 181f
                  bltu         t1, t5, 191f
177:              slti         a5, t6, 401
                  ori          a6, s1, -925
                  srai         sp, t4, 13
                  sra          t1, a7, a5
181:              bgeu         a7, s1, 187f
                  slt          s10, t4, s7
                  or           a4, t4, s4
                  sll          s10, gp, s8
                  srai         t5, a4, 6
186:              blt          s9, gp, 198f
187:              ori          t6, a3, 1741
                  addi         tp, t4, -1860
                  slt          s1, s8, tp
                  sltu         t0, s5, s5
191:              and          a5, a1, t2
                  sra          a5, sp, s11
                  slti         tp, t3, 309
                  andi         a7, a7, -472
                  bltu         a0, s0, 211f
                  sll          s9, a3, a7
                  srli         s7, s10, 29
198:              sltiu        gp, a7, 867
                  xor          t1, s2, s0
                  xori         t4, s10, 1955
                  xori         t4, t4, -164
                  and          t5, t0, s11
                  lui          s3, 4053
                  xor          a6, a0, t2
                  ori          t4, ra, 232
                  sll          a7, t4, s8
                  bne          s0, tp, 211f
                  bge          a2, s0, 210f
                  srai         s3, a7, 4
210:              addi         s9, a7, 228
211:              sub          s0, t5, s6
                  lui          a3, 198780
                  bge          t3, s6, 223f
                  xor          t5, a1, s8
                  blt          a2, zero, 228f
                  lui          t3, 567102
                  addi         a1, a4, -617
                  xor          sp, t6, s10
                  slti         a4, s7, 1158
                  beq          t3, t6, 225f
                  srl          t0, t2, zero
                  lui          a4, 650361
223:              add          s5, s1, s1
                  ori          s3, a6, 1885
225:              srli         ra, t0, 3
                  srli         sp, s11, 17
                  srai         t5, sp, 2
228:              lui          a0, 821376
                  bge          s5, a4, 244f
                  lui          gp, 121962
                  sll          a6, t6, ra
                  nop
                  slti         t4, s2, -1386
                  bge          a7, s9, 249f
                  xori         a0, a6, 629
                  auipc        s9, 1041540
                  nop
                  addi         s10, s6, 379
                  beq          s9, a7, 254f
                  sub          gp, t0, a1
                  ori          a7, s5, -1342
                  bgeu         s9, t3, 257f
                  sltiu        a5, a2, -1545
244:              sra          s1, t0, s9
                  nop
                  bgeu         s2, t2, 260f
                  nop
                  nop
249:              lui          t1, 489650
                  sra          gp, t0, s2
                  sub          a7, a0, s1
                  bgeu         sp, t4, 263f
                  slt          s4, a1, a2
254:              xor          s5, s2, ra
                  sll          sp, t0, s10
                  srli         s0, s1, 1
257:              sltiu        s10, t3, 1829
                  srl          tp, t1, a2
                  bgeu         s3, sp, 278f
260:              slti         s3, t2, 369
                  sltiu        t6, s2, -476
                  sll          t3, zero, s8
263:              and          tp, a1, a2
                  xor          s10, t1, s8
                  andi         s10, s9, -16
                  bltu         a2, s4, 269f
                  beq          ra, s4, 271f
                  or           a7, s2, s10
269:              blt          s5, ra, 286f
                  add          t0, s1, t3
271:              sll          a5, s5, s2
                  or           a7, s6, s3
                  sub          s10, t3, tp
                  srl          s8, zero, s4
                  beq          a1, s5, 291f
                  blt          t2, s7, 291f
                  bge          s3, s4, 278f
278:              sra          a3, a6, sp
                  or           tp, s4, a4
                  add          t1, s3, a3
                  srai         a1, s5, 2
                  lui          s1, 710758
                  lui          a6, 540409
                  xor          t3, a0, a4
                  auipc        t2, 947366
286:              addi         t2, tp, -1230
                  auipc        a0, 184564
                  sltu         s10, s6, s9
                  sltu         s0, s9, s6
                  auipc        gp, 693005
291:              blt          a0, a0, 293f
                  and          a4, s3, t5
293:              add          s6, s9, t6
                  auipc        t3, 1014660
                  srai         s5, s8, 11
                  slt          s6, s11, a5
                  add          t3, s7, a5
                  slt          s1, s11, s2
                  add          s7, a1, t5
                  xor          a4, a2, s0
                  srai         tp, a6, 14
                  addi         gp, s9, 783
                  bge          t4, s10, 321f
                  sll          s3, t1, zero
                  sub          t0, zero, zero
                  bge          t2, s4, 324f
                  srai         s5, t6, 19
                  andi         t5, t6, 1649
                  sll          t2, s4, sp
                  nop
                  bltu         a5, s3, 317f
                  nop
                  and          s0, s11, s1
                  xor          gp, t1, t3
                  sltu         s1, a7, ra
                  blt          t3, s6, 330f
317:              ori          t2, s11, 647
                  andi         a6, s9, 1418
                  sltiu        t1, s2, -1536
                  bge          t3, s11, 330f
321:              xor          s1, a5, s3
                  sltu         sp, gp, s8
                  auipc        a3, 95566
324:              ori          s9, t6, 190
                  sltiu        a3, a2, -1544
                  nop
                  bge          t1, s11, 342f
                  xor          t6, s4, t2
                  addi         s4, a1, -564
330:              sll          t4, t2, t0
                  nop
                  slli         t5, zero, 5
                  slt          t1, s6, s5
                  bne          ra, s0, 347f
                  sub          s4, s5, s8
                  sub          a7, ra, s6
                  sltu         ra, a5, s9
                  slti         s9, a5, 1494
                  lui          a0, 1033926
                  beq          tp, zero, 355f
                  lui          s1, 497061
342:              sll          s3, tp, a3
                  and          s8, s1, s9
                  or           s9, a7, a7
                  bgeu         s1, t6, 362f
                  bltu         a7, a0, 348f
347:              slti         t5, s10, 351
348:              and          t3, a3, t5
                  ori          t1, t2, -18
                  srl          a3, s4, s4
                  blt          a4, t2, 366f
                  bne          a5, t2, 358f
                  sub          a7, s5, zero
                  xori         s9, a4, -1752
355:              beq          s9, a1, 359f
                  or           s3, s11, s9
                  blt          sp, gp, 372f
358:              beq          ra, a5, 372f
359:              and          t2, s1, ra
                  slli         t2, s6, 19
                  xori         s8, a4, -1791
362:              srai         a5, t1, 28
                  slt          a3, t2, a7
                  srli         a0, s3, 8
                  bgeu         t4, a4, 381f
366:              blt          a4, s1, 372f
                  bge          t3, s4, 370f
                  slti         s0, ra, 487
                  or           a4, gp, gp
370:              slt          sp, t1, a3
                  beq          s0, s3, 382f
372:              slt          s4, a6, s0
                  and          s4, s10, t0
                  sll          s9, s11, t0
                  or           s4, s0, t4
                  slt          a6, gp, t1
                  bge          a0, t1, 378f
378:              addi         s8, t3, -1516
                  nop
                  sll          s10, t3, s9
381:              or           s3, a5, zero
382:              slli         t0, s5, 0
                  lui          a5, 317389
                  andi         a5, t4, -536
                  srli         t1, zero, 16
                  bgeu         s2, s11, 401f
                  sll          a4, s4, t2
                  auipc        tp, 639500
                  addi         t5, a3, -1645
                  xori         a5, a6, 1512
                  bge          s6, t3, 409f
                  beq          t4, s6, 394f
                  lui          a4, 863829
394:              slt          t2, t3, zero
                  bgeu         s2, t2, 408f
                  slli         t5, t1, 24
                  srl          a3, s4, s6
                  sub          s10, a5, s10
                  sltiu        a3, a6, 1068
                  blt          s3, a4, 410f
401:              nop
                  bgeu         tp, t5, 416f
                  xori         s1, sp, -444
                  sub          t2, s7, t0
                  auipc        a0, 269861
                  xor          t6, s1, s10
                  slli         s5, gp, 19
408:              sub          sp, t2, t6
409:              srl          s0, t2, a4
410:              andi         t0, a0, -1980
                  blt          s11, s2, 429f
                  nop
                  srai         tp, s2, 15
                  sra          s9, s8, s3
                  addi         t0, a4, -1693
416:              bge          t5, s11, 432f
                  bltu         s7, s1, 427f
                  and          s9, ra, t6
                  srai         s5, s1, 16
                  slt          ra, t6, gp
                  srli         a1, t6, 23
                  bltu         s7, t5, 437f
                  add          a4, s5, a2
                  sltu         t2, s11, a4
                  ori          t1, a0, -611
                  nop
427:              slt          s8, t6, t5
                  auipc        t6, 817322
429:              bge          a6, t3, 442f
                  sub          a0, t0, t3
                  auipc        s8, 432843
432:              srai         t3, s4, 7
                  slt          s8, s1, zero
                  auipc        a5, 611975
                  or           s10, s2, zero
                  lui          s6, 919069
437:              sub          s10, ra, a3
                  or           zero, s7, a6
                  addi         t5, t4, -1206
                  andi         s10, a3, -1696
                  slti         t3, a7, -440
442:              bne          a3, gp, 449f
                  srli         a6, s6, 28
                  slt          t6, s3, a7
                  bltu         s11, s11, 449f
                  lui          ra, 731423
                  slti         a1, t4, -1323
                  bgeu         s11, t0, 449f
449:              lui          t4, 166377
                  sra          sp, ra, a5
                  and          a0, s10, a5
                  slt          t0, t6, s1
                  lw           ra, 4(s11)
                  srli         a3, s10, 20
                  addi         s11, s11, 28
                  sltiu        s0, t3, -1629
                  slt          s3, t2, a7
657:              addi x17, x1, 0
657:              jalr x17, x17, 0
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
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x12, x27, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_2:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x12, x27, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_3:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x12, x27, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_4:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x12, x27, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_5:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x12, x27, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_6:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x12, x27, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_7:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x12, x27, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_8:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x12, x27, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_9:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x12, x27, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_10:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x12, x27, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_11:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x12, x27, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_12:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x12, x27, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_13:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x12, x27, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_14:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x12, x27, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_15:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x12, x27, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

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
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x12, x27, zero
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
                  1: la x18, test_done
                  jalr x1, x18, 0

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
                  la x18, write_tohost
                  jalr x0, x18, 0

instr_fault_handler:
                  add x27, x12, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

load_fault_handler:
                  add x27, x12, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

store_fault_handler:
                  add x27, x12, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

ebreak_handler:   
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x27, x12, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

illegal_instr_handler:
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x27, x12, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x9, 0x300 # MSTATUS;
                  csrr  x9, 0x304 # MIE;
                  csrr  x9, 0x344 # MIP;
                  csrrc x9, 0x344, x9 # MIP;
                  add x27, x12, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
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
