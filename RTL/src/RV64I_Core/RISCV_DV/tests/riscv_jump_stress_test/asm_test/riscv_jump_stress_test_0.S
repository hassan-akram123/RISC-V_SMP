.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x4, h0_start
jalr x0, x4, 0
h0_start:
                  li x5, 0x40000100
                  csrw 0x301, x5
kernel_sp:        
                  la x30, kernel_stack_end

trap_vec_init:    
                  la x5, mtvec_handler
                  ori x5, x5, 1
                  csrw 0x305, x5 # MTVEC

mepc_setup:       
                  la x5, init
                  csrw 0x341, x5

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x5, 0x1800
                  csrw 0x300, x5 # MSTATUS
                  mret
init:             
                  li x0, 0xf83605cf
                  li x1, 0xf368f67f
                  li x2, 0xf9cd2b30
                  li x3, 0x80000000
                  li x4, 0x1
                  li x5, 0x80000000
                  li x6, 0x4cf80c65
                  li x7, 0x2
                  li x8, 0x80000000
                  li x9, 0xf3ad73ca
                  li x10, 0x5642ed9
                  li x11, 0xf2260ff4
                  li x13, 0xfcbf8b34
                  li x14, 0x80000000
                  li x15, 0xf82e1e0f
                  li x16, 0xf83130b1
                  li x17, 0xf4ffea48
                  li x18, 0x316ac149
                  li x19, 0x43729e80
                  li x20, 0x8
                  li x21, 0x80000000
                  li x22, 0x1
                  li x23, 0x80000000
                  li x24, 0xf7716d08
                  li x25, 0xc
                  li x26, 0x4
                  li x27, 0x0
                  li x28, 0x0
                  li x29, 0xf3ae6b7b
                  li x31, 0xe888dd98
                  la x12, user_stack_end
main:             slti         t3, a5, 188
                  la           t2, sub_4
                  auipc        s11, 68339
                  sltu         s10, t1, s2
                  sub          a6, sp, zero
                  addi         t2, t2, 334
                  srai         s11, sp, 1
main_j4:          jalr         s2, t2, -334 #jump main -> sub_4
                  auipc        s10, 920225
                  slli         s9, a5, 25
                  la           t4, sub_5
                  sltu         a7, a6, s2
                  srai         t6, t6, 22
                  auipc        s1, 150885
                  slli         s4, t3, 7
                  addi         t4, t4, -1000
                  xori         s10, s1, 930
main_j6:          jalr         s2, t4, 1001 #jump main -> sub_5
main_0:           jal          s2, 4f
0:                jal          t1, 16f
1:                jal          ra, 5f
2:                jal          ra, 6f
3:                jal          ra, 22f
4:                jal          a5, 14f
5:                jal          ra, 13f
6:                jal          ra, 0b
7:                jal          ra, 8f
8:                jal          ra, 21f
9:                jal          t1, 11f
10:               jal          ra, 18f
11:               jal          t1, 3b
12:               jal          ra, 20f
13:               jal          t1, 15f
14:               jal          ra, 19f
15:               jal          t1, 17f
16:               jal          t1, 1b
17:               jal          t0, 9b
18:               jal          ra, 12b
19:               jal          ra, 7b
20:               jal          gp, 2b
21:               jal          t1, 10b
22:               sra          t1, a4, a7
main_8:           jal          s2, 5f
0:                jal          a1, 6f
1:                jal          gp, 0b
2:                jal          ra, 23f
3:                jal          ra, 19f
4:                jal          ra, 11f
5:                jal          s1, 9f
6:                jal          t1, 18f
7:                jal          sp, 8f
8:                jal          t1, 28f
9:                jal          ra, 3b
10:               jal          a0, 20f
11:               jal          t1, 24f
12:               jal          a3, 7b
13:               jal          s3, 15f
14:               jal          ra, 10b
15:               jal          ra, 2b
16:               jal          ra, 14b
17:               jal          t1, 26f
18:               jal          ra, 13b
19:               jal          t1, 17b
20:               jal          s2, 25f
21:               jal          a6, 1b
22:               jal          s4, 21b
23:               jal          ra, 29f
24:               jal          gp, 16b
25:               jal          ra, 22b
26:               jal          t1, 27f
27:               jal          ra, 4b
28:               jal          s0, 30f
29:               jal          ra, 12b
30:               andi         a5, s1, -2041
main_1:           jal          s2, 16f
0:                jal          ra, 5f
1:                jal          ra, 25f
2:                jal          t1, 12f
3:                jal          t6, 6f
4:                jal          s8, 11f
5:                jal          s0, 20f
6:                jal          t1, 24f
7:                jal          gp, 21f
8:                jal          sp, 22f
9:                jal          ra, 23f
10:               jal          s6, 15f
11:               jal          t1, 3b
12:               jal          sp, 8b
13:               jal          t1, 0b
14:               jal          gp, 10b
15:               jal          ra, 7b
16:               jal          ra, 19f
17:               jal          t1, 18f
18:               jal          ra, 2b
19:               jal          t1, 9b
20:               jal          ra, 4b
21:               jal          ra, 17b
22:               jal          t1, 1b
23:               jal          s4, 13b
24:               jal          ra, 14b
25:               addi         s2, a4, 1640
main_7:           jal          s2, 17f
0:                jal          ra, 15f
1:                jal          s0, 7f
2:                jal          ra, 4f
3:                jal          gp, 6f
4:                jal          ra, 16f
5:                jal          ra, 8f
6:                jal          ra, 9f
7:                jal          a1, 10f
8:                jal          a5, 11f
9:                jal          t1, 13f
10:               jal          t0, 2b
11:               jal          s11, 12f
12:               jal          ra, 18f
13:               jal          t1, 5b
14:               jal          a1, 0b
15:               jal          t1, 1b
16:               jal          ra, 3b
17:               jal          t1, 14b
18:               auipc        s1, 127418
main_3:           jal          s2, 3f
0:                jal          s1, 21f
1:                jal          ra, 28f
2:                jal          a5, 7f
3:                jal          s0, 20f
4:                jal          ra, 19f
5:                jal          sp, 23f
6:                jal          ra, 15f
7:                jal          ra, 29f
8:                jal          sp, 6b
9:                jal          ra, 22f
10:               jal          ra, 2b
11:               jal          ra, 0b
12:               jal          t1, 26f
13:               jal          t0, 14f
14:               jal          gp, 9b
15:               jal          ra, 24f
16:               jal          s3, 1b
17:               jal          ra, 8b
18:               jal          ra, 4b
19:               jal          ra, 27f
20:               jal          t2, 16b
21:               jal          s10, 5b
22:               jal          gp, 17b
23:               jal          t0, 25f
24:               jal          t1, 11b
25:               jal          ra, 10b
26:               jal          ra, 13b
27:               jal          t1, 12b
28:               jal          ra, 18b
29:               slt          a5, s5, t6
main_6:           jal          s2, 15f
0:                jal          t2, 6f
1:                jal          t1, 23f
2:                jal          ra, 18f
3:                jal          ra, 8f
4:                jal          a4, 7f
5:                jal          ra, 10f
6:                jal          t1, 21f
7:                jal          ra, 5b
8:                jal          ra, 14f
9:                jal          t1, 22f
10:               jal          ra, 1b
11:               jal          t3, 2b
12:               jal          ra, 11b
13:               jal          ra, 19f
14:               jal          ra, 16f
15:               jal          t1, 9b
16:               jal          ra, 20f
17:               jal          s5, 12b
18:               jal          a0, 3b
19:               jal          ra, 4b
20:               jal          t0, 13b
21:               jal          ra, 17b
22:               jal          s1, 0b
23:               jal          t1, 24f
24:               nop
main_4:           jal          s2, 1f
0:                jal          t1, 12f
1:                jal          ra, 3f
2:                jal          s1, 7f
3:                jal          gp, 8f
4:                jal          sp, 11f
5:                jal          ra, 6f
6:                jal          ra, 10f
7:                jal          sp, 13f
8:                jal          s1, 9f
9:                jal          ra, 5b
10:               jal          t1, 0b
11:               jal          ra, 2b
12:               jal          ra, 4b
13:               add          a1, a6, a4
main_5:           jal          s2, 22f
0:                jal          a4, 3f
1:                jal          ra, 16f
2:                jal          ra, 1b
3:                jal          ra, 18f
4:                jal          ra, 8f
5:                jal          t4, 25f
6:                jal          t1, 28f
7:                jal          t1, 9f
8:                jal          t1, 20f
9:                jal          ra, 26f
10:               jal          ra, 12f
11:               jal          t0, 14f
12:               jal          ra, 19f
13:               jal          gp, 10b
14:               jal          sp, 4b
15:               jal          ra, 2b
16:               jal          ra, 17f
17:               jal          sp, 5b
18:               jal          s0, 15b
19:               jal          ra, 21f
20:               jal          t1, 0b
21:               jal          t1, 24f
22:               jal          t1, 13b
23:               jal          ra, 11b
24:               jal          ra, 7b
25:               jal          ra, 6b
26:               jal          s4, 27f
27:               jal          ra, 23b
28:               xori         s11, t3, 1755
main_2:           jal          s2, 10f
0:                jal          ra, 18f
1:                jal          ra, 17f
2:                jal          ra, 13f
3:                jal          t2, 12f
4:                jal          ra, 2b
5:                jal          ra, 0b
6:                jal          ra, 3b
7:                jal          ra, 8f
8:                jal          ra, 6b
9:                jal          ra, 16f
10:               jal          sp, 15f
11:               jal          t1, 7b
12:               jal          ra, 5b
13:               jal          a3, 1b
14:               jal          ra, 9b
15:               jal          ra, 14b
16:               jal          t1, 4b
17:               jal          t1, 11b
18:               srl          s3, s5, t6
                  srl          s0, t6, t0
                  xor          sp, t2, gp
                  slli         ra, s6, 1
                  bltu         s10, s6, 5f
                  nop
5:                sub          a3, s10, s6
                  blt          zero, a0, 23f
                  or           s7, s10, s9
                  sltu         a0, a0, s6
                  xor          a6, s11, a7
                  bltu         s2, s7, 25f
                  bltu         tp, s6, 22f
                  auipc        s2, 741055
                  blt          ra, a6, 18f
                  auipc        s10, 290352
                  xor          s3, s3, s0
                  auipc        a0, 1019324
                  srli         t2, s5, 16
18:               xor          gp, gp, s2
                  addi         t0, s4, 1351
                  lui          s10, 474857
                  bne          t6, s6, 33f
22:               sll          ra, a6, t6
23:               and          s0, a7, s5
                  addi         sp, t1, -1627
25:               bgeu         s4, a3, 30f
                  or           s6, s7, t2
                  ori          s9, s10, 55
                  sra          s10, s1, ra
                  sltu         t4, t6, s7
30:               sra          s8, t1, a4
                  slti         s2, s9, 1700
                  nop
33:               sll          t4, s10, t2
                  addi         ra, a2, -1643
                  sra          s3, s11, s2
                  slti         ra, s5, 805
                  addi         s11, a7, -912
                  xor          a3, tp, zero
                  sltiu        a1, sp, 21
                  bltu         s3, ra, 57f
                  ori          t3, a1, 202
                  auipc        s8, 898827
                  blt          s0, a7, 50f
                  bltu         s7, s1, 63f
                  xori         a3, t1, -266
                  addi         s6, t5, -294
                  xor          s11, a3, t5
                  slt          a1, a4, t6
                  lui          sp, 840362
50:               slti         s7, a4, 204
                  beq          s5, s8, 66f
                  or           t4, zero, a4
                  srai         s8, s7, 18
                  andi         a1, t6, 1252
                  slli         t3, s6, 18
                  xori         t0, a7, 20
57:               beq          s7, s4, 71f
                  xori         t4, s4, -1553
                  or           s2, s2, t1
                  slti         t4, s5, -1548
                  sub          a6, s2, s11
                  bne          s7, a1, 78f
63:               sub          gp, s4, gp
                  srl          s0, zero, t2
                  bgeu         zero, t4, 72f
66:               andi         s1, zero, 275
                  sra          s3, a6, s4
                  bge          s6, gp, 77f
                  xor          t6, s0, gp
                  ori          s11, t5, 819
71:               xori         s5, s10, -263
72:               bne          s8, ra, 78f
                  sll          a4, s3, a3
                  srl          s1, s6, t1
                  or           zero, s8, a4
                  slt          s8, s7, ra
77:               bge          s9, t1, 96f
78:               sll          s1, ra, a7
                  sltu         s10, tp, s7
                  lui          a5, 855406
                  bltu         s9, t0, 100f
                  sltu         t1, s0, t3
                  nop
                  nop
                  ori          s10, a0, -329
                  or           s10, s5, s5
                  nop
                  sltiu        s1, t3, 1475
                  and          a7, s4, a3
                  slli         s10, a4, 25
                  srl          s7, a5, t2
                  sll          s10, t2, s7
                  slli         t1, t3, 6
                  bgeu         s0, t3, 102f
                  slt          s10, a6, sp
96:               blt          a1, a4, 108f
                  slti         s5, t3, 1775
                  bge          s7, s5, 109f
                  nop
100:              bge          ra, t0, 119f
                  srl          t1, a7, tp
                  la           s2, sub_3
                  lui          t4, 620576
                  sltiu        a1, a5, -1295
                  addi         s5, s9, -1176
                  srai         s8, s0, 11
                  addi         s2, s2, 533
                  blt          a1, a0, main_j5 #branch to jump instr
                  slli         a7, s5, 22
                  slt          a5, a0, s6
main_j5:          jalr         s2, s2, -533 #jump main -> sub_3
                  beq          sp, t3, 113f
102:              xor          s4, a2, t1
                  addi         s3, s5, -126
                  sltiu        a4, gp, -211
                  and          a6, t0, s7
                  bgeu         a7, gp, 107f
107:              bge          tp, a1, 110f
108:              bltu         t0, a6, 115f
109:              auipc        a5, 307259
110:              sub          a4, a0, a3
                  nop
                  andi         s8, a3, 1553
113:              or           gp, a0, tp
                  ori          t2, s2, 2002
115:              andi         a6, t6, -955
                  xori         s6, gp, -1236
                  sltu         t0, a5, tp
                  bgeu         a1, a1, 124f
119:              add          s8, a1, t0
                  bge          s10, t0, 122f
                  add          s4, a3, ra
122:              lui          a4, 896781
                  sltu         t6, s1, t5
124:              sll          sp, a0, a1
                  addi         s9, gp, -782
                  srai         ra, a2, 26
                  slt          a4, t0, zero
                  blt          t5, s11, 140f
                  slt          t1, ra, a0
                  bne          t1, a1, 147f
                  blt          s1, gp, 140f
                  bge          a7, t4, 143f
                  auipc        sp, 618884
                  lui          s8, 348704
                  bge          t3, t2, 154f
                  auipc        gp, 1014884
                  srai         s8, s1, 26
                  bgeu         t5, a4, 150f
                  xori         a5, sp, -1595
140:              slt          t4, t5, a6
                  xor          a0, t3, tp
                  srl          a0, t6, ra
143:              bge          s10, sp, 150f
                  sltiu        s9, tp, -1569
                  beq          s6, s3, 164f
                  sltiu        t3, s8, -84
147:              beq          t3, ra, 152f
                  bge          s3, s0, 162f
                  sub          s6, a3, s5
150:              sub          a3, s4, a1
                  lui          s4, 761849
152:              andi         t3, a5, -1357
                  sltu         a0, s7, t3
154:              bltu         s5, t3, 165f
                  slti         a6, s3, -1512
                  and          s8, s8, t0
                  bltu         a3, t4, 169f
                  srl          a1, tp, s3
                  addi         t4, t2, 1276
                  srli         a3, a0, 13
                  sltiu        s6, a1, -1134
162:              bgeu         a1, a5, 181f
                  bltu         s10, a2, 165f
164:              auipc        s8, 156816
165:              auipc        s10, 268321
                  and          a4, a1, t0
                  sra          s0, a6, s9
                  or           s6, t6, s8
169:              beq          s3, t4, 184f
                  bne          a4, s8, 182f
                  bltu         a0, s9, 177f
                  sltiu        s4, s11, -858
                  beq          s10, s6, 174f
174:              auipc        s9, 103567
                  add          s0, a3, s6
                  beq          a1, s1, 184f
177:              lui          t0, 881862
                  add          t6, a5, s11
                  bltu         s10, t3, 181f
                  sltiu        a5, zero, -1682
181:              xori         s3, a4, 608
182:              nop
                  addi         zero, a6, 999
184:              bge          a0, s2, 203f
                  blt          a0, t4, 192f
                  bgeu         a4, t6, 191f
                  sra          s7, t0, s3
                  slli         a6, a5, 0
                  and          a0, s1, s2
                  xori         a7, zero, 1085
191:              slli         t4, s9, 11
192:              andi         t4, gp, -1955
                  sltu         s9, a1, s4
                  andi         s8, a4, -1106
                  lui          a3, 228477
                  and          s4, ra, a1
                  slli         s6, s9, 26
                  or           a3, gp, tp
                  slli         t3, s7, 12
                  slti         a0, s4, -546
                  sub          t1, zero, t4
                  sltu         s2, a4, s4
203:              bgeu         s11, a0, 206f
                  auipc        t4, 941401
                  beq          tp, s7, 220f
206:              or           s10, a5, s0
                  lui          a6, 114922
                  srai         ra, zero, 26
                  blt          a6, s11, 216f
                  xori         t0, s6, 869
                  xori         s9, s0, 367
                  add          t3, s2, s9
                  sltu         s10, s9, s3
                  la           a4, sub_2
                  addi         a4, a4, -869
                  lui          gp, 616545
                  or           gp, ra, a7
                  srai         a3, tp, 12
                  add          s6, s1, a6
                  xori         a6, t3, 941
                  slti         a7, a0, 1097
                  blt          s11, t2, main_j3 #branch to jump instr
                  xori         s4, a2, 1581
                  srai         s8, s5, 12
main_j3:          jalr         s2, a4, 870 #jump main -> sub_2
                  srl          a7, s7, s6
                  slti         t3, tp, -1806
                  sltu         zero, gp, s0
216:              sll          s4, zero, zero
                  blt          t4, a1, 229f
                  bne          a6, s0, 224f
                  and          t2, zero, s8
220:              bgeu         a5, s9, 236f
                  or           a4, s1, ra
                  srli         t3, a4, 27
                  bge          zero, s11, 240f
224:              or           sp, a5, zero
                  ori          ra, s6, -969
                  slti         s0, s2, 591
                  sltu         a5, a1, s6
                  srli         sp, s10, 10
229:              srl          ra, a3, a3
                  blt          s6, a6, 247f
                  sra          t2, s3, t4
                  slli         s6, tp, 19
                  slli         s6, tp, 29
                  srli         a0, a2, 11
                  slt          s6, s2, s2
236:              lui          t1, 839664
                  slli         t3, s2, 25
                  xor          t4, t0, s7
                  slli         t2, s1, 24
240:              sra          s7, s1, s3
                  slt          t1, s11, a5
                  sra          s8, t5, a0
                  ori          s10, s11, -813
                  andi         s10, s2, 452
                  slli         t1, s8, 15
                  lui          t0, 997506
247:              xori         t6, a3, -128
                  sll          t6, tp, t5
                  slli         sp, zero, 12
                  sll          t6, sp, s7
                  bgeu         a5, a2, 268f
                  slti         t6, a4, -1868
                  blt          s9, s10, 268f
                  xori         t2, a6, 149
                  bge          s8, s4, 272f
                  bltu         t1, ra, 262f
                  bge          t0, ra, 259f
                  add          a1, t5, s3
259:              addi         s8, t0, 1625
                  auipc        t6, 1003964
                  slli         s2, s9, 14
262:              slli         t6, s7, 1
                  slli         t2, t0, 19
                  bge          a6, s2, 283f
                  and          a7, t3, a1
                  auipc        a0, 834745
                  lui          a4, 1004662
268:              sub          s8, s10, a7
                  ori          a7, s10, 1500
                  srl          t0, a7, s0
                  and          a1, s11, a3
272:              xor          zero, s0, a5
                  or           s0, s3, t6
                  sub          t2, tp, t1
                  auipc        t2, 22829
                  slli         a6, a7, 16
                  sub          gp, t2, a2
                  sll          s2, s10, a3
                  sll          a7, t6, t2
                  bge          gp, s3, 287f
                  or           t4, a1, a1
                  andi         t0, s3, -126
283:              srli         s4, s1, 6
                  lui          s3, 20521
                  bgeu         t5, a2, 304f
                  xori         a6, s1, 1560
287:              bne          s10, s7, 294f
                  xor          gp, ra, s6
                  srl          s8, s0, t1
                  lui          t0, 1015567
                  add          t6, sp, a7
                  beq          a4, s0, 309f
                  andi         s11, t1, 1974
294:              slt          t0, s8, zero
                  beq          a6, a2, 307f
                  slli         ra, s10, 31
                  sub          s10, s7, a6
                  ori          t1, s8, 615
                  beq          t0, ra, 310f
                  sub          a4, a4, s11
                  auipc        a1, 814892
                  lui          a7, 819069
                  addi         a5, a7, -534
304:              add          s0, s6, t6
                  add          s6, s5, a2
                  xor          a3, s4, s8
307:              or           a3, a1, zero
                  sltiu        a3, t4, 2025
309:              sra          gp, s0, s5
310:              or           s3, t5, a3
                  andi         a4, s10, 1327
                  xor          gp, a2, sp
                  addi         a1, a3, -1290
                  srli         a3, s2, 16
                  slt          a4, s7, s3
                  ori          t4, s11, -279
                  srl          t4, s0, s6
                  andi         a7, s1, -817
                  bge          t3, a5, 336f
                  srli         gp, a1, 25
                  auipc        t0, 158242
                  bltu         t1, s4, 328f
                  andi         a6, t0, 1564
                  add          t3, s10, s11
                  slli         s10, tp, 7
                  bne          s7, s6, 327f
327:              blt          t5, s0, 335f
                  xor          a4, a4, s1
                  xori         s11, t6, -657
                  lui          s1, 42483
                  ori          sp, a1, 2046
                  andi         a3, t5, 1835
                  la           s10, sub_1
                  addi         s10, s10, -439
                  srai         a4, a3, 22
                  bge          t0, t5, main_j2 #branch to jump instr
                  xori         s6, s1, 1166
main_j2:          jalr         s2, s10, 439 #jump main -> sub_1
328:              bne          ra, s0, 330f
                  add          t1, s10, a7
330:              xori         ra, sp, -1768
                  bge          sp, zero, 350f
                  sub          gp, a4, t5
                  sll          s4, a0, zero
                  slt          a7, t6, a2
335:              bne          s8, t4, 346f
336:              bne          ra, s0, 345f
                  srli         s7, a5, 7
                  blt          s8, a2, 352f
                  ori          t3, s5, -940
                  or           s9, a5, zero
                  add          s7, gp, gp
                  andi         s7, a6, -591
                  slli         s6, a1, 22
                  xori         gp, gp, 513
345:              auipc        t6, 958859
346:              slt          zero, t2, tp
                  blt          a2, s9, 352f
                  or           s6, s4, s3
                  sra          a5, a3, a1
350:              slli         a5, t0, 18
                  srl          s5, s8, t6
352:              or           zero, a0, t1
                  sltu         t0, tp, s3
                  bltu         a6, a6, 366f
                  slt          s4, s10, ra
                  srl          ra, t0, t2
                  slt          s0, ra, a2
                  bgeu         s10, gp, 361f
                  xor          s3, t2, t1
                  slt          s7, t3, a1
361:              sub          s3, s4, t6
                  ori          s10, tp, -756
                  slt          a1, s8, a0
                  beq          a1, a7, 383f
                  blt          a6, a7, 381f
366:              beq          t2, a4, 371f
                  lui          s3, 268189
                  add          t1, t5, s5
                  addi         t3, t0, -1387
                  slli         ra, sp, 31
                  la           s2, sub_3
                  sra          ra, a7, t1
                  auipc        s5, 998679
                  sub          sp, a5, t1
                  addi         s2, s2, -696
                  lui          s10, 17023
                  sltiu        s6, s7, -1314
                  sltu         s4, s8, t6
                  sub          a1, t6, t1
                  sltu         a0, tp, a6
main_j1:          jalr         s2, s2, 696 #jump main -> sub_3
                  ori          a6, s11, -8
                  xor          ra, t6, a7
371:              bne          s6, tp, 386f
                  bne          t1, sp, 384f
                  bge          s2, s5, 380f
                  ori          s6, a3, -1883
                  or           a5, s5, gp
                  or           a0, t1, a0
                  and          t3, t3, zero
                  slt          a3, a4, t6
                  auipc        t1, 651819
380:              beq          a1, a3, 392f
381:              slli         ra, sp, 3
                  slt          a7, t4, sp
383:              bgeu         a4, s5, 398f
384:              xor          s9, t6, s8
                  ori          s2, s7, 490
386:              or           t6, t5, zero
                  srl          a7, t0, s9
                  sub          t4, s8, t0
                  beq          tp, a0, 396f
                  ori          s1, s6, 1844
                  nop
392:              sltu         s11, t2, a3
                  nop
                  andi         s4, t5, -1391
                  bne          a6, a1, 400f
396:              beq          t6, t3, 411f
                  andi         s8, s7, -37
398:              sltu         t3, t0, a3
                  srai         ra, t2, 31
400:              bge          s11, s0, 402f
                  xor          sp, s3, a5
402:              bge          a7, t4, 421f
                  ori          s2, ra, 1048
                  add          zero, s6, s7
                  and          s6, gp, a5
                  lui          t2, 210597
                  auipc        a5, 481485
                  slli         s8, a4, 9
                  bne          s5, a3, 416f
                  bltu         s6, t1, 416f
411:              xor          s3, s11, t5
                  andi         a0, t5, -1548
                  addi         ra, a4, -2035
                  srl          s4, a4, s3
                  lui          a6, 725552
416:              bne          a5, tp, 421f
                  sra          ra, s9, s7
                  bne          a0, s10, 430f
                  bgeu         s8, a4, 436f
                  slli         a3, tp, 13
421:              slli         s5, s10, 31
                  bgeu         a2, a1, 441f
                  ori          s9, gp, 498
                  and          zero, s4, a5
                  slli         s5, a0, 27
                  bne          s0, s9, 434f
                  xor          s2, s8, a2
                  add          t3, s4, s4
                  addi         t3, a4, -363
430:              bltu         s7, s0, 441f
                  ori          t6, a4, 327
                  sub          s9, t0, s9
                  srai         a0, t5, 28
434:              xori         t6, sp, -805
                  blt          a1, s5, 449f
436:              bge          a5, s7, 438f
                  nop
438:              sra          t4, t0, s11
                  blt          s10, t0, 455f
                  beq          s11, s3, 459f
441:              sltiu        t0, t5, -270
                  srai         a6, sp, 29
                  or           s1, s11, a6
                  sll          s10, tp, zero
                  auipc        t1, 785317
                  add          s11, s9, s1
                  ori          a6, a0, 1091
                  bgeu         tp, sp, 460f
449:              slti         s8, a7, -815
                  lui          s0, 886320
                  xori         t6, zero, -1720
                  sltiu        s11, t2, 1683
                  slti         s5, s10, -456
                  bge          s10, a5, 473f
455:              lui          a6, 262928
                  sra          t2, a4, a0
                  slti         s0, tp, 1500
                  sltu         s1, s10, t6
459:              xori         s6, s11, 1505
460:              bge          a2, s7, 472f
                  srli         t2, t2, 14
                  blt          s6, tp, 479f
                  slli         a6, s3, 11
                  bltu         a1, s3, 473f
                  auipc        s6, 190297
                  srl          t4, sp, a5
                  beq          s4, t5, 473f
                  and          a1, t3, s2
                  auipc        t6, 638087
                  add          a3, ra, s11
                  slt          ra, s1, t4
472:              slti         t2, t3, -1452
473:              sltiu        s8, a6, 435
                  xor          a1, s1, s9
                  ori          ra, s4, 1272
                  srl          a5, s0, ra
                  add          s2, sp, t0
                  lui          a6, 322948
479:              blt          a4, a6, 480f
480:              beq          a7, s4, 482f
                  xori         sp, s4, 1408
482:              add          s8, s8, a3
                  la x4, test_done
                  jalr x0, x4, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            bltu         gp, a2, sub_4_stack_p
                  sltiu        a7, gp, -640
sub_4_stack_p:    addi         a2, a2, -40
                  nop
                  sw           s2, 4(a2)
                  slti         ra, sp, 1511
                  addi         ra, t4, 1196
                  and          s7, s6, t5
                  add          s10, t1, s10
                  sll          a4, s11, a7
                  srli         t4, s3, 12
                  and          s1, s9, a7
                  add          t2, a2, a3
                  srl          s2, s4, a6
                  sltu         s9, a2, t5
                  slt          sp, tp, s6
                  sltu         a1, a7, t5
                  lui          s10, 920293
                  slli         t3, s4, 28
                  sub          s8, s7, s6
                  sub          s4, zero, s9
                  andi         zero, s3, -276
                  sltu         a3, t4, s9
                  blt          s11, s8, 37f
                  bne          a0, s11, 20f
                  srl          t0, zero, sp
20:               bgeu         s8, a2, 39f
                  ori          a4, s1, -1960
                  add          gp, s11, t4
                  andi         s2, s8, 932
                  sll          ra, s7, sp
                  and          s11, a4, t6
                  addi         t4, a1, 131
                  bgeu         t4, s3, 43f
                  addi         a3, t1, -657
                  addi         s10, t1, -1748
                  sub          s3, s0, a1
                  srl          s4, a7, zero
                  beq          a1, a0, 34f
                  srl          zero, s11, sp
34:               and          t0, t4, t3
                  slli         s1, a4, 23
                  bge          tp, s3, 39f
37:               srai         a7, a7, 13
                  and          a7, sp, t6
39:               or           a6, t5, ra
                  sub          zero, s2, a7
                  bge          t3, t1, 44f
                  bge          a4, a1, 43f
43:               auipc        s1, 677642
44:               andi         s3, a3, -1680
                  addi         s10, s3, 1632
                  lw           s2, 4(a2)
                  andi         t1, t1, -594
                  addi         a2, a2, 40
                  add          ra, s8, s3
56:               addi x29, x18, 1
56:               jalr x29, x29, 0
sub_2:            beq          a5, gp, sub_2_stack_p
sub_2_stack_p:    addi         a2, a2, -12
                  nop
                  sltu         a7, t5, a3
                  sw           s2, 4(a2)
                  sub          s0, s9, t1
                  nop
sub_2_2:          jal          s2, 3f
0:                jal          ra, 2f
1:                jal          a4, 10f
2:                jal          t1, 9f
3:                jal          ra, 8f
4:                jal          ra, 11f
5:                jal          t1, 6f
6:                jal          ra, 7f
7:                jal          ra, 4b
8:                jal          ra, 0b
9:                jal          a7, 1b
10:               jal          a6, 5b
11:               sub          a4, s0, s10
sub_2_9:          jal          s2, 2f
0:                jal          gp, 9f
1:                jal          t1, 6f
2:                jal          ra, 12f
3:                jal          ra, 5f
4:                jal          a6, 8f
5:                jal          ra, 1b
6:                jal          ra, 13f
7:                jal          ra, 10f
8:                jal          ra, 11f
9:                jal          ra, 3b
10:               jal          t1, 4b
11:               jal          ra, 0b
12:               jal          t1, 7b
13:               sra          s8, t4, s0
sub_2_19:         jal          s2, 4f
0:                jal          ra, 3f
1:                jal          ra, 15f
2:                jal          ra, 9f
3:                jal          ra, 14f
4:                jal          t1, 10f
5:                jal          t1, 11f
6:                jal          ra, 12f
7:                jal          ra, 1b
8:                jal          t0, 7b
9:                jal          ra, 0b
10:               jal          ra, 5b
11:               jal          ra, 6b
12:               jal          gp, 13f
13:               jal          gp, 2b
14:               jal          ra, 8b
15:               sltu         zero, tp, s8
sub_2_14:         jal          s2, 11f
0:                jal          ra, 12f
1:                jal          ra, 18f
2:                jal          ra, 13f
3:                jal          t2, 6f
4:                jal          ra, 15f
5:                jal          s9, 7f
6:                jal          ra, 20f
7:                jal          ra, 1b
8:                jal          sp, 19f
9:                jal          s4, 8b
10:               jal          ra, 3b
11:               jal          ra, 5b
12:               jal          t1, 4b
13:               jal          ra, 9b
14:               jal          ra, 0b
15:               jal          s0, 16f
16:               jal          ra, 2b
17:               jal          s0, 10b
18:               jal          ra, 17b
19:               jal          t6, 21f
20:               jal          t3, 14b
21:               slti         t6, s3, 1047
sub_2_4:          jal          s2, 9f
0:                jal          t1, 12f
1:                jal          ra, 6f
2:                jal          t0, 7f
3:                jal          t1, 11f
4:                jal          ra, 0b
5:                jal          ra, 10f
6:                jal          t1, 8f
7:                jal          ra, 16f
8:                jal          ra, 3b
9:                jal          ra, 4b
10:               jal          ra, 13f
11:               jal          ra, 15f
12:               jal          ra, 2b
13:               jal          ra, 14f
14:               jal          ra, 17f
15:               jal          t1, 5b
16:               jal          ra, 1b
17:               lui          t6, 864908
sub_2_10:         jal          s2, 7f
0:                jal          ra, 1f
1:                jal          s2, 20f
2:                jal          ra, 14f
3:                jal          ra, 12f
4:                jal          ra, 18f
5:                jal          t1, 9f
6:                jal          ra, 13f
7:                jal          ra, 4b
8:                jal          a3, 5b
9:                jal          ra, 6b
10:               jal          t0, 0b
11:               jal          ra, 8b
12:               jal          s2, 15f
13:               jal          t1, 10b
14:               jal          a6, 16f
15:               jal          ra, 11b
16:               jal          sp, 3b
17:               jal          sp, 19f
18:               jal          t0, 17b
19:               jal          sp, 2b
20:               sub          a4, s5, a6
sub_2_1:          jal          s2, 1f
0:                jal          a5, 7f
1:                jal          a3, 14f
2:                jal          gp, 3f
3:                jal          t1, 26f
4:                jal          ra, 8f
5:                jal          ra, 11f
6:                jal          ra, 2b
7:                jal          t1, 18f
8:                jal          ra, 9f
9:                jal          ra, 6b
10:               jal          t1, 0b
11:               jal          t3, 19f
12:               jal          ra, 24f
13:               jal          gp, 21f
14:               jal          ra, 12b
15:               jal          t1, 25f
16:               jal          t1, 15b
17:               jal          ra, 22f
18:               jal          ra, 16b
19:               jal          s10, 4b
20:               jal          ra, 10b
21:               jal          t1, 17b
22:               jal          ra, 5b
23:               jal          t1, 20b
24:               jal          ra, 23b
25:               jal          s0, 13b
26:               and          s5, s3, s1
sub_2_25:         jal          s2, 16f
0:                jal          t1, 12f
1:                jal          ra, 18f
2:                jal          ra, 17f
3:                jal          t1, 27f
4:                jal          ra, 25f
5:                jal          ra, 14f
6:                jal          s0, 10f
7:                jal          ra, 20f
8:                jal          ra, 13f
9:                jal          a7, 1b
10:               jal          ra, 8b
11:               jal          ra, 5b
12:               jal          ra, 21f
13:               jal          ra, 11b
14:               jal          s4, 24f
15:               jal          t1, 28f
16:               jal          a6, 23f
17:               jal          ra, 3b
18:               jal          s10, 7b
19:               jal          s10, 4b
20:               jal          ra, 26f
21:               jal          t1, 9b
22:               jal          ra, 15b
23:               jal          sp, 2b
24:               jal          ra, 0b
25:               jal          ra, 22b
26:               jal          ra, 19b
27:               jal          ra, 6b
28:               sll          s5, gp, a1
sub_2_23:         jal          s2, 9f
0:                jal          t2, 7f
1:                jal          t6, 10f
2:                jal          a7, 4f
3:                jal          ra, 6f
4:                jal          s9, 1b
5:                jal          sp, 0b
6:                jal          t0, 2b
7:                jal          ra, 3b
8:                jal          s1, 5b
9:                jal          sp, 8b
10:               add          t3, a1, s3
sub_2_12:         jal          s2, 13f
0:                jal          sp, 2f
1:                jal          t1, 7f
2:                jal          ra, 3f
3:                jal          a7, 19f
4:                jal          t1, 8f
5:                jal          ra, 17f
6:                jal          ra, 0b
7:                jal          ra, 16f
8:                jal          s0, 18f
9:                jal          ra, 20f
10:               jal          t1, 4b
11:               jal          t1, 15f
12:               jal          ra, 1b
13:               jal          ra, 11b
14:               jal          t0, 9b
15:               jal          t1, 6b
16:               jal          a5, 14b
17:               jal          s3, 12b
18:               jal          ra, 5b
19:               jal          ra, 10b
20:               or           s10, t5, a7
sub_2_15:         jal          s2, 8f
0:                jal          a7, 1f
1:                jal          t1, 10f
2:                jal          t1, 16f
3:                jal          ra, 15f
4:                jal          t6, 5f
5:                jal          ra, 12f
6:                jal          ra, 14f
7:                jal          ra, 3b
8:                jal          t1, 9f
9:                jal          ra, 11f
10:               jal          t1, 2b
11:               jal          ra, 0b
12:               jal          t1, 13f
13:               jal          t1, 17f
14:               jal          gp, 7b
15:               jal          t1, 4b
16:               jal          ra, 6b
17:               xori         t2, t0, 489
sub_2_11:         jal          s2, 11f
0:                jal          t1, 12f
1:                jal          ra, 8f
2:                jal          ra, 6f
3:                jal          t0, 2b
4:                jal          ra, 10f
5:                jal          ra, 7f
6:                jal          gp, 4b
7:                jal          ra, 13f
8:                jal          a6, 14f
9:                jal          ra, 3b
10:               jal          a7, 0b
11:               jal          gp, 9b
12:               jal          ra, 5b
13:               jal          ra, 1b
14:               sub          a7, a3, t0
sub_2_17:         jal          s2, 12f
0:                jal          ra, 9f
1:                jal          ra, 7f
2:                jal          s0, 4f
3:                jal          ra, 10f
4:                jal          a0, 1b
5:                jal          s7, 11f
6:                jal          ra, 13f
7:                jal          ra, 3b
8:                jal          ra, 6b
9:                jal          t1, 2b
10:               jal          sp, 8b
11:               jal          a0, 0b
12:               jal          ra, 5b
13:               slti         s3, a2, 363
sub_2_6:          jal          s2, 0f
0:                jal          t3, 8f
1:                jal          s11, 4f
2:                jal          t1, 11f
3:                jal          s1, 1b
4:                jal          ra, 9f
5:                jal          ra, 7f
6:                jal          s1, 3b
7:                jal          ra, 10f
8:                jal          s10, 6b
9:                jal          ra, 5b
10:               jal          ra, 2b
11:               jal          t0, 12f
12:               sltu         a0, a5, a0
sub_2_0:          jal          s2, 2f
0:                jal          t4, 20f
1:                jal          ra, 9f
2:                jal          ra, 13f
3:                jal          t1, 1b
4:                jal          s3, 8f
5:                jal          t1, 24f
6:                jal          ra, 7f
7:                jal          ra, 4b
8:                jal          ra, 25f
9:                jal          t1, 5b
10:               jal          ra, 23f
11:               jal          ra, 16f
12:               jal          ra, 10b
13:               jal          t4, 17f
14:               jal          ra, 21f
15:               jal          ra, 14b
16:               jal          t1, 0b
17:               jal          ra, 15b
18:               jal          ra, 11b
19:               jal          ra, 26f
20:               jal          ra, 19b
21:               jal          ra, 12b
22:               jal          ra, 6b
23:               jal          ra, 22b
24:               jal          t1, 18b
25:               jal          ra, 3b
26:               srai         s11, ra, 9
sub_2_16:         jal          s2, 5f
0:                jal          a3, 1f
1:                jal          t1, 8f
2:                jal          ra, 7f
3:                jal          a4, 12f
4:                jal          sp, 0b
5:                jal          t1, 9f
6:                jal          ra, 4b
7:                jal          ra, 6b
8:                jal          ra, 10f
9:                jal          ra, 2b
10:               jal          t1, 11f
11:               jal          gp, 3b
12:               or           a1, a6, s11
sub_2_24:         jal          s2, 18f
0:                jal          a6, 7f
1:                jal          t1, 6f
2:                jal          ra, 20f
3:                jal          ra, 4f
4:                jal          ra, 9f
5:                jal          ra, 12f
6:                jal          ra, 14f
7:                jal          ra, 2b
8:                jal          ra, 3b
9:                jal          t3, 21f
10:               jal          sp, 19f
11:               jal          s11, 17f
12:               jal          ra, 10b
13:               jal          ra, 8b
14:               jal          t1, 13b
15:               jal          ra, 1b
16:               jal          t0, 5b
17:               jal          ra, 0b
18:               jal          sp, 11b
19:               jal          ra, 15b
20:               jal          gp, 16b
21:               nop
sub_2_21:         jal          s2, 7f
0:                jal          a4, 2f
1:                jal          s10, 4f
2:                jal          ra, 9f
3:                jal          ra, 0b
4:                jal          ra, 13f
5:                jal          a7, 6f
6:                jal          s1, 12f
7:                jal          a0, 5b
8:                jal          t0, 15f
9:                jal          t0, 1b
10:               jal          ra, 11f
11:               jal          ra, 14f
12:               jal          ra, 10b
13:               jal          ra, 8b
14:               jal          t1, 3b
15:               srl          a1, tp, s10
sub_2_3:          jal          s2, 15f
0:                jal          ra, 10f
1:                jal          t0, 17f
2:                jal          ra, 1b
3:                jal          ra, 4f
4:                jal          t1, 2b
5:                jal          t0, 3b
6:                jal          ra, 12f
7:                jal          ra, 8f
8:                jal          s10, 9f
9:                jal          ra, 6b
10:               jal          ra, 18f
11:               jal          t1, 19f
12:               jal          ra, 5b
13:               jal          sp, 11b
14:               jal          ra, 7b
15:               jal          ra, 14b
16:               jal          ra, 0b
17:               jal          ra, 16b
18:               jal          ra, 13b
19:               sll          a4, zero, t4
sub_2_8:          jal          s2, 14f
0:                jal          t0, 15f
1:                jal          t1, 22f
2:                jal          t1, 24f
3:                jal          ra, 8f
4:                jal          ra, 2b
5:                jal          t1, 1b
6:                jal          sp, 19f
7:                jal          ra, 16f
8:                jal          ra, 7b
9:                jal          ra, 20f
10:               jal          ra, 6b
11:               jal          ra, 13f
12:               jal          t1, 5b
13:               jal          ra, 21f
14:               jal          t1, 25f
15:               jal          ra, 18f
16:               jal          t1, 26f
17:               jal          t1, 10b
18:               jal          t0, 3b
19:               jal          ra, 12b
20:               jal          t1, 0b
21:               jal          ra, 23f
22:               jal          s5, 9b
23:               jal          ra, 17b
24:               jal          s5, 11b
25:               jal          ra, 4b
26:               sub          ra, s6, a5
                  srl          ra, s2, gp
                  sltiu        a6, a5, 624
                  nop
                  srai         s4, a2, 30
                  xor          t3, s0, t2
                  lui          s0, 20148
                  xori         s11, s6, -383
                  xori         a1, s1, -748
                  sub          s8, t5, a7
                  sltiu        s8, gp, -1333
                  slli         s7, s4, 23
                  add          t3, zero, s9
                  sra          ra, a4, t6
                  lui          a0, 893053
                  ori          a0, a1, 603
                  srl          s1, t3, a1
                  addi         a3, a0, 613
                  bltu         s5, s11, 33f
                  bge          a4, tp, 26f
                  addi         a7, a5, -1937
                  sll          a1, a1, a3
                  addi         t6, s3, 216
                  ori          s5, a3, 97
                  beq          s1, s11, 25f
                  xori         t1, s5, 1634
25:               sltiu        s1, s8, 386
26:               srai         a4, a5, 1
                  slli         a0, s1, 3
                  sltu         a0, a2, a0
                  or           t2, a3, a3
                  lui          s6, 235501
                  slt          t4, zero, a1
                  auipc        s9, 941038
33:               or           a4, tp, s6
                  and          sp, s7, a0
                  bgeu         s11, gp, 47f
                  auipc        ra, 772820
                  srai         s0, s7, 17
                  sll          a5, s3, t0
                  slti         gp, s11, -693
                  bge          a3, a6, 48f
                  sub          t2, t1, s8
                  addi         s4, s0, -158
                  auipc        s2, 580798
                  and          t4, a2, a7
                  sra          a5, sp, s0
                  slt          s4, a6, s3
47:               sll          s11, ra, t2
48:               beq          gp, gp, 56f
                  or           zero, s6, a2
                  srl          a3, s4, a3
                  sub          a6, s0, a5
                  xor          s10, tp, s11
                  nop
                  slt          t6, t6, ra
                  bltu         sp, zero, 60f
56:               addi         a4, a1, 576
                  bge          sp, ra, 62f
                  bge          t2, a6, 75f
                  andi         a3, s5, -804
60:               srli         s4, s6, 22
                  slli         a0, s0, 25
62:               andi         gp, t3, -1492
                  srai         s6, a3, 3
                  andi         a6, s4, 451
                  or           t2, t0, t2
                  auipc        s3, 506687
                  sra          a6, t0, a4
                  sra          a5, a2, a6
                  nop
                  bgeu         a6, a4, 89f
                  slti         t6, t2, -784
                  bge          s0, s7, 80f
                  and          s2, gp, t4
                  beq          s8, a7, 85f
75:               xori         t2, a1, -748
                  srai         ra, s8, 24
                  xori         a0, t2, -1588
                  addi         t0, a3, 965
                  nop
80:               nop
                  bgeu         a7, zero, 90f
                  or           s0, a7, t2
                  srl          s5, a1, s8
                  slt          ra, a7, a1
85:               sltiu        t1, a3, -1934
                  srli         t4, t2, 0
                  bltu         t5, s1, 105f
                  slt          sp, a0, a5
89:               bltu         a7, s0, 92f
90:               sra          a0, a6, a7
                  bne          s9, ra, 104f
92:               slli         t6, s11, 25
                  slt          a5, a2, tp
                  bgeu         a1, t3, 108f
                  bgeu         gp, a0, 105f
                  nop
                  and          t0, a5, a3
                  sltiu        t4, t1, -1299
                  and          t2, s5, sp
                  slli         t1, t5, 17
                  auipc        s5, 183439
                  add          t6, s5, s10
                  addi         s3, s2, 1311
104:              ori          t3, ra, 1366
105:              nop
                  blt          zero, s0, 118f
                  slti         s8, s1, -721
108:              lui          ra, 436986
                  slti         t6, a7, -80
                  lui          t4, 108483
                  xori         s2, s2, 1505
                  bgeu         a0, a7, 118f
                  srai         a0, a6, 6
                  srl          t2, zero, sp
                  nop
                  bgeu         t5, t2, 126f
                  auipc        s11, 352495
118:              slt          zero, ra, a3
                  srai         s9, s9, 31
                  sll          s5, s7, a7
                  add          s8, a5, s8
                  slti         s0, s3, 1070
                  sra          a0, s1, t3
                  addi         a5, t3, 2006
                  sra          s2, t5, zero
126:              ori          s0, s7, -1000
                  sub          a1, a2, t0
                  ori          t6, t0, 446
                  nop
                  slt          s3, a3, t5
                  srli         sp, s1, 27
                  srli         sp, ra, 28
                  auipc        s1, 1009542
                  slti         s11, t2, -1407
                  lui          s7, 719533
                  slli         t3, t3, 11
                  sltu         a1, s4, a0
                  and          a3, a5, t3
sub_2_20:         jal          s2, 12f
0:                jal          t1, 9f
1:                jal          s1, 22f
2:                jal          s4, 23f
3:                jal          t0, 6f
4:                jal          ra, 18f
5:                jal          ra, 10f
6:                jal          gp, 16f
7:                jal          t1, 13f
8:                jal          ra, 7b
9:                jal          a0, 24f
10:               jal          t4, 15f
11:               jal          t1, 17f
12:               jal          a6, 21f
13:               jal          ra, 14f
14:               jal          ra, 3b
15:               jal          gp, 8b
16:               jal          gp, 4b
17:               jal          a4, 5b
18:               jal          ra, 2b
19:               jal          t1, 1b
20:               jal          t1, 0b
21:               jal          ra, 11b
22:               jal          ra, 20b
23:               jal          s3, 19b
24:               lui          a5, 141810
                  blt          gp, s1, 146f
                  lui          a7, 532951
                  slti         t2, t5, 1875
                  xor          gp, s1, a3
                  auipc        t2, 401079
                  beq          t5, t0, 151f
                  bne          t4, s7, 160f
146:              or           t3, s2, t4
                  srl          a6, a0, a5
                  blt          a4, ra, 167f
                  and          s6, gp, t2
                  sltiu        s6, t6, -26
151:              andi         s7, t3, -2048
                  bltu         s0, s11, 166f
                  bgeu         t6, ra, 159f
                  slti         s9, tp, 1639
                  srli         s6, a1, 19
                  bne          s2, gp, 173f
                  bgeu         t0, s2, 164f
                  bltu         s11, t0, 162f
159:              beq          a3, a7, 173f
160:              xor          a1, s1, s6
                  ori          a5, s6, 1459
162:              sll          gp, a6, t4
                  srai         s7, a4, 28
164:              slli         s7, tp, 5
                  bne          s3, t6, 171f
166:              slli         t4, t4, 3
167:              andi         s8, s6, -136
                  srai         a0, t2, 4
                  nop
                  slt          a3, a2, t0
171:              srai         gp, a1, 5
                  sltiu        a5, a7, -877
173:              lui          a1, 673426
                  add          s9, sp, s1
                  addi         a0, gp, -263
                  and          t0, a6, t3
                  slt          t2, a0, a4
                  xor          s10, gp, t4
                  sltu         s8, a2, gp
                  bne          t4, sp, 185f
                  bgeu         s1, a0, 187f
                  blt          s8, s7, 187f
                  xori         a1, a3, 1384
                  ori          ra, s0, -1147
185:              ori          gp, a5, -248
                  sltiu        s7, s2, -1562
187:              sub          zero, a6, t5
                  or           t4, a6, s4
                  and          a5, a7, t2
                  slti         s10, t6, 1343
                  bltu         s8, sp, 199f
                  sltiu        s10, a0, 423
                  beq          sp, a3, 197f
                  sra          s0, t5, t6
                  beq          s8, a0, 202f
                  and          zero, s4, tp
197:              slti         t0, sp, 487
                  addi         s7, t0, -1627
199:              andi         gp, t6, -297
                  or           s11, t3, a1
                  xori         a1, s4, -2022
202:              beq          t6, t2, 221f
                  nop
                  blt          a1, t2, 206f
                  addi         s4, zero, 881
206:              sll          sp, a6, t5
sub_2_13:         jal          s2, 12f
0:                jal          ra, 10f
1:                jal          ra, 8f
2:                jal          s7, 1b
3:                jal          a7, 4f
4:                jal          t2, 13f
5:                jal          t1, 0b
6:                jal          a7, 2b
7:                jal          ra, 3b
8:                jal          ra, 7b
9:                jal          ra, 14f
10:               jal          t3, 11f
11:               jal          ra, 6b
12:               jal          t1, 5b
13:               jal          t2, 9b
14:               srai         a7, tp, 1
                  lui          s2, 11083
                  add          a6, a0, s4
                  slli         s11, s11, 28
                  bgeu         s4, a0, 222f
                  srl          s5, t3, s10
                  andi         zero, a6, -1307
                  add          t6, a3, s7
                  slli         s3, s7, 24
                  sltiu        a4, s4, -1943
                  and          s10, t6, s8
                  slti         s0, t4, -1756
                  slti         a3, s7, -1893
                  slli         s11, t2, 20
                  sltiu        gp, a3, 882
221:              ori          s0, gp, 313
222:              lui          t4, 492269
                  blt          a0, sp, 241f
                  nop
                  srli         t1, a1, 21
                  xor          s9, s8, a0
                  ori          zero, a0, 305
                  and          s2, s9, s3
                  or           s8, a1, s4
                  nop
                  addi         gp, a2, 491
                  sll          s1, tp, t0
                  sub          s7, s8, s3
                  bge          t3, t0, 250f
                  lui          t0, 415280
                  slt          t3, t5, s7
                  srai         s2, a7, 29
                  xori         s6, zero, -918
                  slti         ra, s6, 378
                  and          t4, zero, gp
241:              bne          a6, a0, 249f
                  srai         gp, s0, 30
                  slt          t0, t3, s8
                  slt          zero, s4, a1
                  addi         s0, s6, 815
                  bgeu         tp, s2, 263f
                  nop
                  sltu         t6, s9, gp
249:              ori          s3, s1, -1894
250:              beq          s7, s6, 258f
                  xori         s10, t0, -448
                  sll          s1, s2, a0
                  and          t3, zero, zero
                  srl          a3, s6, a3
                  add          s3, zero, s4
                  add          t0, gp, a2
                  addi         zero, s2, 959
258:              bge          t4, tp, 269f
                  xor          t3, a1, s10
                  or           s10, a6, a0
                  andi         a6, t6, 939
                  and          a6, a7, s7
263:              beq          s1, ra, 278f
                  sll          a0, a3, s2
                  addi         zero, a1, 338
                  xori         zero, s8, -577
                  lui          s6, 877629
                  xor          a0, a4, t6
269:              slt          s3, a0, t5
                  bne          s5, a4, 283f
                  bltu         gp, sp, 290f
                  lui          s9, 875889
                  bltu         t4, t3, 276f
                  xor          a0, zero, sp
                  addi         gp, ra, 31
276:              andi         a1, gp, -249
                  bltu         s5, t4, 285f
278:              bgeu         s3, s6, 285f
                  and          s6, a4, t2
                  bne          tp, t3, 290f
                  beq          s8, gp, 290f
                  beq          a3, t6, 289f
283:              ori          ra, a0, -110
                  andi         a6, t2, 1722
285:              nop
                  srai         a1, ra, 28
                  nop
                  srai         a1, zero, 28
289:              slt          s7, t6, t6
290:              sub          s5, ra, s3
                  sll          s10, t6, s2
                  ori          zero, ra, -967
                  slti         s1, a6, 1709
                  bne          a3, t0, 311f
                  xori         sp, t6, 1184
                  lui          a7, 390900
                  srai         a0, t2, 27
                  addi         a4, s2, -1687
                  slt          t1, t1, s8
                  xor          zero, s5, s3
                  sub          s5, ra, s3
                  and          sp, s2, t4
                  and          ra, s11, a5
                  lui          s10, 210882
                  bltu         t4, s2, 315f
                  add          t1, gp, a0
                  srai         a3, s2, 14
                  slt          a1, s0, a3
                  slt          s10, s8, s11
                  lui          s0, 45693
311:              bltu         t1, t6, 325f
                  beq          s1, s0, 324f
                  beq          s11, t6, 327f
                  ori          a6, t2, -1097
315:              slti         s4, a7, -761
                  add          s7, a6, zero
                  sll          s1, s3, s4
                  slti         gp, s5, -927
                  sltiu        t6, s1, 1356
                  srli         a3, s2, 20
                  or           s10, t0, a6
                  slli         a4, t6, 8
                  sra          zero, s7, t1
324:              sll          t0, s11, s8
325:              ori          s2, s10, -1665
                  xor          s10, zero, s9
327:              addi         s2, s1, -1062
                  blt          s10, t2, 345f
                  xor          s6, t1, s7
                  xor          t3, a6, t3
                  bgeu         t1, t4, 350f
                  srl          s7, s8, a6
                  srl          gp, s10, s3
                  auipc        a4, 836214
                  bgeu         s10, tp, 352f
                  xor          a5, t6, s11
                  add          sp, s3, sp
                  sra          a1, s6, s4
                  slli         s7, s11, 21
                  slt          t3, tp, t5
                  andi         s3, zero, -1920
                  nop
                  nop
                  xor          s7, s11, s4
345:              slli         sp, a0, 24
                  add          s6, a7, t4
                  xori         t2, ra, 369
                  srli         t6, s5, 20
                  srai         a4, s2, 29
350:              xor          t4, s7, s1
                  ori          s9, s1, -1060
352:              or           t3, a7, s0
                  nop
                  lui          s8, 561323
                  xor          s11, s11, s3
                  sra          a7, s1, t1
                  beq          s5, sp, 365f
                  sll          t2, s3, a4
                  slli         s7, zero, 14
                  or           s3, s8, t5
                  bgeu         a5, s0, 376f
                  lui          a3, 445294
                  xori         t2, s5, 276
                  and          s10, s6, a3
365:              sub          a6, a6, s0
                  bne          t3, s5, 379f
                  or           s7, a1, a4
                  add          a0, s8, tp
                  slt          s6, ra, s2
                  and          sp, s2, t2
                  sub          t6, a2, t1
                  xori         s6, s5, 1030
                  bne          t0, s10, 375f
                  and          s9, s3, t5
375:              slti         s9, t1, -436
376:              lui          s9, 274819
                  bge          a0, a4, 389f
                  ori          s0, t5, -1528
379:              nop
                  xor          s4, s1, s1
                  andi         t6, s10, 1950
                  bge          ra, a4, 385f
                  sub          t1, gp, s11
                  xori         zero, a1, -1662
385:              srli         s9, gp, 6
                  add          s5, s8, s6
                  lui          a4, 809765
                  slti         ra, t0, -1591
389:              slli         s5, t3, 26
                  andi         zero, a6, 777
                  sra          a1, t2, zero
                  bge          s5, t3, 398f
                  lui          t6, 190977
                  srai         s0, zero, 7
                  or           s10, s10, a4
                  srai         a5, s11, 5
                  slti         s3, s7, -577
398:              or           t1, s9, s0
                  sltiu        s7, t2, 1508
                  add          a0, s10, ra
                  bne          s6, tp, 412f
                  bgeu         gp, s10, 406f
                  blt          a0, t1, 419f
                  srai         s5, ra, 24
                  nop
406:              andi         s3, a0, 1178
                  bltu         a3, zero, 412f
                  addi         s3, s5, -1239
                  ori          zero, s2, -1444
                  srai         a5, t3, 5
                  sub          a7, t4, s7
412:              lui          t3, 976581
                  lui          a5, 542908
                  sra          s6, t6, s9
                  sltu         t6, t0, ra
                  and          a0, a1, s9
                  xor          t2, a7, t4
                  slt          s0, t0, t5
419:              beq          s10, t2, 431f
                  ori          s8, a1, 411
                  xori         s4, s3, -1765
                  or           ra, s0, ra
                  sltu         a7, t2, s4
                  beq          t6, t1, 432f
                  sltu         s4, s7, s9
                  sll          s8, s8, t5
                  sub          t1, t6, t3
                  bgeu         s6, s6, 436f
                  slt          a3, s3, s8
                  add          t4, s3, a4
431:              slti         a3, s11, 350
432:              bne          a0, ra, 450f
                  sll          s7, t0, a7
                  sltu         t2, s4, s0
                  bgeu         a1, t3, 444f
436:              lui          s7, 247226
                  bgeu         s1, a3, 456f
                  bge          s4, s5, 448f
                  blt          a3, s3, 453f
                  and          t0, t3, a3
                  blt          s0, t3, 448f
                  srl          s10, a1, t1
                  sra          s10, s5, t1
444:              xori         gp, a6, 1731
                  srl          a5, t2, sp
                  or           t3, s2, t6
                  sub          sp, ra, t6
448:              sra          a7, a7, t1
                  bne          s6, s4, 454f
450:              lui          s10, 896797
                  or           s4, a5, zero
                  slli         s7, t6, 7
453:              bge          t0, a6, 461f
454:              sub          s0, s4, s1
                  slt          s8, s7, tp
456:              nop
                  beq          s9, t6, 463f
                  slt          s10, tp, a0
                  sltu         zero, s10, a2
                  xori         s0, s0, 1352
461:              srl          a0, t5, gp
                  bne          s7, s8, 469f
463:              slti         s2, s1, -1617
                  sll          a0, s2, a5
                  xori         s7, s4, 1719
                  slti         t3, a3, 541
                  srli         ra, t1, 4
                  bge          t6, s11, 478f
469:              sll          s8, t6, a0
                  slli         s6, s1, 14
                  sub          t3, t3, ra
                  bge          s1, s0, 479f
                  lui          a6, 797831
                  and          s5, s3, gp
                  srl          s8, t1, s1
                  and          s1, a2, s7
                  slti         a5, s0, -1123
478:              bge          a0, a5, 483f
479:              addi         a1, a0, 327
                  bne          a1, a1, 482f
                  bltu         t6, a2, 491f
482:              auipc        a0, 701183
483:              slli         t2, t1, 24
                  xor          t0, s6, a4
                  xori         s1, t4, -552
                  ori          ra, t2, -1894
                  xori         s4, s6, -1492
                  bgeu         ra, sp, 495f
                  nop
                  beq          a1, s8, 509f
491:              sltiu        gp, s10, 1481
                  lui          s5, 275398
                  bgeu         a5, sp, 501f
                  sltu         s7, s1, s11
495:              add          s2, s6, s6
                  or           a5, a1, s10
                  bge          t3, ra, 506f
                  add          a7, s10, s0
                  slti         a6, t2, 979
                  srli         a0, s2, 24
501:              srl          a1, s8, tp
                  sll          a0, s3, t1
                  srli         a3, t4, 27
                  srai         t1, s11, 9
                  xori         t4, t4, -1432
506:              xori         s8, zero, -1232
                  lui          a7, 212355
                  sub          s7, s7, t3
509:              add          t0, a7, s0
                  andi         s3, a2, -1979
                  add          s1, t1, a5
                  auipc        s10, 216713
                  ori          a1, s1, -1036
                  auipc        s3, 384156
                  sub          s2, zero, a3
                  bge          t0, s7, 523f
                  srai         t1, t3, 4
                  ori          s11, a4, -387
                  slli         s7, s9, 17
                  sltiu        s7, s9, 760
                  add          a1, a6, s8
                  slli         s8, s1, 30
523:              bne          s7, a5, 530f
                  bge          s3, t0, 532f
                  sltu         zero, sp, gp
                  bltu         a1, s8, 531f
                  bge          a6, ra, 530f
                  sra          s6, t4, sp
                  blt          t5, s3, 546f
530:              sra          t1, s5, gp
531:              sra          s5, tp, s1
532:              bltu         s4, t5, 538f
                  or           ra, t1, s7
                  sltiu        s8, a3, 896
                  auipc        t6, 1015898
                  beq          a7, s11, 542f
                  lui          t2, 386911
538:              and          s2, a4, t4
                  bge          ra, zero, 558f
                  sll          a7, t5, s11
                  beq          s3, a7, 545f
542:              bne          s1, s2, 553f
                  or           s7, t2, s8
                  sra          s6, s11, s4
545:              sll          t4, s1, t0
546:              bgeu         s1, a5, 561f
                  bltu         t5, s8, 559f
                  sltu         a1, t2, t6
                  sub          t3, t6, a0
                  sra          a3, t2, gp
                  lui          t1, 731504
                  srli         s2, s0, 12
553:              srl          s6, a1, s7
                  bge          s0, a1, 562f
                  srli         t1, t6, 28
                  bgeu         t4, tp, 570f
                  nop
558:              or           t1, s10, t5
559:              sltu         s5, s8, a7
                  andi         s10, a1, 2
561:              ori          s8, s7, 967
562:              ori          a1, s3, -1193
                  sll          t4, a2, s9
                  slt          ra, s10, a5
                  add          t2, s8, a7
                  srl          s3, a7, ra
                  sub          sp, a2, a0
                  bltu         zero, gp, 584f
                  xori         a7, t4, -149
570:              srli         a5, a4, 29
                  bgeu         a1, a2, 589f
                  bgeu         s6, s5, 580f
                  auipc        s11, 492099
                  slti         gp, s10, 241
                  auipc        a6, 136448
                  bltu         s2, zero, 588f
                  bge          s6, t4, 587f
                  sub          s0, a0, s5
                  auipc        s3, 876267
580:              srai         t1, t6, 30
                  addi         s6, t3, 497
                  beq          s6, a7, 599f
                  srai         s4, t6, 6
584:              ori          a3, s10, 1319
                  bne          a5, a7, 598f
                  add          sp, a0, s3
587:              bne          sp, s9, 601f
588:              xor          s2, s10, s4
589:              bgeu         t5, s0, 594f
                  bge          ra, a0, 609f
                  nop
                  auipc        a1, 74929
                  bltu         t5, t0, 606f
594:              xor          a4, s3, ra
                  bgeu         s1, a1, 600f
                  sra          s8, s11, t1
                  sltiu        s10, t4, -1098
598:              lui          t0, 517183
599:              srai         s3, gp, 23
600:              blt          zero, a1, 617f
601:              xor          a5, a0, s9
                  xor          ra, a4, a1
                  slti         t0, s6, -338
                  sltiu        s4, tp, -199
                  bgeu         s6, a4, 615f
606:              sll          s5, s7, s4
                  sra          s7, s9, a4
                  sll          s6, a2, sp
609:              sltiu        t1, a0, -1152
                  sra          s4, zero, a4
                  srl          s10, a0, s8
                  srai         gp, a7, 2
                  andi         t4, tp, 1484
                  bge          a6, a1, 633f
615:              xori         t2, ra, 97
                  sub          a1, s3, t5
617:              auipc        t1, 1036693
                  bgeu         gp, ra, 632f
                  srli         a3, t0, 17
                  beq          ra, a5, 628f
                  add          s7, gp, s9
                  srli         t2, t6, 0
                  bgeu         a1, a2, 631f
                  lui          s7, 378392
                  sra          zero, s6, s3
                  sltu         s3, s5, a0
                  blt          tp, s5, 639f
628:              slt          s5, t5, s0
                  blt          t1, s6, 640f
                  srl          a3, t5, sp
631:              srai         t0, s10, 26
632:              blt          sp, t6, 644f
633:              bne          tp, t5, 636f
                  sub          s6, t2, s8
                  nop
636:              nop
                  slti         a6, a4, 216
                  sub          a7, t0, a6
639:              addi         s9, s3, -1381
640:              addi         t3, a4, 1096
                  add          a7, s5, s8
                  addi         t3, a5, -840
                  bltu         a5, a0, 660f
644:              ori          sp, t0, 1223
                  andi         t0, s9, -6
                  addi         s8, t1, 751
                  and          s8, a2, t1
                  ori          a7, s4, -346
                  andi         s1, tp, -403
                  beq          s4, s10, 665f
                  slti         a5, s6, 791
                  bne          t3, t6, 661f
                  beq          a4, t6, 661f
                  sra          t3, a2, s4
                  sll          s11, a0, s9
                  andi         s8, tp, -427
                  nop
                  srli         s7, a6, 10
                  bge          s2, s0, 666f
660:              add          gp, s0, a0
661:              and          sp, s2, a3
                  xor          a6, sp, a6
                  andi         gp, t4, 1622
                  xori         t3, s2, -1078
665:              slti         a3, s3, -1123
666:              beq          a0, s9, 670f
                  lui          s8, 441920
                  slti         a4, t4, 1784
                  xori         s3, a0, -1139
670:              xor          a0, s11, s7
                  sra          s10, t0, a4
                  xor          s3, zero, s7
                  sub          s4, s8, gp
                  sltiu        t6, s6, -1649
                  srl          s4, t5, s9
sub_2_7:          jal          s2, 1f
0:                jal          ra, 11f
1:                jal          s8, 14f
2:                jal          ra, 13f
3:                jal          ra, 15f
4:                jal          s2, 5f
5:                jal          sp, 10f
6:                jal          t1, 7f
7:                jal          s3, 12f
8:                jal          t1, 4b
9:                jal          ra, 6b
10:               jal          a7, 2b
11:               jal          ra, 3b
12:               jal          a5, 0b
13:               jal          ra, 9b
14:               jal          ra, 8b
15:               or           sp, s9, t3
                  sub          a4, s0, t0
                  bltu         a4, a6, 685f
                  auipc        s11, 408706
                  addi         s8, s10, 365
                  auipc        s5, 588366
                  xori         a1, s3, 170
                  add          t2, s0, t0
                  sll          s11, sp, a5
                  srl          a7, sp, gp
685:              blt          ra, t6, 692f
                  srai         s8, s9, 13
                  bne          a3, s10, 689f
                  srl          t4, s9, s4
689:              nop
                  blt          zero, a7, 706f
                  bgeu         a0, t0, 705f
692:              sra          s2, zero, s10
                  bge          a0, t0, 711f
                  sra          a3, s1, a3
                  xor          t3, t1, s6
                  bge          a4, s1, 702f
                  sra          t3, a6, gp
                  srl          t2, t4, t6
                  addi         s8, t2, 156
                  lui          s10, 91833
                  sltiu        s4, a3, -820
702:              sltu         a5, sp, a0
                  srai         s11, s6, 9
                  sra          s2, s4, s8
705:              bge          t4, s3, 715f
706:              lui          a1, 367722
                  xor          sp, s5, s4
                  xor          gp, t1, s10
                  blt          s9, a4, 716f
                  add          t4, ra, a3
711:              bltu         tp, a0, 717f
                  sub          a0, a5, t6
                  srl          t4, a4, a4
                  srl          s7, t4, s9
715:              addi         a5, t6, -1793
716:              beq          a5, a6, 733f
717:              auipc        s3, 305203
                  sra          t6, gp, t5
                  srai         s6, a1, 20
                  sub          a1, s11, s10
                  bltu         s6, s4, 725f
                  addi         s10, zero, -809
                  xori         s9, s1, 1013
                  slli         t6, a4, 25
725:              bgeu         s4, s6, 731f
                  auipc        t3, 370170
                  bge          a1, a1, 733f
                  andi         s11, sp, -939
                  sltu         s8, a0, gp
                  and          s0, t5, s8
731:              srai         s2, t1, 17
                  ori          a5, s9, 342
733:              nop
                  sub          t4, a5, t6
                  srai         t2, s11, 18
                  srai         sp, s10, 15
                  srai         t1, t3, 28
                  slt          s9, t0, t1
                  and          s5, a7, a3
                  srli         s5, s0, 7
                  sltiu        ra, s0, -455
                  sra          zero, t6, t0
                  ori          t0, a4, -1776
                  xori         a0, tp, 718
                  bge          s6, s6, 756f
                  sll          s9, t3, t6
                  srl          s11, s3, a5
                  srl          s1, a4, t0
                  bne          s10, t1, 765f
                  sltu         s8, s4, s6
                  addi         s9, s6, 1661
                  andi         a0, a0, -1727
                  add          s4, s11, s6
                  bge          a5, s7, 771f
                  sltu         s11, s8, a3
756:              sltu         s9, s10, t6
                  srli         s4, s6, 23
                  bltu         s3, zero, 760f
                  slt          t2, a1, s6
760:              slti         s10, tp, 40
                  andi         a1, s5, 34
                  or           a5, s6, s4
                  srli         t3, s2, 10
                  xor          gp, a5, s1
765:              ori          t4, s10, -298
                  slt          s6, gp, s0
                  bltu         a7, t6, 777f
                  or           a3, t6, t3
                  bne          a2, s2, 779f
                  sub          a6, s2, t2
771:              srl          zero, tp, t4
                  bne          sp, s5, 780f
                  bltu         s6, a7, 787f
                  and          a5, s5, a6
                  and          s7, s11, s10
                  and          s2, a4, t0
777:              nop
                  xor          t2, a7, s3
779:              bge          a2, tp, 786f
780:              srli         gp, a3, 20
                  auipc        a3, 311930
                  beq          zero, s1, 796f
                  sll          s10, s0, s0
                  andi         a1, a5, -1649
                  bge          zero, s10, 792f
786:              addi         s1, a3, -797
787:              bne          a7, s2, 805f
                  and          t0, s9, s11
                  nop
                  sll          a3, s3, a2
                  add          s9, s11, t0
792:              sltiu        sp, s3, -278
                  and          t4, s11, a4
                  srli         t2, s6, 18
                  beq          s7, a7, 802f
796:              sub          gp, t3, ra
                  srli         s6, zero, 12
                  sub          t4, s8, a6
                  blt          a4, a3, 807f
                  sll          gp, s4, t1
                  nop
802:              bltu         s6, s1, 810f
                  sll          a1, a3, a2
                  or           s3, ra, s4
805:              xor          s2, a7, t6
                  sltu         s4, s8, s11
807:              or           a3, t5, t1
                  bltu         s8, a5, 827f
                  xori         zero, a5, 1813
810:              sll          a4, t1, s4
                  slt          s8, s3, t6
                  nop
                  xor          a5, a2, a1
                  nop
                  bltu         s5, s7, 824f
                  sub          s6, a2, a3
                  lui          a7, 791082
                  sltiu        a4, t3, -1095
                  xori         zero, s4, 364
                  bne          s8, s9, 823f
                  ori          t0, t1, 1127
                  andi         s4, a5, 922
823:              sub          a3, ra, s6
824:              slli         t0, a2, 24
                  slli         s0, zero, 24
                  srl          s5, a3, a0
827:              sub          s6, s11, a7
                  ori          s10, s8, 1819
                  blt          a1, t0, 837f
                  xor          a3, t6, t2
                  sltu         t0, s8, a0
                  slti         zero, t1, 11
                  slli         s1, t5, 22
                  lui          s7, 658876
                  sltiu        s4, a0, 1603
                  bne          tp, a6, 841f
837:              srai         s3, s2, 28
                  srli         s6, a2, 13
                  sra          zero, a7, s1
                  and          s5, t2, tp
841:              srli         a1, s10, 5
                  andi         a3, tp, -1467
                  ori          sp, t1, -1508
                  or           t0, t1, a1
                  and          s5, s1, s3
                  beq          a6, s6, 858f
                  xori         s9, gp, -1777
                  bltu         t2, sp, 863f
                  sub          a6, tp, a1
                  bgeu         s2, t1, 869f
                  slt          a7, t5, a4
                  bgeu         s1, s3, 865f
                  andi         a5, a2, -1536
                  bgeu         t0, a0, 859f
                  or           a3, s10, s8
                  srli         a1, tp, 1
                  srli         s6, s10, 5
858:              sltu         s1, gp, a1
859:              sll          t6, tp, a3
                  andi         ra, s10, 260
                  or           s7, s11, s10
                  bge          s7, s4, 874f
863:              ori          s1, sp, -1444
                  slti         ra, a3, -705
865:              xori         s9, s11, -1400
                  andi         t1, sp, -1133
                  srai         a5, ra, 26
                  sltu         s8, a3, t2
869:              ori          s2, a7, -1174
                  blt          ra, t4, 881f
                  slti         s3, s5, -1462
                  addi         ra, s0, 881
                  sltiu        a0, s0, 730
874:              nop
                  or           a6, t0, s6
                  auipc        s3, 383486
                  srai         a4, a1, 7
                  xor          t0, sp, tp
                  srl          a1, gp, a7
                  bne          s5, s1, 886f
881:              lui          s8, 26004
                  add          s10, s3, a6
                  blt          s4, a4, 896f
                  slli         a1, t1, 29
                  srli         s8, s7, 4
886:              slt          t1, a3, ra
                  andi         gp, s4, 895
                  and          s11, a1, t2
                  beq          sp, s3, 897f
                  auipc        t1, 804823
                  slt          t2, a6, t0
                  sltiu        a5, a0, -1710
                  blt          t6, t3, 900f
                  bltu         t4, tp, 910f
                  bge          s4, t0, 903f
896:              srli         t3, s2, 26
897:              bltu         s11, a6, 907f
                  slli         t3, t4, 20
                  slt          t2, s4, s3
900:              and          a3, t4, t6
                  andi         s7, a4, -855
                  blt          sp, s2, 921f
903:              slt          t0, s4, s7
                  nop
                  beq          a6, s0, 917f
                  blt          a5, a3, 915f
907:              add          s6, a7, s0
                  slti         s6, zero, 1856
                  sltu         s7, a3, a5
910:              bne          t4, a2, 924f
                  andi         s0, s3, -1895
                  sub          zero, ra, s7
                  srl          ra, t5, t2
                  auipc        s5, 640054
915:              sub          zero, a7, s3
                  bne          a5, s10, 920f
917:              lui          t2, 428964
                  addi         t1, a5, 1050
                  srai         s11, s10, 1
920:              slti         s3, s2, 1156
921:              slt          t1, s8, ra
                  xori         zero, sp, -1837
                  bge          t1, t5, 928f
924:              bge          s7, s8, 932f
                  sltu         gp, a4, t0
                  lui          t2, 318701
                  ori          s7, t2, 1579
928:              bltu         zero, t2, 934f
                  slli         s4, a6, 17
                  srai         s8, s2, 13
                  sltu         t6, zero, a3
932:              addi         s2, sp, -473
                  nop
934:              slt          s2, t4, s4
                  auipc        s10, 900643
                  sltiu        t2, ra, 1847
                  ori          t1, s7, 2040
                  bne          a6, a1, 948f
                  sltu         t2, s3, t1
                  beq          tp, a1, 943f
                  bne          s5, a0, 943f
                  srai         s6, s9, 27
943:              ori          t3, a0, 624
                  lui          a1, 454355
                  bne          gp, t1, 963f
                  slt          sp, a3, s9
                  srl          s11, s6, a7
948:              sub          s4, t2, s0
                  lui          gp, 25281
                  bne          t1, t3, 957f
                  srli         t6, t3, 29
                  lui          s2, 841129
                  sll          a1, a6, ra
                  xor          t0, t2, gp
                  add          s8, a0, t3
                  bge          ra, t3, 973f
957:              nop
                  andi         s0, tp, -139
                  slti         a4, s6, 852
                  xori         s11, s6, -1816
                  sra          zero, a1, s9
                  beq          a4, a2, 974f
963:              sra          s6, t1, t0
                  slt          sp, t2, s5
                  slti         t2, a5, 1564
                  sll          a4, a3, s2
                  andi         s0, t5, -436
                  addi         a4, s3, 931
                  addi         s11, t5, -1403
                  beq          s8, t5, 977f
                  bltu         s4, t5, 979f
                  bge          t3, ra, 987f
973:              slti         s5, s3, 480
974:              add          gp, a4, zero
                  or           s7, ra, zero
                  ori          a0, a6, 498
977:              sub          s8, sp, t1
                  ori          sp, a5, 1479
979:              sll          s6, s0, a4
                  xori         s2, a1, 1410
                  slt          t4, t4, s8
                  bgeu         ra, zero, 999f
                  bltu         t5, s9, 997f
                  addi         s11, t0, 911
                  bgeu         t5, a3, 1004f
                  slti         s10, s6, -1374
987:              sltu         s11, t5, t1
                  xor          a5, t2, t5
                  sltu         s4, a3, a6
                  srai         sp, a4, 25
                  ori          s9, a3, 650
                  xor          ra, t4, a6
sub_2_22:         jal          s2, 18f
0:                jal          a6, 8f
1:                jal          ra, 0b
2:                jal          ra, 15f
3:                jal          ra, 1b
4:                jal          ra, 2b
5:                jal          t1, 17f
6:                jal          t4, 19f
7:                jal          s5, 3b
8:                jal          t6, 4b
9:                jal          s9, 16f
10:               jal          ra, 6b
11:               jal          t1, 7b
12:               jal          ra, 5b
13:               jal          t1, 9b
14:               jal          ra, 13b
15:               jal          t1, 10b
16:               jal          ra, 12b
17:               jal          t6, 11b
18:               jal          a0, 14b
19:               sub          a6, s11, s2
                  add          s3, s3, t0
                  ori          s3, a3, 1370
                  bne          a7, gp, 1000f
                  bge          t3, t5, 1015f
997:              sub          t3, a1, t3
                  beq          zero, t3, 1004f
999:              and          s9, zero, t3
1000:             sltu         s1, a6, s1
                  or           a5, a2, s5
                  bgeu         a0, a2, 1016f
                  auipc        s10, 310611
1004:             slt          zero, t5, a1
                  sll          a1, s11, a5
                  xor          t0, t4, t1
                  sra          a0, s8, t5
                  srl          s6, s7, ra
                  slt          t1, s6, a7
                  beq          s11, tp, 1022f
                  sll          s6, a1, s5
                  bltu         s0, s1, 1023f
                  bge          s10, s9, 1018f
                  or           sp, s11, gp
1015:             slt          a6, a1, a7
1016:             auipc        s0, 199319
                  blt          a4, a3, 1019f
1018:             sltu         t2, t3, sp
1019:             bge          t1, s0, 1022f
                  xori         s1, s8, 1079
                  auipc        t3, 893773
1022:             bltu         s0, t1, 1027f
1023:             lui          zero, 301533
                  lui          t4, 675973
                  xor          s8, zero, a5
                  sltu         s9, s4, t1
1027:             bgeu         t0, t6, 1034f
                  sll          s6, a3, t6
                  add          a6, t3, a0
                  srli         zero, t2, 13
                  blt          s7, t3, 1048f
                  sll          s8, t5, t6
                  beq          t5, s0, 1048f
1034:             xori         s2, t6, 784
                  add          s6, s2, s0
                  slt          a6, ra, s5
                  slt          t6, t1, tp
                  slt          s2, a0, t6
                  sltu         gp, s2, a6
                  or           s8, a2, s8
                  and          t0, s3, a0
                  xor          t4, t2, s7
                  sra          a6, a6, s5
                  srli         s1, a3, 4
                  lui          t3, 304100
                  sub          sp, s2, s5
                  sltu         s5, s2, s2
1048:             blt          t3, s8, 1056f
                  xor          t0, a0, s4
                  srai         t0, s10, 3
                  addi         s3, s0, 447
                  srai         s6, s5, 31
                  xor          t0, t5, s7
                  bltu         t3, ra, 1073f
                  xori         ra, ra, -844
1056:             auipc        t4, 919502
                  nop
                  srai         a6, t2, 11
                  srli         a6, a4, 4
                  andi         a5, a2, 1150
                  bge          a0, s5, 1070f
                  sra          s2, s2, s3
                  xor          s7, t1, s7
                  lui          sp, 940932
                  blt          a1, s10, 1072f
                  sltu         s6, s10, s5
                  bge          s4, a3, 1084f
                  sltiu        s7, a4, 484
                  bgeu         s2, sp, 1087f
1070:             slli         s9, t3, 5
                  and          a5, a1, a7
1072:             beq          s1, s7, 1078f
1073:             bne          s5, s6, 1083f
                  srl          t4, t0, s9
                  nop
                  bne          tp, s6, 1084f
                  bne          t6, t2, 1081f
1078:             srl          s2, a2, t0
                  nop
                  ori          s7, a5, -577
1081:             slli         s11, s2, 30
                  lui          a4, 785947
1083:             or           a4, s7, zero
1084:             sltu         t4, a3, gp
                  xori         s7, s7, -1379
                  srl          t6, a5, a3
1087:             sltiu        gp, t6, 1174
                  add          t1, t0, s10
                  bne          gp, gp, 1102f
                  auipc        a5, 449759
                  sra          s8, s5, s6
                  blt          a5, t4, 1100f
                  slli         sp, t5, 3
                  srl          s11, t3, s10
                  sltiu        a4, gp, 1783
                  slti         zero, a3, 1073
                  srai         s3, a3, 23
                  xor          zero, zero, a3
                  bltu         ra, t4, 1111f
1100:             slti         t2, a1, 518
                  slli         a1, ra, 1
1102:             addi         s7, s6, -689
                  sltu         a0, a4, s6
                  srli         t4, ra, 15
                  sll          a4, ra, a4
                  sll          a6, a2, a2
                  slti         s11, a5, -374
                  srli         a6, zero, 25
                  add          t1, a6, s0
                  slli         s2, t4, 3
1111:             or           sp, a3, a3
                  sub          ra, s8, s9
                  slli         s9, zero, 29
                  blt          a0, t5, 1121f
                  lui          t2, 465821
                  addi         s8, a5, 332
                  and          a1, t0, a7
                  or           a1, s11, s11
                  and          s3, a2, s1
                  sll          t3, s6, s9
1121:             auipc        s3, 631227
                  blt          s2, t2, 1138f
                  or           s6, t3, t4
                  bge          a5, s10, 1134f
                  slti         s3, a5, -1675
                  bgeu         gp, a4, 1140f
                  slli         a1, a0, 13
                  xor          s3, s2, t5
                  andi         a0, a1, 655
                  ori          a1, t0, 1751
                  slti         t6, tp, 778
                  xor          sp, s0, s0
                  beq          s3, a1, 1141f
1134:             beq          a7, s2, 1141f
                  or           a3, s9, a4
                  ori          sp, a5, -927
                  sltiu        s2, ra, -681
1138:             slti         t3, s8, 391
                  bge          s2, t2, 1153f
1140:             srl          s7, ra, s2
1141:             auipc        t3, 317114
                  beq          a1, a1, 1156f
                  nop
                  blt          tp, t2, 1152f
                  bne          s11, a4, 1149f
                  slt          s0, zero, s9
                  srl          s2, t2, a2
                  slti         a1, s7, -700
1149:             slt          s5, s3, t3
                  and          s2, a4, s0
                  sra          s6, s1, sp
1152:             bltu         a4, t4, 1165f
1153:             sll          t2, a0, s5
                  slti         t1, s1, 1705
                  bgeu         t6, s2, 1174f
1156:             bge          a4, s8, 1164f
                  beq          a6, t3, 1174f
                  sll          s0, ra, t1
                  sub          a1, tp, sp
                  or           s2, s9, t4
                  srli         t1, a2, 0
                  xori         t0, a5, 729
                  beq          s5, t6, 1166f
1164:             lui          gp, 734369
1165:             slli         t0, a2, 16
1166:             srl          zero, s3, t0
                  slti         zero, t5, 414
                  srai         s8, s3, 27
                  xor          s2, a2, s5
                  sub          a1, a6, a1
                  addi         s5, s3, 1490
                  bltu         a3, t3, 1180f
                  bltu         ra, a1, 1191f
1174:             andi         t1, s6, 156
                  nop
                  blt          t2, zero, 1192f
                  nop
                  slt          a4, a6, t2
                  auipc        s11, 819981
1180:             sltiu        zero, a7, 1577
                  srl          t6, s10, a6
                  sub          t6, a4, a6
sub_2_18:         jal          s2, 5f
0:                jal          t1, 8f
1:                jal          a4, 10f
2:                jal          ra, 11f
3:                jal          t1, 2b
4:                jal          a4, 9f
5:                jal          ra, 1b
6:                jal          ra, 7f
7:                jal          ra, 12f
8:                jal          ra, 4b
9:                jal          t6, 6b
10:               jal          sp, 3b
11:               jal          sp, 0b
12:               xori         t2, tp, 1926
                  andi         a1, zero, 1777
                  sltiu        s1, s5, -1043
                  ori          t0, a3, 1057
                  bne          gp, s2, 1196f
                  add          s11, s1, t4
                  srli         t3, s6, 30
                  addi         zero, t6, -944
                  sra          s2, s9, a7
1191:             andi         s10, a5, 7
1192:             or           a7, a2, s0
                  andi         s9, sp, 863
                  add          a1, a3, t2
                  bgeu         a1, a4, 1212f
1196:             or           a1, a7, s10
                  xor          t6, a0, zero
                  sub          a7, s3, a1
                  sltiu        t0, ra, 1742
                  sll          a5, a5, a4
                  xori         s2, t4, -196
                  addi         t2, a5, -299
                  bne          a3, t4, 1211f
                  and          sp, a5, tp
                  auipc        s11, 187544
                  sltiu        a1, t2, 1795
                  auipc        a5, 5287
                  xori         t1, s10, 1327
                  srai         t0, s5, 23
                  xori         a1, s11, 1394
1211:             or           a4, s4, t4
1212:             or           s0, t0, t3
                  xor          zero, a6, sp
                  blt          a3, s0, 1219f
                  sltiu        a1, sp, 1496
                  andi         a5, s10, -1790
                  andi         s6, s9, 1845
                  addi         s0, s10, 397
1219:             srli         s3, t0, 29
                  lui          t4, 966181
                  bltu         s7, a7, 1233f
                  beq          s9, zero, 1227f
                  xori         s1, a2, -1841
                  bne          s6, t4, 1233f
                  srai         s11, a3, 20
                  addi         s11, t4, 591
1227:             bltu         t5, zero, 1237f
                  bge          zero, s1, 1230f
                  xori         s5, s11, 1725
1230:             slt          sp, a5, t1
                  xor          s4, a1, a6
sub_2_5:          jal          s2, 9f
0:                jal          s1, 11f
1:                jal          a6, 7f
2:                jal          a0, 12f
3:                jal          s0, 2b
4:                jal          ra, 14f
5:                jal          t1, 4b
6:                jal          t0, 1b
7:                jal          ra, 13f
8:                jal          s10, 6b
9:                jal          ra, 10f
10:               jal          t1, 3b
11:               jal          t1, 8b
12:               jal          ra, 0b
13:               jal          t1, 5b
14:               sltiu        s8, s2, 1335
                  addi         t0, a2, -1144
1233:             and          s4, s4, t5
                  bge          a3, a0, 1241f
                  srli         a7, t6, 16
                  srai         ra, s7, 2
1237:             srai         a7, s9, 3
                  bne          a7, a3, 1253f
                  sltu         s9, a0, a6
                  xor          s1, ra, a7
1241:             xor          a4, a2, a4
                  blt          gp, s10, 1249f
                  lui          s2, 918676
                  beq          zero, t3, 1256f
                  xori         a5, s11, -543
                  sltiu        a5, s7, -1346
                  addi         s8, zero, -585
                  beq          s4, s4, 1254f
1249:             nop
                  srl          s2, s8, s4
                  and          s7, a2, a4
                  sltu         a4, tp, a6
1253:             xori         s3, tp, 743
1254:             bge          zero, s5, 1273f
                  bne          s10, a5, 1266f
1256:             add          s9, t2, s9
                  srai         a3, t4, 21
                  slli         t2, s7, 28
                  lui          a7, 623409
                  bgeu         s1, zero, 1266f
                  sltu         s10, tp, s0
                  bge          s8, s7, 1269f
                  slli         s3, a5, 3
                  sra          a7, a6, t1
                  beq          s5, s6, 1279f
1266:             slt          t2, a3, a7
                  or           gp, a2, a1
                  slti         ra, s8, 80
1269:             beq          a3, ra, 1272f
                  or           s7, t0, t2
                  slt          s5, s5, t6
1272:             bltu         t1, s6, 1289f
1273:             or           t0, t5, s6
                  ori          t0, t5, 1165
                  bltu         s9, a3, 1287f
                  slli         a5, s10, 24
                  bltu         t3, t2, 1284f
                  slti         s1, t0, -662
1279:             slli         t3, s9, 6
                  sltu         a3, t2, sp
                  nop
                  lui          s1, 225561
                  auipc        s0, 119799
1284:             srl          s10, t3, s0
                  lui          a0, 213970
                  andi         a0, t2, 1251
1287:             sll          s0, tp, t5
                  nop
1289:             ori          t0, s6, -272
                  bgeu         t4, t5, 1295f
                  slt          ra, s6, a2
                  bne          s2, t6, 1297f
                  sll          s1, a3, a5
                  xor          t0, s1, s10
1295:             bge          s11, s4, 1310f
                  addi         s10, a1, -1815
1297:             xor          s8, s7, a3
                  bne          s1, s11, 1315f
                  or           a1, s4, t5
                  xor          t6, a0, t0
                  srli         a1, s9, 8
                  slti         a7, t2, -1112
                  xori         a6, t1, 20
                  auipc        s11, 563830
                  ori          t1, a1, -67
                  bgeu         s6, a0, 1320f
                  add          t6, s5, zero
                  andi         t1, a5, -575
                  and          t2, sp, tp
1310:             and          a1, s5, t3
                  andi         s6, a1, 195
                  bltu         a1, t6, 1320f
                  andi         a7, a6, 1458
                  srl          s8, gp, t3
1315:             xori         s6, s6, 749
                  sltu         a1, t3, sp
                  srli         gp, s4, 26
                  nop
                  auipc        t3, 224886
1320:             srl          ra, gp, sp
                  add          s9, t3, gp
                  srl          s6, s3, tp
                  slt          s5, s11, t3
                  bne          s1, s11, 1334f
                  sltiu        sp, sp, -70
                  srl          a5, gp, a2
                  bge          t6, a1, 1333f
                  bltu         a7, s4, 1337f
                  sltu         gp, a3, a3
                  slli         a1, a3, 23
                  or           sp, t2, a5
                  ori          gp, s11, 746
1333:             or           sp, t5, s11
1334:             add          t1, s4, s4
                  ori          s3, s9, 1462
                  sltiu        s3, t6, -1745
1337:             sltu         t4, t6, s10
                  lw           s2, 4(a2)
                  auipc        s3, 593317
                  sltiu        t0, a6, 908
                  slti         t6, t5, -1614
                  addi         a2, a2, 12
                  lui          s6, 4959
1857:             addi x10, x18, 0
1857:             jalr x10, x10, 0
sub_1:            srli         s5, t2, 3
                  addi         a2, a2, -56
                  sw           s2, 4(a2)
                  srli         a3, s11, 25
                  srli         s4, sp, 5
sub_1_4:          jal          s2, 11f
0:                jal          ra, 3f
1:                jal          s0, 10f
2:                jal          ra, 5f
3:                jal          t1, 9f
4:                jal          ra, 0b
5:                jal          ra, 15f
6:                jal          ra, 14f
7:                jal          s11, 6b
8:                jal          t1, 4b
9:                jal          t1, 2b
10:               jal          ra, 13f
11:               jal          ra, 1b
12:               jal          t1, 8b
13:               jal          ra, 7b
14:               jal          sp, 12b
15:               srai         s1, s0, 17
sub_1_7:          jal          s2, 16f
0:                jal          ra, 17f
1:                jal          ra, 3f
2:                jal          ra, 8f
3:                jal          ra, 14f
4:                jal          ra, 11f
5:                jal          ra, 6f
6:                jal          ra, 4b
7:                jal          ra, 10f
8:                jal          t1, 15f
9:                jal          t1, 2b
10:               jal          ra, 12f
11:               jal          ra, 9b
12:               jal          gp, 5b
13:               jal          ra, 7b
14:               jal          t6, 18f
15:               jal          ra, 0b
16:               jal          t1, 13b
17:               jal          ra, 1b
18:               addi         s3, a5, 1980
sub_1_3:          jal          s2, 12f
0:                jal          t6, 4f
1:                jal          ra, 15f
2:                jal          t1, 8f
3:                jal          sp, 16f
4:                jal          s1, 14f
5:                jal          ra, 13f
6:                jal          ra, 10f
7:                jal          t1, 5b
8:                jal          ra, 7b
9:                jal          ra, 17f
10:               jal          gp, 0b
11:               jal          ra, 9b
12:               jal          t6, 11b
13:               jal          t1, 18f
14:               jal          s10, 2b
15:               jal          ra, 6b
16:               jal          ra, 1b
17:               jal          ra, 3b
18:               srli         sp, t0, 20
sub_1_8:          jal          s2, 5f
0:                jal          ra, 4f
1:                jal          a1, 12f
2:                jal          sp, 11f
3:                jal          ra, 9f
4:                jal          ra, 3b
5:                jal          t1, 8f
6:                jal          ra, 10f
7:                jal          ra, 6b
8:                jal          t1, 2b
9:                jal          t1, 13f
10:               jal          ra, 0b
11:               jal          ra, 1b
12:               jal          ra, 7b
13:               sub          a6, a1, t5
sub_1_0:          jal          s2, 1f
0:                jal          s2, 17f
1:                jal          ra, 23f
2:                jal          ra, 18f
3:                jal          a4, 7f
4:                jal          t1, 10f
5:                jal          t1, 20f
6:                jal          ra, 2b
7:                jal          ra, 25f
8:                jal          ra, 22f
9:                jal          ra, 5b
10:               jal          ra, 21f
11:               jal          ra, 14f
12:               jal          ra, 26f
13:               jal          ra, 12b
14:               jal          t1, 16f
15:               jal          t0, 9b
16:               jal          t1, 13b
17:               jal          ra, 4b
18:               jal          ra, 11b
19:               jal          ra, 8b
20:               jal          t1, 19b
21:               jal          t1, 24f
22:               jal          a0, 6b
23:               jal          sp, 0b
24:               jal          ra, 3b
25:               jal          s3, 15b
26:               slti         a1, zero, 628
sub_1_1:          jal          s2, 11f
0:                jal          sp, 15f
1:                jal          ra, 6f
2:                jal          ra, 20f
3:                jal          ra, 10f
4:                jal          t1, 5f
5:                jal          a6, 18f
6:                jal          ra, 16f
7:                jal          ra, 8f
8:                jal          ra, 1b
9:                jal          t1, 13f
10:               jal          ra, 7b
11:               jal          ra, 0b
12:               jal          ra, 19f
13:               jal          ra, 4b
14:               jal          ra, 17f
15:               jal          a4, 14b
16:               jal          ra, 9b
17:               jal          ra, 12b
18:               jal          ra, 2b
19:               jal          s6, 3b
20:               xori         s8, a7, 428
sub_1_2:          jal          s2, 16f
0:                jal          ra, 10f
1:                jal          ra, 11f
2:                jal          t0, 7f
3:                jal          ra, 4f
4:                jal          ra, 1b
5:                jal          t1, 6f
6:                jal          ra, 18f
7:                jal          ra, 12f
8:                jal          ra, 2b
9:                jal          t1, 0b
10:               jal          ra, 8b
11:               jal          t1, 13f
12:               jal          ra, 15f
13:               jal          ra, 14f
14:               jal          ra, 17f
15:               jal          t1, 5b
16:               jal          ra, 3b
17:               jal          ra, 9b
18:               xor          s0, a4, gp
                  addi         a5, t0, 168
                  slli         s0, s4, 21
                  addi         s11, s7, -1696
                  add          a4, s5, t3
                  sltu         sp, a4, a0
                  sub          s6, t0, tp
                  slli         s1, t3, 25
                  srl          a0, gp, s4
                  srai         a7, a2, 10
                  lui          s9, 904607
                  srli         s6, gp, 20
                  slti         t2, s10, -303
                  srai         t6, a4, 16
                  sltiu        t4, sp, -525
                  andi         sp, s5, 471
                  ori          a6, s11, -1171
                  sltiu        sp, s7, -575
                  sll          a0, t5, a6
                  sll          s11, t4, s11
                  sub          a3, s8, a6
                  andi         s5, s8, 1535
                  bne          a7, s3, 34f
                  blt          t5, s9, 33f
                  xori         s4, t0, 1104
                  sltiu        s10, s4, -1387
                  bge          a3, gp, 34f
                  slti         s5, a5, -1438
                  sltu         s5, s6, t6
                  andi         a1, a2, 1477
                  addi         ra, s11, 1023
                  xori         a0, a7, -1325
                  xori         a4, t2, -1283
                  auipc        s1, 12270
33:               bne          a6, s5, 52f
34:               blt          a1, a7, 49f
                  bne          t3, t1, 39f
                  nop
                  sll          zero, s11, s8
                  sltiu        s8, s7, -882
39:               and          s5, a4, t3
                  andi         s1, s8, 637
                  add          s6, t5, t1
                  xor          gp, t1, a0
                  ori          s9, s3, 1902
                  nop
                  srli         sp, s8, 1
                  srl          s10, a1, s11
                  bltu         a2, s5, 61f
                  xor          s6, s1, t2
49:               slti         t2, t4, 1509
                  bne          tp, a7, 69f
                  auipc        a3, 1031396
52:               auipc        t3, 3090
                  srai         a4, s11, 4
                  xori         s6, ra, 1232
                  xori         a5, t6, 1279
                  ori          t6, a2, 1934
                  xor          a5, s4, ra
                  beq          sp, a2, 64f
                  and          s3, zero, gp
                  sltu         s8, tp, gp
61:               bge          a3, a0, 64f
                  lui          s8, 634522
                  add          a4, s1, s0
64:               blt          t4, t5, 78f
                  bltu         s1, s9, 76f
                  srli         sp, t3, 29
                  sll          t3, s3, s9
                  srl          ra, s8, t0
69:               xor          s4, t6, a3
                  slti         s0, t1, 1639
                  nop
                  ori          s6, zero, 1855
                  ori          s7, a1, -1983
                  slli         s0, s10, 24
                  slti         t2, s2, 1433
76:               bgeu         s11, ra, 77f
77:               xori         s9, t6, -938
78:               and          s5, s9, a6
                  lui          a0, 317904
                  ori          s4, s3, -1
                  slt          s4, t6, s6
                  nop
                  slti         s4, t1, 868
                  bne          t2, s5, 100f
                  bltu         s10, t6, 92f
                  sltu         s5, s2, a7
                  sltiu        a4, s8, -898
                  nop
                  bge          t0, s11, 94f
                  bge          s5, t1, 91f
91:               slt          sp, s8, s8
92:               slt          ra, ra, s10
                  lui          a0, 938508
94:               andi         s4, s8, 67
                  bne          t4, tp, 100f
                  bne          s0, tp, 108f
                  blt          t0, tp, 99f
                  srl          a1, s8, s6
99:               lui          a4, 323383
100:              andi         s0, zero, -1517
                  xor          s8, s7, a3
                  bge          a7, t0, 118f
                  srli         s11, s3, 13
                  srai         s6, sp, 27
                  sll          t0, ra, a4
                  or           a3, s4, zero
                  or           t4, t5, t2
108:              bgeu         s1, a5, 117f
                  nop
                  blt          t0, t5, 130f
                  bge          s9, sp, 122f
                  sltu         s7, a1, a1
                  andi         s0, s0, 586
                  srl          s1, s7, s0
                  xori         t6, sp, -204
                  sra          s7, s3, t0
117:              lui          s2, 557738
118:              auipc        s10, 867201
                  srl          s8, a3, a1
                  sra          t1, gp, t2
                  xori         s3, s1, -185
122:              sltiu        s2, s2, 1565
                  slti         s8, a0, 1826
                  srai         s6, a4, 0
                  ori          s1, sp, -593
                  slti         a7, a5, 139
                  sra          s4, a0, gp
                  bne          s3, a6, 130f
                  bne          s1, a6, 131f
130:              beq          ra, s11, 145f
131:              blt          s4, s5, 146f
                  sltu         a7, a6, tp
                  sll          t6, tp, t3
                  beq          s9, s10, 141f
                  sra          s4, a6, s9
                  bgeu         s6, a1, 141f
                  ori          t2, a4, 707
                  xor          t3, t6, s0
                  slt          a7, a4, s7
                  srai         t4, s2, 0
141:              xor          t3, t1, a2
                  blt          ra, a7, 161f
                  ori          s6, a1, -1561
                  slli         a0, a7, 14
145:              srli         a4, t2, 0
146:              auipc        s9, 137497
                  xor          s11, s2, gp
                  sltiu        a5, t4, -806
                  bne          zero, a0, 151f
                  or           t6, s0, s11
151:              srl          s6, a1, s2
                  bne          s8, s9, 159f
                  sltiu        s0, t3, -1675
                  add          zero, gp, s6
                  slt          s6, s10, s10
                  bge          t4, a2, 171f
                  beq          a7, ra, 170f
                  srai         s11, t3, 8
159:              bgeu         ra, s0, 164f
                  auipc        t3, 325332
161:              auipc        a5, 211508
                  lui          s6, 941499
                  slt          s0, t1, s4
164:              auipc        s0, 905912
                  sub          s8, s1, zero
                  lui          t4, 582735
                  xori         ra, t2, 1904
                  srai         t6, t5, 3
                  sub          a7, t4, a1
170:              lui          t3, 120771
171:              slti         s7, t6, 1548
                  sub          s4, a1, s3
                  xor          sp, s4, t5
                  nop
                  slti         s0, sp, -1214
                  srl          ra, a7, t4
                  slli         s10, sp, 10
                  bge          s3, s2, 179f
179:              sltu         t0, a3, s11
                  beq          s8, a7, 195f
                  bltu         s10, s2, 200f
                  bltu         t6, s10, 193f
                  sltu         t6, t3, zero
                  bne          a5, t5, 196f
                  sltu         s5, s3, t3
                  ori          a6, a4, 1135
                  and          sp, s11, s10
                  bge          s3, a2, 197f
                  bge          s1, s9, 192f
                  beq          s6, a1, 194f
                  sra          s11, t2, s7
192:              and          t4, s1, a5
193:              nop
194:              srl          s3, t2, a0
195:              bgeu         t1, t4, 210f
196:              sltiu        a4, t5, -77
197:              bge          a4, a3, 199f
                  bge          s9, s1, 209f
199:              addi         a0, t0, -569
200:              sra          s3, s9, t0
                  blt          s5, a0, 208f
                  lui          a3, 634680
                  bge          tp, t3, 205f
                  srai         s0, tp, 6
205:              srai         a3, zero, 11
                  srli         s3, t3, 7
                  lui          sp, 6488
208:              add          s1, t5, s11
209:              sll          s2, a2, a6
210:              bgeu         t2, s2, 224f
                  srai         s4, t3, 24
                  sub          a4, a1, s1
                  srl          gp, tp, t2
                  sra          a6, a1, s8
                  xori         s0, s6, 1221
                  ori          t6, s4, 517
                  bge          sp, a6, 222f
                  xor          a4, t0, a0
                  bge          a5, s3, 220f
220:              addi         gp, tp, -1437
                  slli         s2, s1, 31
222:              addi         a3, t3, -1544
                  bgeu         tp, a6, 229f
sub_1_6:          jal          s2, 24f
0:                jal          t0, 14f
1:                jal          ra, 20f
2:                jal          ra, 10f
3:                jal          s0, 12f
4:                jal          ra, 16f
5:                jal          t1, 1b
6:                jal          ra, 18f
7:                jal          s11, 15f
8:                jal          ra, 13f
9:                jal          ra, 8b
10:               jal          ra, 28f
11:               jal          ra, 5b
12:               jal          ra, 2b
13:               jal          ra, 25f
14:               jal          t1, 9b
15:               jal          a4, 11b
16:               jal          ra, 0b
17:               jal          t1, 19f
18:               jal          t1, 3b
19:               jal          ra, 23f
20:               jal          t0, 21f
21:               jal          t1, 27f
22:               jal          ra, 26f
23:               jal          ra, 7b
24:               jal          ra, 22b
25:               jal          t1, 17b
26:               jal          ra, 4b
27:               jal          ra, 6b
28:               sltu         t4, a5, a2
224:              lui          sp, 329605
                  slt          s10, t1, s0
                  xor          t2, tp, t1
                  bltu         s1, s1, 247f
                  lui          s2, 893398
229:              slli         s5, s11, 27
                  lui          gp, 739907
                  blt          s4, s10, 247f
                  bltu         s9, s4, 248f
                  or           t3, t2, a3
                  xor          s1, s10, zero
                  addi         s2, a3, 1268
                  bgeu         a5, a4, 241f
                  sub          s10, s2, zero
                  beq          a2, s4, 247f
                  sltiu        a6, a1, 653
                  srli         a5, t1, 7
241:              srai         s5, t4, 26
                  srli         s8, s10, 6
                  sltiu        zero, s1, 1508
                  blt          a6, s6, 255f
                  xor          sp, a5, zero
                  auipc        a1, 104102
247:              xor          a3, s10, s5
248:              lui          s3, 196109
                  bne          s11, s7, 263f
                  or           a3, a6, t0
                  and          s2, s10, zero
                  andi         sp, t3, -154
                  xori         t3, a6, 159
                  and          a1, s3, t2
255:              bne          s7, s6, 275f
                  sltu         gp, s10, a4
                  slli         s4, s5, 14
                  xori         a7, t3, 301
                  and          t0, a6, a5
                  add          a0, t3, zero
                  or           s5, a4, tp
                  beq          zero, t5, 263f
263:              srai         s9, gp, 27
                  slt          s2, s5, s6
                  bne          a7, s3, 272f
                  slti         t1, s5, -1802
                  slli         s10, gp, 9
                  bltu         t4, s4, 270f
                  andi         a1, t6, -259
270:              or           s0, a5, t5
                  and          t4, s1, s5
272:              slti         s9, t0, -376
                  nop
                  bge          s0, s11, 275f
275:              sub          a0, zero, tp
                  add          zero, tp, a2
                  bltu         s0, s9, 288f
                  xori         t0, s4, 182
                  blt          a1, s11, 295f
                  slt          a4, s10, a6
                  slli         s2, a7, 6
                  bgeu         s6, t6, 301f
                  bne          a5, a0, 294f
                  beq          s6, s1, 298f
                  slli         s7, s3, 4
                  srli         zero, tp, 20
                  slt          s1, a1, gp
288:              auipc        s0, 958359
                  ori          s2, a0, -82
                  or           a3, s7, a4
                  slti         s10, s5, -1064
                  blt          sp, s3, 297f
                  auipc        zero, 511305
294:              slt          a4, a7, s1
295:              slt          s5, a0, zero
                  xori         s0, gp, -1853
297:              slt          a3, s3, tp
298:              slli         s10, s4, 1
                  blt          s2, a4, 312f
                  ori          s5, gp, -618
301:              slli         t3, s9, 21
                  sltiu        a4, a5, 1041
                  ori          s0, s0, 1807
                  bne          s6, t6, 318f
                  slt          s8, s6, gp
                  bltu         s10, sp, 315f
                  srl          t6, t0, a1
                  ori          s7, s2, -1562
                  sra          a7, a7, s3
                  srl          a5, a1, s4
                  slli         a1, a7, 31
312:              sll          s9, a1, s1
                  beq          t3, a4, 320f
                  srl          gp, gp, s7
315:              andi         s7, s9, -1297
                  sltu         s11, sp, a3
                  blt          t1, s9, 320f
318:              add          t6, s3, a3
                  srli         a1, a2, 20
320:              nop
                  sll          zero, s5, s7
                  xori         a1, t3, 1109
                  bgeu         s3, a1, 328f
                  andi         gp, s0, 549
                  or           a1, s2, s5
                  bge          a7, tp, 345f
                  ori          s10, zero, -1050
328:              or           gp, t0, t2
                  ori          s1, s4, 68
                  srli         a1, t4, 16
                  sra          ra, t3, t6
                  add          t6, a0, a5
                  lui          s7, 680838
                  srai         s6, a2, 14
                  sltiu        s0, a4, -2031
                  beq          t4, s10, 338f
                  bgeu         s8, a2, 352f
338:              auipc        t4, 507118
                  ori          s10, s0, 431
                  xor          s5, s2, t3
                  addi         s8, gp, -413
                  lui          sp, 417370
                  or           s9, s8, a7
                  beq          a7, s3, 346f
345:              bltu         s8, zero, 357f
346:              slt          s10, t2, s0
                  sll          a0, a0, s4
                  or           s0, t0, t0
                  bge          s1, ra, 354f
                  sra          t0, gp, s5
                  add          s8, ra, a1
352:              add          s6, s6, a1
                  slli         s10, s2, 18
354:              bgeu         s5, a6, 370f
                  xori         a4, t3, -1854
                  slli         zero, gp, 3
357:              bgeu         sp, ra, 372f
                  srai         s2, s9, 9
                  xor          t4, s10, t6
                  addi         s7, t2, -1213
                  ori          ra, s5, -1920
                  bne          a5, t5, 366f
                  slli         t0, sp, 7
                  xori         sp, s10, -1313
                  or           a4, a6, s5
366:              xori         s6, s1, -40
                  xor          t2, s4, s0
                  beq          a7, s6, 383f
                  or           zero, t0, s10
370:              slt          s6, s7, t1
                  nop
372:              andi         t6, a1, 580
                  xori         a7, a1, 995
                  srl          s5, t1, t5
                  ori          s9, a5, -1883
                  slli         s7, t1, 13
                  bne          t3, sp, 383f
                  sll          s7, t4, gp
                  slti         gp, a5, 869
                  slti         a1, s2, -577
                  bge          a3, s2, 392f
                  ori          zero, s3, 1207
383:              beq          t2, t4, 392f
                  andi         s3, s9, 1816
                  slti         s11, ra, 764
                  srai         s5, t0, 14
                  srli         s0, a6, 4
                  blt          s7, a6, 395f
                  andi         t2, s11, 756
                  bne          t4, s0, 406f
                  slli         a5, s4, 9
392:              add          a4, s9, zero
                  ori          s4, s4, 715
                  and          s6, s9, s0
395:              andi         t0, ra, 1174
                  add          s5, s4, tp
                  sltiu        a5, s11, -607
                  bne          s9, s1, 400f
                  srl          s8, a7, a5
400:              xori         t6, s3, 1397
                  sra          s11, a6, tp
                  srli         a3, s0, 14
                  srli         gp, s5, 1
                  sll          t1, t6, a7
                  beq          s11, s1, 420f
406:              bge          s3, s3, 408f
                  add          a7, a2, zero
408:              andi         s3, t6, -1085
                  sub          a3, tp, a6
                  srai         s2, t6, 2
                  srli         a5, tp, 20
                  auipc        a1, 345661
                  auipc        s3, 994250
                  bgeu         zero, t6, 423f
                  slti         s0, s4, 1311
                  or           s11, s8, s6
                  auipc        s9, 760062
                  slti         a5, a2, 647
                  beq          s1, a5, 439f
420:              slli         sp, s6, 8
                  nop
                  ori          a3, t0, 1092
423:              srai         a5, sp, 10
                  bge          zero, s1, 435f
                  bge          a1, t4, 437f
                  and          s6, s4, s11
                  bge          t2, a7, 446f
                  srai         a0, gp, 5
                  nop
                  sra          a3, a1, a5
                  slt          a0, s3, tp
                  bne          t3, ra, 437f
                  slti         t1, a5, -613
                  bge          gp, s1, 447f
435:              addi         t3, t0, 1009
                  ori          sp, a3, -410
437:              sub          t2, a1, s7
                  nop
439:              bne          t6, zero, 455f
                  sltiu        t4, sp, 1864
                  slt          sp, s0, t6
                  xor          t3, a3, zero
                  ori          a5, s2, -1245
                  or           a5, t6, s2
                  nop
446:              bltu         s9, t6, 453f
447:              and          s9, zero, t3
                  beq          s6, a1, 449f
449:              add          a4, s9, s7
                  xor          zero, t1, sp
                  lui          s10, 779194
                  bge          t1, ra, 453f
453:              sll          a4, zero, t5
                  or           s4, t1, s0
455:              bge          a3, t1, 466f
                  sltu         s4, t4, s8
                  slti         sp, a4, -1250
                  sll          s10, s7, s5
                  auipc        s6, 77659
                  ori          zero, t1, 1397
                  slti         t3, a1, -95
                  or           s2, t3, s11
sub_1_5:          jal          s2, 1f
0:                jal          ra, 4f
1:                jal          a5, 0b
2:                jal          s0, 8f
3:                jal          s1, 10f
4:                jal          ra, 9f
5:                jal          ra, 11f
6:                jal          s6, 7f
7:                jal          ra, 2b
8:                jal          ra, 5b
9:                jal          ra, 3b
10:               jal          ra, 6b
11:               sub          t2, t4, s2
                  xori         s1, a2, 1434
                  sll          t0, s7, t0
                  xor          a7, t5, s9
466:              auipc        a7, 129563
                  xori         s9, gp, -1917
                  bltu         a6, tp, 473f
                  auipc        t6, 48580
                  blt          a7, s9, 472f
                  srl          s10, t0, sp
472:              andi         s8, tp, -931
473:              andi         t6, s6, -1896
                  or           ra, t2, zero
                  bge          s8, s5, 476f
476:              nop
                  nop
                  srai         a0, t5, 6
                  or           s7, a2, s4
                  slli         ra, a7, 26
                  addi         a1, s3, 1966
                  lw           s2, 4(a2)
                  addi         a2, a2, 56
                  and          a3, s2, s8
675:              addi x23, x18, 1
675:              jalr x23, x23, 0
sub_3:            addi         sp, ra, 1244
                  andi         s1, s1, 731
                  bne          s4, s7, sub_3_stack_p
sub_3_stack_p:    addi         a2, a2, -56
                  sltu         s4, s6, gp
                  sltu         a4, t3, a3
                  sw           s2, 4(a2)
                  auipc        sp, 45532
                  andi         a6, t1, -372
                  xori         s6, t6, 354
sub_3_8:          jal          s2, 0f
0:                jal          ra, 7f
1:                jal          ra, 6f
2:                jal          t3, 4f
3:                jal          ra, 8f
4:                jal          ra, 5f
5:                jal          ra, 10f
6:                jal          ra, 3b
7:                jal          s2, 1b
8:                jal          ra, 9f
9:                jal          t1, 2b
10:               jal          t0, 11f
11:               sltu         s5, a6, t5
sub_3_4:          jal          s2, 12f
0:                jal          s2, 17f
1:                jal          ra, 13f
2:                jal          t1, 19f
3:                jal          ra, 28f
4:                jal          ra, 18f
5:                jal          ra, 2b
6:                jal          a4, 25f
7:                jal          s7, 4b
8:                jal          t1, 20f
9:                jal          t6, 5b
10:               jal          ra, 21f
11:               jal          t1, 9b
12:               jal          ra, 16f
13:               jal          ra, 22f
14:               jal          ra, 8b
15:               jal          a3, 27f
16:               jal          ra, 10b
17:               jal          ra, 7b
18:               jal          t1, 6b
19:               jal          ra, 14b
20:               jal          s10, 26f
21:               jal          t6, 24f
22:               jal          ra, 15b
23:               jal          t1, 1b
24:               jal          s5, 23b
25:               jal          ra, 11b
26:               jal          s0, 3b
27:               jal          ra, 0b
28:               sra          s1, t0, gp
sub_3_6:          jal          s2, 7f
0:                jal          ra, 3f
1:                jal          sp, 13f
2:                jal          ra, 18f
3:                jal          ra, 2b
4:                jal          ra, 1b
5:                jal          ra, 17f
6:                jal          gp, 20f
7:                jal          t1, 9f
8:                jal          t1, 16f
9:                jal          t0, 8b
10:               jal          ra, 15f
11:               jal          ra, 14f
12:               jal          t1, 11b
13:               jal          s8, 6b
14:               jal          s4, 4b
15:               jal          t1, 5b
16:               jal          ra, 0b
17:               jal          s3, 12b
18:               jal          t1, 19f
19:               jal          ra, 10b
20:               nop
sub_3_3:          jal          s2, 9f
0:                jal          ra, 14f
1:                jal          a3, 10f
2:                jal          ra, 3f
3:                jal          a4, 8f
4:                jal          t1, 1b
5:                jal          ra, 13f
6:                jal          ra, 0b
7:                jal          ra, 2b
8:                jal          gp, 12f
9:                jal          ra, 4b
10:               jal          sp, 6b
11:               jal          t1, 15f
12:               jal          ra, 11b
13:               jal          ra, 7b
14:               jal          ra, 5b
15:               and          s3, s6, a3
sub_3_7:          jal          s2, 3f
0:                jal          s1, 9f
1:                jal          gp, 5f
2:                jal          t0, 0b
3:                jal          t1, 1b
4:                jal          ra, 6f
5:                jal          t1, 4b
6:                jal          s11, 7f
7:                jal          ra, 2b
8:                jal          t1, 10f
9:                jal          ra, 8b
10:               addi         t2, t4, 1337
sub_3_2:          jal          s2, 0f
0:                jal          t1, 10f
1:                jal          ra, 3f
2:                jal          sp, 1b
3:                jal          t0, 27f
4:                jal          ra, 14f
5:                jal          gp, 19f
6:                jal          t6, 15f
7:                jal          ra, 8f
8:                jal          ra, 25f
9:                jal          ra, 22f
10:               jal          a4, 17f
11:               jal          ra, 21f
12:               jal          sp, 26f
13:               jal          ra, 7b
14:               jal          ra, 11b
15:               jal          t0, 5b
16:               jal          gp, 23f
17:               jal          ra, 20f
18:               jal          ra, 4b
19:               jal          s8, 24f
20:               jal          s1, 9b
21:               jal          t1, 28f
22:               jal          ra, 2b
23:               jal          ra, 13b
24:               jal          a6, 16b
25:               jal          ra, 12b
26:               jal          ra, 18b
27:               jal          a7, 6b
28:               xori         s9, s0, 1541
sub_3_1:          jal          s2, 1f
0:                jal          ra, 6f
1:                jal          ra, 11f
2:                jal          s9, 7f
3:                jal          s11, 2b
4:                jal          t1, 14f
5:                jal          gp, 3b
6:                jal          ra, 15f
7:                jal          ra, 0b
8:                jal          sp, 12f
9:                jal          s1, 10f
10:               jal          s1, 13f
11:               jal          s8, 4b
12:               jal          t1, 9b
13:               jal          sp, 5b
14:               jal          ra, 8b
15:               slt          sp, s0, t5
                  srli         t0, s3, 8
                  add          s3, t4, s1
                  auipc        a1, 325080
                  xor          t4, s2, t6
                  nop
                  slt          a6, t6, a6
                  bge          ra, sp, 18f
                  bge          a3, a6, 20f
                  sltiu        t1, s4, -269
                  srai         s10, s11, 14
                  ori          a7, s8, -459
                  or           a5, s1, s9
                  add          a1, t5, a0
                  sra          a4, sp, sp
                  auipc        t2, 541720
                  beq          t0, t5, 28f
                  or           ra, t6, s0
                  bltu         ra, s1, 22f
18:               ori          s5, a2, 623
                  beq          s6, s10, 24f
20:               srl          s5, sp, a0
                  blt          s2, s5, 26f
22:               blt          ra, a5, 32f
                  srli         s0, t6, 10
24:               xori         t0, s6, 1291
                  srai         s1, s2, 24
26:               bltu         s9, a7, 40f
                  sltu         a4, t5, s9
28:               bge          a3, a7, 38f
                  sltiu        sp, s8, 787
                  slli         s2, t5, 22
                  and          s11, t0, a2
32:               or           s2, a5, sp
                  auipc        a3, 773888
                  bgeu         t4, s8, 37f
                  addi         sp, s5, -282
                  slt          s5, s1, t6
37:               bne          s1, a0, 52f
38:               bge          s3, a3, 51f
                  sltu         zero, s11, s6
40:               and          ra, t4, a4
                  srai         s10, gp, 4
                  lui          s4, 532891
                  blt          s1, gp, 54f
                  addi         s7, sp, -1961
                  sltiu        a1, t5, 1501
                  srl          s9, a1, t5
                  slti         t6, s1, 1833
                  or           sp, t2, sp
                  ori          s6, t2, 1324
                  xor          s2, t4, s9
51:               andi         a1, t0, -762
52:               bgeu         ra, s10, 63f
                  add          gp, s2, s9
54:               srl          a1, gp, s6
                  sub          s3, s2, tp
                  slli         a3, a7, 18
                  addi         t6, a3, -888
                  slli         t0, a5, 30
                  addi         sp, a4, -269
                  xori         ra, s9, 1327
                  srli         a0, s6, 27
                  bge          t5, sp, 67f
63:               addi         a7, sp, 335
                  bltu         t3, s7, 79f
                  nop
                  beq          a5, tp, 77f
67:               xori         s4, t2, -658
                  srl          a7, a0, t0
                  xor          s9, s1, ra
                  auipc        a5, 114337
                  srai         s1, s7, 29
                  sll          t3, s0, t5
                  blt          gp, a4, 86f
                  bge          s8, s10, 86f
                  andi         a7, a6, -1209
                  blt          t6, a2, 94f
77:               bne          s0, t2, 79f
                  srai         a5, s9, 25
79:               sll          t2, t0, t0
                  slli         t2, t3, 28
                  xori         s9, t6, 1578
                  lui          s4, 514564
                  lui          s9, 374021
                  slt          sp, t0, s9
                  xor          gp, a3, s3
86:               lui          t3, 930907
                  and          a0, t3, gp
                  sra          zero, s7, s11
                  add          s0, tp, s6
                  sltiu        sp, s0, -32
                  bne          a2, t2, 107f
                  bltu         a2, a2, 96f
                  ori          s1, t1, -545
94:               and          s9, s9, sp
                  sll          s5, s0, s4
96:               bne          s6, t2, 111f
                  sub          ra, gp, s2
                  xori         t0, a6, -255
                  sra          a3, s9, a7
                  blt          s8, zero, 102f
                  bgeu         a0, t6, 104f
102:              sra          s11, t0, s8
                  slti         t1, t4, 29
104:              xor          t6, s3, s3
                  sltu         zero, a7, t3
                  nop
107:              slt          t3, s0, sp
                  srli         s7, a6, 28
                  beq          s2, s10, 122f
                  bne          s8, t1, 125f
111:              bltu         s8, a4, 114f
                  ori          zero, s6, 1318
                  slli         a1, s2, 13
114:              bge          a7, s7, 121f
                  or           t1, s10, s10
                  slt          s11, ra, t5
                  sll          a1, s0, a2
                  srl          s8, zero, a7
                  bltu         a6, tp, 130f
                  bne          s3, sp, 125f
121:              xori         a1, ra, 975
122:              bgeu         a1, a5, 129f
                  beq          sp, a7, 141f
                  slti         t0, a6, 2037
125:              srai         s4, t6, 0
                  sltu         s10, s6, a4
                  auipc        gp, 92258
                  sra          s9, s0, s6
129:              lui          zero, 301830
130:              srli         a4, s11, 8
                  xor          s8, s0, tp
                  sub          zero, zero, t4
                  bge          a6, a2, 136f
                  beq          s10, s9, 137f
                  sub          t4, a2, t0
136:              bge          a1, zero, 140f
137:              sub          s5, a4, t1
                  bne          a6, s0, 151f
                  ori          s8, s8, -174
140:              auipc        t1, 669231
141:              beq          s3, s10, 156f
                  ori          a4, s0, -1978
                  srai         s6, t3, 5
                  auipc        t2, 570634
                  sra          ra, a0, a1
                  sltiu        a1, s5, 785
                  or           s6, s6, s8
                  slli         s2, a0, 14
                  nop
                  addi         s9, t6, -1566
151:              xor          t1, t3, ra
                  add          a0, t4, gp
                  andi         t0, s9, 933
                  andi         a0, a7, 223
                  ori          a5, sp, -247
156:              bne          s0, s4, 161f
                  ori          t3, t1, 691
                  lui          a1, 338429
                  lui          t0, 42173
                  blt          a6, a0, 176f
161:              bltu         s2, s4, 173f
                  srli         t1, s3, 9
                  lui          t3, 470817
                  and          a6, a5, a5
                  slli         t3, tp, 29
                  or           t1, a3, t1
                  bge          t1, gp, 169f
                  xor          a3, t5, zero
169:              ori          t2, s7, 774
                  srli         s11, tp, 31
                  bgeu         a2, t6, 174f
                  blt          a2, a6, 187f
173:              sll          t6, t1, a2
174:              bgeu         tp, s0, 187f
                  auipc        s8, 309746
176:              blt          t5, t3, 181f
                  sltiu        t2, s1, -1806
                  addi         s5, t3, 1132
                  beq          a0, a5, 190f
                  bltu         s4, ra, 193f
181:              srai         t2, t6, 18
                  srli         ra, s1, 1
                  srli         s6, s5, 6
                  and          s1, t0, t3
                  or           ra, s6, a7
                  srli         ra, t1, 16
187:              srli         a7, s8, 8
                  bge          s4, s6, 200f
                  and          ra, s3, s4
190:              blt          a2, a2, 204f
                  sltiu        s1, a1, 1683
                  or           t2, s8, gp
193:              srli         s11, t5, 24
                  bge          a1, s5, 205f
                  slti         s3, t5, 421
                  nop
                  auipc        a1, 89665
                  beq          s6, ra, 213f
                  sltiu        a4, a6, 339
200:              ori          s3, s3, 524
                  srli         a3, zero, 18
                  and          a1, tp, a2
                  sra          s0, s7, s11
204:              slli         t1, s0, 5
205:              srli         s5, s4, 1
                  sra          s2, a5, s1
                  addi         t2, a3, 1330
                  srai         zero, a6, 11
                  auipc        zero, 239985
                  srl          s4, s7, a2
                  slli         t0, t4, 20
                  slti         s0, t6, 888
213:              or           a1, a4, zero
                  bne          s0, t1, 227f
                  sra          gp, sp, t3
                  blt          s4, s4, 231f
                  srli         t0, s7, 7
                  sub          a4, a0, s8
                  addi         s5, s2, -3
                  slli         s3, sp, 14
                  srli         zero, ra, 2
                  srl          s6, s3, s7
                  xori         s0, s6, -749
                  bltu         t1, s9, 226f
                  lui          a1, 675441
sub_3_0:          jal          s2, 24f
0:                jal          s6, 8f
1:                jal          ra, 19f
2:                jal          t6, 28f
3:                jal          ra, 6f
4:                jal          ra, 21f
5:                jal          ra, 14f
6:                jal          ra, 12f
7:                jal          t1, 26f
8:                jal          ra, 25f
9:                jal          ra, 17f
10:               jal          ra, 23f
11:               jal          t2, 20f
12:               jal          ra, 18f
13:               jal          a1, 3b
14:               jal          ra, 0b
15:               jal          ra, 2b
16:               jal          ra, 1b
17:               jal          s7, 27f
18:               jal          gp, 7b
19:               jal          ra, 11b
20:               jal          s4, 10b
21:               jal          ra, 15b
22:               jal          t1, 9b
23:               jal          s3, 4b
24:               jal          ra, 13b
25:               jal          ra, 16b
26:               jal          ra, 22b
27:               jal          a7, 5b
28:               nop
226:              sltiu        s5, s5, -188
227:              sub          s5, s10, gp
                  xor          a4, ra, s3
                  bgeu         sp, s5, 239f
                  sub          a0, s2, s11
231:              ori          s1, t1, -130
                  xor          ra, s7, t4
                  blt          a2, s9, 238f
                  slli         a0, t5, 29
                  bne          t5, s10, 248f
                  lui          a1, 718025
                  slt          a7, s8, s0
238:              sltiu        a3, sp, 1762
239:              bne          a4, a1, 249f
                  auipc        s10, 680256
                  sltiu        t4, t2, 672
                  addi         t0, t6, 1066
                  sll          a7, t5, s11
                  andi         s8, t0, -67
                  sub          a4, s1, zero
                  srai         s11, t1, 14
                  lui          gp, 141108
248:              sra          t0, ra, t5
249:              or           gp, s3, s0
                  lui          zero, 336058
                  slli         t2, a2, 17
                  srl          s4, sp, a3
                  beq          t1, a2, 266f
                  srli         a1, t0, 1
                  srl          s0, t5, s3
                  slt          ra, a1, tp
                  sll          s2, tp, t6
                  beq          a2, sp, 269f
                  beq          s2, a7, 264f
                  sub          s7, s7, gp
                  sll          s2, s8, a4
                  xori         a1, s2, -552
                  slt          a0, a6, s9
264:              lui          s5, 660258
                  lui          s4, 788826
266:              slt          t4, zero, gp
                  srli         s4, t0, 18
                  bgeu         a6, a3, 281f
269:              slt          s4, zero, tp
                  srl          s9, t2, s1
                  andi         t0, t3, 1896
                  sra          s9, t0, t4
                  sll          s7, s6, a2
                  add          s6, a0, a0
                  blt          s1, t6, 285f
                  xori         gp, s10, 815
                  xor          a4, a0, t5
                  xor          a6, t0, a1
                  lui          a5, 330941
                  xor          s5, a3, gp
281:              nop
                  andi         t0, s0, -694
                  ori          s4, tp, 1887
                  or           ra, s2, s11
285:              srli         s9, a3, 5
                  or           zero, s9, a7
                  slti         s4, s8, 1066
                  auipc        s9, 783576
                  slli         ra, ra, 19
                  sra          zero, t3, t5
                  bne          s4, s2, 293f
                  ori          s3, a4, -1382
293:              bgeu         a0, zero, 305f
                  xor          ra, s11, t6
                  srl          t2, s9, s7
                  srli         s0, t3, 12
                  or           t1, s8, a7
                  slti         sp, s5, -1405
                  add          t6, t3, s10
                  beq          s5, tp, 303f
                  srli         t0, a5, 10
                  bne          s7, a6, 320f
303:              xori         ra, a7, 1142
                  slli         s11, s5, 25
305:              sra          a0, t6, s1
                  bltu         a1, gp, 317f
                  sra          s2, a4, a3
                  xori         s11, t1, 1587
                  and          t1, a0, a7
                  bne          a0, a7, 322f
                  ori          s10, s8, -278
                  blt          t6, t3, 325f
                  bgeu         t2, a7, 316f
                  auipc        s6, 632687
                  sra          a1, s7, a2
316:              srli         t3, s9, 11
317:              sub          zero, s2, ra
                  xor          sp, gp, a3
                  sra          a5, a5, a7
320:              sub          s3, s10, a1
                  srli         t6, s9, 18
322:              bgeu         s7, a5, 332f
                  slti         t3, a7, 1724
                  sltu         ra, s1, a7
325:              slli         t0, s8, 22
                  bne          sp, s7, 329f
                  auipc        s2, 116090
                  ori          a6, a1, -1131
329:              sll          t0, s6, a5
                  or           a3, s0, a6
                  xor          a1, a4, a5
332:              slli         a4, zero, 1
                  srl          t4, a3, s7
                  sra          s1, t3, s4
                  addi         a7, t1, -844
                  srai         s2, s3, 15
                  xor          a0, gp, s4
                  bgeu         gp, t6, 343f
                  srl          s5, s1, zero
                  srli         t4, t6, 2
                  sltu         s10, a1, a0
                  srli         t3, t3, 7
343:              slt          s6, t1, t5
                  sll          a3, s3, t3
                  nop
                  srai         zero, ra, 17
                  andi         ra, t2, 1739
                  xor          s7, s3, a4
                  slt          a1, s9, s3
                  sltu         s3, s11, s8
                  auipc        s9, 610506
                  bge          t1, tp, 368f
                  slli         s3, a1, 22
                  bgeu         a7, s4, 356f
                  xor          t2, sp, s9
356:              srli         a4, t2, 25
                  blt          a5, t5, 362f
                  sltiu        s10, s10, 55
                  slti         a4, sp, -439
                  sll          s6, t6, a3
                  ori          a5, zero, 474
362:              add          s7, a1, s0
                  lui          s4, 1000678
                  xori         t1, t6, -1340
                  addi         s5, s8, -358
                  sltiu        a0, s5, -892
                  sra          s5, a2, zero
368:              add          s5, a1, s6
                  andi         a0, s5, -1149
                  slli         t1, s10, 8
                  add          sp, a2, s10
                  ori          s4, s1, -1599
                  andi         s0, a4, 204
                  slti         a6, tp, -1550
                  sra          t3, s11, t2
                  bgeu         a2, a6, 390f
                  slt          s5, a6, s2
                  bltu         t5, s7, 393f
                  andi         a3, s3, -98
                  bge          s8, t3, 395f
                  srl          s3, s7, t4
                  ori          ra, s4, 1841
                  bne          a0, sp, 394f
                  andi         t3, s0, -1276
                  bltu         a6, s4, 400f
                  bgeu         t5, t4, 390f
                  sltiu        s6, a7, 381
                  srli         a0, a5, 24
                  auipc        zero, 166312
390:              bge          t4, t2, 395f
                  slt          gp, s8, s2
                  sub          t3, s6, s7
393:              ori          s0, tp, 1524
394:              addi         a3, s5, 1997
395:              bgeu         tp, t6, 408f
                  srli         s6, s9, 12
                  slt          s7, zero, s6
                  slti         t6, a3, -1469
                  beq          a3, zero, 414f
400:              sll          t6, t4, s7
                  lui          t2, 321034
                  auipc        gp, 813940
                  srl          ra, a0, t1
                  add          a0, t4, s8
                  xor          sp, a4, s5
                  srai         t4, s8, 19
                  addi         gp, s3, 1688
408:              andi         s9, s6, -1381
                  addi         a3, t5, 733
                  slli         s10, s0, 12
                  sltiu        a5, s3, -23
                  addi         a0, s11, -969
                  sll          t6, s9, s10
414:              blt          t3, s2, 427f
                  xor          t3, t6, ra
                  lui          s8, 345084
                  slli         s8, s1, 13
                  bne          s7, t6, 425f
                  slli         s8, t0, 18
                  srli         s6, t6, 25
                  slt          a3, s3, s3
                  beq          t1, s1, 434f
                  beq          tp, s5, 428f
                  bgeu         t4, a0, 437f
425:              sra          s3, gp, a1
                  bne          s2, t1, 429f
427:              slt          s2, s5, t0
428:              srl          s8, t3, t5
429:              auipc        t1, 65865
                  nop
                  bgeu         s10, a6, 442f
                  bgeu         ra, s10, 447f
                  srli         t4, s4, 5
434:              sll          a1, a1, t5
                  srai         a5, s11, 5
                  slli         s11, t6, 22
437:              slti         s8, t3, -1147
                  blt          a0, s11, 440f
                  auipc        gp, 795617
sub_3_5:          jal          s2, 18f
0:                jal          ra, 16f
1:                jal          t1, 6f
2:                jal          t1, 0b
3:                jal          ra, 5f
4:                jal          a5, 3b
5:                jal          sp, 12f
6:                jal          ra, 14f
7:                jal          ra, 13f
8:                jal          ra, 7b
9:                jal          sp, 2b
10:               jal          ra, 8b
11:               jal          ra, 19f
12:               jal          s6, 1b
13:               jal          s0, 4b
14:               jal          s4, 9b
15:               jal          t1, 10b
16:               jal          ra, 17f
17:               jal          t1, 11b
18:               jal          ra, 15b
19:               lui          t0, 368584
440:              sltu         s0, a5, t1
                  blt          t1, a5, 455f
442:              sltiu        s8, tp, 544
                  bltu         a0, a1, 456f
                  ori          ra, s0, 1777
                  bge          t0, a2, 450f
                  auipc        t6, 16219
447:              bge          s7, s1, 456f
                  add          ra, t0, t2
                  ori          s9, s7, 869
450:              slli         gp, s4, 25
                  slti         s7, a7, 1400
                  blt          s9, t5, 456f
                  sra          sp, s0, ra
                  addi         s10, a3, 29
455:              addi         a0, s4, 96
456:              lui          s6, 224298
                  lui          s9, 794316
                  slli         s10, sp, 13
                  sll          a1, a1, zero
                  lw           s2, 4(a2)
                  sub          s5, s10, tp
                  addi         a2, a2, 56
                  sra          a4, s11, s11
666:              addi x1, x18, 1
666:              jalr x1, x1, 0
sub_5:            ori          t3, s10, 2035
                  bne          t4, s6, sub_5_stack_p
                  sll          s10, s8, gp
sub_5_stack_p:    addi         a2, a2, -28
                  sltu         s4, s4, s3
                  sw           s2, 4(a2)
                  srai         s8, gp, 21
                  srai         t3, a7, 19
                  sub          a0, a2, tp
                  xor          t3, s11, a2
sub_5_2:          jal          s2, 11f
0:                jal          ra, 12f
1:                jal          a4, 7f
2:                jal          t1, 21f
3:                jal          ra, 4f
4:                jal          ra, 13f
5:                jal          ra, 1b
6:                jal          gp, 10f
7:                jal          ra, 18f
8:                jal          s5, 19f
9:                jal          t1, 17f
10:               jal          a4, 20f
11:               jal          ra, 5b
12:               jal          a5, 9b
13:               jal          t0, 16f
14:               jal          s8, 0b
15:               jal          t0, 14b
16:               jal          ra, 8b
17:               jal          ra, 3b
18:               jal          ra, 15b
19:               jal          ra, 6b
20:               jal          s5, 2b
21:               andi         t4, t1, -215
sub_5_0:          jal          s2, 23f
0:                jal          ra, 9f
1:                jal          s5, 8f
2:                jal          t6, 10f
3:                jal          t0, 21f
4:                jal          ra, 5f
5:                jal          gp, 3b
6:                jal          t1, 4b
7:                jal          t1, 20f
8:                jal          t1, 6b
9:                jal          t1, 15f
10:               jal          ra, 14f
11:               jal          ra, 16f
12:               jal          ra, 19f
13:               jal          t1, 11b
14:               jal          a4, 13b
15:               jal          s1, 2b
16:               jal          a5, 12b
17:               jal          ra, 24f
18:               jal          t1, 0b
19:               jal          ra, 7b
20:               jal          ra, 22f
21:               jal          t0, 18b
22:               jal          t1, 25f
23:               jal          ra, 17b
24:               jal          t0, 1b
25:               sra          a6, a6, ra
                  sub          a7, gp, tp
                  bgeu         s2, a5, 11f
                  and          a4, t4, s5
                  sra          s2, t2, s1
                  xori         s5, s10, -962
                  auipc        s7, 25489
                  bltu         s0, a1, 24f
                  add          zero, a4, s5
                  beq          a1, s11, 27f
                  sll          t3, s8, gp
                  sltiu        a0, tp, 1404
11:               slti         sp, s10, -410
                  and          s10, gp, t1
                  bgeu         s9, a1, 22f
                  sltiu        t6, a4, -2025
                  sra          s11, s10, gp
                  slli         s6, s0, 25
                  sltu         s5, s1, t5
                  bgeu         t5, a1, 26f
                  slti         t4, s3, -1852
                  slti         t4, s9, 497
                  auipc        s11, 520487
22:               sll          s0, s0, s6
                  nop
24:               addi         s3, gp, 1783
                  slti         s3, s0, -338
26:               nop
27:               sll          s7, t5, ra
                  blt          s4, s1, 34f
                  andi         a0, s1, 1851
                  or           t0, a2, s4
                  slli         ra, s6, 9
                  or           s8, s9, t2
                  xor          a5, a1, tp
34:               srl          t0, tp, t2
                  srl          t2, a3, a7
                  or           s1, s11, t5
                  slt          a0, s9, ra
                  sltu         gp, s6, a1
                  slti         s11, a1, -1570
                  ori          s11, s8, 288
                  srai         gp, t0, 11
                  bge          gp, tp, 56f
                  srli         s1, a6, 29
                  add          s5, gp, a2
                  auipc        t4, 215430
                  bltu         gp, ra, 55f
                  srli         s2, s11, 10
                  srl          s9, t6, a6
                  beq          a7, t5, 56f
                  slti         gp, s3, -1675
                  slli         s11, a2, 4
                  andi         t3, s0, -1546
                  blt          s8, t1, 57f
                  add          s4, s10, s5
55:               lui          gp, 417448
56:               bge          a4, t5, 66f
57:               blt          t3, a7, 61f
                  xor          s5, tp, a4
                  bgeu         s11, a1, 77f
                  srli         s10, zero, 20
61:               sltiu        s0, t1, -1918
                  sra          s6, tp, a4
                  and          zero, t1, t0
                  sltu         t0, s0, s11
                  sll          t4, gp, s10
66:               auipc        zero, 590422
                  blt          a2, t2, 70f
                  srai         a6, t2, 8
                  andi         a6, s1, 1492
70:               bltu         s3, a1, 71f
71:               slt          s4, t0, s4
                  srai         t4, s11, 27
                  ori          s1, a2, -1886
                  andi         t4, a1, 1345
                  sub          a0, s6, t5
                  bltu         t3, s0, 96f
77:               bltu         s0, t5, 97f
                  and          a5, a6, s7
                  sltu         s10, s5, s9
                  lui          s2, 1006533
                  or           a4, a2, t4
                  addi         a0, s2, 405
                  ori          s9, tp, -1977
                  bltu         t4, t5, 100f
                  addi         a5, a0, -110
                  srai         s8, s6, 29
                  bne          s2, t2, 98f
                  slli         t3, s3, 23
                  srai         s11, s6, 8
                  lui          t3, 337453
                  sll          zero, s5, t3
                  bgeu         a0, s11, 107f
                  andi         s5, zero, 1449
                  or           t1, s5, s3
                  slli         gp, a7, 26
96:               xor          t2, s9, t0
97:               slt          s6, t0, a5
98:               blt          t2, s8, 111f
                  xor          a4, s11, t2
100:              sltiu        t2, s4, 735
                  slli         s7, a3, 7
                  andi         s7, t1, -28
                  or           s11, t5, a5
                  beq          t2, a0, 106f
                  ori          s10, s2, -341
106:              slli         s3, t1, 22
107:              slt          s7, t2, s3
                  bge          s10, t4, 114f
                  slt          t4, a4, s8
                  auipc        a6, 974086
111:              sltiu        sp, a4, 568
                  and          a0, t6, t1
                  sltiu        s11, s8, 852
114:              bge          s0, s11, 127f
                  sll          s5, a4, t4
                  bltu         a6, ra, 127f
                  addi         a5, s8, -619
                  sub          s11, s8, s5
                  bltu         s0, a1, 121f
                  lui          s4, 545065
121:              lui          s5, 113325
                  slti         a7, s9, -639
                  sub          a1, t2, a5
                  nop
                  sltu         s5, a6, a5
                  srl          s8, s7, a5
127:              and          s4, s7, s0
                  add          a5, a0, zero
                  slt          zero, a2, ra
                  srai         ra, a5, 30
                  sll          zero, zero, s9
                  sll          a0, a1, t1
                  slt          s1, ra, s3
                  xor          s6, t1, s2
                  addi         s1, t4, 782
                  beq          s10, sp, 137f
137:              sltu         a7, sp, t5
                  ori          a3, s1, -107
                  add          a0, s11, s8
                  nop
                  or           s2, s3, a6
                  bgeu         t0, s6, 160f
                  addi         a6, s4, 1789
                  or           a6, s3, zero
                  andi         s7, t0, -38
                  srli         s4, a7, 17
                  sll          a7, s9, s0
                  sltu         s9, a6, s5
                  slti         zero, a3, 1460
                  sra          a6, t5, s5
                  slti         a0, a7, -1195
                  bgeu         t0, t1, 157f
sub_5_1:          jal          s2, 3f
0:                jal          ra, 13f
1:                jal          t1, 8f
2:                jal          ra, 23f
3:                jal          ra, 20f
4:                jal          ra, 22f
5:                jal          t1, 15f
6:                jal          t0, 25f
7:                jal          ra, 26f
8:                jal          ra, 14f
9:                jal          t3, 18f
10:               jal          ra, 12f
11:               jal          ra, 2b
12:               jal          gp, 7b
13:               jal          a0, 17f
14:               jal          t1, 9b
15:               jal          t1, 10b
16:               jal          ra, 24f
17:               jal          t1, 21f
18:               jal          ra, 27f
19:               jal          ra, 6b
20:               jal          ra, 5b
21:               jal          s4, 11b
22:               jal          ra, 19b
23:               jal          s7, 1b
24:               jal          ra, 4b
25:               jal          ra, 0b
26:               jal          a0, 16b
27:               xori         a7, tp, 35
                  slli         a7, sp, 16
                  nop
                  sra          a4, s2, s7
                  addi         t1, s7, -962
157:              and          a6, t2, a2
                  bgeu         s8, gp, 170f
                  xor          t6, t4, a1
160:              andi         s8, s8, -367
                  slli         a3, a5, 9
                  and          s4, t6, a6
                  blt          t1, s4, 167f
                  srl          s5, t5, s7
                  srli         t0, s11, 18
                  auipc        s10, 952736
167:              srl          t6, t1, a6
                  addi         t3, s11, -650
                  slli         s8, a4, 3
170:              xori         a5, a7, 778
                  and          t4, s6, a1
                  ori          s1, s3, 260
                  sra          s5, a1, s0
                  sra          sp, a7, a0
                  add          t6, ra, a6
                  slt          a5, a5, s1
                  slli         s9, s3, 29
                  and          t3, sp, gp
                  bge          zero, t4, 195f
                  sra          s3, a3, s9
                  ori          s4, s10, 346
                  slli         t6, s1, 23
                  slt          ra, zero, ra
                  ori          s8, a7, -1215
                  sltiu        a3, tp, -1889
                  sub          s7, a4, t3
                  ori          a4, a0, 1382
                  sub          a3, tp, t3
                  and          gp, s8, s4
                  bltu         a3, ra, 195f
                  xor          s3, t1, t2
                  lui          a7, 442600
                  sub          s4, s9, a6
                  xori         a3, sp, -1222
195:              bltu         s11, a5, 198f
                  srai         t4, s1, 9
                  xor          s11, a1, gp
198:              add          s5, s7, a4
                  slti         a3, sp, 1421
                  addi         a6, t1, -90
                  sll          s4, s10, s5
                  slli         s5, s7, 9
                  lw           s2, 4(a2)
                  slt          a5, zero, s9
                  addi         a2, a2, 28
                  sltiu        a6, a1, 626
296:              addi x11, x18, 1
296:              jalr x11, x11, 0
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
.word 0xb02ea938, 0x33dc26f0, 0x838a8e59, 0xf735ded0, 0xf6cce6a7, 0x4b1f175d, 0x5140d32c, 0x73954a1f
.word 0xc2424e3c, 0xdce012fa, 0xc80be52f, 0xbed8c812, 0x053e1c97, 0x6529a6cc, 0x5c4168b7, 0xabd1f18d
.word 0x805a1d34, 0xd3c47493, 0x4581c5d4, 0xfd98b896, 0x538a0cf1, 0x3ff27a55, 0xa13c4ef9, 0x1fc30204
.word 0x2be4ab0c, 0xc6f6b03a, 0x36dda033, 0x93ad4eec, 0x5177d67e, 0x221c8823, 0x2e1b2978, 0xf939df7c
.word 0x7c8e1e0b, 0xb0af9eaa, 0x49fa6a6d, 0x550cac23, 0xd169c787, 0xeab11059, 0x58c20bae, 0x239442a8
.word 0x8c1cc59b, 0xfec280da, 0x80ac9ccd, 0x1ca24412, 0x0293124d, 0xf6d2fa1c, 0x7cb11df7, 0x096b252f
.word 0x34b0dd3c, 0xb4a917aa, 0x3069461f, 0xcdb50d6a, 0xf913ce91, 0x3874c0ed, 0x3b4262a2, 0x8db069f2
.word 0xdc1efebe, 0xd2bbb994, 0xa4740709, 0x9cdb657a, 0xc72472fa, 0x3479cc45, 0x64c34f3e, 0xeba07d84
.word 0x8fd7a8cb, 0x4fc9404d, 0xca87efdb, 0x86a89352, 0x34e38bba, 0x374a0999, 0x13e14787, 0x22c051de
.word 0x55b264b3, 0x85803189, 0xc1a81259, 0x872bf8db, 0x2e1afaa4, 0x980ec360, 0x38e78640, 0x1b2aab9d
.word 0x32e584da, 0x08ada50c, 0x610b93d3, 0xcc447183, 0xf2582f7b, 0x5a0f26d5, 0xde1101e2, 0xd5b3f75a
.word 0xae10e3fb, 0xf3b7f25c, 0x96c0664f, 0x3bcc1bba, 0xf155a89d, 0xb1abe5e3, 0xd4c95827, 0x343a209c
.word 0x8d643ad3, 0xaebc9dfb, 0xbb9dec2d, 0x3779607e, 0xd9d7b0a0, 0xad29d932, 0x177982f5, 0x34b971e4
.word 0x21b32402, 0x46e582d8, 0x0c68e700, 0x8a630f8a, 0x71c94e8c, 0x71267ce8, 0x1c776c3e, 0x0dc206b3
.word 0xf44ddc96, 0x5a7a333d, 0x6f6a6379, 0x432d591b, 0x36e14cc6, 0x39a1b9e0, 0xe814c9ed, 0x555a37c6
.word 0x3fb8bd57, 0xf8c1261d, 0xecc6d5e7, 0x70ed4f57, 0x68d8009b, 0xe703b306, 0xfcb89d65, 0xcf723197
.word 0x4ad9b8a3, 0x90d80293, 0x3e0cdcd2, 0x238291a6, 0x838aaca0, 0x7d77521b, 0xd67b050d, 0x7dc7878b
.word 0xeb27c230, 0x340ff5a1, 0xdf31e041, 0x3a8089f7, 0x4c16c173, 0xfbd0d3a7, 0xa01310c7, 0x050dc199
.word 0x925044cd, 0x24b3cd76, 0x8fc63fd0, 0x083c435b, 0xe612c198, 0xdf9417f6, 0xd61d65f1, 0xc972995e
.word 0x2ef9bbd3, 0x0a7f5400, 0x51cf6220, 0x738ef321, 0x133b23e0, 0x3869397d, 0x191d93ed, 0x114d86ef
.word 0x736f8221, 0x881a9de4, 0x7939b9cb, 0x3e8fa18c, 0xbbac005a, 0xff71a701, 0xc034d217, 0x39a74d3e
.word 0x0d9f058b, 0x1730cbfa, 0x9e275728, 0xe2a2b8dc, 0x22da8756, 0x9662a04c, 0x4be0e1c0, 0x5f0aa8a3
.word 0x9cf6eaef, 0x578ed22e, 0x39b6e408, 0x17112ba7, 0x50f1b41e, 0x7a5c7195, 0x984ccc75, 0xdc507444
.word 0xad05b891, 0xbd3e4295, 0xe7c11260, 0x02d4d51b, 0x2c5cc462, 0xd01adecd, 0xb559c79e, 0x3e222c0f
.word 0x86275bd1, 0xa8542927, 0x6c1dff7e, 0xf1471e0f, 0x9aabf44c, 0x5a5b7b06, 0x1ca91afd, 0xf90ffb6f
.word 0x1ea568e0, 0xe22aea96, 0xbcf8294d, 0x6c5b6edf, 0x0df0cb1f, 0x2e260db5, 0x4e2af5c4, 0xcecc2de0
.word 0x6154e139, 0xcba630f2, 0xedd1e310, 0xd8b1e9a2, 0x990d8edb, 0x3c902916, 0x2237b2f8, 0xb0fd52c2
.word 0x4d4339e3, 0x9b0b5cc2, 0xbe8ff547, 0x1e60c33e, 0x123ea4e5, 0x5c13a546, 0xd714ea8a, 0x7177ddb4
.word 0x087c11c4, 0x38178e1c, 0x3c449e15, 0x2454efff, 0xa1543f8a, 0x345f9816, 0xd3b79249, 0xafa3d917
.word 0x75dcbcfe, 0x2741e290, 0xe947f4e5, 0x345c7928, 0x741d0cf1, 0x4bc6e02c, 0x37e227f5, 0xd292336f
.word 0x76525d5c, 0x7315a19e, 0x4e4a9bf8, 0x88beee10, 0x27095db2, 0xb763ca78, 0xfd814262, 0x3290a9de
.word 0xe3388d33, 0x5b7141d7, 0x46d4bc9c, 0x7e2ab719, 0xb98e7a2d, 0x408d5788, 0xe2943ef5, 0x02e1e3a3
.word 0x4133a041, 0xc3fb4712, 0x0943f91d, 0x32df9c39, 0xc0f1d1d6, 0x2d1d509d, 0xd2870a40, 0xab1bc803
.word 0x74096883, 0xdb3cef40, 0x99342696, 0x756c34d5, 0x6a64cc0d, 0xe02b7b49, 0xd4a441fb, 0x5fb6f8a3
.word 0x9482ab45, 0x8de0c588, 0x4934a0d7, 0xaacf1db5, 0x0f80ed4f, 0xf353226f, 0x90e3a4d4, 0xa1e6b316
.word 0xef82c5f0, 0x43cab836, 0xc63fed82, 0x7f71a280, 0x86a2fba1, 0x841d5459, 0xf8d21619, 0x4b48c8be
.word 0xfa8efc54, 0x0beea795, 0xf8b747a0, 0xf4f8ad3a, 0xc8736f44, 0x68a85a91, 0x164a7fc6, 0x4f2e7195
.word 0x77ec81b1, 0x06938838, 0x9bbbde09, 0x277f6621, 0x33c80199, 0x18c9a0b8, 0xf48bd7d1, 0x947ebcc1
.word 0xd5402fc2, 0x321de5d4, 0x6235cf8b, 0x3e47b881, 0x68ce1f79, 0x06a8119a, 0xf6e973bb, 0xc1e3a49e
.word 0xeaf530d8, 0x85de3abe, 0xea9e7c6d, 0x2ffbdfb4, 0x7967ca3f, 0x02b48a9a, 0x961d086a, 0x96eb47f1
.word 0x1186862b, 0x93fe8e5c, 0xe28053e0, 0x36d76a00, 0x312a242a, 0x6783df71, 0xa3638673, 0xb72c8d05
.word 0xa35c4b3b, 0xb6b9a96d, 0x877e5eb4, 0x041dc92d, 0x19d36cff, 0x5887ebbf, 0x82018d55, 0xf96259a2
.word 0xb5a5a0a0, 0xc515b058, 0xa3664de7, 0x81babb1c, 0x98ac2a04, 0x8b33cac0, 0xced771d9, 0x066737e3
.word 0x15bfaeb5, 0xc2124a63, 0x5ca52b00, 0x11b0a733, 0x36f1fb8a, 0x43f494e1, 0xe7832fab, 0x61ce496a
.word 0x662305a6, 0xce1a4a7e, 0x0c109250, 0xb39e3b5e, 0x605c74b3, 0x398880dd, 0x745fa915, 0x7872e29f
.word 0xcb9dd5ba, 0xa2eabb00, 0x5659bfed, 0xa623f6b2, 0xdd7e0b29, 0xe3bf7ea8, 0xf3b722d5, 0x82905108
.word 0x35ac1ecd, 0xf69c4c19, 0x88bf0de9, 0xf6c14f1b, 0xbe361922, 0xf2189f12, 0xea16c76e, 0x61465987
.word 0xb75c391b, 0x600ef559, 0xbb85c54c, 0x14ff3c08, 0x499ee8ae, 0xbec238ab, 0x1500d733, 0x6945e1d9
.word 0x21c61653, 0x331f729f, 0xf7d642a7, 0xd0b0571d, 0x7c345d8c, 0xfdf7e183, 0x45a284ed, 0x8bf310e3
.word 0x0107340d, 0x1cbaca4b, 0x707b395f, 0xd65f192d, 0x6b23d3be, 0xcb3530ff, 0x3b528bae, 0x9c3c8ef7
.word 0x63e37ec3, 0xcea6d1f7, 0x0cdf0aa4, 0x82c9eadc, 0x38fcf110, 0xcfbc965b, 0x6474a67c, 0xd78e70e2
.word 0xba88a4be, 0xb42e8c42, 0xfe61ceb6, 0x1d8e34f0, 0xffa1a5e5, 0x0ad72160, 0x7dffc4e4, 0xfa37a943
.word 0xe19406b8, 0x82c3926e, 0x922dacd9, 0xde3e688f, 0x3c9fc111, 0x9cad5dd2, 0x6a93dbae, 0x9917a906
.word 0xfd69484d, 0x4109c924, 0x4ec382cc, 0x578c97b8, 0x9e31c0bc, 0xb7c44b5d, 0xc36d118f, 0xf9943247
.word 0x3dc741b9, 0x15a253bc, 0x2ef560cc, 0x2414b931, 0x7d50ccba, 0xa575870f, 0x1a4e1489, 0xa3038eb4
.word 0x631029dc, 0x5df1baa1, 0xb15b5af5, 0xc365c6ac, 0x62044971, 0xaca6b02d, 0x291dfc73, 0xf8fdb1fd
.word 0x78559be8, 0xcdb889a5, 0x849fe01d, 0x21c8a0e4, 0xdc2a17d5, 0x4baeb8b5, 0x12bf0c50, 0x28682171
.word 0xf4839aa1, 0xf0d99f16, 0xb9dd50fd, 0x25c8e4c3, 0x0c4fdc8e, 0xa724ac29, 0x7fdd32eb, 0x6655b6df
.word 0x62eee496, 0xb4f4cff7, 0x7e3aec98, 0x2f7acc5d, 0xc381ac8d, 0xc70c4caf, 0x1da00320, 0x169042aa
.word 0x2b41eec1, 0xb07fab74, 0x1c18c793, 0x34938425, 0xebea8201, 0x3b38964a, 0x57c0c1b2, 0xed2a5446
.word 0xcedfb0af, 0x12808814, 0x34bd254c, 0x7fc28867, 0xb039ea3a, 0xda545149, 0xd03e8d94, 0x6576939c
.word 0xc6fc1b13, 0xd5393c58, 0x492890aa, 0x19ebfd0a, 0x01eb2a5b, 0xf0934d8e, 0xf019b108, 0xcb84a526
.word 0xab742771, 0x89c896b0, 0x16b59e93, 0xdd62b363
.section .region_1,"aw",@progbits;
region_1:
.word 0xf487f715, 0x00f47d2f, 0x1d149b5b, 0x477b3526, 0x1ace7335, 0xe4cf952b, 0xcff908d0, 0x27acaaf4
.word 0x7a747be7, 0x9f6f8075, 0x2855bc39, 0xe2e6b256, 0x1530bc8c, 0xd0c502d6, 0x5a8bb934, 0x2f9b2e6f
.word 0xa8d15efe, 0x8ec96f1f, 0x0430ac43, 0x468aba0e, 0xd3abaae9, 0xa35409fe, 0x2f9aa83e, 0xc35c5dd4
.word 0x2073810e, 0xfbac1185, 0x9eb7648b, 0xf3e0dd99, 0xddb519f7, 0x0b33fe35, 0x0c2828f6, 0xf2fe0d5a
.word 0x6322ce59, 0x3d9a5633, 0x293ecaa3, 0xddc73fb0, 0xf379745b, 0x79e201d6, 0x684766ad, 0xe8c5e1b1
.word 0x274e3ec3, 0x54cd6ac8, 0x20729ef1, 0x68908eeb, 0x28e40cfe, 0x236c1823, 0xe6e988b6, 0x54142076
.word 0x5585068e, 0x72bcd2cd, 0xe30b7eea, 0x55094551, 0x35a686f4, 0x917d7965, 0x2b516882, 0xe5400d15
.word 0x0e4c2639, 0x29171d9f, 0x5dd130c2, 0x2e289b25, 0x0df4dac7, 0xe7881885, 0xd3b8a48b, 0x4ccbf920
.word 0x537d152a, 0x20b2ee62, 0x1aac9ed7, 0xb98dcd52, 0x1db106df, 0xcb584797, 0xba0c74bf, 0x3071c6b3
.word 0x454f3a3e, 0x00cf0783, 0x49001966, 0x49e534fd, 0x26519516, 0x72d1de8f, 0x230c4772, 0x3f85164d
.word 0x910a1a38, 0x25f42ec5, 0x85ce6104, 0x91acce0a, 0xd42c0117, 0x5a818910, 0xfba512e3, 0x9745ca31
.word 0x04e01c1f, 0xc63e0072, 0xc1f2ba95, 0xd1d306cf, 0xc928d4e9, 0x86f2eabb, 0xd07517e5, 0xd932acf0
.word 0x0696a58a, 0xcd02abb2, 0x688be4e5, 0x49271563, 0xd85ae3d2, 0xdd4d1f06, 0xb2f78a88, 0x389abcf8
.word 0xd1d09e4a, 0x6bc8921b, 0x0edd3269, 0x5637286d, 0x5f44bcd6, 0x8758972a, 0x40ede781, 0x8e1f021b
.word 0x9d6a6ea2, 0xd6d22c59, 0x2de448f9, 0xf92958fe, 0xa7d1c177, 0x5a51fd9c, 0x6d8a58a3, 0x49f02b7a
.word 0xaa708775, 0x943269b8, 0x540b1c4b, 0x8ce7937d, 0x750c4813, 0xba94adc2, 0x0045a8ea, 0x1cba4bfa
.word 0xd38e1d93, 0x355da12c, 0x8884b147, 0x9ce59f24, 0xf4849821, 0x924e66a8, 0x783f31bd, 0xbaf472ee
.word 0xeb65a416, 0x3a49094f, 0x344cfe07, 0x059b9ec6, 0x42c2e754, 0xa4d4fcc9, 0xfe14739b, 0xd666d002
.word 0xc4f08ca3, 0xd9eda8ac, 0x31185c11, 0x78afb000, 0x0cdc8d88, 0x2c76fc6c, 0x6ed6c598, 0x60cdf9a7
.word 0x5071d307, 0x45294e80, 0xf7ad4e3b, 0xd0d96f49, 0xa26fd175, 0x900b5c24, 0xb1af8a50, 0x002c4778
.word 0xa3f583c8, 0x3cf04138, 0x1d2838e6, 0x5a618d86, 0x885cbaab, 0x14bac46c, 0x8c7eda69, 0xb34b798d
.word 0x8644a49d, 0x678b8988, 0x0f0b7c68, 0x17793803, 0x38de74a1, 0x0388dbb9, 0xeea34574, 0x40d1db75
.word 0xaa3d86af, 0xcca4845a, 0x56c4d089, 0x64b5e700, 0x21a58c26, 0xafeea698, 0x0fa0cc50, 0xe55e23a5
.word 0xfb4fe9aa, 0x216ed729, 0xfa82564d, 0x2b64fa3a, 0xfdcfe4b8, 0x5bf3d0ec, 0xe7fdc948, 0x89d1861f
.word 0x41876059, 0xd817858a, 0x566849f2, 0xf7019026, 0x3209a02c, 0xd159c0f1, 0xf19b82ba, 0xa06a7b02
.word 0x4d04dced, 0x53025906, 0xb86626a6, 0x8faba506, 0xa8fefa5a, 0xba693a06, 0x6cd0d86d, 0x2b173583
.word 0x7f9a3a7e, 0x610e4254, 0xcac17904, 0xf2e54e01, 0x796afcdc, 0xe9255ab1, 0x9b9dbc99, 0xc94e04cc
.word 0x83f759a9, 0x56684f0a, 0x7ff6c8f3, 0xff513273, 0x169e38b8, 0x7cca771d, 0xfe0106f9, 0x7cce6fb7
.word 0x4bee32ba, 0x30e9b8c6, 0xa5cd164c, 0x221ef731, 0xda3b5f7b, 0x200c9425, 0xb52fe6dd, 0x4fdb2561
.word 0xce107baa, 0xe2fa55fa, 0x3262103a, 0x098cabaf, 0x0b7002bd, 0x270afa98, 0xe34ee32a, 0x3de580e0
.word 0xdd881a4d, 0x13b3ed24, 0x8ed02ced, 0xccb09e87, 0x5454485a, 0xb2a53cb2, 0xfae360f6, 0xf9553468
.word 0x6f9a754d, 0x27765e95, 0x548e6e46, 0xbf80a0f4, 0xac47ad03, 0xcbe6daa0, 0xf57f36a7, 0x83af2c5f
.word 0xd068dde2, 0xfebb1fa7, 0xc3c4df50, 0x5698c12d, 0x69d72703, 0xa961c02b, 0x38fa981a, 0xd85107b8
.word 0x734fc392, 0x7239ca9f, 0x6f3cf6c9, 0x635a35e6, 0x519864fe, 0xa88d707f, 0x3594edd0, 0x271cdf56
.word 0x5904a384, 0xcec40bc2, 0xef879f7b, 0x2872e4e6, 0x224bc596, 0xe9ccdbf5, 0xc7d0582c, 0xa619cc17
.word 0x4e7d08ef, 0xc83f3584, 0x09dd3c64, 0x15e33509, 0x92df0cba, 0x1cb680ab, 0xf6f73cf5, 0x3dc6db5f
.word 0xfeaeca2c, 0xd634b866, 0x06b3c48d, 0xb03b1cee, 0x35e61e4d, 0xf1f88ee4, 0xd06a23e9, 0xbb160ed5
.word 0xd50f1a76, 0x70ed01af, 0x8c684b61, 0xd1139260, 0x5990d586, 0x11c9c245, 0x5f29965f, 0x00e3a1ac
.word 0x527ac89b, 0xf77e9584, 0x2519feab, 0x435cafec, 0xee3d345a, 0xb2af53fc, 0x15de01f4, 0xf7d84d05
.word 0xecd747b9, 0xeeb1e407, 0x66583a1f, 0xa61c5974, 0xb934def2, 0x7217e950, 0x06fa33c1, 0xa804cc59
.word 0x936ca132, 0x3d5c703a, 0x570f1ff9, 0xa5476d85, 0x503211e5, 0x9afae009, 0xfc189e39, 0x717b1ee0
.word 0x73b8068f, 0xd0f86b87, 0xbd4b0684, 0xa5015fe2, 0x53abb683, 0xb64283d3, 0x86922312, 0x15f43691
.word 0xd5168515, 0x7d162554, 0xc063895c, 0x9712cae7, 0x8573df31, 0x1962657d, 0x67f77bb3, 0x899a308b
.word 0x0ae8e0dc, 0xd975d248, 0xf1105e0b, 0x29816066, 0xe32b5cbd, 0x870564f6, 0x448492ee, 0x9c738468
.word 0x5c085557, 0x132a3b6c, 0x7f046d3e, 0x6d54edfb, 0x1b522072, 0x8d63cd52, 0x411ab368, 0x39cbb40b
.word 0xe8997c8d, 0x20ffae6c, 0x31d8d7ee, 0x49dca1c1, 0x899cced8, 0x81601350, 0x8111885a, 0xe84ca756
.word 0x4a9fd847, 0x53e62a33, 0x7236b1a8, 0x5a3928fd, 0x8e773837, 0xc78dc926, 0x1e5f22c6, 0x2edd191f
.word 0x61a2e106, 0x2fb4f02c, 0x4fec29b4, 0x57a088cd, 0x6179a9d6, 0x3d60709b, 0xb8ab8a75, 0x1889f0b1
.word 0x4f611ff7, 0x7d726340, 0x7aaeb1a4, 0x70f5ded8, 0x352642fb, 0x76afaacb, 0x0b2ff120, 0x8ae73b36
.word 0xd2482dfa, 0xee44ec64, 0x61083245, 0xeddd4c02, 0xd879c641, 0x9ec04baf, 0xb13996ff, 0x7b10f8cb
.word 0x7502bb4c, 0x798c1505, 0xb8ca77c9, 0xc56b47dd, 0x222cae64, 0x9861d694, 0x99131396, 0xcc78501a
.word 0x4cb931b7, 0xbcdfbf0e, 0x11e11c4e, 0x9b8966f4, 0xd88c18ff, 0xf102dccd, 0xd04dffdb, 0x0f5257eb
.word 0xab2b57a6, 0x2c55656e, 0x9cf800a2, 0x9ddb7840, 0x1558c3c2, 0x156aade4, 0xb67debbe, 0xe7357f25
.word 0x14473809, 0x28556c1a, 0x5a31d615, 0xe656b5af, 0xfb14ab4d, 0xdbddcbe0, 0x5c995371, 0x7e139e07
.word 0x01de4b49, 0x319ff477, 0xe496f136, 0x27403ac0, 0x501a44af, 0xae624cac, 0x7d9b0194, 0xe641674d
.word 0x9628e95c, 0x1dacb597, 0x336486ed, 0xd4524c85, 0x0184abc8, 0xc3c3fac3, 0xb41bead3, 0x5b8e8f72
.word 0x196671c3, 0x0fd5c5bc, 0x3046bdd7, 0xe31f2de1, 0x8d69de2a, 0x96dc6747, 0xe8b43c5e, 0xcac52bb8
.word 0x40fb73a2, 0x46532590, 0x69ae2116, 0x99088868, 0xae249040, 0xc2233ad1, 0xa9fb67ec, 0x37f62448
.word 0xcf85c184, 0xa5bca34d, 0x55b78783, 0x139332fc, 0xa3f765ca, 0x08be4579, 0x389173b8, 0x2dd5c670
.word 0xe3616998, 0xa45ff91b, 0xc64ac414, 0x67f6fe61, 0x1830ad5b, 0x1392b6c3, 0xb29e16f8, 0x8ef91cdf
.word 0xb39ec4f3, 0x6339f979, 0xa2814cdd, 0xc7cfdde7, 0x616fd0bc, 0x6515af6b, 0x9b35e3f4, 0x267547e0
.word 0x95aaa9a4, 0x9a10f0a8, 0x2f062cec, 0x73b2e184, 0x41bdaeef, 0x374e5cdb, 0xe291e72d, 0xf5c87ab2
.word 0x64a68a32, 0xc675a7ef, 0x00878cad, 0x8e5b10dd
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
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x30, x12, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_2:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x30, x12, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_3:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x30, x12, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_4:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x30, x12, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_5:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x30, x12, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_6:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x30, x12, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_7:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x30, x12, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_8:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x30, x12, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_9:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x30, x12, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_10:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x30, x12, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_11:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x30, x12, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_12:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x30, x12, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_13:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x30, x12, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_14:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x30, x12, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_15:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x30, x12, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

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
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x30, x12, zero
                  csrr x5, 0x341 # MEPC
                  csrr x5, 0x342 # MCAUSE
                  li x8, 0x3 # BREAKPOINT
                  beq x5, x8, ebreak_handler
                  li x8, 0x8 # ECALL_UMODE
                  beq x5, x8, ecall_handler
                  li x8, 0x9 # ECALL_SMODE
                  beq x5, x8, ecall_handler
                  li x8, 0xb # ECALL_MMODE
                  beq x5, x8, ecall_handler
                  li x8, 0x1
                  beq x5, x8, instr_fault_handler
                  li x8, 0x5
                  beq x5, x8, load_fault_handler
                  li x8, 0x7
                  beq x5, x8, store_fault_handler
                  li x8, 0xc
                  beq x5, x8, pt_fault_handler
                  li x8, 0xd
                  beq x5, x8, pt_fault_handler
                  li x8, 0xf
                  beq x5, x8, pt_fault_handler
                  li x8, 0x2 # ILLEGAL_INSTRUCTION
                  beq x5, x8, illegal_instr_handler
                  csrr x8, 0x343 # MTVAL
                  1: la x4, test_done
                  jalr x1, x4, 0

ecall_handler:    
                  la x5, _start
                  sw x0, 0(x5)
                  sw x1, 4(x5)
                  sw x2, 8(x5)
                  sw x3, 12(x5)
                  sw x4, 16(x5)
                  sw x5, 20(x5)
                  sw x6, 24(x5)
                  sw x7, 28(x5)
                  sw x8, 32(x5)
                  sw x9, 36(x5)
                  sw x10, 40(x5)
                  sw x11, 44(x5)
                  sw x12, 48(x5)
                  sw x13, 52(x5)
                  sw x14, 56(x5)
                  sw x15, 60(x5)
                  sw x16, 64(x5)
                  sw x17, 68(x5)
                  sw x18, 72(x5)
                  sw x19, 76(x5)
                  sw x20, 80(x5)
                  sw x21, 84(x5)
                  sw x22, 88(x5)
                  sw x23, 92(x5)
                  sw x24, 96(x5)
                  sw x25, 100(x5)
                  sw x26, 104(x5)
                  sw x27, 108(x5)
                  sw x28, 112(x5)
                  sw x29, 116(x5)
                  sw x30, 120(x5)
                  sw x31, 124(x5)
                  la x4, write_tohost
                  jalr x0, x4, 0

instr_fault_handler:
                  add x12, x30, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

load_fault_handler:
                  add x12, x30, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

store_fault_handler:
                  add x12, x30, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

ebreak_handler:   
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x12, x30, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

illegal_instr_handler:
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x12, x30, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x5, 0x300 # MSTATUS;
                  csrr  x5, 0x304 # MIE;
                  csrr  x5, 0x344 # MIP;
                  csrrc x5, 0x344, x5 # MIP;
                  add x12, x30, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
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
