.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x11, 0x40000100
                  csrw 0x301, x11
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x11, mtvec_handler
                  ori x11, x11, 0
                  csrw 0x305, x11 # MTVEC

mepc_setup:       
                  la x11, init
                  csrw 0x341, x11

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x11, 0x1800
                  csrw 0x300, x11 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x7
                  li x2, 0xf68594fd
                  li x3, 0x80000000
                  li x4, 0x112d4158
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0x7
                  li x9, 0xff957f6a
                  li x10, 0x0
                  li x11, 0x80000000
                  li x12, 0x4
                  li x14, 0x80000000
                  li x15, 0x0
                  li x16, 0x8
                  li x17, 0xfc680e03
                  li x18, 0xd
                  li x19, 0x80000000
                  li x20, 0xf4806f9c
                  li x21, 0x80000000
                  li x22, 0x9
                  li x23, 0x7
                  li x24, 0xed2761e4
                  li x25, 0x80000000
                  li x26, 0x80000000
                  li x28, 0x0
                  li x29, 0xc
                  li x30, 0x80000000
                  li x31, 0xe
                  la x27, user_stack_end
main:             jal          t1, 23f
0:                jal          ra, 2f
1:                jal          tp, 9f
2:                jal          ra, 12f
3:                jal          t1, 15f
4:                jal          s4, 6f
5:                jal          gp, 16f
6:                jal          t1, 19f
7:                jal          t1, 11f
8:                jal          ra, 18f
9:                jal          t3, 21f
10:               jal          ra, 17f
11:               jal          ra, 8b
12:               jal          ra, 4b
13:               jal          s10, 1b
14:               jal          t1, 7b
15:               jal          s1, 5b
16:               jal          ra, 10b
17:               jal          t1, 24f
18:               jal          a6, 20f
19:               jal          ra, 3b
20:               jal          tp, 13b
21:               jal          t2, 0b
22:               jal          ra, 14b
23:               jal          t1, 22b
24:               srai         tp, a6, 18
main_6:           jal          t1, 2f
0:                jal          ra, 1f
1:                jal          t2, 4f
2:                jal          ra, 8f
3:                jal          t1, 7f
4:                jal          ra, 5f
5:                jal          ra, 9f
6:                jal          t4, 10f
7:                jal          t1, 6b
8:                jal          ra, 0b
9:                jal          t1, 3b
10:               auipc        s4, 638065
main_7:           jal          t1, 6f
0:                jal          ra, 8f
1:                jal          t1, 12f
2:                jal          ra, 10f
3:                jal          ra, 9f
4:                jal          t3, 19f
5:                jal          ra, 14f
6:                jal          s8, 17f
7:                jal          ra, 16f
8:                jal          t1, 1b
9:                jal          t0, 15f
10:               jal          ra, 4b
11:               jal          ra, 0b
12:               jal          ra, 2b
13:               jal          ra, 18f
14:               jal          s6, 13b
15:               jal          ra, 7b
16:               jal          tp, 5b
17:               jal          t6, 3b
18:               jal          ra, 11b
19:               slti         t5, a2, -979
main_4:           jal          t1, 7f
0:                jal          ra, 10f
1:                jal          gp, 9f
2:                jal          ra, 4f
3:                jal          t1, 8f
4:                jal          ra, 5f
5:                jal          t1, 1b
6:                jal          ra, 0b
7:                jal          t1, 2b
8:                jal          ra, 6b
9:                jal          ra, 3b
10:               jal          ra, 11f
11:               slti         s1, s7, 767
main_3:           jal          t1, 3f
0:                jal          t5, 10f
1:                jal          t1, 2f
2:                jal          gp, 6f
3:                jal          s10, 13f
4:                jal          ra, 5f
5:                jal          t1, 0b
6:                jal          t1, 4b
7:                jal          t1, 11f
8:                jal          ra, 1b
9:                jal          a2, 12f
10:               jal          t1, 14f
11:               jal          ra, 9b
12:               jal          t1, 8b
13:               jal          ra, 7b
14:               slli         a0, s11, 29
main_0:           jal          t1, 4f
0:                jal          t1, 24f
1:                jal          ra, 30f
2:                jal          ra, 12f
3:                jal          t1, 29f
4:                jal          tp, 19f
5:                jal          t1, 1b
6:                jal          ra, 3b
7:                jal          ra, 26f
8:                jal          t1, 13f
9:                jal          gp, 2b
10:               jal          t0, 23f
11:               jal          t1, 10b
12:               jal          t0, 18f
13:               jal          ra, 17f
14:               jal          t1, 16f
15:               jal          ra, 9b
16:               jal          ra, 28f
17:               jal          t1, 14b
18:               jal          ra, 0b
19:               jal          s7, 11b
20:               jal          ra, 5b
21:               jal          sp, 20b
22:               jal          gp, 7b
23:               jal          s5, 15b
24:               jal          s3, 25f
25:               jal          ra, 8b
26:               jal          ra, 27f
27:               jal          ra, 6b
28:               jal          a6, 22b
29:               jal          t1, 21b
30:               sub          s2, ra, s3
main_2:           jal          t1, 11f
0:                jal          ra, 13f
1:                jal          s8, 10f
2:                jal          t0, 9f
3:                jal          ra, 8f
4:                jal          t1, 7f
5:                jal          ra, 0b
6:                jal          t1, 3b
7:                jal          ra, 16f
8:                jal          t1, 5b
9:                jal          t1, 1b
10:               jal          t1, 14f
11:               jal          ra, 15f
12:               jal          ra, 4b
13:               jal          ra, 2b
14:               jal          t1, 12b
15:               jal          ra, 6b
16:               add          a5, s5, t4
main_5:           jal          t1, 13f
0:                jal          t1, 15f
1:                jal          t1, 11f
2:                jal          ra, 7f
3:                jal          ra, 4f
4:                jal          ra, 8f
5:                jal          s5, 1b
6:                jal          sp, 0b
7:                jal          t5, 3b
8:                jal          ra, 14f
9:                jal          ra, 2b
10:               jal          a1, 9b
11:               jal          ra, 16f
12:               jal          t1, 10b
13:               jal          t1, 12b
14:               jal          a7, 6b
15:               jal          ra, 5b
16:               and          t2, a0, a3
main_10:          jal          t1, 14f
0:                jal          ra, 5f
1:                jal          ra, 18f
2:                jal          ra, 1b
3:                jal          ra, 15f
4:                jal          ra, 13f
5:                jal          ra, 6f
6:                jal          a0, 12f
7:                jal          t1, 3b
8:                jal          t1, 10f
9:                jal          ra, 17f
10:               jal          ra, 2b
11:               jal          ra, 7b
12:               jal          ra, 9b
13:               jal          a1, 16f
14:               jal          t1, 11b
15:               jal          ra, 0b
16:               jal          tp, 8b
17:               jal          a5, 4b
18:               sub          a7, s2, a0
main_1:           jal          t1, 11f
0:                jal          ra, 15f
1:                jal          ra, 24f
2:                jal          ra, 25f
3:                jal          ra, 7f
4:                jal          tp, 19f
5:                jal          s10, 23f
6:                jal          t1, 9f
7:                jal          gp, 2b
8:                jal          ra, 20f
9:                jal          ra, 3b
10:               jal          a4, 26f
11:               jal          s0, 27f
12:               jal          ra, 4b
13:               jal          t1, 6b
14:               jal          ra, 22f
15:               jal          t3, 21f
16:               jal          t5, 8b
17:               jal          ra, 28f
18:               jal          ra, 29f
19:               jal          ra, 0b
20:               jal          ra, 17b
21:               jal          ra, 14b
22:               jal          t0, 1b
23:               jal          ra, 12b
24:               jal          t1, 16b
25:               jal          a5, 5b
26:               jal          tp, 18b
27:               jal          t1, 13b
28:               jal          sp, 10b
29:               add          s4, gp, a5
                  slli         t5, a6, 19
                  ori          a4, a6, -534
                  xori         t2, s8, 143
                  bge          a7, t2, 4f
4:                sra          t6, zero, t1
                  srl          s3, s2, t6
                  add          zero, t6, s10
                  bge          ra, t1, 10f
                  sra          a6, t4, s4
                  bge          s5, sp, 16f
10:               srai         a2, a2, 14
                  sub          s5, zero, sp
                  bne          s9, tp, 21f
                  sra          tp, t2, s4
                  sra          a4, zero, ra
                  sltiu        sp, tp, 1900
16:               sll          s5, s2, a3
                  sll          s1, sp, gp
                  srl          s1, tp, t1
                  beq          t1, s1, 21f
                  and          a5, s10, a5
21:               auipc        a5, 1007530
                  bgeu         sp, a5, 36f
                  bne          a2, s8, 42f
                  srli         s8, s3, 29
                  xor          s3, t1, s1
                  xor          s5, a5, t4
                  or           sp, t3, a4
                  or           t5, zero, s9
                  sll          t3, s1, s0
                  add          gp, a4, t0
                  andi         t2, tp, -557
                  addi         a2, tp, -1554
                  srl          sp, ra, s6
                  beq          sp, a5, 37f
                  sub          s8, s8, a2
36:               sub          t4, a1, s1
37:               beq          s3, t2, 45f
                  or           s2, t2, t5
                  sltu         s8, a6, s3
                  ori          t2, s3, -63
                  auipc        gp, 12541
42:               beq          s1, s10, 49f
                  bne          s2, t4, 54f
                  bltu         s7, s8, 48f
45:               slli         a7, s10, 21
                  srai         s4, t2, 19
                  nop
48:               sltu         s1, zero, zero
49:               andi         t1, a4, 1836
                  xor          t2, s2, a6
                  andi         a6, s4, -934
                  bne          a3, zero, 62f
                  and          t6, s6, s7
54:               auipc        s10, 308907
                  auipc        t2, 346001
                  ori          s4, zero, -845
                  sub          s8, ra, s2
                  bge          a1, s9, 70f
                  nop
                  sub          s5, s11, t5
                  sltiu        a2, a4, 1981
62:               auipc        s4, 989326
                  sra          ra, ra, t6
                  bne          t5, sp, 71f
                  bge          t2, s8, 83f
                  addi         a1, s1, -1556
                  slli         zero, gp, 9
                  sll          s10, a0, s2
                  srli         a5, a6, 0
70:               nop
71:               or           a0, a6, s10
                  xor          a4, a0, a6
                  beq          a5, a6, 77f
                  addi         s0, s4, -1006
                  xori         gp, t3, 1044
                  ori          s8, gp, 1652
77:               slt          zero, t2, t3
                  beq          s2, s1, 84f
                  beq          s9, s5, 99f
                  beq          s10, a7, 87f
                  bge          t2, t3, 100f
                  sll          a4, a6, s7
83:               addi         sp, s6, 363
84:               blt          a2, s9, 85f
85:               xori         gp, a5, 63
                  or           s4, s5, s5
87:               blt          t4, s9, 97f
                  slt          t1, a5, t4
                  sltiu        a6, t0, -756
                  andi         s5, a0, -946
                  bne          s1, s7, 110f
                  sltiu        a7, s5, 1616
                  nop
                  and          zero, s2, t1
                  bltu         t1, s4, 108f
                  ori          s7, zero, -452
97:               lui          a7, 692416
                  sltiu        s3, t3, -402
99:               srli         a5, a1, 8
100:              slli         s1, a3, 25
                  slli         s4, ra, 24
                  or           s7, a7, s10
                  add          ra, s9, a6
                  sub          gp, a3, s4
                  slt          ra, t5, t5
                  bltu         a4, s4, 108f
                  addi         t4, a3, 146
108:              and          s10, s0, s6
                  xori         s10, t2, -1730
110:              slt          t5, t5, s3
                  auipc        gp, 333342
                  or           gp, a7, s3
                  nop
                  slli         t0, a7, 0
                  beq          a0, t0, 135f
                  srai         t3, s8, 30
                  slt          s5, a0, a1
                  slli         t2, s2, 14
                  srl          a4, s10, t3
                  sra          t3, t0, s2
                  sltiu        s2, t4, -1076
                  srl          a0, s8, t5
                  srl          tp, a0, s11
                  bne          tp, s3, 125f
125:              sll          s2, s0, t1
                  lui          zero, 288289
                  sub          ra, zero, gp
                  srl          s3, a4, tp
                  ori          s1, t3, 1905
                  srli         a2, s7, 24
                  and          tp, tp, sp
                  slli         s1, s1, 9
                  xor          t6, s0, sp
                  slli         t5, s9, 15
135:              ori          t3, a3, 246
                  xori         s4, t5, -1199
                  bne          t6, a5, 147f
                  sltiu        t2, t0, 1652
                  addi         a7, sp, 929
                  sra          sp, t6, a5
                  xor          t3, sp, a7
                  ori          a1, a7, -1205
                  beq          s2, s9, 153f
                  addi         sp, t6, -1215
                  ori          tp, s3, -434
                  bltu         tp, s9, 156f
147:              add          gp, s3, s3
                  srai         t6, tp, 5
                  sll          s3, t4, s4
                  addi         s6, t1, 1993
                  blt          zero, s10, 153f
                  srli         s1, a7, 3
153:              slt          a2, t4, s8
                  bltu         t0, t1, 166f
                  bge          a3, t2, 166f
156:              ori          s10, s5, 1046
                  sltu         s8, s7, t5
                  slt          s5, t1, a6
                  slt          s2, s6, s11
                  sll          s3, a5, t3
                  andi         s1, s9, -1178
                  bne          s7, t5, 166f
                  add          s7, a4, ra
                  sra          t0, t5, s1
                  srai         s7, sp, 29
166:              slt          s10, s5, s5
                  slli         s10, a1, 24
                  srl          t4, t1, s11
                  srli         tp, s5, 8
                  or           tp, t1, a3
                  bge          s9, s0, 181f
                  sll          s10, t1, t2
                  sll          zero, tp, s5
                  blt          t4, t6, 192f
                  sub          s5, t1, sp
                  bge          a7, s9, 183f
                  slt          t6, a5, a2
                  srai         s7, s1, 2
                  add          a7, tp, s4
                  add          t3, zero, a4
181:              slli         s6, s8, 30
                  srli         ra, a1, 7
183:              sltiu        s10, s1, 1739
                  slti         tp, s6, 515
                  and          a1, a7, s2
                  lui          t6, 485376
                  bltu         s0, s2, 188f
188:              add          s1, s5, s3
                  slt          a7, s0, t6
                  or           s7, sp, t2
                  or           t1, s7, a5
192:              sltiu        a6, s7, 776
                  nop
                  xori         s1, s3, -1507
                  or           s0, s1, gp
                  or           s6, s11, t0
                  sub          s4, t1, a4
                  lui          t5, 828215
                  srai         s1, zero, 30
                  beq          a0, t6, 214f
                  sll          s1, t4, s2
                  blt          s8, a3, 203f
203:              bltu         a6, s4, 216f
                  nop
                  and          a0, s7, t4
                  auipc        s7, 192941
                  xor          t6, s9, s4
                  add          a7, t6, a2
                  auipc        ra, 414812
                  beq          ra, s2, 229f
                  bltu         a5, s7, 218f
                  auipc        s0, 173864
                  ori          t3, t2, 1347
214:              slli         s2, t5, 18
                  beq          t2, t4, 234f
216:              bgeu         zero, zero, 236f
                  beq          s11, s7, 224f
218:              sub          s1, s11, t5
                  bne          a2, a0, 227f
                  auipc        s2, 531604
                  bgeu         s4, t3, 228f
                  addi         a5, s5, 750
                  slti         s3, a3, -53
224:              slli         a1, gp, 27
                  srai         t2, s5, 27
                  slti         t6, sp, -840
227:              xori         t1, a1, 795
228:              addi         t4, s5, -1424
229:              slli         a4, s3, 7
                  slli         tp, gp, 8
                  slti         s8, a3, -1790
                  sub          t5, s2, sp
                  add          a0, t3, s5
234:              add          a0, a0, t5
                  sltiu        gp, sp, 357
236:              slli         s6, a0, 10
                  sltu         t3, t6, a7
                  andi         a6, t6, 1634
                  bgeu         s4, t2, 249f
                  slti         a2, a7, -1193
                  srli         tp, sp, 26
                  srli         s2, ra, 21
                  sltu         t0, t2, s11
                  nop
                  srai         s2, t3, 0
                  sltu         gp, t1, t0
                  andi         t1, t0, 133
                  and          a4, a4, s4
249:              sub          ra, a0, s9
                  sub          t4, s9, t3
                  beq          a2, s7, 260f
                  sub          a0, s8, a4
                  auipc        tp, 881114
                  srl          s3, s2, a0
                  bgeu         s2, s4, 259f
                  add          zero, t1, s7
                  blt          t1, s9, 276f
                  sltiu        ra, s9, 836
259:              xor          a7, s2, s1
260:              bne          t4, t0, 261f
261:              add          tp, a4, s5
                  slt          s7, s8, s3
                  sll          gp, s7, s9
                  slli         t1, s10, 22
                  add          t4, t2, s7
                  xor          zero, a6, gp
                  and          t3, t1, a3
                  xori         sp, a6, 434
                  slti         a4, s3, 729
                  sltiu        a1, t3, 1860
                  sub          s2, s0, a0
                  bne          a5, gp, 275f
                  andi         a4, s8, -191
                  addi         a1, s0, -990
275:              sltu         s1, s3, s7
276:              sltu         ra, t3, s6
                  srl          s8, tp, s0
                  sra          t5, s1, a3
                  sub          a6, t6, s9
                  beq          s0, a1, 300f
                  slti         a5, t3, 1087
                  sra          a1, s2, a7
                  andi         a2, s10, -1962
                  slli         s4, a4, 9
                  slt          a4, tp, s7
                  sltiu        s3, t5, -1297
                  ori          s2, a5, -1877
                  and          a6, sp, a6
                  nop
                  srli         t0, a2, 14
                  beq          t3, t6, 297f
                  blt          tp, t5, 294f
                  ori          t0, s7, 913
294:              xori         s7, a1, 1837
                  blt          gp, a0, 298f
                  add          gp, gp, s1
297:              beq          s10, t1, 307f
298:              bgeu         gp, t2, 301f
                  blt          s4, ra, 306f
300:              bgeu         s10, a6, 318f
301:              ori          s7, s6, 15
                  lui          t5, 1043678
                  bgeu         t3, t1, 317f
                  add          t2, s7, t1
                  sll          tp, a1, t2
306:              srai         a6, t4, 5
307:              add          t2, s10, s3
                  sltu         s10, tp, t6
                  xori         a5, t6, -83
                  addi         a4, s10, 359
                  slli         s0, t4, 5
                  sra          a1, gp, t2
                  bne          zero, t1, 326f
                  or           a0, s9, s2
                  sltu         sp, zero, tp
                  lui          sp, 21767
317:              slt          gp, a3, s9
318:              slti         a2, s1, 1984
                  sub          s6, s1, a6
                  auipc        t0, 112769
                  sll          t6, s10, t1
                  nop
                  bne          gp, t3, 343f
                  sra          s2, s3, s8
                  srl          a1, t6, a4
                  la           s8, sub_1
                  ori          a2, ra, -1747
                  andi         zero, a7, 553
                  slti         t5, a0, -380
                  addi         s8, s8, 748
                  sltu         a4, a1, a2
                  slli         s3, a4, 29
                  xor          t0, s4, a7
                  xori         t0, t3, 752
main_j1:          jalr         t1, s8, -747 #jump main -> sub_1
326:              slt          a2, t4, a3
                  bltu         a6, s11, 331f
                  slti         a4, t3, 1642
                  and          t1, s2, a6
                  and          t0, t2, gp
331:              sltu         s2, a4, s7
                  srl          t1, s9, a1
                  bgeu         a3, t0, 335f
                  bgeu         a2, zero, 338f
335:              sll          s7, t4, s5
                  sll          a2, t1, a7
                  andi         s0, s7, 1792
338:              sltu         s1, t4, s6
                  bge          a7, s7, 358f
                  sra          sp, zero, s7
                  nop
                  bge          s3, s10, 345f
343:              or           s6, s9, s7
                  ori          s7, s2, -1403
345:              or           s8, tp, t6
                  addi         t3, a7, -1271
                  bgeu         t3, s0, 353f
                  auipc        s3, 872371
                  xori         s10, s5, -1477
                  add          s6, gp, gp
                  add          s5, a6, zero
                  slti         gp, s1, -973
353:              sltiu        s8, a3, 956
                  blt          a7, s1, 365f
                  lui          s3, 550590
                  xor          a6, s1, zero
                  bne          zero, t6, 376f
358:              and          a6, t2, s2
                  nop
                  sub          a6, s1, t3
                  nop
                  lui          zero, 853713
                  slt          t0, s2, s5
                  blt          a2, gp, 374f
365:              slli         s5, s9, 28
                  bgeu         s10, a2, 376f
                  beq          s6, a1, 374f
                  sltiu        t4, t1, -1722
                  bgeu         a6, t1, 388f
                  andi         t5, ra, -1895
                  slt          s6, a1, s7
                  sll          s8, a1, s3
                  sll          a7, s3, a2
374:              sra          s6, sp, a2
                  addi         a4, ra, 635
376:              sltu         s5, s1, a7
                  xor          t3, sp, s11
                  add          sp, s0, a5
                  or           a4, a5, s2
                  sltiu        s2, s3, 1056
                  bge          zero, t1, 390f
                  andi         s7, s1, 1832
                  slli         a4, s1, 9
                  sltu         s3, tp, a5
                  beq          s11, s7, 397f
                  slt          t5, a1, s8
                  srai         t0, s8, 17
388:              sltiu        a0, s2, -888
                  addi         s1, s0, -1506
390:              sltiu        gp, t4, -1408
                  xori         t4, sp, 1418
                  sltu         zero, t5, t6
                  bgeu         tp, a4, 401f
                  sub          t1, t2, s4
                  nop
                  andi         s2, s1, -1732
397:              sltiu        ra, s11, -1141
                  bltu         a7, s1, 418f
                  auipc        t5, 796407
                  sra          a5, a5, s6
401:              auipc        a2, 996646
                  ori          zero, s1, -1439
                  bne          s1, t3, 404f
404:              sub          a7, s1, gp
                  sltu         s8, s6, a2
                  xori         s10, s1, -1512
                  srli         t1, a6, 3
                  nop
                  beq          a0, tp, 410f
410:              slti         t5, zero, 194
                  slt          t0, gp, s4
                  bne          s5, s3, 419f
                  bgeu         a1, a3, 414f
414:              sltu         tp, zero, t0
                  andi         s7, s6, 905
                  slti         t6, t3, -1094
                  bgeu         a3, s2, 424f
418:              lui          s3, 827513
419:              bltu         a2, t1, 429f
                  andi         t0, a4, 657
                  srli         t0, s6, 29
                  sll          s5, s5, t5
                  xor          gp, s10, t4
424:              sltu         t5, s10, s5
                  srl          gp, a1, s0
                  slti         s2, s2, -1420
                  sltu         t3, t0, a1
                  and          a7, a1, t0
429:              nop
                  or           a2, t5, gp
                  srai         a1, a7, 8
                  sll          s7, t1, t4
                  or           s0, a3, t3
                  nop
                  sra          a6, a1, t6
                  sub          ra, s8, zero
                  srl          s5, s1, a3
                  sll          gp, s11, a0
                  and          t5, a3, s10
                  bge          s1, s4, 450f
                  beq          s3, sp, 443f
                  auipc        a5, 593285
443:              bgeu         s8, a3, 461f
                  beq          sp, s1, 446f
                  slt          t1, s1, a7
446:              blt          s9, a4, 450f
                  xor          s0, a5, sp
                  sltiu        t2, a7, -1164
                  ori          s2, a4, -1194
450:              and          s1, a1, t1
                  srli         s10, tp, 8
                  slli         s5, s1, 10
                  add          ra, t1, a0
                  slt          sp, s4, s4
                  bgeu         gp, t3, 467f
                  sra          s5, s5, s6
                  sltu         ra, gp, s5
                  beq          ra, zero, 465f
                  bne          s4, s2, 469f
                  bgeu         t1, zero, 468f
461:              lui          sp, 486763
                  srl          a5, sp, ra
                  slli         t2, sp, 6
                  or           t4, ra, a4
465:              srli         sp, s4, 24
                  slli         s8, t5, 31
467:              slt          t5, a7, t2
468:              bltu         a1, a1, 471f
469:              sub          t3, sp, s11
                  ori          a1, t0, 1001
471:              or           ra, zero, t2
                  nop
                  sltiu        ra, s1, -586
                  srai         s10, t3, 1
                  andi         a6, s7, -1226
                  or           a6, s3, s5
                  bge          s0, t1, 487f
                  and          t3, a6, s5
                  bge          s6, s6, 480f
480:              blt          s7, gp, 490f
                  bgeu         s6, t2, 495f
                  srai         s2, s3, 18
                  andi         a5, a4, 752
                  srai         a6, tp, 13
                  addi         s8, s7, -1410
                  xori         s4, a1, 1071
487:              slli         ra, t0, 17
                  sltu         gp, s3, t5
                  and          a1, s5, a5
490:              sub          s5, t0, s3
                  bltu         s11, sp, 493f
                  slt          t4, a1, t2
493:              ori          s5, t6, -1987
main_8:           jal          t1, 6f
0:                jal          ra, 2f
1:                jal          ra, 5f
2:                jal          s8, 8f
3:                jal          ra, 9f
4:                jal          ra, 7f
5:                jal          ra, 0b
6:                jal          ra, 4b
7:                jal          t1, 1b
8:                jal          t4, 3b
9:                jal          ra, 10f
10:               addi         s10, t2, 552
                  add          s10, t0, s10
495:              sub          gp, a6, a3
                  add          a0, t1, gp
                  slt          t0, a0, s1
                  xori         sp, tp, -269
                  beq          a7, t4, 506f
                  srl          sp, a7, s3
                  blt          a2, a0, 505f
                  bne          a1, s10, 509f
                  bge          a7, t6, 522f
                  xor          a4, t5, tp
505:              or           t0, t0, s1
506:              sub          s7, zero, s5
                  beq          a0, a7, 517f
                  sub          s7, a4, t2
509:              srai         s4, a6, 5
                  andi         s3, t6, 1648
                  sub          a1, s0, s2
                  add          a2, t0, s11
main_9:           jal          t1, 8f
0:                jal          a1, 24f
1:                jal          t1, 4f
2:                jal          t1, 11f
3:                jal          t1, 0b
4:                jal          t1, 17f
5:                jal          gp, 2b
6:                jal          ra, 3b
7:                jal          a6, 13f
8:                jal          t1, 12f
9:                jal          ra, 10f
10:               jal          ra, 20f
11:               jal          ra, 22f
12:               jal          s4, 21f
13:               jal          s8, 23f
14:               jal          t1, 26f
15:               jal          ra, 19f
16:               jal          ra, 18f
17:               jal          tp, 14b
18:               jal          ra, 7b
19:               jal          sp, 6b
20:               jal          ra, 15b
21:               jal          t1, 16b
22:               jal          s10, 9b
23:               jal          ra, 25f
24:               jal          ra, 1b
25:               jal          t0, 5b
26:               addi         t3, ra, 1568
                  lui          a4, 718966
                  ori          t0, a6, -1571
                  srl          a1, t3, s9
                  srai         gp, s5, 0
517:              srl          s3, s0, s7
                  andi         t0, t5, 1599
                  or           s5, s8, s3
                  beq          t6, s11, 539f
                  sra          a5, tp, s8
522:              sltiu        t1, t5, -250
                  xori         ra, tp, -1600
                  sltu         zero, s6, a1
                  sub          s8, sp, t4
                  bge          a6, t6, 527f
527:              sll          a6, s5, t2
                  or           a4, tp, t3
                  bltu         t1, zero, 538f
                  xor          gp, a6, s10
                  bltu         s11, s0, 532f
532:              srli         s4, s1, 9
                  lui          a0, 547013
                  addi         s5, s3, 1165
                  srl          tp, sp, s3
                  srai         t4, a6, 7
                  srl          a6, gp, t3
538:              sub          s7, tp, s3
539:              add          t1, s1, t2
                  or           s8, a1, sp
                  srli         s1, t3, 0
                  srl          a5, t4, s0
                  bge          gp, a0, 563f
                  sub          ra, s5, a6
                  slli         tp, zero, 20
                  beq          a0, s8, 566f
                  sll          t3, t6, a3
                  beq          a2, a2, 554f
                  xori         s1, s0, -475
                  lui          a6, 118266
                  bgeu         t0, s7, 564f
                  addi         s0, a1, -1629
                  andi         sp, zero, 1255
554:              nop
                  srl          t2, ra, t2
                  bgeu         t5, s4, 575f
                  bge          t0, a1, 560f
                  sra          gp, s11, s9
                  bge          t5, a1, 566f
560:              sltiu        a2, a1, -1612
                  srl          s8, t3, s8
                  bne          sp, t4, 573f
563:              auipc        tp, 538266
564:              blt          t1, a3, 576f
                  lui          s6, 185017
566:              ori          s7, s10, 1989
                  sra          s1, a0, t5
                  bne          t0, s10, 578f
                  srl          a7, a2, a0
                  slli         t5, t2, 9
                  slti         a6, t1, -1695
                  sltiu        s4, t4, 1717
573:              xor          a2, t4, zero
                  add          a5, zero, t2
575:              beq          tp, s11, 593f
576:              xor          t3, a3, t1
                  sltiu        t4, s6, -2016
578:              auipc        s10, 456408
                  bgeu         s0, t0, 582f
                  auipc        a1, 146294
                  sltiu        t6, t2, -2022
582:              slt          t5, ra, sp
                  beq          s3, s2, 584f
584:              or           a4, s9, s1
                  andi         ra, s10, 241
                  xori         s2, gp, 929
                  auipc        s1, 781692
                  bge          t4, tp, 608f
                  lui          a0, 556415
                  srli         s1, s2, 12
                  or           t4, a3, zero
                  sll          ra, s2, t5
593:              bgeu         t1, s4, 603f
                  slli         sp, a3, 7
                  slti         a2, a3, -1629
                  srl          t5, a0, t3
                  auipc        s6, 1019655
                  bltu         tp, sp, 612f
                  bltu         a1, s9, 606f
                  sra          gp, a5, s5
                  sra          ra, a4, s4
                  slli         a4, t6, 4
603:              slli         s0, s1, 17
                  slt          t4, s5, tp
                  nop
606:              srl          zero, a3, s8
                  nop
608:              srl          s0, t1, s7
                  bne          t1, s8, 628f
                  ori          s5, t0, -86
                  ori          t2, s9, -387
612:              bltu         s6, t3, 623f
                  bne          s3, a1, 617f
                  bgeu         s0, s0, 627f
                  bne          zero, tp, 619f
                  ori          a1, s7, 315
617:              lui          a0, 552329
                  srli         a6, s8, 21
619:              or           t1, t4, s11
main_12:          jal          t1, 0f
0:                jal          ra, 19f
1:                jal          ra, 18f
2:                jal          s3, 1b
3:                jal          ra, 6f
4:                jal          ra, 16f
5:                jal          ra, 11f
6:                jal          ra, 2b
7:                jal          ra, 21f
8:                jal          t1, 24f
9:                jal          ra, 14f
10:               jal          ra, 23f
11:               jal          s10, 8b
12:               jal          tp, 20f
13:               jal          t1, 15f
14:               jal          ra, 25f
15:               jal          ra, 9b
16:               jal          ra, 10b
17:               jal          t0, 12b
18:               jal          t1, 13b
19:               jal          ra, 5b
20:               jal          a0, 4b
21:               jal          ra, 22f
22:               jal          t1, 17b
23:               jal          ra, 3b
24:               jal          ra, 7b
25:               sltiu        a4, s1, 1300
                  bltu         s8, a4, 623f
                  bltu         sp, s9, 630f
                  sltiu        t2, a4, 1817
623:              nop
                  bge          sp, s7, 631f
                  or           t3, s0, zero
                  sltiu        tp, a7, -781
627:              bne          sp, s6, 646f
628:              andi         s3, s1, -283
                  sltu         s4, tp, a4
630:              beq          a2, s10, 637f
631:              lui          a7, 665529
                  nop
                  bne          gp, t5, 635f
                  add          s5, a5, s11
635:              bne          t4, gp, 641f
                  bne          s10, s1, 637f
637:              srli         s10, gp, 20
                  slt          a7, gp, s2
                  or           a4, t0, s5
                  xor          s8, s3, a2
641:              sub          a7, s9, s9
                  lui          a2, 223705
                  sltu         t3, gp, a6
                  slt          s0, s5, tp
                  auipc        sp, 32057
646:              andi         s0, s0, 2020
                  slt          a7, a7, t3
                  bge          a6, s10, 658f
                  or           a0, t6, s2
                  and          a2, s3, s11
                  or           s4, s5, a4
                  sub          a2, a0, zero
                  add          s7, s6, zero
                  sltu         t6, s3, s2
                  bgeu         a1, t4, 663f
                  bne          a7, gp, 657f
657:              auipc        s4, 451092
658:              bge          t2, tp, 668f
                  sltiu        t3, tp, -791
                  sub          a6, s8, s0
                  and          gp, a6, s5
                  srl          s7, t2, a1
663:              bgeu         tp, t5, 665f
                  sll          a7, s4, a1
665:              ori          s2, s6, -2007
                  sub          s1, t3, s10
                  srai         s3, t0, 30
668:              sll          t6, s11, t0
                  andi         s1, gp, 845
                  slti         ra, s5, -533
                  sub          t6, a4, s2
                  blt          zero, s3, 679f
                  bltu         s2, s5, 690f
                  srli         a6, a3, 9
                  sub          t0, a0, t6
                  beq          t1, s10, 690f
                  or           s4, a6, gp
                  addi         a2, s11, -773
679:              bltu         zero, a2, 687f
                  ori          s10, a0, 580
                  beq          s1, t4, 687f
                  beq          t0, t3, 690f
                  bne          s0, a7, 690f
                  sra          t5, a3, a6
                  bne          a6, t5, 686f
686:              sltu         sp, s7, a6
687:              blt          a0, t0, 690f
                  srl          a5, a1, s8
                  nop
690:              slli         a1, s0, 31
                  la x25, test_done
                  jalr x0, x25, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            blt          t2, s9, sub_5_stack_p
sub_5_stack_p:    addi         s11, s11, -48
                  slti         s8, ra, 1846
                  and          gp, tp, ra
                  sw           t1, 4(s11)
                  and          ra, a6, tp
                  srai         sp, a1, 24
sub_5_18:         jal          t1, 12f
0:                jal          ra, 1f
1:                jal          s3, 10f
2:                jal          ra, 0b
3:                jal          ra, 13f
4:                jal          ra, 16f
5:                jal          tp, 8f
6:                jal          t1, 9f
7:                jal          ra, 3b
8:                jal          a5, 15f
9:                jal          ra, 4b
10:               jal          a1, 14f
11:               jal          t1, 7b
12:               jal          ra, 5b
13:               jal          ra, 6b
14:               jal          s1, 11b
15:               jal          ra, 2b
16:               xor          s5, zero, t6
sub_5_13:         jal          t1, 9f
0:                jal          ra, 12f
1:                jal          ra, 6f
2:                jal          ra, 0b
3:                jal          ra, 15f
4:                jal          t3, 20f
5:                jal          ra, 8f
6:                jal          ra, 5b
7:                jal          ra, 14f
8:                jal          t5, 18f
9:                jal          t1, 19f
10:               jal          ra, 7b
11:               jal          t4, 10b
12:               jal          ra, 4b
13:               jal          t4, 1b
14:               jal          ra, 16f
15:               jal          gp, 11b
16:               jal          t3, 13b
17:               jal          ra, 3b
18:               jal          ra, 2b
19:               jal          t0, 17b
20:               auipc        a6, 784637
sub_5_5:          jal          t1, 8f
0:                jal          ra, 7f
1:                jal          ra, 3f
2:                jal          ra, 9f
3:                jal          tp, 6f
4:                jal          t1, 5f
5:                jal          t1, 1b
6:                jal          ra, 10f
7:                jal          ra, 4b
8:                jal          ra, 2b
9:                jal          ra, 0b
10:               xori         s0, s8, -593
sub_5_8:          jal          t1, 9f
0:                jal          tp, 8f
1:                jal          ra, 0b
2:                jal          t0, 27f
3:                jal          ra, 21f
4:                jal          ra, 6f
5:                jal          ra, 4b
6:                jal          t1, 26f
7:                jal          ra, 17f
8:                jal          ra, 14f
9:                jal          t1, 11f
10:               jal          ra, 15f
11:               jal          ra, 10b
12:               jal          a2, 23f
13:               jal          ra, 7b
14:               jal          a2, 28f
15:               jal          ra, 18f
16:               jal          ra, 12b
17:               jal          ra, 24f
18:               jal          gp, 16b
19:               jal          ra, 2b
20:               jal          ra, 5b
21:               jal          a1, 22f
22:               jal          ra, 13b
23:               jal          t6, 20b
24:               jal          ra, 19b
25:               jal          ra, 3b
26:               jal          t1, 25b
27:               jal          t2, 1b
28:               or           s7, a5, s5
sub_5_16:         jal          t1, 15f
0:                jal          ra, 3f
1:                jal          sp, 16f
2:                jal          ra, 12f
3:                jal          ra, 1b
4:                jal          t1, 13f
5:                jal          ra, 17f
6:                jal          s6, 5b
7:                jal          t6, 14f
8:                jal          t1, 4b
9:                jal          ra, 10f
10:               jal          ra, 2b
11:               jal          t1, 8b
12:               jal          ra, 0b
13:               jal          t1, 7b
14:               jal          ra, 6b
15:               jal          ra, 9b
16:               jal          ra, 11b
17:               sub          tp, s2, a7
sub_5_10:         jal          t1, 4f
0:                jal          t1, 23f
1:                jal          s7, 22f
2:                jal          s10, 8f
3:                jal          ra, 2b
4:                jal          t1, 24f
5:                jal          ra, 7f
6:                jal          ra, 15f
7:                jal          ra, 25f
8:                jal          t1, 19f
9:                jal          t1, 10f
10:               jal          s10, 14f
11:               jal          gp, 17f
12:               jal          ra, 11b
13:               jal          ra, 21f
14:               jal          ra, 0b
15:               jal          a4, 3b
16:               jal          ra, 6b
17:               jal          t1, 5b
18:               jal          ra, 13b
19:               jal          ra, 18b
20:               jal          ra, 26f
21:               jal          ra, 20b
22:               jal          ra, 9b
23:               jal          ra, 16b
24:               jal          ra, 12b
25:               jal          ra, 1b
26:               add          a7, sp, t4
sub_5_4:          jal          t1, 1f
0:                jal          a7, 8f
1:                jal          t1, 10f
2:                jal          t0, 6f
3:                jal          ra, 5f
4:                jal          ra, 0b
5:                jal          ra, 4b
6:                jal          ra, 7f
7:                jal          a1, 9f
8:                jal          ra, 2b
9:                jal          ra, 11f
10:               jal          ra, 3b
11:               add          ra, t3, t4
sub_5_6:          jal          t1, 2f
0:                jal          ra, 17f
1:                jal          gp, 16f
2:                jal          a7, 20f
3:                jal          t1, 11f
4:                jal          ra, 12f
5:                jal          t0, 0b
6:                jal          t1, 15f
7:                jal          sp, 21f
8:                jal          t1, 9f
9:                jal          ra, 3b
10:               jal          t1, 22f
11:               jal          ra, 23f
12:               jal          s6, 7b
13:               jal          ra, 4b
14:               jal          t1, 19f
15:               jal          ra, 1b
16:               jal          ra, 13b
17:               jal          t1, 10b
18:               jal          ra, 6b
19:               jal          ra, 18b
20:               jal          ra, 14b
21:               jal          t4, 5b
22:               jal          ra, 8b
23:               or           s0, a6, s11
sub_5_1:          jal          t1, 10f
0:                jal          ra, 1f
1:                jal          ra, 19f
2:                jal          a4, 0b
3:                jal          a0, 2b
4:                jal          t1, 18f
5:                jal          t1, 11f
6:                jal          t1, 9f
7:                jal          t1, 15f
8:                jal          s2, 3b
9:                jal          s7, 7b
10:               jal          s7, 6b
11:               jal          ra, 8b
12:               jal          a6, 4b
13:               jal          s5, 16f
14:               jal          ra, 17f
15:               jal          ra, 12b
16:               jal          ra, 14b
17:               jal          t1, 5b
18:               jal          ra, 13b
19:               sra          a2, s0, sp
sub_5_3:          jal          t1, 15f
0:                jal          ra, 17f
1:                jal          ra, 4f
2:                jal          t1, 23f
3:                jal          t1, 2b
4:                jal          ra, 21f
5:                jal          s8, 11f
6:                jal          t1, 19f
7:                jal          t1, 18f
8:                jal          t1, 7b
9:                jal          t0, 12f
10:               jal          ra, 8b
11:               jal          a5, 9b
12:               jal          ra, 10b
13:               jal          t1, 1b
14:               jal          ra, 25f
15:               jal          s2, 14b
16:               jal          t0, 5b
17:               jal          ra, 6b
18:               jal          a1, 3b
19:               jal          ra, 22f
20:               jal          ra, 16b
21:               jal          t1, 24f
22:               jal          ra, 20b
23:               jal          ra, 13b
24:               jal          t1, 26f
25:               jal          ra, 0b
26:               srai         s5, a0, 31
sub_5_9:          jal          t1, 18f
0:                jal          t1, 22f
1:                jal          t1, 20f
2:                jal          ra, 9f
3:                jal          s5, 5f
4:                jal          a7, 19f
5:                jal          ra, 4b
6:                jal          ra, 16f
7:                jal          ra, 1b
8:                jal          s6, 2b
9:                jal          ra, 14f
10:               jal          ra, 11f
11:               jal          ra, 15f
12:               jal          ra, 21f
13:               jal          tp, 0b
14:               jal          t1, 7b
15:               jal          ra, 6b
16:               jal          ra, 13b
17:               jal          t2, 8b
18:               jal          ra, 17b
19:               jal          t1, 12b
20:               jal          ra, 3b
21:               jal          t1, 10b
22:               sltiu        t5, s0, -407
sub_5_11:         jal          t1, 15f
0:                jal          t3, 24f
1:                jal          ra, 7f
2:                jal          a5, 23f
3:                jal          t1, 1b
4:                jal          ra, 16f
5:                jal          t0, 6f
6:                jal          s4, 10f
7:                jal          ra, 5b
8:                jal          ra, 13f
9:                jal          ra, 2b
10:               jal          ra, 14f
11:               jal          t4, 19f
12:               jal          ra, 18f
13:               jal          s5, 17f
14:               jal          s0, 4b
15:               jal          a2, 12b
16:               jal          t6, 8b
17:               jal          t2, 20f
18:               jal          t1, 9b
19:               jal          ra, 22f
20:               jal          ra, 25f
21:               jal          s6, 0b
22:               jal          ra, 3b
23:               jal          s10, 21b
24:               jal          t1, 11b
25:               jal          a2, 26f
26:               xor          tp, s4, t6
sub_5_15:         jal          t1, 0f
0:                jal          t1, 13f
1:                jal          t1, 26f
2:                jal          ra, 11f
3:                jal          t1, 14f
4:                jal          ra, 19f
5:                jal          t1, 22f
6:                jal          s8, 5b
7:                jal          t0, 9f
8:                jal          s0, 30f
9:                jal          a5, 12f
10:               jal          t1, 3b
11:               jal          t1, 6b
12:               jal          ra, 27f
13:               jal          t4, 18f
14:               jal          ra, 21f
15:               jal          ra, 4b
16:               jal          t1, 1b
17:               jal          t1, 7b
18:               jal          ra, 17b
19:               jal          t1, 25f
20:               jal          gp, 10b
21:               jal          t1, 28f
22:               jal          gp, 15b
23:               jal          ra, 2b
24:               jal          ra, 20b
25:               jal          s0, 16b
26:               jal          ra, 8b
27:               jal          t1, 29f
28:               jal          sp, 23b
29:               jal          t1, 24b
30:               ori          a6, s7, 1514
sub_5_2:          jal          t1, 0f
0:                jal          tp, 6f
1:                jal          ra, 23f
2:                jal          ra, 10f
3:                jal          ra, 21f
4:                jal          gp, 15f
5:                jal          ra, 12f
6:                jal          ra, 4b
7:                jal          gp, 3b
8:                jal          ra, 5b
9:                jal          t1, 20f
10:               jal          s1, 22f
11:               jal          ra, 17f
12:               jal          a1, 16f
13:               jal          ra, 18f
14:               jal          t1, 13b
15:               jal          s0, 8b
16:               jal          t1, 9b
17:               jal          t5, 7b
18:               jal          ra, 2b
19:               jal          ra, 1b
20:               jal          t0, 14b
21:               jal          t1, 19b
22:               jal          t1, 11b
23:               sltu         a1, s8, s9
sub_5_12:         jal          t1, 9f
0:                jal          a6, 6f
1:                jal          t5, 4f
2:                jal          s0, 10f
3:                jal          ra, 0b
4:                jal          ra, 2b
5:                jal          ra, 3b
6:                jal          ra, 7f
7:                jal          s1, 1b
8:                jal          t1, 5b
9:                jal          a1, 8b
10:               ori          t6, s8, 1005
                  xor          sp, t1, a5
                  slli         t2, s5, 21
                  bne          t5, t0, 13f
                  xor          ra, a3, t4
                  srl          s1, sp, zero
                  bgeu         s10, zero, 11f
                  slti         s3, s9, -248
                  slti         gp, a0, -674
                  sll          s5, a1, zero
                  xor          t4, t5, a5
                  sltu         t0, t1, a2
11:               lui          zero, 333506
                  addi         t4, s8, 1669
13:               lui          a7, 186995
                  lui          t2, 464264
                  sub          t3, t4, zero
                  blt          s2, sp, 17f
17:               ori          s2, s10, 978
                  lui          a0, 730242
                  bge          zero, a4, 35f
                  srli         zero, s4, 27
                  slt          t4, s11, a0
                  blt          s3, a4, 25f
                  sltu         a2, t4, a2
                  slt          t3, s11, t1
25:               xor          tp, s6, s6
                  and          tp, s8, a3
                  blt          t5, s9, 37f
                  and          a7, ra, a3
                  sltiu        a1, s6, 792
                  auipc        t3, 709340
                  bltu         s5, t5, 41f
                  bge          zero, t5, 43f
                  auipc        tp, 19547
                  beq          tp, a3, 37f
35:               srli         sp, a3, 5
                  and          s10, s11, gp
37:               srl          zero, t4, a5
                  bne          t3, t4, 54f
                  sltu         s4, t3, t3
                  slti         t5, a4, -1002
sub_5_7:          jal          t1, 8f
0:                jal          t1, 12f
1:                jal          t5, 10f
2:                jal          tp, 5f
3:                jal          s3, 9f
4:                jal          t1, 11f
5:                jal          ra, 4b
6:                jal          s4, 1b
7:                jal          gp, 2b
8:                jal          ra, 7b
9:                jal          ra, 0b
10:               jal          s10, 3b
11:               jal          ra, 6b
12:               sltiu        a2, s1, -1147
41:               xor          a5, t0, t1
                  bgeu         t4, t2, 58f
43:               bgeu         s6, a0, 63f
                  auipc        a0, 12577
                  blt          tp, t3, 60f
                  add          s6, t0, s5
                  and          s7, a1, t3
                  and          sp, t5, s6
                  bgeu         s8, a4, 65f
                  lui          zero, 796699
                  bne          t1, s3, 61f
                  srai         tp, s5, 23
                  or           s7, t4, t1
54:               sll          t1, a6, t0
                  nop
                  lui          a0, 827036
                  xori         a6, t1, -42
58:               sub          t0, a6, a1
                  xori         s8, t4, -273
60:               auipc        s4, 368664
61:               srl          a5, t0, a4
                  auipc        t4, 78726
63:               ori          s6, t3, 1408
                  sltu         a7, tp, a4
65:               xor          t3, t0, gp
                  or           a0, t4, t3
                  andi         s5, a2, 1747
                  ori          gp, t2, 1217
                  ori          s0, s0, 105
                  or           a1, gp, a6
                  sll          a5, s2, t1
                  xor          a1, s3, t6
                  or           s8, t3, t5
                  srl          a0, a4, sp
                  sra          s8, tp, t3
                  xor          a7, t4, t2
                  xori         s8, s6, -1598
                  auipc        s2, 361477
                  xor          tp, s2, t5
                  bne          s8, tp, 92f
                  nop
                  bne          s4, s4, 92f
                  bltu         a3, s10, 95f
                  ori          gp, s8, 1372
                  srai         tp, a4, 29
                  addi         s0, s7, -671
                  blt          a7, s4, 99f
                  srli         t5, a3, 29
                  srli         a5, t2, 17
                  ori          s4, a4, 980
                  ori          s8, s2, 1019
92:               or           s4, a6, gp
                  beq          s1, t1, 98f
                  bge          a2, s6, 114f
95:               add          a2, s3, t1
                  bge          s3, s2, 106f
                  slt          t0, sp, t3
98:               sltiu        t2, s11, 1874
99:               lui          t2, 259299
                  beq          t1, t3, 109f
                  srl          a5, tp, s10
                  slli         s1, t2, 10
                  ori          a5, s4, -1430
                  sltiu        a2, a7, 317
                  sra          t4, tp, a4
106:              bgeu         s0, gp, 110f
                  xor          sp, a6, s0
                  andi         ra, s7, 1607
109:              sra          a0, s6, s11
110:              nop
                  and          t5, a0, s7
                  xori         s7, zero, 362
                  andi         a7, a3, -1208
114:              blt          a7, s9, 120f
                  srai         s8, a6, 29
                  andi         t2, s6, -1740
                  sltiu        a1, s8, -1854
                  blt          s10, s0, 129f
                  nop
120:              slt          s5, s11, s8
                  xor          s3, s9, t5
                  auipc        s3, 834827
                  sra          ra, a3, s10
                  bge          s11, a4, 133f
                  ori          sp, t2, 1053
                  ori          s6, a7, 381
                  nop
                  addi         t2, s6, 505
129:              add          a6, s2, sp
                  sltu         s1, t5, a5
                  beq          sp, t6, 140f
                  sll          tp, t2, t3
133:              addi         a1, s4, -89
                  sub          s10, sp, a3
                  slli         s8, zero, 26
                  bltu         s3, zero, 150f
                  andi         t1, a1, -1080
                  and          s0, s11, a6
                  bne          s8, s10, 143f
140:              and          t4, gp, s3
                  sub          a6, zero, t2
                  slli         s0, t6, 11
143:              sltiu        s0, a0, -1025
                  sra          gp, t2, t4
                  sltiu        t5, s10, -1498
                  srl          tp, a2, s9
                  blt          s4, s10, 157f
                  xori         ra, s4, -1607
                  xori         gp, s7, 644
150:              srai         t4, s6, 20
                  sra          s4, s9, t4
                  blt          gp, t1, 163f
                  srl          a2, t4, t4
                  sltiu        s10, a4, 766
                  sltu         s7, a3, t2
                  and          s6, t0, s5
157:              add          t5, t0, zero
                  slli         a7, t5, 21
                  srli         t6, a5, 15
                  bne          gp, s2, 169f
                  sll          t2, a4, a1
                  sub          a7, s4, t6
163:              nop
                  srl          a7, s5, a5
                  bltu         s9, tp, 181f
                  sra          tp, t6, gp
                  srl          s4, s1, gp
                  add          t5, a3, t5
169:              lui          sp, 558526
                  bge          a7, t0, 173f
                  addi         sp, s0, -858
                  bge          a5, ra, 192f
173:              blt          t6, a5, 193f
                  andi         s5, s11, 1000
                  sra          t6, tp, s9
                  slt          s7, s1, zero
                  blt          s7, s2, 193f
                  and          sp, a5, a3
                  slt          s2, t0, t5
                  add          s0, s4, sp
181:              or           t0, s7, s8
                  sub          s8, s6, s3
                  lui          t6, 63115
                  lui          t3, 476400
                  bgeu         t3, s3, 197f
                  and          s0, sp, zero
                  bne          s3, s4, 190f
                  ori          t6, a3, -388
                  andi         a0, s8, -1006
190:              blt          t3, a5, 204f
                  srl          zero, s5, a3
192:              sltiu        a2, t0, 265
193:              and          s10, zero, s6
                  bne          a3, s8, 204f
                  sub          s3, a4, t5
                  bltu         s9, ra, 205f
197:              ori          t0, a2, 518
                  sra          s8, t1, s1
                  nop
                  blt          s4, s10, 206f
                  sll          a4, a6, tp
                  slt          a1, a7, s1
                  slti         s8, gp, -1415
204:              srl          sp, a3, ra
205:              bltu         t0, s9, 206f
206:              srl          tp, t6, tp
                  bltu         s3, a3, 211f
                  add          s0, s8, a6
                  andi         ra, s4, -717
                  bne          a1, s2, 215f
211:              sltu         a4, gp, sp
                  bge          s6, t5, 227f
                  ori          a4, ra, 881
                  addi         ra, t4, 693
215:              sra          tp, a2, t3
                  beq          s3, a7, 227f
                  slli         tp, s8, 11
                  auipc        a5, 66398
                  slli         t6, s4, 24
                  xor          a7, s10, s2
                  ori          tp, s0, -1738
                  slt          t6, sp, s7
                  sltiu        a2, a4, 1527
                  auipc        s7, 121927
                  auipc        a6, 625368
                  srli         t1, s3, 16
227:              sltiu        a6, a6, 345
                  beq          s4, s7, 240f
                  addi         t0, s6, -260
                  addi         a2, t5, 904
                  lui          a4, 355084
                  addi         s7, tp, 1678
                  sll          s0, s8, s9
                  add          s7, ra, t0
                  xori         a6, s9, 711
                  slli         a6, s7, 3
                  or           t3, s7, s3
                  nop
                  addi         a4, a5, 768
240:              sub          s8, s11, t1
                  srl          a4, s10, s9
                  sra          s10, t6, s1
                  sll          s7, s11, s6
                  bne          t6, s6, 255f
                  nop
                  bltu         s5, a6, 256f
                  srl          s5, s6, a0
                  beq          s10, s9, 258f
                  bgeu         gp, ra, 265f
                  beq          t3, s10, 254f
                  add          s3, s9, s4
                  bge          t0, t0, 262f
sub_5_17:         jal          t1, 17f
0:                jal          t1, 7f
1:                jal          ra, 11f
2:                jal          t1, 18f
3:                jal          s1, 0b
4:                jal          ra, 19f
5:                jal          ra, 21f
6:                jal          ra, 23f
7:                jal          a0, 24f
8:                jal          ra, 4b
9:                jal          t1, 14f
10:               jal          ra, 6b
11:               jal          ra, 9b
12:               jal          ra, 5b
13:               jal          ra, 8b
14:               jal          t1, 20f
15:               jal          ra, 3b
16:               jal          t4, 12b
17:               jal          t1, 1b
18:               jal          tp, 22f
19:               jal          s3, 15b
20:               jal          t1, 16b
21:               jal          ra, 10b
22:               jal          ra, 13b
23:               jal          s10, 2b
24:               add          t5, a6, a1
                  xor          t1, t3, a3
254:              xori         t3, a5, -1537
255:              slti         t2, s8, -359
256:              xori         a0, a0, -96
                  bgeu         t1, sp, 269f
258:              sltu         s4, tp, a3
                  auipc        a2, 1033207
                  xori         s4, a4, 1673
                  or           t3, s5, t1
262:              beq          a2, t6, 268f
                  sltu         s7, s0, s4
                  blt          a5, t3, 273f
265:              sra          t1, s11, s11
                  and          t2, s1, s4
                  slli         tp, t3, 7
268:              auipc        a6, 580873
269:              sltiu        s6, s4, 899
                  slti         s0, t1, 127
                  srli         a1, zero, 5
                  slti         s4, zero, 967
273:              sub          a0, t2, tp
                  nop
                  srl          gp, a0, s4
                  sub          a4, t4, s5
                  nop
                  bgeu         s10, tp, 294f
                  sub          a2, a7, a6
                  slti         t5, ra, -1157
                  bge          t1, gp, 290f
                  bgeu         t4, t1, 292f
                  lui          s4, 913990
                  sltiu        t0, t6, -632
                  andi         zero, t6, 435
                  slti         t6, s1, -887
                  sra          t2, t4, t2
                  bltu         t3, s0, 298f
                  sltu         t5, s5, s7
290:              and          a5, s4, s5
                  srli         tp, a1, 19
292:              slti         ra, s6, -1021
                  sub          tp, t0, t1
294:              bltu         sp, s4, 305f
                  slti         a2, s9, -1416
                  blt          s2, s9, 307f
                  srli         a1, s6, 19
298:              or           a1, s6, s5
                  srli         t6, a0, 15
                  andi         s7, t6, 1806
                  and          t1, a2, t3
                  beq          s11, s2, 312f
                  lui          s10, 333032
                  srai         t5, a3, 27
305:              xor          s5, s9, t5
                  or           s1, zero, t0
307:              blt          t4, a0, 327f
                  sra          s7, s2, s10
                  addi         sp, s5, 65
                  or           s4, s0, t1
                  bge          s7, s7, 327f
312:              andi         a5, a7, 1062
                  sltu         a7, s6, a3
                  slti         s5, a5, -1267
                  add          t4, a4, t4
                  slli         sp, t3, 11
                  addi         t1, s3, -1173
                  bgeu         s3, s3, 334f
                  blt          t4, s4, 335f
                  srai         t4, a3, 12
                  sra          a4, t2, a4
                  sltu         sp, t0, t0
                  add          s1, s4, tp
                  sll          a1, s2, a1
                  bgeu         zero, t6, 341f
                  sll          a4, t6, s11
327:              xor          a5, s4, a3
                  xori         s7, s11, 701
                  sll          a0, s10, t0
                  srl          t1, ra, a4
                  bge          a5, a3, 340f
                  bltu         s7, t0, 341f
                  srl          s1, zero, s3
334:              srai         t6, s6, 26
335:              add          s2, t6, t3
                  sra          t3, a7, t5
                  auipc        gp, 889640
                  bgeu         a2, s1, 341f
                  xor          a0, a3, a4
340:              ori          a1, s3, -979
341:              sltu         a0, s7, a5
                  addi         s6, t3, -1657
                  sltiu        t3, t6, -1191
                  slti         gp, s11, -1788
                  sltiu        t2, tp, 32
                  and          a4, s7, a7
                  andi         t0, s8, 51
                  nop
                  slt          s6, t5, a3
                  sltiu        s5, s6, 1713
                  slli         a1, zero, 18
                  sltiu        s4, s10, 949
                  slli         t3, s7, 23
                  sub          sp, t0, t3
                  srl          a0, a6, a3
                  addi         a1, s6, 1778
                  sra          s8, s8, a6
                  add          s7, s6, t2
                  add          t2, t5, s11
                  sltu         s0, t3, t0
                  lui          a4, 314212
                  lui          a5, 171073
                  add          t4, a3, t2
                  slli         t1, t5, 31
                  addi         s3, a0, 680
                  xor          s4, s6, t4
                  blt          s3, s6, 370f
                  ori          a4, a6, 1887
                  sub          s8, s6, a3
370:              addi         a0, sp, -1615
                  srli         s8, s0, 10
                  nop
                  or           a4, a1, a4
                  srl          ra, a3, gp
                  blt          sp, s1, 376f
376:              add          a0, s11, s5
                  sltiu        t2, a6, 1961
                  sll          a6, a4, s0
                  slt          t0, t6, a0
                  bge          t5, s10, 390f
                  slti         s0, s3, 570
                  srl          s1, s10, a6
                  bne          a5, t3, 395f
                  andi         a5, t1, -1507
                  srli         s0, s10, 17
                  sll          t6, s4, t0
                  bltu         t1, zero, 399f
                  slt          a5, s11, s3
                  and          s6, a1, t6
390:              ori          sp, s3, -342
                  bge          s0, a0, 397f
                  beq          zero, a5, 397f
                  xori         s3, s7, 1583
                  sltu         a5, s3, a7
395:              blt          s1, s9, 405f
                  lui          a7, 201398
397:              srli         t0, s5, 31
                  xori         a7, s11, -1935
399:              blt          a1, s11, 411f
                  xor          ra, t0, a5
                  bge          s2, a0, 416f
                  slti         t2, s0, -1155
                  sll          tp, t5, s11
                  auipc        tp, 33384
405:              addi         s3, s9, 665
                  bge          t3, t2, 410f
                  slli         s6, t3, 5
                  sub          t0, s2, a2
                  ori          a6, s11, -1374
410:              bge          s5, sp, 424f
411:              xor          s5, s1, a2
                  bne          a3, t0, 418f
                  slt          t6, t6, gp
                  srl          t5, a0, t5
                  nop
416:              andi         t6, s3, -1786
                  ori          t6, s8, -62
418:              bne          zero, s5, 422f
                  nop
                  srl          s3, s6, s11
                  srl          ra, t2, gp
422:              sltu         s7, s1, t1
                  slt          a2, a4, t6
424:              or           t3, tp, sp
                  ori          s3, zero, 1717
                  bge          a6, a4, 446f
                  bltu         t4, a5, 438f
                  blt          tp, t6, 432f
                  srai         t6, s8, 12
                  and          t2, s1, ra
                  bltu         a7, s8, 443f
432:              lui          zero, 434800
                  sll          t5, t1, a4
                  beq          a4, gp, 444f
                  sll          t5, a4, t2
                  nop
                  slti         t4, s7, -912
438:              bge          s9, zero, 441f
                  beq          zero, s2, 459f
                  bgeu         a0, s8, 449f
441:              srli         sp, a5, 13
                  nop
443:              srli         t6, s4, 7
444:              xori         t4, s8, -362
                  bge          gp, t5, 455f
446:              ori          tp, a7, 1398
                  nop
                  bgeu         sp, a2, 468f
449:              bltu         a6, s10, 452f
                  lui          gp, 937793
                  bltu         t6, gp, 465f
452:              bgeu         s9, a6, 468f
                  bge          s6, t1, 469f
                  nop
455:              srl          s6, s8, t4
                  sra          s3, s1, a2
                  sltu         t3, t4, t0
                  lui          s10, 692932
459:              srli         t4, s8, 2
                  xori         a2, t5, -590
                  ori          t3, a5, -883
                  bgeu         a0, s2, 471f
                  bgeu         a4, t5, 473f
                  slli         a2, t5, 1
465:              auipc        s5, 847712
                  srli         a7, ra, 6
                  bgeu         a6, s11, 483f
468:              xor          t3, s1, s0
469:              or           s5, s1, t6
                  lui          a7, 611323
471:              bgeu         t1, t5, 482f
                  beq          s9, zero, 487f
473:              or           a0, a7, a0
                  srl          a6, ra, t5
                  sll          a1, t2, s7
                  slti         t2, t2, 489
                  add          t0, zero, a0
                  bgeu         s5, s8, 479f
479:              bne          t3, a0, 489f
                  sltiu        t1, t6, -166
                  add          s0, a4, a0
482:              and          a6, t2, s0
483:              bne          s3, t1, 489f
                  addi         ra, a4, -1630
                  slli         ra, a7, 0
                  xor          s5, t4, zero
487:              auipc        sp, 973414
                  xor          ra, s4, a0
489:              beq          t1, s9, 500f
                  srli         t2, s1, 24
                  srli         t1, a5, 20
                  beq          tp, t2, 497f
                  bge          t3, t2, 503f
                  srl          s4, t3, s2
                  addi         a0, ra, 374
                  nop
497:              xor          gp, s2, t1
                  nop
                  bgeu         s8, a1, 505f
500:              bge          t6, a7, 512f
                  add          gp, s8, a1
                  xori         t2, s3, 2047
503:              bgeu         s0, ra, 519f
                  bgeu         t5, tp, 515f
505:              beq          a1, a3, 517f
                  nop
                  beq          a3, t2, 511f
                  blt          s3, t3, 517f
                  and          a7, s3, a1
                  srl          s8, gp, a5
511:              beq          a4, a1, 521f
512:              sll          tp, a4, s3
                  srai         t3, s6, 3
                  bge          s8, t3, 525f
515:              sra          t3, t3, t6
                  bge          t1, s11, 522f
517:              sltiu        a1, a5, -1952
                  lui          t6, 440855
519:              xori         s2, s6, -1636
                  sltiu        t2, a3, 354
521:              auipc        s6, 327800
522:              bltu         t2, s7, 532f
                  blt          s3, t3, 527f
                  sra          a7, s6, a0
525:              nop
                  auipc        s10, 580000
527:              nop
                  beq          t0, s8, 531f
                  andi         a5, s8, 1059
                  and          t5, s5, s10
531:              and          t4, t6, a1
532:              and          s6, a3, t2
                  xori         a7, s0, 456
                  srl          gp, s3, s2
                  and          t4, t5, a2
                  beq          s8, t4, 552f
                  slli         a7, a6, 4
                  or           a4, s8, s11
                  slli         s1, a3, 12
                  slli         t0, a7, 27
                  sra          s3, s2, t4
                  and          s10, a7, t4
                  srli         t0, s1, 7
                  sltu         a1, a4, gp
                  blt          s8, zero, 565f
                  bgeu         s6, s9, 556f
                  slt          s10, a5, a1
                  addi         t0, a5, -666
                  xori         s3, t0, -540
                  addi         s1, a2, -466
                  add          s0, a6, ra
552:              nop
                  bne          ra, t5, 573f
                  nop
                  auipc        s6, 976482
556:              sltiu        gp, gp, -1055
                  sub          gp, s6, a4
                  bne          a5, s7, 569f
                  bge          s6, s6, 569f
                  xori         s5, s4, -500
                  blt          t5, s4, 573f
                  blt          s1, s3, 574f
                  xor          s4, t2, a5
                  srl          s5, s3, s5
565:              sltu         s4, a1, s8
                  bne          s1, t1, 581f
                  auipc        t2, 384841
                  bne          s9, s8, 573f
569:              xori         s6, s0, 929
                  bne          s7, s2, 576f
                  srl          ra, s8, t0
                  srl          t3, t2, t5
573:              sll          s7, a1, t5
574:              slt          s0, ra, t4
                  bne          s5, sp, 584f
576:              or           a7, a6, zero
                  xori         a4, s9, 1542
                  addi         s1, ra, 992
                  sll          s10, a5, a5
                  srai         zero, s8, 29
581:              xori         tp, s4, -284
                  sltiu        t5, gp, 429
                  beq          a4, ra, 593f
584:              bge          a6, t0, 593f
                  slt          tp, s6, s2
                  sub          a7, t1, s7
                  xor          a5, t0, a2
                  bge          s10, tp, 597f
                  sltu         s1, s2, s3
                  blt          t2, s4, 594f
                  sub          s6, a2, s8
                  or           t4, t2, a6
593:              or           s10, s3, t6
594:              sltiu        a1, t6, -870
                  slti         s6, tp, 1824
                  sub          s10, s3, a4
597:              and          gp, a5, a4
                  nop
                  srli         a1, s2, 7
                  auipc        a6, 357733
                  slti         t6, t5, 1408
                  andi         a2, s0, -1141
                  srl          t1, s11, s6
                  sub          tp, a5, gp
                  bltu         s4, a7, 616f
                  and          t4, s2, s2
                  add          s7, t4, a4
                  bne          s8, gp, 611f
                  andi         gp, s5, 439
                  sub          s1, s7, s4
611:              add          s1, a4, t4
                  sltu         t5, a5, t6
                  ori          t3, a5, 1248
                  srai         a2, s9, 26
                  srai         a7, ra, 18
616:              slti         s6, sp, 933
                  srl          a7, tp, s6
                  auipc        a6, 458540
                  xor          gp, s5, s2
                  add          tp, zero, s9
                  sra          s8, a4, s8
                  bltu         a6, s4, 638f
                  bgeu         s9, gp, 635f
                  sll          s3, sp, t5
                  slt          t4, t0, s4
                  sub          t4, t6, a4
                  auipc        s6, 941656
                  slli         t5, s10, 9
                  blt          s8, a2, 645f
                  srl          zero, a3, t4
                  andi         a5, t6, -1755
                  srai         s1, a1, 25
                  bgeu         ra, t5, 647f
                  add          a2, sp, s11
635:              addi         s1, zero, 676
                  lui          gp, 528518
                  bne          sp, s9, 638f
638:              lui          s8, 848589
                  xor          s0, s4, t5
                  add          s10, s11, s2
                  srai         ra, a2, 6
                  bne          t2, s8, 658f
                  andi         t5, s11, -1362
                  srl          s10, a4, zero
645:              srli         t1, s1, 10
                  andi         sp, s7, -853
647:              bgeu         a6, a2, 658f
                  bne          t3, a0, 664f
                  add          zero, a1, a7
                  xori         a1, a0, 178
                  lui          a5, 85278
                  lui          s10, 328372
                  beq          t3, ra, 665f
                  slti         s7, s10, 481
                  beq          a1, s1, 670f
                  bne          a2, t1, 670f
                  bgeu         t2, s11, 667f
658:              addi         s10, gp, -315
                  bltu         t0, s4, 669f
                  sub          s5, t3, s2
                  andi         s6, ra, -872
                  or           s10, s1, zero
                  xor          s3, s8, gp
664:              bge          a4, a5, 674f
665:              nop
                  xori         s10, t0, 545
667:              sra          t1, a5, sp
                  xor          a2, a5, a4
669:              add          a2, a0, sp
670:              bne          s10, a7, 671f
671:              sub          a0, t5, a3
                  slti         s8, s7, 5
                  andi         t0, s9, 1819
674:              bgeu         s9, s7, 678f
                  sltu         s3, t4, gp
                  blt          t2, s4, 685f
                  bne          a0, t0, 693f
678:              srli         t2, a2, 9
                  sltu         s3, s10, s10
                  sltu         s4, s9, a1
                  sll          t5, s8, s9
                  sub          t2, t6, a0
                  slli         s7, t4, 9
                  or           s0, zero, t2
685:              slti         s3, a7, -1878
                  add          s7, ra, s4
                  bgeu         s10, s2, 690f
                  slt          t5, zero, a2
                  or           zero, s6, s11
690:              lui          t5, 243147
                  auipc        zero, 138965
                  srli         t4, t0, 23
693:              or           t5, s10, a6
                  srai         a0, s8, 19
                  bgeu         s9, t2, 707f
                  add          a2, t6, s0
                  slli         zero, a1, 29
                  addi         t4, s1, -1216
                  bgeu         a3, t6, 702f
                  lui          t4, 298922
                  auipc        s3, 884753
702:              or           s5, s10, a4
                  xor          s1, a5, s9
                  sll          t0, t1, s6
                  slti         s8, gp, 200
                  blt          a3, s5, 717f
707:              sra          s3, t6, a0
                  sltu         s2, a2, t5
                  blt          sp, s9, 725f
                  slt          s4, s9, tp
                  srli         s0, t1, 31
                  and          zero, s7, s8
                  sltiu        gp, s6, -59
                  sra          s7, a7, a4
                  sra          zero, s4, s4
                  ori          s3, a2, -1563
717:              xori         sp, s6, -1252
                  srli         s2, t2, 17
                  bltu         t3, a6, 725f
                  lui          t3, 988655
                  srl          t0, t2, t1
                  ori          gp, a3, 1998
                  and          t2, s6, ra
                  nop
725:              slli         s3, sp, 30
                  and          t3, s6, s2
                  beq          s7, sp, 733f
                  srai         tp, a2, 24
                  sra          tp, t6, s3
                  or           a6, tp, ra
                  lui          s7, 1014492
                  bge          zero, a3, 737f
733:              bgeu         s11, s11, 742f
                  bne          t0, a0, 738f
                  sltu         s10, s9, a2
                  blt          t6, t4, 747f
737:              beq          ra, gp, 757f
738:              auipc        t2, 1018662
                  ori          s6, a7, -143
                  slt          a4, a1, s4
                  bne          s2, a6, 750f
742:              sra          s7, s4, gp
                  slti         t3, t1, 1257
                  lui          t4, 20789
                  slt          a1, a5, a3
                  sltiu        t5, s7, 938
747:              slt          t3, s1, t0
                  sra          gp, s11, t0
                  slt          a0, s4, a7
750:              ori          s7, t3, 169
                  bltu         sp, a1, 767f
                  xori         zero, t4, 1511
                  add          t5, a3, s10
                  add          s7, s5, t2
                  add          s4, zero, s4
                  bge          a4, s9, 768f
757:              beq          s10, a3, 777f
                  sub          s5, s7, s9
                  slt          t0, t6, a1
                  slli         t1, gp, 14
                  nop
                  bge          s9, gp, 772f
                  add          t6, sp, s10
                  beq          s11, s7, 774f
                  nop
                  sll          a0, a5, s2
767:              andi         s10, s7, -1465
768:              add          a4, s4, t2
                  sltiu        s1, ra, -2005
                  beq          t0, a6, 781f
                  srli         t0, sp, 2
772:              andi         s1, s6, -1467
                  sltu         s1, a3, t6
774:              add          t1, s1, s10
sub_5_14:         jal          t1, 27f
0:                jal          ra, 16f
1:                jal          t1, 15f
2:                jal          ra, 22f
3:                jal          ra, 28f
4:                jal          gp, 25f
5:                jal          ra, 13f
6:                jal          t1, 17f
7:                jal          t1, 23f
8:                jal          t1, 14f
9:                jal          t1, 1b
10:               jal          ra, 26f
11:               jal          ra, 20f
12:               jal          t1, 4b
13:               jal          ra, 8b
14:               jal          sp, 3b
15:               jal          t1, 2b
16:               jal          a1, 19f
17:               jal          ra, 24f
18:               jal          ra, 7b
19:               jal          t4, 5b
20:               jal          t1, 12b
21:               jal          t1, 11b
22:               jal          t1, 18b
23:               jal          s4, 10b
24:               jal          a4, 21b
25:               jal          s4, 9b
26:               jal          ra, 0b
27:               jal          t1, 6b
28:               lui          s8, 221803
                  addi         t6, s3, 232
                  srli         s3, t4, 9
777:              xor          s3, t5, s7
                  slt          a5, a5, t3
                  xori         s2, t3, 1102
                  slli         zero, s4, 14
sub_5_0:          jal          t1, 13f
0:                jal          t1, 15f
1:                jal          ra, 12f
2:                jal          ra, 9f
3:                jal          t1, 4f
4:                jal          ra, 2b
5:                jal          tp, 1b
6:                jal          a2, 0b
7:                jal          t1, 16f
8:                jal          t1, 6b
9:                jal          ra, 8b
10:               jal          ra, 3b
11:               jal          ra, 10b
12:               jal          t1, 17f
13:               jal          ra, 14f
14:               jal          ra, 7b
15:               jal          t1, 5b
16:               jal          ra, 11b
17:               add          sp, s5, t0
781:              blt          t2, t0, 790f
                  auipc        s2, 348813
                  srl          s4, s5, s4
                  auipc        a7, 292189
                  bgeu         s10, a0, 786f
786:              sra          s0, s9, sp
                  or           a7, t4, s6
                  sll          t3, a5, gp
                  slli         s2, gp, 23
790:              bgeu         t5, s6, 804f
                  auipc        s2, 468139
                  bge          a2, s3, 801f
                  blt          t1, t6, 803f
                  srl          t1, s0, s10
                  slli         s10, sp, 1
                  xori         s3, s10, -1515
                  slli         t2, s3, 8
                  beq          zero, gp, 810f
                  beq          s8, a5, 809f
                  bge          s8, sp, 816f
801:              sltiu        a0, s6, 428
                  nop
803:              sll          sp, s8, t5
804:              srli         a7, a7, 26
                  srai         s5, t1, 20
                  sltiu        t3, s7, -1877
                  srl          t2, s0, a6
                  sub          s6, a5, t3
809:              xor          s3, s0, gp
810:              and          t3, s5, gp
                  add          t3, s0, a4
                  sub          s10, s5, s2
                  slti         sp, s6, -269
                  srl          tp, a5, s3
                  sra          a0, zero, s1
816:              bltu         t5, a7, 828f
                  slli         t3, t3, 16
                  sll          s6, s6, a2
                  sub          s10, tp, ra
                  andi         t3, tp, -138
                  sltu         t0, t4, a7
                  andi         t0, zero, 1000
                  xori         s4, s11, -813
                  sra          a7, s3, s8
                  lui          t2, 460035
                  bgeu         gp, t0, 829f
                  andi         ra, t5, -682
828:              bge          s7, a1, 844f
829:              add          t2, a4, s1
                  slti         t0, a1, -117
                  xor          t3, t6, a1
                  nop
                  srl          gp, tp, s1
                  andi         sp, s7, 776
                  beq          t4, s2, 851f
                  xori         t5, a7, -1792
                  and          a1, s7, s8
                  beq          s8, s8, 858f
                  addi         s8, s5, 1697
                  addi         t5, a4, -1776
                  andi         a5, s2, 1110
                  srl          s3, s2, t0
                  slli         s4, a6, 11
844:              srli         s0, zero, 12
                  sltu         s1, t5, t4
                  slti         t1, a6, 557
                  slt          s8, a0, a6
                  slt          s0, s7, zero
                  bgeu         a6, a2, 860f
                  auipc        a4, 917236
851:              and          a5, t6, t2
                  slli         t4, s7, 8
                  srl          t6, t6, a7
                  xori         tp, s5, -1392
                  srli         t0, t3, 25
                  sub          tp, a1, a2
                  lui          s8, 682913
858:              srli         t0, s6, 15
                  srl          a5, ra, tp
860:              xor          s0, a0, s7
                  slli         s2, s6, 22
                  nop
                  slt          t3, s6, s9
                  slli         s2, t4, 26
                  sub          a7, a3, a2
                  xor          s2, ra, s4
                  bgeu         zero, t4, 870f
                  bne          t4, a4, 879f
                  sra          t1, a7, s6
870:              xor          s8, t5, a3
                  sltu         s4, s9, t4
                  slt          a2, a4, s6
                  ori          s1, t4, 660
                  auipc        s7, 149547
                  bne          a6, a5, 881f
                  sltiu        t1, tp, -1809
                  xor          a5, zero, t1
                  slti         sp, s10, -366
879:              slti         a5, s11, 128
                  xori         s7, ra, -1822
881:              sll          t4, s0, s3
                  sltu         tp, a1, t4
                  slti         gp, a5, -831
                  addi         s6, a0, 1187
                  slti         a6, s6, -1228
                  nop
                  addi         t6, t2, 310
                  sll          tp, t0, t3
                  sltu         ra, a5, s11
                  sub          t2, t3, s7
                  srai         s10, t0, 20
                  or           a6, a6, a6
                  sll          s4, a7, s8
                  sll          t6, s6, t2
                  blt          s11, gp, 901f
                  slli         a4, s10, 31
                  lui          a5, 382341
                  bltu         a5, s9, 908f
                  blt          a7, a3, 914f
                  sub          tp, s10, s1
901:              srai         s6, ra, 5
                  bltu         a2, t0, 912f
                  slt          s4, s5, ra
                  slt          a0, t3, s2
                  blt          t4, s7, 909f
                  add          a5, s4, s0
                  ori          s7, t2, -1743
908:              srai         s6, s5, 17
909:              sub          a7, s6, a1
                  blt          t1, gp, 930f
                  or           a2, ra, ra
912:              srai         t6, a2, 12
                  beq          sp, t0, 918f
914:              addi         gp, t6, -363
                  auipc        sp, 667100
                  sub          s3, s2, s3
                  or           s3, s2, ra
918:              addi         t0, s0, 1351
                  sub          s3, a1, t2
                  beq          s6, zero, 924f
                  xor          t0, zero, s11
                  ori          s2, a5, 1734
                  auipc        s10, 105267
924:              bne          a6, t0, 934f
                  sra          a6, tp, s9
                  bgeu         s1, s1, 938f
                  andi         a0, t5, 680
                  lui          s5, 157313
                  srli         t3, s0, 20
930:              xori         s1, a6, 1067
                  and          t5, t2, s4
                  sltu         a4, t6, gp
                  bne          t0, s2, 949f
934:              sltiu        s4, tp, -1822
                  bltu         s9, s3, 944f
                  sra          s8, s5, t1
                  bge          s9, s1, 947f
938:              andi         a4, s3, -911
                  bltu         a0, a4, 943f
                  srai         a5, a3, 5
                  slli         s7, s10, 17
                  xori         t6, s9, 1197
943:              sll          a2, s0, ra
944:              srli         tp, t3, 20
                  nop
                  or           t5, s4, t6
947:              slli         s4, s0, 23
                  auipc        a6, 300637
949:              xor          t6, zero, s1
                  addi         tp, a3, 1316
                  xor          t5, t5, ra
                  xor          s1, s3, t4
                  bge          t4, a7, 957f
                  bgeu         gp, s4, 959f
                  sltu         t0, a7, s5
                  srli         gp, t0, 13
957:              xor          t0, t0, a0
                  sltu         ra, a6, s8
959:              add          t2, s8, s6
                  xor          gp, s8, a3
                  sltiu        s10, t0, -1834
                  slt          s1, a0, t6
                  nop
                  ori          zero, t4, -470
                  and          a7, gp, s9
                  ori          t6, s8, -460
                  add          s8, s3, s11
                  lui          s5, 118696
                  sra          a7, s6, s7
                  slli         s3, ra, 10
                  xor          s3, s4, t4
                  lui          sp, 765478
                  xor          a6, zero, t3
                  lw           t1, 4(s11)
                  or           zero, t6, sp
                  addi         s11, s11, 48
                  xor          tp, s3, zero
                  and          t2, t0, a1
                  auipc        t5, 117633
                  xor          ra, a0, t2
1414:             addi x3, x6, 0
1414:             jalr x3, x3, 0
sub_4:            sra          s3, t1, s5
                  sra          a0, tp, s8
                  slt          s4, s1, gp
                  slti         s5, t0, 775
                  bgeu         a0, s6, sub_4_stack_p
sub_4_stack_p:    addi         s11, s11, -60
                  addi         a2, t2, -672
                  sw           t1, 4(s11)
                  sltiu        a7, zero, -1127
                  xori         a6, t5, 603
                  auipc        t3, 230213
                  or           t0, s10, s9
                  nop
                  andi         t1, sp, -913
                  sra          a6, s8, t2
                  bne          s6, s8, 10f
                  ori          s5, t3, -1574
                  sltu         a1, a4, s4
                  blt          t1, a1, 6f
6:                ori          t4, s3, -1874
                  sll          t5, a7, s3
                  and          a2, a4, a4
                  srl          s2, s7, s5
10:               or           s10, s7, s2
                  addi         t5, s0, -1697
                  lw           t1, 4(s11)
                  srl          s8, s2, s10
                  srli         sp, s8, 17
                  or           s2, s2, t5
                  slt          sp, s3, t3
                  xor          sp, s1, sp
                  sltu         s7, t4, s11
                  addi         s11, s11, 60
                  slli         t0, s7, 28
                  lui          zero, 151634
35:               addi x21, x6, 0
35:               jalr x21, x21, 0
sub_2:            andi         s1, a7, -61
                  nop
                  addi         a6, t0, -1468
                  addi         s11, s11, -8
                  srai         s10, s8, 17
                  sw           t1, 4(s11)
                  andi         a2, t5, 1161
sub_2_6:          jal          t1, 9f
0:                jal          ra, 8f
1:                jal          ra, 5f
2:                jal          t1, 10f
3:                jal          ra, 0b
4:                jal          a6, 1b
5:                jal          t1, 18f
6:                jal          s3, 19f
7:                jal          t1, 16f
8:                jal          t0, 15f
9:                jal          ra, 4b
10:               jal          ra, 13f
11:               jal          tp, 2b
12:               jal          t1, 7b
13:               jal          ra, 12b
14:               jal          ra, 6b
15:               jal          ra, 14b
16:               jal          ra, 3b
17:               jal          t5, 11b
18:               jal          t1, 17b
19:               sltu         a0, a5, t1
sub_2_14:         jal          t1, 6f
0:                jal          t1, 8f
1:                jal          ra, 14f
2:                jal          ra, 11f
3:                jal          ra, 15f
4:                jal          ra, 3b
5:                jal          ra, 10f
6:                jal          ra, 13f
7:                jal          t1, 12f
8:                jal          ra, 16f
9:                jal          s4, 5b
10:               jal          ra, 7b
11:               jal          ra, 0b
12:               jal          a0, 1b
13:               jal          ra, 4b
14:               jal          a0, 2b
15:               jal          sp, 9b
16:               srai         t5, s7, 18
sub_2_3:          jal          t1, 0f
0:                jal          ra, 2f
1:                jal          ra, 13f
2:                jal          ra, 3f
3:                jal          t4, 14f
4:                jal          t1, 12f
5:                jal          ra, 10f
6:                jal          t1, 15f
7:                jal          s1, 1b
8:                jal          t0, 5b
9:                jal          a2, 11f
10:               jal          s5, 4b
11:               jal          a1, 6b
12:               jal          t1, 9b
13:               jal          s8, 8b
14:               jal          t4, 7b
15:               srl          a1, s3, gp
sub_2_5:          jal          t1, 16f
0:                jal          ra, 17f
1:                jal          t1, 10f
2:                jal          ra, 0b
3:                jal          ra, 2b
4:                jal          a7, 22f
5:                jal          sp, 4b
6:                jal          t4, 3b
7:                jal          t1, 20f
8:                jal          ra, 13f
9:                jal          t0, 5b
10:               jal          ra, 12f
11:               jal          ra, 18f
12:               jal          ra, 7b
13:               jal          ra, 6b
14:               jal          t1, 19f
15:               jal          ra, 8b
16:               jal          ra, 21f
17:               jal          ra, 14b
18:               jal          a5, 9b
19:               jal          ra, 11b
20:               jal          ra, 15b
21:               jal          ra, 1b
22:               srli         t0, s2, 11
sub_2_12:         jal          t1, 12f
0:                jal          t2, 5f
1:                jal          t1, 8f
2:                jal          ra, 13f
3:                jal          s3, 9f
4:                jal          ra, 11f
5:                jal          ra, 14f
6:                jal          t0, 0b
7:                jal          ra, 1b
8:                jal          ra, 2b
9:                jal          s10, 7b
10:               jal          s0, 3b
11:               jal          ra, 15f
12:               jal          ra, 6b
13:               jal          s4, 4b
14:               jal          ra, 10b
15:               xori         t6, s9, -1505
sub_2_18:         jal          t1, 11f
0:                jal          ra, 8f
1:                jal          s1, 13f
2:                jal          ra, 14f
3:                jal          ra, 10f
4:                jal          s10, 2b
5:                jal          a1, 3b
6:                jal          s4, 4b
7:                jal          ra, 20f
8:                jal          tp, 17f
9:                jal          ra, 22f
10:               jal          tp, 26f
11:               jal          t1, 0b
12:               jal          t1, 28f
13:               jal          t1, 27f
14:               jal          s3, 5b
15:               jal          t1, 24f
16:               jal          t1, 15b
17:               jal          a1, 16b
18:               jal          ra, 21f
19:               jal          ra, 9b
20:               jal          ra, 18b
21:               jal          ra, 25f
22:               jal          ra, 7b
23:               jal          ra, 6b
24:               jal          ra, 23b
25:               jal          ra, 29f
26:               jal          s6, 12b
27:               jal          t4, 19b
28:               jal          ra, 1b
29:               slti         t4, s5, -1048
sub_2_13:         jal          t1, 1f
0:                jal          t1, 8f
1:                jal          t0, 4f
2:                jal          s8, 5f
3:                jal          ra, 2b
4:                jal          t1, 10f
5:                jal          ra, 11f
6:                jal          t1, 3b
7:                jal          ra, 9f
8:                jal          s3, 7b
9:                jal          ra, 6b
10:               jal          ra, 0b
11:               lui          s5, 427547
sub_2_15:         jal          t1, 19f
0:                jal          t1, 1f
1:                jal          ra, 18f
2:                jal          a2, 4f
3:                jal          t0, 6f
4:                jal          t1, 24f
5:                jal          ra, 12f
6:                jal          ra, 16f
7:                jal          t1, 5b
8:                jal          ra, 2b
9:                jal          tp, 7b
10:               jal          ra, 0b
11:               jal          t1, 17f
12:               jal          ra, 3b
13:               jal          s10, 9b
14:               jal          ra, 8b
15:               jal          ra, 21f
16:               jal          t1, 25f
17:               jal          ra, 14b
18:               jal          ra, 15b
19:               jal          ra, 11b
20:               jal          gp, 13b
21:               jal          tp, 22f
22:               jal          t1, 23f
23:               jal          t1, 20b
24:               jal          a7, 10b
25:               andi         zero, t2, 593
sub_2_17:         jal          t1, 24f
0:                jal          ra, 3f
1:                jal          ra, 25f
2:                jal          t1, 1b
3:                jal          gp, 7f
4:                jal          ra, 0b
5:                jal          ra, 16f
6:                jal          t1, 22f
7:                jal          ra, 19f
8:                jal          ra, 13f
9:                jal          ra, 15f
10:               jal          ra, 17f
11:               jal          ra, 29f
12:               jal          t1, 10b
13:               jal          s6, 6b
14:               jal          t1, 12b
15:               jal          s2, 4b
16:               jal          tp, 2b
17:               jal          t1, 27f
18:               jal          ra, 9b
19:               jal          ra, 8b
20:               jal          ra, 23f
21:               jal          s10, 14b
22:               jal          ra, 11b
23:               jal          t2, 28f
24:               jal          s3, 5b
25:               jal          t1, 21b
26:               jal          t1, 20b
27:               jal          t1, 26b
28:               jal          ra, 18b
29:               srli         t4, s9, 16
sub_2_19:         jal          t1, 19f
0:                jal          ra, 11f
1:                jal          ra, 13f
2:                jal          ra, 22f
3:                jal          t1, 16f
4:                jal          ra, 7f
5:                jal          ra, 1b
6:                jal          ra, 18f
7:                jal          t1, 21f
8:                jal          ra, 12f
9:                jal          ra, 14f
10:               jal          ra, 3b
11:               jal          tp, 5b
12:               jal          ra, 17f
13:               jal          ra, 6b
14:               jal          t1, 24f
15:               jal          ra, 25f
16:               jal          ra, 8b
17:               jal          ra, 0b
18:               jal          ra, 20f
19:               jal          t1, 2b
20:               jal          ra, 26f
21:               jal          t1, 15b
22:               jal          ra, 9b
23:               jal          ra, 10b
24:               jal          ra, 4b
25:               jal          s7, 23b
26:               auipc        t1, 226121
sub_2_2:          jal          t1, 11f
0:                jal          ra, 13f
1:                jal          ra, 7f
2:                jal          ra, 14f
3:                jal          gp, 2b
4:                jal          s5, 5f
5:                jal          ra, 6f
6:                jal          ra, 1b
7:                jal          ra, 12f
8:                jal          s6, 17f
9:                jal          t1, 8b
10:               jal          ra, 0b
11:               jal          ra, 15f
12:               jal          s3, 9b
13:               jal          ra, 4b
14:               jal          t1, 16f
15:               jal          a2, 3b
16:               jal          t3, 10b
17:               xor          a0, a2, s4
sub_2_16:         jal          t1, 12f
0:                jal          t1, 3f
1:                jal          ra, 4f
2:                jal          ra, 13f
3:                jal          t1, 1b
4:                jal          t1, 5f
5:                jal          ra, 2b
6:                jal          s10, 0b
7:                jal          ra, 6b
8:                jal          s2, 10f
9:                jal          t1, 8b
10:               jal          ra, 7b
11:               jal          ra, 9b
12:               jal          t1, 11b
13:               lui          ra, 926904
sub_2_0:          jal          t1, 18f
0:                jal          ra, 14f
1:                jal          ra, 20f
2:                jal          ra, 12f
3:                jal          t4, 11f
4:                jal          ra, 19f
5:                jal          t6, 3b
6:                jal          s10, 9f
7:                jal          s10, 0b
8:                jal          ra, 5b
9:                jal          s5, 2b
10:               jal          ra, 4b
11:               jal          s3, 7b
12:               jal          t1, 21f
13:               jal          s8, 8b
14:               jal          gp, 1b
15:               jal          t1, 17f
16:               jal          ra, 10b
17:               jal          t1, 6b
18:               jal          ra, 16b
19:               jal          s8, 13b
20:               jal          ra, 15b
21:               slli         t3, s11, 2
sub_2_9:          jal          t1, 13f
0:                jal          ra, 11f
1:                jal          tp, 2f
2:                jal          ra, 6f
3:                jal          a2, 7f
4:                jal          t3, 0b
5:                jal          ra, 15f
6:                jal          ra, 14f
7:                jal          ra, 4b
8:                jal          t1, 3b
9:                jal          t1, 10f
10:               jal          ra, 12f
11:               jal          s7, 1b
12:               jal          ra, 5b
13:               jal          t1, 8b
14:               jal          ra, 9b
15:               and          s3, a1, zero
sub_2_10:         jal          t1, 0f
0:                jal          t1, 2f
1:                jal          tp, 4f
2:                jal          ra, 3f
3:                jal          ra, 10f
4:                jal          s2, 5f
5:                jal          gp, 11f
6:                jal          t1, 7f
7:                jal          ra, 1b
8:                jal          t1, 9f
9:                jal          ra, 6b
10:               jal          ra, 8b
11:               add          zero, s8, zero
sub_2_1:          jal          t1, 8f
0:                jal          ra, 22f
1:                jal          t1, 2f
2:                jal          ra, 11f
3:                jal          ra, 24f
4:                jal          ra, 0b
5:                jal          t1, 4b
6:                jal          s5, 18f
7:                jal          ra, 15f
8:                jal          t0, 19f
9:                jal          t3, 23f
10:               jal          t1, 16f
11:               jal          gp, 10b
12:               jal          a2, 14f
13:               jal          ra, 1b
14:               jal          t4, 5b
15:               jal          t6, 13b
16:               jal          ra, 12b
17:               jal          t0, 6b
18:               jal          t1, 7b
19:               jal          t1, 25f
20:               jal          ra, 3b
21:               jal          ra, 17b
22:               jal          ra, 9b
23:               jal          ra, 26f
24:               jal          ra, 21b
25:               jal          sp, 20b
26:               sltu         s3, t3, ra
sub_2_4:          jal          t1, 20f
0:                jal          gp, 6f
1:                jal          ra, 7f
2:                jal          ra, 5f
3:                jal          ra, 9f
4:                jal          tp, 3b
5:                jal          tp, 13f
6:                jal          s10, 19f
7:                jal          ra, 11f
8:                jal          ra, 4b
9:                jal          ra, 17f
10:               jal          tp, 14f
11:               jal          tp, 10b
12:               jal          sp, 2b
13:               jal          ra, 1b
14:               jal          t3, 8b
15:               jal          t0, 16f
16:               jal          t1, 0b
17:               jal          ra, 15b
18:               jal          ra, 21f
19:               jal          ra, 18b
20:               jal          s5, 12b
21:               addi         s1, s0, -1456
                  beq          s5, a3, 4f
                  bltu         a4, s5, 7f
                  srli         a1, a1, 14
                  addi         a0, t3, 826
4:                bgeu         a5, s11, 23f
                  sltu         a7, tp, t2
                  bltu         s3, a3, 19f
7:                blt          t1, a7, 22f
                  sll          a6, a0, sp
                  sra          s5, t0, s7
                  srai         zero, s7, 5
                  slli         ra, a7, 9
                  srl          a0, a4, t3
                  sra          a6, t2, tp
                  slli         t4, s7, 24
                  and          gp, a6, s10
                  sra          s0, t2, ra
                  srai         t5, t3, 19
                  sltiu        gp, a5, 1320
19:               beq          t5, s9, 21f
                  add          s4, sp, a2
21:               beq          tp, s7, 35f
22:               addi         a7, s5, -932
23:               sub          t5, tp, s8
                  xori         a4, s8, -1739
                  or           a4, a6, t4
                  sltu         s4, t4, s5
                  bltu         a0, t5, 38f
                  lui          s10, 298487
                  slli         t1, t6, 30
                  sltiu        a4, a1, -650
                  andi         s4, a1, 482
                  bge          a3, a1, 40f
                  srl          tp, s6, a7
                  beq          s8, s10, 38f
35:               sub          zero, t5, ra
                  or           sp, t3, tp
                  sltu         t0, a0, tp
38:               slli         zero, a6, 22
                  bltu         a5, s2, 45f
40:               bge          s1, sp, 47f
                  or           s7, ra, a0
                  sll          t0, s8, s4
                  sltiu        t6, zero, 508
                  slt          sp, t0, a3
                  sll          t1, a7, t2
sub_2_j5:         jal          t1, sub_4 #jump sub_2 -> sub_4
                  xori         ra, s2, 1396
                  bne          s11, a0, 50f
                  bltu         s4, t4, 54f
                  sltu         ra, zero, t3
45:               auipc        t4, 674995
                  slti         s4, t0, 167
47:               and          a0, s7, a1
                  beq          a6, t2, 64f
                  slti         zero, s2, 1413
50:               bge          a6, a3, 66f
                  sub          s4, s9, t0
                  sltu         zero, ra, s7
                  add          a4, a3, t1
54:               andi         zero, a5, 282
                  bne          t2, t3, 56f
56:               srl          s10, t0, a6
                  bge          s6, s0, 61f
                  andi         s5, a3, -1893
                  nop
                  beq          a7, t1, 76f
61:               blt          t6, s2, 77f
                  slt          a1, t0, a3
                  blt          s4, s8, 80f
64:               bltu         t2, s3, 71f
                  bltu         zero, a2, 78f
66:               slti         s2, s7, -1605
                  sltiu        s5, a2, 731
                  auipc        a4, 854858
                  bne          a0, a3, 82f
sub_2_11:         jal          t1, 22f
0:                jal          ra, 20f
1:                jal          ra, 18f
2:                jal          t1, 3f
3:                jal          t1, 7f
4:                jal          s1, 19f
5:                jal          ra, 21f
6:                jal          ra, 9f
7:                jal          ra, 14f
8:                jal          s0, 26f
9:                jal          ra, 24f
10:               jal          s2, 16f
11:               jal          ra, 10b
12:               jal          t2, 13f
13:               jal          a1, 6b
14:               jal          t1, 1b
15:               jal          ra, 4b
16:               jal          ra, 0b
17:               jal          ra, 25f
18:               jal          ra, 12b
19:               jal          tp, 23f
20:               jal          a2, 15b
21:               jal          s10, 11b
22:               jal          ra, 17b
23:               jal          s3, 2b
24:               jal          t0, 8b
25:               jal          t3, 5b
26:               xori         s6, zero, 1446
                  xori         s8, s3, 733
71:               blt          s3, gp, 73f
                  lui          s0, 667565
73:               or           a7, a4, a2
                  or           s0, s11, a1
                  addi         s4, s5, -195
76:               slti         s0, a5, 1636
77:               sub          t1, t4, t0
78:               andi         s2, a1, 1131
                  bne          a5, t6, 90f
80:               slt          ra, a6, a5
                  lui          tp, 679184
82:               xori         t1, t3, 699
                  bltu         zero, tp, 85f
                  auipc        s2, 35051
85:               addi         sp, a7, -455
                  or           s4, t4, gp
                  bne          a3, a5, 104f
                  lui          s5, 531374
                  xori         s5, s11, -331
90:               xori         t6, a1, -562
                  sll          s3, s1, t2
                  sub          a0, s2, s1
                  andi         s10, a1, 1540
                  sltu         a6, s7, gp
                  lui          s4, 708726
                  slt          a5, a5, t6
                  or           s0, t1, s5
                  ori          t4, a2, -1458
                  add          t2, s11, s2
                  nop
                  bltu         t3, s3, 103f
                  beq          s3, t0, 112f
103:              sltiu        t4, ra, -2014
104:              slti         t3, s9, -1254
                  sub          s6, tp, s11
                  sub          a6, t4, t6
                  sltu         a7, s0, t4
                  bge          t5, t3, 116f
                  beq          t6, a0, 126f
                  and          s7, s5, s9
                  sra          s2, a5, s4
112:              xor          a7, gp, s6
                  ori          a1, a4, 499
                  addi         s5, a2, 405
                  ori          a0, s10, 363
116:              slti         t1, s0, -326
                  sll          s6, t1, ra
                  xori         a5, s8, 685
                  srl          t1, sp, a5
                  and          s3, sp, s0
                  beq          s10, gp, 140f
                  sra          t2, sp, a4
                  andi         s3, a0, -205
                  bgeu         t2, a2, 137f
                  bgeu         ra, s7, 127f
126:              srl          s5, a7, a0
127:              xor          s0, t5, a1
                  beq          s11, tp, 144f
                  beq          t2, s10, 146f
                  sltu         zero, s0, a7
                  and          t4, s1, t6
                  sub          t2, a2, s3
                  andi         a4, s2, -346
                  slli         s1, t6, 11
                  and          a6, a1, t3
                  slli         ra, s3, 24
137:              bgeu         a0, t4, 148f
                  blt          tp, s9, 152f
                  slt          a7, a3, a3
140:              sltiu        tp, sp, 448
                  blt          t3, s8, 157f
                  srai         sp, s5, 27
                  lui          s3, 667902
144:              bgeu         a1, gp, 146f
                  xor          s1, tp, t1
146:              srai         s10, s10, 20
                  xor          s0, a6, s10
148:              addi         sp, s5, 421
                  srai         t2, s6, 19
                  sll          a1, t4, s5
                  sra          t6, a6, s4
152:              sltu         tp, s7, s4
                  nop
                  sltiu        s0, s6, 676
                  nop
                  xor          a2, a4, t0
157:              lui          a2, 290730
                  sub          s6, a5, s5
                  sll          s4, gp, a5
                  lui          t1, 1032444
                  sltu         s2, s10, s1
                  or           s0, t1, s2
                  slt          t3, a2, t5
                  sra          t2, t0, s8
                  blt          s5, a0, 169f
                  sub          t0, s5, s4
                  sub          t3, t5, s3
                  bltu         a5, s8, 170f
169:              bltu         s0, tp, 171f
170:              xor          sp, s3, s3
171:              bgeu         ra, sp, 172f
172:              srai         tp, t1, 16
                  sltu         s2, sp, gp
                  sltu         s1, sp, a0
                  sltu         zero, s10, t3
                  add          t4, t0, t5
                  sra          s3, a0, s5
                  ori          zero, gp, -1085
                  addi         t1, a2, 1690
                  bne          t1, a6, 187f
                  andi         t3, s5, 86
                  sra          s3, s2, zero
                  slti         s4, t0, -397
                  nop
                  srli         gp, s5, 0
                  bgeu         a1, s6, 199f
187:              addi         t3, s1, 2043
                  sltu         a7, t5, a6
                  and          a0, s6, a7
                  slt          zero, t4, t4
                  bne          gp, a1, 206f
                  bge          a6, t4, 196f
                  bne          s4, t6, 199f
                  beq          a1, s4, 200f
                  sub          a2, s4, t1
196:              sll          t4, t2, s6
                  sltiu        a4, a0, 389
                  lui          a4, 970277
199:              sub          s0, t0, a3
200:              srai         s8, t3, 4
                  lui          s6, 688688
                  sltiu        t4, s3, -1347
                  bltu         gp, t3, 219f
                  add          s2, s5, s9
                  bltu         ra, s5, 215f
206:              sll          sp, tp, s7
                  bgeu         t2, s1, 218f
                  auipc        s7, 492160
                  srli         s5, s6, 27
                  srl          gp, s8, t2
                  sltu         t6, a4, s7
                  bne          s11, a5, 220f
                  srli         t4, a2, 18
                  srli         t0, t6, 13
215:              lui          t2, 117867
                  slt          s3, t6, s5
                  andi         s0, a2, -616
218:              bgeu         s2, tp, 229f
219:              and          a0, t2, ra
220:              ori          a5, s5, 1037
                  sub          t1, a2, s6
                  sub          s5, tp, s0
                  xori         a6, a2, 1558
                  sub          a2, s6, gp
                  xori         s6, t0, -1556
                  bltu         s6, s11, 233f
                  lui          s5, 674325
                  srai         s4, t0, 21
229:              beq          t4, t3, 242f
                  sltu         t2, a3, t6
                  sub          s3, s9, s1
                  andi         a6, s9, -1350
233:              slti         s3, s8, -1816
                  auipc        t2, 794260
                  srai         t6, sp, 16
                  sll          s5, a5, a4
                  beq          s4, s8, 241f
                  slt          a1, a2, sp
                  beq          sp, t2, 255f
                  xori         a7, s7, 426
241:              sltu         t2, s0, s9
242:              bge          ra, t1, 257f
                  and          gp, s0, s7
                  xori         t4, sp, 887
                  and          s0, a2, t3
                  bne          t1, s0, 265f
                  sub          t3, s7, t0
                  sll          a2, s8, s4
                  srai         a1, s6, 31
                  ori          a4, s5, -954
                  lui          s10, 732106
                  add          a2, s1, t5
                  sub          s2, s2, s9
                  bge          tp, t3, 271f
255:              bge          s0, a1, 263f
                  nop
257:              and          zero, s2, a6
                  sltu         s2, a5, zero
                  bge          s1, a6, 261f
                  xori         s1, s8, 1671
261:              auipc        a7, 14435
                  auipc        a1, 546254
263:              ori          s10, t1, 313
                  srai         a0, t3, 31
265:              add          a6, a7, a5
                  xori         s1, a2, -1415
                  bgeu         t4, a3, 283f
                  ori          s6, t3, 1352
                  and          s7, a4, s3
                  sltu         tp, s9, t3
271:              blt          zero, s10, 273f
                  blt          tp, sp, 286f
273:              xor          a5, s9, s10
                  slt          s5, s6, t4
                  slt          t1, a1, s6
                  bltu         ra, tp, 283f
                  srl          s4, tp, a4
                  sltu         s6, t0, a3
                  srl          zero, a5, t4
                  and          t5, t4, t3
                  xor          a6, a7, gp
                  or           t4, t6, s0
283:              srai         a1, s3, 20
                  sltu         gp, t3, t0
                  xor          tp, t1, t3
286:              bltu         t0, s0, 292f
                  sll          s8, t0, s2
                  slti         s0, a7, -1525
                  sltiu        zero, s5, 278
                  slti         t5, s6, 817
                  addi         a4, a5, -503
292:              beq          t5, t1, 296f
                  blt          gp, t5, 295f
                  slt          s1, sp, t6
295:              beq          t2, t0, 299f
296:              andi         zero, tp, 924
                  bne          s1, s4, 299f
                  bltu         t0, sp, 314f
299:              sltu         t4, a0, s5
                  srli         sp, ra, 4
                  addi         t6, a7, 908
                  and          t4, s6, s11
                  slt          a4, s3, a3
                  bge          a7, a0, 317f
                  andi         t4, s1, 763
                  sub          a5, t0, s9
                  auipc        tp, 654615
                  sra          t3, ra, s3
                  srli         s7, a5, 27
                  slli         t6, s11, 18
                  xor          a1, ra, a3
                  bge          s11, a3, 316f
                  srli         t5, s1, 27
314:              xori         zero, s8, 801
                  bne          zero, t6, 328f
316:              srl          gp, s9, a0
317:              sltiu        a0, a4, -1720
                  sll          a5, s2, t2
                  xor          ra, s1, s7
                  srli         s2, t2, 20
                  addi         s7, a1, 1384
                  and          t4, s5, a4
                  add          t1, t3, t6
                  sra          a7, s5, s4
                  sra          s3, s10, sp
                  beq          a7, s0, 342f
                  slt          tp, s9, s9
328:              xori         a2, s7, -1736
                  sltiu        tp, s6, 806
                  andi         s6, s4, -911
                  beq          a6, sp, 341f
                  blt          t3, t2, 349f
                  and          s6, t3, s7
                  blt          s4, gp, 347f
                  lui          s5, 741200
                  lui          t4, 560001
                  bltu         t5, a2, 348f
                  ori          s10, s7, -1933
                  lui          t1, 235226
                  auipc        a7, 125549
341:              bne          s7, s7, 352f
342:              auipc        t5, 791891
                  ori          a2, a3, -1480
                  lui          a5, 577558
                  beq          t6, s5, 353f
                  andi         s1, s8, -776
347:              sltiu        t6, a1, -722
348:              sll          t3, s7, a0
349:              beq          a7, a5, 365f
                  blt          s9, t4, 351f
351:              srli         s3, s6, 24
352:              addi         s5, a7, 1270
353:              slt          s4, t2, a6
                  and          t4, a6, s3
                  sll          s5, s0, a6
                  srli         s6, t1, 6
                  addi         s1, tp, 907
                  sltiu        sp, s5, 305
                  lui          a4, 1035592
                  bge          a7, a0, 371f
                  srl          a7, a4, a1
                  slli         a6, t5, 29
                  add          t0, t3, a3
                  beq          s5, a7, 370f
365:              srl          s0, gp, s7
                  bgeu         zero, s4, 373f
                  lui          t4, 525292
                  xori         t6, s7, 1706
                  sra          a0, a7, t4
370:              andi         a7, t4, -197
371:              srl          tp, s2, tp
                  bge          gp, s1, 374f
373:              xor          a5, sp, s3
374:              lui          a7, 621595
                  srai         t5, zero, 21
                  bge          s0, tp, 380f
                  auipc        s8, 901692
                  srl          s5, t0, a3
                  bgeu         s3, t5, 392f
380:              srai         a7, a7, 5
                  bne          a7, t3, 398f
                  sltu         s6, a0, gp
                  slli         t0, s6, 4
                  slli         s5, t4, 15
                  srl          a0, s8, t5
                  or           t0, s5, t3
                  add          s1, a6, a4
                  nop
                  bltu         s7, s1, 400f
                  beq          a5, a7, 391f
391:              blt          a4, a5, 401f
392:              srli         a1, s7, 24
                  xor          a1, s8, zero
                  addi         t1, gp, 794
                  andi         a0, tp, -1735
                  blt          s6, a1, 398f
                  bge          a1, a3, 411f
398:              xor          a0, a5, t4
                  or           t2, t5, ra
400:              slti         sp, a4, 1151
401:              slti         a2, t3, -928
                  sll          a2, s10, a0
                  sll          s4, s4, s2
                  slli         s8, s10, 16
                  srl          a1, sp, s3
                  bge          s11, t3, 413f
                  slti         t4, a3, 2036
                  xori         a4, s10, 1453
                  ori          s6, s5, -1102
                  addi         tp, a3, 1211
411:              ori          s2, s0, 1324
                  add          zero, a0, sp
413:              add          t3, s5, s1
                  slli         t5, zero, 4
                  bne          s4, s4, 421f
                  slli         tp, t1, 16
                  or           gp, a3, s9
                  add          t5, t0, sp
                  xori         ra, sp, 1565
                  slli         t0, a0, 21
421:              or           ra, s10, s3
                  sltiu        a4, a7, -185
                  sra          a7, t3, sp
                  sltu         a5, a0, s8
                  sub          a0, zero, s6
                  sltiu        a7, s3, -469
                  nop
                  ori          s6, t3, 211
                  addi         t3, s8, -1809
                  slli         t0, t3, 18
                  slli         s5, gp, 0
                  nop
                  bge          a1, a0, 441f
                  andi         gp, s4, 91
                  xori         tp, s4, 1323
                  sll          s6, s4, t3
                  lui          s7, 904058
                  lui          t2, 143648
                  slti         a6, s9, -319
                  srl          s7, s7, s1
441:              add          s5, zero, t0
                  bltu         s1, a2, 450f
                  sll          a6, t1, t2
                  bge          s8, s4, 451f
                  srl          zero, a7, a7
                  lui          t5, 431501
                  sll          s0, s5, s3
                  sltiu        t0, a1, 89
                  lui          s4, 314532
450:              beq          a5, ra, 467f
451:              nop
                  blt          t5, s7, 454f
                  and          gp, s3, ra
454:              srai         a7, a5, 26
                  bge          s0, sp, 459f
                  sll          t5, s11, tp
                  sll          a0, t3, s4
                  bgeu         ra, s1, 477f
459:              bge          gp, s3, 461f
                  sltiu        t6, a6, 1472
461:              add          a4, a4, t5
                  slt          sp, sp, s0
                  sltu         gp, a1, s6
                  bne          sp, t2, 475f
                  sll          t1, s10, gp
                  and          s7, s5, a7
467:              bgeu         tp, sp, 483f
                  srai         t1, s1, 16
                  blt          t3, t6, 485f
                  sra          t0, s6, s7
                  blt          s7, t5, 486f
                  xor          s2, a1, a4
                  srl          zero, s9, zero
                  sll          s4, a7, s8
475:              add          t3, t5, t2
                  xor          a6, s10, s10
477:              srli         t3, s7, 26
                  srai         s8, s3, 8
                  bge          a7, s8, 492f
                  xori         s8, s8, -1941
                  slt          zero, tp, tp
                  auipc        s4, 531323
483:              slti         s4, s2, 3
                  sltiu        s2, a0, -462
485:              andi         gp, s0, 1036
486:              bge          s8, s5, 492f
                  bltu         s1, a0, 503f
                  srl          s5, ra, s10
                  sltu         s6, ra, s7
                  blt          t1, s3, 494f
                  nop
492:              sll          a5, a7, s10
                  sll          s5, ra, zero
494:              sra          s4, t6, a3
                  xor          t6, s4, s4
                  ori          s6, t6, 264
                  bgeu         a3, s8, 510f
                  nop
                  bge          s10, s0, 510f
                  slti         s4, t2, -1599
                  addi         ra, a4, -1679
                  auipc        gp, 273818
503:              blt          a3, s1, 519f
                  ori          gp, sp, 1734
                  srl          s6, a7, a3
                  ori          t3, t4, -1640
                  xori         a4, s1, 58
                  ori          t4, s6, 579
                  beq          t6, t1, 522f
510:              srli         s8, s8, 29
                  addi         t0, t1, -1069
                  bltu         s0, a3, 528f
                  lui          s1, 17847
                  sub          s0, s5, gp
                  add          t1, a4, s7
                  sll          t4, ra, a2
                  lui          sp, 951592
                  slli         s1, tp, 23
519:              sub          s5, a3, t6
                  auipc        tp, 797820
                  bge          a4, t2, 536f
522:              bgeu         s0, a7, 541f
                  sltiu        t2, s4, -1647
                  auipc        t6, 893379
sub_2_8:          jal          t1, 10f
0:                jal          ra, 11f
1:                jal          ra, 5f
2:                jal          ra, 4f
3:                jal          t1, 8f
4:                jal          ra, 3b
5:                jal          ra, 2b
6:                jal          ra, 7f
7:                jal          ra, 9f
8:                jal          t1, 0b
9:                jal          ra, 1b
10:               jal          ra, 6b
11:               sub          a6, a2, a3
                  and          a2, zero, a6
                  addi         s4, s6, 1185
                  lui          tp, 270278
528:              slti         a0, t4, 828
                  slt          s6, a4, s3
                  srl          s0, sp, a3
                  add          gp, s2, tp
                  bltu         a6, t0, 534f
                  sltiu        gp, t0, -1979
534:              nop
                  and          s10, s7, s5
536:              bgeu         tp, a3, 549f
                  srli         s10, t1, 31
                  or           s2, a1, zero
                  xori         t6, t4, -607
                  slt          a5, a7, s1
541:              bltu         s10, a7, 545f
                  auipc        a0, 450049
                  srli         t2, a1, 1
                  slli         s0, t4, 0
545:              sub          s8, a5, s8
                  or           gp, s7, s3
                  beq          a6, t2, 549f
                  nop
549:              andi         s6, s3, -211
                  slti         s1, gp, -1974
                  lui          a2, 232553
                  sltu         s10, zero, s6
                  auipc        ra, 656625
                  xor          s10, t5, s9
                  sltiu        zero, a2, -1369
                  blt          tp, t3, 562f
                  bge          s10, gp, 558f
558:              bgeu         a0, s2, 571f
                  sll          a4, s6, gp
                  and          a4, s6, a2
                  sltu         tp, tp, s6
562:              add          t4, gp, s3
                  bne          ra, t5, 579f
                  slli         s3, ra, 2
                  lui          s10, 231972
                  and          t5, t3, t6
                  sub          t1, s0, t6
                  srai         s4, s8, 19
                  andi         t6, s11, 1628
                  sll          t6, t1, a6
571:              srl          a2, s4, t2
                  bge          s7, s11, 580f
                  sltiu        a4, s0, 40
                  auipc        zero, 924329
                  xor          a7, s5, s10
                  sll          s8, a7, s10
                  sra          a0, t5, s10
                  sll          tp, t3, t1
579:              nop
580:              or           a0, gp, a3
                  and          a5, s1, a0
                  srai         ra, s0, 30
                  slt          s1, t1, s9
                  lui          zero, 721103
                  slt          t1, s5, t0
                  sltiu        s8, a4, -1586
                  bne          a7, s7, 589f
                  andi         a5, t3, -1555
589:              bne          a2, tp, 595f
                  sltiu        s8, t5, -885
                  ori          a7, t1, 1336
                  slt          s10, t3, t1
                  or           a6, t1, s6
                  sltiu        t2, tp, -1909
595:              bgeu         a6, s2, 605f
                  blt          zero, s9, 600f
                  bgeu         a3, s3, 608f
                  and          a0, a5, s8
                  bge          t2, t5, 606f
600:              sll          t0, s1, s6
                  beq          a7, t1, 618f
                  nop
                  addi         gp, t5, -1423
                  lui          a5, 17805
605:              beq          t2, t5, 607f
606:              lui          tp, 782193
607:              add          a6, s8, a4
608:              addi         a2, s6, -1084
                  slli         t3, s6, 15
                  sub          t0, t2, a7
                  sll          a2, s3, a4
                  ori          a4, s9, 924
                  srai         s4, t5, 8
                  addi         a1, s1, -769
                  bgeu         s1, a1, 631f
                  and          s6, s1, a5
                  sra          tp, s6, s11
618:              sra          s0, t2, s8
                  bne          s4, gp, 623f
                  and          gp, a7, t1
                  andi         a0, s9, 974
                  blt          a3, s3, 639f
623:              and          gp, t4, a1
                  sra          zero, t4, s10
                  sra          t1, zero, s6
                  bge          s2, sp, 642f
                  sltiu        zero, s5, -92
                  slli         s8, s8, 22
                  sra          t6, a2, ra
                  lui          sp, 290542
631:              xor          s10, s11, tp
                  slt          s6, s3, t2
                  sll          t0, s8, t3
                  ori          a5, t2, -1165
                  slt          t6, a5, s1
                  xori         s7, s2, 1453
                  auipc        t3, 241995
                  bge          a5, t2, 645f
639:              bne          s2, s1, 650f
                  sltiu        s8, s9, -1302
                  add          s5, a2, a6
642:              sra          t4, t4, t3
sub_2_7:          jal          t1, 2f
0:                jal          sp, 1f
1:                jal          s6, 9f
2:                jal          ra, 6f
3:                jal          t1, 5f
4:                jal          t1, 0b
5:                jal          ra, 4b
6:                jal          t1, 3b
7:                jal          ra, 10f
8:                jal          t1, 7b
9:                jal          ra, 8b
10:               xor          a4, s7, a0
                  lui          s5, 684561
                  bgeu         a6, s5, 658f
645:              xori         s7, s1, -1339
                  sltiu        gp, s7, -421
                  slli         zero, s4, 22
                  xor          s10, t3, a0
                  add          t0, a6, s2
650:              srli         ra, t5, 26
                  srli         a7, s3, 27
                  sltu         s10, s1, a7
                  xor          a6, t6, ra
                  nop
                  bltu         s1, tp, 666f
                  lui          s8, 209332
                  sll          a1, s10, a1
658:              andi         a7, s10, 1308
                  bgeu         t5, a3, 667f
                  lui          t1, 158380
                  slti         gp, t6, 1810
                  bltu         a7, tp, 669f
                  addi         s4, t3, 201
                  sll          s1, t2, t0
                  sub          s10, s7, a3
666:              srl          s4, s6, t6
667:              sltiu        s7, s3, 736
                  srl          s1, s4, a1
669:              sltu         s0, s7, s5
                  bne          a1, s0, 674f
                  xor          s3, s8, s6
                  bge          a6, s3, 688f
                  and          t6, t2, s9
674:              lui          s3, 265580
                  blt          s7, t2, 691f
                  slt          zero, s4, t2
                  blt          s2, t5, 683f
                  bltu         s1, a3, 694f
                  sll          s5, a6, gp
                  sub          s3, a6, s10
                  sll          a1, a5, tp
                  xor          t3, s0, s5
683:              lui          a4, 615232
                  bgeu         t0, a0, 692f
                  blt          s5, a5, 692f
                  lui          s4, 901783
                  srai         a6, a0, 16
688:              bne          a2, t6, 692f
                  sltiu        a1, s1, 1598
                  bne          a5, s6, 692f
691:              nop
692:              nop
                  blt          a5, a0, 703f
694:              bne          s4, t5, 710f
                  xori         a5, s2, 208
                  sub          a0, s8, s7
                  addi         ra, tp, -1045
                  slli         t3, s4, 0
                  nop
                  lui          t6, 507104
                  add          gp, s6, a7
                  add          t5, a0, s0
703:              ori          s10, zero, -761
                  sll          a2, s4, a1
                  xor          sp, s7, t4
                  ori          a7, ra, 1771
                  bge          s7, a1, 715f
                  srai         a0, s6, 13
                  sltiu        tp, zero, -1401
710:              beq          t1, a2, 727f
                  sltiu        a5, tp, 1943
                  sltiu        t6, s4, 723
                  lui          t4, 956149
                  srli         s3, s3, 3
715:              srli         sp, s1, 18
                  xor          a1, s8, s1
                  xor          t4, zero, a2
                  sub          t0, s10, t4
                  addi         s10, a2, -871
                  lui          a0, 988647
                  lui          sp, 595226
                  or           s7, a0, s10
                  srai         s6, t6, 30
                  add          a6, tp, a4
                  addi         a7, t1, -1967
                  lui          zero, 904125
727:              bge          a0, s4, 729f
                  blt          a4, s4, 741f
729:              sltiu        a4, s9, -1979
                  beq          a6, tp, 741f
                  sltiu        t6, t2, -1410
                  slti         t0, s8, -898
                  blt          s5, s5, 748f
                  nop
                  ori          sp, s6, 952
                  srl          s1, a5, t1
                  xor          a1, s3, s7
                  slli         zero, a0, 9
                  slli         a4, a1, 21
                  nop
741:              bgeu         s5, s9, 758f
                  sltiu        sp, a2, -1960
                  addi         ra, t1, 32
                  andi         a4, s11, -932
                  xori         ra, zero, 674
                  nop
                  xor          s2, s3, a6
748:              lui          t0, 384873
                  bge          zero, s8, 751f
                  bge          s3, tp, 763f
                  xori         t5, t3, 435
                  la           s8, sub_5
                  xori         ra, gp, 162
                  auipc        t5, 359918
                  addi         s8, s8, -180
                  srai         t3, a4, 28
                  sll          a6, s11, s4
                  slt          t5, s9, s5
sub_2_j4:         jalr         t1, s8, 180 #jump sub_2 -> sub_5
751:              blt          t1, a0, 752f
752:              bge          s3, sp, 763f
                  srl          s2, a6, sp
                  sltu         ra, a0, tp
                  lui          t0, 1020915
                  xori         a1, t5, -876
                  sltiu        a5, gp, -279
758:              sltu         s5, s7, a5
                  or           t5, a6, t1
                  bne          a0, a3, 764f
                  sra          a7, t0, a5
                  slli         sp, s10, 27
763:              nop
764:              or           a1, gp, s6
                  nop
                  srl          s4, a2, s10
                  auipc        t6, 757271
                  bge          ra, a6, 770f
                  slli         s8, gp, 21
770:              or           s10, a4, a3
                  bge          s6, s4, 782f
                  lui          a2, 291376
                  slti         ra, a5, -69
                  la           s7, sub_3
                  srli         a0, t6, 31
                  sub          a6, s4, ra
                  xor          a1, a3, a2
                  sra          s4, t6, gp
                  addi         s7, s7, -505
                  andi         gp, sp, 1375
sub_2_j3:         jalr         t1, s7, 506 #jump sub_2 -> sub_3
                  blt          s6, gp, 793f
                  slt          s7, s4, s11
                  xor          t0, t2, t6
                  sltu         s0, s11, s2
                  and          a5, a0, t5
                  add          s6, s10, t5
                  addi         a2, s3, -388
                  slti         t6, a5, -1301
782:              ori          gp, s6, -56
                  sltu         s4, t6, t2
                  and          s7, s0, sp
                  bge          a0, s4, 791f
                  add          a2, zero, t5
                  or           s5, s1, a4
                  sltiu        s10, a6, -1660
                  slti         ra, a1, 1745
                  and          s8, t5, zero
791:              blt          t6, a7, 804f
                  bne          a6, a0, 806f
793:              sltu         a7, t6, zero
                  addi         tp, tp, 1452
                  lui          sp, 264383
                  and          zero, s5, s1
                  xori         t1, s0, 1551
                  sra          a6, t5, s9
                  sll          a4, a6, a2
                  and          s10, a3, t5
                  and          a7, s6, t5
                  bltu         t4, s11, 806f
                  addi         a6, t0, 1584
804:              bgeu         s0, s11, 818f
                  slti         gp, a7, -842
806:              beq          t6, a1, 821f
                  slli         zero, s1, 8
                  andi         s10, s3, -349
                  or           s2, s6, a5
                  sub          ra, s9, a5
                  xor          s6, a7, a5
                  add          s8, a2, a7
                  auipc        tp, 706537
                  srai         a7, gp, 7
                  bge          a3, tp, 822f
                  srli         t0, t6, 23
                  srli         t4, s8, 10
818:              sltu         s1, s4, zero
                  bne          s1, t2, 823f
                  auipc        a7, 93017
821:              bltu         sp, t6, 834f
822:              xori         t0, s2, 689
823:              auipc        s1, 904374
                  lui          t4, 984018
                  nop
                  blt          t5, s6, 828f
                  slti         t3, t1, -353
828:              auipc        ra, 925795
                  blt          s1, t4, 845f
                  srli         a6, tp, 14
                  srl          t0, t6, t1
                  slli         zero, s3, 21
                  auipc        t3, 563075
834:              bne          s4, a0, 838f
                  xor          t2, a7, s3
                  sltu         s6, s7, t4
                  xori         s8, s3, 187
838:              sltu         a2, t4, s11
                  bgeu         a7, t2, 858f
                  lui          gp, 100991
                  bne          s2, a5, 842f
842:              andi         t0, s7, -845
                  nop
                  beq          s11, t6, 852f
845:              bne          s3, t0, 856f
                  sra          a1, a4, a2
                  nop
                  srli         s7, s7, 4
                  add          s5, s7, s10
                  or           s3, t5, s9
                  add          t6, t1, t6
852:              bne          s3, ra, 860f
                  srl          tp, sp, a6
                  bgeu         t3, s0, 870f
                  bge          a4, s7, 857f
856:              sub          a1, t0, s3
857:              slt          gp, a0, s8
858:              andi         s7, s2, 30
                  slt          s10, s11, s3
860:              sltu         zero, s1, s4
                  sra          s3, s6, t5
                  nop
                  lui          t6, 964477
                  beq          s7, s1, 874f
                  beq          t2, t5, 872f
                  bge          a2, zero, 877f
                  addi         gp, a4, -514
                  ori          s8, s6, -1381
                  blt          s6, s7, 885f
870:              or           s5, s7, s9
                  bge          t0, s3, 877f
872:              beq          sp, a6, 889f
                  sll          s2, a2, tp
874:              sltu         t2, a3, s2
                  nop
                  xori         a0, t3, -1798
877:              slti         gp, a1, 555
                  sll          a2, a6, ra
                  sra          a7, a3, t1
                  add          t1, tp, gp
                  auipc        s1, 185093
                  bne          a6, s6, 899f
                  add          a1, t4, s3
                  sltu         tp, t2, s5
885:              auipc        s8, 95067
                  and          a1, s0, s2
                  blt          s9, gp, 900f
                  slti         t1, s5, -1486
889:              srl          zero, s9, s0
                  and          gp, t1, s0
                  srli         t5, t4, 7
                  blt          zero, s3, 898f
                  sub          s7, t4, a3
                  slt          s8, sp, zero
                  bltu         a4, gp, 897f
                  ori          sp, t4, 336
897:              blt          s8, a3, 908f
898:              slti         s8, s8, -1905
899:              xor          s8, t2, s4
900:              ori          a4, t3, -1378
                  or           a1, s2, s1
                  sltu         sp, a7, s4
                  slt          s3, t0, ra
                  nop
                  slt          s1, a2, s11
                  auipc        a5, 93060
                  bgeu         a5, s5, 923f
908:              bgeu         s0, t6, 910f
                  ori          a1, t0, -529
910:              srli         s7, a5, 4
                  addi         s3, a1, -1675
                  ori          a0, a4, -1153
                  bltu         sp, s5, 926f
                  add          a4, a1, t1
                  slti         a0, s1, -432
                  bge          s0, s4, 927f
                  nop
                  xori         zero, s8, -182
                  and          s0, s1, s9
                  sra          s0, s7, s9
                  and          s3, t1, a4
                  xori         s3, a0, -1082
923:              srli         s5, t6, 0
                  andi         a6, s2, 1244
                  srai         t0, s11, 13
926:              add          ra, t2, s4
927:              or           s0, s1, a7
                  sltiu        s5, s4, 1263
                  sub          t5, a4, a1
                  andi         gp, a4, 1794
                  auipc        s7, 267929
                  bge          s2, t5, 949f
                  sltu         s3, t6, s7
                  sub          s10, a2, ra
                  nop
                  sub          t1, t0, tp
                  srai         s3, s1, 27
                  slt          tp, t6, t4
                  beq          t4, s2, 945f
                  and          s2, s6, t5
                  blt          t6, s4, 948f
                  sub          t4, gp, sp
                  beq          s3, a7, 949f
                  addi         zero, a2, -1065
945:              sub          sp, t0, a6
                  add          t1, a7, a4
                  sltu         gp, t4, t0
948:              blt          s11, t4, 950f
949:              and          s5, a7, a0
950:              nop
                  slti         ra, a5, -1372
                  xor          a5, t3, zero
                  bltu         s9, t6, 968f
                  xor          s10, a3, s5
                  bne          s4, t1, 957f
                  auipc        a6, 606189
957:              srai         s2, s3, 6
                  srai         s1, a5, 30
                  bge          s11, a6, 975f
                  sub          s4, a0, t5
                  sra          s1, t2, s11
                  sll          a4, t3, a7
                  bge          t4, s11, 982f
                  or           zero, a2, a1
                  slli         t0, s7, 0
                  blt          ra, s10, 979f
                  sltu         zero, a3, a0
968:              ori          sp, a3, 1248
                  bltu         a2, s1, 973f
                  srl          a6, s1, zero
                  bltu         s2, a5, 984f
                  bge          ra, s3, 980f
973:              andi         s7, t0, -868
                  slli         s0, s10, 18
975:              slt          t1, t0, t5
                  bgeu         t6, s4, 987f
                  bltu         s9, s11, 988f
                  add          t4, a7, s9
979:              sltu         sp, zero, s1
980:              and          a1, t3, s2
                  srli         s1, s10, 4
982:              slti         t3, a7, -357
                  nop
984:              and          s10, s0, t0
                  bge          t6, a5, 987f
                  lui          t5, 875299
987:              slli         zero, t0, 1
988:              beq          t3, t0, 1001f
                  sra          a0, s8, a1
                  auipc        t2, 704919
                  bne          s6, s5, 998f
                  lui          a2, 456203
                  srai         a6, t2, 29
                  lui          s3, 28576
                  sra          a7, a4, s7
                  bltu         s8, gp, 1001f
                  auipc        s1, 789076
998:              bge          a4, s11, 1001f
                  andi         a4, s8, 818
                  add          a6, t1, s10
1001:             lui          s0, 967017
                  srl          t3, s7, t5
                  add          s5, a6, a6
                  lw           t1, 4(s11)
                  srl          t4, s4, s9
                  addi         s11, s11, 8
                  sltiu        a0, a0, 1735
                  or           ra, sp, a6
                  sub          s8, s7, zero
                  sll          a5, a4, s11
                  slti         s7, t1, -4
1460:             addi x26, x6, 0
1460:             jalr x26, x26, 0
sub_1:            sltu         a4, gp, s8
                  bltu         gp, s3, sub_1_stack_p
                  srl          sp, s6, s8
                  sra          s2, a7, s11
                  srai         tp, s8, 21
sub_1_stack_p:    addi         s11, s11, -12
                  andi         s0, zero, 1577
                  sw           t1, 4(s11)
                  auipc        s5, 89556
                  la           s4, sub_2
                  auipc        gp, 82896
                  andi         a5, tp, 1204
                  addi         a4, s8, 1534
                  ori          zero, a7, -1745
                  srli         s1, t4, 11
                  addi         s4, s4, -776
                  srl          gp, t5, a7
                  bgeu         a3, s3, sub_1_j2 #branch to jump instr
                  xor          zero, t1, s1
sub_1_j2:         jalr         t1, s4, 776 #jump sub_1 -> sub_2
sub_1_0:          jal          t1, 0f
0:                jal          ra, 1f
1:                jal          t0, 10f
2:                jal          ra, 3f
3:                jal          ra, 11f
4:                jal          ra, 6f
5:                jal          a1, 7f
6:                jal          t1, 9f
7:                jal          ra, 4b
8:                jal          ra, 12f
9:                jal          ra, 2b
10:               jal          a0, 5b
11:               jal          a1, 8b
12:               sra          s4, a3, t2
                  sltu         t2, t0, ra
                  sra          a4, a0, a4
                  blt          s6, sp, 20f
                  srai         a5, a6, 3
                  or           gp, t5, s3
                  sll          a5, s7, sp
                  sub          t2, t1, s2
                  blt          t6, s0, 27f
                  lui          t1, 139878
                  add          s5, a1, gp
                  add          sp, a0, s1
                  nop
                  bge          s7, s9, 30f
                  slli         a4, t4, 3
                  andi         ra, a1, -1733
                  bltu         s1, sp, 24f
                  sub          s1, a5, s9
                  sll          t1, ra, a1
                  and          s3, a4, t6
                  auipc        s2, 236103
20:               blt          a7, s1, 35f
                  or           tp, s6, gp
                  and          a2, s3, s9
                  lui          t2, 830828
24:               slti         gp, t5, -1478
                  xori         s7, s4, 1916
                  bgeu         s4, t5, 28f
27:               slli         s10, s4, 8
28:               bgeu         t6, s9, 47f
                  ori          gp, s7, 1636
30:               sltu         gp, a7, s1
                  bgeu         t0, s11, 35f
                  slt          a1, a5, tp
                  slti         zero, s0, 1407
                  and          a5, a1, t1
35:               addi         a0, s6, 1367
                  nop
                  sltu         t1, s9, t2
                  bgeu         gp, s1, 39f
39:               slt          gp, s6, s2
                  auipc        a2, 883290
                  slli         zero, zero, 1
                  and          s3, s4, s6
                  nop
                  or           a5, ra, a0
                  add          t0, a3, s9
                  ori          a1, a6, 2017
47:               or           a6, t5, a4
                  slt          a7, s8, t2
                  sll          t3, s4, s11
                  sra          s4, gp, a4
                  slti         s7, a0, -51
                  bge          s1, t2, 72f
                  bgeu         a7, s3, 72f
                  auipc        t0, 606969
                  andi         s2, s1, 890
                  lui          t3, 484409
                  srai         s6, s4, 4
                  sltiu        gp, tp, -676
                  sub          a2, tp, a1
                  srai         t4, s5, 29
                  bne          a6, s5, 68f
                  bge          a3, zero, 71f
                  sltu         s1, t5, s2
                  bltu         a2, s3, 71f
                  sltiu        s6, s9, 1321
                  or           t0, gp, s7
                  add          a5, s10, tp
68:               bgeu         a4, a3, 77f
                  srl          s10, sp, t1
                  blt          s3, a2, 71f
71:               sub          tp, t4, zero
72:               srl          a6, s8, a2
                  or           sp, t4, a0
                  slt          a0, s8, s0
                  sltu         t5, a0, sp
                  lui          a5, 617247
77:               sltu         t2, a3, a3
                  nop
                  auipc        s10, 180785
                  slti         s5, tp, 1482
                  sll          s6, tp, s7
                  srai         s1, a2, 21
                  lw           t1, 4(s11)
                  addi         s11, s11, 12
                  sub          s7, t0, ra
                  slti         s0, s0, 1175
121:              addi x28, x6, 1
121:              jalr x28, x28, 0
sub_3:            ori          a4, s8, -1669
                  nop
                  sltu         a6, s2, s11
                  addi         s11, s11, -32
                  sra          t0, a2, t4
                  slli         tp, s10, 14
                  lui          a4, 134145
                  sw           t1, 4(s11)
                  nop
                  slt          s10, s3, s9
                  slti         a1, a7, 617
sub_3_1:          jal          t1, 9f
0:                jal          t1, 6f
1:                jal          ra, 2f
2:                jal          ra, 3f
3:                jal          s8, 5f
4:                jal          ra, 8f
5:                jal          ra, 4b
6:                jal          ra, 1b
7:                jal          t0, 0b
8:                jal          s0, 10f
9:                jal          ra, 7b
10:               srl          t2, a1, s11
sub_3_3:          jal          t1, 2f
0:                jal          a1, 19f
1:                jal          gp, 11f
2:                jal          ra, 20f
3:                jal          a0, 8f
4:                jal          ra, 6f
5:                jal          ra, 15f
6:                jal          ra, 12f
7:                jal          ra, 16f
8:                jal          ra, 18f
9:                jal          ra, 0b
10:               jal          ra, 9b
11:               jal          ra, 13f
12:               jal          t1, 17f
13:               jal          ra, 3b
14:               jal          s3, 21f
15:               jal          s7, 14b
16:               jal          t6, 1b
17:               jal          ra, 5b
18:               jal          sp, 4b
19:               jal          t1, 7b
20:               jal          a0, 10b
21:               srl          s3, s8, s5
sub_3_2:          jal          t1, 6f
0:                jal          ra, 2f
1:                jal          s8, 9f
2:                jal          t5, 5f
3:                jal          t1, 0b
4:                jal          ra, 7f
5:                jal          s3, 1b
6:                jal          ra, 3b
7:                jal          s3, 11f
8:                jal          t2, 4b
9:                jal          ra, 10f
10:               jal          a2, 8b
11:               slt          sp, ra, s8
sub_3_0:          jal          t1, 28f
0:                jal          tp, 19f
1:                jal          ra, 29f
2:                jal          ra, 13f
3:                jal          t1, 11f
4:                jal          ra, 27f
5:                jal          t1, 21f
6:                jal          gp, 23f
7:                jal          t1, 0b
8:                jal          a4, 2b
9:                jal          tp, 10f
10:               jal          ra, 18f
11:               jal          t0, 14f
12:               jal          t1, 26f
13:               jal          t1, 20f
14:               jal          ra, 24f
15:               jal          s1, 17f
16:               jal          ra, 3b
17:               jal          gp, 9b
18:               jal          s8, 7b
19:               jal          ra, 22f
20:               jal          ra, 5b
21:               jal          sp, 4b
22:               jal          sp, 25f
23:               jal          ra, 1b
24:               jal          t1, 8b
25:               jal          t2, 12b
26:               jal          s6, 16b
27:               jal          t2, 6b
28:               jal          s1, 15b
29:               andi         t2, t5, 1889
                  sll          t4, a4, t2
                  beq          s4, s3, 15f
                  srai         t3, a3, 15
                  xori         a0, t3, -1407
                  sra          t3, s1, s5
                  beq          s9, s9, 7f
                  andi         s3, s5, 157
7:                xor          s8, a3, tp
                  sltiu        a1, a7, 1947
                  sub          t0, s11, a2
                  bge          a5, tp, 23f
                  bge          t3, s5, 15f
                  sltiu        a5, t2, -1793
                  sll          a6, t4, a0
                  slti         tp, sp, -467
15:               ori          t5, a7, -1534
                  sll          a1, s1, a3
                  and          a5, zero, s1
                  and          a7, t4, t1
                  bne          s9, s11, 38f
                  or           gp, t4, s9
                  bge          tp, gp, 37f
                  xor          ra, a6, zero
23:               srl          s4, s1, s9
                  xori         a0, ra, -1370
                  slti         sp, t5, 1101
                  sub          s3, a6, a7
                  ori          s8, gp, 1075
                  sltu         t4, a1, s9
                  xor          ra, s7, ra
                  or           a0, s11, s5
                  addi         s4, s5, 1175
                  and          s0, t6, s4
                  bne          a5, zero, 47f
                  sll          zero, sp, s3
                  bge          t4, s5, 53f
                  sltu         tp, s11, s1
37:               bne          sp, s8, 57f
38:               blt          s2, t4, 49f
                  bge          s2, s3, 54f
                  slt          t2, a1, a7
                  xor          a6, sp, t1
                  blt          a7, t6, 58f
                  beq          t4, a7, 63f
                  ori          s0, t3, 267
                  addi         s0, a7, -139
                  bge          s4, a3, 55f
47:               ori          t6, ra, 1072
                  bgeu         s11, t0, 62f
49:               lui          s2, 824892
                  sub          t5, t0, tp
                  sll          a7, t6, a4
                  slt          s6, sp, a4
53:               sra          a5, t4, sp
54:               ori          gp, a5, -255
55:               ori          gp, s0, 440
                  bltu         a7, ra, 74f
57:               bgeu         a5, ra, 60f
58:               xori         s6, s6, -1106
                  bne          t4, t5, 62f
60:               addi         s8, s7, 1190
                  xori         t6, s11, 1167
62:               bgeu         t3, t5, 72f
63:               and          ra, s9, t4
                  bgeu         s4, a0, 71f
                  ori          t1, t6, -1800
                  auipc        s1, 824012
                  xori         s4, s0, 1182
                  sra          t6, a2, t3
                  blt          s8, s8, 81f
                  srl          s2, a3, t0
71:               srai         s8, a7, 26
72:               srl          s1, t5, a5
                  or           a6, s9, s5
74:               andi         a1, s0, -995
                  addi         s3, s5, -1736
                  sltiu        s7, s0, -633
                  beq          zero, t4, 95f
                  add          s6, s11, t4
                  or           t4, a6, t4
                  sll          a4, t5, a0
81:               lui          s4, 688367
                  sub          s4, a1, t1
                  slt          sp, s8, t0
                  ori          a0, a6, -1442
                  nop
                  or           gp, s11, a2
                  and          t1, t2, a4
                  bgeu         s4, a7, 101f
                  sltu         a7, a1, t5
                  bgeu         s1, s11, 107f
                  srli         zero, s4, 11
                  slti         zero, s7, 1564
                  bge          gp, zero, 96f
                  bgeu         s8, ra, 110f
95:               and          t0, t5, s8
96:               sra          t6, gp, s7
                  bltu         s10, a5, 115f
                  bltu         t0, s7, 108f
                  auipc        t3, 937560
                  bgeu         a4, s9, 120f
101:              andi         s2, t6, -1560
                  srl          zero, t3, gp
                  bgeu         a5, s1, 116f
                  srl          a7, t2, s3
                  sll          s8, a7, s2
                  ori          s6, a7, -1401
107:              slti         a1, t4, 1560
108:              sra          sp, s6, zero
                  ori          s8, t6, -1757
110:              xor          s1, s11, a4
                  srli         s4, a1, 21
                  sltu         a2, t0, a7
                  nop
                  slli         s2, a0, 14
115:              auipc        a7, 35456
116:              or           a2, s9, s11
                  sltiu        a5, s7, -310
                  sll          t5, s5, s11
                  srl          a2, s2, t6
120:              bne          s9, a3, 124f
                  srl          a1, a1, s0
                  bgeu         t5, s4, 135f
                  slli         s8, gp, 16
124:              xori         t1, s6, 1168
                  lui          s5, 898150
                  blt          s7, a7, 146f
                  srl          t6, s1, a5
                  sub          s3, s0, t1
                  sltu         s4, s7, s2
                  sltu         s6, t2, zero
                  nop
                  sltu         s5, sp, t4
                  and          a7, s10, s3
                  srl          t5, a7, s5
135:              andi         gp, s1, 54
                  srai         s8, a5, 7
                  srl          sp, t6, a4
                  slli         t2, a4, 29
                  addi         s0, sp, 362
                  slt          zero, t1, sp
                  or           s7, s11, ra
                  auipc        t1, 843758
                  nop
                  xor          a6, s4, tp
                  sra          a5, s11, tp
146:              bgeu         a3, s9, 164f
                  xor          s2, a0, s5
                  and          t2, s0, a0
                  add          s10, a0, s11
                  xori         a0, s9, -223
                  beq          s11, t5, 163f
                  sltu         s7, a7, s9
                  beq          s4, zero, 171f
                  and          gp, s0, s6
                  blt          t0, a2, 170f
                  addi         s0, s4, 592
                  slt          s10, a3, s8
                  xori         s4, sp, -990
                  bgeu         t3, s10, 178f
                  srl          t4, s3, s0
                  slli         s7, ra, 25
                  beq          a1, s7, 182f
163:              srl          t5, t1, s2
164:              blt          s9, ra, 178f
                  andi         t3, tp, 1172
                  beq          sp, t6, 173f
                  sll          tp, s5, t3
                  slti         a7, tp, 54
                  sltu         t3, t6, tp
170:              slli         s8, s0, 26
171:              sll          t2, s0, s8
                  xori         zero, tp, -26
173:              bne          t4, t0, 193f
                  slt          a0, s5, t2
                  lui          a7, 489937
                  slti         a1, t1, -299
                  xori         a1, tp, -1033
178:              lui          s5, 543675
                  slli         tp, gp, 28
                  lui          t1, 32300
                  srai         a2, ra, 13
182:              srl          t4, t0, s4
                  nop
                  bltu         s6, gp, 200f
                  sltu         s3, s4, t3
                  sll          s7, a1, a2
                  auipc        t1, 547788
                  add          s4, ra, s2
                  beq          ra, a5, 198f
                  or           a7, t1, a6
                  sltu         t5, zero, a4
                  and          s6, a7, s6
193:              xori         s2, s4, -216
                  lui          s4, 67624
                  auipc        a7, 907017
                  bltu         t1, gp, 212f
                  ori          s0, s10, 434
198:              slti         t5, s5, 1012
                  auipc        s0, 39452
200:              andi         a0, s2, 1921
                  bge          ra, sp, 214f
                  bltu         s10, s7, 205f
                  slt          a1, a6, a2
                  srai         a1, zero, 22
205:              nop
                  xori         a0, a5, -1009
                  andi         t3, s3, -1391
                  bgeu         s8, t3, 219f
                  xor          s8, s1, t3
                  andi         t3, a4, 1452
                  ori          gp, s2, 2045
212:              sra          a6, a3, t1
                  nop
214:              slt          tp, s5, sp
                  auipc        ra, 829368
                  bltu         t1, s5, 234f
                  slli         ra, a5, 21
                  sub          t2, ra, a7
219:              auipc        s8, 1006839
                  sra          s6, t6, a2
                  xor          s5, t4, ra
                  andi         t2, s8, 1171
                  sll          a4, s8, a7
                  slli         s0, t0, 4
                  slt          tp, s10, sp
                  bltu         t5, s3, 229f
                  bltu         t3, s6, 237f
                  slti         s7, a1, -1063
229:              beq          s8, s2, 239f
                  ori          ra, s7, 222
                  xori         t2, s11, -635
                  bltu         t0, a6, 239f
                  slti         s5, s1, 531
234:              or           a1, t2, t6
                  bltu         s9, s1, 239f
                  sll          sp, ra, zero
237:              xori         s0, s4, -551
                  and          sp, a3, s4
239:              addi         s8, ra, -1462
                  addi         a6, a3, -1841
                  nop
                  lw           t1, 4(s11)
                  slt          s10, a2, t0
                  xori         t3, s0, 1774
                  addi         s11, s11, 32
                  sltu         a2, t5, ra
                  auipc        s3, 257935
338:              addi x28, x6, 1
338:              jalr x28, x28, 0
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
.word 0x7f26c03b, 0xceb74fae, 0xfc8320d7, 0xbe857e30, 0xff206731, 0x27dc845b, 0xc21bf422, 0xdcb79e5f
.word 0x29bf4e56, 0x5a6e8fdd, 0xbcb6350c, 0xf601d05f, 0x8c431a34, 0x4a3673e4, 0xf5034126, 0x709af6f8
.word 0x6e6d9cd5, 0xd266d9f0, 0x7c327cae, 0x5acb69c3, 0xf415fa6d, 0xe1f93a86, 0x171a79ce, 0xf80978f0
.word 0xd8cc67f6, 0x5c9c28a8, 0xe6812c72, 0x541abadb, 0x5ff74367, 0x3aebd394, 0xb82c3761, 0x983f2892
.word 0x45001557, 0x92682ad6, 0x8bad0e46, 0xa015c5c4, 0x0baaad7b, 0x634c6c96, 0xa21b32fd, 0x83c3bf5f
.word 0x3f139d17, 0x88f1e52d, 0x004a3d2f, 0x9151712f, 0x2054dcf7, 0x58f08094, 0xf2d5931a, 0x28d914d0
.word 0xae9ec436, 0xc8e8121c, 0x796f3c66, 0xd0626ddf, 0x7ecb2e82, 0x6e1c52d9, 0x3d2cae88, 0x0f65fd76
.word 0xccacf695, 0xc297833f, 0x60381e67, 0x681e06a2, 0x4d8db50f, 0xfbe9cbff, 0x207ff728, 0x1b66a83d
.word 0x3a2724fa, 0x4abc23ee, 0x4647c3e6, 0x6a98c749, 0x754c19b6, 0x2427d2f5, 0x33c6c5cb, 0x1547198e
.word 0x5819dcc6, 0xdff4842a, 0xeb4de9c9, 0x5c2917ea, 0x541d8795, 0x97739802, 0x5fabdc28, 0xe90f286b
.word 0xfd60da16, 0xad1df6cb, 0x0d28b3cd, 0x19774461, 0xd41b242b, 0x28685f59, 0x0b0b1ba0, 0x717faf44
.word 0x6559bca6, 0xfd0ca45f, 0x6a1a3100, 0x29f89e7a, 0x10d5510b, 0xa99332db, 0xe1957c4a, 0x8f385d51
.word 0x3267664d, 0x9198f4dd, 0x2a133148, 0x57b2e674, 0x8aef03bf, 0xb55199cc, 0x434ecfed, 0xce17e5c5
.word 0x0fbed534, 0x4e3e2c65, 0x20bf7d59, 0x3c3a6e55, 0x14abaaa4, 0xdf57f555, 0xfc1b1833, 0xb68b3e06
.word 0x2fc0a3fc, 0x3b4fe44b, 0xfe67d449, 0xb51ba107, 0xe39301e2, 0xc36ab2f5, 0x9ba0f2f5, 0x3504a8dd
.word 0x08afd19b, 0xff8ea331, 0x5044923e, 0xd4c7e375, 0x485f2eb5, 0xdbd6ba5c, 0xfdb8b093, 0x78c79a55
.word 0x0bf295cb, 0xa7cdb89c, 0x52d2faa2, 0xaed69270, 0xce369d38, 0xc37a6fb9, 0x165ecb2d, 0x691bdfe4
.word 0x0d73daaa, 0x137cc565, 0xac901645, 0x5ba630b7, 0xd8636a65, 0xff25b934, 0x64e37577, 0xadcc2f77
.word 0x06784a89, 0x29db07c8, 0x4eda990a, 0x8162e7b9, 0xd05a1f1c, 0x687080c3, 0x50aa6f19, 0xc0dfe29e
.word 0x3a967045, 0x0deea74d, 0xc847f704, 0x5be57f81, 0xf9415aba, 0x4dd00e9d, 0xb0974adb, 0x69d17001
.word 0x556e03fb, 0xce6c5355, 0x057823d1, 0xeca5d18b, 0x04506d93, 0xafa80591, 0x0bc731dc, 0x012ef1bf
.word 0xb908a9c7, 0x919ee100, 0xc5e03a19, 0x06cae3d0, 0x5ff6f0b7, 0x93b1e829, 0xc4bd1a53, 0xd582fa21
.word 0x26744a72, 0x7b538e5f, 0x36bd1e3e, 0x3952dd1a, 0xda643e17, 0x2e33aec4, 0x3469b20a, 0xda6a9b7c
.word 0x65fb5c28, 0x65be8b17, 0x67b7ab4e, 0x78bec99a, 0x32a74387, 0xa23b74c3, 0x59579a7d, 0x3f4f3646
.word 0x11f45718, 0x4ea5be86, 0x08a8da38, 0x7c7cc83d, 0xe90287c0, 0x57382c92, 0x05f06ae2, 0xa3398199
.word 0xd1bfff7b, 0x934c1bb1, 0xa92def48, 0x172f0f21, 0xe872cffc, 0x783014ef, 0x23792dbd, 0xd2c4d4cb
.word 0xf9b1e489, 0xeb0a900d, 0xcfd7f6da, 0x45625d1a, 0x794042c2, 0x8144de4e, 0xa51b4305, 0x674c1861
.word 0x87cb5e91, 0xd050ece5, 0x6b3829d5, 0xfbf2b7ea, 0x2fe41384, 0x0d05b532, 0x58b1fc3e, 0xbbacf3c1
.word 0x2af925dd, 0x3756bfb6, 0x21daa615, 0x8266195d, 0x1ae9fd99, 0x775c11b3, 0xd4cc6ee7, 0x0cc55420
.word 0xda4804c8, 0xa2bbac92, 0xe61d93d8, 0x5f08f813, 0x3b3b8046, 0x371e75df, 0xe8423e41, 0xeaec69db
.word 0x0ae1232b, 0x27a19a2e, 0x5449de2b, 0xf59d8ff5, 0xd483629c, 0x9562e474, 0xf9d934df, 0x06330a22
.word 0x4dad11b8, 0xbfd21236, 0x84fba5d1, 0x44625871, 0x9ca82a7e, 0x7a63d143, 0x3e1456dc, 0x3db33a45
.word 0xd00f785e, 0x38ffe651, 0x9df6e46a, 0x772fb532, 0x668915ad, 0x6ee28acc, 0xee485f38, 0x65d185da
.word 0x6c413254, 0xdba3e6a7, 0xfbab749b, 0x830465e5, 0x2a4d84c0, 0xe83a5b6a, 0x94496893, 0xae5d1937
.word 0x6b8c2386, 0x8c8322f0, 0x124f88e1, 0x0096ef23, 0xc6ba89fb, 0x88c29d9f, 0xaf9fd48a, 0x39c6c286
.word 0x5f0a1829, 0x240c7533, 0x6d50daab, 0x0ebfb8d7, 0x0b2b2f47, 0xb91f2c4a, 0xa32f55eb, 0xa63523ff
.word 0xa19f6595, 0x52d3cfff, 0x68f3e466, 0x5c3e611f, 0x24a1eb97, 0xeda93c90, 0x0a637c20, 0x1a6a58be
.word 0x9fd0725e, 0x02c3a5e8, 0x38c625cd, 0x201caf7b, 0xb7c2c8f2, 0x5db41b3c, 0xeaafc6ad, 0x76633ce3
.word 0x45a3276f, 0x6a5fa26e, 0xd58de54d, 0x85231dc1, 0x66fb13a7, 0xc6905342, 0x5fe66692, 0x77c5f6ea
.word 0x9e24dd18, 0x46c111d9, 0xd97bf4ea, 0xad06fffc, 0x1bddb0af, 0x2ceb185a, 0xb2fa2fea, 0xe5800598
.word 0xfffd67e9, 0xace49b6e, 0x3070192d, 0xc7694011, 0x51007c58, 0xf52e4d3e, 0xba0a8aea, 0xcc9e79b6
.word 0xd8ce8eec, 0x18f5823e, 0x5c4c1d66, 0x0b19a1e5, 0xe0e1f84c, 0xe37c1609, 0x265564fd, 0xd708eddc
.word 0x8888f3f2, 0x9a0b59d3, 0x652071ac, 0x05a939a7, 0x5c8658e5, 0x150ccb2f, 0x57475679, 0x33937a53
.word 0x6a403ffa, 0xed3e0c99, 0x8884a1d0, 0x17fbbdd6, 0x2ccbe30d, 0xd938c17d, 0xd8a69d79, 0x154947c0
.word 0xbec927bf, 0xf39ada77, 0x70f2887f, 0x9da31b4e, 0x65424768, 0x682593c4, 0xb2625218, 0x686c8a73
.word 0x8d6c28b7, 0x3eb4bcba, 0xa615582c, 0x8260c580, 0xa1cfae40, 0x2ae83d14, 0xbbf525e9, 0x1f4cd632
.word 0x9862d17b, 0xb2beb92c, 0x82cee241, 0xa0c5b90d, 0x88f82b25, 0xb81e1004, 0x292c24b9, 0x670d5743
.word 0x0d3ad9f6, 0xa7973005, 0x8c561053, 0xdce08338, 0x10b87a08, 0x4b225f73, 0x779179d4, 0x852c5bdb
.word 0xc07d22d6, 0x12359348, 0x4186e356, 0xb382ac4d, 0x68df9f1a, 0xc807058f, 0xf79c51ef, 0x9ab9ffe7
.word 0x8ea14488, 0x37b32794, 0xb0de2d72, 0x5098a70a, 0xb2473c99, 0x20876995, 0xb8cbf102, 0x47d0a512
.word 0xd92fffbc, 0x8b4f3f7e, 0xf4cc0ef9, 0x3fd87f59, 0xac94b778, 0x2f46c673, 0x46aad1a8, 0xc6069ad2
.word 0xbbc372df, 0x1de4406a, 0xfe4c1375, 0x663bceca, 0xf15fcc37, 0x3899950b, 0x4eee64a9, 0x41c91ae5
.word 0x102b5cf0, 0xab68adea, 0x0c88a69f, 0xd9834c45, 0xce78af0d, 0x3cb4bf2e, 0xa6d64caf, 0xc2668098
.word 0x48253a53, 0xc6733793, 0xf93c76e8, 0x1df93419, 0xae38a821, 0x97279e96, 0xcdc37f5d, 0x6144ed5b
.word 0x4297f6d6, 0xec5d6664, 0x2bb9e954, 0x73e28961, 0x5caa23e5, 0xc602c12f, 0x83b15d22, 0x33cd624a
.word 0x6a9409d9, 0x51784853, 0x30307371, 0x8d829dd8, 0x148d236f, 0x390ee319, 0xc6565be1, 0x30b637e7
.word 0xa8fa305a, 0x5398737a, 0xf4f720ea, 0x1979c730, 0x7b7d1a6c, 0xbef972f5, 0x65b31f96, 0x9e258e5e
.word 0xbd313174, 0xa0aa6ca6, 0x20d25ac9, 0x385eadff, 0x49a8d66d, 0xc8eaf267, 0x74662f45, 0x510b5bde
.word 0xefb7e563, 0x99519bf0, 0xca803019, 0x21ced417, 0x48b9f8f1, 0xa0ef6e16, 0x8bff38c8, 0x0b3220ef
.word 0x40e41f8c, 0x64e5923f, 0x5863bf08, 0xdb68e4de, 0x7935fa40, 0x28c72a70, 0x7c775ca5, 0xf1616d63
.word 0x753b25fe, 0x6f3b96d6, 0x041644ba, 0xe9725f4b, 0x9d74c248, 0x876f1913, 0x834a3530, 0x839a96a9
.word 0x1f742152, 0xf99e9a7b, 0x698d15d2, 0x7e2635fc, 0xc6260d80, 0xd7399a6f, 0xaa11f69d, 0x93d85648
.word 0x15139e2e, 0xf25dd2b8, 0x19d81eea, 0x4c960c6a
.section .region_1,"aw",@progbits;
region_1:
.word 0x4494a006, 0x4408a9bf, 0x87372307, 0x68089f78, 0x344f8b5b, 0x3bda1d7b, 0x05efd7e5, 0x938bb196
.word 0x105d130e, 0xc634b782, 0x5a718405, 0x8d8ef2ef, 0xf90ad9bf, 0xda7c672d, 0x72613005, 0x13876696
.word 0x850eb236, 0xb4b88a23, 0x5ebe2679, 0x2c4b544d, 0x497cdde3, 0xf1149eaf, 0xd24e5adf, 0x16b24130
.word 0x18877d63, 0xe1be11f6, 0xb4d0535a, 0x9b5161ae, 0xcb3b84be, 0x4cf7b2b1, 0xa4c36915, 0x5304dd86
.word 0xfd457e71, 0x812b9d01, 0x48845d29, 0xb898cce6, 0x43125168, 0x4ba43a9b, 0x79a14503, 0xd1304c3a
.word 0x6a7268f6, 0x41ed8d22, 0x56c499eb, 0x8fa1b4b1, 0xfbd09a7b, 0x30318c02, 0x88f29f8d, 0x6171ece7
.word 0xcfc867f5, 0x5b1eefca, 0x5fb459b7, 0x6e9b3f95, 0x2af87a61, 0x735ca00b, 0x09edabfd, 0x4b7d2d47
.word 0x90a11142, 0xc12ff367, 0xf7d9a928, 0x5e74d805, 0xb7f2a072, 0xb42797d1, 0x85869ce3, 0xcef99e92
.word 0x546053bb, 0x87ba988f, 0x586279a7, 0xd7e995be, 0x0efbe1de, 0x0a851060, 0xd5900958, 0x700ed50d
.word 0xd732e6ab, 0x5ad086ee, 0xd2bc51ea, 0x1d1267f1, 0x7dfa43a0, 0x5b3e0fad, 0xc4ca654f, 0x247bab8b
.word 0xacb41a58, 0xfb838e4b, 0x58218f66, 0xc061a932, 0x28444299, 0x441ff754, 0x98698aa5, 0x22234530
.word 0x08c1945e, 0x051ce51a, 0x549a931c, 0x713eae6a, 0xd93d7c0f, 0x56755752, 0x2124656b, 0x17e696f6
.word 0xfe7dd5cd, 0x051a4086, 0x70090eca, 0xbccd1405, 0x2fc7b742, 0xe8c83de1, 0xbad90d44, 0x95cdb0fd
.word 0x147b3712, 0xbaf34fb3, 0x1c57bf56, 0x80111a1a, 0xcfc899bf, 0x2eb2f8f5, 0x7db07c97, 0x13ced480
.word 0xd30da681, 0xae99b0ef, 0x38a92ea5, 0xfaccbd76, 0x1eda456b, 0x74c569b8, 0xa4fd1592, 0x30784dcf
.word 0x2ed8e9e9, 0xdec6307a, 0xd525648b, 0xc3f0c186, 0x8375f2ff, 0x33a4af9f, 0xeafa3d96, 0x3f6e526b
.word 0x9b6432a5, 0xe88ab283, 0x32098372, 0x26cbc5b3, 0x07613ec4, 0x1ff1fe4b, 0xc112ed58, 0x2fc7c08a
.word 0xaf98b113, 0xc3e4685c, 0xb234c9bd, 0xa8dabdc1, 0xf29fa8f3, 0x4b5a0c55, 0x66ad9c3a, 0xe9ea2965
.word 0x6a08b109, 0x7042279f, 0xdff2e5be, 0xef98c770, 0x32babe9a, 0x2d50995b, 0xc3c4a4a6, 0x58e34d85
.word 0x95022c56, 0x31993175, 0x44fa6c46, 0x29747b1a, 0x02d496f4, 0x201d3288, 0xcd35a365, 0x76895176
.word 0xed0b5fd2, 0x31c51e0a, 0xbf5709cf, 0x8e7c76fd, 0xe13cf4dc, 0x8f70abeb, 0x394da1c6, 0x5cff47c0
.word 0x6f8ff432, 0x82c78602, 0x5cde7ca1, 0x7f8f93f4, 0xe02070fb, 0xcf3c2073, 0x650d73c2, 0x05d6fb4b
.word 0x3d7c9da6, 0x3722da3c, 0x53a16d3e, 0xc5440270, 0x8b490acc, 0x153dc40f, 0xbd70c3bb, 0xf889e7b4
.word 0x0a215365, 0x7b70b216, 0x963df5f4, 0xfac33439, 0x90faa991, 0x45f22104, 0xe0793391, 0x02838ec0
.word 0x361a97ff, 0x8db45694, 0x95bc5cfc, 0x24e3c3c3, 0x0db79526, 0xd2529e41, 0xb163d258, 0x5bbd1100
.word 0x9dfb99b3, 0xc2b127da, 0x15dc35bb, 0x4984f70e, 0x85704ae0, 0xb5275f27, 0x50a59f11, 0x95471158
.word 0xccc273f2, 0x818aee27, 0x5e2b17ff, 0x72597e7b, 0xb37d417c, 0x224dfd42, 0x768814a7, 0x81efbbdf
.word 0x93428b97, 0x198fa47b, 0x6619277a, 0x2f1886e4, 0xc727e6b2, 0xb87567d1, 0x16643a66, 0xa46e3c1e
.word 0x6bbd02cb, 0x148f9415, 0x9cbe0208, 0x138a0f96, 0x484fcbca, 0xedb164d5, 0x0e51e5b5, 0x6816f8f1
.word 0xcd7488ee, 0x39d5b5f8, 0xc410ea01, 0xd128b829, 0xef2fcbae, 0x17009733, 0xae38696a, 0xa701ebe8
.word 0x87e0038f, 0xe1d5b0f4, 0xa7284678, 0xdb3b1c5f, 0xe2069d80, 0x902f3ad0, 0x2014825a, 0x51328e82
.word 0xa7e08622, 0x3ccef67f, 0x19657bee, 0x0ef034b6, 0xc55c888d, 0xacc0a685, 0xd8b9abdb, 0x1f2e0847
.word 0x5a210760, 0x435d6517, 0x526b9bb3, 0x94de9ea7, 0x61a6a7be, 0xcca1fb2f, 0x0a5dbf4c, 0xc0646c65
.word 0xf31d94d5, 0x4b6e85be, 0x3127b442, 0x0ef6e15c, 0x722699cf, 0x731b4e93, 0x9c7f3115, 0xd5174a45
.word 0xd7db7b14, 0x304b883c, 0xe8066f29, 0xdd7b052f, 0x6eed6cca, 0xa04ad7a9, 0xf5230b6e, 0xd9fe0573
.word 0x0a80428d, 0xb1494976, 0xe202494f, 0x1d8e1d70, 0x3e497e54, 0x682c8560, 0x3cd15591, 0x13749e4d
.word 0xc81054ef, 0xee44ff43, 0x87b6630f, 0xf6296af8, 0x4f353c1d, 0xa6d04349, 0xff5d91d7, 0x97bd5b0b
.word 0xcd8b1c8e, 0x76e05d8f, 0xd667e2f9, 0x00585801, 0xcd446f7f, 0x4f4465ce, 0x7bbf95d3, 0xe6827a91
.word 0xdad2e549, 0xcdb5f824, 0xf6aee324, 0xabcc9cd2, 0x75cb1159, 0x564e0f75, 0x22741538, 0x33bea122
.word 0x2d915f17, 0x0191969a, 0xdb50a901, 0xf1f8dda3, 0x1730c002, 0x73ac02ae, 0xc586635f, 0x8eb16a6e
.word 0xf88dbfe5, 0x34dbb820, 0xccf893f6, 0xfcefd4bc, 0xfbec44e5, 0x2aaa26b4, 0x01926532, 0x120f7a21
.word 0x9a6bc917, 0xa8fc772e, 0x57be1852, 0x71ff4e75, 0x23f4496d, 0xe24a8fee, 0xb1897cfe, 0x528dad99
.word 0x231816d0, 0x2b84292b, 0x2f66c133, 0x8acf9723, 0x6f85856f, 0x0d5919b0, 0x92c660dc, 0x7cea97bb
.word 0x20258354, 0x84244ab3, 0xf25ae109, 0x067fdc7b, 0xee2cf280, 0xb25c0ce8, 0x004b6119, 0x47f20fef
.word 0xe2118fe6, 0x5c28da20, 0x9f888056, 0x581b62d1, 0x7411defe, 0xfacb7e30, 0xe02c48bf, 0x3ef3b476
.word 0xfc3c85bd, 0xedd839cb, 0x2d13b5ea, 0xe6d2ad69, 0xdfb62aed, 0x5a4a2ee5, 0x3874b1e9, 0xbaffa6f8
.word 0x522239db, 0xa21cb2db, 0x814cbfb2, 0xba3f034c, 0xf3fa2efe, 0xa39b0ff2, 0x50d3c080, 0xd27ededa
.word 0x7fae2c32, 0x91c35568, 0xf7d2ec8d, 0x8b9e5c0e, 0x89ff9338, 0xce59f6ce, 0x9bbd31d8, 0x1f66e5e3
.word 0x04f68685, 0x735b3b32, 0xfd3d25f9, 0xb0693d35, 0xdb2d414d, 0x6bbc3a96, 0xf76c5168, 0xb6c3c64a
.word 0x9a0a8489, 0xc2c71dc0, 0x21a2da5d, 0x02e654d5, 0x871198ba, 0x1629d41c, 0x14b55ad9, 0x6d2f9e59
.word 0xd871c7e5, 0x92ef2477, 0xcf2b2897, 0xd0c7a2a0, 0xfd8f24c7, 0x4eaf4221, 0xbc1f3fef, 0x8391113c
.word 0x3efcd77c, 0xb060af6d, 0x6e2a87f7, 0x87441886, 0xfeba1a1b, 0xe49680e1, 0x9c4791de, 0x1baa92c5
.word 0x6bed9090, 0x51f8f104, 0x9005e12d, 0x2c8415e8, 0x281bc097, 0xf35ee28c, 0x20ee69ab, 0xc6f04754
.word 0xba641d97, 0x05998852, 0xbbf203f9, 0xacd33994, 0x4cc59673, 0x78e26314, 0x964309e7, 0x24e159f8
.word 0xbc34a8a8, 0xaa3cde18, 0x9c4a0654, 0x4a10844b, 0x28523cb9, 0x77d13ba0, 0x11dafb73, 0xd1b70ffe
.word 0x53122d74, 0x0d41b9fe, 0x5984aa01, 0x50b4581d, 0x1afcf9e3, 0x4b68f6e3, 0x11ba5220, 0x89393beb
.word 0xaac75b0a, 0x0db796cd, 0x0c42855d, 0x1adda1f4, 0x72f92c57, 0xc12b9855, 0xf36e73fa, 0x4a3685ac
.word 0x365f8e48, 0x5fb7e7a4, 0xe2101251, 0xebdd54e7, 0xff8bd683, 0xf8fe0867, 0x89463c46, 0xe098deb7
.word 0xf8182115, 0xc97ae20d, 0x2d61d4a5, 0x7361c3bd, 0xe4f16520, 0x9d3d1ced, 0xaf1e0f81, 0x73976b1c
.word 0xc0f4e1da, 0x17e3fa2d, 0x04d6c503, 0xfa382b96, 0xc8921c14, 0x8e68b5a7, 0xa1333a4b, 0x55958192
.word 0x288e84e0, 0xa022b6c8, 0xba6c1898, 0x3e86cd69, 0x9b998377, 0xb93e38c9, 0x25f3ac49, 0xaf06e011
.word 0x201d63bc, 0x34863d61, 0x0b6dfac8, 0xd3f52348, 0x587dec45, 0xa3f6a48f, 0xec298d30, 0x0250918d
.word 0xeac99e03, 0x299ead8f, 0x43aa0e2a, 0xd5300960
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
                  add x13, x27, zero
                  csrr x11, 0x300 # MSTATUS
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 31
                  bne x11, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x11, 0x341 # MEPC
                  csrr x11, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x11, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x11, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x11, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x11, x10, ecall_handler
                  li x10, 0x1
                  beq x11, x10, instr_fault_handler
                  li x10, 0x5
                  beq x11, x10, load_fault_handler
                  li x10, 0x7
                  beq x11, x10, store_fault_handler
                  li x10, 0xc
                  beq x11, x10, pt_fault_handler
                  li x10, 0xd
                  beq x11, x10, pt_fault_handler
                  li x10, 0xf
                  beq x11, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x11, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

ecall_handler:    
                  la x11, _start
                  sw x0, 0(x11)
                  sw x1, 4(x11)
                  sw x2, 8(x11)
                  sw x3, 12(x11)
                  sw x4, 16(x11)
                  sw x5, 20(x11)
                  sw x6, 24(x11)
                  sw x7, 28(x11)
                  sw x8, 32(x11)
                  sw x9, 36(x11)
                  sw x10, 40(x11)
                  sw x11, 44(x11)
                  sw x12, 48(x11)
                  sw x13, 52(x11)
                  sw x14, 56(x11)
                  sw x15, 60(x11)
                  sw x16, 64(x11)
                  sw x17, 68(x11)
                  sw x18, 72(x11)
                  sw x19, 76(x11)
                  sw x20, 80(x11)
                  sw x21, 84(x11)
                  sw x22, 88(x11)
                  sw x23, 92(x11)
                  sw x24, 96(x11)
                  sw x25, 100(x11)
                  sw x26, 104(x11)
                  sw x27, 108(x11)
                  sw x28, 112(x11)
                  sw x29, 116(x11)
                  sw x30, 120(x11)
                  sw x31, 124(x11)
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x27, x13, zero
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
                  add x27, x13, zero
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
                  add x27, x13, zero
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
                  csrr  x11, 0x341
                  addi  x11, x11, 4
                  csrw  0x341, x11
                  add x27, x13, zero
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
                  csrr  x11, 0x341
                  addi  x11, x11, 4
                  csrw  0x341, x11
                  add x27, x13, zero
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
                  csrr  x11, 0x300 # MSTATUS;
                  csrr  x11, 0x304 # MIE;
                  csrr  x11, 0x344 # MIP;
                  csrrc x11, 0x344, x11 # MIP;
                  add x27, x13, zero
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
