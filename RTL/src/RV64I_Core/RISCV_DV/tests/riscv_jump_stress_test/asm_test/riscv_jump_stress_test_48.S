.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x20, h0_start
jalr x0, x20, 0
h0_start:
                  li x12, 0x40000100
                  csrw 0x301, x12
kernel_sp:        
                  la x7, kernel_stack_end

trap_vec_init:    
                  la x12, mtvec_handler
                  ori x12, x12, 1
                  csrw 0x305, x12 # MTVEC

mepc_setup:       
                  la x12, init
                  csrw 0x341, x12

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x12, 0x1800
                  csrw 0x300, x12 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x1c7c0dfd
                  li x2, 0x80000000
                  li x3, 0x80000000
                  li x4, 0x0
                  li x5, 0x5
                  li x6, 0x80000000
                  li x8, 0xf1087214
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0xceae6b4d
                  li x12, 0x0
                  li x13, 0x2
                  li x14, 0x80000000
                  li x15, 0xfd584162
                  li x16, 0x0
                  li x17, 0xa
                  li x18, 0x80000000
                  li x19, 0x80000000
                  li x20, 0xd
                  li x21, 0x80000000
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0xf
                  li x25, 0x0
                  li x27, 0x3
                  li x28, 0x3
                  li x29, 0x0
                  li x30, 0x0
                  li x31, 0x8
                  la x26, user_stack_end
main:             jal          t1, 16f
0:                jal          sp, 12f
1:                jal          s6, 18f
2:                jal          t1, 9f
3:                jal          ra, 5f
4:                jal          a2, 17f
5:                jal          t5, 15f
6:                jal          ra, 2b
7:                jal          s9, 11f
8:                jal          t0, 7b
9:                jal          ra, 8b
10:               jal          ra, 3b
11:               jal          t1, 0b
12:               jal          ra, 10b
13:               jal          t4, 6b
14:               jal          ra, 1b
15:               jal          ra, 4b
16:               jal          ra, 13b
17:               jal          t1, 14b
18:               addi         a4, a5, 471
main_10:          jal          t1, 16f
0:                jal          t0, 15f
1:                jal          ra, 19f
2:                jal          t1, 8f
3:                jal          t1, 18f
4:                jal          ra, 1b
5:                jal          ra, 0b
6:                jal          t1, 12f
7:                jal          ra, 3b
8:                jal          tp, 17f
9:                jal          ra, 11f
10:               jal          ra, 14f
11:               jal          a6, 2b
12:               jal          ra, 13f
13:               jal          a1, 9b
14:               jal          sp, 4b
15:               jal          sp, 7b
16:               jal          ra, 6b
17:               jal          t1, 5b
18:               jal          t1, 10b
19:               or           a4, s2, s5
main_6:           jal          t1, 4f
0:                jal          a0, 3f
1:                jal          t1, 0b
2:                jal          gp, 7f
3:                jal          ra, 5f
4:                jal          t1, 11f
5:                jal          ra, 10f
6:                jal          t6, 9f
7:                jal          a0, 8f
8:                jal          t1, 6b
9:                jal          s5, 13f
10:               jal          ra, 12f
11:               jal          ra, 1b
12:               jal          ra, 2b
13:               add          s3, a0, s5
main_14:          jal          t1, 11f
0:                jal          ra, 8f
1:                jal          t3, 4f
2:                jal          t1, 6f
3:                jal          s6, 10f
4:                jal          t1, 3b
5:                jal          t1, 7f
6:                jal          t1, 5b
7:                jal          ra, 13f
8:                jal          t0, 2b
9:                jal          s9, 0b
10:               jal          ra, 9b
11:               jal          ra, 12f
12:               jal          ra, 1b
13:               jal          ra, 14f
14:               auipc        a1, 253485
main_0:           jal          t1, 6f
0:                jal          t1, 8f
1:                jal          sp, 9f
2:                jal          t1, 3f
3:                jal          ra, 0b
4:                jal          ra, 7f
5:                jal          s11, 2b
6:                jal          ra, 5b
7:                jal          s2, 1b
8:                jal          s3, 10f
9:                jal          t1, 11f
10:               jal          t1, 4b
11:               xor          s1, a6, a0
main_9:           jal          t1, 14f
0:                jal          t1, 11f
1:                jal          s0, 0b
2:                jal          t1, 12f
3:                jal          t1, 10f
4:                jal          ra, 19f
5:                jal          ra, 28f
6:                jal          ra, 5b
7:                jal          ra, 4b
8:                jal          ra, 2b
9:                jal          ra, 8b
10:               jal          a0, 17f
11:               jal          ra, 15f
12:               jal          ra, 24f
13:               jal          t1, 16f
14:               jal          ra, 21f
15:               jal          a6, 9b
16:               jal          s5, 1b
17:               jal          sp, 26f
18:               jal          ra, 23f
19:               jal          ra, 29f
20:               jal          t1, 3b
21:               jal          ra, 6b
22:               jal          ra, 25f
23:               jal          ra, 7b
24:               jal          t4, 20b
25:               jal          ra, 18b
26:               jal          a1, 27f
27:               jal          t1, 22b
28:               jal          sp, 13b
29:               addi         s8, s0, -1279
main_3:           jal          t1, 9f
0:                jal          ra, 2f
1:                jal          t3, 0b
2:                jal          s5, 16f
3:                jal          a0, 13f
4:                jal          sp, 6f
5:                jal          ra, 1b
6:                jal          ra, 15f
7:                jal          ra, 8f
8:                jal          t1, 12f
9:                jal          t1, 14f
10:               jal          ra, 11f
11:               jal          tp, 3b
12:               jal          ra, 10b
13:               jal          t1, 4b
14:               jal          sp, 7b
15:               jal          ra, 5b
16:               xori         zero, t1, -1974
main_4:           jal          t1, 10f
0:                jal          ra, 9f
1:                jal          a6, 12f
2:                jal          ra, 8f
3:                jal          a3, 6f
4:                jal          ra, 11f
5:                jal          ra, 1b
6:                jal          s8, 2b
7:                jal          t1, 13f
8:                jal          ra, 0b
9:                jal          ra, 5b
10:               jal          ra, 3b
11:               jal          ra, 7b
12:               jal          s8, 4b
13:               sub          s11, s4, s9
                  ori          t4, s4, -493
                  bltu         tp, a2, 18f
                  xor          a0, s10, t3
                  beq          a7, s6, 23f
                  lui          sp, 834151
                  auipc        ra, 956822
                  bge          a4, s2, 26f
                  slli         t4, a0, 26
                  bltu         s10, a3, 26f
                  andi         t1, a7, 1404
                  sub          a0, a5, s9
                  sub          s8, s7, s11
                  add          s0, s2, s0
                  bltu         t3, s1, 30f
                  slt          s1, s1, t5
                  sltu         sp, t5, t0
                  bltu         a0, a3, 36f
                  sltu         zero, ra, a2
18:               nop
                  or           a0, s4, t3
                  bgeu         s3, s11, 40f
                  xori         a3, s2, -1606
                  srl          s8, t5, t6
23:               sub          t1, a3, s10
                  bge          sp, s0, 32f
                  sltu         a5, a3, s2
26:               slt          s5, a2, zero
                  bltu         a2, s9, 46f
                  bge          sp, gp, 34f
                  andi         a1, s6, -1887
30:               bne          s5, s2, 42f
                  or           t4, gp, t2
32:               srl          t3, s2, a4
                  lui          a7, 94082
34:               add          a7, s4, ra
                  slli         ra, t3, 6
36:               sltiu        a5, t0, -1793
                  bne          s6, t1, 48f
                  bne          a2, s6, 58f
                  xor          tp, zero, s8
40:               bge          s7, tp, 42f
                  bge          t3, t3, 45f
42:               slt          a6, s4, sp
                  sltiu        a0, t0, 1039
                  slti         s1, a3, -1096
45:               lui          t5, 833924
46:               bltu         t0, s11, 63f
                  add          a6, sp, a7
48:               nop
                  andi         tp, s11, -1514
                  bge          gp, s10, 64f
                  sltiu        gp, sp, 1683
                  srl          t1, a7, gp
                  blt          s7, s6, 73f
                  ori          sp, s4, -1364
                  blt          s0, ra, 69f
                  slt          ra, gp, t6
                  lui          s6, 154175
58:               auipc        ra, 400639
                  beq          a6, sp, 63f
                  srai         a6, a7, 18
main_13:          jal          t1, 13f
0:                jal          t1, 12f
1:                jal          s0, 21f
2:                jal          ra, 14f
3:                jal          t1, 10f
4:                jal          ra, 18f
5:                jal          t0, 11f
6:                jal          a2, 7f
7:                jal          ra, 8f
8:                jal          ra, 3b
9:                jal          ra, 0b
10:               jal          ra, 19f
11:               jal          ra, 6b
12:               jal          s2, 4b
13:               jal          gp, 5b
14:               jal          t1, 17f
15:               jal          t1, 1b
16:               jal          ra, 9b
17:               jal          t4, 16b
18:               jal          t1, 20f
19:               jal          s0, 15b
20:               jal          t0, 22f
21:               jal          a2, 2b
22:               sltu         zero, a7, tp
                  and          a1, s8, gp
                  andi         gp, s7, 194
63:               srli         a6, sp, 15
64:               srli         zero, s9, 5
                  xori         t6, t0, 1417
                  beq          t2, t0, 71f
                  auipc        s11, 53438
                  beq          s7, a0, 79f
69:               slli         t6, s3, 18
                  sub          t5, s5, s0
71:               ori          a3, s2, 1060
                  add          t4, t3, t3
73:               andi         s0, s0, -515
                  nop
                  bge          s0, zero, 76f
76:               slli         t4, a7, 21
                  beq          gp, s9, 95f
                  srli         t1, t0, 27
79:               lui          a1, 1011371
                  srl          s8, sp, a6
                  srai         a4, a4, 4
                  slli         s9, t1, 0
                  srai         a2, t0, 5
                  sll          t0, s8, zero
                  and          t3, s7, t2
                  blt          sp, t2, 103f
                  srli         s5, t2, 11
                  sltiu        a2, a0, 377
                  beq          s6, a1, 103f
                  ori          sp, t2, 55
                  slt          s9, s10, s11
                  nop
                  lui          s8, 745487
                  lui          ra, 675449
95:               xor          a5, sp, t6
                  beq          a1, s2, 113f
                  srli         a2, t0, 12
                  blt          sp, s6, 116f
                  srl          s9, s3, a6
                  xor          s5, s6, sp
                  add          s6, t6, a7
                  nop
103:              slti         a4, sp, 860
                  lui          s3, 95204
                  nop
                  addi         s11, a3, 1481
                  slli         a7, a7, 7
                  ori          gp, s5, 1534
                  beq          s11, s3, 114f
                  auipc        t6, 501593
                  sll          s1, s5, tp
                  andi         a5, a7, -1682
113:              bge          s9, a2, 122f
114:              sltu         tp, s4, t1
                  slli         zero, tp, 19
116:              sra          t4, s1, t6
                  or           a7, t5, t6
                  add          gp, a4, t0
                  sll          a2, t2, a3
                  bge          a4, tp, 121f
121:              sltiu        t3, s11, -1476
122:              beq          s3, gp, 134f
                  slt          gp, zero, s8
                  sltiu        ra, sp, -1293
                  bltu         s8, gp, 142f
                  blt          a4, t2, 144f
                  ori          s5, s4, 194
                  xori         t0, s1, 1122
                  or           t0, t0, s7
                  bltu         a2, a3, 150f
                  xor          s6, s9, sp
                  xori         s1, s3, 2034
                  slt          t3, s11, s5
134:              and          t0, t5, tp
                  sub          t1, s6, t3
                  lui          a0, 365857
                  slli         a6, a3, 4
                  nop
                  beq          t6, s5, 159f
                  ori          s11, s10, -1547
                  lui          a5, 709706
142:              nop
                  bgeu         tp, s0, 163f
144:              sltu         a4, s6, s9
                  or           t5, s2, a5
                  xori         s1, t5, 1048
                  blt          s5, t4, 158f
                  auipc        gp, 175209
                  ori          a3, a1, 597
150:              lui          t6, 469145
                  lui          s8, 881209
                  addi         a3, s3, 1206
                  srl          s9, a4, a3
                  auipc        a0, 342265
                  bgeu         a4, s5, 172f
                  slti         a6, t5, -821
                  bgeu         a7, zero, 175f
158:              bltu         s1, t0, 175f
159:              andi         t0, t6, 1888
                  bge          s11, a3, 180f
                  beq          t2, s4, 175f
                  add          a0, t4, s7
163:              auipc        t6, 676938
                  bge          s7, tp, 173f
                  slt          s9, a2, sp
                  slli         s2, t6, 10
                  andi         s9, t0, 198
                  lui          a0, 144266
                  sub          t4, a2, s11
                  or           a3, s0, t4
                  sll          a3, s11, a3
172:              srl          t3, s6, a2
173:              nop
                  add          s8, s10, a7
175:              sub          t3, gp, a4
                  sub          a2, s1, sp
                  sltu         t0, a7, a7
                  slti         s6, s8, -615
                  and          t1, ra, a5
180:              bgeu         t4, s1, 199f
                  xori         a0, s1, -599
                  nop
                  xor          t0, t5, s6
                  bne          a7, s4, 188f
                  slti         sp, s8, -1729
                  slli         a0, t0, 22
                  and          a2, tp, zero
188:              or           s11, t1, a0
                  sll          zero, a2, t0
                  srli         a6, zero, 14
                  and          t5, t3, a5
                  slti         ra, a0, 654
                  and          t4, t2, s3
                  bltu         s7, s7, 205f
                  and          gp, s2, s8
                  lui          t0, 445607
                  ori          s1, tp, -36
                  sub          t4, sp, s5
199:              ori          t6, ra, 577
                  sltu         gp, s5, s4
                  xor          t6, t1, s2
                  auipc        t6, 119287
                  bge          s11, s2, 209f
                  bge          s3, s0, 221f
205:              sra          ra, s3, s6
                  lui          s7, 1045957
                  bltu         s3, ra, 227f
                  auipc        s1, 632877
209:              auipc        s9, 38390
                  auipc        tp, 42474
                  srli         a1, a0, 8
                  bltu         a0, s11, 217f
                  nop
                  or           s6, s5, sp
                  xor          t6, t2, a7
                  andi         a3, s5, 922
217:              sll          a6, t1, a2
                  bltu         t5, t2, 232f
                  add          a0, t3, gp
                  and          a0, s7, a5
221:              blt          a3, a6, 225f
                  andi         t0, s8, -643
                  blt          s1, a4, 240f
                  xori         a1, gp, 222
225:              sltiu        a7, a2, -1114
                  beq          s10, sp, 231f
227:              bne          zero, a2, 241f
                  sltiu        tp, tp, -1800
                  xor          a6, a7, t0
                  addi         s6, s3, 1005
231:              slt          gp, a6, t5
232:              nop
                  srai         s1, t4, 9
                  auipc        gp, 753905
                  srai         gp, s7, 28
                  bge          a1, a6, 254f
                  ori          tp, a4, -1415
                  xori         t4, a2, 1953
                  bltu         s10, s2, 259f
240:              slti         s6, t0, -612
241:              slti         sp, s8, -396
                  bltu         ra, s5, 250f
                  sltiu        s1, s9, 1537
                  ori          zero, s9, -867
                  sll          t4, t5, t0
                  slti         s2, s2, -1902
                  sltu         s9, a0, zero
                  bne          tp, s4, 250f
                  bne          s3, s4, 263f
250:              bgeu         zero, s6, 270f
                  sll          s7, t1, s4
                  srl          zero, s10, t1
                  sub          t6, s11, t3
254:              srl          a6, s5, t0
                  bne          a7, s8, 272f
                  ori          tp, s3, -702
                  slt          a0, a1, gp
                  beq          t3, t6, 272f
259:              slti         sp, t3, 1160
                  beq          a6, t3, 277f
                  addi         s9, zero, 1060
                  srli         a7, t6, 10
263:              add          t1, tp, t1
                  ori          a2, s7, -1290
                  bge          a4, s0, 274f
                  sub          t3, t3, t6
                  bne          s0, t3, 285f
                  andi         zero, a4, 1762
                  bge          a2, gp, 280f
270:              xor          t5, a2, s6
                  beq          s2, t5, 289f
272:              sub          s8, a7, a1
                  nop
274:              sll          t5, gp, a5
                  srl          gp, s7, a2
                  bne          a5, a1, 296f
277:              bge          t0, t4, 278f
278:              sra          s9, s9, a3
                  slti         s11, a6, 1914
280:              and          s1, t3, s0
                  bltu         s7, zero, 285f
                  or           a3, t0, t2
                  srl          t4, a0, s4
                  bne          t2, s1, 301f
285:              blt          a7, a3, 305f
                  ori          zero, sp, 62
                  or           sp, gp, gp
                  slli         s9, s1, 0
289:              xori         a4, a2, -102
                  auipc        t1, 24706
                  slt          a5, t6, t6
                  bge          gp, a4, 312f
                  bge          zero, t6, 305f
                  srai         s0, t1, 1
                  xori         t1, a4, 276
296:              addi         t0, s0, 845
                  xor          t0, a0, a0
                  srli         a2, s9, 31
                  slti         s1, a0, 476
                  xori         a5, a0, -833
301:              lui          ra, 711888
                  xor          s6, a1, s11
                  or           t4, a3, a4
                  xori         s6, a2, 706
305:              and          t4, s11, s2
                  blt          t2, s9, 314f
                  add          s2, sp, t2
                  auipc        a1, 949929
                  andi         s6, zero, 633
                  bltu         s2, s0, 324f
                  slti         ra, gp, 1819
312:              bgeu         a0, t5, 330f
                  lui          sp, 820960
314:              bgeu         s10, a4, 334f
                  xori         tp, t2, -1576
                  srli         t0, s4, 16
                  add          s11, s5, s9
                  sltiu        a4, t2, 382
                  sltiu        a2, s1, -150
                  sub          a2, t5, a4
                  sltiu        t5, s1, -785
                  lui          a0, 1038016
                  ori          a1, s0, 1819
324:              nop
                  blt          sp, a4, 344f
                  auipc        sp, 437912
                  ori          t0, s0, 1100
                  beq          t6, s3, 348f
                  srl          s2, s6, s6
330:              andi         s8, a2, -1414
                  ori          a5, s4, 399
                  nop
                  and          s8, a7, t3
334:              lui          s5, 419734
                  auipc        a0, 263785
                  bne          t2, ra, 341f
                  sltiu        a5, s5, 300
                  slli         a1, a4, 26
                  or           a2, s0, s11
                  sltiu        s0, t2, -167
341:              sll          s11, t0, t3
                  andi         a7, s11, -1511
                  srli         s7, a3, 31
344:              add          sp, gp, s7
                  xor          s6, gp, s8
                  sra          t0, s4, sp
                  bltu         zero, s5, 358f
348:              sub          a6, a1, s6
                  sra          sp, s8, s5
                  addi         a6, a4, -1866
                  slt          a5, a4, t2
                  xor          tp, t0, a6
                  srai         s2, gp, 19
                  bge          s0, s10, 356f
                  slt          a3, t1, s4
356:              ori          s2, ra, 71
                  auipc        zero, 533493
358:              ori          a7, ra, 1897
                  slt          t1, t0, t3
                  addi         s7, s6, -768
                  andi         a7, a3, -1568
                  auipc        a1, 657101
                  sll          sp, a1, gp
                  sub          tp, s10, s0
                  bne          tp, s0, 371f
                  bgeu         s9, s2, 371f
                  slti         a4, s8, -1003
                  sra          s3, t2, a3
                  bltu         a6, s2, 386f
                  srli         a7, s5, 23
371:              bgeu         s9, gp, 375f
                  or           s8, s1, s1
                  sll          a4, tp, t3
                  bne          s11, s7, 391f
375:              nop
                  sltu         ra, s5, a7
                  sltu         s7, s6, gp
                  srli         s7, t0, 23
                  blt          s7, s9, 393f
                  srl          a1, t6, sp
                  slli         s7, s8, 4
                  bltu         s6, gp, 400f
                  add          s1, gp, a2
                  slti         zero, t3, -1223
                  srli         s1, a4, 24
386:              and          s2, a3, a6
                  xori         s0, s2, 460
                  blt          s4, s6, 396f
                  sll          tp, zero, s0
                  or           s7, tp, t1
391:              srli         zero, t0, 2
                  lui          s3, 129215
393:              bne          t4, ra, 398f
                  auipc        a1, 949434
                  srai         a2, t2, 24
396:              beq          s5, s9, 400f
                  bltu         s9, ra, 417f
398:              sll          a1, s2, s3
                  bltu         s2, ra, 413f
400:              slti         a2, a0, -1320
                  bge          gp, s5, 419f
                  xor          s5, s11, t6
                  or           t1, t3, s8
                  andi         s9, t1, -355
                  xori         a5, a2, -1244
                  addi         a0, a5, -1699
                  xor          sp, t5, s11
                  srli         t3, s11, 26
                  bge          s11, t0, 429f
                  srai         s9, s11, 24
                  srli         a0, a0, 4
                  auipc        s7, 925410
413:              auipc        a6, 591543
                  sltiu        a7, s9, 777
                  sra          t4, t4, gp
                  auipc        s6, 69323
417:              or           zero, t2, t5
                  sltiu        t5, s10, -874
419:              xori         s9, tp, 1380
                  beq          a3, s6, 440f
                  sub          t5, a6, zero
                  add          ra, s8, gp
                  srai         tp, t1, 11
                  srl          a2, s5, s11
                  addi         s7, s2, -596
                  beq          s0, tp, 427f
427:              srl          s7, tp, a1
                  slt          t3, s1, t3
429:              bgeu         s2, s5, 448f
                  sll          s6, s11, t4
                  srai         s2, s2, 10
                  slti         s1, t5, 1405
                  auipc        a2, 630181
                  addi         sp, t5, -239
                  slti         s1, a5, 766
                  bltu         tp, s2, 445f
                  nop
                  blt          zero, s10, 455f
                  srli         t0, s7, 16
440:              slt          gp, t5, t4
                  bltu         gp, zero, 461f
                  xor          t6, s1, tp
                  slti         sp, zero, -1840
                  bne          a6, s2, 461f
445:              addi         a7, s4, -259
                  bge          a2, gp, 466f
                  srl          s9, t1, a6
448:              bge          t1, s4, 454f
                  blt          s8, s5, 454f
                  and          a7, t6, s5
                  ori          s8, s0, -1938
                  bge          s5, zero, 463f
                  srli         a0, a5, 8
454:              add          t1, ra, a0
455:              nop
                  sra          s2, a3, t2
                  srl          gp, a4, s11
                  lui          ra, 217289
                  srl          ra, s3, s8
                  slt          a4, t5, t0
461:              bgeu         a4, gp, 465f
                  srli         t4, t3, 5
463:              addi         tp, a4, 676
                  sltu         s1, zero, s1
465:              add          t4, t6, t2
466:              sub          a2, t0, s10
                  bne          s11, s7, 469f
                  xor          a7, a1, a5
469:              bge          s7, t2, 483f
                  sub          a6, t3, s10
                  add          s0, gp, a0
                  andi         t5, s9, 1721
                  bne          t5, t3, 485f
                  sll          a0, a4, a5
                  bgeu         tp, a1, 493f
                  sltu         s2, a5, t3
                  and          a5, a4, t1
                  sltu         t4, t2, a6
                  and          s9, a4, t1
                  sltu         a2, s10, zero
                  sltiu        s3, sp, -513
                  lui          t4, 121442
483:              slli         sp, t2, 28
                  and          t3, a3, s3
485:              srl          a2, t5, a3
                  sltiu        a6, s5, -1062
                  sub          a5, s11, a2
                  blt          t1, s0, 505f
                  and          s3, t4, a5
                  xor          tp, sp, s10
                  srl          t1, t3, a2
                  blt          a2, t5, 512f
493:              addi         s1, s8, -1123
                  slt          s5, s3, ra
                  bgeu         a2, s1, 512f
                  slti         a5, a2, -1999
                  add          s7, a3, t6
                  addi         t4, ra, -848
                  or           s0, tp, a5
                  xori         a0, t2, -1406
                  addi         t4, s9, -26
                  ori          t3, s0, -1124
main_12:          jal          t1, 3f
0:                jal          ra, 8f
1:                jal          t1, 13f
2:                jal          ra, 10f
3:                jal          t1, 6f
4:                jal          t1, 9f
5:                jal          a0, 1b
6:                jal          ra, 7f
7:                jal          s11, 11f
8:                jal          ra, 2b
9:                jal          t1, 5b
10:               jal          ra, 12f
11:               jal          ra, 0b
12:               jal          ra, 4b
13:               srl          s0, ra, sp
                  addi         a4, t6, 684
                  add          s1, s1, s1
505:              bge          s1, zero, 516f
                  xori         s8, s11, -430
                  addi         a3, s4, -394
                  slti         s7, ra, -1589
                  bgeu         a4, a0, 526f
                  lui          s0, 729599
                  lui          a1, 749054
512:              bgeu         s6, s6, 530f
                  srli         t3, t0, 1
                  sub          a1, s8, t3
                  blt          s2, s7, 532f
516:              addi         s2, gp, 920
                  bgeu         t4, a4, 531f
                  addi         s8, ra, -1679
                  or           a2, ra, a4
                  bge          t5, t5, 526f
                  nop
                  beq          s4, s8, 524f
                  add          a0, sp, a1
524:              bge          s8, ra, 544f
                  auipc        s0, 57694
main_11:          jal          t1, 8f
0:                jal          t1, 22f
1:                jal          s8, 15f
2:                jal          a1, 21f
3:                jal          ra, 23f
4:                jal          t1, 10f
5:                jal          s11, 19f
6:                jal          ra, 1b
7:                jal          t1, 9f
8:                jal          t1, 20f
9:                jal          ra, 16f
10:               jal          ra, 7b
11:               jal          sp, 3b
12:               jal          ra, 0b
13:               jal          s8, 4b
14:               jal          t5, 18f
15:               jal          ra, 14b
16:               jal          a0, 5b
17:               jal          s5, 11b
18:               jal          t1, 12b
19:               jal          sp, 17b
20:               jal          ra, 2b
21:               jal          gp, 6b
22:               jal          ra, 13b
23:               sltu         a2, s11, a3
526:              beq          s2, s10, 546f
                  bgeu         s11, s6, 531f
                  and          s6, t6, t5
                  add          t0, s6, a4
530:              bge          t4, a5, 550f
531:              srli         s0, a4, 21
532:              sra          zero, t0, s9
                  sltiu        t5, a4, 1401
                  bgeu         s8, s3, 545f
                  and          s2, zero, sp
                  sub          a3, a4, a3
                  bltu         ra, t6, 551f
                  bge          s7, a1, 539f
539:              xor          t5, s4, t6
                  slt          t0, zero, a4
                  slt          zero, s8, a3
                  srli         s6, a4, 6
                  andi         s0, s5, -1130
544:              beq          s8, a6, 561f
545:              xori         s6, t0, -1099
546:              slt          a6, t3, s9
                  auipc        s6, 1018594
                  bgeu         sp, a5, 566f
                  bltu         a7, t2, 560f
550:              sra          t4, a1, s0
551:              blt          s6, t3, 568f
                  blt          s5, a0, 561f
                  nop
                  or           a2, a1, t3
                  srl          a7, a3, ra
                  sra          s8, s8, s0
                  nop
                  auipc        a2, 844449
                  nop
560:              auipc        s2, 903780
561:              slti         a4, a5, 873
main_5:           jal          t1, 10f
0:                jal          ra, 8f
1:                jal          ra, 11f
2:                jal          sp, 3f
3:                jal          gp, 6f
4:                jal          ra, 9f
5:                jal          ra, 1b
6:                jal          t1, 12f
7:                jal          ra, 0b
8:                jal          ra, 2b
9:                jal          t1, 7b
10:               jal          ra, 5b
11:               jal          gp, 4b
12:               andi         ra, t0, -580
                  sll          s7, s4, t3
                  slti         s9, t0, 892
                  or           ra, a4, a7
                  bgeu         a0, a3, 583f
566:              beq          ra, s6, 585f
                  addi         t1, s11, 266
568:              or           t1, ra, ra
                  addi         sp, s3, 1641
                  slti         s11, gp, -1609
                  ori          a5, t2, 1133
                  and          s0, s9, s11
                  lui          a0, 42076
                  add          a0, a1, a2
                  add          s11, s5, a7
                  xori         s6, s7, -724
                  beq          s4, t5, 591f
                  slt          sp, sp, s0
                  andi         s9, a6, -1632
                  add          a2, s8, t2
                  bgeu         a2, s5, 585f
                  bge          s1, a3, 587f
583:              bltu         t3, s8, 591f
                  slli         gp, s1, 29
585:              beq          sp, a0, 590f
                  sra          t1, s8, a4
587:              srai         ra, a0, 13
                  sra          zero, t2, t5
                  bltu         s1, a4, 609f
590:              addi         s8, tp, 468
591:              sra          s5, s3, t1
                  bltu         s5, s8, 609f
                  srl          zero, a6, s11
                  or           a7, ra, s6
                  bne          a7, t5, 615f
                  sra          a1, s2, t4
                  blt          t3, tp, 609f
                  sll          t5, gp, t1
                  sub          a2, tp, a5
                  and          s5, a7, t4
                  nop
                  bge          s1, s6, 619f
                  ori          t1, a3, -246
                  addi         a4, s4, 454
                  xor          a7, s1, sp
                  auipc        a0, 177060
                  xor          t5, t2, s10
                  xor          s6, t2, s7
609:              slt          s6, s0, gp
                  slt          s3, a4, t6
                  addi         t6, gp, 447
                  xor          ra, s4, a4
                  slli         s6, s11, 0
                  sltu         zero, a1, s10
615:              addi         ra, a6, 1066
                  and          a1, t2, t5
                  sra          ra, a4, t4
                  bgeu         s2, a5, 638f
main_7:           jal          t1, 2f
0:                jal          sp, 17f
1:                jal          sp, 10f
2:                jal          tp, 3f
3:                jal          s5, 4f
4:                jal          tp, 13f
5:                jal          ra, 6f
6:                jal          a7, 14f
7:                jal          ra, 15f
8:                jal          a0, 7b
9:                jal          s2, 16f
10:               jal          ra, 0b
11:               jal          t1, 1b
12:               jal          t3, 19f
13:               jal          ra, 9b
14:               jal          ra, 8b
15:               jal          ra, 12b
16:               jal          t6, 18f
17:               jal          a7, 5b
18:               jal          t1, 11b
19:               slt          t0, a7, t1
619:              sll          t0, ra, s2
                  sltiu        s8, a2, 760
                  xori         a7, s8, 526
                  slti         a2, t6, -1452
                  lui          s1, 999996
                  addi         s11, t5, -276
                  slli         t1, a6, 3
                  bltu         s1, t5, 628f
                  ori          tp, sp, 385
628:              bne          a4, t2, 632f
                  xor          ra, t0, s1
                  addi         s2, s0, -80
                  beq          s11, t5, 632f
632:              srl          s5, s4, s11
                  srl          s1, s10, s4
                  ori          s3, a4, 1057
                  sub          s9, s11, a6
                  sltu         t1, s7, t6
                  auipc        zero, 78612
638:              auipc        t0, 616475
                  beq          s9, s10, 659f
                  srai         t5, a5, 9
                  ori          s0, a1, 483
                  bltu         s0, ra, 659f
                  beq          a3, s1, 660f
                  sltiu        s3, t6, 256
                  auipc        a6, 201500
                  bltu         a2, a4, 663f
                  slti         t6, a6, 461
                  beq          t2, s0, 662f
                  xor          s1, s9, s9
                  nop
                  slli         s3, t4, 29
                  xor          t6, a5, a5
                  slti         t5, s7, -168
                  lui          s7, 76463
                  bltu         s10, s3, 675f
                  bgeu         a6, a3, 676f
                  la           t3, sub_1
                  addi         s9, a3, 435
                  addi         t3, t3, -1016
                  auipc        a4, 180991
                  and          a4, a1, t2
                  bge          s7, t0, main_j1 #branch to jump instr
                  xor          s8, t6, t4
                  nop
main_j1:          jalr         t1, t3, 1017 #jump main -> sub_1
                  sltiu        ra, s1, 1227
                  nop
659:              srli         s0, tp, 17
660:              add          s2, t1, s2
                  xori         t5, t2, 1650
662:              sll          t5, s1, s11
663:              sra          a1, s8, ra
                  srli         a7, s2, 17
                  ori          a6, ra, 340
                  lui          tp, 239276
                  srl          s1, s0, s2
                  slli         tp, t1, 20
                  bge          t6, t3, 686f
                  bge          s10, a0, 688f
                  bltu         t0, a3, 691f
                  xor          s8, s6, s5
                  xori         a1, s0, -211
                  bne          t1, a3, 682f
main_1:           jal          t1, 3f
0:                jal          ra, 16f
1:                jal          ra, 8f
2:                jal          ra, 15f
3:                jal          ra, 11f
4:                jal          ra, 14f
5:                jal          t1, 9f
6:                jal          t4, 10f
7:                jal          a2, 4b
8:                jal          ra, 12f
9:                jal          t1, 6b
10:               jal          s6, 17f
11:               jal          tp, 2b
12:               jal          a0, 0b
13:               jal          ra, 1b
14:               jal          ra, 5b
15:               jal          a6, 13b
16:               jal          ra, 7b
17:               sra          a5, sp, s3
675:              sltiu        a4, a7, -1863
676:              sub          gp, a5, a6
                  slt          a5, t1, a3
                  sub          s3, a4, zero
                  srl          sp, t3, s4
                  srai         s5, s2, 17
                  slt          zero, t2, s9
682:              sltu         a1, a2, t6
                  srli         s5, sp, 14
                  xori         gp, zero, -19
                  bgeu         a0, a0, 690f
686:              ori          s8, t5, -838
                  sub          t5, a1, s5
688:              addi         zero, a4, -1718
                  bne          t5, s7, 700f
690:              or           s9, t1, s6
691:              sub          a6, t5, a4
                  auipc        zero, 1041393
                  sll          t0, t1, t3
                  bne          t5, ra, 698f
                  sub          a5, a3, s5
                  bltu         s5, s11, 707f
                  sltu         s11, t5, s0
698:              bne          gp, tp, 715f
                  srli         a7, a2, 20
700:              or           s11, s4, s4
                  addi         s11, a7, -360
                  beq          a6, a7, 722f
                  lui          sp, 899766
                  blt          t1, s2, 722f
                  bgeu         t1, a2, 710f
                  add          s0, t2, t5
707:              sub          s8, s1, t3
                  xori         s7, s8, -1983
                  sra          s9, t5, a4
710:              bltu         t3, a7, 724f
                  xor          s2, s10, s10
                  bltu         t1, s11, 726f
                  slti         t3, tp, -1596
                  sll          s7, a6, ra
715:              nop
                  sltu         t0, a3, a0
                  xori         s11, s1, 55
                  bltu         s10, t1, 730f
                  or           a4, s11, s5
                  lui          s7, 1012741
                  lui          a0, 106775
722:              sra          a4, s6, a0
                  addi         a6, a6, 1672
724:              srai         a7, a7, 23
main_2:           jal          t1, 6f
0:                jal          sp, 2f
1:                jal          t1, 3f
2:                jal          ra, 1b
3:                jal          a3, 5f
4:                jal          s0, 10f
5:                jal          ra, 7f
6:                jal          ra, 4b
7:                jal          ra, 11f
8:                jal          t1, 9f
9:                jal          ra, 0b
10:               jal          a4, 8b
11:               srai         s3, zero, 11
                  or           s1, t6, gp
726:              sra          a1, t3, a7
                  or           s5, s9, s7
                  addi         s3, s10, 1827
                  andi         a3, s0, -1829
730:              srai         s9, sp, 13
                  auipc        s5, 446241
                  nop
                  bge          t3, zero, 739f
                  xor          t6, t6, s2
                  bltu         a6, a0, 750f
                  ori          a0, s1, -1935
                  beq          s4, a0, 750f
                  ori          a5, a5, -1111
739:              srli         a7, t2, 8
                  ori          s2, a1, 353
                  srl          t4, a1, a7
                  sltiu        t4, tp, 1303
                  nop
                  sra          s5, a7, a0
                  slli         s8, s7, 25
                  slt          s7, a6, t2
                  sltu         s8, s6, s7
                  andi         t1, s4, 324
                  bgeu         s9, a5, 750f
750:              lui          gp, 372651
                  la x20, test_done
                  jalr x0, x20, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            auipc        s7, 771963
                  auipc        s0, 65610
                  andi         t6, t5, -1542
                  sra          gp, a5, s2
                  srai         a3, a5, 20
                  srai         s7, t0, 18
                  addi         s10, s10, -64
                  srl          s8, a5, s0
                  xor          s9, a6, s4
                  sw           t1, 4(s10)
                  xori         t4, s3, 2021
                  nop
sub_1_1:          jal          t1, 9f
0:                jal          ra, 6f
1:                jal          gp, 7f
2:                jal          s1, 3f
3:                jal          ra, 5f
4:                jal          ra, 10f
5:                jal          s0, 13f
6:                jal          ra, 12f
7:                jal          ra, 14f
8:                jal          ra, 1b
9:                jal          a7, 2b
10:               jal          t0, 8b
11:               jal          t0, 15f
12:               jal          sp, 11b
13:               jal          ra, 4b
14:               jal          tp, 0b
15:               srli         zero, a5, 15
sub_1_6:          jal          t1, 10f
0:                jal          t1, 2f
1:                jal          ra, 15f
2:                jal          tp, 12f
3:                jal          ra, 17f
4:                jal          ra, 3b
5:                jal          ra, 6f
6:                jal          t0, 16f
7:                jal          ra, 14f
8:                jal          tp, 4b
9:                jal          s8, 5b
10:               jal          ra, 0b
11:               jal          gp, 8b
12:               jal          t1, 1b
13:               jal          s1, 11b
14:               jal          t1, 13b
15:               jal          ra, 9b
16:               jal          gp, 7b
17:               sll          t0, s11, a6
sub_1_17:         jal          t1, 1f
0:                jal          ra, 5f
1:                jal          sp, 7f
2:                jal          ra, 0b
3:                jal          ra, 9f
4:                jal          ra, 2b
5:                jal          ra, 3b
6:                jal          t1, 4b
7:                jal          ra, 6b
8:                jal          ra, 10f
9:                jal          a7, 8b
10:               and          zero, s1, s0
sub_1_12:         jal          t1, 4f
0:                jal          ra, 9f
1:                jal          ra, 7f
2:                jal          ra, 5f
3:                jal          ra, 1b
4:                jal          ra, 8f
5:                jal          a4, 13f
6:                jal          ra, 10f
7:                jal          t1, 2b
8:                jal          ra, 6b
9:                jal          ra, 3b
10:               jal          ra, 11f
11:               jal          gp, 12f
12:               jal          t1, 0b
13:               nop
sub_1_11:         jal          t1, 16f
0:                jal          a1, 19f
1:                jal          t1, 14f
2:                jal          ra, 4f
3:                jal          ra, 2b
4:                jal          ra, 1b
5:                jal          t1, 8f
6:                jal          t1, 18f
7:                jal          ra, 0b
8:                jal          ra, 13f
9:                jal          t1, 20f
10:               jal          t1, 17f
11:               jal          ra, 15f
12:               jal          ra, 7b
13:               jal          ra, 6b
14:               jal          gp, 5b
15:               jal          ra, 10b
16:               jal          s9, 12b
17:               jal          ra, 9b
18:               jal          ra, 11b
19:               jal          ra, 3b
20:               slli         ra, t6, 20
sub_1_3:          jal          t1, 8f
0:                jal          ra, 12f
1:                jal          a7, 7f
2:                jal          ra, 5f
3:                jal          ra, 10f
4:                jal          s7, 6f
5:                jal          ra, 9f
6:                jal          t1, 11f
7:                jal          t1, 13f
8:                jal          ra, 4b
9:                jal          s6, 1b
10:               jal          gp, 2b
11:               jal          ra, 0b
12:               jal          ra, 3b
13:               nop
sub_1_21:         jal          t1, 8f
0:                jal          t1, 3f
1:                jal          t1, 4f
2:                jal          ra, 6f
3:                jal          ra, 12f
4:                jal          ra, 10f
5:                jal          ra, 11f
6:                jal          tp, 1b
7:                jal          ra, 0b
8:                jal          ra, 5b
9:                jal          ra, 7b
10:               jal          t1, 9b
11:               jal          t1, 2b
12:               ori          s11, s1, -1025
sub_1_16:         jal          t1, 3f
0:                jal          a1, 5f
1:                jal          ra, 10f
2:                jal          a0, 6f
3:                jal          gp, 11f
4:                jal          a6, 8f
5:                jal          ra, 2b
6:                jal          ra, 1b
7:                jal          t1, 0b
8:                jal          ra, 7b
9:                jal          s3, 4b
10:               jal          ra, 12f
11:               jal          ra, 9b
12:               srli         t4, t1, 4
sub_1_9:          jal          t1, 13f
0:                jal          ra, 20f
1:                jal          ra, 7f
2:                jal          t1, 0b
3:                jal          ra, 11f
4:                jal          ra, 17f
5:                jal          t4, 15f
6:                jal          t6, 16f
7:                jal          ra, 18f
8:                jal          ra, 6b
9:                jal          tp, 14f
10:               jal          ra, 5b
11:               jal          t1, 8b
12:               jal          a7, 4b
13:               jal          ra, 10b
14:               jal          t1, 12b
15:               jal          ra, 3b
16:               jal          t1, 19f
17:               jal          t1, 1b
18:               jal          tp, 2b
19:               jal          ra, 9b
20:               srai         zero, s6, 6
sub_1_20:         jal          t1, 7f
0:                jal          t1, 13f
1:                jal          a6, 22f
2:                jal          a2, 16f
3:                jal          tp, 14f
4:                jal          ra, 0b
5:                jal          ra, 3b
6:                jal          ra, 18f
7:                jal          t1, 5b
8:                jal          t5, 6b
9:                jal          ra, 2b
10:               jal          s9, 23f
11:               jal          ra, 17f
12:               jal          t1, 21f
13:               jal          ra, 20f
14:               jal          ra, 15f
15:               jal          t1, 4b
16:               jal          t1, 12b
17:               jal          ra, 9b
18:               jal          a5, 1b
19:               jal          t1, 10b
20:               jal          s9, 8b
21:               jal          ra, 19b
22:               jal          ra, 11b
23:               add          t1, s8, s2
sub_1_0:          jal          t1, 19f
0:                jal          t1, 15f
1:                jal          gp, 18f
2:                jal          t1, 9f
3:                jal          ra, 4f
4:                jal          ra, 20f
5:                jal          s1, 13f
6:                jal          ra, 5b
7:                jal          ra, 12f
8:                jal          ra, 16f
9:                jal          ra, 14f
10:               jal          ra, 6b
11:               jal          t4, 2b
12:               jal          t1, 0b
13:               jal          t1, 8b
14:               jal          t1, 1b
15:               jal          a0, 3b
16:               jal          t1, 7b
17:               jal          ra, 11b
18:               jal          ra, 10b
19:               jal          ra, 17b
20:               nop
sub_1_13:         jal          t1, 7f
0:                jal          ra, 9f
1:                jal          ra, 8f
2:                jal          ra, 15f
3:                jal          ra, 1b
4:                jal          ra, 0b
5:                jal          sp, 3b
6:                jal          ra, 2b
7:                jal          t1, 11f
8:                jal          t5, 14f
9:                jal          t1, 13f
10:               jal          t1, 4b
11:               jal          a4, 10b
12:               jal          a6, 6b
13:               jal          t1, 5b
14:               jal          ra, 12b
15:               sltu         s11, s8, a1
sub_1_4:          jal          t1, 3f
0:                jal          ra, 10f
1:                jal          t1, 9f
2:                jal          gp, 6f
3:                jal          ra, 7f
4:                jal          t1, 14f
5:                jal          ra, 0b
6:                jal          a4, 1b
7:                jal          ra, 8f
8:                jal          a0, 11f
9:                jal          ra, 12f
10:               jal          a6, 13f
11:               jal          ra, 5b
12:               jal          ra, 4b
13:               jal          t0, 2b
14:               slt          a3, a5, gp
sub_1_10:         jal          t1, 24f
0:                jal          ra, 9f
1:                jal          gp, 27f
2:                jal          ra, 4f
3:                jal          ra, 20f
4:                jal          ra, 28f
5:                jal          ra, 13f
6:                jal          ra, 25f
7:                jal          t0, 0b
8:                jal          ra, 6b
9:                jal          t1, 23f
10:               jal          ra, 18f
11:               jal          ra, 2b
12:               jal          s9, 3b
13:               jal          tp, 1b
14:               jal          ra, 8b
15:               jal          t1, 10b
16:               jal          ra, 7b
17:               jal          t0, 5b
18:               jal          ra, 14b
19:               jal          t0, 29f
20:               jal          ra, 11b
21:               jal          ra, 16b
22:               jal          t0, 26f
23:               jal          gp, 17b
24:               jal          ra, 12b
25:               jal          s1, 19b
26:               jal          s2, 15b
27:               jal          ra, 22b
28:               jal          ra, 21b
29:               sltiu        t5, t5, 445
sub_1_22:         jal          t1, 13f
0:                jal          t1, 22f
1:                jal          s9, 21f
2:                jal          ra, 11f
3:                jal          a6, 17f
4:                jal          t1, 15f
5:                jal          t1, 24f
6:                jal          ra, 1b
7:                jal          s3, 27f
8:                jal          t1, 0b
9:                jal          ra, 3b
10:               jal          t4, 25f
11:               jal          gp, 23f
12:               jal          ra, 14f
13:               jal          ra, 2b
14:               jal          a6, 5b
15:               jal          ra, 8b
16:               jal          t4, 19f
17:               jal          ra, 20f
18:               jal          ra, 12b
19:               jal          t1, 9b
20:               jal          t1, 18b
21:               jal          a6, 10b
22:               jal          a7, 26f
23:               jal          a4, 4b
24:               jal          a1, 6b
25:               jal          ra, 7b
26:               jal          t4, 16b
27:               and          a2, t3, a0
sub_1_2:          jal          t1, 9f
0:                jal          ra, 8f
1:                jal          ra, 19f
2:                jal          ra, 23f
3:                jal          ra, 5f
4:                jal          t1, 3b
5:                jal          t1, 2b
6:                jal          ra, 4b
7:                jal          a0, 10f
8:                jal          t1, 15f
9:                jal          ra, 20f
10:               jal          t1, 21f
11:               jal          ra, 17f
12:               jal          ra, 14f
13:               jal          t1, 11b
14:               jal          t0, 6b
15:               jal          a3, 7b
16:               jal          a6, 18f
17:               jal          ra, 16b
18:               jal          ra, 1b
19:               jal          t1, 22f
20:               jal          s11, 0b
21:               jal          t1, 13b
22:               jal          ra, 12b
23:               sltu         a4, a3, t2
sub_1_19:         jal          t1, 15f
0:                jal          ra, 12f
1:                jal          a6, 13f
2:                jal          t1, 16f
3:                jal          s9, 1b
4:                jal          sp, 6f
5:                jal          a5, 9f
6:                jal          ra, 5b
7:                jal          ra, 0b
8:                jal          t1, 11f
9:                jal          ra, 3b
10:               jal          a3, 7b
11:               jal          a7, 4b
12:               jal          ra, 8b
13:               jal          ra, 2b
14:               jal          ra, 10b
15:               jal          t1, 14b
16:               ori          s11, a6, -626
                  nop
                  bgeu         a6, t4, 10f
                  slti         t1, tp, -762
                  lui          t6, 601238
                  sltu         tp, s8, zero
                  srai         t5, t1, 29
                  sub          sp, a6, s9
                  add          a7, a3, a1
                  slli         t5, a3, 23
                  bge          t0, s10, 10f
10:               srai         a0, t3, 21
                  bltu         s9, sp, 31f
                  beq          t2, t1, 22f
                  auipc        s7, 174396
                  sll          t3, sp, t6
                  bltu         a6, s6, 22f
                  blt          t4, s9, 30f
                  bgeu         a3, s3, 28f
                  bgeu         a2, s3, 27f
                  sll          a0, gp, t5
                  ori          t1, s6, -319
                  blt          a2, s9, 22f
22:               sra          a4, gp, tp
                  bltu         a6, a2, 43f
                  sra          a6, s8, t5
                  blt          a7, t3, 27f
                  sltu         gp, t4, s3
sub_1_8:          jal          t1, 12f
0:                jal          s3, 7f
1:                jal          t1, 11f
2:                jal          ra, 3f
3:                jal          ra, 22f
4:                jal          t0, 13f
5:                jal          ra, 0b
6:                jal          t0, 8f
7:                jal          t1, 2b
8:                jal          a3, 1b
9:                jal          ra, 5b
10:               jal          a2, 25f
11:               jal          s9, 23f
12:               jal          ra, 9b
13:               jal          t4, 28f
14:               jal          s9, 20f
15:               jal          t1, 27f
16:               jal          ra, 10b
17:               jal          ra, 4b
18:               jal          ra, 29f
19:               jal          gp, 26f
20:               jal          t1, 19b
21:               jal          ra, 18b
22:               jal          ra, 14b
23:               jal          ra, 15b
24:               jal          ra, 21b
25:               jal          ra, 17b
26:               jal          t4, 16b
27:               jal          ra, 24b
28:               jal          s7, 6b
29:               or           t0, t3, s8
27:               bge          s4, t5, 39f
28:               xor          s8, s8, s10
                  slt          a3, a5, a2
30:               addi         t0, zero, -1599
31:               lui          gp, 188188
                  ori          s5, s2, -1668
                  bne          t5, s2, 49f
                  lui          s3, 755709
                  slli         a2, t2, 21
                  srai         s8, a2, 13
                  nop
                  sub          a3, s2, s3
39:               slli         s11, a4, 1
                  and          t5, t0, a4
                  andi         a7, s4, 652
                  bge          a7, ra, 45f
43:               slt          s11, tp, s11
                  srai         s6, t6, 6
45:               add          s6, t6, t1
                  xori         sp, t1, 211
                  srl          s3, s7, s11
                  blt          t5, tp, 57f
49:               bgeu         t5, t3, 51f
                  bge          a6, s11, 60f
51:               or           a5, gp, a7
                  srai         s9, a7, 27
                  xori         a1, a5, -1933
                  sub          a6, t1, ra
                  sll          t4, a5, a2
                  add          s7, a5, t1
57:               sub          s5, s4, gp
                  slt          t3, sp, s8
                  sub          a5, a1, sp
60:               and          a7, s4, zero
                  bge          gp, t1, 80f
                  and          t5, s11, s6
                  srl          s6, a2, t0
                  lui          tp, 35903
                  slt          s3, a2, s7
                  andi         a3, s0, -1838
                  slli         t5, s2, 29
                  sltiu        t0, s5, 834
                  andi         s7, s11, 271
                  slti         ra, a1, 1264
                  sll          s2, t0, t2
                  lui          t3, 622359
                  bne          s4, a6, 81f
                  srli         t0, a3, 19
                  nop
                  xor          s9, tp, sp
                  sra          a6, s5, a7
                  bge          s8, a0, 96f
                  and          a6, t3, zero
80:               add          s7, s2, t6
81:               slt          t0, s11, t2
                  sltiu        tp, s5, 1338
                  sll          s3, a5, s0
                  slti         s7, t3, 337
                  and          t0, a1, s5
                  sra          s2, a2, t6
                  auipc        a6, 1043735
                  bne          t2, a3, 100f
                  and          t1, s5, a2
                  bgeu         t4, s11, 107f
                  srl          a6, s3, a7
                  bne          a1, ra, 112f
                  xori         a0, t0, 1972
                  sub          tp, a4, t1
                  ori          tp, s11, -1590
96:               lui          s6, 407320
sub_1_7:          jal          t1, 2f
0:                jal          a0, 3f
1:                jal          tp, 15f
2:                jal          ra, 0b
3:                jal          t1, 14f
4:                jal          t1, 12f
5:                jal          ra, 16f
6:                jal          s7, 13f
7:                jal          t0, 9f
8:                jal          a4, 11f
9:                jal          t3, 6b
10:               jal          ra, 7b
11:               jal          t1, 10b
12:               jal          sp, 1b
13:               jal          ra, 5b
14:               jal          ra, 4b
15:               jal          t6, 8b
16:               srai         a1, a6, 4
                  beq          tp, a7, 109f
                  srai         a7, a0, 24
                  slti         tp, s6, -894
100:              bltu         t1, s1, 110f
                  auipc        s1, 323519
                  sltu         s8, a6, s4
                  slti         a5, s5, -667
                  beq          s8, s7, 108f
                  slti         t1, s3, -669
                  slli         a0, a5, 29
107:              sra          s6, t6, s6
108:              bne          a6, t0, 123f
109:              srl          s1, s7, s6
110:              auipc        sp, 900440
                  addi         s11, s4, 150
112:              addi         a2, s1, -1744
                  ori          ra, s2, -1154
                  bne          sp, s0, 120f
                  addi         t3, t0, -584
                  ori          a7, t0, 356
                  sll          s3, s7, s11
                  xor          t1, sp, a3
                  xori         a5, tp, -1262
120:              and          s9, a4, t5
                  slli         a3, s8, 18
                  slt          t4, a5, sp
123:              lui          a2, 835192
                  xori         s0, a1, -1349
                  beq          a0, s10, 127f
                  bge          s8, t3, 140f
127:              sltiu        a2, a7, -1151
                  beq          s4, t0, 142f
                  bltu         s5, a0, 138f
                  sub          t3, s10, a7
                  sra          a0, s7, t3
                  sltu         tp, t0, sp
                  or           t6, s1, gp
                  sltu         t0, sp, gp
                  srai         s8, a0, 21
                  bltu         t4, t3, 139f
                  add          s0, s8, a7
138:              beq          s8, a6, 146f
139:              nop
140:              srai         ra, t0, 30
                  srai         a6, a0, 27
142:              slli         s11, s2, 11
                  add          s5, a4, t0
                  srl          s9, a3, gp
                  sltu         s3, s0, ra
146:              addi         gp, t1, -873
                  blt          s6, t6, 161f
                  sra          a0, t0, s2
                  addi         s5, zero, 1244
                  bge          t4, a6, 157f
                  srai         s1, a4, 7
                  and          t6, a5, s4
                  ori          a2, t3, -1680
                  srai         s1, s3, 29
                  slli         t1, a4, 6
                  nop
157:              sub          s3, t4, t1
                  addi         zero, a3, -179
                  bltu         t4, a2, 175f
                  srli         s3, t6, 11
161:              bge          s10, sp, 178f
                  srli         s11, t6, 4
                  or           a1, a2, s11
                  sltiu        a3, a1, -528
                  ori          a5, a7, -2035
                  sll          a4, a4, zero
                  sll          gp, s6, s4
                  addi         t0, gp, 1321
                  addi         s9, sp, -125
                  sll          ra, s3, a2
                  bne          s10, gp, 189f
                  srli         s1, s5, 14
                  sltiu        s1, s10, -1317
                  xor          a2, t6, tp
175:              srai         s3, gp, 3
                  nop
                  srai         a0, s10, 2
178:              slti         a5, s10, -1255
                  or           tp, t2, a4
                  bgeu         tp, t1, 195f
                  srai         s6, a5, 7
                  auipc        s0, 72567
                  lui          t5, 403021
                  srli         s3, s1, 6
                  nop
                  sltiu        a6, sp, 1362
                  ori          a3, s6, -1331
                  and          a1, t6, sp
189:              bne          s8, s6, 200f
                  srl          ra, s7, t5
                  bltu         a2, s9, 192f
192:              slti         a2, a3, -92
                  sub          tp, a5, t4
                  srli         t4, s5, 13
195:              ori          t5, a7, -950
                  slt          a7, zero, s6
                  sltu         t0, s0, s0
                  sub          a3, s6, a5
                  slt          s7, a6, s11
200:              bne          s4, t6, 202f
                  add          a3, s4, sp
202:              nop
                  and          a5, s9, s9
                  sltiu        s1, a1, -1831
                  slli         s9, s6, 30
                  slti         a4, s4, -1996
                  bgeu         t6, s9, 217f
                  sub          s0, a4, ra
                  auipc        a0, 668648
                  beq          s6, s0, 222f
                  slli         a5, zero, 12
                  xori         s8, s9, 2010
                  xor          a3, a4, t5
                  sltiu        s2, s2, -2009
                  bgeu         s7, t0, 235f
                  ori          s8, a3, 1963
217:              bne          a0, s3, 236f
                  bgeu         t0, a5, 222f
                  srli         t4, zero, 2
                  srai         a6, a0, 21
                  sltu         t5, a1, a5
222:              srli         t6, a2, 21
                  blt          a3, s10, 235f
                  bne          a0, sp, 225f
225:              add          s0, t6, s8
                  xori         t4, a5, 49
                  xori         t6, s7, 1708
                  add          t1, zero, zero
                  bne          s9, tp, 239f
                  nop
                  slli         s2, s8, 27
                  sltu         s5, s2, s5
                  bltu         ra, a3, 253f
                  blt          s7, s3, 254f
235:              add          a3, t0, s2
236:              bgeu         s5, a0, 238f
                  auipc        s5, 877857
238:              sltu         s2, s8, t5
239:              beq          t1, t6, 248f
                  bgeu         sp, a6, 242f
                  blt          t6, s6, 247f
242:              sll          a1, t2, t3
                  srai         a7, a5, 2
                  sltiu        a4, s9, 683
                  ori          zero, s5, -1339
                  xor          a6, s3, tp
247:              sra          s1, zero, a6
248:              addi         a7, s8, -1008
                  beq          sp, sp, 259f
                  slli         t0, s7, 21
                  or           s7, t0, sp
                  xori         a6, a0, 1244
253:              and          a1, s2, zero
254:              slt          sp, sp, t1
                  xori         s2, a4, -1276
                  srli         a0, s5, 11
                  nop
                  bge          tp, a1, 267f
259:              and          s1, s11, s10
                  xori         s11, s7, 1447
                  sltu         t1, a5, s4
                  lui          t4, 816225
                  bge          s7, ra, 275f
                  bne          a1, a6, 268f
                  andi         a2, s1, -234
                  sll          a6, s7, t0
267:              sltiu        s9, a5, 1903
268:              add          zero, t6, s9
                  lui          a2, 950243
                  sll          t4, s5, t2
                  xori         a5, t3, 2021
                  sltu         ra, ra, ra
                  bltu         t0, t0, 279f
                  sra          s2, a2, s4
275:              srai         s1, t5, 14
                  sra          a4, s6, s10
                  nop
                  sltiu        s6, s6, -749
279:              andi         s1, a0, 1968
                  andi         a4, a0, 411
                  sub          a7, tp, s10
                  xor          t3, a0, s10
                  beq          a0, a4, 303f
                  slti         a5, s5, -1263
                  beq          s2, s8, 297f
                  addi         t0, zero, -156
                  xori         s6, t6, -1129
                  xori         t4, t6, 497
                  nop
                  srai         s9, t1, 2
                  and          t3, s1, zero
                  add          ra, t1, s9
                  lui          a2, 1014920
                  bltu         sp, t0, 303f
                  slt          s11, s0, t0
                  slt          s8, s4, t4
297:              andi         a6, s5, 11
                  xor          t0, a0, s3
                  bgeu         zero, a6, 314f
                  sll          gp, a2, a3
                  add          zero, s6, s11
                  or           s6, zero, s0
303:              ori          a5, t5, -1
                  or           s11, s4, s9
                  xor          a7, t0, s11
                  srli         s8, a4, 28
                  addi         gp, a6, 842
                  or           t4, gp, sp
                  xori         t3, s8, 23
                  sltu         a5, s1, a4
                  blt          s4, s1, 329f
                  lui          t4, 399167
                  srai         a5, a4, 10
314:              sll          s8, t4, ra
                  bne          s0, s7, 332f
                  auipc        zero, 247455
                  blt          t1, a3, 325f
                  sll          s3, s7, s10
                  xor          s0, sp, s8
                  nop
                  auipc        a4, 356251
                  auipc        a1, 1000519
                  sltiu        t5, a1, -1283
                  bgeu         s3, t1, 338f
325:              or           t1, s3, s4
                  beq          a3, ra, 336f
                  sub          t4, s1, t4
                  lui          t4, 499943
329:              slti         s7, ra, 2028
                  sltiu        s6, s7, 430
                  sltu         t0, s0, t1
332:              bgeu         a2, s1, 351f
                  slt          t6, a6, s8
                  and          s8, a4, t1
                  sltiu        zero, a4, 1565
336:              bltu         s3, s4, 343f
                  slti         t3, s6, -1533
338:              and          s8, s7, a3
                  auipc        s0, 606545
                  sltu         s0, a4, s2
                  or           zero, a0, s0
                  or           t0, s0, zero
343:              bne          s6, s10, 344f
344:              nop
                  sltiu        t3, t0, 39
                  auipc        s0, 969330
                  srli         a2, ra, 23
                  add          ra, a2, t6
                  srli         s5, s2, 21
                  andi         s8, a2, -1257
351:              xor          s8, s7, s0
                  xori         s2, a7, 991
                  beq          t2, s11, 355f
                  bltu         t1, s7, 365f
355:              sltiu        a0, s9, -991
                  sltu         s11, s3, s7
                  srli         a7, sp, 8
                  ori          t4, s4, 1789
                  slti         a4, s8, -362
                  slt          a5, s3, a4
                  srli         s3, s11, 24
                  xori         s3, a1, 1119
                  slli         s7, a3, 20
                  blt          tp, s7, 374f
sub_1_18:         jal          t1, 7f
0:                jal          a7, 10f
1:                jal          t1, 13f
2:                jal          ra, 12f
3:                jal          ra, 15f
4:                jal          a5, 6f
5:                jal          t1, 8f
6:                jal          ra, 2b
7:                jal          ra, 14f
8:                jal          tp, 0b
9:                jal          t1, 11f
10:               jal          ra, 1b
11:               jal          s2, 3b
12:               jal          ra, 9b
13:               jal          ra, 4b
14:               jal          ra, 5b
15:               addi         gp, t2, 1606
365:              sra          a4, s2, sp
                  sub          a7, t6, s9
                  addi         a6, t2, -1211
                  or           a1, s4, s4
                  beq          t6, t3, 378f
                  sll          a1, s10, s10
sub_1_14:         jal          t1, 4f
0:                jal          ra, 13f
1:                jal          ra, 12f
2:                jal          s1, 6f
3:                jal          s0, 7f
4:                jal          ra, 3b
5:                jal          ra, 14f
6:                jal          ra, 15f
7:                jal          ra, 5b
8:                jal          ra, 9f
9:                jal          ra, 11f
10:               jal          ra, 0b
11:               jal          ra, 16f
12:               jal          ra, 2b
13:               jal          gp, 8b
14:               jal          ra, 1b
15:               jal          t1, 10b
16:               srl          a6, s2, tp
                  slt          s5, ra, gp
                  andi         a6, s2, -385
                  lui          s8, 737761
374:              or           s9, t4, a6
                  addi         zero, a1, -209
                  andi         a1, a5, 874
                  xori         s3, t0, -1165
378:              xor          a6, a5, a1
                  sll          ra, zero, s4
                  sltiu        s1, t1, 117
                  bltu         ra, s6, 393f
                  sltiu        s7, s7, -1264
                  beq          gp, a7, 385f
                  sll          s6, t6, t0
385:              auipc        s11, 391695
                  beq          s5, s11, 389f
                  srl          s8, t3, a0
                  slti         a3, a3, -1842
389:              lui          s0, 10080
                  srli         gp, s11, 11
                  blt          gp, s1, 401f
                  and          t1, a6, s11
393:              srli         s8, gp, 11
                  nop
                  addi         s5, t3, -1016
                  lui          t0, 393669
                  nop
                  blt          a0, a3, 399f
399:              slli         ra, s0, 23
                  slt          s1, s5, t5
401:              lui          gp, 585682
                  sub          t6, a6, s8
                  nop
                  addi         tp, s0, -2046
                  and          s11, zero, s3
                  sltiu        s1, zero, 1216
                  bne          s2, s11, 423f
                  srai         s7, t5, 12
                  bge          s1, sp, 429f
                  xori         s11, ra, 1458
                  addi         s1, s0, -870
                  bltu         t3, zero, 424f
                  sll          t1, ra, a4
                  xori         a7, a4, -562
                  sltiu        t6, t5, -1480
                  slti         s9, t4, -1497
                  xori         s1, s9, -204
                  blt          s5, tp, 420f
                  bltu         t4, sp, 428f
420:              ori          t3, s8, -277
                  xor          t5, s4, a6
                  nop
423:              blt          s3, s9, 437f
424:              slt          s2, t3, ra
                  or           t6, sp, a7
                  xori         a3, t1, -1912
                  bltu         t1, s9, 447f
428:              srli         gp, s1, 25
429:              andi         a1, s2, -1874
                  srl          s11, a1, s11
                  sub          a3, ra, a6
                  add          ra, zero, sp
                  srl          a1, s8, t0
                  bge          a2, t4, 453f
                  xori         ra, s10, -107
                  sub          s11, s5, s11
437:              sltu         a5, t0, zero
                  bltu         t3, s4, 454f
                  srai         s7, a3, 3
                  ori          a0, tp, 177
                  xori         a2, t2, 1575
                  sra          s7, t5, t0
                  or           tp, t0, t6
                  slt          gp, t4, a7
                  blt          s3, sp, 459f
                  bltu         t5, t6, 463f
447:              slli         s5, s6, 16
                  slt          a4, s10, a3
                  xori         a2, t5, -1724
                  beq          a6, a2, 464f
                  sltiu        s11, s7, -1116
                  srli         s5, t2, 21
453:              or           t3, t2, a0
454:              bltu         t0, s7, 460f
                  andi         t5, a3, 1295
                  and          s7, t1, s4
                  srai         s3, s6, 4
                  sltu         s9, s0, s0
459:              sll          t1, a6, s11
460:              blt          t1, s1, 469f
                  bltu         gp, s4, 473f
                  srl          s8, a4, a3
463:              sltiu        a1, a3, -272
464:              sra          s2, a0, s0
                  bge          a2, s11, 475f
                  bgeu         a1, a2, 474f
                  or           s5, s3, t3
                  sltu         a4, a6, a5
469:              auipc        s1, 360708
                  sub          t4, tp, a7
                  sltu         t1, t2, gp
                  blt          a4, t2, 482f
473:              add          a7, a1, a4
474:              slti         a7, gp, -649
475:              beq          s3, ra, 478f
                  or           zero, s8, a5
                  xori         t6, a6, 598
478:              xor          s8, t0, s6
                  beq          s8, s7, 481f
                  andi         s1, a0, -839
481:              slti         a3, zero, -1837
482:              beq          s4, t6, 483f
483:              add          sp, a1, t2
                  xor          s9, tp, s2
                  slti         t4, s7, 555
                  and          t6, zero, a4
                  srli         s8, t5, 19
                  sll          s0, a0, a3
                  bge          a4, a2, 499f
                  srli         t6, ra, 16
                  lui          s11, 642896
                  bne          s3, t6, 512f
                  auipc        t6, 390708
                  sll          t6, s10, s10
                  sra          s11, t1, s7
                  sll          s7, s11, zero
                  sll          s7, a4, a0
                  xori         s2, t4, 508
499:              sltu         t6, a1, zero
                  sltu         s2, zero, s10
                  bltu         t0, a3, 521f
                  lui          a0, 643527
                  nop
                  blt          t3, s2, 513f
                  auipc        s0, 1016245
                  nop
                  blt          t3, s11, 527f
                  sltiu        s3, s3, -9
                  ori          ra, zero, -967
sub_1_15:         jal          t1, 26f
0:                jal          ra, 29f
1:                jal          s3, 13f
2:                jal          s8, 10f
3:                jal          ra, 27f
4:                jal          ra, 19f
5:                jal          ra, 21f
6:                jal          ra, 12f
7:                jal          tp, 6b
8:                jal          a3, 0b
9:                jal          a7, 3b
10:               jal          s6, 7b
11:               jal          ra, 22f
12:               jal          s3, 1b
13:               jal          a4, 25f
14:               jal          ra, 4b
15:               jal          t1, 9b
16:               jal          t1, 15b
17:               jal          t6, 18f
18:               jal          ra, 28f
19:               jal          t0, 23f
20:               jal          ra, 8b
21:               jal          ra, 30f
22:               jal          t4, 2b
23:               jal          a5, 17b
24:               jal          t5, 20b
25:               jal          ra, 24b
26:               jal          s3, 16b
27:               jal          ra, 14b
28:               jal          ra, 11b
29:               jal          ra, 5b
30:               sub          s0, t6, t5
                  xori         a1, t5, -1445
                  bgeu         s10, tp, 523f
512:              blt          s10, s2, 530f
513:              beq          ra, t1, 524f
                  auipc        s7, 273012
                  auipc        a5, 836470
                  blt          s9, s6, 517f
517:              bltu         s10, s5, 524f
                  bge          a3, t6, 520f
                  sltu         s2, zero, s2
520:              slti         sp, s3, 1569
521:              sub          t1, s5, ra
                  bltu         a3, t4, 531f
523:              bge          a4, t4, 535f
524:              auipc        a0, 373938
                  nop
                  auipc        s0, 598319
527:              slli         ra, a7, 12
                  blt          s3, s1, 530f
                  slli         gp, s8, 7
530:              addi         s3, a5, -185
531:              beq          a1, s11, 535f
                  bge          a7, t0, 547f
                  lui          a4, 95645
                  lui          s1, 988977
535:              slli         s3, gp, 14
                  sltu         s3, a4, a6
                  nop
                  add          s9, s2, a3
                  srl          s3, a4, t5
                  xori         a5, a6, -1250
                  addi         a5, a3, -1412
                  and          a0, zero, s6
                  bne          a0, a6, 561f
                  beq          s0, ra, 554f
                  bgeu         tp, a1, 549f
                  sltiu        t1, zero, -874
547:              slt          t1, tp, a4
                  sltu         s0, tp, tp
549:              sltiu        a7, a4, 1109
                  add          t3, s8, s6
                  or           t4, a2, a7
                  xori         s9, a5, -1013
                  sltu         s7, s0, sp
554:              beq          a4, zero, 556f
                  andi         a7, t1, -620
556:              slti         s0, t2, -933
                  bge          t1, t2, 568f
                  bgeu         t2, a4, 567f
                  bge          a2, s7, 561f
                  xori         a4, zero, -590
561:              ori          a2, s10, 1860
                  add          a4, s0, ra
                  sltu         a7, t5, t3
                  srl          a1, t3, s3
                  xori         a7, a0, -1496
                  nop
567:              andi         s1, t1, 1008
568:              slt          t4, s5, zero
                  or           a5, ra, sp
                  or           ra, s5, a5
                  auipc        ra, 267416
                  xor          sp, s1, s7
                  slli         t4, s3, 2
                  add          a1, s10, s7
                  add          ra, s7, s0
                  sub          t6, t2, t3
                  or           a4, s2, t3
                  sub          s1, t5, a1
                  or           s0, a4, s3
                  slti         a5, a6, -714
                  slt          a4, s11, s2
                  bltu         t1, ra, 599f
                  bltu         t6, s0, 585f
                  srli         a7, s5, 26
585:              slt          t4, s7, s11
                  xor          s0, sp, s7
                  add          s7, s2, zero
                  srai         a6, zero, 28
                  lui          a7, 257760
                  xor          sp, t2, a5
                  srli         t1, t0, 4
                  sll          s3, s3, t5
                  auipc        s8, 810934
                  sub          a3, a5, t3
                  bgeu         s0, s11, 601f
                  bgeu         s3, a4, 616f
                  srai         t3, gp, 10
                  sltu         t3, s6, t6
599:              and          s6, a4, s2
                  slli         t4, a4, 17
601:              sll          a1, t6, a7
                  bge          s3, t1, 618f
                  bltu         s8, a2, 615f
                  andi         ra, s4, -580
                  xor          a6, s4, sp
                  sltiu        a4, t2, -1647
                  srl          s0, t5, a7
                  or           t0, a1, t4
                  and          s6, s7, a6
                  srai         tp, s0, 19
                  bne          s6, s0, 626f
                  add          a4, s9, t3
                  bltu         a0, t4, 623f
                  sra          a7, a6, a7
615:              or           a4, s7, t2
616:              sra          s0, t2, s0
                  bltu         s7, ra, 631f
618:              beq          t2, s9, 637f
                  beq          s4, tp, 627f
                  slt          s7, s3, t1
                  sub          t5, a5, s2
                  bgeu         s5, s7, 623f
623:              lui          zero, 793872
                  sub          s1, s9, a0
                  nop
626:              xor          ra, s1, s11
627:              ori          t4, t0, 815
                  auipc        s7, 738185
                  srai         t3, s0, 5
                  blt          s3, tp, 637f
631:              bltu         s11, t3, 651f
                  add          s1, s7, zero
                  bge          t0, a3, 647f
                  beq          gp, s11, 643f
                  lui          a2, 957073
                  slli         t1, a2, 0
637:              sltu         a4, s1, s2
                  slt          zero, t4, s6
                  bne          t4, sp, 640f
640:              slli         a5, s11, 13
                  and          s5, s11, s7
                  slt          sp, s7, s5
643:              nop
                  bge          t0, tp, 653f
                  auipc        s9, 410032
                  ori          tp, t6, 936
647:              andi         t1, s11, -1872
                  sltiu        s1, ra, -574
                  blt          s10, s10, 661f
                  srl          t0, a5, s7
651:              bltu         t2, gp, 671f
                  xor          a4, t3, zero
653:              slti         s7, t0, 109
                  srli         s9, a7, 22
                  srl          s0, s11, t0
                  xori         zero, s2, -770
                  bgeu         t0, s10, 669f
                  add          tp, tp, s11
                  nop
                  sub          a0, s6, s3
661:              sltu         s3, a7, t0
                  sra          t1, s10, gp
                  add          a5, s3, t5
                  andi         t6, t5, 802
                  bgeu         t3, t0, 675f
                  sra          a7, s10, s4
                  sltu         a0, t3, tp
                  ori          t1, ra, 124
669:              addi         a3, t0, 614
                  sll          sp, a0, zero
671:              bne          t2, s9, 674f
                  slli         s1, s11, 26
                  nop
674:              bgeu         ra, a3, 688f
675:              auipc        s8, 821199
                  bltu         t2, t5, 678f
                  xor          s3, s7, a1
678:              slt          a7, tp, tp
                  or           a1, a6, a2
                  andi         t4, s6, 301
                  xori         a1, s10, -830
                  auipc        t0, 1000015
                  sub          gp, a4, s6
                  slti         s6, ra, -425
                  slti         s1, a6, 1659
                  xori         ra, sp, -593
                  ori          s8, s10, -1889
688:              andi         t5, s0, 956
                  xori         s9, ra, -1792
                  srli         a7, s10, 20
                  sra          s6, a3, a5
                  and          s0, t3, t4
                  slt          ra, s0, tp
                  addi         t0, t6, -1882
                  nop
                  sltiu        s3, a5, 1886
                  srli         a0, t6, 26
                  add          s11, s9, t0
                  slti         t5, t1, -1712
                  beq          s1, s7, 701f
701:              beq          zero, t3, 703f
                  sub          sp, s4, t1
703:              xori         a7, s0, 1451
                  addi         s5, t2, -1465
                  srl          a7, s8, a0
                  bgeu         a6, t5, 708f
                  srai         a3, t1, 19
708:              sll          sp, s2, t3
                  srai         a1, a7, 0
                  bge          tp, a5, 725f
                  sll          s7, s2, s1
                  srli         t5, gp, 23
                  bge          a1, t0, 722f
                  ori          t0, a3, 633
                  xori         s2, a0, 1535
                  nop
                  srai         a4, a3, 17
                  bne          t0, s2, 725f
                  ori          sp, t6, 80
                  sub          sp, s11, s2
                  xor          sp, t3, s8
722:              sltiu        s1, s8, 896
                  slli         a2, s5, 0
                  sll          a0, s1, s8
725:              nop
                  addi         tp, a5, 710
                  lui          s11, 201952
                  xor          a7, a1, a0
                  add          t3, a0, tp
                  srl          zero, zero, a1
                  auipc        a1, 775807
                  xor          a4, a2, s10
                  srl          t3, t6, t2
                  or           a3, s4, s8
                  srai         s8, t3, 19
                  srli         t4, ra, 0
                  beq          a2, a3, 757f
                  ori          sp, a5, -327
                  xori         t4, t0, -1417
                  addi         s7, t3, -1018
                  auipc        a5, 592648
                  andi         s3, s6, 1795
                  xor          s6, s3, s5
                  ori          zero, s3, -1651
                  sltu         zero, t5, s3
                  add          t4, s5, a0
                  srli         t0, t6, 8
                  bltu         s11, t0, 754f
                  bge          s0, a2, 750f
750:              srai         a4, s9, 11
                  srl          s8, s6, a1
                  srl          s6, t1, s0
                  addi         a5, tp, -1591
754:              sll          t5, a5, t2
                  slt          t0, a4, a4
                  sub          a0, t6, s6
757:              beq          s1, t5, 769f
                  lui          a2, 618920
                  srli         a6, s10, 31
                  sltu         a6, s10, t5
                  add          a4, t5, s4
                  srl          s0, t3, a4
                  blt          a4, a3, 775f
                  srl          s5, t6, s3
                  bge          a7, s9, 777f
                  slt          a0, t2, s11
                  and          t6, s6, s2
                  slt          ra, s0, s5
769:              xor          a6, a2, ra
                  xor          a4, a5, t3
                  sltiu        sp, gp, -671
                  blt          s9, s1, 790f
                  sub          t4, a1, t5
                  beq          a1, a1, 778f
775:              andi         a3, zero, -953
                  sltiu        a6, a6, 1934
777:              xori         s3, t5, 204
778:              ori          a3, a6, 272
                  andi         s6, s6, 1329
                  ori          s2, s1, 1037
                  srli         ra, a6, 28
                  sra          t4, zero, s1
                  bge          s9, s9, 794f
                  and          s1, s11, t0
                  xor          sp, s3, s9
                  bne          gp, tp, 795f
                  slt          s2, t2, s6
                  srai         s9, s9, 1
                  xori         a0, a2, 1126
790:              sltiu        s1, s0, -739
                  auipc        s6, 197902
                  add          s2, a0, a7
                  sll          zero, gp, a0
794:              blt          t2, a0, 811f
795:              sltiu        a4, t0, 1932
                  srli         a1, s9, 8
                  bgeu         t3, s5, 816f
                  xor          gp, s10, s2
                  or           s1, t4, t2
                  sub          t4, t2, gp
                  sra          sp, a2, t4
                  bne          s4, a4, 822f
                  sltiu        s8, s0, 1293
                  sra          s5, s7, t2
                  and          t1, a3, a3
                  bne          a3, s5, 826f
                  sltiu        s8, a1, -1944
                  blt          s2, s11, 811f
                  ori          a0, s4, 697
                  sltiu        a7, zero, -712
811:              sub          a4, sp, gp
                  add          t6, ra, s8
                  ori          zero, s4, -503
                  beq          s6, a2, 824f
                  slli         s1, s2, 16
816:              xor          s1, t1, a1
                  sltu         s3, a0, s5
                  srli         s5, t1, 7
                  addi         s9, t4, 381
                  blt          a1, t3, 834f
                  slti         tp, t5, -912
822:              bltu         s10, s11, 832f
                  srl          ra, s9, s7
824:              or           a4, s11, s0
                  slti         s8, s10, -1773
826:              lui          t5, 2663
                  bgeu         a4, s0, 837f
                  sltu         a0, t2, s7
                  sll          s0, t3, a4
                  sra          a5, t0, s7
                  blt          s11, s10, 847f
832:              slti         gp, zero, -1325
                  sll          a0, t4, s0
834:              addi         t5, s1, -1797
                  sltiu        t4, sp, 1581
                  xori         a3, a0, 1867
837:              srai         s3, gp, 21
                  ori          a5, s3, 303
                  blt          a1, s7, 847f
                  or           a2, t5, s0
                  sll          a2, t4, s9
                  andi         zero, a7, -1968
                  slli         s5, s2, 6
                  sra          s5, s7, t2
                  nop
                  sra          a3, zero, s2
847:              bne          t1, ra, 856f
                  andi         ra, s1, -1974
                  lui          t6, 439290
                  and          a2, t5, t5
                  srl          t0, s9, s5
                  bge          s4, t2, 861f
                  beq          a1, s11, 867f
                  beq          gp, s3, 864f
                  slt          t5, t0, t1
856:              slt          t0, a4, a5
                  slti         a6, t3, 1564
                  bge          zero, a3, 876f
                  xor          t3, t4, a1
                  or           a0, a5, a2
861:              bge          a2, a0, 863f
                  bltu         s2, a1, 866f
863:              sra          gp, tp, tp
864:              nop
                  xor          t5, t0, t1
866:              bne          s4, s2, 873f
867:              ori          a7, s6, 851
                  or           s1, s11, s11
                  bgeu         s10, t4, 879f
                  bltu         s9, a2, 890f
                  slli         tp, a0, 23
                  bge          t2, t6, 892f
873:              slli         s3, t5, 9
                  lui          s3, 89119
                  bne          zero, s10, 881f
876:              bne          s9, t3, 888f
                  lui          s8, 48078
                  slli         a3, t1, 23
879:              andi         tp, a6, 1992
                  ori          t1, s4, -968
881:              blt          a3, s8, 882f
882:              sltu         a4, s8, s7
                  add          a5, a3, s2
                  and          s11, zero, zero
                  slt          s7, a1, a7
                  auipc        tp, 197005
                  addi         a4, s10, 699
888:              addi         a1, t1, 217
                  xor          tp, s10, a5
890:              srli         a4, s7, 8
                  auipc        t1, 855992
892:              blt          a1, s8, 908f
                  bge          t6, zero, 894f
894:              add          s9, a0, t2
                  or           s6, a6, t5
                  slt          t6, s5, s4
                  nop
                  sll          s9, s10, a7
                  and          s6, t2, s4
                  sltiu        tp, a4, -1221
                  sra          t6, s1, s9
                  bgeu         s1, s8, 905f
                  srai         s8, a7, 19
                  slt          a5, s2, t4
905:              slti         s6, gp, -1616
                  srai         s5, s0, 23
                  lui          s5, 320426
908:              slli         a2, s1, 31
                  slti         t5, s9, -960
                  sra          s2, s11, a2
                  sltu         ra, t4, t3
                  beq          gp, s4, 932f
                  slti         gp, t3, -1132
                  slli         s7, s5, 18
                  srli         s7, s6, 16
                  slti         a0, s11, 1232
                  sub          ra, ra, a1
                  lui          s6, 477889
                  andi         s7, a1, -807
                  bge          s1, s11, 939f
                  bltu         a7, s10, 923f
                  bgeu         gp, t4, 930f
923:              bgeu         a3, s11, 935f
                  nop
                  and          t4, s5, a6
                  bgeu         t6, a0, 935f
                  slli         a0, t5, 3
                  sltu         t6, t5, s8
                  bge          a6, a6, 940f
930:              sll          a5, a5, tp
                  xor          s9, t2, a5
sub_1_23:         jal          t1, 12f
0:                jal          ra, 23f
1:                jal          ra, 4f
2:                jal          ra, 18f
3:                jal          ra, 5f
4:                jal          ra, 17f
5:                jal          s8, 9f
6:                jal          ra, 7f
7:                jal          ra, 2b
8:                jal          ra, 15f
9:                jal          t0, 24f
10:               jal          ra, 16f
11:               jal          t1, 20f
12:               jal          ra, 8b
13:               jal          t0, 1b
14:               jal          ra, 0b
15:               jal          ra, 11b
16:               jal          a1, 22f
17:               jal          t1, 6b
18:               jal          t1, 19f
19:               jal          a6, 21f
20:               jal          t1, 10b
21:               jal          a1, 3b
22:               jal          ra, 14b
23:               jal          t1, 13b
24:               lui          a3, 260129
932:              addi         a7, s2, -147
                  slt          zero, s10, zero
                  ori          s6, s1, -1279
935:              srl          s0, t5, a2
                  xor          s1, t5, a2
                  bgeu         s1, s7, 952f
                  addi         s0, tp, 1319
939:              bne          t2, a3, 949f
940:              slli         s8, s6, 17
                  add          s3, zero, a1
                  beq          s8, s6, 951f
                  ori          t5, a5, 560
                  xori         s11, s3, 1812
                  bgeu         a5, a7, 947f
                  and          s9, t2, s1
947:              ori          s5, zero, 1947
                  nop
949:              nop
                  beq          a5, s11, 967f
951:              sll          a7, s4, s8
952:              srl          tp, s1, s0
                  andi         ra, t0, 879
                  srl          s6, s3, s10
                  sra          t4, s9, s11
                  andi         a5, sp, 598
                  nop
                  bge          t2, s9, 972f
                  add          s8, a2, a2
                  nop
                  bne          a7, s9, 973f
                  slt          a5, s2, s4
                  blt          a7, a2, 983f
                  sub          s2, a6, s6
                  xori         t6, a1, -972
                  slli         t4, s5, 1
967:              sltu         zero, s8, s2
                  xor          a6, a1, s10
                  auipc        s2, 387145
                  srl          s5, t2, s9
                  slt          s11, s11, a1
972:              or           s7, s0, s3
973:              blt          t5, t3, 991f
                  xor          a2, s9, s4
                  sltu         a3, t6, zero
                  or           a2, t0, gp
                  sltu         a4, sp, s2
                  srli         s1, a7, 18
                  bne          a7, s3, 981f
                  add          s0, t0, s0
981:              ori          t4, s7, -24
                  beq          s2, ra, 992f
983:              sub          zero, s4, t1
                  sltu         s8, gp, a3
                  xor          a2, s2, ra
                  sll          a5, a3, s1
                  bltu         t4, s8, 1007f
                  sub          gp, s6, s10
                  slti         a2, s9, -1501
                  slti         a2, a5, -1158
991:              beq          s7, gp, 999f
992:              beq          tp, a2, 1009f
                  bne          t4, ra, 1003f
sub_1_5:          jal          t1, 13f
0:                jal          ra, 6f
1:                jal          s1, 9f
2:                jal          tp, 15f
3:                jal          ra, 2b
4:                jal          t1, 16f
5:                jal          ra, 7f
6:                jal          ra, 11f
7:                jal          t4, 0b
8:                jal          s0, 18f
9:                jal          ra, 12f
10:               jal          ra, 1b
11:               jal          ra, 17f
12:               jal          s0, 20f
13:               jal          s6, 4b
14:               jal          t1, 8b
15:               jal          t1, 14b
16:               jal          ra, 5b
17:               jal          s5, 3b
18:               jal          gp, 19f
19:               jal          ra, 10b
20:               srl          s9, gp, a5
                  sll          s6, s10, s0
                  slt          ra, a1, s11
                  bge          t2, s11, 1010f
                  sub          a2, s11, s3
                  xor          zero, s10, s2
999:              addi         tp, t5, -1548
                  slt          t1, s7, s11
                  lui          a3, 658079
                  sltiu        ra, s11, -1092
1003:             bne          s0, s10, 1023f
                  sltiu        s1, a1, 547
                  add          t5, s7, s8
                  and          s8, t5, s9
1007:             xori         a0, s5, -1593
                  lui          a7, 1034601
1009:             auipc        zero, 945304
1010:             slt          a7, a3, s1
                  srli         a0, t4, 23
                  xori         s7, t4, 1943
                  beq          a2, a6, 1025f
                  sltiu        s5, s4, 1554
                  srli         s11, zero, 26
                  andi         a4, s9, -1111
                  sub          s1, s11, s6
                  bltu         t1, a0, 1029f
                  bne          s9, t5, 1038f
                  srli         ra, s0, 31
                  sll          a6, t6, s3
                  slti         a7, s8, -1494
1023:             xor          s9, gp, t1
                  bltu         zero, zero, 1031f
1025:             lui          s7, 805564
                  and          s3, s8, s3
                  addi         s7, s7, 500
                  auipc        t6, 644130
1029:             lui          s9, 686661
                  auipc        a7, 1897
1031:             sltiu        s8, s10, -419
                  andi         sp, a3, 644
                  lui          s5, 673405
                  xor          a6, s7, s11
                  bltu         t0, s5, 1050f
                  xori         s9, s2, 431
                  blt          s0, a1, 1049f
1038:             srl          a3, a5, s1
                  sltiu        zero, zero, 331
                  or           s7, s8, gp
                  andi         t1, a1, -1324
                  bne          a5, t0, 1044f
                  sltu         s2, a2, t3
1044:             or           s7, sp, s8
                  slti         a3, s10, 1237
                  srl          s9, a2, t1
                  bge          t4, t4, 1056f
                  andi         a1, t3, 2022
1049:             slt          s5, t1, s3
1050:             sra          a0, s0, s9
                  ori          a6, s5, -1135
                  slti         s8, t1, -1104
                  nop
                  srl          a5, s6, a3
                  slti         a3, s2, -52
1056:             nop
                  auipc        t1, 873124
                  sub          a6, a5, s2
                  sra          a7, zero, t2
                  bne          t5, s10, 1069f
                  srli         tp, t1, 23
                  beq          s9, t6, 1063f
1063:             srl          s7, s0, a5
                  sll          tp, s9, a1
                  and          s5, a4, s3
                  sub          s1, t2, t5
                  xori         s3, tp, -1979
                  andi         a0, s5, -708
1069:             sll          a6, sp, s7
                  nop
                  sltiu        gp, ra, 627
                  srl          s6, s4, t1
                  slli         zero, a7, 11
                  slli         a6, s2, 14
                  addi         zero, s4, -1442
                  srai         a4, s1, 21
                  srl          s3, t6, s11
                  srai         t6, s1, 21
                  slti         s2, t6, 1796
                  sll          s1, s4, a6
                  slti         t5, s0, 534
                  auipc        a2, 693476
                  or           t5, gp, a0
                  and          a3, a2, s8
                  auipc        gp, 311843
                  ori          s0, gp, 397
                  srl          s0, s9, a0
                  sra          s2, a7, a6
                  slt          s0, zero, t0
                  beq          a1, s2, 1092f
                  xor          a3, s7, sp
1092:             sub          a2, s4, t3
                  sltu         s9, t1, s4
                  bne          ra, s2, 1108f
                  blt          a1, t0, 1104f
                  srai         a2, t1, 5
                  sltu         s7, s11, tp
                  andi         sp, s6, 419
                  srli         a0, gp, 13
                  blt          s3, s6, 1106f
                  xor          s5, t6, a0
                  addi         ra, a6, -1106
                  auipc        a3, 926691
1104:             andi         s11, s9, -821
                  sll          gp, a0, zero
1106:             srai         s0, gp, 2
                  bgeu         s6, t6, 1110f
1108:             sll          a1, s2, s9
                  bgeu         s0, s5, 1125f
1110:             sltu         s3, s6, gp
                  bne          s0, s4, 1121f
                  srai         gp, s5, 7
                  slli         t4, s11, 6
                  sltiu        a6, s3, -1113
                  blt          t0, s8, 1127f
                  slti         t6, a0, -1312
                  bne          a2, sp, 1121f
                  add          s2, s2, t3
                  sltiu        a0, sp, -372
                  auipc        a0, 617314
1121:             slli         zero, gp, 25
                  andi         t0, a2, 982
                  bge          s5, tp, 1124f
1124:             add          t3, a5, a0
1125:             lui          a7, 88119
                  lui          s0, 312962
1127:             sra          s11, s5, s9
                  xor          a1, a5, t3
                  nop
                  slti         s1, s0, 279
                  auipc        s11, 94291
                  bne          t6, t4, 1151f
                  and          sp, s7, a7
                  srli         s9, a7, 10
                  xori         t4, s9, 366
                  sra          gp, a5, t3
                  bge          s0, a3, 1147f
                  srli         t4, s4, 0
                  auipc        a1, 654570
                  or           gp, a1, t4
                  bne          a4, s6, 1161f
                  sltiu        s1, s6, -377
                  srli         s0, a0, 7
                  slt          sp, gp, s4
                  srai         t6, ra, 28
                  sltu         zero, zero, a0
1147:             add          t3, s11, a6
                  sll          s8, s2, t0
                  slti         t0, t2, 1539
                  bne          t5, t3, 1164f
1151:             or           gp, s8, s11
                  bgeu         gp, a0, 1154f
                  slli         t5, s0, 31
1154:             srai         s6, s6, 15
                  beq          t0, tp, 1175f
                  sll          ra, a0, s0
                  xori         t0, a5, 1536
                  lui          s6, 449139
                  slt          gp, t3, s11
                  beq          s9, s9, 1171f
1161:             beq          t3, gp, 1178f
                  blt          a6, a3, 1169f
                  and          t3, t4, tp
1164:             slt          t1, s1, s2
                  beq          s9, gp, 1167f
                  slt          zero, t0, s11
1167:             add          zero, tp, a3
                  slli         t5, t1, 15
1169:             slti         a7, ra, -1662
                  sll          sp, t3, a2
1171:             srli         s0, zero, 26
                  slli         s0, s8, 5
                  or           t5, s8, s9
                  srai         t4, a3, 27
1175:             srai         ra, t5, 6
                  slli         t5, t3, 14
                  nop
                  slt          a2, t6, s8
                  andi         a4, t2, 1872
                  srl          a4, s10, a6
                  nop
                  sltu         tp, s3, s10
                  nop
                  sub          a7, t1, ra
                  slti         a6, a1, -1632
sub_1_j2:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  beq          s4, t6, 1189f
1178:             blt          s1, tp, 1193f
                  bltu         a0, s6, 1180f
1180:             ori          s7, t6, 240
                  add          s9, a6, t6
                  slti         a4, s7, -780
                  nop
                  or           gp, a1, gp
                  lui          ra, 859018
                  or           s0, tp, s0
                  slt          t5, s2, tp
                  slti         s2, s7, 219
1189:             addi         t0, s10, 1278
                  slli         a6, s5, 18
                  bge          s4, t5, 1203f
                  ori          a3, s6, 1222
1193:             blt          a1, a5, 1209f
                  slt          a1, gp, gp
                  ori          a1, s6, -31
                  srl          t5, a7, t2
                  srai         gp, t5, 9
                  slli         t3, s1, 25
                  sll          t6, s4, a7
                  bge          a1, a4, 1220f
                  lui          zero, 462906
                  nop
1203:             nop
                  beq          s3, a4, 1213f
                  auipc        t1, 614457
                  sub          gp, a3, a4
                  addi         a6, a0, -1065
                  srli         ra, gp, 20
1209:             bge          s6, a7, 1218f
                  beq          s11, t3, 1211f
1211:             andi         a5, s1, -31
                  slli         t0, tp, 8
1213:             slli         s9, s0, 27
                  srli         tp, s11, 21
                  ori          a4, a4, 1468
                  bltu         s2, t5, 1226f
                  or           t5, a2, s7
1218:             lui          sp, 496769
                  sltiu        t3, a4, -1978
1220:             srli         a6, a1, 2
                  andi         s9, ra, 1712
                  nop
                  or           t6, s6, s2
                  xori         a6, t2, -877
                  srl          t6, gp, a3
1226:             andi         s0, t1, 999
                  lw           t1, 4(s10)
                  xor          a2, a0, a6
                  addi         s10, s10, 64
                  add          a6, s10, s1
                  auipc        t4, 583584
                  sub          tp, t1, a0
                  add          s2, t1, a0
1753:             addi x5, x6, 0
1753:             jalr x5, x5, 0
sub_4:            nop
                  bge          t3, t3, sub_4_stack_p
                  and          ra, s1, t6
                  slti         s9, t5, -810
                  slli         t5, a4, 20
                  slt          a2, t1, t2
sub_4_stack_p:    addi         s10, s10, -20
                  addi         s3, s1, 1745
                  sw           t1, 4(s10)
                  sll          t5, sp, a1
                  andi         a3, s10, 1513
sub_4_2:          jal          t1, 10f
0:                jal          gp, 6f
1:                jal          ra, 3f
2:                jal          sp, 9f
3:                jal          ra, 4f
4:                jal          ra, 2b
5:                jal          ra, 7f
6:                jal          t0, 11f
7:                jal          ra, 8f
8:                jal          ra, 0b
9:                jal          ra, 5b
10:               jal          ra, 1b
11:               xori         a2, a3, -1244
sub_4_3:          jal          t1, 6f
0:                jal          a5, 15f
1:                jal          tp, 3f
2:                jal          ra, 9f
3:                jal          a0, 0b
4:                jal          ra, 7f
5:                jal          t1, 2b
6:                jal          a7, 17f
7:                jal          t1, 5b
8:                jal          ra, 10f
9:                jal          t1, 12f
10:               jal          ra, 4b
11:               jal          ra, 14f
12:               jal          ra, 19f
13:               jal          ra, 18f
14:               jal          ra, 8b
15:               jal          ra, 11b
16:               jal          t1, 13b
17:               jal          t6, 16b
18:               jal          s7, 1b
19:               or           a4, a5, t4
sub_4_0:          jal          t1, 1f
0:                jal          ra, 11f
1:                jal          ra, 6f
2:                jal          ra, 14f
3:                jal          ra, 12f
4:                jal          s5, 0b
5:                jal          t5, 4b
6:                jal          ra, 16f
7:                jal          t3, 18f
8:                jal          t1, 2b
9:                jal          ra, 5b
10:               jal          t1, 17f
11:               jal          t1, 13f
12:               jal          ra, 15f
13:               jal          a7, 10b
14:               jal          gp, 9b
15:               jal          ra, 8b
16:               jal          t1, 3b
17:               jal          t5, 7b
18:               lui          s7, 376345
                  addi         s0, t0, 1202
                  auipc        t0, 141221
                  addi         t4, s3, 931
                  sub          a0, s7, t0
                  ori          s2, t6, -1056
                  sll          s5, a3, t1
                  blt          tp, a1, 22f
                  blt          t6, s8, 25f
                  bne          a6, a7, 21f
                  xori         t1, s8, 1234
                  xori         a6, t5, 1206
                  srl          s11, s5, s1
                  sra          t6, t4, a2
                  xor          t4, zero, sp
                  blt          s7, gp, 17f
                  xori         s11, t4, 258
                  slt          tp, t2, s5
17:               sub          s8, gp, t2
                  add          s3, s1, t3
                  sltu         s6, s3, s6
                  auipc        t1, 926893
21:               lui          t0, 529811
22:               slt          s0, t0, t5
                  beq          ra, sp, 41f
                  xor          a2, a0, zero
25:               xor          t0, t4, tp
                  bne          t6, a2, 39f
                  slli         s3, t0, 0
                  add          a6, s8, s0
                  srl          s7, s9, a7
                  bge          a2, s8, 47f
                  sll          a7, t4, t6
                  auipc        s2, 77392
                  bge          t5, s6, 43f
                  xori         s9, s8, 1464
                  slti         gp, a0, 71
                  bgeu         ra, t3, 55f
                  xori         a0, a3, -1446
                  slt          t5, t4, t5
39:               nop
                  sltiu        a2, s10, -1058
41:               beq          t5, a7, 51f
                  nop
43:               addi         zero, zero, -1807
                  bge          sp, t4, 50f
                  add          t1, s11, t0
                  srai         tp, t0, 10
47:               bltu         s4, a2, 63f
                  sll          t5, s4, tp
                  xori         a5, t4, 1191
50:               add          a7, s4, s0
51:               xor          a0, a2, s10
                  slli         t3, s5, 22
                  srli         t4, s9, 19
                  auipc        a2, 792431
55:               and          s1, a3, s2
                  bne          sp, s10, 70f
                  nop
                  and          s8, s2, a7
                  bltu         s4, t3, 79f
                  srai         sp, a3, 19
                  slti         t6, s2, -1185
                  xori         t4, tp, 1959
63:               and          tp, a2, s3
                  sltiu        s1, s3, -1176
                  srl          zero, a4, s8
                  blt          s11, s1, 71f
                  lui          a6, 464016
                  srli         t6, s1, 24
                  srai         t5, s5, 12
70:               beq          tp, t4, 79f
71:               beq          tp, s7, 83f
                  srl          t1, tp, ra
                  sltiu        s0, s5, 1889
                  xor          ra, a2, ra
                  ori          s9, t6, 899
                  and          a2, s5, s9
                  sltiu        t3, a0, 740
                  slt          gp, a2, a3
79:               sra          s3, gp, s4
                  srl          zero, a4, s0
                  sra          s0, gp, s3
                  srl          s0, ra, s10
83:               lui          a3, 855561
                  srl          t5, s8, a3
                  sltiu        s3, a6, 332
                  blt          t4, t1, 87f
87:               sll          tp, a1, t6
                  lui          s3, 416225
                  slt          s6, t3, t1
                  lui          s1, 976039
                  nop
                  sltiu        zero, a0, -1990
                  beq          s1, t2, 109f
                  bge          gp, s0, 102f
                  add          t0, a7, a5
                  slt          a7, a3, tp
                  sltu         ra, s2, sp
                  addi         t0, t5, -1926
                  xor          t1, a6, s5
                  and          s8, zero, t6
                  bltu         s4, s10, 114f
102:              slt          s11, a5, s0
                  srl          t6, a3, s3
                  bgeu         a6, t3, 118f
                  ori          s7, s2, 696
                  bne          a7, s7, 115f
                  add          t1, s3, ra
                  blt          s1, s10, 110f
109:              srli         a3, a0, 15
110:              sltu         s6, a6, s11
                  bltu         t0, zero, 118f
                  andi         gp, sp, 248
                  srl          s3, s3, a0
114:              xor          a7, t5, s4
115:              nop
                  lui          a3, 751032
                  sub          s1, s9, t1
118:              sll          a5, sp, sp
                  slt          a7, zero, s5
                  slt          s6, s1, zero
                  slt          gp, a2, a2
                  and          s5, s11, s5
                  sltiu        a5, t5, -726
                  srli         a4, t2, 24
                  xori         a0, s8, 1674
                  srl          tp, t3, a2
                  sra          a4, zero, a5
                  srl          s0, a1, tp
                  srai         t5, s6, 28
                  sra          a2, s2, s3
                  addi         t3, a7, -1406
                  bne          s1, a7, 152f
                  slli         t3, a7, 31
                  lui          s6, 822519
                  ori          a0, a7, -1320
                  ori          t5, s7, 418
                  bltu         s7, t1, 141f
                  slli         tp, s4, 26
                  bge          a7, t2, 148f
                  sll          s0, s9, s7
141:              bgeu         a5, t6, 145f
                  srl          s1, a3, ra
                  srli         s3, a5, 0
sub_4_1:          jal          t1, 14f
0:                jal          ra, 11f
1:                jal          ra, 2f
2:                jal          ra, 17f
3:                jal          a7, 1b
4:                jal          ra, 16f
5:                jal          t1, 19f
6:                jal          t1, 12f
7:                jal          ra, 0b
8:                jal          s1, 7b
9:                jal          t0, 6b
10:               jal          ra, 13f
11:               jal          s3, 15f
12:               jal          ra, 5b
13:               jal          ra, 3b
14:               jal          ra, 4b
15:               jal          s6, 9b
16:               jal          tp, 10b
17:               jal          a7, 18f
18:               jal          ra, 8b
19:               slt          t5, a3, sp
                  sll          t1, a6, ra
145:              sltu         a1, s10, sp
                  add          s5, t4, t2
                  auipc        zero, 907182
148:              sra          s2, t4, ra
                  sltiu        s11, a5, -1917
                  sub          s3, a2, a3
                  or           s6, zero, s11
152:              xor          s3, a7, t1
                  addi         gp, t6, -779
                  bltu         a6, a6, 160f
                  sltu         s0, s11, a7
                  andi         s5, t0, 423
                  lui          s8, 386783
                  sra          t6, a0, s6
                  sltiu        a5, gp, 928
160:              sltu         t3, gp, zero
                  xor          t4, s9, s0
                  sll          t0, a3, sp
                  slli         s0, s11, 0
                  blt          s7, s0, 176f
                  slti         a3, s1, -1683
                  srli         t3, ra, 1
                  xor          t4, a6, zero
                  srli         t1, ra, 14
                  auipc        zero, 41933
                  srl          s6, s11, t3
                  xor          s2, s4, tp
                  sltiu        zero, t6, 76
                  slti         s11, a1, -1765
                  xori         a1, gp, -2023
                  srai         s11, a0, 0
176:              srl          a5, t5, s9
                  sltu         t6, s4, s4
                  and          t0, s11, s5
                  xori         s11, s8, -957
                  sltiu        a7, s3, -6
                  addi         s6, a0, 1345
                  srli         s2, t5, 16
                  slti         ra, a5, -1469
                  srl          a6, t5, t2
                  bge          s11, s2, 198f
                  or           zero, a7, a4
                  srl          a7, sp, a4
                  sra          a1, s10, a1
                  beq          s1, a4, 192f
                  beq          s4, t3, 196f
                  sll          a0, ra, s4
192:              andi         s1, s4, 1748
                  auipc        t0, 1048078
                  slli         a6, s9, 7
                  and          a6, s0, s6
196:              beq          s10, a5, 216f
                  srli         a3, t0, 16
198:              andi         gp, t5, 384
                  sltu         s3, s6, s7
                  andi         a6, a4, 2028
                  add          t0, s7, t0
                  srai         a1, s2, 25
                  bltu         s5, a7, 223f
                  beq          s3, zero, 214f
                  sra          t5, s3, s2
                  srl          a0, s4, s3
                  sub          t1, t0, t2
                  sub          a4, a0, t3
                  xor          a3, tp, gp
                  srai         t5, tp, 10
                  sub          t5, a7, s3
                  bne          s5, a6, 221f
                  sub          s11, a3, a4
214:              bge          s5, s1, 231f
                  slli         t1, t4, 16
216:              andi         t6, s9, 1616
                  xor          s2, s1, t3
                  slti         t3, t4, -458
                  beq          s6, a2, 233f
                  xor          t0, sp, a3
221:              add          s8, sp, s10
                  sltu         sp, tp, zero
223:              bgeu         s11, a3, 236f
                  add          t1, s5, t4
                  sub          t6, a2, a3
                  auipc        t6, 118051
                  ori          a6, s7, 1180
                  and          t5, a3, t3
                  slti         t1, zero, 1292
                  ori          t3, zero, 161
231:              slli         a7, sp, 9
                  bgeu         sp, a5, 236f
233:              beq          a4, s3, 236f
                  bge          s1, zero, 236f
                  srli         a3, t2, 15
236:              slti         s6, s6, -897
                  lw           t1, 4(s10)
                  sll          a5, t1, a6
                  nop
                  andi         s9, a3, -145
                  auipc        s11, 115285
                  addi         s10, s10, 20
                  ori          ra, a0, 359
                  srli         a5, s9, 11
331:              addi x1, x6, 1
331:              jalr x1, x1, 0
sub_3:            bgeu         s8, s2, sub_3_stack_p
                  sltu         t0, s10, a2
                  sltu         zero, s0, a5
                  xori         s1, s3, -1045
sub_3_stack_p:    addi         s10, s10, -24
                  add          s9, s3, s6
                  sll          t4, t6, t6
                  sw           t1, 4(s10)
                  sltu         a3, a7, a5
                  xori         gp, t5, 175
                  and          a5, s8, s4
                  andi         ra, t2, -862
                  srli         s3, tp, 11
                  la           t4, sub_5
                  sll          s5, s11, ra
                  sltu         s2, a1, a3
                  xor          s0, s11, s5
                  lui          s2, 225158
                  addi         t4, t4, -470
                  sra          s2, s3, t3
sub_3_j5:         jalr         t1, t4, 471 #jump sub_3 -> sub_5
sub_3_3:          jal          t1, 0f
0:                jal          ra, 19f
1:                jal          ra, 5f
2:                jal          ra, 6f
3:                jal          ra, 13f
4:                jal          ra, 10f
5:                jal          ra, 18f
6:                jal          ra, 12f
7:                jal          tp, 11f
8:                jal          t1, 14f
9:                jal          t1, 8b
10:               jal          t1, 16f
11:               jal          s6, 23f
12:               jal          t1, 15f
13:               jal          ra, 9b
14:               jal          t1, 20f
15:               jal          s1, 21f
16:               jal          s2, 3b
17:               jal          s7, 7b
18:               jal          ra, 4b
19:               jal          ra, 22f
20:               jal          a5, 17b
21:               jal          sp, 1b
22:               jal          ra, 2b
23:               srai         t5, sp, 5
sub_3_0:          jal          t1, 1f
0:                jal          ra, 11f
1:                jal          ra, 9f
2:                jal          ra, 3f
3:                jal          ra, 5f
4:                jal          ra, 7f
5:                jal          a0, 4b
6:                jal          t1, 8f
7:                jal          ra, 6b
8:                jal          t3, 0b
9:                jal          ra, 10f
10:               jal          t1, 2b
11:               slti         ra, a0, -1315
sub_3_2:          jal          t1, 13f
0:                jal          t1, 1f
1:                jal          ra, 14f
2:                jal          t4, 3f
3:                jal          t0, 8f
4:                jal          ra, 12f
5:                jal          gp, 6f
6:                jal          ra, 10f
7:                jal          ra, 11f
8:                jal          t1, 9f
9:                jal          t1, 7b
10:               jal          ra, 0b
11:               jal          ra, 5b
12:               jal          ra, 2b
13:               jal          ra, 4b
14:               sltu         s11, t6, s10
                  sub          t6, s7, tp
                  andi         a4, a6, -1067
                  add          s6, a5, t3
                  sub          zero, a7, t4
                  bge          ra, t2, 15f
                  bltu         a4, s11, 20f
                  xori         s5, t3, 654
                  sll          s8, s11, zero
                  xor          t5, s6, a7
                  sub          a6, t1, t2
                  slti         s9, t0, 1695
                  bltu         s4, s9, 30f
                  and          zero, sp, s8
                  nop
                  sra          a3, s0, tp
15:               slti         gp, t6, 1073
                  bne          s9, a4, 18f
                  or           a6, a6, sp
18:               sra          a6, sp, s1
                  bge          s9, a0, 26f
20:               andi         a3, t3, 86
                  srl          s7, t2, a3
                  sub          s2, s10, s5
                  srli         s1, s3, 5
                  nop
                  nop
26:               bltu         a2, zero, 38f
                  slli         t3, a2, 4
                  bgeu         a2, s2, 32f
                  sub          s5, s11, t3
30:               beq          t6, a0, 46f
                  lui          s5, 435638
32:               add          t3, a7, a0
                  bgeu         gp, a0, 45f
                  andi         s3, tp, -359
                  xori         t3, gp, 888
                  blt          a3, s5, 50f
                  ori          a1, t1, 1983
38:               andi         sp, s6, 1598
                  slt          s3, t3, a1
                  sub          s8, t3, s4
                  srai         a3, tp, 28
                  sltiu        t0, s5, 1196
                  bne          s5, a5, 51f
                  and          s11, gp, a6
45:               srai         s5, s8, 0
46:               bgeu         s8, t3, 65f
                  xori         s8, a1, 672
                  srli         t0, a5, 29
                  sll          tp, a3, t4
50:               srli         t4, s7, 23
51:               sll          t3, gp, s8
                  add          s3, s10, s9
                  bne          tp, s10, 56f
                  slt          t3, ra, a0
                  blt          t5, a5, 70f
56:               slti         s2, s11, 1670
                  add          sp, tp, t5
                  andi         a5, a4, -914
                  bgeu         t3, s6, 78f
                  slli         tp, s8, 10
                  blt          a0, a2, 70f
                  sub          s8, a3, sp
                  and          t4, s6, tp
                  bne          s8, s11, 73f
65:               auipc        s2, 128043
                  sll          s2, a7, s1
                  add          s0, s9, a2
                  beq          s7, s10, 75f
                  add          s5, s7, s1
70:               blt          zero, a3, 82f
                  add          a2, a2, s3
                  bgeu         s4, gp, 92f
73:               and          a1, s6, s8
                  auipc        s3, 78655
75:               sltiu        s6, s1, 1122
                  slti         tp, sp, 509
                  sub          gp, a3, t5
78:               sra          s3, a1, sp
                  srl          a4, zero, s8
                  bne          t2, a7, 94f
                  xori         t3, a5, -383
82:               slti         a6, tp, -1651
                  addi         t6, t0, -519
                  lui          t6, 698779
                  slli         a5, gp, 12
                  beq          s7, a2, 94f
                  nop
                  sltiu        s9, s4, -784
                  nop
                  blt          t5, t3, 103f
                  addi         a5, t2, 101
92:               srli         sp, s1, 11
                  srl          a7, s11, t5
94:               auipc        s5, 2698
                  sltiu        sp, gp, 1888
                  lui          s9, 589766
                  nop
                  slti         a5, s2, 1072
                  sra          s0, t6, ra
                  slli         t1, s10, 19
                  bge          s5, s10, 111f
                  and          a4, s4, gp
103:              srl          gp, a4, a6
                  sra          a4, s1, a5
                  lui          s7, 896048
                  or           t5, ra, t4
                  beq          s1, t0, 124f
                  ori          gp, s9, 204
                  lui          a7, 955453
                  sltiu        a2, s7, -1100
111:              addi         s7, a2, 1407
                  bgeu         s5, t3, 119f
                  auipc        gp, 256914
                  slt          s5, a7, a5
                  auipc        a6, 702930
                  srl          s3, a4, s7
                  srli         t6, a0, 15
                  sltiu        s11, a0, 1880
119:              srai         t3, a0, 4
                  bltu         t5, s10, 136f
                  sll          s5, gp, a2
                  sra          a4, a0, s10
                  sra          t3, t3, s1
124:              srli         s9, a4, 2
                  blt          s2, a7, 127f
                  ori          s1, s8, 1628
127:              auipc        t3, 104814
                  sra          t3, a2, a5
                  ori          t6, s10, -1480
                  beq          s7, t5, 144f
                  andi         s5, a0, 1417
                  or           t3, s11, s1
                  bgeu         a0, ra, 147f
                  ori          tp, t1, -381
                  or           tp, zero, s0
136:              ori          t6, a4, 453
                  or           t3, t3, tp
                  srai         a2, t2, 2
                  sltu         zero, s5, a2
                  ori          s1, t2, -253
                  srli         s8, ra, 22
                  sra          t3, a6, a0
                  slli         a4, t2, 7
144:              sltiu        ra, s9, -978
                  bne          t6, a5, 147f
                  bge          t5, a0, 148f
147:              blt          s1, tp, 163f
148:              slt          a4, a5, a4
                  slli         s7, s2, 22
                  slli         ra, t3, 9
                  or           zero, t4, s8
                  lui          zero, 145463
sub_3_1:          jal          t1, 4f
0:                jal          s8, 2f
1:                jal          t1, 9f
2:                jal          ra, 13f
3:                jal          tp, 10f
4:                jal          ra, 1b
5:                jal          ra, 12f
6:                jal          ra, 0b
7:                jal          ra, 15f
8:                jal          ra, 11f
9:                jal          ra, 6b
10:               jal          t0, 5b
11:               jal          a5, 7b
12:               jal          s2, 8b
13:               jal          sp, 14f
14:               jal          t0, 3b
15:               and          sp, s4, sp
                  slli         tp, a3, 1
                  auipc        t6, 525169
                  sltu         tp, a5, s9
                  bge          t3, t1, 170f
                  andi         s8, s9, -187
                  sltu         t0, t3, s10
                  bne          s1, zero, 173f
                  srli         a2, zero, 16
                  sub          t5, s10, sp
                  xor          zero, t3, t0
163:              bne          a4, t1, 167f
                  slti         t5, a2, -299
                  and          s7, a0, s3
                  or           a5, s10, tp
167:              srl          sp, a2, a1
                  or           s9, s0, ra
                  bge          zero, s0, 178f
170:              slti         t5, s1, 1865
                  srai         s2, sp, 28
                  add          s3, a2, sp
173:              srl          t3, zero, s11
                  nop
                  auipc        s7, 669897
                  and          gp, t3, a0
                  xor          a6, a7, ra
178:              addi         a3, a4, -1705
                  sll          sp, s7, a2
                  auipc        a0, 139509
                  beq          s5, t3, 193f
                  or           t1, a5, t1
                  srl          s2, a1, s6
                  nop
                  bne          ra, s5, 204f
                  bge          s7, t4, 199f
                  sll          s6, t4, sp
                  sra          s9, t0, s2
                  slti         s3, s1, 1457
                  nop
                  sra          zero, t5, ra
                  sub          s5, zero, a0
193:              xori         s0, t5, 827
                  slti         s3, t4, -421
                  sub          tp, s5, gp
                  slt          zero, s5, t1
                  bne          t2, a7, 209f
                  bne          s10, ra, 208f
199:              bne          s0, gp, 209f
                  xor          s8, s2, zero
                  or           zero, a5, s0
                  sll          ra, t5, t0
                  sra          t4, a7, s8
204:              andi         ra, zero, -2042
                  sltu         a0, t2, t4
                  and          t6, a7, s5
                  srli         s3, a5, 31
208:              bltu         t3, s6, 209f
209:              xori         a3, s2, -1600
                  srl          a5, s2, a3
                  and          s7, s2, a0
                  lw           t1, 4(s10)
                  nop
                  add          zero, t6, a6
                  addi         s10, s10, 24
                  xori         t3, gp, -898
                  slt          t3, s11, t1
                  sltiu        a0, s0, -490
                  sltiu        gp, s1, -652
312:              addi x16, x6, 1
312:              jalr x16, x16, 0
sub_2:            and          t3, a6, t1
                  lui          gp, 642093
                  slt          a2, s5, s8
                  bgeu         a6, t4, sub_2_stack_p
                  xori         sp, a6, 1224
sub_2_stack_p:    addi         s10, s10, -28
                  nop
                  sw           t1, 4(s10)
                  addi         s8, s3, -313
                  xor          zero, a6, s8
                  srli         s6, a4, 20
                  sub          a4, s11, t4
                  srli         t4, t2, 6
                  la           a7, sub_3
                  ori          s7, s11, -944
                  add          t3, t2, s8
                  sub          s11, s8, t2
                  andi         a5, a5, 973
                  addi         a7, a7, -262
                  sub          s8, t5, t3
                  bne          a5, s5, sub_2_j4 #branch to jump instr
                  sra          s2, s2, a7
sub_2_j4:         jalr         t1, a7, 262 #jump sub_2 -> sub_3
sub_2_2:          jal          t1, 0f
0:                jal          t0, 27f
1:                jal          t1, 8f
2:                jal          ra, 4f
3:                jal          a7, 10f
4:                jal          ra, 13f
5:                jal          ra, 14f
6:                jal          s0, 22f
7:                jal          t1, 24f
8:                jal          t1, 17f
9:                jal          ra, 21f
10:               jal          t1, 23f
11:               jal          t1, 1b
12:               jal          ra, 6b
13:               jal          ra, 15f
14:               jal          a3, 18f
15:               jal          s5, 19f
16:               jal          ra, 28f
17:               jal          ra, 16b
18:               jal          t1, 25f
19:               jal          t1, 9b
20:               jal          ra, 11b
21:               jal          ra, 5b
22:               jal          gp, 7b
23:               jal          ra, 2b
24:               jal          t1, 3b
25:               jal          s2, 20b
26:               jal          tp, 12b
27:               jal          ra, 26b
28:               or           tp, t0, s11
sub_2_4:          jal          t1, 9f
0:                jal          a1, 5f
1:                jal          ra, 17f
2:                jal          s1, 4f
3:                jal          a4, 10f
4:                jal          ra, 25f
5:                jal          a0, 29f
6:                jal          ra, 27f
7:                jal          t0, 0b
8:                jal          ra, 15f
9:                jal          t1, 14f
10:               jal          ra, 26f
11:               jal          t1, 21f
12:               jal          ra, 22f
13:               jal          s6, 24f
14:               jal          ra, 12b
15:               jal          t1, 2b
16:               jal          ra, 23f
17:               jal          a6, 13b
18:               jal          t1, 3b
19:               jal          ra, 8b
20:               jal          t1, 1b
21:               jal          ra, 20b
22:               jal          a6, 6b
23:               jal          ra, 28f
24:               jal          ra, 18b
25:               jal          t1, 11b
26:               jal          ra, 7b
27:               jal          gp, 16b
28:               jal          sp, 19b
29:               andi         s1, s11, 634
sub_2_0:          jal          t1, 11f
0:                jal          a5, 7f
1:                jal          t1, 6f
2:                jal          ra, 20f
3:                jal          ra, 0b
4:                jal          s8, 15f
5:                jal          t1, 8f
6:                jal          ra, 10f
7:                jal          t1, 16f
8:                jal          a5, 1b
9:                jal          ra, 14f
10:               jal          t1, 3b
11:               jal          ra, 9b
12:               jal          s5, 5b
13:               jal          tp, 17f
14:               jal          ra, 19f
15:               jal          ra, 22f
16:               jal          sp, 18f
17:               jal          ra, 4b
18:               jal          ra, 2b
19:               jal          t1, 12b
20:               jal          ra, 21f
21:               jal          a5, 13b
22:               srai         ra, a2, 29
sub_2_3:          jal          t1, 9f
0:                jal          t1, 5f
1:                jal          ra, 13f
2:                jal          t5, 0b
3:                jal          ra, 7f
4:                jal          t1, 2b
5:                jal          tp, 10f
6:                jal          ra, 8f
7:                jal          t1, 11f
8:                jal          t1, 4b
9:                jal          tp, 6b
10:               jal          ra, 1b
11:               jal          ra, 16f
12:               jal          ra, 17f
13:               jal          t5, 14f
14:               jal          t1, 3b
15:               jal          ra, 12b
16:               jal          ra, 15b
17:               sltiu        a1, s0, -526
sub_2_1:          jal          t1, 23f
0:                jal          ra, 11f
1:                jal          ra, 22f
2:                jal          s7, 25f
3:                jal          t1, 5f
4:                jal          gp, 8f
5:                jal          ra, 12f
6:                jal          t0, 14f
7:                jal          t1, 20f
8:                jal          ra, 9f
9:                jal          t1, 13f
10:               jal          t1, 6b
11:               jal          t1, 10b
12:               jal          s11, 19f
13:               jal          t1, 0b
14:               jal          ra, 21f
15:               jal          tp, 2b
16:               jal          ra, 1b
17:               jal          a1, 4b
18:               jal          s1, 3b
19:               jal          t1, 15b
20:               jal          ra, 17b
21:               jal          ra, 24f
22:               jal          t1, 18b
23:               jal          a6, 7b
24:               jal          ra, 16b
25:               ori          s5, a3, -1585
                  ori          gp, t1, 1210
                  sll          t1, a6, a0
                  nop
                  slt          a4, s8, a6
                  xor          s5, s9, a1
                  andi         a0, a2, -986
                  auipc        sp, 477482
                  auipc        a2, 523942
                  sltu         zero, t2, a5
                  beq          tp, s10, 23f
                  srai         a4, s1, 29
                  blt          t5, s8, 24f
                  bltu         t1, t3, 17f
                  bge          a4, sp, 26f
                  bltu         a4, s10, 29f
                  andi         s7, s2, -1161
                  auipc        zero, 8168
17:               sltiu        t1, s2, -751
                  xori         s7, t4, -1877
                  sll          s5, a2, s1
                  lui          t3, 694244
                  andi         zero, s2, 183
                  xori         a6, sp, 1744
23:               srai         s8, s10, 9
24:               add          t5, s2, s5
                  bgeu         t4, a2, 26f
26:               sltiu        s8, t6, 291
                  andi         a7, ra, -1220
                  slti         a3, t2, 1266
29:               or           t6, s3, s6
                  bltu         s0, t3, 43f
                  bge          gp, a4, 42f
                  sltu         sp, tp, a7
                  slli         s7, s8, 15
                  sub          a7, s10, a0
                  slti         a5, s10, -1107
                  or           sp, a0, t5
                  nop
                  sra          a3, a3, s4
                  slli         s6, a4, 18
                  auipc        a1, 822774
                  xor          gp, tp, zero
42:               bne          sp, a3, 62f
43:               bgeu         a5, t0, 50f
                  addi         s6, a0, -310
                  sub          ra, gp, t1
                  sub          s11, s10, a1
                  srli         gp, a6, 8
                  slli         a3, gp, 5
                  nop
50:               srl          a6, s9, a7
                  srai         t5, s9, 18
                  bne          a1, t3, 72f
                  lui          a5, 910615
                  srli         a7, a6, 22
                  nop
                  xori         a6, s0, -32
                  sll          t1, a0, a5
                  srl          a5, s1, s2
                  nop
                  bgeu         s1, s7, 71f
                  srai         a3, t2, 4
62:               ori          s8, s7, -72
                  sll          t6, s2, s11
                  lui          tp, 620062
                  blt          s5, s9, 75f
                  andi         a2, gp, 1081
                  sltu         a7, a1, a2
                  bge          s9, s7, 88f
                  srl          tp, s4, sp
                  blt          s1, s7, 72f
71:               srai         t3, s1, 0
72:               ori          a5, s9, -631
                  slt          s8, s10, s10
                  srl          t5, t3, a6
75:               sra          gp, sp, s7
                  blt          s3, s6, 79f
                  and          tp, t0, a6
                  addi         ra, t3, -395
79:               srai         a1, t1, 30
                  ori          s7, t6, 1071
                  sub          a2, a1, t6
                  bne          a5, s3, 89f
                  andi         a1, s8, -499
                  slt          t5, tp, s3
                  bge          t6, a3, 87f
                  bne          s0, tp, 94f
87:               sub          a4, s4, s3
88:               slt          s7, s11, a0
89:               srl          a3, tp, s2
                  addi         a0, s0, 192
                  xori         a2, tp, -351
                  auipc        s9, 876966
                  sltiu        s2, t2, -1512
94:               slli         a2, t3, 13
                  bltu         zero, t5, 100f
                  auipc        s5, 960799
                  or           s9, s5, t4
                  bne          sp, s9, 115f
                  bge          t0, sp, 112f
100:              addi         s9, a7, 1836
                  blt          t2, t2, 108f
                  addi         t1, a0, 1630
                  auipc        t3, 888704
                  andi         a2, ra, -905
                  andi         a5, s7, 146
                  andi         gp, a0, 904
                  xori         ra, t1, -802
108:              srli         a4, s3, 10
                  or           a3, s5, a7
                  bne          a2, t0, 123f
                  lui          s9, 907980
112:              blt          s11, a0, 131f
                  nop
                  slli         t0, a4, 30
115:              bgeu         ra, t3, 133f
                  sra          gp, s0, a2
                  add          s2, a7, s0
                  xori         t1, t0, -1070
                  nop
                  blt          t1, a5, 128f
                  sub          s3, a2, s3
                  nop
123:              or           s3, zero, a6
                  add          t0, a2, s7
                  sltiu        s5, tp, 1628
                  andi         a4, t4, 1663
                  slli         a2, s6, 14
128:              xori         s11, a2, 1011
                  srl          t5, t3, sp
                  sll          a6, s9, s4
131:              srli         a4, s1, 1
                  slti         s8, t5, -1714
133:              add          t5, s6, a6
                  bge          a3, t3, 152f
                  sltu         ra, s9, a7
                  slt          zero, tp, a4
                  bne          t5, a7, 141f
                  slt          t3, s6, t2
                  blt          s11, t3, 143f
                  or           sp, s7, sp
141:              srl          s2, ra, a5
                  and          a0, t0, zero
143:              xori         a5, a5, 2036
                  xori         t4, a3, -1487
                  andi         sp, a5, 461
                  sll          t5, s4, a7
                  srai         t4, t1, 20
                  ori          s6, zero, -560
                  addi         a7, t1, -903
                  sll          t1, a0, s2
                  bge          t2, t1, 152f
152:              sub          s1, s1, sp
                  lui          s3, 811529
                  slti         s2, t5, 666
                  srli         a1, t4, 1
                  nop
                  bgeu         a7, s2, 161f
                  or           t0, tp, gp
                  bge          t5, s4, 173f
                  beq          s4, a7, 173f
161:              or           t1, t2, a6
                  auipc        tp, 731802
                  sra          s2, t4, s9
                  slti         t6, a0, -1980
                  sltiu        t5, s6, 704
                  sll          s11, t1, a3
                  la           s3, sub_4
                  auipc        s6, 876649
                  sll          t6, tp, s5
                  srli         s9, zero, 19
                  add          a6, s1, a4
                  auipc        zero, 604034
                  auipc        tp, 685582
                  addi         s3, s3, -589
                  and          gp, a4, tp
sub_2_j3:         jalr         t1, s3, 589 #jump sub_2 -> sub_4
                  bgeu         s7, t0, 177f
                  sub          s7, t6, a1
                  sltiu        t0, zero, -630
                  lui          a2, 921806
                  slt          s6, a2, t4
                  sub          s5, a5, t6
173:              auipc        a4, 913831
                  and          tp, s2, s9
                  bge          a4, tp, 193f
                  sra          a5, t3, s9
177:              srli         t5, s9, 13
                  slli         a1, s1, 21
                  srl          s5, a3, a3
                  srli         s2, t5, 23
                  or           a7, s6, a6
                  andi         s6, tp, 1164
                  slli         s5, s7, 27
                  slli         tp, a5, 7
                  sra          s8, a3, s9
                  blt          a4, s2, 194f
                  slt          a1, a1, tp
                  bltu         a5, tp, 208f
                  sll          s1, s0, a0
                  sra          s3, t0, s0
                  auipc        a6, 340230
                  bltu         s7, t2, 209f
193:              nop
194:              bge          t5, tp, 207f
                  blt          t3, s4, 210f
                  andi         s11, gp, 980
                  blt          s8, a4, 208f
                  sltiu        s0, s1, -106
                  or           t1, t0, t0
                  add          a0, a5, t2
                  nop
                  bltu         t2, t1, 210f
                  slti         s7, t5, 608
                  slli         s6, t4, 6
                  sltu         t4, s9, s8
                  auipc        tp, 383505
207:              nop
208:              bne          s8, a4, 212f
209:              slli         a2, a4, 20
210:              xor          a6, s8, t4
                  sltiu        a2, a1, -1403
212:              sltu         t5, s3, s3
                  slti         s5, s8, 1435
                  sltu         t4, t0, t1
                  srli         zero, gp, 7
                  sltiu        tp, a5, -1469
                  bgeu         s2, s10, 222f
                  auipc        s11, 463658
                  xor          t4, s3, ra
                  ori          s7, a7, -501
                  auipc        t1, 448653
222:              auipc        a3, 638610
                  xor          zero, t3, s10
                  ori          a7, s10, -540
                  or           s0, s0, s2
                  addi         a4, t0, -400
                  or           t6, zero, s0
                  sltiu        s3, gp, -1570
                  bge          t3, s4, 249f
                  slt          a5, t3, sp
                  auipc        a5, 694482
                  ori          s7, s11, 1538
                  sra          s11, t2, a2
                  beq          s1, s0, 252f
                  sltiu        t4, a7, 920
                  bge          s9, t2, 255f
                  srli         a5, a6, 19
                  auipc        s5, 863339
                  slti         a3, gp, 2027
                  blt          a7, s3, 251f
                  andi         t6, s11, -1358
                  xori         a4, s5, 521
                  sra          t5, a0, s1
                  ori          a3, s3, -1766
                  sra          t5, s1, zero
                  sltu         t4, a2, s10
                  or           t4, s0, s5
                  srli         s6, s5, 22
249:              bge          t6, a0, 256f
                  beq          a0, t0, 252f
251:              bge          t6, t6, 256f
252:              srai         ra, t6, 6
                  bge          a7, ra, 273f
                  andi         t4, s4, 752
255:              bne          a1, gp, 268f
256:              slli         s7, s5, 6
                  srai         s9, a6, 7
                  slti         s3, a1, 702
                  sub          a3, t3, a5
                  beq          t2, t0, 262f
                  nop
262:              bgeu         t3, t1, 269f
                  slli         s6, t4, 12
                  srai         a1, t0, 3
                  srl          a3, a3, sp
                  srai         a0, t6, 19
                  sltiu        t0, s10, -1642
268:              xor          t4, s8, sp
269:              addi         s1, a6, -768
                  sltu         zero, a4, sp
                  blt          ra, a2, 284f
                  ori          s1, t6, -39
273:              bne          a7, a4, 280f
                  slli         tp, s5, 27
                  sll          a6, a4, s10
                  addi         a4, s1, -1441
                  bge          ra, a1, 280f
                  auipc        t5, 447102
                  slti         a1, t6, -58
280:              add          s5, s2, s8
                  slti         s3, gp, 1281
                  sub          a4, t5, a3
                  lui          a4, 882262
284:              sra          s6, a0, t5
                  sltiu        zero, t4, 1370
                  slli         a1, s2, 29
                  srai         ra, s2, 27
                  ori          a5, t0, -965
                  and          s11, s4, a1
                  lw           t1, 4(s10)
                  sltiu        zero, zero, 1986
                  slt          s8, t4, t3
                  auipc        a7, 733173
                  lui          a3, 6110
                  addi         s10, s10, 28
                  add          a1, s8, zero
                  ori          s3, t0, -130
462:              addi x14, x6, 1
462:              jalr x14, x14, 0
sub_5:            addi         s10, s10, -20
                  srl          a2, s0, t4
                  sw           t1, 4(s10)
                  lui          a4, 495822
                  sub          t0, a2, ra
                  xori         s6, t4, -77
sub_5_4:          jal          t1, 1f
0:                jal          ra, 29f
1:                jal          ra, 22f
2:                jal          ra, 28f
3:                jal          t1, 21f
4:                jal          t0, 16f
5:                jal          gp, 6f
6:                jal          ra, 30f
7:                jal          t1, 24f
8:                jal          t1, 4b
9:                jal          ra, 26f
10:               jal          ra, 17f
11:               jal          ra, 10b
12:               jal          t1, 5b
13:               jal          ra, 19f
14:               jal          ra, 13b
15:               jal          t1, 20f
16:               jal          s8, 18f
17:               jal          t5, 12b
18:               jal          ra, 11b
19:               jal          s5, 25f
20:               jal          ra, 0b
21:               jal          ra, 27f
22:               jal          s2, 3b
23:               jal          t1, 2b
24:               jal          ra, 23b
25:               jal          t1, 15b
26:               jal          a5, 14b
27:               jal          t1, 9b
28:               jal          ra, 8b
29:               jal          sp, 7b
30:               or           s9, s8, a3
sub_5_0:          jal          t1, 16f
0:                jal          a4, 13f
1:                jal          t1, 17f
2:                jal          t1, 11f
3:                jal          ra, 8f
4:                jal          ra, 1b
5:                jal          t0, 6f
6:                jal          ra, 15f
7:                jal          t1, 2b
8:                jal          sp, 10f
9:                jal          ra, 18f
10:               jal          ra, 7b
11:               jal          ra, 0b
12:               jal          ra, 3b
13:               jal          s6, 14f
14:               jal          t0, 9b
15:               jal          s3, 4b
16:               jal          t1, 5b
17:               jal          ra, 12b
18:               srl          t4, s11, gp
sub_5_1:          jal          t1, 25f
0:                jal          t1, 4f
1:                jal          sp, 23f
2:                jal          ra, 13f
3:                jal          ra, 24f
4:                jal          ra, 10f
5:                jal          s3, 3b
6:                jal          t1, 12f
7:                jal          t1, 22f
8:                jal          t1, 26f
9:                jal          t1, 16f
10:               jal          gp, 5b
11:               jal          ra, 0b
12:               jal          ra, 28f
13:               jal          ra, 15f
14:               jal          t1, 21f
15:               jal          t1, 18f
16:               jal          t1, 7b
17:               jal          ra, 14b
18:               jal          ra, 19f
19:               jal          ra, 11b
20:               jal          t1, 6b
21:               jal          ra, 1b
22:               jal          t1, 2b
23:               jal          ra, 20b
24:               jal          ra, 27f
25:               jal          a6, 8b
26:               jal          ra, 9b
27:               jal          sp, 17b
28:               srli         a3, s2, 25
sub_5_2:          jal          t1, 2f
0:                jal          ra, 24f
1:                jal          t1, 16f
2:                jal          ra, 4f
3:                jal          s6, 17f
4:                jal          ra, 6f
5:                jal          a1, 22f
6:                jal          a2, 9f
7:                jal          sp, 13f
8:                jal          a5, 3b
9:                jal          s5, 23f
10:               jal          ra, 20f
11:               jal          t1, 15f
12:               jal          t1, 0b
13:               jal          t1, 19f
14:               jal          ra, 21f
15:               jal          s1, 1b
16:               jal          ra, 5b
17:               jal          ra, 14b
18:               jal          ra, 11b
19:               jal          s9, 18b
20:               jal          s3, 12b
21:               jal          gp, 7b
22:               jal          ra, 10b
23:               jal          t1, 8b
24:               add          a1, s7, s6
                  bge          s4, a4, 17f
                  ori          t0, a5, -1254
                  bge          t0, t3, 4f
                  slti         a0, a7, -1643
4:                slli         a4, a5, 22
                  sltu         zero, t3, s8
                  sltu         gp, gp, a7
                  sll          s7, zero, s6
                  sub          s0, ra, a1
                  andi         t3, t1, -196
                  and          t6, s4, s11
                  sltu         ra, t6, s11
                  addi         s3, t0, -1839
                  slti         zero, s8, -205
                  sra          ra, s9, t6
                  xori         t6, s9, -56
                  auipc        s5, 200681
17:               auipc        sp, 169344
                  add          a4, gp, s5
                  srai         a7, a3, 29
                  srai         s8, a2, 9
                  slti         a5, a3, -1099
                  srai         t0, ra, 20
                  or           a5, a0, zero
                  sll          gp, a4, t3
                  sub          tp, s5, s9
                  xor          zero, s10, s10
                  bltu         ra, zero, 39f
                  and          a0, t2, s4
                  srl          s9, a4, s5
                  bge          a1, t6, 35f
                  sltiu        t0, a7, 1313
                  bge          s1, gp, 52f
                  sltu         sp, a1, sp
                  xor          zero, s8, t2
35:               andi         s11, tp, -435
                  sub          s2, a5, a2
                  bge          s2, t5, 50f
                  bltu         sp, s8, 47f
39:               ori          a2, gp, 1716
                  sltiu        a0, a5, -596
                  slti         tp, a7, -1213
                  ori          s3, a7, -401
                  srl          t5, a1, s5
                  xor          a5, s11, a6
                  or           s9, sp, s5
                  addi         t0, s10, 591
47:               sltu         zero, t4, t5
                  sll          s8, s11, s8
                  bge          a4, a6, 55f
50:               bgeu         t1, s4, 67f
                  blt          a1, t5, 58f
52:               or           a7, s8, t3
                  andi         t4, t1, -1596
                  slli         s0, zero, 17
55:               xori         s6, s9, -990
                  bltu         a0, s3, 58f
                  sll          a2, s10, tp
58:               bge          tp, a3, 78f
                  slli         s7, a7, 3
                  add          tp, gp, s3
                  lui          tp, 676352
                  addi         s8, s0, 811
                  sub          s2, sp, s8
                  andi         a0, t1, -466
                  ori          s8, t2, 75
                  bne          s10, t2, 83f
67:               ori          t1, t1, 1729
                  slli         a2, s6, 0
                  auipc        t5, 72190
                  sra          t5, a7, t6
                  slt          gp, t1, t4
                  srai         t0, s0, 14
                  ori          s1, s3, -13
                  lui          s11, 525705
                  beq          s4, s7, 84f
                  bgeu         gp, a5, 96f
                  slt          sp, sp, s2
78:               sltiu        ra, a7, -391
                  nop
                  sra          t6, zero, a7
                  or           gp, gp, t6
                  add          a1, s7, t4
83:               add          s0, s2, sp
84:               srl          a6, s11, s5
                  srl          s1, t3, ra
                  and          gp, t2, tp
                  xor          s8, t5, s3
                  sltiu        s3, s2, 1541
                  bne          s6, t4, 94f
                  slt          a0, s0, a6
                  sra          a7, zero, a0
                  and          s8, s0, t5
                  sub          a3, s7, a2
94:               xor          a7, t1, gp
                  sltiu        gp, s8, -1253
96:               bge          s10, s2, 112f
                  srai         s2, t2, 20
                  bgeu         a5, s0, 103f
                  srai         a6, a2, 10
                  nop
                  srli         s1, s1, 8
                  slti         s0, a1, 691
103:              sra          s9, a7, a2
                  sra          s8, t3, a4
                  bne          s4, t2, 109f
                  beq          s9, ra, 126f
                  sltiu        s8, s5, 363
                  nop
109:              xori         s0, s10, 94
                  xori         t1, t3, 1407
                  slti         s6, s0, -1069
112:              bge          t6, a5, 125f
                  slli         a2, s5, 15
                  add          s11, gp, t2
                  sltiu        t5, t4, 79
                  sltu         t3, t5, t1
                  srli         s6, a3, 24
                  xori         a4, t3, -1116
                  sub          a1, s5, s5
                  srli         t4, a5, 20
                  xor          a3, t5, s9
                  bge          a4, tp, 124f
                  slli         s7, s1, 9
124:              beq          a2, sp, 136f
125:              add          tp, s8, a5
126:              auipc        tp, 277428
                  xor          gp, t6, a4
                  bne          s4, s5, 143f
                  xori         sp, a5, 966
                  nop
                  sra          t1, s0, s9
                  sub          sp, a1, a2
                  sll          a5, a4, s5
                  slt          s6, t6, t1
                  sll          s3, s7, a4
136:              add          s5, tp, a3
                  bltu         gp, s4, 148f
                  beq          t0, s11, 153f
                  sltu         t3, t0, a3
                  sra          a7, s3, t4
                  srl          a5, t1, a4
                  and          a0, s6, t6
143:              sltu         a4, t3, s1
                  and          a5, a3, s6
                  bgeu         s1, gp, 153f
                  srl          zero, ra, s8
                  auipc        a3, 426746
148:              bge          t5, tp, 152f
                  or           s0, a0, s8
                  srai         t0, a7, 18
                  add          t1, a0, s9
152:              sltu         a1, t0, zero
153:              bge          s3, a1, 156f
                  srli         t1, a3, 27
                  srli         a7, a4, 5
156:              xori         a6, ra, -1193
                  add          a7, t4, a1
                  andi         a1, s9, 828
                  slti         s11, s7, -1878
                  blt          s10, a5, 167f
                  bltu         a4, ra, 181f
                  bne          t1, t2, 171f
                  srl          s1, ra, s9
                  slti         a4, s9, -1574
                  slti         s2, a6, 1503
                  sltiu        s8, t4, -1064
167:              add          s1, s4, tp
                  ori          t4, sp, -1748
                  xori         s7, a3, 83
                  xori         ra, zero, -1578
171:              xori         s3, a3, -1402
                  and          t3, a6, s5
                  nop
                  add          s2, a2, gp
                  bge          a4, a4, 179f
                  andi         t3, a7, -1646
                  sub          a6, a2, a3
                  sra          s5, s4, a3
179:              auipc        s0, 435947
                  andi         s0, t3, -547
181:              sub          tp, t0, a5
                  srli         a3, t6, 17
                  sltu         a1, s1, s0
                  andi         a2, ra, -1132
                  and          s11, gp, ra
                  auipc        s11, 455528
                  beq          t4, t2, 202f
                  auipc        s0, 964040
                  slt          a0, s8, a7
                  bne          s6, s2, 201f
                  nop
                  sltiu        a5, zero, 178
                  bltu         s9, s9, 210f
                  andi         s11, a6, -824
                  srli         a2, t6, 15
                  add          t3, t0, s2
                  andi         t3, t1, 359
                  auipc        a6, 438007
                  srai         t0, ra, 15
                  sltiu        t3, t5, -800
201:              sra          s3, a0, t1
202:              slli         t1, sp, 0
                  beq          s1, t3, 223f
                  sra          a0, sp, s5
                  or           t4, ra, a1
                  beq          s5, t1, 214f
                  bne          sp, s9, 227f
                  slt          t0, s1, s2
                  sltiu        s7, a4, 354
210:              sltiu        t6, s11, -188
                  nop
                  slli         s0, sp, 13
                  auipc        s5, 409903
214:              beq          t2, tp, 234f
                  sra          zero, s7, t6
                  sub          a4, a0, s8
                  beq          ra, sp, 233f
                  xori         s3, a1, -139
                  srl          sp, s1, t3
                  add          t4, gp, t0
                  bgeu         s1, t4, 233f
                  and          s7, s8, t1
223:              bge          a0, t4, 240f
                  bne          t2, t5, 226f
                  srai         a3, a7, 8
226:              srli         a2, a4, 8
227:              beq          s10, a0, 232f
                  andi         a0, t6, -1110
                  slt          s0, s8, t4
                  slt          s7, tp, a0
                  bltu         a6, a4, 248f
232:              sll          t0, a5, a5
233:              and          t0, s4, gp
234:              bne          s7, a3, 243f
                  sll          sp, s8, s0
                  auipc        t3, 186713
                  srai         s6, s9, 30
                  slli         s9, a1, 24
                  sub          ra, a6, t6
240:              sub          ra, t4, s5
                  and          t4, t3, s1
                  sub          t4, a4, s9
243:              srl          sp, tp, a6
                  bne          t0, a5, 250f
                  slli         s8, s8, 31
                  bge          a3, t3, 251f
                  srl          a6, s8, t6
248:              sub          tp, a3, s0
                  andi         a3, a3, -810
250:              add          s0, a6, a5
251:              addi         s7, a7, 998
                  sub          a6, s6, s0
                  auipc        t5, 209868
                  ori          a3, s0, 203
                  and          s0, s4, a6
                  sra          t1, a4, s7
                  and          s1, a2, s9
                  srai         s2, tp, 2
sub_5_3:          jal          t1, 19f
0:                jal          s0, 14f
1:                jal          t1, 17f
2:                jal          t3, 6f
3:                jal          t1, 24f
4:                jal          ra, 16f
5:                jal          t1, 2b
6:                jal          a5, 23f
7:                jal          ra, 1b
8:                jal          tp, 18f
9:                jal          t1, 5b
10:               jal          t4, 15f
11:               jal          ra, 3b
12:               jal          ra, 8b
13:               jal          a4, 10b
14:               jal          a3, 22f
15:               jal          ra, 0b
16:               jal          t1, 21f
17:               jal          t1, 4b
18:               jal          ra, 7b
19:               jal          ra, 9b
20:               jal          ra, 13b
21:               jal          ra, 20b
22:               jal          ra, 25f
23:               jal          ra, 11b
24:               jal          ra, 12b
25:               slt          s8, ra, a0
                  srli         sp, s11, 4
                  lui          s0, 464032
                  add          s0, t0, t5
                  bge          s7, zero, 269f
                  xor          a3, tp, t3
                  slt          s1, s8, s11
                  beq          a0, s10, 278f
                  and          s8, a6, a5
                  xor          s8, zero, t4
                  sltiu        gp, s2, -145
269:              slti         tp, t0, -1366
                  or           a2, a1, s1
                  sltiu        t6, s4, 338
                  bge          a7, a3, 286f
                  blt          t1, t2, 275f
                  sll          s8, s1, a0
275:              auipc        tp, 520517
                  slt          a1, a3, s11
                  addi         s6, t5, -1734
278:              blt          tp, t2, 286f
                  addi         t1, a7, -611
                  blt          s3, s4, 284f
                  slt          gp, s5, s4
                  and          a4, t4, s10
                  slli         tp, s5, 10
284:              or           ra, s2, t3
                  ori          t3, s1, 447
286:              slli         ra, s3, 30
                  lw           t1, 4(s10)
                  srl          a0, t1, s6
                  auipc        s3, 984034
                  slti         a5, a1, 1739
                  addi         s10, s10, 20
                  srl          t5, t4, a5
434:              addi x30, x6, 0
434:              jalr x30, x30, 0
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
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x7, x26, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_2:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x7, x26, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_3:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x7, x26, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_4:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x7, x26, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_5:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x7, x26, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_6:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x7, x26, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_7:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x7, x26, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_8:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x7, x26, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_9:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x7, x26, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_10:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x7, x26, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_11:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x7, x26, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_12:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x7, x26, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_13:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x7, x26, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_14:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x7, x26, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

mmode_intr_vector_15:
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x7, x26, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x7, x26, zero
                  csrr x12, 0x341 # MEPC
                  csrr x12, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x12, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x12, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x12, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x12, x9, ecall_handler
                  li x9, 0x1
                  beq x12, x9, instr_fault_handler
                  li x9, 0x5
                  beq x12, x9, load_fault_handler
                  li x9, 0x7
                  beq x12, x9, store_fault_handler
                  li x9, 0xc
                  beq x12, x9, pt_fault_handler
                  li x9, 0xd
                  beq x12, x9, pt_fault_handler
                  li x9, 0xf
                  beq x12, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x12, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x20, test_done
                  jalr x1, x20, 0

ecall_handler:    
                  la x12, _start
                  sw x0, 0(x12)
                  sw x1, 4(x12)
                  sw x2, 8(x12)
                  sw x3, 12(x12)
                  sw x4, 16(x12)
                  sw x5, 20(x12)
                  sw x6, 24(x12)
                  sw x7, 28(x12)
                  sw x8, 32(x12)
                  sw x9, 36(x12)
                  sw x10, 40(x12)
                  sw x11, 44(x12)
                  sw x12, 48(x12)
                  sw x13, 52(x12)
                  sw x14, 56(x12)
                  sw x15, 60(x12)
                  sw x16, 64(x12)
                  sw x17, 68(x12)
                  sw x18, 72(x12)
                  sw x19, 76(x12)
                  sw x20, 80(x12)
                  sw x21, 84(x12)
                  sw x22, 88(x12)
                  sw x23, 92(x12)
                  sw x24, 96(x12)
                  sw x25, 100(x12)
                  sw x26, 104(x12)
                  sw x27, 108(x12)
                  sw x28, 112(x12)
                  sw x29, 116(x12)
                  sw x30, 120(x12)
                  sw x31, 124(x12)
                  la x20, write_tohost
                  jalr x0, x20, 0

instr_fault_handler:
                  add x26, x7, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

load_fault_handler:
                  add x26, x7, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

store_fault_handler:
                  add x26, x7, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

ebreak_handler:   
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x26, x7, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

illegal_instr_handler:
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x26, x7, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x12, 0x300 # MSTATUS;
                  csrr  x12, 0x304 # MIE;
                  csrr  x12, 0x344 # MIP;
                  csrrc x12, 0x344, x12 # MIP;
                  add x26, x7, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
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
