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
                  li x23, 0x40000100
                  csrw 0x301, x23
kernel_sp:        
                  la x17, kernel_stack_end

trap_vec_init:    
                  la x23, mtvec_handler
                  ori x23, x23, 0
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
                  li x0, 0xe2731394
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0x2979c109
                  li x4, 0x0
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0x0
                  li x10, 0x0
                  li x11, 0xf5359082
                  li x12, 0xf4761bdb
                  li x13, 0x80000000
                  li x14, 0x0
                  li x15, 0xf8482fc5
                  li x16, 0x7440bff6
                  li x18, 0xa
                  li x19, 0xfbad988a
                  li x20, 0xb
                  li x21, 0x0
                  li x22, 0xa863892a
                  li x23, 0x0
                  li x24, 0x1
                  li x25, 0x0
                  li x26, 0x80000000
                  li x27, 0x0
                  li x28, 0x4
                  li x29, 0x6
                  li x30, 0x80000000
                  li x31, 0x0
                  la x5, user_stack_end
main:             jal          t1, 11f
0:                jal          ra, 15f
1:                jal          s2, 18f
2:                jal          t1, 16f
3:                jal          t6, 21f
4:                jal          t1, 19f
5:                jal          s9, 14f
6:                jal          ra, 17f
7:                jal          t1, 27f
8:                jal          t1, 4b
9:                jal          s8, 1b
10:               jal          ra, 25f
11:               jal          t1, 2b
12:               jal          ra, 7b
13:               jal          t1, 26f
14:               jal          ra, 10b
15:               jal          ra, 5b
16:               jal          t1, 0b
17:               jal          t1, 24f
18:               jal          ra, 6b
19:               jal          ra, 20f
20:               jal          t1, 23f
21:               jal          s7, 9b
22:               jal          t1, 8b
23:               jal          sp, 13b
24:               jal          ra, 12b
25:               jal          ra, 22b
26:               jal          t1, 3b
27:               slti         t3, t5, 1018
main_2:           jal          t1, 16f
0:                jal          s7, 12f
1:                jal          ra, 15f
2:                jal          t1, 9f
3:                jal          t1, 23f
4:                jal          t1, 11f
5:                jal          t3, 25f
6:                jal          ra, 5b
7:                jal          gp, 3b
8:                jal          t4, 20f
9:                jal          s11, 6b
10:               jal          ra, 0b
11:               jal          ra, 14f
12:               jal          ra, 7b
13:               jal          ra, 22f
14:               jal          ra, 21f
15:               jal          t1, 4b
16:               jal          sp, 8b
17:               jal          ra, 1b
18:               jal          ra, 2b
19:               jal          ra, 24f
20:               jal          ra, 10b
21:               jal          ra, 18b
22:               jal          ra, 19b
23:               jal          ra, 13b
24:               jal          ra, 17b
25:               xori         a6, tp, -1668
main_8:           jal          t1, 6f
0:                jal          t1, 9f
1:                jal          s3, 13f
2:                jal          ra, 0b
3:                jal          t1, 18f
4:                jal          t1, 10f
5:                jal          a5, 8f
6:                jal          ra, 7f
7:                jal          ra, 12f
8:                jal          ra, 3b
9:                jal          t1, 15f
10:               jal          t3, 16f
11:               jal          ra, 1b
12:               jal          ra, 17f
13:               jal          a5, 4b
14:               jal          gp, 2b
15:               jal          s8, 5b
16:               jal          ra, 14b
17:               jal          ra, 11b
18:               sltiu        a3, t5, -1391
main_10:          jal          t1, 5f
0:                jal          ra, 3f
1:                jal          tp, 24f
2:                jal          s2, 6f
3:                jal          sp, 23f
4:                jal          gp, 11f
5:                jal          s11, 2b
6:                jal          ra, 19f
7:                jal          gp, 14f
8:                jal          ra, 28f
9:                jal          t1, 20f
10:               jal          ra, 7b
11:               jal          ra, 22f
12:               jal          ra, 17f
13:               jal          t1, 25f
14:               jal          ra, 9b
15:               jal          ra, 1b
16:               jal          ra, 10b
17:               jal          ra, 29f
18:               jal          t1, 16b
19:               jal          ra, 26f
20:               jal          ra, 12b
21:               jal          ra, 13b
22:               jal          t1, 15b
23:               jal          ra, 27f
24:               jal          ra, 21b
25:               jal          ra, 8b
26:               jal          t1, 4b
27:               jal          gp, 18b
28:               jal          t1, 0b
29:               lui          s2, 259997
main_0:           jal          t1, 20f
0:                jal          t3, 16f
1:                jal          ra, 9f
2:                jal          tp, 23f
3:                jal          ra, 1b
4:                jal          t1, 7f
5:                jal          ra, 21f
6:                jal          t1, 26f
7:                jal          ra, 2b
8:                jal          t1, 14f
9:                jal          t1, 15f
10:               jal          a5, 24f
11:               jal          a3, 17f
12:               jal          s8, 13f
13:               jal          sp, 10b
14:               jal          ra, 22f
15:               jal          tp, 18f
16:               jal          ra, 4b
17:               jal          ra, 12b
18:               jal          ra, 0b
19:               jal          ra, 5b
20:               jal          gp, 3b
21:               jal          t1, 27f
22:               jal          ra, 11b
23:               jal          t1, 25f
24:               jal          a0, 19b
25:               jal          tp, 6b
26:               jal          ra, 8b
27:               sltu         s2, s8, t1
main_11:          jal          t1, 9f
0:                jal          gp, 11f
1:                jal          ra, 12f
2:                jal          ra, 13f
3:                jal          ra, 4f
4:                jal          ra, 5f
5:                jal          sp, 18f
6:                jal          t1, 2b
7:                jal          ra, 0b
8:                jal          ra, 17f
9:                jal          t4, 1b
10:               jal          s1, 7b
11:               jal          ra, 3b
12:               jal          ra, 16f
13:               jal          t1, 8b
14:               jal          s6, 6b
15:               jal          ra, 10b
16:               jal          ra, 15b
17:               jal          a5, 19f
18:               jal          s9, 14b
19:               slti         s0, a4, -225
main_1:           jal          t1, 6f
0:                jal          ra, 11f
1:                jal          ra, 9f
2:                jal          sp, 10f
3:                jal          tp, 5f
4:                jal          t1, 1b
5:                jal          sp, 12f
6:                jal          t1, 13f
7:                jal          ra, 8f
8:                jal          ra, 4b
9:                jal          t1, 2b
10:               jal          ra, 14f
11:               jal          t1, 15f
12:               jal          t1, 7b
13:               jal          ra, 3b
14:               jal          s6, 0b
15:               slti         gp, t6, 1770
main_5:           jal          t1, 14f
0:                jal          gp, 10f
1:                jal          s0, 16f
2:                jal          ra, 15f
3:                jal          ra, 4f
4:                jal          t1, 1b
5:                jal          ra, 12f
6:                jal          t1, 11f
7:                jal          s8, 0b
8:                jal          ra, 2b
9:                jal          ra, 5b
10:               jal          ra, 3b
11:               jal          t1, 7b
12:               jal          ra, 6b
13:               jal          ra, 8b
14:               jal          t1, 13b
15:               jal          t1, 9b
16:               sltiu        s3, t4, -36
main_9:           jal          t1, 9f
0:                jal          ra, 11f
1:                jal          t1, 10f
2:                jal          ra, 0b
3:                jal          ra, 7f
4:                jal          ra, 5f
5:                jal          ra, 2b
6:                jal          ra, 4b
7:                jal          ra, 1b
8:                jal          t1, 6b
9:                jal          t1, 3b
10:               jal          s4, 8b
11:               xor          gp, tp, zero
main_6:           jal          t1, 7f
0:                jal          t1, 5f
1:                jal          t5, 19f
2:                jal          s11, 6f
3:                jal          ra, 15f
4:                jal          ra, 3b
5:                jal          t1, 1b
6:                jal          ra, 16f
7:                jal          t1, 12f
8:                jal          ra, 20f
9:                jal          s1, 21f
10:               jal          a2, 13f
11:               jal          gp, 10b
12:               jal          ra, 4b
13:               jal          ra, 8b
14:               jal          s11, 18f
15:               jal          t1, 0b
16:               jal          a3, 9b
17:               jal          ra, 11b
18:               jal          ra, 17b
19:               jal          a5, 14b
20:               jal          ra, 2b
21:               lui          s1, 853214
main_3:           jal          t1, 5f
0:                jal          ra, 2f
1:                jal          ra, 11f
2:                jal          ra, 9f
3:                jal          tp, 8f
4:                jal          ra, 1b
5:                jal          t1, 6f
6:                jal          a1, 0b
7:                jal          s9, 13f
8:                jal          t1, 10f
9:                jal          t1, 7b
10:               jal          ra, 15f
11:               jal          ra, 12f
12:               jal          s0, 14f
13:               jal          t1, 4b
14:               jal          t3, 3b
15:               sra          a5, s11, t4
main_4:           jal          t1, 11f
0:                jal          ra, 28f
1:                jal          ra, 17f
2:                jal          ra, 25f
3:                jal          a6, 23f
4:                jal          s8, 2b
5:                jal          ra, 13f
6:                jal          ra, 15f
7:                jal          ra, 26f
8:                jal          t5, 27f
9:                jal          gp, 30f
10:               jal          ra, 18f
11:               jal          ra, 20f
12:               jal          t1, 5b
13:               jal          ra, 3b
14:               jal          a0, 19f
15:               jal          ra, 1b
16:               jal          t1, 22f
17:               jal          ra, 0b
18:               jal          t1, 6b
19:               jal          t1, 8b
20:               jal          ra, 14b
21:               jal          ra, 10b
22:               jal          ra, 7b
23:               jal          ra, 29f
24:               jal          ra, 21b
25:               jal          ra, 16b
26:               jal          gp, 9b
27:               jal          t1, 12b
28:               jal          ra, 4b
29:               jal          a6, 24b
30:               and          a5, s8, s6
                  beq          s11, s1, 15f
                  bge          s8, s1, 17f
                  sub          t6, t6, s4
                  sltu         a3, a7, t5
                  srl          a2, gp, t3
                  slt          t5, t2, s7
                  and          zero, t5, zero
                  sltu         s1, s1, t1
                  lui          t4, 110351
                  sll          gp, s4, a2
                  sll          a4, t0, s10
                  bge          sp, s9, 26f
                  sub          t3, t3, a6
                  slti         a2, s0, -315
                  sub          tp, s8, s2
15:               lui          t1, 703917
                  nop
17:               and          ra, a4, s0
                  sra          t2, s4, a6
                  xori         tp, s8, -1368
                  sltu         s7, a2, s7
                  lui          t6, 203981
                  or           s6, s10, t5
                  auipc        s11, 741706
                  and          t2, s6, a5
                  addi         s6, s3, -705
26:               add          a2, s10, s9
                  bne          s11, a5, 47f
                  sll          s5, t1, s3
                  bge          s9, s4, 41f
                  andi         a0, t2, -2026
                  bne          t3, t5, 43f
                  auipc        a3, 798355
                  auipc        sp, 591968
                  sll          zero, s9, tp
                  srai         s1, s8, 10
                  bgeu         s8, zero, 51f
                  lui          zero, 363530
                  slli         s7, t0, 18
                  sltu         ra, tp, s9
                  bne          a1, t3, 56f
41:               bltu         t1, s3, 48f
                  sltu         a4, a2, t4
43:               sll          sp, gp, s11
                  bltu         a2, t0, 57f
                  srl          a2, s8, t2
                  sll          a5, s4, t6
47:               xor          s0, s2, s7
48:               bltu         t5, gp, 67f
                  bge          a6, s6, 65f
                  bgeu         t0, a6, 55f
51:               nop
                  sltu         gp, tp, s2
                  add          ra, ra, ra
                  bge          s10, s5, 65f
55:               and          tp, s2, ra
56:               sra          a5, a7, a7
57:               sra          a4, a2, gp
                  auipc        s9, 364729
                  auipc        zero, 51821
                  or           s4, t0, s9
                  srai         zero, t2, 23
                  ori          t4, s0, -328
                  slli         t5, s6, 1
                  srai         a0, a7, 1
65:               bge          a2, s7, 79f
                  blt          a0, s10, 85f
67:               or           s8, t3, s1
                  nop
                  and          a4, s6, a6
                  ori          a2, ra, 421
                  sltu         a2, s2, ra
                  blt          a0, a1, 75f
                  bne          s3, t2, 90f
                  addi         t4, sp, 971
75:               srl          s7, s8, s1
                  slt          s4, tp, zero
                  bltu         a1, s0, 96f
                  srli         s1, zero, 30
79:               sub          a1, s4, zero
                  srl          a1, a7, s0
                  bge          s5, a1, 85f
                  srai         s5, s10, 17
                  slti         zero, s3, -1032
                  nop
85:               ori          s1, a4, 25
                  beq          a5, a6, 105f
                  lui          t5, 80360
                  srai         s1, t6, 7
                  bne          s2, s7, 102f
90:               blt          gp, t3, 95f
                  xor          ra, t4, s11
                  andi         s9, s4, 1612
                  andi         a1, a0, -1460
                  bltu         s11, t6, 100f
95:               lui          a0, 658251
96:               sltu         a5, s8, a2
                  lui          a1, 211360
                  sra          ra, a6, a0
                  and          a5, t0, a0
100:              sub          s1, t0, a6
                  srl          a5, s10, gp
102:              sub          a0, t4, t4
                  bltu         s3, a6, 105f
                  or           tp, t1, t0
105:              addi         zero, s2, 755
                  andi         s6, s4, -931
                  bge          t1, s7, 126f
                  xori         t5, s9, 1374
                  slti         tp, s9, -180
                  xori         gp, t6, -1574
                  andi         t2, tp, 546
                  bge          a7, s10, 114f
                  srl          s8, a7, s7
114:              andi         zero, a5, 1647
                  bge          s11, s1, 120f
                  slli         a1, s5, 28
                  nop
                  bge          a5, a4, 129f
                  slti         tp, a6, 866
120:              ori          s4, a7, 1049
                  addi         s5, s2, 1323
                  or           s6, t1, s9
                  beq          s1, zero, 133f
                  sra          a1, a6, s11
                  bge          t4, s0, 137f
126:              sll          a5, a6, a3
                  or           s9, gp, s1
                  auipc        a0, 505814
129:              bge          a5, s1, 146f
                  sub          t3, s2, a3
                  sub          s6, sp, ra
                  bne          gp, s10, 138f
133:              srli         s6, s6, 22
                  bltu         s6, tp, 153f
                  slt          a5, a6, a1
                  sll          s9, gp, a6
137:              sra          t2, s10, tp
138:              sltiu        s5, s5, 239
                  slti         s5, t6, 75
                  sra          t3, gp, s6
                  xor          s9, s2, s6
                  bge          s10, a4, 147f
                  add          a1, s10, a3
                  sltiu        s5, a1, -614
                  nop
146:              sltu         a2, s3, s4
147:              blt          s3, s7, 162f
                  and          s11, s9, zero
                  sltu         s0, zero, s10
                  ori          sp, a1, -1923
                  sltiu        s4, a0, -903
                  srai         s9, s4, 3
153:              bltu         t5, zero, 164f
                  beq          a7, s9, 170f
                  srli         a1, s3, 28
                  slt          a2, a3, t1
                  sll          ra, a6, a4
                  andi         s9, s3, -1194
                  auipc        s8, 350677
                  or           s4, t2, tp
                  srli         a6, s2, 18
162:              slti         sp, s5, 1975
                  andi         a0, t6, -1197
164:              slt          t1, s1, s4
                  auipc        s9, 416677
                  slti         s2, zero, -1538
                  xor          a0, t3, s11
                  or           s1, s11, s4
                  auipc        s5, 238286
170:              blt          t2, s3, 173f
                  sra          t5, s6, s2
                  auipc        ra, 232049
173:              xori         a2, t0, -1001
                  add          t1, s11, ra
                  xor          tp, s8, s7
                  addi         s5, t2, -814
                  bge          s2, gp, 190f
                  srl          s3, s8, s2
                  sub          a2, t1, tp
                  bge          a0, t1, 191f
                  xori         a4, s5, 1987
                  bltu         s8, a6, 198f
                  sll          sp, a2, a2
                  bltu         sp, a1, 203f
                  nop
                  or           ra, s2, sp
                  beq          t6, sp, 191f
                  srai         a0, s2, 19
                  add          a3, a4, a2
190:              sltu         s9, a4, s6
191:              or           s6, zero, s11
                  bne          t3, s7, 207f
                  bgeu         s7, a1, 209f
                  bge          gp, a0, 213f
                  nop
                  slli         a3, t1, 29
                  addi         s2, t3, 1738
198:              sub          s8, s1, t0
                  slt          ra, sp, sp
                  sltiu        t6, t6, 1992
                  bne          s10, t1, 211f
                  xor          s2, a6, a4
203:              blt          a3, a5, 223f
                  bge          sp, sp, 209f
                  xor          s0, a6, t4
                  bge          a1, s6, 221f
207:              xori         a3, t6, 1106
                  sltiu        gp, gp, 302
209:              beq          s8, t1, 228f
                  slli         t4, gp, 27
211:              sra          zero, t3, s9
                  sltu         t6, a4, t3
213:              xori         s6, t4, 1084
                  sltu         ra, t2, t3
                  sltiu        tp, sp, 1657
                  blt          ra, s1, 221f
                  bgeu         s0, s10, 224f
                  xori         ra, s10, 219
                  slt          s4, s6, tp
                  sltu         zero, a6, tp
221:              sra          t1, s9, t6
                  sltiu        gp, t0, 900
223:              slti         a3, a3, 783
224:              sll          gp, s10, s8
                  ori          t2, s0, -560
                  sltiu        t2, s3, 198
                  ori          zero, t6, -1697
228:              beq          s11, sp, 240f
                  sltiu        t5, s9, -1169
                  srai         t6, t6, 26
                  bge          a7, t4, 245f
                  sltu         gp, a1, a1
                  srl          sp, t6, s3
                  srli         t1, s5, 15
                  sub          t1, s4, s4
                  nop
                  bltu         t3, tp, 239f
                  sltiu        t3, a5, -1412
239:              bge          s1, s7, 252f
240:              bgeu         s11, a3, 242f
                  nop
242:              auipc        s9, 621357
                  blt          t4, s6, 262f
                  sltu         zero, s3, sp
245:              bgeu         t5, s8, 250f
                  slti         s2, s11, -1002
                  blt          t0, s11, 249f
                  sltiu        t2, t1, 843
249:              srai         tp, s8, 12
250:              auipc        s0, 781350
                  auipc        s2, 37204
252:              sll          t2, s9, s1
                  srai         ra, a3, 8
                  slt          s9, t3, gp
                  slt          s1, t4, t2
                  slti         tp, zero, -1237
                  bltu         a1, s10, 276f
                  sra          t6, a4, a6
                  bne          gp, t1, 264f
                  lui          s8, 820268
                  addi         t1, s0, 438
262:              xor          zero, s11, a7
                  slti         s6, s6, 495
264:              xori         a2, s3, 216
                  andi         t1, s2, -853
                  addi         a0, a1, -1895
                  slli         a6, s8, 23
                  srl          t1, a5, a4
                  beq          t4, a2, 284f
                  and          t2, t4, zero
                  bgeu         a2, s10, 290f
                  slt          s7, sp, t6
                  add          a4, t6, tp
                  sub          s6, a7, zero
                  slt          ra, t0, t2
276:              andi         s5, s4, 838
                  lui          t3, 753879
                  sltiu        s1, s10, 1937
                  srl          s9, s5, a3
                  sll          t2, s6, zero
                  slti         s8, a1, 87
                  bgeu         a1, t3, 293f
                  nop
284:              xori         s9, s11, -861
                  sub          s2, t0, s4
                  bge          a4, s4, 296f
                  nop
                  xori         a6, s8, -776
                  beq          s9, tp, 308f
290:              bne          zero, t2, 309f
                  andi         a1, s2, 21
                  bne          s1, t2, 303f
293:              srli         a2, t2, 20
                  srl          s2, gp, t5
                  xor          a4, t3, t0
296:              nop
                  andi         s3, s6, 409
                  bne          s3, a0, 310f
                  andi         ra, t2, 1565
                  lui          s0, 642088
                  or           t4, a1, s1
                  bltu         t0, gp, 322f
303:              sltiu        t3, s0, -305
                  and          s9, a0, sp
                  beq          t1, t5, 324f
                  auipc        s4, 306716
                  blt          t1, a1, 322f
308:              sll          t3, s9, s1
309:              nop
310:              blt          t2, a7, 327f
                  srl          s5, tp, a6
                  sub          s11, t3, s3
                  sub          s2, s10, a6
                  nop
                  auipc        a5, 786141
                  nop
                  srl          ra, a5, t4
                  slti         s11, gp, 1657
                  blt          a0, a4, 335f
                  lui          t5, 486015
                  bge          s6, t1, 327f
322:              blt          a0, s10, 336f
                  or           a5, a4, s7
324:              srli         t5, s5, 2
                  bge          s4, t5, 341f
                  srli         sp, s3, 2
327:              xori         s5, s10, 1576
                  lui          a1, 327511
                  xori         s0, s10, 1724
                  bne          a4, t3, 343f
                  srli         tp, a3, 29
                  ori          a2, s11, 1795
                  bge          s4, a6, 348f
                  srl          s4, s5, a5
335:              bgeu         a2, t3, 347f
336:              srli         t2, s2, 24
                  beq          a7, a5, 339f
                  srli         zero, t4, 26
339:              and          zero, s5, s2
                  sub          sp, t5, a4
341:              lui          s0, 864365
                  srl          a2, s0, s0
343:              slli         sp, a7, 15
                  xori         ra, t5, 601
                  blt          a1, a1, 348f
                  bltu         t2, s0, 353f
347:              sll          s9, a3, s3
348:              or           s2, s0, t4
                  sra          s5, a5, a0
                  sltiu        s4, s3, 942
                  nop
                  sll          ra, s9, zero
353:              slli         s9, s3, 8
                  add          s9, t6, t4
                  srai         a5, s2, 23
                  nop
                  sltiu        t6, a1, 1200
                  beq          a5, a1, 371f
                  bne          t6, a5, 363f
                  sub          s3, a5, s6
                  blt          s6, a6, 377f
                  srai         sp, s6, 0
363:              bgeu         tp, s1, 368f
                  blt          a2, a3, 374f
                  beq          s6, t5, 378f
                  bne          s0, t0, 385f
                  xori         s2, s0, -1549
368:              and          sp, s3, a0
                  addi         t3, a1, 59
                  addi         a2, gp, -1803
371:              add          a2, s6, s3
                  slti         t4, s4, -1690
                  slt          s8, t6, s10
374:              xori         gp, s11, -1353
                  slli         a5, s7, 17
                  sll          a4, s10, t3
377:              srai         s9, t3, 29
378:              lui          a0, 763363
                  blt          a2, t2, 392f
                  xor          a2, a6, gp
                  sll          s11, t3, t4
                  beq          a3, s3, 398f
                  and          ra, tp, tp
                  or           s4, a3, s5
385:              slli         s6, tp, 16
                  lui          s7, 375340
                  add          t4, a4, tp
                  srli         ra, s9, 20
                  srl          s8, s2, s5
                  slti         s8, s11, 1902
                  and          s5, s2, t5
392:              slti         t6, t0, 508
                  bgeu         t1, t0, 395f
                  bltu         t2, t5, 399f
395:              xori         a5, t3, 1148
                  bltu         a3, t2, 411f
                  slt          gp, s9, s6
398:              srl          a5, t6, s9
399:              slti         s11, s10, 100
                  ori          sp, s2, -497
                  bne          a5, s11, 405f
                  sra          s9, s0, a0
                  nop
                  add          t1, a3, sp
405:              nop
                  andi         zero, a4, 653
                  sra          s5, a0, s9
                  slli         tp, a7, 21
                  blt          a1, a2, 428f
                  nop
411:              srai         a6, a5, 28
                  srli         s7, t0, 22
                  and          s6, s11, t0
                  sltiu        t6, s8, -1419
                  xori         t2, a1, -388
                  blt          gp, t4, 435f
                  slt          a2, s0, gp
                  sltiu        a4, s4, -444
                  xori         s0, a1, -300
                  xor          s0, s2, s4
                  sub          a5, s11, s10
                  ori          a4, a6, 2044
                  srli         t5, s3, 30
                  add          ra, t0, t1
                  slt          t6, s4, a7
                  and          s2, s11, t4
                  auipc        s1, 136947
428:              or           t3, s4, t3
                  srl          s11, s4, s7
                  auipc        t6, 849458
                  bne          a2, t3, 448f
                  srli         t2, s1, 2
                  bne          t5, t0, 445f
                  srai         t3, a2, 14
435:              bge          a3, s7, 446f
                  add          s6, s8, a2
                  addi         t4, t2, -34
                  xori         s1, s3, 314
                  sll          t4, t2, t5
                  sltiu        s5, s7, -1120
                  sltu         s0, s7, s3
                  xor          s11, s11, sp
                  bge          t2, t0, 463f
                  bltu         a7, t3, 460f
445:              xor          sp, t6, sp
446:              lui          s1, 634375
                  bge          s2, s0, 453f
448:              sltiu        s2, t5, -1985
                  srl          a0, a7, s11
                  slt          s11, a5, s4
                  add          t3, a5, s6
                  sltiu        sp, s11, 568
453:              bne          gp, t6, 472f
                  srai         a6, zero, 27
                  srli         s9, s3, 13
                  slli         s0, s1, 13
                  bgeu         a2, t6, 472f
                  blt          s8, a2, 470f
                  sll          t6, s0, t1
460:              slli         a4, gp, 20
                  auipc        s9, 388439
                  ori          a4, s11, 958
463:              or           t3, s10, s7
                  addi         t2, s7, 422
                  sll          zero, s1, t0
                  addi         s5, a5, -231
                  or           s11, a7, gp
                  lui          s2, 1044138
                  ori          s8, a4, -127
470:              bge          s0, t0, 485f
                  sltiu        a2, ra, 1051
472:              beq          s6, sp, 483f
                  lui          tp, 635215
                  blt          t0, t5, 476f
                  andi         s9, a2, 1724
476:              bgeu         s8, t5, 481f
                  blt          a6, t6, 480f
                  slti         sp, zero, 1716
                  srli         s3, t1, 22
480:              sll          gp, t2, tp
481:              slt          s8, sp, t4
                  sra          a1, ra, s1
                  slli         s4, tp, 27
                  la           s6, sub_1
                  add          a5, s11, s5
                  slti         t4, s9, -1146
                  ori          t4, a7, 430
                  addi         s6, s6, -379
                  slti         s5, s7, -1680
                  sll          sp, s2, ra
                  or           sp, ra, a4
                  lui          a2, 787875
                  nop
main_j2:          jalr         t1, s6, 379 #jump main -> sub_1
                  nop
483:              xori         s9, t3, 1950
                  bne          a4, ra, 489f
485:              or           t2, sp, s2
                  ori          a1, tp, -1791
                  xori         tp, a6, -906
                  slt          s4, ra, t6
489:              slti         t1, t1, 718
                  ori          t3, s3, -1532
                  blt          t3, t6, 510f
                  addi         sp, s1, 537
                  slti         a1, t0, -726
                  blt          t1, ra, 510f
                  slt          t3, s1, s2
                  srli         t4, s4, 16
                  beq          s11, a2, 504f
                  srai         s6, a6, 24
                  bne          a0, s4, 513f
                  sltu         s9, s3, t6
                  la           a5, sub_1
                  srl          s11, a1, gp
                  lui          sp, 951007
                  addi         a5, a5, -609
                  sltiu        t1, a1, -1816
                  srai         zero, t3, 18
                  srl          a0, t6, t0
                  sra          t2, a2, t2
main_j1:          jalr         t1, a5, 609 #jump main -> sub_1
                  beq          a4, tp, 506f
                  and          s11, a2, tp
                  nop
504:              sltiu        a5, s9, 169
                  lui          tp, 836641
506:              sub          a3, t1, a2
                  bge          zero, gp, 509f
                  beq          s7, a4, 510f
509:              and          gp, gp, ra
510:              srli         s9, s8, 11
                  blt          s9, ra, 524f
                  srai         s0, t3, 10
513:              nop
                  sra          s5, tp, s0
                  andi         a1, s9, 210
                  nop
                  nop
                  bne          a1, s2, 537f
                  sll          t3, t1, a2
                  slli         t6, s2, 26
                  bltu         tp, a3, 540f
                  or           s7, s5, s3
                  ori          s7, s8, -493
524:              beq          s0, s0, 540f
                  srai         t2, t2, 29
                  or           t5, s7, t4
                  bgeu         t1, s11, 540f
                  sub          a2, a5, s11
                  srli         zero, s6, 1
                  sltu         s8, ra, s1
                  blt          t6, t1, 551f
                  sltu         s8, s6, s0
                  andi         s3, t5, 888
                  andi         gp, a5, 1169
                  nop
                  andi         t5, t4, -1282
537:              srl          s2, s3, s6
                  auipc        s5, 693643
                  or           s1, zero, s11
540:              nop
                  add          a5, s6, t3
                  sltiu        s11, zero, -1671
                  ori          s3, a7, 360
                  slti         a4, a2, 1639
                  sltu         a5, t2, a4
                  blt          a2, a3, 557f
                  bne          t3, s5, 557f
                  xori         t4, s2, 513
                  bge          t6, t6, 554f
                  beq          s4, t1, 562f
551:              and          a0, t4, t2
                  bltu         s2, a1, 555f
                  srli         s3, t6, 25
554:              beq          s4, a0, 573f
555:              add          s8, s7, a3
                  xori         s6, gp, -1626
557:              srli         t1, s11, 17
                  addi         s6, a1, 1555
                  slli         s3, a6, 14
                  bne          t5, a7, 567f
                  sltiu        a0, t3, 355
562:              srli         s0, a5, 22
                  srai         s0, t3, 11
                  sltiu        t4, s8, 1366
                  srli         sp, s8, 1
                  bgeu         s6, a4, 582f
567:              auipc        t6, 840375
                  slli         a6, zero, 22
                  bltu         zero, t1, 573f
                  sub          a5, s3, s7
                  lui          t4, 258252
                  auipc        s0, 464430
573:              and          ra, s8, gp
                  lui          a3, 172540
                  srl          a1, sp, s7
                  blt          gp, t4, 595f
                  blt          s10, t6, 591f
                  slli         a2, gp, 10
                  sltiu        s1, t5, 825
                  addi         s0, t1, -132
                  addi         t2, t3, -1972
582:              sra          s9, s5, s1
                  blt          t4, s1, 594f
                  sltiu        t3, tp, 1576
                  sltu         s8, a4, a4
                  sra          a5, s8, s8
                  srai         s9, a0, 16
                  slli         t1, a6, 28
                  srai         s5, ra, 24
                  sra          s0, t1, s10
591:              xori         s0, a3, 282
                  xori         t5, t4, -2027
                  slti         a2, a5, -141
594:              auipc        s7, 997330
595:              andi         t2, tp, 659
                  add          a2, s7, ra
                  bgeu         t2, ra, 606f
                  bltu         a3, a1, 606f
                  srl          s5, t4, a6
                  sltu         t1, zero, s11
                  sltiu        t6, s7, 300
                  sll          a6, s1, s9
                  andi         s5, s9, 1743
                  bge          a5, t2, 606f
                  add          tp, a2, a3
606:              auipc        s9, 849736
                  la x26, test_done
                  jalr x0, x26, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            addi         t0, t0, -16
                  andi         zero, s6, -751
                  and          s7, s2, t4
                  sw           t1, 4(t0)
                  lui          s0, 368286
sub_4_19:         jal          t1, 9f
0:                jal          ra, 7f
1:                jal          ra, 0b
2:                jal          ra, 6f
3:                jal          sp, 1b
4:                jal          sp, 13f
5:                jal          t1, 12f
6:                jal          ra, 11f
7:                jal          ra, 14f
8:                jal          ra, 10f
9:                jal          ra, 8b
10:               jal          a1, 4b
11:               jal          gp, 3b
12:               jal          t1, 2b
13:               jal          ra, 5b
14:               srl          t1, s2, t6
sub_4_21:         jal          t1, 28f
0:                jal          t1, 14f
1:                jal          s8, 13f
2:                jal          ra, 7f
3:                jal          ra, 6f
4:                jal          ra, 22f
5:                jal          ra, 24f
6:                jal          a0, 29f
7:                jal          ra, 21f
8:                jal          ra, 16f
9:                jal          ra, 17f
10:               jal          s2, 19f
11:               jal          a6, 18f
12:               jal          ra, 0b
13:               jal          t1, 26f
14:               jal          gp, 9b
15:               jal          t1, 8b
16:               jal          t1, 20f
17:               jal          ra, 30f
18:               jal          ra, 25f
19:               jal          s9, 3b
20:               jal          ra, 10b
21:               jal          ra, 12b
22:               jal          a3, 23f
23:               jal          ra, 2b
24:               jal          gp, 4b
25:               jal          ra, 27f
26:               jal          t1, 15b
27:               jal          t5, 1b
28:               jal          ra, 11b
29:               jal          s11, 5b
30:               srli         s2, s8, 1
sub_4_10:         jal          t1, 17f
0:                jal          sp, 19f
1:                jal          ra, 5f
2:                jal          t1, 21f
3:                jal          t1, 15f
4:                jal          s5, 20f
5:                jal          t1, 11f
6:                jal          ra, 13f
7:                jal          t1, 0b
8:                jal          ra, 3b
9:                jal          t4, 10f
10:               jal          t1, 1b
11:               jal          ra, 18f
12:               jal          t5, 6b
13:               jal          ra, 7b
14:               jal          ra, 9b
15:               jal          t1, 12b
16:               jal          ra, 2b
17:               jal          t6, 14b
18:               jal          ra, 8b
19:               jal          ra, 4b
20:               jal          ra, 16b
21:               sra          s2, t1, s1
sub_4_5:          jal          t1, 8f
0:                jal          ra, 23f
1:                jal          t1, 11f
2:                jal          ra, 13f
3:                jal          ra, 4f
4:                jal          a1, 12f
5:                jal          t1, 16f
6:                jal          s5, 1b
7:                jal          ra, 19f
8:                jal          t1, 20f
9:                jal          ra, 17f
10:               jal          a2, 22f
11:               jal          t5, 3b
12:               jal          ra, 2b
13:               jal          ra, 21f
14:               jal          ra, 0b
15:               jal          s0, 7b
16:               jal          t1, 14b
17:               jal          ra, 15b
18:               jal          ra, 5b
19:               jal          ra, 18b
20:               jal          ra, 6b
21:               jal          ra, 10b
22:               jal          ra, 9b
23:               add          a3, s2, a0
sub_4_14:         jal          t1, 16f
0:                jal          ra, 6f
1:                jal          ra, 17f
2:                jal          s8, 15f
3:                jal          ra, 14f
4:                jal          gp, 2b
5:                jal          s0, 10f
6:                jal          s4, 19f
7:                jal          ra, 0b
8:                jal          t6, 21f
9:                jal          t1, 12f
10:               jal          t1, 20f
11:               jal          ra, 4b
12:               jal          ra, 1b
13:               jal          ra, 18f
14:               jal          ra, 13b
15:               jal          t1, 9b
16:               jal          ra, 5b
17:               jal          ra, 3b
18:               jal          ra, 8b
19:               jal          t1, 11b
20:               jal          sp, 7b
21:               jal          ra, 22f
22:               lui          s3, 714259
sub_4_9:          jal          t1, 9f
0:                jal          sp, 13f
1:                jal          t1, 12f
2:                jal          ra, 7f
3:                jal          t1, 4f
4:                jal          ra, 5f
5:                jal          s9, 6f
6:                jal          ra, 10f
7:                jal          ra, 8f
8:                jal          ra, 1b
9:                jal          ra, 2b
10:               jal          t1, 0b
11:               jal          s2, 14f
12:               jal          a4, 11b
13:               jal          s0, 15f
14:               jal          a4, 3b
15:               slt          a3, a6, t2
sub_4_17:         jal          t1, 20f
0:                jal          a6, 14f
1:                jal          s3, 22f
2:                jal          t1, 13f
3:                jal          ra, 23f
4:                jal          a2, 11f
5:                jal          ra, 21f
6:                jal          gp, 26f
7:                jal          a5, 5b
8:                jal          s8, 9f
9:                jal          t1, 19f
10:               jal          tp, 0b
11:               jal          t1, 24f
12:               jal          ra, 1b
13:               jal          ra, 7b
14:               jal          t1, 8b
15:               jal          tp, 10b
16:               jal          a6, 6b
17:               jal          ra, 18f
18:               jal          ra, 12b
19:               jal          ra, 25f
20:               jal          ra, 3b
21:               jal          ra, 16b
22:               jal          ra, 4b
23:               jal          t1, 17b
24:               jal          t1, 15b
25:               jal          ra, 2b
26:               sltiu        t4, s0, 1439
sub_4_13:         jal          t1, 14f
0:                jal          t1, 11f
1:                jal          t1, 3f
2:                jal          t1, 12f
3:                jal          s1, 18f
4:                jal          t6, 6f
5:                jal          ra, 10f
6:                jal          ra, 21f
7:                jal          ra, 9f
8:                jal          ra, 5b
9:                jal          ra, 16f
10:               jal          t2, 2b
11:               jal          ra, 4b
12:               jal          sp, 13f
13:               jal          ra, 22f
14:               jal          a1, 15f
15:               jal          t1, 19f
16:               jal          ra, 17f
17:               jal          tp, 8b
18:               jal          tp, 0b
19:               jal          ra, 20f
20:               jal          ra, 1b
21:               jal          s0, 7b
22:               addi         s8, a5, -1689
sub_4_3:          jal          t1, 10f
0:                jal          tp, 9f
1:                jal          t1, 4f
2:                jal          a2, 11f
3:                jal          ra, 7f
4:                jal          t6, 5f
5:                jal          ra, 2b
6:                jal          ra, 1b
7:                jal          ra, 8f
8:                jal          s9, 6b
9:                jal          s11, 12f
10:               jal          gp, 3b
11:               jal          ra, 0b
12:               lui          a5, 343826
sub_4_18:         jal          t1, 7f
0:                jal          ra, 14f
1:                jal          ra, 21f
2:                jal          s11, 8f
3:                jal          ra, 18f
4:                jal          ra, 19f
5:                jal          ra, 20f
6:                jal          t1, 17f
7:                jal          ra, 9f
8:                jal          t1, 16f
9:                jal          ra, 4b
10:               jal          a6, 6b
11:               jal          a3, 1b
12:               jal          ra, 13f
13:               jal          ra, 15f
14:               jal          ra, 5b
15:               jal          tp, 0b
16:               jal          t1, 10b
17:               jal          s11, 3b
18:               jal          t1, 12b
19:               jal          ra, 2b
20:               jal          s11, 11b
21:               sra          a3, s11, ra
sub_4_15:         jal          t1, 13f
0:                jal          ra, 15f
1:                jal          ra, 17f
2:                jal          ra, 23f
3:                jal          t2, 7f
4:                jal          tp, 14f
5:                jal          ra, 10f
6:                jal          s4, 5b
7:                jal          t1, 28f
8:                jal          ra, 20f
9:                jal          s7, 27f
10:               jal          a6, 26f
11:               jal          s3, 25f
12:               jal          ra, 1b
13:               jal          t1, 22f
14:               jal          ra, 24f
15:               jal          t1, 29f
16:               jal          s0, 2b
17:               jal          ra, 6b
18:               jal          s11, 8b
19:               jal          sp, 9b
20:               jal          s0, 21f
21:               jal          t1, 3b
22:               jal          a6, 18b
23:               jal          ra, 0b
24:               jal          ra, 19b
25:               jal          ra, 12b
26:               jal          ra, 16b
27:               jal          s7, 11b
28:               jal          a1, 4b
29:               srli         s4, s1, 16
sub_4_0:          jal          t1, 9f
0:                jal          s0, 4f
1:                jal          t1, 3f
2:                jal          t1, 0b
3:                jal          ra, 5f
4:                jal          s4, 1b
5:                jal          ra, 14f
6:                jal          s5, 7f
7:                jal          ra, 11f
8:                jal          ra, 12f
9:                jal          ra, 10f
10:               jal          ra, 2b
11:               jal          t4, 15f
12:               jal          ra, 13f
13:               jal          t1, 6b
14:               jal          ra, 8b
15:               xori         s3, s8, -995
sub_4_12:         jal          t1, 16f
0:                jal          ra, 5f
1:                jal          s1, 11f
2:                jal          ra, 20f
3:                jal          t1, 12f
4:                jal          s9, 23f
5:                jal          ra, 2b
6:                jal          gp, 28f
7:                jal          ra, 1b
8:                jal          ra, 10f
9:                jal          ra, 24f
10:               jal          t1, 17f
11:               jal          ra, 3b
12:               jal          t1, 25f
13:               jal          t1, 26f
14:               jal          t1, 27f
15:               jal          gp, 21f
16:               jal          ra, 8b
17:               jal          t1, 22f
18:               jal          s7, 9b
19:               jal          ra, 18b
20:               jal          ra, 19b
21:               jal          t1, 6b
22:               jal          t1, 13b
23:               jal          t1, 0b
24:               jal          ra, 14b
25:               jal          t4, 15b
26:               jal          ra, 4b
27:               jal          t1, 7b
28:               sltiu        tp, s3, -234
sub_4_4:          jal          t1, 1f
0:                jal          gp, 7f
1:                jal          a3, 11f
2:                jal          ra, 10f
3:                jal          ra, 12f
4:                jal          ra, 6f
5:                jal          t5, 3b
6:                jal          t1, 9f
7:                jal          t1, 2b
8:                jal          s0, 4b
9:                jal          ra, 0b
10:               jal          t1, 13f
11:               jal          ra, 8b
12:               jal          ra, 14f
13:               jal          ra, 5b
14:               srai         t3, s10, 17
sub_4_20:         jal          t1, 0f
0:                jal          tp, 15f
1:                jal          ra, 6f
2:                jal          ra, 12f
3:                jal          ra, 16f
4:                jal          a5, 8f
5:                jal          ra, 19f
6:                jal          t1, 14f
7:                jal          t1, 10f
8:                jal          ra, 9f
9:                jal          t1, 17f
10:               jal          t1, 4b
11:               jal          ra, 18f
12:               jal          a3, 11b
13:               jal          ra, 3b
14:               jal          s7, 2b
15:               jal          tp, 1b
16:               jal          t1, 5b
17:               jal          ra, 13b
18:               jal          s7, 7b
19:               sra          a3, s0, a5
sub_4_7:          jal          t1, 5f
0:                jal          ra, 4f
1:                jal          tp, 6f
2:                jal          t1, 18f
3:                jal          tp, 8f
4:                jal          ra, 11f
5:                jal          ra, 10f
6:                jal          s9, 0b
7:                jal          t1, 12f
8:                jal          a3, 1b
9:                jal          t1, 17f
10:               jal          a4, 15f
11:               jal          ra, 7b
12:               jal          a6, 14f
13:               jal          ra, 16f
14:               jal          ra, 2b
15:               jal          tp, 9b
16:               jal          t1, 3b
17:               jal          gp, 13b
18:               sll          s9, a2, t6
sub_4_16:         jal          t1, 15f
0:                jal          tp, 14f
1:                jal          t1, 3f
2:                jal          ra, 4f
3:                jal          t3, 7f
4:                jal          ra, 13f
5:                jal          ra, 2b
6:                jal          ra, 10f
7:                jal          t1, 6b
8:                jal          ra, 16f
9:                jal          s0, 18f
10:               jal          tp, 11f
11:               jal          a2, 0b
12:               jal          sp, 19f
13:               jal          t1, 20f
14:               jal          ra, 12b
15:               jal          s4, 17f
16:               jal          a4, 5b
17:               jal          s6, 9b
18:               jal          s3, 1b
19:               jal          t4, 8b
20:               sra          a3, a5, gp
sub_4_2:          jal          t1, 1f
0:                jal          ra, 6f
1:                jal          ra, 10f
2:                jal          s7, 0b
3:                jal          gp, 5f
4:                jal          ra, 14f
5:                jal          ra, 7f
6:                jal          ra, 9f
7:                jal          ra, 8f
8:                jal          t1, 13f
9:                jal          t1, 3b
10:               jal          ra, 2b
11:               jal          s8, 4b
12:               jal          ra, 11b
13:               jal          ra, 12b
14:               sltiu        t4, tp, 932
sub_4_22:         jal          t1, 8f
0:                jal          ra, 7f
1:                jal          t1, 0b
2:                jal          ra, 24f
3:                jal          t1, 14f
4:                jal          ra, 15f
5:                jal          t6, 4b
6:                jal          ra, 21f
7:                jal          a0, 23f
8:                jal          a2, 12f
9:                jal          ra, 1b
10:               jal          ra, 17f
11:               jal          s6, 20f
12:               jal          ra, 3b
13:               jal          ra, 10b
14:               jal          ra, 5b
15:               jal          t1, 18f
16:               jal          t1, 13b
17:               jal          ra, 11b
18:               jal          t1, 9b
19:               jal          ra, 2b
20:               jal          ra, 19b
21:               jal          tp, 16b
22:               jal          t1, 6b
23:               jal          s0, 22b
24:               sub          s1, a4, a3
sub_4_1:          jal          t1, 1f
0:                jal          ra, 2f
1:                jal          ra, 9f
2:                jal          t1, 8f
3:                jal          s3, 11f
4:                jal          s6, 13f
5:                jal          t1, 14f
6:                jal          s9, 15f
7:                jal          sp, 6b
8:                jal          t1, 12f
9:                jal          s7, 0b
10:               jal          ra, 7b
11:               jal          ra, 5b
12:               jal          ra, 4b
13:               jal          ra, 3b
14:               jal          t1, 10b
15:               sll          s3, a4, s4
                  blt          t2, a1, 2f
                  add          a1, s8, s9
2:                nop
                  xori         a4, t4, -1654
                  srli         s9, s2, 23
                  sltu         a2, tp, ra
                  bgeu         gp, s6, 16f
                  xor          t2, a2, s8
                  slt          t3, s5, s11
                  srli         s2, t6, 13
                  bgeu         s4, s2, 26f
                  slli         t2, t1, 14
                  sltu         t2, t2, a4
                  xori         a5, s4, -429
                  lui          tp, 642260
                  xori         t5, t6, 1254
16:               addi         t3, t5, -609
                  sub          sp, s8, s6
                  addi         s7, t4, 404
                  sub          a3, t4, a1
                  bne          a5, t6, 38f
                  srli         t1, t1, 13
                  or           s7, s8, s11
                  bltu         s3, t3, 42f
                  slli         a1, a7, 28
                  blt          t1, t3, 27f
26:               or           a5, s1, a7
27:               and          s11, s4, t2
                  sra          t2, t3, t3
                  bne          a5, t3, 37f
                  sra          gp, s8, s0
                  bltu         sp, s4, 43f
                  or           a4, t1, t0
                  bltu         t3, s2, 38f
                  srli         sp, s6, 9
                  ori          s0, s9, 1855
                  andi         s7, s9, -394
37:               and          t5, t4, a2
38:               slti         s11, a6, -703
                  slli         a0, s11, 23
                  bne          s7, s1, 43f
                  slti         s2, s7, 361
42:               sra          t1, a2, t6
43:               blt          t0, a5, 44f
44:               slt          s1, t2, s3
                  sll          t2, gp, s3
                  bltu         sp, s5, 62f
                  xori         s1, t0, 659
                  bgeu         s7, s7, 67f
                  blt          s7, s2, 66f
                  blt          s3, s2, 54f
                  addi         a6, a7, -1986
                  slli         zero, sp, 0
                  slt          a3, s8, a6
54:               sra          s4, t0, a0
                  bne          zero, a5, 70f
                  sltiu        zero, t4, 1737
                  srli         s1, s9, 29
                  sltiu        gp, sp, 1695
                  slt          s3, t1, t5
                  srli         a6, sp, 21
                  slt          t6, s3, t5
62:               srai         zero, a7, 10
                  slt          t6, t6, s0
                  bltu         s3, tp, 70f
                  beq          s3, a0, 80f
66:               sltu         a0, a4, tp
67:               sra          s9, t2, t6
                  slt          a5, ra, s7
                  nop
70:               slli         t1, zero, 18
                  sll          s2, s10, a2
                  xori         t4, a4, 1037
                  sub          sp, s7, s7
                  srai         s2, s5, 26
                  slt          a0, s9, s4
                  and          s2, gp, gp
                  bltu         sp, t6, 78f
78:               bge          t4, gp, 81f
                  ori          t1, s5, 1247
80:               blt          a0, ra, 91f
81:               sll          t3, s0, zero
                  sra          t4, t4, sp
                  sra          s0, t2, s11
                  slli         a4, a2, 27
                  sra          s11, s10, s11
                  xor          s11, a1, s7
                  auipc        s0, 172775
                  srai         s9, s5, 18
                  or           a5, t6, s1
                  sltiu        a4, t4, 681
91:               bge          t4, a5, 105f
                  andi         a0, s7, -1360
                  or           a4, a2, t4
                  addi         s5, zero, -497
                  blt          t1, s3, 108f
                  blt          t0, t6, 116f
                  and          a6, a1, s6
                  nop
                  xori         ra, t0, -66
                  add          s5, a0, a4
                  and          t4, t4, s2
                  slt          a2, s11, a3
                  slt          s6, sp, t5
                  srli         t6, t4, 29
105:              srli         ra, t1, 23
                  srl          gp, t5, ra
                  bge          tp, zero, 124f
108:              xor          s9, a3, s9
                  slt          t5, t6, a0
                  srai         a4, a1, 3
                  and          s9, s5, t5
                  sltiu        s7, s7, -1101
                  sub          a3, s9, t2
                  srli         tp, tp, 23
                  auipc        t4, 89060
116:              bge          s0, a7, 117f
117:              bne          t6, t1, 121f
                  bgeu         s0, a0, 134f
                  ori          s2, s4, 180
                  srl          a4, sp, s6
121:              sltiu        s1, s11, -396
                  and          a4, s1, s9
                  xor          a6, a3, s9
124:              sll          s8, t6, s2
                  nop
                  lui          a0, 364618
                  sltiu        s0, a1, -788
                  xor          ra, s1, s9
                  addi         s5, s3, 1802
                  slli         s0, a1, 30
                  beq          a3, s2, 151f
                  srl          s6, tp, gp
                  and          a0, a7, s5
134:              bgeu         s5, a5, 136f
                  sltu         s1, s7, s8
136:              addi         s2, s10, -1708
                  addi         t4, ra, -928
                  slti         s11, s6, -17
                  slti         a3, t6, -838
                  auipc        ra, 561564
                  sub          a6, a7, a1
                  slt          s4, a5, t5
                  srl          s5, t0, t2
                  sll          s9, a7, t1
                  slti         tp, t0, 1345
                  sltu         ra, s11, s9
                  blt          s9, s10, 149f
                  bne          a5, zero, 160f
149:              xor          tp, a2, t6
                  add          t6, s0, s6
151:              srai         t1, s1, 11
                  slti         t6, s1, 687
                  addi         s2, s5, -1848
                  beq          t4, zero, 164f
                  and          a1, a3, t3
                  and          t4, ra, s6
                  bgeu         s0, t3, 168f
                  sub          s8, a2, s3
                  slt          tp, t0, a5
160:              lui          t1, 960862
                  andi         a3, t5, -629
                  ori          s7, a5, 1491
                  slli         s2, a5, 20
164:              slti         a2, t4, 430
                  bltu         s6, t0, 184f
                  bltu         gp, a4, 170f
                  andi         s0, s10, 777
168:              bge          a4, s4, 183f
                  xori         s7, s10, 83
170:              andi         ra, s9, 316
                  sltu         s3, s6, s3
                  slt          a5, s8, s5
                  add          zero, s9, t5
                  srli         sp, s4, 4
                  blt          s7, s6, 195f
                  beq          gp, t3, 189f
                  sltu         s2, s9, ra
                  ori          gp, a7, 720
                  beq          a2, s4, 199f
                  andi         s4, s10, 1458
                  bne          a6, a4, 183f
                  srl          s0, s3, a2
183:              xori         s8, a1, -479
184:              srai         t4, a2, 31
                  bgeu         s11, sp, 186f
186:              bltu         t3, t0, 189f
                  ori          s4, s4, -57
                  addi         a3, t4, -725
189:              slti         a6, s8, 1708
                  sltu         s2, s1, zero
                  andi         zero, s2, 2004
                  addi         s11, ra, 554
                  or           s8, s9, tp
                  slt          gp, s1, s5
195:              or           a3, a2, a2
                  srli         a0, s0, 16
                  slt          s8, s7, a2
                  or           s3, a4, a2
199:              sltu         a3, s5, s5
                  sub          s0, s1, zero
                  xori         gp, a0, -117
                  addi         a2, t5, -694
                  srai         a4, a5, 31
                  srli         s2, a3, 28
                  and          t4, sp, t2
                  slti         a4, s4, -995
                  auipc        a4, 867395
                  sltu         s11, s8, s6
                  slti         zero, t6, 337
                  andi         t4, s7, 1349
                  sra          a1, t5, a5
                  nop
                  slt          t1, s5, ra
                  lui          a6, 928237
                  or           zero, a2, s3
                  slti         a1, s11, -1535
                  xor          gp, a7, s11
                  auipc        zero, 872495
                  add          tp, a1, s5
                  beq          s0, s0, 238f
                  or           a5, s10, t3
                  beq          a3, a2, 228f
                  slti         a0, a4, -544
                  bltu         t2, t6, 240f
                  nop
                  or           tp, t4, a6
                  ori          ra, zero, 660
228:              lui          zero, 58945
                  ori          s1, a5, -959
                  sra          a5, sp, s2
                  beq          a2, t4, 233f
                  slt          s11, zero, s6
233:              ori          s4, s1, 310
                  srl          s9, a7, a0
                  srl          gp, t6, s9
                  xori         s7, t1, -574
                  sltu         ra, a4, s4
238:              xori         a2, s4, -1473
                  slli         s9, a6, 5
240:              slli         gp, s4, 20
                  blt          t6, t3, 257f
                  sltiu        s4, s0, -939
                  srl          t6, t3, a3
                  xori         a3, s6, -1671
                  bltu         s4, t0, 264f
                  bltu         s2, sp, 261f
                  slli         t2, s3, 21
                  sltiu        a2, s10, -1191
                  nop
                  blt          s2, a3, 253f
                  sll          t3, s8, t4
                  or           s11, tp, s3
253:              xor          a5, a1, a3
                  slt          s9, t0, s1
                  bltu         a6, a1, 259f
                  sltiu        t4, s0, -1644
257:              sll          s3, t0, t6
                  slt          t2, t4, zero
259:              srai         ra, gp, 10
                  srl          s1, t6, a2
261:              auipc        s1, 187865
                  srai         ra, s6, 4
                  nop
264:              bgeu         t3, s0, 272f
                  sltiu        s9, s7, -1316
                  and          t3, s10, a7
                  beq          t1, a6, 268f
268:              addi         s8, ra, 1787
                  blt          s10, t6, 274f
                  srli         sp, a4, 3
                  ori          s2, sp, -1636
272:              bge          s9, gp, 288f
                  blt          s7, s9, 287f
274:              addi         a6, t2, -459
                  sltiu        s0, t1, -1536
                  bgeu         sp, s0, 293f
                  sltu         s8, a5, a4
                  auipc        a4, 850587
                  srl          gp, s9, a1
                  bge          a2, s6, 297f
                  slti         sp, s7, 765
                  srl          s1, s7, tp
                  andi         s4, t3, 1669
                  bgeu         s11, s0, 285f
285:              bltu         a4, s0, 295f
                  sltu         zero, a1, t2
287:              and          t4, gp, t6
288:              xori         t1, t5, -965
                  srai         ra, t4, 9
                  sltiu        s0, a6, -1424
                  sll          s3, tp, a6
                  xor          s4, s4, t3
293:              nop
                  blt          a1, a2, 295f
295:              andi         t1, tp, -1047
                  or           s11, s8, sp
297:              beq          s3, ra, 301f
                  srai         a2, zero, 8
                  slt          tp, s4, t3
                  bge          s2, s11, 317f
301:              bltu         s8, a5, 321f
                  or           s6, a4, t4
                  bge          t3, s11, 322f
                  bge          t0, sp, 308f
                  slli         tp, t0, 13
                  sltiu        s1, a2, 51
                  sll          s8, a6, a3
308:              andi         t3, tp, 430
                  andi         sp, s5, 1485
                  bltu         t3, t1, 329f
                  sub          a1, a2, s10
                  bgeu         a6, s7, 332f
                  srl          s11, sp, a7
                  addi         t3, sp, -1423
                  slt          s5, sp, s10
                  lui          t3, 278555
317:              slt          s3, s3, a3
                  lui          s3, 457286
                  auipc        a0, 548323
                  add          t5, a3, a4
321:              bltu         ra, a7, 323f
322:              add          s7, a5, s11
323:              sub          s9, t0, a5
                  bge          a6, zero, 341f
                  addi         ra, s8, 214
                  beq          t6, s6, 342f
                  srli         t4, s2, 5
                  sltiu        a0, t1, -2017
329:              andi         s3, gp, -801
                  sltiu        s7, s10, -922
                  slli         t5, tp, 7
332:              sra          s4, s7, t0
                  sltu         ra, s9, ra
                  or           t6, s7, s7
                  slti         t3, s7, 1636
                  addi         t2, a3, 709
                  bne          ra, t6, 350f
                  beq          t5, a4, 340f
                  srl          s3, t5, t6
340:              bne          s11, s9, 354f
341:              andi         a6, s2, -757
342:              and          s2, t6, s10
                  add          s3, ra, s7
                  srai         s9, ra, 16
                  ori          s6, a7, -1974
                  xor          a0, s1, t6
                  sub          s11, a5, s2
                  xori         s3, s10, 172
                  and          t4, s9, s5
350:              ori          s7, sp, -856
                  bne          s6, t6, 359f
                  and          s8, s8, s10
                  bne          s4, s0, 364f
354:              auipc        ra, 599739
                  slli         s3, t4, 0
                  andi         s6, a3, -1145
                  and          sp, ra, s2
                  bne          t2, s6, 374f
359:              or           zero, a0, a1
                  sltiu        a1, s0, 844
                  addi         sp, s11, -1194
                  srl          a1, a6, s8
                  beq          a0, a5, 364f
364:              and          t5, s10, zero
                  blt          t4, s1, 383f
                  beq          sp, t5, 381f
                  srai         s5, a7, 7
                  andi         a4, a5, -1792
                  nop
                  bge          s3, zero, 372f
                  slt          s7, a0, ra
372:              lui          s3, 504412
                  blt          s8, ra, 376f
374:              slti         ra, ra, -865
                  slt          s8, a7, s6
376:              blt          a1, a3, 392f
                  srl          a5, t2, s0
                  srl          gp, s2, t4
                  sll          t2, t6, t2
                  xori         a0, s1, 1441
381:              sub          s11, t3, s1
                  blt          a0, a2, 388f
383:              xor          s2, s4, s1
                  sltu         tp, t5, a2
                  and          s3, a6, t6
                  sub          s0, s1, a2
                  or           t3, s11, a3
388:              auipc        a6, 488328
                  and          s3, t0, s5
                  sll          tp, a0, s3
                  and          t4, s1, tp
392:              slt          s3, s5, s4
                  blt          tp, a2, 398f
                  xor          ra, a1, a1
                  andi         s0, a1, -2030
                  srl          gp, gp, sp
                  sub          a6, s8, s2
398:              addi         t3, a3, -1610
                  bltu         a6, a3, 411f
                  sub          s11, s11, sp
                  nop
                  lui          a0, 252658
                  srai         zero, a2, 2
                  auipc        a0, 663576
                  srl          a1, s0, a0
                  beq          a4, t6, 407f
407:              slli         s8, t0, 28
                  sltiu        s7, s9, -350
                  beq          a6, s7, 412f
                  addi         a1, t1, 1205
411:              blt          t3, t0, 426f
412:              slli         s7, s9, 15
                  sltu         s0, s7, ra
                  slli         s2, s10, 26
                  beq          zero, a0, 431f
                  slti         t4, ra, -1135
                  nop
                  addi         t4, tp, 170
                  and          a4, t6, zero
                  beq          s5, s10, 421f
421:              bne          t4, a0, 424f
                  xori         s4, s2, -140
                  srl          gp, s6, t3
424:              xor          ra, a5, s8
                  bge          t6, s5, 440f
426:              bgeu         s0, s5, 445f
                  ori          t3, s8, 1114
                  andi         s7, ra, 1427
                  andi         s4, s3, -1633
                  sub          s4, t3, a7
431:              auipc        gp, 191681
                  sll          a6, gp, tp
                  slti         s11, a5, -1604
                  ori          s8, a4, -259
                  or           ra, a3, s9
                  bne          t6, a0, 451f
                  sra          t5, ra, s0
                  andi         a3, s5, 704
                  sll          a3, t6, a3
440:              add          t2, t5, s0
                  lui          s8, 43595
                  slt          s5, gp, s7
                  auipc        s5, 749431
                  xori         t3, t4, -1509
445:              ori          s11, s8, -1087
                  or           s6, s8, s2
                  addi         t4, ra, 789
                  add          s5, t3, s3
                  sll          s9, zero, a0
                  addi         gp, a0, -1812
451:              slli         t1, sp, 27
                  xor          t1, s1, zero
                  sll          a3, s2, t1
                  bgeu         t3, s5, 455f
455:              beq          a7, a4, 471f
                  sltu         a5, s3, a7
                  addi         t3, s5, 796
                  sra          t3, a3, t6
                  srl          s7, s5, s7
                  bge          t4, s8, 465f
                  slli         t4, s10, 16
                  srl          a5, a6, sp
                  xor          a5, s8, a6
                  sub          s9, a1, s0
465:              beq          s10, s1, 471f
                  bge          a7, t2, 477f
                  bge          s10, a3, 471f
                  slti         s6, s2, 2040
                  sll          s8, a2, s4
                  xor          a4, t6, zero
471:              bgeu         t0, s3, 489f
                  bge          a0, s1, 489f
                  slli         a5, s9, 9
                  bge          t4, a2, 494f
                  addi         a3, t2, 436
                  bge          s5, t5, 486f
477:              sltiu        t6, t3, -1231
                  addi         t6, a2, -1273
                  slt          sp, t2, t3
                  bgeu         t6, t5, 488f
                  addi         zero, a5, 1468
                  beq          t4, s11, 496f
                  slli         t3, a5, 30
                  sub          s8, s3, t4
                  andi         a0, a5, 506
486:              addi         s2, t3, 238
                  sltiu        a4, t3, 733
488:              sub          s8, t0, gp
489:              blt          s0, a0, 490f
490:              sll          t5, t0, a5
                  srli         s3, a1, 16
                  xor          tp, a0, s4
                  srai         s4, a2, 19
494:              xor          s9, s4, a2
                  slli         t6, t4, 2
496:              sra          gp, t1, t3
                  add          s8, a3, s6
                  and          t1, t5, a5
                  auipc        s4, 875453
                  xori         s5, t3, 57
                  auipc        t5, 864164
                  lui          tp, 118630
                  bgeu         s9, t6, 507f
                  addi         s5, t2, -1436
                  srai         gp, a0, 1
                  bgeu         s7, ra, 519f
507:              or           s3, s6, s0
                  bne          t4, t5, 525f
                  sltiu        t2, t0, 1678
                  ori          tp, a7, 1747
                  srli         s5, s8, 22
                  addi         a4, a2, 979
                  xori         ra, a4, -326
                  add          s0, s7, s2
                  srl          t6, t4, t1
                  lui          zero, 805047
                  xor          a2, a1, sp
                  sltu         zero, t5, t5
519:              sltiu        s4, tp, -127
                  xori         s5, a6, -1295
                  beq          a5, a2, 537f
                  sltiu        t2, s7, -702
                  bgeu         gp, t4, 535f
                  bge          s0, a4, 526f
525:              bne          s8, a4, 545f
526:              bge          s11, tp, 528f
                  xori         a1, s8, -1124
528:              and          t4, a6, s3
                  sub          s5, a3, s8
                  sll          s11, s2, t3
                  ori          t5, s9, 948
                  add          s8, gp, s0
                  slli         t2, a2, 8
                  sltiu        t3, sp, 377
535:              slti         s6, tp, -2015
                  sltiu        t1, t6, 1388
537:              blt          a3, t3, 540f
                  srli         t5, a6, 5
                  andi         s1, t2, -104
540:              srai         a1, ra, 14
                  srli         t1, s3, 14
                  beq          t5, tp, 544f
                  xor          s2, t1, t4
544:              add          s8, sp, s7
545:              slli         t5, gp, 28
                  add          s3, t1, a2
                  addi         s1, a0, -1927
                  addi         zero, s11, -1723
                  add          a4, a5, s4
                  slli         s5, a5, 23
                  xor          s11, t4, t3
                  nop
                  auipc        tp, 779337
                  ori          tp, s2, 1132
                  andi         a4, zero, -1173
                  xori         a5, a1, -172
                  andi         s0, s1, -536
                  sll          s3, t6, t3
                  sub          a2, s0, s3
                  slti         sp, t5, -1648
                  blt          s6, t4, 580f
                  ori          s1, a3, -458
                  slt          s6, s0, a4
                  and          gp, a2, a0
                  srli         gp, s2, 11
                  ori          a1, s2, 1506
                  xor          s1, s10, s3
                  and          s1, s6, zero
                  slli         a0, s5, 16
                  bne          sp, s11, 587f
                  sll          a0, s5, a4
                  slt          tp, s6, s11
                  beq          s0, t5, 579f
                  sub          a6, a0, ra
                  or           t3, a3, a7
                  xori         t1, a3, 173
                  or           a3, a5, s1
                  auipc        tp, 899040
579:              bltu         t2, ra, 595f
580:              auipc        a3, 137181
                  sub          a4, t5, a2
sub_4_8:          jal          t1, 15f
0:                jal          s8, 13f
1:                jal          s7, 16f
2:                jal          ra, 14f
3:                jal          ra, 10f
4:                jal          t1, 21f
5:                jal          t1, 0b
6:                jal          s6, 12f
7:                jal          a4, 6b
8:                jal          t6, 11f
9:                jal          sp, 17f
10:               jal          ra, 8b
11:               jal          ra, 9b
12:               jal          ra, 4b
13:               jal          t1, 18f
14:               jal          s4, 1b
15:               jal          t1, 2b
16:               jal          ra, 3b
17:               jal          ra, 20f
18:               jal          s2, 19f
19:               jal          t1, 7b
20:               jal          ra, 5b
21:               addi         s2, zero, -1336
                  ori          t6, s8, 921
                  beq          ra, a5, 587f
                  addi         s0, t1, -161
                  add          a6, t5, t1
                  bge          s10, tp, 587f
587:              add          a4, t1, s3
                  add          sp, a7, t6
                  ori          s11, gp, -2008
                  sub          t5, t0, s6
                  slt          a1, s3, a0
                  beq          tp, a0, 608f
                  slti         t6, zero, -741
                  sub          s3, s7, t4
595:              slti         a1, a4, -1540
                  sll          s6, s0, s9
                  blt          t0, s8, 612f
                  srai         a6, a7, 7
                  blt          ra, s8, 609f
                  blt          gp, tp, 605f
                  srai         a0, a7, 3
                  or           a6, s11, s7
                  bgeu         t0, s4, 622f
                  beq          t5, t4, 621f
605:              sll          s5, t1, gp
                  bne          t4, a4, 607f
607:              bne          s8, a6, 609f
608:              sub          s0, ra, ra
609:              bltu         zero, s5, 611f
                  xor          zero, zero, a2
611:              slt          zero, a0, s4
612:              xor          s5, ra, a1
                  or           t1, t6, ra
                  nop
                  slti         tp, t0, 37
                  slti         s0, t0, -519
sub_4_11:         jal          t1, 0f
0:                jal          sp, 14f
1:                jal          ra, 7f
2:                jal          ra, 11f
3:                jal          ra, 13f
4:                jal          s9, 9f
5:                jal          t1, 15f
6:                jal          a0, 5b
7:                jal          a2, 19f
8:                jal          ra, 2b
9:                jal          ra, 18f
10:               jal          ra, 3b
11:               jal          sp, 10b
12:               jal          ra, 4b
13:               jal          s3, 1b
14:               jal          s5, 6b
15:               jal          t1, 16f
16:               jal          gp, 12b
17:               jal          ra, 8b
18:               jal          ra, 17b
19:               jal          t1, 20f
20:               auipc        a2, 535338
                  slti         t4, a3, -1427
                  and          a2, a6, s10
                  bgeu         s2, t1, 639f
                  auipc        t3, 37382
621:              blt          t3, a5, 633f
622:              sltiu        s5, a2, -301
                  nop
                  sub          s3, s10, s0
                  bne          t3, a4, 629f
                  slt          t6, a5, s0
                  blt          s6, s1, 643f
                  sltiu        s7, s3, -1200
629:              bge          zero, t3, 647f
                  sra          a4, s8, a5
                  lui          s8, 237746
                  bge          t2, s7, 633f
633:              bge          t1, s11, 636f
                  slt          t3, t0, s11
                  slt          t1, s8, a7
636:              srl          sp, a2, tp
                  sll          a6, a2, s7
                  andi         a2, a6, 1808
639:              xori         gp, s10, 181
                  addi         s8, a3, 139
                  srai         a0, t2, 25
                  srai         a0, ra, 14
643:              sltu         t4, a1, s10
                  andi         t6, s3, -1469
                  addi         s7, s0, -39
                  slli         s4, a5, 18
647:              sltiu        a5, a1, 1592
                  addi         sp, t0, 807
                  blt          a0, t0, 669f
                  xori         s11, a4, 7
                  bltu         s2, s10, 654f
                  add          s4, s11, s11
                  ori          ra, t4, 338
654:              and          s6, s6, ra
                  addi         s5, a6, 1291
                  slli         tp, s0, 20
                  srl          t2, s5, s1
                  bge          s4, a6, 677f
                  xori         t1, gp, 509
                  add          s6, s9, a7
                  or           a4, s11, a4
                  andi         a5, t6, -815
                  bne          s9, s2, 665f
                  bgeu         s10, gp, 679f
665:              ori          a4, a5, -802
                  auipc        s4, 860738
                  lui          zero, 615323
                  addi         a4, s6, 1556
669:              ori          a3, s2, 1419
                  sub          s9, t0, a3
                  and          t1, zero, s7
                  slt          s9, t6, gp
                  bne          s9, s2, 681f
                  add          a1, t2, s2
                  sltiu        s0, a6, 162
                  beq          s7, sp, 687f
677:              sltu         a0, s1, s9
                  lui          s0, 606500
679:              srai         t2, s2, 17
                  bne          s3, s9, 693f
681:              xori         a6, s11, 794
                  bgeu         s1, zero, 696f
                  srl          t5, a1, sp
                  add          t1, s9, sp
                  sll          s4, t1, s0
                  srai         zero, zero, 23
687:              srl          t5, s0, t1
                  blt          t5, a5, 705f
                  bltu         s11, t5, 697f
                  sltiu        t6, s10, 628
                  lui          t3, 193947
                  sll          a4, t0, t1
693:              slt          sp, t5, t5
                  srai         tp, a4, 29
                  addi         zero, s0, -1103
696:              sltiu        s2, a5, -183
697:              andi         a0, s6, -937
                  andi         t6, a5, -1763
                  xor          t6, a3, tp
                  ori          s6, s6, -1800
                  add          tp, s8, a7
                  srai         t4, tp, 25
                  xor          t6, s2, a0
                  slti         a4, ra, -592
705:              xor          t1, s11, a0
                  xori         s2, t5, -925
                  srli         a2, t2, 5
                  srai         t3, s1, 5
                  bne          a2, s1, 723f
                  nop
                  srai         s8, s8, 24
                  sltu         t2, a2, s5
                  auipc        sp, 312392
                  xor          s11, a3, gp
                  sltu         a6, a1, a7
                  auipc        a4, 398823
                  addi         a6, a0, 114
                  or           a1, s1, a0
                  andi         a5, s5, 1770
                  srl          s5, a1, s5
                  bge          t5, a4, 725f
                  slt          ra, a7, s4
723:              slt          a6, t3, ra
                  sra          t2, s9, t2
725:              srli         gp, a0, 16
                  slt          s3, s3, a5
                  sll          s7, ra, s4
                  addi         s7, s2, 205
                  and          a1, t1, s9
                  bge          t2, a5, 750f
                  xori         s4, a2, 1340
                  slli         a3, zero, 7
                  andi         s11, t1, 994
                  srai         a2, s7, 13
                  auipc        t6, 464777
                  bge          a2, ra, 747f
                  srl          s0, a5, a1
                  srli         gp, t0, 3
                  slti         s4, tp, -1773
                  sra          ra, a5, s11
                  bgeu         s0, a6, 743f
                  slti         a1, a2, -496
743:              nop
                  slti         s7, s11, 1510
                  auipc        a1, 1044673
                  slti         s7, tp, 1333
747:              bge          a7, ra, 764f
                  sub          t2, sp, a5
                  bgeu         a1, s5, 751f
750:              bne          t6, s11, 751f
751:              andi         s11, a5, 1026
                  sll          t1, t0, t3
                  bgeu         t1, s9, 773f
                  blt          a6, gp, 769f
                  beq          s10, s0, 774f
                  xor          t4, a6, tp
                  xor          sp, a1, s6
                  blt          s5, tp, 761f
                  lui          s1, 71094
                  slli         s8, t3, 12
761:              slli         a0, t2, 28
                  bltu         s9, ra, 777f
                  srl          s11, t1, s11
764:              xor          a2, t5, a0
                  xori         t5, zero, -1472
                  bne          s5, sp, 782f
                  srl          a6, tp, a6
                  sltiu        s6, a1, -930
769:              slt          t6, a2, s4
                  beq          s0, a7, 774f
                  ori          gp, s11, 1335
                  sra          t6, a1, gp
773:              beq          t1, s11, 792f
774:              srl          s3, s8, t6
                  xor          a4, s6, sp
                  add          t5, t2, s10
777:              sltiu        t1, s0, -178
                  srai         gp, sp, 19
                  bltu         sp, s9, 782f
                  nop
                  auipc        s5, 823694
782:              ori          a1, s9, -1057
                  sll          ra, t0, s5
                  sub          ra, t3, s9
                  nop
                  bltu         ra, a5, 791f
                  sub          a6, t4, t5
                  beq          t2, gp, 804f
                  slli         s4, s4, 12
                  lui          s9, 893553
791:              auipc        zero, 955864
792:              srl          tp, a6, t6
                  ori          t4, s2, -1511
                  addi         s6, s9, 491
                  ori          t2, s0, -1238
                  ori          gp, a3, 226
                  nop
                  sltu         gp, a2, s6
                  addi         s4, sp, 891
                  sltiu        a2, s0, -1961
                  blt          s6, a6, 813f
                  srai         s5, a4, 16
                  slt          tp, s5, s9
804:              srli         ra, a7, 19
                  or           s11, t3, a0
                  srli         s8, s7, 18
                  blt          ra, zero, 820f
                  srli         s0, t3, 15
                  blt          s10, s9, 811f
                  bltu         t6, t1, 811f
811:              xor          s5, s4, a3
                  slt          s2, s10, a2
813:              auipc        tp, 314116
                  blt          s7, s4, 820f
                  slli         s11, ra, 7
                  slti         s1, s8, 646
                  blt          a2, zero, 827f
                  beq          sp, t1, 836f
                  add          ra, s0, gp
820:              sub          zero, s10, t2
                  and          t5, ra, t6
                  nop
                  andi         a4, gp, -582
                  srl          ra, s7, t4
                  xor          t3, sp, t5
                  or           s6, a1, a4
827:              sub          zero, a3, t2
                  add          t1, zero, a5
                  bge          s10, zero, 845f
                  srai         s2, a6, 4
                  srli         a5, s4, 28
                  bltu         a0, gp, 833f
833:              slt          a5, s11, s11
                  xor          t4, s2, ra
                  sltu         s8, s0, a3
836:              srai         a3, zero, 21
                  sll          a4, s9, a1
                  blt          a7, t6, 841f
                  sltu         s3, a3, t5
                  sll          s6, t6, a5
841:              lui          a4, 1019912
                  or           zero, sp, t3
                  slt          t4, a4, t5
                  slt          sp, t0, s10
845:              lui          t2, 384689
                  or           s0, s9, s11
                  auipc        t3, 250125
                  nop
                  bltu         a2, s0, 861f
                  andi         a6, s8, -190
                  slt          t2, a0, t4
                  sll          tp, s5, t3
                  bne          a7, s6, 854f
854:              bltu         zero, s7, 860f
                  bge          t1, zero, 859f
                  auipc        s8, 427643
sub_4_6:          jal          t1, 6f
0:                jal          ra, 18f
1:                jal          ra, 4f
2:                jal          t1, 11f
3:                jal          t1, 22f
4:                jal          a3, 28f
5:                jal          ra, 30f
6:                jal          t5, 3b
7:                jal          ra, 26f
8:                jal          ra, 14f
9:                jal          a1, 24f
10:               jal          t1, 13f
11:               jal          sp, 25f
12:               jal          ra, 1b
13:               jal          t1, 5b
14:               jal          ra, 9b
15:               jal          t1, 20f
16:               jal          sp, 10b
17:               jal          ra, 7b
18:               jal          ra, 19f
19:               jal          t1, 2b
20:               jal          sp, 0b
21:               jal          tp, 23f
22:               jal          t1, 29f
23:               jal          ra, 12b
24:               jal          ra, 16b
25:               jal          s0, 17b
26:               jal          gp, 8b
27:               jal          ra, 21b
28:               jal          ra, 15b
29:               jal          a5, 27b
30:               auipc        s2, 348763
                  bge          s8, s8, 862f
                  xor          a3, sp, a5
859:              bgeu         s5, s1, 873f
860:              andi         t5, s1, -1156
861:              auipc        t4, 557263
862:              bge          s3, a1, 866f
                  sll          sp, a7, s7
                  bne          t1, a5, 866f
                  slli         s4, s10, 15
866:              xori         s7, a3, 81
                  bne          s6, s6, 869f
                  bne          zero, a0, 876f
869:              nop
                  bge          s0, s6, 871f
871:              slli         s7, ra, 30
                  xori         t6, s11, 1722
873:              andi         a6, s11, 315
                  sub          s11, a2, s10
                  xor          s1, zero, tp
876:              addi         s7, zero, 1750
                  xori         s1, s1, 447
                  sll          t2, a6, a2
                  srli         t5, sp, 2
                  andi         a1, s11, 132
                  xori         t2, t6, 1965
                  and          s3, t6, s2
                  bne          s8, s9, 903f
                  add          s3, sp, a5
                  bgeu         s8, s1, 888f
                  slli         t4, gp, 27
                  andi         a0, s2, -604
888:              add          t2, s2, s2
                  xori         s1, a7, 1002
                  lui          a2, 70650
                  and          ra, ra, t0
                  or           t3, a6, s1
                  ori          s7, a1, -1294
                  blt          a0, s11, 911f
                  la           t5, sub_5
                  srli         t3, a5, 21
                  srli         t4, s10, 3
                  srl          t3, s8, tp
                  srli         t2, a1, 22
                  addi         t5, t5, 110
                  lui          zero, 685998
sub_4_j6:         jalr         t1, t5, -110 #jump sub_4 -> sub_5
                  xor          a5, t1, s1
                  auipc        a5, 838206
                  bge          s1, s8, 898f
898:              bltu         a2, ra, 916f
                  blt          t1, s4, 919f
                  beq          s9, a6, 916f
                  sra          a4, a5, s2
                  bne          a5, a1, 912f
903:              sll          t6, t4, a6
                  beq          a0, zero, 906f
                  sub          s3, tp, ra
906:              addi         s9, sp, 1986
                  bgeu         a4, t1, 922f
                  addi         s1, t0, -598
                  sltu         t6, t4, t0
                  blt          sp, s1, 925f
911:              auipc        t3, 831031
912:              auipc        gp, 498174
                  ori          t6, gp, -1668
                  xor          gp, s11, sp
                  sra          s5, s4, s10
916:              xori         t6, a5, -1962
                  sub          s8, s2, t0
                  bne          t5, t5, 931f
919:              srli         a2, s1, 16
                  slti         a2, s10, -1930
                  add          a3, tp, s10
922:              xor          s0, s2, a0
                  ori          t3, a0, -1571
                  srli         s2, s2, 17
925:              sltiu        t1, s10, 1037
                  sub          t4, s4, t2
                  sll          zero, t1, s4
                  slli         t5, s0, 0
                  addi         s8, s2, 1671
                  andi         ra, a6, 1389
931:              or           a1, gp, s2
                  nop
                  sub          t5, s4, t0
                  addi         a5, s5, -1009
                  sltu         s0, s10, gp
                  sltiu        a6, a2, 1138
                  xori         s5, s9, 988
                  blt          s3, t6, 949f
                  srli         a6, a3, 2
                  andi         t4, a0, 1547
                  srai         s11, tp, 31
                  beq          s7, t5, 958f
                  srai         t6, s9, 31
                  xori         s1, gp, -330
                  bne          s11, sp, 961f
                  srl          t1, t0, a7
                  slli         s6, t0, 5
                  ori          s3, a1, 224
949:              lui          s4, 983571
                  or           zero, gp, s1
                  sra          s7, t3, s10
                  xor          a1, s11, s9
                  auipc        zero, 1018494
                  bltu         sp, s10, 973f
                  beq          s10, t1, 974f
                  auipc        t3, 331714
                  ori          t5, s11, 1238
958:              bge          s3, s11, 975f
                  bne          s11, s7, 974f
                  bne          s7, t1, 975f
961:              bne          t4, a1, 962f
962:              bge          a5, s10, 964f
                  ori          s3, a0, 468
964:              blt          s4, a7, 981f
                  sra          t3, t5, s1
                  add          s9, s11, tp
                  slti         a1, s3, -605
                  sll          a5, a3, s2
                  sub          s6, a7, gp
                  bge          s6, t6, 971f
971:              slli         a4, a7, 11
                  slti         t2, s1, -614
973:              sub          ra, zero, s3
974:              beq          s3, a0, 978f
975:              andi         s2, t2, -424
                  auipc        a0, 710557
                  beq          a5, zero, 987f
978:              sltiu        a3, s5, -529
                  sub          zero, s10, a0
                  sltu         a1, t1, s1
981:              add          a3, t3, s5
                  or           a2, a1, s9
                  sll          a2, s10, sp
                  sltu         t1, sp, ra
                  srli         a5, s4, 22
                  srai         s2, s0, 5
987:              andi         s0, t2, -1950
                  sltu         s4, t1, s5
                  xori         t6, ra, -182
                  srl          s7, s8, s0
                  andi         t6, a6, 641
                  blt          s10, a2, 1004f
                  addi         sp, s5, 1427
                  or           s8, a2, ra
                  slt          t4, s9, t5
                  beq          s4, a3, 1012f
                  addi         t5, t5, 321
                  bge          a2, s2, 1012f
                  sll          t5, t1, s3
                  xor          t6, sp, a6
                  slti         s5, s8, -992
                  or           tp, zero, s4
                  slt          zero, a0, s3
1004:             sltiu        s8, a1, -111
                  slt          t2, tp, t2
                  srai         s11, ra, 28
                  add          a5, tp, t4
                  srli         t4, s0, 6
                  addi         s8, s10, 1290
                  add          t5, s5, s7
                  bne          a7, a1, 1031f
1012:             sltu         t4, t6, a3
                  sltu         t6, s5, a2
                  bgeu         a6, t1, 1030f
                  slt          a5, gp, s11
                  bltu         t1, t4, 1035f
                  auipc        s7, 289395
                  or           ra, s2, a7
                  nop
                  and          s6, t4, t6
                  srl          a6, tp, s6
                  bgeu         t2, s11, 1039f
                  bgeu         s9, a4, 1034f
                  slti         tp, s9, -833
                  and          a6, s2, a3
                  sltu         a2, s7, a4
                  nop
                  add          s4, t5, a5
                  bne          t5, s0, 1032f
1030:             sltu         s3, a3, a2
1031:             bgeu         s8, s9, 1036f
1032:             lui          sp, 526704
                  slti         a2, t5, 1421
1034:             and          s2, s9, s2
1035:             srli         tp, sp, 15
1036:             beq          t5, t5, 1039f
                  slli         s6, ra, 28
                  ori          a6, s5, -1491
1039:             slli         a5, tp, 18
                  ori          s7, t2, -113
                  beq          t5, a1, 1060f
                  and          a5, s7, a3
                  slt          sp, s10, a0
                  or           s2, t3, t4
                  add          s4, s6, a3
                  andi         tp, s11, 1515
                  lui          s3, 341885
                  bgeu         s5, a6, 1050f
                  sra          t6, t1, t1
1050:             blt          a7, s10, 1051f
1051:             srli         s8, t1, 14
                  add          a4, s0, s3
                  sltiu        ra, s3, -1283
                  and          a1, a5, s11
                  slt          s7, t0, a6
                  or           t5, a0, sp
                  ori          ra, sp, -160
                  slti         t5, sp, -1087
                  and          t3, a7, s9
1060:             sll          a0, s5, t6
                  beq          sp, t5, 1069f
                  srli         a5, sp, 3
                  srli         s3, a4, 21
                  slt          s7, t4, s10
                  andi         t4, t6, 383
                  bne          s5, a4, 1070f
                  slt          t1, a3, t2
                  sub          a4, s7, a3
1069:             srl          s11, a4, sp
1070:             srli         s11, s10, 6
                  beq          s1, s1, 1077f
                  slti         ra, t1, 593
                  srl          s8, s3, s10
                  xori         s2, s3, 1515
                  slti         gp, s7, 18
                  srli         a4, s7, 28
1077:             add          t6, s11, s5
                  bne          s8, ra, 1096f
                  blt          a7, t2, 1099f
                  bgeu         a6, t1, 1096f
                  srl          a3, sp, tp
                  sltiu        a0, s7, -362
                  srli         s3, t5, 28
                  nop
                  sltu         a4, s4, t4
                  bltu         s9, tp, 1099f
                  bne          s4, s8, 1089f
                  blt          a0, t4, 1090f
1089:             blt          a2, t1, 1092f
1090:             srl          t4, a1, t3
                  beq          s11, s6, 1106f
1092:             bltu         a1, s0, 1110f
                  slti         t5, s0, -202
                  sll          s9, s11, s1
                  add          t1, t0, a7
1096:             add          s2, a2, a4
                  ori          s1, t4, 1334
                  blt          s5, s8, 1099f
1099:             andi         t3, s5, 79
                  and          gp, tp, tp
                  auipc        a4, 522239
                  or           tp, s1, s8
                  sltu         a6, s5, a6
                  xor          s7, a4, t6
                  srl          s4, s6, s5
1106:             ori          t6, s3, -2006
                  nop
                  slti         zero, s10, 1829
                  srli         sp, t2, 8
1110:             slt          a6, t2, t1
                  slli         s4, t2, 9
                  addi         gp, s10, -1620
                  sra          t3, tp, s6
                  sra          s1, t0, tp
                  slti         t1, ra, -538
                  blt          sp, t5, 1118f
                  sltiu        t5, t3, 1195
1118:             nop
                  bne          t2, a2, 1125f
                  sltu         s6, s9, ra
                  blt          t6, s9, 1125f
                  beq          a0, a7, 1126f
                  nop
                  xor          a4, ra, a0
1125:             and          a2, a0, a5
1126:             slt          ra, a5, t2
                  lui          a5, 349309
                  bgeu         a7, a4, 1136f
                  bge          s4, a0, 1130f
1130:             xor          a5, t2, a1
                  or           t2, a7, a3
                  add          a6, t2, a0
                  bltu         gp, a0, 1153f
                  srai         s0, ra, 20
                  auipc        t6, 122481
1136:             sra          s3, s11, s0
                  srl          s9, s5, a5
                  sra          a5, gp, s2
                  or           s5, s7, s9
                  xori         zero, ra, 1714
                  add          s9, t6, s9
                  auipc        s2, 249697
                  srl          s1, t0, gp
                  ori          s0, a7, 241
                  add          t6, sp, s9
                  bne          s10, t2, 1156f
                  bgeu         s2, zero, 1152f
                  addi         sp, a5, -1506
                  ori          a6, a1, -1769
                  ori          t1, a5, 914
                  and          sp, s7, s8
1152:             add          s5, a5, ra
1153:             beq          a3, t5, 1157f
                  slti         s1, t6, 545
                  bltu         s0, s7, 1157f
1156:             ori          t4, a4, 89
1157:             andi         a5, a5, -899
                  lw           t1, 4(t0)
                  lui          s7, 455894
                  sll          a0, s4, a2
                  auipc        a2, 387743
                  addi         t0, t0, 16
                  lui          s2, 488779
                  andi         ra, t2, 52
1697:             addi x13, x6, 1
1697:             jalr x13, x13, 0
sub_1:            addi         t0, t0, -12
                  andi         s6, a7, 1114
                  sw           t1, 4(t0)
                  sra          s1, a2, s4
                  srl          s7, s7, a2
                  slli         s4, a7, 5
                  xori         gp, a7, 1222
                  slti         s6, s10, -415
                  sll          a2, gp, tp
                  and          t6, a1, gp
                  la           s1, sub_2
                  addi         s1, s1, -551
                  nop
                  add          a4, s5, s10
                  auipc        t2, 80826
                  srli         s11, t4, 4
sub_1_j3:         jalr         t1, s1, 552 #jump sub_1 -> sub_2
                  blt          a2, a4, 8f
                  bgeu         a7, zero, 6f
                  blt          gp, a2, 8f
                  add          t3, a4, t0
                  sub          a0, tp, sp
                  sltiu        ra, s4, 462
6:                sll          s5, s11, s8
                  blt          tp, a3, 8f
8:                lui          s0, 919812
                  xori         t3, s7, -694
                  nop
                  xor          a3, s10, s4
                  auipc        a2, 402716
                  slt          a2, s6, a7
                  lw           t1, 4(t0)
                  addi         t0, t0, 12
                  xor          s2, s9, s6
34:               addi x10, x6, 0
34:               jalr x10, x10, 0
sub_3:            slli         s6, gp, 26
                  blt          s4, a1, sub_3_stack_p
                  addi         s1, zero, -1572
                  sub          tp, a0, t2
                  sltiu        t5, ra, -882
sub_3_stack_p:    addi         t0, t0, -16
                  sw           t1, 4(t0)
                  sll          tp, gp, s9
                  slti         s7, zero, 965
                  srli         s6, t2, 20
sub_3_6:          jal          t1, 21f
0:                jal          t1, 25f
1:                jal          t1, 10f
2:                jal          sp, 5f
3:                jal          t4, 19f
4:                jal          ra, 13f
5:                jal          s1, 8f
6:                jal          ra, 23f
7:                jal          sp, 9f
8:                jal          t1, 20f
9:                jal          ra, 6b
10:               jal          ra, 18f
11:               jal          ra, 27f
12:               jal          s4, 11b
13:               jal          ra, 24f
14:               jal          a4, 3b
15:               jal          ra, 28f
16:               jal          ra, 0b
17:               jal          ra, 14b
18:               jal          ra, 17b
19:               jal          ra, 16b
20:               jal          ra, 26f
21:               jal          s4, 22f
22:               jal          sp, 12b
23:               jal          ra, 1b
24:               jal          t1, 7b
25:               jal          s9, 2b
26:               jal          t2, 15b
27:               jal          t1, 4b
28:               ori          s6, s8, -1957
sub_3_9:          jal          t1, 1f
0:                jal          ra, 10f
1:                jal          a0, 16f
2:                jal          ra, 11f
3:                jal          tp, 8f
4:                jal          s0, 9f
5:                jal          ra, 3b
6:                jal          ra, 20f
7:                jal          t1, 12f
8:                jal          ra, 7b
9:                jal          t4, 15f
10:               jal          ra, 17f
11:               jal          ra, 14f
12:               jal          t1, 18f
13:               jal          t1, 19f
14:               jal          t1, 5b
15:               jal          ra, 0b
16:               jal          t1, 13b
17:               jal          ra, 21f
18:               jal          t1, 6b
19:               jal          tp, 2b
20:               jal          gp, 4b
21:               auipc        s1, 736787
sub_3_14:         jal          t1, 23f
0:                jal          a5, 13f
1:                jal          ra, 19f
2:                jal          ra, 7f
3:                jal          ra, 12f
4:                jal          t1, 16f
5:                jal          t1, 21f
6:                jal          t1, 0b
7:                jal          ra, 20f
8:                jal          t1, 4b
9:                jal          sp, 14f
10:               jal          ra, 2b
11:               jal          ra, 24f
12:               jal          s8, 11b
13:               jal          t1, 1b
14:               jal          a0, 17f
15:               jal          ra, 3b
16:               jal          ra, 18f
17:               jal          ra, 6b
18:               jal          ra, 15b
19:               jal          ra, 22f
20:               jal          sp, 9b
21:               jal          t2, 10b
22:               jal          t1, 8b
23:               jal          ra, 5b
24:               addi         a0, sp, -1469
sub_3_1:          jal          t1, 4f
0:                jal          ra, 14f
1:                jal          gp, 20f
2:                jal          sp, 22f
3:                jal          ra, 15f
4:                jal          tp, 0b
5:                jal          ra, 11f
6:                jal          sp, 12f
7:                jal          sp, 28f
8:                jal          t1, 9f
9:                jal          ra, 18f
10:               jal          s11, 6b
11:               jal          t1, 21f
12:               jal          ra, 26f
13:               jal          ra, 8b
14:               jal          t1, 24f
15:               jal          ra, 23f
16:               jal          t1, 5b
17:               jal          t2, 7b
18:               jal          t1, 10b
19:               jal          ra, 17b
20:               jal          ra, 19b
21:               jal          ra, 13b
22:               jal          ra, 1b
23:               jal          t6, 25f
24:               jal          ra, 3b
25:               jal          t1, 27f
26:               jal          gp, 2b
27:               jal          a1, 16b
28:               sub          t6, s3, s2
sub_3_13:         jal          t1, 3f
0:                jal          ra, 25f
1:                jal          ra, 7f
2:                jal          a3, 10f
3:                jal          ra, 19f
4:                jal          t1, 11f
5:                jal          ra, 9f
6:                jal          t1, 15f
7:                jal          ra, 8f
8:                jal          ra, 2b
9:                jal          ra, 6b
10:               jal          ra, 4b
11:               jal          a5, 16f
12:               jal          ra, 18f
13:               jal          t1, 5b
14:               jal          ra, 22f
15:               jal          ra, 17f
16:               jal          tp, 20f
17:               jal          t1, 14b
18:               jal          s11, 24f
19:               jal          t1, 12b
20:               jal          s7, 0b
21:               jal          ra, 1b
22:               jal          t1, 26f
23:               jal          ra, 21b
24:               jal          ra, 23b
25:               jal          s11, 13b
26:               srli         s11, t4, 18
sub_3_19:         jal          t1, 11f
0:                jal          s0, 5f
1:                jal          ra, 8f
2:                jal          t1, 3f
3:                jal          ra, 13f
4:                jal          t1, 6f
5:                jal          ra, 15f
6:                jal          sp, 14f
7:                jal          ra, 16f
8:                jal          ra, 9f
9:                jal          ra, 7b
10:               jal          ra, 0b
11:               jal          t1, 10b
12:               jal          ra, 4b
13:               jal          ra, 1b
14:               jal          ra, 2b
15:               jal          a1, 12b
16:               sra          zero, a1, s8
sub_3_3:          jal          t1, 7f
0:                jal          ra, 6f
1:                jal          ra, 11f
2:                jal          ra, 3f
3:                jal          ra, 5f
4:                jal          ra, 10f
5:                jal          ra, 8f
6:                jal          ra, 9f
7:                jal          ra, 2b
8:                jal          t1, 0b
9:                jal          t6, 4b
10:               jal          ra, 1b
11:               xori         t1, s0, -33
sub_3_4:          jal          t1, 2f
0:                jal          s4, 9f
1:                jal          gp, 17f
2:                jal          ra, 5f
3:                jal          t1, 14f
4:                jal          ra, 25f
5:                jal          t1, 3b
6:                jal          t1, 10f
7:                jal          a3, 1b
8:                jal          ra, 23f
9:                jal          ra, 15f
10:               jal          ra, 0b
11:               jal          gp, 6b
12:               jal          s11, 19f
13:               jal          ra, 12b
14:               jal          sp, 16f
15:               jal          ra, 22f
16:               jal          ra, 8b
17:               jal          t1, 24f
18:               jal          gp, 20f
19:               jal          t2, 4b
20:               jal          t1, 7b
21:               jal          t1, 18b
22:               jal          ra, 13b
23:               jal          a6, 21b
24:               jal          gp, 11b
25:               sub          a5, s2, s10
sub_3_5:          jal          t1, 5f
0:                jal          ra, 1f
1:                jal          ra, 2f
2:                jal          t3, 4f
3:                jal          sp, 9f
4:                jal          t6, 3b
5:                jal          ra, 0b
6:                jal          ra, 7f
7:                jal          t1, 8f
8:                jal          ra, 10f
9:                jal          s9, 6b
10:               lui          t1, 107892
sub_3_17:         jal          t1, 5f
0:                jal          sp, 2f
1:                jal          ra, 6f
2:                jal          tp, 15f
3:                jal          s5, 11f
4:                jal          ra, 9f
5:                jal          ra, 4b
6:                jal          s6, 13f
7:                jal          ra, 8f
8:                jal          ra, 0b
9:                jal          t1, 14f
10:               jal          a5, 1b
11:               jal          ra, 10b
12:               jal          sp, 3b
13:               jal          ra, 7b
14:               jal          ra, 12b
15:               auipc        t1, 301036
sub_3_22:         jal          t1, 2f
0:                jal          tp, 13f
1:                jal          ra, 9f
2:                jal          t4, 5f
3:                jal          ra, 1b
4:                jal          ra, 14f
5:                jal          t1, 8f
6:                jal          t1, 12f
7:                jal          ra, 0b
8:                jal          ra, 10f
9:                jal          ra, 7b
10:               jal          sp, 11f
11:               jal          s4, 3b
12:               jal          ra, 4b
13:               jal          ra, 6b
14:               xor          s3, a4, t6
sub_3_8:          jal          t1, 6f
0:                jal          ra, 7f
1:                jal          ra, 9f
2:                jal          ra, 1b
3:                jal          t1, 12f
4:                jal          a5, 8f
5:                jal          t1, 14f
6:                jal          ra, 13f
7:                jal          t1, 4b
8:                jal          t1, 3b
9:                jal          ra, 5b
10:               jal          s4, 2b
11:               jal          a3, 15f
12:               jal          ra, 10b
13:               jal          ra, 0b
14:               jal          ra, 11b
15:               sltiu        t2, s2, -1784
sub_3_16:         jal          t1, 16f
0:                jal          ra, 7f
1:                jal          ra, 11f
2:                jal          ra, 15f
3:                jal          t1, 13f
4:                jal          tp, 1b
5:                jal          ra, 2b
6:                jal          ra, 22f
7:                jal          t1, 17f
8:                jal          ra, 24f
9:                jal          t1, 6b
10:               jal          ra, 5b
11:               jal          tp, 10b
12:               jal          t1, 23f
13:               jal          sp, 19f
14:               jal          ra, 8b
15:               jal          ra, 9b
16:               jal          ra, 3b
17:               jal          tp, 12b
18:               jal          t1, 20f
19:               jal          t1, 4b
20:               jal          t3, 21f
21:               jal          ra, 14b
22:               jal          ra, 0b
23:               jal          sp, 18b
24:               lui          t3, 615359
sub_3_10:         jal          t1, 1f
0:                jal          a2, 9f
1:                jal          ra, 10f
2:                jal          tp, 15f
3:                jal          s8, 13f
4:                jal          t1, 11f
5:                jal          ra, 2b
6:                jal          ra, 4b
7:                jal          t1, 5b
8:                jal          a1, 7b
9:                jal          ra, 12f
10:               jal          t4, 6b
11:               jal          t1, 3b
12:               jal          t4, 8b
13:               jal          a0, 14f
14:               jal          ra, 0b
15:               sltiu        t4, s2, -726
sub_3_2:          jal          t1, 15f
0:                jal          ra, 10f
1:                jal          ra, 14f
2:                jal          ra, 13f
3:                jal          s3, 7f
4:                jal          ra, 3b
5:                jal          s4, 17f
6:                jal          ra, 0b
7:                jal          t1, 2b
8:                jal          a4, 12f
9:                jal          t6, 1b
10:               jal          ra, 16f
11:               jal          gp, 6b
12:               jal          a4, 4b
13:               jal          t6, 9b
14:               jal          ra, 5b
15:               jal          t5, 11b
16:               jal          ra, 8b
17:               srl          s9, t5, s1
sub_3_15:         jal          t1, 7f
0:                jal          t1, 2f
1:                jal          ra, 3f
2:                jal          ra, 20f
3:                jal          ra, 19f
4:                jal          s6, 11f
5:                jal          ra, 25f
6:                jal          ra, 24f
7:                jal          ra, 16f
8:                jal          ra, 18f
9:                jal          ra, 1b
10:               jal          t1, 17f
11:               jal          ra, 27f
12:               jal          t1, 9b
13:               jal          tp, 5b
14:               jal          ra, 0b
15:               jal          t2, 26f
16:               jal          ra, 15b
17:               jal          a4, 12b
18:               jal          ra, 23f
19:               jal          t2, 6b
20:               jal          ra, 8b
21:               jal          ra, 10b
22:               jal          ra, 21b
23:               jal          ra, 22b
24:               jal          ra, 4b
25:               jal          ra, 14b
26:               jal          ra, 13b
27:               srai         zero, a4, 24
                  ori          zero, a5, 765
                  blt          t0, t1, 19f
                  auipc        a6, 1043583
                  bge          gp, a0, 12f
                  srli         t3, s5, 28
                  sltu         a3, a2, a5
                  xori         s0, gp, 115
                  add          sp, t3, a5
                  add          a2, s0, s10
                  slli         a2, s3, 6
                  and          s5, s10, a2
                  sltiu        s1, s10, -1695
12:               and          s9, s8, s1
                  bge          s6, s5, 29f
                  add          tp, a4, a3
                  and          s1, t4, s11
                  sll          s11, s6, s7
                  lui          s3, 672218
                  slli         s6, ra, 14
19:               addi         s0, s1, -1687
                  srl          a6, s0, s5
                  xori         s0, t5, 726
                  blt          a6, s0, 39f
                  beq          a4, s11, 39f
                  sltu         tp, t6, s3
                  srl          gp, s5, s10
                  sll          t2, s10, tp
                  bltu         t4, s10, 34f
                  sra          s0, t3, ra
29:               add          s1, a4, s10
                  sltu         s8, s4, t6
                  auipc        s6, 952121
                  blt          s2, t4, 44f
                  sra          s5, a0, s0
34:               and          gp, a4, a3
                  xori         a0, s8, 1859
                  sltiu        s0, s9, 1812
                  bne          s9, s2, 47f
                  bne          s11, s10, 50f
39:               xor          t1, s2, s10
                  bge          t1, t5, 58f
                  xor          tp, a2, s11
                  add          a3, s0, s6
                  addi         t3, t6, 933
44:               ori          t3, gp, -783
                  srli         a5, t0, 20
                  andi         s1, s3, 1736
47:               blt          a7, s3, 67f
                  auipc        s11, 597635
                  bne          a6, ra, 55f
50:               and          s6, a6, s5
                  lui          a6, 1039260
                  lui          s2, 658374
                  bne          ra, a7, 65f
                  add          t2, t4, s8
55:               add          a0, s4, a5
                  slti         a5, s2, -210
                  srli         a1, tp, 9
58:               bge          t0, s0, 60f
                  bne          s4, zero, 65f
60:               srli         a3, a4, 17
sub_3_11:         jal          t1, 5f
0:                jal          gp, 6f
1:                jal          tp, 2f
2:                jal          t1, 12f
3:                jal          s4, 8f
4:                jal          ra, 9f
5:                jal          ra, 7f
6:                jal          ra, 16f
7:                jal          ra, 4b
8:                jal          s8, 1b
9:                jal          ra, 15f
10:               jal          ra, 13f
11:               jal          t1, 3b
12:               jal          ra, 14f
13:               jal          ra, 0b
14:               jal          s8, 10b
15:               jal          ra, 11b
16:               slt          t5, a0, a7
                  add          s4, s6, s9
                  nop
                  bgeu         t1, a0, 72f
                  slli         a2, s10, 6
65:               auipc        a6, 472356
                  sll          s2, tp, s2
67:               slli         tp, a0, 5
                  andi         t5, sp, 863
                  ori          s3, a1, 499
                  slli         a6, t5, 5
                  ori          ra, a7, -555
72:               srli         gp, t1, 13
                  addi         s4, s5, -1158
                  ori          a3, a7, -557
                  bne          t1, gp, 82f
                  bne          t4, t5, 90f
                  and          s6, s11, s8
                  sll          a2, t5, s3
                  slt          s6, t0, zero
                  bge          a5, a6, 84f
                  ori          ra, a7, -974
82:               beq          s7, s9, 83f
83:               bgeu         a5, ra, 99f
84:               sltiu        a5, ra, 895
                  or           s3, a0, s8
                  srai         t3, gp, 25
                  lui          t3, 529711
                  bge          t2, t2, 93f
                  sub          s6, a6, s9
90:               nop
                  srli         a3, a1, 9
                  srli         ra, a5, 19
93:               xor          t2, t3, a3
                  slti         a5, t6, -468
                  beq          zero, a0, 107f
                  add          a2, a1, a0
                  or           a3, a1, a3
                  xor          zero, t3, s2
99:               auipc        t2, 247401
                  blt          t0, gp, 114f
                  add          sp, ra, s9
                  bltu         sp, t6, 111f
                  xori         sp, a2, 450
                  slti         s3, a6, 1276
                  sltiu        t4, t1, 301
                  xori         a6, t4, -1878
107:              sub          a5, a0, s3
                  srl          s2, s11, s10
                  nop
                  bne          a2, t2, 124f
111:              auipc        ra, 654723
                  sltu         a5, t0, t6
                  andi         s4, s2, 1337
114:              beq          t1, tp, 117f
                  srli         t2, s3, 24
                  bne          s10, a3, 133f
117:              bgeu         s3, s6, 137f
                  or           a0, s7, s4
                  andi         s11, t1, 200
                  blt          gp, tp, 139f
                  or           a5, s6, a1
                  sltiu        sp, s8, 1503
                  and          s9, t0, s3
124:              or           zero, t5, s0
                  bge          s9, s1, 145f
                  sltu         s11, t4, a5
                  bgeu         a0, t5, 132f
                  sll          t6, s8, a0
                  auipc        zero, 115821
                  beq          t2, s4, 142f
                  bge          s3, s8, 148f
132:              srli         a3, t6, 7
133:              sltu         s9, s10, a4
                  andi         a3, s10, 1680
                  sra          s7, a6, a6
                  sra          t3, t6, s9
137:              add          gp, t4, a5
                  sra          a0, a6, s2
139:              sub          s0, a3, a2
                  beq          s1, a0, 154f
                  srai         a3, a4, 3
142:              srl          a0, ra, tp
                  xori         gp, s7, 1957
                  addi         s9, a7, 1107
145:              or           a0, a1, a3
                  bge          a7, a4, 164f
                  lui          s8, 653771
148:              nop
                  add          s11, s7, t5
                  sltiu        t5, zero, -654
                  add          ra, sp, t1
                  bge          s3, a3, 161f
                  beq          s7, s2, 165f
154:              sll          ra, t0, a1
                  blt          sp, t6, 164f
                  beq          t4, t0, 162f
                  auipc        s0, 336052
                  sll          s3, sp, s2
                  bgeu         a5, s1, 173f
                  bgeu         a6, t2, 170f
161:              nop
162:              sra          t2, s11, a2
                  sltu         s11, s6, s11
164:              sltu         s2, t3, s3
165:              sra          gp, tp, a5
                  addi         s0, zero, 1760
                  sltu         tp, s10, t1
                  lui          s4, 998613
                  slti         ra, a4, 1622
170:              nop
                  and          t1, s6, a4
                  add          t6, a1, s3
173:              lui          t4, 582554
                  andi         gp, s3, -94
                  sltiu        gp, s10, -1752
                  srai         s0, t3, 2
                  bne          s4, a4, 193f
                  srai         a6, s3, 15
                  xor          s7, s3, a4
                  or           s3, s3, s5
                  sltiu        t6, a7, 803
                  ori          a4, s4, 1194
                  blt          t2, tp, 202f
                  slti         s0, t3, 790
                  lui          a2, 860969
                  blt          t1, a2, 189f
                  sra          gp, a6, s9
                  srli         s2, sp, 13
189:              and          t1, a7, ra
                  sra          t4, t5, s5
                  bne          t6, zero, 205f
                  or           gp, t4, s7
193:              sub          a2, s9, t5
                  srli         t1, t4, 4
                  srli         s4, t5, 4
                  srl          a0, t6, s11
                  slti         zero, tp, -1214
                  sub          ra, a5, t1
                  bltu         a3, t6, 200f
200:              or           gp, a1, s2
                  sltiu        sp, s6, 345
202:              beq          s11, a3, 219f
                  xor          s0, gp, t5
                  bne          t3, s5, 220f
205:              bne          gp, s9, 207f
                  sub          t2, a5, s2
207:              nop
                  or           a4, tp, a6
                  bge          s2, s0, 229f
                  sll          t6, gp, s9
                  sll          a0, s8, a5
                  slli         t1, a7, 5
                  bltu         a0, t2, 231f
                  ori          a1, a2, -5
                  xor          a4, s4, s6
                  and          s3, s3, s1
sub_3_20:         jal          t1, 6f
0:                jal          ra, 17f
1:                jal          t1, 8f
2:                jal          a4, 14f
3:                jal          t1, 11f
4:                jal          a1, 3b
5:                jal          ra, 13f
6:                jal          gp, 0b
7:                jal          t1, 4b
8:                jal          t1, 2b
9:                jal          tp, 1b
10:               jal          gp, 7b
11:               jal          ra, 15f
12:               jal          ra, 10b
13:               jal          ra, 16f
14:               jal          ra, 12b
15:               jal          gp, 18f
16:               jal          ra, 9b
17:               jal          ra, 5b
18:               sltiu        t5, a4, -297
                  bgeu         s11, s7, 223f
                  xor          t4, a1, s0
219:              and          t6, a4, s8
220:              bltu         zero, t1, 227f
                  srli         s5, a4, 7
                  bne          s1, s8, 231f
223:              sltu         s8, t1, s3
                  or           a5, tp, tp
                  sll          a5, sp, s11
                  add          a1, gp, t6
227:              and          t5, t3, a4
                  ori          ra, a6, 1533
229:              bge          ra, t2, 241f
                  andi         t6, t6, -131
231:              addi         s7, a6, 1619
                  bgeu         a6, t0, 248f
                  sll          gp, t2, t3
                  nop
                  and          t4, s5, t3
                  beq          gp, gp, 240f
                  nop
                  blt          s7, s7, 245f
                  sub          s6, s8, s4
240:              sltiu        t2, s6, -1813
241:              srl          tp, sp, s0
                  bge          a0, a7, 254f
                  ori          s9, s2, 1184
                  lui          t2, 280215
245:              srai         ra, s11, 26
                  slli         s1, sp, 30
                  sub          t2, t5, a1
248:              lui          s6, 52946
                  sub          zero, ra, t1
                  or           a6, t1, tp
                  lui          t6, 854726
                  addi         s5, a3, -1843
                  xori         t4, t4, -301
254:              blt          a6, tp, 274f
                  srl          t1, t0, t1
                  xor          s5, zero, a7
                  bne          t6, s0, 273f
                  slli         s3, a0, 10
                  srai         s6, t2, 10
                  sltu         t6, s3, s5
                  ori          s3, s5, 1067
                  sub          gp, s2, a1
                  sub          sp, s8, s11
                  or           s6, s1, t4
                  or           s5, a0, ra
                  bne          t3, a6, 269f
                  sll          s5, s9, t2
                  addi         gp, a2, -53
269:              nop
                  lui          a2, 666148
                  bltu         s4, s2, 280f
                  sltiu        t2, a1, 1861
273:              sltu         s0, a3, a5
274:              xor          t1, s9, t1
                  bgeu         a3, a1, 277f
                  slti         s8, sp, -1622
277:              srl          a0, s9, s0
                  ori          a2, s9, -233
                  or           s6, a0, a4
280:              addi         sp, s1, -336
                  xori         a1, a7, 1060
                  and          s5, a1, t1
                  srai         s8, a6, 14
                  xori         s3, a1, 1874
                  sltiu        ra, a6, 1891
                  ori          s2, s10, 726
                  bge          gp, s3, 299f
                  sub          s1, s2, s0
                  srl          s7, s4, s9
                  bltu         s2, t5, 307f
                  bne          gp, a5, 296f
                  auipc        t6, 711109
                  ori          sp, s4, 518
                  xori         a1, s0, 1041
                  sub          a2, s9, t6
296:              srli         s2, s6, 27
                  bltu         s1, t6, 301f
                  xori         s0, zero, 605
299:              bltu         a7, s7, 309f
                  slti         a6, ra, 1122
301:              bne          a6, a1, 307f
                  nop
                  beq          s2, t6, 310f
                  or           a6, s10, t4
                  auipc        a1, 732886
                  slli         a1, s7, 31
307:              xor          a1, ra, s7
                  slti         t5, gp, -294
309:              slt          s3, s0, s7
310:              and          s7, tp, zero
                  nop
                  srai         s3, s6, 10
                  or           s5, gp, ra
                  sra          s8, a1, a7
                  srl          a2, s11, s5
                  blt          a4, a6, 328f
                  bgeu         s5, s7, 336f
                  bge          t0, s2, 338f
                  andi         s3, t6, 1513
                  beq          a7, t6, 337f
                  lui          s0, 854737
                  srai         t6, gp, 27
                  auipc        t4, 184956
                  blt          s1, sp, 342f
                  xor          t3, s3, t2
                  xor          gp, s2, a4
                  bne          t6, sp, 341f
328:              xori         s6, t5, 1176
                  bge          gp, a3, 345f
                  bne          s11, a5, 342f
                  srl          s0, s3, t0
                  xori         t6, a5, 205
                  beq          a2, t3, 345f
                  slli         s5, t4, 27
                  slt          t3, t1, s0
336:              nop
337:              bge          a4, t2, 346f
338:              srli         tp, gp, 0
                  srl          t3, s4, a1
                  bgeu         ra, s3, 349f
341:              slti         a0, t1, -1688
342:              srai         s8, s7, 30
                  add          a2, a2, t6
                  xori         s3, s1, 1861
345:              srl          t2, t4, a6
346:              blt          s3, t5, 352f
                  xori         t1, a3, -299
                  sltiu        tp, t1, -1366
349:              and          s8, s3, s8
                  slt          a5, a4, sp
                  sra          s5, a7, a7
352:              xori         sp, t4, -1462
                  sra          a3, s3, sp
                  sub          sp, t2, t5
                  andi         a4, s1, -223
                  sll          s1, s5, s11
                  sra          a1, tp, s2
                  sltiu        a0, t0, -110
                  ori          s11, s0, -1963
                  add          sp, a3, t0
                  sll          ra, s9, a3
                  srli         a2, a5, 27
                  nop
                  beq          s0, s7, 380f
                  addi         t5, a3, 943
                  bgeu         t1, a0, 380f
                  srai         a0, a4, 7
                  blt          t4, s7, 375f
                  ori          gp, t6, -837
                  ori          t4, s5, -633
                  srli         a4, s6, 4
                  bgeu         s8, a7, 373f
373:              nop
                  sll          s7, s7, t6
375:              bgeu         tp, s9, 393f
                  andi         t6, s6, -1021
                  slti         a0, s2, -553
                  sltiu        t6, gp, 483
                  slti         s11, a2, 1462
380:              xori         s0, s7, 179
                  xori         s2, s6, 1199
                  auipc        s11, 926843
                  beq          s8, a0, 397f
                  slti         a2, s5, -108
                  slli         zero, s8, 18
                  sll          a1, a4, a7
                  xor          a6, t6, t1
                  beq          s2, s11, 395f
                  lui          s1, 930394
                  slli         s8, s11, 17
                  bltu         t6, ra, 409f
                  ori          a4, gp, 1989
393:              bltu         s9, s7, 403f
                  and          s4, zero, a5
395:              srai         s6, tp, 17
                  nop
397:              bltu         s1, t6, 398f
398:              slli         s6, t4, 16
                  nop
                  srli         ra, a4, 7
                  bne          a3, a1, 407f
                  sra          t1, a1, s4
403:              auipc        a5, 822146
                  slt          s1, t0, a5
                  blt          s8, tp, 408f
                  bne          t6, s5, 420f
407:              xori         s3, t2, -1778
408:              ori          sp, t6, -1936
409:              xori         a1, a2, -699
                  auipc        a6, 763050
                  ori          a3, ra, 283
                  slt          a5, s1, s5
                  sltiu        t6, a5, -407
                  addi         s3, a3, -1058
                  srli         t4, a7, 8
                  and          ra, s2, a1
                  or           s11, a4, a5
                  bltu         s4, gp, 425f
                  slt          zero, t2, zero
420:              and          s4, a6, sp
                  bge          t1, sp, 427f
                  blt          t2, t4, 426f
                  sll          t1, gp, s6
                  srli         sp, tp, 18
425:              slti         a4, s4, -427
426:              addi         a1, t0, 1020
427:              addi         s7, s10, -710
                  add          t5, s10, t6
                  sll          sp, a0, s4
                  bne          s1, t5, 446f
                  add          a5, a4, s4
                  beq          a1, t2, 451f
                  beq          t0, zero, 445f
                  bltu         tp, s6, 450f
                  or           ra, t0, t1
                  bgeu         t2, s0, 438f
                  andi         sp, t5, 1877
438:              or           s11, a6, s7
                  auipc        s11, 450047
                  andi         a6, a4, -71
                  xor          a2, gp, a6
                  lui          s1, 672742
                  blt          a3, s11, 460f
                  lui          a0, 702472
445:              sltu         s0, t6, s10
446:              beq          s8, s0, 463f
                  srli         s5, s7, 30
                  srl          s7, t1, a0
                  or           tp, a7, s1
450:              nop
451:              srai         a2, s5, 9
                  xor          a6, s2, t1
                  sll          t2, s1, ra
                  add          s5, s4, ra
                  xor          t3, sp, s11
                  ori          t2, s1, -1904
                  add          a2, t5, a7
                  addi         a5, a4, 780
                  bne          zero, a7, 468f
460:              slli         t1, gp, 5
                  bgeu         s3, s11, 473f
                  xori         s6, a0, -1794
463:              srai         s5, s1, 9
                  srli         a6, a0, 14
                  nop
                  sra          t2, t5, s6
                  slli         s4, s2, 22
468:              or           a3, t0, t6
                  srai         s9, tp, 10
                  ori          a3, s0, 1951
                  sub          gp, a4, sp
                  lui          t5, 1014587
473:              auipc        t2, 543835
                  slli         zero, t2, 22
                  srli         t2, gp, 5
                  sll          a4, s11, s11
                  or           a2, t6, s1
                  lui          a3, 474909
                  srli         a1, s4, 25
                  or           a0, t3, s8
                  sltiu        tp, t4, 176
                  bgeu         tp, s10, 496f
                  slti         a3, sp, -748
                  ori          s7, ra, -1341
                  addi         s2, a6, 1384
                  srl          s11, a5, s11
                  sub          tp, gp, a0
                  sltiu        a2, a6, 323
                  nop
                  srli         s11, t1, 7
                  bge          a4, a0, 500f
                  andi         s4, s10, 1805
                  add          a2, sp, s6
                  lui          sp, 915309
                  sltu         s6, s7, s0
496:              bne          tp, zero, 508f
                  xor          a3, s11, a1
                  slti         zero, t4, -1384
                  sra          t3, s8, ra
500:              srai         s9, t3, 18
                  sltu         ra, s9, a7
                  slt          a1, s8, a2
                  auipc        s11, 554092
                  bltu         a2, s4, 520f
                  and          s0, a4, t5
                  slli         s7, t1, 29
                  sltu         s9, a7, s3
508:              bltu         s0, s5, 522f
sub_3_0:          jal          t1, 19f
0:                jal          ra, 15f
1:                jal          ra, 14f
2:                jal          ra, 0b
3:                jal          ra, 6f
4:                jal          s1, 16f
5:                jal          t1, 3b
6:                jal          ra, 9f
7:                jal          t1, 10f
8:                jal          s9, 12f
9:                jal          ra, 8b
10:               jal          ra, 2b
11:               jal          t1, 4b
12:               jal          ra, 13f
13:               jal          t1, 17f
14:               jal          ra, 11b
15:               jal          t1, 20f
16:               jal          ra, 5b
17:               jal          s7, 7b
18:               jal          ra, 1b
19:               jal          s0, 18b
20:               auipc        s11, 504222
                  slti         tp, s9, -1621
                  auipc        t3, 394023
                  sra          s6, tp, s9
                  add          t4, t5, a2
                  sll          s9, a5, t4
                  xor          s9, a5, gp
                  xori         t5, s1, -1128
                  bltu         s3, sp, 536f
                  srli         a5, t2, 27
                  srai         t6, s7, 21
                  bge          a1, t6, 528f
520:              sltiu        t3, s3, 660
                  sub          s6, s0, a3
522:              sub          s7, t0, a7
sub_3_18:         jal          t1, 10f
0:                jal          sp, 20f
1:                jal          t1, 2f
2:                jal          ra, 16f
3:                jal          t1, 12f
4:                jal          ra, 7f
5:                jal          s5, 8f
6:                jal          t1, 5b
7:                jal          t1, 21f
8:                jal          ra, 9f
9:                jal          ra, 3b
10:               jal          a0, 4b
11:               jal          ra, 19f
12:               jal          ra, 0b
13:               jal          ra, 1b
14:               jal          gp, 18f
15:               jal          ra, 6b
16:               jal          ra, 15b
17:               jal          t1, 13b
18:               jal          ra, 17b
19:               jal          ra, 22f
20:               jal          s5, 11b
21:               jal          ra, 14b
22:               sub          a3, sp, s9
                  srl          ra, s2, t6
                  srli         sp, s2, 15
                  addi         s3, a5, 744
                  sltu         s5, a6, a7
                  nop
528:              srli         s8, a0, 23
                  nop
                  bltu         s4, s11, 535f
                  xori         s5, sp, 32
                  sltu         a1, s11, s5
                  sll          t2, t0, t5
                  sltu         a0, s2, a4
535:              sra          s7, a6, s4
536:              slt          t1, a4, s11
                  sll          s4, a5, t2
                  bne          a1, s3, 550f
                  sra          s6, ra, s9
                  addi         t1, s10, -1194
                  lui          a2, 773472
                  sra          t6, s10, s4
                  srai         a5, s9, 10
                  bge          a0, s1, 562f
                  slt          a3, t2, t0
                  ori          s7, a5, 1517
                  sll          s7, s4, s0
                  sltu         s3, s3, gp
                  sll          t3, s8, a0
550:              add          sp, s7, a2
                  ori          s3, s0, 208
                  auipc        s1, 716094
                  sltiu        s1, s7, 815
                  nop
                  srai         s8, a4, 25
                  sll          s2, t2, a7
                  srl          s6, s3, a0
                  srli         zero, s5, 24
                  srai         t6, t5, 23
                  bge          s1, a4, 580f
                  bltu         tp, t6, 577f
562:              lui          s8, 164388
                  xori         t2, s5, -1848
                  xori         t1, a2, 1885
                  addi         gp, s7, -1479
                  srl          s8, t0, s3
                  srai         s9, sp, 27
                  slli         s0, s4, 14
                  blt          s3, t4, 589f
                  ori          t2, s10, -787
                  sll          s4, a0, s5
                  srl          a1, a4, t6
                  bgeu         a1, t2, 585f
                  auipc        a5, 19246
                  andi         s0, s9, 442
                  srai         s11, t1, 23
577:              srli         s5, s7, 16
                  lui          t3, 346400
                  srl          s11, a4, s7
580:              lui          s0, 766946
                  sub          zero, a2, gp
                  sltu         t5, s10, s8
                  sll          a6, s9, s7
                  bltu         t1, s9, 596f
585:              blt          a0, t6, 594f
                  sub          s4, gp, t1
                  bne          s4, a3, 603f
                  andi         t3, a6, -859
589:              bgeu         a0, gp, 598f
                  auipc        a3, 377214
                  slli         s7, a4, 0
                  slt          t2, t6, t2
                  slt          t2, sp, s6
594:              bne          gp, t0, 608f
                  addi         a5, a2, -1562
596:              sra          t1, s8, s11
                  auipc        a5, 615557
598:              sll          zero, s8, gp
                  auipc        zero, 520545
                  srl          t5, s8, s11
                  blt          t5, s11, 620f
                  slli         s6, a7, 25
603:              slli         ra, zero, 3
                  add          t6, a3, s0
                  bltu         sp, s7, 623f
                  beq          t0, a3, 613f
                  or           s9, t5, t5
608:              slti         gp, a2, -1512
                  nop
                  xori         t1, a2, 1871
                  bltu         s10, s9, 617f
                  srai         t5, s0, 28
613:              bltu         a2, a4, 629f
                  andi         a6, t4, 927
                  bge          a5, t0, 629f
                  slt          zero, a6, s5
617:              auipc        s8, 162329
                  srli         s8, a0, 30
                  slti         tp, a1, -1083
620:              beq          t3, s1, 623f
                  bne          gp, a1, 623f
                  or           t1, t4, s6
623:              sub          s8, s1, tp
                  xor          t4, a6, t6
                  addi         a0, s10, -893
                  lui          sp, 255354
                  slt          s8, a1, s9
                  xor          t4, s6, a6
629:              slti         tp, a0, 1124
                  or           gp, sp, sp
                  srl          t5, tp, a7
                  srli         t1, gp, 5
                  slt          t2, s7, t4
                  lui          s4, 486368
                  and          s5, t5, a5
                  sub          t6, s0, s2
                  slli         a2, t2, 22
                  xori         s4, s5, 682
                  nop
                  sra          a1, s2, a7
                  blt          a2, a0, 651f
                  srai         s5, zero, 15
                  slli         s5, s8, 30
                  sltiu        s5, t3, 296
                  sltiu        a3, t5, 476
                  andi         zero, t5, -1627
                  sra          t2, t3, t3
                  slli         t1, s1, 13
                  slti         s6, a3, 897
                  blt          s7, t6, 662f
651:              lui          t5, 530857
                  ori          a0, a6, 244
                  xori         a0, s1, -904
                  blt          a1, a0, 672f
                  andi         a5, a3, 1484
                  add          t5, s10, s2
                  bltu         t3, s6, 674f
                  addi         t2, zero, 1247
                  add          s8, a6, ra
                  bgeu         t1, t2, 669f
                  srai         s6, t6, 10
662:              or           zero, t3, a2
                  blt          s8, a6, 680f
                  andi         s3, t5, -1924
                  add          s4, a7, s3
                  sra          s2, s5, t2
                  slt          a6, s10, t0
                  and          t6, t2, s10
669:              andi         t4, tp, -198
                  bgeu         t2, a1, 677f
                  bltu         zero, sp, 691f
672:              sll          t2, sp, a1
                  nop
674:              sll          t5, s9, a6
                  and          t4, t6, tp
                  lui          tp, 136576
677:              slti         s3, ra, 1733
                  xori         s0, s4, -190
                  and          a6, t2, t1
680:              lui          s6, 700794
                  bne          sp, s11, 693f
                  bge          s9, tp, 687f
                  addi         s9, a3, -415
                  slt          s2, s8, gp
                  ori          gp, a7, 188
                  or           tp, t6, t2
687:              and          s11, a1, t5
                  srli         s2, s5, 31
                  slli         t4, t3, 24
                  beq          t1, gp, 691f
691:              ori          a2, s2, 1108
                  beq          s5, s5, 706f
693:              slli         ra, a3, 21
                  sltu         s7, t1, s10
                  sll          s4, a6, s7
                  xori         t1, s1, -401
                  srli         s9, a0, 18
                  or           a2, s10, sp
                  xor          s2, a7, gp
                  nop
                  xori         s9, s6, -489
                  sll          t4, a0, a0
                  nop
                  bne          t1, a6, 710f
                  srli         a2, s9, 5
706:              slti         t4, tp, -132
                  blt          tp, s8, 711f
                  bge          t5, tp, 726f
                  bltu         a3, gp, 723f
710:              auipc        t4, 818400
711:              sltu         a2, t2, s7
                  nop
                  blt          a0, s6, 733f
                  srl          s6, a3, t0
                  beq          s4, zero, 727f
                  add          t3, s9, a5
                  xor          s0, a1, a7
                  or           s8, t3, s3
sub_3_21:         jal          t1, 4f
0:                jal          ra, 12f
1:                jal          t1, 8f
2:                jal          t1, 13f
3:                jal          ra, 6f
4:                jal          t1, 0b
5:                jal          ra, 2b
6:                jal          ra, 9f
7:                jal          gp, 5b
8:                jal          t1, 11f
9:                jal          ra, 1b
10:               jal          sp, 14f
11:               jal          ra, 7b
12:               jal          t1, 3b
13:               jal          s11, 10b
14:               slti         s4, t3, -1336
                  slt          tp, t2, a4
                  srai         tp, s8, 15
                  and          tp, t1, a7
                  and          s9, t3, s7
723:              srli         tp, a3, 17
                  and          a0, t3, t0
                  xor          a0, a3, t5
726:              lui          s8, 27470
727:              ori          t4, gp, 183
                  sll          t3, s6, s11
                  slti         s7, s2, -932
                  sub          a3, s10, a6
                  add          a2, t3, t1
                  andi         s2, t4, 287
733:              bne          a5, s5, 738f
                  bltu         gp, s10, 753f
                  sltiu        zero, ra, 675
                  lui          t6, 81132
                  and          a5, a1, gp
738:              and          s6, s7, tp
                  or           t5, s1, s1
                  ori          ra, sp, -1243
                  addi         s2, a4, 1225
                  slt          a2, t2, s5
                  sra          t2, a5, t6
                  srli         s5, a7, 26
                  xori         s2, s3, -309
                  or           a3, ra, a1
                  bne          a7, t4, 763f
                  xor          tp, t0, s7
                  bgeu         ra, t0, 755f
                  andi         a4, s5, 1065
                  sll          s5, a2, s3
                  bne          s9, t6, 758f
753:              nop
                  beq          t4, s1, 755f
755:              xori         a0, t5, -1210
                  sra          tp, sp, s0
                  sra          tp, s7, t2
758:              slli         t1, a2, 11
                  bltu         a7, s6, 771f
                  sltu         s6, a7, t3
                  bltu         s10, s1, 770f
                  addi         t1, s7, -982
763:              slli         ra, a2, 1
                  beq          zero, a4, 780f
                  sltiu        s8, s4, 253
                  lui          a2, 1045032
                  bgeu         s4, zero, 787f
                  or           zero, t5, t0
                  slt          a1, a6, t3
770:              lui          gp, 279464
771:              srai         t1, a1, 13
                  auipc        s5, 1042305
                  lui          a5, 919788
                  bltu         t2, s6, 778f
                  auipc        s9, 269301
                  sub          s6, s11, s8
                  sltiu        t2, a1, 610
778:              blt          s7, a6, 796f
                  bltu         s11, s10, 786f
780:              addi         tp, t0, -58
                  sll          s2, s4, a6
                  or           t1, sp, s3
                  srai         s11, s11, 2
                  srl          s0, t2, s2
                  srai         s11, s10, 4
786:              xor          gp, t3, t4
787:              srl          s0, s6, ra
                  sltu         t6, ra, a5
                  and          s7, t0, s0
                  srli         a4, t6, 18
                  srl          s5, s2, zero
                  srl          zero, s6, s8
                  or           t2, a4, s6
                  bgeu         a5, s8, 804f
                  slli         tp, s7, 19
796:              sll          s8, a0, s6
                  bltu         s1, s4, 814f
                  beq          s9, t3, 801f
                  add          s5, zero, tp
                  slli         s2, s11, 2
801:              and          ra, t5, t3
                  nop
                  add          a1, sp, a6
804:              sub          s5, t4, t5
                  addi         s8, s11, 1451
                  xori         t4, s2, -1260
                  sltu         t4, a6, ra
                  andi         a5, s6, -128
                  xor          s8, s1, gp
                  bgeu         s9, t3, 822f
                  slt          s7, s4, a6
                  slli         ra, s1, 23
                  srai         s6, s6, 13
814:              srl          t2, tp, s9
                  srl          a2, s4, s10
                  bne          s1, s7, 830f
                  xori         tp, a2, 1799
                  sltu         sp, s4, s7
                  slli         s3, s6, 12
                  ori          a0, s10, 1408
                  sra          tp, t4, a1
822:              sltu         a5, s6, s1
                  sra          s5, t1, t6
                  slt          ra, s3, a6
                  srli         s5, t3, 1
                  ori          s3, s0, 1215
                  blt          s8, t4, 834f
                  or           a5, zero, sp
                  beq          s0, s1, 838f
sub_3_12:         jal          t1, 3f
0:                jal          a1, 6f
1:                jal          ra, 5f
2:                jal          tp, 9f
3:                jal          ra, 11f
4:                jal          t1, 2b
5:                jal          ra, 4b
6:                jal          s8, 1b
7:                jal          ra, 13f
8:                jal          ra, 12f
9:                jal          ra, 7b
10:               jal          s2, 8b
11:               jal          ra, 10b
12:               jal          gp, 0b
13:               xor          zero, s3, a6
830:              andi         s11, t3, 592
                  slt          gp, zero, s10
                  bgeu         a1, s11, 834f
                  andi         a1, a4, -886
834:              bltu         ra, a0, 850f
                  blt          t6, t1, 849f
                  nop
                  sltu         s3, s1, a2
838:              slti         a2, s0, -727
                  xor          a5, s4, s10
                  sltu         s0, t3, s11
                  nop
                  lui          s6, 512405
                  slli         s1, s7, 3
                  and          ra, a0, s9
                  andi         t2, s1, -2028
                  andi         s7, zero, -17
                  nop
                  auipc        tp, 83862
849:              blt          t6, s5, 861f
850:              addi         a3, tp, -189
                  slt          ra, s3, s9
                  srli         s6, a6, 28
                  auipc        s3, 922144
                  bne          a0, a1, 863f
                  xori         s4, t6, 139
                  add          gp, s2, s5
                  srl          s0, a5, s9
                  and          t3, t3, s3
                  nop
                  beq          t5, t3, 877f
861:              slt          s1, s11, s6
                  bltu         t4, a2, 881f
863:              and          s0, t3, s10
                  slt          a5, tp, gp
                  xori         t4, t1, 902
sub_3_7:          jal          t1, 22f
0:                jal          ra, 25f
1:                jal          ra, 14f
2:                jal          t1, 5f
3:                jal          t6, 20f
4:                jal          s2, 13f
5:                jal          s0, 23f
6:                jal          s8, 30f
7:                jal          t1, 12f
8:                jal          ra, 15f
9:                jal          tp, 19f
10:               jal          t1, 0b
11:               jal          s2, 2b
12:               jal          ra, 8b
13:               jal          gp, 26f
14:               jal          ra, 27f
15:               jal          ra, 11b
16:               jal          ra, 10b
17:               jal          ra, 4b
18:               jal          ra, 24f
19:               jal          ra, 16b
20:               jal          s8, 17b
21:               jal          ra, 29f
22:               jal          ra, 28f
23:               jal          ra, 6b
24:               jal          ra, 7b
25:               jal          ra, 18b
26:               jal          gp, 9b
27:               jal          ra, 3b
28:               jal          t1, 21b
29:               jal          t1, 1b
30:               xor          t1, t1, gp
                  addi         s0, s6, 1185
                  sltiu        s3, a0, -1102
                  slt          t5, t5, s8
                  nop
                  slli         s2, a5, 3
                  bne          a0, a7, 887f
                  andi         t2, s6, -947
                  slli         a3, a0, 7
                  bge          a1, s10, 890f
                  addi         a5, s4, -562
                  blt          t0, a7, 896f
877:              sll          s9, s5, zero
                  andi         t2, sp, 320
                  auipc        zero, 586203
                  and          t6, s10, t5
881:              srl          t1, t6, a7
                  slti         tp, zero, -1786
                  and          s7, t1, a1
                  slli         a4, a0, 6
                  srai         sp, s11, 12
                  bgeu         a7, t2, 903f
887:              xor          a3, s0, s5
                  lui          a5, 280400
                  bge          s7, s4, 898f
890:              beq          s6, a7, 900f
                  addi         tp, t3, 158
                  addi         gp, t6, 239
                  srli         s5, zero, 18
                  add          t5, s9, a2
                  lui          t4, 519527
896:              slli         t1, tp, 16
                  or           a2, s4, s11
898:              sll          a0, ra, zero
                  slli         a6, t1, 0
900:              beq          sp, a7, 907f
                  bge          s10, a0, 921f
                  bltu         t6, t0, 914f
903:              bgeu         t4, a2, 917f
                  srli         a0, t2, 19
                  slt          t4, s5, s8
                  srai         s9, tp, 22
907:              or           zero, s9, gp
                  bltu         t6, a7, 912f
                  sltu         t1, s10, s4
                  and          t5, ra, t5
                  sra          a5, ra, s3
912:              bge          s0, a5, 924f
                  sltiu        s7, s6, 1490
914:              and          s8, s10, ra
                  srai         s7, a4, 25
                  lui          t4, 18914
917:              bgeu         t6, a1, 922f
                  srl          s11, gp, t4
                  slti         a1, t4, -21
                  bge          ra, s9, 929f
921:              beq          t3, a3, 927f
922:              or           s8, gp, s9
                  or           a5, s2, t1
924:              lui          t4, 209447
                  srli         s3, a4, 31
                  sll          ra, s3, t4
927:              srl          t5, s6, a3
                  bltu         s11, t1, 940f
929:              lui          s8, 961360
                  bltu         s5, s9, 933f
                  sra          s8, s3, s8
                  slti         a0, gp, 60
933:              andi         t6, t5, -1351
                  sll          sp, s5, s2
                  blt          t3, t3, 952f
                  srai         s9, a4, 31
                  sltiu        s3, a3, -1468
                  add          sp, a0, tp
                  sub          s11, t4, t4
940:              srl          t5, s10, t5
                  bltu         a2, s7, 959f
                  bgeu         tp, s5, 951f
                  lui          s5, 22927
                  bgeu         s8, s10, 960f
                  andi         t5, zero, -1801
                  auipc        s0, 192430
                  bgeu         s10, tp, 949f
                  blt          t0, tp, 949f
949:              auipc        sp, 407189
                  bgeu         tp, s11, 964f
951:              auipc        s1, 322774
952:              xori         s5, a5, 316
                  add          a3, s11, a7
                  sra          a4, a1, a7
                  or           a4, t6, a3
                  addi         s8, s0, -13
                  auipc        t1, 994439
                  auipc        ra, 877538
959:              slt          sp, t2, s2
960:              lui          a3, 9466
                  slli         t4, s11, 21
                  srli         a3, a5, 27
                  bgeu         s0, s10, 970f
964:              nop
                  ori          zero, zero, -1682
                  sll          a2, a3, t2
                  bne          ra, zero, 985f
                  srl          a1, a0, a5
                  beq          s10, s10, 975f
970:              slti         gp, a7, -1798
                  addi         tp, s3, 428
                  bne          s5, s5, 984f
                  bge          t3, s0, 987f
                  andi         s11, a4, 739
975:              ori          s8, t2, -748
                  addi         s3, t1, 1925
                  slt          tp, s4, tp
                  slli         t4, s5, 13
                  bltu         s11, s6, 982f
                  blt          s8, s7, 985f
                  sll          a2, t3, t6
982:              srli         s4, gp, 14
                  addi         s2, a3, 313
984:              sra          sp, t4, a4
985:              bge          t2, a0, 1001f
                  and          s6, a6, gp
987:              beq          s2, a3, 999f
                  bne          ra, s4, 997f
                  slti         ra, t6, 866
                  bne          s8, gp, 992f
                  srl          sp, s7, sp
992:              or           s11, s9, t2
                  slli         tp, s8, 21
                  xor          a4, a5, t2
                  beq          s1, s0, 1009f
                  slt          s8, a3, sp
997:              bgeu         s11, t6, 1009f
                  add          ra, gp, s7
999:              sub          s4, a2, s6
                  addi         a1, t4, -761
1001:             slt          a1, s7, s10
                  addi         s7, t2, 1761
                  andi         a1, t5, 1301
                  lui          a6, 760982
                  xor          s11, a0, t0
                  lui          a6, 142337
                  slti         sp, s11, 134
                  slt          t1, s6, s7
1009:             bgeu         s2, t4, 1023f
                  addi         gp, s11, 428
                  slli         s9, tp, 9
                  sltu         a6, tp, t1
                  sll          gp, s2, a1
                  or           s4, s3, a4
                  or           a4, a1, zero
                  bge          s6, t4, 1025f
                  sll          gp, ra, t1
                  blt          s6, a3, 1034f
                  nop
                  ori          s5, s3, 2035
                  and          t6, s9, a2
                  bne          a3, t3, 1039f
1023:             srl          s6, ra, s1
                  bge          s6, s7, 1044f
1025:             andi         a6, s6, -475
                  bge          a4, a6, 1044f
                  sub          t5, a3, t4
                  bne          gp, t4, 1048f
                  add          a3, s8, a6
                  or           a0, a2, a5
                  addi         s5, s11, 1142
                  sll          a1, t3, t3
                  slt          s5, a0, s0
1034:             add          s5, t2, a4
                  srl          s4, s2, t4
                  sll          sp, s9, s9
                  bgeu         s7, t3, 1053f
                  sub          a2, s9, s3
1039:             sra          s11, gp, a3
                  ori          t4, a6, -1398
                  sltiu        sp, tp, 1149
                  srai         s2, s4, 28
                  sll          sp, s2, s4
1044:             srl          s3, s9, s2
                  and          t1, s1, t1
                  ori          t3, s9, -842
                  nop
1048:             andi         t4, tp, -432
                  blt          s11, s3, 1059f
                  bgeu         s10, s1, 1056f
                  bne          s3, a2, 1058f
                  or           s7, a3, s8
1053:             lui          a5, 1022896
                  srai         sp, t6, 23
                  xor          s5, tp, ra
1056:             xori         s3, s6, -1378
                  bne          s2, a7, 1069f
1058:             srai         t6, tp, 5
1059:             beq          a2, gp, 1076f
                  bltu         gp, a6, 1061f
1061:             slt          ra, a3, s9
                  xor          s11, s8, t6
                  add          s5, a1, s3
                  addi         s7, s11, 1941
                  srli         a6, a7, 12
                  slti         a3, t3, 1151
                  blt          s0, gp, 1081f
                  srli         s5, tp, 22
1069:             ori          s1, s4, -589
                  sltiu        t3, s10, -1805
                  sltiu        s6, t5, 301
                  srai         s4, a1, 14
                  srai         s3, s11, 0
                  bge          gp, s2, 1086f
                  or           a4, s7, t2
1076:             sub          a2, s3, a5
                  auipc        ra, 1006706
                  nop
                  bgeu         s0, gp, 1097f
                  slli         gp, a6, 29
1081:             slti         a4, tp, -322
                  bltu         t3, s1, 1089f
                  blt          a2, t3, 1102f
                  auipc        gp, 532425
                  bge          a2, t5, 1089f
1086:             slt          t1, s11, a1
                  beq          s2, a4, 1096f
                  sltiu        t6, s9, -538
1089:             bne          s2, sp, 1095f
                  bne          t0, a7, 1104f
                  sub          t3, a4, a7
                  slti         s1, t0, 207
                  addi         tp, a4, 1581
                  beq          t6, s4, 1111f
1095:             addi         a6, s0, -596
1096:             auipc        s1, 585966
1097:             addi         s5, a4, 74
                  srli         zero, tp, 16
                  addi         a4, zero, 169
                  bne          tp, sp, 1118f
                  srl          s8, t6, s0
1102:             add          s5, s2, zero
                  or           tp, s1, s5
1104:             xor          a5, a1, s2
                  bltu         a6, a0, 1119f
                  xori         a3, gp, -381
                  beq          s10, s7, 1119f
                  sltu         s11, a0, s3
                  xor          sp, s2, zero
                  lui          s6, 562771
1111:             ori          a5, tp, 1124
                  srli         s1, a6, 2
                  lui          a0, 62357
                  or           gp, a1, t3
                  sra          t2, t4, t5
                  sll          s6, ra, t0
                  andi         a4, tp, -542
1118:             sub          a5, a6, t2
1119:             bne          t1, s6, 1125f
                  sltiu        s7, s4, 1043
                  sltiu        s9, a2, 1069
                  sub          s4, t3, t0
                  slli         tp, a4, 12
                  auipc        t5, 67760
1125:             lui          t1, 906704
                  xori         a4, s0, -1627
                  ori          s5, gp, 748
                  xor          zero, a3, s6
                  blt          a1, s0, 1141f
                  srai         a4, a0, 21
                  ori          s4, s0, -639
                  bgeu         gp, t6, 1144f
                  srl          s0, s4, a5
                  beq          s0, s3, 1137f
                  lui          t1, 547734
                  addi         s3, zero, 620
1137:             addi         s5, s3, 665
                  bgeu         s11, a3, 1148f
                  ori          s2, a0, -1336
                  andi         t5, a4, 1890
1141:             srli         sp, a1, 31
                  nop
                  add          s2, s8, s0
1144:             srli         t2, t5, 24
                  sll          s8, s2, s4
                  nop
                  sll          s8, ra, s4
1148:             lui          s8, 72582
                  srli         ra, a6, 19
                  bgeu         a7, t0, 1170f
                  sub          s6, s10, t5
                  xori         s0, s2, -837
                  ori          gp, a1, 1334
                  sub          ra, a3, s8
                  sub          t4, t3, a5
                  xori         sp, s1, -1975
                  sra          s7, a0, ra
                  bltu         a6, s8, 1167f
                  ori          s0, s1, 1596
                  add          zero, a1, tp
                  xori         a0, s11, 31
                  bgeu         a7, ra, 1182f
                  slti         sp, s1, 420
                  blt          s6, a5, 1171f
                  bne          s2, s3, 1174f
                  sll          s2, t1, s5
1167:             bne          a2, s9, 1168f
1168:             sra          tp, t0, t1
                  srl          s7, s4, a7
1170:             sub          a3, t3, a1
1171:             ori          s7, sp, 135
                  nop
                  sltu         t3, t0, sp
1174:             add          a2, t2, a5
                  srli         t6, a0, 19
                  srai         s4, ra, 21
                  slti         a4, s4, 714
                  andi         t4, a6, 163
                  andi         tp, s7, -1845
                  beq          a1, s2, 1184f
                  bgeu         s7, a2, 1184f
1182:             bne          a6, a6, 1184f
                  srl          t2, a1, a0
1184:             sub          t4, s3, s5
                  lw           t1, 4(t0)
                  xori         s2, a6, -1387
                  addi         t0, t0, 16
                  slli         s11, s1, 8
                  andi         s2, t3, -1308
1695:             addi x2, x6, 0
1695:             jalr x2, x2, 0
sub_2:            slli         s5, s3, 7
                  srai         tp, sp, 7
                  bgeu         s0, s9, sub_2_stack_p
                  addi         s2, sp, -678
                  sub          a3, s0, a4
                  ori          s7, s1, -1054
sub_2_stack_p:    addi         t0, t0, -64
                  lui          s2, 672177
                  sra          a0, tp, s3
                  sw           t1, 4(t0)
                  xori         ra, t3, 378
                  ori          a3, t3, -627
                  sltiu        ra, s6, 338
                  sub          a3, t4, a5
                  la           t5, sub_3
                  andi         ra, t5, 1629
                  slti         a1, s8, -1241
                  xor          s7, gp, t5
                  ori          zero, a2, 776
                  add          s11, s8, s2
                  addi         t5, t5, 924
                  sll          t1, t3, s11
sub_2_j4:         jalr         t1, t5, -924 #jump sub_2 -> sub_3
                  sltiu        tp, t6, 1682
                  auipc        t4, 978490
                  lui          t6, 352108
                  srl          a2, a1, t6
                  sltiu        a0, t2, -200
                  sll          sp, s5, t6
                  nop
                  bne          a1, a6, sub_2_j5 #branch to jump instr
                  sll          t2, a3, s10
                  or           a0, t3, s10
                  add          s7, t0, a6
sub_2_j5:         jal          t1, sub_4 #jump sub_2 -> sub_4
                  bgeu         s10, s3, 15f
                  sll          s9, s4, a7
                  andi         s1, a4, 2044
                  addi         a5, t6, -2021
                  sll          t1, tp, t1
                  add          zero, t5, t4
                  sltiu        a2, a3, -1626
                  srl          s4, s4, tp
                  ori          s0, a4, -1815
                  beq          a2, gp, 18f
                  auipc        s0, 941518
                  sra          s11, a4, s10
                  bne          s4, t2, 18f
                  ori          a1, t4, 918
                  beq          t3, t1, 18f
15:               beq          tp, t5, 18f
                  bltu         ra, s8, 18f
                  sra          a3, s11, a0
18:               sll          a1, a3, a4
                  lw           t1, 4(t0)
                  sub          sp, t6, s11
                  srli         t4, a5, 13
                  srl          s7, gp, s2
                  sll          sp, a7, t4
                  addi         t0, t0, 64
                  addi         a1, a7, -131
61:               addi x19, x6, 0
61:               jalr x19, x19, 0
sub_5:            addi         s1, a7, 1294
                  ori          s4, a0, -1247
                  sltu         t4, s4, zero
                  nop
                  sub          s4, a1, s9
                  addi         t0, t0, -28
                  sra          s8, t0, s3
                  sw           t1, 4(t0)
                  sll          s2, s2, s4
                  slti         s1, a5, -1179
                  sll          a5, gp, s9
                  nop
                  sltiu        a2, t0, -618
                  nop
                  srai         a5, a4, 14
                  sltiu        s1, s3, -1441
                  sra          s2, a7, zero
                  sll          s7, sp, a3
                  bgeu         s2, gp, 17f
                  and          s2, t4, t6
                  blt          s11, a2, 18f
                  lui          s0, 517795
                  ori          s11, s4, -334
                  bltu         t1, s6, 18f
                  beq          zero, ra, 18f
                  blt          s7, s2, 18f
17:               addi         t5, t6, 1123
18:               slt          sp, t6, t2
                  and          s4, t0, zero
                  sll          s3, a0, s4
                  lw           t1, 4(t0)
                  add          t3, s11, s4
                  lui          s8, 449148
                  addi         t0, t0, 28
                  or           a0, s10, t2
35:               addi x23, x6, 0
35:               jalr x23, x23, 0
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
.word 0x2dfb205a, 0xbca059be, 0x68c2d27b, 0x4e607b4d, 0x1a2472ab, 0xfd7183e7, 0xfc74d2f0, 0xd8896a7a
.word 0x2f62f577, 0xe4832396, 0xee01a5a7, 0x60620c1f, 0xf7cd2dfe, 0x41accd54, 0xb47f91c5, 0x487a6915
.word 0x987910b7, 0x9981a2d0, 0x478e5edb, 0x48eede42, 0xdb0d1ebd, 0x248c2b04, 0xb9204cf3, 0x1e2e6b00
.word 0xaaada898, 0x7148910a, 0xfbcc592a, 0x7b9977e4, 0xf536f2c3, 0x43968eac, 0x185ddd01, 0x453bf8f7
.word 0x6b32cab2, 0x27d9ff66, 0xedfda856, 0xc28bc098, 0x55e5647b, 0xd65e7053, 0x12d4e0ae, 0x6e0bce39
.word 0x25b89238, 0x7141d61f, 0xf0e8a042, 0x66ec5e4f, 0x2a76c4d5, 0xe0ea1edc, 0x607ac6b1, 0xff186786
.word 0x7af8aa63, 0xdf6d88c3, 0x1292bd8d, 0x90fdb228, 0x9d6363ca, 0xd22c22a2, 0x7108f7af, 0x75ea9c3f
.word 0xf6c61431, 0xd3d1e858, 0x72a5a62f, 0xb431bb16, 0x4657a1f2, 0xfa0bd6be, 0xe5feed9e, 0x1b1bdff2
.word 0x74cfea5a, 0x86148a34, 0xb4667ab5, 0xbe5aa52f, 0x554941e7, 0xebe44a65, 0x998afafb, 0xd75f96fc
.word 0xe7dc9285, 0xbb684878, 0xe73bab6f, 0x048edb31, 0xa04d219e, 0x5aa25a2b, 0x38a5f5a4, 0x6ea7ff0a
.word 0x1776d93a, 0xae38e01b, 0x3f57c5c2, 0x988a0e8b, 0xaf805d54, 0x256bd509, 0x18b0c05c, 0xc4305dfc
.word 0x0a63599f, 0x4ca83da2, 0x354e8d5d, 0x6c70bfb0, 0xda176428, 0xd0219b88, 0x3337da45, 0xdf09f4dc
.word 0x4f81a415, 0xb7391e9a, 0xe31e49fe, 0xc817c12c, 0x2a2c2832, 0xbe82a8de, 0x3a76605e, 0xf20dc1fa
.word 0x098169b5, 0x871b599c, 0xd325324d, 0x059197ee, 0xb095decc, 0x29dfde1c, 0x363ae630, 0xc6ff993e
.word 0xe5863934, 0xe944b6fb, 0x7de10a3b, 0xc0cb4926, 0x32313b52, 0x7b4d4667, 0x6f0a9295, 0xda8dcc2d
.word 0xdfbacc0a, 0x5baf3bd9, 0xf0f09e8b, 0xff3c5398, 0x038faebf, 0xebdb038d, 0x500c12e3, 0x8e97b07d
.word 0x43a156fb, 0x0e97c18f, 0x71501262, 0xf0b70881, 0x55bee8f2, 0x1a4841d3, 0xec831444, 0xd70ec5a0
.word 0xce26ce77, 0xc5084c83, 0x0acc057a, 0x95f230d2, 0x7252b8d9, 0xdcf79eaa, 0xd102ce66, 0xe4797c63
.word 0xe7a51d78, 0x610ab2f2, 0xe973440b, 0xe9494550, 0x04a08a0b, 0x80e8aeab, 0xd83ac4ef, 0xc3bf096e
.word 0x4ab1760c, 0xace5bc40, 0x36105406, 0xee89f2f4, 0xee8e336d, 0x8bc65d5d, 0xe8951c4a, 0xbadd0b62
.word 0x9fd2ac0d, 0x47f2db1c, 0xf6e2150f, 0xbba6d879, 0xc5bc5e66, 0x5a39a805, 0x37825870, 0x958053e9
.word 0x90f7c1e3, 0xd590e111, 0xa4add3e5, 0x0be4ded4, 0x76500e60, 0xd0abf0be, 0x3ab7e589, 0xa3c3f5d3
.word 0x7f702d11, 0x312de406, 0x9846f211, 0x1464a336, 0x5056642e, 0x6b4dd534, 0x1b23bebf, 0xdd9659a6
.word 0x06836eff, 0x20ee1518, 0x8c5f8199, 0x2bd20cc6, 0x4827717c, 0x5ed1c783, 0x8641cc17, 0x526be94d
.word 0x799789da, 0x9936ee8a, 0x74c6b50b, 0xdf121f48, 0x99e7a28e, 0x10603c30, 0x0c6450c8, 0xfa38bc0c
.word 0xef7679f3, 0xd11f70c8, 0xf34dba0f, 0x5d16606c, 0xcca8705c, 0x19ff1106, 0x8894cc77, 0x57d9edb9
.word 0x569ce510, 0x482c982e, 0x5ae0774a, 0xf1667dba, 0x0fd449ec, 0x06136f70, 0xa7b494fc, 0x2be19207
.word 0xe50479fd, 0x8f56f8f8, 0x27d618b1, 0xabda99e1, 0xcc321cbd, 0x6480cbec, 0xc9593bad, 0x7d5375d0
.word 0xb0fd4814, 0x180f5f39, 0xde0203f0, 0x5b38763b, 0x019c7cea, 0xeea7fb4d, 0xa87d8e7c, 0xf34d6910
.word 0x41241c32, 0xfdda6b7b, 0x480158f8, 0x59391dd7, 0xfa548776, 0x2c83d8e7, 0xe385f2a3, 0xc5d58553
.word 0x4a6d0773, 0xfdfaa9d9, 0x547db17b, 0xcb8d85a4, 0x4d4445dd, 0xf3129c23, 0x7a402e73, 0x5cab72a9
.word 0x06c45a35, 0x73554b89, 0x040a1e9d, 0xdc839c53, 0x5458cf68, 0xa5dbc057, 0x0e95aa46, 0xa60b0001
.word 0xb0985cf7, 0x311e2190, 0xb91cc24d, 0xf64d5b85, 0x787e5872, 0x35e02a57, 0xa0ec32df, 0x699f71a9
.word 0x6338821f, 0xd72b5ff6, 0x1aeda599, 0x1d3888a2, 0x46d8ead6, 0x6f0dae47, 0xf14bc280, 0xd397d07c
.word 0x037d78da, 0x60db9080, 0xd1e54fc1, 0x4417bb64, 0x55786d88, 0x1f12a3c2, 0xf42c8330, 0x8923c81b
.word 0x86a01673, 0x93c5ab73, 0x24cb03fe, 0x86ee3c8d, 0x29064e0c, 0x911e5d3c, 0x8b79c804, 0x95d26ad1
.word 0x65f77fbb, 0x5230f721, 0x1bdbd27e, 0x95d65404, 0x5ef90aad, 0x979ba044, 0x29ff98cd, 0xee22df71
.word 0xc19ca7df, 0xb0e89f90, 0xab59897a, 0xe446bbd0, 0x9e7a0a8e, 0x04852040, 0xe59e6439, 0x7025aad8
.word 0x54416495, 0x412c4790, 0xdd99e0c5, 0x6cb03cf0, 0x2a68f9b7, 0x1776867c, 0x1951f3c3, 0x6302b739
.word 0xace7381a, 0x537076c4, 0xaa85cc97, 0x258ced4c, 0xd9dbc00b, 0xd00bca8a, 0x9cdcbbab, 0xc79a4f0c
.word 0x930ed7c7, 0x0b48a187, 0x40cd5f5a, 0xb52839f8, 0x7605b051, 0x64bb7926, 0x6eae8eab, 0xd3e38bf6
.word 0xbc975c74, 0xa4376409, 0xb665dcd3, 0x7bf5395c, 0x75c6ae30, 0xbc95371b, 0x3e624e98, 0x298995bd
.word 0x746ed735, 0x5f32eb8a, 0x35dc5f62, 0xe0f4cfa0, 0xb34fbd76, 0xa0d00438, 0x088ca295, 0xc7ed3381
.word 0x2aaf20ec, 0x64b5293f, 0xc8915970, 0x76879f9d, 0x49e1688e, 0xe9060a8c, 0xf77e3896, 0xee5371c6
.word 0x157783c7, 0xbe50d391, 0xba42d2e3, 0xdd1d8501, 0x8fb6ff9e, 0x64f511e2, 0xa10e7734, 0x1dba0515
.word 0xf77f1ae0, 0x046fc58d, 0x1461e406, 0xf7ee9552, 0x68cf7ab6, 0xabf0ec8f, 0xc18f24b0, 0xd106dc5f
.word 0x8e0c43c6, 0xc41b3290, 0x9abaee18, 0x84a0b5ca, 0xc7fd705a, 0x162e455d, 0x4cc52863, 0x467bbbf4
.word 0xfe2e6b28, 0x802110ee, 0xb28582cf, 0x3683f188, 0x1d3d0e6d, 0x5aa32824, 0x513658a3, 0x988ee297
.word 0xb18c10e2, 0x39b61967, 0x5e7a17a5, 0x7c58ca80, 0x9390cce6, 0x86bceae5, 0xf5a9eabf, 0x87e4237a
.word 0x76e74e3e, 0xbcc02947, 0x473545c8, 0x876e68bd, 0xe4817bf0, 0x73777980, 0x49c0295e, 0xc0ea1c87
.word 0x9f6d28b5, 0x54932098, 0xf66de053, 0xd0083ce2, 0xb3eedd2c, 0xfdb3d608, 0xd79faf6a, 0xd07f5697
.word 0x54fed1a8, 0xc05a19ec, 0xd7e4e6bd, 0x35664c35, 0x57e78941, 0x035af680, 0x9a0d8078, 0xaf4c1b3b
.word 0x5a8a9dd1, 0x184b5067, 0xa2678a82, 0x88e111bb, 0x5a842934, 0xdee86911, 0x8fb7ead6, 0x398c5ca0
.word 0x4b598040, 0xf225ea15, 0x2bd1bbab, 0x084818ac, 0x92c3019b, 0xe3c7f14a, 0xbf6af863, 0xb354a12e
.word 0x4a79605e, 0xbc48ba69, 0x90ceb488, 0x74a1ad78, 0xb8626a7f, 0x28642be4, 0x683253bd, 0x4fb79f81
.word 0x1ceed44f, 0xd5b21ead, 0x01a0db4e, 0x239c7767, 0x23fd5f44, 0xb6db67fa, 0xc6e88c3f, 0x43cd5d03
.word 0xe15488fc, 0x7d219a89, 0x4b77b36a, 0x027c8ea9, 0x01b83c73, 0x30719c60, 0x7a99d29f, 0xfae111a1
.word 0xa0523a37, 0xaac2df23, 0x9b99283f, 0xc8f8f144, 0x9e939bf8, 0x8351f36b, 0xb91564e1, 0x19479028
.word 0xefa7fc49, 0x6ad97a1e, 0x16d7e8af, 0x545c279a, 0x3e203ee8, 0xcb7ade25, 0x45c4d609, 0x025c568c
.word 0xcaa63112, 0x1feb8706, 0xb5727cd4, 0x615da6e9, 0x24bafafe, 0x512584a4, 0x3f1edf45, 0x5d50d2e4
.word 0x40b024b0, 0x521780b7, 0x30189eef, 0xe7e02b34, 0xfd670929, 0x2fb520f0, 0xd37c6eab, 0xddc5c1ee
.word 0xca63742c, 0xf6e69b0c, 0x54c1aef2, 0x5e75a0bc, 0xf01183ea, 0x3e361779, 0x560adcb9, 0xcbcc5160
.word 0x277e6624, 0xb8165776, 0xf203720b, 0x26d4034e
.section .region_1,"aw",@progbits;
region_1:
.word 0xcbfe5d3b, 0x210aa9a4, 0xf32ac1a5, 0x35e7f001, 0x61ae46f9, 0x1240d1fb, 0x771d9799, 0xf52b5398
.word 0x38fe96cd, 0xf71794a8, 0x33e19b34, 0x0c4d3866, 0xe6ce621b, 0xd67afab0, 0xe2c16391, 0x6396aa7d
.word 0xb1c46015, 0x8254329c, 0x7572730c, 0x9d009ee4, 0x2aa5806f, 0xcb3f79a5, 0x195faf95, 0x7d814a49
.word 0x14185af4, 0x36081ab8, 0x5f02e7ba, 0xdfbd9529, 0xf5fa1436, 0x421e8ec2, 0x6e90f5c4, 0x66c07e7a
.word 0x9f2101c0, 0xabe02437, 0x295a1a53, 0xa4c95b99, 0x9e462c76, 0xfa6a92e3, 0xaf0aa756, 0xc514b1a5
.word 0x6a90adba, 0x3aad66a9, 0xf701223b, 0xa4e4ba1d, 0x8fa3e12d, 0xa1d44d89, 0xfb2fbe33, 0xbed26bbd
.word 0x0003c7c4, 0xc4028f3e, 0x11c579a0, 0xa2768ffb, 0x612e6b42, 0x959f8397, 0xf43f3272, 0xd36e2450
.word 0x351d9c68, 0x2d613edc, 0xc145dadc, 0xf7e63cba, 0x0a4a81be, 0x018eef18, 0x87d54332, 0x68cff9b7
.word 0x220dc9d5, 0x1cfe7375, 0xa759079d, 0x2e45b347, 0x5107db52, 0xc7362df1, 0xe82ed6f5, 0x346c3ef7
.word 0xd5e00324, 0xb22de4dc, 0x452311f3, 0xe9866cf4, 0xd449d203, 0x43ed5c0b, 0x78d09f2b, 0xdab1a893
.word 0xb8d76378, 0x369107a1, 0x88ac69e5, 0x8aafd905, 0x384c31fb, 0x5b8f9d04, 0x7e546007, 0x6b9407a1
.word 0x5c0d15eb, 0x4366e31c, 0x65d1a724, 0xb06f76af, 0x2c530858, 0x04713ba0, 0x5b2699bc, 0xf3a9b7fb
.word 0xd31afd65, 0x74937d3d, 0x0d95f042, 0xee34a01f, 0xfb2f45a0, 0x6fd4aa61, 0x35e5532a, 0x1c00e926
.word 0x238d0269, 0xed086379, 0x03b3f71d, 0x45893320, 0x3ccbdaf5, 0xd278019e, 0x267e2036, 0x41265582
.word 0xf33f5382, 0x4093cf8b, 0x0a116417, 0x5815f09e, 0x975f909a, 0x25344213, 0xcead3f92, 0x13ac78d0
.word 0x8705ba7c, 0xd1c93b74, 0xc6a0d177, 0x5fc0aaf6, 0x973fc6d3, 0x4997390b, 0xa56f7128, 0x19be2836
.word 0xf716c472, 0xaa90ce85, 0x9f0cd30e, 0x683a0fe8, 0xe6b221bb, 0xd6609723, 0x7dc520be, 0xed12a38d
.word 0x77ba48e1, 0xbbcac5ed, 0x6e16fb7e, 0x441babda, 0xf214c1c8, 0xbff01c26, 0x0c10aa62, 0xb2a80a19
.word 0x4343986c, 0xd6068ced, 0xd545d635, 0xa337b0a4, 0xb58700d2, 0x08a4edee, 0x7554106d, 0x2f7fd1a4
.word 0x03c0c031, 0x02ee4db9, 0x80b3c7b3, 0x441f6072, 0x0de6c4f0, 0x018cc9d1, 0x5a352215, 0x546054f0
.word 0xc8f7709e, 0x14b38fea, 0xb0cc859a, 0xf9877310, 0xd535b512, 0x344cb898, 0xb4573193, 0x260c6975
.word 0x71783dce, 0x6ac88a3b, 0xfca5b032, 0x1b9ff128, 0x6e3c9e4c, 0x3e1a6560, 0xb50fb945, 0x2eb3765d
.word 0xe6419b3f, 0x1ba21055, 0x0661041d, 0x733da621, 0x6eea1332, 0xdfb1f107, 0xf558d4d2, 0xb0309dfa
.word 0xce5178a7, 0xb9068e46, 0xf9752f5c, 0xf1770e5b, 0xe4cc8ce2, 0xbc4566b0, 0xb0bc77d2, 0xd3d39c5c
.word 0xa1f1a929, 0x471c46d4, 0xcdb80c88, 0x269b1154, 0xb1b96d17, 0x4833bd1c, 0x2a089451, 0x64157245
.word 0x435babf0, 0xa9967a88, 0x1f636c3c, 0x219885bf, 0x5b29568a, 0x7a28ad40, 0x8432dbc0, 0xa07546ca
.word 0x1d74c4fe, 0xe1f57d9c, 0xf4ce7e21, 0x2fa9518a, 0x6ffc0073, 0x3c3f3d34, 0x002092a3, 0x07535a24
.word 0xde49b5b5, 0xe2eebac3, 0x11ccb5a7, 0x1c2e2eed, 0x86b63f8b, 0x46773301, 0x074c28bb, 0xde51eb27
.word 0x6bca8b94, 0xcd96b370, 0xcb96020b, 0xaabce502, 0x48d784e4, 0x9d16ae18, 0x76c4cd9c, 0xfc9d5551
.word 0xacdb5aae, 0x5e999109, 0xf445e135, 0x3645f75e, 0x56680627, 0xa56cc99b, 0x877f2759, 0xdac20700
.word 0xfa8b4638, 0x36231c98, 0x973b1abd, 0x3ca8baea, 0xd7eaca54, 0x1ef1cf40, 0xe9271250, 0x61816a2a
.word 0x3134d514, 0x19a506b1, 0x86fd5b51, 0x2b0e2dbc, 0x5b6f777f, 0xe4b87c8e, 0x563d68de, 0xe4991997
.word 0x3eebf75e, 0x7978a0fe, 0x026c1c5f, 0x342c646f, 0x84c52e48, 0xbfeae186, 0x8df67b8b, 0xdf4b81ca
.word 0xde8663fd, 0xb798737d, 0x27a75712, 0x7f4a49c7, 0x5af14823, 0x307620ce, 0x3af008f9, 0x73cfaa96
.word 0x943745fb, 0xdf0d46cd, 0x1104c682, 0xeddde62a, 0x73eb6f22, 0xf4a745ad, 0xc4830819, 0x33c392f0
.word 0xadb06a18, 0x85104fb5, 0xf3ddea9a, 0x153d1e95, 0xa366a043, 0xb730410e, 0x563ed3b3, 0x5b860f10
.word 0xe5e5f7de, 0x3f92dfb7, 0x3f78b15b, 0x49ea79a4, 0x392726e8, 0x37c9cd43, 0x95451143, 0x78ebabac
.word 0xcd698ecd, 0x5fbe88de, 0x81bf1042, 0x26bc35c7, 0x1e7e4776, 0xfc9840c8, 0xeb1e8562, 0x7e6c1686
.word 0x695912d3, 0x544d11cb, 0x8c277490, 0x90094bd8, 0x588e1669, 0x53939bbd, 0xf94242fc, 0xd4e2d220
.word 0x7b12d744, 0x9c48c33a, 0xd291c736, 0xf7ea8cf9, 0x4547cf53, 0xb2ca2c78, 0xb751c6cd, 0x632fbee4
.word 0x5c4ff2ed, 0x6425a827, 0x25ab435a, 0x9bff2b99, 0xa1e206d9, 0x280a5309, 0xb3f5fead, 0x34a11043
.word 0x7a9bd38b, 0x52294e76, 0x0c333f02, 0xbe14c841, 0x83a3e460, 0x260a09fe, 0xe99a7a59, 0x3ac54db0
.word 0x8c9ad2c5, 0xd583f080, 0xf7575173, 0x63089d42, 0xa5b0b568, 0x1b6f6c92, 0x12c415b8, 0x78a51424
.word 0x21c6df42, 0xf7cc1345, 0x79e8b1ba, 0x64d2f50c, 0x8370d0f1, 0x3c6793bc, 0x62237419, 0x62e5aada
.word 0x3d381d78, 0x7a3446aa, 0x6cc3972d, 0x68cc5159, 0xfb8c7966, 0xf0eca0af, 0x6399ad14, 0xb61a87b0
.word 0x92b639cd, 0x723fc04e, 0x418055de, 0x90785e7b, 0x6fbb794f, 0xce21e7fc, 0x8dbdb175, 0x2741f9ad
.word 0xfc1a5a6d, 0x4efe110a, 0x415ac103, 0xeb8a05ff, 0x160b2ef4, 0x9e2c93f6, 0x2bf8b72d, 0x4d4d640c
.word 0xc8269050, 0x1378302a, 0xe8f91447, 0x2c4cf766, 0xda15f1a6, 0xbacfc4b4, 0xf1f84e3f, 0xf9c9aa56
.word 0x957b416a, 0x063692d6, 0x6bbc8e74, 0x1c84c9ad, 0xa6f58c42, 0xed7951e6, 0xda89c322, 0x27cf20d3
.word 0xd8fbf328, 0xc6525320, 0x3eb4c1b0, 0x799de622, 0x26986882, 0xed70e08c, 0x35e46028, 0x141e6ef7
.word 0x8e3fc313, 0x82be70e4, 0xa54434c3, 0x2627fdac, 0x4db029c3, 0xb18caeae, 0x33c68e2f, 0x03711163
.word 0x86a6e734, 0x0bb6a29e, 0x184f49c9, 0xc249bcd0, 0x322f4a00, 0x3f37cc0a, 0xd1d07a43, 0x64359eaf
.word 0xae0170ba, 0x72b1b48e, 0xa1dd4c4c, 0x8196605d, 0x5a7ecef0, 0x749c52a0, 0x6f210f98, 0x9e4bad5c
.word 0xcee5b40f, 0xcd1230ad, 0x13ede2c9, 0x251c84d9, 0x5af556cb, 0xba7d6952, 0x81647460, 0xefe0efc9
.word 0xb84c7630, 0x67b48991, 0x52e512f3, 0x6b8b1cf1, 0xbc7a7840, 0xc576af90, 0x5d38904a, 0x77791ecf
.word 0x2dc8712b, 0x4ecaaf44, 0x50735f22, 0x00759bc5, 0x3e33167c, 0xfc67f919, 0x4decc429, 0x7507df14
.word 0x601591ee, 0x6c37f2c3, 0x511a3914, 0xe4375cd8, 0xff5dc563, 0x0977fe23, 0xab9811f5, 0x98a3ef20
.word 0x58b9e571, 0x05d3969f, 0x2ab37b16, 0x6e078d8c, 0x3698f20e, 0xc02e19e3, 0x5283d52d, 0x49a52a48
.word 0x295ae3a1, 0xa45556c8, 0xb1f40c20, 0x435f3307, 0x8ff80104, 0xdd55506b, 0x8972020d, 0xa604f98d
.word 0xa34ce012, 0x41be9f30, 0x33236989, 0xd08b8769, 0x41ab66b9, 0x39ecd484, 0x71310bba, 0x8e4869b0
.word 0x8f014631, 0x978798c6, 0x031a32d7, 0xdefba18a, 0x12784ff3, 0x21031560, 0x3e636a6e, 0xa2c1e045
.word 0x393cc36e, 0x2e787ac2, 0x6e18cf02, 0xa07c82fa, 0x3a72ae5e, 0xfb16027c, 0x8c394d38, 0x336664f6
.word 0x51a7c150, 0x0d2f4ffb, 0xc7603b18, 0x971d6909
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
                  add x17, x5, zero
                  csrr x23, 0x300 # MSTATUS
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 31
                  bne x23, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x15, 0x3 # BREAKPOINT
                  beq x23, x15, ebreak_handler
                  li x15, 0x8 # ECALL_UMODE
                  beq x23, x15, ecall_handler
                  li x15, 0x9 # ECALL_SMODE
                  beq x23, x15, ecall_handler
                  li x15, 0xb # ECALL_MMODE
                  beq x23, x15, ecall_handler
                  li x15, 0x1
                  beq x23, x15, instr_fault_handler
                  li x15, 0x5
                  beq x23, x15, load_fault_handler
                  li x15, 0x7
                  beq x23, x15, store_fault_handler
                  li x15, 0xc
                  beq x23, x15, pt_fault_handler
                  li x15, 0xd
                  beq x23, x15, pt_fault_handler
                  li x15, 0xf
                  beq x23, x15, pt_fault_handler
                  li x15, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x15, illegal_instr_handler
                  csrr x15, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

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
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x5, x17, zero
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
                  add x5, x17, zero
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
                  add x5, x17, zero
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
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x5, x17, zero
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
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x5, x17, zero
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
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x5, x17, zero
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
