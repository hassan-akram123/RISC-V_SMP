.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x15, h0_start
jalr x0, x15, 0
h0_start:
                  li x8, 0x40000100
                  csrw 0x301, x8
kernel_sp:        
                  la x30, kernel_stack_end

trap_vec_init:    
                  la x8, mtvec_handler
                  ori x8, x8, 1
                  csrw 0x305, x8 # MTVEC

mepc_setup:       
                  la x8, init
                  csrw 0x341, x8

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x8, 0x1800
                  csrw 0x300, x8 # MSTATUS
                  mret
init:             
                  li x0, 0x9e4ac522
                  li x1, 0xf351a68f
                  li x2, 0xa4cf42c5
                  li x3, 0x0
                  li x4, 0x0
                  li x5, 0xf55d01d7
                  li x6, 0x66665bb1
                  li x7, 0x39f33375
                  li x8, 0xf
                  li x9, 0xf6e3eea8
                  li x10, 0x80000000
                  li x11, 0x8
                  li x12, 0xe
                  li x13, 0x5ffab495
                  li x15, 0x80000000
                  li x16, 0xf97a7b23
                  li x17, 0x0
                  li x18, 0x0
                  li x19, 0xf25f2c28
                  li x20, 0x80000000
                  li x21, 0x0
                  li x22, 0x0
                  li x23, 0xfb6f3bc3
                  li x24, 0x9
                  li x25, 0xa
                  li x26, 0xf4135170
                  li x27, 0x0
                  li x28, 0x3
                  li x29, 0x80000000
                  li x31, 0xf0924d89
                  la x14, user_stack_end
main:             or           s10, t6, a2
                  xor          s5, t6, a6
                  srl          gp, a1, s1
                  addi         sp, a4, 314
                  or           s11, tp, tp
                  la           a7, sub_2
                  sltiu        t1, sp, 1589
                  addi         a7, a7, 438
                  srai         sp, t1, 18
main_j4:          jalr         t3, a7, -437 #jump main -> sub_2
main_5:           jal          t3, 6f
0:                jal          a6, 8f
1:                jal          t1, 9f
2:                jal          ra, 14f
3:                jal          ra, 2b
4:                jal          a6, 12f
5:                jal          ra, 3b
6:                jal          ra, 5b
7:                jal          ra, 10f
8:                jal          t1, 13f
9:                jal          t1, 7b
10:               jal          ra, 11f
11:               jal          ra, 4b
12:               jal          tp, 15f
13:               jal          t0, 1b
14:               jal          t1, 0b
15:               srl          s0, a0, s4
main_0:           jal          t3, 17f
0:                jal          ra, 2f
1:                jal          ra, 10f
2:                jal          s1, 13f
3:                jal          ra, 16f
4:                jal          ra, 15f
5:                jal          ra, 9f
6:                jal          t1, 8f
7:                jal          ra, 19f
8:                jal          ra, 4b
9:                jal          sp, 7b
10:               jal          t1, 18f
11:               jal          ra, 5b
12:               jal          ra, 6b
13:               jal          ra, 12b
14:               jal          t1, 3b
15:               jal          a0, 14b
16:               jal          s0, 11b
17:               jal          ra, 1b
18:               jal          t1, 20f
19:               jal          ra, 21f
20:               jal          ra, 0b
21:               sra          s6, s10, t0
main_3:           jal          t3, 7f
0:                jal          t1, 29f
1:                jal          s4, 16f
2:                jal          ra, 20f
3:                jal          a1, 13f
4:                jal          t1, 24f
5:                jal          ra, 17f
6:                jal          a3, 12f
7:                jal          ra, 25f
8:                jal          s6, 14f
9:                jal          ra, 30f
10:               jal          ra, 15f
11:               jal          s1, 8b
12:               jal          ra, 19f
13:               jal          ra, 11b
14:               jal          ra, 28f
15:               jal          ra, 23f
16:               jal          ra, 0b
17:               jal          s0, 21f
18:               jal          tp, 5b
19:               jal          tp, 3b
20:               jal          t1, 1b
21:               jal          ra, 10b
22:               jal          ra, 6b
23:               jal          ra, 22b
24:               jal          ra, 9b
25:               jal          ra, 2b
26:               jal          t6, 27f
27:               jal          t2, 18b
28:               jal          ra, 4b
29:               jal          ra, 26b
30:               auipc        s6, 530991
main_1:           jal          t3, 9f
0:                jal          gp, 8f
1:                jal          ra, 13f
2:                jal          ra, 7f
3:                jal          ra, 12f
4:                jal          ra, 6f
5:                jal          a2, 2b
6:                jal          t1, 5b
7:                jal          t1, 0b
8:                jal          a6, 1b
9:                jal          ra, 11f
10:               jal          ra, 4b
11:               jal          ra, 3b
12:               jal          ra, 10b
13:               sll          tp, a4, a5
main_4:           jal          t3, 15f
0:                jal          t1, 23f
1:                jal          ra, 20f
2:                jal          s11, 17f
3:                jal          ra, 24f
4:                jal          ra, 25f
5:                jal          ra, 21f
6:                jal          ra, 1b
7:                jal          a7, 6b
8:                jal          ra, 10f
9:                jal          s9, 4b
10:               jal          ra, 12f
11:               jal          t2, 9b
12:               jal          ra, 2b
13:               jal          t0, 8b
14:               jal          s4, 18f
15:               jal          ra, 22f
16:               jal          ra, 3b
17:               jal          t1, 11b
18:               jal          t1, 16b
19:               jal          s4, 26f
20:               jal          t6, 19b
21:               jal          t1, 13b
22:               jal          ra, 0b
23:               jal          ra, 14b
24:               jal          t1, 5b
25:               jal          t1, 7b
26:               lui          s3, 59665
main_2:           jal          t3, 4f
0:                jal          ra, 9f
1:                jal          ra, 7f
2:                jal          ra, 0b
3:                jal          t1, 5f
4:                jal          ra, 3b
5:                jal          sp, 1b
6:                jal          s11, 10f
7:                jal          a1, 2b
8:                jal          t1, 6b
9:                jal          ra, 8b
10:               srli         t6, zero, 29
main_6:           jal          t3, 9f
0:                jal          a2, 17f
1:                jal          sp, 21f
2:                jal          ra, 20f
3:                jal          ra, 5f
4:                jal          ra, 6f
5:                jal          ra, 19f
6:                jal          ra, 23f
7:                jal          ra, 0b
8:                jal          ra, 3b
9:                jal          a6, 1b
10:               jal          ra, 16f
11:               jal          t1, 4b
12:               jal          t0, 18f
13:               jal          ra, 10b
14:               jal          t0, 7b
15:               jal          ra, 8b
16:               jal          ra, 2b
17:               jal          t2, 22f
18:               jal          ra, 13b
19:               jal          ra, 12b
20:               jal          gp, 14b
21:               jal          t1, 15b
22:               jal          tp, 11b
23:               xori         s8, t3, -574
                  sltiu        t2, t4, -1742
                  nop
                  ori          s3, s7, -146
                  auipc        s2, 872886
                  srl          s4, a5, t0
                  bgeu         a3, t3, 22f
                  sltu         s11, t0, a0
                  auipc        sp, 95013
                  beq          s8, s5, 21f
                  srl          s3, s0, t6
                  slt          a0, zero, s7
                  andi         t3, a1, -1564
                  add          ra, t4, s3
                  sltu         sp, t5, a6
                  sltiu        s10, t0, -1864
                  srli         s9, a4, 10
                  srli         gp, a7, 26
                  sltiu        a0, t5, 1046
                  xor          s3, t0, a0
                  and          t3, t3, a2
                  beq          t1, t0, 25f
21:               or           a0, a7, t5
22:               sll          gp, s3, s11
                  ori          s6, a1, 1660
                  bne          a7, s9, 34f
                  la           s0, sub_2
                  srl          s7, t3, t6
                  sltiu        s4, a5, -514
                  xori         s6, s1, 620
                  slti         t2, a5, -337
                  sub          s8, a6, s11
                  xori         s4, s3, 786
                  addi         s0, s0, 708
                  sltu         s6, zero, s4
main_j2:          jalr         t3, s0, -708 #jump main -> sub_2
25:               sltiu        s6, t5, 139
                  blt          s6, a7, 37f
                  blt          s10, s7, 29f
                  addi         a7, a1, 1568
29:               lui          gp, 788122
                  srl          t2, a4, ra
                  srai         t1, s5, 4
                  srl          s6, s6, t1
                  andi         sp, a5, -1798
34:               lui          ra, 147096
                  sub          a1, a4, a7
                  srai         s2, t1, 0
37:               xori         a3, a6, -1071
                  beq          s6, s11, 42f
                  xor          t6, a7, a6
                  sub          a3, t3, s1
                  sub          s9, s3, s10
42:               auipc        a1, 156743
                  or           a1, t3, s11
                  srai         s10, a2, 28
                  auipc        a6, 337563
                  srl          t2, t6, t6
                  srai         t4, s8, 22
                  andi         a0, sp, -745
                  xor          tp, gp, t2
                  nop
                  beq          t5, a7, 56f
                  srli         t1, s10, 10
                  lui          s4, 825941
                  bne          s9, s2, 70f
                  slti         s3, s7, -771
56:               andi         gp, a7, -1643
                  xori         a7, s4, -579
                  addi         a3, a0, 1108
                  srli         s4, t3, 17
                  sra          s7, s11, s4
                  lui          s6, 629145
                  bne          a3, s3, 70f
                  slti         t0, s3, 1413
                  ori          zero, t1, -1652
                  slli         t2, zero, 20
                  or           s11, s8, tp
                  blt          a7, t6, 84f
                  addi         t3, a7, -15
                  slti         s2, s11, -1261
70:               srl          s3, a3, s11
                  blt          a6, a2, 87f
                  sltiu        a7, a7, 936
                  auipc        t1, 103008
                  bne          a0, ra, 78f
                  srli         tp, s2, 14
                  ori          a2, s4, 1554
                  sub          s1, s0, s8
78:               and          gp, t0, a4
                  lui          ra, 570934
                  bne          s8, a4, 96f
                  ori          s0, gp, -542
                  xor          tp, ra, t2
                  bgeu         s10, a1, 85f
84:               bltu         t0, t4, 104f
85:               sub          s2, t2, s1
                  xori         a7, s11, -333
87:               slli         ra, s5, 17
                  sra          s8, t2, t5
                  bge          s6, a0, 105f
                  auipc        s3, 18053
                  add          s3, t1, s3
                  lui          s8, 327524
                  or           gp, t4, a2
                  and          s3, s2, ra
                  sltiu        zero, a6, -429
96:               slt          sp, t1, gp
                  xor          s8, t3, t0
                  sll          a0, a0, gp
                  sltiu        a6, s2, 1820
                  sra          t2, s5, a2
                  srai         s4, t5, 7
                  sra          t2, s6, s7
                  andi         s9, a6, -382
104:              slt          a6, s7, t3
105:              lui          zero, 938342
                  sub          s9, a4, s6
                  auipc        t6, 959574
                  slti         t3, a7, -1008
                  xori         a3, a1, -1312
                  sll          ra, t1, t0
                  add          zero, a6, s10
                  blt          a6, a5, 121f
                  addi         t3, t5, -379
                  addi         s6, s9, 1835
                  xori         t1, s10, -1980
                  andi         sp, t6, -360
                  auipc        t1, 650935
                  srai         s8, s6, 30
                  lui          a7, 673485
                  sra          t4, t3, s7
121:              sltiu        a3, t3, 1991
                  auipc        t4, 655579
                  srai         s10, s0, 0
                  slt          s7, s3, t0
                  beq          zero, s5, 139f
                  nop
                  addi         gp, a4, 716
                  sra          tp, s9, t3
                  sra          s5, s8, t3
                  add          s7, t4, s8
                  sltu         s10, s10, s8
                  auipc        t1, 665046
                  beq          t5, ra, 149f
                  xor          zero, s1, t1
                  beq          a1, a4, 154f
                  srai         s8, gp, 23
                  sub          s7, a5, a3
                  sra          ra, zero, s0
                  la           gp, sub_3
                  addi         gp, gp, -272
                  sub          a0, zero, a4
                  lui          t1, 280340
                  bge          t2, s3, main_j3 #branch to jump instr
                  or           s10, t1, a0
                  srl          s6, t5, a6
                  add          s4, gp, a3
                  slti         t6, t5, -1493
main_j3:          jalr         t3, gp, 273 #jump main -> sub_3
                  bge          a1, t4, 155f
139:              bge          a4, s4, 153f
                  sll          t3, a0, s6
                  and          s4, a4, t5
                  bge          zero, a3, 146f
                  andi         s1, s9, 1147
                  bltu         s11, t2, 161f
                  bgeu         s5, s1, 161f
146:              auipc        s6, 456509
                  or           a2, t1, sp
                  and          gp, a6, t6
149:              xor          s8, t4, s8
                  srli         t6, gp, 21
                  auipc        t1, 531992
                  sltu         t1, t0, a7
153:              srli         s7, s5, 25
154:              sltiu        s4, s4, -1861
155:              sll          s5, s6, a2
                  addi         s3, s0, 1839
                  srli         t3, ra, 15
                  sub          s1, t2, s6
                  slli         s3, s9, 7
                  bltu         s5, s3, 173f
161:              bne          s6, t1, 167f
                  bltu         a2, s6, 163f
163:              ori          a2, s1, 437
                  bgeu         s7, t5, 180f
                  ori          t1, s2, -928
                  srli         s8, s4, 22
167:              sll          s3, t4, s0
                  lui          s10, 280576
                  slt          s1, t4, a2
                  bltu         s3, s3, 186f
                  bne          s9, a7, 187f
                  slti         zero, s8, -125
173:              beq          t6, s5, 177f
                  sll          s4, sp, a5
                  bltu         gp, s6, 192f
                  sub          s7, t3, a3
177:              bge          s7, t0, 193f
                  sltu         s2, a0, a5
                  xori         a6, s0, 1260
180:              srai         t1, s11, 18
                  beq          a6, a1, 183f
                  sra          gp, s0, s2
183:              auipc        s10, 627263
                  nop
                  bge          s0, s6, 187f
186:              ori          ra, s4, -1598
187:              addi         t2, zero, -1836
                  bge          s1, a4, 207f
                  xori         gp, t2, 1189
                  srai         a7, tp, 25
                  auipc        s6, 228279
192:              ori          s1, s2, -958
193:              slti         a2, a5, 1608
                  sltu         zero, a1, ra
                  or           s10, a1, t6
                  bltu         s0, t6, 209f
                  nop
                  srai         ra, s8, 10
                  sra          s0, s3, s8
                  sll          a2, s6, sp
                  slti         s1, t4, 1323
                  addi         a2, s5, -216
                  bge          t4, ra, 204f
204:              beq          s2, s8, 218f
                  beq          t1, gp, 222f
                  sll          sp, s2, a0
207:              nop
                  sra          gp, t0, a2
209:              xori         s1, a5, 1591
                  sll          t3, a3, a7
                  sra          s10, t2, s6
                  bgeu         zero, s1, 229f
                  xori         gp, t1, -1890
                  beq          t4, s10, 222f
                  ori          s5, s3, -1108
                  sra          s1, s7, t2
                  addi         s0, s6, -439
218:              slt          sp, a2, s10
                  sub          ra, a5, s2
                  ori          s10, ra, 1155
                  andi         zero, s2, -1573
222:              nop
                  beq          s1, tp, 239f
                  sra          s0, tp, s5
                  sub          s4, ra, t0
                  bgeu         s11, t4, 242f
                  andi         t2, a2, -414
                  bge          s6, a4, 234f
229:              sltu         a6, ra, t0
                  sll          s5, s4, t2
                  slli         a1, gp, 16
                  add          s7, s10, a0
                  bne          t1, s4, 249f
234:              xor          t2, s8, t4
                  lui          t2, 129231
                  beq          s7, t4, 253f
                  sub          t4, s4, s7
                  slli         s10, s10, 8
239:              bne          a7, s6, 244f
                  andi         sp, a5, 998
                  sll          t1, t0, t4
242:              xor          s6, s1, s5
                  addi         s9, t5, 747
244:              slli         a1, s3, 31
                  nop
                  bgeu         t0, t4, 259f
                  srl          s11, t2, s1
                  srai         gp, a6, 8
249:              sub          a0, s7, a5
                  add          a3, a3, t4
                  bge          s3, gp, 260f
                  auipc        t4, 471711
253:              add          t6, s10, a7
                  xor          a2, a5, s1
                  auipc        tp, 944355
                  srl          s9, s3, s11
                  xor          s0, t5, t4
                  srai         a0, a3, 14
259:              slt          s8, t3, s4
260:              srai         s3, s8, 4
                  slti         t0, t2, 1677
                  srli         s1, gp, 26
                  sltiu        t2, t0, 1381
                  sll          ra, a2, ra
                  sltu         a2, t5, sp
                  ori          sp, s11, -815
                  bne          s6, a5, 281f
                  slli         s8, s8, 10
                  bge          s0, t4, 274f
                  blt          t5, s1, 274f
                  auipc        s5, 726580
                  srai         t0, t0, 30
                  bge          s2, a0, 293f
274:              bltu         s9, t6, 278f
                  ori          t3, a4, -1245
                  add          s6, s7, sp
                  sub          s9, s0, a2
278:              sra          t2, t5, a5
                  addi         a0, t1, 1142
                  bltu         t0, t3, 296f
281:              lui          t2, 400030
                  sltiu        s1, tp, -1032
                  and          s1, zero, a1
                  bgeu         s9, sp, 294f
                  sltu         sp, gp, a7
                  auipc        a2, 742339
                  andi         a2, a2, -931
                  or           s10, t4, a3
                  auipc        s7, 568827
                  bne          a2, a0, 301f
                  ori          s7, t6, 1993
                  nop
293:              sub          s3, sp, t0
294:              sll          t4, s11, s2
                  sll          a3, a2, a2
296:              bge          s5, zero, 310f
                  sra          s2, ra, a4
                  sltu         s10, s2, s7
                  slti         a0, a7, -1295
                  sub          t0, ra, s6
301:              sll          s1, t4, s5
                  and          s1, a2, a4
                  beq          a7, s8, 304f
304:              add          s8, tp, s10
                  or           a7, zero, t4
                  or           a0, a5, t2
                  beq          a2, s2, 323f
                  ori          t6, t3, -1772
                  bgeu         a3, gp, 315f
310:              bge          s9, tp, 321f
                  srai         s9, a7, 20
                  sra          s8, zero, a5
                  sltu         ra, t1, s7
                  nop
315:              srai         a7, a0, 14
                  add          s0, s6, a7
                  sltu         t1, s6, ra
                  nop
                  nop
                  slli         t6, sp, 22
321:              lui          s2, 270010
                  bltu         s3, a6, 326f
323:              sltiu        t1, a6, 1505
                  blt          tp, s2, 338f
                  sub          s2, s4, ra
326:              bltu         t2, sp, 328f
                  sltu         s10, sp, a0
328:              slti         s1, sp, -797
                  slli         a0, t6, 6
                  sll          s10, a5, s2
                  srli         a1, s0, 12
                  addi         a0, s9, 1790
                  srl          s11, s2, a4
                  sub          t6, s3, a5
                  la           s0, sub_1
                  srai         t4, s9, 5
                  slti         gp, s10, 895
                  addi         s0, s0, -875
                  sra          s4, zero, a2
main_j1:          jalr         t3, s0, 875 #jump main -> sub_1
                  srai         s0, a7, 3
                  add          gp, s7, a7
                  blt          s11, gp, 351f
                  and          s8, ra, s5
                  xor          s0, sp, t1
338:              xori         a0, t6, 502
                  sltu         a6, s6, a5
                  sltu         t6, s7, a0
                  sra          t4, tp, a3
                  srl          s3, s7, a7
                  slli         a2, t1, 26
                  blt          a6, s1, 361f
                  and          s8, gp, t4
                  blt          s8, t6, 350f
                  or           s10, s2, a5
                  xor          s1, s9, s6
                  bltu         s7, s9, 362f
350:              addi         gp, ra, 697
351:              auipc        t6, 726459
                  bge          t0, t1, 362f
                  sltiu        a1, s5, 1114
                  slti         t1, t1, -295
                  slt          s11, s2, t5
                  srai         a3, a5, 0
                  beq          a3, a4, 366f
                  ori          s6, s6, -182
                  addi         a7, a7, 77
                  sll          s11, t2, t4
361:              or           ra, s11, s2
362:              srai         s9, a2, 22
                  lui          s11, 672311
                  ori          s3, s11, -680
                  bne          s4, t2, 380f
366:              srli         gp, s3, 16
                  add          s6, zero, ra
                  srl          t2, a6, t5
                  auipc        a1, 783655
                  srli         a2, a7, 5
                  blt          s10, t6, 380f
                  and          s3, a0, t1
                  sub          a3, s11, t2
                  slti         s4, sp, 13
                  sub          sp, a4, s11
                  slli         s10, t0, 14
                  andi         a0, gp, -736
                  bltu         s6, a0, 380f
                  beq          s3, tp, 380f
380:              sub          gp, gp, a5
                  la x15, test_done
                  jalr x0, x15, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            slli         t0, s6, 18
                  addi         a4, a4, -8
                  addi         s3, s5, 290
                  srli         s10, t5, 0
                  auipc        tp, 801647
                  sw           t3, 4(a4)
                  xor          a7, a5, s5
                  sra          t1, s11, zero
                  addi         t0, s1, -803
                  slti         s1, s6, 21
                  auipc        a0, 577960
                  add          t6, s5, s4
                  sub          zero, s0, s0
                  andi         t6, s7, -757
                  and          s9, s11, gp
                  bgeu         t1, a7, sub_3_j5 #branch to jump instr
                  slt          gp, a3, s3
sub_3_j5:         jal          t3, sub_4 #jump sub_3 -> sub_4
                  srli         t3, a0, 1
                  andi         s0, s4, 31
                  sltu         s0, t2, s11
sub_3_0:          jal          t3, 2f
0:                jal          tp, 3f
1:                jal          ra, 8f
2:                jal          ra, 5f
3:                jal          ra, 1b
4:                jal          ra, 10f
5:                jal          ra, 0b
6:                jal          sp, 4b
7:                jal          tp, 9f
8:                jal          ra, 7b
9:                jal          ra, 6b
10:               sra          a1, s11, s10
                  auipc        a1, 417251
                  slti         t1, tp, 1204
                  xori         t1, s4, -139
                  xori         a0, s1, -2032
                  slli         s9, zero, 11
                  sub          tp, s9, gp
                  bgeu         gp, zero, 14f
                  blt          a0, s11, 24f
                  bgeu         t2, s10, 27f
                  and          s7, a0, s11
                  sll          s5, t5, a7
14:               beq          tp, a6, 16f
                  bltu         s9, ra, 19f
16:               bltu         a5, t1, 17f
17:               srai         s9, s1, 26
                  nop
19:               blt          s11, s7, 28f
                  beq          a0, s1, 25f
                  srli         s0, s7, 27
                  bgeu         t4, s5, 30f
                  slli         ra, s8, 15
24:               slli         s9, s8, 13
25:               auipc        s9, 768847
                  nop
27:               beq          s4, s11, 46f
28:               andi         sp, t6, 1282
                  slti         s7, a6, 389
30:               beq          s1, t1, 44f
                  andi         ra, t1, 18
                  add          s3, t0, zero
                  bne          t3, s8, 40f
                  auipc        s1, 799941
                  auipc        t0, 121290
                  slli         s0, t1, 5
                  slt          a6, gp, s6
                  addi         s9, s0, 1379
                  lui          t4, 343230
40:               beq          ra, a0, 48f
                  ori          gp, s5, -1980
                  xor          s4, t5, sp
                  srl          t3, t6, s8
44:               auipc        s9, 841340
                  andi         t6, s11, 1705
46:               slli         a1, s5, 12
                  sll          t0, a5, gp
48:               and          a2, a4, t5
                  slt          s4, a7, s10
                  sub          tp, a1, a2
                  slti         s8, s5, -1943
                  xor          t3, t6, a0
                  slt          t6, a6, s1
                  slli         s8, s6, 16
                  sra          a6, gp, ra
                  sltu         t4, zero, a5
                  add          a6, a0, s8
                  bltu         zero, s7, 59f
59:               sltu         s4, zero, s4
                  srai         s6, t3, 21
                  ori          s0, s11, 175
                  ori          t1, t0, -602
                  sub          t4, gp, a4
                  sll          s3, gp, a6
                  slt          a6, s11, zero
                  bne          t2, t6, 70f
                  add          zero, s3, a4
                  bne          a4, s4, 77f
                  andi         a6, ra, -617
70:               xori         s4, ra, -248
                  srli         s3, s3, 14
                  nop
                  beq          s1, sp, 89f
                  beq          t4, t6, 85f
                  sltiu        s3, s8, 584
                  xori         a1, tp, -106
77:               auipc        t6, 301469
                  beq          s8, t0, 89f
                  sll          s2, s11, a7
                  sra          zero, s7, a0
                  slti         t1, a0, 30
                  sltiu        s8, a6, -813
                  sub          a1, zero, sp
                  addi         s5, a5, 852
85:               slti         s1, a5, 442
                  xori         s0, t4, -775
                  addi         t3, t6, 1896
                  slt          a3, a4, s0
89:               add          a0, s1, s10
                  xori         t2, t4, 1135
                  lw           t3, 4(a4)
                  slti         s6, t3, 1422
                  addi         a4, a4, 8
                  and          t2, s1, t2
125:              addi x16, x28, 1
125:              jalr x16, x16, 0
sub_5:            bgeu         t6, s9, sub_5_stack_p
                  srl          tp, s8, s3
sub_5_stack_p:    addi         a4, a4, -32
                  xor          t0, a6, s9
                  sltu         t1, a1, tp
                  slt          tp, s6, t6
                  srai         a6, t4, 26
                  sw           t3, 4(a4)
                  xori         gp, t4, -721
sub_5_1:          jal          t3, 8f
0:                jal          ra, 11f
1:                jal          t4, 4f
2:                jal          s3, 0b
3:                jal          ra, 10f
4:                jal          t1, 12f
5:                jal          ra, 6f
6:                jal          t1, 9f
7:                jal          ra, 13f
8:                jal          ra, 2b
9:                jal          ra, 3b
10:               jal          s6, 1b
11:               jal          s7, 5b
12:               jal          s6, 7b
13:               srl          t6, t5, tp
sub_5_2:          jal          t3, 1f
0:                jal          gp, 8f
1:                jal          gp, 9f
2:                jal          t1, 7f
3:                jal          a7, 11f
4:                jal          ra, 12f
5:                jal          a1, 3b
6:                jal          ra, 13f
7:                jal          s2, 10f
8:                jal          ra, 5b
9:                jal          t1, 0b
10:               jal          t1, 6b
11:               jal          t6, 4b
12:               jal          ra, 2b
13:               srai         t1, ra, 3
sub_5_0:          jal          t3, 5f
0:                jal          s8, 11f
1:                jal          ra, 12f
2:                jal          t1, 0b
3:                jal          s5, 14f
4:                jal          ra, 8f
5:                jal          ra, 7f
6:                jal          ra, 9f
7:                jal          ra, 17f
8:                jal          ra, 13f
9:                jal          s7, 18f
10:               jal          ra, 6b
11:               jal          ra, 1b
12:               jal          tp, 4b
13:               jal          ra, 3b
14:               jal          ra, 10b
15:               jal          s11, 16f
16:               jal          s0, 2b
17:               jal          t3, 15b
18:               auipc        s7, 938965
                  sub          gp, s5, t5
                  and          a3, s10, tp
                  sltiu        s0, s11, 385
                  sll          t4, gp, s5
                  sltiu        a3, s5, -1503
                  bne          s9, s1, 20f
                  xor          t0, tp, s1
                  slt          s4, s9, t2
                  sltiu        a7, t2, 90
                  srli         s7, s6, 8
                  or           a1, zero, s2
                  sltiu        gp, sp, 1542
                  lui          t2, 971351
                  slt          a7, s3, s1
                  sub          a3, s11, t5
                  srai         t1, zero, 4
                  beq          t3, s2, 25f
                  or           s9, s9, s6
                  blt          tp, a4, 27f
                  sltu         a3, tp, s1
20:               blt          s1, t2, 21f
21:               xor          a3, s5, t0
                  slti         tp, s10, 1905
                  slti         sp, s6, -112
                  bne          t2, a0, 27f
25:               srl          s6, t4, a4
                  srli         s7, a4, 27
27:               lui          t6, 423447
                  auipc        s8, 671190
                  bge          tp, gp, 38f
                  srai         t1, sp, 21
                  srai         s8, s10, 14
                  or           s10, a7, a6
                  xori         ra, t0, -959
                  addi         s3, zero, -1325
                  andi         a6, a7, -446
                  slti         s2, s6, 518
                  or           tp, s7, a0
38:               srli         s11, s2, 5
                  sll          a7, ra, sp
                  slti         a2, s1, 1197
                  blt          sp, s6, 46f
                  xori         s6, t5, -1753
                  or           t1, gp, a4
                  or           s3, tp, gp
                  slli         t3, t6, 13
46:               sltu         s0, a0, t3
                  lui          s10, 709426
                  and          s1, t6, t2
                  nop
                  xori         a1, s2, 40
                  add          t0, t5, ra
                  add          t6, s5, t3
                  auipc        sp, 7857
                  slli         a1, s1, 7
                  slti         s6, s2, -1569
                  or           s10, s3, t6
                  add          a2, t0, tp
                  andi         a2, s10, 1966
                  srai         ra, s11, 17
                  and          s7, sp, a5
                  xor          a1, zero, a0
                  beq          t4, a0, 72f
                  xori         a7, s1, -623
                  addi         t2, a6, 2018
                  nop
                  addi         gp, t5, 509
                  andi         a2, t1, 231
                  sub          a3, s11, s11
                  add          s4, a4, s11
                  slt          s10, s3, ra
                  sub          s4, t2, t4
72:               sll          a6, s1, s1
                  lui          s3, 259339
                  ori          s0, sp, -570
                  bgeu         a7, s6, 86f
                  add          s2, t1, s7
                  sltiu        a0, t5, 1191
                  xor          s3, a7, t3
                  slli         s5, s2, 12
                  ori          s7, a4, -1611
                  and          s9, s6, s10
                  nop
                  slli         s0, t2, 2
                  nop
                  lui          t4, 973540
86:               blt          t2, t6, 102f
                  nop
                  blt          sp, a7, 94f
                  sll          s4, s1, s6
                  andi         s11, a4, 1628
                  sra          s11, s2, a6
                  auipc        t6, 312336
                  srli         a1, zero, 14
94:               or           s2, s6, t6
                  slt          sp, s1, s8
                  blt          t2, t3, 100f
                  slt          s8, s2, a4
                  auipc        a7, 668666
                  lui          t0, 535144
100:              ori          s6, s5, 1279
                  bltu         s2, a2, 108f
102:              xori         ra, sp, 1875
                  auipc        s6, 841919
                  lui          s5, 404860
                  add          s11, s1, s1
                  srai         s4, a7, 1
                  beq          a7, t0, 112f
108:              bltu         tp, s5, 111f
                  sub          t4, a4, a0
                  srl          s3, s4, gp
111:              bne          a4, s3, 117f
112:              sll          t6, t5, s7
                  bge          gp, t6, 131f
                  slli         s0, s6, 0
                  add          s7, t4, t2
                  sltiu        s5, s2, -564
117:              xor          tp, s5, t4
                  slli         s10, a2, 4
                  xori         a0, a4, 289
                  sll          s6, t5, s6
                  bne          a1, s9, 129f
                  srai         t1, s1, 30
                  sltu         a1, t4, t0
                  xor          t0, a1, t6
                  srl          a1, s11, gp
                  bne          s11, gp, 144f
                  sub          sp, s10, s3
                  sltiu        s6, a2, 949
129:              add          s0, a3, sp
                  sll          s9, gp, t5
131:              bne          a0, sp, 146f
                  add          a6, a2, t1
                  auipc        ra, 780623
                  nop
                  slti         sp, a6, 334
                  xor          s3, sp, t6
                  slli         t2, s4, 24
                  slt          a7, s10, s7
                  bne          gp, s1, 145f
                  or           sp, a6, s8
                  andi         t3, sp, -1962
                  srai         s6, ra, 0
                  bgeu         a2, s11, 148f
144:              nop
145:              sra          s11, a4, a0
146:              or           s6, a2, a5
                  xor          s11, s4, s1
148:              xori         s10, s3, -992
                  xori         s10, s5, 137
                  bltu         a6, t4, 164f
                  sra          ra, s11, a1
                  sra          s10, t0, s0
                  sub          s4, a5, a6
                  and          a7, sp, zero
                  bge          ra, a1, 159f
                  lui          s1, 964743
                  lui          a1, 615501
                  slti         s4, s3, -478
159:              andi         s2, t2, -796
                  sll          zero, a0, s5
                  bgeu         t1, s11, 164f
                  ori          s7, a3, -1319
                  auipc        t1, 806487
164:              xori         a3, s5, -631
                  srl          s8, t2, s3
                  ori          s8, a0, 851
                  or           t4, t4, t1
                  lw           t3, 4(a4)
                  xor          s4, sp, t2
                  addi         a4, a4, 32
                  auipc        s3, 765136
                  lui          t4, 620628
                  nop
                  andi         zero, s0, -167
                  sra          gp, t0, t0
                  xor          t1, t2, s4
236:              addi x22, x28, 1
236:              jalr x22, x22, 0
sub_4:            slt          s11, s3, s0
                  bltu         s9, s11, sub_4_stack_p
                  addi         zero, t2, -721
                  slli         s4, zero, 28
sub_4_stack_p:    addi         a4, a4, -16
                  lui          s1, 615229
                  srai         s10, s7, 30
                  sw           t3, 4(a4)
                  add          s3, a3, s10
sub_4_2:          jal          t3, 21f
0:                jal          ra, 3f
1:                jal          ra, 7f
2:                jal          t1, 24f
3:                jal          ra, 14f
4:                jal          ra, 18f
5:                jal          ra, 23f
6:                jal          s8, 16f
7:                jal          sp, 27f
8:                jal          ra, 4b
9:                jal          ra, 12f
10:               jal          ra, 8b
11:               jal          t1, 9b
12:               jal          t1, 19f
13:               jal          t1, 5b
14:               jal          t1, 22f
15:               jal          ra, 1b
16:               jal          t0, 17f
17:               jal          t0, 26f
18:               jal          ra, 20f
19:               jal          ra, 25f
20:               jal          a3, 6b
21:               jal          sp, 13b
22:               jal          ra, 11b
23:               jal          ra, 2b
24:               jal          s0, 10b
25:               jal          ra, 15b
26:               jal          s3, 0b
27:               slli         zero, a2, 15
sub_4_3:          jal          t3, 9f
0:                jal          t1, 12f
1:                jal          ra, 27f
2:                jal          ra, 4f
3:                jal          s8, 13f
4:                jal          t0, 17f
5:                jal          t1, 3b
6:                jal          t0, 21f
7:                jal          t1, 6b
8:                jal          ra, 20f
9:                jal          t3, 11f
10:               jal          ra, 18f
11:               jal          tp, 23f
12:               jal          gp, 19f
13:               jal          a1, 10b
14:               jal          ra, 8b
15:               jal          sp, 22f
16:               jal          gp, 24f
17:               jal          sp, 29f
18:               jal          ra, 7b
19:               jal          t1, 15b
20:               jal          s9, 0b
21:               jal          ra, 14b
22:               jal          ra, 1b
23:               jal          t1, 28f
24:               jal          ra, 26f
25:               jal          s1, 5b
26:               jal          a3, 25b
27:               jal          ra, 2b
28:               jal          t2, 16b
29:               sra          a0, t4, s3
sub_4_1:          jal          t3, 25f
0:                jal          ra, 28f
1:                jal          ra, 22f
2:                jal          s2, 16f
3:                jal          s7, 29f
4:                jal          ra, 18f
5:                jal          t2, 24f
6:                jal          ra, 27f
7:                jal          ra, 17f
8:                jal          ra, 11f
9:                jal          t1, 12f
10:               jal          ra, 20f
11:               jal          a2, 5b
12:               jal          t4, 1b
13:               jal          ra, 6b
14:               jal          ra, 9b
15:               jal          ra, 23f
16:               jal          t1, 4b
17:               jal          ra, 10b
18:               jal          t1, 13b
19:               jal          ra, 7b
20:               jal          ra, 26f
21:               jal          s1, 3b
22:               jal          t1, 2b
23:               jal          ra, 8b
24:               jal          ra, 21b
25:               jal          t1, 19b
26:               jal          ra, 0b
27:               jal          ra, 15b
28:               jal          ra, 14b
29:               and          t3, t1, a0
sub_4_8:          jal          t3, 4f
0:                jal          ra, 10f
1:                jal          ra, 12f
2:                jal          t1, 1b
3:                jal          ra, 11f
4:                jal          ra, 7f
5:                jal          ra, 6f
6:                jal          ra, 8f
7:                jal          s4, 9f
8:                jal          s3, 0b
9:                jal          t1, 3b
10:               jal          s4, 2b
11:               jal          ra, 5b
12:               sub          s4, s7, a5
sub_4_11:         jal          t3, 2f
0:                jal          ra, 6f
1:                jal          t1, 13f
2:                jal          ra, 11f
3:                jal          t1, 5f
4:                jal          t1, 9f
5:                jal          t1, 7f
6:                jal          t1, 8f
7:                jal          ra, 0b
8:                jal          s8, 1b
9:                jal          ra, 12f
10:               jal          t4, 4b
11:               jal          a3, 10b
12:               jal          ra, 3b
13:               jal          ra, 14f
14:               jal          ra, 15f
15:               sll          s11, s5, a2
sub_4_20:         jal          t3, 0f
0:                jal          ra, 2f
1:                jal          ra, 8f
2:                jal          ra, 6f
3:                jal          ra, 1b
4:                jal          t4, 3b
5:                jal          ra, 4b
6:                jal          t1, 5b
7:                jal          ra, 9f
8:                jal          s1, 7b
9:                jal          ra, 10f
10:               or           gp, s0, s5
sub_4_16:         jal          t3, 13f
0:                jal          ra, 5f
1:                jal          s11, 16f
2:                jal          ra, 22f
3:                jal          ra, 17f
4:                jal          a7, 24f
5:                jal          t1, 21f
6:                jal          gp, 1b
7:                jal          ra, 19f
8:                jal          t6, 12f
9:                jal          t6, 3b
10:               jal          ra, 18f
11:               jal          t1, 0b
12:               jal          a7, 25f
13:               jal          ra, 8b
14:               jal          ra, 4b
15:               jal          s11, 23f
16:               jal          ra, 11b
17:               jal          t2, 14b
18:               jal          ra, 27f
19:               jal          ra, 10b
20:               jal          ra, 26f
21:               jal          sp, 9b
22:               jal          ra, 15b
23:               jal          ra, 6b
24:               jal          t1, 20b
25:               jal          ra, 2b
26:               jal          ra, 7b
27:               sltiu        s0, s10, -843
sub_4_13:         jal          t3, 8f
0:                jal          s9, 5f
1:                jal          t1, 14f
2:                jal          ra, 12f
3:                jal          ra, 16f
4:                jal          tp, 2b
5:                jal          ra, 19f
6:                jal          ra, 9f
7:                jal          a2, 6b
8:                jal          ra, 17f
9:                jal          ra, 0b
10:               jal          sp, 20f
11:               jal          ra, 1b
12:               jal          t1, 15f
13:               jal          t1, 10b
14:               jal          ra, 18f
15:               jal          ra, 3b
16:               jal          s8, 11b
17:               jal          ra, 4b
18:               jal          t0, 7b
19:               jal          ra, 13b
20:               auipc        s5, 378584
sub_4_5:          jal          t3, 8f
0:                jal          t1, 5f
1:                jal          ra, 0b
2:                jal          ra, 4f
3:                jal          t6, 6f
4:                jal          ra, 9f
5:                jal          gp, 10f
6:                jal          ra, 1b
7:                jal          ra, 3b
8:                jal          ra, 2b
9:                jal          ra, 7b
10:               jal          ra, 11f
11:               nop
sub_4_15:         jal          t3, 17f
0:                jal          ra, 26f
1:                jal          ra, 19f
2:                jal          gp, 22f
3:                jal          t1, 2b
4:                jal          s11, 0b
5:                jal          ra, 24f
6:                jal          ra, 20f
7:                jal          ra, 3b
8:                jal          ra, 13f
9:                jal          ra, 7b
10:               jal          gp, 5b
11:               jal          gp, 6b
12:               jal          ra, 25f
13:               jal          ra, 15f
14:               jal          t3, 4b
15:               jal          a7, 9b
16:               jal          ra, 1b
17:               jal          ra, 29f
18:               jal          gp, 27f
19:               jal          ra, 11b
20:               jal          ra, 12b
21:               jal          ra, 16b
22:               jal          ra, 10b
23:               jal          t1, 28f
24:               jal          ra, 14b
25:               jal          s0, 18b
26:               jal          ra, 30f
27:               jal          ra, 8b
28:               jal          a0, 21b
29:               jal          ra, 23b
30:               ori          a6, t6, -1377
sub_4_18:         jal          t3, 1f
0:                jal          ra, 7f
1:                jal          ra, 13f
2:                jal          ra, 14f
3:                jal          ra, 9f
4:                jal          ra, 22f
5:                jal          s7, 25f
6:                jal          ra, 2b
7:                jal          ra, 5b
8:                jal          ra, 19f
9:                jal          sp, 26f
10:               jal          a1, 17f
11:               jal          ra, 8b
12:               jal          ra, 4b
13:               jal          ra, 15f
14:               jal          gp, 11b
15:               jal          ra, 23f
16:               jal          sp, 18f
17:               jal          ra, 24f
18:               jal          ra, 10b
19:               jal          ra, 21f
20:               jal          ra, 12b
21:               jal          ra, 20b
22:               jal          ra, 0b
23:               jal          t1, 16b
24:               jal          gp, 6b
25:               jal          t1, 3b
26:               srli         s2, t4, 29
sub_4_9:          jal          t3, 12f
0:                jal          t1, 28f
1:                jal          ra, 7f
2:                jal          s5, 4f
3:                jal          tp, 19f
4:                jal          ra, 26f
5:                jal          ra, 27f
6:                jal          s5, 17f
7:                jal          ra, 0b
8:                jal          s11, 30f
9:                jal          t1, 15f
10:               jal          s4, 21f
11:               jal          s9, 20f
12:               jal          ra, 25f
13:               jal          s10, 24f
14:               jal          ra, 6b
15:               jal          ra, 13b
16:               jal          ra, 14b
17:               jal          ra, 1b
18:               jal          ra, 2b
19:               jal          t1, 8b
20:               jal          ra, 18b
21:               jal          ra, 16b
22:               jal          s4, 10b
23:               jal          ra, 5b
24:               jal          ra, 3b
25:               jal          ra, 29f
26:               jal          ra, 23b
27:               jal          ra, 9b
28:               jal          ra, 11b
29:               jal          ra, 22b
30:               slli         s6, a4, 23
sub_4_14:         jal          t3, 26f
0:                jal          s6, 8f
1:                jal          s11, 24f
2:                jal          ra, 11f
3:                jal          t0, 25f
4:                jal          ra, 19f
5:                jal          t3, 4b
6:                jal          s11, 0b
7:                jal          ra, 28f
8:                jal          ra, 17f
9:                jal          ra, 2b
10:               jal          t1, 5b
11:               jal          s2, 22f
12:               jal          sp, 7b
13:               jal          t1, 16f
14:               jal          t6, 10b
15:               jal          s3, 1b
16:               jal          ra, 20f
17:               jal          ra, 14b
18:               jal          ra, 6b
19:               jal          ra, 21f
20:               jal          ra, 12b
21:               jal          sp, 15b
22:               jal          ra, 3b
23:               jal          t1, 27f
24:               jal          s3, 9b
25:               jal          ra, 23b
26:               jal          ra, 18b
27:               jal          s10, 13b
28:               lui          s5, 664164
sub_4_4:          jal          t3, 20f
0:                jal          ra, 11f
1:                jal          ra, 16f
2:                jal          ra, 17f
3:                jal          s6, 10f
4:                jal          a7, 14f
5:                jal          t1, 13f
6:                jal          ra, 8f
7:                jal          s1, 18f
8:                jal          t1, 3b
9:                jal          s2, 12f
10:               jal          ra, 9b
11:               jal          s3, 21f
12:               jal          s7, 2b
13:               jal          s8, 1b
14:               jal          s1, 19f
15:               jal          t0, 0b
16:               jal          ra, 15b
17:               jal          s5, 4b
18:               jal          t1, 5b
19:               jal          t1, 7b
20:               jal          t1, 6b
21:               srai         t0, a1, 10
sub_4_12:         jal          t3, 23f
0:                jal          t4, 15f
1:                jal          t0, 14f
2:                jal          ra, 4f
3:                jal          s1, 22f
4:                jal          ra, 5f
5:                jal          tp, 9f
6:                jal          t1, 19f
7:                jal          t1, 1b
8:                jal          ra, 26f
9:                jal          t1, 27f
10:               jal          ra, 2b
11:               jal          ra, 21f
12:               jal          t4, 3b
13:               jal          t1, 29f
14:               jal          t1, 0b
15:               jal          s4, 12b
16:               jal          t0, 28f
17:               jal          t1, 6b
18:               jal          sp, 8b
19:               jal          ra, 13b
20:               jal          ra, 11b
21:               jal          ra, 17b
22:               jal          ra, 18b
23:               jal          ra, 10b
24:               jal          t1, 20b
25:               jal          gp, 16b
26:               jal          ra, 24b
27:               jal          t1, 25b
28:               jal          ra, 7b
29:               and          t4, a2, t1
sub_4_19:         jal          t3, 8f
0:                jal          t1, 13f
1:                jal          ra, 6f
2:                jal          ra, 9f
3:                jal          ra, 14f
4:                jal          t1, 7f
5:                jal          gp, 15f
6:                jal          ra, 24f
7:                jal          ra, 28f
8:                jal          s3, 12f
9:                jal          ra, 25f
10:               jal          gp, 18f
11:               jal          ra, 1b
12:               jal          gp, 22f
13:               jal          ra, 19f
14:               jal          ra, 23f
15:               jal          ra, 0b
16:               jal          ra, 20f
17:               jal          ra, 21f
18:               jal          t1, 26f
19:               jal          ra, 16b
20:               jal          ra, 2b
21:               jal          ra, 5b
22:               jal          ra, 10b
23:               jal          s9, 4b
24:               jal          tp, 17b
25:               jal          t1, 3b
26:               jal          t1, 27f
27:               jal          ra, 11b
28:               addi         a6, t5, 357
sub_4_6:          jal          t3, 15f
0:                jal          t1, 6f
1:                jal          t1, 14f
2:                jal          ra, 18f
3:                jal          sp, 7f
4:                jal          ra, 9f
5:                jal          s10, 11f
6:                jal          t1, 13f
7:                jal          ra, 28f
8:                jal          ra, 4b
9:                jal          tp, 5b
10:               jal          ra, 17f
11:               jal          ra, 20f
12:               jal          ra, 2b
13:               jal          ra, 10b
14:               jal          s0, 24f
15:               jal          t1, 25f
16:               jal          t1, 19f
17:               jal          ra, 8b
18:               jal          ra, 23f
19:               jal          ra, 3b
20:               jal          ra, 27f
21:               jal          ra, 12b
22:               jal          a0, 0b
23:               jal          t1, 1b
24:               jal          s9, 26f
25:               jal          ra, 22b
26:               jal          ra, 16b
27:               jal          t1, 21b
28:               or           zero, a6, zero
                  andi         s10, s11, -424
                  lui          s10, 685111
                  nop
                  nop
                  auipc        t6, 1046714
                  add          gp, s4, t4
                  add          t1, a5, s1
                  sra          sp, t2, a0
                  add          s4, t0, ra
                  sltiu        s7, s5, 928
                  bge          a3, a0, 22f
                  addi         s9, s4, -1220
                  or           s2, t6, s7
                  sra          s9, a4, s0
                  bge          sp, s7, 27f
                  or           a7, a7, a2
                  slli         a0, sp, 27
                  addi         a3, a0, -480
                  xor          ra, a3, s1
                  sltiu        t1, a3, -1620
                  bge          t3, zero, 32f
                  beq          t6, t2, 39f
22:               lui          a1, 652899
                  xori         t4, sp, 1354
                  xori         a1, a6, 1998
                  slti         zero, a0, -1328
                  bne          t1, t4, 39f
sub_4_17:         jal          t3, 5f
0:                jal          t1, 1f
1:                jal          ra, 7f
2:                jal          a7, 14f
3:                jal          ra, 12f
4:                jal          t1, 13f
5:                jal          ra, 4b
6:                jal          a6, 11f
7:                jal          ra, 6b
8:                jal          ra, 2b
9:                jal          ra, 8b
10:               jal          t4, 9b
11:               jal          ra, 3b
12:               jal          ra, 10b
13:               jal          s1, 0b
14:               sll          s9, a7, s2
27:               srl          s6, a3, gp
                  slti         a3, ra, 1858
                  sra          sp, t2, s10
                  slti         t0, s3, 343
                  sra          a6, a0, s2
32:               srli         a1, t5, 28
                  slt          a0, s11, t5
                  xor          t1, a7, a0
                  and          ra, s3, t0
                  add          sp, sp, s11
                  slli         a1, tp, 12
                  and          s4, s4, ra
39:               srli         s5, s0, 25
                  andi         t1, a0, -334
                  bltu         s9, s4, 56f
                  bge          t4, a0, 54f
                  sub          a2, s7, sp
                  slt          gp, s8, s7
                  blt          s3, s6, 62f
                  sltiu        t2, s11, -329
                  and          s7, gp, s8
                  xor          s9, s5, s4
                  lui          a6, 577756
                  xori         t4, s8, 452
                  srai         t0, a2, 22
                  addi         sp, a5, 476
                  sra          tp, s5, gp
54:               slti         zero, s5, 217
                  slli         s5, a2, 17
56:               bltu         tp, a6, 58f
sub_4_0:          jal          t3, 2f
0:                jal          a2, 6f
1:                jal          ra, 13f
2:                jal          a3, 16f
3:                jal          a7, 10f
4:                jal          ra, 9f
5:                jal          s0, 14f
6:                jal          ra, 12f
7:                jal          ra, 18f
8:                jal          ra, 4b
9:                jal          t6, 15f
10:               jal          t1, 8b
11:               jal          t0, 7b
12:               jal          s9, 1b
13:               jal          tp, 17f
14:               jal          ra, 3b
15:               jal          s6, 11b
16:               jal          t2, 0b
17:               jal          ra, 5b
18:               sltiu        gp, t5, -361
                  srl          t6, a5, s11
58:               bltu         s7, a3, 67f
                  xor          s5, s10, tp
                  srli         a3, s4, 12
                  blt          s6, s4, 75f
62:               slli         s4, t2, 1
                  srai         s10, s0, 22
                  andi         ra, t6, -1709
                  sltiu        zero, t6, 433
                  bge          a0, t2, 72f
67:               beq          sp, s9, 69f
                  blt          t6, tp, 74f
69:               sltiu        s1, sp, -1215
                  bgeu         t0, a1, 81f
                  add          a7, t6, s11
72:               slti         t4, a1, 1018
                  sltu         s8, s7, t3
74:               slli         t1, t0, 10
75:               ori          s6, a3, 689
                  addi         a6, s7, -1132
                  sltu         t2, a3, zero
                  beq          s2, sp, 83f
                  add          zero, s9, s7
                  bgeu         a2, s6, 100f
81:               bgeu         s11, sp, 93f
                  srl          s6, a7, t4
83:               lui          t3, 980680
                  xori         t6, s6, 623
                  bge          s7, s9, 93f
                  sra          s8, sp, s4
                  slti         s6, t0, 250
                  slli         s2, s9, 24
                  nop
                  srl          s4, t2, s5
                  ori          s7, ra, 247
                  xori         s10, t4, -59
93:               andi         s9, s3, 68
                  xor          gp, s1, ra
                  or           ra, t0, t3
                  sra          sp, a4, t6
                  sll          s7, s8, t6
                  bltu         a6, sp, 103f
                  beq          gp, a6, 117f
100:              ori          a3, s3, -623
                  srai         t4, sp, 9
                  or           s3, s8, t4
103:              srli         a2, a4, 13
                  xor          s0, s5, gp
                  sub          s8, t3, s5
                  xori         s9, tp, 443
                  andi         s6, a0, 1859
                  slli         sp, a1, 5
                  bgeu         ra, s4, 126f
                  sra          a1, s7, t4
                  and          a7, gp, s9
                  srli         gp, s6, 22
                  bge          s11, sp, 121f
                  slt          a0, sp, t0
                  ori          a2, s10, 29
                  auipc        gp, 6201
117:              sra          a3, s1, t3
                  slti         a2, s5, 535
                  bltu         s6, t6, 132f
                  sltiu        tp, s2, -1497
121:              add          t1, s3, ra
                  slli         a6, s11, 22
                  bltu         zero, s11, 125f
                  bltu         s0, t2, 139f
125:              srl          s4, a4, s11
126:              sltiu        tp, a3, -1578
                  bgeu         zero, s9, 129f
                  slt          ra, t3, a7
129:              sll          s11, s8, a6
                  sltu         s4, t1, t2
                  sra          s9, t0, a0
132:              addi         ra, s11, -1228
                  sra          gp, a4, s11
                  lui          a3, 997396
                  andi         t4, sp, 255
                  srai         s3, s10, 14
                  bltu         t0, s5, 147f
                  sltiu        a0, s1, 1262
139:              and          ra, a0, t0
                  srai         a7, gp, 21
                  or           sp, t3, gp
                  lui          t0, 445157
                  sltiu        s4, a7, -1097
                  slti         t4, ra, -1817
                  bne          ra, zero, 146f
146:              xor          a1, s3, s3
147:              bne          s4, t0, 167f
                  sub          t2, a1, s0
                  add          s8, zero, t3
                  bne          a7, t4, 163f
                  or           t4, s6, t0
                  bge          s7, a0, 169f
                  nop
                  lui          t6, 5059
                  slli         t2, t6, 2
                  auipc        ra, 305740
                  slli         a6, a5, 7
                  ori          ra, a5, 670
                  add          s7, s11, t2
                  slti         gp, s8, 206
                  slt          s8, s8, s8
                  slti         a6, a4, -1596
163:              srai         s0, s6, 5
                  blt          t5, t5, 166f
                  addi         s5, ra, 1102
166:              bltu         a3, t4, 174f
167:              sra          a6, a7, s5
                  bne          s11, t5, 188f
169:              srai         s10, t0, 25
                  sltu         t0, ra, s1
                  auipc        s2, 764736
                  xor          t4, s5, s4
                  slli         s6, s8, 19
174:              addi         a2, zero, -400
                  blt          s6, a4, 188f
                  bgeu         a0, s10, 188f
                  srl          s9, a2, s6
                  and          tp, t3, s5
                  bge          tp, gp, 191f
                  bge          s3, a0, 191f
                  sub          s0, t2, s9
                  slli         s4, s7, 29
                  sltiu        s0, t0, 481
                  bge          gp, s4, 196f
                  bltu         t1, s7, 194f
                  sra          s2, a5, a2
                  sra          t2, t5, s5
188:              bltu         t5, ra, 208f
                  srli         t3, s11, 0
                  sub          s6, s6, a2
191:              sltiu        s2, a0, 119
                  sra          a0, s6, a1
                  ori          s7, t1, -1725
194:              and          s2, a3, a4
                  auipc        s1, 356618
196:              ori          s9, a4, 867
                  andi         t2, t4, 1959
                  bltu         t2, s1, 208f
                  addi         a2, a0, 1996
                  sll          s10, s7, t6
                  beq          tp, a1, 215f
                  blt          s4, s2, 204f
                  auipc        a6, 252858
204:              or           t4, s11, tp
                  sltiu        a2, a4, -922
                  srai         a7, s8, 6
                  sub          a6, a0, ra
208:              bge          s0, s1, 225f
                  sll          a2, s2, s6
                  srai         ra, s4, 18
                  bne          gp, sp, 213f
                  xor          t1, a7, t0
213:              slti         s4, t5, -431
                  sltu         s9, sp, t4
215:              slli         s9, a2, 8
                  add          a1, a6, a3
                  xori         t4, s9, 1940
                  srl          s10, a6, a6
                  lui          s5, 19435
                  auipc        s7, 516262
                  slli         s7, tp, 2
                  nop
                  sra          s1, s0, s7
                  slt          ra, a3, a7
225:              add          t2, a3, s3
                  slti         s0, tp, 1321
                  sra          t4, a4, t6
                  sub          s0, t3, s9
                  bgeu         a2, t4, 235f
                  sltiu        s9, t5, -1199
                  slt          s6, a6, s11
                  blt          s6, zero, 234f
                  blt          s4, s11, 238f
234:              addi         s11, s2, 1219
235:              and          s11, t2, tp
                  slli         s7, zero, 9
                  srai         tp, s4, 9
238:              sub          t6, t4, s1
                  srl          a3, s9, a6
                  beq          t4, gp, 258f
                  sltu         s10, s9, zero
                  nop
                  sltu         tp, t6, a4
                  ori          t3, a4, 1330
                  bltu         a7, s8, 257f
                  sub          s3, s9, a6
                  sltu         sp, t5, t4
                  sub          t4, a1, s5
                  xori         s0, s11, 130
                  bge          t1, t6, 263f
                  auipc        s1, 380795
                  add          s1, s6, a0
                  blt          s3, s9, 254f
254:              auipc        a7, 713307
                  andi         gp, a0, 910
                  or           a7, gp, s2
257:              blt          a0, t4, 272f
258:              sltu         t6, a5, t5
                  bltu         a7, a5, 264f
                  bgeu         s0, t6, 278f
                  addi         t2, t4, 378
                  slli         s8, s7, 14
263:              sltiu        zero, t5, 429
264:              add          s10, s5, gp
                  sll          sp, a0, tp
                  slli         s11, s11, 14
                  and          a3, s6, t4
                  slti         s4, s10, 11
                  beq          a7, t6, 284f
                  xor          s4, a0, a4
                  and          s6, tp, a2
272:              andi         s7, a1, -1435
                  sltu         zero, gp, s4
                  srai         t1, s7, 22
                  slt          s2, s2, t4
                  or           s10, zero, s1
                  sltiu        gp, s5, -842
278:              slti         t0, gp, 1887
                  blt          t6, a2, 285f
                  bne          t2, s10, 288f
                  auipc        a7, 394878
                  bgeu         a5, a3, 295f
                  bne          tp, s10, 289f
284:              xor          s0, t0, s11
285:              bgeu         t2, a7, 295f
                  bgeu         s0, s3, 298f
                  xor          tp, gp, s6
288:              and          s3, sp, a6
289:              or           a3, a5, t0
                  sltiu        s7, a1, 696
                  xori         zero, a4, 506
                  nop
                  sltiu        s2, t5, 582
                  ori          a1, s7, -1862
295:              nop
                  add          s4, gp, a1
                  auipc        t0, 737109
298:              or           a0, a6, a2
                  blt          a6, a5, 316f
                  and          a1, s5, s3
                  bltu         a2, ra, 309f
                  srai         ra, s4, 22
                  ori          s6, tp, -530
                  slt          s11, s1, s2
                  auipc        a1, 315800
                  bne          t6, s7, 308f
                  sltiu        t0, sp, -1439
308:              bge          t0, s2, 323f
309:              sra          a6, s0, gp
                  xor          s0, gp, t1
                  nop
                  ori          zero, a1, -1859
                  srl          t6, s7, a0
                  sltiu        s7, s1, 1679
                  bltu         s2, t4, 329f
316:              slt          s1, a7, zero
                  srli         s9, s9, 26
                  addi         s7, s9, 1102
                  bne          a2, a6, 337f
                  auipc        a3, 908002
                  lui          t0, 836752
                  bgeu         t4, a0, 334f
323:              andi         a6, t1, -1642
                  lui          a7, 637786
                  sltiu        gp, sp, -469
                  or           sp, a5, s5
                  nop
                  ori          zero, t0, 122
329:              slti         sp, a6, -1998
                  beq          a0, a1, 343f
                  bne          t2, s0, 343f
                  blt          s10, a2, 347f
                  sltu         t2, a5, sp
334:              or           s4, gp, t4
                  slli         a1, sp, 22
                  srai         s9, s10, 29
337:              blt          t1, s1, 339f
                  srli         s0, s5, 31
339:              xori         sp, s6, 94
                  add          s5, s11, t0
                  beq          a0, s11, 361f
                  auipc        t6, 873343
343:              sltiu        t2, t0, -1489
                  nop
                  lui          s10, 524213
                  lui          t1, 705187
347:              lui          a7, 826548
                  bge          s6, t6, 350f
                  ori          s8, a4, -1064
350:              or           a3, t1, s8
                  sra          t1, t5, a1
                  and          sp, a0, s9
                  sltu         a6, t6, s8
                  add          zero, t6, t6
                  ori          t3, s1, 1354
                  bltu         t2, s8, 368f
                  or           t4, s8, a4
                  xori         tp, s2, -390
                  bge          ra, s5, 376f
                  sub          s2, s1, s10
361:              sltiu        s6, a7, -1889
                  bge          t0, t6, 375f
                  and          t2, s6, ra
                  ori          sp, s1, -1183
                  slli         s9, a2, 26
                  sltu         ra, a4, a7
                  bge          s3, t3, 373f
368:              ori          gp, a5, -51
                  slt          s6, s1, sp
                  bgeu         a3, s1, 372f
                  or           t6, s6, t4
372:              slti         t0, a6, -1009
373:              sra          a3, s0, t2
                  and          s0, a5, s0
375:              add          a1, s5, t6
376:              sub          t4, s2, s5
                  beq          sp, s11, 388f
                  sltiu        s9, a5, -1916
                  xor          tp, s6, a6
                  bltu         a1, s7, 385f
                  addi         a1, a0, -1601
                  sub          s5, t4, a2
                  addi         s8, s8, 1931
                  slli         s3, s11, 10
385:              nop
                  slti         t2, t3, 1102
                  sra          s1, s10, t5
388:              lui          s3, 396735
                  add          a6, s4, t1
                  bne          a5, s4, 398f
                  srl          ra, t6, a3
                  srl          tp, s0, t4
                  add          t6, a7, zero
                  and          s5, t3, a0
                  and          s5, s4, t5
                  bgeu         t5, s2, 401f
                  srli         a6, s3, 19
398:              ori          t2, a7, -1398
                  add          a6, t5, a3
                  sll          s10, ra, s11
401:              sltiu        s3, t2, 989
                  sltiu        a3, t4, -1747
                  xori         a0, a0, -2009
                  sll          tp, s2, t1
                  nop
                  srli         ra, s6, 9
                  bltu         a4, tp, 425f
                  slt          gp, a1, ra
                  auipc        t4, 174431
                  slli         s5, t3, 25
                  or           a1, a6, a2
                  sll          s11, s6, gp
                  lui          a1, 185990
                  slli         a2, t4, 27
                  ori          a6, s5, -1969
                  or           a2, tp, s3
                  blt          a1, a0, 426f
                  add          zero, s4, t6
                  andi         s6, gp, 1522
                  lui          s7, 915938
                  andi         s6, s8, -50
                  add          s11, gp, t6
                  ori          s10, s2, 1067
sub_4_10:         jal          t3, 3f
0:                jal          ra, 8f
1:                jal          ra, 6f
2:                jal          ra, 10f
3:                jal          ra, 5f
4:                jal          ra, 11f
5:                jal          ra, 1b
6:                jal          ra, 0b
7:                jal          ra, 15f
8:                jal          ra, 7b
9:                jal          t1, 12f
10:               jal          s5, 13f
11:               jal          ra, 16f
12:               jal          a1, 2b
13:               jal          sp, 4b
14:               jal          ra, 9b
15:               jal          sp, 14b
16:               slli         a7, gp, 20
                  sll          s8, t1, s7
425:              slli         a1, t1, 19
426:              add          s0, s5, t0
                  slli         sp, s6, 11
                  slli         zero, sp, 13
                  andi         s9, a2, 1420
                  sub          t2, tp, t3
                  add          zero, s10, zero
                  slti         s6, a1, 1192
                  sra          a0, gp, s4
                  bgeu         s1, s6, 454f
                  ori          s10, sp, 1943
                  addi         ra, t6, -269
                  bltu         a1, t4, 438f
438:              slti         s0, a7, 1500
                  bne          s10, a2, 457f
                  xori         t3, zero, 1965
                  nop
                  bge          a0, s1, 450f
                  bgeu         s3, zero, 455f
                  slt          zero, a5, ra
                  srli         t4, s7, 9
                  beq          s1, s8, 448f
                  xori         a3, s1, 875
448:              bgeu         s10, a5, 461f
                  addi         t0, a0, -1165
450:              sra          t0, s6, gp
                  slti         a2, a6, -845
                  bge          t1, s4, 464f
                  slti         s10, zero, -812
454:              srai         ra, t6, 17
455:              slli         a2, a7, 28
                  auipc        t1, 104542
457:              sll          s11, sp, t3
                  addi         zero, a0, -722
                  bgeu         sp, s1, 464f
                  sub          gp, a0, s5
461:              beq          t1, s7, 481f
                  add          s0, s9, t4
                  or           tp, t3, sp
464:              blt          a3, t1, 477f
                  ori          s3, a6, -984
                  addi         a0, t4, -1683
                  sub          tp, s11, t6
                  srai         t3, s8, 17
                  bge          t4, t5, 481f
                  slti         s4, s0, -1405
                  beq          s4, gp, 482f
                  or           ra, s6, a6
                  bltu         gp, zero, 482f
                  auipc        s9, 250877
                  nop
                  xori         t6, s11, 554
477:              srl          ra, s1, t6
                  sll          t1, s2, a1
                  slti         a3, ra, 28
                  nop
481:              and          a7, t6, s5
482:              ori          t2, gp, -1874
                  slt          s6, s3, s3
                  ori          s6, s1, -1325
                  bne          tp, a0, 502f
                  slt          t0, s0, a6
                  blt          s2, s7, 502f
                  sra          t0, s2, s6
                  lui          t6, 410323
                  xor          s6, a7, s9
                  lui          a0, 402038
                  bne          t3, t2, 498f
                  xor          a6, s7, t5
                  nop
                  bne          s4, a5, 503f
                  sll          s2, gp, t0
                  slli         s8, s3, 30
498:              and          s2, s7, s8
                  blt          s1, a2, 514f
                  ori          a2, a7, -173
                  srli         t6, a2, 14
502:              sltu         s6, s8, s7
503:              bgeu         a5, s7, 523f
                  bne          s6, s4, 506f
                  add          a7, a6, t0
506:              lui          ra, 878141
                  auipc        tp, 589345
                  andi         a2, sp, 1329
                  beq          t0, s10, 522f
                  auipc        s3, 323437
                  slti         s0, t2, -1055
                  bge          ra, a1, 518f
                  addi         a0, t5, -1282
514:              sra          s1, s6, a3
                  lui          s4, 871247
                  lui          sp, 144732
                  bne          sp, s2, 519f
518:              sra          t3, t1, a2
519:              bgeu         a6, a3, 531f
                  bge          t4, s9, 525f
                  slti         a0, t0, 1758
522:              xori         a2, s2, -1718
523:              add          a0, s3, t0
                  srl          s0, a5, s10
525:              srli         t0, s8, 17
                  blt          t4, s11, 544f
                  blt          ra, t4, 541f
                  slti         gp, s4, 1591
                  sra          t3, t1, a2
                  slt          s4, a0, zero
531:              srl          a2, t5, a2
sub_4_7:          jal          t3, 5f
0:                jal          ra, 7f
1:                jal          t1, 6f
2:                jal          gp, 25f
3:                jal          ra, 23f
4:                jal          t1, 19f
5:                jal          t1, 13f
6:                jal          ra, 16f
7:                jal          a3, 20f
8:                jal          ra, 12f
9:                jal          gp, 15f
10:               jal          t1, 21f
11:               jal          s11, 9b
12:               jal          tp, 4b
13:               jal          a7, 11b
14:               jal          ra, 8b
15:               jal          a6, 1b
16:               jal          t1, 17f
17:               jal          gp, 24f
18:               jal          tp, 2b
19:               jal          s10, 18b
20:               jal          ra, 14b
21:               jal          ra, 0b
22:               jal          ra, 3b
23:               jal          t1, 10b
24:               jal          ra, 22b
25:               jal          t0, 26f
26:               addi         sp, a5, -1322
                  bgeu         s0, s11, 533f
533:              nop
                  auipc        a1, 978661
                  bne          s8, s5, 537f
                  or           s2, s3, s5
537:              slt          t0, a7, a5
                  srli         s1, t4, 12
                  sltu         t4, s11, a7
                  bge          t1, gp, 550f
541:              bne          sp, gp, 558f
                  addi         zero, zero, 246
                  bltu         a2, a0, 549f
544:              sll          s8, zero, s5
                  bge          s10, zero, 547f
                  or           t4, s8, sp
547:              bltu         t0, zero, 556f
                  sra          s5, a6, s1
549:              add          s5, sp, t1
550:              bge          a6, s9, 568f
                  sra          zero, s7, t0
                  sltu         t2, t3, s5
                  beq          a3, gp, 554f
554:              sll          sp, a4, a7
                  xori         a3, a4, 585
556:              blt          s0, t4, 571f
                  bge          s4, t4, 562f
558:              sub          sp, s6, t2
                  slli         t1, sp, 1
                  beq          ra, t6, 575f
                  slli         s8, s4, 27
562:              bltu         s9, t1, 570f
                  srli         t4, s5, 17
                  or           t1, sp, a2
                  sra          a3, t1, a5
                  srl          ra, t2, a1
                  bne          t6, t4, 584f
568:              or           a7, zero, t5
                  sra          a7, tp, a2
570:              sltu         s6, s10, a0
571:              beq          a6, ra, 582f
                  beq          a1, s0, 577f
                  xor          s2, sp, s8
                  slt          s5, t3, tp
575:              sra          s4, a4, t4
                  srl          s11, s8, s1
577:              xori         s4, t0, 1031
                  bge          tp, s11, 588f
                  slti         a7, a1, 1893
                  srai         s11, a7, 18
                  slli         a1, t5, 3
582:              sra          ra, a0, a7
                  beq          s1, a3, 597f
584:              or           zero, sp, a1
                  slli         ra, a1, 6
                  srl          a0, s5, s3
                  xor          s0, a7, tp
588:              lui          s11, 396027
                  blt          sp, s11, 609f
                  addi         s11, t5, 577
                  xor          s1, a1, gp
                  srai         a1, s10, 12
                  add          zero, t5, s3
                  bne          a7, s2, 606f
                  nop
                  sltu         tp, s9, a4
597:              srli         a0, s0, 9
                  beq          s1, a4, 611f
                  auipc        t1, 444216
                  slti         t6, a0, 1816
                  sub          sp, s7, t1
                  bge          t0, s8, 610f
                  srli         a0, s11, 13
                  bgeu         s8, t4, 624f
                  andi         s9, zero, 1743
606:              xori         sp, a6, 391
                  bne          a6, s5, 620f
                  sra          a7, a2, a6
609:              srai         t2, s7, 29
610:              addi         ra, a1, 1470
611:              lui          a6, 362724
                  slt          s8, a3, t1
                  sll          s8, s9, sp
                  or           s10, s8, sp
                  sub          zero, s10, s10
                  srai         s11, s6, 3
                  slti         s0, s5, 1738
                  srl          t1, a3, t4
                  sltiu        s11, sp, -381
620:              srli         s5, gp, 31
                  sltiu        tp, a0, 679
                  bge          t6, tp, 624f
                  and          s8, t3, s10
624:              sra          sp, s2, zero
                  srli         gp, s4, 12
                  slti         a3, s2, 594
                  bne          a4, s3, 640f
                  sll          a2, s0, t2
                  srai         ra, t4, 5
                  slti         t1, s10, -1015
                  bge          a0, sp, 637f
                  bgeu         t1, t6, 650f
                  beq          sp, t5, 635f
                  srli         s6, s2, 19
635:              srl          t3, t1, s1
                  add          a0, s7, a2
637:              ori          a6, ra, 1302
                  bge          a5, s3, 650f
                  lui          a3, 95807
640:              bltu         s5, ra, 642f
                  bge          t0, s6, 653f
642:              slli         a6, s10, 0
                  srai         t0, t5, 25
                  srai         s2, a2, 30
                  sltu         t4, s1, a6
                  bgeu         a2, a0, 663f
                  and          t4, s6, t4
                  auipc        s10, 91857
                  sltiu        a2, t1, 1430
650:              bltu         sp, zero, 662f
                  srli         s9, t4, 28
                  sltu         s6, s7, s8
653:              sub          a7, s8, gp
                  blt          t4, a7, 666f
                  sltiu        t2, a1, -242
                  add          a0, s5, gp
                  bge          sp, s2, 670f
                  slti         t0, a6, 203
                  sra          a2, a0, a0
                  sra          a2, a2, s5
                  sltiu        t6, t3, -1453
662:              srai         s7, s6, 8
663:              slt          a3, gp, s4
                  beq          a3, a6, 670f
                  andi         s4, a5, -398
666:              sltiu        s8, s4, 1747
                  and          a3, zero, s7
                  beq          s9, t5, 670f
                  nop
670:              or           s11, s1, t5
                  nop
                  add          s0, a4, t4
                  addi         t4, a0, 576
                  add          t3, t6, a0
                  xor          a1, a1, a0
                  sltu         zero, gp, t0
                  blt          zero, s0, 692f
                  srai         t0, t0, 21
                  add          t0, s1, a2
                  slti         tp, s0, 887
                  bltu         t2, s3, 689f
                  sltiu        s6, a4, -1867
                  sra          a7, s2, a7
                  xor          s7, zero, zero
                  bne          zero, tp, 697f
                  xor          t6, s8, tp
                  bgeu         ra, s7, 698f
                  sltiu        s5, s9, -871
689:              and          s7, a5, s3
                  srai         ra, a2, 11
                  blt          zero, a6, 692f
692:              bgeu         s4, zero, 704f
                  blt          s2, ra, 706f
                  beq          a1, a1, 700f
                  sltiu        tp, a3, -1035
                  bgeu         a7, s1, 716f
697:              srli         s2, t3, 7
698:              bgeu         t5, s7, 712f
                  sub          tp, a0, s2
700:              addi         s10, zero, 1405
                  sltu         a7, t1, a0
                  sltu         s10, t6, a3
                  sll          s5, gp, s10
704:              auipc        a7, 254088
                  slti         s5, a1, 1594
706:              srli         ra, s5, 4
                  blt          s3, t1, 725f
                  blt          a6, t2, 716f
                  blt          s4, ra, 719f
                  ori          t4, t3, -1169
                  srl          s6, a0, s1
712:              bne          t2, a0, 729f
                  ori          t4, a3, -284
                  andi         s4, a0, 763
                  bltu         s1, t2, 730f
716:              srai         gp, ra, 9
                  sltiu        s10, s5, -362
                  sltu         gp, sp, s9
719:              blt          s2, t5, 731f
                  srl          zero, a7, s8
                  srl          a0, a2, t6
                  sltu         tp, s8, zero
                  srai         s3, s5, 28
                  bge          s3, s2, 741f
725:              sll          tp, a1, s1
                  and          a7, sp, s9
                  sub          s11, s3, a6
                  bne          s11, t2, 746f
729:              bge          a4, gp, 742f
730:              or           t0, s8, t6
731:              or           a7, a0, t2
                  nop
                  slli         t3, s1, 8
                  or           gp, s5, s8
                  srl          a0, sp, t6
                  and          s3, a2, s6
                  srli         zero, s1, 2
                  slt          s11, s5, a7
                  and          s9, s5, t5
                  srl          t6, s2, ra
741:              addi         t0, a3, 807
742:              bgeu         s7, s4, 744f
                  sub          a7, a5, a7
744:              bltu         t0, s6, 764f
                  srli         s7, gp, 2
746:              bgeu         zero, a7, 751f
                  sll          t2, sp, s10
                  and          zero, t1, tp
                  sub          t2, t2, t3
                  blt          a4, s4, 759f
751:              bge          t4, s3, 753f
                  srai         t0, s5, 28
753:              bne          a7, s5, 755f
                  nop
755:              beq          s1, t4, 760f
                  addi         t0, s4, -595
                  sll          t0, s10, s4
                  srl          s5, s7, s7
759:              slti         s1, t5, 498
760:              srl          a0, s11, sp
                  addi         ra, s10, 1849
                  srai         t4, s4, 20
                  xor          s4, s4, zero
764:              addi         a7, s8, -498
                  addi         a0, s10, -1307
                  srai         t4, s1, 10
                  sltiu        s0, zero, -1008
                  beq          t2, t0, 788f
                  bge          a0, s2, 783f
                  beq          s6, s7, 772f
                  sltiu        s9, t3, 462
772:              bltu         s0, tp, 785f
                  auipc        t4, 788699
                  srl          s2, a1, a0
                  srl          s10, a7, s4
                  bltu         ra, sp, 788f
                  ori          t2, a7, 1519
                  addi         a2, a1, 114
                  xor          ra, t4, a6
                  auipc        a6, 335602
                  bgeu         a0, a5, 793f
                  sltu         t6, s4, tp
783:              slt          t4, a4, s6
                  sra          s5, s10, s1
785:              or           s3, tp, s4
                  slt          sp, a0, s8
                  sltu         s7, s5, t2
788:              andi         s1, a4, 633
                  slt          a7, a5, s0
                  slti         s9, t5, 788
                  andi         t0, t5, -326
                  addi         ra, s9, 570
793:              slli         s6, sp, 4
                  sltu         s11, t2, s11
                  beq          s0, a7, 803f
                  xori         t2, s5, 1938
                  addi         gp, t5, 1924
                  slt          s2, s2, a0
                  beq          s3, s6, 805f
                  auipc        t1, 150141
                  ori          s4, s5, -304
                  srli         a2, s3, 1
803:              sra          s2, zero, a6
                  slt          s0, s11, a3
805:              bgeu         t3, t6, 818f
                  slt          s1, t0, s11
                  or           s0, s1, ra
                  beq          s6, t4, 813f
                  sll          t6, a2, t5
                  beq          zero, s10, 812f
                  srli         s1, tp, 17
812:              addi         t6, tp, 846
813:              srl          s9, a1, t2
                  bne          sp, s6, 823f
                  auipc        ra, 707458
                  xor          s2, s1, zero
                  sll          gp, s11, s11
818:              add          ra, t1, s2
                  bne          ra, s11, 830f
                  bne          t0, a0, 835f
                  sltu         t2, t3, a4
                  lui          a7, 46691
823:              beq          s11, a2, 825f
                  add          t6, s2, a7
825:              lui          a7, 351039
                  slli         t1, s11, 27
                  and          s0, tp, t3
                  xori         a6, a0, 1124
                  xori         s5, t4, 510
830:              xori         a2, s5, -704
                  bne          a7, a1, 849f
                  bgeu         a4, s3, 844f
                  beq          a3, zero, 851f
                  and          a3, s5, a2
835:              sll          s4, s10, t5
                  srl          a3, s11, tp
                  or           t1, s2, a4
                  andi         zero, t5, -271
                  srl          s9, s9, s1
                  sltiu        s6, s8, 1226
                  sra          s3, t6, s8
                  auipc        s10, 304134
                  addi         s9, a5, -337
                  slli         s0, s8, 2
                  sll          zero, tp, s1
                  lui          sp, 780985
                  srli         zero, a1, 12
                  slli         t4, t4, 17
                  or           a1, s9, s10
                  slti         gp, a7, 1581
sub_4_j6:         jal          t3, sub_5 #jump sub_4 -> sub_5
                  blt          t3, t0, 861f
                  srli         s10, s2, 0
                  blt          t0, t0, 851f
844:              blt          a3, s7, 857f
                  sra          t4, s10, a3
                  addi         s0, tp, 600
                  bge          s4, ra, 852f
                  lui          a2, 60365
849:              bgeu         s5, a0, 861f
                  addi         a3, gp, 1730
851:              beq          a7, a4, 852f
852:              bge          a3, zero, 869f
                  ori          s4, a3, 1228
                  sltu         ra, a5, gp
                  and          s4, s0, t3
                  srai         s11, ra, 25
857:              xor          a6, tp, t5
                  and          s2, sp, a1
                  beq          a7, gp, 861f
                  srli         ra, a7, 17
861:              sub          s2, a1, a3
                  sltiu        s3, s1, 522
                  bltu         a2, zero, 878f
                  bltu         t5, gp, 870f
                  bge          s3, a5, 875f
                  slti         s6, t6, -224
                  sltu         tp, a0, s7
                  add          s3, a1, t5
869:              bltu         s4, s0, 886f
870:              srli         a1, s6, 25
                  auipc        s1, 207509
                  andi         t3, s4, -71
                  andi         s6, zero, -1287
                  auipc        gp, 190079
875:              lui          t0, 1007391
                  sub          s8, a0, t4
                  bne          t5, t3, 879f
878:              sub          t3, a6, t3
879:              xori         s0, s1, -897
                  srl          a0, s11, s11
                  slli         s7, s7, 0
                  sub          s4, s5, s1
                  lui          s0, 572984
                  sltu         gp, a6, s4
                  srai         a2, s0, 23
886:              blt          zero, s10, 901f
                  bgeu         s11, s10, 888f
888:              bne          t2, s9, 905f
                  and          t1, s11, s2
                  or           a2, s7, a7
                  ori          ra, s10, 978
                  bltu         a5, tp, 905f
                  or           sp, zero, a4
                  srl          s6, s2, gp
                  srai         sp, a3, 15
                  beq          s1, ra, 908f
                  sltu         s0, a1, s7
                  and          s7, s1, t2
                  addi         s4, tp, -1573
                  slt          a6, t6, s4
901:              and          t4, s8, a0
                  bne          t0, s1, 912f
                  sub          t0, tp, s3
                  slti         s2, t2, -1633
905:              or           a0, s9, a0
                  andi         s11, a6, -250
                  xori         s5, s1, -6
908:              auipc        a1, 508071
                  and          a7, a0, s4
                  xori         s8, a7, -31
                  slt          t3, a3, s5
912:              auipc        s1, 254672
                  slt          sp, s4, t1
                  sltiu        t1, gp, -1799
                  auipc        t2, 688635
                  auipc        s2, 1000755
                  bgeu         a2, a2, 926f
                  slt          gp, t6, s5
                  slli         s8, a6, 22
                  slt          s5, t3, a2
                  srli         tp, a1, 25
                  sltu         a1, a4, s11
                  andi         a7, a2, 1021
                  xori         s3, t4, 748
                  or           t6, a1, s7
926:              sltiu        s5, tp, -1523
                  andi         t3, t0, 1772
                  or           t6, s6, a2
                  add          s10, zero, t6
                  srai         ra, a6, 6
                  bge          a5, s3, 937f
                  srli         gp, a0, 12
                  xor          a6, a6, sp
                  slt          s9, a7, s0
                  bne          s2, s7, 946f
                  sra          t1, t4, t3
937:              bne          t3, t5, 945f
                  add          t6, s4, a0
                  add          a7, ra, a2
                  xor          s4, a1, a4
                  ori          s4, a2, 982
                  add          t2, t0, a2
                  bltu         t2, a6, 945f
                  and          s5, a3, s3
945:              srl          ra, tp, s7
946:              or           a2, s11, t6
                  sltu         t2, s2, a4
                  auipc        a1, 403448
                  bltu         ra, s0, 954f
                  xori         s11, t1, -1878
                  sll          s5, a5, s10
                  xori         t4, s2, 1327
                  addi         t3, s11, 1867
954:              sub          s7, s9, s6
                  nop
                  bgeu         a3, t6, 976f
                  sltu         tp, a0, s6
                  srai         t0, s5, 8
                  or           gp, zero, t2
                  srli         t6, t4, 30
                  sltiu        a2, a3, 1558
                  sltu         t2, s0, gp
                  bne          t0, t1, 981f
                  and          t4, s10, a3
                  beq          s7, t1, 971f
                  slt          s0, a1, t4
                  and          t0, s8, s6
                  sub          gp, t5, a4
                  lui          ra, 759767
                  slli         t6, s2, 17
971:              sltiu        s8, t4, -248
                  srl          s5, t4, s3
                  bge          t3, tp, 978f
                  auipc        t6, 88316
                  bgeu         tp, s2, 983f
976:              sub          s9, s9, ra
                  slli         a7, t4, 0
978:              srli         t3, s4, 12
                  ori          sp, a3, -250
                  and          s8, t4, s0
981:              sub          s2, s1, t1
                  bgeu         s0, s3, 1000f
983:              lui          t6, 187239
                  and          t3, a6, s8
                  sll          t0, t0, s9
                  auipc        ra, 760890
                  or           a3, t3, a7
                  lui          t3, 85811
                  and          a3, s11, ra
                  slt          t2, zero, s1
                  andi         s7, t3, -1056
                  blt          t1, gp, 994f
                  bge          s4, s9, 1006f
994:              and          sp, t2, s9
                  xor          t4, ra, t5
                  add          s4, s6, a7
                  slt          s10, s6, a3
                  sll          s10, t2, s11
                  andi         s11, s2, 1977
1000:             beq          t0, s2, 1014f
                  xori         a6, a4, 608
                  bgeu         s9, a3, 1014f
                  xor          zero, sp, sp
                  srl          s1, s3, s8
                  lui          a1, 792456
1006:             nop
                  sltiu        s8, t2, 1502
                  xori         s0, a2, -1842
                  sll          t2, t3, a2
                  slt          t6, s3, tp
                  andi         s6, t1, 1335
                  bltu         zero, a3, 1027f
                  add          s10, s11, a4
1014:             and          s3, s8, s0
                  sra          a2, s3, t4
                  bne          a3, s6, 1033f
                  bltu         t1, a7, 1029f
                  slt          t2, s1, a2
                  bne          a2, s9, 1021f
                  srai         s5, a5, 20
1021:             beq          s1, t5, 1041f
                  slti         s5, ra, -1136
                  srai         t0, sp, 8
                  beq          t3, s5, 1037f
                  lui          a0, 1027485
                  bne          gp, s1, 1038f
1027:             andi         sp, sp, -723
                  srai         a2, a6, 24
1029:             sub          t1, s6, s2
                  nop
                  and          s0, a0, tp
                  and          s11, s0, s10
1033:             add          a0, a0, t6
                  srli         s9, t0, 10
                  and          a7, s0, a4
                  or           a6, s6, s10
1037:             srai         ra, a4, 11
1038:             bltu         s7, t2, 1040f
                  xor          zero, s8, gp
1040:             lui          s10, 101935
1041:             srl          s3, t3, s4
                  add          s0, s10, s11
                  addi         t0, s5, 2004
                  sltu         tp, tp, s2
                  bltu         s2, s5, 1050f
                  slli         t0, t2, 25
                  sltu         s10, t4, s8
                  bne          t6, s4, 1052f
                  srai         a2, t1, 4
1050:             bne          s11, s5, 1052f
                  blt          t0, a7, 1052f
1052:             add          s3, s7, zero
                  sll          s10, s11, t5
                  sltiu        s4, t4, -494
                  slt          t2, s8, a4
                  srl          s2, a3, t6
                  slli         a1, gp, 8
                  slti         a0, t4, -1506
                  lw           t3, 4(a4)
                  xor          ra, t6, zero
                  srai         t4, a1, 28
                  addi         a4, a4, 16
                  sltiu        gp, a4, 144
                  addi         a6, tp, -844
1601:             addi x18, x28, 0
1601:             jalr x18, x18, 0
sub_1:            addi         a4, a4, -24
                  sltu         s9, s8, a0
                  ori          a3, s2, -1819
                  xor          a0, t4, s4
                  lui          a3, 394631
                  lui          s3, 200526
                  srl          s3, a6, s3
                  sw           t3, 4(a4)
                  auipc        s8, 271
sub_1_2:          jal          t3, 14f
0:                jal          ra, 19f
1:                jal          ra, 0b
2:                jal          ra, 5f
3:                jal          ra, 30f
4:                jal          ra, 21f
5:                jal          ra, 20f
6:                jal          ra, 7f
7:                jal          a7, 22f
8:                jal          t1, 25f
9:                jal          t1, 2b
10:               jal          ra, 12f
11:               jal          ra, 28f
12:               jal          t1, 27f
13:               jal          ra, 16f
14:               jal          t1, 11b
15:               jal          t1, 8b
16:               jal          ra, 3b
17:               jal          s8, 6b
18:               jal          ra, 23f
19:               jal          ra, 26f
20:               jal          ra, 17b
21:               jal          t4, 1b
22:               jal          ra, 24f
23:               jal          ra, 4b
24:               jal          ra, 29f
25:               jal          ra, 18b
26:               jal          a0, 13b
27:               jal          ra, 9b
28:               jal          t1, 10b
29:               jal          ra, 15b
30:               sra          a0, t3, ra
sub_1_4:          jal          t3, 13f
0:                jal          ra, 8f
1:                jal          ra, 2f
2:                jal          ra, 18f
3:                jal          ra, 11f
4:                jal          ra, 16f
5:                jal          ra, 10f
6:                jal          t1, 4b
7:                jal          t0, 17f
8:                jal          ra, 12f
9:                jal          t1, 3b
10:               jal          s0, 14f
11:               jal          a1, 6b
12:               jal          ra, 15f
13:               jal          sp, 5b
14:               jal          gp, 7b
15:               jal          ra, 19f
16:               jal          ra, 1b
17:               jal          s1, 9b
18:               jal          sp, 0b
19:               slti         s8, a0, 1384
sub_1_1:          jal          t3, 10f
0:                jal          t1, 5f
1:                jal          s0, 2f
2:                jal          ra, 0b
3:                jal          s2, 7f
4:                jal          ra, 12f
5:                jal          ra, 9f
6:                jal          t1, 13f
7:                jal          ra, 6b
8:                jal          sp, 11f
9:                jal          t1, 4b
10:               jal          ra, 1b
11:               jal          t1, 3b
12:               jal          ra, 8b
13:               slt          s4, s10, s8
sub_1_3:          jal          t3, 3f
0:                jal          a7, 11f
1:                jal          ra, 6f
2:                jal          s9, 1b
3:                jal          ra, 4f
4:                jal          ra, 10f
5:                jal          tp, 0b
6:                jal          ra, 8f
7:                jal          s9, 2b
8:                jal          ra, 5b
9:                jal          ra, 7b
10:               jal          ra, 9b
11:               sltu         s7, sp, s8
                  slt          t1, s11, t1
                  blt          gp, s5, 16f
                  andi         s9, s3, 1383
                  bne          s0, gp, 5f
                  add          s11, a3, t6
5:                srli         s11, t3, 24
                  sub          s2, a4, zero
                  auipc        s8, 972607
                  sub          t0, t2, t5
                  sra          s0, s6, t3
                  blt          gp, s3, 24f
                  bgeu         a7, t2, 13f
                  srl          s3, s11, a1
13:               srli         s7, ra, 11
                  xori         a3, s10, 1948
                  slt          s9, s3, t5
16:               or           a6, tp, t2
                  sltu         tp, s4, a2
                  and          sp, a1, t6
                  or           s5, s8, s4
                  bltu         s6, s1, 36f
                  and          tp, t0, a4
                  xor          s6, ra, t3
                  bltu         a5, a1, 34f
24:               slt          a1, s4, a1
                  beq          s3, t2, 31f
                  sltu         t0, a6, s9
                  slti         a7, tp, 678
                  sub          a0, t5, t0
                  add          s2, gp, t6
                  blt          s5, s9, 36f
31:               addi         s0, a6, 1044
                  nop
                  or           s7, tp, s2
34:               auipc        s1, 134609
                  xor          a6, sp, a0
36:               bltu         s6, s1, 38f
                  nop
38:               srai         s5, t4, 15
                  sra          t3, a6, s1
                  auipc        s5, 864025
                  slt          s10, a6, a6
                  nop
                  sra          s3, s2, a2
                  slt          s7, a5, t6
                  bltu         s2, s7, 52f
                  slti         s1, a6, 1948
                  sub          zero, s10, tp
                  bltu         t4, a0, 65f
                  sub          tp, t1, gp
                  and          t6, ra, s2
                  beq          gp, tp, 55f
52:               and          a0, a1, s6
                  xor          s5, ra, a3
                  blt          s8, s1, 63f
55:               bltu         t2, s4, 61f
                  srai         ra, a4, 26
                  srl          t0, s7, a0
                  srli         s4, ra, 9
sub_1_0:          jal          t3, 21f
0:                jal          ra, 15f
1:                jal          t1, 3f
2:                jal          t1, 17f
3:                jal          ra, 19f
4:                jal          gp, 9f
5:                jal          ra, 8f
6:                jal          t1, 5b
7:                jal          a0, 13f
8:                jal          s3, 23f
9:                jal          ra, 2b
10:               jal          ra, 0b
11:               jal          t1, 24f
12:               jal          ra, 6b
13:               jal          ra, 25f
14:               jal          ra, 11b
15:               jal          t1, 14b
16:               jal          t1, 10b
17:               jal          ra, 12b
18:               jal          ra, 4b
19:               jal          ra, 18b
20:               jal          ra, 1b
21:               jal          ra, 22f
22:               jal          ra, 20b
23:               jal          ra, 16b
24:               jal          s6, 7b
25:               sltiu        tp, s5, 1796
                  slli         s2, a0, 17
                  slt          s2, a7, a5
61:               slti         s4, t5, 443
                  srai         s10, s9, 26
63:               bge          s5, a7, 67f
                  blt          ra, a4, 66f
65:               auipc        s11, 423613
66:               auipc        zero, 503471
67:               sub          t6, s5, t4
                  blt          s1, zero, 77f
                  addi         t2, s7, -688
                  bltu         a4, t4, 81f
                  bge          s4, s11, 91f
                  slli         s3, a4, 26
                  bne          a1, t1, 80f
                  sltu         s10, a6, a7
                  auipc        a6, 177533
                  add          t0, a7, sp
77:               addi         t0, t1, 554
                  bge          ra, t3, 97f
                  srl          s6, a7, s0
80:               srl          a1, t6, t6
81:               sltiu        s0, zero, -813
                  sltu         a0, a4, a4
                  sub          s1, t6, t3
                  sltiu        s0, s11, 1935
                  blt          s5, a6, 103f
                  srai         a6, s11, 10
                  and          t3, s2, t1
                  srai         s7, t5, 6
                  xor          s4, t6, s6
                  srai         zero, s0, 17
91:               slli         a7, s3, 4
                  srl          a6, gp, gp
                  and          t0, a6, s5
                  andi         s8, t1, -1077
                  bltu         a4, s10, 100f
                  sra          s5, s7, t6
97:               sltiu        s8, a4, 1152
                  andi         tp, a7, -1508
                  slti         a3, s1, 1218
100:              auipc        a7, 762249
                  bne          t5, s8, 109f
                  slti         s7, ra, 980
103:              slli         t0, a3, 26
                  ori          ra, sp, -1662
                  bgeu         t1, s1, 113f
                  nop
                  beq          a0, s3, 118f
                  sll          t6, zero, t5
109:              ori          s11, s6, 790
                  bne          a1, s5, 122f
                  srl          t1, s3, a4
                  nop
113:              lui          a1, 668778
                  bgeu         a4, a2, 127f
                  xor          a7, a0, s3
                  auipc        s11, 761909
                  sub          a6, s11, zero
118:              xori         t4, s0, 1533
                  slt          s0, s4, t1
                  sltu         s5, sp, a7
                  beq          a5, a2, 128f
122:              bgeu         s5, s9, 125f
                  addi         a7, zero, -1334
                  blt          zero, a0, 130f
125:              nop
                  sub          ra, s3, t2
127:              sub          s10, t4, t5
128:              srl          s2, s4, s9
                  and          s4, a3, t1
130:              sltu         s9, a3, gp
                  sltu         s2, a2, a2
                  blt          t3, a4, 136f
                  lui          s4, 74391
                  slli         a1, s11, 16
                  xor          zero, t0, s9
136:              bne          a1, s11, 142f
                  sll          sp, gp, a7
                  blt          a7, t0, 147f
                  blt          a2, t6, 143f
                  srai         tp, tp, 24
                  sltiu        s3, t6, 598
142:              xori         a1, a7, 198
143:              and          a6, t3, a3
                  srli         s10, s8, 16
                  and          a2, s2, a1
                  srli         s3, s3, 27
147:              xori         s9, a0, 1551
                  srli         a7, t5, 14
                  bgeu         a7, a3, 152f
                  bgeu         a1, t1, 152f
                  andi         t0, t6, -453
152:              nop
                  beq          t6, a7, 164f
                  xor          a0, s11, s2
                  andi         t6, a6, -1055
                  beq          tp, s4, 163f
                  srl          t0, sp, s9
                  and          ra, tp, tp
                  srli         s0, a3, 23
                  sltu         a2, t5, t5
                  blt          s5, s11, 167f
                  xor          t6, t5, s5
163:              lui          t0, 645467
164:              blt          a5, a3, 175f
                  sra          t6, t2, s2
                  srai         s3, t6, 23
167:              auipc        s6, 196186
                  bltu         t1, s8, 188f
                  ori          s2, zero, -1005
                  andi         t1, a7, -1795
                  ori          a3, s8, 1619
                  bgeu         s10, zero, 183f
                  slli         s4, t2, 28
                  add          s9, t0, t3
175:              auipc        zero, 518941
                  addi         s4, a4, 1622
                  srai         s9, sp, 15
                  or           s10, t6, sp
                  or           s2, zero, a6
                  sra          t1, t0, t5
                  sltu         a0, a5, s10
                  slli         t1, s9, 28
183:              beq          s3, s9, 191f
                  sra          s4, a3, a7
                  srai         sp, t3, 22
                  bne          a2, t5, 193f
                  bne          s2, a4, 201f
188:              slti         s0, s8, 1007
                  and          sp, s3, a3
                  or           s1, a5, s11
191:              and          s1, zero, a6
                  sll          sp, tp, sp
193:              slt          s10, gp, t3
                  andi         s10, s5, -1298
                  bgeu         s9, a3, 212f
                  slli         tp, t4, 31
                  sltiu        zero, a6, 296
                  sltu         s2, s0, tp
                  add          s11, t0, t1
                  slti         s1, a1, -921
201:              xor          s10, s11, sp
                  xori         a2, a4, -358
                  sra          ra, a1, s4
                  bne          s8, a7, 211f
                  and          s0, a7, a7
                  bge          t5, s9, 214f
                  sltiu        s9, zero, 223
                  slt          s0, s0, s3
                  bne          s2, s11, 221f
                  blt          a6, t3, 212f
211:              sub          t0, a0, ra
212:              beq          s2, s2, 221f
                  bltu         s6, tp, 228f
214:              lui          s0, 28444
                  xor          a1, s11, sp
                  bge          zero, s7, 235f
                  slli         s2, a4, 18
                  sra          s8, a6, s9
                  xor          t3, a2, t6
                  slti         a2, t0, -1617
221:              beq          s10, t5, 234f
                  andi         a0, s5, -72
                  sub          t3, tp, s10
                  add          s9, t3, gp
                  lui          s10, 775394
                  bgeu         tp, a0, 242f
                  ori          s2, s2, 791
228:              lui          t3, 964464
                  srl          s3, ra, tp
                  xor          s5, a1, t1
                  bltu         s7, zero, 236f
                  or           s4, t3, s6
                  slti         a2, a5, -913
234:              bge          gp, s9, 252f
235:              bltu         a5, a1, 237f
236:              add          s10, a4, t5
237:              bgeu         a4, a5, 239f
                  add          s7, a3, sp
239:              slti         s0, t3, 777
                  srai         gp, a2, 21
                  add          s11, t5, a1
242:              slti         s0, a4, -287
                  xori         a0, a4, -47
                  lui          s4, 172384
                  ori          gp, a3, 1644
                  andi         a1, s9, -1645
                  sltiu        s4, s3, 228
                  auipc        a3, 464307
                  bne          s1, s5, 263f
                  ori          s3, zero, 1458
                  sub          s3, sp, s8
252:              sra          sp, a0, t6
                  slti         s2, t1, -28
                  sub          s11, a4, ra
                  xori         t0, a2, -2036
                  xori         s10, t1, 116
                  bne          s9, s4, 263f
                  beq          t0, t6, 264f
                  beq          a4, s3, 263f
                  slt          zero, zero, t5
                  addi         a6, a5, 22
                  nop
263:              ori          tp, tp, 668
264:              slt          s7, s3, s0
                  or           zero, s7, a5
                  srl          a7, a6, s1
                  xor          t0, s4, a0
                  slti         t0, s5, 135
                  srli         s9, a6, 21
                  sltiu        t0, s0, -542
                  slt          ra, s7, s2
                  lui          t2, 185409
                  auipc        s3, 875488
                  srl          s5, a2, a5
                  add          tp, s4, s2
                  blt          zero, t5, 282f
                  lui          s0, 785440
                  ori          s11, t0, -1318
                  and          t0, gp, ra
                  sub          s10, ra, t4
                  slti         a0, s1, -872
282:              xor          t1, s2, t3
                  lw           t3, 4(a4)
                  lui          tp, 727775
                  addi         a4, a4, 24
                  auipc        t0, 201945
                  srli         sp, s0, 1
                  slt          tp, a3, t0
406:              addi x21, x28, 0
406:              jalr x21, x21, 0
sub_2:            addi         a4, a4, -12
                  srli         t4, a1, 15
                  sw           t3, 4(a4)
                  auipc        s6, 392181
                  slti         a6, tp, -174
sub_2_6:          jal          t3, 10f
0:                jal          ra, 4f
1:                jal          ra, 5f
2:                jal          t1, 17f
3:                jal          t1, 15f
4:                jal          ra, 9f
5:                jal          t4, 18f
6:                jal          t1, 0b
7:                jal          ra, 14f
8:                jal          ra, 21f
9:                jal          t0, 19f
10:               jal          ra, 20f
11:               jal          ra, 7b
12:               jal          a2, 16f
13:               jal          ra, 1b
14:               jal          ra, 6b
15:               jal          a6, 12b
16:               jal          ra, 13b
17:               jal          t1, 8b
18:               jal          ra, 22f
19:               jal          ra, 3b
20:               jal          t1, 2b
21:               jal          ra, 11b
22:               xor          s8, t2, s7
sub_2_4:          jal          t3, 16f
0:                jal          ra, 7f
1:                jal          ra, 19f
2:                jal          s1, 15f
3:                jal          ra, 24f
4:                jal          ra, 11f
5:                jal          a1, 0b
6:                jal          ra, 3b
7:                jal          t1, 6b
8:                jal          t1, 26f
9:                jal          ra, 10f
10:               jal          ra, 14f
11:               jal          ra, 9b
12:               jal          ra, 13f
13:               jal          ra, 1b
14:               jal          ra, 22f
15:               jal          ra, 17f
16:               jal          a3, 21f
17:               jal          ra, 12b
18:               jal          ra, 23f
19:               jal          ra, 18b
20:               jal          ra, 25f
21:               jal          a1, 2b
22:               jal          gp, 8b
23:               jal          tp, 20b
24:               jal          s2, 4b
25:               jal          t1, 5b
26:               sltiu        t1, tp, 2035
sub_2_13:         jal          t3, 17f
0:                jal          t1, 21f
1:                jal          s7, 25f
2:                jal          ra, 16f
3:                jal          ra, 27f
4:                jal          ra, 18f
5:                jal          ra, 6f
6:                jal          ra, 19f
7:                jal          a6, 22f
8:                jal          s10, 15f
9:                jal          ra, 0b
10:               jal          t1, 11f
11:               jal          a3, 12f
12:               jal          t3, 3b
13:               jal          ra, 2b
14:               jal          ra, 8b
15:               jal          t1, 24f
16:               jal          t1, 4b
17:               jal          ra, 13b
18:               jal          ra, 9b
19:               jal          ra, 23f
20:               jal          ra, 26f
21:               jal          ra, 20b
22:               jal          ra, 5b
23:               jal          t1, 10b
24:               jal          t1, 1b
25:               jal          t1, 7b
26:               jal          ra, 14b
27:               jal          a0, 28f
28:               andi         sp, t5, -1843
sub_2_15:         jal          t3, 0f
0:                jal          ra, 14f
1:                jal          ra, 13f
2:                jal          ra, 1b
3:                jal          ra, 2b
4:                jal          ra, 7f
5:                jal          ra, 20f
6:                jal          ra, 4b
7:                jal          s3, 16f
8:                jal          t1, 10f
9:                jal          ra, 17f
10:               jal          ra, 9b
11:               jal          ra, 24f
12:               jal          ra, 21f
13:               jal          ra, 5b
14:               jal          ra, 3b
15:               jal          ra, 11b
16:               jal          ra, 12b
17:               jal          ra, 22f
18:               jal          ra, 15b
19:               jal          ra, 23f
20:               jal          ra, 6b
21:               jal          a1, 8b
22:               jal          ra, 19b
23:               jal          ra, 18b
24:               ori          s7, ra, 1462
sub_2_17:         jal          t3, 3f
0:                jal          ra, 10f
1:                jal          t1, 6f
2:                jal          t1, 8f
3:                jal          t1, 9f
4:                jal          t1, 2b
5:                jal          s2, 7f
6:                jal          t1, 4b
7:                jal          ra, 0b
8:                jal          ra, 11f
9:                jal          ra, 5b
10:               jal          ra, 1b
11:               slt          gp, s8, sp
sub_2_5:          jal          t3, 17f
0:                jal          ra, 7f
1:                jal          s5, 22f
2:                jal          ra, 5f
3:                jal          ra, 23f
4:                jal          gp, 13f
5:                jal          ra, 9f
6:                jal          ra, 1b
7:                jal          s0, 6b
8:                jal          ra, 0b
9:                jal          tp, 11f
10:               jal          s2, 8b
11:               jal          ra, 16f
12:               jal          t1, 18f
13:               jal          ra, 10b
14:               jal          sp, 21f
15:               jal          ra, 14b
16:               jal          t1, 3b
17:               jal          a0, 12b
18:               jal          ra, 19f
19:               jal          ra, 20f
20:               jal          ra, 4b
21:               jal          ra, 2b
22:               jal          t3, 15b
23:               or           t6, gp, s11
sub_2_2:          jal          t3, 5f
0:                jal          t3, 7f
1:                jal          ra, 15f
2:                jal          ra, 13f
3:                jal          ra, 4f
4:                jal          ra, 11f
5:                jal          t1, 0b
6:                jal          t1, 17f
7:                jal          t1, 16f
8:                jal          ra, 2b
9:                jal          t1, 3b
10:               jal          ra, 8b
11:               jal          t1, 12f
12:               jal          ra, 1b
13:               jal          ra, 9b
14:               jal          s5, 6b
15:               jal          ra, 14b
16:               jal          t1, 10b
17:               xori         a0, sp, 1146
sub_2_9:          jal          t3, 17f
0:                jal          ra, 11f
1:                jal          t2, 2f
2:                jal          ra, 6f
3:                jal          t0, 18f
4:                jal          ra, 22f
5:                jal          ra, 20f
6:                jal          t1, 10f
7:                jal          ra, 8f
8:                jal          ra, 16f
9:                jal          t3, 3b
10:               jal          sp, 21f
11:               jal          t1, 12f
12:               jal          t1, 23f
13:               jal          ra, 19f
14:               jal          a2, 27f
15:               jal          t1, 25f
16:               jal          t1, 29f
17:               jal          ra, 5b
18:               jal          ra, 0b
19:               jal          ra, 7b
20:               jal          t0, 26f
21:               jal          ra, 14b
22:               jal          ra, 15b
23:               jal          ra, 1b
24:               jal          t1, 13b
25:               jal          t1, 28f
26:               jal          t2, 24b
27:               jal          s11, 4b
28:               jal          a2, 30f
29:               jal          tp, 9b
30:               sltu         s0, ra, s4
sub_2_11:         jal          t3, 9f
0:                jal          ra, 3f
1:                jal          t1, 4f
2:                jal          s11, 5f
3:                jal          ra, 10f
4:                jal          ra, 6f
5:                jal          s5, 8f
6:                jal          ra, 2b
7:                jal          tp, 0b
8:                jal          ra, 7b
9:                jal          t1, 1b
10:               srl          t6, s0, s10
sub_2_18:         jal          t3, 6f
0:                jal          ra, 11f
1:                jal          s10, 2f
2:                jal          t1, 13f
3:                jal          ra, 7f
4:                jal          ra, 9f
5:                jal          ra, 16f
6:                jal          s4, 10f
7:                jal          t1, 17f
8:                jal          t3, 0b
9:                jal          ra, 5b
10:               jal          t1, 12f
11:               jal          sp, 3b
12:               jal          a7, 14f
13:               jal          ra, 8b
14:               jal          ra, 4b
15:               jal          t1, 1b
16:               jal          ra, 15b
17:               nop
sub_2_16:         jal          t3, 16f
0:                jal          sp, 19f
1:                jal          ra, 5f
2:                jal          ra, 20f
3:                jal          ra, 17f
4:                jal          t1, 7f
5:                jal          t1, 9f
6:                jal          ra, 18f
7:                jal          t1, 13f
8:                jal          t1, 15f
9:                jal          t2, 11f
10:               jal          t2, 4b
11:               jal          a6, 12f
12:               jal          t0, 14f
13:               jal          a2, 3b
14:               jal          ra, 8b
15:               jal          ra, 0b
16:               jal          ra, 1b
17:               jal          tp, 21f
18:               jal          s6, 10b
19:               jal          ra, 2b
20:               jal          ra, 6b
21:               slti         s3, t2, -1593
sub_2_10:         jal          t3, 20f
0:                jal          t1, 17f
1:                jal          tp, 15f
2:                jal          t1, 21f
3:                jal          tp, 6f
4:                jal          ra, 22f
5:                jal          ra, 16f
6:                jal          ra, 0b
7:                jal          ra, 8f
8:                jal          t1, 23f
9:                jal          ra, 18f
10:               jal          ra, 7b
11:               jal          ra, 2b
12:               jal          ra, 11b
13:               jal          t1, 19f
14:               jal          ra, 25f
15:               jal          ra, 12b
16:               jal          ra, 3b
17:               jal          ra, 14b
18:               jal          t1, 1b
19:               jal          ra, 26f
20:               jal          t4, 24f
21:               jal          gp, 4b
22:               jal          s0, 5b
23:               jal          ra, 13b
24:               jal          ra, 9b
25:               jal          ra, 10b
26:               slti         s1, a0, 388
sub_2_8:          jal          t3, 27f
0:                jal          ra, 17f
1:                jal          ra, 3f
2:                jal          ra, 20f
3:                jal          t1, 10f
4:                jal          ra, 21f
5:                jal          ra, 9f
6:                jal          t1, 19f
7:                jal          t1, 24f
8:                jal          t1, 18f
9:                jal          ra, 1b
10:               jal          s9, 0b
11:               jal          ra, 7b
12:               jal          t6, 13f
13:               jal          ra, 22f
14:               jal          ra, 6b
15:               jal          ra, 5b
16:               jal          ra, 4b
17:               jal          ra, 26f
18:               jal          ra, 23f
19:               jal          s6, 11b
20:               jal          ra, 12b
21:               jal          s6, 15b
22:               jal          t1, 25f
23:               jal          ra, 14b
24:               jal          ra, 2b
25:               jal          ra, 16b
26:               jal          ra, 29f
27:               jal          t1, 28f
28:               jal          ra, 8b
29:               sltu         t6, s6, s3
sub_2_3:          jal          t3, 10f
0:                jal          ra, 3f
1:                jal          tp, 8f
2:                jal          sp, 5f
3:                jal          ra, 6f
4:                jal          sp, 12f
5:                jal          ra, 16f
6:                jal          a0, 17f
7:                jal          t2, 0b
8:                jal          t1, 4b
9:                jal          ra, 15f
10:               jal          ra, 2b
11:               jal          ra, 14f
12:               jal          ra, 9b
13:               jal          ra, 7b
14:               jal          ra, 1b
15:               jal          ra, 13b
16:               jal          t1, 11b
17:               xor          s5, tp, a1
sub_2_14:         jal          t3, 6f
0:                jal          ra, 8f
1:                jal          t1, 10f
2:                jal          s4, 7f
3:                jal          ra, 2b
4:                jal          ra, 1b
5:                jal          ra, 4b
6:                jal          ra, 13f
7:                jal          ra, 11f
8:                jal          a6, 14f
9:                jal          ra, 3b
10:               jal          t1, 0b
11:               jal          s6, 12f
12:               jal          ra, 5b
13:               jal          gp, 9b
14:               ori          s7, s6, 187
sub_2_0:          jal          t3, 0f
0:                jal          gp, 20f
1:                jal          ra, 18f
2:                jal          tp, 12f
3:                jal          t1, 8f
4:                jal          ra, 11f
5:                jal          ra, 4b
6:                jal          t1, 14f
7:                jal          t1, 13f
8:                jal          ra, 2b
9:                jal          ra, 10f
10:               jal          ra, 21f
11:               jal          tp, 19f
12:               jal          ra, 1b
13:               jal          t1, 6b
14:               jal          ra, 17f
15:               jal          ra, 9b
16:               jal          ra, 7b
17:               jal          tp, 15b
18:               jal          ra, 16b
19:               jal          s11, 3b
20:               jal          t6, 5b
21:               slli         tp, s6, 12
sub_2_12:         jal          t3, 22f
0:                jal          sp, 5f
1:                jal          t1, 14f
2:                jal          a1, 10f
3:                jal          tp, 15f
4:                jal          ra, 7f
5:                jal          ra, 8f
6:                jal          a0, 18f
7:                jal          t1, 17f
8:                jal          s6, 21f
9:                jal          a3, 1b
10:               jal          ra, 6b
11:               jal          ra, 16f
12:               jal          ra, 0b
13:               jal          t1, 4b
14:               jal          t2, 20f
15:               jal          t1, 9b
16:               jal          ra, 3b
17:               jal          a6, 12b
18:               jal          t0, 11b
19:               jal          t1, 2b
20:               jal          ra, 13b
21:               jal          t4, 23f
22:               jal          ra, 19b
23:               sub          s0, sp, zero
sub_2_7:          jal          t3, 6f
0:                jal          s8, 7f
1:                jal          ra, 14f
2:                jal          a7, 12f
3:                jal          t1, 11f
4:                jal          a0, 1b
5:                jal          ra, 8f
6:                jal          ra, 3b
7:                jal          ra, 9f
8:                jal          ra, 2b
9:                jal          ra, 13f
10:               jal          t1, 0b
11:               jal          t1, 10b
12:               jal          ra, 4b
13:               jal          ra, 5b
14:               ori          s10, a6, -338
                  sltu         s11, t5, t5
                  srli         s5, a7, 12
                  beq          a6, t0, 6f
                  and          s1, sp, gp
                  xor          a7, s4, t5
                  slli         a7, tp, 13
6:                xor          s8, s9, ra
                  xori         s3, s10, 2035
                  sltu         sp, a5, a2
                  bgeu         s3, s0, 14f
                  add          a0, t5, s6
                  addi         s6, t6, 1277
                  bne          t1, tp, 23f
                  srai         sp, s7, 10
14:               auipc        t6, 930706
                  srl          tp, a2, t3
                  or           s4, s7, a6
                  srl          a6, s7, t1
                  bgeu         t3, gp, 20f
                  bltu         a2, t1, 20f
20:               xori         s6, s7, -624
                  sll          s5, s0, a2
                  sub          a1, t3, s8
23:               bltu         t6, t4, 39f
                  bltu         a0, gp, 30f
                  slli         a3, s10, 24
                  sra          s1, a0, ra
                  add          s9, gp, a5
                  beq          t0, tp, 33f
                  sltu         a1, a0, t3
30:               or           t1, a0, t5
                  sra          t3, t3, gp
                  sltu         a1, t1, a3
33:               or           a3, sp, a5
                  srai         s6, sp, 20
                  blt          s8, a5, 54f
                  or           s10, t1, a5
                  slli         zero, s11, 12
                  bne          s4, a4, 55f
39:               sub          gp, a3, a0
                  srai         s6, sp, 10
                  sub          t1, a4, gp
                  sra          s3, s7, s8
                  beq          t4, a2, 52f
                  ori          s6, t4, -1473
                  slli         s1, gp, 23
                  xori         ra, s5, 1107
                  sltiu        a3, s2, -1078
                  andi         s10, s11, 1017
                  lui          s8, 908494
                  slti         s3, a1, -1256
                  srl          s0, t6, s9
52:               srai         gp, a3, 21
                  sltiu        a7, s8, 235
54:               slt          s8, s2, s3
55:               ori          s5, a1, 943
                  sra          t1, s11, a4
                  blt          a2, t3, 63f
                  lui          ra, 752903
                  add          s5, s8, t2
                  slli         s5, a6, 25
                  bltu         s5, s9, 80f
                  bltu         t2, s7, 82f
63:               bne          tp, tp, 64f
64:               add          t4, a6, s5
                  add          a3, gp, a4
                  sra          t3, s8, t4
                  slli         t0, t4, 0
                  slt          tp, t5, s10
                  srl          s6, a4, t6
                  slli         sp, a3, 4
                  bgeu         sp, zero, 76f
                  xor          s8, s5, a5
                  sltiu        a7, a6, -829
                  beq          s6, t0, 78f
                  addi         t0, a5, -1873
76:               slli         zero, s1, 2
                  bne          s11, t4, 80f
78:               nop
                  bne          s11, t5, 80f
80:               srli         tp, s8, 1
                  andi         t4, t4, 875
82:               sltiu        s11, tp, -1758
                  sltiu        s10, a7, -111
                  bgeu         s10, a0, 97f
                  and          s8, t6, a7
                  sub          s3, s9, s5
                  bne          s10, s1, 105f
                  slti         sp, t5, 1398
                  sltiu        s7, t0, 57
                  sub          a1, tp, a7
                  srai         s6, s4, 18
                  slt          tp, s1, a1
                  auipc        a6, 866104
                  beq          a0, t0, 109f
                  xor          a1, s6, a7
                  bne          s1, s10, 103f
97:               bgeu         t5, t5, 108f
                  bltu         s5, s8, 118f
                  bne          a4, s3, 114f
                  slt          tp, gp, s10
                  bltu         gp, s7, 103f
                  slli         s1, sp, 2
103:              auipc        s4, 691005
                  sra          s11, s7, s9
105:              nop
                  sltiu        sp, s6, 1845
                  blt          tp, t2, 110f
108:              bne          t0, s11, 110f
109:              bltu         s11, t4, 122f
110:              slli         s10, s6, 22
                  slti         s2, s10, -799
                  lui          s10, 1919
                  slt          s4, s0, ra
114:              and          t1, s9, s10
                  bltu         t0, s6, 120f
                  srli         sp, t0, 27
                  addi         a7, t3, -543
118:              srl          sp, s2, s0
                  ori          a0, s4, 1878
120:              andi         a7, s1, -1516
                  add          a0, a0, s9
122:              sll          s3, zero, a6
                  blt          t0, s11, 142f
                  beq          s1, zero, 142f
                  srli         s2, a4, 10
                  sltiu        t0, gp, 905
                  srai         t1, t4, 25
                  beq          s3, sp, 134f
                  srai         s7, s5, 18
                  and          a0, ra, t5
                  srli         t3, s7, 30
                  xori         tp, sp, 1916
                  slli         a6, t5, 27
134:              blt          t0, sp, 154f
                  sltu         t6, t5, s5
                  auipc        t3, 11801
                  bge          tp, tp, 143f
                  slti         s6, gp, 1335
                  nop
                  bgeu         a7, a3, 143f
                  sltiu        s7, t6, 921
142:              and          t0, s8, t5
143:              sub          gp, s2, s6
                  auipc        a3, 115629
                  srl          t2, a6, t2
                  slli         s5, t6, 0
                  nop
                  sltiu        t0, a3, -674
                  sra          s10, s4, s1
                  srli         a1, t0, 3
sub_2_1:          jal          t3, 0f
0:                jal          ra, 9f
1:                jal          ra, 8f
2:                jal          t1, 3f
3:                jal          t1, 7f
4:                jal          ra, 10f
5:                jal          t1, 1b
6:                jal          t1, 4b
7:                jal          t1, 6b
8:                jal          ra, 11f
9:                jal          s8, 5b
10:               jal          t4, 12f
11:               jal          ra, 2b
12:               and          s6, s9, t2
                  add          ra, s4, ra
                  srai         s3, ra, 23
                  bgeu         t2, t1, 172f
154:              nop
                  sltu         a6, a7, s9
                  xori         a6, s9, -352
                  sub          a3, sp, t2
                  blt          zero, sp, 175f
                  andi         s6, s4, 1942
                  and          a2, zero, s9
                  xori         t4, s2, -1296
                  ori          gp, t0, 468
                  or           a0, s5, tp
                  sltu         t1, a0, a0
                  sltiu        t2, a3, 31
                  blt          s8, s2, 170f
                  or           s8, t6, a2
                  bgeu         t2, s9, 179f
                  bne          s11, ra, 171f
170:              srai         sp, s4, 13
171:              srl          sp, s11, s0
172:              srai         t2, s2, 14
                  or           t4, t2, sp
                  or           gp, s6, s11
175:              sll          gp, s4, s11
                  slli         s1, a6, 23
                  ori          tp, s2, -1724
                  srl          s1, s5, s0
179:              slt          s8, s10, t4
                  sll          a6, a6, a4
                  nop
                  nop
                  nop
                  sltu         t6, t5, t5
                  sltiu        zero, s11, 1402
                  slli         a2, s8, 18
                  ori          s5, t5, -1815
                  and          s0, s2, a1
                  and          s2, a7, tp
                  bne          s0, gp, 199f
                  bltu         a6, gp, 207f
                  slli         a7, s2, 19
                  sll          s6, a5, sp
                  beq          a3, gp, 207f
                  srl          a1, t3, s2
                  andi         ra, gp, -1359
                  bne          s2, a6, 204f
                  add          t4, s10, s2
199:              or           t0, a3, gp
                  xor          s8, a3, a1
                  sra          sp, a0, t4
                  ori          t1, a4, -988
                  slt          zero, a2, s7
204:              srai         a6, a7, 13
                  srli         gp, a0, 26
                  xori         t2, s1, 692
207:              sltiu        s7, s0, -803
                  bltu         s10, s1, 213f
                  bltu         s5, s6, 224f
                  nop
                  slt          t0, a6, a0
                  sltiu        a7, s3, 715
213:              srli         zero, a0, 30
                  srai         a2, s10, 28
                  srli         s5, s1, 31
                  blt          a4, s2, 218f
                  srli         tp, gp, 16
218:              auipc        s9, 845457
                  bne          s2, ra, 239f
                  xori         t6, a7, -459
                  slli         s2, a3, 8
                  srl          a1, ra, t4
                  sltiu        a2, ra, -221
224:              or           s2, a1, s10
                  addi         a0, t3, -1682
                  srli         a6, s11, 16
                  and          s4, t4, s11
                  sub          ra, s9, a4
                  andi         a2, t3, 1202
                  xori         t2, t6, 428
                  sll          s8, a2, s1
                  srl          a1, s7, t3
                  slli         t0, a3, 28
                  sltiu        a7, t1, -488
                  nop
                  sub          s11, gp, s8
                  bltu         tp, s0, 252f
                  bne          s3, gp, 242f
239:              sltiu        s3, t5, 1707
                  bge          s11, tp, 241f
241:              or           sp, s1, t5
242:              beq          a4, tp, 255f
                  lui          a6, 500131
                  slti         t1, s7, 961
                  or           gp, tp, s6
                  beq          gp, s6, 249f
                  lui          t4, 852749
                  srl          ra, s6, s3
249:              sltu         tp, s8, s5
                  srai         a7, sp, 28
                  xori         s4, ra, -272
252:              srai         a0, tp, 22
                  sltu         s10, t5, s8
                  nop
255:              lui          s4, 271445
                  sltiu        sp, a1, 1824
                  auipc        a6, 800598
sub_2_19:         jal          t3, 23f
0:                jal          ra, 26f
1:                jal          ra, 7f
2:                jal          t1, 17f
3:                jal          ra, 21f
4:                jal          ra, 11f
5:                jal          gp, 3b
6:                jal          ra, 8f
7:                jal          ra, 25f
8:                jal          ra, 24f
9:                jal          ra, 30f
10:               jal          ra, 1b
11:               jal          t1, 19f
12:               jal          t0, 16f
13:               jal          a7, 2b
14:               jal          t1, 12b
15:               jal          ra, 13b
16:               jal          ra, 5b
17:               jal          t4, 27f
18:               jal          s10, 29f
19:               jal          ra, 22f
20:               jal          t1, 10b
21:               jal          t1, 18b
22:               jal          ra, 9b
23:               jal          t1, 14b
24:               jal          ra, 28f
25:               jal          s0, 15b
26:               jal          t1, 6b
27:               jal          ra, 4b
28:               jal          a7, 20b
29:               jal          ra, 0b
30:               xor          s4, a3, ra
                  auipc        zero, 319116
                  sll          tp, s6, tp
                  auipc        t0, 404060
                  and          a3, s4, s3
                  blt          t0, a1, 263f
263:              andi         s1, s4, 338
                  blt          t3, t0, 266f
                  nop
266:              slli         s1, a4, 9
                  beq          a5, s4, 278f
                  srli         gp, s5, 27
                  bgeu         a3, s9, 270f
270:              sra          s6, s10, s4
                  andi         t3, gp, -1513
                  blt          ra, s0, 277f
                  sltu         s8, a3, s10
                  andi         zero, gp, -1464
                  slti         s4, s2, -123
                  bne          a3, a6, 296f
277:              xori         s0, tp, -558
278:              add          s5, s3, s0
                  srai         s4, zero, 18
                  and          s11, s5, s7
                  ori          t4, a3, -290
                  nop
                  ori          t4, s8, 405
                  ori          s3, t3, -1734
                  slti         s0, zero, -1857
                  bge          a6, s10, 295f
                  bge          s8, tp, 292f
                  bgeu         s11, t6, 294f
                  xori         t3, s11, -377
                  bge          a4, t2, 295f
                  beq          s4, a0, 310f
292:              sltiu        a0, sp, 1667
                  bne          t2, t1, 299f
294:              bltu         t1, t5, 307f
295:              beq          a6, sp, 308f
296:              blt          a7, s11, 298f
                  bne          a5, a0, 298f
298:              bge          a0, sp, 316f
299:              srai         s8, s10, 5
                  sub          t6, a4, sp
                  andi         s0, a1, 784
                  addi         a0, a2, -833
                  sltu         t2, a1, s3
                  xor          zero, t2, a1
                  bltu         s11, s10, 306f
306:              lui          s1, 968391
307:              slti         t0, s5, -981
308:              add          a1, s8, t6
                  bne          a1, t3, 311f
310:              addi         s9, sp, -1536
311:              srai         t0, a5, 2
                  nop
                  bgeu         s2, a3, 329f
                  bge          ra, a1, 319f
                  sra          a0, sp, s7
316:              srli         ra, s7, 16
                  bgeu         s2, a4, 318f
318:              xori         s1, t0, -52
319:              add          s4, ra, t1
                  or           s4, a3, zero
                  andi         t6, t0, -361
                  srl          s0, t3, a6
                  auipc        a7, 492264
                  xor          ra, a4, s5
                  and          s6, t2, a0
                  andi         t6, s5, -1327
                  nop
                  and          s3, a1, t0
329:              blt          s5, s7, 333f
                  add          t0, s0, t6
                  bltu         ra, t5, 334f
                  srli         a7, t5, 22
333:              or           gp, s8, s8
334:              bltu         s10, gp, 345f
                  bltu         s11, t1, 354f
                  srl          t0, t6, a2
                  srai         s11, a3, 2
                  sll          s4, a0, a2
                  srli         ra, s1, 7
                  slli         s8, a6, 29
                  srli         s4, s0, 22
                  srai         s5, s9, 1
                  and          s11, s1, t6
                  sll          zero, gp, s7
345:              slli         t0, ra, 12
                  andi         a2, t6, 1962
                  addi         s10, s11, 1001
                  sra          t1, t2, t3
                  slti         t6, a4, -1014
                  slt          s0, a5, t6
                  sltu         s0, s9, a2
                  bne          s5, s4, 359f
                  or           s1, a1, s4
354:              auipc        s5, 424797
                  blt          t3, t1, 370f
                  bltu         s0, t2, 367f
                  lui          s4, 214661
                  bge          s3, t1, 362f
359:              sltu         t4, s4, a3
                  lui          s9, 1044569
                  sra          zero, s8, s2
362:              and          t4, t1, s4
                  lui          s2, 627933
                  blt          s5, t5, 366f
                  beq          s8, s10, 380f
366:              addi         t1, t0, -1281
367:              auipc        s2, 789639
                  ori          s11, s8, -502
                  sll          gp, t3, a7
370:              auipc        a6, 790642
                  sltiu        s11, s3, -917
                  bge          t1, a1, 375f
                  sltu         zero, sp, a3
                  andi         gp, zero, -327
375:              srai         s2, s7, 20
                  auipc        s10, 944377
                  slli         ra, t1, 12
                  slli         s10, s3, 29
                  or           s1, t1, s8
380:              nop
                  sltiu        s2, s8, -118
                  slti         t6, s5, 486
                  ori          a3, s10, 758
                  nop
                  beq          t5, tp, 402f
                  srl          s6, s10, s7
                  blt          s9, s4, 407f
                  bltu         a4, s5, 404f
                  sltiu        s8, a3, 523
                  add          t2, a0, ra
                  andi         t2, s10, 625
                  xori         s9, s7, 1305
                  sra          t2, s3, t1
                  xori         a3, s2, -507
                  nop
                  slt          t4, s1, s8
                  add          s0, a7, a0
                  slli         ra, s1, 0
                  srl          ra, a3, a3
                  slti         zero, a7, 64
                  xori         s0, tp, -356
402:              bne          s3, t5, 404f
                  ori          a2, t1, 1641
404:              slt          t2, ra, a6
                  bne          a2, s0, 409f
                  ori          s1, sp, 961
407:              auipc        a2, 629742
                  ori          s4, s9, -1640
409:              sltiu        a0, a1, -1755
                  sub          gp, s2, ra
                  beq          s8, t1, 412f
412:              xori         s1, s4, 235
                  xori         a6, s4, -947
                  srl          s2, t6, a7
                  bne          a6, t3, 433f
                  bltu         a5, s2, 429f
                  auipc        a1, 372987
                  add          t3, s0, a0
                  ori          a2, t5, 951
                  srai         t4, gp, 16
                  sltiu        gp, s4, 435
                  slli         s0, a6, 1
                  sltu         a3, ra, s9
                  srai         s8, t0, 9
                  andi         ra, s7, 1879
                  sub          s11, gp, s2
                  sltiu        a0, s11, 1768
                  auipc        a7, 987637
429:              add          t0, tp, zero
                  ori          a3, a7, 634
                  ori          s6, a6, 1175
                  xori         t3, s4, -1047
433:              beq          s5, zero, 444f
                  add          s1, s8, a6
                  or           s0, s11, ra
                  xori         s4, zero, 508
                  slti         a3, s2, -1666
                  slli         t0, s6, 4
                  ori          s9, s5, 372
                  beq          a2, ra, 449f
                  sltu         gp, s2, t6
                  nop
                  srli         s9, a7, 20
444:              xori         t4, ra, 1465
                  slti         a7, s5, -2046
                  blt          sp, s1, 459f
                  sltiu        s2, a3, -45
                  sra          s9, t1, a7
449:              or           tp, s11, a7
                  sub          t2, s5, s6
                  sub          s2, s7, a5
                  slli         s8, s9, 31
                  nop
                  srl          a6, s2, zero
                  slti         s8, s8, 1012
                  sltiu        s8, a7, -390
                  add          sp, a3, s5
                  sub          a1, tp, a1
459:              auipc        a1, 886644
                  lui          a1, 950411
                  lui          s0, 887034
                  bne          a3, s8, 482f
                  andi         s8, gp, 209
                  srai         s11, t0, 30
                  ori          s0, a0, -485
                  sub          ra, ra, s11
                  xori         zero, sp, -395
                  and          tp, t2, a6
                  srli         s11, s5, 6
                  srl          a3, gp, zero
                  blt          t4, a2, 476f
                  or           s7, s6, a2
                  add          a6, a0, s0
                  sra          s11, s7, a6
                  bltu         t4, ra, 479f
476:              sll          s8, s7, a2
                  bltu         s6, t5, 479f
                  slli         s4, zero, 8
479:              add          a1, t6, s4
                  lui          s6, 694184
                  srl          t3, a4, s10
482:              slt          t6, s10, a6
                  xor          a1, s2, s10
                  xori         a0, ra, 984
                  bne          s7, s1, 496f
                  xori         s11, zero, 1421
                  andi         t1, tp, 1534
                  add          a1, a5, s7
                  nop
                  nop
                  auipc        a1, 937224
                  auipc        gp, 3696
                  sltu         zero, s9, zero
                  xor          s8, ra, s7
                  add          a6, a5, s8
496:              auipc        a7, 493106
                  or           s0, s7, a4
                  auipc        s9, 365198
                  sltu         t6, s5, s6
                  and          s4, tp, s10
                  sra          t6, a5, s3
                  add          s5, s0, a3
                  sll          s2, s2, t1
                  sub          s2, t4, a1
                  or           a3, s8, t4
                  bgeu         a6, a2, 512f
                  slti         s9, zero, -1771
                  sub          sp, ra, s9
                  beq          s7, t5, 528f
                  slti         a3, a6, -1422
                  andi         s2, a7, -486
512:              bltu         a5, zero, 515f
                  auipc        sp, 427812
                  srl          s7, a2, s5
515:              or           s5, t3, tp
                  nop
                  slti         s0, a1, -592
                  bgeu         s6, s10, 537f
                  slli         a7, a7, 2
                  sll          a1, t4, s8
                  bge          gp, a0, 526f
                  bne          s2, s3, 527f
                  nop
                  slli         tp, a1, 4
                  sub          t4, a5, s8
526:              slt          t3, s2, s7
527:              ori          t3, a6, -2005
528:              slti         s7, t5, -1256
                  or           t2, a3, zero
                  slt          gp, s6, t0
                  bge          t0, a6, 533f
                  sltiu        s7, s10, 327
533:              beq          sp, a0, 536f
                  sub          sp, s9, t4
                  and          s1, s9, t5
536:              nop
537:              and          t6, t1, s11
                  srli         ra, ra, 16
                  bltu         s4, a4, 559f
                  slti         a6, ra, 850
                  auipc        t3, 337380
                  or           s5, s8, t3
                  beq          a7, a5, 560f
                  addi         t3, tp, -593
                  add          tp, s10, s4
                  xori         tp, s6, -892
                  bge          zero, s9, 554f
                  bge          s6, s4, 563f
                  srli         a1, t2, 30
                  bgeu         s6, a4, 565f
                  slt          s0, s7, t6
                  sltu         s0, a1, t4
                  lui          t3, 76340
554:              srai         s5, a0, 4
                  andi         t6, s6, -1154
                  auipc        s0, 166081
                  srai         t3, a5, 26
                  add          s0, s10, s8
559:              or           tp, tp, t0
560:              sltiu        a6, s1, 537
                  bltu         t2, s10, 562f
562:              bne          s3, s2, 563f
563:              nop
                  slli         s7, s3, 28
565:              sltu         a7, tp, s4
                  and          s5, a6, a6
                  addi         a7, t3, -1020
                  xori         ra, s4, 1879
                  addi         a2, t2, -1472
                  or           s0, s4, ra
                  ori          s1, s10, 1762
                  slti         ra, t4, -800
                  sll          sp, s4, s6
                  slti         s6, a1, -774
                  srai         t6, t6, 11
                  xor          ra, a3, a7
                  bge          s1, s6, 583f
                  sltiu        a6, t2, -1215
                  auipc        s8, 499069
                  bne          s0, s7, 593f
                  andi         t6, t5, 435
                  srli         t2, a6, 2
583:              add          s9, sp, s9
                  sra          a0, s8, a2
                  xori         ra, tp, -1449
                  lui          a6, 847685
                  xor          s6, t6, a6
                  xor          gp, s4, s2
                  slt          a0, sp, a2
                  slli         t6, a5, 14
                  bltu         t1, sp, 602f
                  add          sp, a0, a6
593:              addi         s9, t1, -1900
                  slti         a2, tp, 1453
                  srli         s0, a0, 20
                  sra          gp, s0, tp
                  srl          t3, s9, t3
                  nop
                  and          s7, s5, a1
                  add          sp, t3, s0
                  sltu         s5, a1, a0
602:              sub          a3, s10, tp
                  beq          a1, a4, 622f
                  andi         gp, t6, 1487
                  sltiu        t6, zero, -623
                  and          a0, s5, s10
                  lui          t2, 815148
                  bge          zero, a7, 611f
                  sltu         zero, s4, s7
                  slli         t0, s3, 4
611:              auipc        tp, 266015
                  slli         t0, s4, 24
                  srai         s11, t2, 20
                  sltiu        s5, a1, -1726
                  bltu         a0, a6, 626f
                  blt          a1, s10, 631f
                  srai         s9, s11, 1
                  blt          s3, zero, 620f
                  srl          s3, t3, tp
620:              sll          t1, s5, zero
                  sll          t1, s3, a5
622:              and          a7, t6, ra
                  slt          tp, a7, t5
                  xori         zero, zero, -111
                  bgeu         s9, s7, 634f
626:              sltu         gp, t0, s9
                  auipc        s1, 94488
                  srli         t6, s3, 24
                  blt          t2, t5, 631f
                  ori          s4, t2, -808
631:              xori         t6, s6, 434
                  slti         s9, s2, 1771
                  sltiu        s8, s11, -1355
634:              sll          a2, s7, t3
                  sra          gp, s10, t5
                  bge          a3, t0, 637f
637:              sra          s2, s3, s9
                  bne          s3, t5, 653f
                  blt          s4, s1, 646f
                  lui          s10, 394328
                  nop
                  bltu         a1, s2, 647f
                  slli         s4, a5, 6
                  ori          a2, t6, -1402
                  sub          t1, s2, t6
646:              sltu         s2, s4, s1
647:              blt          s8, sp, 667f
                  lui          s1, 707991
                  slli         t1, s3, 31
                  auipc        t1, 388627
                  and          a6, s8, a4
                  slli         t6, a7, 22
653:              slt          s7, t4, a5
                  xor          a7, a0, s1
                  bgeu         s0, a6, 661f
                  sub          s10, s0, a1
                  xor          s1, zero, t5
                  slti         s7, s11, 1983
                  and          a0, a0, s1
                  andi         s1, a2, 593
661:              andi         t4, zero, 1354
                  addi         t0, s2, -1430
                  srl          a3, s1, s11
                  srli         t4, t3, 27
                  or           t2, s1, a5
                  sub          t0, ra, s4
667:              sltiu        sp, zero, 1332
                  and          zero, t4, s3
                  slli         s11, s3, 7
                  andi         a0, zero, 635
                  and          s8, s9, s9
                  srai         ra, a2, 13
                  slli         t4, s4, 13
                  bne          zero, t0, 680f
                  lui          s8, 351970
                  blt          t2, a2, 695f
                  blt          t5, s2, 682f
                  slt          s10, s1, s9
                  sltu         s9, t1, s9
680:              sltu         s8, s11, sp
                  srl          a7, tp, a7
682:              srai         t4, t0, 14
                  and          t6, a6, a3
                  blt          s4, s0, 697f
                  bge          s0, s7, 689f
                  blt          a7, s5, 706f
                  blt          a4, a2, 688f
688:              sll          ra, s0, ra
689:              srai         ra, s11, 23
                  lui          t3, 574232
                  or           a0, s8, s2
                  bltu         a6, s3, 694f
                  srl          a2, a5, a3
694:              sltu         a0, s3, s7
695:              addi         a2, t5, -1012
                  xori         a1, s8, 621
697:              andi         s3, a5, 46
                  srl          gp, a2, sp
                  sltiu        s10, zero, 37
                  sra          s9, tp, s6
                  slli         s8, gp, 2
                  and          s0, t1, s6
                  srli         s0, s3, 0
                  and          a6, a2, s0
                  srai         s4, s1, 11
706:              sltu         zero, s8, t5
                  sltu         zero, t0, t6
                  sltiu        s5, s9, 695
                  sra          gp, t6, s9
                  blt          s0, gp, 726f
                  lui          s0, 579504
                  slli         s6, t4, 17
                  lui          t2, 726441
                  sub          s6, a6, sp
                  nop
                  sltiu        a1, s10, -532
                  bltu         a0, a5, 720f
                  bgeu         a6, t4, 736f
                  srai         t1, t5, 9
720:              bltu         s1, t1, 737f
                  slt          a0, a4, ra
                  slli         gp, t6, 17
                  add          sp, gp, t5
                  srli         s6, s9, 24
                  beq          t3, s5, 726f
726:              bgeu         t6, a6, 731f
                  slti         zero, s3, 1512
                  or           s1, a3, s9
                  bltu         s0, s11, 733f
                  xor          a2, sp, s4
731:              lui          a2, 520844
                  ori          s9, a6, 1435
733:              ori          t2, s2, 942
                  srl          t2, a4, s8
                  slt          zero, s1, s2
736:              lui          t4, 172948
737:              srai         a1, ra, 30
                  xori         t2, a3, 104
                  add          ra, t6, a2
                  bge          a0, t6, 741f
741:              bgeu         s4, t5, 745f
                  sll          t6, t3, t0
                  bne          s0, t6, 748f
                  bge          ra, s10, 753f
745:              blt          s9, t4, 758f
                  and          t4, tp, s0
                  sll          s4, a5, s2
748:              andi         s4, t1, -1228
                  slt          s7, t0, s7
                  lui          zero, 1047216
                  auipc        sp, 891624
                  blt          zero, s9, 763f
753:              auipc        zero, 230788
                  xor          a1, t6, zero
                  slti         gp, s3, 1728
                  slt          a1, s11, s10
                  xori         a0, a4, 1790
758:              beq          a7, s5, 775f
                  addi         s3, a4, -1058
                  sll          s8, a2, s11
                  xor          a0, t6, a2
                  slt          a1, s2, a1
763:              bgeu         a4, t3, 765f
                  beq          a2, s5, 767f
765:              bge          s2, ra, 766f
766:              sra          t2, t1, s11
767:              slt          s6, tp, zero
                  beq          t5, s0, 774f
                  srai         a7, t5, 24
                  srai         a3, t3, 30
                  bne          a4, s2, 775f
                  sll          gp, s10, ra
                  slti         zero, s5, -517
774:              srl          tp, s10, gp
775:              sltu         t1, a6, a2
                  slti         a2, s11, 1378
                  sra          sp, a7, a1
                  sra          s11, t0, a0
                  add          s0, s9, sp
                  addi         s10, t1, -1398
                  andi         s2, t4, 969
                  blt          a4, t5, 802f
                  lui          ra, 789700
                  ori          s9, t2, -970
                  sub          a0, t5, s0
                  slti         a0, a0, -1316
                  srli         s1, a3, 5
                  srl          s1, s6, a0
                  auipc        s6, 948220
                  xor          a6, tp, tp
                  slli         t3, t6, 29
                  and          a1, s8, sp
                  sll          t6, a6, s5
                  andi         t3, a5, -1548
                  addi         t3, t6, -1298
                  srli         ra, sp, 7
                  srai         s11, a2, 12
                  bgeu         a5, sp, 816f
                  sltu         t3, t2, s11
                  add          s4, ra, s11
                  srli         s3, s6, 13
802:              addi         a7, a6, -19
                  xor          t1, t6, a7
                  beq          a3, s2, 823f
                  bne          t1, s4, 808f
                  sltu         s4, t3, s0
                  sltiu        s7, t2, -1081
808:              nop
                  slt          s3, a0, s10
                  sltu         s7, a6, t0
                  xori         a0, s4, 488
                  bge          t4, s2, 827f
                  slli         a6, s6, 2
                  bge          a0, s4, 821f
                  slt          s9, s4, sp
816:              ori          s6, a1, 929
                  addi         a3, a2, -1504
                  xori         a7, tp, 1724
                  bge          t4, a0, 821f
                  bne          s6, t3, 833f
821:              add          s2, a1, t4
                  beq          s8, s7, 833f
823:              bgeu         zero, ra, 828f
                  xori         a6, t5, 283
                  bltu         t6, s7, 844f
                  ori          t0, a4, -832
827:              srli         s1, a6, 14
828:              bgeu         t4, t0, 843f
                  lui          gp, 650208
                  srai         s10, a0, 25
                  or           a6, a0, t0
                  andi         ra, t4, 1574
833:              addi         s11, t0, -758
                  addi         t2, a4, -1498
                  srl          s10, a6, s1
                  xori         tp, s7, -1793
                  sll          t1, s2, a7
                  sra          s10, zero, a6
                  sub          a2, a6, t3
                  blt          s5, a7, 860f
                  sltu         t2, ra, zero
                  xor          s7, a2, s6
843:              or           tp, s5, s8
844:              add          a0, t3, s0
                  slt          s11, s8, a0
                  srli         s3, s8, 9
                  srli         s5, a5, 24
                  lui          s0, 20775
                  lui          s7, 370360
                  srai         a1, a5, 9
                  auipc        s11, 54265
                  sub          s10, s1, a0
                  andi         s1, tp, 890
                  auipc        s4, 189853
                  bltu         t0, s6, 871f
                  bltu         a3, a2, 862f
                  xor          s6, s2, s7
                  sub          s8, s11, t4
                  xor          zero, s8, zero
860:              srli         s10, t3, 11
                  sltiu        t0, s6, -707
862:              sra          t1, t6, a0
                  slt          t0, s2, ra
                  sub          a3, t5, gp
                  srli         s2, a2, 28
                  xor          a2, t5, t5
                  auipc        t1, 546138
                  bne          t2, t0, 870f
                  auipc        t6, 965125
870:              srl          s11, t5, s1
871:              blt          a3, t2, 872f
872:              addi         sp, tp, 1070
                  ori          s0, s10, 1893
                  bltu         s0, s6, 879f
                  sltiu        t0, zero, -414
                  blt          tp, zero, 882f
                  sltu         ra, t0, tp
                  lui          a6, 349915
879:              bne          t5, s11, 892f
                  nop
                  srli         s5, a5, 0
882:              xori         a6, s5, 1147
                  sltiu        s5, a4, 1234
                  andi         a7, a4, -1721
                  srli         t1, a3, 20
                  sub          a3, a5, a1
                  xori         a0, s7, -1560
                  sub          zero, a3, s5
                  slt          a2, s7, t0
                  blt          tp, s8, 909f
                  srl          gp, t4, t5
892:              ori          t0, t6, -1474
                  bltu         t3, t6, 908f
                  srl          sp, s11, a1
                  bgeu         s6, sp, 900f
                  ori          a7, a2, 741
                  beq          zero, a4, 903f
                  blt          s2, s10, 899f
899:              and          a0, ra, s2
900:              add          a1, s10, a3
                  sll          gp, s0, t6
                  auipc        t2, 938066
903:              or           gp, a3, t0
                  sltu         s3, t2, a1
                  bne          s3, s4, 907f
                  andi         gp, a4, -258
907:              bge          sp, a0, 914f
908:              beq          s4, s8, 921f
909:              bne          s3, a6, 924f
                  sra          zero, gp, t2
                  slt          s9, t5, s8
                  andi         t0, a7, 634
                  bltu         gp, a7, 914f
914:              or           gp, s11, sp
                  bge          t5, ra, 931f
                  blt          s1, t1, 936f
                  sra          s3, t2, s3
                  bgeu         a0, s0, 927f
                  srai         t0, s3, 1
                  slli         a3, a4, 10
921:              bne          a2, t6, 923f
                  bltu         s0, a2, 926f
923:              addi         s10, s6, 941
924:              xor          gp, tp, a1
                  andi         a0, s9, -735
926:              addi         tp, gp, 736
927:              slt          a1, s8, a2
                  xori         a3, a0, 1147
                  xori         s1, s7, 341
                  srai         t1, a2, 25
931:              auipc        t4, 1009939
                  sub          s6, zero, zero
                  bltu         a0, zero, 934f
934:              auipc        a0, 743845
                  sll          s10, t6, ra
936:              auipc        s11, 309365
                  bge          t2, ra, 948f
                  nop
                  sltu         tp, s7, t5
                  auipc        s3, 718926
                  auipc        t0, 197224
                  sra          s7, ra, a6
                  sll          s5, s2, s10
                  bltu         a4, a2, 955f
                  xor          s0, t6, a5
                  xori         s1, gp, 1958
                  srl          gp, s2, s7
948:              bltu         s10, a4, 967f
                  add          s2, a0, s5
                  bne          a2, s11, 955f
                  srai         s4, a1, 5
                  sll          a1, t0, t1
                  bne          s10, a2, 956f
                  addi         a2, a2, 1718
955:              sub          s6, t0, s1
956:              sltu         zero, a6, s10
                  bltu         s4, a5, 977f
                  bgeu         zero, t5, 963f
                  or           t0, s11, t5
                  sltu         t2, t4, a2
                  sltu         t3, s9, s11
                  ori          s1, zero, -667
963:              bne          tp, a2, 980f
                  sra          s4, t3, a0
                  sll          s6, t4, t2
                  auipc        a7, 814156
967:              andi         s1, s6, -1918
                  add          a2, s1, t4
                  bne          a1, zero, 972f
                  addi         t6, s5, 1088
                  sub          s0, zero, s9
972:              srl          a6, ra, s11
                  ori          a3, s11, -149
                  auipc        a1, 592360
                  bltu         s7, s1, 977f
                  bge          s3, a6, 994f
977:              add          t2, s11, s6
                  slti         s7, s6, 1789
                  add          zero, a7, a7
980:              srl          gp, s5, a2
                  slli         ra, a3, 18
                  andi         s11, s7, 196
                  xor          s7, zero, s0
                  ori          tp, a1, -1855
                  beq          t2, s4, 989f
                  andi         t1, a3, -920
                  xor          s9, t4, s0
                  bgeu         sp, a7, 1008f
989:              nop
                  slti         s8, a6, -1071
                  or           gp, s1, ra
                  slli         s7, t5, 22
                  srli         zero, a3, 25
994:              andi         s8, s2, -992
                  bne          a2, a2, 1008f
                  srl          s7, t2, zero
                  slt          a6, t0, a2
                  add          t0, s8, t1
                  slt          a2, s5, s5
                  bgeu         a6, ra, 1002f
                  xor          tp, s7, s0
1002:             xori         s7, gp, 1902
                  srl          s4, a6, s2
                  srai         s10, t3, 24
                  sll          s10, gp, s10
                  sll          t3, s9, ra
                  sltiu        s1, t4, -1779
1008:             srai         s5, a6, 12
                  sltu         gp, gp, s1
                  slli         a7, ra, 20
                  and          s5, t3, t1
                  bgeu         t2, s8, 1027f
                  bne          s8, a6, 1014f
1014:             and          s5, a3, s8
                  sub          s2, t3, t6
                  srli         zero, s0, 8
                  blt          a6, a0, 1018f
1018:             lui          s10, 56694
                  slli         s11, s2, 1
                  lui          s2, 755834
                  beq          a0, a2, 1027f
                  sub          gp, t5, a0
                  bge          s8, s10, 1026f
                  andi         ra, a0, -1491
                  sub          s3, s2, s6
1026:             blt          s4, t1, 1027f
1027:             ori          t0, s2, 678
                  ori          t4, a7, -1421
                  slli         a3, gp, 18
                  lw           t3, 4(a4)
                  xor          t6, s11, t6
                  or           a1, a3, tp
                  addi         t4, t2, 477
                  slti         s7, s4, 747
                  or           s3, s7, sp
                  addi         a4, a4, 12
                  srai         s0, s2, 10
                  add          s7, gp, s5
                  srai         s2, t5, 20
1500:             addi x5, x28, 1
1500:             jalr x5, x5, 0
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
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x30, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_2:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x30, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_3:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x30, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_4:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x30, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_5:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x30, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_6:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x30, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_7:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x30, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_8:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x30, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_9:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x30, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_10:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x30, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_11:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x30, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_12:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x30, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_13:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x30, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_14:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x30, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_15:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x30, x14, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

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
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x30, x14, zero
                  csrr x8, 0x341 # MEPC
                  csrr x8, 0x342 # MCAUSE
                  li x24, 0x3 # BREAKPOINT
                  beq x8, x24, ebreak_handler
                  li x24, 0x8 # ECALL_UMODE
                  beq x8, x24, ecall_handler
                  li x24, 0x9 # ECALL_SMODE
                  beq x8, x24, ecall_handler
                  li x24, 0xb # ECALL_MMODE
                  beq x8, x24, ecall_handler
                  li x24, 0x1
                  beq x8, x24, instr_fault_handler
                  li x24, 0x5
                  beq x8, x24, load_fault_handler
                  li x24, 0x7
                  beq x8, x24, store_fault_handler
                  li x24, 0xc
                  beq x8, x24, pt_fault_handler
                  li x24, 0xd
                  beq x8, x24, pt_fault_handler
                  li x24, 0xf
                  beq x8, x24, pt_fault_handler
                  li x24, 0x2 # ILLEGAL_INSTRUCTION
                  beq x8, x24, illegal_instr_handler
                  csrr x24, 0x343 # MTVAL
                  1: la x15, test_done
                  jalr x1, x15, 0

ecall_handler:    
                  la x8, _start
                  sw x0, 0(x8)
                  sw x1, 4(x8)
                  sw x2, 8(x8)
                  sw x3, 12(x8)
                  sw x4, 16(x8)
                  sw x5, 20(x8)
                  sw x6, 24(x8)
                  sw x7, 28(x8)
                  sw x8, 32(x8)
                  sw x9, 36(x8)
                  sw x10, 40(x8)
                  sw x11, 44(x8)
                  sw x12, 48(x8)
                  sw x13, 52(x8)
                  sw x14, 56(x8)
                  sw x15, 60(x8)
                  sw x16, 64(x8)
                  sw x17, 68(x8)
                  sw x18, 72(x8)
                  sw x19, 76(x8)
                  sw x20, 80(x8)
                  sw x21, 84(x8)
                  sw x22, 88(x8)
                  sw x23, 92(x8)
                  sw x24, 96(x8)
                  sw x25, 100(x8)
                  sw x26, 104(x8)
                  sw x27, 108(x8)
                  sw x28, 112(x8)
                  sw x29, 116(x8)
                  sw x30, 120(x8)
                  sw x31, 124(x8)
                  la x15, write_tohost
                  jalr x0, x15, 0

instr_fault_handler:
                  add x14, x30, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

load_fault_handler:
                  add x14, x30, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

store_fault_handler:
                  add x14, x30, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

ebreak_handler:   
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x14, x30, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

illegal_instr_handler:
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x14, x30, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x8, 0x300 # MSTATUS;
                  csrr  x8, 0x304 # MIE;
                  csrr  x8, 0x344 # MIP;
                  csrrc x8, 0x344, x8 # MIP;
                  add x14, x30, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
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
