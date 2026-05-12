.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x16, h0_start
jalr x0, x16, 0
h0_start:
                  li x11, 0x40000100
                  csrw 0x301, x11
kernel_sp:        
                  la x2, kernel_stack_end

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
                  li x0, 0x28531729
                  li x1, 0x0
                  li x3, 0xc910b01c
                  li x4, 0xcc5f711c
                  li x5, 0x80000000
                  li x6, 0x0
                  li x7, 0x2ec0f8bb
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0x0
                  li x11, 0x6
                  li x12, 0xf358a39b
                  li x13, 0x80000000
                  li x14, 0x80000000
                  li x15, 0xe
                  li x16, 0x135afdaa
                  li x17, 0x84dc8f41
                  li x18, 0x0
                  li x19, 0x8
                  li x20, 0x0
                  li x21, 0xfc6ec94d
                  li x22, 0x1888ec2d
                  li x23, 0xd
                  li x24, 0x80000000
                  li x25, 0x122762dd
                  li x26, 0x0
                  li x27, 0xfa32ae09
                  li x29, 0xf61ab401
                  li x30, 0xe
                  li x31, 0x774353a2
                  la x28, user_stack_end
main:             jal          ra, 11f
0:                jal          t1, 4f
1:                jal          s10, 2f
2:                jal          ra, 6f
3:                jal          ra, 12f
4:                jal          ra, 7f
5:                jal          a2, 15f
6:                jal          ra, 13f
7:                jal          ra, 1b
8:                jal          ra, 0b
9:                jal          ra, 3b
10:               jal          t1, 9b
11:               jal          ra, 10b
12:               jal          ra, 14f
13:               jal          t1, 5b
14:               jal          t1, 8b
15:               slli         t6, a6, 20
main_1:           jal          ra, 8f
0:                jal          ra, 10f
1:                jal          ra, 7f
2:                jal          t1, 1b
3:                jal          s4, 6f
4:                jal          ra, 9f
5:                jal          ra, 2b
6:                jal          t2, 5b
7:                jal          t1, 4b
8:                jal          ra, 0b
9:                jal          ra, 12f
10:               jal          ra, 11f
11:               jal          t0, 3b
12:               slti         s9, a6, -564
main_2:           jal          ra, 15f
0:                jal          ra, 2f
1:                jal          ra, 11f
2:                jal          gp, 16f
3:                jal          t1, 23f
4:                jal          ra, 21f
5:                jal          ra, 7f
6:                jal          ra, 9f
7:                jal          ra, 1b
8:                jal          ra, 10f
9:                jal          ra, 22f
10:               jal          ra, 6b
11:               jal          ra, 13f
12:               jal          ra, 4b
13:               jal          s10, 3b
14:               jal          ra, 12b
15:               jal          s11, 14b
16:               jal          t1, 24f
17:               jal          t0, 18f
18:               jal          ra, 8b
19:               jal          s5, 20f
20:               jal          ra, 17b
21:               jal          ra, 19b
22:               jal          ra, 5b
23:               jal          ra, 0b
24:               slti         a4, s8, -233
main_5:           jal          ra, 1f
0:                jal          t1, 12f
1:                jal          t1, 16f
2:                jal          ra, 3f
3:                jal          ra, 10f
4:                jal          ra, 14f
5:                jal          ra, 4b
6:                jal          ra, 11f
7:                jal          ra, 9f
8:                jal          ra, 5b
9:                jal          t5, 8b
10:               jal          ra, 15f
11:               jal          ra, 2b
12:               jal          ra, 6b
13:               jal          t1, 0b
14:               jal          t1, 17f
15:               jal          ra, 7b
16:               jal          ra, 13b
17:               ori          t5, s9, -111
main_6:           jal          ra, 13f
0:                jal          t0, 16f
1:                jal          a2, 0b
2:                jal          s6, 7f
3:                jal          ra, 8f
4:                jal          s0, 10f
5:                jal          s6, 2b
6:                jal          ra, 9f
7:                jal          ra, 6b
8:                jal          ra, 17f
9:                jal          s7, 4b
10:               jal          ra, 18f
11:               jal          ra, 5b
12:               jal          ra, 14f
13:               jal          t1, 3b
14:               jal          s8, 11b
15:               jal          ra, 12b
16:               jal          ra, 15b
17:               jal          ra, 1b
18:               sltiu        s3, s6, -213
main_7:           jal          ra, 9f
0:                jal          t1, 13f
1:                jal          s5, 15f
2:                jal          s8, 6f
3:                jal          t1, 2b
4:                jal          ra, 1b
5:                jal          ra, 14f
6:                jal          gp, 5b
7:                jal          t1, 12f
8:                jal          ra, 3b
9:                jal          s1, 0b
10:               jal          ra, 16f
11:               jal          t4, 4b
12:               jal          t1, 8b
13:               jal          s5, 10b
14:               jal          a1, 17f
15:               jal          t1, 7b
16:               jal          ra, 11b
17:               srai         gp, tp, 4
main_4:           jal          ra, 19f
0:                jal          s8, 27f
1:                jal          ra, 26f
2:                jal          ra, 3f
3:                jal          ra, 23f
4:                jal          s1, 12f
5:                jal          s5, 14f
6:                jal          ra, 11f
7:                jal          ra, 13f
8:                jal          ra, 22f
9:                jal          ra, 18f
10:               jal          ra, 2b
11:               jal          ra, 21f
12:               jal          ra, 0b
13:               jal          t2, 1b
14:               jal          ra, 4b
15:               jal          ra, 5b
16:               jal          ra, 25f
17:               jal          s5, 9b
18:               jal          ra, 7b
19:               jal          a5, 20f
20:               jal          ra, 10b
21:               jal          ra, 24f
22:               jal          ra, 6b
23:               jal          a4, 16b
24:               jal          ra, 15b
25:               jal          ra, 17b
26:               jal          ra, 8b
27:               jal          t1, 28f
28:               or           t6, t0, s0
                  and          t4, a4, a5
                  srl          s4, a4, t3
                  sltu         s0, t5, a4
                  slli         s1, t6, 0
                  and          tp, t3, tp
                  ori          s0, t1, -152
                  blt          sp, t2, 10f
                  nop
                  sll          s5, t3, a0
                  slt          a3, s8, s0
10:               ori          s11, gp, 317
                  slti         gp, a2, -2048
                  sltiu        t2, a3, -396
                  sub          tp, t1, t3
                  sra          s4, s1, s6
                  lui          t4, 278534
                  lui          s6, 362253
                  beq          s3, t4, 33f
                  ori          s6, t3, -234
                  add          t4, t1, s11
                  bge          a7, a0, 40f
                  bltu         s2, s8, 25f
                  add          s3, s3, t6
                  slli         t2, s5, 27
                  bge          s2, ra, 42f
25:               srai         t0, s3, 16
                  sll          gp, a3, t5
                  bne          s4, t5, 39f
                  slt          t4, s1, ra
                  srli         s11, a7, 10
                  blt          a3, s2, 46f
                  sub          t5, t5, t1
                  slli         a2, a6, 17
33:               blt          a1, s6, 38f
                  sltiu        a3, gp, -1134
                  add          s4, t3, sp
                  sltu         gp, gp, s6
                  andi         s11, a0, -1160
38:               slt          a2, s11, s7
39:               srai         a2, ra, 22
40:               slt          s9, s0, t6
                  addi         a0, s10, 1083
42:               bgeu         t3, s1, 44f
                  add          s7, a4, s9
44:               xori         zero, t4, 775
                  andi         a2, t3, -1105
46:               srai         s5, t1, 14
                  srl          gp, a4, t5
                  andi         s5, s0, -126
                  ori          s6, tp, 1986
                  bgeu         gp, s5, 54f
                  sltiu        s7, a2, 1058
                  xori         zero, tp, -218
                  bne          t3, s0, 62f
54:               srai         gp, a4, 10
                  bgeu         s11, zero, 71f
                  srai         a5, tp, 19
                  srl          t0, zero, s6
                  or           t2, s8, a7
                  sltiu        s1, s11, -254
                  and          t5, s11, a5
                  sra          a0, t0, a1
62:               sltiu        t1, s6, -832
                  bgeu         zero, s9, 77f
                  and          t2, t2, a5
                  sltu         s1, zero, s0
                  bgeu         s11, s0, 81f
                  addi         zero, t2, 915
                  auipc        t6, 311983
                  sltiu        s10, s3, -227
                  add          a4, t0, t6
71:               andi         s3, s2, -1283
                  sltu         s1, gp, sp
                  srli         tp, s9, 24
                  sltiu        t4, zero, 562
                  or           s5, s5, gp
                  sub          s11, a3, zero
77:               beq          t1, t6, 79f
                  sltiu        a0, s5, -1190
79:               xor          a4, t3, t4
                  bge          s0, s7, 89f
81:               ori          a5, a5, 1095
                  xori         s4, s10, -1873
                  lui          tp, 406987
                  sltiu        t4, a7, -1375
                  bne          a2, ra, 94f
                  auipc        s1, 647290
                  sltiu        t4, s3, -289
                  srl          a1, s7, a4
89:               add          s7, a0, s4
                  bltu         ra, s5, 91f
91:               srai         s5, t5, 27
                  srl          s6, s0, s10
                  lui          s10, 1012869
94:               addi         s11, s10, -1016
                  xori         t2, ra, 569
                  srl          ra, s7, s8
                  bgeu         a0, s9, 109f
                  nop
                  bltu         a4, a4, 100f
100:              srai         s2, s5, 21
                  sltiu        s2, t2, 1875
                  bge          s8, t0, 104f
                  or           a0, t5, a7
104:              sub          s3, s5, ra
                  sra          s7, t2, s7
                  andi         ra, s7, -1914
                  nop
                  bltu         a0, t1, 125f
109:              sub          a3, s6, s11
                  or           a0, sp, a3
                  and          s5, s10, a7
                  srai         t2, s8, 17
                  blt          t2, t5, 132f
                  bne          s1, ra, 134f
                  blt          zero, t5, 118f
                  slti         s2, t6, -1082
                  xori         t5, s6, 925
118:              blt          s7, t5, 119f
119:              or           ra, t4, a7
                  slti         t4, zero, 1611
                  andi         s11, a4, 186
                  srl          s5, s11, s2
                  xor          s3, t2, a6
                  addi         a7, t6, -699
125:              andi         a4, s10, 1513
                  and          s8, zero, s7
                  xori         a0, s10, 1599
                  lui          a4, 51389
                  auipc        a7, 746200
                  sub          t0, a4, a1
                  bge          t4, s8, 136f
132:              srl          t1, a3, s8
                  sra          t5, zero, s5
134:              sra          t1, s5, s1
                  andi         t1, a7, 2041
136:              nop
                  auipc        a4, 467327
                  andi         t4, s1, -516
                  sra          ra, t0, s6
                  andi         s8, s3, 880
                  la           t4, sub_2
                  slti         a1, a6, -1015
                  addi         t4, t4, 1001
                  add          t2, t4, s6
                  slti         s3, s10, -845
                  srai         s7, s7, 18
                  bne          s7, tp, main_j3 #branch to jump instr
                  ori          s10, t4, -1476
                  sra          zero, sp, a1
main_j3:          jalr         ra, t4, -1001 #jump main -> sub_2
                  sltu         ra, s6, t6
                  xori         a1, a7, -1428
                  sll          a0, a5, s5
                  sll          tp, t1, a7
                  add          a4, a1, tp
                  beq          t3, sp, 158f
                  sltiu        ra, s9, -2020
                  add          a4, s9, t4
                  srai         t4, a5, 1
                  srai         s9, s6, 12
                  slti         t5, t1, 1449
                  and          s2, t5, t2
                  nop
                  slli         s11, s11, 8
                  slli         s6, a3, 25
                  sltiu        a2, a5, -274
                  nop
158:              beq          t2, s3, 174f
                  andi         s6, t6, -1305
                  nop
                  beq          t1, s8, 165f
                  beq          s9, a4, 166f
                  srli         s11, s3, 12
                  sub          a5, a7, s2
165:              xori         gp, t5, -1133
166:              srl          a4, t5, s9
                  srl          t1, s9, a0
                  sub          t4, s7, s11
                  and          s0, s4, a5
                  add          a3, s10, s10
                  srai         a4, s2, 1
                  bgeu         a2, s10, 189f
                  beq          a0, s1, 189f
174:              addi         a1, s8, -1429
                  beq          a2, t6, 180f
                  or           t1, sp, tp
                  slti         a3, s5, 1551
                  sra          gp, tp, a1
                  slt          a4, t3, s6
180:              addi         t6, t6, -1314
                  nop
                  ori          s3, a4, 1213
                  add          s7, a1, s2
                  xor          t1, a1, t1
main_3:           jal          ra, 6f
0:                jal          ra, 24f
1:                jal          ra, 7f
2:                jal          s9, 28f
3:                jal          a7, 9f
4:                jal          s9, 1b
5:                jal          a7, 0b
6:                jal          t1, 5b
7:                jal          t1, 16f
8:                jal          ra, 19f
9:                jal          ra, 14f
10:               jal          t6, 15f
11:               jal          ra, 2b
12:               jal          ra, 21f
13:               jal          s0, 25f
14:               jal          t1, 4b
15:               jal          ra, 27f
16:               jal          s8, 18f
17:               jal          ra, 26f
18:               jal          a0, 20f
19:               jal          t6, 22f
20:               jal          ra, 23f
21:               jal          a3, 13b
22:               jal          t1, 11b
23:               jal          a4, 29f
24:               jal          tp, 8b
25:               jal          s6, 17b
26:               jal          t1, 3b
27:               jal          ra, 12b
28:               jal          ra, 10b
29:               add          a3, t0, s7
                  sltiu        ra, s11, 1391
                  or           a1, sp, s7
                  nop
                  slti         t6, t4, 682
189:              sra          s7, s2, a3
                  ori          a4, a6, 1311
                  slti         s11, t2, -321
                  and          a0, s11, a5
                  slti         t2, s9, 726
                  bge          s8, t3, 214f
                  srai         t5, s4, 21
                  sll          tp, zero, a5
                  sll          s4, t0, a4
                  blt          a5, s3, 207f
                  and          zero, s4, sp
                  srli         a2, a4, 23
                  slt          t5, sp, s9
                  srai         t4, a4, 0
                  slti         a2, s7, 1838
                  slli         s10, a4, 24
                  slli         gp, a1, 18
                  blt          a0, s1, 215f
207:              bne          s10, a2, 226f
                  and          a0, t1, t3
                  slt          gp, a0, s2
                  auipc        s3, 478227
                  blt          t1, s7, 227f
                  nop
                  srli         a7, a2, 25
214:              blt          s11, a0, 228f
215:              auipc        t0, 236130
                  xor          s1, t2, gp
                  xor          s3, a1, s0
                  lui          t4, 947476
                  andi         tp, s6, 822
                  slli         a3, s7, 11
                  addi         a5, a5, -946
                  slti         ra, a2, -1117
                  blt          a4, t4, 227f
                  or           a5, s0, s10
                  sub          t0, s10, a4
226:              blt          s0, a1, 227f
227:              bgeu         s4, tp, 239f
228:              sll          a2, gp, s0
                  srl          ra, ra, a2
                  beq          a4, tp, 234f
                  add          ra, t2, a6
                  auipc        gp, 142181
                  xor          s11, a0, sp
234:              auipc        t4, 652302
                  bge          t5, a1, 236f
236:              srli         s11, ra, 16
                  bge          a3, s7, 239f
                  slti         s1, zero, 485
239:              bltu         t5, t0, 254f
                  and          t6, tp, t2
                  xor          s11, t4, a5
                  xori         s9, s6, 1805
                  xor          s1, a6, s8
                  lui          t0, 153168
                  sll          s4, a4, a3
                  nop
                  sltu         s4, t0, a4
                  or           s8, zero, a1
                  srli         tp, s5, 23
                  slli         s7, t1, 2
                  sltiu        t2, s2, -124
                  slti         s4, t2, 1242
                  srli         a2, sp, 4
254:              and          s8, s0, t2
                  ori          a7, t6, -1679
                  xori         s8, s5, 738
                  beq          s5, s9, 269f
                  bge          s11, s0, 259f
259:              bltu         t1, sp, 264f
                  auipc        s7, 475096
                  srl          a5, sp, s7
                  sra          t2, a7, s9
                  or           zero, t0, a2
264:              lui          s8, 327485
                  lui          ra, 128278
                  sra          tp, s1, s5
                  sll          s2, a3, t3
                  lui          s1, 353616
269:              srli         a7, s0, 19
                  sltiu        t6, ra, -146
                  slt          a3, s5, a5
                  sra          s3, s6, s11
                  sra          t1, s11, zero
                  nop
                  sltiu        a0, gp, 434
                  la           s11, sub_1
                  xori         s4, ra, -330
                  srl          tp, s6, s2
                  slli         t1, t6, 3
                  slli         s9, s11, 28
                  sltu         s1, s5, s8
                  addi         s11, s11, -549
                  add          a3, ra, ra
                  addi         s3, t1, 1871
main_j2:          jalr         ra, s11, 549 #jump main -> sub_1
                  xori         ra, t1, -1832
                  srl          s0, s8, s2
                  slli         s0, s8, 7
                  bne          a5, s10, 294f
                  ori          t4, s5, 999
                  srai         t5, s11, 2
                  sub          tp, t5, s9
                  sra          gp, s10, a3
                  lui          s6, 581116
                  lui          t2, 809322
                  xori         a3, t0, -390
                  xor          s5, ra, t5
                  xori         s6, t2, 1767
                  slt          s9, s7, a1
                  lui          a5, 513689
                  bne          s7, s3, 294f
                  blt          a5, ra, 293f
                  or           s2, s1, t3
293:              andi         ra, t5, 1241
294:              lui          s11, 316693
                  sub          s11, s2, s7
                  sra          s3, t4, t6
                  or           s7, s10, t0
                  srli         s3, t2, 22
                  ori          a7, t6, -474
                  slt          a2, a7, a1
                  bgeu         s10, t3, 321f
                  nop
                  sll          t4, a2, gp
                  addi         a3, s3, 575
                  beq          s9, s0, 314f
                  srai         s1, a5, 1
                  add          a1, s10, s6
                  addi         a4, s10, 1610
                  blt          a2, s2, 327f
                  bge          s10, s5, 313f
                  bne          a6, t4, 323f
                  ori          s11, t4, 430
313:              xori         a5, a0, -1449
314:              add          s3, t3, s0
                  sll          t5, t1, t4
                  sltu         t6, s1, a6
                  addi         a0, s0, 444
                  ori          a1, s7, 435
                  bne          sp, s10, 321f
                  slli         s9, s9, 20
321:              ori          s8, t4, 1963
                  or           s2, ra, t3
323:              lui          a4, 761769
                  add          tp, t3, a7
                  sra          t0, a4, a1
                  bgeu         a0, s4, 342f
327:              nop
                  blt          s6, t3, 340f
                  or           a4, a7, a5
                  srai         s7, a6, 11
                  srl          s9, gp, s7
                  add          s0, t2, s1
                  and          s7, a7, ra
                  beq          a0, a6, 338f
                  bne          t5, a2, 351f
                  sra          a0, s1, t5
                  blt          a3, t3, 342f
338:              srli         a1, a0, 20
                  andi         t2, s8, -2019
                  la           s11, sub_3
                  srai         s5, s9, 23
                  addi         s11, s11, -322
                  nop
                  ori          a2, s0, 641
                  sra          s6, sp, s0
                  xor          zero, t4, t2
                  auipc        t2, 607744
                  srai         t2, t1, 9
                  beq          s4, t2, main_j1 #branch to jump instr
                  srl          s2, gp, gp
                  slt          s2, a3, a6
main_j1:          jalr         ra, s11, 322 #jump main -> sub_3
                  andi         tp, a0, 131
340:              sll          a0, a2, s6
                  sltu         a5, sp, a5
342:              srai         s1, a0, 30
                  sra          s2, t4, t1
                  xori         a3, t2, -1714
                  bgeu         a4, s1, 357f
                  nop
                  add          s8, a6, t3
                  srli         t4, s10, 28
                  bltu         s11, a5, 352f
                  ori          s10, gp, 1195
351:              bne          s4, s7, 360f
352:              bltu         a6, a4, 353f
353:              lui          s6, 83275
                  sub          s7, s4, a2
                  beq          s7, t3, 370f
                  bgeu         gp, s3, 368f
357:              srl          a4, a5, gp
                  blt          t5, a7, 362f
                  auipc        s0, 384188
360:              xor          a1, s11, a3
                  xori         s10, zero, -1146
362:              srl          ra, s8, ra
                  slti         s9, s1, -1822
                  addi         t4, s2, -1617
                  bgeu         s4, s7, 381f
                  sltu         s7, a1, s0
                  xor          s0, t0, s8
368:              or           s1, s5, a3
                  addi         s6, a5, -654
370:              and          s5, ra, s2
                  sra          a1, t4, t3
                  blt          t2, a0, 376f
                  or           s2, a3, s6
                  lui          t0, 26759
                  nop
376:              lui          a0, 565441
                  sll          s11, a6, tp
                  srai         s2, a1, 14
                  bltu         a6, s2, 397f
                  and          a7, t2, s0
381:              or           a3, t6, s3
                  slli         s3, s3, 19
                  andi         s7, sp, -1987
                  and          a2, t0, s3
                  slli         s7, gp, 27
                  slti         t6, s5, 374
                  bne          t1, s8, 392f
                  lui          tp, 414394
                  bne          s1, s7, 390f
390:              xori         zero, s3, 340
                  or           s2, s1, s3
392:              beq          a3, a3, 394f
                  sltu         s3, ra, t6
394:              srai         a1, s5, 25
                  andi         a2, s6, 437
                  nop
397:              slli         t2, a6, 30
                  slti         s9, a2, 868
                  bge          a2, t1, 416f
                  xor          s4, s0, s3
                  sra          a4, a2, sp
                  srli         a1, a3, 28
                  xori         s2, zero, -1871
                  srl          t1, t3, s3
                  addi         s8, tp, -1847
                  blt          t3, s8, 416f
                  blt          a6, tp, 416f
                  lui          s1, 437283
                  addi         a5, sp, -806
                  sra          s11, s1, s8
                  xor          s10, t0, gp
                  xor          s9, s5, a0
                  addi         s2, ra, 308
                  blt          s9, t2, 415f
415:              xor          a5, tp, t3
416:              add          t1, a4, s2
                  la x16, test_done
                  jalr x0, x16, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            slli         s4, s4, 18
                  sub          a1, t0, a6
                  blt          s11, s0, sub_5_stack_p
                  sra          s9, a6, s7
sub_5_stack_p:    addi         t3, t3, -60
                  or           a1, s11, a1
                  lui          t0, 140020
                  sw           ra, 4(t3)
                  and          tp, s9, t4
                  slli         t2, a3, 0
                  auipc        a4, 643436
                  sub          t4, t2, s1
sub_5_11:         jal          ra, 8f
0:                jal          t1, 14f
1:                jal          ra, 4f
2:                jal          ra, 18f
3:                jal          s3, 1b
4:                jal          t1, 13f
5:                jal          t1, 11f
6:                jal          t1, 20f
7:                jal          ra, 5b
8:                jal          ra, 2b
9:                jal          ra, 19f
10:               jal          t1, 17f
11:               jal          ra, 3b
12:               jal          t1, 6b
13:               jal          t1, 16f
14:               jal          s8, 12b
15:               jal          a4, 0b
16:               jal          ra, 21f
17:               jal          ra, 9b
18:               jal          t5, 15b
19:               jal          ra, 7b
20:               jal          ra, 10b
21:               slli         s8, s9, 25
sub_5_15:         jal          ra, 13f
0:                jal          t1, 28f
1:                jal          ra, 18f
2:                jal          t0, 29f
3:                jal          ra, 16f
4:                jal          ra, 24f
5:                jal          ra, 3b
6:                jal          ra, 4b
7:                jal          ra, 2b
8:                jal          t0, 12f
9:                jal          ra, 10f
10:               jal          ra, 22f
11:               jal          ra, 0b
12:               jal          t1, 1b
13:               jal          ra, 5b
14:               jal          ra, 30f
15:               jal          s4, 26f
16:               jal          ra, 23f
17:               jal          ra, 8b
18:               jal          t1, 21f
19:               jal          s3, 27f
20:               jal          ra, 19b
21:               jal          ra, 6b
22:               jal          ra, 7b
23:               jal          ra, 20b
24:               jal          a1, 25f
25:               jal          t2, 11b
26:               jal          t1, 14b
27:               jal          t6, 17b
28:               jal          s3, 9b
29:               jal          t2, 15b
30:               slti         gp, s9, 1059
sub_5_3:          jal          ra, 15f
0:                jal          ra, 3f
1:                jal          tp, 0b
2:                jal          a5, 21f
3:                jal          ra, 22f
4:                jal          ra, 19f
5:                jal          ra, 8f
6:                jal          ra, 23f
7:                jal          t1, 29f
8:                jal          t0, 4b
9:                jal          ra, 1b
10:               jal          ra, 5b
11:               jal          ra, 20f
12:               jal          ra, 17f
13:               jal          ra, 24f
14:               jal          tp, 18f
15:               jal          ra, 26f
16:               jal          ra, 28f
17:               jal          ra, 7b
18:               jal          ra, 6b
19:               jal          ra, 2b
20:               jal          ra, 16b
21:               jal          ra, 13b
22:               jal          t1, 11b
23:               jal          ra, 25f
24:               jal          t1, 30f
25:               jal          s7, 9b
26:               jal          ra, 27f
27:               jal          s9, 12b
28:               jal          ra, 10b
29:               jal          t1, 14b
30:               lui          a7, 812876
sub_5_14:         jal          ra, 13f
0:                jal          ra, 27f
1:                jal          ra, 2f
2:                jal          t1, 28f
3:                jal          tp, 22f
4:                jal          ra, 29f
5:                jal          gp, 1b
6:                jal          tp, 8f
7:                jal          a2, 10f
8:                jal          t2, 26f
9:                jal          ra, 3b
10:               jal          t1, 18f
11:               jal          ra, 0b
12:               jal          t1, 25f
13:               jal          ra, 9b
14:               jal          ra, 19f
15:               jal          ra, 16f
16:               jal          t1, 11b
17:               jal          t1, 5b
18:               jal          t1, 21f
19:               jal          ra, 23f
20:               jal          a7, 14b
21:               jal          ra, 17b
22:               jal          ra, 7b
23:               jal          ra, 12b
24:               jal          a4, 20b
25:               jal          ra, 4b
26:               jal          a7, 24b
27:               jal          t4, 6b
28:               jal          ra, 15b
29:               sra          s6, s8, t4
sub_5_12:         jal          ra, 5f
0:                jal          s11, 4f
1:                jal          ra, 11f
2:                jal          s6, 7f
3:                jal          t1, 1b
4:                jal          t1, 3b
5:                jal          ra, 9f
6:                jal          ra, 10f
7:                jal          ra, 6b
8:                jal          ra, 0b
9:                jal          t1, 2b
10:               jal          s7, 8b
11:               xori         s8, a1, -2025
sub_5_5:          jal          ra, 4f
0:                jal          ra, 6f
1:                jal          gp, 13f
2:                jal          ra, 19f
3:                jal          ra, 16f
4:                jal          ra, 15f
5:                jal          ra, 24f
6:                jal          ra, 11f
7:                jal          ra, 8f
8:                jal          ra, 28f
9:                jal          t1, 1b
10:               jal          ra, 3b
11:               jal          ra, 22f
12:               jal          s0, 27f
13:               jal          ra, 18f
14:               jal          ra, 26f
15:               jal          ra, 23f
16:               jal          ra, 14b
17:               jal          ra, 25f
18:               jal          tp, 17b
19:               jal          ra, 9b
20:               jal          ra, 0b
21:               jal          ra, 2b
22:               jal          ra, 10b
23:               jal          ra, 21b
24:               jal          t1, 7b
25:               jal          a2, 20b
26:               jal          t1, 12b
27:               jal          ra, 5b
28:               or           zero, s0, s10
sub_5_16:         jal          ra, 16f
0:                jal          ra, 15f
1:                jal          s3, 10f
2:                jal          t1, 5f
3:                jal          ra, 4f
4:                jal          a0, 14f
5:                jal          ra, 1b
6:                jal          ra, 19f
7:                jal          ra, 17f
8:                jal          s10, 6b
9:                jal          ra, 3b
10:               jal          t1, 13f
11:               jal          ra, 2b
12:               jal          ra, 18f
13:               jal          ra, 0b
14:               jal          ra, 7b
15:               jal          ra, 9b
16:               jal          s0, 11b
17:               jal          t1, 12b
18:               jal          ra, 8b
19:               sltu         s5, s6, s0
sub_5_10:         jal          ra, 0f
0:                jal          ra, 12f
1:                jal          ra, 4f
2:                jal          ra, 9f
3:                jal          a2, 2b
4:                jal          ra, 10f
5:                jal          t1, 3b
6:                jal          ra, 8f
7:                jal          ra, 6b
8:                jal          ra, 1b
9:                jal          ra, 13f
10:               jal          t1, 5b
11:               jal          a3, 7b
12:               jal          ra, 11b
13:               xori         s5, s5, -1512
sub_5_6:          jal          ra, 1f
0:                jal          ra, 13f
1:                jal          t1, 21f
2:                jal          ra, 23f
3:                jal          ra, 15f
4:                jal          ra, 12f
5:                jal          s10, 19f
6:                jal          ra, 9f
7:                jal          ra, 26f
8:                jal          ra, 25f
9:                jal          ra, 11f
10:               jal          t1, 5b
11:               jal          ra, 8b
12:               jal          ra, 18f
13:               jal          s6, 16f
14:               jal          ra, 10b
15:               jal          ra, 24f
16:               jal          ra, 2b
17:               jal          ra, 4b
18:               jal          ra, 0b
19:               jal          ra, 22f
20:               jal          ra, 14b
21:               jal          t1, 17b
22:               jal          ra, 3b
23:               jal          ra, 20b
24:               jal          t1, 6b
25:               jal          ra, 7b
26:               add          a5, gp, t2
sub_5_4:          jal          ra, 17f
0:                jal          ra, 9f
1:                jal          ra, 12f
2:                jal          tp, 3f
3:                jal          ra, 13f
4:                jal          t1, 18f
5:                jal          ra, 21f
6:                jal          ra, 1b
7:                jal          t1, 14f
8:                jal          s11, 2b
9:                jal          ra, 7b
10:               jal          ra, 15f
11:               jal          ra, 4b
12:               jal          t1, 5b
13:               jal          t1, 16f
14:               jal          a4, 6b
15:               jal          ra, 8b
16:               jal          t1, 11b
17:               jal          t1, 10b
18:               jal          ra, 20f
19:               jal          ra, 0b
20:               jal          t1, 19b
21:               sltu         s9, a1, s4
sub_5_17:         jal          ra, 11f
0:                jal          ra, 5f
1:                jal          t1, 20f
2:                jal          ra, 10f
3:                jal          t1, 1b
4:                jal          s1, 22f
5:                jal          ra, 15f
6:                jal          t1, 16f
7:                jal          t1, 17f
8:                jal          ra, 12f
9:                jal          s2, 19f
10:               jal          ra, 18f
11:               jal          ra, 8b
12:               jal          t1, 21f
13:               jal          ra, 7b
14:               jal          s4, 3b
15:               jal          tp, 9b
16:               jal          ra, 24f
17:               jal          ra, 14b
18:               jal          t1, 4b
19:               jal          tp, 13b
20:               jal          ra, 2b
21:               jal          t1, 23f
22:               jal          ra, 25f
23:               jal          ra, 6b
24:               jal          t4, 0b
25:               sll          t4, sp, ra
sub_5_0:          jal          ra, 0f
0:                jal          ra, 10f
1:                jal          ra, 7f
2:                jal          a7, 15f
3:                jal          ra, 1b
4:                jal          ra, 11f
5:                jal          ra, 13f
6:                jal          t5, 14f
7:                jal          ra, 18f
8:                jal          ra, 5b
9:                jal          ra, 21f
10:               jal          a3, 20f
11:               jal          ra, 16f
12:               jal          gp, 4b
13:               jal          ra, 6b
14:               jal          t1, 12b
15:               jal          ra, 17f
16:               jal          ra, 2b
17:               jal          ra, 19f
18:               jal          gp, 22f
19:               jal          ra, 3b
20:               jal          t1, 9b
21:               jal          ra, 8b
22:               sltu         zero, s5, ra
sub_5_13:         jal          ra, 7f
0:                jal          t1, 9f
1:                jal          ra, 5f
2:                jal          t6, 12f
3:                jal          tp, 14f
4:                jal          a5, 8f
5:                jal          ra, 0b
6:                jal          ra, 4b
7:                jal          ra, 6b
8:                jal          ra, 2b
9:                jal          t1, 3b
10:               jal          ra, 13f
11:               jal          gp, 1b
12:               jal          ra, 10b
13:               jal          ra, 11b
14:               slti         t5, s0, -1364
sub_5_1:          jal          ra, 1f
0:                jal          ra, 4f
1:                jal          a0, 11f
2:                jal          t1, 9f
3:                jal          t1, 12f
4:                jal          ra, 13f
5:                jal          ra, 3b
6:                jal          ra, 8f
7:                jal          ra, 10f
8:                jal          a2, 7b
9:                jal          t1, 0b
10:               jal          t1, 2b
11:               jal          ra, 5b
12:               jal          ra, 6b
13:               sltu         gp, tp, t4
sub_5_2:          jal          ra, 12f
0:                jal          ra, 13f
1:                jal          t1, 0b
2:                jal          t1, 14f
3:                jal          a0, 22f
4:                jal          ra, 19f
5:                jal          s10, 10f
6:                jal          ra, 9f
7:                jal          t1, 1b
8:                jal          tp, 15f
9:                jal          t1, 3b
10:               jal          t1, 11f
11:               jal          ra, 8b
12:               jal          ra, 5b
13:               jal          t1, 21f
14:               jal          ra, 6b
15:               jal          s9, 17f
16:               jal          t1, 20f
17:               jal          ra, 4b
18:               jal          a1, 7b
19:               jal          ra, 18b
20:               jal          ra, 2b
21:               jal          ra, 16b
22:               ori          s0, t0, 1837
sub_5_8:          jal          ra, 15f
0:                jal          s8, 13f
1:                jal          ra, 6f
2:                jal          t0, 14f
3:                jal          ra, 11f
4:                jal          ra, 9f
5:                jal          t1, 2b
6:                jal          t1, 18f
7:                jal          ra, 3b
8:                jal          s0, 10f
9:                jal          ra, 5b
10:               jal          gp, 1b
11:               jal          ra, 19f
12:               jal          ra, 4b
13:               jal          ra, 17f
14:               jal          ra, 8b
15:               jal          t1, 0b
16:               jal          ra, 20f
17:               jal          ra, 7b
18:               jal          ra, 16b
19:               jal          a7, 12b
20:               slt          t4, s0, s0
                  slt          a1, ra, s0
                  sltiu        t0, s7, 13
                  and          s9, a4, s6
                  sltiu        a5, s0, -775
                  xori         s10, s10, 1388
                  sra          s9, a4, t1
                  auipc        s3, 156594
                  beq          t4, s3, 14f
                  srli         t5, a2, 8
                  bge          t0, sp, 25f
                  srai         s9, t5, 29
                  and          t1, a3, s8
                  srl          a5, s0, s2
                  ori          s3, s0, -1850
14:               auipc        s0, 473989
                  add          s4, a1, s8
                  srai         t1, s2, 23
                  beq          s3, zero, 18f
18:               blt          t5, s6, 19f
19:               sltu         t2, s5, s5
                  bne          t5, a3, 22f
                  srai         a1, a4, 8
22:               bgeu         s8, s11, 34f
                  or           a5, s4, a6
                  bne          gp, ra, 30f
25:               slti         a5, s7, -21
                  sll          s5, a1, s3
                  xor          s0, zero, a7
                  blt          a2, s7, 40f
                  slli         a7, tp, 7
30:               bgeu         s3, a4, 37f
                  xor          s2, t6, s8
                  sub          a3, a0, gp
                  or           t4, s0, s7
34:               srai         s11, a4, 6
                  sub          gp, t2, t3
                  bge          t5, a7, 48f
37:               sltiu        t5, s8, -350
                  nop
                  bge          t5, t6, 54f
40:               beq          a7, s0, 47f
                  sltiu        s3, s8, -1685
                  srai         ra, a6, 9
                  xor          t5, s3, t0
                  and          a1, t5, t6
                  srl          s0, a2, t5
                  blt          s4, t2, 53f
47:               sub          tp, zero, sp
48:               xori         s7, zero, -175
                  sra          s10, a2, s6
                  blt          a1, sp, 60f
                  add          s0, s2, sp
                  bltu         t0, s2, 54f
53:               ori          zero, a7, 1621
54:               add          ra, t3, t4
                  sub          s1, a2, a3
                  bgeu         s9, s0, 59f
                  bne          s11, a5, 62f
                  add          a0, t2, a2
59:               slti         a2, s8, 1854
60:               xori         a7, ra, 1810
                  sltiu        s0, s6, -1946
62:               bgeu         s6, s5, 80f
                  auipc        s11, 466976
                  ori          s0, s10, 278
                  bge          a5, gp, 73f
                  addi         s6, s1, -711
                  nop
                  blt          s4, t3, 75f
                  xor          gp, t6, tp
                  sltu         a2, s0, s10
                  bltu         t6, s6, 79f
                  sub          a0, s6, s2
73:               sltiu        s9, a6, -1108
                  xori         ra, s6, 1553
75:               sltu         a0, s5, s3
                  andi         s5, t0, 765
                  ori          s11, s8, -1234
                  sub          s3, t4, a7
79:               blt          a6, ra, 93f
80:               nop
                  sub          a2, s2, s6
                  nop
                  bltu         zero, t3, 88f
                  bltu         s1, a6, 86f
                  and          t5, zero, s1
86:               bne          a0, s9, 99f
                  auipc        s3, 5079
88:               bge          s7, s4, 89f
89:               srl          ra, t4, s8
                  srai         a4, t4, 1
                  xor          t2, t3, s6
                  addi         s6, t1, -514
93:               sub          s9, s9, t0
                  bltu         sp, tp, 98f
                  bgeu         s4, tp, 102f
                  srli         s5, a0, 3
                  sra          a4, a1, ra
98:               srai         tp, t6, 16
99:               bltu         sp, a2, 111f
                  bge          t4, s2, 116f
                  addi         s6, t1, -1827
102:              xor          s4, t6, a7
                  slli         s5, tp, 18
                  sltu         a0, a2, s10
                  srai         t0, zero, 15
                  bne          a0, s9, 113f
                  beq          s3, s3, 119f
                  sltu         s9, s1, zero
                  bge          t1, s2, 125f
                  andi         t6, ra, 1056
111:              bgeu         a3, t4, 123f
                  and          s6, s10, t2
113:              bgeu         t5, a4, 128f
                  srl          a5, s0, t6
                  srai         s9, gp, 24
116:              xor          a3, zero, t1
                  blt          t2, ra, 119f
                  ori          t4, t2, -373
119:              or           s7, tp, a2
                  ori          t6, t2, -1917
                  slti         t2, s7, 75
                  slti         s3, t1, 1106
123:              bltu         s7, s1, 130f
                  srli         t4, s6, 13
125:              lui          s3, 503011
                  blt          a1, a6, 127f
127:              blt          a1, a5, 130f
128:              xor          a7, s5, a6
                  and          a5, tp, s0
130:              add          s4, s6, t4
                  bge          t5, t4, 138f
                  sltiu        s11, s4, 1994
                  srli         s6, s10, 3
                  add          s10, ra, a1
                  xor          zero, ra, a1
                  sltiu        a3, a2, -708
                  srai         s5, s11, 14
138:              slli         t0, tp, 6
                  andi         t1, a2, -1471
                  ori          s10, s4, 1921
                  sra          s4, s1, t3
                  addi         s11, s10, -1427
                  sltu         a2, a2, sp
                  lui          t2, 270775
                  sll          t1, s11, t3
                  and          s6, s10, s8
                  or           s8, s6, t5
                  slti         zero, s9, -195
                  beq          a7, s2, 161f
                  srai         s11, a1, 1
                  slli         a0, tp, 6
                  sltu         s8, t3, t2
                  sltu         s11, s11, a1
                  auipc        a3, 493687
                  ori          a2, s2, -572
                  bge          s0, s3, 166f
                  srai         a2, t0, 1
                  slt          gp, gp, s8
                  sltiu        t1, s3, 196
                  sll          s0, t2, gp
161:              slti         a4, a4, 1476
                  addi         a7, a4, -609
                  nop
                  auipc        s10, 667171
                  bltu         s3, s0, 181f
166:              sltu         s10, t6, s8
                  auipc        gp, 345404
                  srai         tp, t1, 3
                  srli         gp, zero, 15
                  nop
                  addi         s4, a7, 1428
                  addi         t0, a5, 120
                  blt          s8, zero, 180f
                  xor          s6, a5, t5
                  or           t1, s10, s4
                  bge          s11, a2, 183f
                  slti         t2, t1, 1484
                  bne          t3, s2, 192f
                  srli         ra, t2, 16
180:              sltiu        ra, a3, -1224
181:              xor          s7, s10, ra
                  nop
183:              srai         a1, s9, 16
                  bltu         t3, a5, 185f
185:              slt          s11, s9, t6
                  slt          s1, s9, s6
                  srl          s4, a3, t0
                  and          t1, a4, a4
                  xori         s11, a7, 1100
                  or           a5, s3, t3
                  srli         a0, s1, 26
192:              auipc        a5, 871957
                  sltiu        a1, s8, 1953
                  bltu         s8, s0, 195f
195:              and          s2, t2, s5
                  srai         s5, t2, 3
                  sltu         s1, s2, a4
                  sra          a2, s1, t4
                  nop
                  and          s11, a5, t6
                  bgeu         sp, t5, 203f
                  ori          s3, s3, -1268
203:              sra          s1, a1, t4
                  and          t1, t5, a7
                  slt          s0, t6, a4
                  or           s9, s7, s4
                  andi         ra, s2, 2009
                  srli         t0, a4, 28
                  xori         zero, s6, 573
                  xori         s6, a2, 302
                  ori          s9, t1, 1152
                  addi         s10, s9, -675
                  add          zero, t5, ra
                  auipc        s6, 764262
                  xori         a0, a2, -350
                  sltiu        s11, t5, -1544
                  bltu         a0, s0, 225f
                  beq          a7, t0, 222f
                  sltiu        s11, s8, 1924
                  andi         s0, s7, -1786
                  sra          ra, a5, zero
222:              sub          s11, t0, s2
                  srli         s3, t3, 10
                  auipc        a0, 584288
225:              srl          s10, a3, s3
                  bltu         s6, s2, 228f
                  bge          a1, zero, 232f
228:              sra          t2, ra, s5
                  sltu         a7, a2, s0
                  lui          s7, 503394
                  sra          s11, s5, t5
232:              ori          tp, t6, 1932
                  srai         t5, s0, 14
                  bge          a6, s2, 241f
                  sub          a2, s3, tp
                  sub          tp, a4, s1
                  slt          s8, s3, t1
                  lui          t5, 11162
                  ori          t2, sp, -912
                  ori          s8, s5, -47
241:              nop
                  andi         t2, t4, -168
                  bgeu         t4, s4, 251f
                  blt          t0, a1, 250f
                  and          s8, a7, s9
                  ori          s7, t2, -622
                  auipc        s6, 545358
                  and          t5, t0, sp
                  beq          a6, s4, 261f
250:              auipc        s4, 664783
251:              sll          s7, a0, t2
                  srl          s7, gp, s4
                  add          zero, zero, a1
                  blt          s0, s9, 267f
                  or           t1, s2, t1
                  xor          s3, a2, t2
                  addi         zero, s4, 1968
                  slt          a2, s5, a3
                  or           s2, a5, s11
                  or           ra, s1, a2
261:              xor          s11, a2, s1
                  slli         t6, t1, 29
                  slti         a2, gp, 1320
                  ori          a5, a0, -479
                  bgeu         sp, a1, 270f
                  andi         s11, s0, 135
267:              blt          a2, a5, 285f
                  sub          a2, a3, a1
                  ori          s10, s11, -1438
270:              slli         s7, s0, 0
                  lui          s8, 126706
                  sra          s11, s6, a5
                  xori         s0, s6, 508
                  sll          s5, t5, t5
                  auipc        a4, 364073
                  and          s9, a7, s9
                  andi         s4, a7, 1255
                  sltu         a0, s8, gp
                  or           s0, tp, a4
                  beq          tp, t6, 285f
                  add          zero, a2, a7
                  xor          s1, s0, s8
                  srli         tp, s4, 21
                  beq          s8, a4, 292f
285:              lui          t5, 132176
                  srai         s3, s0, 3
                  sltiu        s9, gp, 967
                  andi         t6, s4, 1772
                  addi         a3, s8, -1521
                  ori          a1, a1, 738
                  slti         s2, a7, -771
292:              or           s1, a7, ra
                  lui          a1, 278947
                  srai         a1, s1, 16
                  add          s10, s2, s0
                  sra          s0, s11, t4
                  slti         s9, s4, 1151
                  bgeu         t0, tp, 299f
299:              srl          gp, s7, s10
                  slli         t4, sp, 28
                  auipc        s5, 141553
                  srai         a0, s8, 26
                  srli         s2, a4, 24
                  bge          a6, s7, 311f
                  auipc        s9, 167578
                  slti         s6, t6, 84
                  addi         a5, s11, -606
                  slti         t5, s1, -21
                  sll          s2, t6, s11
                  blt          a2, t1, 312f
311:              blt          sp, t5, 318f
312:              srli         t5, s8, 28
                  bne          sp, gp, 320f
                  blt          a7, s2, 324f
                  blt          a6, ra, 327f
                  andi         t1, t4, -268
                  and          zero, a2, t4
318:              slt          zero, a2, s4
                  sltu         a2, a2, s4
320:              auipc        ra, 232310
                  beq          t1, a7, 323f
                  lui          s9, 251206
323:              addi         t1, s10, -323
324:              beq          t5, a6, 329f
                  bgeu         a1, a6, 341f
                  beq          a5, a5, 339f
327:              slti         s5, sp, -346
                  sra          a3, a4, a0
329:              xor          t1, s6, t3
                  ori          s10, s4, 146
                  sub          t1, zero, t0
                  xor          a5, s7, s1
                  andi         t4, a7, 235
                  bgeu         ra, a6, 341f
                  lui          s5, 399732
                  bgeu         s11, s11, 343f
                  bne          s3, a4, 349f
                  bgeu         sp, a4, 341f
339:              srl          t4, s10, t0
                  xori         t4, t0, 165
341:              auipc        s10, 227856
                  bge          t5, s10, 356f
343:              srli         s8, a5, 19
                  lui          s3, 918820
                  xori         tp, s2, 646
                  bgeu         zero, tp, 347f
347:              sltiu        tp, s6, 1779
                  lui          s2, 993757
349:              or           s1, s9, a7
                  slti         s0, a7, 1834
                  blt          s5, t0, 363f
                  sll          s1, sp, zero
                  xori         a7, t2, -1241
                  addi         a1, gp, 595
                  srli         s3, sp, 14
356:              nop
                  srai         t0, t3, 18
                  bltu         t1, s8, 359f
359:              srl          gp, s3, s10
                  beq          t6, s7, 368f
                  beq          s10, t4, 368f
                  slt          ra, a5, s0
363:              sltu         t2, s9, s2
                  bge          s0, s9, 380f
                  bge          s4, gp, 380f
                  andi         zero, s9, 665
                  auipc        a7, 941498
368:              addi         s5, tp, -242
                  srl          a4, t1, a1
                  add          s6, s5, t4
                  sltu         s6, s8, s5
                  lui          s7, 167161
                  sltiu        a3, t4, -710
                  lui          tp, 595714
                  sltiu        a0, s1, -1697
                  bgeu         t0, s0, 382f
                  sltu         s11, tp, a2
                  slt          s6, s9, t0
                  bne          s4, zero, 397f
380:              bge          a0, t0, 392f
                  add          s5, s1, t0
382:              beq          s6, a6, 386f
                  srli         s0, s4, 19
                  sltiu        t5, t0, -957
                  sltu         s7, t4, t6
386:              bgeu         s11, t3, 388f
                  addi         s1, s1, 237
388:              xori         s4, ra, -1242
                  ori          a5, sp, 440
                  bne          s1, s6, 404f
                  and          s7, a6, s6
392:              ori          t6, a0, 311
                  srai         a2, a7, 8
                  sltu         a4, s3, a4
                  bge          a6, t1, 397f
                  slli         gp, s4, 16
397:              sub          s5, a5, s6
                  sll          zero, a7, s6
                  sll          tp, s1, a6
                  sra          tp, s9, gp
                  slt          t5, t4, s3
                  srli         s11, ra, 28
                  ori          s9, s3, 1555
404:              beq          a7, s5, 420f
                  add          t6, s11, a2
                  ori          a7, a0, -33
                  xor          s0, a5, t3
                  bgeu         t1, s9, 409f
409:              or           a3, t5, s11
                  sub          gp, a0, a3
                  slti         zero, ra, 2031
                  slti         s10, zero, 901
                  sltiu        a4, t3, 481
                  addi         s1, s8, -1869
                  bne          t2, a0, 417f
                  sub          gp, t2, a1
417:              bge          ra, t5, 429f
                  xori         a4, a3, -148
                  bge          s1, s1, 432f
420:              slti         ra, gp, 1409
                  and          s1, a0, a7
                  sltiu        s0, ra, 1047
                  bltu         sp, s10, 430f
                  slt          t2, a2, t0
                  lui          a0, 653932
                  bgeu         a5, s5, 428f
                  bltu         a5, a1, 437f
428:              addi         a4, s3, 1794
429:              addi         t2, s10, -1074
430:              beq          a1, a3, 442f
                  addi         t1, tp, -1813
432:              sra          a4, s2, a2
                  and          ra, t3, s5
                  ori          s5, t2, 1663
                  srli         a4, t6, 18
                  addi         zero, a5, 186
437:              nop
                  sra          s6, a5, s10
                  nop
                  blt          s5, s9, 447f
                  sub          tp, s0, a4
442:              sll          s0, s5, s2
                  ori          t6, a6, -1123
                  slli         a4, tp, 0
                  slt          t5, t4, t1
                  bltu         s5, a6, 452f
447:              andi         tp, t2, 1988
                  bge          t3, s2, 449f
449:              sltu         s6, s6, s7
                  bge          zero, s3, 457f
                  srai         a0, s0, 9
452:              bge          t2, a6, 470f
                  blt          a4, a3, 460f
                  auipc        t5, 189940
                  sra          s7, t1, s2
                  lui          s9, 338568
457:              ori          zero, tp, 1339
                  addi         s3, a6, 1041
                  xori         t0, a1, 236
460:              bge          a3, t5, 467f
                  sltiu        a2, t0, 1500
                  blt          s10, t2, 463f
463:              auipc        a2, 269270
                  auipc        a2, 546394
                  add          t6, a0, a1
                  bgeu         s4, s11, 478f
467:              sra          s2, s2, t2
                  sltu         s0, a4, a0
                  sub          s6, s4, s8
470:              srli         a5, s4, 29
                  slti         a1, a0, 1302
                  or           s9, ra, t1
                  slti         s1, a3, -1390
                  sra          s9, t6, s2
                  addi         s1, a5, -1786
                  bgeu         a2, a7, 481f
                  andi         a5, a3, 820
478:              bne          t1, s0, 490f
                  auipc        a7, 392290
                  sltu         s5, s1, a7
481:              srl          t6, t0, s5
                  bltu         sp, s8, 490f
                  bgeu         t5, a1, 499f
                  slti         s1, a6, -154
                  auipc        s9, 872144
                  blt          sp, a6, 493f
                  beq          a6, a1, 502f
                  slti         tp, s6, -1269
                  slt          s4, s6, a0
490:              or           zero, a2, t6
                  srai         a7, t5, 16
                  bge          s11, s6, 500f
493:              sll          a3, t2, s6
                  bgeu         a4, s5, 498f
                  slti         t4, s5, -105
                  sll          s2, t3, a5
                  andi         s1, s9, 1987
498:              bge          t4, t3, 503f
499:              sub          gp, a0, s10
500:              auipc        a2, 964154
                  sub          t2, zero, a4
502:              and          s3, s6, t5
503:              srli         s11, s0, 14
                  srli         s11, t1, 1
                  addi         t6, t0, 305
                  beq          s1, s2, 509f
                  xori         a7, t6, 162
                  bltu         s11, s9, 509f
509:              lui          s5, 528142
                  bgeu         gp, t3, 512f
                  bne          zero, a0, 515f
512:              sll          ra, a5, s8
                  addi         s3, s11, -1547
                  xor          tp, s9, s10
515:              xori         s6, s0, 95
                  srli         s4, a5, 30
                  blt          a5, s8, 524f
                  sltu         s8, s6, a0
                  xor          s7, s6, s9
                  sll          s4, s7, s9
                  slt          s5, s0, s5
                  sra          s2, s1, a4
                  sub          t1, a4, t5
524:              bltu         ra, s7, 539f
                  slli         s10, a4, 8
                  srai         s3, zero, 26
                  sll          zero, t4, ra
                  slt          s11, s10, s10
                  add          t0, s2, s4
                  add          t1, s9, a3
                  bltu         s9, t4, 544f
                  sltiu        t6, t6, 1710
                  sll          s5, s1, gp
                  add          t5, a2, s3
                  ori          s7, a2, 1024
                  slt          s10, s7, s11
                  sltiu        t4, s2, 1325
                  xori         t1, a6, -1922
539:              nop
                  sltiu        s5, s3, -454
                  add          tp, s4, t3
                  bne          sp, s4, 544f
                  bgeu         tp, a5, 553f
544:              slti         s4, s11, -953
                  bne          s10, t2, 557f
                  slti         gp, ra, 414
                  blt          s6, t0, 559f
                  bgeu         s10, t1, 550f
                  beq          a5, t3, 556f
550:              bgeu         s8, t4, 562f
                  addi         gp, s11, -1719
                  bgeu         t5, t0, 553f
553:              xori         s4, sp, 1654
                  slti         zero, s0, -766
                  andi         a7, s3, 188
556:              slt          zero, t5, s10
557:              bgeu         t0, a4, 562f
                  bne          s8, s2, 563f
559:              or           s11, s2, s8
                  bge          gp, sp, 568f
                  and          s0, s4, zero
562:              and          a0, a4, a7
563:              addi         a2, s11, -1395
                  slti         s1, gp, 2026
                  andi         s6, a2, -1460
                  xor          gp, s4, gp
                  or           s10, gp, t5
568:              sra          t4, a6, a3
                  srai         gp, a4, 4
                  beq          gp, a7, 577f
                  sll          s1, s9, gp
                  ori          s11, s10, -901
                  xori         tp, s2, 838
                  bge          s6, sp, 581f
                  add          tp, t4, t5
                  xori         ra, s3, 1941
577:              nop
                  bne          zero, t2, 579f
579:              bge          zero, t2, 597f
                  xori         ra, s4, -343
581:              blt          s6, s5, 597f
                  blt          s5, a1, 598f
                  srli         s2, s3, 29
                  and          tp, s3, zero
                  srli         zero, t6, 6
                  or           s10, a1, a7
                  auipc        t1, 177728
                  sub          t5, s6, t5
                  nop
                  lui          t1, 130333
                  slt          s2, a2, s0
                  blt          gp, gp, 598f
                  beq          s11, t5, 601f
                  lui          s2, 907263
                  add          s1, t4, a1
                  xor          a2, s9, a5
597:              slli         s9, a4, 4
598:              andi         zero, s11, -237
                  beq          a6, t3, 611f
                  addi         a7, s6, 690
601:              bne          a2, s4, 604f
                  bne          s6, s3, 616f
                  and          s2, a6, s4
604:              sra          t2, a0, a4
                  slti         a5, a0, 1364
                  bne          a0, s1, 613f
                  or           s6, s8, gp
                  lui          a3, 380123
                  srl          s9, a2, a7
                  slli         t1, s8, 5
611:              bge          t3, a0, 618f
                  xori         t6, a2, 1455
613:              sra          ra, s3, a2
                  addi         t2, t2, 760
                  slti         s9, a5, -1714
616:              nop
                  ori          a2, s7, 1373
618:              or           tp, a0, ra
                  ori          ra, t3, 1789
                  addi         t5, s3, -287
sub_5_9:          jal          ra, 18f
0:                jal          a2, 9f
1:                jal          ra, 19f
2:                jal          t0, 8f
3:                jal          t1, 1b
4:                jal          ra, 12f
5:                jal          t4, 2b
6:                jal          ra, 10f
7:                jal          ra, 6b
8:                jal          ra, 14f
9:                jal          t1, 7b
10:               jal          gp, 4b
11:               jal          ra, 17f
12:               jal          ra, 5b
13:               jal          ra, 11b
14:               jal          ra, 20f
15:               jal          ra, 0b
16:               jal          ra, 3b
17:               jal          t1, 16b
18:               jal          t1, 13b
19:               jal          ra, 15b
20:               jal          tp, 21f
21:               auipc        a2, 588600
                  sltu         ra, a3, s6
                  lui          a4, 978484
                  or           a7, t6, a3
                  sub          t5, a2, s4
                  slti         gp, t0, 918
                  slt          t2, t4, a1
                  sltu         s8, s8, s0
                  xori         ra, s5, -215
                  sll          a1, s0, t2
                  bgeu         s0, ra, 645f
                  addi         t5, tp, -645
                  add          t5, a7, t1
                  xor          ra, gp, s7
                  auipc        t0, 1016465
                  beq          s7, sp, 645f
                  slli         a0, t5, 29
                  and          a3, t3, s11
                  sub          gp, zero, ra
                  auipc        a4, 749247
                  addi         t2, a5, -314
                  lui          a3, 682314
                  bge          t0, s7, 648f
                  andi         a7, a0, 1105
                  srl          s0, a6, s11
645:              bgeu         a3, s1, 652f
                  sra          tp, tp, s7
                  slli         a1, zero, 23
648:              slti         a7, a7, -1022
                  sltu         s3, s5, s6
                  slti         s6, t3, -1004
                  srli         s2, a1, 9
652:              bltu         a0, a6, 654f
                  and          s6, s6, s3
654:              srai         s3, a1, 30
                  srai         a3, s0, 5
                  bne          ra, t2, 668f
                  and          s11, s5, s10
                  bne          t6, a3, 665f
                  andi         tp, tp, -1274
                  or           t2, gp, a3
                  slli         s0, s2, 19
                  sltiu        t1, a1, -453
                  nop
                  srli         a3, s4, 13
665:              srli         t0, a1, 29
                  srli         a1, zero, 21
                  bge          a5, gp, 674f
668:              andi         t2, t2, 531
                  sra          s9, a4, t3
                  bge          s3, ra, 678f
                  xori         s3, tp, 1996
                  sltiu        s9, t5, -1396
                  beq          s9, s10, 681f
674:              lui          t5, 58720
                  slti         a0, a6, -1514
                  srai         s4, s6, 24
                  bge          t5, a4, 693f
678:              nop
                  and          s10, t0, s8
                  blt          a2, a6, 685f
681:              blt          t4, s3, 682f
682:              bltu         sp, t2, 695f
                  xori         a1, s2, 896
                  bltu         tp, s3, 691f
685:              sltu         s8, s6, t0
                  sub          s8, t2, t3
                  bge          s11, t5, 699f
                  bltu         t2, t6, 689f
689:              nop
                  or           a0, s7, s10
691:              bgeu         t5, t4, 696f
                  bne          zero, s5, 693f
693:              srl          s7, s11, a3
                  xor          s8, s10, t1
695:              slt          s11, s9, s1
696:              bgeu         t3, s2, 708f
                  auipc        s7, 926366
                  add          t0, s3, tp
699:              or           a3, zero, gp
                  slti         s0, a6, -959
                  sltiu        s1, s1, -1670
                  and          s9, sp, s5
                  bne          a4, s11, 710f
                  andi         t6, s9, -467
                  srl          t2, s7, s8
                  slt          ra, t2, t6
                  nop
708:              bltu         a2, s11, 720f
                  srl          s9, t5, a6
710:              xor          s7, s10, t4
                  sltiu        s11, t4, 1986
                  bge          s8, t3, 730f
                  xori         t6, a2, -1186
                  xori         t4, t1, -955
                  srl          s2, gp, s9
                  srli         a5, s1, 2
                  and          tp, s5, t3
                  sltiu        s4, t6, 1994
                  srai         s7, t0, 5
720:              auipc        s7, 97298
                  xor          a2, s5, zero
                  blt          s8, s1, 729f
                  bge          t3, t5, 726f
                  slt          s10, ra, s11
                  auipc        a7, 649656
726:              xori         t1, s7, -1419
                  slt          t1, t1, t3
                  slti         t2, a6, 1574
729:              addi         s9, s2, 1667
730:              bgeu         s9, t1, 732f
                  add          s11, a6, a3
732:              slli         t0, s6, 23
                  bne          a7, s6, 749f
                  ori          a7, a4, -748
sub_5_7:          jal          ra, 3f
0:                jal          a7, 11f
1:                jal          ra, 10f
2:                jal          t1, 18f
3:                jal          t1, 16f
4:                jal          ra, 1b
5:                jal          t0, 6f
6:                jal          tp, 15f
7:                jal          ra, 17f
8:                jal          ra, 13f
9:                jal          t0, 14f
10:               jal          ra, 7b
11:               jal          ra, 4b
12:               jal          t1, 8b
13:               jal          ra, 0b
14:               jal          t1, 5b
15:               jal          t1, 2b
16:               jal          t5, 12b
17:               jal          ra, 9b
18:               and          s4, gp, tp
                  sub          s11, a2, s1
                  slt          a5, s5, t1
                  slti         a7, tp, -1528
                  ori          a0, a3, 1614
                  bne          s4, ra, 753f
                  bne          ra, a1, 742f
                  sra          t1, t5, a7
742:              blt          t2, s9, 746f
                  bgeu         s7, zero, 758f
                  or           s11, t2, s3
                  addi         gp, t1, 166
746:              ori          t5, t5, -1402
                  andi         t0, a7, -1897
                  lui          zero, 117784
749:              lui          tp, 31396
                  srai         s11, t0, 12
                  auipc        a1, 514194
                  nop
753:              sltiu        ra, s6, -1027
                  addi         a0, a3, 2044
                  nop
                  add          a5, s3, s7
                  slt          s6, s1, s1
758:              slti         tp, s6, -1755
                  sub          s6, t2, t5
                  ori          s7, s0, -1550
                  beq          tp, s3, 773f
                  slti         zero, t1, -474
                  ori          s6, a2, 1963
                  auipc        gp, 737585
                  lui          a0, 524650
                  bltu         sp, t0, 782f
                  bltu         a4, gp, 769f
                  ori          s8, s1, -551
769:              or           s7, s8, tp
                  bltu         a1, t5, 772f
                  sltiu        t5, s10, -1041
772:              srli         s4, s5, 10
773:              bgeu         a0, s9, 774f
774:              nop
                  sra          a4, a7, t6
                  or           s6, s5, s10
                  sltiu        s8, s4, 1805
                  sltiu        s9, s0, 1031
                  xori         a0, a6, -1567
                  bltu         a5, s2, 798f
                  sltu         t5, t6, s8
782:              sltu         zero, s10, s0
                  sltu         a0, tp, t5
                  nop
                  sltu         s9, s1, t0
                  bgeu         a2, a7, 794f
                  bne          s3, t4, 794f
                  andi         s11, t1, -337
                  sll          s4, s9, s6
                  slti         t0, t1, 1588
                  auipc        s9, 793009
                  or           s1, a0, s5
                  sltiu        gp, a6, 1891
794:              sll          s0, s8, t1
                  srai         s6, zero, 18
                  sub          s2, ra, a5
                  sub          s5, a4, s2
798:              blt          a3, s11, 805f
                  srl          a4, a6, s2
                  beq          s2, ra, 812f
                  srl          s10, t4, s10
                  sll          s11, s6, a3
                  blt          t2, s5, 807f
                  andi         a4, a4, -424
805:              add          s3, a7, s3
                  or           gp, s0, a2
807:              slli         zero, a7, 15
                  ori          a4, a7, 460
                  srl          s1, a0, s3
                  sra          s8, s1, s7
                  auipc        s11, 684438
812:              slli         s4, t2, 26
                  sltu         s10, s3, s10
                  lui          t1, 509822
                  beq          t1, s7, 823f
                  srl          a4, ra, ra
                  slt          a2, a4, s7
                  slt          s10, sp, tp
                  ori          s3, s5, 399
                  xori         a3, s9, -736
                  sltiu        s9, zero, 1767
                  auipc        a7, 799806
823:              xori         s3, s3, 327
                  sra          a4, s5, gp
                  ori          a0, a7, -177
                  addi         t6, sp, 1036
                  bltu         a4, a6, 833f
                  sra          s7, gp, t5
                  slli         s6, a4, 11
                  bge          s5, s1, 844f
                  bne          a5, s8, 832f
832:              andi         s6, s8, -631
833:              add          a7, s9, s8
                  slli         s3, a4, 26
                  nop
                  sll          s7, sp, t6
                  srli         s4, a7, 14
                  bge          a5, s0, 845f
                  nop
                  beq          s11, a3, 850f
                  andi         s9, t6, -288
                  bltu         gp, a1, 855f
                  addi         a0, s1, 237
844:              srli         a2, s11, 24
845:              sltiu        zero, s9, 1764
                  sll          t5, a1, a3
                  and          s10, s9, a0
                  auipc        s11, 433798
                  sll          a4, s11, a2
850:              auipc        s11, 865960
                  lui          a0, 791684
                  auipc        zero, 601488
                  slti         gp, t4, -287
                  sll          s3, tp, ra
855:              bge          a4, a7, 858f
                  lui          t4, 630498
                  srai         t0, ra, 27
858:              slti         s2, s5, 77
                  sra          s7, s4, s5
                  sltu         t4, a7, a6
                  nop
                  or           a2, s6, s6
                  xor          s1, a1, s5
                  bge          s2, t4, 871f
                  and          t2, tp, a5
                  slli         s8, gp, 16
                  srl          a3, t0, a3
                  blt          a4, ra, 875f
                  andi         s8, s4, 184
                  slti         t1, sp, 417
871:              or           s11, a2, s5
                  auipc        s1, 102190
                  and          a7, t5, a4
                  xor          t4, s7, s9
875:              sra          s10, a5, a5
                  slt          s2, s8, s10
                  xor          s9, tp, a4
                  xori         s9, s8, -292
                  xor          s3, t6, t2
                  and          s7, a4, a6
                  sltu         s11, a2, s2
                  auipc        t4, 474520
                  beq          s6, s0, 888f
                  srl          s11, t1, a1
                  blt          a1, tp, 897f
                  auipc        a7, 764966
                  slli         t1, a6, 27
888:              blt          a0, s5, 904f
                  add          s3, s11, t2
                  srai         s10, sp, 16
                  sra          tp, s0, t6
                  xor          s5, t1, t4
                  blt          zero, tp, 900f
                  slli         t5, s9, 27
                  bltu         t3, a3, 900f
                  add          s0, s6, s7
897:              beq          s11, t6, 899f
                  sltiu        a4, a0, 450
899:              slt          s10, s6, s10
900:              sltiu        t2, a5, -464
                  bne          a4, t5, 913f
                  sltu         gp, s8, s0
                  nop
904:              auipc        s1, 432152
                  or           t0, t6, a0
                  blt          t6, s0, 907f
907:              sltu         a1, s1, t4
                  slli         s6, tp, 31
                  beq          gp, tp, 921f
                  sub          a7, t3, a0
                  bltu         zero, t3, 926f
                  srli         a3, s6, 0
913:              sra          a0, t6, t5
                  sltu         s6, ra, a0
                  or           s5, s2, a6
                  sltiu        s10, ra, -1662
                  andi         s3, s9, -38
                  srl          s7, a4, t3
                  bne          t0, t2, 929f
                  slti         s9, a0, -1212
921:              and          t1, s3, a5
                  auipc        gp, 509807
                  bgeu         a4, s0, 930f
                  slt          t1, s4, s7
                  xor          s5, t4, s0
926:              slli         zero, s1, 21
                  andi         a3, t0, -370
                  srl          s7, a1, s2
929:              add          gp, a5, t2
930:              srl          s0, a3, gp
                  nop
                  sltu         a7, gp, s10
                  sltiu        tp, s1, 238
                  bne          t1, s0, 937f
                  sra          a0, s4, tp
                  add          s5, gp, t2
937:              beq          a5, a4, 941f
                  slt          a7, s4, s10
                  bge          s6, t4, 941f
                  sll          s8, a1, s10
941:              auipc        t5, 1027871
                  xori         a5, s1, -1608
                  lw           ra, 4(t3)
                  sltu         t0, s8, s3
                  andi         s6, t4, -258
                  addi         t3, t3, 60
                  add          s10, s3, ra
                  slti         s11, s2, -414
                  sltu         t4, a5, ra
1381:             addi x15, x1, 1
1381:             jalr x15, x15, 0
sub_1:            srl          a1, sp, t4
                  xori         s8, s6, 660
                  add          zero, s5, s6
                  and          t4, s2, a5
                  addi         gp, t4, 1872
                  add          s11, t6, zero
                  bge          s7, t4, sub_1_stack_p
sub_1_stack_p:    addi         t3, t3, -28
                  xor          tp, ra, t4
                  sw           ra, 4(t3)
                  xor          a0, a7, tp
                  or           s9, tp, s6
                  la           t1, sub_4
                  addi         t1, t1, 691
                  or           zero, s9, t5
                  or           s5, zero, s1
                  lui          s6, 95210
                  sub          a2, a0, s4
                  add          t0, s0, t4
                  xor          a0, t6, s5
                  and          s10, s3, s2
sub_1_j4:         jalr         ra, t1, -690 #jump sub_1 -> sub_4
sub_1_0:          jal          ra, 9f
0:                jal          ra, 10f
1:                jal          a7, 0b
2:                jal          t4, 4f
3:                jal          t1, 2b
4:                jal          ra, 6f
5:                jal          t1, 3b
6:                jal          t1, 7f
7:                jal          a3, 1b
8:                jal          ra, 5b
9:                jal          s5, 8b
10:               slli         s0, t0, 18
sub_1_1:          jal          ra, 27f
0:                jal          t1, 10f
1:                jal          t1, 15f
2:                jal          ra, 13f
3:                jal          ra, 21f
4:                jal          ra, 5f
5:                jal          t1, 20f
6:                jal          ra, 24f
7:                jal          s1, 12f
8:                jal          t1, 25f
9:                jal          t1, 22f
10:               jal          t1, 19f
11:               jal          ra, 1b
12:               jal          tp, 8b
13:               jal          tp, 7b
14:               jal          t1, 4b
15:               jal          ra, 29f
16:               jal          ra, 11b
17:               jal          tp, 26f
18:               jal          ra, 16b
19:               jal          s4, 17b
20:               jal          ra, 28f
21:               jal          a2, 6b
22:               jal          ra, 2b
23:               jal          t0, 9b
24:               jal          ra, 0b
25:               jal          s5, 18b
26:               jal          t1, 23b
27:               jal          t1, 14b
28:               jal          ra, 3b
29:               srl          a4, t0, t0
sub_1_3:          jal          ra, 6f
0:                jal          ra, 10f
1:                jal          t1, 11f
2:                jal          ra, 13f
3:                jal          t1, 7f
4:                jal          ra, 3b
5:                jal          ra, 4b
6:                jal          t1, 8f
7:                jal          ra, 15f
8:                jal          t6, 5b
9:                jal          t1, 0b
10:               jal          t0, 12f
11:               jal          ra, 14f
12:               jal          ra, 2b
13:               jal          a7, 16f
14:               jal          ra, 9b
15:               jal          ra, 1b
16:               sra          a1, gp, a3
sub_1_2:          jal          ra, 7f
0:                jal          ra, 9f
1:                jal          ra, 16f
2:                jal          ra, 11f
3:                jal          ra, 6f
4:                jal          s3, 0b
5:                jal          ra, 4b
6:                jal          gp, 15f
7:                jal          t1, 14f
8:                jal          ra, 12f
9:                jal          ra, 13f
10:               jal          ra, 5b
11:               jal          ra, 3b
12:               jal          t1, 10b
13:               jal          t1, 2b
14:               jal          gp, 8b
15:               jal          tp, 1b
16:               slti         s1, s0, 1058
                  sll          a5, a1, s0
                  slt          s5, gp, s8
                  xori         t0, s0, -1092
                  sub          s10, sp, s11
                  nop
                  sltiu        t4, a5, -1152
                  lui          s7, 916342
                  bltu         a7, a5, 8f
8:                bgeu         s2, tp, 9f
9:                srai         s0, zero, 12
                  and          a5, tp, t6
                  sltiu        tp, ra, 263
                  sll          a3, t2, s9
                  slli         zero, t3, 0
                  or           a1, t4, s8
                  srai         s3, a3, 4
                  add          a0, s5, tp
                  slli         s8, s0, 31
                  lui          s8, 395126
                  slti         t1, a7, 1908
                  and          s2, t1, ra
                  blt          ra, zero, 40f
                  bge          s8, sp, 29f
                  sra          s3, t3, ra
                  sltiu        s1, a4, 1521
                  slt          s10, tp, a5
                  bgeu         t5, s10, 41f
                  bltu         s8, s5, 37f
                  sll          s6, t3, t0
29:               lui          s5, 373341
                  auipc        a0, 74285
                  add          tp, a5, a1
                  slli         t5, s10, 14
                  add          s4, s2, s1
                  beq          s1, a2, 52f
                  blt          s4, s6, 51f
                  sltu         s9, zero, a4
37:               srli         s10, a6, 22
                  sra          s11, s6, t1
                  ori          s11, t1, 1291
40:               addi         s4, a0, 889
41:               sra          s10, t1, t5
                  auipc        s9, 277690
                  andi         s2, t4, 1726
                  bgeu         a4, a0, 46f
                  bltu         zero, ra, 63f
46:               slti         s2, s2, -1722
                  addi         a5, t0, -780
                  xor          a1, s10, t1
                  bne          s1, s2, 69f
                  sltu         a5, zero, ra
51:               sub          t0, a5, a1
52:               sltu         s8, gp, s0
                  xori         a7, a3, 1879
                  or           s1, t0, t4
                  srai         tp, s10, 0
                  ori          a7, a5, -1326
                  xor          s8, a7, s9
                  bltu         a0, a1, 62f
                  sub          a7, a0, s9
                  or           s3, t1, s0
                  add          ra, t5, s0
62:               sltu         s4, a2, s10
63:               sltu         s8, t6, a5
                  sltiu        t1, ra, -750
                  xori         a2, a7, 10
                  srl          t4, s9, a5
                  sltu         s4, gp, s8
                  bge          s2, a4, 69f
69:               addi         a1, a3, -489
                  bne          ra, s6, 84f
                  blt          s3, a7, 77f
                  addi         s7, s1, 1932
                  sub          ra, t6, a4
                  xor          a7, s10, s0
                  blt          s7, t1, 87f
                  bgeu         s8, s6, 79f
77:               lui          a4, 415523
                  xori         t6, s11, 1003
79:               xor          s8, s3, s8
                  slt          s10, a3, t4
                  bgeu         a4, sp, 83f
                  srl          a0, s2, s10
83:               andi         a3, a0, -955
84:               bne          a6, s1, 100f
                  slti         s3, a6, 1375
                  slt          t0, s5, s0
87:               ori          t5, a7, 784
                  srli         s9, a5, 8
                  slli         a2, a4, 17
                  and          s6, s3, a3
                  srli         t4, sp, 27
                  andi         a3, a0, -1860
                  or           t6, a5, t6
                  and          a3, a6, a5
                  blt          t6, s1, 108f
                  sltiu        s10, a5, -951
                  beq          s6, a5, 114f
                  xori         t1, s8, 221
                  ori          s4, a7, 1555
100:              sra          a7, a1, a2
                  slt          s11, t5, a5
                  bltu         a1, a7, 112f
                  sra          a7, s9, a0
                  bgeu         a4, s8, 118f
                  slli         s10, sp, 13
                  lui          s11, 815906
                  sll          t1, s7, zero
108:              blt          t0, a7, 128f
                  bgeu         t4, s8, 118f
                  bgeu         s10, t1, 112f
                  bltu         tp, t2, 130f
112:              bgeu         a1, a2, 116f
                  sll          a4, t5, tp
114:              srai         s3, a5, 8
                  srli         a2, gp, 28
116:              bgeu         sp, t2, 121f
                  add          t6, s2, s0
118:              auipc        a0, 1021759
                  lui          t1, 442916
                  blt          s11, s5, 127f
121:              xori         s6, s10, 235
                  xor          t5, s3, s2
                  blt          s6, a2, 139f
                  sll          t2, s6, a0
                  xor          a5, t5, t0
                  addi         gp, a1, 1768
127:              nop
128:              andi         t5, s5, -1930
                  slt          t6, a1, tp
130:              sll          tp, t4, s7
                  blt          t5, s4, 140f
                  blt          a2, a6, 150f
                  add          a3, t4, s11
                  add          ra, s11, t6
                  add          t5, s10, zero
                  slt          a4, t6, s5
                  slt          t4, s8, sp
                  nop
139:              srl          s3, s4, a4
140:              sra          a4, s11, a3
                  lui          t0, 925397
                  slti         t1, ra, -1448
                  sub          s2, s6, s11
                  sltiu        s0, s6, -1667
                  and          s8, t4, t6
                  nop
                  add          s11, ra, t1
                  srl          s3, s10, s2
                  or           a4, a1, a6
150:              addi         t0, t0, -1863
                  bgeu         s1, s6, 153f
                  andi         t2, s8, 758
153:              addi         a3, a4, 675
                  bge          t2, a1, 155f
155:              andi         a5, s11, 407
                  lui          s5, 18038
                  lui          t1, 913833
                  bltu         a0, t6, 178f
                  sll          s6, s7, a7
                  slli         s7, s10, 18
                  xori         t5, s6, 1784
                  andi         s11, a4, 1772
                  lui          t2, 89726
                  sub          s10, s6, s5
                  auipc        s6, 683785
                  sltu         a5, s1, t3
                  sltu         zero, s10, s10
                  bge          a6, s3, 187f
                  add          t0, s8, s11
                  beq          tp, gp, 186f
                  xori         a4, a3, 314
                  sub          tp, s11, s0
                  lui          tp, 563720
                  ori          t2, t2, -677
                  beq          s10, s3, 179f
                  sub          s7, s7, t0
                  slt          zero, s3, s5
178:              bne          zero, sp, 180f
179:              beq          a0, s10, 183f
180:              blt          t1, zero, 182f
                  slti         a2, t0, -11
182:              srl          s6, a3, s7
183:              slti         a1, a3, -1426
                  slti         t4, a2, 1292
                  and          s5, a1, s0
186:              lui          t2, 827938
187:              auipc        t5, 899999
                  xor          s3, s0, t6
                  auipc        zero, 913395
                  srli         s1, s8, 29
                  ori          s8, t4, 431
                  nop
                  auipc        gp, 699709
                  xori         s3, t5, -1532
                  blt          t1, s9, 200f
                  bgeu         ra, a5, 208f
                  srai         a1, s7, 29
                  sub          tp, s1, s0
                  sltu         tp, s5, s2
200:              srl          t6, s6, tp
                  slli         s7, s5, 14
                  addi         s2, a7, 370
                  xori         tp, s0, -443
                  bltu         gp, s7, 221f
                  beq          s6, s9, 208f
                  bne          sp, t4, 220f
                  xori         a2, tp, 1482
208:              bgeu         gp, a7, 221f
                  slti         s4, s9, 2001
                  slli         s3, ra, 9
                  bltu         t2, s4, 221f
                  blt          t5, t5, 221f
                  srli         tp, t6, 12
                  blt          t5, s7, 221f
                  sra          t2, s4, s7
                  srl          s7, tp, a0
                  bne          gp, gp, 218f
218:              srl          a0, s7, a1
                  sll          s2, t0, zero
220:              sltu         s0, s8, s3
221:              slli         t0, s5, 7
                  sltu         a2, t6, sp
                  lw           ra, 4(t3)
                  srl          t1, s3, a3
                  slli         t6, sp, 23
                  sub          s5, a0, t6
                  sub          t2, s3, tp
                  xor          s0, ra, a0
                  slti         s2, sp, 702
                  slti         t2, s9, 373
                  addi         t3, t3, 28
                  or           t6, a4, t6
334:              addi x8, x1, 0
334:              jalr x8, x8, 0
sub_2:            ori          s6, t1, 501
                  beq          s9, t3, sub_2_stack_p
sub_2_stack_p:    addi         t3, t3, -32
                  slti         s11, sp, -1436
                  sw           ra, 4(t3)
                  auipc        a5, 321568
                  slti         t0, tp, 641
                  ori          tp, tp, 209
                  sub          gp, a6, a3
sub_2_7:          jal          ra, 3f
0:                jal          ra, 11f
1:                jal          ra, 14f
2:                jal          t0, 18f
3:                jal          s4, 2b
4:                jal          ra, 12f
5:                jal          s2, 22f
6:                jal          a7, 23f
7:                jal          a2, 10f
8:                jal          t1, 17f
9:                jal          gp, 16f
10:               jal          gp, 1b
11:               jal          ra, 13f
12:               jal          a1, 20f
13:               jal          ra, 5b
14:               jal          ra, 8b
15:               jal          t1, 6b
16:               jal          t5, 4b
17:               jal          ra, 9b
18:               jal          ra, 0b
19:               jal          ra, 7b
20:               jal          ra, 21f
21:               jal          a4, 15b
22:               jal          ra, 19b
23:               srl          t5, s3, a6
sub_2_12:         jal          ra, 10f
0:                jal          tp, 16f
1:                jal          ra, 29f
2:                jal          t1, 13f
3:                jal          a3, 26f
4:                jal          a1, 11f
5:                jal          ra, 19f
6:                jal          ra, 17f
7:                jal          ra, 27f
8:                jal          t1, 28f
9:                jal          t1, 22f
10:               jal          ra, 20f
11:               jal          t1, 1b
12:               jal          a5, 30f
13:               jal          ra, 0b
14:               jal          ra, 8b
15:               jal          t0, 12b
16:               jal          ra, 5b
17:               jal          ra, 24f
18:               jal          ra, 14b
19:               jal          ra, 25f
20:               jal          ra, 2b
21:               jal          ra, 4b
22:               jal          ra, 6b
23:               jal          ra, 18b
24:               jal          ra, 23b
25:               jal          ra, 7b
26:               jal          ra, 15b
27:               jal          ra, 9b
28:               jal          t1, 21b
29:               jal          ra, 3b
30:               sltiu        zero, a1, -2045
sub_2_10:         jal          ra, 0f
0:                jal          s10, 4f
1:                jal          s3, 10f
2:                jal          ra, 14f
3:                jal          t1, 8f
4:                jal          ra, 2b
5:                jal          tp, 15f
6:                jal          t1, 5b
7:                jal          ra, 18f
8:                jal          t0, 17f
9:                jal          ra, 6b
10:               jal          ra, 3b
11:               jal          t1, 7b
12:               jal          t1, 11b
13:               jal          ra, 16f
14:               jal          ra, 9b
15:               jal          ra, 1b
16:               jal          ra, 12b
17:               jal          s0, 13b
18:               and          s9, gp, t0
sub_2_15:         jal          ra, 10f
0:                jal          s5, 9f
1:                jal          ra, 18f
2:                jal          ra, 0b
3:                jal          ra, 6f
4:                jal          t1, 19f
5:                jal          ra, 16f
6:                jal          t1, 5b
7:                jal          t0, 17f
8:                jal          s11, 2b
9:                jal          t1, 4b
10:               jal          ra, 7b
11:               jal          ra, 3b
12:               jal          t1, 13f
13:               jal          ra, 8b
14:               jal          ra, 12b
15:               jal          ra, 11b
16:               jal          t1, 14b
17:               jal          a1, 1b
18:               jal          t1, 15b
19:               lui          a3, 676985
sub_2_2:          jal          ra, 16f
0:                jal          t1, 22f
1:                jal          ra, 2f
2:                jal          ra, 23f
3:                jal          s8, 14f
4:                jal          s0, 27f
5:                jal          t1, 28f
6:                jal          ra, 25f
7:                jal          s8, 18f
8:                jal          t1, 24f
9:                jal          ra, 19f
10:               jal          t1, 11f
11:               jal          t1, 8b
12:               jal          t1, 21f
13:               jal          ra, 26f
14:               jal          ra, 20f
15:               jal          t0, 10b
16:               jal          ra, 17f
17:               jal          t0, 4b
18:               jal          s6, 0b
19:               jal          ra, 7b
20:               jal          ra, 13b
21:               jal          ra, 3b
22:               jal          s2, 15b
23:               jal          s0, 9b
24:               jal          ra, 12b
25:               jal          ra, 1b
26:               jal          ra, 5b
27:               jal          t1, 6b
28:               addi         t2, a2, -1690
sub_2_11:         jal          ra, 3f
0:                jal          t1, 4f
1:                jal          ra, 10f
2:                jal          ra, 9f
3:                jal          ra, 7f
4:                jal          gp, 15f
5:                jal          ra, 12f
6:                jal          ra, 17f
7:                jal          ra, 5b
8:                jal          t2, 13f
9:                jal          tp, 14f
10:               jal          ra, 29f
11:               jal          ra, 30f
12:               jal          ra, 16f
13:               jal          t1, 28f
14:               jal          t1, 27f
15:               jal          t0, 2b
16:               jal          t1, 25f
17:               jal          tp, 8b
18:               jal          t1, 20f
19:               jal          t4, 21f
20:               jal          s8, 19b
21:               jal          t1, 24f
22:               jal          ra, 0b
23:               jal          ra, 6b
24:               jal          ra, 11b
25:               jal          t0, 23b
26:               jal          gp, 18b
27:               jal          ra, 26b
28:               jal          a0, 1b
29:               jal          ra, 22b
30:               lui          gp, 688114
sub_2_9:          jal          ra, 10f
0:                jal          ra, 13f
1:                jal          t0, 2f
2:                jal          a7, 9f
3:                jal          a1, 0b
4:                jal          t1, 5f
5:                jal          t1, 8f
6:                jal          a5, 1b
7:                jal          ra, 11f
8:                jal          t1, 6b
9:                jal          ra, 7b
10:               jal          ra, 12f
11:               jal          t1, 3b
12:               jal          ra, 4b
13:               slt          s8, a0, s3
sub_2_6:          jal          ra, 5f
0:                jal          t1, 10f
1:                jal          gp, 14f
2:                jal          ra, 17f
3:                jal          ra, 26f
4:                jal          ra, 1b
5:                jal          ra, 8f
6:                jal          t1, 22f
7:                jal          a0, 3b
8:                jal          ra, 2b
9:                jal          ra, 25f
10:               jal          ra, 12f
11:               jal          ra, 24f
12:               jal          s9, 21f
13:               jal          ra, 9b
14:               jal          t1, 11b
15:               jal          ra, 13b
16:               jal          t1, 6b
17:               jal          t1, 19f
18:               jal          s11, 15b
19:               jal          ra, 16b
20:               jal          ra, 23f
21:               jal          t1, 18b
22:               jal          gp, 0b
23:               jal          ra, 7b
24:               jal          ra, 20b
25:               jal          a0, 4b
26:               auipc        s6, 138625
sub_2_5:          jal          ra, 2f
0:                jal          t0, 8f
1:                jal          a7, 6f
2:                jal          t5, 12f
3:                jal          ra, 11f
4:                jal          t1, 16f
5:                jal          t4, 7f
6:                jal          ra, 4b
7:                jal          t1, 1b
8:                jal          t1, 9f
9:                jal          ra, 15f
10:               jal          ra, 0b
11:               jal          t1, 13f
12:               jal          s11, 3b
13:               jal          t1, 14f
14:               jal          t1, 10b
15:               jal          ra, 5b
16:               andi         t5, s4, 1260
sub_2_3:          jal          ra, 12f
0:                jal          t1, 1f
1:                jal          s10, 5f
2:                jal          t0, 13f
3:                jal          t0, 11f
4:                jal          t0, 3b
5:                jal          t5, 7f
6:                jal          ra, 10f
7:                jal          ra, 9f
8:                jal          t1, 14f
9:                jal          ra, 2b
10:               jal          tp, 0b
11:               jal          t2, 8b
12:               jal          ra, 6b
13:               jal          tp, 4b
14:               add          a3, s6, s10
sub_2_13:         jal          ra, 5f
0:                jal          s11, 12f
1:                jal          t1, 15f
2:                jal          ra, 21f
3:                jal          ra, 20f
4:                jal          t5, 9f
5:                jal          t6, 0b
6:                jal          ra, 18f
7:                jal          ra, 19f
8:                jal          ra, 16f
9:                jal          ra, 13f
10:               jal          t0, 6b
11:               jal          ra, 7b
12:               jal          t1, 14f
13:               jal          ra, 1b
14:               jal          ra, 4b
15:               jal          ra, 17f
16:               jal          ra, 3b
17:               jal          ra, 8b
18:               jal          ra, 2b
19:               jal          ra, 10b
20:               jal          a2, 11b
21:               and          a0, a7, a1
sub_2_14:         jal          ra, 14f
0:                jal          s0, 2f
1:                jal          ra, 22f
2:                jal          ra, 13f
3:                jal          ra, 21f
4:                jal          t1, 11f
5:                jal          ra, 16f
6:                jal          t1, 26f
7:                jal          ra, 25f
8:                jal          t1, 9f
9:                jal          s5, 5b
10:               jal          a2, 4b
11:               jal          s7, 7b
12:               jal          t1, 6b
13:               jal          ra, 3b
14:               jal          ra, 8b
15:               jal          t1, 23f
16:               jal          ra, 18f
17:               jal          ra, 19f
18:               jal          t1, 15b
19:               jal          t1, 12b
20:               jal          t1, 24f
21:               jal          ra, 1b
22:               jal          a2, 10b
23:               jal          ra, 0b
24:               jal          ra, 17b
25:               jal          ra, 20b
26:               slti         t0, s4, 1289
sub_2_4:          jal          ra, 0f
0:                jal          a0, 3f
1:                jal          t1, 12f
2:                jal          a1, 15f
3:                jal          ra, 4f
4:                jal          t2, 5f
5:                jal          s2, 14f
6:                jal          s10, 7f
7:                jal          ra, 2b
8:                jal          t1, 6b
9:                jal          ra, 8b
10:               jal          ra, 1b
11:               jal          a5, 9b
12:               jal          s8, 16f
13:               jal          ra, 10b
14:               jal          t1, 11b
15:               jal          t4, 13b
16:               srai         t5, a1, 31
sub_2_0:          jal          ra, 5f
0:                jal          ra, 6f
1:                jal          ra, 4f
2:                jal          t1, 9f
3:                jal          ra, 8f
4:                jal          s11, 2b
5:                jal          s4, 1b
6:                jal          t1, 3b
7:                jal          t4, 10f
8:                jal          ra, 7b
9:                jal          t1, 0b
10:               and          t2, a3, s5
                  bge          t4, s7, 14f
                  bge          a2, s3, 6f
                  xor          s1, s10, ra
                  srli         a2, s2, 27
                  sra          t4, s5, ra
                  beq          sp, a1, 7f
6:                slli         zero, a5, 4
7:                xor          zero, s1, a6
                  or           s3, s3, s3
                  xor          s11, s0, t0
                  slli         s11, t1, 9
                  bgeu         t1, t6, 20f
                  andi         t0, t1, -442
                  lui          t2, 548212
14:               xor          s1, a0, s1
                  bltu         a0, t2, 28f
                  blt          a5, tp, 21f
                  sltu         a1, t5, s10
                  nop
                  sll          s6, s9, s5
20:               bltu         t2, s1, 27f
21:               and          s2, a7, a0
                  sltiu        s11, s4, 1572
                  lui          a7, 590489
                  lui          t1, 63413
sub_2_16:         jal          ra, 18f
0:                jal          ra, 16f
1:                jal          ra, 29f
2:                jal          gp, 25f
3:                jal          a2, 20f
4:                jal          ra, 13f
5:                jal          ra, 9f
6:                jal          t2, 15f
7:                jal          a1, 26f
8:                jal          s4, 6b
9:                jal          ra, 0b
10:               jal          ra, 12f
11:               jal          ra, 28f
12:               jal          s6, 2b
13:               jal          ra, 27f
14:               jal          t0, 23f
15:               jal          ra, 24f
16:               jal          s8, 7b
17:               jal          t1, 1b
18:               jal          a4, 10b
19:               jal          t1, 11b
20:               jal          ra, 14b
21:               jal          s1, 19b
22:               jal          s7, 4b
23:               jal          gp, 17b
24:               jal          a4, 3b
25:               jal          ra, 22b
26:               jal          ra, 8b
27:               jal          ra, 21b
28:               jal          ra, 5b
29:               andi         s5, t3, 469
                  slli         gp, t3, 12
                  sltu         a5, t6, t6
27:               sub          s2, s4, s6
28:               sub          t1, a2, t2
                  sltiu        ra, t2, -1519
                  xori         gp, a7, 933
                  bgeu         s9, s11, 50f
                  ori          s4, s8, 382
                  srl          s2, s2, s6
                  add          a0, s5, a2
                  and          a1, s7, t0
                  srli         s2, a7, 8
                  auipc        a2, 693178
                  sub          s10, t3, s4
                  bltu         t3, a2, 47f
                  srai         a7, s6, 21
                  slt          s10, a0, s6
                  sltu         a4, t4, s0
                  xor          a5, zero, s3
                  add          t4, s9, s4
                  or           t6, a0, a0
                  sltiu        ra, tp, 944
47:               slti         s4, s0, 776
                  bltu         t2, gp, 63f
                  slt          s11, a4, a2
50:               lui          a4, 695491
                  srli         a2, s8, 2
                  beq          a7, t1, 60f
                  nop
                  xori         s3, s10, 1307
                  addi         a3, t0, 21
                  sltu         s9, gp, ra
                  sra          t1, a0, t5
                  addi         tp, gp, -1161
                  sra          s11, a1, s4
60:               or           ra, t4, t2
                  srli         t0, s11, 7
                  addi         a1, s6, 1577
63:               sltiu        s10, s2, -1934
                  sra          t2, sp, a5
                  addi         t6, t4, -656
                  auipc        a4, 144584
                  srli         t6, a1, 1
                  xori         a4, s10, 581
                  slt          t0, s0, a6
                  slt          s7, s9, a7
                  bge          t0, s0, 75f
                  sll          s9, s4, t0
                  addi         s11, t3, -659
                  xor          tp, a0, s9
75:               beq          a5, t3, 92f
                  bltu         a0, t3, 91f
                  lui          t2, 730229
                  bge          a0, s5, 83f
                  sltu         a1, t2, t2
                  xori         tp, a3, -418
                  srai         a2, s6, 7
                  sub          s5, a2, s8
83:               nop
                  add          s0, s10, ra
                  bltu         a0, s6, 86f
86:               ori          s1, sp, 206
                  slli         s10, s9, 0
                  srai         s0, a5, 19
                  sra          t6, t1, a0
                  sltiu        s9, s2, 127
91:               bne          t4, tp, 98f
92:               sub          gp, zero, t6
                  beq          a5, t0, 109f
                  add          t5, s7, a5
                  add          s6, s1, s9
                  xor          t5, s4, a5
                  xor          a2, a6, t6
98:               bgeu         s3, a1, 111f
                  bgeu         gp, tp, 114f
                  addi         s5, ra, 250
                  lui          t4, 979282
                  bge          zero, gp, 115f
                  srl          a7, s6, s7
                  and          s11, t5, gp
                  xor          s3, s1, t5
                  lui          t5, 353082
                  addi         t6, s9, 1864
                  srli         s10, a6, 24
109:              andi         s4, zero, -172
                  sltiu        s7, t5, 445
111:              lui          a5, 391988
                  lui          s10, 102772
                  sll          s8, t3, s7
114:              auipc        s8, 905115
115:              bgeu         s10, gp, 131f
                  sltiu        a1, tp, -1241
                  and          a2, t0, t0
                  sra          t0, tp, s7
                  sltiu        a2, a0, -565
                  blt          t5, s3, 128f
                  sra          s10, zero, ra
                  sltiu        a3, s2, 1838
                  andi         zero, t1, 1200
                  bltu         a0, s3, 131f
                  slti         s11, sp, 1427
                  beq          s3, s4, 135f
                  bgeu         a6, zero, 134f
128:              beq          a3, t5, 134f
                  ori          t0, sp, 864
                  xor          s3, s2, tp
131:              bge          t5, s3, 151f
                  nop
                  lui          s10, 3858
134:              srai         s11, a1, 31
135:              srli         s1, s0, 15
                  sub          t5, gp, a5
                  ori          s8, s11, -1427
                  add          a4, zero, a7
                  srai         s4, s10, 17
                  xori         gp, t4, -363
                  lui          s4, 439402
                  sub          s10, a1, a0
                  or           ra, s2, a3
                  srl          s4, s10, s5
                  sltiu        t6, a6, -1410
                  srai         s0, s5, 18
                  lui          a3, 375716
                  sltu         a4, s0, t0
                  xori         s2, a5, -1625
                  and          s0, s3, t5
151:              auipc        s3, 50831
                  sra          a7, zero, t3
                  slti         s1, s9, 1196
                  blt          zero, gp, 172f
                  lui          s8, 236274
                  nop
                  bltu         s9, a6, 172f
                  srli         t5, a3, 25
                  ori          t6, t3, 1332
                  srli         ra, t3, 26
                  add          s6, sp, a0
                  ori          s7, sp, -628
                  bgeu         zero, s5, 168f
                  blt          a5, s11, 179f
                  xor          a0, gp, gp
                  or           zero, t6, ra
                  bne          zero, s7, 175f
168:              blt          t3, tp, 183f
                  bne          t6, t1, 170f
170:              slli         tp, s8, 24
                  slt          s6, a1, s0
172:              bgeu         gp, s0, 181f
                  bne          t6, zero, 180f
                  andi         s9, t6, -1399
175:              xori         s2, s2, -900
                  bge          sp, s9, 184f
                  bltu         s9, t0, 186f
                  blt          s4, a0, 193f
179:              bltu         s4, t5, 194f
180:              nop
181:              beq          s8, ra, 201f
                  slli         a0, s11, 18
183:              sra          a2, t0, s1
184:              auipc        s8, 663899
                  slti         s8, t2, 678
186:              srl          s11, s7, s5
                  lui          a5, 31547
                  addi         s1, s7, -1954
                  auipc        a7, 925325
                  sra          t0, s9, a3
                  andi         ra, a0, 407
                  slti         s9, a4, -28
193:              bgeu         s4, s2, 198f
194:              beq          s9, s11, 198f
                  ori          a0, a4, 1984
                  nop
                  bltu         tp, t2, 199f
198:              srli         a7, t0, 3
199:              sltu         s1, a0, sp
                  slti         a5, sp, 64
201:              blt          zero, ra, 219f
                  xor          t6, s8, a2
                  bgeu         s0, s11, 210f
                  ori          tp, ra, 1265
                  bne          s7, s10, 211f
                  slt          s5, a1, s4
                  or           t6, sp, tp
                  slt          s5, a5, s11
                  sltiu        s2, s7, 1535
210:              xori         a5, s9, 854
211:              nop
                  srli         t2, t3, 1
                  add          a1, a0, gp
                  sub          a5, t5, s3
                  blt          s0, s10, 232f
                  bne          gp, s8, 229f
                  sltu         t0, a1, s0
                  bltu         t6, zero, 226f
219:              xor          a3, s9, tp
                  slli         s3, t4, 9
                  addi         s3, a6, -1396
                  slli         s0, t6, 8
                  add          s10, a5, s11
                  sll          t2, s11, s8
                  sltiu        s6, t3, -1925
226:              xori         a7, t4, -1308
                  bgeu         tp, s1, 246f
                  nop
229:              srai         s7, zero, 23
                  auipc        s11, 934841
                  sra          a3, a1, a1
232:              blt          a2, t0, 245f
                  add          ra, s5, s5
                  addi         a7, t2, 492
                  addi         t4, sp, -1785
                  add          a2, a5, s10
                  xori         s2, t6, 1254
                  add          a1, t5, a7
                  sltiu        a1, s0, 2033
                  addi         a4, t0, 1110
                  bgeu         s8, t4, 257f
                  srl          s3, t6, t2
                  srl          s2, zero, s5
                  slti         gp, a3, 1492
245:              sra          t1, s2, a4
246:              xor          a1, s1, a5
                  xori         t2, s9, -1435
                  slti         t2, gp, -2014
                  nop
                  ori          t4, t4, -1073
                  xor          s11, s5, s5
                  xori         s0, sp, -72
                  sra          a3, s3, a5
                  ori          gp, t0, -1969
                  andi         zero, ra, 184
                  bne          a3, s11, 272f
257:              add          t5, a0, s8
                  bge          s2, s8, 271f
                  blt          a3, t3, 273f
                  xori         t2, s6, -708
                  lui          s7, 472542
                  xor          t4, s10, s5
                  nop
                  ori          a2, ra, 2042
                  bgeu         s5, s8, 272f
                  srl          s8, ra, a5
                  bne          a2, t6, 274f
                  bne          s7, a7, 273f
                  nop
                  sra          a5, a6, s5
271:              bgeu         s11, t3, 289f
272:              srli         t1, gp, 14
273:              bgeu         s0, tp, 280f
274:              sub          s11, t4, t0
                  blt          a6, s6, 282f
                  blt          s0, s4, 281f
                  or           a3, s11, a2
                  auipc        s6, 879918
                  srai         t2, zero, 9
280:              sltu         a3, a4, s4
281:              xori         a3, t4, -1785
282:              slti         s6, a3, -843
                  beq          s4, gp, 296f
                  nop
                  sltiu        s3, t6, -429
                  slt          s7, s11, a4
                  sltiu        tp, s9, -1902
                  andi         a2, s3, -1699
289:              add          s5, s11, s8
                  nop
                  sltu         a4, t3, t6
                  or           a4, t3, a5
                  sra          tp, a4, zero
                  and          a4, t0, tp
                  bltu         tp, a2, 296f
296:              bgeu         a2, s0, 300f
                  andi         s11, zero, -1117
                  addi         a3, t1, -203
                  sltu         gp, a2, s2
300:              bltu         gp, a1, 309f
                  sltu         t1, a6, ra
                  bltu         a5, sp, 321f
                  sltiu        a0, t6, 1131
                  blt          a4, s10, 309f
                  andi         s6, s2, -1273
                  bge          t0, s10, 321f
                  srli         a4, s1, 5
                  and          t0, t5, sp
309:              auipc        tp, 276880
                  and          a7, t6, t2
                  srl          s9, s0, a7
                  srl          tp, s1, t1
                  bne          a7, t6, 321f
                  bltu         a3, s6, 327f
                  addi         t6, a6, 57
                  addi         t5, s0, -260
                  srli         s6, a0, 4
                  blt          s4, s3, 327f
                  addi         s4, a1, -154
                  xori         s1, t6, -1897
321:              bne          a0, s1, 329f
                  sll          gp, t0, t2
                  nop
                  sltiu        s7, gp, 1231
                  addi         s8, t6, -2047
                  sub          gp, gp, a2
327:              andi         s10, a1, 710
                  xori         a2, s8, -1418
329:              lui          ra, 818586
                  blt          s10, s6, 343f
                  nop
                  blt          s10, s5, 338f
                  xori         s7, t5, 1317
                  and          a0, s11, a4
                  slti         a3, s0, 748
                  srai         t5, s8, 21
                  nop
338:              slti         t2, s7, -1055
                  andi         s8, s9, 420
                  beq          s10, t3, 354f
                  srli         s2, s8, 26
                  slt          s7, s1, s5
343:              and          s11, tp, t3
                  or           t2, ra, a5
                  srli         t0, a3, 23
                  blt          s10, s2, 366f
                  sltu         t0, s1, s8
                  bgeu         tp, a5, 350f
                  bgeu         t5, s3, 365f
350:              slt          s3, s9, t2
                  bge          t2, a7, 367f
                  and          t1, s9, a6
                  beq          t1, s6, 358f
354:              sll          zero, a6, a6
                  srai         a4, t2, 28
                  slli         tp, s6, 31
                  auipc        s10, 592225
358:              auipc        a4, 695111
                  and          a4, a6, t5
                  add          t5, a0, a3
                  ori          s6, t0, -1110
                  slti         s10, tp, 927
                  beq          a2, a2, 380f
                  slti         s10, s7, -714
365:              nop
366:              srai         t6, zero, 15
367:              sll          s9, s5, s5
                  slt          s0, s0, s7
                  xori         s6, a1, 1668
                  bne          t5, t0, 378f
                  sra          t1, t1, t2
                  lui          s9, 1030534
                  auipc        tp, 904507
                  slti         s3, a5, -1533
                  bge          t1, a3, 382f
                  bgeu         s0, t3, 383f
                  sub          s1, s2, s0
378:              sltiu        s0, gp, 1122
                  auipc        a5, 366973
380:              srai         t0, t0, 18
                  beq          s11, ra, 396f
382:              bne          a2, s3, 397f
383:              bltu         a7, t6, 398f
                  srli         tp, ra, 26
                  sltiu        a0, t4, 1079
                  or           a4, t3, s1
                  slti         a0, a1, 726
                  add          s10, s4, s2
                  andi         a4, t2, -475
                  add          s3, a3, a6
                  srai         s2, a1, 14
                  bltu         sp, t4, 408f
                  ori          t1, s7, 1416
                  xori         s5, zero, 1236
                  sltu         s7, a2, s0
396:              sltiu        s3, s3, 912
397:              sltu         s11, s11, t3
398:              sltiu        a7, a2, 222
                  xori         a7, s7, 398
                  sra          s3, ra, t5
                  xori         s1, s11, -471
                  or           s9, t5, s1
                  slt          t2, s4, a2
                  and          a0, s11, s9
                  auipc        tp, 863754
                  beq          gp, t0, 414f
                  bne          a0, s9, 409f
408:              lui          t5, 662739
409:              bge          s0, t5, 427f
                  add          s1, s2, s2
                  or           s3, s3, tp
                  srai         s2, ra, 17
                  and          tp, t5, t5
414:              auipc        tp, 616943
                  bltu         s7, s4, 435f
                  andi         t1, a4, 1748
                  slt          ra, s4, s2
                  bge          a6, t6, 426f
                  ori          t4, a7, -837
                  or           s8, s4, s9
                  sll          ra, s0, s0
                  xor          s11, a6, ra
                  addi         gp, s7, 1097
                  auipc        ra, 420472
                  sra          t2, a6, t4
426:              lui          ra, 845277
427:              slt          ra, zero, t2
                  bge          a5, a2, 435f
                  srli         s1, a2, 18
                  sltiu        a1, s10, 2001
                  bgeu         a3, t4, 436f
                  xor          t0, t2, t1
                  bltu         t5, t5, 447f
                  blt          s4, sp, 449f
435:              or           a2, a4, s5
436:              add          a3, s6, ra
                  addi         a5, t1, 1385
                  srai         a0, s2, 17
                  ori          t2, a1, -1260
                  sltiu        s4, t0, 93
                  xor          s2, sp, t6
                  ori          s10, a6, -685
                  slti         t0, zero, 189
                  slt          t0, a0, s5
                  sra          t1, zero, a6
                  srli         tp, s6, 31
447:              sll          s3, a6, a5
                  or           zero, s1, s0
449:              slti         tp, a0, -1285
                  srai         s6, a2, 0
                  srai         a2, t3, 4
                  auipc        s1, 618905
                  nop
                  bltu         ra, s8, 469f
                  auipc        a4, 692717
                  slt          ra, a2, t0
                  or           s1, s8, t5
                  nop
                  sll          t5, s3, a1
                  sra          a4, s11, s9
                  auipc        s0, 551294
                  blt          a5, a0, 475f
                  and          gp, a0, t2
                  srl          t5, zero, s11
                  sltiu        s4, gp, 1111
                  bge          zero, ra, 479f
                  slli         zero, s2, 15
                  lui          s5, 740012
469:              sub          ra, ra, s8
                  srai         s6, gp, 25
                  addi         a3, a7, -1969
                  xor          s2, a6, t0
                  srai         a5, a4, 30
                  slli         s5, s2, 1
475:              add          a4, s9, a6
                  add          a5, a2, ra
                  blt          a1, t0, 478f
478:              lui          zero, 105711
479:              addi         t4, s9, -225
                  beq          sp, s9, 489f
                  bgeu         tp, s2, 500f
                  sll          t0, s5, s10
                  or           a1, s9, t6
                  andi         t5, t5, -320
                  slli         s1, s6, 10
                  sltiu        s8, s6, -2043
                  srli         a4, t5, 13
                  beq          a0, t5, 495f
489:              lui          s3, 110193
                  bltu         gp, s7, 505f
                  slli         t2, tp, 20
                  ori          a5, a5, -1975
                  xori         t0, a1, -991
                  slt          s1, s10, a0
495:              ori          s0, t5, -1759
                  add          ra, ra, tp
                  slti         s2, gp, -776
                  bltu         t3, gp, 514f
                  sra          gp, s9, s6
500:              nop
                  srl          t5, gp, s6
                  sra          a5, a6, a2
                  xor          a1, sp, t6
sub_2_1:          jal          ra, 6f
0:                jal          ra, 21f
1:                jal          ra, 17f
2:                jal          tp, 16f
3:                jal          ra, 23f
4:                jal          ra, 10f
5:                jal          s4, 1b
6:                jal          ra, 20f
7:                jal          ra, 8f
8:                jal          ra, 2b
9:                jal          s11, 0b
10:               jal          s4, 12f
11:               jal          t1, 22f
12:               jal          t1, 3b
13:               jal          t1, 4b
14:               jal          a7, 15f
15:               jal          ra, 13b
16:               jal          ra, 26f
17:               jal          s6, 24f
18:               jal          ra, 7b
19:               jal          ra, 25f
20:               jal          ra, 19b
21:               jal          ra, 14b
22:               jal          ra, 9b
23:               jal          ra, 18b
24:               jal          ra, 11b
25:               jal          t1, 5b
26:               slt          ra, t6, a1
                  slt          s2, s3, s1
505:              srli         s9, t0, 19
                  sra          gp, tp, a3
                  slti         a1, s8, 628
                  addi         a5, a2, -1664
                  bgeu         s5, t1, 518f
                  nop
                  lui          zero, 8702
                  sub          a3, s5, gp
                  bltu         a2, sp, 518f
514:              bge          s6, s7, 521f
                  srl          zero, zero, s5
                  beq          gp, t4, 531f
                  and          s4, s11, s10
518:              lui          tp, 913167
                  xor          t6, tp, t5
                  bge          s2, s3, 527f
521:              srli         t6, s11, 29
                  andi         s11, tp, -1499
                  auipc        tp, 836546
                  bgeu         s8, t0, 530f
                  beq          a5, a2, 529f
                  sub          t5, ra, a1
527:              sltiu        s4, s6, 970
                  slt          s3, s8, s10
529:              sub          t0, a5, a4
530:              xori         t4, t1, 760
531:              bge          a5, t4, 536f
                  addi         s2, s6, -821
                  andi         ra, s10, -1530
                  xor          a7, t0, gp
                  auipc        s11, 189206
536:              sltiu        s9, s4, -1201
                  xor          s4, a5, s2
                  nop
                  xori         s4, s3, 75
                  xor          s0, s3, s3
                  slti         s4, a1, 55
                  sltiu        t2, a7, -2046
                  slt          s1, sp, t2
                  srl          t5, t2, zero
                  sltiu        s6, t5, -328
                  or           s8, a0, zero
                  sub          s10, t2, t6
                  srli         t6, s2, 11
                  ori          a7, s3, -201
                  bltu         s9, s4, 558f
                  srl          ra, s7, s7
                  slti         s8, s11, -1858
                  beq          s9, t1, 566f
                  and          a0, s3, s5
                  bltu         s11, t5, 572f
                  slt          a3, s7, a1
                  slt          gp, zero, s9
558:              sltu         a4, t2, s8
                  slli         a0, s2, 7
                  and          s0, a4, a0
                  and          s7, t3, s2
                  bltu         a3, s2, 569f
                  xori         s9, s0, 278
                  bne          s10, t0, 579f
                  bltu         t6, s8, 581f
566:              bltu         t0, s5, 583f
                  add          t2, t5, t6
                  bgeu         s9, s2, 581f
569:              beq          a6, t1, 574f
                  slti         a5, s8, 507
                  sll          t4, t6, s5
572:              andi         s8, tp, -1383
                  and          s4, zero, s10
574:              addi         gp, t5, -643
                  ori          s9, s5, -1289
                  sra          s1, tp, a2
                  beq          gp, zero, 584f
                  sra          a2, s7, s4
579:              or           a7, s6, s8
                  srai         a4, s3, 24
581:              sra          s2, s0, gp
                  srl          a0, t6, sp
583:              srli         s5, t1, 24
584:              and          a0, a0, sp
                  and          s7, s3, s7
                  auipc        s3, 62361
                  bltu         zero, s3, 589f
                  xori         a3, a3, -802
589:              sltu         gp, a3, s0
                  xor          s3, a2, t6
                  add          tp, a5, s3
                  nop
                  bltu         t0, t5, 601f
                  sltiu        a3, a4, 1514
                  blt          s4, s3, 615f
                  blt          s4, a1, 603f
                  bge          s0, s11, 613f
                  beq          s3, t6, 613f
                  sll          a7, s3, sp
                  bne          a2, s7, 608f
601:              slt          s10, a0, t1
                  sra          t5, t6, t4
603:              bne          tp, s1, 618f
                  srl          s9, t4, t6
                  srli         t5, a2, 13
                  bgeu         s10, s5, 612f
                  bltu         a3, a6, 615f
608:              addi         a5, s5, -908
                  srl          tp, t5, a0
                  or           a2, s2, a3
                  nop
612:              lui          zero, 1009477
613:              beq          a2, a2, 622f
                  srli         t2, t5, 28
615:              bltu         s5, t6, 634f
                  ori          s10, t3, -469
                  srai         a1, s0, 30
618:              slti         a7, s3, -736
                  bgeu         a7, s7, 632f
                  lui          s8, 177470
                  and          tp, s1, s7
622:              srai         a3, s7, 11
                  slli         a1, s0, 5
                  sra          a5, s8, a6
                  srli         gp, t6, 17
                  sra          t5, a2, tp
                  addi         ra, t0, -75
                  andi         s8, a4, 973
                  add          s9, a4, t6
                  auipc        a2, 446617
                  xori         tp, t4, 2046
632:              bne          tp, tp, 639f
                  sra          t6, a3, t5
634:              auipc        a4, 829598
                  slti         s11, tp, -183
                  and          a3, s8, s3
                  ori          s6, zero, -684
                  and          t6, t4, t6
639:              addi         t0, t0, -635
                  sra          a0, s2, a3
                  blt          ra, s7, 645f
                  sub          s6, ra, a0
                  bgeu         ra, t5, 652f
                  sll          s8, a1, gp
645:              beq          a5, a1, 650f
                  beq          a3, t6, 659f
                  or           ra, s7, tp
                  xor          s11, a6, s4
                  bge          a0, sp, 663f
650:              xori         s4, ra, -744
                  add          tp, s5, s7
652:              addi         a0, s7, 591
                  beq          s4, zero, 668f
                  xori         s4, s8, -1596
                  xori         a2, a5, 1429
                  blt          s9, s4, 661f
                  sub          s11, sp, s9
                  bgeu         a3, s5, 676f
659:              xori         s11, s1, -1247
                  auipc        s5, 383764
661:              sltiu        t4, tp, -363
                  sra          a1, s0, a0
663:              bne          s1, s1, 664f
664:              ori          t5, s3, -1968
                  bne          a0, t6, 670f
                  nop
                  slt          a5, sp, s11
668:              sltiu        a1, ra, 235
                  addi         s0, t0, 77
670:              sltiu        s4, s5, -1915
                  lui          tp, 23595
                  beq          s3, sp, 687f
                  auipc        s5, 742270
                  slti         s4, s11, -146
                  nop
676:              sltiu        t1, a5, 1996
                  lui          s11, 143532
                  slli         t5, s10, 26
                  or           t6, s4, a1
                  addi         t1, a3, -774
                  or           a0, s8, s6
                  slt          s8, a4, t0
                  xori         a0, a7, -479
                  bgeu         a6, t3, 691f
                  lui          s11, 961887
                  blt          s10, sp, 691f
687:              nop
                  sltiu        s2, t2, -740
                  sltiu        a3, ra, -1893
                  nop
691:              xori         a4, a7, 1135
                  sub          s10, s6, s4
                  sra          t0, s11, s5
                  ori          s9, a7, 1748
                  addi         a1, s2, -796
                  bge          a4, t2, 704f
                  auipc        gp, 812978
                  xor          t4, s0, sp
                  srai         t4, t0, 15
                  slli         gp, s1, 7
                  blt          a4, t4, 708f
                  or           tp, s3, s6
                  srl          s10, s9, tp
704:              bltu         a3, a4, 712f
                  ori          t2, a4, 2045
                  srai         s3, a3, 27
                  sra          t6, s9, ra
708:              blt          s7, a3, 710f
                  slt          a3, s11, s5
710:              sltiu        t6, s2, 1445
                  addi         t5, t4, 1666
712:              add          s9, sp, s9
                  xori         s3, a7, 1669
                  blt          s9, s10, 734f
                  blt          s0, s10, 720f
                  and          s2, a2, s8
                  addi         s0, a7, -309
                  nop
                  bgeu         s4, s10, 727f
720:              ori          s8, a7, 1286
                  sll          a0, a4, s7
                  sltu         s9, tp, zero
                  sltiu        s2, a4, 891
                  xor          a5, zero, s5
                  add          a2, s5, s1
                  sra          s2, a2, s4
727:              and          s6, a0, a2
                  xor          t4, s2, a5
                  bne          tp, s2, 747f
                  auipc        s9, 357794
                  slti         s7, t0, -727
                  srl          s10, t6, s11
                  sub          a2, a0, s9
734:              andi         a1, s8, 745
                  beq          ra, s2, 741f
                  ori          t5, ra, 269
                  xori         a0, a7, 1304
                  slt          ra, a0, s2
                  sltu         a3, t4, a5
                  lui          s1, 790675
741:              bne          a6, a1, 756f
                  bltu         a7, a4, 759f
                  bgeu         a4, a2, 756f
                  slti         s9, a3, 2021
                  sll          zero, t5, a5
                  sll          s8, a3, s1
747:              sll          t1, t5, a5
                  srai         gp, t6, 23
                  xori         a7, s9, 708
                  slt          zero, a4, a4
                  sltu         s1, t4, s3
                  nop
sub_2_8:          jal          ra, 10f
0:                jal          ra, 11f
1:                jal          gp, 7f
2:                jal          gp, 17f
3:                jal          t2, 14f
4:                jal          ra, 5f
5:                jal          ra, 13f
6:                jal          s3, 12f
7:                jal          t4, 4b
8:                jal          ra, 3b
9:                jal          ra, 8b
10:               jal          t4, 0b
11:               jal          t1, 1b
12:               jal          ra, 2b
13:               jal          tp, 15f
14:               jal          t0, 16f
15:               jal          t1, 9b
16:               jal          ra, 6b
17:               or           a1, a4, sp
                  blt          a7, s1, 754f
754:              xori         s2, zero, -770
                  sltu         ra, t5, a6
756:              add          s6, t5, a1
                  bltu         a6, s7, 771f
                  nop
759:              addi         s2, a7, 1037
                  slli         s9, tp, 9
                  add          t4, tp, t3
                  sub          s9, a6, tp
                  xori         s9, gp, -139
                  addi         s3, s10, -324
                  slli         a2, s3, 9
                  sltiu        a0, tp, -1189
                  slti         t2, s6, -1302
                  bge          s2, s6, 787f
                  ori          t0, s2, -1762
                  srai         s9, s10, 8
771:              addi         a7, s8, 975
                  bge          zero, sp, 787f
                  sltu         gp, t4, sp
                  srai         t2, t5, 2
                  slt          s10, s8, sp
                  srli         tp, s2, 26
                  slti         t0, zero, -571
                  xor          t6, a2, a0
                  or           t5, zero, t4
                  slt          s3, s0, tp
                  bne          zero, a6, 790f
                  add          a4, t4, a4
                  bge          t5, sp, 796f
                  slt          t2, s2, sp
                  auipc        a7, 773387
                  xor          a2, a4, a6
787:              bltu         a4, a2, 803f
                  sub          ra, a2, s11
                  slli         s6, t1, 24
790:              and          a7, s0, t2
                  beq          a7, s8, 798f
                  srli         s1, t2, 2
                  bge          a2, a1, 808f
                  sltiu        tp, t5, 1418
                  bgeu         a7, t4, 811f
796:              blt          a3, a6, 800f
                  addi         t5, t6, 1162
798:              xor          t0, a5, t0
                  beq          a5, a0, 808f
800:              beq          s10, s1, 813f
                  slt          t5, a2, s5
                  slli         gp, s11, 8
803:              sll          s9, zero, a7
                  bgeu         a4, a0, 811f
                  slt          a7, t6, a1
                  sltiu        a7, s4, 1462
                  bne          t0, s11, 826f
808:              blt          s10, gp, 813f
                  auipc        t6, 883241
                  srl          a4, s0, a0
811:              ori          t2, s2, 169
                  and          t5, s4, t6
813:              srai         s6, s1, 11
                  bgeu         s8, s11, 827f
                  sll          s0, s0, ra
                  ori          a5, t1, 891
                  bne          t0, a7, 818f
818:              bltu         sp, a0, 823f
                  or           tp, s5, ra
                  bge          a0, s10, 826f
                  srli         s9, t6, 29
                  addi         a3, s1, 47
823:              blt          s10, s4, 836f
                  blt          s6, t1, 831f
                  sll          t6, t1, s4
826:              slti         s0, t0, 793
827:              blt          a4, ra, 847f
                  xor          s5, s7, a4
                  sltu         t2, zero, t0
                  srai         s0, ra, 8
831:              sub          t5, zero, tp
                  beq          a4, s1, 841f
                  slli         tp, a3, 8
                  add          t6, ra, a1
                  ori          s3, s7, -1619
836:              ori          s7, t1, 425
                  sra          gp, a7, t1
                  auipc        s4, 982654
                  srli         t4, sp, 5
                  xor          s9, a7, t4
841:              srai         s11, zero, 15
                  sltu         a2, s7, s7
                  xori         gp, s5, -578
                  bltu         t6, s3, 851f
                  auipc        s1, 756572
                  bgeu         s10, t4, 861f
847:              sra          ra, s9, a5
                  srl          t5, t6, s4
                  slli         t6, zero, 11
                  bne          t2, a1, 866f
851:              bltu         t5, gp, 866f
                  xori         zero, s6, 435
                  sll          ra, s4, ra
                  slli         t1, s6, 23
                  sra          a1, t5, sp
                  lui          tp, 550330
                  bltu         s6, a4, 865f
                  sll          s6, s6, a5
                  sub          s2, s9, sp
                  andi         s5, s8, 1604
861:              srl          a1, s3, s0
                  xor          t4, ra, s10
                  slt          ra, s8, t0
                  add          s0, a1, a0
865:              addi         t2, t5, -784
866:              blt          s8, a3, 869f
                  sltu         s11, a6, a4
                  beq          a0, a1, 869f
869:              slli         a5, s0, 6
                  addi         s4, tp, 431
                  slti         s1, a3, -1660
                  and          s4, s4, gp
                  lw           ra, 4(t3)
                  addi         t1, t3, 1586
                  slti         t1, tp, 77
                  slti         s10, s4, 1361
                  addi         t3, t3, 32
                  addi         s4, a2, -1522
1284:             addi x5, x1, 1
1284:             jalr x5, x5, 0
sub_3:            xori         a5, s3, 223
                  srl          t4, s2, a7
                  xor          a7, s11, t5
                  sra          s2, t2, a4
                  sltiu        t6, a1, -1091
                  addi         t3, t3, -48
                  addi         a2, t5, -283
                  nop
                  sub          t1, sp, a3
                  sw           ra, 4(t3)
                  sub          s1, a4, a1
                  lui          a0, 978644
sub_3_0:          jal          ra, 12f
0:                jal          ra, 8f
1:                jal          ra, 7f
2:                jal          t1, 9f
3:                jal          ra, 10f
4:                jal          tp, 0b
5:                jal          ra, 17f
6:                jal          ra, 5b
7:                jal          s0, 13f
8:                jal          a7, 11f
9:                jal          ra, 14f
10:               jal          tp, 2b
11:               jal          ra, 1b
12:               jal          ra, 3b
13:               jal          s10, 18f
14:               jal          ra, 6b
15:               jal          ra, 16f
16:               jal          t1, 4b
17:               jal          ra, 15b
18:               auipc        s6, 844112
sub_3_3:          jal          ra, 12f
0:                jal          t1, 6f
1:                jal          ra, 4f
2:                jal          s0, 3f
3:                jal          ra, 14f
4:                jal          a2, 0b
5:                jal          tp, 18f
6:                jal          t1, 17f
7:                jal          ra, 2b
8:                jal          t1, 5b
9:                jal          gp, 15f
10:               jal          s4, 9b
11:               jal          s4, 13f
12:               jal          t1, 11b
13:               jal          t1, 7b
14:               jal          ra, 1b
15:               jal          t0, 16f
16:               jal          t1, 8b
17:               jal          ra, 10b
18:               srai         t4, zero, 28
sub_3_2:          jal          ra, 0f
0:                jal          t1, 4f
1:                jal          ra, 12f
2:                jal          s3, 1b
3:                jal          ra, 9f
4:                jal          t1, 5f
5:                jal          ra, 15f
6:                jal          t5, 8f
7:                jal          t1, 10f
8:                jal          ra, 14f
9:                jal          ra, 16f
10:               jal          ra, 3b
11:               jal          t1, 13f
12:               jal          ra, 11b
13:               jal          s5, 7b
14:               jal          t1, 17f
15:               jal          ra, 2b
16:               jal          ra, 6b
17:               or           t1, s6, a1
sub_3_1:          jal          ra, 4f
0:                jal          tp, 7f
1:                jal          s6, 3f
2:                jal          t1, 6f
3:                jal          ra, 5f
4:                jal          t0, 11f
5:                jal          ra, 2b
6:                jal          t1, 10f
7:                jal          ra, 8f
8:                jal          ra, 1b
9:                jal          ra, 15f
10:               jal          ra, 14f
11:               jal          t1, 12f
12:               jal          ra, 0b
13:               jal          t1, 9b
14:               jal          s10, 13b
15:               srl          s3, a2, a7
                  xor          s4, a0, t1
                  slt          a5, s6, a5
                  sll          s3, s0, s3
                  sra          t6, s5, zero
                  xori         zero, sp, 1700
                  srl          a2, t4, a6
                  slli         t6, s2, 0
                  sra          s9, s3, s6
                  xor          gp, t0, a3
                  srai         a1, s4, 25
                  bgeu         s2, sp, 23f
                  add          s6, a5, ra
                  sra          a5, gp, s5
                  bgeu         s1, a0, 18f
                  add          gp, t3, ra
                  add          t5, t1, a4
                  srai         s1, t3, 4
                  beq          s11, s7, 24f
18:               andi         a2, a0, 239
                  bgeu         s6, zero, 39f
                  bne          t4, t1, 34f
                  bge          s0, a0, 23f
                  slt          s2, a1, a3
23:               auipc        gp, 168147
24:               bltu         ra, t4, 37f
                  addi         s1, t4, 213
                  srai         t1, s1, 3
                  blt          s8, ra, 33f
                  xori         s7, t1, 628
                  bne          t5, t4, 39f
                  blt          sp, s9, 48f
                  auipc        t6, 176310
                  ori          a4, s4, -1032
33:               beq          a6, s11, 39f
34:               bne          a4, tp, 51f
                  ori          t1, s11, 1218
                  nop
37:               sltiu        s10, s6, -1194
                  sll          tp, zero, t5
39:               or           t2, a1, a1
                  srli         s1, t4, 29
                  or           t2, a6, t3
                  slli         s0, tp, 11
                  sra          s0, a7, a1
                  sltu         gp, t4, s1
                  srl          a2, zero, s9
                  bgeu         s4, a2, 62f
                  sltu         a2, a0, zero
48:               add          t4, a4, a1
                  slli         s5, t6, 27
                  sltiu        t4, s0, 1613
51:               sra          s1, s11, s1
                  ori          a1, s9, -155
                  xor          s1, a2, ra
                  ori          s4, zero, 1587
                  srai         a5, s6, 15
                  and          s0, s9, a4
                  sra          a3, t5, t0
                  auipc        zero, 594600
                  slti         t2, a5, -1294
                  addi         s6, t6, -782
                  auipc        t2, 77447
62:               srai         s11, a2, 29
                  beq          a7, t6, 74f
                  slti         t0, ra, 182
                  auipc        tp, 72002
                  ori          a7, t1, -1018
                  lui          t5, 882051
                  xor          t5, t2, t0
                  or           a3, a6, a7
                  slli         s0, a5, 31
                  xori         a7, t1, -1266
                  auipc        s6, 871518
                  srli         t6, t3, 18
74:               add          a7, a3, a5
                  beq          a4, a1, 87f
                  sub          t5, a5, s10
                  xori         t4, tp, 1221
                  add          zero, s10, a4
                  sltiu        gp, s3, -658
                  bgeu         s5, s9, 81f
81:               sltu         gp, gp, a7
                  or           s7, a0, a7
                  sub          s2, a3, a2
                  add          a2, sp, ra
                  slti         s1, gp, -994
                  srl          gp, s4, s0
87:               xor          s2, t4, s8
                  sltu         t2, a0, t0
                  ori          t4, zero, 614
                  srli         a0, t5, 15
                  sltiu        tp, ra, -1984
                  bne          sp, s8, 109f
                  sll          s4, a4, a4
                  and          t6, s9, a3
                  srl          s9, s4, s8
                  sub          s4, s8, s1
                  or           t1, sp, a4
                  srli         t6, s3, 0
                  bge          s3, ra, 111f
                  bltu         s1, zero, 109f
                  srli         t0, t6, 21
                  slt          s5, gp, s4
                  slti         a3, t0, -1073
                  nop
                  andi         s10, a1, 2017
                  sll          s3, zero, tp
                  slti         a4, t4, -201
                  beq          s9, s1, 124f
109:              nop
                  ori          s9, a5, 1023
111:              and          t4, tp, a1
                  slti         s2, ra, -275
                  srli         s9, t1, 19
                  blt          s6, t2, 126f
                  srl          s5, t3, s0
                  bgeu         s0, s6, 129f
                  and          s11, s7, s11
                  nop
                  slt          a7, s4, t5
                  sra          tp, a1, t6
                  sltu         a4, a5, s6
                  sltu         s0, t4, s7
                  xori         ra, s9, -678
124:              beq          s7, t2, 129f
                  addi         s10, s2, -117
126:              add          a0, s1, gp
                  and          tp, gp, a2
                  sub          t4, sp, a6
129:              beq          a0, a0, 146f
                  srli         a4, t4, 15
                  srl          s2, t4, s11
                  srai         s0, ra, 22
                  ori          s2, a5, -1911
                  sll          a0, a3, s7
                  lui          s11, 505937
                  slli         t4, a4, 1
                  beq          s4, s7, 138f
138:              slt          a2, t4, t1
                  bge          gp, s11, 147f
                  sub          s2, s2, gp
                  sll          t6, t5, sp
                  sra          a1, s2, t4
                  or           ra, s5, s8
                  bgeu         s9, tp, 154f
                  blt          s11, gp, 149f
146:              lui          a1, 688558
147:              sltiu        t5, t3, 18
                  slli         a4, s7, 22
149:              andi         s9, s5, 1186
                  sub          s7, s0, t3
                  add          a3, s8, s7
                  slt          a3, s1, a0
                  bltu         a0, s3, 161f
154:              sll          a7, a6, t0
                  or           s3, s4, s9
                  or           zero, a6, t0
                  slli         a3, s5, 9
                  slti         s6, a0, -1147
                  bgeu         s4, s1, 179f
                  blt          a3, zero, 171f
161:              sub          t5, s1, a2
                  slti         s0, s8, 1456
                  ori          a5, s2, 560
                  and          s8, a2, t6
                  sra          s2, s8, t5
                  slti         s11, s0, -1717
                  slti         t4, t2, 81
                  srli         t4, t5, 6
                  srl          ra, s6, s11
                  slti         a5, s8, -1986
171:              auipc        a0, 1001325
                  sll          a3, s9, s6
                  nop
                  slti         gp, t4, 52
                  slti         a4, zero, -1318
                  andi         t2, s0, -791
                  sltiu        s10, s8, -211
                  srli         s0, s6, 25
179:              srai         s8, t4, 25
                  bltu         t0, a0, 187f
                  add          a2, ra, t0
                  bne          s11, a7, 194f
                  srli         s4, s9, 9
                  sltiu        s5, zero, 1696
                  xor          t5, t4, ra
                  sub          s9, t3, t1
187:              addi         a5, sp, -1141
                  or           s5, s1, a7
                  and          gp, t6, s4
                  sltu         ra, a1, tp
                  beq          t0, s6, 193f
                  slli         s9, t1, 17
193:              slt          s2, a5, s1
194:              slli         a1, s6, 21
                  beq          s11, gp, 205f
                  sll          t2, gp, a5
                  addi         a4, a5, 1862
                  and          a7, a3, s11
                  bgeu         s10, t0, 205f
                  ori          s4, sp, -214
                  slli         s5, s7, 7
                  sll          t1, t3, s7
                  slti         a4, s8, -2038
                  addi         s1, s9, -1872
205:              slti         s1, s9, 871
                  bgeu         gp, gp, 209f
                  sub          s7, sp, s4
                  ori          t1, tp, 1020
209:              sll          ra, t3, s9
                  slt          a0, t0, t0
                  sltu         t5, sp, gp
                  add          t1, a1, t6
                  sltiu        s3, a6, -186
                  lw           ra, 4(t3)
                  xor          t4, t6, s5
                  srai         a2, s0, 9
                  addi         t3, t3, 48
                  and          t6, a7, a5
307:              addi x26, x1, 0
307:              jalr x26, x26, 0
sub_4:            blt          a5, a5, sub_4_stack_p
sub_4_stack_p:    addi         t3, t3, -16
                  andi         s1, s9, -472
                  and          a7, t3, s1
                  sw           ra, 4(t3)
                  and          a1, a2, a1
                  xori         t2, s4, 286
                  slti         t4, s9, 1405
                  sra          s8, a2, s4
                  nop
                  srai         s4, a6, 13
                  xori         s3, s8, 1475
                  auipc        t1, 758672
                  sltu         s10, gp, s5
                  sltiu        a2, t0, -1086
                  srai         s4, s0, 27
sub_4_j5:         jal          ra, sub_5 #jump sub_4 -> sub_5
sub_4_2:          jal          ra, 6f
0:                jal          ra, 1f
1:                jal          t1, 10f
2:                jal          t1, 11f
3:                jal          ra, 9f
4:                jal          s7, 8f
5:                jal          s4, 4b
6:                jal          t1, 3b
7:                jal          t1, 12f
8:                jal          ra, 2b
9:                jal          ra, 5b
10:               jal          ra, 7b
11:               jal          ra, 0b
12:               jal          t1, 13f
13:               jal          t1, 14f
14:               srli         a0, s7, 9
sub_4_5:          jal          ra, 2f
0:                jal          a3, 12f
1:                jal          t2, 11f
2:                jal          ra, 16f
3:                jal          s10, 4f
4:                jal          tp, 17f
5:                jal          t1, 14f
6:                jal          t1, 18f
7:                jal          ra, 8f
8:                jal          ra, 1b
9:                jal          s9, 20f
10:               jal          a0, 13f
11:               jal          t1, 15f
12:               jal          ra, 9b
13:               jal          gp, 5b
14:               jal          ra, 3b
15:               jal          t1, 19f
16:               jal          t1, 6b
17:               jal          ra, 0b
18:               jal          s10, 7b
19:               jal          gp, 10b
20:               addi         zero, a6, -2040
sub_4_4:          jal          ra, 3f
0:                jal          ra, 6f
1:                jal          ra, 21f
2:                jal          ra, 20f
3:                jal          ra, 15f
4:                jal          t2, 10f
5:                jal          s9, 0b
6:                jal          ra, 19f
7:                jal          a0, 14f
8:                jal          gp, 18f
9:                jal          tp, 5b
10:               jal          ra, 1b
11:               jal          t1, 17f
12:               jal          t1, 9b
13:               jal          ra, 2b
14:               jal          ra, 13b
15:               jal          ra, 8b
16:               jal          a5, 23f
17:               jal          s4, 16b
18:               jal          gp, 12b
19:               jal          t1, 4b
20:               jal          s9, 22f
21:               jal          ra, 7b
22:               jal          s5, 11b
23:               or           s10, a1, gp
sub_4_3:          jal          ra, 1f
0:                jal          ra, 18f
1:                jal          t1, 12f
2:                jal          a0, 15f
3:                jal          ra, 23f
4:                jal          s11, 9f
5:                jal          t1, 21f
6:                jal          s2, 11f
7:                jal          a7, 26f
8:                jal          a7, 28f
9:                jal          s4, 30f
10:               jal          ra, 0b
11:               jal          ra, 8b
12:               jal          ra, 29f
13:               jal          ra, 4b
14:               jal          s3, 16f
15:               jal          ra, 13b
16:               jal          ra, 24f
17:               jal          ra, 6b
18:               jal          ra, 14b
19:               jal          ra, 22f
20:               jal          ra, 25f
21:               jal          t1, 27f
22:               jal          s2, 7b
23:               jal          t1, 19b
24:               jal          ra, 5b
25:               jal          t1, 3b
26:               jal          ra, 10b
27:               jal          t1, 17b
28:               jal          ra, 2b
29:               jal          t1, 20b
30:               sra          s6, s9, zero
sub_4_0:          jal          ra, 2f
0:                jal          ra, 1f
1:                jal          ra, 19f
2:                jal          ra, 12f
3:                jal          t1, 13f
4:                jal          t0, 18f
5:                jal          t1, 22f
6:                jal          ra, 15f
7:                jal          t1, 5b
8:                jal          t4, 9f
9:                jal          t1, 17f
10:               jal          tp, 8b
11:               jal          gp, 4b
12:               jal          ra, 0b
13:               jal          ra, 11b
14:               jal          t1, 21f
15:               jal          ra, 16f
16:               jal          ra, 14b
17:               jal          s0, 6b
18:               jal          ra, 10b
19:               jal          ra, 3b
20:               jal          t0, 7b
21:               jal          a5, 20b
22:               srli         s2, a1, 2
                  or           ra, a3, t0
                  srai         a3, t0, 31
                  addi         t6, t3, -1938
                  bltu         s5, s8, 11f
                  add          s0, s11, s5
                  addi         s4, a5, -1164
                  srai         s2, s2, 19
                  sltiu        ra, a5, -1548
                  srl          s3, t3, a3
                  slli         s4, ra, 24
                  sltu         s2, s8, t2
11:               sltu         a5, s7, t1
                  slli         t0, sp, 14
                  srli         a4, ra, 24
                  sll          zero, s10, s1
                  add          a1, a2, a2
                  beq          a2, s10, 30f
                  bltu         s4, tp, 32f
                  slli         s3, s1, 24
                  bgeu         a6, t5, 28f
                  or           t1, s6, a0
                  bge          t1, s10, 41f
                  xori         s2, a6, -2024
                  srli         gp, a5, 11
                  srli         s6, ra, 31
                  addi         t6, s1, -354
                  srai         zero, a2, 14
                  sltiu        t4, s11, -1210
28:               bne          t3, a4, 42f
                  srai         a4, a5, 28
30:               andi         a4, t6, 183
                  blt          a1, t6, 45f
32:               ori          t5, s4, -1795
                  beq          a1, a3, 43f
                  beq          t0, t0, 50f
                  xor          t4, a7, s1
                  bne          t2, t4, 38f
                  sra          s11, sp, t3
38:               sub          a1, s4, s0
                  sltu         s8, ra, a0
                  slti         s7, s9, 1147
41:               and          t0, zero, t3
42:               srl          a0, s4, t0
43:               nop
                  beq          zero, sp, 51f
45:               add          s6, a2, a4
                  and          s5, s6, s6
                  sra          s9, t4, s4
                  slt          s10, t5, s0
                  nop
50:               sltiu        a5, tp, 2023
51:               blt          a7, s9, 71f
                  sub          a2, a4, t5
                  sltu         s1, s9, t5
                  slti         s10, ra, 340
                  slli         a3, t2, 0
                  add          s7, s4, s2
                  bltu         zero, a5, 65f
                  add          s3, t0, a0
                  srl          s11, t0, a1
                  sub          s8, t5, s3
                  sub          s10, s11, s7
                  bge          s9, t4, 82f
                  addi         t6, tp, 2009
                  slt          t4, zero, sp
65:               or           s11, s11, s2
                  sub          s9, a6, t2
                  lui          zero, 675803
                  add          s1, s10, t4
                  auipc        s7, 806963
                  bgeu         gp, gp, 80f
71:               blt          s11, t1, 84f
                  slti         s3, sp, 1446
                  auipc        t6, 238047
                  bne          a2, tp, 75f
75:               auipc        a3, 567099
                  beq          a4, s6, 96f
                  bltu         s2, a4, 95f
                  addi         s0, s8, 1708
                  srai         s8, a5, 24
80:               slti         s5, ra, 1355
                  slt          t6, s4, s0
82:               ori          a5, sp, 317
                  sra          s1, t5, s8
84:               auipc        s0, 536521
                  sub          t4, s1, a5
                  sltu         s8, t6, t0
                  bne          t2, a6, 88f
88:               bgeu         a1, a0, 90f
                  beq          t4, a1, 97f
90:               sll          t2, s5, t3
                  sra          t5, s7, a7
                  andi         s2, a5, -576
                  xor          s6, s7, a2
                  auipc        ra, 98515
95:               slti         gp, zero, 940
96:               srli         t4, s7, 26
97:               srli         a2, a6, 12
                  bltu         s6, t1, 104f
                  lui          a0, 983744
                  bge          t6, s2, 107f
                  andi         gp, s1, 1252
                  lui          s6, 268405
                  bge          ra, a5, 119f
104:              bltu         a1, s1, 124f
                  slli         s3, s11, 8
                  sltu         a1, s8, t6
107:              bltu         t1, s1, 108f
108:              or           ra, t1, s2
                  sltiu        s5, s1, 1746
                  slti         gp, gp, 1746
                  sub          t0, t6, a5
                  auipc        s3, 925316
                  bgeu         tp, s2, 114f
114:              and          a0, s1, a0
                  srli         s1, a0, 20
                  andi         a2, a1, 1424
                  sub          s0, a1, s7
                  srai         t6, s1, 19
119:              add          t5, s9, s1
                  add          tp, ra, a7
                  xori         a7, zero, -223
                  nop
                  xor          t5, t6, s2
124:              sub          s11, a6, a3
                  addi         s10, a7, -1188
                  sub          t1, t1, a1
                  lui          a5, 366787
                  sra          s8, t6, a7
                  sra          zero, a4, a4
                  srai         t6, t4, 26
                  blt          a5, t1, 133f
                  sltiu        t5, a4, 1078
133:              srl          zero, s4, s5
                  bge          t2, t4, 150f
                  beq          s11, s8, 148f
                  slti         s8, a3, 223
                  lui          s6, 452259
                  and          t6, t4, t3
                  and          s10, a1, ra
                  blt          t0, t2, 142f
                  slti         s10, s2, 1014
142:              add          a2, a5, gp
                  ori          t1, s1, -529
                  ori          s3, gp, -1143
                  add          a0, ra, t5
                  srai         a1, a7, 25
                  xori         s6, sp, -1979
148:              xori         t6, a3, -1464
                  add          t1, t1, s5
150:              and          ra, t2, s4
                  xor          s10, s2, t6
                  xori         s0, s4, -577
                  nop
                  sub          tp, s10, a1
                  bge          s4, a0, 169f
                  bltu         s11, s10, 176f
                  sll          s8, s8, t1
                  sra          s8, ra, gp
                  beq          s0, a7, 160f
160:              sltu         t2, a1, s7
                  srli         s8, s3, 19
                  srl          s1, t5, ra
                  srai         s5, a0, 22
                  xor          s2, t6, t6
                  ori          a0, s5, 1138
                  sub          s0, tp, a6
                  bge          a6, s6, 183f
                  lui          s11, 792935
169:              or           ra, s6, a0
                  nop
                  and          s11, a4, a2
                  blt          s4, ra, 186f
                  ori          a3, t3, -173
                  srli         t2, s8, 31
                  or           s6, s7, sp
176:              xor          a3, t4, s0
                  ori          s8, s10, -1750
                  bge          s0, s0, 198f
                  beq          a4, s11, 199f
                  sra          a1, tp, s2
                  and          s1, gp, a7
                  add          s1, s5, s0
183:              addi         t0, a3, -1300
                  and          s7, ra, t4
                  bltu         tp, a3, 193f
186:              xor          s7, ra, a5
                  xor          a7, s8, s3
                  auipc        s9, 915801
                  add          t0, a0, t1
                  slti         t4, a7, -1055
                  srl          a4, s7, zero
                  srl          s5, gp, a6
193:              xor          s7, t0, sp
                  srai         s11, s2, 17
                  lui          tp, 176146
                  srli         gp, ra, 29
                  srl          t0, s9, s0
198:              xori         zero, s8, 1490
199:              and          s2, t0, sp
                  xor          t4, t6, a6
                  srli         s6, ra, 3
                  blt          s5, s11, 209f
                  ori          s3, t1, -410
                  addi         t2, t2, -199
                  sll          t4, a1, s5
                  or           s8, s2, s10
                  sll          a3, t4, a1
                  srai         a7, s11, 16
209:              and          s11, s2, t2
                  bge          a7, sp, 217f
                  nop
                  lui          a5, 830670
                  slti         s6, s2, 1287
                  srli         s6, a4, 1
                  slti         a4, t2, -1092
                  sra          s3, a4, s0
217:              sltiu        t5, t1, 1253
                  or           t1, s6, t1
                  andi         s3, t3, 1060
                  bge          s2, t6, 229f
                  srl          s6, t1, gp
                  sltu         a1, t5, a7
                  sra          a2, s10, a5
                  bgeu         gp, a6, 225f
225:              xori         a0, gp, 1526
                  sra          s5, a4, t4
                  slli         s1, t2, 29
                  bne          ra, s6, 238f
229:              sltiu        s5, s2, -722
                  bltu         a6, a3, 250f
                  srli         a2, s2, 31
                  bgeu         t5, a4, 240f
                  or           s0, a6, a6
                  srli         zero, a5, 6
                  andi         s1, tp, -963
                  auipc        ra, 717917
                  bge          s5, s6, 253f
238:              sltu         s1, a0, s4
                  sub          a2, s6, a0
240:              beq          s1, s6, 241f
241:              andi         a5, s7, 1163
                  slti         s0, sp, -1005
                  srl          zero, t0, t0
                  bltu         a3, t1, 262f
                  xori         s3, gp, -1777
                  xori         a7, s9, -1441
                  sll          s10, sp, s9
                  slt          s0, a3, s1
                  lui          a2, 490572
250:              bgeu         s11, a3, 266f
                  xor          s9, sp, s9
                  andi         t4, s1, -713
253:              or           a4, s0, s11
                  sltu         t4, zero, ra
                  blt          t1, a7, 261f
                  and          t1, t1, gp
                  nop
                  blt          t3, t1, 272f
                  xor          a5, a6, s9
                  or           t5, tp, tp
261:              xor          s11, a4, a7
262:              lui          zero, 680280
                  addi         s2, a3, -649
                  bgeu         s3, t4, 272f
                  or           s3, s4, zero
266:              bgeu         a3, s7, 286f
                  blt          sp, s3, 277f
                  sltu         s10, a6, a6
                  auipc        t1, 1030647
                  bne          s1, s3, 272f
                  nop
272:              xor          tp, a4, t3
                  bge          s3, a6, 275f
                  bgeu         t2, gp, 289f
275:              sra          t0, s9, s2
                  sltu         t4, s0, a5
277:              bne          t0, s5, 278f
278:              slli         s9, s10, 1
                  auipc        s8, 1031523
                  sltiu        s1, s8, -1361
                  sltiu        s1, s0, 1949
                  andi         a1, s6, -1249
                  addi         zero, sp, 110
                  slti         s11, s11, -1729
                  nop
286:              ori          ra, t4, 1037
                  sltu         s5, s3, a7
                  sra          a4, t4, a1
289:              and          s6, a1, s1
                  beq          s1, s9, 306f
                  nop
                  blt          s6, s9, 293f
293:              srl          ra, t2, a0
                  srli         s8, a0, 25
                  xori         a1, t6, 726
                  bge          zero, s10, 298f
                  addi         s2, t5, -1368
298:              or           s11, a3, s3
                  sltu         a7, t5, a1
                  srl          s1, s3, a6
                  slt          s10, tp, a7
                  srli         s3, zero, 31
                  slti         a5, t0, -1206
                  sll          a7, a7, s1
                  sub          a2, zero, s2
306:              slti         a5, s2, -926
                  xor          s8, s5, s6
                  sub          a5, a7, sp
                  slti         s7, s8, -1900
                  sltiu        zero, sp, 635
                  bne          t6, t2, 319f
                  and          s6, s4, s3
                  bltu         s0, t0, 323f
                  bne          s10, s2, 330f
                  auipc        tp, 4412
                  lui          s2, 716291
                  xor          ra, a1, s3
                  bge          gp, s2, 319f
319:              bltu         t5, a6, 327f
                  nop
                  slti         a7, a7, 1660
                  slt          s7, zero, s1
323:              andi         a2, a0, 287
                  and          tp, s6, zero
                  sltu         s7, s8, ra
                  sra          t5, sp, a6
327:              andi         a4, s1, 1239
                  xor          s8, s10, t1
                  sub          a4, s0, a0
330:              srai         ra, s5, 11
sub_4_1:          jal          ra, 15f
0:                jal          ra, 1f
1:                jal          s3, 13f
2:                jal          t1, 12f
3:                jal          ra, 8f
4:                jal          ra, 21f
5:                jal          s4, 4b
6:                jal          ra, 19f
7:                jal          ra, 2b
8:                jal          ra, 24f
9:                jal          ra, 5b
10:               jal          ra, 7b
11:               jal          ra, 0b
12:               jal          t1, 20f
13:               jal          ra, 18f
14:               jal          ra, 10b
15:               jal          ra, 17f
16:               jal          ra, 23f
17:               jal          t1, 11b
18:               jal          ra, 16b
19:               jal          t1, 9b
20:               jal          a3, 22f
21:               jal          t1, 14b
22:               jal          s0, 3b
23:               jal          ra, 6b
24:               srli         a7, s1, 6
                  addi         t0, s5, 1481
                  slti         tp, s4, -421
                  beq          s11, sp, 338f
                  sra          t1, sp, s7
                  andi         a1, t6, 1211
                  and          s8, zero, a0
                  slt          s1, a2, a6
338:              slt          zero, s4, gp
                  lw           ra, 4(t3)
                  addi         t3, t3, 16
                  ori          s4, s2, 391
                  and          s0, t0, s9
                  add          a0, gp, t2
                  or           a1, s7, t0
                  add          zero, a7, t2
                  or           s2, s8, a0
                  sra          tp, ra, s11
510:              addi x3, x1, 0
510:              jalr x3, x3, 0
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
.align           2
mtvec_handler:    
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x2, x28, zero
                  csrr x11, 0x300 # MSTATUS
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 31
                  bne x11, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x11, 0x341 # MEPC
                  csrr x11, 0x342 # MCAUSE
                  li x26, 0x3 # BREAKPOINT
                  beq x11, x26, ebreak_handler
                  li x26, 0x8 # ECALL_UMODE
                  beq x11, x26, ecall_handler
                  li x26, 0x9 # ECALL_SMODE
                  beq x11, x26, ecall_handler
                  li x26, 0xb # ECALL_MMODE
                  beq x11, x26, ecall_handler
                  li x26, 0x1
                  beq x11, x26, instr_fault_handler
                  li x26, 0x5
                  beq x11, x26, load_fault_handler
                  li x26, 0x7
                  beq x11, x26, store_fault_handler
                  li x26, 0xc
                  beq x11, x26, pt_fault_handler
                  li x26, 0xd
                  beq x11, x26, pt_fault_handler
                  li x26, 0xf
                  beq x11, x26, pt_fault_handler
                  li x26, 0x2 # ILLEGAL_INSTRUCTION
                  beq x11, x26, illegal_instr_handler
                  csrr x26, 0x343 # MTVAL
                  1: la x16, test_done
                  jalr x1, x16, 0

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
                  la x16, write_tohost
                  jalr x0, x16, 0

instr_fault_handler:
                  add x28, x2, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

load_fault_handler:
                  add x28, x2, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

store_fault_handler:
                  add x28, x2, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

ebreak_handler:   
                  csrr  x11, 0x341
                  addi  x11, x11, 4
                  csrw  0x341, x11
                  add x28, x2, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

illegal_instr_handler:
                  csrr  x11, 0x341
                  addi  x11, x11, 4
                  csrw  0x341, x11
                  add x28, x2, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x11, 0x300 # MSTATUS;
                  csrr  x11, 0x304 # MIE;
                  csrr  x11, 0x344 # MIP;
                  csrrc x11, 0x344, x11 # MIP;
                  add x28, x2, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
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
